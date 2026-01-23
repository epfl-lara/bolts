; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728996 () Bool)

(assert start!728996)

(declare-fun b!7537164 () Bool)

(declare-fun res!3020490 () Bool)

(declare-fun e!4491139 () Bool)

(assert (=> b!7537164 (=> res!3020490 e!4491139)))

(declare-fun lt!2642120 () Int)

(declare-fun lt!2642115 () Int)

(assert (=> b!7537164 (= res!3020490 (= lt!2642120 lt!2642115))))

(declare-fun b!7537165 () Bool)

(declare-fun res!3020493 () Bool)

(declare-fun e!4491134 () Bool)

(assert (=> b!7537165 (=> (not res!3020493) (not e!4491134))))

(declare-datatypes ((C!40108 0))(
  ( (C!40109 (val!30494 Int)) )
))
(declare-datatypes ((Regex!19891 0))(
  ( (ElementMatch!19891 (c!1391672 C!40108)) (Concat!28736 (regOne!40294 Regex!19891) (regTwo!40294 Regex!19891)) (EmptyExpr!19891) (Star!19891 (reg!20220 Regex!19891)) (EmptyLang!19891) (Union!19891 (regOne!40295 Regex!19891) (regTwo!40295 Regex!19891)) )
))
(declare-fun r!24333 () Regex!19891)

(declare-fun validRegex!10319 (Regex!19891) Bool)

(assert (=> b!7537165 (= res!3020493 (validRegex!10319 r!24333))))

(declare-fun b!7537166 () Bool)

(declare-fun e!4491135 () Bool)

(declare-fun tp!2192241 () Bool)

(declare-fun tp!2192233 () Bool)

(assert (=> b!7537166 (= e!4491135 (and tp!2192241 tp!2192233))))

(declare-fun b!7537167 () Bool)

(declare-fun e!4491133 () Bool)

(declare-fun tp_is_empty!50137 () Bool)

(declare-fun tp!2192237 () Bool)

(assert (=> b!7537167 (= e!4491133 (and tp_is_empty!50137 tp!2192237))))

(declare-fun b!7537168 () Bool)

(declare-fun e!4491137 () Bool)

(declare-fun tp!2192235 () Bool)

(assert (=> b!7537168 (= e!4491137 tp!2192235)))

(declare-fun b!7537169 () Bool)

(assert (=> b!7537169 (= e!4491135 tp_is_empty!50137)))

(declare-fun b!7537170 () Bool)

(declare-fun res!3020491 () Bool)

(assert (=> b!7537170 (=> (not res!3020491) (not e!4491134))))

(declare-datatypes ((List!72774 0))(
  ( (Nil!72650) (Cons!72650 (h!79098 C!40108) (t!387481 List!72774)) )
))
(declare-fun knownP!30 () List!72774)

(declare-fun input!7874 () List!72774)

(declare-fun isPrefix!6097 (List!72774 List!72774) Bool)

(assert (=> b!7537170 (= res!3020491 (isPrefix!6097 knownP!30 input!7874))))

(declare-fun b!7537171 () Bool)

(declare-fun e!4491131 () Bool)

(declare-fun lt!2642112 () Int)

(assert (=> b!7537171 (= e!4491131 (>= lt!2642112 lt!2642115))))

(declare-fun lt!2642113 () List!72774)

(declare-fun lt!2642114 () List!72774)

(declare-fun getSuffix!3577 (List!72774 List!72774) List!72774)

(assert (=> b!7537171 (= lt!2642113 (getSuffix!3577 knownP!30 lt!2642114))))

(assert (=> b!7537171 (isPrefix!6097 lt!2642114 knownP!30)))

(declare-datatypes ((Unit!166720 0))(
  ( (Unit!166721) )
))
(declare-fun lt!2642116 () Unit!166720)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!847 (List!72774 List!72774 List!72774) Unit!166720)

(assert (=> b!7537171 (= lt!2642116 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!847 knownP!30 lt!2642114 input!7874))))

(declare-fun baseR!101 () Regex!19891)

(declare-fun lt!2642117 () C!40108)

(declare-fun derivative!423 (Regex!19891 List!72774) Regex!19891)

(declare-fun derivativeStep!5681 (Regex!19891 C!40108) Regex!19891)

(assert (=> b!7537171 (= (derivative!423 baseR!101 lt!2642114) (derivativeStep!5681 r!24333 lt!2642117))))

(declare-fun testedP!423 () List!72774)

(declare-fun lt!2642111 () Unit!166720)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!129 (Regex!19891 Regex!19891 List!72774 C!40108) Unit!166720)

(assert (=> b!7537171 (= lt!2642111 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!129 baseR!101 r!24333 testedP!423 lt!2642117))))

(assert (=> b!7537171 (isPrefix!6097 lt!2642114 input!7874)))

(declare-fun lt!2642119 () Unit!166720)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1162 (List!72774 List!72774) Unit!166720)

(assert (=> b!7537171 (= lt!2642119 (lemmaAddHeadSuffixToPrefixStillPrefix!1162 testedP!423 input!7874))))

(declare-fun ++!17408 (List!72774 List!72774) List!72774)

(assert (=> b!7537171 (= lt!2642114 (++!17408 testedP!423 (Cons!72650 lt!2642117 Nil!72650)))))

(declare-fun head!15481 (List!72774) C!40108)

(assert (=> b!7537171 (= lt!2642117 (head!15481 (getSuffix!3577 input!7874 testedP!423)))))

(declare-fun b!7537172 () Bool)

(declare-fun tp!2192242 () Bool)

(assert (=> b!7537172 (= e!4491135 tp!2192242)))

(declare-fun b!7537173 () Bool)

(declare-fun res!3020495 () Bool)

(declare-fun e!4491136 () Bool)

(assert (=> b!7537173 (=> (not res!3020495) (not e!4491136))))

(declare-fun matchR!9493 (Regex!19891 List!72774) Bool)

(assert (=> b!7537173 (= res!3020495 (matchR!9493 baseR!101 knownP!30))))

(declare-fun b!7537174 () Bool)

(declare-fun tp!2192238 () Bool)

(declare-fun tp!2192234 () Bool)

(assert (=> b!7537174 (= e!4491135 (and tp!2192238 tp!2192234))))

(declare-fun b!7537175 () Bool)

(assert (=> b!7537175 (= e!4491134 e!4491136)))

(declare-fun res!3020489 () Bool)

(assert (=> b!7537175 (=> (not res!3020489) (not e!4491136))))

(assert (=> b!7537175 (= res!3020489 (>= lt!2642115 lt!2642120))))

(declare-fun size!42387 (List!72774) Int)

(assert (=> b!7537175 (= lt!2642120 (size!42387 testedP!423))))

(assert (=> b!7537175 (= lt!2642115 (size!42387 knownP!30))))

(declare-fun b!7537176 () Bool)

(declare-fun tp!2192240 () Bool)

(declare-fun tp!2192239 () Bool)

(assert (=> b!7537176 (= e!4491137 (and tp!2192240 tp!2192239))))

(declare-fun b!7537177 () Bool)

(declare-fun tp!2192231 () Bool)

(declare-fun tp!2192236 () Bool)

(assert (=> b!7537177 (= e!4491137 (and tp!2192231 tp!2192236))))

(declare-fun res!3020488 () Bool)

(assert (=> start!728996 (=> (not res!3020488) (not e!4491134))))

(assert (=> start!728996 (= res!3020488 (validRegex!10319 baseR!101))))

(assert (=> start!728996 e!4491134))

(assert (=> start!728996 e!4491135))

(declare-fun e!4491132 () Bool)

(assert (=> start!728996 e!4491132))

(assert (=> start!728996 e!4491133))

(declare-fun e!4491138 () Bool)

(assert (=> start!728996 e!4491138))

(assert (=> start!728996 e!4491137))

(declare-fun b!7537178 () Bool)

(assert (=> b!7537178 (= e!4491139 e!4491131)))

(declare-fun res!3020494 () Bool)

(assert (=> b!7537178 (=> res!3020494 e!4491131)))

(assert (=> b!7537178 (= res!3020494 (>= lt!2642120 lt!2642112))))

(assert (=> b!7537178 (= lt!2642112 (size!42387 input!7874))))

(declare-fun b!7537179 () Bool)

(assert (=> b!7537179 (= e!4491136 (not e!4491139))))

(declare-fun res!3020496 () Bool)

(assert (=> b!7537179 (=> res!3020496 e!4491139)))

(assert (=> b!7537179 (= res!3020496 (not (matchR!9493 r!24333 (getSuffix!3577 knownP!30 testedP!423))))))

(assert (=> b!7537179 (isPrefix!6097 testedP!423 knownP!30)))

(declare-fun lt!2642118 () Unit!166720)

(assert (=> b!7537179 (= lt!2642118 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!847 knownP!30 testedP!423 input!7874))))

(declare-fun b!7537180 () Bool)

(declare-fun tp!2192232 () Bool)

(assert (=> b!7537180 (= e!4491138 (and tp_is_empty!50137 tp!2192232))))

(declare-fun b!7537181 () Bool)

(declare-fun tp!2192243 () Bool)

(assert (=> b!7537181 (= e!4491132 (and tp_is_empty!50137 tp!2192243))))

(declare-fun b!7537182 () Bool)

(declare-fun res!3020498 () Bool)

(assert (=> b!7537182 (=> res!3020498 e!4491139)))

(declare-fun lostCause!1683 (Regex!19891) Bool)

(assert (=> b!7537182 (= res!3020498 (lostCause!1683 r!24333))))

(declare-fun b!7537183 () Bool)

(assert (=> b!7537183 (= e!4491137 tp_is_empty!50137)))

(declare-fun b!7537184 () Bool)

(declare-fun res!3020492 () Bool)

(assert (=> b!7537184 (=> res!3020492 e!4491139)))

(assert (=> b!7537184 (= res!3020492 (not (= (derivative!423 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7537185 () Bool)

(declare-fun res!3020497 () Bool)

(assert (=> b!7537185 (=> (not res!3020497) (not e!4491134))))

(assert (=> b!7537185 (= res!3020497 (isPrefix!6097 testedP!423 input!7874))))

(assert (= (and start!728996 res!3020488) b!7537165))

(assert (= (and b!7537165 res!3020493) b!7537185))

(assert (= (and b!7537185 res!3020497) b!7537170))

(assert (= (and b!7537170 res!3020491) b!7537175))

(assert (= (and b!7537175 res!3020489) b!7537173))

(assert (= (and b!7537173 res!3020495) b!7537179))

(assert (= (and b!7537179 (not res!3020496)) b!7537184))

(assert (= (and b!7537184 (not res!3020492)) b!7537182))

(assert (= (and b!7537182 (not res!3020498)) b!7537164))

(assert (= (and b!7537164 (not res!3020490)) b!7537178))

(assert (= (and b!7537178 (not res!3020494)) b!7537171))

(get-info :version)

(assert (= (and start!728996 ((_ is ElementMatch!19891) baseR!101)) b!7537169))

(assert (= (and start!728996 ((_ is Concat!28736) baseR!101)) b!7537166))

(assert (= (and start!728996 ((_ is Star!19891) baseR!101)) b!7537172))

(assert (= (and start!728996 ((_ is Union!19891) baseR!101)) b!7537174))

(assert (= (and start!728996 ((_ is Cons!72650) input!7874)) b!7537181))

(assert (= (and start!728996 ((_ is Cons!72650) knownP!30)) b!7537167))

(assert (= (and start!728996 ((_ is Cons!72650) testedP!423)) b!7537180))

(assert (= (and start!728996 ((_ is ElementMatch!19891) r!24333)) b!7537183))

(assert (= (and start!728996 ((_ is Concat!28736) r!24333)) b!7537176))

(assert (= (and start!728996 ((_ is Star!19891) r!24333)) b!7537168))

(assert (= (and start!728996 ((_ is Union!19891) r!24333)) b!7537177))

(declare-fun m!8107480 () Bool)

(assert (=> b!7537171 m!8107480))

(declare-fun m!8107482 () Bool)

(assert (=> b!7537171 m!8107482))

(declare-fun m!8107484 () Bool)

(assert (=> b!7537171 m!8107484))

(declare-fun m!8107486 () Bool)

(assert (=> b!7537171 m!8107486))

(declare-fun m!8107488 () Bool)

(assert (=> b!7537171 m!8107488))

(declare-fun m!8107490 () Bool)

(assert (=> b!7537171 m!8107490))

(assert (=> b!7537171 m!8107484))

(declare-fun m!8107492 () Bool)

(assert (=> b!7537171 m!8107492))

(declare-fun m!8107494 () Bool)

(assert (=> b!7537171 m!8107494))

(declare-fun m!8107496 () Bool)

(assert (=> b!7537171 m!8107496))

(declare-fun m!8107498 () Bool)

(assert (=> b!7537171 m!8107498))

(declare-fun m!8107500 () Bool)

(assert (=> b!7537171 m!8107500))

(declare-fun m!8107502 () Bool)

(assert (=> b!7537179 m!8107502))

(assert (=> b!7537179 m!8107502))

(declare-fun m!8107504 () Bool)

(assert (=> b!7537179 m!8107504))

(declare-fun m!8107506 () Bool)

(assert (=> b!7537179 m!8107506))

(declare-fun m!8107508 () Bool)

(assert (=> b!7537179 m!8107508))

(declare-fun m!8107510 () Bool)

(assert (=> b!7537170 m!8107510))

(declare-fun m!8107512 () Bool)

(assert (=> b!7537184 m!8107512))

(declare-fun m!8107514 () Bool)

(assert (=> b!7537165 m!8107514))

(declare-fun m!8107516 () Bool)

(assert (=> b!7537185 m!8107516))

(declare-fun m!8107518 () Bool)

(assert (=> start!728996 m!8107518))

(declare-fun m!8107520 () Bool)

(assert (=> b!7537182 m!8107520))

(declare-fun m!8107522 () Bool)

(assert (=> b!7537173 m!8107522))

(declare-fun m!8107524 () Bool)

(assert (=> b!7537178 m!8107524))

(declare-fun m!8107526 () Bool)

(assert (=> b!7537175 m!8107526))

(declare-fun m!8107528 () Bool)

(assert (=> b!7537175 m!8107528))

(check-sat (not b!7537176) (not b!7537185) (not start!728996) tp_is_empty!50137 (not b!7537168) (not b!7537173) (not b!7537167) (not b!7537180) (not b!7537171) (not b!7537184) (not b!7537181) (not b!7537175) (not b!7537179) (not b!7537172) (not b!7537174) (not b!7537170) (not b!7537166) (not b!7537182) (not b!7537177) (not b!7537165) (not b!7537178))
(check-sat)
(get-model)

(declare-fun d!2310625 () Bool)

(declare-fun lt!2642123 () List!72774)

(assert (=> d!2310625 (= (++!17408 testedP!423 lt!2642123) input!7874)))

(declare-fun e!4491142 () List!72774)

(assert (=> d!2310625 (= lt!2642123 e!4491142)))

(declare-fun c!1391675 () Bool)

(assert (=> d!2310625 (= c!1391675 ((_ is Cons!72650) testedP!423))))

(assert (=> d!2310625 (>= (size!42387 input!7874) (size!42387 testedP!423))))

(assert (=> d!2310625 (= (getSuffix!3577 input!7874 testedP!423) lt!2642123)))

(declare-fun b!7537190 () Bool)

(declare-fun tail!15030 (List!72774) List!72774)

(assert (=> b!7537190 (= e!4491142 (getSuffix!3577 (tail!15030 input!7874) (t!387481 testedP!423)))))

(declare-fun b!7537191 () Bool)

(assert (=> b!7537191 (= e!4491142 input!7874)))

(assert (= (and d!2310625 c!1391675) b!7537190))

(assert (= (and d!2310625 (not c!1391675)) b!7537191))

(declare-fun m!8107530 () Bool)

(assert (=> d!2310625 m!8107530))

(assert (=> d!2310625 m!8107524))

(assert (=> d!2310625 m!8107526))

(declare-fun m!8107532 () Bool)

(assert (=> b!7537190 m!8107532))

(assert (=> b!7537190 m!8107532))

(declare-fun m!8107534 () Bool)

(assert (=> b!7537190 m!8107534))

(assert (=> b!7537171 d!2310625))

(declare-fun d!2310627 () Bool)

(assert (=> d!2310627 (= (derivative!423 baseR!101 (++!17408 testedP!423 (Cons!72650 lt!2642117 Nil!72650))) (derivativeStep!5681 r!24333 lt!2642117))))

(declare-fun lt!2642126 () Unit!166720)

(declare-fun choose!58299 (Regex!19891 Regex!19891 List!72774 C!40108) Unit!166720)

(assert (=> d!2310627 (= lt!2642126 (choose!58299 baseR!101 r!24333 testedP!423 lt!2642117))))

(assert (=> d!2310627 (validRegex!10319 baseR!101)))

(assert (=> d!2310627 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!129 baseR!101 r!24333 testedP!423 lt!2642117) lt!2642126)))

(declare-fun bs!1939921 () Bool)

(assert (= bs!1939921 d!2310627))

(assert (=> bs!1939921 m!8107492))

(declare-fun m!8107536 () Bool)

(assert (=> bs!1939921 m!8107536))

(assert (=> bs!1939921 m!8107518))

(assert (=> bs!1939921 m!8107496))

(assert (=> bs!1939921 m!8107492))

(declare-fun m!8107538 () Bool)

(assert (=> bs!1939921 m!8107538))

(assert (=> b!7537171 d!2310627))

(declare-fun b!7537201 () Bool)

(declare-fun res!3020509 () Bool)

(declare-fun e!4491149 () Bool)

(assert (=> b!7537201 (=> (not res!3020509) (not e!4491149))))

(assert (=> b!7537201 (= res!3020509 (= (head!15481 lt!2642114) (head!15481 input!7874)))))

(declare-fun b!7537200 () Bool)

(declare-fun e!4491150 () Bool)

(assert (=> b!7537200 (= e!4491150 e!4491149)))

(declare-fun res!3020510 () Bool)

(assert (=> b!7537200 (=> (not res!3020510) (not e!4491149))))

(assert (=> b!7537200 (= res!3020510 (not ((_ is Nil!72650) input!7874)))))

(declare-fun b!7537203 () Bool)

(declare-fun e!4491151 () Bool)

(assert (=> b!7537203 (= e!4491151 (>= (size!42387 input!7874) (size!42387 lt!2642114)))))

(declare-fun d!2310629 () Bool)

(assert (=> d!2310629 e!4491151))

(declare-fun res!3020508 () Bool)

(assert (=> d!2310629 (=> res!3020508 e!4491151)))

(declare-fun lt!2642129 () Bool)

(assert (=> d!2310629 (= res!3020508 (not lt!2642129))))

(assert (=> d!2310629 (= lt!2642129 e!4491150)))

(declare-fun res!3020507 () Bool)

(assert (=> d!2310629 (=> res!3020507 e!4491150)))

(assert (=> d!2310629 (= res!3020507 ((_ is Nil!72650) lt!2642114))))

(assert (=> d!2310629 (= (isPrefix!6097 lt!2642114 input!7874) lt!2642129)))

(declare-fun b!7537202 () Bool)

(assert (=> b!7537202 (= e!4491149 (isPrefix!6097 (tail!15030 lt!2642114) (tail!15030 input!7874)))))

(assert (= (and d!2310629 (not res!3020507)) b!7537200))

(assert (= (and b!7537200 res!3020510) b!7537201))

(assert (= (and b!7537201 res!3020509) b!7537202))

(assert (= (and d!2310629 (not res!3020508)) b!7537203))

(declare-fun m!8107540 () Bool)

(assert (=> b!7537201 m!8107540))

(declare-fun m!8107542 () Bool)

(assert (=> b!7537201 m!8107542))

(assert (=> b!7537203 m!8107524))

(declare-fun m!8107544 () Bool)

(assert (=> b!7537203 m!8107544))

(declare-fun m!8107546 () Bool)

(assert (=> b!7537202 m!8107546))

(assert (=> b!7537202 m!8107532))

(assert (=> b!7537202 m!8107546))

(assert (=> b!7537202 m!8107532))

(declare-fun m!8107548 () Bool)

(assert (=> b!7537202 m!8107548))

(assert (=> b!7537171 d!2310629))

(declare-fun b!7537205 () Bool)

(declare-fun res!3020513 () Bool)

(declare-fun e!4491152 () Bool)

(assert (=> b!7537205 (=> (not res!3020513) (not e!4491152))))

(assert (=> b!7537205 (= res!3020513 (= (head!15481 lt!2642114) (head!15481 knownP!30)))))

(declare-fun b!7537204 () Bool)

(declare-fun e!4491153 () Bool)

(assert (=> b!7537204 (= e!4491153 e!4491152)))

(declare-fun res!3020514 () Bool)

(assert (=> b!7537204 (=> (not res!3020514) (not e!4491152))))

(assert (=> b!7537204 (= res!3020514 (not ((_ is Nil!72650) knownP!30)))))

(declare-fun b!7537207 () Bool)

(declare-fun e!4491154 () Bool)

(assert (=> b!7537207 (= e!4491154 (>= (size!42387 knownP!30) (size!42387 lt!2642114)))))

(declare-fun d!2310633 () Bool)

(assert (=> d!2310633 e!4491154))

(declare-fun res!3020512 () Bool)

(assert (=> d!2310633 (=> res!3020512 e!4491154)))

(declare-fun lt!2642130 () Bool)

(assert (=> d!2310633 (= res!3020512 (not lt!2642130))))

(assert (=> d!2310633 (= lt!2642130 e!4491153)))

(declare-fun res!3020511 () Bool)

(assert (=> d!2310633 (=> res!3020511 e!4491153)))

(assert (=> d!2310633 (= res!3020511 ((_ is Nil!72650) lt!2642114))))

(assert (=> d!2310633 (= (isPrefix!6097 lt!2642114 knownP!30) lt!2642130)))

(declare-fun b!7537206 () Bool)

(assert (=> b!7537206 (= e!4491152 (isPrefix!6097 (tail!15030 lt!2642114) (tail!15030 knownP!30)))))

(assert (= (and d!2310633 (not res!3020511)) b!7537204))

(assert (= (and b!7537204 res!3020514) b!7537205))

(assert (= (and b!7537205 res!3020513) b!7537206))

(assert (= (and d!2310633 (not res!3020512)) b!7537207))

(assert (=> b!7537205 m!8107540))

(declare-fun m!8107550 () Bool)

(assert (=> b!7537205 m!8107550))

(assert (=> b!7537207 m!8107528))

(assert (=> b!7537207 m!8107544))

(assert (=> b!7537206 m!8107546))

(declare-fun m!8107552 () Bool)

(assert (=> b!7537206 m!8107552))

(assert (=> b!7537206 m!8107546))

(assert (=> b!7537206 m!8107552))

(declare-fun m!8107554 () Bool)

(assert (=> b!7537206 m!8107554))

(assert (=> b!7537171 d!2310633))

(declare-fun d!2310635 () Bool)

(assert (=> d!2310635 (isPrefix!6097 lt!2642114 knownP!30)))

(declare-fun lt!2642133 () Unit!166720)

(declare-fun choose!58300 (List!72774 List!72774 List!72774) Unit!166720)

(assert (=> d!2310635 (= lt!2642133 (choose!58300 knownP!30 lt!2642114 input!7874))))

(assert (=> d!2310635 (isPrefix!6097 knownP!30 input!7874)))

(assert (=> d!2310635 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!847 knownP!30 lt!2642114 input!7874) lt!2642133)))

(declare-fun bs!1939922 () Bool)

(assert (= bs!1939922 d!2310635))

(assert (=> bs!1939922 m!8107500))

(declare-fun m!8107556 () Bool)

(assert (=> bs!1939922 m!8107556))

(assert (=> bs!1939922 m!8107510))

(assert (=> b!7537171 d!2310635))

(declare-fun d!2310637 () Bool)

(declare-fun lt!2642134 () List!72774)

(assert (=> d!2310637 (= (++!17408 lt!2642114 lt!2642134) knownP!30)))

(declare-fun e!4491155 () List!72774)

(assert (=> d!2310637 (= lt!2642134 e!4491155)))

(declare-fun c!1391677 () Bool)

(assert (=> d!2310637 (= c!1391677 ((_ is Cons!72650) lt!2642114))))

(assert (=> d!2310637 (>= (size!42387 knownP!30) (size!42387 lt!2642114))))

(assert (=> d!2310637 (= (getSuffix!3577 knownP!30 lt!2642114) lt!2642134)))

(declare-fun b!7537208 () Bool)

(assert (=> b!7537208 (= e!4491155 (getSuffix!3577 (tail!15030 knownP!30) (t!387481 lt!2642114)))))

(declare-fun b!7537209 () Bool)

(assert (=> b!7537209 (= e!4491155 knownP!30)))

(assert (= (and d!2310637 c!1391677) b!7537208))

(assert (= (and d!2310637 (not c!1391677)) b!7537209))

(declare-fun m!8107558 () Bool)

(assert (=> d!2310637 m!8107558))

(assert (=> d!2310637 m!8107528))

(assert (=> d!2310637 m!8107544))

(assert (=> b!7537208 m!8107552))

(assert (=> b!7537208 m!8107552))

(declare-fun m!8107560 () Bool)

(assert (=> b!7537208 m!8107560))

(assert (=> b!7537171 d!2310637))

(declare-fun d!2310639 () Bool)

(declare-fun lt!2642137 () Regex!19891)

(assert (=> d!2310639 (validRegex!10319 lt!2642137)))

(declare-fun e!4491158 () Regex!19891)

(assert (=> d!2310639 (= lt!2642137 e!4491158)))

(declare-fun c!1391680 () Bool)

(assert (=> d!2310639 (= c!1391680 ((_ is Cons!72650) lt!2642114))))

(assert (=> d!2310639 (validRegex!10319 baseR!101)))

(assert (=> d!2310639 (= (derivative!423 baseR!101 lt!2642114) lt!2642137)))

(declare-fun b!7537214 () Bool)

(assert (=> b!7537214 (= e!4491158 (derivative!423 (derivativeStep!5681 baseR!101 (h!79098 lt!2642114)) (t!387481 lt!2642114)))))

(declare-fun b!7537215 () Bool)

(assert (=> b!7537215 (= e!4491158 baseR!101)))

(assert (= (and d!2310639 c!1391680) b!7537214))

(assert (= (and d!2310639 (not c!1391680)) b!7537215))

(declare-fun m!8107562 () Bool)

(assert (=> d!2310639 m!8107562))

(assert (=> d!2310639 m!8107518))

(declare-fun m!8107564 () Bool)

(assert (=> b!7537214 m!8107564))

(assert (=> b!7537214 m!8107564))

(declare-fun m!8107566 () Bool)

(assert (=> b!7537214 m!8107566))

(assert (=> b!7537171 d!2310639))

(declare-fun d!2310641 () Bool)

(assert (=> d!2310641 (isPrefix!6097 (++!17408 testedP!423 (Cons!72650 (head!15481 (getSuffix!3577 input!7874 testedP!423)) Nil!72650)) input!7874)))

(declare-fun lt!2642142 () Unit!166720)

(declare-fun choose!58301 (List!72774 List!72774) Unit!166720)

(assert (=> d!2310641 (= lt!2642142 (choose!58301 testedP!423 input!7874))))

(assert (=> d!2310641 (isPrefix!6097 testedP!423 input!7874)))

(assert (=> d!2310641 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1162 testedP!423 input!7874) lt!2642142)))

(declare-fun bs!1939923 () Bool)

(assert (= bs!1939923 d!2310641))

(declare-fun m!8107568 () Bool)

(assert (=> bs!1939923 m!8107568))

(declare-fun m!8107570 () Bool)

(assert (=> bs!1939923 m!8107570))

(declare-fun m!8107572 () Bool)

(assert (=> bs!1939923 m!8107572))

(assert (=> bs!1939923 m!8107516))

(assert (=> bs!1939923 m!8107484))

(assert (=> bs!1939923 m!8107570))

(assert (=> bs!1939923 m!8107484))

(assert (=> bs!1939923 m!8107486))

(assert (=> b!7537171 d!2310641))

(declare-fun d!2310643 () Bool)

(assert (=> d!2310643 (= (head!15481 (getSuffix!3577 input!7874 testedP!423)) (h!79098 (getSuffix!3577 input!7874 testedP!423)))))

(assert (=> b!7537171 d!2310643))

(declare-fun b!7537264 () Bool)

(declare-fun e!4491187 () Regex!19891)

(declare-fun call!691446 () Regex!19891)

(assert (=> b!7537264 (= e!4491187 (Union!19891 (Concat!28736 call!691446 (regTwo!40294 r!24333)) EmptyLang!19891))))

(declare-fun b!7537265 () Bool)

(declare-fun e!4491183 () Regex!19891)

(declare-fun call!691443 () Regex!19891)

(declare-fun call!691444 () Regex!19891)

(assert (=> b!7537265 (= e!4491183 (Union!19891 call!691443 call!691444))))

(declare-fun b!7537266 () Bool)

(declare-fun e!4491185 () Regex!19891)

(assert (=> b!7537266 (= e!4491185 EmptyLang!19891)))

(declare-fun b!7537267 () Bool)

(declare-fun e!4491186 () Regex!19891)

(declare-fun call!691445 () Regex!19891)

(assert (=> b!7537267 (= e!4491186 (Concat!28736 call!691445 r!24333))))

(declare-fun b!7537268 () Bool)

(assert (=> b!7537268 (= e!4491187 (Union!19891 (Concat!28736 call!691446 (regTwo!40294 r!24333)) call!691443))))

(declare-fun b!7537269 () Bool)

(declare-fun c!1391700 () Bool)

(assert (=> b!7537269 (= c!1391700 ((_ is Union!19891) r!24333))))

(declare-fun e!4491184 () Regex!19891)

(assert (=> b!7537269 (= e!4491184 e!4491183)))

(declare-fun b!7537270 () Bool)

(assert (=> b!7537270 (= e!4491184 (ite (= lt!2642117 (c!1391672 r!24333)) EmptyExpr!19891 EmptyLang!19891))))

(declare-fun b!7537271 () Bool)

(assert (=> b!7537271 (= e!4491183 e!4491186)))

(declare-fun c!1391697 () Bool)

(assert (=> b!7537271 (= c!1391697 ((_ is Star!19891) r!24333))))

(declare-fun bm!691439 () Bool)

(assert (=> bm!691439 (= call!691443 (derivativeStep!5681 (ite c!1391700 (regOne!40295 r!24333) (regTwo!40294 r!24333)) lt!2642117))))

(declare-fun bm!691440 () Bool)

(assert (=> bm!691440 (= call!691445 call!691444)))

(declare-fun b!7537272 () Bool)

(assert (=> b!7537272 (= e!4491185 e!4491184)))

(declare-fun c!1391701 () Bool)

(assert (=> b!7537272 (= c!1391701 ((_ is ElementMatch!19891) r!24333))))

(declare-fun d!2310645 () Bool)

(declare-fun lt!2642145 () Regex!19891)

(assert (=> d!2310645 (validRegex!10319 lt!2642145)))

(assert (=> d!2310645 (= lt!2642145 e!4491185)))

(declare-fun c!1391698 () Bool)

(assert (=> d!2310645 (= c!1391698 (or ((_ is EmptyExpr!19891) r!24333) ((_ is EmptyLang!19891) r!24333)))))

(assert (=> d!2310645 (validRegex!10319 r!24333)))

(assert (=> d!2310645 (= (derivativeStep!5681 r!24333 lt!2642117) lt!2642145)))

(declare-fun bm!691438 () Bool)

(assert (=> bm!691438 (= call!691446 call!691445)))

(declare-fun b!7537273 () Bool)

(declare-fun c!1391699 () Bool)

(declare-fun nullable!8668 (Regex!19891) Bool)

(assert (=> b!7537273 (= c!1391699 (nullable!8668 (regOne!40294 r!24333)))))

(assert (=> b!7537273 (= e!4491186 e!4491187)))

(declare-fun bm!691441 () Bool)

(assert (=> bm!691441 (= call!691444 (derivativeStep!5681 (ite c!1391700 (regTwo!40295 r!24333) (ite c!1391697 (reg!20220 r!24333) (regOne!40294 r!24333))) lt!2642117))))

(assert (= (and d!2310645 c!1391698) b!7537266))

(assert (= (and d!2310645 (not c!1391698)) b!7537272))

(assert (= (and b!7537272 c!1391701) b!7537270))

(assert (= (and b!7537272 (not c!1391701)) b!7537269))

(assert (= (and b!7537269 c!1391700) b!7537265))

(assert (= (and b!7537269 (not c!1391700)) b!7537271))

(assert (= (and b!7537271 c!1391697) b!7537267))

(assert (= (and b!7537271 (not c!1391697)) b!7537273))

(assert (= (and b!7537273 c!1391699) b!7537268))

(assert (= (and b!7537273 (not c!1391699)) b!7537264))

(assert (= (or b!7537268 b!7537264) bm!691438))

(assert (= (or b!7537267 bm!691438) bm!691440))

(assert (= (or b!7537265 bm!691440) bm!691441))

(assert (= (or b!7537265 b!7537268) bm!691439))

(declare-fun m!8107574 () Bool)

(assert (=> bm!691439 m!8107574))

(declare-fun m!8107576 () Bool)

(assert (=> d!2310645 m!8107576))

(assert (=> d!2310645 m!8107514))

(declare-fun m!8107578 () Bool)

(assert (=> b!7537273 m!8107578))

(declare-fun m!8107580 () Bool)

(assert (=> bm!691441 m!8107580))

(assert (=> b!7537171 d!2310645))

(declare-fun d!2310647 () Bool)

(declare-fun e!4491200 () Bool)

(assert (=> d!2310647 e!4491200))

(declare-fun res!3020543 () Bool)

(assert (=> d!2310647 (=> (not res!3020543) (not e!4491200))))

(declare-fun lt!2642149 () List!72774)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15357 (List!72774) (InoxSet C!40108))

(assert (=> d!2310647 (= res!3020543 (= (content!15357 lt!2642149) ((_ map or) (content!15357 testedP!423) (content!15357 (Cons!72650 lt!2642117 Nil!72650)))))))

(declare-fun e!4491199 () List!72774)

(assert (=> d!2310647 (= lt!2642149 e!4491199)))

(declare-fun c!1391707 () Bool)

(assert (=> d!2310647 (= c!1391707 ((_ is Nil!72650) testedP!423))))

(assert (=> d!2310647 (= (++!17408 testedP!423 (Cons!72650 lt!2642117 Nil!72650)) lt!2642149)))

(declare-fun b!7537297 () Bool)

(assert (=> b!7537297 (= e!4491199 (Cons!72650 (h!79098 testedP!423) (++!17408 (t!387481 testedP!423) (Cons!72650 lt!2642117 Nil!72650))))))

(declare-fun b!7537299 () Bool)

(assert (=> b!7537299 (= e!4491200 (or (not (= (Cons!72650 lt!2642117 Nil!72650) Nil!72650)) (= lt!2642149 testedP!423)))))

(declare-fun b!7537296 () Bool)

(assert (=> b!7537296 (= e!4491199 (Cons!72650 lt!2642117 Nil!72650))))

(declare-fun b!7537298 () Bool)

(declare-fun res!3020544 () Bool)

(assert (=> b!7537298 (=> (not res!3020544) (not e!4491200))))

(assert (=> b!7537298 (= res!3020544 (= (size!42387 lt!2642149) (+ (size!42387 testedP!423) (size!42387 (Cons!72650 lt!2642117 Nil!72650)))))))

(assert (= (and d!2310647 c!1391707) b!7537296))

(assert (= (and d!2310647 (not c!1391707)) b!7537297))

(assert (= (and d!2310647 res!3020543) b!7537298))

(assert (= (and b!7537298 res!3020544) b!7537299))

(declare-fun m!8107596 () Bool)

(assert (=> d!2310647 m!8107596))

(declare-fun m!8107598 () Bool)

(assert (=> d!2310647 m!8107598))

(declare-fun m!8107600 () Bool)

(assert (=> d!2310647 m!8107600))

(declare-fun m!8107602 () Bool)

(assert (=> b!7537297 m!8107602))

(declare-fun m!8107604 () Bool)

(assert (=> b!7537298 m!8107604))

(assert (=> b!7537298 m!8107526))

(declare-fun m!8107606 () Bool)

(assert (=> b!7537298 m!8107606))

(assert (=> b!7537171 d!2310647))

(declare-fun d!2310651 () Bool)

(declare-fun lostCauseFct!424 (Regex!19891) Bool)

(assert (=> d!2310651 (= (lostCause!1683 r!24333) (lostCauseFct!424 r!24333))))

(declare-fun bs!1939924 () Bool)

(assert (= bs!1939924 d!2310651))

(declare-fun m!8107608 () Bool)

(assert (=> bs!1939924 m!8107608))

(assert (=> b!7537182 d!2310651))

(declare-fun bm!691445 () Bool)

(declare-fun call!691450 () Bool)

(declare-fun isEmpty!41364 (List!72774) Bool)

(assert (=> bm!691445 (= call!691450 (isEmpty!41364 knownP!30))))

(declare-fun d!2310653 () Bool)

(declare-fun e!4491225 () Bool)

(assert (=> d!2310653 e!4491225))

(declare-fun c!1391718 () Bool)

(assert (=> d!2310653 (= c!1391718 ((_ is EmptyExpr!19891) baseR!101))))

(declare-fun lt!2642157 () Bool)

(declare-fun e!4491228 () Bool)

(assert (=> d!2310653 (= lt!2642157 e!4491228)))

(declare-fun c!1391719 () Bool)

(assert (=> d!2310653 (= c!1391719 (isEmpty!41364 knownP!30))))

(assert (=> d!2310653 (validRegex!10319 baseR!101)))

(assert (=> d!2310653 (= (matchR!9493 baseR!101 knownP!30) lt!2642157)))

(declare-fun b!7537342 () Bool)

(declare-fun e!4491227 () Bool)

(declare-fun e!4491229 () Bool)

(assert (=> b!7537342 (= e!4491227 e!4491229)))

(declare-fun res!3020573 () Bool)

(assert (=> b!7537342 (=> (not res!3020573) (not e!4491229))))

(assert (=> b!7537342 (= res!3020573 (not lt!2642157))))

(declare-fun b!7537343 () Bool)

(declare-fun res!3020572 () Bool)

(declare-fun e!4491226 () Bool)

(assert (=> b!7537343 (=> (not res!3020572) (not e!4491226))))

(assert (=> b!7537343 (= res!3020572 (not call!691450))))

(declare-fun b!7537344 () Bool)

(declare-fun res!3020570 () Bool)

(assert (=> b!7537344 (=> (not res!3020570) (not e!4491226))))

(assert (=> b!7537344 (= res!3020570 (isEmpty!41364 (tail!15030 knownP!30)))))

(declare-fun b!7537345 () Bool)

(declare-fun res!3020571 () Bool)

(assert (=> b!7537345 (=> res!3020571 e!4491227)))

(assert (=> b!7537345 (= res!3020571 e!4491226)))

(declare-fun res!3020569 () Bool)

(assert (=> b!7537345 (=> (not res!3020569) (not e!4491226))))

(assert (=> b!7537345 (= res!3020569 lt!2642157)))

(declare-fun b!7537346 () Bool)

(declare-fun res!3020574 () Bool)

(declare-fun e!4491224 () Bool)

(assert (=> b!7537346 (=> res!3020574 e!4491224)))

(assert (=> b!7537346 (= res!3020574 (not (isEmpty!41364 (tail!15030 knownP!30))))))

(declare-fun b!7537347 () Bool)

(assert (=> b!7537347 (= e!4491229 e!4491224)))

(declare-fun res!3020576 () Bool)

(assert (=> b!7537347 (=> res!3020576 e!4491224)))

(assert (=> b!7537347 (= res!3020576 call!691450)))

(declare-fun b!7537348 () Bool)

(declare-fun res!3020575 () Bool)

(assert (=> b!7537348 (=> res!3020575 e!4491227)))

(assert (=> b!7537348 (= res!3020575 (not ((_ is ElementMatch!19891) baseR!101)))))

(declare-fun e!4491230 () Bool)

(assert (=> b!7537348 (= e!4491230 e!4491227)))

(declare-fun b!7537349 () Bool)

(assert (=> b!7537349 (= e!4491228 (nullable!8668 baseR!101))))

(declare-fun b!7537350 () Bool)

(assert (=> b!7537350 (= e!4491225 e!4491230)))

(declare-fun c!1391717 () Bool)

(assert (=> b!7537350 (= c!1391717 ((_ is EmptyLang!19891) baseR!101))))

(declare-fun b!7537351 () Bool)

(assert (=> b!7537351 (= e!4491225 (= lt!2642157 call!691450))))

(declare-fun b!7537352 () Bool)

(assert (=> b!7537352 (= e!4491230 (not lt!2642157))))

(declare-fun b!7537353 () Bool)

(assert (=> b!7537353 (= e!4491228 (matchR!9493 (derivativeStep!5681 baseR!101 (head!15481 knownP!30)) (tail!15030 knownP!30)))))

(declare-fun b!7537354 () Bool)

(assert (=> b!7537354 (= e!4491226 (= (head!15481 knownP!30) (c!1391672 baseR!101)))))

(declare-fun b!7537355 () Bool)

(assert (=> b!7537355 (= e!4491224 (not (= (head!15481 knownP!30) (c!1391672 baseR!101))))))

(assert (= (and d!2310653 c!1391719) b!7537349))

(assert (= (and d!2310653 (not c!1391719)) b!7537353))

(assert (= (and d!2310653 c!1391718) b!7537351))

(assert (= (and d!2310653 (not c!1391718)) b!7537350))

(assert (= (and b!7537350 c!1391717) b!7537352))

(assert (= (and b!7537350 (not c!1391717)) b!7537348))

(assert (= (and b!7537348 (not res!3020575)) b!7537345))

(assert (= (and b!7537345 res!3020569) b!7537343))

(assert (= (and b!7537343 res!3020572) b!7537344))

(assert (= (and b!7537344 res!3020570) b!7537354))

(assert (= (and b!7537345 (not res!3020571)) b!7537342))

(assert (= (and b!7537342 res!3020573) b!7537347))

(assert (= (and b!7537347 (not res!3020576)) b!7537346))

(assert (= (and b!7537346 (not res!3020574)) b!7537355))

(assert (= (or b!7537351 b!7537343 b!7537347) bm!691445))

(assert (=> b!7537354 m!8107550))

(assert (=> b!7537346 m!8107552))

(assert (=> b!7537346 m!8107552))

(declare-fun m!8107616 () Bool)

(assert (=> b!7537346 m!8107616))

(assert (=> b!7537355 m!8107550))

(declare-fun m!8107618 () Bool)

(assert (=> bm!691445 m!8107618))

(assert (=> b!7537353 m!8107550))

(assert (=> b!7537353 m!8107550))

(declare-fun m!8107620 () Bool)

(assert (=> b!7537353 m!8107620))

(assert (=> b!7537353 m!8107552))

(assert (=> b!7537353 m!8107620))

(assert (=> b!7537353 m!8107552))

(declare-fun m!8107622 () Bool)

(assert (=> b!7537353 m!8107622))

(assert (=> b!7537344 m!8107552))

(assert (=> b!7537344 m!8107552))

(assert (=> b!7537344 m!8107616))

(assert (=> d!2310653 m!8107618))

(assert (=> d!2310653 m!8107518))

(declare-fun m!8107624 () Bool)

(assert (=> b!7537349 m!8107624))

(assert (=> b!7537173 d!2310653))

(declare-fun d!2310657 () Bool)

(declare-fun lt!2642161 () Int)

(assert (=> d!2310657 (>= lt!2642161 0)))

(declare-fun e!4491236 () Int)

(assert (=> d!2310657 (= lt!2642161 e!4491236)))

(declare-fun c!1391722 () Bool)

(assert (=> d!2310657 (= c!1391722 ((_ is Nil!72650) input!7874))))

(assert (=> d!2310657 (= (size!42387 input!7874) lt!2642161)))

(declare-fun b!7537364 () Bool)

(assert (=> b!7537364 (= e!4491236 0)))

(declare-fun b!7537365 () Bool)

(assert (=> b!7537365 (= e!4491236 (+ 1 (size!42387 (t!387481 input!7874))))))

(assert (= (and d!2310657 c!1391722) b!7537364))

(assert (= (and d!2310657 (not c!1391722)) b!7537365))

(declare-fun m!8107632 () Bool)

(assert (=> b!7537365 m!8107632))

(assert (=> b!7537178 d!2310657))

(declare-fun bm!691446 () Bool)

(declare-fun call!691451 () Bool)

(assert (=> bm!691446 (= call!691451 (isEmpty!41364 (getSuffix!3577 knownP!30 testedP!423)))))

(declare-fun d!2310659 () Bool)

(declare-fun e!4491238 () Bool)

(assert (=> d!2310659 e!4491238))

(declare-fun c!1391724 () Bool)

(assert (=> d!2310659 (= c!1391724 ((_ is EmptyExpr!19891) r!24333))))

(declare-fun lt!2642162 () Bool)

(declare-fun e!4491241 () Bool)

(assert (=> d!2310659 (= lt!2642162 e!4491241)))

(declare-fun c!1391725 () Bool)

(assert (=> d!2310659 (= c!1391725 (isEmpty!41364 (getSuffix!3577 knownP!30 testedP!423)))))

(assert (=> d!2310659 (validRegex!10319 r!24333)))

(assert (=> d!2310659 (= (matchR!9493 r!24333 (getSuffix!3577 knownP!30 testedP!423)) lt!2642162)))

(declare-fun b!7537366 () Bool)

(declare-fun e!4491240 () Bool)

(declare-fun e!4491242 () Bool)

(assert (=> b!7537366 (= e!4491240 e!4491242)))

(declare-fun res!3020585 () Bool)

(assert (=> b!7537366 (=> (not res!3020585) (not e!4491242))))

(assert (=> b!7537366 (= res!3020585 (not lt!2642162))))

(declare-fun b!7537367 () Bool)

(declare-fun res!3020584 () Bool)

(declare-fun e!4491239 () Bool)

(assert (=> b!7537367 (=> (not res!3020584) (not e!4491239))))

(assert (=> b!7537367 (= res!3020584 (not call!691451))))

(declare-fun b!7537368 () Bool)

(declare-fun res!3020582 () Bool)

(assert (=> b!7537368 (=> (not res!3020582) (not e!4491239))))

(assert (=> b!7537368 (= res!3020582 (isEmpty!41364 (tail!15030 (getSuffix!3577 knownP!30 testedP!423))))))

(declare-fun b!7537369 () Bool)

(declare-fun res!3020583 () Bool)

(assert (=> b!7537369 (=> res!3020583 e!4491240)))

(assert (=> b!7537369 (= res!3020583 e!4491239)))

(declare-fun res!3020581 () Bool)

(assert (=> b!7537369 (=> (not res!3020581) (not e!4491239))))

(assert (=> b!7537369 (= res!3020581 lt!2642162)))

(declare-fun b!7537370 () Bool)

(declare-fun res!3020586 () Bool)

(declare-fun e!4491237 () Bool)

(assert (=> b!7537370 (=> res!3020586 e!4491237)))

(assert (=> b!7537370 (= res!3020586 (not (isEmpty!41364 (tail!15030 (getSuffix!3577 knownP!30 testedP!423)))))))

(declare-fun b!7537371 () Bool)

(assert (=> b!7537371 (= e!4491242 e!4491237)))

(declare-fun res!3020588 () Bool)

(assert (=> b!7537371 (=> res!3020588 e!4491237)))

(assert (=> b!7537371 (= res!3020588 call!691451)))

(declare-fun b!7537372 () Bool)

(declare-fun res!3020587 () Bool)

(assert (=> b!7537372 (=> res!3020587 e!4491240)))

(assert (=> b!7537372 (= res!3020587 (not ((_ is ElementMatch!19891) r!24333)))))

(declare-fun e!4491243 () Bool)

(assert (=> b!7537372 (= e!4491243 e!4491240)))

(declare-fun b!7537373 () Bool)

(assert (=> b!7537373 (= e!4491241 (nullable!8668 r!24333))))

(declare-fun b!7537374 () Bool)

(assert (=> b!7537374 (= e!4491238 e!4491243)))

(declare-fun c!1391723 () Bool)

(assert (=> b!7537374 (= c!1391723 ((_ is EmptyLang!19891) r!24333))))

(declare-fun b!7537375 () Bool)

(assert (=> b!7537375 (= e!4491238 (= lt!2642162 call!691451))))

(declare-fun b!7537376 () Bool)

(assert (=> b!7537376 (= e!4491243 (not lt!2642162))))

(declare-fun b!7537377 () Bool)

(assert (=> b!7537377 (= e!4491241 (matchR!9493 (derivativeStep!5681 r!24333 (head!15481 (getSuffix!3577 knownP!30 testedP!423))) (tail!15030 (getSuffix!3577 knownP!30 testedP!423))))))

(declare-fun b!7537378 () Bool)

(assert (=> b!7537378 (= e!4491239 (= (head!15481 (getSuffix!3577 knownP!30 testedP!423)) (c!1391672 r!24333)))))

(declare-fun b!7537379 () Bool)

(assert (=> b!7537379 (= e!4491237 (not (= (head!15481 (getSuffix!3577 knownP!30 testedP!423)) (c!1391672 r!24333))))))

(assert (= (and d!2310659 c!1391725) b!7537373))

(assert (= (and d!2310659 (not c!1391725)) b!7537377))

(assert (= (and d!2310659 c!1391724) b!7537375))

(assert (= (and d!2310659 (not c!1391724)) b!7537374))

(assert (= (and b!7537374 c!1391723) b!7537376))

(assert (= (and b!7537374 (not c!1391723)) b!7537372))

(assert (= (and b!7537372 (not res!3020587)) b!7537369))

(assert (= (and b!7537369 res!3020581) b!7537367))

(assert (= (and b!7537367 res!3020584) b!7537368))

(assert (= (and b!7537368 res!3020582) b!7537378))

(assert (= (and b!7537369 (not res!3020583)) b!7537366))

(assert (= (and b!7537366 res!3020585) b!7537371))

(assert (= (and b!7537371 (not res!3020588)) b!7537370))

(assert (= (and b!7537370 (not res!3020586)) b!7537379))

(assert (= (or b!7537375 b!7537367 b!7537371) bm!691446))

(assert (=> b!7537378 m!8107502))

(declare-fun m!8107636 () Bool)

(assert (=> b!7537378 m!8107636))

(assert (=> b!7537370 m!8107502))

(declare-fun m!8107638 () Bool)

(assert (=> b!7537370 m!8107638))

(assert (=> b!7537370 m!8107638))

(declare-fun m!8107640 () Bool)

(assert (=> b!7537370 m!8107640))

(assert (=> b!7537379 m!8107502))

(assert (=> b!7537379 m!8107636))

(assert (=> bm!691446 m!8107502))

(declare-fun m!8107642 () Bool)

(assert (=> bm!691446 m!8107642))

(assert (=> b!7537377 m!8107502))

(assert (=> b!7537377 m!8107636))

(assert (=> b!7537377 m!8107636))

(declare-fun m!8107644 () Bool)

(assert (=> b!7537377 m!8107644))

(assert (=> b!7537377 m!8107502))

(assert (=> b!7537377 m!8107638))

(assert (=> b!7537377 m!8107644))

(assert (=> b!7537377 m!8107638))

(declare-fun m!8107646 () Bool)

(assert (=> b!7537377 m!8107646))

(assert (=> b!7537368 m!8107502))

(assert (=> b!7537368 m!8107638))

(assert (=> b!7537368 m!8107638))

(assert (=> b!7537368 m!8107640))

(assert (=> d!2310659 m!8107502))

(assert (=> d!2310659 m!8107642))

(assert (=> d!2310659 m!8107514))

(declare-fun m!8107648 () Bool)

(assert (=> b!7537373 m!8107648))

(assert (=> b!7537179 d!2310659))

(declare-fun d!2310663 () Bool)

(declare-fun lt!2642163 () List!72774)

(assert (=> d!2310663 (= (++!17408 testedP!423 lt!2642163) knownP!30)))

(declare-fun e!4491244 () List!72774)

(assert (=> d!2310663 (= lt!2642163 e!4491244)))

(declare-fun c!1391726 () Bool)

(assert (=> d!2310663 (= c!1391726 ((_ is Cons!72650) testedP!423))))

(assert (=> d!2310663 (>= (size!42387 knownP!30) (size!42387 testedP!423))))

(assert (=> d!2310663 (= (getSuffix!3577 knownP!30 testedP!423) lt!2642163)))

(declare-fun b!7537380 () Bool)

(assert (=> b!7537380 (= e!4491244 (getSuffix!3577 (tail!15030 knownP!30) (t!387481 testedP!423)))))

(declare-fun b!7537381 () Bool)

(assert (=> b!7537381 (= e!4491244 knownP!30)))

(assert (= (and d!2310663 c!1391726) b!7537380))

(assert (= (and d!2310663 (not c!1391726)) b!7537381))

(declare-fun m!8107650 () Bool)

(assert (=> d!2310663 m!8107650))

(assert (=> d!2310663 m!8107528))

(assert (=> d!2310663 m!8107526))

(assert (=> b!7537380 m!8107552))

(assert (=> b!7537380 m!8107552))

(declare-fun m!8107652 () Bool)

(assert (=> b!7537380 m!8107652))

(assert (=> b!7537179 d!2310663))

(declare-fun b!7537383 () Bool)

(declare-fun res!3020591 () Bool)

(declare-fun e!4491245 () Bool)

(assert (=> b!7537383 (=> (not res!3020591) (not e!4491245))))

(assert (=> b!7537383 (= res!3020591 (= (head!15481 testedP!423) (head!15481 knownP!30)))))

(declare-fun b!7537382 () Bool)

(declare-fun e!4491246 () Bool)

(assert (=> b!7537382 (= e!4491246 e!4491245)))

(declare-fun res!3020592 () Bool)

(assert (=> b!7537382 (=> (not res!3020592) (not e!4491245))))

(assert (=> b!7537382 (= res!3020592 (not ((_ is Nil!72650) knownP!30)))))

(declare-fun b!7537385 () Bool)

(declare-fun e!4491247 () Bool)

(assert (=> b!7537385 (= e!4491247 (>= (size!42387 knownP!30) (size!42387 testedP!423)))))

(declare-fun d!2310665 () Bool)

(assert (=> d!2310665 e!4491247))

(declare-fun res!3020590 () Bool)

(assert (=> d!2310665 (=> res!3020590 e!4491247)))

(declare-fun lt!2642164 () Bool)

(assert (=> d!2310665 (= res!3020590 (not lt!2642164))))

(assert (=> d!2310665 (= lt!2642164 e!4491246)))

(declare-fun res!3020589 () Bool)

(assert (=> d!2310665 (=> res!3020589 e!4491246)))

(assert (=> d!2310665 (= res!3020589 ((_ is Nil!72650) testedP!423))))

(assert (=> d!2310665 (= (isPrefix!6097 testedP!423 knownP!30) lt!2642164)))

(declare-fun b!7537384 () Bool)

(assert (=> b!7537384 (= e!4491245 (isPrefix!6097 (tail!15030 testedP!423) (tail!15030 knownP!30)))))

(assert (= (and d!2310665 (not res!3020589)) b!7537382))

(assert (= (and b!7537382 res!3020592) b!7537383))

(assert (= (and b!7537383 res!3020591) b!7537384))

(assert (= (and d!2310665 (not res!3020590)) b!7537385))

(declare-fun m!8107654 () Bool)

(assert (=> b!7537383 m!8107654))

(assert (=> b!7537383 m!8107550))

(assert (=> b!7537385 m!8107528))

(assert (=> b!7537385 m!8107526))

(declare-fun m!8107656 () Bool)

(assert (=> b!7537384 m!8107656))

(assert (=> b!7537384 m!8107552))

(assert (=> b!7537384 m!8107656))

(assert (=> b!7537384 m!8107552))

(declare-fun m!8107658 () Bool)

(assert (=> b!7537384 m!8107658))

(assert (=> b!7537179 d!2310665))

(declare-fun d!2310667 () Bool)

(assert (=> d!2310667 (isPrefix!6097 testedP!423 knownP!30)))

(declare-fun lt!2642165 () Unit!166720)

(assert (=> d!2310667 (= lt!2642165 (choose!58300 knownP!30 testedP!423 input!7874))))

(assert (=> d!2310667 (isPrefix!6097 knownP!30 input!7874)))

(assert (=> d!2310667 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!847 knownP!30 testedP!423 input!7874) lt!2642165)))

(declare-fun bs!1939925 () Bool)

(assert (= bs!1939925 d!2310667))

(assert (=> bs!1939925 m!8107506))

(declare-fun m!8107660 () Bool)

(assert (=> bs!1939925 m!8107660))

(assert (=> bs!1939925 m!8107510))

(assert (=> b!7537179 d!2310667))

(declare-fun d!2310669 () Bool)

(declare-fun lt!2642166 () Regex!19891)

(assert (=> d!2310669 (validRegex!10319 lt!2642166)))

(declare-fun e!4491248 () Regex!19891)

(assert (=> d!2310669 (= lt!2642166 e!4491248)))

(declare-fun c!1391727 () Bool)

(assert (=> d!2310669 (= c!1391727 ((_ is Cons!72650) testedP!423))))

(assert (=> d!2310669 (validRegex!10319 baseR!101)))

(assert (=> d!2310669 (= (derivative!423 baseR!101 testedP!423) lt!2642166)))

(declare-fun b!7537386 () Bool)

(assert (=> b!7537386 (= e!4491248 (derivative!423 (derivativeStep!5681 baseR!101 (h!79098 testedP!423)) (t!387481 testedP!423)))))

(declare-fun b!7537387 () Bool)

(assert (=> b!7537387 (= e!4491248 baseR!101)))

(assert (= (and d!2310669 c!1391727) b!7537386))

(assert (= (and d!2310669 (not c!1391727)) b!7537387))

(declare-fun m!8107662 () Bool)

(assert (=> d!2310669 m!8107662))

(assert (=> d!2310669 m!8107518))

(declare-fun m!8107664 () Bool)

(assert (=> b!7537386 m!8107664))

(assert (=> b!7537386 m!8107664))

(declare-fun m!8107666 () Bool)

(assert (=> b!7537386 m!8107666))

(assert (=> b!7537184 d!2310669))

(declare-fun b!7537389 () Bool)

(declare-fun res!3020595 () Bool)

(declare-fun e!4491249 () Bool)

(assert (=> b!7537389 (=> (not res!3020595) (not e!4491249))))

(assert (=> b!7537389 (= res!3020595 (= (head!15481 testedP!423) (head!15481 input!7874)))))

(declare-fun b!7537388 () Bool)

(declare-fun e!4491250 () Bool)

(assert (=> b!7537388 (= e!4491250 e!4491249)))

(declare-fun res!3020596 () Bool)

(assert (=> b!7537388 (=> (not res!3020596) (not e!4491249))))

(assert (=> b!7537388 (= res!3020596 (not ((_ is Nil!72650) input!7874)))))

(declare-fun b!7537391 () Bool)

(declare-fun e!4491251 () Bool)

(assert (=> b!7537391 (= e!4491251 (>= (size!42387 input!7874) (size!42387 testedP!423)))))

(declare-fun d!2310671 () Bool)

(assert (=> d!2310671 e!4491251))

(declare-fun res!3020594 () Bool)

(assert (=> d!2310671 (=> res!3020594 e!4491251)))

(declare-fun lt!2642169 () Bool)

(assert (=> d!2310671 (= res!3020594 (not lt!2642169))))

(assert (=> d!2310671 (= lt!2642169 e!4491250)))

(declare-fun res!3020593 () Bool)

(assert (=> d!2310671 (=> res!3020593 e!4491250)))

(assert (=> d!2310671 (= res!3020593 ((_ is Nil!72650) testedP!423))))

(assert (=> d!2310671 (= (isPrefix!6097 testedP!423 input!7874) lt!2642169)))

(declare-fun b!7537390 () Bool)

(assert (=> b!7537390 (= e!4491249 (isPrefix!6097 (tail!15030 testedP!423) (tail!15030 input!7874)))))

(assert (= (and d!2310671 (not res!3020593)) b!7537388))

(assert (= (and b!7537388 res!3020596) b!7537389))

(assert (= (and b!7537389 res!3020595) b!7537390))

(assert (= (and d!2310671 (not res!3020594)) b!7537391))

(assert (=> b!7537389 m!8107654))

(assert (=> b!7537389 m!8107542))

(assert (=> b!7537391 m!8107524))

(assert (=> b!7537391 m!8107526))

(assert (=> b!7537390 m!8107656))

(assert (=> b!7537390 m!8107532))

(assert (=> b!7537390 m!8107656))

(assert (=> b!7537390 m!8107532))

(declare-fun m!8107668 () Bool)

(assert (=> b!7537390 m!8107668))

(assert (=> b!7537185 d!2310671))

(declare-fun d!2310673 () Bool)

(declare-fun lt!2642170 () Int)

(assert (=> d!2310673 (>= lt!2642170 0)))

(declare-fun e!4491252 () Int)

(assert (=> d!2310673 (= lt!2642170 e!4491252)))

(declare-fun c!1391728 () Bool)

(assert (=> d!2310673 (= c!1391728 ((_ is Nil!72650) testedP!423))))

(assert (=> d!2310673 (= (size!42387 testedP!423) lt!2642170)))

(declare-fun b!7537392 () Bool)

(assert (=> b!7537392 (= e!4491252 0)))

(declare-fun b!7537393 () Bool)

(assert (=> b!7537393 (= e!4491252 (+ 1 (size!42387 (t!387481 testedP!423))))))

(assert (= (and d!2310673 c!1391728) b!7537392))

(assert (= (and d!2310673 (not c!1391728)) b!7537393))

(declare-fun m!8107670 () Bool)

(assert (=> b!7537393 m!8107670))

(assert (=> b!7537175 d!2310673))

(declare-fun d!2310675 () Bool)

(declare-fun lt!2642171 () Int)

(assert (=> d!2310675 (>= lt!2642171 0)))

(declare-fun e!4491253 () Int)

(assert (=> d!2310675 (= lt!2642171 e!4491253)))

(declare-fun c!1391729 () Bool)

(assert (=> d!2310675 (= c!1391729 ((_ is Nil!72650) knownP!30))))

(assert (=> d!2310675 (= (size!42387 knownP!30) lt!2642171)))

(declare-fun b!7537394 () Bool)

(assert (=> b!7537394 (= e!4491253 0)))

(declare-fun b!7537395 () Bool)

(assert (=> b!7537395 (= e!4491253 (+ 1 (size!42387 (t!387481 knownP!30))))))

(assert (= (and d!2310675 c!1391729) b!7537394))

(assert (= (and d!2310675 (not c!1391729)) b!7537395))

(declare-fun m!8107672 () Bool)

(assert (=> b!7537395 m!8107672))

(assert (=> b!7537175 d!2310675))

(declare-fun b!7537418 () Bool)

(declare-fun e!4491273 () Bool)

(declare-fun e!4491272 () Bool)

(assert (=> b!7537418 (= e!4491273 e!4491272)))

(declare-fun c!1391736 () Bool)

(assert (=> b!7537418 (= c!1391736 ((_ is Star!19891) baseR!101))))

(declare-fun b!7537419 () Bool)

(declare-fun e!4491270 () Bool)

(declare-fun e!4491271 () Bool)

(assert (=> b!7537419 (= e!4491270 e!4491271)))

(declare-fun res!3020609 () Bool)

(assert (=> b!7537419 (=> (not res!3020609) (not e!4491271))))

(declare-fun call!691460 () Bool)

(assert (=> b!7537419 (= res!3020609 call!691460)))

(declare-fun call!691459 () Bool)

(declare-fun bm!691453 () Bool)

(declare-fun c!1391737 () Bool)

(assert (=> bm!691453 (= call!691459 (validRegex!10319 (ite c!1391736 (reg!20220 baseR!101) (ite c!1391737 (regTwo!40295 baseR!101) (regTwo!40294 baseR!101)))))))

(declare-fun b!7537420 () Bool)

(declare-fun e!4491276 () Bool)

(assert (=> b!7537420 (= e!4491272 e!4491276)))

(assert (=> b!7537420 (= c!1391737 ((_ is Union!19891) baseR!101))))

(declare-fun b!7537421 () Bool)

(declare-fun e!4491275 () Bool)

(assert (=> b!7537421 (= e!4491272 e!4491275)))

(declare-fun res!3020610 () Bool)

(assert (=> b!7537421 (= res!3020610 (not (nullable!8668 (reg!20220 baseR!101))))))

(assert (=> b!7537421 (=> (not res!3020610) (not e!4491275))))

(declare-fun b!7537422 () Bool)

(declare-fun res!3020611 () Bool)

(declare-fun e!4491274 () Bool)

(assert (=> b!7537422 (=> (not res!3020611) (not e!4491274))))

(assert (=> b!7537422 (= res!3020611 call!691460)))

(assert (=> b!7537422 (= e!4491276 e!4491274)))

(declare-fun bm!691454 () Bool)

(declare-fun call!691458 () Bool)

(assert (=> bm!691454 (= call!691458 call!691459)))

(declare-fun b!7537423 () Bool)

(assert (=> b!7537423 (= e!4491275 call!691459)))

(declare-fun bm!691455 () Bool)

(assert (=> bm!691455 (= call!691460 (validRegex!10319 (ite c!1391737 (regOne!40295 baseR!101) (regOne!40294 baseR!101))))))

(declare-fun b!7537424 () Bool)

(declare-fun res!3020608 () Bool)

(assert (=> b!7537424 (=> res!3020608 e!4491270)))

(assert (=> b!7537424 (= res!3020608 (not ((_ is Concat!28736) baseR!101)))))

(assert (=> b!7537424 (= e!4491276 e!4491270)))

(declare-fun d!2310677 () Bool)

(declare-fun res!3020607 () Bool)

(assert (=> d!2310677 (=> res!3020607 e!4491273)))

(assert (=> d!2310677 (= res!3020607 ((_ is ElementMatch!19891) baseR!101))))

(assert (=> d!2310677 (= (validRegex!10319 baseR!101) e!4491273)))

(declare-fun b!7537425 () Bool)

(assert (=> b!7537425 (= e!4491271 call!691458)))

(declare-fun b!7537426 () Bool)

(assert (=> b!7537426 (= e!4491274 call!691458)))

(assert (= (and d!2310677 (not res!3020607)) b!7537418))

(assert (= (and b!7537418 c!1391736) b!7537421))

(assert (= (and b!7537418 (not c!1391736)) b!7537420))

(assert (= (and b!7537421 res!3020610) b!7537423))

(assert (= (and b!7537420 c!1391737) b!7537422))

(assert (= (and b!7537420 (not c!1391737)) b!7537424))

(assert (= (and b!7537422 res!3020611) b!7537426))

(assert (= (and b!7537424 (not res!3020608)) b!7537419))

(assert (= (and b!7537419 res!3020609) b!7537425))

(assert (= (or b!7537422 b!7537419) bm!691455))

(assert (= (or b!7537426 b!7537425) bm!691454))

(assert (= (or b!7537423 bm!691454) bm!691453))

(declare-fun m!8107678 () Bool)

(assert (=> bm!691453 m!8107678))

(declare-fun m!8107680 () Bool)

(assert (=> b!7537421 m!8107680))

(declare-fun m!8107682 () Bool)

(assert (=> bm!691455 m!8107682))

(assert (=> start!728996 d!2310677))

(declare-fun b!7537429 () Bool)

(declare-fun e!4491281 () Bool)

(declare-fun e!4491280 () Bool)

(assert (=> b!7537429 (= e!4491281 e!4491280)))

(declare-fun c!1391739 () Bool)

(assert (=> b!7537429 (= c!1391739 ((_ is Star!19891) r!24333))))

(declare-fun b!7537430 () Bool)

(declare-fun e!4491278 () Bool)

(declare-fun e!4491279 () Bool)

(assert (=> b!7537430 (= e!4491278 e!4491279)))

(declare-fun res!3020614 () Bool)

(assert (=> b!7537430 (=> (not res!3020614) (not e!4491279))))

(declare-fun call!691463 () Bool)

(assert (=> b!7537430 (= res!3020614 call!691463)))

(declare-fun call!691462 () Bool)

(declare-fun c!1391740 () Bool)

(declare-fun bm!691456 () Bool)

(assert (=> bm!691456 (= call!691462 (validRegex!10319 (ite c!1391739 (reg!20220 r!24333) (ite c!1391740 (regTwo!40295 r!24333) (regTwo!40294 r!24333)))))))

(declare-fun b!7537431 () Bool)

(declare-fun e!4491284 () Bool)

(assert (=> b!7537431 (= e!4491280 e!4491284)))

(assert (=> b!7537431 (= c!1391740 ((_ is Union!19891) r!24333))))

(declare-fun b!7537432 () Bool)

(declare-fun e!4491283 () Bool)

(assert (=> b!7537432 (= e!4491280 e!4491283)))

(declare-fun res!3020615 () Bool)

(assert (=> b!7537432 (= res!3020615 (not (nullable!8668 (reg!20220 r!24333))))))

(assert (=> b!7537432 (=> (not res!3020615) (not e!4491283))))

(declare-fun b!7537433 () Bool)

(declare-fun res!3020616 () Bool)

(declare-fun e!4491282 () Bool)

(assert (=> b!7537433 (=> (not res!3020616) (not e!4491282))))

(assert (=> b!7537433 (= res!3020616 call!691463)))

(assert (=> b!7537433 (= e!4491284 e!4491282)))

(declare-fun bm!691457 () Bool)

(declare-fun call!691461 () Bool)

(assert (=> bm!691457 (= call!691461 call!691462)))

(declare-fun b!7537434 () Bool)

(assert (=> b!7537434 (= e!4491283 call!691462)))

(declare-fun bm!691458 () Bool)

(assert (=> bm!691458 (= call!691463 (validRegex!10319 (ite c!1391740 (regOne!40295 r!24333) (regOne!40294 r!24333))))))

(declare-fun b!7537435 () Bool)

(declare-fun res!3020613 () Bool)

(assert (=> b!7537435 (=> res!3020613 e!4491278)))

(assert (=> b!7537435 (= res!3020613 (not ((_ is Concat!28736) r!24333)))))

(assert (=> b!7537435 (= e!4491284 e!4491278)))

(declare-fun d!2310683 () Bool)

(declare-fun res!3020612 () Bool)

(assert (=> d!2310683 (=> res!3020612 e!4491281)))

(assert (=> d!2310683 (= res!3020612 ((_ is ElementMatch!19891) r!24333))))

(assert (=> d!2310683 (= (validRegex!10319 r!24333) e!4491281)))

(declare-fun b!7537436 () Bool)

(assert (=> b!7537436 (= e!4491279 call!691461)))

(declare-fun b!7537437 () Bool)

(assert (=> b!7537437 (= e!4491282 call!691461)))

(assert (= (and d!2310683 (not res!3020612)) b!7537429))

(assert (= (and b!7537429 c!1391739) b!7537432))

(assert (= (and b!7537429 (not c!1391739)) b!7537431))

(assert (= (and b!7537432 res!3020615) b!7537434))

(assert (= (and b!7537431 c!1391740) b!7537433))

(assert (= (and b!7537431 (not c!1391740)) b!7537435))

(assert (= (and b!7537433 res!3020616) b!7537437))

(assert (= (and b!7537435 (not res!3020613)) b!7537430))

(assert (= (and b!7537430 res!3020614) b!7537436))

(assert (= (or b!7537433 b!7537430) bm!691458))

(assert (= (or b!7537437 b!7537436) bm!691457))

(assert (= (or b!7537434 bm!691457) bm!691456))

(declare-fun m!8107688 () Bool)

(assert (=> bm!691456 m!8107688))

(declare-fun m!8107690 () Bool)

(assert (=> b!7537432 m!8107690))

(declare-fun m!8107692 () Bool)

(assert (=> bm!691458 m!8107692))

(assert (=> b!7537165 d!2310683))

(declare-fun b!7537441 () Bool)

(declare-fun res!3020619 () Bool)

(declare-fun e!4491286 () Bool)

(assert (=> b!7537441 (=> (not res!3020619) (not e!4491286))))

(assert (=> b!7537441 (= res!3020619 (= (head!15481 knownP!30) (head!15481 input!7874)))))

(declare-fun b!7537440 () Bool)

(declare-fun e!4491287 () Bool)

(assert (=> b!7537440 (= e!4491287 e!4491286)))

(declare-fun res!3020620 () Bool)

(assert (=> b!7537440 (=> (not res!3020620) (not e!4491286))))

(assert (=> b!7537440 (= res!3020620 (not ((_ is Nil!72650) input!7874)))))

(declare-fun b!7537443 () Bool)

(declare-fun e!4491288 () Bool)

(assert (=> b!7537443 (= e!4491288 (>= (size!42387 input!7874) (size!42387 knownP!30)))))

(declare-fun d!2310689 () Bool)

(assert (=> d!2310689 e!4491288))

(declare-fun res!3020618 () Bool)

(assert (=> d!2310689 (=> res!3020618 e!4491288)))

(declare-fun lt!2642177 () Bool)

(assert (=> d!2310689 (= res!3020618 (not lt!2642177))))

(assert (=> d!2310689 (= lt!2642177 e!4491287)))

(declare-fun res!3020617 () Bool)

(assert (=> d!2310689 (=> res!3020617 e!4491287)))

(assert (=> d!2310689 (= res!3020617 ((_ is Nil!72650) knownP!30))))

(assert (=> d!2310689 (= (isPrefix!6097 knownP!30 input!7874) lt!2642177)))

(declare-fun b!7537442 () Bool)

(assert (=> b!7537442 (= e!4491286 (isPrefix!6097 (tail!15030 knownP!30) (tail!15030 input!7874)))))

(assert (= (and d!2310689 (not res!3020617)) b!7537440))

(assert (= (and b!7537440 res!3020620) b!7537441))

(assert (= (and b!7537441 res!3020619) b!7537442))

(assert (= (and d!2310689 (not res!3020618)) b!7537443))

(assert (=> b!7537441 m!8107550))

(assert (=> b!7537441 m!8107542))

(assert (=> b!7537443 m!8107524))

(assert (=> b!7537443 m!8107528))

(assert (=> b!7537442 m!8107552))

(assert (=> b!7537442 m!8107532))

(assert (=> b!7537442 m!8107552))

(assert (=> b!7537442 m!8107532))

(declare-fun m!8107694 () Bool)

(assert (=> b!7537442 m!8107694))

(assert (=> b!7537170 d!2310689))

(declare-fun e!4491291 () Bool)

(assert (=> b!7537176 (= tp!2192240 e!4491291)))

(declare-fun b!7537457 () Bool)

(declare-fun tp!2192257 () Bool)

(declare-fun tp!2192254 () Bool)

(assert (=> b!7537457 (= e!4491291 (and tp!2192257 tp!2192254))))

(declare-fun b!7537454 () Bool)

(assert (=> b!7537454 (= e!4491291 tp_is_empty!50137)))

(declare-fun b!7537456 () Bool)

(declare-fun tp!2192256 () Bool)

(assert (=> b!7537456 (= e!4491291 tp!2192256)))

(declare-fun b!7537455 () Bool)

(declare-fun tp!2192258 () Bool)

(declare-fun tp!2192255 () Bool)

(assert (=> b!7537455 (= e!4491291 (and tp!2192258 tp!2192255))))

(assert (= (and b!7537176 ((_ is ElementMatch!19891) (regOne!40294 r!24333))) b!7537454))

(assert (= (and b!7537176 ((_ is Concat!28736) (regOne!40294 r!24333))) b!7537455))

(assert (= (and b!7537176 ((_ is Star!19891) (regOne!40294 r!24333))) b!7537456))

(assert (= (and b!7537176 ((_ is Union!19891) (regOne!40294 r!24333))) b!7537457))

(declare-fun e!4491292 () Bool)

(assert (=> b!7537176 (= tp!2192239 e!4491292)))

(declare-fun b!7537461 () Bool)

(declare-fun tp!2192262 () Bool)

(declare-fun tp!2192259 () Bool)

(assert (=> b!7537461 (= e!4491292 (and tp!2192262 tp!2192259))))

(declare-fun b!7537458 () Bool)

(assert (=> b!7537458 (= e!4491292 tp_is_empty!50137)))

(declare-fun b!7537460 () Bool)

(declare-fun tp!2192261 () Bool)

(assert (=> b!7537460 (= e!4491292 tp!2192261)))

(declare-fun b!7537459 () Bool)

(declare-fun tp!2192263 () Bool)

(declare-fun tp!2192260 () Bool)

(assert (=> b!7537459 (= e!4491292 (and tp!2192263 tp!2192260))))

(assert (= (and b!7537176 ((_ is ElementMatch!19891) (regTwo!40294 r!24333))) b!7537458))

(assert (= (and b!7537176 ((_ is Concat!28736) (regTwo!40294 r!24333))) b!7537459))

(assert (= (and b!7537176 ((_ is Star!19891) (regTwo!40294 r!24333))) b!7537460))

(assert (= (and b!7537176 ((_ is Union!19891) (regTwo!40294 r!24333))) b!7537461))

(declare-fun e!4491293 () Bool)

(assert (=> b!7537177 (= tp!2192231 e!4491293)))

(declare-fun b!7537465 () Bool)

(declare-fun tp!2192267 () Bool)

(declare-fun tp!2192264 () Bool)

(assert (=> b!7537465 (= e!4491293 (and tp!2192267 tp!2192264))))

(declare-fun b!7537462 () Bool)

(assert (=> b!7537462 (= e!4491293 tp_is_empty!50137)))

(declare-fun b!7537464 () Bool)

(declare-fun tp!2192266 () Bool)

(assert (=> b!7537464 (= e!4491293 tp!2192266)))

(declare-fun b!7537463 () Bool)

(declare-fun tp!2192268 () Bool)

(declare-fun tp!2192265 () Bool)

(assert (=> b!7537463 (= e!4491293 (and tp!2192268 tp!2192265))))

(assert (= (and b!7537177 ((_ is ElementMatch!19891) (regOne!40295 r!24333))) b!7537462))

(assert (= (and b!7537177 ((_ is Concat!28736) (regOne!40295 r!24333))) b!7537463))

(assert (= (and b!7537177 ((_ is Star!19891) (regOne!40295 r!24333))) b!7537464))

(assert (= (and b!7537177 ((_ is Union!19891) (regOne!40295 r!24333))) b!7537465))

(declare-fun e!4491294 () Bool)

(assert (=> b!7537177 (= tp!2192236 e!4491294)))

(declare-fun b!7537469 () Bool)

(declare-fun tp!2192272 () Bool)

(declare-fun tp!2192269 () Bool)

(assert (=> b!7537469 (= e!4491294 (and tp!2192272 tp!2192269))))

(declare-fun b!7537466 () Bool)

(assert (=> b!7537466 (= e!4491294 tp_is_empty!50137)))

(declare-fun b!7537468 () Bool)

(declare-fun tp!2192271 () Bool)

(assert (=> b!7537468 (= e!4491294 tp!2192271)))

(declare-fun b!7537467 () Bool)

(declare-fun tp!2192273 () Bool)

(declare-fun tp!2192270 () Bool)

(assert (=> b!7537467 (= e!4491294 (and tp!2192273 tp!2192270))))

(assert (= (and b!7537177 ((_ is ElementMatch!19891) (regTwo!40295 r!24333))) b!7537466))

(assert (= (and b!7537177 ((_ is Concat!28736) (regTwo!40295 r!24333))) b!7537467))

(assert (= (and b!7537177 ((_ is Star!19891) (regTwo!40295 r!24333))) b!7537468))

(assert (= (and b!7537177 ((_ is Union!19891) (regTwo!40295 r!24333))) b!7537469))

(declare-fun e!4491295 () Bool)

(assert (=> b!7537166 (= tp!2192241 e!4491295)))

(declare-fun b!7537473 () Bool)

(declare-fun tp!2192277 () Bool)

(declare-fun tp!2192274 () Bool)

(assert (=> b!7537473 (= e!4491295 (and tp!2192277 tp!2192274))))

(declare-fun b!7537470 () Bool)

(assert (=> b!7537470 (= e!4491295 tp_is_empty!50137)))

(declare-fun b!7537472 () Bool)

(declare-fun tp!2192276 () Bool)

(assert (=> b!7537472 (= e!4491295 tp!2192276)))

(declare-fun b!7537471 () Bool)

(declare-fun tp!2192278 () Bool)

(declare-fun tp!2192275 () Bool)

(assert (=> b!7537471 (= e!4491295 (and tp!2192278 tp!2192275))))

(assert (= (and b!7537166 ((_ is ElementMatch!19891) (regOne!40294 baseR!101))) b!7537470))

(assert (= (and b!7537166 ((_ is Concat!28736) (regOne!40294 baseR!101))) b!7537471))

(assert (= (and b!7537166 ((_ is Star!19891) (regOne!40294 baseR!101))) b!7537472))

(assert (= (and b!7537166 ((_ is Union!19891) (regOne!40294 baseR!101))) b!7537473))

(declare-fun e!4491296 () Bool)

(assert (=> b!7537166 (= tp!2192233 e!4491296)))

(declare-fun b!7537477 () Bool)

(declare-fun tp!2192282 () Bool)

(declare-fun tp!2192279 () Bool)

(assert (=> b!7537477 (= e!4491296 (and tp!2192282 tp!2192279))))

(declare-fun b!7537474 () Bool)

(assert (=> b!7537474 (= e!4491296 tp_is_empty!50137)))

(declare-fun b!7537476 () Bool)

(declare-fun tp!2192281 () Bool)

(assert (=> b!7537476 (= e!4491296 tp!2192281)))

(declare-fun b!7537475 () Bool)

(declare-fun tp!2192283 () Bool)

(declare-fun tp!2192280 () Bool)

(assert (=> b!7537475 (= e!4491296 (and tp!2192283 tp!2192280))))

(assert (= (and b!7537166 ((_ is ElementMatch!19891) (regTwo!40294 baseR!101))) b!7537474))

(assert (= (and b!7537166 ((_ is Concat!28736) (regTwo!40294 baseR!101))) b!7537475))

(assert (= (and b!7537166 ((_ is Star!19891) (regTwo!40294 baseR!101))) b!7537476))

(assert (= (and b!7537166 ((_ is Union!19891) (regTwo!40294 baseR!101))) b!7537477))

(declare-fun b!7537482 () Bool)

(declare-fun e!4491299 () Bool)

(declare-fun tp!2192286 () Bool)

(assert (=> b!7537482 (= e!4491299 (and tp_is_empty!50137 tp!2192286))))

(assert (=> b!7537167 (= tp!2192237 e!4491299)))

(assert (= (and b!7537167 ((_ is Cons!72650) (t!387481 knownP!30))) b!7537482))

(declare-fun e!4491300 () Bool)

(assert (=> b!7537172 (= tp!2192242 e!4491300)))

(declare-fun b!7537486 () Bool)

(declare-fun tp!2192290 () Bool)

(declare-fun tp!2192287 () Bool)

(assert (=> b!7537486 (= e!4491300 (and tp!2192290 tp!2192287))))

(declare-fun b!7537483 () Bool)

(assert (=> b!7537483 (= e!4491300 tp_is_empty!50137)))

(declare-fun b!7537485 () Bool)

(declare-fun tp!2192289 () Bool)

(assert (=> b!7537485 (= e!4491300 tp!2192289)))

(declare-fun b!7537484 () Bool)

(declare-fun tp!2192291 () Bool)

(declare-fun tp!2192288 () Bool)

(assert (=> b!7537484 (= e!4491300 (and tp!2192291 tp!2192288))))

(assert (= (and b!7537172 ((_ is ElementMatch!19891) (reg!20220 baseR!101))) b!7537483))

(assert (= (and b!7537172 ((_ is Concat!28736) (reg!20220 baseR!101))) b!7537484))

(assert (= (and b!7537172 ((_ is Star!19891) (reg!20220 baseR!101))) b!7537485))

(assert (= (and b!7537172 ((_ is Union!19891) (reg!20220 baseR!101))) b!7537486))

(declare-fun e!4491301 () Bool)

(assert (=> b!7537168 (= tp!2192235 e!4491301)))

(declare-fun b!7537490 () Bool)

(declare-fun tp!2192295 () Bool)

(declare-fun tp!2192292 () Bool)

(assert (=> b!7537490 (= e!4491301 (and tp!2192295 tp!2192292))))

(declare-fun b!7537487 () Bool)

(assert (=> b!7537487 (= e!4491301 tp_is_empty!50137)))

(declare-fun b!7537489 () Bool)

(declare-fun tp!2192294 () Bool)

(assert (=> b!7537489 (= e!4491301 tp!2192294)))

(declare-fun b!7537488 () Bool)

(declare-fun tp!2192296 () Bool)

(declare-fun tp!2192293 () Bool)

(assert (=> b!7537488 (= e!4491301 (and tp!2192296 tp!2192293))))

(assert (= (and b!7537168 ((_ is ElementMatch!19891) (reg!20220 r!24333))) b!7537487))

(assert (= (and b!7537168 ((_ is Concat!28736) (reg!20220 r!24333))) b!7537488))

(assert (= (and b!7537168 ((_ is Star!19891) (reg!20220 r!24333))) b!7537489))

(assert (= (and b!7537168 ((_ is Union!19891) (reg!20220 r!24333))) b!7537490))

(declare-fun e!4491302 () Bool)

(assert (=> b!7537174 (= tp!2192238 e!4491302)))

(declare-fun b!7537494 () Bool)

(declare-fun tp!2192300 () Bool)

(declare-fun tp!2192297 () Bool)

(assert (=> b!7537494 (= e!4491302 (and tp!2192300 tp!2192297))))

(declare-fun b!7537491 () Bool)

(assert (=> b!7537491 (= e!4491302 tp_is_empty!50137)))

(declare-fun b!7537493 () Bool)

(declare-fun tp!2192299 () Bool)

(assert (=> b!7537493 (= e!4491302 tp!2192299)))

(declare-fun b!7537492 () Bool)

(declare-fun tp!2192301 () Bool)

(declare-fun tp!2192298 () Bool)

(assert (=> b!7537492 (= e!4491302 (and tp!2192301 tp!2192298))))

(assert (= (and b!7537174 ((_ is ElementMatch!19891) (regOne!40295 baseR!101))) b!7537491))

(assert (= (and b!7537174 ((_ is Concat!28736) (regOne!40295 baseR!101))) b!7537492))

(assert (= (and b!7537174 ((_ is Star!19891) (regOne!40295 baseR!101))) b!7537493))

(assert (= (and b!7537174 ((_ is Union!19891) (regOne!40295 baseR!101))) b!7537494))

(declare-fun e!4491303 () Bool)

(assert (=> b!7537174 (= tp!2192234 e!4491303)))

(declare-fun b!7537498 () Bool)

(declare-fun tp!2192305 () Bool)

(declare-fun tp!2192302 () Bool)

(assert (=> b!7537498 (= e!4491303 (and tp!2192305 tp!2192302))))

(declare-fun b!7537495 () Bool)

(assert (=> b!7537495 (= e!4491303 tp_is_empty!50137)))

(declare-fun b!7537497 () Bool)

(declare-fun tp!2192304 () Bool)

(assert (=> b!7537497 (= e!4491303 tp!2192304)))

(declare-fun b!7537496 () Bool)

(declare-fun tp!2192306 () Bool)

(declare-fun tp!2192303 () Bool)

(assert (=> b!7537496 (= e!4491303 (and tp!2192306 tp!2192303))))

(assert (= (and b!7537174 ((_ is ElementMatch!19891) (regTwo!40295 baseR!101))) b!7537495))

(assert (= (and b!7537174 ((_ is Concat!28736) (regTwo!40295 baseR!101))) b!7537496))

(assert (= (and b!7537174 ((_ is Star!19891) (regTwo!40295 baseR!101))) b!7537497))

(assert (= (and b!7537174 ((_ is Union!19891) (regTwo!40295 baseR!101))) b!7537498))

(declare-fun b!7537499 () Bool)

(declare-fun e!4491304 () Bool)

(declare-fun tp!2192307 () Bool)

(assert (=> b!7537499 (= e!4491304 (and tp_is_empty!50137 tp!2192307))))

(assert (=> b!7537180 (= tp!2192232 e!4491304)))

(assert (= (and b!7537180 ((_ is Cons!72650) (t!387481 testedP!423))) b!7537499))

(declare-fun b!7537500 () Bool)

(declare-fun e!4491305 () Bool)

(declare-fun tp!2192308 () Bool)

(assert (=> b!7537500 (= e!4491305 (and tp_is_empty!50137 tp!2192308))))

(assert (=> b!7537181 (= tp!2192243 e!4491305)))

(assert (= (and b!7537181 ((_ is Cons!72650) (t!387481 input!7874))) b!7537500))

(check-sat (not bm!691446) (not b!7537386) (not b!7537490) (not b!7537499) (not bm!691455) (not b!7537353) (not b!7537349) (not d!2310637) (not b!7537354) (not b!7537370) (not b!7537488) (not b!7537496) (not d!2310641) (not b!7537421) (not b!7537384) (not b!7537456) (not b!7537468) (not b!7537461) (not b!7537432) (not b!7537482) (not d!2310647) (not b!7537190) (not bm!691445) (not b!7537385) (not bm!691441) (not d!2310663) (not d!2310639) (not bm!691453) (not bm!691439) (not b!7537467) (not b!7537203) (not b!7537473) (not b!7537202) (not b!7537469) (not d!2310635) (not b!7537494) tp_is_empty!50137 (not b!7537201) (not b!7537205) (not b!7537346) (not b!7537476) (not b!7537344) (not b!7537457) (not b!7537492) (not b!7537441) (not b!7537486) (not d!2310659) (not b!7537390) (not b!7537497) (not b!7537377) (not b!7537493) (not b!7537472) (not d!2310669) (not b!7537477) (not d!2310645) (not b!7537500) (not b!7537475) (not b!7537383) (not b!7537485) (not bm!691456) (not b!7537365) (not b!7537378) (not b!7537455) (not b!7537373) (not b!7537463) (not b!7537380) (not b!7537393) (not d!2310627) (not b!7537273) (not b!7537368) (not b!7537489) (not d!2310653) (not b!7537379) (not bm!691458) (not b!7537459) (not b!7537297) (not b!7537471) (not b!7537389) (not b!7537460) (not b!7537464) (not b!7537391) (not b!7537484) (not b!7537498) (not d!2310667) (not b!7537465) (not b!7537443) (not d!2310651) (not b!7537206) (not b!7537442) (not b!7537355) (not d!2310625) (not b!7537208) (not b!7537214) (not b!7537207) (not b!7537395) (not b!7537298))
(check-sat)
