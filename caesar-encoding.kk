fun encode( s : string, shift : int )
  fun encode-char(c)
    if c < 'a' || c > 'z' then return c
    val base = (c - 'a').int
    val rot  = (base + shift) % 26
    (rot.char + 'a')
  s.map(encode-char)

fun caesar( s : string ) : string
  s.encode( 3 )

fun showit( s : string )
  s.encode(3).count.println