# Resolute Force — English UI resource (functional strings only)
# ---------------------------------------------------------------
# Functional strings that localize. The game's real vocabulary is the
# cyber-metaphor (Output / Firewall / Latency / Coherence …) — it exists in
# BOTH languages: zh shows 出力, en shows OUTPUT. ATK/DEF/AGI/MOV were only
# engineering placeholders and are RETIRED to internal Rust field names —
# never player-facing.
#
# Truly ornamental chrome that never localizes (汝之回合 nameplate, key
# glyphs, brand) stays as fixed literals in the layout — not here.
#
# RULE: never add a key for the Latin half of an existing decorative pair
# (YOUR TURN / SKILLS / FORECAST / KILL). Those are chrome.

## Global turn status (title bar — no CJK pair, so it IS localized)
phase-player = PLAYER PHASE
phase-enemy  = ENEMY PHASE
turn-label   = TURN

## Action menu
cmd-header = COMMAND
act-attack = ATTACK
act-skill  = SKILL
act-mudiron   = MUD-IRON
act-inject    = INJECT
act-remote    = REMOTE FIRE
act-countersign = COUNTERSIGN
act-inspect = INSPECT
act-hush = HUSH
act-wake = WAKE
act-lease = LEASE
act-brace = BRACE
act-overclock = OVERCLOCK
act-release   = RELEASE
act-wait   = WAIT
act-cancel = CANCEL

## Targeting
target-select = SELECT TARGET
target-skill  = { $skill } — SELECT TARGET
btn-confirm   = CONFIRM
btn-back      = BACK

## Skills panel / repository (standalone, no CJK pair)
skills-tab     = SKILLS
repository-title = REPOSITORY — { $unit }
repository-sources-held = sources held
repository-epigraph = The Compiler says: forget one to learn one. The source never dies — only memory is traded.
cost-free      = FREE
cost-mp        = { $mp } MP
meta-rng       = RNG { $rng }

## Resource & stat vocabulary (lore-native — the game's REAL terms).
## These replace the ATK/DEF/HP/MP placeholders. zh shows 出力, en shows
## OUTPUT — one concept, two languages.
stat-coherence = COHERENCE
stat-bandwidth = BANDWIDTH
stat-output    = OUTPUT
stat-firewall  = FIREWALL
stat-latency   = LATENCY
stat-move      = MOVE
stat-memory    = MEMORY
# forecast panel — 傷 is the forecast DAMAGE cell (not the 出力 output stat)
stat-dmg  = DMG
stat-hit  = HIT
stat-crit = CRIT
# Short forms — swap these IN if the compact 4-across stat grid can't fit
# full words (see STRING_LEDGER §layout): OUT / FWL / LAT / MOV.

## Overclock meter — label + states
stat-overclock = OVERCLOCK
oc-idle     = IDLE
oc-charging = CHARGING
oc-ready    = READY

## Settings
settings-title = SETTINGS
set-sound      = Sound
set-music      = Music
set-grid       = Battle grid
set-anim       = Anim speed
set-autosave   = Autosave
val-on     = ON
val-off    = OFF
val-slow   = SLOW
val-normal = NORMAL
val-fast   = FAST

## Combat log (toasts) — args in { }
log-steps   = { $unit } steps forward — the { $class }.
log-holds   = { $unit } holds the line.
log-attack  = Attack — mark a target.
log-channel = { $skill } channeled. Choose a target.
log-readied = { $skill } readied — { $unit }.
log-strike  = { $unit } strikes { $foe } — { $dmg } DMG!
log-retreat = Retreat is not an option, Commander.

## Bottom control hints (key glyph stays literal; only the verb localizes)
ctl-move    = move
ctl-confirm = confirm
ctl-cancel  = cancel
ctl-rotate  = rotate
ctl-zoom    = zoom
ctl-freecam = free-cam

## Class names (used in log-steps and roster)
class-mage     = Mage
class-hero     = Hero
class-priest   = Priest
class-sorcerer = Sorcerer
class-knight   = Knight
class-archer   = Archer
class-sniper   = Sniper
class-bishop   = Bishop
class-recruit  = Recruit
class-raider   = Raider

## Extra functional settings kept from the build (not in the design ledger)
set-turnorder = Turn order
set-cutscene  = Cut-scene
set-artstyle  = Art style
set-toon      = Toon shading
set-language  = Language
# Turn order values
turn-agility = Agility
turn-free    = Free
turn-hybrid  = Hybrid
# Cut-scene values
cut-zoom  = Zoom
cut-arena = Arena
cut-off   = Off
# Art style values
art-geass     = Code Geass
art-vibrant   = Vibrant Cel
art-painterly = Painterly Cel
art-pbr       = Cinematic PBR
art-hd2d      = HD-2D Glow

## Connection stats (design ledger v2 — cells land with the equipment layer, P7)
stat-sync = SYNC
stat-hand = HAND
stat-trace = TRACE
stat-hold = HOLD

## The heat ledger's line labels (戰畢 Ⅲ and every screen that itemizes heat)
ledger-unsealed = unsealed cast
ledger-forged = forged cast
ledger-query = query
ledger-injection = injection
ledger-mudiron = mud-iron on core ground
ledger-leg = a leg of road
ledger-hush = a hush — double-logged
ledger-goods = unsealed goods
ledger-laundered = laundered
ledger-examcleared = the record was read

## 行旅 Travel — the road (tier-2: road/camp names + prose; chrome pairs stay literals)
travel-road-registered-desc = The seals read you — fast, but Frost expects the short road.
travel-road-granary-desc = The grain road: one night brings a caravan market or a bandit ambush.
travel-road-thin-desc = Long and cold-trailed, but every night the Rift brushes the camp.
travel-enc-registered = ×2 checkpoints · over 3 bars → Examination
travel-enc-granary = ×1 · caravan market or bandits
travel-enc-thin = ×4 Rift nights · corruption, sometimes a Daemon
travel-hunter-toward = hunter −1 region
travel-hunter-hold = hunter ±0
travel-hunter-away = hunter +1 region
travel-camp-nightquery-desc = pre-read the next leg's event
travel-camp-correctbuild-desc = −3 Bug on one shelved build
travel-camp-tendwounds-desc = heal one flesh wound (coin and time)
travel-camp-drillprotocol-desc = three nights equal one Teaching
travel-camp-readtide-desc = know the next battle's first weather turns
travel-camp-collatecodex-desc = collate one codex entry from sightings
travel-readout-coin = COIN
travel-readout-heat = HEAT
travel-readout-hunter = HUNTER
travel-per-leg = −15/leg
travel-depart = DEPART
travel-walk = WALK THE LEG
travel-outfit = OUTFIT
travel-camp-sub = one action per person, per night
travel-camp-note = camp casts are handshakes too — night hides nothing from the Log
travel-road-foot = longer roads shed more Heat, but the hunter keeps walking
travel-no-log = no-Log
travel-none = free

## 市 Market — counters, services, readouts (tier-2; 市/官市/黑市/暗務 chrome stay literals)
market-licensed = THE LICENSED COUNTER
market-black = THE BLACK COUNTER
market-services = SERVICES OF THE BACK ROOM
market-licensed-sub = clean seals, high prices, your name in the book
market-black-sub = cheap and dirty, no names asked
market-services-sub = laundering, bribery, new papers
market-refuse = refused · the counter reads no record over three bars
market-brand = stock grows with your outlaw name
market-hidden-bugs = black builds may hide extra Bugs — unverifiable before purchase
market-sealed = SEALED LICENSES · clean source · 0 bugs · registered
market-coin = COIN
market-heat = HEAT
market-standing = NAME
market-launder = LAUNDER THE NAME · −1 bar
market-launder-desc = wash one bar off the record
market-bribe = BRIBE A SEAL
market-bribe-desc = retro-seal one unsealed source (once per act)
market-papers = NEW PAPERS
market-papers-desc = one name re-registers — its Heat zeroed
market-fence = FENCE THE HAUL
market-fence-desc = the only place unsealed loot sells
market-no-fence = nothing unsealed to sell
market-bribe-case = BRIBE
market-recruit = RECRUIT
market-footer = same goods, three prices — the counter you choose is the politics you keep
market-leave = LEAVE

## 戰前之令 Briefing — writ, intel, tide, deploy (tier-2; chrome + sketch labels stay literals)
briefing-writ-skirmish = hold the field — no writ beyond the fight itself
briefing-writ-heist = crack the sealed vault and walk the source off your home edge — kills are NOT the writ
briefing-writ-taking = take the named mark ALIVE; a corpse fails the writ — kills are NOT the writ
briefing-writ-writ = outlast the Format writ: survive until it burns out — kills are NOT the writ
briefing-writ-sever = drop the holder or drain them dry and the law collapses
briefing-writ-escort = walk the uninstalled charge to the far edge; their death ends it
briefing-writ-erasure = reach the archive and rewrite the record QUIETLY — one bar of noise fails
briefing-kills-not = the writ is a verb, not a body count
briefing-no-intel = 無敵情 · the Codex reads nothing here
briefing-intel-collated = collated — the Codex is confident on this one
briefing-intel-uncollated = uncollated — may lie in the field
briefing-intel-foot = entries carry error bars; ？ rows are uncollated and MAY differ in battle
briefing-tide-early = camp-read — the first turns are certain
briefing-tide-mid = tide-almanac projection
briefing-tide-late = far projection — thin confidence
briefing-tide-foot = first two turns certain (camp read); the rest is almanac projection
briefing-heat-title = HEAT BUDGET
briefing-heat-redline = the one redline
briefing-heat-writ = this writ projects
briefing-heat-witness = per witness
briefing-heat-cross = cross the redline → the hunter advances one region
briefing-roster-sub = tap to deploy — up to four
briefing-in = IN
briefing-out = OUT
briefing-sketch-cap = engraved sketch, not the grid; the ford is mud-iron ground — no casting on iron
briefing-commit = COMMIT
briefing-equip = EQUIP
briefing-back = BACK

## 評級之晉 Ascension — grade ceremony (tier-2; 評級之晉 + grade names stay literals)
ascension-eyebrow = THE LOG HAS RE-READ A SOUL · GRADE ASCENSION
ascension-scribe = the Connected captain — a soul the field now reads at a higher pin
ascension-perk-echo = no high-cost casts on thin ground
ascension-perk-steady = baseline — the world tunes to this soul
ascension-perk-high = thin ground reads as standard; shrug off one protocol a battle
ascension-perk-overbound = at home in the Rift: crit ground without the Bug tax
ascension-cost-none = ascension costs no coin, asks no allegiance — a grade records deeds
ascension-cost-overbound = a famous soul casts a long shadow: every cast runs +50% Heat
ascension-accept = ACCEPT THE GRADE
ascension-later = LATER
ascension-bottom = a grade is not a reward — it is the Log rereading what you've become

## 募之卷 Recruitment — the ally dossier (tier-2; 募之卷 + section chrome stay literals)
recruitment-maxim = Heat attaches to names: to recruit a person is to recruit their Record
recruitment-list-foot = candidates are people — a Record, a price, a want; refusals are remembered (the market has ears)
recruitment-no-heat = no Log · account-less
recruitment-take = TAKE THEM ON
recruitment-decline = DECLINE
recruitment-decline-note = their Heat would have travelled with the convoy
recruitment-bottom = calling decides where they stand; loadout decides what they do
recruitment-name-vellum = 白鉗 · Vellum
recruitment-name-hush = 無名 · Hush
recruitment-name-folio = 摹手 · Folio
recruitment-vellum-brings = a licensed hand — clean seals, papers that open checkpoints
recruitment-vellum-log = one bar of Heat: a fine paid late, still on the books
recruitment-vellum-wants = a cut of every sealed sale — she works for the record, not the cause
recruitment-vellum-consequence = +1 bar to the convoy ledger; licensed casts read cleaner at checkpoints
recruitment-vellum-loadout = 誓盾 Oath-Ward · 昭示 Reveal-Writ (sealed)
recruitment-hush-brings = the account-less quiet — no name for the Antibody to read
recruitment-hush-log = — no entry — the Log has never heard of them
recruitment-hush-wants = nothing written down; a berth and no questions
recruitment-hush-consequence = no Heat joins the ledger — a ghost casts no shadow, but can't be vouched for
recruitment-hush-loadout = 匿蹤 Veil · 寂行 Quiet-Walk (unsealed)
recruitment-folio-brings = a witness's eye — copies a seen cast after three sightings
recruitment-folio-log = three bars, and hot: a pirate copy filed under their name
recruitment-folio-wants = to see the rare builds — deploy them where the casting is loud
recruitment-folio-consequence = +3 bars NOW — the Antibody redeploys toward a hot new name
recruitment-folio-loadout = 過目 Flash-Study · 反睹 Counter-Sight (pirated)

## 案卷 CaseBoard — the hunt (tier-2; 案卷 + chrome + trail labels stay literals)
caseboard-no-case = cold file · no case filed — the record stays under five bars
caseboard-subline = the Log has filed; the hunter is on the road
caseboard-rank = Examiner, third rank · grade High-Load · long skill 律·撤令
caseboard-knows = knows the captain's name and face; suspects the seal came from inside; does NOT know the Ghost
caseboard-doubt = her doubt grows (Act III) — evidence you feed her may become her defection
caseboard-move-caption = she steps when you step; twice on any turn you cast unsealed
caseboard-ev-witness = an escaped witness
caseboard-ev-checkpoint = a checkpoint seal-read
caseboard-ev-fenced = fenced goods
caseboard-read = SUBMIT TO A READING
caseboard-read-desc = Heat → 0 · the reading may expose the Ghost / Guild ties → the Examination
caseboard-bribe = BRIBE THE SEAL
caseboard-bribe-desc = paperwork "faulty", Case withdrawn — the price doubles as she closes; Frost knows it wasn't natural
caseboard-fight = DEFEAT THE HUNTER
caseboard-fight-desc = a kill escalates the Case a tier (a successor inherits her office); or fight to a standstill for the defection line → Battle
caseboard-raid = DESTROY EVIDENCE
caseboard-raid-desc = a raid on the archive → Battle; victory burns the newest line — degrades her Case, does not close yours
caseboard-open-note = leave the Case open and the hunter simply ARRIVES mid-mission — a forced battle, no Briefing
caseboard-footer = a Case is a named piece on the board, not a timer
caseboard-back = BACK TO THE REGISTER

# ── Examination (審讀之場) ─────────────────────────────────────────────
examination-subject = subject
examination-examiner = examiner
examination-reading = READING…
examination-page-under = THE PAGE UNDER READ
examination-page-clean = the page is clean
examination-dug = [names withheld — the reader digs]
examination-redacted = the Ghost leaves no line — the account-less can't be read
examination-question = «A page doesn't go blank — a person does. Who walks with you, yet is not in the record?»
examination-ghost-surfaced = THE BLANK ROWS ARE NOTICED — the Ghost surfaces into the Case
examination-ghost-hint = past the violet line the Ghost surfaces — deeper clears more, exposes more
examination-cap = deeper reads clear more Heat AND expose more secrets — the scene is when to stop
examination-truth = TELL THE TRUTH
examination-truth-desc = a name enters the Record · the read stops here · Heat cleared by depth
examination-steer = STEER THE READING
examination-steer-desc = hide a line, reveal another (頻寬 3) · a failed steer reads deeper
examination-sever = SEVER THE READ
examination-sever-desc = self-Crash + 蝕+1 · the examination becomes a battle → Battle

# ── The Wipe (收押/索贖/散於四隅) ─────────────────────────────────────
wipe-record-says = WHAT THE RECORD NOW SAYS
wipe-hunter-rank = Third Seal
wipe-hunter-note = your Case has a face now
wipe-footer = defeat is a scene, not a screen
wipe-continue = ⏎ continue
# antibody 收押 SEIZED
wipe-antibody-eyebrow = THE SQUAD IS DOWN — THE SURVEYORS TAKE THE FIELD
wipe-antibody-title-en = SEIZED
wipe-antibody-scribe = They read your record where you fell. The unsealed sources are boxed; the Heat you carried is now a Case with a name.
wipe-antibody-c1 = unsealed sources confiscated — boxed as evidence
wipe-antibody-c2 = Heat crossed five bars → it becomes a Case (a hunter walks)
wipe-antibody-c3 = you wake in the Examination hall — the reading begins
wipe-antibody-proceed = 醒於審所 WAKE
wipe-antibody-note = there is no ending here — only a reading
# guild 索贖 RANSOMED
wipe-guild-eyebrow = THE SQUAD IS DOWN — THE GUILD NAMES A PRICE
wipe-guild-title-en = RANSOMED
wipe-guild-scribe = The Compilers hold you for coin, not for reading. Your builds are yours still — the purse is lighter, and their counters remember.
wipe-guild-c1 = −50% coin, rounded in the Guild's favor
wipe-guild-c2 = memory & builds kept — no reading, no 蝕
wipe-guild-c3 = Guild prices +1 notch until you beat a Guild crew
wipe-guild-proceed = 付贖 PAY
wipe-guild-note = the ransom is paid; the road is still yours
# daemon 散於四隅 SCATTERED
wipe-daemon-eyebrow = THE SQUAD IS DOWN — THE SWARM SCATTERS YOU
wipe-daemon-title-en = SCATTERED
wipe-daemon-scribe = No captor, no cell — only the corners of the map. Each walks back alone, carrying more rot than they left with; the page comes back full of holes.
wipe-daemon-c1 = the party scatters to the map's corners (solo walks back)
wipe-daemon-c2 = +2 蝕 each — every third stack mutates a Programme
wipe-daemon-c3 = Heat doesn't rise, but the Record page comes back full of holes
wipe-daemon-proceed = 各自上路 WALK
wipe-daemon-note = no one holds you; the rot does

# ── Endgame (錄之大訊 The Great Audit) ─────────────────────────────────
endgame-subline = core-rot past threshold — everything unsealed will be formatted
endgame-degrade-note = the countdown degrades the world, never you
endgame-map-caption = one region audited per leg — markets shut, checkpoints double, Heat can't accrue
endgame-standings = YOUR STANDINGS, PLAINLY
endgame-answers = THE ANSWERS YOU HAVE EARNED
endgame-axis-name = The Name
endgame-axis-flesh = The Flesh
endgame-axis-ghost = The Ghost
endgame-axis-stolen = The Stolen
endgame-v-clean = clean
endgame-v-grey = grey
endgame-v-outlaw = outlaw
endgame-v-whole = whole
endgame-v-rotting = rotting
endgame-v-eaten = eaten
endgame-v-unshared = unshared
endgame-v-trust = full trust
endgame-v-thin = thin
endgame-v-rich = rich
endgame-commit-note = choosing an answer commits to its final mission — the antechamber gives no one back; until then, keep living in the countdown
endgame-finale-await = → the finale awaits
endgame-finale-depart = → no battle — one long night of leaving
endgame-back = BACK TO THE REGISTER
endgame-repair-name = REPAIR THE LOG
endgame-repair-gate = ALWAYS OPEN
endgame-repair-line = defend the rite 30 turns — the system wins, and remembers you saved it
endgame-burn-name = BURN THE LOG
endgame-burn-gate = ALWAYS OPEN
endgame-burn-line = fight every cast you ever logged — the price of freedom is forgetting
endgame-seize-name = SEIZE THE SEAL
endgame-seize-gate = needs an outlaw name + a rich repository
endgame-seize-line = root access — the pirates become the new keepers of the seal
endgame-teaching-name = THE TEACHING
endgame-teaching-gate = needs a rich repository + Broke-Seal alive
endgame-teaching-line = give the Repository away — the slow revolution
endgame-unrecorded-name = THE UNRECORDED ANSWER
endgame-unrecorded-gate = needs the Ghost's full trust
endgame-unrecorded-line = walk off every page — not victory, departure

# ── Records (閱舊錄 The Archive) ─────────────────────────────────────
records-subtitle = the world writes; you only read
records-stance-registered = REGISTERED ROAD
records-stance-outlaw = OUTLAW ROAD
records-stance-unforgiving = UNFORGIVING LOG
records-auto-written = AUTO-WRITTEN
records-no-save-note = there is no save button — a Record writes itself at every arrival and battle opening
records-now = NOW
records-kind-arrival = arrival
records-kind-battle = battle
records-scribe-arrival = the convoy reaches the gate; the scribe opens a fresh page
records-scribe-battle = the field is set; the page holds its breath before the first cast
records-pen-rests = the pen rests here — this page is still being written
records-living-note = you are already living this Record
records-readback = READ BACK
records-readback-note = reading a past Record turns the world back to it
records-warn = on the Outlaw Road, turning back is not secret — the current Record will note it. Confirm?
records-confirm = 回讀此錄 CONFIRM READ-BACK
records-hotkeys = ↑↓ choose · ⏎ read back · ESC return to title
records-back = RETURN TO TITLE

# ── Options (律例 The Laws) ─────────────────────────────────────────
options-header-note = Assists are the one thing the Log does not record
options-on = ON
options-off = OFF
options-book-presentation = PRESENTATION
options-book-battle = BATTLE
options-book-road = THE ROAD
options-book-assists = ASSISTS
options-motto-presentation = how the world is shown — both voices always, only their order
options-motto-battle = how the field reads — clear numbers, never confetti
options-motto-road = how much the world remembers — a stance, not a slider
options-motto-assists = the one page the Log does not watch
options-voice-order = paired-voice order
options-voice-order-note = both voices always show — only which leads
options-voice-cn-first = CN first
options-voice-en-first = EN first
options-text-scale = on-field text scale
options-text-scale-note = the 24px floor is law — nothing on the field renders smaller
options-scale-100 = 100%
options-scale-125 = 125%
options-colorblind = colourblind
options-colorblind-note = meaning moves into texture, never hue alone
options-camera-shake = camera shake
options-camera-shake-note = screen shake on heavy hits
options-reduced-motion = reduced motion
options-reduced-motion-note = trims non-essential animation
options-texture-solid = gold · solid
options-texture-hatched = crimson · hatched
options-texture-dotted = violet · dotted
options-forecast = forecast
options-forecast-note = the outcome preview before a cast
options-forecast-always = always
options-forecast-held = held
options-enemy-speed = enemy turn speed
options-enemy-speed-note = ×1–4; never skips a beat you should read
options-x1 = ×1
options-x2 = ×2
options-x3 = ×3
options-x4 = ×4
options-grid = grid overlay
options-grid-note = the terrain grid lines
options-grid-always = always
options-grid-choosing = while choosing
options-numbers = where numbers live
options-numbers-note = on the HUD, or also on the board — never confetti
options-numbers-hud = HUD only
options-numbers-board = also on board
options-stance = the stance
options-stance-note = changeable once per act; the Record notes the change — not a damage slider
options-stance-registered-desc = 冊途 Registered — falls cost no 蝕, Cases never escalate; the world still remembers, it just forgives.
options-stance-outlaw-desc = 野途 Outlaw — corruption, Cases, captures as written. The tuning baseline.
options-stance-unforgiving-desc = 錄不容赦 Unforgiving — single rolling save, permanent captures, mutations never cleanse.
options-record-noted = 錄記其變 — the Record notes the change
options-assist-corruption = no 蝕 on falls
options-assist-corruption-note = a fall leaves no corruption stack
options-assist-waves = no reinforcement waves
options-assist-waves-note = the field never doubles down
options-assist-weather = permanent weather pre-read
options-assist-weather-note = the sky's turn is always known
options-assists-note = assists are independent, lock nothing, and are NOT recorded — the one page the Log ignores
options-refused = REFUSED · binding law, do not add
options-refuse-save = no manual save slots — the Record is the truth (閱舊錄 suffices)
options-refuse-slider = no global damage slider — difficulty is a stance, not a number
options-refuse-silence = no way to silence the bilingual voice — the paired voice is the game's face
options-hotkeys = ↑↓ change book · ESC return to opener
options-back = RETURN
options-stance-registered = 冊途
options-stance-outlaw = 野途
options-stance-unforgiving = 錄不容赦

# ── MainMenu (偉力之錄 The Log of the Wille) ─────────────────────────
mainmenu-continue = CONTINUE THE RECORD
mainmenu-new = OPEN A NEW RECORD
mainmenu-records = READ PAST RECORDS
mainmenu-options = OPTIONS
mainmenu-no-save = no record yet
mainmenu-version = v0.1 · internal test log

# ── Equip (隊囊 Convoy Outfitting) ─────────────────────────────────────
equip-between-battles = between battles only
equip-slots-en = THREE SLOTS
equip-arm-en = ARMAMENT
equip-plate-en = PLATE
equip-peri-en = PERIPHERAL
equip-empty = empty
equip-unequip = UNEQUIP
equip-law-peripherals = peripherals trade, never add
equip-law-worlds = Firewall gates Programmes · Plate gates MudIron — two damage worlds, two defenses
equip-nothing = nothing stored
equip-close = CLOSE
equip-clerk = CLERK'S ADVICE — gear moves numbers; the calling gives the verbs
equip-cmp = if equipped
equip-scrolls-note = 戰間可譯 COMPILE (筆跡 check · license → seal) — source scrolls are compiled, not equipped
equip-compile = COMPILE → the Repository
equip-capacitor-note = capacitors are consumables — spent in the field, never slotted
equip-license-note = licenses are Registry records, not inventory
equip-bottombar = click a convoy item to equip · 卸下 returns it to the convoy

# ── WorldMap (疆域圖) — screen prose the glossary doesn't own ──────────
# Names (settlements/regions) come from glossary.json; these are the screen's
# own strings: the civil/system watermark + the three overlay layer chips.
worldmap-civil        = // CIVIL CARTOGRAPHY
worldmap-system       = // SYSTEM OVERLAY ACTIVE
worldmap-chip-field   = FIELD
worldmap-chip-zone    = ZONE
worldmap-chip-patrol  = PATROL

# ── Notices demo (示之律 grammar preview) ─────────────────────────────
notices-demo-record = a Record is written to the Log
notices-demo-law = a Heat bar breaks — the Antibody stirs
notices-demo-thought = a compile lands
notices-demo-mundane = loadout swapped
notices-demo-stamp = THE CHAPTER CLOSES

## 戰畢 Results — verdict / take / witnessed / hunter / actions (tier-2; 所得/所睹/錄冊 headings stay tier-1 zh-Hant)
results-verdict-cleansteal = STOLE IT CLEAN
results-verdict-bloodied = BLOODIED, BUT OUT
results-verdict-withdrawn = WITHDREW WHOLE
results-verdict-writfailed = THE WRIT UNMET
results-gloss-cleansteal = The writ is met and no one of yours was read.
results-gloss-bloodied = You have the writ — and a wound roster to answer for.
results-gloss-withdrawn = No writ taken. You chose the convoy over the prize — nothing seized, little seen.
results-gloss-writfailed = The objective slipped. What you witnessed is still yours to keep.
results-take-coin = loose coin
results-take-mark = the mark
results-take-fragments = fragments
results-take-unsealed = unsealed goods
results-take-nothing = nothing taken
results-take-fence = unsealed goods can't enter licensed trade → Fencing
results-witnessed-subhead = seen casts may be learned · assign a witness, or let it go
results-witnessed-nothing = nothing witnessed
results-witnessed-bugged = initial bug
results-witnessed-assigned = assigned
results-witnessed-shelffull = shelf full · assigning opens the Overwrite Rite
results-take-it = take
results-let-go = let it go
results-net = this battle · net
results-heat = HEAT
results-nobattle = no battle to close
results-hunter-title = THE HUNTER MOVES
results-hunter-body = Frost crosses the redline — advances one region
results-btn-packup = PACK UP
results-btn-review = REVIEW
results-btn-ascend = ASCEND
