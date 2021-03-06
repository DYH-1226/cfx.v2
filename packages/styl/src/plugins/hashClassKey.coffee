# import dd from 'ddeyes'
import hash from 'hash-sum'
import { camelToSlash } from '../classKey'

export default =>

  (style, actionPoint) =>

    # dd 'hashClassKey'

    return unless actionPoint is 'hashClassKey'

    (
      Object.keys style
    )
    .reduce (r, c) =>
      hashClassKey = "#{camelToSlash c}-#{hash style[c]}"
      {
        r...
        [hashClassKey]: style[c]
      }
    , {}
