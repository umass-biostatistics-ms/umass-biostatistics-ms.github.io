-- {{< yt VIDEO_ID "Title" >}}
-- Shows the YouTube thumbnail with a play button; clicking opens the video on YouTube in a new tab.
-- Unlike an embedded player, this works everywhere (local preview, RStudio Viewer, any browser).
return {
  ["yt"] = function(args, kwargs, meta)
    local id = pandoc.utils.stringify(args[1])
    local title = args[2] and pandoc.utils.stringify(args[2]) or "Watch on YouTube"
    local html = string.format([[
<a class="yt-thumb" href="https://www.youtube.com/watch?v=%s" target="_blank" rel="noopener" aria-label="Play video: %s">
  <img src="https://img.youtube.com/vi/%s/hqdefault.jpg" alt="%s" loading="lazy">
  <span class="yt-play" aria-hidden="true"></span>
  <span class="yt-caption">&#9654; %s</span>
</a>]], id, title, id, title, title)
    return pandoc.RawBlock("html", html)
  end
}
