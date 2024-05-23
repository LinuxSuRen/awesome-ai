#!yaml-readme -p data/*.yaml --output README.md --group-by kind

Collection of the awesome AI tools:

{{- range $key, $val := .}}

## {{$key}}

| Name | Creator |
|---|---|
{{- range $item := $val}}
| [{{$item.name}}]({{$item.link}}) | {{$item.creator}} |
{{- end}}
{{end}}

{{printStarHistory "linuxsuren" "awesome-ai"}}

## Contribution
Please add a YAML file in the directory [data](data) if you want to contribute.
