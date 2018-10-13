require 'minruby'

str = gets

tree = minruby_parse(str)

def evaluate(tree)
    case tree[0]
    when 'lit'
        tree[1]
    when '+'
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left + right
    when '-'
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left - right
    when '*'
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left * right
    when '/'
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left / right
    when '**'
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left ** right
    else
        left = evaluate(tree[1])
        right = evaluate(tree[2])
        left % right
    end
end

answer = evaluate(tree)
p(answer)