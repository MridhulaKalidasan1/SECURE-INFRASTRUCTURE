if (!require("DiagrammeR")) install.packages("DiagrammeR")
library(DiagrammeR)

grViz("
digraph sec_devsecops_radial {
  # Graph Layout & Configuration
  graph [
    layout = twopi, 
    ranksep = 2.8, 
    fontname = 'Cambria', 
    overlap = false, 
    splines = true,
    bgcolor = '#FFFFFF'
  ]
  
  node [
    fontname = 'Cambria', 
    shape = rectangle, 
    style = 'filled,rounded', 
    penwidth = 2.0
  ]
  
  edge [
    fontname = 'Cambria', 
    fontsize = 10, 
    penwidth = 2.0
  ]

  # Central Root Hub
  HUB [
    label = 'Security Automation &\nOrchestration Engine', 
    fillcolor = '#0F172A', 
    fontcolor = '#FFFFFF', 
    fontsize = 13, 
    shape = ellipse, 
    color = '#0284C7',
    penwidth = 3,
    width = 2.5
  ]

  # Core Security Branches (Vibrant Ocean Blue)
  node [fillcolor = '#0284C7', fontcolor = '#FFFFFF', color = '#0369A1', fontsize = 11]
  IAM [label = 'Identity & Access\nManagement (IAM)']
  NET [label = 'Network Security']
  DATA [label = 'Data Protection']
  GOV [label = 'Governance & Compliance']

  # Extended Security Sub-Nodes (High Contrast Sky Blue)
  node [fillcolor = '#E0F2FE', fontcolor = '#0369A1', color = '#0284C7', fontsize = 10]
  RBAC [label = 'RBAC & Single Sign-On']
  ZERO [label = 'Zero-Trust Architecture']
  ENC [label = 'At-Rest & In-Transit Encryption']
  AUDIT [label = 'Continuous Logging & Audit']

  # DevSecOps Lifecycle Stages (Vibrant Royal Purple)
  node [fillcolor = '#6D28D9', fontcolor = '#FFFFFF', color = '#5B21B6', fontsize = 11]
  PLAN [label = 'Plan']
  CODE [label = 'Code']
  BUILD [label = 'Build']
  TEST [label = 'Test']
  RELEASE [label = 'Release']
  DEPLOY [label = 'Deploy']
  MONITOR [label = 'Monitor']

  # DevSecOps Detailed Activities (High Contrast Soft Violet)
  node [fillcolor = '#F3E8FF', fontcolor = '#5B21B6', color = '#7C3AED', fontsize = 10]
  SAST [label = 'SAST & Dependency Scan']
  DAST [label = 'DAST & Pen Testing']
  CI_CD [label = 'CI/CD Pipeline Security']
  SIEM [label = 'SIEM & Threat Detection']

  # Multi-Cloud & Infrastructure Core (Vibrant Emerald Green)
  node [fillcolor = '#059669', fontcolor = '#FFFFFF', color = '#047857', fontsize = 11]
  K8S [label = 'Kubernetes Orchestration']
  CLOUD_A [label = 'Cloud Provider A']
  CLOUD_B [label = 'Cloud Provider B']
  HYBRID [label = 'Hybrid & Edge Layer']

  # Workload Components (High Contrast Mint Green)
  node [fillcolor = '#D1FAE5', fontcolor = '#065F46', color = '#10B981', fontsize = 10]
  MICRO [label = 'Microservices Mesh']
  DB [label = 'Database Clusters']
  STORAGE [label = 'Distributed Storage']
  EDGE_DEV [label = 'Edge Nodes / IoT']

  # Core Connections from Hub
  HUB -> {IAM NET DATA GOV} [color = '#0284C7']
  HUB -> {PLAN CODE BUILD TEST RELEASE DEPLOY MONITOR} [color = '#6D28D9']
  HUB -> K8S [color = '#059669']

  # Branch Connections with Matching Theme Colors
  edge [color = '#0284C7']
  IAM -> RBAC
  NET -> ZERO
  DATA -> ENC
  GOV -> AUDIT

  edge [color = '#6D28D9']
  CODE -> SAST
  TEST -> DAST
  BUILD -> CI_CD
  MONITOR -> SIEM

  edge [color = '#059669']
  K8S -> {CLOUD_A CLOUD_B HYBRID}
  K8S -> {MICRO DB STORAGE EDGE_DEV}
}
")