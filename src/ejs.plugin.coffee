# Export Plugin
module.exports = (BasePlugin) ->
	# Define Plugin
	class EjsPlugin extends BasePlugin
		# Plugin name
		name: 'ejs'

		# Render some content
		render: (opts) ->
			# Prepare
			{inExtension,templateData} = opts

			# Check extensions
			if inExtension is 'ejs'
				# Requires
				ejs = require('ejs')

				# Render
				opts.content = ejs.render(opts.content,templateData)
