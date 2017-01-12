require 'watir'
require "touch_action/script_generator"

module TouchAction
  module Watir
    def touch_action *args
      final_script = TouchAction::ScriptGenerator.generate_javascript(*args)
      browser.execute_script( final_script, self )
    end
  end

end

Watir::Element.class_eval { include TouchAction::Watir }
