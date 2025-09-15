{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- if  target.name == "dev_pr" -%} s_dev_pudl
    {%- elif target.name == "dev" -%} s_dev_pudl
    {%- elif target.name == "qa_pr" -%} s_qa_pudl
    {%- elif target.name == "qa" -%} s_qa_pudl
    {%- elif target.name == "prod_pr" -%} s_prod_pudl
    {%- elif target.name == "prod" -%} s_prod_pudl
    {%- elif "user_" in target.name -%} {{ target.name }}
    {%- else -%} invalid_database
    {%- endif -%}

{%- endmacro %}
