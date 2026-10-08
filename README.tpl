#!yaml-readme -p data/*.yaml --output README.md --group-by kind

{{- $icons := dict "Chatbot" "💬" "CodeAssistant" "🧑‍💻" "Develop Tool" "🛠️" "Local" "🏠" "Other" "🎁" "Search" "🔍" "Search Engine" "🌐" "Text to Image" "🎨"}}
{{- $descs := dict "Chatbot" "对话式 AI 助手" "CodeAssistant" "AI 编程助手与代码补全" "Develop Tool" "面向开发者的效率工具" "Local" "本地部署与私有化运行" "Other" "其他实用 AI 服务" "Search" "AI 驱动的垂直搜索" "Search Engine" "AI 搜索引擎" "Text to Image" "文本生成图像"}}
{{- $total := 0}}
{{- range $key, $val := .}}
{{- $total = add $total (len $val)}}
{{- end}}
<div align="center">

# 🤖 Awesome AI

**精选优质 AI 工具收录：对话助手、编程助手、开发工具、图像生成……持续更新**

[![Stars](https://img.shields.io/github/stars/LinuxSuRen/awesome-ai?style=flat-square)](https://github.com/LinuxSuRen/awesome-ai/stargazers)
[![Last Commit](https://img.shields.io/github/last-commit/LinuxSuRen/awesome-ai?style=flat-square)](https://github.com/LinuxSuRen/awesome-ai/commits)
[![Tools](https://img.shields.io/badge/tools-{{$total}}-blue?style=flat-square)](#目录)
[![License](https://img.shields.io/badge/license-Apache--2.0-green?style=flat-square)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)](CONTRIBUTING.md)

</div>

## 目录

{{- range $key, $val := .}}
- {{index $icons $key}} [{{$key}}](#{{lower $key | replace " " "-"}})（{{len $val}}）
{{- end}}

{{range $key, $val := .}}
<a id="{{lower $key | replace " " "-"}}"></a>
## {{index $icons $key}} {{$key}}({{len $val}})

> {{index $descs $key}}

| Name | Creator |
|---|---|
{{- range $item := $val}}
| [{{$item.name}}]({{$item.link}}) | {{$item.creator}} |
{{- end}}
{{end}}

{{printStarHistory "linuxsuren" "awesome-ai"}}

## Contribution

欢迎推荐新的 AI 工具，步骤与字段规范见 [CONTRIBUTING.md](CONTRIBUTING.md)。要点：

1. 在 [data](data) 目录新增一个 YAML 文件（如 `data/my-tool.yaml`），**请勿直接编辑 README.md**
2. `kind` 请使用现有分类，README 由 [generator workflow](.github/workflows/generator.yaml) 自动重新生成
