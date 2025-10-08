# Geospatial AI Agents Workshop - NYC Traffic Congestion Analysis

Workshop materials for demonstrating CARTO's AI capabilities using MCP (Model Context Protocol) tools and Builder AI Agents to analyze the impact of NYC's 2025 traffic congestion regulation.

## Workshop Overview

This hands-on workshop demonstrates how to leverage CARTO's geospatial AI tools to analyze real-world urban policy impacts. Participants will learn to:

- Create and deploy geospatial analysis workflows as MCP tools
- Integrate CARTO MCP Server with external AI agents
- Use CARTO Builder's native AI agents for interactive map-based analysis

## Use Case

In January 2025, New York City introduced a congestion pricing regulation aimed at reducing traffic congestion and its associated effects on traffic accidents and air pollution. This workshop guides you through creating an analytical framework to measure the regulation's actual impact by comparing three key indicators:

- **Traffic Volume**: Total vehicle counts before and after regulation
- **Traffic Accidents**: Collision frequency and severity
- **Air Quality**: Pollution measurements in affected areas

The analysis compares data from three months before the regulation (October-December 2024) with three months after (January-March 2025) for any user-defined area of interest in NYC.

## Workshop Structure

### 1. Introduction (5 minutes)
- Meet the instructors
- Workshop objectives and outcomes
- Overview of the NYC congestion regulation case study

### 2. Workflows as MCP Tools (25 minutes)
Learn how to create geospatial analysis workflows in CARTO and expose them as MCP tools that can be used by any AI agent.

#### What You'll Build:
- **Extended Analysis Workflow**: Comprehensive asynchronous analysis with status polling
- **Compact Analysis Workflow**: Faster synchronous version for quick results
- **Area Generator Workflow**: Convert coordinate pairs to WKT area descriptions

#### Key Concepts:
- Creating workflows in CARTO
- Configuring workflows as MCP tools
- Handling asynchronous operations
- Performance optimization strategies

### 3. Builder and the CARTO AI Agent (30 minutes)
Discover how CARTO Builder's integrated AI agents provide a map-based interface for geospatial analysis.

#### What You'll Learn:
- Setting up an AI agent in Builder
- Configuring agent access to MCP tools
- Interactive map-based queries
- Visualizing analysis results

## Prerequisites

- CARTO account with access to Workflows and Builder
- Basic understanding of geospatial concepts (coordinates, polygons, WKT format)
- Familiarity with AI agents and MCP (helpful but not required)

## Repository Contents

```
.
├── README.md                          # This file
├── workflows/
│   ├── extended-analysis/
│   │   ├── workflow-definition.json   # Extended workflow configuration
│   │   └── workflow-screenshot.png    # Visual reference
│   ├── compact-analysis/
│   │   ├── workflow-definition.json   # Compact workflow configuration
│   │   └── workflow-screenshot.png    # Visual reference
│   └── area-generator/
│       ├── workflow-definition.json   # Area generator configuration
│       └── workflow-screenshot.png    # Visual reference
├── mcp-tools/
│   ├── extended-tool-config.png       # MCP tool configuration screenshot
│   ├── compact-tool-config.png        # MCP tool configuration screenshot
│   └── area-tool-config.png           # MCP tool configuration screenshot
└── examples/
    ├── example-queries.md             # Sample questions for the AI agent
    └── expected-results.md            # Reference outputs
```

## Getting Started

### Step 1: Set Up Your CARTO Environment

1. Log in to your CARTO account
2. Navigate to the Workflows section
3. Ensure you have access to the required NYC datasets through the CARTO Data Warehouse:
   - Traffic count data
   - Traffic accident/collision data
   - Air quality measurements

### Step 2: Create the Workflows

#### Extended Analysis Workflow (Asynchronous)

This workflow performs a comprehensive analysis and runs asynchronously for larger areas or detailed queries.

1. In CARTO Workflows, create a new workflow
2. Import the workflow definition from `workflows/extended-analysis/workflow-definition.json`
3. Configure the following parameters:
   - **Input**: `area_of_interest` (WKT string representing a polygon)
   - **Output**: Analysis results including traffic counts, collisions, and air quality data
4. Test the workflow with a sample area

![Extended Workflow Screenshot](workflows/extended-analysis/workflow-screenshot.png)

**Key Features:**
- Handles large, complex areas
- Detailed statistical analysis
- Asynchronous execution with job tracking
- Use MCP tools `async_workflow_job_get_status_v1_0_0` and `async_workflow_job_get_results_v1_0_0` to poll for status and retrieve results

#### Compact Analysis Workflow (Synchronous)

A streamlined version optimized for speed, running synchronously for faster results.

1. Create a new workflow in CARTO
2. Import the workflow definition from `workflows/compact-analysis/workflow-definition.json`
3. Configure with the same `area_of_interest` parameter
4. Test and compare execution time with the extended version

![Compact Workflow Screenshot](workflows/compact-analysis/workflow-screenshot.png)

**Key Features:**
- Optimized for speed
- Synchronous execution (returns results immediately)
- Ideal for interactive demonstrations
- Suitable for smaller to medium-sized areas

#### Area Generator Workflow

Converts latitude/longitude coordinates to WKT polygon strings representing an area of influence.

1. Create a new workflow in CARTO
2. Import the workflow definition from `workflows/area-generator/workflow-definition.json`
3. Configure parameters:
   - **Input**: `latitude` and `longitude` (decimal degrees)
   - **Output**: WKT string of polygon area

![Area Generator Screenshot](workflows/area-generator/workflow-screenshot.png)

### Step 3: Expose Workflows as MCP Tools

For each workflow created:

1. Navigate to the workflow settings
2. Select "Expose as MCP Tool"
3. Configure the tool metadata:
   - **Tool Name**: Descriptive name (e.g., `nyc_traffic_analysis_extended_version`)
   - **Description**: Clear description of what the tool does
   - **Parameters**: Define input parameter types and defaults
4. Save and publish the tool

![Extended Tool Configuration](mcp-tools/extended-tool-config.png)
![Compact Tool Configuration](mcp-tools/compact-tool-config.png)
![Area Generator Configuration](mcp-tools/area-tool-config.png)

### Step 4: Configure CARTO MCP Server

Add the CARTO MCP Server to your AI agent's configuration to access the tools:

```json
{
  "mcpServers": {
    "carto": {
      "url": "https://your-carto-instance.com/mcp",
      "tools": [
        "nyc_traffic_analysis_extended_version",
        "nyc_traffic_analysis_compact_version",
        "create_area_from_coordinates"
      ]
    }
  }
}
```

### Step 5: Test with External AI Agents

Try asking an AI agent (like Claude) questions such as:

- "What was the effect of the congestion regulation around Broadway and East Houston Street in Manhattan?"
- "Analyze traffic changes near Times Square after the January 2025 regulation"
- "Compare air quality before and after the regulation in the Financial District"

See `examples/example-queries.md` for more sample queries and expected workflows.

### Step 6: Set Up Builder AI Agent

1. Open CARTO Builder and create a new map
2. Add relevant NYC data layers (traffic, accidents, air quality)
3. Navigate to the AI Agent configuration
4. Enable the agent and grant access to your MCP tools
5. Configure the agent's behavior and response style
6. Test interactive queries directly in the map interface

## Example Usage

### Using the Extended Workflow (Asynchronous)

```javascript
// Step 1: Start the analysis
const job = await mcp_tools.nyc_traffic_analysis_extended_version({
  area_of_interest: "POLYGON((-74.0060 40.7128, -74.0070 40.7100, -74.0030 40.7090, -74.0020 40.7120, -74.0060 40.7128))"
});

// Step 2: Poll for status
const status = await mcp_tools.async_workflow_job_get_status_v1_0_0({
  jobId: job.jobId,
  connectionName: job.connectionName
});

// Step 3: Get results when complete
if (status === "success") {
  const results = await mcp_tools.async_workflow_job_get_results_v1_0_0({
    jobId: job.jobId,
    providerId: job.providerId,
    connectionName: job.connectionName,
    workflowOutputTableName: job.outputTable
  });
}
```

### Using the Compact Workflow (Synchronous)

```javascript
// Single call returns results immediately
const results = await mcp_tools.nyc_traffic_analysis_compact_version({
  area_of_interest: "POLYGON((-74.0060 40.7128, -74.0070 40.7100, -74.0030 40.7090, -74.0020 40.7120, -74.0060 40.7128))"
});
```

### Using the Area Generator

```javascript
// Convert coordinates to area
const area = await mcp_tools.create_area_from_coordinates({
  latitude: 40.7128,
  longitude: -74.0060
});

// Use the generated area in analysis
const results = await mcp_tools.nyc_traffic_analysis_compact_version({
  area_of_interest: area.wkt
});
```

## Workshop Tips

### For Instructors

- **Timing**: Allow extra time for questions during the MCP tools section
- **Preparation**: Test all workflows and MCP tools before the workshop
- **Demos**: Have backup results ready in case of connectivity issues
- **Engagement**: Encourage participants to suggest their own areas of interest

### For Participants

- **Take Notes**: Document your workflow configurations for future reference
- **Experiment**: Try different areas and compare results
- **Ask Questions**: The instructors are here to help
- **Share**: Discuss interesting findings with the group

## Troubleshooting

### Workflow Not Executing
- Verify dataset access permissions
- Check that all required data sources are available
- Ensure the WKT area string is properly formatted

### MCP Tool Not Found
- Confirm the tool has been published
- Check MCP Server configuration
- Verify tool naming matches exactly

### Async Job Timing Out
- Use the compact workflow for faster results
- Reduce the area size
- Check CARTO system status

### Builder Agent Not Responding
- Ensure agent has been enabled
- Verify MCP tool access permissions
- Check browser console for errors

## Additional Resources

- [CARTO Workflows Documentation](https://docs.carto.com/workflows)
- [Model Context Protocol (MCP) Specification](https://modelcontextprotocol.io)
- [CARTO Builder AI Agents Guide](https://docs.carto.com/builder/ai-agents)
- [NYC Open Data Portal](https://opendata.cityofnewyork.us)

## Support

For questions or issues:
- During the workshop: Ask the instructors
- After the workshop: Contact [your-support-email]
- CARTO Support: support@carto.com

## License

[Specify license information]

## Credits

Workshop developed by [Your Name] and Ana [Last Name] from the CARTO Product Management team.

Data sources: NYC Open Data, [other sources]
