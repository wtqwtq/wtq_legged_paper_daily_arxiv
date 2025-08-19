// 论文类型：保留对你有用的几类
let titles_type = [
  "Survey", "Review", "Overview", "Benchmark", "Dataset", "Tutorial", "Challenge", "Resource"
];


// 模型/范式：面向机器人RL与策略类
let titles_model = [
  "Transformer", "Transformer Policy",
  "Diffusion", "Diffusion Policy",
  "VAE",
  "MoE", "Mixture of Experts",
  "World Model",
  "Graph", "GNN",
  "Foundation Model",
  "VLA", "Vision-Language-Action"
];


// 方法/主题：聚焦腿足RL与步态关键词（含常见变体）
let titles_method = [
  // 核心任务与现象
  "Legged", "Locomotion", "Gait", "Gait Transition",
  "Metachronal", "Retrograde", "Prograde", "Split Wave",
  "Terrain", "Contact", "Contact-rich", "Compliance",
  "Trunk", "Spine", "Backbone",

  // RL/IL 方法
  "Reinforcement Learning", "RL",
  "Imitation Learning", "Behavior Cloning",
  "Adversarial Motion Prior", "AMP",
  "RMA",
  "Domain Randomization",
  "Sim2Real", "Sim-to-Real",

  // 机器人与构型（方便一眼识别）
  "Quadruped", "Biped", "Hexapod", "Many-legged", "Polypedal",
  "Centipede", "Chilopoda", "Scolopendra", "Myriapod",

  // 常见算法缩写（可选：有时标题会直接出现）
  "PPO", "SAC", "TD3"
];


let titles =  titles_model + titles_method + titles_type;


let authors_array = ["Yann LeCun", "Geoffrey Hinton", "Yoshua Bengio"];


let conferences = [
     "ICRA","IROS","RSS","CoRL","Science Robotics","RA-L","T-RO","IJRR"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
