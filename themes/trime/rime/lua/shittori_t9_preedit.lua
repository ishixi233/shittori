-- SPDX-License-Identifier: MIT
-- Display phonetic comments instead of ambiguous numeric T9 key codes.
-- Run before emoji/traditional conversion so their shadow candidates inherit it.
return function(input, env)
  for cand in input:iter() do
    local spelling = (cand.comment or ""):gsub("[0-9]", "")
    if not spelling:find("%S") then
      -- Empty preedit makes librime fall back to raw digits; keep it nonempty.
      spelling = "短语"
    end
    cand:get_genuine().preedit = spelling
    yield(cand)
  end
end
