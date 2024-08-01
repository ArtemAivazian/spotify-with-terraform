resource "spotify_playlist" "MyOGBuda" {
  name        = "OG Buda"
  description = "A playlist of some of my favorite songs"
  public      = false

  tracks = [
    data.spotify_track.babytron.id,
    data.spotify_track.grust2_sonata.id
  ]
}

data "spotify_track" "babytron" {
  url = "https://open.spotify.com/track/7M0s9oTEkUzBSnkUnG0Idr?si=bebbd958e307484f"
}
data "spotify_track" "grust2_sonata" {
  url = "https://open.spotify.com/track/16KfubI9E9AYJ5hcEdZ9TI?si=36a9119508a74aa7"
}