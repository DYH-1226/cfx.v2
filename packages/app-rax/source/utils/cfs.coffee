px = (n) => "#{n}px"
rpx = (n) => "#{n}rpx"
vh = (n) => "#{n}vh"
per = (n) => "#{n}%"

color = (n) => "##{n}"

makeArray = (a) =>
  unless Array.isArray a
  then [a]
  else a
mayBeJoin = (a, beJoin) =>
  if a.length > 1
  then a.join beJoin
  else a

join = (a, beJoin) =>
  mayBeJoin(
    makeArray a
    beJoin
  )
joinS = (a) => join a, ' '
joinP = (a) => join a, ', '

func = (funcName, funcBody) =>
  "#{funcName}(#{funcBody})"
fujp = (funcName, a) =>
  func funcName
  ,
    joinP makeArray a
fujs = (funcName, a) =>
  func funcName
  ,
    joinS makeArray a

rgba = (a) =>
  fujp 'rgba', a
cubicBezier = (a) =>
  fujp 'cubic-bezier', a
matrix = (a) =>
  fujp 'matrix', a
translate = (a) =>
  fujp 'translate', a

calc = (a) =>
  fujs 'calc', a

className = (classname) =>
  (
    classname.split ''
  )[1..]
  .join ''

export {
  px
  rpx
  vh

  per

  color

  joinS
  joinP

  func
  fujp 

  rgba
  cubicBezier
  matrix
  translate

  calc

  className
}