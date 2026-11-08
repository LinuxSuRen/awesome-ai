# Contribution

欢迎推荐新的 AI 工具！本仓库的 README 由 [generator workflow](.github/workflows/generator.yaml) 基于 `data/` 目录下的 YAML 文件自动生成，请按以下规范提交。

## 收录条目

在 [data](data) 目录新增一个 YAML 文件，文件名用工具名的 kebab-case（如 `my-tool.yaml`）：

```yaml
name: My Tool
link: https://mytool.example.com
kind: Develop Tool
creator: Example Inc
```

| 字段 | 必填 | 说明 |
|---|---|---|
| `name` | ✅ | 工具名称 |
| `link` | ✅ | 工具主页或官方仓库，须为可访问的产品页面 |
| `kind` | ✅ | 分类，必须使用下方现有分类之一 |
| `creator` | 可选 | 作者或公司 |

## 分类（kind）白名单

`Chatbot`、`CodeAssistant`、`Develop Tool`、`Local`、`Other`、`Search`、`Search Engine`、`Text to Image`

不新增分类——单独为某个工具开设新板块会让目录结构变得零散；如果你的工具不好归类，请使用 `Other`。

## 收录条件（不符合的 PR 将被拒绝）

除格式规范外，收录的站点本身须满足以下条件：

1. **链接真实可访问**：`link` 必须是可正常打开的产品页面。提交前请自查，无法访问的死链不予收录（合并后的例行检查发现死链也会被移除）。
2. **不得仿冒知名模型或产品**：不收录套用他人知名模型名/产品名的非官方站点（例如与官方无关、仅借用模型名的仿冒站或 SEO 引流站）。若工具确实由官方出品，请使用官方域名；无法证明官方关联的，一律不收录。
3. **不收录灰色 API 转售/中转站**：以远低于官方价格转售 Claude / GPT / Gemini 等官方 API 的第三方中转站，普遍违反上游服务条款、密钥来源不明，不予收录。官方 API 或官方授权渠道不受此限。

## 注意事项

- **请勿直接编辑 `README.md`**，它是生成产物，直接编辑的 PR 会被关闭
- 每个工具一个文件，不要在别人的文件里追加
- README 会在合并后由 CI 自动重新生成，无需手动更新
