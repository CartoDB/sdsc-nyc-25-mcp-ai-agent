# Geospatial AI Agents Workshop - NYC Traffic Congestion Analysis

Workshop materials for demonstrating [CARTO's AI capabilities](https://carto.com/ai-agents) using MCP (Model Context Protocol) tools and Builder AI Agents to analyze the impact of NYC's 2025 traffic congestion regulation.



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
- [Checkout the slides!](https://docs.google.com/presentation/d/15CIlqaWUxRUKDWJmxWuvTUtxIoAmofDWgKlG7gvAB0E/edit?slide=id.g3386d626f30_0_10#slide=id.g3386d626f30_0_10)

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
- An AI Agent CLI installed in your computer. Recommended Claude Code or Gemini CLI

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

This workflow performs a comprehensive step-by-step analysis and runs asynchronously.

![Extended Workflow Screenshot](img/nyc_traffic_analysis_extended.png)

**Key Features:**
- Asynchronous execution with job tracking by using MCP tools `async_workflow_job_get_status_v1_0_0` and `async_workflow_job_get_results_v1_0_0` to poll for status and retrieve results

#### Area Generator Workflow

Converts latitude/longitude coordinates to WKT polygon strings representing an area of influence.

![Area Generator Screenshot](img/create_area_from_coordinates.png)

#### Compact Analysis Workflow (Synchronous)

A streamlined version optimized for speed, running synchronously for faster results.

![Compact Workflow Screenshot](img/nyc_traffic_analysis_compact.png)

**Key Features:**
- Optimized for speed
- Synchronous execution (returns results immediately)
- Ideal for interactive demonstrations

### Step 3: Expose Workflows as MCP Tools

For each workflow created:

1. Navigate to the workflow settings
2. Select "Expose as MCP Tool"
3. Check and configure the tool metadata:
   - **Tool Name**: Descriptive name (e.g., `nyc_traffic_analysis_extended_version`)
   - **Description**: Clear description of what the tool does
   - **Parameters**: Define input and output parameters
4. Enable as MCP tool

![MCP Tool config gif](img/mcp_tool_config.gif)

### Step 4: Configure CARTO MCP Server

Add the CARTO MCP Server to your AI agent's configuration to access the tools:

**Generic configuration** (compatible with Claude and Gemini CLI)
```json
{
"mcpServers": {
        "carto-sdsc-demo": {
          "type": "http",
          "url": "https://gcp-us-east1.api.carto.com/mcp/<your_org_id>>",
          "headers": {
            "Authorization": "Bearer<your_api_access_token>"
          }
        }
      }
}
```
**Gemini CLI**
```
$ gemini mcp add carto-mcp-server https://your-carto-instance.com/mcp/<org_id> -t http -H 'Authorizaton: Bearer <api_access_token>'
```
**Claude Code**
```
$ claude mcp add carto-mcp-server https://your-carto-instance.com/mcp/<org_id> -t http -H 'Authorizaton: Bearer <api_access_token>'
```

* **Get your MCP Server URL:** In your CARTO Workspace, go to _Developers_ and find _Workflow API & MCP Server_
* **Create an API Access Token with the MCP Tool grant:** Follow [this documentation](https://docs.carto.com/carto-mcp-server/carto-mcp-server#create-an-api-access-token).

### Step 5: Test with External AI Agents

Once the CARTO MCP Server is configured and connected, try asking your AI agent questions such as:

- "What was the effect of the congestion regulation around Broadway and East Houston Street in Manhattan?"
- "Analyze traffic changes near Times Square after the January 2025 regulation"
- "Compare air quality before and after the regulation in the Financial District"

### Step 6: Set Up Builder AI Agent

1. Open CARTO Builder and create a new map
2. Add relevant NYC data layers (traffic, accidents, air quality)
3. Navigate to the AI Agent configuration
4. Enable the agent and grant access to your MCP tools
5. Configure the agent's behavior and response style
6. Test interactive queries directly in the map interface

## Additional Resources

- [CARTO Workflows as MCP Tools Documentation](https://docs.carto.com/carto-user-manual/workflows/workflows-as-mcp-tools)
- [Model Context Protocol (MCP) Specification](https://modelcontextprotocol.io)
- [CARTO Builder AI Agents Guide](https://docs.carto.com/carto-user-manual/ai-agents)

## Support

For questions or issues:
- During the workshop: Ask the instructors
- After the workshop: Contact CARTO Support: support@carto.com

## Credits

Workshop developed by Ana Manzanares and Ernesto Martínez from the CARTO Product Management team.

Data sources: NYC Open Data, [other sources]
