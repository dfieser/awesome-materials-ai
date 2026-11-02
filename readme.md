# Awesome Materials AI [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> Language models, agents, and Model Context Protocol servers for materials science and chemistry.

Materials research runs on databases, simulation codes, and decades of published literature. This list collects the tools that connect those resources to language models and AI agents. That covers servers exposing scientific data over the Model Context Protocol, agent frameworks that plan and run calculations, models adapted to the domain, and the benchmarks that test whether any of it works.

General machine learning for materials falls outside the scope. Interatomic potentials and property-prediction networks already have two good lists, both linked at the end. A few flagship generative models appear here anyway, in a section of their own, because readers expect to find them. Most entries link to a repository. A few link to a paper where no public code exists.

## Contents

- [MCP Servers](#mcp-servers)
  - [Materials and Chemistry Databases](#materials-and-chemistry-databases)
  - [Computation and Simulation](#computation-and-simulation)
  - [Instruments and Characterization](#instruments-and-characterization)
  - [Scientific Literature](#scientific-literature)
  - [Multi-Domain Collections](#multi-domain-collections)
- [Agents and Multi-Agent Frameworks](#agents-and-multi-agent-frameworks)
  - [Materials Design and Discovery](#materials-design-and-discovery)
  - [Chemistry Reasoning and Tool Use](#chemistry-reasoning-and-tool-use)
  - [Simulation Workflows](#simulation-workflows)
  - [Self-Driving Labs and Instrument Control](#self-driving-labs-and-instrument-control)
  - [Literature and General Science](#literature-and-general-science)
- [Language Models](#language-models)
  - [Chemistry and Materials Models](#chemistry-and-materials-models)
  - [Domain Encoders](#domain-encoders)
- [Literature Mining and Extraction](#literature-mining-and-extraction)
- [Benchmarks and Evaluation](#benchmarks-and-evaluation)
- [Datasets and Corpora](#datasets-and-corpora)
- [Generative and Foundation Models](#generative-and-foundation-models)
- [Agent Skills](#agent-skills)
- [Reviews and Surveys](#reviews-and-surveys)
- [Communities and Events](#communities-and-events)

## MCP Servers

The Model Context Protocol lets an assistant call external tools directly. These servers put databases, simulation codes, and instruments behind that interface.

### Materials and Chemistry Databases

- [ChEMBL MCP Server](https://github.com/Augmented-Nature/ChEMBL-MCP-Server) - Unofficial server for search and retrieval across the ChEMBL bioactive compound database.
- [Materials Project MCP](https://github.com/benedictdebrah/materials-project-mcp) - Queries Materials Project structures, electronic properties, and phonon data.
- [mp-api MCP Server](https://docs.materialsproject.org/services/ml-and-ai-applications/mcp) - Official Materials Project server, shipped with the mp-api client since version 0.46.
- [OPTIMADE MCP Server](https://github.com/dianfengxiaobo/optimade-mcp-server) - Queries any OPTIMADE-compatible materials database with configurable filter presets.
- [PubChem MCP Server](https://github.com/cyanheads/pubchem-mcp-server) - PubChem compounds, properties, safety data, bioactivity, and cross-references.
- [Space Mushroom MCP](https://github.com/simulsarker007/space-mushroom-mcp) - Remote server for a sourced open materials database, with units, methods, and sources per value.

### Computation and Simulation

- [ABACUS MCP Server](https://github.com/PhelanShao/abacus-mcp-server) - Structured interface to the ABACUS density functional theory platform.
- [Atomic Toolkit MCP](https://github.com/XirtamEsrevni/mcp-atomictoolkit) - Atomistic simulation tools built on ASE, pymatgen, and machine-learned interatomic potentials.
- [ChemDraw MCP](https://github.com/jurimaxam-dotcom/chemdraw-mcp) - Renders molecule names or SMILES as 2D structures, reaction schemes, and mechanism arrows.
- [ChemMCP](https://github.com/OSU-NLP-Group/ChemMCP) - Extensible chemistry toolkit covering molecular analysis, property prediction, and reactions.
- [gmx-vmd-mcp](https://github.com/egtai/gmx-vmd-mcp) - GROMACS and VMD molecular dynamics simulation and visualization.
- [Goldilocks MCP](https://github.com/stfc/goldilocks-mcp) - Predicts k-point spacing for Quantum ESPRESSO runs using ALIGNN or random forest models.
- [HEA-Bench](https://github.com/dfieser/hea-bench) - High-entropy alloy descriptors including mixing entropy, size mismatch, and Miedema enthalpies.
- [LCF Strain-Life](https://github.com/dfieser/lcf-strain-life) - Low-cycle fatigue analysis with Coffin-Manson, Ramberg-Osgood, and rainflow counting.
- [mcp-molecules](https://github.com/laszlopere/mcp-molecules) - Molecular weights, isotope distributions, and compound lookup backed by NIST data.
- [OpenMM MCP Server](https://github.com/PhelanShao/openmm-mcp-server) - Runs OpenMM molecular dynamics, with bundled ABACUS density functional theory tools.
- [OVITO MCP](https://github.com/wjgoarxiv/ovito-mcp) - Headless in-process OVITO for trajectory analysis, rendering, and hydrate cage typing.
- [RDKit MCP Server](https://github.com/tandemai-inc/rdkit-mcp-server) - Drives RDKit cheminformatics operations from natural language.
- [xTB MCP Server](https://github.com/PhelanShao/xtb-mcp-server) - Generates xTB semiempirical quantum chemistry input files and converts structure formats.
- [YADE MCP](https://github.com/yusong652/yade-mcp) - Runs discrete element method simulations conversationally.

### Instruments and Characterization

- [asyncroscopy](https://github.com/pycroscopy/asyncroscopy) - Microscope hardware control with an optional MCP layer, successor to pyAutoMic.
- [FORTHought](https://github.com/MariosAdamidis/FORTHought) - Self-hosted lab platform bundling MCP servers for spectroscopy, diffraction, and microscopy.

### Scientific Literature

- [arxiv-mcp-server](https://github.com/blazickjp/arxiv-mcp-server) - Searches arXiv, downloads papers, reads full text and LaTeX, and follows citation graphs.
- [OpenAlex Research MCP](https://github.com/oksure/openalex-research-mcp) - Searches over 240 million scholarly works with citation analysis and trend tracking.
- [paper-search-mcp](https://github.com/openags/paper-search-mcp) - Searches and downloads papers from arXiv, PubMed, bioRxiv, and other sources.
- [PatSnap MCP](https://github.com/patsnap/mcp) - Commercial patent, literature, and chemistry intelligence servers, requiring a paid account.
- [Semantic Scholar FastMCP](https://github.com/zongmin-yu/semantic-scholar-fastmcp-mcp-server) - Comprehensive access to the Semantic Scholar academic paper API.
- [Simple arXiv](https://github.com/andybrandt/mcp-simple-arxiv) - Searches arXiv and retrieves metadata, abstracts, and full text converted to Markdown.
- [Simple PubMed](https://github.com/andybrandt/mcp-simple-pubmed) - Searches and queries the PubMed literature database.
- [Zotero MCP](https://github.com/54yyyu/zotero-mcp) - Connects a Zotero reference library to AI assistants.

### Multi-Domain Collections

- [mcp.science](https://github.com/pathintegral-institute/mcp.science) - Open collection of science servers including Materials Project search and GPAW calculations.
- [ToxMCP](https://github.com/ToxMCP/toxmcp) - Hub indexing nine servers for computational toxicology and exposure modelling.

## Agents and Multi-Agent Frameworks

### Materials Design and Discovery

- [AtomAgents](https://github.com/lamm-mit/AtomAgents) - Physics-aware multi-agent alloy design coupling language models with LAMMPS simulations.
- [ChatMOF](https://github.com/Yeonghun1675/ChatMOF) - Predicts and generates metal-organic frameworks from natural language queries.
- [dZiner](https://github.com/mehradans92/dziner) - Inverse design agent guided by design rules retrieved from the literature.
- [HoneyComb](https://arxiv.org/abs/2409.00135) - Materials agent with a curated knowledge base and an inductive tool hub.
- [LLaMP](https://github.com/chiang-yuan/llamp) - Hierarchical agents grounding language models on Materials Project data to reduce hallucination.
- [LLMatDesign](https://github.com/Fung-Lab/LLMatDesign) - Modifies and evaluates candidate materials toward user-defined target properties.
- [MatAgent](https://github.com/adibgpt/MatAgent) - Multi-agent framework for property prediction and hypothesis generation.
- [SciAgents](https://github.com/lamm-mit/SciAgentsDiscovery) - Multi-agent discovery over ontological knowledge graphs for bio-inspired materials.
- [SparksMatter](https://github.com/lamm-mit/SparksMatter) - Physics-aware reasoning agents for autonomous inorganic materials discovery.

### Chemistry Reasoning and Tool Use

- [CACTUS](https://github.com/pnnl/cactus) - Tool-augmented agent integrating cheminformatics utilities for molecular property questions.
- [ChemAgent](https://github.com/gersteinlab/chemagent) - Self-updating memory library that improves chemical reasoning over time.
- [ChemCrow](https://github.com/ur-whitelab/chemcrow-public) - Augments language models with 18 expert chemistry tools for synthesis and discovery.
- [ChemToolAgent](https://github.com/OSU-NLP-Group/ChemToolAgent) - Chemistry tool suite paired with a study of how tools affect problem solving.
- [MOOSE-Chem](https://github.com/ZonglinY/MOOSE-Chem) - Rediscovers chemistry hypotheses through inspiration retrieval, composition, and ranking.
- [SciToolAgent](https://github.com/HICAI-ZJU/SciToolAgent) - Knowledge-graph agent integrating over 500 biology, chemistry, and materials tools.

### Simulation Workflows

- [ChemGraph](https://github.com/argonne-lcf/ChemGraph) - Connects natural language to molecular simulation through ASE, RDKit, and MCP tools.
- [DREAMS](https://github.com/BattModels/material_agent) - Multi-agent engine running Quantum ESPRESSO workflows on high-performance computing systems.
- [El Agente](https://arxiv.org/abs/2505.02484) - Autonomous multi-agent system executing quantum chemistry workflows from natural language.
- [LangSim](https://github.com/jan-janssen/LangSim) - Couples language models to atomistic simulation codes for computing material properties.
- [MDCrow](https://github.com/ur-whitelab/MDCrow) - Sets up and executes OpenMM molecular dynamics simulations end to end.
- [MechAgents](https://github.com/lamm-mit/MechAgents) - Agent teams that solve elasticity problems using finite element methods.
- [VASPilot](https://github.com/JiaxuanLiu-Arsko/VASPilot) - Multi-agent system automating VASP calculations, exposed through an MCP server.

### Self-Driving Labs and Instrument Control

- [AILA](https://github.com/M3RG-IITD/AILA) - Automates atomic force microscopy, with the AFMBench evaluation suite included.
- [AutoLabs](https://github.com/pnnl/autolabs) - Self-correcting agents translating natural language into liquid-handler protocols.
- [CALMS](https://github.com/mcherukara/CALMS) - Context-aware assistant for scientists operating instruments at user facilities.
- [Coscientist](https://github.com/gomesgroup/coscientist) - Autonomous agent that designs, plans, and executes chemical experiments.
- [ORGANA](https://github.com/ac-rad/organa) - Robotic chemistry assistant with perception, scheduling, and parallel execution.

### Literature and General Science

- [Aviary](https://github.com/Future-House/aviary) - Gym environment for training and evaluating language agents on scientific tasks.
- [Eunomia](https://github.com/AI4ChemS/Eunomia) - Builds materials datasets from papers, with chain-of-verification to cut hallucination.
- [PaperQA2](https://github.com/Future-House/paper-qa) - Retrieval-augmented agent answering literature questions with citations.

## Language Models

### Chemistry and Materials Models

- [AtomGPT](https://github.com/usnistgov/atomgpt) - NIST transformer for forward property prediction and inverse structure design.
- [ChemDFM](https://github.com/OpenDFM/ChemDFM) - Open dialogue foundation model for chemistry and molecular science.
- [ChemLLM](https://huggingface.co/AI4Chem/ChemLLM-7B-Chat) - Open chemistry model built on InternLM2, released in 7B and 20B variants.
- [CrystaLLM](https://github.com/lantunes/CrystaLLM) - Autoregressive model of the CIF format that generates crystal structures.
- [Darwin](https://github.com/MasterAI-EAM/Darwin) - Foundational model series for physics, chemistry, and materials science.
- [ether0](https://github.com/Future-House/ether0) - Scientific reasoning model released with chemistry datasets and reward functions.
- [gptchem](https://github.com/kjappelbaum/gptchem) - Fine-tunes GPT-3 to solve predictive and inverse chemistry problems from text prompts.
- [LLaMat](https://github.com/M3RG-IITD/llamat) - LLaMA models continued-pretrained on materials text, with chat and CIF variants.
- [LlaSMol](https://github.com/OSU-NLP-Group/LLM4Chem) - Chemistry models instruction-tuned on the SMolInstruct dataset of 14 tasks.
- [MolT5](https://github.com/blender-nlp/MolT5) - Translates between SMILES strings and natural language molecule descriptions.
- [nach0](https://github.com/insilicomedicine/nach0) - Multimodal model handling natural language and chemical language tasks jointly.

### Domain Encoders

- [BatteryBERT](https://github.com/ShuHuang/batterybert) - Encoders for battery database enhancement and battery literature question answering.
- [ChemBERTa](https://github.com/seyonechithrananda/bert-loves-chemistry) - Transformers pretrained on SMILES for molecular property prediction.
- [MatBERT](https://github.com/lbnlp/MatBERT) - Encoder pretrained on materials literature by the Berkeley Lab text mining team.
- [MaterialsBERT](https://huggingface.co/pranav-s/MaterialsBERT) - Fine-tuned on 2.4 million materials abstracts, used for polymer property extraction.
- [MatSciBERT](https://github.com/M3RG-IITD/MatSciBERT) - Materials domain encoder for text mining and information extraction.
- [MoLFormer](https://github.com/IBM/molformer) - Chemical language model pretrained on 1.1 billion SMILES from PubChem and ZINC.
- [SciBERT](https://github.com/allenai/scibert) - Trained on 1.14 million scientific papers and still a common materials NLP baseline.

## Literature Mining and Extraction

- [BatteryDataExtractor](https://github.com/ShuHuang/batterydataextractor) - Battery-aware text mining with embedded encoder models.
- [ChemDataExtractor 2](https://github.com/CambridgeMolecularEngineering/chemdataextractor2) - Extracts chemical property records from scientific literature.
- [ChemRxnExtractor](https://github.com/jiangfeng1124/ChemRxnExtractor) - Pulls chemical reactions out of published text.
- [DECIMER Image Transformer](https://github.com/Kohulan/DECIMER-Image_Transformer) - Optical chemical structure recognition converting drawings into SMILES.
- [EXSCLAIM](https://github.com/MaterialEyes/exsclaim) - Builds self-labeled materials imaging datasets from figures in papers.
- [GROBID](https://github.com/grobidOrg/grobid) - Extracts structured information from scholarly PDFs, a common pipeline front end.
- [mat2vec](https://github.com/materialsintelligence/mat2vec) - Unsupervised embeddings capturing latent knowledge in materials literature.
- [MatSKRAFT](https://github.com/M3RG-IITD/MatSKRAFT) - Extracts properties and compositions from materials tables at scale.
- [MolScribe](https://github.com/thomas0809/MolScribe) - Recognizes molecular structure drawings and converts them to machine-readable form.
- [NERRE](https://github.com/lbnlp/NERRE) - Entity and relation extraction from materials text using fine-tuned models.
- [OpenChemIE](https://github.com/CrystalEye42/OpenChemIE) - Extracts molecule and reaction data from text, tables, and figures together.

## Benchmarks and Evaluation

- [ChemBench](https://github.com/lamalab-org/chembench) - Over 2,700 curated question-answer pairs probing chemistry knowledge and reasoning.
- [ChemLLMBench](https://github.com/ChemFoundationModels/ChemLLMBench) - Eight tasks spanning name prediction, properties, reactions, and retrosynthesis.
- [LAB-Bench](https://github.com/Future-House/LAB-Bench) - Practical research skills across literature, figures, protocols, and sequences.
- [LabSafety Bench](https://github.com/YujunZhou/LabSafety-Bench) - Evaluates reliability on laboratory safety hazards and real-world scenarios.
- [LLM4Mat-Bench](https://github.com/vertaix/LLM4Mat-Bench) - Property prediction over 1.9 million crystals from composition, CIF, and text.
- [MaCBench](https://github.com/lamalab-org/macbench) - Multimodal benchmark for chemistry data extraction and laboratory reasoning.
- [MaScQA](https://github.com/M3RG-IITD/MaScQA) - 650 examination questions testing undergraduate materials science knowledge.
- [matchem-llm](https://github.com/materials-data-facility/matchem-llm) - Community index of question-answering and evaluation sets for the field.
- [MatPhaseBench](https://github.com/Davidwhw/MatPhaseBench) - Vision-language benchmark for reading and interpreting phase diagrams.
- [MatSci-NLP](https://github.com/BangLab-UdeM-Mila/NLP4MatSci-ACL23) - Seven tasks covering entities, relations, and synthesis actions.
- [MatSciBench](https://github.com/Jun-Kai-Zhang/MatSciBench) - 1,340 college-level reasoning questions with difficulty tiers and figures.
- [MatText](https://github.com/lamalab-org/MatText) - Evaluates how well text representations of crystals serve language models.
- [MatTools](https://github.com/Grenzlinie/MatTools) - Tests tool use on 69,000 pymatgen question-answer pairs and real coding tasks.
- [MicroVQA](https://github.com/jmhb0/microvqa) - Expert-curated questions on multimodal reasoning over scientific microscopy.
- [MolPuzzle](https://github.com/KehanGuo2/MolPuzzle) - Structure elucidation from infrared, nuclear magnetic resonance, and mass spectra.
- [MSQA](https://github.com/jerry3027/MSQA) - 1,757 graduate-level questions in long-form and true-false formats.
- [SciAssess](https://github.com/deepmodeling/SciAssess) - Literature analysis benchmark spanning chemistry, materials, and biology.
- [TOMG-Bench](https://github.com/phenixace/TOMG-Bench) - Text-based open molecule generation covering editing, optimization, and custom design.

## Datasets and Corpora

- [ChemNLP](https://github.com/OpenBioML/chemnlp) - Community project curating large chemistry datasets for model training.
- [ChemPile](https://github.com/lamalab-org/chempile) - Curated 250 GB corpus of roughly 75 billion tokens for chemical foundation models.
- [MMSci](https://github.com/Leezekun/MMSci) - Figure and caption dataset for multimodal scientific understanding and tuning.
- [Mol-Instructions](https://github.com/zjunlp/Mol-Instructions) - Large-scale biomolecular instruction dataset covering molecules, proteins, and text.

## Generative and Foundation Models

Not language models, but central enough to AI-driven materials discovery that researchers arriving here expect to find them.

- [GNoME](https://github.com/google-deepmind/materials_discovery) - Graph network model and dataset of 520,000 novel stable materials from DeepMind.
- [MatterGen](https://github.com/microsoft/mattergen) - Generative model for inorganic materials, steerable toward property constraints.
- [MatterSim](https://github.com/microsoft/mattersim) - Deep learning force field spanning elements, temperatures, and pressures.

## Agent Skills

- [Anthropic Agent Skills](https://github.com/anthropics/skills) - Official skills for document handling, MCP server building, and skill authoring.
- [Awesome Scientific Skills](https://github.com/InternScience/Awesome-Scientific-Skills) - Curated, cloneable agent skills for scientific research.
- [codex-claude-academic-skills](https://github.com/zLanqing/codex-claude-academic-skills) - Academic research workflow skills for coding agents.
- [Scientific Agent Skills](https://github.com/K-Dense-AI/scientific-agent-skills) - Validated science skills wired to more than 100 research databases.

## Reviews and Surveys

- [14 Examples of How Large Language Models Can Transform Materials Science and Chemistry](https://arxiv.org/abs/2306.06283) - Digital Discovery, 2023, from the first domain hackathon.
- [34 Examples of Large Language Model Applications in Materials Science and Chemistry](https://arxiv.org/abs/2505.03049) - Follow-up hackathon report, 2025.
- [A Comprehensive Survey of Scientific Large Language Models](https://arxiv.org/abs/2406.10833) - Cross-domain survey of scientific models, EMNLP 2024.
- [A Review of Large Language Models and Autonomous Agents in Chemistry](https://arxiv.org/abs/2407.01603) - Chemical Science, 2025.
- [Agentic AI for Scientific Discovery](https://arxiv.org/abs/2503.08979) - Survey of agent progress, open challenges, and directions, 2025.
- [Are Large Language Models Ready for Real-World Materials Discovery](https://arxiv.org/abs/2402.05200) - Perspective on current capability gaps, 2024.
- [From Knowledge to Action](https://arxiv.org/abs/2605.03205) - Outcomes of 120 projects from the 2025 hackathon, 2026.
- [The Future of Chemistry Is Language](https://www.nature.com/articles/s41570-023-00502-0) - Nature Reviews Chemistry, 2023.

## Communities and Events

- [Acceleration Consortium](https://acceleration.utoronto.ca/) - Toronto-based consortium building self-driving laboratories.
- [Materials Project](https://materialsproject.org/) - Open database of computed materials properties, with an API and active forum.
- [matsci.org](https://matsci.org/) - Discourse forum with categories for Materials Project, pymatgen, and OPTIMADE.
- [OSI Hackathon](https://llmhackathon.github.io/) - Annual hackathon on language models across materials, chemistry, and physical sciences.

## Related Lists

- [Awesome Chemistry Datasets](https://github.com/kjappelbaum/awesome-chemistry-datasets) - Datasets for machine learning in chemistry.
- [Awesome Claude Skills](https://github.com/ComposioHQ/awesome-claude-skills) - Community-curated agent skills.
- [Awesome Materials Informatics](https://github.com/tilde-lab/awesome-materials-informatics) - Materials informatics and modern materials software.
- [Awesome MCP Servers](https://github.com/punkpeye/awesome-mcp-servers) - The largest general collection of Model Context Protocol servers.
- [Awesome Python Chemistry](https://github.com/lmmentel/awesome-python-chemistry) - Python packages for chemistry, simulation, and cheminformatics.
- [Awesome Scientific Language Models](https://github.com/yuzhimanhua/Awesome-Scientific-Language-Models) - Companion list to a survey of scientific language models.
- [Best-of Atomistic Machine Learning](https://github.com/JuDFTteam/best-of-atomistic-machine-learning) - Ranked, auto-updated list of atomistic machine learning projects.
- [MCP Servers Directory](https://github.com/wong2/awesome-mcp-servers) - Curated server list with a companion directory site.

## Contributing

Contributions are welcome. Read the [contribution guidelines](contributing.md) first, then open a pull request adding one entry.
