; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!730166 () Bool)

(assert start!730166)

(declare-fun b!7551334 () Bool)

(declare-fun e!4498116 () Bool)

(declare-fun tp!2196806 () Bool)

(declare-fun tp!2196802 () Bool)

(assert (=> b!7551334 (= e!4498116 (and tp!2196806 tp!2196802))))

(declare-fun b!7551335 () Bool)

(declare-fun res!3026711 () Bool)

(declare-fun e!4498114 () Bool)

(assert (=> b!7551335 (=> (not res!3026711) (not e!4498114))))

(declare-datatypes ((C!40222 0))(
  ( (C!40223 (val!30551 Int)) )
))
(declare-datatypes ((List!72831 0))(
  ( (Nil!72707) (Cons!72707 (h!79155 C!40222) (t!387552 List!72831)) )
))
(declare-fun testedP!423 () List!72831)

(declare-fun input!7874 () List!72831)

(declare-fun isPrefix!6154 (List!72831 List!72831) Bool)

(assert (=> b!7551335 (= res!3026711 (isPrefix!6154 testedP!423 input!7874))))

(declare-fun b!7551337 () Bool)

(declare-fun res!3026710 () Bool)

(declare-fun e!4498118 () Bool)

(assert (=> b!7551337 (=> res!3026710 e!4498118)))

(declare-fun lt!2646968 () Int)

(declare-fun size!42444 (List!72831) Int)

(assert (=> b!7551337 (= res!3026710 (>= lt!2646968 (size!42444 input!7874)))))

(declare-fun b!7551338 () Bool)

(declare-fun e!4498119 () Bool)

(assert (=> b!7551338 (= e!4498118 e!4498119)))

(declare-fun res!3026713 () Bool)

(assert (=> b!7551338 (=> res!3026713 e!4498119)))

(declare-fun lt!2646957 () List!72831)

(declare-fun knownP!30 () List!72831)

(declare-fun ++!17464 (List!72831 List!72831) List!72831)

(assert (=> b!7551338 (= res!3026713 (not (= (++!17464 knownP!30 lt!2646957) input!7874)))))

(declare-fun getSuffix!3634 (List!72831 List!72831) List!72831)

(assert (=> b!7551338 (= lt!2646957 (getSuffix!3634 input!7874 knownP!30))))

(declare-fun lt!2646966 () List!72831)

(declare-fun lt!2646952 () List!72831)

(assert (=> b!7551338 (= lt!2646966 (getSuffix!3634 knownP!30 lt!2646952))))

(assert (=> b!7551338 (isPrefix!6154 lt!2646952 knownP!30)))

(declare-datatypes ((Unit!166834 0))(
  ( (Unit!166835) )
))
(declare-fun lt!2646953 () Unit!166834)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!904 (List!72831 List!72831 List!72831) Unit!166834)

(assert (=> b!7551338 (= lt!2646953 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!904 knownP!30 lt!2646952 input!7874))))

(declare-datatypes ((Regex!19948 0))(
  ( (ElementMatch!19948 (c!1393775 C!40222)) (Concat!28793 (regOne!40408 Regex!19948) (regTwo!40408 Regex!19948)) (EmptyExpr!19948) (Star!19948 (reg!20277 Regex!19948)) (EmptyLang!19948) (Union!19948 (regOne!40409 Regex!19948) (regTwo!40409 Regex!19948)) )
))
(declare-fun baseR!101 () Regex!19948)

(declare-fun lt!2646964 () C!40222)

(declare-fun r!24333 () Regex!19948)

(declare-fun derivative!480 (Regex!19948 List!72831) Regex!19948)

(declare-fun derivativeStep!5738 (Regex!19948 C!40222) Regex!19948)

(assert (=> b!7551338 (= (derivative!480 baseR!101 lt!2646952) (derivativeStep!5738 r!24333 lt!2646964))))

(declare-fun lt!2646963 () Unit!166834)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!182 (Regex!19948 Regex!19948 List!72831 C!40222) Unit!166834)

(assert (=> b!7551338 (= lt!2646963 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!182 baseR!101 r!24333 testedP!423 lt!2646964))))

(assert (=> b!7551338 (isPrefix!6154 lt!2646952 input!7874)))

(declare-fun lt!2646965 () Unit!166834)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1215 (List!72831 List!72831) Unit!166834)

(assert (=> b!7551338 (= lt!2646965 (lemmaAddHeadSuffixToPrefixStillPrefix!1215 testedP!423 input!7874))))

(assert (=> b!7551338 (= lt!2646952 (++!17464 testedP!423 (Cons!72707 lt!2646964 Nil!72707)))))

(declare-fun lt!2646961 () List!72831)

(declare-fun head!15538 (List!72831) C!40222)

(assert (=> b!7551338 (= lt!2646964 (head!15538 lt!2646961))))

(assert (=> b!7551338 (= lt!2646961 (getSuffix!3634 input!7874 testedP!423))))

(declare-fun b!7551339 () Bool)

(declare-fun e!4498110 () Bool)

(declare-fun tp!2196794 () Bool)

(declare-fun tp!2196796 () Bool)

(assert (=> b!7551339 (= e!4498110 (and tp!2196794 tp!2196796))))

(declare-fun b!7551340 () Bool)

(declare-fun tp_is_empty!50251 () Bool)

(assert (=> b!7551340 (= e!4498116 tp_is_empty!50251)))

(declare-fun b!7551341 () Bool)

(declare-fun e!4498113 () Bool)

(assert (=> b!7551341 (= e!4498113 (= (++!17464 lt!2646952 lt!2646966) knownP!30))))

(declare-fun b!7551342 () Bool)

(declare-fun res!3026706 () Bool)

(assert (=> b!7551342 (=> res!3026706 e!4498118)))

(declare-fun lostCause!1740 (Regex!19948) Bool)

(assert (=> b!7551342 (= res!3026706 (lostCause!1740 r!24333))))

(declare-fun b!7551343 () Bool)

(declare-fun e!4498109 () Bool)

(assert (=> b!7551343 (= e!4498109 e!4498113)))

(declare-fun res!3026702 () Bool)

(assert (=> b!7551343 (=> res!3026702 e!4498113)))

(declare-fun lt!2646967 () List!72831)

(assert (=> b!7551343 (= res!3026702 (not (= (head!15538 lt!2646967) lt!2646964)))))

(declare-fun lt!2646951 () List!72831)

(assert (=> b!7551343 (= lt!2646951 lt!2646961)))

(declare-fun lt!2646956 () Unit!166834)

(declare-fun lemmaSamePrefixThenSameSuffix!2870 (List!72831 List!72831 List!72831 List!72831 List!72831) Unit!166834)

(assert (=> b!7551343 (= lt!2646956 (lemmaSamePrefixThenSameSuffix!2870 testedP!423 lt!2646951 testedP!423 lt!2646961 input!7874))))

(declare-fun b!7551344 () Bool)

(declare-fun e!4498111 () Bool)

(assert (=> b!7551344 (= e!4498114 e!4498111)))

(declare-fun res!3026712 () Bool)

(assert (=> b!7551344 (=> (not res!3026712) (not e!4498111))))

(declare-fun lt!2646958 () Int)

(assert (=> b!7551344 (= res!3026712 (>= lt!2646958 lt!2646968))))

(assert (=> b!7551344 (= lt!2646968 (size!42444 testedP!423))))

(assert (=> b!7551344 (= lt!2646958 (size!42444 knownP!30))))

(declare-fun b!7551345 () Bool)

(declare-fun res!3026709 () Bool)

(assert (=> b!7551345 (=> (not res!3026709) (not e!4498111))))

(declare-fun matchR!9550 (Regex!19948 List!72831) Bool)

(assert (=> b!7551345 (= res!3026709 (matchR!9550 baseR!101 knownP!30))))

(declare-fun b!7551346 () Bool)

(declare-fun res!3026714 () Bool)

(assert (=> b!7551346 (=> res!3026714 e!4498118)))

(assert (=> b!7551346 (= res!3026714 (= lt!2646968 lt!2646958))))

(declare-fun b!7551347 () Bool)

(declare-fun e!4498115 () Bool)

(declare-fun tp!2196797 () Bool)

(assert (=> b!7551347 (= e!4498115 (and tp_is_empty!50251 tp!2196797))))

(declare-fun b!7551336 () Bool)

(declare-fun tp!2196805 () Bool)

(declare-fun tp!2196798 () Bool)

(assert (=> b!7551336 (= e!4498110 (and tp!2196805 tp!2196798))))

(declare-fun res!3026705 () Bool)

(assert (=> start!730166 (=> (not res!3026705) (not e!4498114))))

(declare-fun validRegex!10376 (Regex!19948) Bool)

(assert (=> start!730166 (= res!3026705 (validRegex!10376 baseR!101))))

(assert (=> start!730166 e!4498114))

(assert (=> start!730166 e!4498110))

(assert (=> start!730166 e!4498115))

(declare-fun e!4498117 () Bool)

(assert (=> start!730166 e!4498117))

(declare-fun e!4498112 () Bool)

(assert (=> start!730166 e!4498112))

(assert (=> start!730166 e!4498116))

(declare-fun b!7551348 () Bool)

(declare-fun tp!2196804 () Bool)

(assert (=> b!7551348 (= e!4498116 tp!2196804)))

(declare-fun b!7551349 () Bool)

(assert (=> b!7551349 (= e!4498110 tp_is_empty!50251)))

(declare-fun b!7551350 () Bool)

(declare-fun e!4498108 () Bool)

(assert (=> b!7551350 (= e!4498119 e!4498108)))

(declare-fun res!3026701 () Bool)

(assert (=> b!7551350 (=> res!3026701 e!4498108)))

(declare-fun lt!2646955 () List!72831)

(assert (=> b!7551350 (= res!3026701 (not (= lt!2646955 input!7874)))))

(declare-fun lt!2646959 () List!72831)

(assert (=> b!7551350 (= lt!2646955 (++!17464 lt!2646959 lt!2646957))))

(assert (=> b!7551350 (= lt!2646959 (++!17464 testedP!423 lt!2646967))))

(declare-fun b!7551351 () Bool)

(declare-fun tp!2196801 () Bool)

(assert (=> b!7551351 (= e!4498117 (and tp_is_empty!50251 tp!2196801))))

(declare-fun b!7551352 () Bool)

(declare-fun tp!2196799 () Bool)

(declare-fun tp!2196800 () Bool)

(assert (=> b!7551352 (= e!4498116 (and tp!2196799 tp!2196800))))

(declare-fun b!7551353 () Bool)

(declare-fun tp!2196803 () Bool)

(assert (=> b!7551353 (= e!4498110 tp!2196803)))

(declare-fun b!7551354 () Bool)

(declare-fun res!3026703 () Bool)

(assert (=> b!7551354 (=> res!3026703 e!4498113)))

(declare-fun $colon$colon!3392 (List!72831 C!40222) List!72831)

(declare-fun tail!15080 (List!72831) List!72831)

(assert (=> b!7551354 (= res!3026703 (not (= lt!2646967 ($colon$colon!3392 (tail!15080 lt!2646967) lt!2646964))))))

(declare-fun b!7551355 () Bool)

(declare-fun tp!2196795 () Bool)

(assert (=> b!7551355 (= e!4498112 (and tp_is_empty!50251 tp!2196795))))

(declare-fun b!7551356 () Bool)

(declare-fun res!3026700 () Bool)

(assert (=> b!7551356 (=> res!3026700 e!4498108)))

(assert (=> b!7551356 (= res!3026700 (not (= (++!17464 testedP!423 lt!2646961) input!7874)))))

(declare-fun b!7551357 () Bool)

(declare-fun res!3026699 () Bool)

(assert (=> b!7551357 (=> res!3026699 e!4498118)))

(assert (=> b!7551357 (= res!3026699 (not (= (derivative!480 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7551358 () Bool)

(assert (=> b!7551358 (= e!4498108 e!4498109)))

(declare-fun res!3026708 () Bool)

(assert (=> b!7551358 (=> res!3026708 e!4498109)))

(declare-fun lt!2646954 () List!72831)

(assert (=> b!7551358 (= res!3026708 (not (= lt!2646954 input!7874)))))

(assert (=> b!7551358 (= lt!2646955 lt!2646954)))

(assert (=> b!7551358 (= lt!2646954 (++!17464 testedP!423 lt!2646951))))

(assert (=> b!7551358 (= lt!2646951 (++!17464 lt!2646967 lt!2646957))))

(declare-fun lt!2646960 () Unit!166834)

(declare-fun lemmaConcatAssociativity!3103 (List!72831 List!72831 List!72831) Unit!166834)

(assert (=> b!7551358 (= lt!2646960 (lemmaConcatAssociativity!3103 testedP!423 lt!2646967 lt!2646957))))

(declare-fun b!7551359 () Bool)

(assert (=> b!7551359 (= e!4498111 (not e!4498118))))

(declare-fun res!3026698 () Bool)

(assert (=> b!7551359 (=> res!3026698 e!4498118)))

(assert (=> b!7551359 (= res!3026698 (not (matchR!9550 r!24333 lt!2646967)))))

(assert (=> b!7551359 (= lt!2646967 (getSuffix!3634 knownP!30 testedP!423))))

(assert (=> b!7551359 (isPrefix!6154 testedP!423 knownP!30)))

(declare-fun lt!2646962 () Unit!166834)

(assert (=> b!7551359 (= lt!2646962 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!904 knownP!30 testedP!423 input!7874))))

(declare-fun b!7551360 () Bool)

(declare-fun res!3026707 () Bool)

(assert (=> b!7551360 (=> (not res!3026707) (not e!4498114))))

(assert (=> b!7551360 (= res!3026707 (validRegex!10376 r!24333))))

(declare-fun b!7551361 () Bool)

(declare-fun res!3026704 () Bool)

(assert (=> b!7551361 (=> (not res!3026704) (not e!4498114))))

(assert (=> b!7551361 (= res!3026704 (isPrefix!6154 knownP!30 input!7874))))

(declare-fun b!7551362 () Bool)

(declare-fun res!3026697 () Bool)

(assert (=> b!7551362 (=> res!3026697 e!4498113)))

(assert (=> b!7551362 (= res!3026697 (not (= lt!2646959 knownP!30)))))

(assert (= (and start!730166 res!3026705) b!7551360))

(assert (= (and b!7551360 res!3026707) b!7551335))

(assert (= (and b!7551335 res!3026711) b!7551361))

(assert (= (and b!7551361 res!3026704) b!7551344))

(assert (= (and b!7551344 res!3026712) b!7551345))

(assert (= (and b!7551345 res!3026709) b!7551359))

(assert (= (and b!7551359 (not res!3026698)) b!7551357))

(assert (= (and b!7551357 (not res!3026699)) b!7551342))

(assert (= (and b!7551342 (not res!3026706)) b!7551346))

(assert (= (and b!7551346 (not res!3026714)) b!7551337))

(assert (= (and b!7551337 (not res!3026710)) b!7551338))

(assert (= (and b!7551338 (not res!3026713)) b!7551350))

(assert (= (and b!7551350 (not res!3026701)) b!7551356))

(assert (= (and b!7551356 (not res!3026700)) b!7551358))

(assert (= (and b!7551358 (not res!3026708)) b!7551343))

(assert (= (and b!7551343 (not res!3026702)) b!7551354))

(assert (= (and b!7551354 (not res!3026703)) b!7551362))

(assert (= (and b!7551362 (not res!3026697)) b!7551341))

(assert (= (and start!730166 (is-ElementMatch!19948 baseR!101)) b!7551349))

(assert (= (and start!730166 (is-Concat!28793 baseR!101)) b!7551336))

(assert (= (and start!730166 (is-Star!19948 baseR!101)) b!7551353))

(assert (= (and start!730166 (is-Union!19948 baseR!101)) b!7551339))

(assert (= (and start!730166 (is-Cons!72707 input!7874)) b!7551347))

(assert (= (and start!730166 (is-Cons!72707 knownP!30)) b!7551351))

(assert (= (and start!730166 (is-Cons!72707 testedP!423)) b!7551355))

(assert (= (and start!730166 (is-ElementMatch!19948 r!24333)) b!7551340))

(assert (= (and start!730166 (is-Concat!28793 r!24333)) b!7551352))

(assert (= (and start!730166 (is-Star!19948 r!24333)) b!7551348))

(assert (= (and start!730166 (is-Union!19948 r!24333)) b!7551334))

(declare-fun m!8118182 () Bool)

(assert (=> b!7551344 m!8118182))

(declare-fun m!8118184 () Bool)

(assert (=> b!7551344 m!8118184))

(declare-fun m!8118186 () Bool)

(assert (=> b!7551356 m!8118186))

(declare-fun m!8118188 () Bool)

(assert (=> b!7551361 m!8118188))

(declare-fun m!8118190 () Bool)

(assert (=> b!7551350 m!8118190))

(declare-fun m!8118192 () Bool)

(assert (=> b!7551350 m!8118192))

(declare-fun m!8118194 () Bool)

(assert (=> b!7551359 m!8118194))

(declare-fun m!8118196 () Bool)

(assert (=> b!7551359 m!8118196))

(declare-fun m!8118198 () Bool)

(assert (=> b!7551359 m!8118198))

(declare-fun m!8118200 () Bool)

(assert (=> b!7551359 m!8118200))

(declare-fun m!8118202 () Bool)

(assert (=> b!7551343 m!8118202))

(declare-fun m!8118204 () Bool)

(assert (=> b!7551343 m!8118204))

(declare-fun m!8118206 () Bool)

(assert (=> b!7551338 m!8118206))

(declare-fun m!8118208 () Bool)

(assert (=> b!7551338 m!8118208))

(declare-fun m!8118210 () Bool)

(assert (=> b!7551338 m!8118210))

(declare-fun m!8118212 () Bool)

(assert (=> b!7551338 m!8118212))

(declare-fun m!8118214 () Bool)

(assert (=> b!7551338 m!8118214))

(declare-fun m!8118216 () Bool)

(assert (=> b!7551338 m!8118216))

(declare-fun m!8118218 () Bool)

(assert (=> b!7551338 m!8118218))

(declare-fun m!8118220 () Bool)

(assert (=> b!7551338 m!8118220))

(declare-fun m!8118222 () Bool)

(assert (=> b!7551338 m!8118222))

(declare-fun m!8118224 () Bool)

(assert (=> b!7551338 m!8118224))

(declare-fun m!8118226 () Bool)

(assert (=> b!7551338 m!8118226))

(declare-fun m!8118228 () Bool)

(assert (=> b!7551338 m!8118228))

(declare-fun m!8118230 () Bool)

(assert (=> b!7551338 m!8118230))

(declare-fun m!8118232 () Bool)

(assert (=> b!7551357 m!8118232))

(declare-fun m!8118234 () Bool)

(assert (=> b!7551360 m!8118234))

(declare-fun m!8118236 () Bool)

(assert (=> b!7551354 m!8118236))

(assert (=> b!7551354 m!8118236))

(declare-fun m!8118238 () Bool)

(assert (=> b!7551354 m!8118238))

(declare-fun m!8118240 () Bool)

(assert (=> b!7551335 m!8118240))

(declare-fun m!8118242 () Bool)

(assert (=> b!7551358 m!8118242))

(declare-fun m!8118244 () Bool)

(assert (=> b!7551358 m!8118244))

(declare-fun m!8118246 () Bool)

(assert (=> b!7551358 m!8118246))

(declare-fun m!8118248 () Bool)

(assert (=> b!7551337 m!8118248))

(declare-fun m!8118250 () Bool)

(assert (=> start!730166 m!8118250))

(declare-fun m!8118252 () Bool)

(assert (=> b!7551341 m!8118252))

(declare-fun m!8118254 () Bool)

(assert (=> b!7551345 m!8118254))

(declare-fun m!8118256 () Bool)

(assert (=> b!7551342 m!8118256))

(push 1)

(assert (not b!7551343))

(assert (not b!7551358))

(assert (not b!7551339))

(assert (not b!7551350))

(assert (not b!7551353))

(assert (not b!7551355))

(assert (not b!7551342))

(assert (not b!7551345))

(assert (not b!7551359))

(assert (not b!7551344))

(assert (not b!7551357))

(assert (not b!7551348))

(assert (not b!7551351))

(assert (not b!7551360))

(assert (not b!7551352))

(assert (not start!730166))

(assert (not b!7551361))

(assert (not b!7551334))

(assert (not b!7551337))

(assert (not b!7551335))

(assert (not b!7551338))

(assert (not b!7551347))

(assert (not b!7551336))

(assert (not b!7551354))

(assert (not b!7551341))

(assert tp_is_empty!50251)

(assert (not b!7551356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2313012 () Bool)

(declare-fun lt!2647028 () Int)

(assert (=> d!2313012 (>= lt!2647028 0)))

(declare-fun e!4498164 () Int)

(assert (=> d!2313012 (= lt!2647028 e!4498164)))

(declare-fun c!1393782 () Bool)

(assert (=> d!2313012 (= c!1393782 (is-Nil!72707 input!7874))))

(assert (=> d!2313012 (= (size!42444 input!7874) lt!2647028)))

(declare-fun b!7551466 () Bool)

(assert (=> b!7551466 (= e!4498164 0)))

(declare-fun b!7551467 () Bool)

(assert (=> b!7551467 (= e!4498164 (+ 1 (size!42444 (t!387552 input!7874))))))

(assert (= (and d!2313012 c!1393782) b!7551466))

(assert (= (and d!2313012 (not c!1393782)) b!7551467))

(declare-fun m!8118346 () Bool)

(assert (=> b!7551467 m!8118346))

(assert (=> b!7551337 d!2313012))

(declare-fun b!7551494 () Bool)

(declare-fun e!4498184 () List!72831)

(assert (=> b!7551494 (= e!4498184 lt!2646951)))

(declare-fun e!4498183 () Bool)

(declare-fun lt!2647031 () List!72831)

(declare-fun b!7551497 () Bool)

(assert (=> b!7551497 (= e!4498183 (or (not (= lt!2646951 Nil!72707)) (= lt!2647031 testedP!423)))))

(declare-fun b!7551496 () Bool)

(declare-fun res!3026789 () Bool)

(assert (=> b!7551496 (=> (not res!3026789) (not e!4498183))))

(assert (=> b!7551496 (= res!3026789 (= (size!42444 lt!2647031) (+ (size!42444 testedP!423) (size!42444 lt!2646951))))))

(declare-fun b!7551495 () Bool)

(assert (=> b!7551495 (= e!4498184 (Cons!72707 (h!79155 testedP!423) (++!17464 (t!387552 testedP!423) lt!2646951)))))

(declare-fun d!2313016 () Bool)

(assert (=> d!2313016 e!4498183))

(declare-fun res!3026790 () Bool)

(assert (=> d!2313016 (=> (not res!3026790) (not e!4498183))))

(declare-fun content!15391 (List!72831) (Set C!40222))

(assert (=> d!2313016 (= res!3026790 (= (content!15391 lt!2647031) (set.union (content!15391 testedP!423) (content!15391 lt!2646951))))))

(assert (=> d!2313016 (= lt!2647031 e!4498184)))

(declare-fun c!1393789 () Bool)

(assert (=> d!2313016 (= c!1393789 (is-Nil!72707 testedP!423))))

(assert (=> d!2313016 (= (++!17464 testedP!423 lt!2646951) lt!2647031)))

(assert (= (and d!2313016 c!1393789) b!7551494))

(assert (= (and d!2313016 (not c!1393789)) b!7551495))

(assert (= (and d!2313016 res!3026790) b!7551496))

(assert (= (and b!7551496 res!3026789) b!7551497))

(declare-fun m!8118348 () Bool)

(assert (=> b!7551496 m!8118348))

(assert (=> b!7551496 m!8118182))

(declare-fun m!8118350 () Bool)

(assert (=> b!7551496 m!8118350))

(declare-fun m!8118352 () Bool)

(assert (=> b!7551495 m!8118352))

(declare-fun m!8118354 () Bool)

(assert (=> d!2313016 m!8118354))

(declare-fun m!8118356 () Bool)

(assert (=> d!2313016 m!8118356))

(declare-fun m!8118358 () Bool)

(assert (=> d!2313016 m!8118358))

(assert (=> b!7551358 d!2313016))

(declare-fun b!7551498 () Bool)

(declare-fun e!4498186 () List!72831)

(assert (=> b!7551498 (= e!4498186 lt!2646957)))

(declare-fun e!4498185 () Bool)

(declare-fun b!7551501 () Bool)

(declare-fun lt!2647032 () List!72831)

(assert (=> b!7551501 (= e!4498185 (or (not (= lt!2646957 Nil!72707)) (= lt!2647032 lt!2646967)))))

(declare-fun b!7551500 () Bool)

(declare-fun res!3026791 () Bool)

(assert (=> b!7551500 (=> (not res!3026791) (not e!4498185))))

(assert (=> b!7551500 (= res!3026791 (= (size!42444 lt!2647032) (+ (size!42444 lt!2646967) (size!42444 lt!2646957))))))

(declare-fun b!7551499 () Bool)

(assert (=> b!7551499 (= e!4498186 (Cons!72707 (h!79155 lt!2646967) (++!17464 (t!387552 lt!2646967) lt!2646957)))))

(declare-fun d!2313018 () Bool)

(assert (=> d!2313018 e!4498185))

(declare-fun res!3026792 () Bool)

(assert (=> d!2313018 (=> (not res!3026792) (not e!4498185))))

(assert (=> d!2313018 (= res!3026792 (= (content!15391 lt!2647032) (set.union (content!15391 lt!2646967) (content!15391 lt!2646957))))))

(assert (=> d!2313018 (= lt!2647032 e!4498186)))

(declare-fun c!1393790 () Bool)

(assert (=> d!2313018 (= c!1393790 (is-Nil!72707 lt!2646967))))

(assert (=> d!2313018 (= (++!17464 lt!2646967 lt!2646957) lt!2647032)))

(assert (= (and d!2313018 c!1393790) b!7551498))

(assert (= (and d!2313018 (not c!1393790)) b!7551499))

(assert (= (and d!2313018 res!3026792) b!7551500))

(assert (= (and b!7551500 res!3026791) b!7551501))

(declare-fun m!8118360 () Bool)

(assert (=> b!7551500 m!8118360))

(declare-fun m!8118362 () Bool)

(assert (=> b!7551500 m!8118362))

(declare-fun m!8118364 () Bool)

(assert (=> b!7551500 m!8118364))

(declare-fun m!8118366 () Bool)

(assert (=> b!7551499 m!8118366))

(declare-fun m!8118368 () Bool)

(assert (=> d!2313018 m!8118368))

(declare-fun m!8118370 () Bool)

(assert (=> d!2313018 m!8118370))

(declare-fun m!8118372 () Bool)

(assert (=> d!2313018 m!8118372))

(assert (=> b!7551358 d!2313018))

(declare-fun d!2313020 () Bool)

(assert (=> d!2313020 (= (++!17464 (++!17464 testedP!423 lt!2646967) lt!2646957) (++!17464 testedP!423 (++!17464 lt!2646967 lt!2646957)))))

(declare-fun lt!2647035 () Unit!166834)

(declare-fun choose!58446 (List!72831 List!72831 List!72831) Unit!166834)

(assert (=> d!2313020 (= lt!2647035 (choose!58446 testedP!423 lt!2646967 lt!2646957))))

(assert (=> d!2313020 (= (lemmaConcatAssociativity!3103 testedP!423 lt!2646967 lt!2646957) lt!2647035)))

(declare-fun bs!1940207 () Bool)

(assert (= bs!1940207 d!2313020))

(assert (=> bs!1940207 m!8118192))

(assert (=> bs!1940207 m!8118244))

(declare-fun m!8118374 () Bool)

(assert (=> bs!1940207 m!8118374))

(assert (=> bs!1940207 m!8118244))

(declare-fun m!8118376 () Bool)

(assert (=> bs!1940207 m!8118376))

(assert (=> bs!1940207 m!8118192))

(declare-fun m!8118378 () Bool)

(assert (=> bs!1940207 m!8118378))

(assert (=> b!7551358 d!2313020))

(declare-fun d!2313022 () Bool)

(declare-fun lt!2647041 () Regex!19948)

(assert (=> d!2313022 (validRegex!10376 lt!2647041)))

(declare-fun e!4498200 () Regex!19948)

(assert (=> d!2313022 (= lt!2647041 e!4498200)))

(declare-fun c!1393798 () Bool)

(assert (=> d!2313022 (= c!1393798 (is-Cons!72707 testedP!423))))

(assert (=> d!2313022 (validRegex!10376 baseR!101)))

(assert (=> d!2313022 (= (derivative!480 baseR!101 testedP!423) lt!2647041)))

(declare-fun b!7551523 () Bool)

(assert (=> b!7551523 (= e!4498200 (derivative!480 (derivativeStep!5738 baseR!101 (h!79155 testedP!423)) (t!387552 testedP!423)))))

(declare-fun b!7551524 () Bool)

(assert (=> b!7551524 (= e!4498200 baseR!101)))

(assert (= (and d!2313022 c!1393798) b!7551523))

(assert (= (and d!2313022 (not c!1393798)) b!7551524))

(declare-fun m!8118400 () Bool)

(assert (=> d!2313022 m!8118400))

(assert (=> d!2313022 m!8118250))

(declare-fun m!8118402 () Bool)

(assert (=> b!7551523 m!8118402))

(assert (=> b!7551523 m!8118402))

(declare-fun m!8118404 () Bool)

(assert (=> b!7551523 m!8118404))

(assert (=> b!7551357 d!2313022))

(declare-fun b!7551545 () Bool)

(declare-fun e!4498219 () Bool)

(declare-fun e!4498220 () Bool)

(assert (=> b!7551545 (= e!4498219 e!4498220)))

(declare-fun res!3026814 () Bool)

(declare-fun nullable!8704 (Regex!19948) Bool)

(assert (=> b!7551545 (= res!3026814 (not (nullable!8704 (reg!20277 baseR!101))))))

(assert (=> b!7551545 (=> (not res!3026814) (not e!4498220))))

(declare-fun b!7551546 () Bool)

(declare-fun e!4498221 () Bool)

(assert (=> b!7551546 (= e!4498221 e!4498219)))

(declare-fun c!1393804 () Bool)

(assert (=> b!7551546 (= c!1393804 (is-Star!19948 baseR!101))))

(declare-fun b!7551547 () Bool)

(declare-fun e!4498218 () Bool)

(declare-fun call!692413 () Bool)

(assert (=> b!7551547 (= e!4498218 call!692413)))

(declare-fun b!7551548 () Bool)

(declare-fun e!4498216 () Bool)

(assert (=> b!7551548 (= e!4498219 e!4498216)))

(declare-fun c!1393805 () Bool)

(assert (=> b!7551548 (= c!1393805 (is-Union!19948 baseR!101))))

(declare-fun bm!692407 () Bool)

(declare-fun call!692414 () Bool)

(declare-fun call!692412 () Bool)

(assert (=> bm!692407 (= call!692414 call!692412)))

(declare-fun d!2313028 () Bool)

(declare-fun res!3026813 () Bool)

(assert (=> d!2313028 (=> res!3026813 e!4498221)))

(assert (=> d!2313028 (= res!3026813 (is-ElementMatch!19948 baseR!101))))

(assert (=> d!2313028 (= (validRegex!10376 baseR!101) e!4498221)))

(declare-fun bm!692408 () Bool)

(assert (=> bm!692408 (= call!692412 (validRegex!10376 (ite c!1393804 (reg!20277 baseR!101) (ite c!1393805 (regOne!40409 baseR!101) (regOne!40408 baseR!101)))))))

(declare-fun b!7551549 () Bool)

(assert (=> b!7551549 (= e!4498220 call!692412)))

(declare-fun b!7551550 () Bool)

(declare-fun e!4498222 () Bool)

(assert (=> b!7551550 (= e!4498222 call!692413)))

(declare-fun b!7551551 () Bool)

(declare-fun res!3026810 () Bool)

(assert (=> b!7551551 (=> (not res!3026810) (not e!4498218))))

(assert (=> b!7551551 (= res!3026810 call!692414)))

(assert (=> b!7551551 (= e!4498216 e!4498218)))

(declare-fun bm!692409 () Bool)

(assert (=> bm!692409 (= call!692413 (validRegex!10376 (ite c!1393805 (regTwo!40409 baseR!101) (regTwo!40408 baseR!101))))))

(declare-fun b!7551552 () Bool)

(declare-fun e!4498217 () Bool)

(assert (=> b!7551552 (= e!4498217 e!4498222)))

(declare-fun res!3026812 () Bool)

(assert (=> b!7551552 (=> (not res!3026812) (not e!4498222))))

(assert (=> b!7551552 (= res!3026812 call!692414)))

(declare-fun b!7551553 () Bool)

(declare-fun res!3026811 () Bool)

(assert (=> b!7551553 (=> res!3026811 e!4498217)))

(assert (=> b!7551553 (= res!3026811 (not (is-Concat!28793 baseR!101)))))

(assert (=> b!7551553 (= e!4498216 e!4498217)))

(assert (= (and d!2313028 (not res!3026813)) b!7551546))

(assert (= (and b!7551546 c!1393804) b!7551545))

(assert (= (and b!7551546 (not c!1393804)) b!7551548))

(assert (= (and b!7551545 res!3026814) b!7551549))

(assert (= (and b!7551548 c!1393805) b!7551551))

(assert (= (and b!7551548 (not c!1393805)) b!7551553))

(assert (= (and b!7551551 res!3026810) b!7551547))

(assert (= (and b!7551553 (not res!3026811)) b!7551552))

(assert (= (and b!7551552 res!3026812) b!7551550))

(assert (= (or b!7551551 b!7551552) bm!692407))

(assert (= (or b!7551547 b!7551550) bm!692409))

(assert (= (or b!7551549 bm!692407) bm!692408))

(declare-fun m!8118412 () Bool)

(assert (=> b!7551545 m!8118412))

(declare-fun m!8118414 () Bool)

(assert (=> bm!692408 m!8118414))

(declare-fun m!8118416 () Bool)

(assert (=> bm!692409 m!8118416))

(assert (=> start!730166 d!2313028))

(declare-fun d!2313038 () Bool)

(declare-fun e!4498231 () Bool)

(assert (=> d!2313038 e!4498231))

(declare-fun res!3026824 () Bool)

(assert (=> d!2313038 (=> res!3026824 e!4498231)))

(declare-fun lt!2647048 () Bool)

(assert (=> d!2313038 (= res!3026824 (not lt!2647048))))

(declare-fun e!4498230 () Bool)

(assert (=> d!2313038 (= lt!2647048 e!4498230)))

(declare-fun res!3026823 () Bool)

(assert (=> d!2313038 (=> res!3026823 e!4498230)))

(assert (=> d!2313038 (= res!3026823 (is-Nil!72707 testedP!423))))

(assert (=> d!2313038 (= (isPrefix!6154 testedP!423 input!7874) lt!2647048)))

(declare-fun b!7551562 () Bool)

(declare-fun e!4498229 () Bool)

(assert (=> b!7551562 (= e!4498230 e!4498229)))

(declare-fun res!3026825 () Bool)

(assert (=> b!7551562 (=> (not res!3026825) (not e!4498229))))

(assert (=> b!7551562 (= res!3026825 (not (is-Nil!72707 input!7874)))))

(declare-fun b!7551564 () Bool)

(assert (=> b!7551564 (= e!4498229 (isPrefix!6154 (tail!15080 testedP!423) (tail!15080 input!7874)))))

(declare-fun b!7551563 () Bool)

(declare-fun res!3026826 () Bool)

(assert (=> b!7551563 (=> (not res!3026826) (not e!4498229))))

(assert (=> b!7551563 (= res!3026826 (= (head!15538 testedP!423) (head!15538 input!7874)))))

(declare-fun b!7551565 () Bool)

(assert (=> b!7551565 (= e!4498231 (>= (size!42444 input!7874) (size!42444 testedP!423)))))

(assert (= (and d!2313038 (not res!3026823)) b!7551562))

(assert (= (and b!7551562 res!3026825) b!7551563))

(assert (= (and b!7551563 res!3026826) b!7551564))

(assert (= (and d!2313038 (not res!3026824)) b!7551565))

(declare-fun m!8118418 () Bool)

(assert (=> b!7551564 m!8118418))

(declare-fun m!8118420 () Bool)

(assert (=> b!7551564 m!8118420))

(assert (=> b!7551564 m!8118418))

(assert (=> b!7551564 m!8118420))

(declare-fun m!8118422 () Bool)

(assert (=> b!7551564 m!8118422))

(declare-fun m!8118424 () Bool)

(assert (=> b!7551563 m!8118424))

(declare-fun m!8118426 () Bool)

(assert (=> b!7551563 m!8118426))

(assert (=> b!7551565 m!8118248))

(assert (=> b!7551565 m!8118182))

(assert (=> b!7551335 d!2313038))

(declare-fun d!2313040 () Bool)

(declare-fun e!4498234 () Bool)

(assert (=> d!2313040 e!4498234))

(declare-fun res!3026828 () Bool)

(assert (=> d!2313040 (=> res!3026828 e!4498234)))

(declare-fun lt!2647049 () Bool)

(assert (=> d!2313040 (= res!3026828 (not lt!2647049))))

(declare-fun e!4498233 () Bool)

(assert (=> d!2313040 (= lt!2647049 e!4498233)))

(declare-fun res!3026827 () Bool)

(assert (=> d!2313040 (=> res!3026827 e!4498233)))

(assert (=> d!2313040 (= res!3026827 (is-Nil!72707 knownP!30))))

(assert (=> d!2313040 (= (isPrefix!6154 knownP!30 input!7874) lt!2647049)))

(declare-fun b!7551566 () Bool)

(declare-fun e!4498232 () Bool)

(assert (=> b!7551566 (= e!4498233 e!4498232)))

(declare-fun res!3026829 () Bool)

(assert (=> b!7551566 (=> (not res!3026829) (not e!4498232))))

(assert (=> b!7551566 (= res!3026829 (not (is-Nil!72707 input!7874)))))

(declare-fun b!7551568 () Bool)

(assert (=> b!7551568 (= e!4498232 (isPrefix!6154 (tail!15080 knownP!30) (tail!15080 input!7874)))))

(declare-fun b!7551567 () Bool)

(declare-fun res!3026830 () Bool)

(assert (=> b!7551567 (=> (not res!3026830) (not e!4498232))))

(assert (=> b!7551567 (= res!3026830 (= (head!15538 knownP!30) (head!15538 input!7874)))))

(declare-fun b!7551569 () Bool)

(assert (=> b!7551569 (= e!4498234 (>= (size!42444 input!7874) (size!42444 knownP!30)))))

(assert (= (and d!2313040 (not res!3026827)) b!7551566))

(assert (= (and b!7551566 res!3026829) b!7551567))

(assert (= (and b!7551567 res!3026830) b!7551568))

(assert (= (and d!2313040 (not res!3026828)) b!7551569))

(declare-fun m!8118428 () Bool)

(assert (=> b!7551568 m!8118428))

(assert (=> b!7551568 m!8118420))

(assert (=> b!7551568 m!8118428))

(assert (=> b!7551568 m!8118420))

(declare-fun m!8118430 () Bool)

(assert (=> b!7551568 m!8118430))

(declare-fun m!8118432 () Bool)

(assert (=> b!7551567 m!8118432))

(assert (=> b!7551567 m!8118426))

(assert (=> b!7551569 m!8118248))

(assert (=> b!7551569 m!8118184))

(assert (=> b!7551361 d!2313040))

(declare-fun b!7551570 () Bool)

(declare-fun e!4498236 () List!72831)

(assert (=> b!7551570 (= e!4498236 lt!2646957)))

(declare-fun b!7551573 () Bool)

(declare-fun lt!2647050 () List!72831)

(declare-fun e!4498235 () Bool)

(assert (=> b!7551573 (= e!4498235 (or (not (= lt!2646957 Nil!72707)) (= lt!2647050 lt!2646959)))))

(declare-fun b!7551572 () Bool)

(declare-fun res!3026831 () Bool)

(assert (=> b!7551572 (=> (not res!3026831) (not e!4498235))))

(assert (=> b!7551572 (= res!3026831 (= (size!42444 lt!2647050) (+ (size!42444 lt!2646959) (size!42444 lt!2646957))))))

(declare-fun b!7551571 () Bool)

(assert (=> b!7551571 (= e!4498236 (Cons!72707 (h!79155 lt!2646959) (++!17464 (t!387552 lt!2646959) lt!2646957)))))

(declare-fun d!2313042 () Bool)

(assert (=> d!2313042 e!4498235))

(declare-fun res!3026832 () Bool)

(assert (=> d!2313042 (=> (not res!3026832) (not e!4498235))))

(assert (=> d!2313042 (= res!3026832 (= (content!15391 lt!2647050) (set.union (content!15391 lt!2646959) (content!15391 lt!2646957))))))

(assert (=> d!2313042 (= lt!2647050 e!4498236)))

(declare-fun c!1393806 () Bool)

(assert (=> d!2313042 (= c!1393806 (is-Nil!72707 lt!2646959))))

(assert (=> d!2313042 (= (++!17464 lt!2646959 lt!2646957) lt!2647050)))

(assert (= (and d!2313042 c!1393806) b!7551570))

(assert (= (and d!2313042 (not c!1393806)) b!7551571))

(assert (= (and d!2313042 res!3026832) b!7551572))

(assert (= (and b!7551572 res!3026831) b!7551573))

(declare-fun m!8118434 () Bool)

(assert (=> b!7551572 m!8118434))

(declare-fun m!8118436 () Bool)

(assert (=> b!7551572 m!8118436))

(assert (=> b!7551572 m!8118364))

(declare-fun m!8118438 () Bool)

(assert (=> b!7551571 m!8118438))

(declare-fun m!8118440 () Bool)

(assert (=> d!2313042 m!8118440))

(declare-fun m!8118442 () Bool)

(assert (=> d!2313042 m!8118442))

(assert (=> d!2313042 m!8118372))

(assert (=> b!7551350 d!2313042))

(declare-fun b!7551574 () Bool)

(declare-fun e!4498238 () List!72831)

(assert (=> b!7551574 (= e!4498238 lt!2646967)))

(declare-fun b!7551577 () Bool)

(declare-fun lt!2647051 () List!72831)

(declare-fun e!4498237 () Bool)

(assert (=> b!7551577 (= e!4498237 (or (not (= lt!2646967 Nil!72707)) (= lt!2647051 testedP!423)))))

(declare-fun b!7551576 () Bool)

(declare-fun res!3026833 () Bool)

(assert (=> b!7551576 (=> (not res!3026833) (not e!4498237))))

(assert (=> b!7551576 (= res!3026833 (= (size!42444 lt!2647051) (+ (size!42444 testedP!423) (size!42444 lt!2646967))))))

(declare-fun b!7551575 () Bool)

(assert (=> b!7551575 (= e!4498238 (Cons!72707 (h!79155 testedP!423) (++!17464 (t!387552 testedP!423) lt!2646967)))))

(declare-fun d!2313044 () Bool)

(assert (=> d!2313044 e!4498237))

(declare-fun res!3026834 () Bool)

(assert (=> d!2313044 (=> (not res!3026834) (not e!4498237))))

(assert (=> d!2313044 (= res!3026834 (= (content!15391 lt!2647051) (set.union (content!15391 testedP!423) (content!15391 lt!2646967))))))

(assert (=> d!2313044 (= lt!2647051 e!4498238)))

(declare-fun c!1393807 () Bool)

(assert (=> d!2313044 (= c!1393807 (is-Nil!72707 testedP!423))))

(assert (=> d!2313044 (= (++!17464 testedP!423 lt!2646967) lt!2647051)))

(assert (= (and d!2313044 c!1393807) b!7551574))

(assert (= (and d!2313044 (not c!1393807)) b!7551575))

(assert (= (and d!2313044 res!3026834) b!7551576))

(assert (= (and b!7551576 res!3026833) b!7551577))

(declare-fun m!8118444 () Bool)

(assert (=> b!7551576 m!8118444))

(assert (=> b!7551576 m!8118182))

(assert (=> b!7551576 m!8118362))

(declare-fun m!8118446 () Bool)

(assert (=> b!7551575 m!8118446))

(declare-fun m!8118448 () Bool)

(assert (=> d!2313044 m!8118448))

(assert (=> d!2313044 m!8118356))

(assert (=> d!2313044 m!8118370))

(assert (=> b!7551350 d!2313044))

(declare-fun b!7551578 () Bool)

(declare-fun e!4498242 () Bool)

(declare-fun e!4498243 () Bool)

(assert (=> b!7551578 (= e!4498242 e!4498243)))

(declare-fun res!3026839 () Bool)

(assert (=> b!7551578 (= res!3026839 (not (nullable!8704 (reg!20277 r!24333))))))

(assert (=> b!7551578 (=> (not res!3026839) (not e!4498243))))

(declare-fun b!7551579 () Bool)

(declare-fun e!4498244 () Bool)

(assert (=> b!7551579 (= e!4498244 e!4498242)))

(declare-fun c!1393808 () Bool)

(assert (=> b!7551579 (= c!1393808 (is-Star!19948 r!24333))))

(declare-fun b!7551580 () Bool)

(declare-fun e!4498241 () Bool)

(declare-fun call!692416 () Bool)

(assert (=> b!7551580 (= e!4498241 call!692416)))

(declare-fun b!7551581 () Bool)

(declare-fun e!4498239 () Bool)

(assert (=> b!7551581 (= e!4498242 e!4498239)))

(declare-fun c!1393809 () Bool)

(assert (=> b!7551581 (= c!1393809 (is-Union!19948 r!24333))))

(declare-fun bm!692410 () Bool)

(declare-fun call!692417 () Bool)

(declare-fun call!692415 () Bool)

(assert (=> bm!692410 (= call!692417 call!692415)))

(declare-fun d!2313046 () Bool)

(declare-fun res!3026838 () Bool)

(assert (=> d!2313046 (=> res!3026838 e!4498244)))

(assert (=> d!2313046 (= res!3026838 (is-ElementMatch!19948 r!24333))))

(assert (=> d!2313046 (= (validRegex!10376 r!24333) e!4498244)))

(declare-fun bm!692411 () Bool)

(assert (=> bm!692411 (= call!692415 (validRegex!10376 (ite c!1393808 (reg!20277 r!24333) (ite c!1393809 (regOne!40409 r!24333) (regOne!40408 r!24333)))))))

(declare-fun b!7551582 () Bool)

(assert (=> b!7551582 (= e!4498243 call!692415)))

(declare-fun b!7551583 () Bool)

(declare-fun e!4498245 () Bool)

(assert (=> b!7551583 (= e!4498245 call!692416)))

(declare-fun b!7551584 () Bool)

(declare-fun res!3026835 () Bool)

(assert (=> b!7551584 (=> (not res!3026835) (not e!4498241))))

(assert (=> b!7551584 (= res!3026835 call!692417)))

(assert (=> b!7551584 (= e!4498239 e!4498241)))

(declare-fun bm!692412 () Bool)

(assert (=> bm!692412 (= call!692416 (validRegex!10376 (ite c!1393809 (regTwo!40409 r!24333) (regTwo!40408 r!24333))))))

(declare-fun b!7551585 () Bool)

(declare-fun e!4498240 () Bool)

(assert (=> b!7551585 (= e!4498240 e!4498245)))

(declare-fun res!3026837 () Bool)

(assert (=> b!7551585 (=> (not res!3026837) (not e!4498245))))

(assert (=> b!7551585 (= res!3026837 call!692417)))

(declare-fun b!7551586 () Bool)

(declare-fun res!3026836 () Bool)

(assert (=> b!7551586 (=> res!3026836 e!4498240)))

(assert (=> b!7551586 (= res!3026836 (not (is-Concat!28793 r!24333)))))

(assert (=> b!7551586 (= e!4498239 e!4498240)))

(assert (= (and d!2313046 (not res!3026838)) b!7551579))

(assert (= (and b!7551579 c!1393808) b!7551578))

(assert (= (and b!7551579 (not c!1393808)) b!7551581))

(assert (= (and b!7551578 res!3026839) b!7551582))

(assert (= (and b!7551581 c!1393809) b!7551584))

(assert (= (and b!7551581 (not c!1393809)) b!7551586))

(assert (= (and b!7551584 res!3026835) b!7551580))

(assert (= (and b!7551586 (not res!3026836)) b!7551585))

(assert (= (and b!7551585 res!3026837) b!7551583))

(assert (= (or b!7551584 b!7551585) bm!692410))

(assert (= (or b!7551580 b!7551583) bm!692412))

(assert (= (or b!7551582 bm!692410) bm!692411))

(declare-fun m!8118450 () Bool)

(assert (=> b!7551578 m!8118450))

(declare-fun m!8118452 () Bool)

(assert (=> bm!692411 m!8118452))

(declare-fun m!8118454 () Bool)

(assert (=> bm!692412 m!8118454))

(assert (=> b!7551360 d!2313046))

(declare-fun b!7551587 () Bool)

(declare-fun e!4498247 () List!72831)

(assert (=> b!7551587 (= e!4498247 lt!2646957)))

(declare-fun e!4498246 () Bool)

(declare-fun lt!2647052 () List!72831)

(declare-fun b!7551590 () Bool)

(assert (=> b!7551590 (= e!4498246 (or (not (= lt!2646957 Nil!72707)) (= lt!2647052 knownP!30)))))

(declare-fun b!7551589 () Bool)

(declare-fun res!3026840 () Bool)

(assert (=> b!7551589 (=> (not res!3026840) (not e!4498246))))

(assert (=> b!7551589 (= res!3026840 (= (size!42444 lt!2647052) (+ (size!42444 knownP!30) (size!42444 lt!2646957))))))

(declare-fun b!7551588 () Bool)

(assert (=> b!7551588 (= e!4498247 (Cons!72707 (h!79155 knownP!30) (++!17464 (t!387552 knownP!30) lt!2646957)))))

(declare-fun d!2313048 () Bool)

(assert (=> d!2313048 e!4498246))

(declare-fun res!3026841 () Bool)

(assert (=> d!2313048 (=> (not res!3026841) (not e!4498246))))

(assert (=> d!2313048 (= res!3026841 (= (content!15391 lt!2647052) (set.union (content!15391 knownP!30) (content!15391 lt!2646957))))))

(assert (=> d!2313048 (= lt!2647052 e!4498247)))

(declare-fun c!1393810 () Bool)

(assert (=> d!2313048 (= c!1393810 (is-Nil!72707 knownP!30))))

(assert (=> d!2313048 (= (++!17464 knownP!30 lt!2646957) lt!2647052)))

(assert (= (and d!2313048 c!1393810) b!7551587))

(assert (= (and d!2313048 (not c!1393810)) b!7551588))

(assert (= (and d!2313048 res!3026841) b!7551589))

(assert (= (and b!7551589 res!3026840) b!7551590))

(declare-fun m!8118456 () Bool)

(assert (=> b!7551589 m!8118456))

(assert (=> b!7551589 m!8118184))

(assert (=> b!7551589 m!8118364))

(declare-fun m!8118458 () Bool)

(assert (=> b!7551588 m!8118458))

(declare-fun m!8118460 () Bool)

(assert (=> d!2313048 m!8118460))

(declare-fun m!8118462 () Bool)

(assert (=> d!2313048 m!8118462))

(assert (=> d!2313048 m!8118372))

(assert (=> b!7551338 d!2313048))

(declare-fun d!2313050 () Bool)

(declare-fun lt!2647057 () List!72831)

(assert (=> d!2313050 (= (++!17464 testedP!423 lt!2647057) input!7874)))

(declare-fun e!4498264 () List!72831)

(assert (=> d!2313050 (= lt!2647057 e!4498264)))

(declare-fun c!1393819 () Bool)

(assert (=> d!2313050 (= c!1393819 (is-Cons!72707 testedP!423))))

(assert (=> d!2313050 (>= (size!42444 input!7874) (size!42444 testedP!423))))

(assert (=> d!2313050 (= (getSuffix!3634 input!7874 testedP!423) lt!2647057)))

(declare-fun b!7551623 () Bool)

(assert (=> b!7551623 (= e!4498264 (getSuffix!3634 (tail!15080 input!7874) (t!387552 testedP!423)))))

(declare-fun b!7551624 () Bool)

(assert (=> b!7551624 (= e!4498264 input!7874)))

(assert (= (and d!2313050 c!1393819) b!7551623))

(assert (= (and d!2313050 (not c!1393819)) b!7551624))

(declare-fun m!8118464 () Bool)

(assert (=> d!2313050 m!8118464))

(assert (=> d!2313050 m!8118248))

(assert (=> d!2313050 m!8118182))

(assert (=> b!7551623 m!8118420))

(assert (=> b!7551623 m!8118420))

(declare-fun m!8118466 () Bool)

(assert (=> b!7551623 m!8118466))

(assert (=> b!7551338 d!2313050))

(declare-fun d!2313052 () Bool)

(declare-fun lt!2647058 () List!72831)

(assert (=> d!2313052 (= (++!17464 lt!2646952 lt!2647058) knownP!30)))

(declare-fun e!4498265 () List!72831)

(assert (=> d!2313052 (= lt!2647058 e!4498265)))

(declare-fun c!1393820 () Bool)

(assert (=> d!2313052 (= c!1393820 (is-Cons!72707 lt!2646952))))

(assert (=> d!2313052 (>= (size!42444 knownP!30) (size!42444 lt!2646952))))

(assert (=> d!2313052 (= (getSuffix!3634 knownP!30 lt!2646952) lt!2647058)))

(declare-fun b!7551625 () Bool)

(assert (=> b!7551625 (= e!4498265 (getSuffix!3634 (tail!15080 knownP!30) (t!387552 lt!2646952)))))

(declare-fun b!7551626 () Bool)

(assert (=> b!7551626 (= e!4498265 knownP!30)))

(assert (= (and d!2313052 c!1393820) b!7551625))

(assert (= (and d!2313052 (not c!1393820)) b!7551626))

(declare-fun m!8118468 () Bool)

(assert (=> d!2313052 m!8118468))

(assert (=> d!2313052 m!8118184))

(declare-fun m!8118470 () Bool)

(assert (=> d!2313052 m!8118470))

(assert (=> b!7551625 m!8118428))

(assert (=> b!7551625 m!8118428))

(declare-fun m!8118472 () Bool)

(assert (=> b!7551625 m!8118472))

(assert (=> b!7551338 d!2313052))

(declare-fun d!2313054 () Bool)

(assert (=> d!2313054 (= (derivative!480 baseR!101 (++!17464 testedP!423 (Cons!72707 lt!2646964 Nil!72707))) (derivativeStep!5738 r!24333 lt!2646964))))

(declare-fun lt!2647061 () Unit!166834)

(declare-fun choose!58447 (Regex!19948 Regex!19948 List!72831 C!40222) Unit!166834)

(assert (=> d!2313054 (= lt!2647061 (choose!58447 baseR!101 r!24333 testedP!423 lt!2646964))))

(assert (=> d!2313054 (validRegex!10376 baseR!101)))

(assert (=> d!2313054 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!182 baseR!101 r!24333 testedP!423 lt!2646964) lt!2647061)))

(declare-fun bs!1940210 () Bool)

(assert (= bs!1940210 d!2313054))

(assert (=> bs!1940210 m!8118206))

(declare-fun m!8118474 () Bool)

(assert (=> bs!1940210 m!8118474))

(assert (=> bs!1940210 m!8118206))

(declare-fun m!8118476 () Bool)

(assert (=> bs!1940210 m!8118476))

(assert (=> bs!1940210 m!8118250))

(assert (=> bs!1940210 m!8118226))

(assert (=> b!7551338 d!2313054))

(declare-fun d!2313056 () Bool)

(declare-fun lt!2647063 () Regex!19948)

(assert (=> d!2313056 (validRegex!10376 lt!2647063)))

(declare-fun e!4498273 () Regex!19948)

(assert (=> d!2313056 (= lt!2647063 e!4498273)))

(declare-fun c!1393825 () Bool)

(assert (=> d!2313056 (= c!1393825 (is-Cons!72707 lt!2646952))))

(assert (=> d!2313056 (validRegex!10376 baseR!101)))

(assert (=> d!2313056 (= (derivative!480 baseR!101 lt!2646952) lt!2647063)))

(declare-fun b!7551641 () Bool)

(assert (=> b!7551641 (= e!4498273 (derivative!480 (derivativeStep!5738 baseR!101 (h!79155 lt!2646952)) (t!387552 lt!2646952)))))

(declare-fun b!7551642 () Bool)

(assert (=> b!7551642 (= e!4498273 baseR!101)))

(assert (= (and d!2313056 c!1393825) b!7551641))

(assert (= (and d!2313056 (not c!1393825)) b!7551642))

(declare-fun m!8118478 () Bool)

(assert (=> d!2313056 m!8118478))

(assert (=> d!2313056 m!8118250))

(declare-fun m!8118480 () Bool)

(assert (=> b!7551641 m!8118480))

(assert (=> b!7551641 m!8118480))

(declare-fun m!8118482 () Bool)

(assert (=> b!7551641 m!8118482))

(assert (=> b!7551338 d!2313056))

(declare-fun bm!692424 () Bool)

(declare-fun call!692432 () Regex!19948)

(declare-fun call!692430 () Regex!19948)

(assert (=> bm!692424 (= call!692432 call!692430)))

(declare-fun c!1393839 () Bool)

(declare-fun c!1393842 () Bool)

(declare-fun bm!692425 () Bool)

(assert (=> bm!692425 (= call!692430 (derivativeStep!5738 (ite c!1393839 (regTwo!40409 r!24333) (ite c!1393842 (reg!20277 r!24333) (regOne!40408 r!24333))) lt!2646964))))

(declare-fun b!7551669 () Bool)

(declare-fun e!4498290 () Regex!19948)

(declare-fun call!692431 () Regex!19948)

(assert (=> b!7551669 (= e!4498290 (Union!19948 call!692431 call!692430))))

(declare-fun b!7551670 () Bool)

(declare-fun e!4498288 () Regex!19948)

(declare-fun e!4498289 () Regex!19948)

(assert (=> b!7551670 (= e!4498288 e!4498289)))

(declare-fun c!1393843 () Bool)

(assert (=> b!7551670 (= c!1393843 (is-ElementMatch!19948 r!24333))))

(declare-fun bm!692427 () Bool)

(declare-fun call!692429 () Regex!19948)

(assert (=> bm!692427 (= call!692429 call!692432)))

(declare-fun b!7551671 () Bool)

(declare-fun e!4498287 () Regex!19948)

(assert (=> b!7551671 (= e!4498287 (Concat!28793 call!692432 r!24333))))

(declare-fun b!7551672 () Bool)

(assert (=> b!7551672 (= c!1393839 (is-Union!19948 r!24333))))

(assert (=> b!7551672 (= e!4498289 e!4498290)))

(declare-fun e!4498291 () Regex!19948)

(declare-fun b!7551673 () Bool)

(assert (=> b!7551673 (= e!4498291 (Union!19948 (Concat!28793 call!692429 (regTwo!40408 r!24333)) call!692431))))

(declare-fun b!7551674 () Bool)

(declare-fun c!1393841 () Bool)

(assert (=> b!7551674 (= c!1393841 (nullable!8704 (regOne!40408 r!24333)))))

(assert (=> b!7551674 (= e!4498287 e!4498291)))

(declare-fun bm!692426 () Bool)

(assert (=> bm!692426 (= call!692431 (derivativeStep!5738 (ite c!1393839 (regOne!40409 r!24333) (regTwo!40408 r!24333)) lt!2646964))))

(declare-fun d!2313058 () Bool)

(declare-fun lt!2647069 () Regex!19948)

(assert (=> d!2313058 (validRegex!10376 lt!2647069)))

(assert (=> d!2313058 (= lt!2647069 e!4498288)))

(declare-fun c!1393840 () Bool)

(assert (=> d!2313058 (= c!1393840 (or (is-EmptyExpr!19948 r!24333) (is-EmptyLang!19948 r!24333)))))

(assert (=> d!2313058 (validRegex!10376 r!24333)))

(assert (=> d!2313058 (= (derivativeStep!5738 r!24333 lt!2646964) lt!2647069)))

(declare-fun b!7551675 () Bool)

(assert (=> b!7551675 (= e!4498289 (ite (= lt!2646964 (c!1393775 r!24333)) EmptyExpr!19948 EmptyLang!19948))))

(declare-fun b!7551676 () Bool)

(assert (=> b!7551676 (= e!4498290 e!4498287)))

(assert (=> b!7551676 (= c!1393842 (is-Star!19948 r!24333))))

(declare-fun b!7551677 () Bool)

(assert (=> b!7551677 (= e!4498291 (Union!19948 (Concat!28793 call!692429 (regTwo!40408 r!24333)) EmptyLang!19948))))

(declare-fun b!7551678 () Bool)

(assert (=> b!7551678 (= e!4498288 EmptyLang!19948)))

(assert (= (and d!2313058 c!1393840) b!7551678))

(assert (= (and d!2313058 (not c!1393840)) b!7551670))

(assert (= (and b!7551670 c!1393843) b!7551675))

(assert (= (and b!7551670 (not c!1393843)) b!7551672))

(assert (= (and b!7551672 c!1393839) b!7551669))

(assert (= (and b!7551672 (not c!1393839)) b!7551676))

(assert (= (and b!7551676 c!1393842) b!7551671))

(assert (= (and b!7551676 (not c!1393842)) b!7551674))

(assert (= (and b!7551674 c!1393841) b!7551673))

(assert (= (and b!7551674 (not c!1393841)) b!7551677))

(assert (= (or b!7551673 b!7551677) bm!692427))

(assert (= (or b!7551671 bm!692427) bm!692424))

(assert (= (or b!7551669 bm!692424) bm!692425))

(assert (= (or b!7551669 b!7551673) bm!692426))

(declare-fun m!8118500 () Bool)

(assert (=> bm!692425 m!8118500))

(declare-fun m!8118502 () Bool)

(assert (=> b!7551674 m!8118502))

(declare-fun m!8118504 () Bool)

(assert (=> bm!692426 m!8118504))

(declare-fun m!8118506 () Bool)

(assert (=> d!2313058 m!8118506))

(assert (=> d!2313058 m!8118234))

(assert (=> b!7551338 d!2313058))

(declare-fun b!7551679 () Bool)

(declare-fun e!4498293 () List!72831)

(assert (=> b!7551679 (= e!4498293 (Cons!72707 lt!2646964 Nil!72707))))

(declare-fun e!4498292 () Bool)

(declare-fun b!7551682 () Bool)

(declare-fun lt!2647070 () List!72831)

(assert (=> b!7551682 (= e!4498292 (or (not (= (Cons!72707 lt!2646964 Nil!72707) Nil!72707)) (= lt!2647070 testedP!423)))))

(declare-fun b!7551681 () Bool)

(declare-fun res!3026866 () Bool)

(assert (=> b!7551681 (=> (not res!3026866) (not e!4498292))))

(assert (=> b!7551681 (= res!3026866 (= (size!42444 lt!2647070) (+ (size!42444 testedP!423) (size!42444 (Cons!72707 lt!2646964 Nil!72707)))))))

(declare-fun b!7551680 () Bool)

(assert (=> b!7551680 (= e!4498293 (Cons!72707 (h!79155 testedP!423) (++!17464 (t!387552 testedP!423) (Cons!72707 lt!2646964 Nil!72707))))))

(declare-fun d!2313064 () Bool)

(assert (=> d!2313064 e!4498292))

(declare-fun res!3026867 () Bool)

(assert (=> d!2313064 (=> (not res!3026867) (not e!4498292))))

(assert (=> d!2313064 (= res!3026867 (= (content!15391 lt!2647070) (set.union (content!15391 testedP!423) (content!15391 (Cons!72707 lt!2646964 Nil!72707)))))))

(assert (=> d!2313064 (= lt!2647070 e!4498293)))

(declare-fun c!1393844 () Bool)

(assert (=> d!2313064 (= c!1393844 (is-Nil!72707 testedP!423))))

(assert (=> d!2313064 (= (++!17464 testedP!423 (Cons!72707 lt!2646964 Nil!72707)) lt!2647070)))

(assert (= (and d!2313064 c!1393844) b!7551679))

(assert (= (and d!2313064 (not c!1393844)) b!7551680))

(assert (= (and d!2313064 res!3026867) b!7551681))

(assert (= (and b!7551681 res!3026866) b!7551682))

(declare-fun m!8118508 () Bool)

(assert (=> b!7551681 m!8118508))

(assert (=> b!7551681 m!8118182))

(declare-fun m!8118510 () Bool)

(assert (=> b!7551681 m!8118510))

(declare-fun m!8118512 () Bool)

(assert (=> b!7551680 m!8118512))

(declare-fun m!8118514 () Bool)

(assert (=> d!2313064 m!8118514))

(assert (=> d!2313064 m!8118356))

(declare-fun m!8118516 () Bool)

(assert (=> d!2313064 m!8118516))

(assert (=> b!7551338 d!2313064))

(declare-fun d!2313066 () Bool)

(declare-fun e!4498296 () Bool)

(assert (=> d!2313066 e!4498296))

(declare-fun res!3026869 () Bool)

(assert (=> d!2313066 (=> res!3026869 e!4498296)))

(declare-fun lt!2647071 () Bool)

(assert (=> d!2313066 (= res!3026869 (not lt!2647071))))

(declare-fun e!4498295 () Bool)

(assert (=> d!2313066 (= lt!2647071 e!4498295)))

(declare-fun res!3026868 () Bool)

(assert (=> d!2313066 (=> res!3026868 e!4498295)))

(assert (=> d!2313066 (= res!3026868 (is-Nil!72707 lt!2646952))))

(assert (=> d!2313066 (= (isPrefix!6154 lt!2646952 input!7874) lt!2647071)))

(declare-fun b!7551683 () Bool)

(declare-fun e!4498294 () Bool)

(assert (=> b!7551683 (= e!4498295 e!4498294)))

(declare-fun res!3026870 () Bool)

(assert (=> b!7551683 (=> (not res!3026870) (not e!4498294))))

(assert (=> b!7551683 (= res!3026870 (not (is-Nil!72707 input!7874)))))

(declare-fun b!7551685 () Bool)

(assert (=> b!7551685 (= e!4498294 (isPrefix!6154 (tail!15080 lt!2646952) (tail!15080 input!7874)))))

(declare-fun b!7551684 () Bool)

(declare-fun res!3026871 () Bool)

(assert (=> b!7551684 (=> (not res!3026871) (not e!4498294))))

(assert (=> b!7551684 (= res!3026871 (= (head!15538 lt!2646952) (head!15538 input!7874)))))

(declare-fun b!7551686 () Bool)

(assert (=> b!7551686 (= e!4498296 (>= (size!42444 input!7874) (size!42444 lt!2646952)))))

(assert (= (and d!2313066 (not res!3026868)) b!7551683))

(assert (= (and b!7551683 res!3026870) b!7551684))

(assert (= (and b!7551684 res!3026871) b!7551685))

(assert (= (and d!2313066 (not res!3026869)) b!7551686))

(declare-fun m!8118518 () Bool)

(assert (=> b!7551685 m!8118518))

(assert (=> b!7551685 m!8118420))

(assert (=> b!7551685 m!8118518))

(assert (=> b!7551685 m!8118420))

(declare-fun m!8118520 () Bool)

(assert (=> b!7551685 m!8118520))

(declare-fun m!8118522 () Bool)

(assert (=> b!7551684 m!8118522))

(assert (=> b!7551684 m!8118426))

(assert (=> b!7551686 m!8118248))

(assert (=> b!7551686 m!8118470))

(assert (=> b!7551338 d!2313066))

(declare-fun d!2313068 () Bool)

(declare-fun lt!2647072 () List!72831)

(assert (=> d!2313068 (= (++!17464 knownP!30 lt!2647072) input!7874)))

(declare-fun e!4498297 () List!72831)

(assert (=> d!2313068 (= lt!2647072 e!4498297)))

(declare-fun c!1393845 () Bool)

(assert (=> d!2313068 (= c!1393845 (is-Cons!72707 knownP!30))))

(assert (=> d!2313068 (>= (size!42444 input!7874) (size!42444 knownP!30))))

(assert (=> d!2313068 (= (getSuffix!3634 input!7874 knownP!30) lt!2647072)))

(declare-fun b!7551687 () Bool)

(assert (=> b!7551687 (= e!4498297 (getSuffix!3634 (tail!15080 input!7874) (t!387552 knownP!30)))))

(declare-fun b!7551688 () Bool)

(assert (=> b!7551688 (= e!4498297 input!7874)))

(assert (= (and d!2313068 c!1393845) b!7551687))

(assert (= (and d!2313068 (not c!1393845)) b!7551688))

(declare-fun m!8118524 () Bool)

(assert (=> d!2313068 m!8118524))

(assert (=> d!2313068 m!8118248))

(assert (=> d!2313068 m!8118184))

(assert (=> b!7551687 m!8118420))

(assert (=> b!7551687 m!8118420))

(declare-fun m!8118526 () Bool)

(assert (=> b!7551687 m!8118526))

(assert (=> b!7551338 d!2313068))

(declare-fun d!2313070 () Bool)

(declare-fun e!4498300 () Bool)

(assert (=> d!2313070 e!4498300))

(declare-fun res!3026873 () Bool)

(assert (=> d!2313070 (=> res!3026873 e!4498300)))

(declare-fun lt!2647073 () Bool)

(assert (=> d!2313070 (= res!3026873 (not lt!2647073))))

(declare-fun e!4498299 () Bool)

(assert (=> d!2313070 (= lt!2647073 e!4498299)))

(declare-fun res!3026872 () Bool)

(assert (=> d!2313070 (=> res!3026872 e!4498299)))

(assert (=> d!2313070 (= res!3026872 (is-Nil!72707 lt!2646952))))

(assert (=> d!2313070 (= (isPrefix!6154 lt!2646952 knownP!30) lt!2647073)))

(declare-fun b!7551689 () Bool)

(declare-fun e!4498298 () Bool)

(assert (=> b!7551689 (= e!4498299 e!4498298)))

(declare-fun res!3026874 () Bool)

(assert (=> b!7551689 (=> (not res!3026874) (not e!4498298))))

(assert (=> b!7551689 (= res!3026874 (not (is-Nil!72707 knownP!30)))))

(declare-fun b!7551691 () Bool)

(assert (=> b!7551691 (= e!4498298 (isPrefix!6154 (tail!15080 lt!2646952) (tail!15080 knownP!30)))))

(declare-fun b!7551690 () Bool)

(declare-fun res!3026875 () Bool)

(assert (=> b!7551690 (=> (not res!3026875) (not e!4498298))))

(assert (=> b!7551690 (= res!3026875 (= (head!15538 lt!2646952) (head!15538 knownP!30)))))

(declare-fun b!7551692 () Bool)

(assert (=> b!7551692 (= e!4498300 (>= (size!42444 knownP!30) (size!42444 lt!2646952)))))

(assert (= (and d!2313070 (not res!3026872)) b!7551689))

(assert (= (and b!7551689 res!3026874) b!7551690))

(assert (= (and b!7551690 res!3026875) b!7551691))

(assert (= (and d!2313070 (not res!3026873)) b!7551692))

(assert (=> b!7551691 m!8118518))

(assert (=> b!7551691 m!8118428))

(assert (=> b!7551691 m!8118518))

(assert (=> b!7551691 m!8118428))

(declare-fun m!8118528 () Bool)

(assert (=> b!7551691 m!8118528))

(assert (=> b!7551690 m!8118522))

(assert (=> b!7551690 m!8118432))

(assert (=> b!7551692 m!8118184))

(assert (=> b!7551692 m!8118470))

(assert (=> b!7551338 d!2313070))

(declare-fun d!2313072 () Bool)

(assert (=> d!2313072 (= (head!15538 lt!2646961) (h!79155 lt!2646961))))

(assert (=> b!7551338 d!2313072))

(declare-fun d!2313074 () Bool)

(assert (=> d!2313074 (isPrefix!6154 lt!2646952 knownP!30)))

(declare-fun lt!2647076 () Unit!166834)

(declare-fun choose!58449 (List!72831 List!72831 List!72831) Unit!166834)

(assert (=> d!2313074 (= lt!2647076 (choose!58449 knownP!30 lt!2646952 input!7874))))

(assert (=> d!2313074 (isPrefix!6154 knownP!30 input!7874)))

(assert (=> d!2313074 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!904 knownP!30 lt!2646952 input!7874) lt!2647076)))

(declare-fun bs!1940211 () Bool)

(assert (= bs!1940211 d!2313074))

(assert (=> bs!1940211 m!8118216))

(declare-fun m!8118530 () Bool)

(assert (=> bs!1940211 m!8118530))

(assert (=> bs!1940211 m!8118188))

(assert (=> b!7551338 d!2313074))

(declare-fun d!2313076 () Bool)

(assert (=> d!2313076 (isPrefix!6154 (++!17464 testedP!423 (Cons!72707 (head!15538 (getSuffix!3634 input!7874 testedP!423)) Nil!72707)) input!7874)))

(declare-fun lt!2647081 () Unit!166834)

(declare-fun choose!58450 (List!72831 List!72831) Unit!166834)

(assert (=> d!2313076 (= lt!2647081 (choose!58450 testedP!423 input!7874))))

(assert (=> d!2313076 (isPrefix!6154 testedP!423 input!7874)))

(assert (=> d!2313076 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1215 testedP!423 input!7874) lt!2647081)))

(declare-fun bs!1940212 () Bool)

(assert (= bs!1940212 d!2313076))

(assert (=> bs!1940212 m!8118240))

(declare-fun m!8118532 () Bool)

(assert (=> bs!1940212 m!8118532))

(assert (=> bs!1940212 m!8118532))

(declare-fun m!8118534 () Bool)

(assert (=> bs!1940212 m!8118534))

(assert (=> bs!1940212 m!8118228))

(declare-fun m!8118536 () Bool)

(assert (=> bs!1940212 m!8118536))

(declare-fun m!8118538 () Bool)

(assert (=> bs!1940212 m!8118538))

(assert (=> bs!1940212 m!8118228))

(assert (=> b!7551338 d!2313076))

(declare-fun b!7551733 () Bool)

(declare-fun res!3026909 () Bool)

(declare-fun e!4498330 () Bool)

(assert (=> b!7551733 (=> res!3026909 e!4498330)))

(declare-fun e!4498324 () Bool)

(assert (=> b!7551733 (= res!3026909 e!4498324)))

(declare-fun res!3026906 () Bool)

(assert (=> b!7551733 (=> (not res!3026906) (not e!4498324))))

(declare-fun lt!2647088 () Bool)

(assert (=> b!7551733 (= res!3026906 lt!2647088)))

(declare-fun b!7551734 () Bool)

(declare-fun e!4498326 () Bool)

(declare-fun e!4498328 () Bool)

(assert (=> b!7551734 (= e!4498326 e!4498328)))

(declare-fun res!3026904 () Bool)

(assert (=> b!7551734 (=> res!3026904 e!4498328)))

(declare-fun call!692435 () Bool)

(assert (=> b!7551734 (= res!3026904 call!692435)))

(declare-fun b!7551735 () Bool)

(assert (=> b!7551735 (= e!4498328 (not (= (head!15538 lt!2646967) (c!1393775 r!24333))))))

(declare-fun b!7551736 () Bool)

(declare-fun res!3026907 () Bool)

(assert (=> b!7551736 (=> (not res!3026907) (not e!4498324))))

(declare-fun isEmpty!41401 (List!72831) Bool)

(assert (=> b!7551736 (= res!3026907 (isEmpty!41401 (tail!15080 lt!2646967)))))

(declare-fun b!7551737 () Bool)

(declare-fun e!4498329 () Bool)

(assert (=> b!7551737 (= e!4498329 (nullable!8704 r!24333))))

(declare-fun b!7551738 () Bool)

(declare-fun e!4498327 () Bool)

(declare-fun e!4498325 () Bool)

(assert (=> b!7551738 (= e!4498327 e!4498325)))

(declare-fun c!1393854 () Bool)

(assert (=> b!7551738 (= c!1393854 (is-EmptyLang!19948 r!24333))))

(declare-fun b!7551739 () Bool)

(assert (=> b!7551739 (= e!4498329 (matchR!9550 (derivativeStep!5738 r!24333 (head!15538 lt!2646967)) (tail!15080 lt!2646967)))))

(declare-fun b!7551740 () Bool)

(declare-fun res!3026911 () Bool)

(assert (=> b!7551740 (=> res!3026911 e!4498330)))

(assert (=> b!7551740 (= res!3026911 (not (is-ElementMatch!19948 r!24333)))))

(assert (=> b!7551740 (= e!4498325 e!4498330)))

(declare-fun b!7551741 () Bool)

(assert (=> b!7551741 (= e!4498330 e!4498326)))

(declare-fun res!3026905 () Bool)

(assert (=> b!7551741 (=> (not res!3026905) (not e!4498326))))

(assert (=> b!7551741 (= res!3026905 (not lt!2647088))))

(declare-fun b!7551742 () Bool)

(declare-fun res!3026910 () Bool)

(assert (=> b!7551742 (=> (not res!3026910) (not e!4498324))))

(assert (=> b!7551742 (= res!3026910 (not call!692435))))

(declare-fun b!7551743 () Bool)

(assert (=> b!7551743 (= e!4498324 (= (head!15538 lt!2646967) (c!1393775 r!24333)))))

(declare-fun b!7551744 () Bool)

(assert (=> b!7551744 (= e!4498325 (not lt!2647088))))

(declare-fun d!2313078 () Bool)

(assert (=> d!2313078 e!4498327))

(declare-fun c!1393852 () Bool)

(assert (=> d!2313078 (= c!1393852 (is-EmptyExpr!19948 r!24333))))

(assert (=> d!2313078 (= lt!2647088 e!4498329)))

(declare-fun c!1393853 () Bool)

(assert (=> d!2313078 (= c!1393853 (isEmpty!41401 lt!2646967))))

(assert (=> d!2313078 (validRegex!10376 r!24333)))

(assert (=> d!2313078 (= (matchR!9550 r!24333 lt!2646967) lt!2647088)))

(declare-fun bm!692430 () Bool)

(assert (=> bm!692430 (= call!692435 (isEmpty!41401 lt!2646967))))

(declare-fun b!7551745 () Bool)

(assert (=> b!7551745 (= e!4498327 (= lt!2647088 call!692435))))

(declare-fun b!7551746 () Bool)

(declare-fun res!3026908 () Bool)

(assert (=> b!7551746 (=> res!3026908 e!4498328)))

(assert (=> b!7551746 (= res!3026908 (not (isEmpty!41401 (tail!15080 lt!2646967))))))

(assert (= (and d!2313078 c!1393853) b!7551737))

(assert (= (and d!2313078 (not c!1393853)) b!7551739))

(assert (= (and d!2313078 c!1393852) b!7551745))

(assert (= (and d!2313078 (not c!1393852)) b!7551738))

(assert (= (and b!7551738 c!1393854) b!7551744))

(assert (= (and b!7551738 (not c!1393854)) b!7551740))

(assert (= (and b!7551740 (not res!3026911)) b!7551733))

(assert (= (and b!7551733 res!3026906) b!7551742))

(assert (= (and b!7551742 res!3026910) b!7551736))

(assert (= (and b!7551736 res!3026907) b!7551743))

(assert (= (and b!7551733 (not res!3026909)) b!7551741))

(assert (= (and b!7551741 res!3026905) b!7551734))

(assert (= (and b!7551734 (not res!3026904)) b!7551746))

(assert (= (and b!7551746 (not res!3026908)) b!7551735))

(assert (= (or b!7551745 b!7551734 b!7551742) bm!692430))

(assert (=> b!7551739 m!8118202))

(assert (=> b!7551739 m!8118202))

(declare-fun m!8118550 () Bool)

(assert (=> b!7551739 m!8118550))

(assert (=> b!7551739 m!8118236))

(assert (=> b!7551739 m!8118550))

(assert (=> b!7551739 m!8118236))

(declare-fun m!8118552 () Bool)

(assert (=> b!7551739 m!8118552))

(assert (=> b!7551736 m!8118236))

(assert (=> b!7551736 m!8118236))

(declare-fun m!8118554 () Bool)

(assert (=> b!7551736 m!8118554))

(assert (=> b!7551743 m!8118202))

(assert (=> b!7551735 m!8118202))

(assert (=> b!7551746 m!8118236))

(assert (=> b!7551746 m!8118236))

(assert (=> b!7551746 m!8118554))

(declare-fun m!8118556 () Bool)

(assert (=> bm!692430 m!8118556))

(declare-fun m!8118558 () Bool)

(assert (=> b!7551737 m!8118558))

(assert (=> d!2313078 m!8118556))

(assert (=> d!2313078 m!8118234))

(assert (=> b!7551359 d!2313078))

(declare-fun d!2313084 () Bool)

(declare-fun lt!2647089 () List!72831)

(assert (=> d!2313084 (= (++!17464 testedP!423 lt!2647089) knownP!30)))

(declare-fun e!4498331 () List!72831)

(assert (=> d!2313084 (= lt!2647089 e!4498331)))

(declare-fun c!1393855 () Bool)

(assert (=> d!2313084 (= c!1393855 (is-Cons!72707 testedP!423))))

(assert (=> d!2313084 (>= (size!42444 knownP!30) (size!42444 testedP!423))))

(assert (=> d!2313084 (= (getSuffix!3634 knownP!30 testedP!423) lt!2647089)))

(declare-fun b!7551747 () Bool)

(assert (=> b!7551747 (= e!4498331 (getSuffix!3634 (tail!15080 knownP!30) (t!387552 testedP!423)))))

(declare-fun b!7551748 () Bool)

(assert (=> b!7551748 (= e!4498331 knownP!30)))

(assert (= (and d!2313084 c!1393855) b!7551747))

(assert (= (and d!2313084 (not c!1393855)) b!7551748))

(declare-fun m!8118560 () Bool)

(assert (=> d!2313084 m!8118560))

(assert (=> d!2313084 m!8118184))

(assert (=> d!2313084 m!8118182))

(assert (=> b!7551747 m!8118428))

(assert (=> b!7551747 m!8118428))

(declare-fun m!8118562 () Bool)

(assert (=> b!7551747 m!8118562))

(assert (=> b!7551359 d!2313084))

(declare-fun d!2313086 () Bool)

(declare-fun e!4498334 () Bool)

(assert (=> d!2313086 e!4498334))

(declare-fun res!3026913 () Bool)

(assert (=> d!2313086 (=> res!3026913 e!4498334)))

(declare-fun lt!2647090 () Bool)

(assert (=> d!2313086 (= res!3026913 (not lt!2647090))))

(declare-fun e!4498333 () Bool)

(assert (=> d!2313086 (= lt!2647090 e!4498333)))

(declare-fun res!3026912 () Bool)

(assert (=> d!2313086 (=> res!3026912 e!4498333)))

(assert (=> d!2313086 (= res!3026912 (is-Nil!72707 testedP!423))))

(assert (=> d!2313086 (= (isPrefix!6154 testedP!423 knownP!30) lt!2647090)))

(declare-fun b!7551749 () Bool)

(declare-fun e!4498332 () Bool)

(assert (=> b!7551749 (= e!4498333 e!4498332)))

(declare-fun res!3026914 () Bool)

(assert (=> b!7551749 (=> (not res!3026914) (not e!4498332))))

(assert (=> b!7551749 (= res!3026914 (not (is-Nil!72707 knownP!30)))))

(declare-fun b!7551751 () Bool)

(assert (=> b!7551751 (= e!4498332 (isPrefix!6154 (tail!15080 testedP!423) (tail!15080 knownP!30)))))

(declare-fun b!7551750 () Bool)

(declare-fun res!3026915 () Bool)

(assert (=> b!7551750 (=> (not res!3026915) (not e!4498332))))

(assert (=> b!7551750 (= res!3026915 (= (head!15538 testedP!423) (head!15538 knownP!30)))))

(declare-fun b!7551752 () Bool)

(assert (=> b!7551752 (= e!4498334 (>= (size!42444 knownP!30) (size!42444 testedP!423)))))

(assert (= (and d!2313086 (not res!3026912)) b!7551749))

(assert (= (and b!7551749 res!3026914) b!7551750))

(assert (= (and b!7551750 res!3026915) b!7551751))

(assert (= (and d!2313086 (not res!3026913)) b!7551752))

(assert (=> b!7551751 m!8118418))

(assert (=> b!7551751 m!8118428))

(assert (=> b!7551751 m!8118418))

(assert (=> b!7551751 m!8118428))

(declare-fun m!8118564 () Bool)

(assert (=> b!7551751 m!8118564))

(assert (=> b!7551750 m!8118424))

(assert (=> b!7551750 m!8118432))

(assert (=> b!7551752 m!8118184))

(assert (=> b!7551752 m!8118182))

(assert (=> b!7551359 d!2313086))

(declare-fun d!2313088 () Bool)

(assert (=> d!2313088 (isPrefix!6154 testedP!423 knownP!30)))

(declare-fun lt!2647091 () Unit!166834)

(assert (=> d!2313088 (= lt!2647091 (choose!58449 knownP!30 testedP!423 input!7874))))

(assert (=> d!2313088 (isPrefix!6154 knownP!30 input!7874)))

(assert (=> d!2313088 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!904 knownP!30 testedP!423 input!7874) lt!2647091)))

(declare-fun bs!1940214 () Bool)

(assert (= bs!1940214 d!2313088))

(assert (=> bs!1940214 m!8118198))

(declare-fun m!8118566 () Bool)

(assert (=> bs!1940214 m!8118566))

(assert (=> bs!1940214 m!8118188))

(assert (=> b!7551359 d!2313088))

(declare-fun d!2313090 () Bool)

(declare-fun lostCauseFct!459 (Regex!19948) Bool)

(assert (=> d!2313090 (= (lostCause!1740 r!24333) (lostCauseFct!459 r!24333))))

(declare-fun bs!1940215 () Bool)

(assert (= bs!1940215 d!2313090))

(declare-fun m!8118568 () Bool)

(assert (=> bs!1940215 m!8118568))

(assert (=> b!7551342 d!2313090))

(declare-fun b!7551757 () Bool)

(declare-fun e!4498338 () List!72831)

(assert (=> b!7551757 (= e!4498338 lt!2646966)))

(declare-fun lt!2647094 () List!72831)

(declare-fun e!4498337 () Bool)

(declare-fun b!7551760 () Bool)

(assert (=> b!7551760 (= e!4498337 (or (not (= lt!2646966 Nil!72707)) (= lt!2647094 lt!2646952)))))

(declare-fun b!7551759 () Bool)

(declare-fun res!3026916 () Bool)

(assert (=> b!7551759 (=> (not res!3026916) (not e!4498337))))

(assert (=> b!7551759 (= res!3026916 (= (size!42444 lt!2647094) (+ (size!42444 lt!2646952) (size!42444 lt!2646966))))))

(declare-fun b!7551758 () Bool)

(assert (=> b!7551758 (= e!4498338 (Cons!72707 (h!79155 lt!2646952) (++!17464 (t!387552 lt!2646952) lt!2646966)))))

(declare-fun d!2313092 () Bool)

(assert (=> d!2313092 e!4498337))

(declare-fun res!3026917 () Bool)

(assert (=> d!2313092 (=> (not res!3026917) (not e!4498337))))

(assert (=> d!2313092 (= res!3026917 (= (content!15391 lt!2647094) (set.union (content!15391 lt!2646952) (content!15391 lt!2646966))))))

(assert (=> d!2313092 (= lt!2647094 e!4498338)))

(declare-fun c!1393858 () Bool)

(assert (=> d!2313092 (= c!1393858 (is-Nil!72707 lt!2646952))))

(assert (=> d!2313092 (= (++!17464 lt!2646952 lt!2646966) lt!2647094)))

(assert (= (and d!2313092 c!1393858) b!7551757))

(assert (= (and d!2313092 (not c!1393858)) b!7551758))

(assert (= (and d!2313092 res!3026917) b!7551759))

(assert (= (and b!7551759 res!3026916) b!7551760))

(declare-fun m!8118570 () Bool)

(assert (=> b!7551759 m!8118570))

(assert (=> b!7551759 m!8118470))

(declare-fun m!8118572 () Bool)

(assert (=> b!7551759 m!8118572))

(declare-fun m!8118574 () Bool)

(assert (=> b!7551758 m!8118574))

(declare-fun m!8118576 () Bool)

(assert (=> d!2313092 m!8118576))

(declare-fun m!8118578 () Bool)

(assert (=> d!2313092 m!8118578))

(declare-fun m!8118580 () Bool)

(assert (=> d!2313092 m!8118580))

(assert (=> b!7551341 d!2313092))

(declare-fun b!7551761 () Bool)

(declare-fun e!4498340 () List!72831)

(assert (=> b!7551761 (= e!4498340 lt!2646961)))

(declare-fun lt!2647095 () List!72831)

(declare-fun b!7551764 () Bool)

(declare-fun e!4498339 () Bool)

(assert (=> b!7551764 (= e!4498339 (or (not (= lt!2646961 Nil!72707)) (= lt!2647095 testedP!423)))))

(declare-fun b!7551763 () Bool)

(declare-fun res!3026918 () Bool)

(assert (=> b!7551763 (=> (not res!3026918) (not e!4498339))))

(assert (=> b!7551763 (= res!3026918 (= (size!42444 lt!2647095) (+ (size!42444 testedP!423) (size!42444 lt!2646961))))))

(declare-fun b!7551762 () Bool)

(assert (=> b!7551762 (= e!4498340 (Cons!72707 (h!79155 testedP!423) (++!17464 (t!387552 testedP!423) lt!2646961)))))

(declare-fun d!2313094 () Bool)

(assert (=> d!2313094 e!4498339))

(declare-fun res!3026919 () Bool)

(assert (=> d!2313094 (=> (not res!3026919) (not e!4498339))))

(assert (=> d!2313094 (= res!3026919 (= (content!15391 lt!2647095) (set.union (content!15391 testedP!423) (content!15391 lt!2646961))))))

(assert (=> d!2313094 (= lt!2647095 e!4498340)))

(declare-fun c!1393859 () Bool)

(assert (=> d!2313094 (= c!1393859 (is-Nil!72707 testedP!423))))

(assert (=> d!2313094 (= (++!17464 testedP!423 lt!2646961) lt!2647095)))

(assert (= (and d!2313094 c!1393859) b!7551761))

(assert (= (and d!2313094 (not c!1393859)) b!7551762))

(assert (= (and d!2313094 res!3026919) b!7551763))

(assert (= (and b!7551763 res!3026918) b!7551764))

(declare-fun m!8118582 () Bool)

(assert (=> b!7551763 m!8118582))

(assert (=> b!7551763 m!8118182))

(declare-fun m!8118584 () Bool)

(assert (=> b!7551763 m!8118584))

(declare-fun m!8118586 () Bool)

(assert (=> b!7551762 m!8118586))

(declare-fun m!8118588 () Bool)

(assert (=> d!2313094 m!8118588))

(assert (=> d!2313094 m!8118356))

(declare-fun m!8118590 () Bool)

(assert (=> d!2313094 m!8118590))

(assert (=> b!7551356 d!2313094))

(declare-fun b!7551765 () Bool)

(declare-fun res!3026925 () Bool)

(declare-fun e!4498347 () Bool)

(assert (=> b!7551765 (=> res!3026925 e!4498347)))

(declare-fun e!4498341 () Bool)

(assert (=> b!7551765 (= res!3026925 e!4498341)))

(declare-fun res!3026922 () Bool)

(assert (=> b!7551765 (=> (not res!3026922) (not e!4498341))))

(declare-fun lt!2647096 () Bool)

(assert (=> b!7551765 (= res!3026922 lt!2647096)))

(declare-fun b!7551766 () Bool)

(declare-fun e!4498343 () Bool)

(declare-fun e!4498345 () Bool)

(assert (=> b!7551766 (= e!4498343 e!4498345)))

(declare-fun res!3026920 () Bool)

(assert (=> b!7551766 (=> res!3026920 e!4498345)))

(declare-fun call!692436 () Bool)

(assert (=> b!7551766 (= res!3026920 call!692436)))

(declare-fun b!7551767 () Bool)

(assert (=> b!7551767 (= e!4498345 (not (= (head!15538 knownP!30) (c!1393775 baseR!101))))))

(declare-fun b!7551768 () Bool)

(declare-fun res!3026923 () Bool)

(assert (=> b!7551768 (=> (not res!3026923) (not e!4498341))))

(assert (=> b!7551768 (= res!3026923 (isEmpty!41401 (tail!15080 knownP!30)))))

(declare-fun b!7551769 () Bool)

(declare-fun e!4498346 () Bool)

(assert (=> b!7551769 (= e!4498346 (nullable!8704 baseR!101))))

(declare-fun b!7551770 () Bool)

(declare-fun e!4498344 () Bool)

(declare-fun e!4498342 () Bool)

(assert (=> b!7551770 (= e!4498344 e!4498342)))

(declare-fun c!1393862 () Bool)

(assert (=> b!7551770 (= c!1393862 (is-EmptyLang!19948 baseR!101))))

(declare-fun b!7551771 () Bool)

(assert (=> b!7551771 (= e!4498346 (matchR!9550 (derivativeStep!5738 baseR!101 (head!15538 knownP!30)) (tail!15080 knownP!30)))))

(declare-fun b!7551772 () Bool)

(declare-fun res!3026927 () Bool)

(assert (=> b!7551772 (=> res!3026927 e!4498347)))

(assert (=> b!7551772 (= res!3026927 (not (is-ElementMatch!19948 baseR!101)))))

(assert (=> b!7551772 (= e!4498342 e!4498347)))

(declare-fun b!7551773 () Bool)

(assert (=> b!7551773 (= e!4498347 e!4498343)))

(declare-fun res!3026921 () Bool)

(assert (=> b!7551773 (=> (not res!3026921) (not e!4498343))))

(assert (=> b!7551773 (= res!3026921 (not lt!2647096))))

(declare-fun b!7551774 () Bool)

(declare-fun res!3026926 () Bool)

(assert (=> b!7551774 (=> (not res!3026926) (not e!4498341))))

(assert (=> b!7551774 (= res!3026926 (not call!692436))))

(declare-fun b!7551775 () Bool)

(assert (=> b!7551775 (= e!4498341 (= (head!15538 knownP!30) (c!1393775 baseR!101)))))

(declare-fun b!7551776 () Bool)

(assert (=> b!7551776 (= e!4498342 (not lt!2647096))))

(declare-fun d!2313096 () Bool)

(assert (=> d!2313096 e!4498344))

(declare-fun c!1393860 () Bool)

(assert (=> d!2313096 (= c!1393860 (is-EmptyExpr!19948 baseR!101))))

(assert (=> d!2313096 (= lt!2647096 e!4498346)))

(declare-fun c!1393861 () Bool)

(assert (=> d!2313096 (= c!1393861 (isEmpty!41401 knownP!30))))

(assert (=> d!2313096 (validRegex!10376 baseR!101)))

(assert (=> d!2313096 (= (matchR!9550 baseR!101 knownP!30) lt!2647096)))

(declare-fun bm!692431 () Bool)

(assert (=> bm!692431 (= call!692436 (isEmpty!41401 knownP!30))))

(declare-fun b!7551777 () Bool)

(assert (=> b!7551777 (= e!4498344 (= lt!2647096 call!692436))))

(declare-fun b!7551778 () Bool)

(declare-fun res!3026924 () Bool)

(assert (=> b!7551778 (=> res!3026924 e!4498345)))

(assert (=> b!7551778 (= res!3026924 (not (isEmpty!41401 (tail!15080 knownP!30))))))

(assert (= (and d!2313096 c!1393861) b!7551769))

(assert (= (and d!2313096 (not c!1393861)) b!7551771))

(assert (= (and d!2313096 c!1393860) b!7551777))

(assert (= (and d!2313096 (not c!1393860)) b!7551770))

(assert (= (and b!7551770 c!1393862) b!7551776))

(assert (= (and b!7551770 (not c!1393862)) b!7551772))

(assert (= (and b!7551772 (not res!3026927)) b!7551765))

(assert (= (and b!7551765 res!3026922) b!7551774))

(assert (= (and b!7551774 res!3026926) b!7551768))

(assert (= (and b!7551768 res!3026923) b!7551775))

(assert (= (and b!7551765 (not res!3026925)) b!7551773))

(assert (= (and b!7551773 res!3026921) b!7551766))

(assert (= (and b!7551766 (not res!3026920)) b!7551778))

(assert (= (and b!7551778 (not res!3026924)) b!7551767))

(assert (= (or b!7551777 b!7551766 b!7551774) bm!692431))

(assert (=> b!7551771 m!8118432))

(assert (=> b!7551771 m!8118432))

(declare-fun m!8118592 () Bool)

(assert (=> b!7551771 m!8118592))

(assert (=> b!7551771 m!8118428))

(assert (=> b!7551771 m!8118592))

(assert (=> b!7551771 m!8118428))

(declare-fun m!8118594 () Bool)

(assert (=> b!7551771 m!8118594))

(assert (=> b!7551768 m!8118428))

(assert (=> b!7551768 m!8118428))

(declare-fun m!8118596 () Bool)

(assert (=> b!7551768 m!8118596))

(assert (=> b!7551775 m!8118432))

(assert (=> b!7551767 m!8118432))

(assert (=> b!7551778 m!8118428))

(assert (=> b!7551778 m!8118428))

(assert (=> b!7551778 m!8118596))

(declare-fun m!8118598 () Bool)

(assert (=> bm!692431 m!8118598))

(declare-fun m!8118600 () Bool)

(assert (=> b!7551769 m!8118600))

(assert (=> d!2313096 m!8118598))

(assert (=> d!2313096 m!8118250))

(assert (=> b!7551345 d!2313096))

(declare-fun d!2313098 () Bool)

(declare-fun lt!2647098 () Int)

(assert (=> d!2313098 (>= lt!2647098 0)))

(declare-fun e!4498349 () Int)

(assert (=> d!2313098 (= lt!2647098 e!4498349)))

(declare-fun c!1393864 () Bool)

(assert (=> d!2313098 (= c!1393864 (is-Nil!72707 testedP!423))))

(assert (=> d!2313098 (= (size!42444 testedP!423) lt!2647098)))

(declare-fun b!7551781 () Bool)

(assert (=> b!7551781 (= e!4498349 0)))

(declare-fun b!7551782 () Bool)

(assert (=> b!7551782 (= e!4498349 (+ 1 (size!42444 (t!387552 testedP!423))))))

(assert (= (and d!2313098 c!1393864) b!7551781))

(assert (= (and d!2313098 (not c!1393864)) b!7551782))

(declare-fun m!8118602 () Bool)

(assert (=> b!7551782 m!8118602))

(assert (=> b!7551344 d!2313098))

(declare-fun d!2313100 () Bool)

(declare-fun lt!2647099 () Int)

(assert (=> d!2313100 (>= lt!2647099 0)))

(declare-fun e!4498350 () Int)

(assert (=> d!2313100 (= lt!2647099 e!4498350)))

(declare-fun c!1393865 () Bool)

(assert (=> d!2313100 (= c!1393865 (is-Nil!72707 knownP!30))))

(assert (=> d!2313100 (= (size!42444 knownP!30) lt!2647099)))

(declare-fun b!7551783 () Bool)

(assert (=> b!7551783 (= e!4498350 0)))

(declare-fun b!7551784 () Bool)

(assert (=> b!7551784 (= e!4498350 (+ 1 (size!42444 (t!387552 knownP!30))))))

(assert (= (and d!2313100 c!1393865) b!7551783))

(assert (= (and d!2313100 (not c!1393865)) b!7551784))

(declare-fun m!8118604 () Bool)

(assert (=> b!7551784 m!8118604))

(assert (=> b!7551344 d!2313100))

(declare-fun d!2313102 () Bool)

(assert (=> d!2313102 (= ($colon$colon!3392 (tail!15080 lt!2646967) lt!2646964) (Cons!72707 lt!2646964 (tail!15080 lt!2646967)))))

(assert (=> b!7551354 d!2313102))

(declare-fun d!2313106 () Bool)

(assert (=> d!2313106 (= (tail!15080 lt!2646967) (t!387552 lt!2646967))))

(assert (=> b!7551354 d!2313106))

(declare-fun d!2313108 () Bool)

(assert (=> d!2313108 (= (head!15538 lt!2646967) (h!79155 lt!2646967))))

(assert (=> b!7551343 d!2313108))

(declare-fun d!2313110 () Bool)

(assert (=> d!2313110 (= lt!2646951 lt!2646961)))

(declare-fun lt!2647103 () Unit!166834)

(declare-fun choose!58452 (List!72831 List!72831 List!72831 List!72831 List!72831) Unit!166834)

(assert (=> d!2313110 (= lt!2647103 (choose!58452 testedP!423 lt!2646951 testedP!423 lt!2646961 input!7874))))

(assert (=> d!2313110 (isPrefix!6154 testedP!423 input!7874)))

(assert (=> d!2313110 (= (lemmaSamePrefixThenSameSuffix!2870 testedP!423 lt!2646951 testedP!423 lt!2646961 input!7874) lt!2647103)))

(declare-fun bs!1940216 () Bool)

(assert (= bs!1940216 d!2313110))

(declare-fun m!8118618 () Bool)

(assert (=> bs!1940216 m!8118618))

(assert (=> bs!1940216 m!8118240))

(assert (=> b!7551343 d!2313110))

(declare-fun b!7551810 () Bool)

(declare-fun e!4498363 () Bool)

(declare-fun tp!2196858 () Bool)

(assert (=> b!7551810 (= e!4498363 tp!2196858)))

(declare-fun b!7551809 () Bool)

(declare-fun tp!2196857 () Bool)

(declare-fun tp!2196860 () Bool)

(assert (=> b!7551809 (= e!4498363 (and tp!2196857 tp!2196860))))

(declare-fun b!7551808 () Bool)

(assert (=> b!7551808 (= e!4498363 tp_is_empty!50251)))

(declare-fun b!7551811 () Bool)

(declare-fun tp!2196859 () Bool)

(declare-fun tp!2196856 () Bool)

(assert (=> b!7551811 (= e!4498363 (and tp!2196859 tp!2196856))))

(assert (=> b!7551348 (= tp!2196804 e!4498363)))

(assert (= (and b!7551348 (is-ElementMatch!19948 (reg!20277 r!24333))) b!7551808))

(assert (= (and b!7551348 (is-Concat!28793 (reg!20277 r!24333))) b!7551809))

(assert (= (and b!7551348 (is-Star!19948 (reg!20277 r!24333))) b!7551810))

(assert (= (and b!7551348 (is-Union!19948 (reg!20277 r!24333))) b!7551811))

(declare-fun b!7551814 () Bool)

(declare-fun e!4498364 () Bool)

(declare-fun tp!2196863 () Bool)

(assert (=> b!7551814 (= e!4498364 tp!2196863)))

(declare-fun b!7551813 () Bool)

(declare-fun tp!2196862 () Bool)

(declare-fun tp!2196865 () Bool)

(assert (=> b!7551813 (= e!4498364 (and tp!2196862 tp!2196865))))

(declare-fun b!7551812 () Bool)

(assert (=> b!7551812 (= e!4498364 tp_is_empty!50251)))

(declare-fun b!7551815 () Bool)

(declare-fun tp!2196864 () Bool)

(declare-fun tp!2196861 () Bool)

(assert (=> b!7551815 (= e!4498364 (and tp!2196864 tp!2196861))))

(assert (=> b!7551353 (= tp!2196803 e!4498364)))

(assert (= (and b!7551353 (is-ElementMatch!19948 (reg!20277 baseR!101))) b!7551812))

(assert (= (and b!7551353 (is-Concat!28793 (reg!20277 baseR!101))) b!7551813))

(assert (= (and b!7551353 (is-Star!19948 (reg!20277 baseR!101))) b!7551814))

(assert (= (and b!7551353 (is-Union!19948 (reg!20277 baseR!101))) b!7551815))

(declare-fun b!7551820 () Bool)

(declare-fun e!4498367 () Bool)

(declare-fun tp!2196868 () Bool)

(assert (=> b!7551820 (= e!4498367 (and tp_is_empty!50251 tp!2196868))))

(assert (=> b!7551347 (= tp!2196797 e!4498367)))

(assert (= (and b!7551347 (is-Cons!72707 (t!387552 input!7874))) b!7551820))

(declare-fun b!7551823 () Bool)

(declare-fun e!4498368 () Bool)

(declare-fun tp!2196871 () Bool)

(assert (=> b!7551823 (= e!4498368 tp!2196871)))

(declare-fun b!7551822 () Bool)

(declare-fun tp!2196870 () Bool)

(declare-fun tp!2196873 () Bool)

(assert (=> b!7551822 (= e!4498368 (and tp!2196870 tp!2196873))))

(declare-fun b!7551821 () Bool)

(assert (=> b!7551821 (= e!4498368 tp_is_empty!50251)))

(declare-fun b!7551824 () Bool)

(declare-fun tp!2196872 () Bool)

(declare-fun tp!2196869 () Bool)

(assert (=> b!7551824 (= e!4498368 (and tp!2196872 tp!2196869))))

(assert (=> b!7551336 (= tp!2196805 e!4498368)))

(assert (= (and b!7551336 (is-ElementMatch!19948 (regOne!40408 baseR!101))) b!7551821))

(assert (= (and b!7551336 (is-Concat!28793 (regOne!40408 baseR!101))) b!7551822))

(assert (= (and b!7551336 (is-Star!19948 (regOne!40408 baseR!101))) b!7551823))

(assert (= (and b!7551336 (is-Union!19948 (regOne!40408 baseR!101))) b!7551824))

(declare-fun b!7551827 () Bool)

(declare-fun e!4498369 () Bool)

(declare-fun tp!2196876 () Bool)

(assert (=> b!7551827 (= e!4498369 tp!2196876)))

(declare-fun b!7551826 () Bool)

(declare-fun tp!2196875 () Bool)

(declare-fun tp!2196878 () Bool)

(assert (=> b!7551826 (= e!4498369 (and tp!2196875 tp!2196878))))

(declare-fun b!7551825 () Bool)

(assert (=> b!7551825 (= e!4498369 tp_is_empty!50251)))

(declare-fun b!7551828 () Bool)

(declare-fun tp!2196877 () Bool)

(declare-fun tp!2196874 () Bool)

(assert (=> b!7551828 (= e!4498369 (and tp!2196877 tp!2196874))))

(assert (=> b!7551336 (= tp!2196798 e!4498369)))

(assert (= (and b!7551336 (is-ElementMatch!19948 (regTwo!40408 baseR!101))) b!7551825))

(assert (= (and b!7551336 (is-Concat!28793 (regTwo!40408 baseR!101))) b!7551826))

(assert (= (and b!7551336 (is-Star!19948 (regTwo!40408 baseR!101))) b!7551827))

(assert (= (and b!7551336 (is-Union!19948 (regTwo!40408 baseR!101))) b!7551828))

(declare-fun b!7551831 () Bool)

(declare-fun e!4498370 () Bool)

(declare-fun tp!2196881 () Bool)

(assert (=> b!7551831 (= e!4498370 tp!2196881)))

(declare-fun b!7551830 () Bool)

(declare-fun tp!2196880 () Bool)

(declare-fun tp!2196883 () Bool)

(assert (=> b!7551830 (= e!4498370 (and tp!2196880 tp!2196883))))

(declare-fun b!7551829 () Bool)

(assert (=> b!7551829 (= e!4498370 tp_is_empty!50251)))

(declare-fun b!7551832 () Bool)

(declare-fun tp!2196882 () Bool)

(declare-fun tp!2196879 () Bool)

(assert (=> b!7551832 (= e!4498370 (and tp!2196882 tp!2196879))))

(assert (=> b!7551352 (= tp!2196799 e!4498370)))

(assert (= (and b!7551352 (is-ElementMatch!19948 (regOne!40408 r!24333))) b!7551829))

(assert (= (and b!7551352 (is-Concat!28793 (regOne!40408 r!24333))) b!7551830))

(assert (= (and b!7551352 (is-Star!19948 (regOne!40408 r!24333))) b!7551831))

(assert (= (and b!7551352 (is-Union!19948 (regOne!40408 r!24333))) b!7551832))

(declare-fun b!7551835 () Bool)

(declare-fun e!4498371 () Bool)

(declare-fun tp!2196886 () Bool)

(assert (=> b!7551835 (= e!4498371 tp!2196886)))

(declare-fun b!7551834 () Bool)

(declare-fun tp!2196885 () Bool)

(declare-fun tp!2196888 () Bool)

(assert (=> b!7551834 (= e!4498371 (and tp!2196885 tp!2196888))))

(declare-fun b!7551833 () Bool)

(assert (=> b!7551833 (= e!4498371 tp_is_empty!50251)))

(declare-fun b!7551836 () Bool)

(declare-fun tp!2196887 () Bool)

(declare-fun tp!2196884 () Bool)

(assert (=> b!7551836 (= e!4498371 (and tp!2196887 tp!2196884))))

(assert (=> b!7551352 (= tp!2196800 e!4498371)))

(assert (= (and b!7551352 (is-ElementMatch!19948 (regTwo!40408 r!24333))) b!7551833))

(assert (= (and b!7551352 (is-Concat!28793 (regTwo!40408 r!24333))) b!7551834))

(assert (= (and b!7551352 (is-Star!19948 (regTwo!40408 r!24333))) b!7551835))

(assert (= (and b!7551352 (is-Union!19948 (regTwo!40408 r!24333))) b!7551836))

(declare-fun b!7551837 () Bool)

(declare-fun e!4498372 () Bool)

(declare-fun tp!2196889 () Bool)

(assert (=> b!7551837 (= e!4498372 (and tp_is_empty!50251 tp!2196889))))

(assert (=> b!7551351 (= tp!2196801 e!4498372)))

(assert (= (and b!7551351 (is-Cons!72707 (t!387552 knownP!30))) b!7551837))

(declare-fun b!7551840 () Bool)

(declare-fun e!4498373 () Bool)

(declare-fun tp!2196892 () Bool)

(assert (=> b!7551840 (= e!4498373 tp!2196892)))

(declare-fun b!7551839 () Bool)

(declare-fun tp!2196891 () Bool)

(declare-fun tp!2196894 () Bool)

(assert (=> b!7551839 (= e!4498373 (and tp!2196891 tp!2196894))))

(declare-fun b!7551838 () Bool)

(assert (=> b!7551838 (= e!4498373 tp_is_empty!50251)))

(declare-fun b!7551841 () Bool)

(declare-fun tp!2196893 () Bool)

(declare-fun tp!2196890 () Bool)

(assert (=> b!7551841 (= e!4498373 (and tp!2196893 tp!2196890))))

(assert (=> b!7551334 (= tp!2196806 e!4498373)))

(assert (= (and b!7551334 (is-ElementMatch!19948 (regOne!40409 r!24333))) b!7551838))

(assert (= (and b!7551334 (is-Concat!28793 (regOne!40409 r!24333))) b!7551839))

(assert (= (and b!7551334 (is-Star!19948 (regOne!40409 r!24333))) b!7551840))

(assert (= (and b!7551334 (is-Union!19948 (regOne!40409 r!24333))) b!7551841))

(declare-fun b!7551844 () Bool)

(declare-fun e!4498374 () Bool)

(declare-fun tp!2196897 () Bool)

(assert (=> b!7551844 (= e!4498374 tp!2196897)))

(declare-fun b!7551843 () Bool)

(declare-fun tp!2196896 () Bool)

(declare-fun tp!2196899 () Bool)

(assert (=> b!7551843 (= e!4498374 (and tp!2196896 tp!2196899))))

(declare-fun b!7551842 () Bool)

(assert (=> b!7551842 (= e!4498374 tp_is_empty!50251)))

(declare-fun b!7551845 () Bool)

(declare-fun tp!2196898 () Bool)

(declare-fun tp!2196895 () Bool)

(assert (=> b!7551845 (= e!4498374 (and tp!2196898 tp!2196895))))

(assert (=> b!7551334 (= tp!2196802 e!4498374)))

(assert (= (and b!7551334 (is-ElementMatch!19948 (regTwo!40409 r!24333))) b!7551842))

(assert (= (and b!7551334 (is-Concat!28793 (regTwo!40409 r!24333))) b!7551843))

(assert (= (and b!7551334 (is-Star!19948 (regTwo!40409 r!24333))) b!7551844))

(assert (= (and b!7551334 (is-Union!19948 (regTwo!40409 r!24333))) b!7551845))

(declare-fun b!7551848 () Bool)

(declare-fun e!4498375 () Bool)

(declare-fun tp!2196902 () Bool)

(assert (=> b!7551848 (= e!4498375 tp!2196902)))

(declare-fun b!7551847 () Bool)

(declare-fun tp!2196901 () Bool)

(declare-fun tp!2196904 () Bool)

(assert (=> b!7551847 (= e!4498375 (and tp!2196901 tp!2196904))))

(declare-fun b!7551846 () Bool)

(assert (=> b!7551846 (= e!4498375 tp_is_empty!50251)))

(declare-fun b!7551849 () Bool)

(declare-fun tp!2196903 () Bool)

(declare-fun tp!2196900 () Bool)

(assert (=> b!7551849 (= e!4498375 (and tp!2196903 tp!2196900))))

(assert (=> b!7551339 (= tp!2196794 e!4498375)))

(assert (= (and b!7551339 (is-ElementMatch!19948 (regOne!40409 baseR!101))) b!7551846))

(assert (= (and b!7551339 (is-Concat!28793 (regOne!40409 baseR!101))) b!7551847))

(assert (= (and b!7551339 (is-Star!19948 (regOne!40409 baseR!101))) b!7551848))

(assert (= (and b!7551339 (is-Union!19948 (regOne!40409 baseR!101))) b!7551849))

(declare-fun b!7551852 () Bool)

(declare-fun e!4498376 () Bool)

(declare-fun tp!2196907 () Bool)

(assert (=> b!7551852 (= e!4498376 tp!2196907)))

(declare-fun b!7551851 () Bool)

(declare-fun tp!2196906 () Bool)

(declare-fun tp!2196909 () Bool)

(assert (=> b!7551851 (= e!4498376 (and tp!2196906 tp!2196909))))

(declare-fun b!7551850 () Bool)

(assert (=> b!7551850 (= e!4498376 tp_is_empty!50251)))

(declare-fun b!7551853 () Bool)

(declare-fun tp!2196908 () Bool)

(declare-fun tp!2196905 () Bool)

(assert (=> b!7551853 (= e!4498376 (and tp!2196908 tp!2196905))))

(assert (=> b!7551339 (= tp!2196796 e!4498376)))

(assert (= (and b!7551339 (is-ElementMatch!19948 (regTwo!40409 baseR!101))) b!7551850))

(assert (= (and b!7551339 (is-Concat!28793 (regTwo!40409 baseR!101))) b!7551851))

(assert (= (and b!7551339 (is-Star!19948 (regTwo!40409 baseR!101))) b!7551852))

(assert (= (and b!7551339 (is-Union!19948 (regTwo!40409 baseR!101))) b!7551853))

(declare-fun b!7551854 () Bool)

(declare-fun e!4498377 () Bool)

(declare-fun tp!2196910 () Bool)

(assert (=> b!7551854 (= e!4498377 (and tp_is_empty!50251 tp!2196910))))

(assert (=> b!7551355 (= tp!2196795 e!4498377)))

(assert (= (and b!7551355 (is-Cons!72707 (t!387552 testedP!423))) b!7551854))

(push 1)

(assert (not b!7551810))

(assert (not d!2313048))

(assert (not b!7551759))

(assert (not b!7551837))

(assert (not b!7551762))

(assert (not b!7551690))

(assert (not b!7551578))

(assert (not d!2313050))

(assert (not b!7551736))

(assert (not b!7551823))

(assert (not b!7551767))

(assert (not b!7551826))

(assert (not b!7551828))

(assert (not d!2313090))

(assert (not b!7551625))

(assert (not b!7551778))

(assert (not b!7551775))

(assert (not bm!692411))

(assert (not d!2313094))

(assert (not b!7551750))

(assert (not b!7551691))

(assert (not b!7551843))

(assert (not b!7551814))

(assert (not b!7551832))

(assert (not b!7551824))

(assert (not d!2313018))

(assert (not b!7551623))

(assert (not b!7551737))

(assert (not b!7551674))

(assert (not b!7551769))

(assert (not b!7551467))

(assert (not d!2313092))

(assert (not b!7551763))

(assert (not bm!692430))

(assert (not b!7551575))

(assert (not b!7551576))

(assert (not b!7551684))

(assert (not b!7551747))

(assert (not b!7551735))

(assert (not b!7551569))

(assert (not b!7551809))

(assert (not b!7551840))

(assert (not b!7551495))

(assert (not b!7551848))

(assert (not b!7551782))

(assert (not b!7551743))

(assert (not d!2313056))

(assert (not b!7551827))

(assert (not d!2313044))

(assert (not bm!692425))

(assert (not b!7551841))

(assert (not b!7551758))

(assert (not b!7551854))

(assert (not b!7551567))

(assert (not d!2313084))

(assert (not b!7551853))

(assert (not b!7551849))

(assert (not bm!692431))

(assert (not b!7551565))

(assert (not b!7551496))

(assert (not b!7551831))

(assert (not b!7551751))

(assert (not b!7551692))

(assert (not d!2313078))

(assert (not d!2313064))

(assert (not d!2313110))

(assert (not b!7551847))

(assert (not b!7551739))

(assert (not b!7551563))

(assert (not b!7551564))

(assert (not b!7551836))

(assert (not b!7551830))

(assert (not d!2313088))

(assert (not d!2313068))

(assert (not b!7551815))

(assert (not b!7551839))

(assert (not b!7551589))

(assert (not b!7551844))

(assert (not d!2313052))

(assert (not b!7551784))

(assert (not b!7551845))

(assert (not b!7551752))

(assert (not b!7551852))

(assert (not b!7551588))

(assert (not b!7551568))

(assert (not b!7551641))

(assert (not b!7551687))

(assert (not b!7551835))

(assert (not b!7551686))

(assert (not d!2313042))

(assert (not bm!692412))

(assert (not d!2313022))

(assert (not d!2313096))

(assert (not b!7551523))

(assert (not b!7551499))

(assert (not b!7551571))

(assert tp_is_empty!50251)

(assert (not b!7551572))

(assert (not b!7551820))

(assert (not d!2313074))

(assert (not bm!692409))

(assert (not d!2313016))

(assert (not d!2313054))

(assert (not bm!692408))

(assert (not bm!692426))

(assert (not b!7551851))

(assert (not b!7551681))

(assert (not d!2313076))

(assert (not b!7551500))

(assert (not d!2313058))

(assert (not b!7551813))

(assert (not b!7551768))

(assert (not b!7551811))

(assert (not d!2313020))

(assert (not b!7551545))

(assert (not b!7551746))

(assert (not b!7551685))

(assert (not b!7551822))

(assert (not b!7551771))

(assert (not b!7551834))

(assert (not b!7551680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

