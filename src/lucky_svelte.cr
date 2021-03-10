require "json"

module LuckySvelte
  VERSION = "0.1.0"

  def svelte_component(class_name : String, tag : String? = "div")
    tag tag, "data-svelte-component": class_name
  end

  def svelte_component(class_name : String, props : NamedTuple | JSON::Any, tag : String? = "div")
    tag tag, "data-svelte-component": class_name, "data-svelte-props": props.to_json
  end
end
