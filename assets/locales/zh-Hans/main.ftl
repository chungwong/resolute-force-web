# Resolute Force — 简体中文 UI 资源（仅功能性字串）
# 由 zh-Hant/main.ftl 经 OpenCC (t2s) 转换生成（I18N-2b）。改动请改繁体源再重转。
# ---------------------------------------------------------------
# 只翻译「功能性」文字（原本是英文、玩家需要读懂的内容）。
# 装饰性汉字（神识、出力、汝之回合…）是固定的版面美术，不在这里，
# 也「不要」在这里重复翻译已经成对出现的英文（YOUR TURN / SKILLS /
# FORECAST / KILL）— 否则 zh 模式会出现「交战预测 交战预测」重字。
#
# ⚠ 此为工程交付用初翻，正式上线前请交母语 / 在地化人员校润。

## 全域回合状态（标题列，原本只有英文，需在地化）
phase-player = 我方回合
phase-enemy  = 敌方回合
turn-label   = 回合

## 指令选单
cmd-header = 指令
act-attack = 攻击
act-skill  = 技能
act-mudiron   = 浊械
act-inject    = 注入
act-remote    = 遥令
act-countersign = 具状
act-inspect = 验
act-hush = 寐
act-wake = 唤驻
act-lease = 租
act-brace = 扶
act-overclock = 超频
act-release   = 解除
act-wait   = 待机
act-cancel = 取消

## 选定目标
target-select = 选择目标
target-skill  = { $skill } — 选择目标
btn-confirm   = 确认
btn-back      = 返回

## 技能面板 / 源库
skills-tab     = 技能
repository-title = 源库 — { $unit }
repository-sources-held = 藏源
repository-epigraph = 编者曰：忘一以学一。源不灭，忆乃易。
cost-free      = 无耗
cost-mp        = { $mp } 频宽
meta-rng       = 射程 { $rng }

## 资源与属性词汇（世界观原生用语，取代 ATK/DEF/HP/MP 占位符）。
## zh 显示 出力，en 显示 OUTPUT——同一概念，两种语言。
stat-coherence = 神识
stat-bandwidth = 频宽
stat-output    = 出力
stat-firewall  = 防壁
stat-latency   = 延迟
stat-move      = 步
stat-memory    = 记忆体
# 交战预测面板 — 伤 是预测伤害格（非 出力 本值）
stat-dmg  = 伤
stat-hit  = 命中
stat-crit = 会心

## 超频计量——标签与状态
stat-overclock = 超频
oc-idle     = 待机
oc-charging = 充能
oc-ready    = 就绪

## 设定
settings-title = 设定
set-sound      = 音效
set-music      = 音乐
set-grid       = 战场格线
set-anim       = 动画速度
set-autosave   = 自动存档
val-on     = 开
val-off    = 关
val-slow   = 慢
val-normal = 标准
val-fast   = 快

## 战斗记录（提示条）— { } 为变数
log-steps   = { $unit } 上前——{ $class }。
log-holds   = { $unit } 坚守阵线。
log-attack  = 攻击——标定一个目标。
log-channel = { $skill } 蓄势待发。选择目标。
log-readied = { $skill } 就绪——{ $unit }。
log-strike  = { $unit } 击中 { $foe }——{ $dmg } 伤害！
log-retreat = 撤退并非选项，指挥官。

## 底部操作提示（按键符号维持原样，只翻动词）
ctl-move    = 移动
ctl-confirm = 确认
ctl-cancel  = 取消
ctl-rotate  = 旋转
ctl-zoom    = 缩放
ctl-freecam = 自由视角

## 职业名称（用于 log-steps 与名册）
class-mage     = 法师
class-hero     = 勇者
class-priest   = 祭司
class-sorcerer = 术士
class-knight   = 骑士
class-archer   = 弓手
class-sniper   = 狙击手
class-bishop   = 主教
class-recruit  = 新兵
class-raider   = 掠夺者

## 保留自建置的其他功能性设定（设计清单未列）
set-turnorder = 出手顺序
set-cutscene  = 过场动画
set-artstyle  = 美术风格
set-toon      = 卡通渲染
set-language  = 语言
# 出手顺序选项
turn-agility = 敏捷
turn-free    = 自由
turn-hybrid  = 混合
# 过场动画选项
cut-zoom  = 拉近
cut-arena = 竞技场
cut-off   = 关闭
# 美术风格选项
art-geass     = Code Geass
art-vibrant   = 鲜艳赛璐璐
art-painterly = 绘画赛璐璐
art-pbr       = 电影级 PBR
art-hd2d      = HD-2D 辉光

## 通连之数（设计帐 v2 — 佩装层落地后入格，P7）
stat-sync = 共鸣
stat-hand = 笔迹
stat-trace = 痕
stat-hold = 持

## 录册之行（战毕 Ⅲ 与诸屏之热帐）
ledger-unsealed = 无印之发
ledger-forged = 盗版一发
ledger-query = 问答
ledger-injection = 注入
ledger-mudiron = 携浊械入核
ledger-leg = 程
ledger-hush = 寐 · 倍书
ledger-goods = 无印之货
ledger-laundered = 洗名
ledger-examcleared = 受读

## 行旅 三道与夜营（tier-2：路名、营事、散句；固定配对仍为字面）
travel-road-registered-desc = 印读汝身 — 捷，然霜候此短道。
travel-road-granary-desc = 仓道：一夜或遇商队，或逢劫。
travel-road-thin-desc = 远而冷迹，然每夜蚀风掠营。
travel-enc-registered = 哨验×2 · 逾三格 → 验身
travel-enc-granary = 遇×1 · 市或劫
travel-enc-thin = 蚀夜×4 · 蚀险，时有魅走
travel-hunter-toward = 猎者 −1域
travel-hunter-hold = 猎者 ±0
travel-hunter-away = 猎者 +1域
travel-camp-nightquery-desc = 预读下一程之事
travel-camp-correctbuild-desc = 一建陷 −3
travel-camp-tendwounds-desc = 愈一肉伤（财与时）
travel-camp-drillprotocol-desc = 三夜成一课
travel-camp-readtide-desc = 知下战首数潮
travel-camp-collatecodex-desc = 据睹考成一录
travel-readout-coin = 财
travel-readout-heat = 热
travel-readout-hunter = 猎
travel-per-leg = 每程 −15
travel-depart = 启程
travel-walk = 前行
travel-outfit = 整装
travel-camp-sub = 每夜一人一事
travel-camp-note = 营中之发亦握手 — 夜无所匿于录
travel-road-foot = 道长者卸热愈多，然猎者未尝止步
travel-no-log = 无录
travel-none = 无耗

## 市 市集（tier-2：三柜、暗务、读数；市/官市/黑市/暗务 为固定字面）
market-licensed = THE LICENSED COUNTER
market-black = THE BLACK COUNTER
market-services = SERVICES OF THE BACK ROOM
market-licensed-sub = 洁印高价，名入其册
market-black-sub = 贱而污，不问名姓
market-services-sub = 洗名、行贿、易籍
market-refuse = 拒售 · 逾三段，柜不受录
market-brand = 货随汝盗名而增
market-hidden-bugs = 黑货或藏暗陷 — 购前不可验
market-sealed = 照 有印之照 · 源洁 · 陷0 · 入录
market-coin = 财
market-heat = 热
market-standing = 名
market-launder = 洗名 · 一段
market-launder-desc = 洗去记录一段
market-bribe = 贿印
market-bribe-desc = 追封一无印之源（每幕一次）
market-papers = 易籍
market-papers-desc = 一名重籍 — 其热归零
market-fence = 销赃
market-fence-desc = 无印之赃，唯此可售
market-no-fence = 无印之赃可售
market-bribe-case = 贿
market-recruit = 募
market-footer = 同物三价 — 所择之柜，即所守之政
market-leave = 出市

## 战前之令 战前之令（tier-2：令、情、时、阵；chrome 与图略标记为固定字面）
briefing-writ-skirmish = 据守此地 — 战外无令
briefing-writ-heist = 破封库，携源出我方之界 — 斩敌非令
briefing-writ-taking = 生擒其标；杀之则令败 — 斩敌非令
briefing-writ-writ = 熬过格式之令：撑至其自焚 — 斩敌非令
briefing-writ-sever = 断其持者或榨之至枯，则法自崩
briefing-writ-escort = 护未装之荷至彼端；其亡则令终
briefing-writ-erasure = 抵档库，静改其录 — 一段之声即败
briefing-kills-not = 令者动词，非计首级
briefing-no-intel = 无敌情 · 此处录无所读
briefing-intel-collated = 已考据 — 录于此有信
briefing-intel-uncollated = 未考据 — 临阵或诓
briefing-intel-foot = 诸录皆带误差；？者未考据，临阵或异
briefing-tide-early = 营中所读 — 首数回确
briefing-tide-mid = 潮历之推
briefing-tide-late = 远推 — 信薄
briefing-tide-foot = 首二回确（营读），余皆潮历之推
briefing-heat-title = 热之估
briefing-heat-redline = 唯一之线
briefing-heat-writ = 此令估
briefing-heat-witness = 每睹
briefing-heat-cross = 越线 → 猎者进一域
briefing-roster-sub = 点以布阵 — 至多四
briefing-in = 出
briefing-out = 留
briefing-sketch-cap = 刻图，非棋盘；渡处乃浊械之地 — 于铁不可施法
briefing-commit = 开战
briefing-equip = 整装
briefing-back = 返图

## 评级之晋 晋级之仪（tier-2；评级之晋 与评级名为固定字面）
ascension-eyebrow = 录已重读一魂 · 评级之晋
ascension-scribe = 通感之魂 — 场今以更高之针读之
ascension-perk-echo = 薄地不施高耗之发
ascension-perk-steady = 基准 — 世界以此魂为度
ascension-perk-high = 薄地如常；每战可卸一协
ascension-perk-overbound = 安于空隙：踏临界之地而免陷税
ascension-cost-none = 晋级无需财、不索忠 — 评级记功，非购也
ascension-cost-overbound = 名魂投长影：每发之热 +50%
ascension-accept = 受晋
ascension-later = 缓之
ascension-bottom = 评级非赏 — 乃录重读汝之所成

## 募之卷 募之卷（tier-2；募之卷 与段落 chrome 为固定字面）
recruitment-maxim = 热附于名：募一人，即募其录
recruitment-list-foot = 候者皆人 — 一录、一价、一求；辞之亦记（市有耳）
recruitment-no-heat = 无录 · 无帐
recruitment-take = 立契
recruitment-decline = 辞之
recruitment-decline-note = 其热本将随队而行
recruitment-bottom = 职定其位，载定其能
recruitment-name-vellum = 白钳 · Vellum
recruitment-name-hush = 无名 · Hush
recruitment-name-folio = 摹手 · Folio
recruitment-vellum-brings = 有照之手 — 洁印、开哨之牒
recruitment-vellum-log = 热一段：一笔迟缴之罚，仍在册上
recruitment-vellum-wants = 每笔有印之售抽成 — 她为录而作，不为义
recruitment-vellum-consequence = 帐增一段；有照之发过哨更洁
recruitment-vellum-loadout = 誓盾 · 昭示（有印）
recruitment-hush-brings = 无帐之静 — 抗体无名可读
recruitment-hush-log = — 无记 — 录未尝闻其人
recruitment-hush-wants = 无所书；一席之地，别无所问
recruitment-hush-consequence = 无热入帐 — 幽者无影，然亦无可保
recruitment-hush-loadout = 匿踪 · 寂行（无印）
recruitment-folio-brings = 睹者之目 — 三睹即摹一发
recruitment-folio-log = 三段，且烫：一盗版归于其名
recruitment-folio-wants = 欲观奇建 — 遣之于施法喧处
recruitment-folio-consequence = 即增三段 — 抗体向新之烫名重布
recruitment-folio-loadout = 过目 · 反睹（盗版）

## 案卷 案卷（tier-2；案卷 + chrome + 迹标记为固定字面）
caseboard-no-case = 冷卷 · 未立案 — 录未逾五段
caseboard-subline = 录已呈于局，猎者在途
caseboard-rank = 三等审官 · 评级高载 · 长技 律·撤令
caseboard-knows = 知队长之名与面；疑印出自内；不识幽者
caseboard-doubt = 其疑渐生（第三幕）— 汝所喂之证，或成其叛
caseboard-move-caption = 汝行一步，霜随一步；发无印之回则倍
caseboard-ev-witness = 脱证者
caseboard-ev-checkpoint = 哨验之读
caseboard-ev-fenced = 销赃之货
caseboard-read = 受读
caseboard-read-desc = 热→0 · 读或曝幽者、盟系 → 验身
caseboard-bribe = 贿印
caseboard-bribe-desc = 令文「有疵」，案退 — 猎近则价倍；霜知其非自然
caseboard-fight = 败其人
caseboard-fight-desc = 杀之则案升一阶（后任承其职）；或战至僵持以启叛线 → 战
caseboard-raid = 灭证
caseboard-raid-desc = 袭档库 → 战；胜则焚最新一行 — 损其案，非结汝卷
caseboard-open-note = 卷若不结，猎者即于任中降临 — 强战，无简令
caseboard-footer = 案者，图上有名之棋，非计时之器
caseboard-back = 返疆域图

# ── 审读之场 Examination ─────────────────────────────────────────────
examination-subject = 受读者
examination-examiner = 审官
examination-reading = 读取中
examination-page-under = 受读之页
examination-page-clean = 页白 · 录中无物
examination-dug = 〔名讳从略——读者深掘〕
examination-redacted = 幽存无录 — 无帐者不可读
examination-question = 「页不空——是人空。谁跟你们走，却不在录里？」
examination-ghost-surfaced = 幽存之现 — 空行已被察觉，幽存入案
examination-ghost-hint = 越紫线则幽存现 — 读愈深，清愈多，露愈多
examination-cap = 读愈深，清热愈多，然露密亦愈多 — 此局在于何时言止
examination-truth = 实答
examination-truth-desc = 一名入录 · 读止于此 · 热清依深
examination-steer = 导其读
examination-steer-desc = 藏一行、露一行（频宽 3）· 败则读深
examination-sever = 断读
examination-sever-desc = 自撞 + 蚀+1 · 审变为战 → 战

# ── 收押/索赎/散于四隅 The Wipe ─────────────────────────────────────
wipe-record-says = 录今所载
wipe-hunter-rank = 第三印
wipe-hunter-note = 你的案，如今有了脸
wipe-footer = 败者，一场也，非一屏
wipe-continue = ⏎ 续
# antibody 收押
wipe-antibody-eyebrow = 队已倒 —— 测算署收场
wipe-antibody-title-en = SEIZED
wipe-antibody-scribe = 她们就地读你之录。无印之源尽数封箱；你所负之热，如今成案，且有其名。
wipe-antibody-c1 = 无印之源没收 —— 封为证物
wipe-antibody-c2 = 热越五格 → 化为案卷（猎者始行）
wipe-antibody-c3 = 醒于审读之场 —— 读始
wipe-antibody-proceed = 醒于审所
wipe-antibody-note = 此处无终 —— 唯有一读
# guild 索赎
wipe-guild-eyebrow = 队已倒 —— 编纂公会开价
wipe-guild-title-en = RANSOMED
wipe-guild-scribe = 编纂者押你索银，非为读你。你之编构仍在 —— 囊轻几分，其柜记仇。
wipe-guild-c1 = 铢减半 —— 取整偏公会
wipe-guild-c2 = 忆与编构皆存 —— 不读，无蚀
wipe-guild-c3 = 公会之价升一阶，至你胜其一队
wipe-guild-proceed = 付赎
wipe-guild-note = 赎已付，路仍是你的
# daemon 散于四隅
wipe-daemon-eyebrow = 队已倒 —— 虫群散你四方
wipe-daemon-title-en = SCATTERED
wipe-daemon-scribe = 无收押，无牢笼 —— 唯有图之四隅。各自独行而归，携锈更甚于出时；其页归来，满是破洞。
wipe-daemon-c1 = 队散于图之四隅（独行而归）
wipe-daemon-c2 = 各增二蚀 —— 每三叠蚀，变构一则
wipe-daemon-c3 = 热不升，然录页归来满是破洞
wipe-daemon-proceed = 各自上路
wipe-daemon-note = 无人押你，锈押你

# ── 录之大讯 The Great Audit ─────────────────────────────────
endgame-subline = 核锈越限 —— 凡无印者，尽将格式化
endgame-degrade-note = 此倒数蚀世，非蚀汝
endgame-map-caption = 每程校一域 —— 市闭、关卡倍、热不可积
endgame-standings = 四轴之呈
endgame-answers = 汝所得之答
endgame-axis-name = 名之洁
endgame-axis-flesh = 身之蚀
endgame-axis-ghost = 幽存之情
endgame-axis-stolen = 睹之富
endgame-v-clean = 洁
endgame-v-grey = 灰
endgame-v-outlaw = 污名
endgame-v-whole = 洁身
endgame-v-rotting = 渐蚀
endgame-v-eaten = 尽蚀
endgame-v-unshared = 未信
endgame-v-trust = 全信
endgame-v-thin = 库薄
endgame-v-rich = 库富
endgame-commit-note = 择一答，即定其终役 —— 核前厅不还人；择前，且于倒数中续活
endgame-finale-await = → 终役在前
endgame-finale-depart = → 无战 —— 一夜之离
endgame-back = 返疆域图
endgame-repair-name = REPAIR THE LOG
endgame-repair-gate = 恒开
endgame-repair-line = 守礼三十回 —— 系统得胜，且记你曾守之
endgame-burn-name = BURN THE LOG
endgame-burn-gate = 恒开
endgame-burn-line = 战你所记之每一咒 —— 自由之价，是遗忘
endgame-seize-name = SEIZE THE SEAL
endgame-seize-gate = 需污名 + 库富
endgame-seize-line = 根权 —— 盗者成印之新守
endgame-teaching-name = THE TEACHING
endgame-teaching-gate = 需库富 + 弃印尚存
endgame-teaching-line = 散源库于众 —— 缓革
endgame-unrecorded-name = THE UNRECORDED ANSWER
endgame-unrecorded-gate = 需幽存全信
endgame-unrecorded-line = 行出每一页 —— 非胜，乃离

# ── 阅旧录 The Archive ─────────────────────────────────────
records-subtitle = 世界执笔，汝唯阅之
records-stance-registered = 册途
records-stance-outlaw = 野途
records-stance-unforgiving = 录不容赦
records-auto-written = 自书
records-no-save-note = 无存录之钮 —— 每至、每战之启，录自书之
records-now = 今
records-kind-arrival = 至
records-kind-battle = 战
records-scribe-arrival = 队抵城门，书手新启一页
records-scribe-battle = 阵已列，页屏息以待首咒
records-pen-rests = 笔悬于此 —— 此页犹在书中
records-living-note = 汝正活于此录之中
records-readback = 回读此录
records-readback-note = 回读旧录，即令世界转回其时
records-warn = 野途之上，回头非密 —— 今录将记之。可乎？
records-confirm = 回读此录 确
records-hotkeys = ↑↓ 择 · ⏎ 回读 · ESC 返题
records-back = 返标题

# ── 律例 The Laws ─────────────────────────────────────────
options-header-note = 佐之律，录所不记者也
options-on = 开
options-off = 关
options-book-presentation = 观
options-book-battle = 战
options-book-road = 途
options-book-assists = 佐
options-motto-presentation = 世界如何示人 —— 双声恒在，唯序可易
options-motto-battle = 阵如何读 —— 数清而明，绝非乱彩
options-motto-road = 世界记汝几多 —— 途也，非滑杆
options-motto-assists = 录所不视之一页
options-voice-order = 双声之序
options-voice-order-note = 双声恒现 —— 唯定何者为先
options-voice-cn-first = 华先
options-voice-en-first = 英先
options-text-scale = 场上字幅
options-text-scale-note = 二四像为法 —— 场上无物小于此
options-scale-100 = 100%
options-scale-125 = 125%
options-colorblind = 色弱
options-colorblind-note = 义入纹理，不独赖色
options-camera-shake = 镜震
options-camera-shake-note = 重击时萤幕震动
options-reduced-motion = 减动
options-reduced-motion-note = 省去非必要之动画
options-texture-solid = 金 · 实
options-texture-hatched = 赤 · 斜
options-texture-dotted = 紫 · 点
options-forecast = 预判
options-forecast-note = 施咒前之结果预览
options-forecast-always = 恒显
options-forecast-held = 按需
options-enemy-speed = 敌回合之速
options-enemy-speed-note = ×1–4；绝不略过汝当读之拍
options-x1 = ×1
options-x2 = ×2
options-x3 = ×3
options-x4 = ×4
options-grid = 格线
options-grid-note = 地形格线
options-grid-always = 恒显
options-grid-choosing = 择时
options-numbers = 数之所居
options-numbers-note = 居于介面，或亦现于盘上 —— 绝非乱彩
options-numbers-hud = 仅介面
options-numbers-board = 亦现盘上
options-stance = 其途
options-stance-note = 每幕可易一次；录记其变 —— 非伤害滑杆
options-stance-registered-desc = 册途 —— 倒者无蚀，案不升，数值从宽；世界仍记，唯宽宥之。
options-stance-outlaw-desc = 野途 —— 蚀、案、擒皆如上文所定。此为调校之准。
options-stance-unforgiving-desc = 录不容赦 —— 单一滚动存录，擒者永留，变构不净。
options-record-noted = 录记其变 —— 世界已书其易
options-assist-corruption = 倒不生蚀
options-assist-corruption-note = 倒下不留蚀叠
options-assist-waves = 无增援
options-assist-waves-note = 阵不再翻倍
options-assist-weather = 天候常晓
options-assist-weather-note = 天之回合恒可预知
options-assists-note = 佐之律各自独立，不锁任何成就，且不入录 —— 录所不视之一页
options-refused = 拒 · 律之所定，不可增
options-refuse-save = 无手动存档格 —— 录即真相（阅旧录足矣）
options-refuse-slider = 无全域伤害滑杆 —— 难度为途，非数字
options-refuse-silence = 无法静默双语之声 —— 双声即游戏之面
options-hotkeys = ↑↓ 换书 · ESC 返
options-back = 返
options-stance-registered = 册途
options-stance-outlaw = 野途
options-stance-unforgiving = 录不容赦

# ── 伟力之录 The Log of the Wille ─────────────────────────
mainmenu-continue = 续录
mainmenu-new = 启新录
mainmenu-records = 阅旧录
mainmenu-options = 律例
mainmenu-no-save = 尚无录
mainmenu-version = v0.1 · 内试之录

# ── 队囊 Convoy Outfitting ─────────────────────────────────────
equip-between-battles = 战间整备
equip-slots-en = THREE SLOTS
equip-arm-en = ARMAMENT
equip-plate-en = PLATE
equip-peri-en = PERIPHERAL
equip-empty = 空
equip-unequip = 卸下
equip-law-peripherals = 佩者必易，不徒增
equip-law-worlds = 防壁惟御思维，甲惟御浊械 —— 二伤二防，永不相涉
equip-nothing = 此类无存
equip-close = 收囊
equip-clerk = 书记之言 —— 器易其数，计授其能
equip-cmp = 若装之
equip-scrolls-note = 战间可译（笔迹校 · 照即印）—— 源卷可译而不可装
equip-compile = 译之 → 源库
equip-capacitor-note = 储载乃消耗之物 —— 阵中即用，不入槽
equip-license-note = 照者，籍中之录，非囊中之物
equip-bottombar = 点囊中之物以装 · 卸下则返囊

# ── 疆域图 WorldMap — 词库未收的画面文字 ─────────────────
# 聚落／疆域之名出自 glossary.json；此处为画面自有字串：
# 民用／系统浮水印，以及三枚覆层签。
worldmap-civil        = // 民用制图
worldmap-system       = // 系统覆层启用
worldmap-chip-field   = 域载
worldmap-chip-zone    = 控域
worldmap-chip-patrol  = 抗体

# ── 示之律 grammar preview ─────────────────────────────
notices-demo-record = 一录书入察录
notices-demo-law = 热破一格 —— 抗体始动
notices-demo-thought = 一译已成
notices-demo-mundane = 装备已换
notices-demo-stamp = 章 终

## 战毕 Results — 判词、所得、所睹、猎者、行动（tier-2；所得/所睹/录册 之标题为 tier-1 固定繁体）
results-verdict-cleansteal = 窃而全身
results-verdict-bloodied = 带血而归
results-verdict-withdrawn = 全身而退
results-verdict-writfailed = 令未竟
results-gloss-cleansteal = 令成，众皆未被读。
results-gloss-bloodied = 令虽成，伤册犹待答。
results-gloss-withdrawn = 未取其令。汝择队而舍赏——无所夺，鲜所睹。
results-gloss-writfailed = 的既失。所睹者犹为汝有。
results-take-coin = 散财
results-take-mark = 目的物
results-take-fragments = 残卷
results-take-unsealed = 无印之货
results-take-nothing = 无所得
results-take-fence = 无印之货不入官市 → 销赃
results-witnessed-subhead = 所睹可习 · 择一受之，或弃之
results-witnessed-nothing = 无所睹
results-witnessed-bugged = 初陷
results-witnessed-assigned = 已受
results-witnessed-shelffull = 库满 · 受之启覆写之仪
results-take-it = 受之
results-let-go = 弃
results-net = 此战净计
results-heat = 现热
results-nobattle = 无战可结
results-hunter-title = 猎者之动
results-hunter-body = 霜越线，进一域
results-btn-packup = 收拾行装
results-btn-review = 覆盘
results-btn-ascend = 评级之晋
