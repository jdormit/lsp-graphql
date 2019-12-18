(defun connect-lsp-graphql (port)
  (list (expand-file-name "~/graphiql/node_modules/.bin/graphql")
	"server"
	"--port"
	(number-to-string port)))

(lsp-register-client
 (make-lsp-client
  :new-connection (lsp-tcp-connection 'connect-lsp-graphql)
  :major-modes '(graphql-mode)
  :server-id 'graphql))

(add-to-list 'lsp-language-id-configuration '(graphql-mode . "graphql"))
