# Resolute Force — 繁體中文 UI 資源（僅功能性字串）
# ---------------------------------------------------------------
# 只翻譯「功能性」文字（原本是英文、玩家需要讀懂的內容）。
# 裝飾性漢字（神識、出力、汝之回合…）是固定的版面美術，不在這裡，
# 也「不要」在這裡重複翻譯已經成對出現的英文（YOUR TURN / SKILLS /
# FORECAST / KILL）— 否則 zh 模式會出現「交戰預測 交戰預測」重字。
#
# ⚠ 此為工程交付用初翻，正式上線前請交母語 / 在地化人員校潤。

## 全域回合狀態（標題列，原本只有英文，需在地化）
phase-player = 我方回合
phase-enemy  = 敵方回合
turn-label   = 回合

## 指令選單
cmd-header = 指令
act-attack = 攻擊
act-skill  = 技能
act-mudiron   = 濁械
act-inject    = 注入
act-remote    = 遙令
act-countersign = 具狀
act-inspect = 驗
act-hush = 寐
act-wake = 喚駐
act-lease = 租
act-brace = 扶
act-overclock = 超頻
act-release   = 解除
act-wait   = 待機
act-cancel = 取消

## 選定目標
target-select = 選擇目標
target-skill  = { $skill } — 選擇目標
btn-confirm   = 確認
btn-back      = 返回

## 技能面板 / 源庫
skills-tab     = 技能
repository-title = 源庫 — { $unit }
repository-sources-held = 藏源
repository-epigraph = 編者曰：忘一以學一。源不滅，憶乃易。
cost-free      = 無耗
cost-mp        = { $mp } 頻寬
meta-rng       = 射程 { $rng }

## 資源與屬性詞彙（世界觀原生用語，取代 ATK/DEF/HP/MP 佔位符）。
## zh 顯示 出力，en 顯示 OUTPUT——同一概念，兩種語言。
stat-coherence = 神識
stat-bandwidth = 頻寬
stat-output    = 出力
stat-firewall  = 防壁
stat-latency   = 延遲
stat-move      = 步
stat-memory    = 記憶體
# 交戰預測面板 — 傷 是預測傷害格（非 出力 本值）
stat-dmg  = 傷
stat-hit  = 命中
stat-crit = 會心

## 超頻計量——標籤與狀態
stat-overclock = 超頻
oc-idle     = 待機
oc-charging = 充能
oc-ready    = 就緒

## 設定
settings-title = 設定
set-sound      = 音效
set-music      = 音樂
set-grid       = 戰場格線
set-anim       = 動畫速度
set-autosave   = 自動存檔
val-on     = 開
val-off    = 關
val-slow   = 慢
val-normal = 標準
val-fast   = 快

## 戰鬥記錄（提示條）— { } 為變數
log-steps   = { $unit } 上前——{ $class }。
log-holds   = { $unit } 堅守陣線。
log-attack  = 攻擊——標定一個目標。
log-channel = { $skill } 蓄勢待發。選擇目標。
log-readied = { $skill } 就緒——{ $unit }。
log-strike  = { $unit } 擊中 { $foe }——{ $dmg } 傷害！
log-retreat = 撤退並非選項，指揮官。

## 底部操作提示（按鍵符號維持原樣，只翻動詞）
ctl-move    = 移動
ctl-confirm = 確認
ctl-cancel  = 取消
ctl-rotate  = 旋轉
ctl-zoom    = 縮放
ctl-freecam = 自由視角

## 職業名稱（用於 log-steps 與名冊）
class-mage     = 法師
class-hero     = 勇者
class-priest   = 祭司
class-sorcerer = 術士
class-knight   = 騎士
class-archer   = 弓手
class-sniper   = 狙擊手
class-bishop   = 主教
class-recruit  = 新兵
class-raider   = 掠奪者

## 保留自建置的其他功能性設定（設計清單未列）
set-turnorder = 出手順序
set-cutscene  = 過場動畫
set-artstyle  = 美術風格
set-toon      = 卡通渲染
set-language  = 語言
# 出手順序選項
turn-agility = 敏捷
turn-free    = 自由
turn-hybrid  = 混合
# 過場動畫選項
cut-zoom  = 拉近
cut-arena = 競技場
cut-off   = 關閉
# 美術風格選項
art-geass     = Code Geass
art-vibrant   = 鮮豔賽璐璐
art-painterly = 繪畫賽璐璐
art-pbr       = 電影級 PBR
art-hd2d      = HD-2D 輝光

## 通連之數（設計帳 v2 — 佩裝層落地後入格，P7）
stat-sync = 共鳴
stat-hand = 筆跡
stat-trace = 痕
stat-hold = 持

## 錄冊之行（戰畢 Ⅲ 與諸屏之熱帳）
ledger-unsealed = 無印之發
ledger-forged = 盜版一發
ledger-query = 問答
ledger-injection = 注入
ledger-mudiron = 攜濁械入核
ledger-leg = 程
ledger-hush = 寐 · 倍書
ledger-goods = 無印之貨
ledger-laundered = 洗名
ledger-examcleared = 受讀

## 行旅 三道與夜營（tier-2：路名、營事、散句；固定配對仍為字面）
travel-road-registered-desc = 印讀汝身 — 捷，然霜候此短道。
travel-road-granary-desc = 倉道：一夜或遇商隊，或逢劫。
travel-road-thin-desc = 遠而冷跡，然每夜蝕風掠營。
travel-enc-registered = 哨驗×2 · 逾三格 → 驗身
travel-enc-granary = 遇×1 · 市或劫
travel-enc-thin = 蝕夜×4 · 蝕險，時有魅走
travel-hunter-toward = 獵者 −1域
travel-hunter-hold = 獵者 ±0
travel-hunter-away = 獵者 +1域
travel-camp-nightquery-desc = 預讀下一程之事
travel-camp-correctbuild-desc = 一建陷 −3
travel-camp-tendwounds-desc = 癒一肉傷（財與時）
travel-camp-drillprotocol-desc = 三夜成一課
travel-camp-readtide-desc = 知下戰首數潮
travel-camp-collatecodex-desc = 據睹考成一錄
travel-readout-coin = 財
travel-readout-heat = 熱
travel-readout-hunter = 獵
travel-per-leg = 每程 −15
travel-depart = 啟程
travel-walk = 前行
travel-outfit = 整裝
travel-camp-sub = 每夜一人一事
travel-camp-note = 營中之發亦握手 — 夜無所匿於錄
travel-road-foot = 道長者卸熱愈多，然獵者未嘗止步
travel-no-log = 無錄
travel-none = 無耗

## 市 市集（tier-2：三櫃、暗務、讀數；市/官市/黑市/暗務 為固定字面）
market-licensed = THE LICENSED COUNTER
market-black = THE BLACK COUNTER
market-services = SERVICES OF THE BACK ROOM
market-licensed-sub = 潔印高價，名入其冊
market-black-sub = 賤而汙，不問名姓
market-services-sub = 洗名、行賄、易籍
market-refuse = 拒售 · 逾三段，櫃不受錄
market-brand = 貨隨汝盜名而增
market-hidden-bugs = 黑貨或藏暗陷 — 購前不可驗
market-sealed = 照 有印之照 · 源潔 · 陷0 · 入錄
market-coin = 財
market-heat = 熱
market-standing = 名
market-launder = 洗名 · 一段
market-launder-desc = 洗去記錄一段
market-bribe = 賄印
market-bribe-desc = 追封一無印之源（每幕一次）
market-papers = 易籍
market-papers-desc = 一名重籍 — 其熱歸零
market-fence = 銷贓
market-fence-desc = 無印之贓，唯此可售
market-no-fence = 無印之贓可售
market-bribe-case = 賄
market-recruit = 募
market-footer = 同物三價 — 所擇之櫃，即所守之政
market-leave = 出市

## 戰前之令 戰前之令（tier-2：令、情、時、陣；chrome 與圖略標記為固定字面）
briefing-writ-skirmish = 據守此地 — 戰外無令
briefing-writ-heist = 破封庫，攜源出我方之界 — 斬敵非令
briefing-writ-taking = 生擒其標；殺之則令敗 — 斬敵非令
briefing-writ-writ = 熬過格式之令：撐至其自焚 — 斬敵非令
briefing-writ-sever = 斷其持者或榨之至枯，則法自崩
briefing-writ-escort = 護未裝之荷至彼端；其亡則令終
briefing-writ-erasure = 抵檔庫，靜改其錄 — 一段之聲即敗
briefing-kills-not = 令者動詞，非計首級
briefing-no-intel = 無敵情 · 此處錄無所讀
briefing-intel-collated = 已考據 — 錄於此有信
briefing-intel-uncollated = 未考據 — 臨陣或誆
briefing-intel-foot = 諸錄皆帶誤差；？者未考據，臨陣或異
briefing-tide-early = 營中所讀 — 首數回確
briefing-tide-mid = 潮曆之推
briefing-tide-late = 遠推 — 信薄
briefing-tide-foot = 首二回確（營讀），餘皆潮曆之推
briefing-heat-title = 熱之估
briefing-heat-redline = 唯一之線
briefing-heat-writ = 此令估
briefing-heat-witness = 每睹
briefing-heat-cross = 越線 → 獵者進一域
briefing-roster-sub = 點以布陣 — 至多四
briefing-in = 出
briefing-out = 留
briefing-sketch-cap = 刻圖，非棋盤；渡處乃濁械之地 — 於鐵不可施法
briefing-commit = 開戰
briefing-equip = 整裝
briefing-back = 返圖

## 評級之晉 晉級之儀（tier-2；評級之晉 與評級名為固定字面）
ascension-eyebrow = 錄已重讀一魂 · 評級之晉
ascension-scribe = 通感之魂 — 場今以更高之針讀之
ascension-perk-echo = 薄地不施高耗之發
ascension-perk-steady = 基準 — 世界以此魂為度
ascension-perk-high = 薄地如常；每戰可卸一協
ascension-perk-overbound = 安於空隙：踏臨界之地而免陷稅
ascension-cost-none = 晉級無需財、不索忠 — 評級記功，非購也
ascension-cost-overbound = 名魂投長影：每發之熱 +50%
ascension-accept = 受晉
ascension-later = 緩之
ascension-bottom = 評級非賞 — 乃錄重讀汝之所成

## 募之卷 募之卷（tier-2；募之卷 與段落 chrome 為固定字面）
recruitment-maxim = 熱附於名：募一人，即募其錄
recruitment-list-foot = 候者皆人 — 一錄、一價、一求；辭之亦記（市有耳）
recruitment-no-heat = 無錄 · 無帳
recruitment-take = 立契
recruitment-decline = 辭之
recruitment-decline-note = 其熱本將隨隊而行
recruitment-bottom = 職定其位，載定其能
recruitment-name-vellum = 白鉗 · Vellum
recruitment-name-hush = 無名 · Hush
recruitment-name-folio = 摹手 · Folio
recruitment-vellum-brings = 有照之手 — 潔印、開哨之牒
recruitment-vellum-log = 熱一段：一筆遲繳之罰，仍在冊上
recruitment-vellum-wants = 每筆有印之售抽成 — 她為錄而作，不為義
recruitment-vellum-consequence = 帳增一段；有照之發過哨更潔
recruitment-vellum-loadout = 誓盾 · 昭示（有印）
recruitment-hush-brings = 無帳之靜 — 抗體無名可讀
recruitment-hush-log = — 無記 — 錄未嘗聞其人
recruitment-hush-wants = 無所書；一席之地，別無所問
recruitment-hush-consequence = 無熱入帳 — 幽者無影，然亦無可保
recruitment-hush-loadout = 匿蹤 · 寂行（無印）
recruitment-folio-brings = 睹者之目 — 三睹即摹一發
recruitment-folio-log = 三段，且燙：一盜版歸於其名
recruitment-folio-wants = 欲觀奇建 — 遣之於施法喧處
recruitment-folio-consequence = 即增三段 — 抗體向新之燙名重佈
recruitment-folio-loadout = 過目 · 反睹（盜版）

## 案卷 案卷（tier-2；案卷 + chrome + 跡標記為固定字面）
caseboard-no-case = 冷卷 · 未立案 — 錄未逾五段
caseboard-subline = 錄已呈於局，獵者在途
caseboard-rank = 三等審官 · 評級高載 · 長技 律·撤令
caseboard-knows = 知隊長之名與面；疑印出自內；不識幽者
caseboard-doubt = 其疑漸生（第三幕）— 汝所餵之證，或成其叛
caseboard-move-caption = 汝行一步，霜隨一步；發無印之回則倍
caseboard-ev-witness = 脫證者
caseboard-ev-checkpoint = 哨驗之讀
caseboard-ev-fenced = 銷贓之貨
caseboard-read = 受讀
caseboard-read-desc = 熱→0 · 讀或曝幽者、盟繫 → 驗身
caseboard-bribe = 賄印
caseboard-bribe-desc = 令文「有疵」，案退 — 獵近則價倍；霜知其非自然
caseboard-fight = 敗其人
caseboard-fight-desc = 殺之則案升一階（後任承其職）；或戰至僵持以啟叛線 → 戰
caseboard-raid = 滅證
caseboard-raid-desc = 襲檔庫 → 戰；勝則焚最新一行 — 損其案，非結汝卷
caseboard-open-note = 卷若不結，獵者即於任中降臨 — 強戰，無簡令
caseboard-footer = 案者，圖上有名之棋，非計時之器
caseboard-back = 返疆域圖

# ── 審讀之場 Examination ─────────────────────────────────────────────
examination-subject = 受讀者
examination-examiner = 審官
examination-reading = 讀取中
examination-page-under = 受讀之頁
examination-page-clean = 頁白 · 錄中無物
examination-dug = 〔名諱從略——讀者深掘〕
examination-redacted = 幽存無錄 — 無帳者不可讀
examination-question = 「頁不空——是人空。誰跟你們走，卻不在錄裡？」
examination-ghost-surfaced = 幽存之現 — 空行已被察覺，幽存入案
examination-ghost-hint = 越紫線則幽存現 — 讀愈深，清愈多，露愈多
examination-cap = 讀愈深，清熱愈多，然露密亦愈多 — 此局在於何時言止
examination-truth = 實答
examination-truth-desc = 一名入錄 · 讀止於此 · 熱清依深
examination-steer = 導其讀
examination-steer-desc = 藏一行、露一行（頻寬 3）· 敗則讀深
examination-sever = 斷讀
examination-sever-desc = 自撞 + 蝕+1 · 審變為戰 → 戰

# ── 收押/索贖/散於四隅 The Wipe ─────────────────────────────────────
wipe-record-says = 錄今所載
wipe-hunter-rank = 第三印
wipe-hunter-note = 你的案，如今有了臉
wipe-footer = 敗者，一場也，非一屏
wipe-continue = ⏎ 續
# antibody 收押
wipe-antibody-eyebrow = 隊已倒 —— 測算署收場
wipe-antibody-title-en = SEIZED
wipe-antibody-scribe = 她們就地讀你之錄。無印之源盡數封箱；你所負之熱，如今成案，且有其名。
wipe-antibody-c1 = 無印之源沒收 —— 封為證物
wipe-antibody-c2 = 熱越五格 → 化為案卷（獵者始行）
wipe-antibody-c3 = 醒於審讀之場 —— 讀始
wipe-antibody-proceed = 醒於審所
wipe-antibody-note = 此處無終 —— 唯有一讀
# guild 索贖
wipe-guild-eyebrow = 隊已倒 —— 編纂公會開價
wipe-guild-title-en = RANSOMED
wipe-guild-scribe = 編纂者押你索銀，非為讀你。你之編構仍在 —— 囊輕幾分，其櫃記仇。
wipe-guild-c1 = 銖減半 —— 取整偏公會
wipe-guild-c2 = 憶與編構皆存 —— 不讀，無蝕
wipe-guild-c3 = 公會之價升一階，至你勝其一隊
wipe-guild-proceed = 付贖
wipe-guild-note = 贖已付，路仍是你的
# daemon 散於四隅
wipe-daemon-eyebrow = 隊已倒 —— 蟲群散你四方
wipe-daemon-title-en = SCATTERED
wipe-daemon-scribe = 無收押，無牢籠 —— 唯有圖之四隅。各自獨行而歸，攜鏽更甚於出時；其頁歸來，滿是破洞。
wipe-daemon-c1 = 隊散於圖之四隅（獨行而歸）
wipe-daemon-c2 = 各增二蝕 —— 每三疊蝕，變構一則
wipe-daemon-c3 = 熱不升，然錄頁歸來滿是破洞
wipe-daemon-proceed = 各自上路
wipe-daemon-note = 無人押你，鏽押你

# ── 錄之大訊 The Great Audit ─────────────────────────────────
endgame-subline = 核鏽越限 —— 凡無印者，盡將格式化
endgame-degrade-note = 此倒數蝕世，非蝕汝
endgame-map-caption = 每程校一域 —— 市閉、關卡倍、熱不可積
endgame-standings = 四軸之呈
endgame-answers = 汝所得之答
endgame-axis-name = 名之潔
endgame-axis-flesh = 身之蝕
endgame-axis-ghost = 幽存之情
endgame-axis-stolen = 睹之富
endgame-v-clean = 潔
endgame-v-grey = 灰
endgame-v-outlaw = 污名
endgame-v-whole = 潔身
endgame-v-rotting = 漸蝕
endgame-v-eaten = 盡蝕
endgame-v-unshared = 未信
endgame-v-trust = 全信
endgame-v-thin = 庫薄
endgame-v-rich = 庫富
endgame-commit-note = 擇一答，即定其終役 —— 核前廳不還人；擇前，且於倒數中續活
endgame-finale-await = → 終役在前
endgame-finale-depart = → 無戰 —— 一夜之離
endgame-back = 返疆域圖
endgame-repair-name = REPAIR THE LOG
endgame-repair-gate = 恆開
endgame-repair-line = 守禮三十回 —— 系統得勝，且記你曾守之
endgame-burn-name = BURN THE LOG
endgame-burn-gate = 恆開
endgame-burn-line = 戰你所記之每一咒 —— 自由之價，是遺忘
endgame-seize-name = SEIZE THE SEAL
endgame-seize-gate = 需污名 + 庫富
endgame-seize-line = 根權 —— 盜者成印之新守
endgame-teaching-name = THE TEACHING
endgame-teaching-gate = 需庫富 + 棄印尚存
endgame-teaching-line = 散源庫於眾 —— 緩革
endgame-unrecorded-name = THE UNRECORDED ANSWER
endgame-unrecorded-gate = 需幽存全信
endgame-unrecorded-line = 行出每一頁 —— 非勝，乃離

# ── 閱舊錄 The Archive ─────────────────────────────────────
records-subtitle = 世界執筆，汝唯閱之
records-stance-registered = 冊途
records-stance-outlaw = 野途
records-stance-unforgiving = 錄不容赦
records-auto-written = 自書
records-no-save-note = 無存錄之鈕 —— 每至、每戰之啟，錄自書之
records-now = 今
records-kind-arrival = 至
records-kind-battle = 戰
records-scribe-arrival = 隊抵城門，書手新啟一頁
records-scribe-battle = 陣已列，頁屏息以待首咒
records-pen-rests = 筆懸於此 —— 此頁猶在書中
records-living-note = 汝正活於此錄之中
records-readback = 回讀此錄
records-readback-note = 回讀舊錄，即令世界轉回其時
records-warn = 野途之上，回頭非密 —— 今錄將記之。可乎？
records-confirm = 回讀此錄 確
records-hotkeys = ↑↓ 擇 · ⏎ 回讀 · ESC 返題
records-back = 返標題

# ── 律例 The Laws ─────────────────────────────────────────
options-header-note = 佐之律，錄所不記者也
options-on = 開
options-off = 關
options-book-presentation = 觀
options-book-battle = 戰
options-book-road = 途
options-book-assists = 佐
options-motto-presentation = 世界如何示人 —— 雙聲恆在，唯序可易
options-motto-battle = 陣如何讀 —— 數清而明，絕非亂綵
options-motto-road = 世界記汝幾多 —— 途也，非滑桿
options-motto-assists = 錄所不視之一頁
options-voice-order = 雙聲之序
options-voice-order-note = 雙聲恆現 —— 唯定何者為先
options-voice-cn-first = 華先
options-voice-en-first = 英先
options-text-scale = 場上字幅
options-text-scale-note = 二四像為法 —— 場上無物小於此
options-scale-100 = 100%
options-scale-125 = 125%
options-colorblind = 色弱
options-colorblind-note = 義入紋理，不獨賴色
options-camera-shake = 鏡震
options-camera-shake-note = 重擊時螢幕震動
options-reduced-motion = 減動
options-reduced-motion-note = 省去非必要之動畫
options-texture-solid = 金 · 實
options-texture-hatched = 赤 · 斜
options-texture-dotted = 紫 · 點
options-forecast = 預判
options-forecast-note = 施咒前之結果預覽
options-forecast-always = 恆顯
options-forecast-held = 按需
options-enemy-speed = 敵回合之速
options-enemy-speed-note = ×1–4；絕不略過汝當讀之拍
options-x1 = ×1
options-x2 = ×2
options-x3 = ×3
options-x4 = ×4
options-grid = 格線
options-grid-note = 地形格線
options-grid-always = 恆顯
options-grid-choosing = 擇時
options-numbers = 數之所居
options-numbers-note = 居於介面，或亦現於盤上 —— 絕非亂綵
options-numbers-hud = 僅介面
options-numbers-board = 亦現盤上
options-stance = 其途
options-stance-note = 每幕可易一次；錄記其變 —— 非傷害滑桿
options-stance-registered-desc = 冊途 —— 倒者無蝕，案不升，數值從寬；世界仍記，唯寬宥之。
options-stance-outlaw-desc = 野途 —— 蝕、案、擒皆如上文所定。此為調校之準。
options-stance-unforgiving-desc = 錄不容赦 —— 單一滾動存錄，擒者永留，變構不淨。
options-record-noted = 錄記其變 —— 世界已書其易
options-assist-corruption = 倒不生蝕
options-assist-corruption-note = 倒下不留蝕疊
options-assist-waves = 無增援
options-assist-waves-note = 陣不再翻倍
options-assist-weather = 天候常曉
options-assist-weather-note = 天之回合恆可預知
options-assists-note = 佐之律各自獨立，不鎖任何成就，且不入錄 —— 錄所不視之一頁
options-refused = 拒 · 律之所定，不可增
options-refuse-save = 無手動存檔格 —— 錄即真相（閱舊錄足矣）
options-refuse-slider = 無全域傷害滑桿 —— 難度為途，非數字
options-refuse-silence = 無法靜默雙語之聲 —— 雙聲即遊戲之面
options-hotkeys = ↑↓ 換書 · ESC 返
options-back = 返
options-stance-registered = 冊途
options-stance-outlaw = 野途
options-stance-unforgiving = 錄不容赦

# ── 偉力之錄 The Log of the Wille ─────────────────────────
mainmenu-continue = 續錄
mainmenu-new = 啟新錄
mainmenu-records = 閱舊錄
mainmenu-options = 律例
mainmenu-no-save = 尚無錄
mainmenu-version = v0.1 · 內試之錄

# ── 隊囊 Convoy Outfitting ─────────────────────────────────────
equip-between-battles = 戰間整備
equip-slots-en = THREE SLOTS
equip-arm-en = ARMAMENT
equip-plate-en = PLATE
equip-peri-en = PERIPHERAL
equip-empty = 空
equip-unequip = 卸下
equip-law-peripherals = 佩者必易，不徒增
equip-law-worlds = 防壁惟禦思維，甲惟禦濁械 —— 二傷二防，永不相涉
equip-nothing = 此類無存
equip-close = 收囊
equip-clerk = 書記之言 —— 器易其數，計授其能
equip-cmp = 若裝之
equip-scrolls-note = 戰間可譯（筆跡校 · 照即印）—— 源卷可譯而不可裝
equip-compile = 譯之 → 源庫
equip-capacitor-note = 儲載乃消耗之物 —— 陣中即用，不入槽
equip-license-note = 照者，籍中之錄，非囊中之物
equip-bottombar = 點囊中之物以裝 · 卸下則返囊

# ── 疆域圖 WorldMap — 詞庫未收的畫面文字 ─────────────────
# 聚落／疆域之名出自 glossary.json；此處為畫面自有字串：
# 民用／系統浮水印，以及三枚覆層籤。
worldmap-civil        = // 民用製圖
worldmap-system       = // 系統覆層啟用
worldmap-chip-field   = 域載
worldmap-chip-zone    = 控域
worldmap-chip-patrol  = 抗體

# ── 示之律 grammar preview ─────────────────────────────
notices-demo-record = 一錄書入察錄
notices-demo-law = 熱破一格 —— 抗體始動
notices-demo-thought = 一譯已成
notices-demo-mundane = 裝備已換
notices-demo-stamp = 章 終

## 戰畢 Results — 判詞、所得、所睹、獵者、行動（tier-2；所得/所睹/錄冊 之標題為 tier-1 固定繁體）
results-verdict-cleansteal = 竊而全身
results-verdict-bloodied = 帶血而歸
results-verdict-withdrawn = 全身而退
results-verdict-writfailed = 令未竟
results-gloss-cleansteal = 令成，眾皆未被讀。
results-gloss-bloodied = 令雖成，傷冊猶待答。
results-gloss-withdrawn = 未取其令。汝擇隊而捨賞——無所奪，鮮所睹。
results-gloss-writfailed = 的既失。所睹者猶為汝有。
results-take-coin = 散財
results-take-mark = 目的物
results-take-fragments = 殘卷
results-take-unsealed = 無印之貨
results-take-nothing = 無所得
results-take-fence = 無印之貨不入官市 → 銷贓
results-witnessed-subhead = 所睹可習 · 擇一受之，或棄之
results-witnessed-nothing = 無所睹
results-witnessed-bugged = 初陷
results-witnessed-assigned = 已受
results-witnessed-shelffull = 庫滿 · 受之啟覆寫之儀
results-take-it = 受之
results-let-go = 棄
results-net = 此戰淨計
results-heat = 現熱
results-nobattle = 無戰可結
results-hunter-title = 獵者之動
results-hunter-body = 霜越線，進一域
results-btn-packup = 收拾行裝
results-btn-review = 覆盤
results-btn-ascend = 評級之晉
