; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730484 () Bool)

(assert start!730484)

(declare-fun b!7560117 () Bool)

(declare-fun e!4502013 () Bool)

(declare-fun e!4502015 () Bool)

(assert (=> b!7560117 (= e!4502013 e!4502015)))

(declare-fun res!3029143 () Bool)

(assert (=> b!7560117 (=> (not res!3029143) (not e!4502015))))

(declare-fun lt!2648409 () Int)

(declare-fun lt!2648419 () Int)

(assert (=> b!7560117 (= res!3029143 (>= lt!2648409 lt!2648419))))

(declare-datatypes ((C!40272 0))(
  ( (C!40273 (val!30576 Int)) )
))
(declare-datatypes ((List!72856 0))(
  ( (Nil!72732) (Cons!72732 (h!79180 C!40272) (t!387581 List!72856)) )
))
(declare-fun testedP!423 () List!72856)

(declare-fun size!42469 (List!72856) Int)

(assert (=> b!7560117 (= lt!2648419 (size!42469 testedP!423))))

(declare-fun knownP!30 () List!72856)

(assert (=> b!7560117 (= lt!2648409 (size!42469 knownP!30))))

(declare-fun b!7560118 () Bool)

(declare-fun res!3029148 () Bool)

(declare-fun e!4502005 () Bool)

(assert (=> b!7560118 (=> res!3029148 e!4502005)))

(declare-fun input!7874 () List!72856)

(assert (=> b!7560118 (= res!3029148 (>= lt!2648419 (size!42469 input!7874)))))

(declare-fun b!7560119 () Bool)

(declare-fun e!4502003 () Bool)

(declare-fun tp!2201679 () Bool)

(declare-fun tp!2201682 () Bool)

(assert (=> b!7560119 (= e!4502003 (and tp!2201679 tp!2201682))))

(declare-fun b!7560120 () Bool)

(declare-fun e!4502007 () Bool)

(declare-fun tp!2201683 () Bool)

(assert (=> b!7560120 (= e!4502007 tp!2201683)))

(declare-fun b!7560121 () Bool)

(declare-fun res!3029135 () Bool)

(assert (=> b!7560121 (=> res!3029135 e!4502005)))

(declare-datatypes ((Regex!19973 0))(
  ( (ElementMatch!19973 (c!1394992 C!40272)) (Concat!28818 (regOne!40458 Regex!19973) (regTwo!40458 Regex!19973)) (EmptyExpr!19973) (Star!19973 (reg!20302 Regex!19973)) (EmptyLang!19973) (Union!19973 (regOne!40459 Regex!19973) (regTwo!40459 Regex!19973)) )
))
(declare-fun baseR!101 () Regex!19973)

(declare-fun r!24333 () Regex!19973)

(declare-fun derivative!503 (Regex!19973 List!72856) Regex!19973)

(assert (=> b!7560121 (= res!3029135 (not (= (derivative!503 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7560122 () Bool)

(declare-fun res!3029140 () Bool)

(assert (=> b!7560122 (=> (not res!3029140) (not e!4502013))))

(declare-fun isPrefix!6179 (List!72856 List!72856) Bool)

(assert (=> b!7560122 (= res!3029140 (isPrefix!6179 testedP!423 input!7874))))

(declare-fun b!7560123 () Bool)

(declare-fun e!4502012 () Bool)

(declare-fun e!4502014 () Bool)

(assert (=> b!7560123 (= e!4502012 e!4502014)))

(declare-fun res!3029131 () Bool)

(assert (=> b!7560123 (=> res!3029131 e!4502014)))

(declare-fun lt!2648418 () List!72856)

(assert (=> b!7560123 (= res!3029131 (not (= lt!2648418 input!7874)))))

(declare-fun lt!2648416 () List!72856)

(declare-fun lt!2648401 () List!72856)

(declare-fun ++!17477 (List!72856 List!72856) List!72856)

(assert (=> b!7560123 (= lt!2648418 (++!17477 lt!2648416 lt!2648401))))

(declare-fun lt!2648395 () List!72856)

(assert (=> b!7560123 (= lt!2648416 (++!17477 testedP!423 lt!2648395))))

(declare-fun b!7560124 () Bool)

(declare-fun res!3029137 () Bool)

(declare-fun e!4502006 () Bool)

(assert (=> b!7560124 (=> res!3029137 e!4502006)))

(assert (=> b!7560124 (= res!3029137 (not (= lt!2648416 knownP!30)))))

(declare-fun b!7560125 () Bool)

(declare-fun res!3029144 () Bool)

(assert (=> b!7560125 (=> res!3029144 e!4502014)))

(declare-fun lt!2648400 () List!72856)

(assert (=> b!7560125 (= res!3029144 (not (= (++!17477 testedP!423 lt!2648400) input!7874)))))

(declare-fun b!7560126 () Bool)

(declare-fun res!3029136 () Bool)

(assert (=> b!7560126 (=> res!3029136 e!4502005)))

(assert (=> b!7560126 (= res!3029136 (= lt!2648419 lt!2648409))))

(declare-fun b!7560127 () Bool)

(declare-fun e!4502001 () Bool)

(declare-fun e!4502002 () Bool)

(assert (=> b!7560127 (= e!4502001 e!4502002)))

(declare-fun res!3029147 () Bool)

(assert (=> b!7560127 (=> res!3029147 e!4502002)))

(declare-fun lt!2648411 () List!72856)

(declare-fun lt!2648407 () List!72856)

(assert (=> b!7560127 (= res!3029147 (not (= lt!2648411 lt!2648407)))))

(declare-fun lt!2648404 () List!72856)

(assert (=> b!7560127 (= lt!2648404 lt!2648395)))

(declare-datatypes ((Unit!166880 0))(
  ( (Unit!166881) )
))
(declare-fun lt!2648414 () Unit!166880)

(declare-fun lemmaSamePrefixThenSameSuffix!2879 (List!72856 List!72856 List!72856 List!72856 List!72856) Unit!166880)

(assert (=> b!7560127 (= lt!2648414 (lemmaSamePrefixThenSameSuffix!2879 testedP!423 lt!2648404 testedP!423 lt!2648395 knownP!30))))

(declare-fun lt!2648413 () List!72856)

(assert (=> b!7560127 (= lt!2648413 (++!17477 testedP!423 lt!2648404))))

(declare-fun lt!2648415 () List!72856)

(assert (=> b!7560127 (= lt!2648404 (++!17477 lt!2648415 lt!2648407))))

(declare-fun lt!2648396 () Unit!166880)

(declare-fun lemmaConcatAssociativity!3112 (List!72856 List!72856 List!72856) Unit!166880)

(assert (=> b!7560127 (= lt!2648396 (lemmaConcatAssociativity!3112 testedP!423 lt!2648415 lt!2648407))))

(declare-fun b!7560128 () Bool)

(declare-fun tp!2201678 () Bool)

(declare-fun tp!2201681 () Bool)

(assert (=> b!7560128 (= e!4502007 (and tp!2201678 tp!2201681))))

(declare-fun b!7560129 () Bool)

(declare-fun e!4502011 () Bool)

(declare-fun tp_is_empty!50301 () Bool)

(declare-fun tp!2201684 () Bool)

(assert (=> b!7560129 (= e!4502011 (and tp_is_empty!50301 tp!2201684))))

(declare-fun b!7560130 () Bool)

(assert (=> b!7560130 (= e!4502003 tp_is_empty!50301)))

(declare-fun b!7560131 () Bool)

(declare-fun e!4502004 () Bool)

(declare-fun e!4502008 () Bool)

(assert (=> b!7560131 (= e!4502004 e!4502008)))

(declare-fun res!3029142 () Bool)

(assert (=> b!7560131 (=> res!3029142 e!4502008)))

(declare-fun lt!2648410 () C!40272)

(declare-fun head!15551 (List!72856) C!40272)

(assert (=> b!7560131 (= res!3029142 (not (= (head!15551 lt!2648395) lt!2648410)))))

(declare-fun lt!2648398 () List!72856)

(assert (=> b!7560131 (= lt!2648398 lt!2648400)))

(declare-fun lt!2648403 () Unit!166880)

(assert (=> b!7560131 (= lt!2648403 (lemmaSamePrefixThenSameSuffix!2879 testedP!423 lt!2648398 testedP!423 lt!2648400 input!7874))))

(declare-fun b!7560132 () Bool)

(declare-fun res!3029145 () Bool)

(assert (=> b!7560132 (=> (not res!3029145) (not e!4502015))))

(declare-fun matchR!9575 (Regex!19973 List!72856) Bool)

(assert (=> b!7560132 (= res!3029145 (matchR!9575 baseR!101 knownP!30))))

(declare-fun b!7560133 () Bool)

(assert (=> b!7560133 (= e!4502005 e!4502012)))

(declare-fun res!3029134 () Bool)

(assert (=> b!7560133 (=> res!3029134 e!4502012)))

(assert (=> b!7560133 (= res!3029134 (not (= (++!17477 knownP!30 lt!2648401) input!7874)))))

(declare-fun getSuffix!3657 (List!72856 List!72856) List!72856)

(assert (=> b!7560133 (= lt!2648401 (getSuffix!3657 input!7874 knownP!30))))

(declare-fun lt!2648397 () List!72856)

(assert (=> b!7560133 (= lt!2648407 (getSuffix!3657 knownP!30 lt!2648397))))

(assert (=> b!7560133 (isPrefix!6179 lt!2648397 knownP!30)))

(declare-fun lt!2648408 () Unit!166880)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!927 (List!72856 List!72856 List!72856) Unit!166880)

(assert (=> b!7560133 (= lt!2648408 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!927 knownP!30 lt!2648397 input!7874))))

(declare-fun lt!2648406 () Regex!19973)

(declare-fun lt!2648412 () Regex!19973)

(assert (=> b!7560133 (= lt!2648406 lt!2648412)))

(declare-fun derivativeStep!5751 (Regex!19973 C!40272) Regex!19973)

(assert (=> b!7560133 (= lt!2648412 (derivativeStep!5751 r!24333 lt!2648410))))

(assert (=> b!7560133 (= lt!2648406 (derivative!503 baseR!101 lt!2648397))))

(declare-fun lt!2648420 () Unit!166880)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!195 (Regex!19973 Regex!19973 List!72856 C!40272) Unit!166880)

(assert (=> b!7560133 (= lt!2648420 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!195 baseR!101 r!24333 testedP!423 lt!2648410))))

(assert (=> b!7560133 (isPrefix!6179 lt!2648397 input!7874)))

(declare-fun lt!2648417 () Unit!166880)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1228 (List!72856 List!72856) Unit!166880)

(assert (=> b!7560133 (= lt!2648417 (lemmaAddHeadSuffixToPrefixStillPrefix!1228 testedP!423 input!7874))))

(assert (=> b!7560133 (= lt!2648397 (++!17477 testedP!423 lt!2648415))))

(assert (=> b!7560133 (= lt!2648415 (Cons!72732 lt!2648410 Nil!72732))))

(assert (=> b!7560133 (= lt!2648410 (head!15551 lt!2648400))))

(assert (=> b!7560133 (= lt!2648400 (getSuffix!3657 input!7874 testedP!423))))

(declare-fun b!7560134 () Bool)

(assert (=> b!7560134 (= e!4502014 e!4502004)))

(declare-fun res!3029149 () Bool)

(assert (=> b!7560134 (=> res!3029149 e!4502004)))

(declare-fun lt!2648405 () List!72856)

(assert (=> b!7560134 (= res!3029149 (not (= lt!2648405 input!7874)))))

(assert (=> b!7560134 (= lt!2648418 lt!2648405)))

(assert (=> b!7560134 (= lt!2648405 (++!17477 testedP!423 lt!2648398))))

(assert (=> b!7560134 (= lt!2648398 (++!17477 lt!2648395 lt!2648401))))

(declare-fun lt!2648399 () Unit!166880)

(assert (=> b!7560134 (= lt!2648399 (lemmaConcatAssociativity!3112 testedP!423 lt!2648395 lt!2648401))))

(declare-fun b!7560135 () Bool)

(declare-fun res!3029138 () Bool)

(assert (=> b!7560135 (=> res!3029138 e!4502005)))

(declare-fun lostCause!1761 (Regex!19973) Bool)

(assert (=> b!7560135 (= res!3029138 (lostCause!1761 r!24333))))

(declare-fun b!7560136 () Bool)

(declare-fun res!3029146 () Bool)

(assert (=> b!7560136 (=> (not res!3029146) (not e!4502013))))

(assert (=> b!7560136 (= res!3029146 (isPrefix!6179 knownP!30 input!7874))))

(declare-fun b!7560137 () Bool)

(assert (=> b!7560137 (= e!4502008 e!4502006)))

(declare-fun res!3029132 () Bool)

(assert (=> b!7560137 (=> res!3029132 e!4502006)))

(declare-fun $colon$colon!3401 (List!72856 C!40272) List!72856)

(assert (=> b!7560137 (= res!3029132 (not (= lt!2648395 ($colon$colon!3401 lt!2648411 lt!2648410))))))

(declare-fun tail!15091 (List!72856) List!72856)

(assert (=> b!7560137 (= lt!2648411 (tail!15091 lt!2648395))))

(declare-fun b!7560138 () Bool)

(assert (=> b!7560138 (= e!4502006 e!4502001)))

(declare-fun res!3029139 () Bool)

(assert (=> b!7560138 (=> res!3029139 e!4502001)))

(assert (=> b!7560138 (= res!3029139 (not (= lt!2648413 knownP!30)))))

(assert (=> b!7560138 (= lt!2648413 (++!17477 lt!2648397 lt!2648407))))

(declare-fun b!7560139 () Bool)

(declare-fun e!4502009 () Bool)

(declare-fun tp!2201686 () Bool)

(assert (=> b!7560139 (= e!4502009 (and tp_is_empty!50301 tp!2201686))))

(declare-fun b!7560140 () Bool)

(declare-fun e!4502010 () Bool)

(declare-fun tp!2201680 () Bool)

(assert (=> b!7560140 (= e!4502010 (and tp_is_empty!50301 tp!2201680))))

(declare-fun b!7560141 () Bool)

(declare-fun validRegex!10401 (Regex!19973) Bool)

(assert (=> b!7560141 (= e!4502002 (validRegex!10401 lt!2648412))))

(declare-fun b!7560142 () Bool)

(declare-fun tp!2201685 () Bool)

(declare-fun tp!2201688 () Bool)

(assert (=> b!7560142 (= e!4502003 (and tp!2201685 tp!2201688))))

(declare-fun res!3029141 () Bool)

(assert (=> start!730484 (=> (not res!3029141) (not e!4502013))))

(assert (=> start!730484 (= res!3029141 (validRegex!10401 baseR!101))))

(assert (=> start!730484 e!4502013))

(assert (=> start!730484 e!4502003))

(assert (=> start!730484 e!4502011))

(assert (=> start!730484 e!4502010))

(assert (=> start!730484 e!4502009))

(assert (=> start!730484 e!4502007))

(declare-fun b!7560143 () Bool)

(declare-fun tp!2201689 () Bool)

(assert (=> b!7560143 (= e!4502003 tp!2201689)))

(declare-fun b!7560144 () Bool)

(assert (=> b!7560144 (= e!4502007 tp_is_empty!50301)))

(declare-fun b!7560145 () Bool)

(declare-fun tp!2201687 () Bool)

(declare-fun tp!2201677 () Bool)

(assert (=> b!7560145 (= e!4502007 (and tp!2201687 tp!2201677))))

(declare-fun b!7560146 () Bool)

(assert (=> b!7560146 (= e!4502015 (not e!4502005))))

(declare-fun res!3029133 () Bool)

(assert (=> b!7560146 (=> res!3029133 e!4502005)))

(assert (=> b!7560146 (= res!3029133 (not (matchR!9575 r!24333 lt!2648395)))))

(assert (=> b!7560146 (= lt!2648395 (getSuffix!3657 knownP!30 testedP!423))))

(assert (=> b!7560146 (isPrefix!6179 testedP!423 knownP!30)))

(declare-fun lt!2648402 () Unit!166880)

(assert (=> b!7560146 (= lt!2648402 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!927 knownP!30 testedP!423 input!7874))))

(declare-fun b!7560147 () Bool)

(declare-fun res!3029150 () Bool)

(assert (=> b!7560147 (=> (not res!3029150) (not e!4502013))))

(assert (=> b!7560147 (= res!3029150 (validRegex!10401 r!24333))))

(assert (= (and start!730484 res!3029141) b!7560147))

(assert (= (and b!7560147 res!3029150) b!7560122))

(assert (= (and b!7560122 res!3029140) b!7560136))

(assert (= (and b!7560136 res!3029146) b!7560117))

(assert (= (and b!7560117 res!3029143) b!7560132))

(assert (= (and b!7560132 res!3029145) b!7560146))

(assert (= (and b!7560146 (not res!3029133)) b!7560121))

(assert (= (and b!7560121 (not res!3029135)) b!7560135))

(assert (= (and b!7560135 (not res!3029138)) b!7560126))

(assert (= (and b!7560126 (not res!3029136)) b!7560118))

(assert (= (and b!7560118 (not res!3029148)) b!7560133))

(assert (= (and b!7560133 (not res!3029134)) b!7560123))

(assert (= (and b!7560123 (not res!3029131)) b!7560125))

(assert (= (and b!7560125 (not res!3029144)) b!7560134))

(assert (= (and b!7560134 (not res!3029149)) b!7560131))

(assert (= (and b!7560131 (not res!3029142)) b!7560137))

(assert (= (and b!7560137 (not res!3029132)) b!7560124))

(assert (= (and b!7560124 (not res!3029137)) b!7560138))

(assert (= (and b!7560138 (not res!3029139)) b!7560127))

(assert (= (and b!7560127 (not res!3029147)) b!7560141))

(get-info :version)

(assert (= (and start!730484 ((_ is ElementMatch!19973) baseR!101)) b!7560130))

(assert (= (and start!730484 ((_ is Concat!28818) baseR!101)) b!7560119))

(assert (= (and start!730484 ((_ is Star!19973) baseR!101)) b!7560143))

(assert (= (and start!730484 ((_ is Union!19973) baseR!101)) b!7560142))

(assert (= (and start!730484 ((_ is Cons!72732) input!7874)) b!7560129))

(assert (= (and start!730484 ((_ is Cons!72732) knownP!30)) b!7560140))

(assert (= (and start!730484 ((_ is Cons!72732) testedP!423)) b!7560139))

(assert (= (and start!730484 ((_ is ElementMatch!19973) r!24333)) b!7560144))

(assert (= (and start!730484 ((_ is Concat!28818) r!24333)) b!7560145))

(assert (= (and start!730484 ((_ is Star!19973) r!24333)) b!7560120))

(assert (= (and start!730484 ((_ is Union!19973) r!24333)) b!7560128))

(declare-fun m!8123272 () Bool)

(assert (=> b!7560135 m!8123272))

(declare-fun m!8123274 () Bool)

(assert (=> b!7560123 m!8123274))

(declare-fun m!8123276 () Bool)

(assert (=> b!7560123 m!8123276))

(declare-fun m!8123278 () Bool)

(assert (=> b!7560147 m!8123278))

(declare-fun m!8123280 () Bool)

(assert (=> b!7560138 m!8123280))

(declare-fun m!8123282 () Bool)

(assert (=> b!7560133 m!8123282))

(declare-fun m!8123284 () Bool)

(assert (=> b!7560133 m!8123284))

(declare-fun m!8123286 () Bool)

(assert (=> b!7560133 m!8123286))

(declare-fun m!8123288 () Bool)

(assert (=> b!7560133 m!8123288))

(declare-fun m!8123290 () Bool)

(assert (=> b!7560133 m!8123290))

(declare-fun m!8123292 () Bool)

(assert (=> b!7560133 m!8123292))

(declare-fun m!8123294 () Bool)

(assert (=> b!7560133 m!8123294))

(declare-fun m!8123296 () Bool)

(assert (=> b!7560133 m!8123296))

(declare-fun m!8123298 () Bool)

(assert (=> b!7560133 m!8123298))

(declare-fun m!8123300 () Bool)

(assert (=> b!7560133 m!8123300))

(declare-fun m!8123302 () Bool)

(assert (=> b!7560133 m!8123302))

(declare-fun m!8123304 () Bool)

(assert (=> b!7560133 m!8123304))

(declare-fun m!8123306 () Bool)

(assert (=> b!7560133 m!8123306))

(declare-fun m!8123308 () Bool)

(assert (=> b!7560122 m!8123308))

(declare-fun m!8123310 () Bool)

(assert (=> b!7560137 m!8123310))

(declare-fun m!8123312 () Bool)

(assert (=> b!7560137 m!8123312))

(declare-fun m!8123314 () Bool)

(assert (=> b!7560121 m!8123314))

(declare-fun m!8123316 () Bool)

(assert (=> b!7560134 m!8123316))

(declare-fun m!8123318 () Bool)

(assert (=> b!7560134 m!8123318))

(declare-fun m!8123320 () Bool)

(assert (=> b!7560134 m!8123320))

(declare-fun m!8123322 () Bool)

(assert (=> b!7560136 m!8123322))

(declare-fun m!8123324 () Bool)

(assert (=> b!7560127 m!8123324))

(declare-fun m!8123326 () Bool)

(assert (=> b!7560127 m!8123326))

(declare-fun m!8123328 () Bool)

(assert (=> b!7560127 m!8123328))

(declare-fun m!8123330 () Bool)

(assert (=> b!7560127 m!8123330))

(declare-fun m!8123332 () Bool)

(assert (=> b!7560125 m!8123332))

(declare-fun m!8123334 () Bool)

(assert (=> b!7560146 m!8123334))

(declare-fun m!8123336 () Bool)

(assert (=> b!7560146 m!8123336))

(declare-fun m!8123338 () Bool)

(assert (=> b!7560146 m!8123338))

(declare-fun m!8123340 () Bool)

(assert (=> b!7560146 m!8123340))

(declare-fun m!8123342 () Bool)

(assert (=> b!7560132 m!8123342))

(declare-fun m!8123344 () Bool)

(assert (=> b!7560117 m!8123344))

(declare-fun m!8123346 () Bool)

(assert (=> b!7560117 m!8123346))

(declare-fun m!8123348 () Bool)

(assert (=> b!7560141 m!8123348))

(declare-fun m!8123350 () Bool)

(assert (=> b!7560118 m!8123350))

(declare-fun m!8123352 () Bool)

(assert (=> start!730484 m!8123352))

(declare-fun m!8123354 () Bool)

(assert (=> b!7560131 m!8123354))

(declare-fun m!8123356 () Bool)

(assert (=> b!7560131 m!8123356))

(check-sat (not b!7560120) (not b!7560128) (not b!7560121) (not b!7560138) (not b!7560127) (not b!7560125) (not b!7560147) (not b!7560139) tp_is_empty!50301 (not b!7560140) (not b!7560131) (not b!7560146) (not b!7560118) (not b!7560143) (not b!7560142) (not b!7560122) (not b!7560129) (not b!7560145) (not b!7560135) (not b!7560136) (not start!730484) (not b!7560123) (not b!7560133) (not b!7560134) (not b!7560132) (not b!7560119) (not b!7560141) (not b!7560137) (not b!7560117))
(check-sat)
(get-model)

(declare-fun d!2314660 () Bool)

(assert (=> d!2314660 (= ($colon$colon!3401 lt!2648411 lt!2648410) (Cons!72732 lt!2648410 lt!2648411))))

(assert (=> b!7560137 d!2314660))

(declare-fun d!2314662 () Bool)

(assert (=> d!2314662 (= (tail!15091 lt!2648395) (t!387581 lt!2648395))))

(assert (=> b!7560137 d!2314662))

(declare-fun d!2314664 () Bool)

(assert (=> d!2314664 (= lt!2648404 lt!2648395)))

(declare-fun lt!2648426 () Unit!166880)

(declare-fun choose!58472 (List!72856 List!72856 List!72856 List!72856 List!72856) Unit!166880)

(assert (=> d!2314664 (= lt!2648426 (choose!58472 testedP!423 lt!2648404 testedP!423 lt!2648395 knownP!30))))

(assert (=> d!2314664 (isPrefix!6179 testedP!423 knownP!30)))

(assert (=> d!2314664 (= (lemmaSamePrefixThenSameSuffix!2879 testedP!423 lt!2648404 testedP!423 lt!2648395 knownP!30) lt!2648426)))

(declare-fun bs!1940337 () Bool)

(assert (= bs!1940337 d!2314664))

(declare-fun m!8123370 () Bool)

(assert (=> bs!1940337 m!8123370))

(assert (=> bs!1940337 m!8123338))

(assert (=> b!7560127 d!2314664))

(declare-fun d!2314668 () Bool)

(declare-fun e!4502032 () Bool)

(assert (=> d!2314668 e!4502032))

(declare-fun res!3029167 () Bool)

(assert (=> d!2314668 (=> (not res!3029167) (not e!4502032))))

(declare-fun lt!2648431 () List!72856)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15397 (List!72856) (InoxSet C!40272))

(assert (=> d!2314668 (= res!3029167 (= (content!15397 lt!2648431) ((_ map or) (content!15397 testedP!423) (content!15397 lt!2648404))))))

(declare-fun e!4502031 () List!72856)

(assert (=> d!2314668 (= lt!2648431 e!4502031)))

(declare-fun c!1394997 () Bool)

(assert (=> d!2314668 (= c!1394997 ((_ is Nil!72732) testedP!423))))

(assert (=> d!2314668 (= (++!17477 testedP!423 lt!2648404) lt!2648431)))

(declare-fun b!7560173 () Bool)

(assert (=> b!7560173 (= e!4502031 (Cons!72732 (h!79180 testedP!423) (++!17477 (t!387581 testedP!423) lt!2648404)))))

(declare-fun b!7560175 () Bool)

(assert (=> b!7560175 (= e!4502032 (or (not (= lt!2648404 Nil!72732)) (= lt!2648431 testedP!423)))))

(declare-fun b!7560174 () Bool)

(declare-fun res!3029168 () Bool)

(assert (=> b!7560174 (=> (not res!3029168) (not e!4502032))))

(assert (=> b!7560174 (= res!3029168 (= (size!42469 lt!2648431) (+ (size!42469 testedP!423) (size!42469 lt!2648404))))))

(declare-fun b!7560172 () Bool)

(assert (=> b!7560172 (= e!4502031 lt!2648404)))

(assert (= (and d!2314668 c!1394997) b!7560172))

(assert (= (and d!2314668 (not c!1394997)) b!7560173))

(assert (= (and d!2314668 res!3029167) b!7560174))

(assert (= (and b!7560174 res!3029168) b!7560175))

(declare-fun m!8123372 () Bool)

(assert (=> d!2314668 m!8123372))

(declare-fun m!8123374 () Bool)

(assert (=> d!2314668 m!8123374))

(declare-fun m!8123376 () Bool)

(assert (=> d!2314668 m!8123376))

(declare-fun m!8123378 () Bool)

(assert (=> b!7560173 m!8123378))

(declare-fun m!8123380 () Bool)

(assert (=> b!7560174 m!8123380))

(assert (=> b!7560174 m!8123344))

(declare-fun m!8123382 () Bool)

(assert (=> b!7560174 m!8123382))

(assert (=> b!7560127 d!2314668))

(declare-fun d!2314670 () Bool)

(declare-fun e!4502034 () Bool)

(assert (=> d!2314670 e!4502034))

(declare-fun res!3029169 () Bool)

(assert (=> d!2314670 (=> (not res!3029169) (not e!4502034))))

(declare-fun lt!2648432 () List!72856)

(assert (=> d!2314670 (= res!3029169 (= (content!15397 lt!2648432) ((_ map or) (content!15397 lt!2648415) (content!15397 lt!2648407))))))

(declare-fun e!4502033 () List!72856)

(assert (=> d!2314670 (= lt!2648432 e!4502033)))

(declare-fun c!1394998 () Bool)

(assert (=> d!2314670 (= c!1394998 ((_ is Nil!72732) lt!2648415))))

(assert (=> d!2314670 (= (++!17477 lt!2648415 lt!2648407) lt!2648432)))

(declare-fun b!7560177 () Bool)

(assert (=> b!7560177 (= e!4502033 (Cons!72732 (h!79180 lt!2648415) (++!17477 (t!387581 lt!2648415) lt!2648407)))))

(declare-fun b!7560179 () Bool)

(assert (=> b!7560179 (= e!4502034 (or (not (= lt!2648407 Nil!72732)) (= lt!2648432 lt!2648415)))))

(declare-fun b!7560178 () Bool)

(declare-fun res!3029170 () Bool)

(assert (=> b!7560178 (=> (not res!3029170) (not e!4502034))))

(assert (=> b!7560178 (= res!3029170 (= (size!42469 lt!2648432) (+ (size!42469 lt!2648415) (size!42469 lt!2648407))))))

(declare-fun b!7560176 () Bool)

(assert (=> b!7560176 (= e!4502033 lt!2648407)))

(assert (= (and d!2314670 c!1394998) b!7560176))

(assert (= (and d!2314670 (not c!1394998)) b!7560177))

(assert (= (and d!2314670 res!3029169) b!7560178))

(assert (= (and b!7560178 res!3029170) b!7560179))

(declare-fun m!8123384 () Bool)

(assert (=> d!2314670 m!8123384))

(declare-fun m!8123386 () Bool)

(assert (=> d!2314670 m!8123386))

(declare-fun m!8123388 () Bool)

(assert (=> d!2314670 m!8123388))

(declare-fun m!8123390 () Bool)

(assert (=> b!7560177 m!8123390))

(declare-fun m!8123392 () Bool)

(assert (=> b!7560178 m!8123392))

(declare-fun m!8123394 () Bool)

(assert (=> b!7560178 m!8123394))

(declare-fun m!8123396 () Bool)

(assert (=> b!7560178 m!8123396))

(assert (=> b!7560127 d!2314670))

(declare-fun d!2314672 () Bool)

(assert (=> d!2314672 (= (++!17477 (++!17477 testedP!423 lt!2648415) lt!2648407) (++!17477 testedP!423 (++!17477 lt!2648415 lt!2648407)))))

(declare-fun lt!2648436 () Unit!166880)

(declare-fun choose!58474 (List!72856 List!72856 List!72856) Unit!166880)

(assert (=> d!2314672 (= lt!2648436 (choose!58474 testedP!423 lt!2648415 lt!2648407))))

(assert (=> d!2314672 (= (lemmaConcatAssociativity!3112 testedP!423 lt!2648415 lt!2648407) lt!2648436)))

(declare-fun bs!1940338 () Bool)

(assert (= bs!1940338 d!2314672))

(assert (=> bs!1940338 m!8123328))

(assert (=> bs!1940338 m!8123328))

(declare-fun m!8123402 () Bool)

(assert (=> bs!1940338 m!8123402))

(assert (=> bs!1940338 m!8123296))

(assert (=> bs!1940338 m!8123296))

(declare-fun m!8123404 () Bool)

(assert (=> bs!1940338 m!8123404))

(declare-fun m!8123406 () Bool)

(assert (=> bs!1940338 m!8123406))

(assert (=> b!7560127 d!2314672))

(declare-fun d!2314676 () Bool)

(declare-fun e!4502037 () Bool)

(assert (=> d!2314676 e!4502037))

(declare-fun res!3029171 () Bool)

(assert (=> d!2314676 (=> (not res!3029171) (not e!4502037))))

(declare-fun lt!2648437 () List!72856)

(assert (=> d!2314676 (= res!3029171 (= (content!15397 lt!2648437) ((_ map or) (content!15397 lt!2648397) (content!15397 lt!2648407))))))

(declare-fun e!4502036 () List!72856)

(assert (=> d!2314676 (= lt!2648437 e!4502036)))

(declare-fun c!1395000 () Bool)

(assert (=> d!2314676 (= c!1395000 ((_ is Nil!72732) lt!2648397))))

(assert (=> d!2314676 (= (++!17477 lt!2648397 lt!2648407) lt!2648437)))

(declare-fun b!7560183 () Bool)

(assert (=> b!7560183 (= e!4502036 (Cons!72732 (h!79180 lt!2648397) (++!17477 (t!387581 lt!2648397) lt!2648407)))))

(declare-fun b!7560185 () Bool)

(assert (=> b!7560185 (= e!4502037 (or (not (= lt!2648407 Nil!72732)) (= lt!2648437 lt!2648397)))))

(declare-fun b!7560184 () Bool)

(declare-fun res!3029172 () Bool)

(assert (=> b!7560184 (=> (not res!3029172) (not e!4502037))))

(assert (=> b!7560184 (= res!3029172 (= (size!42469 lt!2648437) (+ (size!42469 lt!2648397) (size!42469 lt!2648407))))))

(declare-fun b!7560182 () Bool)

(assert (=> b!7560182 (= e!4502036 lt!2648407)))

(assert (= (and d!2314676 c!1395000) b!7560182))

(assert (= (and d!2314676 (not c!1395000)) b!7560183))

(assert (= (and d!2314676 res!3029171) b!7560184))

(assert (= (and b!7560184 res!3029172) b!7560185))

(declare-fun m!8123408 () Bool)

(assert (=> d!2314676 m!8123408))

(declare-fun m!8123410 () Bool)

(assert (=> d!2314676 m!8123410))

(assert (=> d!2314676 m!8123388))

(declare-fun m!8123412 () Bool)

(assert (=> b!7560183 m!8123412))

(declare-fun m!8123414 () Bool)

(assert (=> b!7560184 m!8123414))

(declare-fun m!8123416 () Bool)

(assert (=> b!7560184 m!8123416))

(assert (=> b!7560184 m!8123396))

(assert (=> b!7560138 d!2314676))

(declare-fun d!2314678 () Bool)

(declare-fun lt!2648440 () Int)

(assert (=> d!2314678 (>= lt!2648440 0)))

(declare-fun e!4502040 () Int)

(assert (=> d!2314678 (= lt!2648440 e!4502040)))

(declare-fun c!1395003 () Bool)

(assert (=> d!2314678 (= c!1395003 ((_ is Nil!72732) testedP!423))))

(assert (=> d!2314678 (= (size!42469 testedP!423) lt!2648440)))

(declare-fun b!7560190 () Bool)

(assert (=> b!7560190 (= e!4502040 0)))

(declare-fun b!7560191 () Bool)

(assert (=> b!7560191 (= e!4502040 (+ 1 (size!42469 (t!387581 testedP!423))))))

(assert (= (and d!2314678 c!1395003) b!7560190))

(assert (= (and d!2314678 (not c!1395003)) b!7560191))

(declare-fun m!8123418 () Bool)

(assert (=> b!7560191 m!8123418))

(assert (=> b!7560117 d!2314678))

(declare-fun d!2314680 () Bool)

(declare-fun lt!2648441 () Int)

(assert (=> d!2314680 (>= lt!2648441 0)))

(declare-fun e!4502041 () Int)

(assert (=> d!2314680 (= lt!2648441 e!4502041)))

(declare-fun c!1395004 () Bool)

(assert (=> d!2314680 (= c!1395004 ((_ is Nil!72732) knownP!30))))

(assert (=> d!2314680 (= (size!42469 knownP!30) lt!2648441)))

(declare-fun b!7560192 () Bool)

(assert (=> b!7560192 (= e!4502041 0)))

(declare-fun b!7560193 () Bool)

(assert (=> b!7560193 (= e!4502041 (+ 1 (size!42469 (t!387581 knownP!30))))))

(assert (= (and d!2314680 c!1395004) b!7560192))

(assert (= (and d!2314680 (not c!1395004)) b!7560193))

(declare-fun m!8123420 () Bool)

(assert (=> b!7560193 m!8123420))

(assert (=> b!7560117 d!2314680))

(declare-fun d!2314682 () Bool)

(declare-fun e!4502043 () Bool)

(assert (=> d!2314682 e!4502043))

(declare-fun res!3029173 () Bool)

(assert (=> d!2314682 (=> (not res!3029173) (not e!4502043))))

(declare-fun lt!2648442 () List!72856)

(assert (=> d!2314682 (= res!3029173 (= (content!15397 lt!2648442) ((_ map or) (content!15397 testedP!423) (content!15397 lt!2648398))))))

(declare-fun e!4502042 () List!72856)

(assert (=> d!2314682 (= lt!2648442 e!4502042)))

(declare-fun c!1395005 () Bool)

(assert (=> d!2314682 (= c!1395005 ((_ is Nil!72732) testedP!423))))

(assert (=> d!2314682 (= (++!17477 testedP!423 lt!2648398) lt!2648442)))

(declare-fun b!7560195 () Bool)

(assert (=> b!7560195 (= e!4502042 (Cons!72732 (h!79180 testedP!423) (++!17477 (t!387581 testedP!423) lt!2648398)))))

(declare-fun b!7560197 () Bool)

(assert (=> b!7560197 (= e!4502043 (or (not (= lt!2648398 Nil!72732)) (= lt!2648442 testedP!423)))))

(declare-fun b!7560196 () Bool)

(declare-fun res!3029174 () Bool)

(assert (=> b!7560196 (=> (not res!3029174) (not e!4502043))))

(assert (=> b!7560196 (= res!3029174 (= (size!42469 lt!2648442) (+ (size!42469 testedP!423) (size!42469 lt!2648398))))))

(declare-fun b!7560194 () Bool)

(assert (=> b!7560194 (= e!4502042 lt!2648398)))

(assert (= (and d!2314682 c!1395005) b!7560194))

(assert (= (and d!2314682 (not c!1395005)) b!7560195))

(assert (= (and d!2314682 res!3029173) b!7560196))

(assert (= (and b!7560196 res!3029174) b!7560197))

(declare-fun m!8123422 () Bool)

(assert (=> d!2314682 m!8123422))

(assert (=> d!2314682 m!8123374))

(declare-fun m!8123424 () Bool)

(assert (=> d!2314682 m!8123424))

(declare-fun m!8123426 () Bool)

(assert (=> b!7560195 m!8123426))

(declare-fun m!8123428 () Bool)

(assert (=> b!7560196 m!8123428))

(assert (=> b!7560196 m!8123344))

(declare-fun m!8123430 () Bool)

(assert (=> b!7560196 m!8123430))

(assert (=> b!7560134 d!2314682))

(declare-fun d!2314684 () Bool)

(declare-fun e!4502045 () Bool)

(assert (=> d!2314684 e!4502045))

(declare-fun res!3029175 () Bool)

(assert (=> d!2314684 (=> (not res!3029175) (not e!4502045))))

(declare-fun lt!2648445 () List!72856)

(assert (=> d!2314684 (= res!3029175 (= (content!15397 lt!2648445) ((_ map or) (content!15397 lt!2648395) (content!15397 lt!2648401))))))

(declare-fun e!4502044 () List!72856)

(assert (=> d!2314684 (= lt!2648445 e!4502044)))

(declare-fun c!1395007 () Bool)

(assert (=> d!2314684 (= c!1395007 ((_ is Nil!72732) lt!2648395))))

(assert (=> d!2314684 (= (++!17477 lt!2648395 lt!2648401) lt!2648445)))

(declare-fun b!7560199 () Bool)

(assert (=> b!7560199 (= e!4502044 (Cons!72732 (h!79180 lt!2648395) (++!17477 (t!387581 lt!2648395) lt!2648401)))))

(declare-fun b!7560201 () Bool)

(assert (=> b!7560201 (= e!4502045 (or (not (= lt!2648401 Nil!72732)) (= lt!2648445 lt!2648395)))))

(declare-fun b!7560200 () Bool)

(declare-fun res!3029176 () Bool)

(assert (=> b!7560200 (=> (not res!3029176) (not e!4502045))))

(assert (=> b!7560200 (= res!3029176 (= (size!42469 lt!2648445) (+ (size!42469 lt!2648395) (size!42469 lt!2648401))))))

(declare-fun b!7560198 () Bool)

(assert (=> b!7560198 (= e!4502044 lt!2648401)))

(assert (= (and d!2314684 c!1395007) b!7560198))

(assert (= (and d!2314684 (not c!1395007)) b!7560199))

(assert (= (and d!2314684 res!3029175) b!7560200))

(assert (= (and b!7560200 res!3029176) b!7560201))

(declare-fun m!8123432 () Bool)

(assert (=> d!2314684 m!8123432))

(declare-fun m!8123434 () Bool)

(assert (=> d!2314684 m!8123434))

(declare-fun m!8123436 () Bool)

(assert (=> d!2314684 m!8123436))

(declare-fun m!8123438 () Bool)

(assert (=> b!7560199 m!8123438))

(declare-fun m!8123440 () Bool)

(assert (=> b!7560200 m!8123440))

(declare-fun m!8123442 () Bool)

(assert (=> b!7560200 m!8123442))

(declare-fun m!8123444 () Bool)

(assert (=> b!7560200 m!8123444))

(assert (=> b!7560134 d!2314684))

(declare-fun d!2314686 () Bool)

(assert (=> d!2314686 (= (++!17477 (++!17477 testedP!423 lt!2648395) lt!2648401) (++!17477 testedP!423 (++!17477 lt!2648395 lt!2648401)))))

(declare-fun lt!2648446 () Unit!166880)

(assert (=> d!2314686 (= lt!2648446 (choose!58474 testedP!423 lt!2648395 lt!2648401))))

(assert (=> d!2314686 (= (lemmaConcatAssociativity!3112 testedP!423 lt!2648395 lt!2648401) lt!2648446)))

(declare-fun bs!1940339 () Bool)

(assert (= bs!1940339 d!2314686))

(assert (=> bs!1940339 m!8123318))

(assert (=> bs!1940339 m!8123318))

(declare-fun m!8123446 () Bool)

(assert (=> bs!1940339 m!8123446))

(assert (=> bs!1940339 m!8123276))

(assert (=> bs!1940339 m!8123276))

(declare-fun m!8123448 () Bool)

(assert (=> bs!1940339 m!8123448))

(declare-fun m!8123450 () Bool)

(assert (=> bs!1940339 m!8123450))

(assert (=> b!7560134 d!2314686))

(declare-fun d!2314688 () Bool)

(declare-fun lostCauseFct!464 (Regex!19973) Bool)

(assert (=> d!2314688 (= (lostCause!1761 r!24333) (lostCauseFct!464 r!24333))))

(declare-fun bs!1940341 () Bool)

(assert (= bs!1940341 d!2314688))

(declare-fun m!8123458 () Bool)

(assert (=> bs!1940341 m!8123458))

(assert (=> b!7560135 d!2314688))

(declare-fun bm!693136 () Bool)

(declare-fun call!693141 () Bool)

(declare-fun isEmpty!41410 (List!72856) Bool)

(assert (=> bm!693136 (= call!693141 (isEmpty!41410 lt!2648395))))

(declare-fun b!7560252 () Bool)

(declare-fun e!4502075 () Bool)

(declare-fun e!4502073 () Bool)

(assert (=> b!7560252 (= e!4502075 e!4502073)))

(declare-fun res!3029198 () Bool)

(assert (=> b!7560252 (=> res!3029198 e!4502073)))

(assert (=> b!7560252 (= res!3029198 call!693141)))

(declare-fun b!7560253 () Bool)

(declare-fun e!4502072 () Bool)

(declare-fun lt!2648453 () Bool)

(assert (=> b!7560253 (= e!4502072 (not lt!2648453))))

(declare-fun b!7560254 () Bool)

(declare-fun res!3029200 () Bool)

(declare-fun e!4502074 () Bool)

(assert (=> b!7560254 (=> res!3029200 e!4502074)))

(assert (=> b!7560254 (= res!3029200 (not ((_ is ElementMatch!19973) r!24333)))))

(assert (=> b!7560254 (= e!4502072 e!4502074)))

(declare-fun d!2314692 () Bool)

(declare-fun e!4502071 () Bool)

(assert (=> d!2314692 e!4502071))

(declare-fun c!1395025 () Bool)

(assert (=> d!2314692 (= c!1395025 ((_ is EmptyExpr!19973) r!24333))))

(declare-fun e!4502076 () Bool)

(assert (=> d!2314692 (= lt!2648453 e!4502076)))

(declare-fun c!1395027 () Bool)

(assert (=> d!2314692 (= c!1395027 (isEmpty!41410 lt!2648395))))

(assert (=> d!2314692 (validRegex!10401 r!24333)))

(assert (=> d!2314692 (= (matchR!9575 r!24333 lt!2648395) lt!2648453)))

(declare-fun b!7560255 () Bool)

(assert (=> b!7560255 (= e!4502071 e!4502072)))

(declare-fun c!1395026 () Bool)

(assert (=> b!7560255 (= c!1395026 ((_ is EmptyLang!19973) r!24333))))

(declare-fun b!7560256 () Bool)

(assert (=> b!7560256 (= e!4502073 (not (= (head!15551 lt!2648395) (c!1394992 r!24333))))))

(declare-fun b!7560257 () Bool)

(assert (=> b!7560257 (= e!4502071 (= lt!2648453 call!693141))))

(declare-fun b!7560258 () Bool)

(declare-fun res!3029193 () Bool)

(declare-fun e!4502077 () Bool)

(assert (=> b!7560258 (=> (not res!3029193) (not e!4502077))))

(assert (=> b!7560258 (= res!3029193 (not call!693141))))

(declare-fun b!7560259 () Bool)

(assert (=> b!7560259 (= e!4502074 e!4502075)))

(declare-fun res!3029199 () Bool)

(assert (=> b!7560259 (=> (not res!3029199) (not e!4502075))))

(assert (=> b!7560259 (= res!3029199 (not lt!2648453))))

(declare-fun b!7560260 () Bool)

(declare-fun nullable!8711 (Regex!19973) Bool)

(assert (=> b!7560260 (= e!4502076 (nullable!8711 r!24333))))

(declare-fun b!7560261 () Bool)

(assert (=> b!7560261 (= e!4502077 (= (head!15551 lt!2648395) (c!1394992 r!24333)))))

(declare-fun b!7560262 () Bool)

(declare-fun res!3029195 () Bool)

(assert (=> b!7560262 (=> res!3029195 e!4502074)))

(assert (=> b!7560262 (= res!3029195 e!4502077)))

(declare-fun res!3029197 () Bool)

(assert (=> b!7560262 (=> (not res!3029197) (not e!4502077))))

(assert (=> b!7560262 (= res!3029197 lt!2648453)))

(declare-fun b!7560263 () Bool)

(assert (=> b!7560263 (= e!4502076 (matchR!9575 (derivativeStep!5751 r!24333 (head!15551 lt!2648395)) (tail!15091 lt!2648395)))))

(declare-fun b!7560264 () Bool)

(declare-fun res!3029196 () Bool)

(assert (=> b!7560264 (=> res!3029196 e!4502073)))

(assert (=> b!7560264 (= res!3029196 (not (isEmpty!41410 (tail!15091 lt!2648395))))))

(declare-fun b!7560265 () Bool)

(declare-fun res!3029194 () Bool)

(assert (=> b!7560265 (=> (not res!3029194) (not e!4502077))))

(assert (=> b!7560265 (= res!3029194 (isEmpty!41410 (tail!15091 lt!2648395)))))

(assert (= (and d!2314692 c!1395027) b!7560260))

(assert (= (and d!2314692 (not c!1395027)) b!7560263))

(assert (= (and d!2314692 c!1395025) b!7560257))

(assert (= (and d!2314692 (not c!1395025)) b!7560255))

(assert (= (and b!7560255 c!1395026) b!7560253))

(assert (= (and b!7560255 (not c!1395026)) b!7560254))

(assert (= (and b!7560254 (not res!3029200)) b!7560262))

(assert (= (and b!7560262 res!3029197) b!7560258))

(assert (= (and b!7560258 res!3029193) b!7560265))

(assert (= (and b!7560265 res!3029194) b!7560261))

(assert (= (and b!7560262 (not res!3029195)) b!7560259))

(assert (= (and b!7560259 res!3029199) b!7560252))

(assert (= (and b!7560252 (not res!3029198)) b!7560264))

(assert (= (and b!7560264 (not res!3029196)) b!7560256))

(assert (= (or b!7560257 b!7560252 b!7560258) bm!693136))

(declare-fun m!8123466 () Bool)

(assert (=> b!7560260 m!8123466))

(assert (=> b!7560264 m!8123312))

(assert (=> b!7560264 m!8123312))

(declare-fun m!8123468 () Bool)

(assert (=> b!7560264 m!8123468))

(assert (=> b!7560261 m!8123354))

(declare-fun m!8123470 () Bool)

(assert (=> d!2314692 m!8123470))

(assert (=> d!2314692 m!8123278))

(assert (=> b!7560256 m!8123354))

(assert (=> b!7560263 m!8123354))

(assert (=> b!7560263 m!8123354))

(declare-fun m!8123472 () Bool)

(assert (=> b!7560263 m!8123472))

(assert (=> b!7560263 m!8123312))

(assert (=> b!7560263 m!8123472))

(assert (=> b!7560263 m!8123312))

(declare-fun m!8123474 () Bool)

(assert (=> b!7560263 m!8123474))

(assert (=> bm!693136 m!8123470))

(assert (=> b!7560265 m!8123312))

(assert (=> b!7560265 m!8123312))

(assert (=> b!7560265 m!8123468))

(assert (=> b!7560146 d!2314692))

(declare-fun d!2314696 () Bool)

(declare-fun lt!2648459 () List!72856)

(assert (=> d!2314696 (= (++!17477 testedP!423 lt!2648459) knownP!30)))

(declare-fun e!4502085 () List!72856)

(assert (=> d!2314696 (= lt!2648459 e!4502085)))

(declare-fun c!1395035 () Bool)

(assert (=> d!2314696 (= c!1395035 ((_ is Cons!72732) testedP!423))))

(assert (=> d!2314696 (>= (size!42469 knownP!30) (size!42469 testedP!423))))

(assert (=> d!2314696 (= (getSuffix!3657 knownP!30 testedP!423) lt!2648459)))

(declare-fun b!7560280 () Bool)

(assert (=> b!7560280 (= e!4502085 (getSuffix!3657 (tail!15091 knownP!30) (t!387581 testedP!423)))))

(declare-fun b!7560281 () Bool)

(assert (=> b!7560281 (= e!4502085 knownP!30)))

(assert (= (and d!2314696 c!1395035) b!7560280))

(assert (= (and d!2314696 (not c!1395035)) b!7560281))

(declare-fun m!8123484 () Bool)

(assert (=> d!2314696 m!8123484))

(assert (=> d!2314696 m!8123346))

(assert (=> d!2314696 m!8123344))

(declare-fun m!8123486 () Bool)

(assert (=> b!7560280 m!8123486))

(assert (=> b!7560280 m!8123486))

(declare-fun m!8123490 () Bool)

(assert (=> b!7560280 m!8123490))

(assert (=> b!7560146 d!2314696))

(declare-fun b!7560301 () Bool)

(declare-fun e!4502096 () Bool)

(assert (=> b!7560301 (= e!4502096 (>= (size!42469 knownP!30) (size!42469 testedP!423)))))

(declare-fun b!7560300 () Bool)

(declare-fun e!4502097 () Bool)

(assert (=> b!7560300 (= e!4502097 (isPrefix!6179 (tail!15091 testedP!423) (tail!15091 knownP!30)))))

(declare-fun b!7560299 () Bool)

(declare-fun res!3029213 () Bool)

(assert (=> b!7560299 (=> (not res!3029213) (not e!4502097))))

(assert (=> b!7560299 (= res!3029213 (= (head!15551 testedP!423) (head!15551 knownP!30)))))

(declare-fun d!2314700 () Bool)

(assert (=> d!2314700 e!4502096))

(declare-fun res!3029214 () Bool)

(assert (=> d!2314700 (=> res!3029214 e!4502096)))

(declare-fun lt!2648465 () Bool)

(assert (=> d!2314700 (= res!3029214 (not lt!2648465))))

(declare-fun e!4502098 () Bool)

(assert (=> d!2314700 (= lt!2648465 e!4502098)))

(declare-fun res!3029215 () Bool)

(assert (=> d!2314700 (=> res!3029215 e!4502098)))

(assert (=> d!2314700 (= res!3029215 ((_ is Nil!72732) testedP!423))))

(assert (=> d!2314700 (= (isPrefix!6179 testedP!423 knownP!30) lt!2648465)))

(declare-fun b!7560298 () Bool)

(assert (=> b!7560298 (= e!4502098 e!4502097)))

(declare-fun res!3029216 () Bool)

(assert (=> b!7560298 (=> (not res!3029216) (not e!4502097))))

(assert (=> b!7560298 (= res!3029216 (not ((_ is Nil!72732) knownP!30)))))

(assert (= (and d!2314700 (not res!3029215)) b!7560298))

(assert (= (and b!7560298 res!3029216) b!7560299))

(assert (= (and b!7560299 res!3029213) b!7560300))

(assert (= (and d!2314700 (not res!3029214)) b!7560301))

(assert (=> b!7560301 m!8123346))

(assert (=> b!7560301 m!8123344))

(declare-fun m!8123498 () Bool)

(assert (=> b!7560300 m!8123498))

(assert (=> b!7560300 m!8123486))

(assert (=> b!7560300 m!8123498))

(assert (=> b!7560300 m!8123486))

(declare-fun m!8123500 () Bool)

(assert (=> b!7560300 m!8123500))

(declare-fun m!8123502 () Bool)

(assert (=> b!7560299 m!8123502))

(declare-fun m!8123504 () Bool)

(assert (=> b!7560299 m!8123504))

(assert (=> b!7560146 d!2314700))

(declare-fun d!2314704 () Bool)

(assert (=> d!2314704 (isPrefix!6179 testedP!423 knownP!30)))

(declare-fun lt!2648469 () Unit!166880)

(declare-fun choose!58477 (List!72856 List!72856 List!72856) Unit!166880)

(assert (=> d!2314704 (= lt!2648469 (choose!58477 knownP!30 testedP!423 input!7874))))

(assert (=> d!2314704 (isPrefix!6179 knownP!30 input!7874)))

(assert (=> d!2314704 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!927 knownP!30 testedP!423 input!7874) lt!2648469)))

(declare-fun bs!1940343 () Bool)

(assert (= bs!1940343 d!2314704))

(assert (=> bs!1940343 m!8123338))

(declare-fun m!8123518 () Bool)

(assert (=> bs!1940343 m!8123518))

(assert (=> bs!1940343 m!8123322))

(assert (=> b!7560146 d!2314704))

(declare-fun d!2314708 () Bool)

(declare-fun e!4502102 () Bool)

(assert (=> d!2314708 e!4502102))

(declare-fun res!3029219 () Bool)

(assert (=> d!2314708 (=> (not res!3029219) (not e!4502102))))

(declare-fun lt!2648472 () List!72856)

(assert (=> d!2314708 (= res!3029219 (= (content!15397 lt!2648472) ((_ map or) (content!15397 testedP!423) (content!15397 lt!2648400))))))

(declare-fun e!4502101 () List!72856)

(assert (=> d!2314708 (= lt!2648472 e!4502101)))

(declare-fun c!1395039 () Bool)

(assert (=> d!2314708 (= c!1395039 ((_ is Nil!72732) testedP!423))))

(assert (=> d!2314708 (= (++!17477 testedP!423 lt!2648400) lt!2648472)))

(declare-fun b!7560307 () Bool)

(assert (=> b!7560307 (= e!4502101 (Cons!72732 (h!79180 testedP!423) (++!17477 (t!387581 testedP!423) lt!2648400)))))

(declare-fun b!7560309 () Bool)

(assert (=> b!7560309 (= e!4502102 (or (not (= lt!2648400 Nil!72732)) (= lt!2648472 testedP!423)))))

(declare-fun b!7560308 () Bool)

(declare-fun res!3029220 () Bool)

(assert (=> b!7560308 (=> (not res!3029220) (not e!4502102))))

(assert (=> b!7560308 (= res!3029220 (= (size!42469 lt!2648472) (+ (size!42469 testedP!423) (size!42469 lt!2648400))))))

(declare-fun b!7560306 () Bool)

(assert (=> b!7560306 (= e!4502101 lt!2648400)))

(assert (= (and d!2314708 c!1395039) b!7560306))

(assert (= (and d!2314708 (not c!1395039)) b!7560307))

(assert (= (and d!2314708 res!3029219) b!7560308))

(assert (= (and b!7560308 res!3029220) b!7560309))

(declare-fun m!8123522 () Bool)

(assert (=> d!2314708 m!8123522))

(assert (=> d!2314708 m!8123374))

(declare-fun m!8123524 () Bool)

(assert (=> d!2314708 m!8123524))

(declare-fun m!8123526 () Bool)

(assert (=> b!7560307 m!8123526))

(declare-fun m!8123528 () Bool)

(assert (=> b!7560308 m!8123528))

(assert (=> b!7560308 m!8123344))

(declare-fun m!8123530 () Bool)

(assert (=> b!7560308 m!8123530))

(assert (=> b!7560125 d!2314708))

(declare-fun b!7560313 () Bool)

(declare-fun e!4502103 () Bool)

(assert (=> b!7560313 (= e!4502103 (>= (size!42469 input!7874) (size!42469 knownP!30)))))

(declare-fun b!7560312 () Bool)

(declare-fun e!4502104 () Bool)

(assert (=> b!7560312 (= e!4502104 (isPrefix!6179 (tail!15091 knownP!30) (tail!15091 input!7874)))))

(declare-fun b!7560311 () Bool)

(declare-fun res!3029221 () Bool)

(assert (=> b!7560311 (=> (not res!3029221) (not e!4502104))))

(assert (=> b!7560311 (= res!3029221 (= (head!15551 knownP!30) (head!15551 input!7874)))))

(declare-fun d!2314712 () Bool)

(assert (=> d!2314712 e!4502103))

(declare-fun res!3029222 () Bool)

(assert (=> d!2314712 (=> res!3029222 e!4502103)))

(declare-fun lt!2648474 () Bool)

(assert (=> d!2314712 (= res!3029222 (not lt!2648474))))

(declare-fun e!4502105 () Bool)

(assert (=> d!2314712 (= lt!2648474 e!4502105)))

(declare-fun res!3029223 () Bool)

(assert (=> d!2314712 (=> res!3029223 e!4502105)))

(assert (=> d!2314712 (= res!3029223 ((_ is Nil!72732) knownP!30))))

(assert (=> d!2314712 (= (isPrefix!6179 knownP!30 input!7874) lt!2648474)))

(declare-fun b!7560310 () Bool)

(assert (=> b!7560310 (= e!4502105 e!4502104)))

(declare-fun res!3029224 () Bool)

(assert (=> b!7560310 (=> (not res!3029224) (not e!4502104))))

(assert (=> b!7560310 (= res!3029224 (not ((_ is Nil!72732) input!7874)))))

(assert (= (and d!2314712 (not res!3029223)) b!7560310))

(assert (= (and b!7560310 res!3029224) b!7560311))

(assert (= (and b!7560311 res!3029221) b!7560312))

(assert (= (and d!2314712 (not res!3029222)) b!7560313))

(assert (=> b!7560313 m!8123350))

(assert (=> b!7560313 m!8123346))

(assert (=> b!7560312 m!8123486))

(declare-fun m!8123532 () Bool)

(assert (=> b!7560312 m!8123532))

(assert (=> b!7560312 m!8123486))

(assert (=> b!7560312 m!8123532))

(declare-fun m!8123534 () Bool)

(assert (=> b!7560312 m!8123534))

(assert (=> b!7560311 m!8123504))

(declare-fun m!8123536 () Bool)

(assert (=> b!7560311 m!8123536))

(assert (=> b!7560136 d!2314712))

(declare-fun bm!693147 () Bool)

(declare-fun call!693153 () Bool)

(declare-fun call!693152 () Bool)

(assert (=> bm!693147 (= call!693153 call!693152)))

(declare-fun d!2314714 () Bool)

(declare-fun res!3029242 () Bool)

(declare-fun e!4502129 () Bool)

(assert (=> d!2314714 (=> res!3029242 e!4502129)))

(assert (=> d!2314714 (= res!3029242 ((_ is ElementMatch!19973) r!24333))))

(assert (=> d!2314714 (= (validRegex!10401 r!24333) e!4502129)))

(declare-fun bm!693148 () Bool)

(declare-fun call!693154 () Bool)

(declare-fun c!1395050 () Bool)

(assert (=> bm!693148 (= call!693154 (validRegex!10401 (ite c!1395050 (regTwo!40459 r!24333) (regTwo!40458 r!24333))))))

(declare-fun b!7560348 () Bool)

(declare-fun e!4502131 () Bool)

(declare-fun e!4502135 () Bool)

(assert (=> b!7560348 (= e!4502131 e!4502135)))

(declare-fun res!3029244 () Bool)

(assert (=> b!7560348 (= res!3029244 (not (nullable!8711 (reg!20302 r!24333))))))

(assert (=> b!7560348 (=> (not res!3029244) (not e!4502135))))

(declare-fun b!7560349 () Bool)

(declare-fun e!4502134 () Bool)

(declare-fun e!4502130 () Bool)

(assert (=> b!7560349 (= e!4502134 e!4502130)))

(declare-fun res!3029241 () Bool)

(assert (=> b!7560349 (=> (not res!3029241) (not e!4502130))))

(assert (=> b!7560349 (= res!3029241 call!693153)))

(declare-fun b!7560350 () Bool)

(assert (=> b!7560350 (= e!4502129 e!4502131)))

(declare-fun c!1395049 () Bool)

(assert (=> b!7560350 (= c!1395049 ((_ is Star!19973) r!24333))))

(declare-fun b!7560351 () Bool)

(declare-fun res!3029243 () Bool)

(declare-fun e!4502132 () Bool)

(assert (=> b!7560351 (=> (not res!3029243) (not e!4502132))))

(assert (=> b!7560351 (= res!3029243 call!693153)))

(declare-fun e!4502133 () Bool)

(assert (=> b!7560351 (= e!4502133 e!4502132)))

(declare-fun b!7560352 () Bool)

(assert (=> b!7560352 (= e!4502131 e!4502133)))

(assert (=> b!7560352 (= c!1395050 ((_ is Union!19973) r!24333))))

(declare-fun b!7560353 () Bool)

(declare-fun res!3029245 () Bool)

(assert (=> b!7560353 (=> res!3029245 e!4502134)))

(assert (=> b!7560353 (= res!3029245 (not ((_ is Concat!28818) r!24333)))))

(assert (=> b!7560353 (= e!4502133 e!4502134)))

(declare-fun b!7560354 () Bool)

(assert (=> b!7560354 (= e!4502135 call!693152)))

(declare-fun b!7560355 () Bool)

(assert (=> b!7560355 (= e!4502130 call!693154)))

(declare-fun bm!693149 () Bool)

(assert (=> bm!693149 (= call!693152 (validRegex!10401 (ite c!1395049 (reg!20302 r!24333) (ite c!1395050 (regOne!40459 r!24333) (regOne!40458 r!24333)))))))

(declare-fun b!7560356 () Bool)

(assert (=> b!7560356 (= e!4502132 call!693154)))

(assert (= (and d!2314714 (not res!3029242)) b!7560350))

(assert (= (and b!7560350 c!1395049) b!7560348))

(assert (= (and b!7560350 (not c!1395049)) b!7560352))

(assert (= (and b!7560348 res!3029244) b!7560354))

(assert (= (and b!7560352 c!1395050) b!7560351))

(assert (= (and b!7560352 (not c!1395050)) b!7560353))

(assert (= (and b!7560351 res!3029243) b!7560356))

(assert (= (and b!7560353 (not res!3029245)) b!7560349))

(assert (= (and b!7560349 res!3029241) b!7560355))

(assert (= (or b!7560351 b!7560349) bm!693147))

(assert (= (or b!7560356 b!7560355) bm!693148))

(assert (= (or b!7560354 bm!693147) bm!693149))

(declare-fun m!8123566 () Bool)

(assert (=> bm!693148 m!8123566))

(declare-fun m!8123568 () Bool)

(assert (=> b!7560348 m!8123568))

(declare-fun m!8123570 () Bool)

(assert (=> bm!693149 m!8123570))

(assert (=> b!7560147 d!2314714))

(declare-fun d!2314728 () Bool)

(declare-fun lt!2648491 () Regex!19973)

(assert (=> d!2314728 (validRegex!10401 lt!2648491)))

(declare-fun e!4502142 () Regex!19973)

(assert (=> d!2314728 (= lt!2648491 e!4502142)))

(declare-fun c!1395055 () Bool)

(assert (=> d!2314728 (= c!1395055 ((_ is Cons!72732) testedP!423))))

(assert (=> d!2314728 (validRegex!10401 baseR!101)))

(assert (=> d!2314728 (= (derivative!503 baseR!101 testedP!423) lt!2648491)))

(declare-fun b!7560369 () Bool)

(assert (=> b!7560369 (= e!4502142 (derivative!503 (derivativeStep!5751 baseR!101 (h!79180 testedP!423)) (t!387581 testedP!423)))))

(declare-fun b!7560370 () Bool)

(assert (=> b!7560370 (= e!4502142 baseR!101)))

(assert (= (and d!2314728 c!1395055) b!7560369))

(assert (= (and d!2314728 (not c!1395055)) b!7560370))

(declare-fun m!8123598 () Bool)

(assert (=> d!2314728 m!8123598))

(assert (=> d!2314728 m!8123352))

(declare-fun m!8123600 () Bool)

(assert (=> b!7560369 m!8123600))

(assert (=> b!7560369 m!8123600))

(declare-fun m!8123602 () Bool)

(assert (=> b!7560369 m!8123602))

(assert (=> b!7560121 d!2314728))

(declare-fun bm!693150 () Bool)

(declare-fun call!693155 () Bool)

(assert (=> bm!693150 (= call!693155 (isEmpty!41410 knownP!30))))

(declare-fun b!7560371 () Bool)

(declare-fun e!4502147 () Bool)

(declare-fun e!4502145 () Bool)

(assert (=> b!7560371 (= e!4502147 e!4502145)))

(declare-fun res!3029255 () Bool)

(assert (=> b!7560371 (=> res!3029255 e!4502145)))

(assert (=> b!7560371 (= res!3029255 call!693155)))

(declare-fun b!7560372 () Bool)

(declare-fun e!4502144 () Bool)

(declare-fun lt!2648492 () Bool)

(assert (=> b!7560372 (= e!4502144 (not lt!2648492))))

(declare-fun b!7560373 () Bool)

(declare-fun res!3029257 () Bool)

(declare-fun e!4502146 () Bool)

(assert (=> b!7560373 (=> res!3029257 e!4502146)))

(assert (=> b!7560373 (= res!3029257 (not ((_ is ElementMatch!19973) baseR!101)))))

(assert (=> b!7560373 (= e!4502144 e!4502146)))

(declare-fun d!2314736 () Bool)

(declare-fun e!4502143 () Bool)

(assert (=> d!2314736 e!4502143))

(declare-fun c!1395056 () Bool)

(assert (=> d!2314736 (= c!1395056 ((_ is EmptyExpr!19973) baseR!101))))

(declare-fun e!4502148 () Bool)

(assert (=> d!2314736 (= lt!2648492 e!4502148)))

(declare-fun c!1395058 () Bool)

(assert (=> d!2314736 (= c!1395058 (isEmpty!41410 knownP!30))))

(assert (=> d!2314736 (validRegex!10401 baseR!101)))

(assert (=> d!2314736 (= (matchR!9575 baseR!101 knownP!30) lt!2648492)))

(declare-fun b!7560374 () Bool)

(assert (=> b!7560374 (= e!4502143 e!4502144)))

(declare-fun c!1395057 () Bool)

(assert (=> b!7560374 (= c!1395057 ((_ is EmptyLang!19973) baseR!101))))

(declare-fun b!7560375 () Bool)

(assert (=> b!7560375 (= e!4502145 (not (= (head!15551 knownP!30) (c!1394992 baseR!101))))))

(declare-fun b!7560376 () Bool)

(assert (=> b!7560376 (= e!4502143 (= lt!2648492 call!693155))))

(declare-fun b!7560377 () Bool)

(declare-fun res!3029250 () Bool)

(declare-fun e!4502149 () Bool)

(assert (=> b!7560377 (=> (not res!3029250) (not e!4502149))))

(assert (=> b!7560377 (= res!3029250 (not call!693155))))

(declare-fun b!7560378 () Bool)

(assert (=> b!7560378 (= e!4502146 e!4502147)))

(declare-fun res!3029256 () Bool)

(assert (=> b!7560378 (=> (not res!3029256) (not e!4502147))))

(assert (=> b!7560378 (= res!3029256 (not lt!2648492))))

(declare-fun b!7560379 () Bool)

(assert (=> b!7560379 (= e!4502148 (nullable!8711 baseR!101))))

(declare-fun b!7560380 () Bool)

(assert (=> b!7560380 (= e!4502149 (= (head!15551 knownP!30) (c!1394992 baseR!101)))))

(declare-fun b!7560381 () Bool)

(declare-fun res!3029252 () Bool)

(assert (=> b!7560381 (=> res!3029252 e!4502146)))

(assert (=> b!7560381 (= res!3029252 e!4502149)))

(declare-fun res!3029254 () Bool)

(assert (=> b!7560381 (=> (not res!3029254) (not e!4502149))))

(assert (=> b!7560381 (= res!3029254 lt!2648492)))

(declare-fun b!7560382 () Bool)

(assert (=> b!7560382 (= e!4502148 (matchR!9575 (derivativeStep!5751 baseR!101 (head!15551 knownP!30)) (tail!15091 knownP!30)))))

(declare-fun b!7560383 () Bool)

(declare-fun res!3029253 () Bool)

(assert (=> b!7560383 (=> res!3029253 e!4502145)))

(assert (=> b!7560383 (= res!3029253 (not (isEmpty!41410 (tail!15091 knownP!30))))))

(declare-fun b!7560384 () Bool)

(declare-fun res!3029251 () Bool)

(assert (=> b!7560384 (=> (not res!3029251) (not e!4502149))))

(assert (=> b!7560384 (= res!3029251 (isEmpty!41410 (tail!15091 knownP!30)))))

(assert (= (and d!2314736 c!1395058) b!7560379))

(assert (= (and d!2314736 (not c!1395058)) b!7560382))

(assert (= (and d!2314736 c!1395056) b!7560376))

(assert (= (and d!2314736 (not c!1395056)) b!7560374))

(assert (= (and b!7560374 c!1395057) b!7560372))

(assert (= (and b!7560374 (not c!1395057)) b!7560373))

(assert (= (and b!7560373 (not res!3029257)) b!7560381))

(assert (= (and b!7560381 res!3029254) b!7560377))

(assert (= (and b!7560377 res!3029250) b!7560384))

(assert (= (and b!7560384 res!3029251) b!7560380))

(assert (= (and b!7560381 (not res!3029252)) b!7560378))

(assert (= (and b!7560378 res!3029256) b!7560371))

(assert (= (and b!7560371 (not res!3029255)) b!7560383))

(assert (= (and b!7560383 (not res!3029253)) b!7560375))

(assert (= (or b!7560376 b!7560371 b!7560377) bm!693150))

(declare-fun m!8123604 () Bool)

(assert (=> b!7560379 m!8123604))

(assert (=> b!7560383 m!8123486))

(assert (=> b!7560383 m!8123486))

(declare-fun m!8123606 () Bool)

(assert (=> b!7560383 m!8123606))

(assert (=> b!7560380 m!8123504))

(declare-fun m!8123608 () Bool)

(assert (=> d!2314736 m!8123608))

(assert (=> d!2314736 m!8123352))

(assert (=> b!7560375 m!8123504))

(assert (=> b!7560382 m!8123504))

(assert (=> b!7560382 m!8123504))

(declare-fun m!8123610 () Bool)

(assert (=> b!7560382 m!8123610))

(assert (=> b!7560382 m!8123486))

(assert (=> b!7560382 m!8123610))

(assert (=> b!7560382 m!8123486))

(declare-fun m!8123612 () Bool)

(assert (=> b!7560382 m!8123612))

(assert (=> bm!693150 m!8123608))

(assert (=> b!7560384 m!8123486))

(assert (=> b!7560384 m!8123486))

(assert (=> b!7560384 m!8123606))

(assert (=> b!7560132 d!2314736))

(declare-fun b!7560392 () Bool)

(declare-fun e!4502152 () Bool)

(assert (=> b!7560392 (= e!4502152 (>= (size!42469 input!7874) (size!42469 testedP!423)))))

(declare-fun b!7560391 () Bool)

(declare-fun e!4502153 () Bool)

(assert (=> b!7560391 (= e!4502153 (isPrefix!6179 (tail!15091 testedP!423) (tail!15091 input!7874)))))

(declare-fun b!7560390 () Bool)

(declare-fun res!3029258 () Bool)

(assert (=> b!7560390 (=> (not res!3029258) (not e!4502153))))

(assert (=> b!7560390 (= res!3029258 (= (head!15551 testedP!423) (head!15551 input!7874)))))

(declare-fun d!2314738 () Bool)

(assert (=> d!2314738 e!4502152))

(declare-fun res!3029259 () Bool)

(assert (=> d!2314738 (=> res!3029259 e!4502152)))

(declare-fun lt!2648495 () Bool)

(assert (=> d!2314738 (= res!3029259 (not lt!2648495))))

(declare-fun e!4502154 () Bool)

(assert (=> d!2314738 (= lt!2648495 e!4502154)))

(declare-fun res!3029260 () Bool)

(assert (=> d!2314738 (=> res!3029260 e!4502154)))

(assert (=> d!2314738 (= res!3029260 ((_ is Nil!72732) testedP!423))))

(assert (=> d!2314738 (= (isPrefix!6179 testedP!423 input!7874) lt!2648495)))

(declare-fun b!7560389 () Bool)

(assert (=> b!7560389 (= e!4502154 e!4502153)))

(declare-fun res!3029261 () Bool)

(assert (=> b!7560389 (=> (not res!3029261) (not e!4502153))))

(assert (=> b!7560389 (= res!3029261 (not ((_ is Nil!72732) input!7874)))))

(assert (= (and d!2314738 (not res!3029260)) b!7560389))

(assert (= (and b!7560389 res!3029261) b!7560390))

(assert (= (and b!7560390 res!3029258) b!7560391))

(assert (= (and d!2314738 (not res!3029259)) b!7560392))

(assert (=> b!7560392 m!8123350))

(assert (=> b!7560392 m!8123344))

(assert (=> b!7560391 m!8123498))

(assert (=> b!7560391 m!8123532))

(assert (=> b!7560391 m!8123498))

(assert (=> b!7560391 m!8123532))

(declare-fun m!8123616 () Bool)

(assert (=> b!7560391 m!8123616))

(assert (=> b!7560390 m!8123502))

(assert (=> b!7560390 m!8123536))

(assert (=> b!7560122 d!2314738))

(declare-fun b!7560402 () Bool)

(declare-fun e!4502158 () Bool)

(assert (=> b!7560402 (= e!4502158 (>= (size!42469 knownP!30) (size!42469 lt!2648397)))))

(declare-fun b!7560401 () Bool)

(declare-fun e!4502159 () Bool)

(assert (=> b!7560401 (= e!4502159 (isPrefix!6179 (tail!15091 lt!2648397) (tail!15091 knownP!30)))))

(declare-fun b!7560400 () Bool)

(declare-fun res!3029264 () Bool)

(assert (=> b!7560400 (=> (not res!3029264) (not e!4502159))))

(assert (=> b!7560400 (= res!3029264 (= (head!15551 lt!2648397) (head!15551 knownP!30)))))

(declare-fun d!2314742 () Bool)

(assert (=> d!2314742 e!4502158))

(declare-fun res!3029265 () Bool)

(assert (=> d!2314742 (=> res!3029265 e!4502158)))

(declare-fun lt!2648498 () Bool)

(assert (=> d!2314742 (= res!3029265 (not lt!2648498))))

(declare-fun e!4502160 () Bool)

(assert (=> d!2314742 (= lt!2648498 e!4502160)))

(declare-fun res!3029266 () Bool)

(assert (=> d!2314742 (=> res!3029266 e!4502160)))

(assert (=> d!2314742 (= res!3029266 ((_ is Nil!72732) lt!2648397))))

(assert (=> d!2314742 (= (isPrefix!6179 lt!2648397 knownP!30) lt!2648498)))

(declare-fun b!7560399 () Bool)

(assert (=> b!7560399 (= e!4502160 e!4502159)))

(declare-fun res!3029267 () Bool)

(assert (=> b!7560399 (=> (not res!3029267) (not e!4502159))))

(assert (=> b!7560399 (= res!3029267 (not ((_ is Nil!72732) knownP!30)))))

(assert (= (and d!2314742 (not res!3029266)) b!7560399))

(assert (= (and b!7560399 res!3029267) b!7560400))

(assert (= (and b!7560400 res!3029264) b!7560401))

(assert (= (and d!2314742 (not res!3029265)) b!7560402))

(assert (=> b!7560402 m!8123346))

(assert (=> b!7560402 m!8123416))

(declare-fun m!8123628 () Bool)

(assert (=> b!7560401 m!8123628))

(assert (=> b!7560401 m!8123486))

(assert (=> b!7560401 m!8123628))

(assert (=> b!7560401 m!8123486))

(declare-fun m!8123630 () Bool)

(assert (=> b!7560401 m!8123630))

(declare-fun m!8123632 () Bool)

(assert (=> b!7560400 m!8123632))

(assert (=> b!7560400 m!8123504))

(assert (=> b!7560133 d!2314742))

(declare-fun b!7560410 () Bool)

(declare-fun e!4502163 () Bool)

(assert (=> b!7560410 (= e!4502163 (>= (size!42469 input!7874) (size!42469 lt!2648397)))))

(declare-fun b!7560409 () Bool)

(declare-fun e!4502164 () Bool)

(assert (=> b!7560409 (= e!4502164 (isPrefix!6179 (tail!15091 lt!2648397) (tail!15091 input!7874)))))

(declare-fun b!7560408 () Bool)

(declare-fun res!3029270 () Bool)

(assert (=> b!7560408 (=> (not res!3029270) (not e!4502164))))

(assert (=> b!7560408 (= res!3029270 (= (head!15551 lt!2648397) (head!15551 input!7874)))))

(declare-fun d!2314746 () Bool)

(assert (=> d!2314746 e!4502163))

(declare-fun res!3029271 () Bool)

(assert (=> d!2314746 (=> res!3029271 e!4502163)))

(declare-fun lt!2648500 () Bool)

(assert (=> d!2314746 (= res!3029271 (not lt!2648500))))

(declare-fun e!4502165 () Bool)

(assert (=> d!2314746 (= lt!2648500 e!4502165)))

(declare-fun res!3029272 () Bool)

(assert (=> d!2314746 (=> res!3029272 e!4502165)))

(assert (=> d!2314746 (= res!3029272 ((_ is Nil!72732) lt!2648397))))

(assert (=> d!2314746 (= (isPrefix!6179 lt!2648397 input!7874) lt!2648500)))

(declare-fun b!7560407 () Bool)

(assert (=> b!7560407 (= e!4502165 e!4502164)))

(declare-fun res!3029273 () Bool)

(assert (=> b!7560407 (=> (not res!3029273) (not e!4502164))))

(assert (=> b!7560407 (= res!3029273 (not ((_ is Nil!72732) input!7874)))))

(assert (= (and d!2314746 (not res!3029272)) b!7560407))

(assert (= (and b!7560407 res!3029273) b!7560408))

(assert (= (and b!7560408 res!3029270) b!7560409))

(assert (= (and d!2314746 (not res!3029271)) b!7560410))

(assert (=> b!7560410 m!8123350))

(assert (=> b!7560410 m!8123416))

(assert (=> b!7560409 m!8123628))

(assert (=> b!7560409 m!8123532))

(assert (=> b!7560409 m!8123628))

(assert (=> b!7560409 m!8123532))

(declare-fun m!8123644 () Bool)

(assert (=> b!7560409 m!8123644))

(assert (=> b!7560408 m!8123632))

(assert (=> b!7560408 m!8123536))

(assert (=> b!7560133 d!2314746))

(declare-fun d!2314750 () Bool)

(declare-fun lt!2648502 () Regex!19973)

(assert (=> d!2314750 (validRegex!10401 lt!2648502)))

(declare-fun e!4502168 () Regex!19973)

(assert (=> d!2314750 (= lt!2648502 e!4502168)))

(declare-fun c!1395065 () Bool)

(assert (=> d!2314750 (= c!1395065 ((_ is Cons!72732) lt!2648397))))

(assert (=> d!2314750 (validRegex!10401 baseR!101)))

(assert (=> d!2314750 (= (derivative!503 baseR!101 lt!2648397) lt!2648502)))

(declare-fun b!7560415 () Bool)

(assert (=> b!7560415 (= e!4502168 (derivative!503 (derivativeStep!5751 baseR!101 (h!79180 lt!2648397)) (t!387581 lt!2648397)))))

(declare-fun b!7560416 () Bool)

(assert (=> b!7560416 (= e!4502168 baseR!101)))

(assert (= (and d!2314750 c!1395065) b!7560415))

(assert (= (and d!2314750 (not c!1395065)) b!7560416))

(declare-fun m!8123646 () Bool)

(assert (=> d!2314750 m!8123646))

(assert (=> d!2314750 m!8123352))

(declare-fun m!8123650 () Bool)

(assert (=> b!7560415 m!8123650))

(assert (=> b!7560415 m!8123650))

(declare-fun m!8123658 () Bool)

(assert (=> b!7560415 m!8123658))

(assert (=> b!7560133 d!2314750))

(declare-fun d!2314752 () Bool)

(assert (=> d!2314752 (isPrefix!6179 lt!2648397 knownP!30)))

(declare-fun lt!2648503 () Unit!166880)

(assert (=> d!2314752 (= lt!2648503 (choose!58477 knownP!30 lt!2648397 input!7874))))

(assert (=> d!2314752 (isPrefix!6179 knownP!30 input!7874)))

(assert (=> d!2314752 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!927 knownP!30 lt!2648397 input!7874) lt!2648503)))

(declare-fun bs!1940347 () Bool)

(assert (= bs!1940347 d!2314752))

(assert (=> bs!1940347 m!8123300))

(declare-fun m!8123662 () Bool)

(assert (=> bs!1940347 m!8123662))

(assert (=> bs!1940347 m!8123322))

(assert (=> b!7560133 d!2314752))

(declare-fun b!7560484 () Bool)

(declare-fun e!4502215 () Regex!19973)

(declare-fun e!4502217 () Regex!19973)

(assert (=> b!7560484 (= e!4502215 e!4502217)))

(declare-fun c!1395087 () Bool)

(assert (=> b!7560484 (= c!1395087 ((_ is Star!19973) r!24333))))

(declare-fun b!7560485 () Bool)

(declare-fun c!1395088 () Bool)

(assert (=> b!7560485 (= c!1395088 ((_ is Union!19973) r!24333))))

(declare-fun e!4502214 () Regex!19973)

(assert (=> b!7560485 (= e!4502214 e!4502215)))

(declare-fun b!7560486 () Bool)

(declare-fun e!4502213 () Regex!19973)

(assert (=> b!7560486 (= e!4502213 EmptyLang!19973)))

(declare-fun b!7560487 () Bool)

(declare-fun e!4502216 () Regex!19973)

(declare-fun call!693179 () Regex!19973)

(assert (=> b!7560487 (= e!4502216 (Union!19973 (Concat!28818 call!693179 (regTwo!40458 r!24333)) EmptyLang!19973))))

(declare-fun b!7560488 () Bool)

(declare-fun c!1395090 () Bool)

(assert (=> b!7560488 (= c!1395090 (nullable!8711 (regOne!40458 r!24333)))))

(assert (=> b!7560488 (= e!4502217 e!4502216)))

(declare-fun bm!693171 () Bool)

(declare-fun call!693177 () Regex!19973)

(declare-fun call!693178 () Regex!19973)

(assert (=> bm!693171 (= call!693177 call!693178)))

(declare-fun call!693176 () Regex!19973)

(declare-fun bm!693172 () Bool)

(assert (=> bm!693172 (= call!693176 (derivativeStep!5751 (ite c!1395088 (regOne!40459 r!24333) (regTwo!40458 r!24333)) lt!2648410))))

(declare-fun bm!693173 () Bool)

(assert (=> bm!693173 (= call!693178 (derivativeStep!5751 (ite c!1395088 (regTwo!40459 r!24333) (ite c!1395087 (reg!20302 r!24333) (regOne!40458 r!24333))) lt!2648410))))

(declare-fun b!7560489 () Bool)

(assert (=> b!7560489 (= e!4502215 (Union!19973 call!693176 call!693178))))

(declare-fun b!7560483 () Bool)

(assert (=> b!7560483 (= e!4502217 (Concat!28818 call!693177 r!24333))))

(declare-fun d!2314756 () Bool)

(declare-fun lt!2648510 () Regex!19973)

(assert (=> d!2314756 (validRegex!10401 lt!2648510)))

(assert (=> d!2314756 (= lt!2648510 e!4502213)))

(declare-fun c!1395091 () Bool)

(assert (=> d!2314756 (= c!1395091 (or ((_ is EmptyExpr!19973) r!24333) ((_ is EmptyLang!19973) r!24333)))))

(assert (=> d!2314756 (validRegex!10401 r!24333)))

(assert (=> d!2314756 (= (derivativeStep!5751 r!24333 lt!2648410) lt!2648510)))

(declare-fun b!7560490 () Bool)

(assert (=> b!7560490 (= e!4502216 (Union!19973 (Concat!28818 call!693179 (regTwo!40458 r!24333)) call!693176))))

(declare-fun b!7560491 () Bool)

(assert (=> b!7560491 (= e!4502214 (ite (= lt!2648410 (c!1394992 r!24333)) EmptyExpr!19973 EmptyLang!19973))))

(declare-fun bm!693174 () Bool)

(assert (=> bm!693174 (= call!693179 call!693177)))

(declare-fun b!7560492 () Bool)

(assert (=> b!7560492 (= e!4502213 e!4502214)))

(declare-fun c!1395089 () Bool)

(assert (=> b!7560492 (= c!1395089 ((_ is ElementMatch!19973) r!24333))))

(assert (= (and d!2314756 c!1395091) b!7560486))

(assert (= (and d!2314756 (not c!1395091)) b!7560492))

(assert (= (and b!7560492 c!1395089) b!7560491))

(assert (= (and b!7560492 (not c!1395089)) b!7560485))

(assert (= (and b!7560485 c!1395088) b!7560489))

(assert (= (and b!7560485 (not c!1395088)) b!7560484))

(assert (= (and b!7560484 c!1395087) b!7560483))

(assert (= (and b!7560484 (not c!1395087)) b!7560488))

(assert (= (and b!7560488 c!1395090) b!7560490))

(assert (= (and b!7560488 (not c!1395090)) b!7560487))

(assert (= (or b!7560490 b!7560487) bm!693174))

(assert (= (or b!7560483 bm!693174) bm!693171))

(assert (= (or b!7560489 bm!693171) bm!693173))

(assert (= (or b!7560489 b!7560490) bm!693172))

(declare-fun m!8123692 () Bool)

(assert (=> b!7560488 m!8123692))

(declare-fun m!8123694 () Bool)

(assert (=> bm!693172 m!8123694))

(declare-fun m!8123696 () Bool)

(assert (=> bm!693173 m!8123696))

(declare-fun m!8123698 () Bool)

(assert (=> d!2314756 m!8123698))

(assert (=> d!2314756 m!8123278))

(assert (=> b!7560133 d!2314756))

(declare-fun d!2314770 () Bool)

(declare-fun lt!2648511 () List!72856)

(assert (=> d!2314770 (= (++!17477 testedP!423 lt!2648511) input!7874)))

(declare-fun e!4502218 () List!72856)

(assert (=> d!2314770 (= lt!2648511 e!4502218)))

(declare-fun c!1395092 () Bool)

(assert (=> d!2314770 (= c!1395092 ((_ is Cons!72732) testedP!423))))

(assert (=> d!2314770 (>= (size!42469 input!7874) (size!42469 testedP!423))))

(assert (=> d!2314770 (= (getSuffix!3657 input!7874 testedP!423) lt!2648511)))

(declare-fun b!7560493 () Bool)

(assert (=> b!7560493 (= e!4502218 (getSuffix!3657 (tail!15091 input!7874) (t!387581 testedP!423)))))

(declare-fun b!7560494 () Bool)

(assert (=> b!7560494 (= e!4502218 input!7874)))

(assert (= (and d!2314770 c!1395092) b!7560493))

(assert (= (and d!2314770 (not c!1395092)) b!7560494))

(declare-fun m!8123700 () Bool)

(assert (=> d!2314770 m!8123700))

(assert (=> d!2314770 m!8123350))

(assert (=> d!2314770 m!8123344))

(assert (=> b!7560493 m!8123532))

(assert (=> b!7560493 m!8123532))

(declare-fun m!8123702 () Bool)

(assert (=> b!7560493 m!8123702))

(assert (=> b!7560133 d!2314770))

(declare-fun d!2314772 () Bool)

(declare-fun lt!2648512 () List!72856)

(assert (=> d!2314772 (= (++!17477 knownP!30 lt!2648512) input!7874)))

(declare-fun e!4502219 () List!72856)

(assert (=> d!2314772 (= lt!2648512 e!4502219)))

(declare-fun c!1395093 () Bool)

(assert (=> d!2314772 (= c!1395093 ((_ is Cons!72732) knownP!30))))

(assert (=> d!2314772 (>= (size!42469 input!7874) (size!42469 knownP!30))))

(assert (=> d!2314772 (= (getSuffix!3657 input!7874 knownP!30) lt!2648512)))

(declare-fun b!7560495 () Bool)

(assert (=> b!7560495 (= e!4502219 (getSuffix!3657 (tail!15091 input!7874) (t!387581 knownP!30)))))

(declare-fun b!7560496 () Bool)

(assert (=> b!7560496 (= e!4502219 input!7874)))

(assert (= (and d!2314772 c!1395093) b!7560495))

(assert (= (and d!2314772 (not c!1395093)) b!7560496))

(declare-fun m!8123704 () Bool)

(assert (=> d!2314772 m!8123704))

(assert (=> d!2314772 m!8123350))

(assert (=> d!2314772 m!8123346))

(assert (=> b!7560495 m!8123532))

(assert (=> b!7560495 m!8123532))

(declare-fun m!8123706 () Bool)

(assert (=> b!7560495 m!8123706))

(assert (=> b!7560133 d!2314772))

(declare-fun d!2314774 () Bool)

(assert (=> d!2314774 (= (head!15551 lt!2648400) (h!79180 lt!2648400))))

(assert (=> b!7560133 d!2314774))

(declare-fun d!2314776 () Bool)

(declare-fun e!4502221 () Bool)

(assert (=> d!2314776 e!4502221))

(declare-fun res!3029300 () Bool)

(assert (=> d!2314776 (=> (not res!3029300) (not e!4502221))))

(declare-fun lt!2648513 () List!72856)

(assert (=> d!2314776 (= res!3029300 (= (content!15397 lt!2648513) ((_ map or) (content!15397 knownP!30) (content!15397 lt!2648401))))))

(declare-fun e!4502220 () List!72856)

(assert (=> d!2314776 (= lt!2648513 e!4502220)))

(declare-fun c!1395094 () Bool)

(assert (=> d!2314776 (= c!1395094 ((_ is Nil!72732) knownP!30))))

(assert (=> d!2314776 (= (++!17477 knownP!30 lt!2648401) lt!2648513)))

(declare-fun b!7560498 () Bool)

(assert (=> b!7560498 (= e!4502220 (Cons!72732 (h!79180 knownP!30) (++!17477 (t!387581 knownP!30) lt!2648401)))))

(declare-fun b!7560500 () Bool)

(assert (=> b!7560500 (= e!4502221 (or (not (= lt!2648401 Nil!72732)) (= lt!2648513 knownP!30)))))

(declare-fun b!7560499 () Bool)

(declare-fun res!3029301 () Bool)

(assert (=> b!7560499 (=> (not res!3029301) (not e!4502221))))

(assert (=> b!7560499 (= res!3029301 (= (size!42469 lt!2648513) (+ (size!42469 knownP!30) (size!42469 lt!2648401))))))

(declare-fun b!7560497 () Bool)

(assert (=> b!7560497 (= e!4502220 lt!2648401)))

(assert (= (and d!2314776 c!1395094) b!7560497))

(assert (= (and d!2314776 (not c!1395094)) b!7560498))

(assert (= (and d!2314776 res!3029300) b!7560499))

(assert (= (and b!7560499 res!3029301) b!7560500))

(declare-fun m!8123708 () Bool)

(assert (=> d!2314776 m!8123708))

(declare-fun m!8123710 () Bool)

(assert (=> d!2314776 m!8123710))

(assert (=> d!2314776 m!8123436))

(declare-fun m!8123712 () Bool)

(assert (=> b!7560498 m!8123712))

(declare-fun m!8123714 () Bool)

(assert (=> b!7560499 m!8123714))

(assert (=> b!7560499 m!8123346))

(assert (=> b!7560499 m!8123444))

(assert (=> b!7560133 d!2314776))

(declare-fun d!2314778 () Bool)

(declare-fun e!4502225 () Bool)

(assert (=> d!2314778 e!4502225))

(declare-fun res!3029302 () Bool)

(assert (=> d!2314778 (=> (not res!3029302) (not e!4502225))))

(declare-fun lt!2648516 () List!72856)

(assert (=> d!2314778 (= res!3029302 (= (content!15397 lt!2648516) ((_ map or) (content!15397 testedP!423) (content!15397 lt!2648415))))))

(declare-fun e!4502224 () List!72856)

(assert (=> d!2314778 (= lt!2648516 e!4502224)))

(declare-fun c!1395097 () Bool)

(assert (=> d!2314778 (= c!1395097 ((_ is Nil!72732) testedP!423))))

(assert (=> d!2314778 (= (++!17477 testedP!423 lt!2648415) lt!2648516)))

(declare-fun b!7560506 () Bool)

(assert (=> b!7560506 (= e!4502224 (Cons!72732 (h!79180 testedP!423) (++!17477 (t!387581 testedP!423) lt!2648415)))))

(declare-fun b!7560508 () Bool)

(assert (=> b!7560508 (= e!4502225 (or (not (= lt!2648415 Nil!72732)) (= lt!2648516 testedP!423)))))

(declare-fun b!7560507 () Bool)

(declare-fun res!3029303 () Bool)

(assert (=> b!7560507 (=> (not res!3029303) (not e!4502225))))

(assert (=> b!7560507 (= res!3029303 (= (size!42469 lt!2648516) (+ (size!42469 testedP!423) (size!42469 lt!2648415))))))

(declare-fun b!7560505 () Bool)

(assert (=> b!7560505 (= e!4502224 lt!2648415)))

(assert (= (and d!2314778 c!1395097) b!7560505))

(assert (= (and d!2314778 (not c!1395097)) b!7560506))

(assert (= (and d!2314778 res!3029302) b!7560507))

(assert (= (and b!7560507 res!3029303) b!7560508))

(declare-fun m!8123716 () Bool)

(assert (=> d!2314778 m!8123716))

(assert (=> d!2314778 m!8123374))

(assert (=> d!2314778 m!8123386))

(declare-fun m!8123718 () Bool)

(assert (=> b!7560506 m!8123718))

(declare-fun m!8123720 () Bool)

(assert (=> b!7560507 m!8123720))

(assert (=> b!7560507 m!8123344))

(assert (=> b!7560507 m!8123394))

(assert (=> b!7560133 d!2314778))

(declare-fun d!2314780 () Bool)

(assert (=> d!2314780 (isPrefix!6179 (++!17477 testedP!423 (Cons!72732 (head!15551 (getSuffix!3657 input!7874 testedP!423)) Nil!72732)) input!7874)))

(declare-fun lt!2648519 () Unit!166880)

(declare-fun choose!58480 (List!72856 List!72856) Unit!166880)

(assert (=> d!2314780 (= lt!2648519 (choose!58480 testedP!423 input!7874))))

(assert (=> d!2314780 (isPrefix!6179 testedP!423 input!7874)))

(assert (=> d!2314780 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1228 testedP!423 input!7874) lt!2648519)))

(declare-fun bs!1940348 () Bool)

(assert (= bs!1940348 d!2314780))

(declare-fun m!8123722 () Bool)

(assert (=> bs!1940348 m!8123722))

(assert (=> bs!1940348 m!8123308))

(declare-fun m!8123724 () Bool)

(assert (=> bs!1940348 m!8123724))

(assert (=> bs!1940348 m!8123290))

(assert (=> bs!1940348 m!8123290))

(declare-fun m!8123726 () Bool)

(assert (=> bs!1940348 m!8123726))

(assert (=> bs!1940348 m!8123722))

(declare-fun m!8123728 () Bool)

(assert (=> bs!1940348 m!8123728))

(assert (=> b!7560133 d!2314780))

(declare-fun d!2314782 () Bool)

(declare-fun lt!2648520 () List!72856)

(assert (=> d!2314782 (= (++!17477 lt!2648397 lt!2648520) knownP!30)))

(declare-fun e!4502238 () List!72856)

(assert (=> d!2314782 (= lt!2648520 e!4502238)))

(declare-fun c!1395102 () Bool)

(assert (=> d!2314782 (= c!1395102 ((_ is Cons!72732) lt!2648397))))

(assert (=> d!2314782 (>= (size!42469 knownP!30) (size!42469 lt!2648397))))

(assert (=> d!2314782 (= (getSuffix!3657 knownP!30 lt!2648397) lt!2648520)))

(declare-fun b!7560533 () Bool)

(assert (=> b!7560533 (= e!4502238 (getSuffix!3657 (tail!15091 knownP!30) (t!387581 lt!2648397)))))

(declare-fun b!7560534 () Bool)

(assert (=> b!7560534 (= e!4502238 knownP!30)))

(assert (= (and d!2314782 c!1395102) b!7560533))

(assert (= (and d!2314782 (not c!1395102)) b!7560534))

(declare-fun m!8123730 () Bool)

(assert (=> d!2314782 m!8123730))

(assert (=> d!2314782 m!8123346))

(assert (=> d!2314782 m!8123416))

(assert (=> b!7560533 m!8123486))

(assert (=> b!7560533 m!8123486))

(declare-fun m!8123732 () Bool)

(assert (=> b!7560533 m!8123732))

(assert (=> b!7560133 d!2314782))

(declare-fun d!2314784 () Bool)

(assert (=> d!2314784 (= (derivative!503 baseR!101 (++!17477 testedP!423 (Cons!72732 lt!2648410 Nil!72732))) (derivativeStep!5751 r!24333 lt!2648410))))

(declare-fun lt!2648525 () Unit!166880)

(declare-fun choose!58481 (Regex!19973 Regex!19973 List!72856 C!40272) Unit!166880)

(assert (=> d!2314784 (= lt!2648525 (choose!58481 baseR!101 r!24333 testedP!423 lt!2648410))))

(assert (=> d!2314784 (validRegex!10401 baseR!101)))

(assert (=> d!2314784 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!195 baseR!101 r!24333 testedP!423 lt!2648410) lt!2648525)))

(declare-fun bs!1940349 () Bool)

(assert (= bs!1940349 d!2314784))

(declare-fun m!8123752 () Bool)

(assert (=> bs!1940349 m!8123752))

(declare-fun m!8123754 () Bool)

(assert (=> bs!1940349 m!8123754))

(assert (=> bs!1940349 m!8123352))

(assert (=> bs!1940349 m!8123292))

(assert (=> bs!1940349 m!8123752))

(declare-fun m!8123762 () Bool)

(assert (=> bs!1940349 m!8123762))

(assert (=> b!7560133 d!2314784))

(declare-fun d!2314792 () Bool)

(declare-fun e!4502256 () Bool)

(assert (=> d!2314792 e!4502256))

(declare-fun res!3029335 () Bool)

(assert (=> d!2314792 (=> (not res!3029335) (not e!4502256))))

(declare-fun lt!2648526 () List!72856)

(assert (=> d!2314792 (= res!3029335 (= (content!15397 lt!2648526) ((_ map or) (content!15397 lt!2648416) (content!15397 lt!2648401))))))

(declare-fun e!4502255 () List!72856)

(assert (=> d!2314792 (= lt!2648526 e!4502255)))

(declare-fun c!1395110 () Bool)

(assert (=> d!2314792 (= c!1395110 ((_ is Nil!72732) lt!2648416))))

(assert (=> d!2314792 (= (++!17477 lt!2648416 lt!2648401) lt!2648526)))

(declare-fun b!7560563 () Bool)

(assert (=> b!7560563 (= e!4502255 (Cons!72732 (h!79180 lt!2648416) (++!17477 (t!387581 lt!2648416) lt!2648401)))))

(declare-fun b!7560565 () Bool)

(assert (=> b!7560565 (= e!4502256 (or (not (= lt!2648401 Nil!72732)) (= lt!2648526 lt!2648416)))))

(declare-fun b!7560564 () Bool)

(declare-fun res!3029336 () Bool)

(assert (=> b!7560564 (=> (not res!3029336) (not e!4502256))))

(assert (=> b!7560564 (= res!3029336 (= (size!42469 lt!2648526) (+ (size!42469 lt!2648416) (size!42469 lt!2648401))))))

(declare-fun b!7560562 () Bool)

(assert (=> b!7560562 (= e!4502255 lt!2648401)))

(assert (= (and d!2314792 c!1395110) b!7560562))

(assert (= (and d!2314792 (not c!1395110)) b!7560563))

(assert (= (and d!2314792 res!3029335) b!7560564))

(assert (= (and b!7560564 res!3029336) b!7560565))

(declare-fun m!8123766 () Bool)

(assert (=> d!2314792 m!8123766))

(declare-fun m!8123768 () Bool)

(assert (=> d!2314792 m!8123768))

(assert (=> d!2314792 m!8123436))

(declare-fun m!8123770 () Bool)

(assert (=> b!7560563 m!8123770))

(declare-fun m!8123772 () Bool)

(assert (=> b!7560564 m!8123772))

(declare-fun m!8123774 () Bool)

(assert (=> b!7560564 m!8123774))

(assert (=> b!7560564 m!8123444))

(assert (=> b!7560123 d!2314792))

(declare-fun d!2314798 () Bool)

(declare-fun e!4502260 () Bool)

(assert (=> d!2314798 e!4502260))

(declare-fun res!3029339 () Bool)

(assert (=> d!2314798 (=> (not res!3029339) (not e!4502260))))

(declare-fun lt!2648529 () List!72856)

(assert (=> d!2314798 (= res!3029339 (= (content!15397 lt!2648529) ((_ map or) (content!15397 testedP!423) (content!15397 lt!2648395))))))

(declare-fun e!4502259 () List!72856)

(assert (=> d!2314798 (= lt!2648529 e!4502259)))

(declare-fun c!1395112 () Bool)

(assert (=> d!2314798 (= c!1395112 ((_ is Nil!72732) testedP!423))))

(assert (=> d!2314798 (= (++!17477 testedP!423 lt!2648395) lt!2648529)))

(declare-fun b!7560571 () Bool)

(assert (=> b!7560571 (= e!4502259 (Cons!72732 (h!79180 testedP!423) (++!17477 (t!387581 testedP!423) lt!2648395)))))

(declare-fun b!7560573 () Bool)

(assert (=> b!7560573 (= e!4502260 (or (not (= lt!2648395 Nil!72732)) (= lt!2648529 testedP!423)))))

(declare-fun b!7560572 () Bool)

(declare-fun res!3029340 () Bool)

(assert (=> b!7560572 (=> (not res!3029340) (not e!4502260))))

(assert (=> b!7560572 (= res!3029340 (= (size!42469 lt!2648529) (+ (size!42469 testedP!423) (size!42469 lt!2648395))))))

(declare-fun b!7560570 () Bool)

(assert (=> b!7560570 (= e!4502259 lt!2648395)))

(assert (= (and d!2314798 c!1395112) b!7560570))

(assert (= (and d!2314798 (not c!1395112)) b!7560571))

(assert (= (and d!2314798 res!3029339) b!7560572))

(assert (= (and b!7560572 res!3029340) b!7560573))

(declare-fun m!8123786 () Bool)

(assert (=> d!2314798 m!8123786))

(assert (=> d!2314798 m!8123374))

(assert (=> d!2314798 m!8123434))

(declare-fun m!8123788 () Bool)

(assert (=> b!7560571 m!8123788))

(declare-fun m!8123790 () Bool)

(assert (=> b!7560572 m!8123790))

(assert (=> b!7560572 m!8123344))

(assert (=> b!7560572 m!8123442))

(assert (=> b!7560123 d!2314798))

(declare-fun bm!693181 () Bool)

(declare-fun call!693187 () Bool)

(declare-fun call!693186 () Bool)

(assert (=> bm!693181 (= call!693187 call!693186)))

(declare-fun d!2314802 () Bool)

(declare-fun res!3029344 () Bool)

(declare-fun e!4502263 () Bool)

(assert (=> d!2314802 (=> res!3029344 e!4502263)))

(assert (=> d!2314802 (= res!3029344 ((_ is ElementMatch!19973) baseR!101))))

(assert (=> d!2314802 (= (validRegex!10401 baseR!101) e!4502263)))

(declare-fun bm!693182 () Bool)

(declare-fun call!693188 () Bool)

(declare-fun c!1395115 () Bool)

(assert (=> bm!693182 (= call!693188 (validRegex!10401 (ite c!1395115 (regTwo!40459 baseR!101) (regTwo!40458 baseR!101))))))

(declare-fun b!7560578 () Bool)

(declare-fun e!4502265 () Bool)

(declare-fun e!4502269 () Bool)

(assert (=> b!7560578 (= e!4502265 e!4502269)))

(declare-fun res!3029346 () Bool)

(assert (=> b!7560578 (= res!3029346 (not (nullable!8711 (reg!20302 baseR!101))))))

(assert (=> b!7560578 (=> (not res!3029346) (not e!4502269))))

(declare-fun b!7560579 () Bool)

(declare-fun e!4502268 () Bool)

(declare-fun e!4502264 () Bool)

(assert (=> b!7560579 (= e!4502268 e!4502264)))

(declare-fun res!3029343 () Bool)

(assert (=> b!7560579 (=> (not res!3029343) (not e!4502264))))

(assert (=> b!7560579 (= res!3029343 call!693187)))

(declare-fun b!7560580 () Bool)

(assert (=> b!7560580 (= e!4502263 e!4502265)))

(declare-fun c!1395114 () Bool)

(assert (=> b!7560580 (= c!1395114 ((_ is Star!19973) baseR!101))))

(declare-fun b!7560581 () Bool)

(declare-fun res!3029345 () Bool)

(declare-fun e!4502266 () Bool)

(assert (=> b!7560581 (=> (not res!3029345) (not e!4502266))))

(assert (=> b!7560581 (= res!3029345 call!693187)))

(declare-fun e!4502267 () Bool)

(assert (=> b!7560581 (= e!4502267 e!4502266)))

(declare-fun b!7560582 () Bool)

(assert (=> b!7560582 (= e!4502265 e!4502267)))

(assert (=> b!7560582 (= c!1395115 ((_ is Union!19973) baseR!101))))

(declare-fun b!7560583 () Bool)

(declare-fun res!3029347 () Bool)

(assert (=> b!7560583 (=> res!3029347 e!4502268)))

(assert (=> b!7560583 (= res!3029347 (not ((_ is Concat!28818) baseR!101)))))

(assert (=> b!7560583 (= e!4502267 e!4502268)))

(declare-fun b!7560584 () Bool)

(assert (=> b!7560584 (= e!4502269 call!693186)))

(declare-fun b!7560585 () Bool)

(assert (=> b!7560585 (= e!4502264 call!693188)))

(declare-fun bm!693183 () Bool)

(assert (=> bm!693183 (= call!693186 (validRegex!10401 (ite c!1395114 (reg!20302 baseR!101) (ite c!1395115 (regOne!40459 baseR!101) (regOne!40458 baseR!101)))))))

(declare-fun b!7560586 () Bool)

(assert (=> b!7560586 (= e!4502266 call!693188)))

(assert (= (and d!2314802 (not res!3029344)) b!7560580))

(assert (= (and b!7560580 c!1395114) b!7560578))

(assert (= (and b!7560580 (not c!1395114)) b!7560582))

(assert (= (and b!7560578 res!3029346) b!7560584))

(assert (= (and b!7560582 c!1395115) b!7560581))

(assert (= (and b!7560582 (not c!1395115)) b!7560583))

(assert (= (and b!7560581 res!3029345) b!7560586))

(assert (= (and b!7560583 (not res!3029347)) b!7560579))

(assert (= (and b!7560579 res!3029343) b!7560585))

(assert (= (or b!7560581 b!7560579) bm!693181))

(assert (= (or b!7560586 b!7560585) bm!693182))

(assert (= (or b!7560584 bm!693181) bm!693183))

(declare-fun m!8123804 () Bool)

(assert (=> bm!693182 m!8123804))

(declare-fun m!8123806 () Bool)

(assert (=> b!7560578 m!8123806))

(declare-fun m!8123808 () Bool)

(assert (=> bm!693183 m!8123808))

(assert (=> start!730484 d!2314802))

(declare-fun d!2314808 () Bool)

(declare-fun lt!2648532 () Int)

(assert (=> d!2314808 (>= lt!2648532 0)))

(declare-fun e!4502270 () Int)

(assert (=> d!2314808 (= lt!2648532 e!4502270)))

(declare-fun c!1395116 () Bool)

(assert (=> d!2314808 (= c!1395116 ((_ is Nil!72732) input!7874))))

(assert (=> d!2314808 (= (size!42469 input!7874) lt!2648532)))

(declare-fun b!7560587 () Bool)

(assert (=> b!7560587 (= e!4502270 0)))

(declare-fun b!7560588 () Bool)

(assert (=> b!7560588 (= e!4502270 (+ 1 (size!42469 (t!387581 input!7874))))))

(assert (= (and d!2314808 c!1395116) b!7560587))

(assert (= (and d!2314808 (not c!1395116)) b!7560588))

(declare-fun m!8123810 () Bool)

(assert (=> b!7560588 m!8123810))

(assert (=> b!7560118 d!2314808))

(declare-fun bm!693184 () Bool)

(declare-fun call!693190 () Bool)

(declare-fun call!693189 () Bool)

(assert (=> bm!693184 (= call!693190 call!693189)))

(declare-fun d!2314810 () Bool)

(declare-fun res!3029349 () Bool)

(declare-fun e!4502271 () Bool)

(assert (=> d!2314810 (=> res!3029349 e!4502271)))

(assert (=> d!2314810 (= res!3029349 ((_ is ElementMatch!19973) lt!2648412))))

(assert (=> d!2314810 (= (validRegex!10401 lt!2648412) e!4502271)))

(declare-fun bm!693185 () Bool)

(declare-fun call!693191 () Bool)

(declare-fun c!1395118 () Bool)

(assert (=> bm!693185 (= call!693191 (validRegex!10401 (ite c!1395118 (regTwo!40459 lt!2648412) (regTwo!40458 lt!2648412))))))

(declare-fun b!7560589 () Bool)

(declare-fun e!4502273 () Bool)

(declare-fun e!4502277 () Bool)

(assert (=> b!7560589 (= e!4502273 e!4502277)))

(declare-fun res!3029351 () Bool)

(assert (=> b!7560589 (= res!3029351 (not (nullable!8711 (reg!20302 lt!2648412))))))

(assert (=> b!7560589 (=> (not res!3029351) (not e!4502277))))

(declare-fun b!7560590 () Bool)

(declare-fun e!4502276 () Bool)

(declare-fun e!4502272 () Bool)

(assert (=> b!7560590 (= e!4502276 e!4502272)))

(declare-fun res!3029348 () Bool)

(assert (=> b!7560590 (=> (not res!3029348) (not e!4502272))))

(assert (=> b!7560590 (= res!3029348 call!693190)))

(declare-fun b!7560591 () Bool)

(assert (=> b!7560591 (= e!4502271 e!4502273)))

(declare-fun c!1395117 () Bool)

(assert (=> b!7560591 (= c!1395117 ((_ is Star!19973) lt!2648412))))

(declare-fun b!7560592 () Bool)

(declare-fun res!3029350 () Bool)

(declare-fun e!4502274 () Bool)

(assert (=> b!7560592 (=> (not res!3029350) (not e!4502274))))

(assert (=> b!7560592 (= res!3029350 call!693190)))

(declare-fun e!4502275 () Bool)

(assert (=> b!7560592 (= e!4502275 e!4502274)))

(declare-fun b!7560593 () Bool)

(assert (=> b!7560593 (= e!4502273 e!4502275)))

(assert (=> b!7560593 (= c!1395118 ((_ is Union!19973) lt!2648412))))

(declare-fun b!7560594 () Bool)

(declare-fun res!3029352 () Bool)

(assert (=> b!7560594 (=> res!3029352 e!4502276)))

(assert (=> b!7560594 (= res!3029352 (not ((_ is Concat!28818) lt!2648412)))))

(assert (=> b!7560594 (= e!4502275 e!4502276)))

(declare-fun b!7560595 () Bool)

(assert (=> b!7560595 (= e!4502277 call!693189)))

(declare-fun b!7560596 () Bool)

(assert (=> b!7560596 (= e!4502272 call!693191)))

(declare-fun bm!693186 () Bool)

(assert (=> bm!693186 (= call!693189 (validRegex!10401 (ite c!1395117 (reg!20302 lt!2648412) (ite c!1395118 (regOne!40459 lt!2648412) (regOne!40458 lt!2648412)))))))

(declare-fun b!7560597 () Bool)

(assert (=> b!7560597 (= e!4502274 call!693191)))

(assert (= (and d!2314810 (not res!3029349)) b!7560591))

(assert (= (and b!7560591 c!1395117) b!7560589))

(assert (= (and b!7560591 (not c!1395117)) b!7560593))

(assert (= (and b!7560589 res!3029351) b!7560595))

(assert (= (and b!7560593 c!1395118) b!7560592))

(assert (= (and b!7560593 (not c!1395118)) b!7560594))

(assert (= (and b!7560592 res!3029350) b!7560597))

(assert (= (and b!7560594 (not res!3029352)) b!7560590))

(assert (= (and b!7560590 res!3029348) b!7560596))

(assert (= (or b!7560592 b!7560590) bm!693184))

(assert (= (or b!7560597 b!7560596) bm!693185))

(assert (= (or b!7560595 bm!693184) bm!693186))

(declare-fun m!8123812 () Bool)

(assert (=> bm!693185 m!8123812))

(declare-fun m!8123814 () Bool)

(assert (=> b!7560589 m!8123814))

(declare-fun m!8123816 () Bool)

(assert (=> bm!693186 m!8123816))

(assert (=> b!7560141 d!2314810))

(declare-fun d!2314816 () Bool)

(assert (=> d!2314816 (= (head!15551 lt!2648395) (h!79180 lt!2648395))))

(assert (=> b!7560131 d!2314816))

(declare-fun d!2314818 () Bool)

(assert (=> d!2314818 (= lt!2648398 lt!2648400)))

(declare-fun lt!2648534 () Unit!166880)

(assert (=> d!2314818 (= lt!2648534 (choose!58472 testedP!423 lt!2648398 testedP!423 lt!2648400 input!7874))))

(assert (=> d!2314818 (isPrefix!6179 testedP!423 input!7874)))

(assert (=> d!2314818 (= (lemmaSamePrefixThenSameSuffix!2879 testedP!423 lt!2648398 testedP!423 lt!2648400 input!7874) lt!2648534)))

(declare-fun bs!1940352 () Bool)

(assert (= bs!1940352 d!2314818))

(declare-fun m!8123818 () Bool)

(assert (=> bs!1940352 m!8123818))

(assert (=> bs!1940352 m!8123308))

(assert (=> b!7560131 d!2314818))

(declare-fun e!4502290 () Bool)

(assert (=> b!7560142 (= tp!2201685 e!4502290)))

(declare-fun b!7560626 () Bool)

(assert (=> b!7560626 (= e!4502290 tp_is_empty!50301)))

(declare-fun b!7560628 () Bool)

(declare-fun tp!2201700 () Bool)

(assert (=> b!7560628 (= e!4502290 tp!2201700)))

(declare-fun b!7560629 () Bool)

(declare-fun tp!2201701 () Bool)

(declare-fun tp!2201702 () Bool)

(assert (=> b!7560629 (= e!4502290 (and tp!2201701 tp!2201702))))

(declare-fun b!7560627 () Bool)

(declare-fun tp!2201704 () Bool)

(declare-fun tp!2201703 () Bool)

(assert (=> b!7560627 (= e!4502290 (and tp!2201704 tp!2201703))))

(assert (= (and b!7560142 ((_ is ElementMatch!19973) (regOne!40459 baseR!101))) b!7560626))

(assert (= (and b!7560142 ((_ is Concat!28818) (regOne!40459 baseR!101))) b!7560627))

(assert (= (and b!7560142 ((_ is Star!19973) (regOne!40459 baseR!101))) b!7560628))

(assert (= (and b!7560142 ((_ is Union!19973) (regOne!40459 baseR!101))) b!7560629))

(declare-fun e!4502292 () Bool)

(assert (=> b!7560142 (= tp!2201688 e!4502292)))

(declare-fun b!7560632 () Bool)

(assert (=> b!7560632 (= e!4502292 tp_is_empty!50301)))

(declare-fun b!7560634 () Bool)

(declare-fun tp!2201705 () Bool)

(assert (=> b!7560634 (= e!4502292 tp!2201705)))

(declare-fun b!7560635 () Bool)

(declare-fun tp!2201706 () Bool)

(declare-fun tp!2201707 () Bool)

(assert (=> b!7560635 (= e!4502292 (and tp!2201706 tp!2201707))))

(declare-fun b!7560633 () Bool)

(declare-fun tp!2201709 () Bool)

(declare-fun tp!2201708 () Bool)

(assert (=> b!7560633 (= e!4502292 (and tp!2201709 tp!2201708))))

(assert (= (and b!7560142 ((_ is ElementMatch!19973) (regTwo!40459 baseR!101))) b!7560632))

(assert (= (and b!7560142 ((_ is Concat!28818) (regTwo!40459 baseR!101))) b!7560633))

(assert (= (and b!7560142 ((_ is Star!19973) (regTwo!40459 baseR!101))) b!7560634))

(assert (= (and b!7560142 ((_ is Union!19973) (regTwo!40459 baseR!101))) b!7560635))

(declare-fun e!4502296 () Bool)

(assert (=> b!7560143 (= tp!2201689 e!4502296)))

(declare-fun b!7560640 () Bool)

(assert (=> b!7560640 (= e!4502296 tp_is_empty!50301)))

(declare-fun b!7560642 () Bool)

(declare-fun tp!2201710 () Bool)

(assert (=> b!7560642 (= e!4502296 tp!2201710)))

(declare-fun b!7560643 () Bool)

(declare-fun tp!2201711 () Bool)

(declare-fun tp!2201712 () Bool)

(assert (=> b!7560643 (= e!4502296 (and tp!2201711 tp!2201712))))

(declare-fun b!7560641 () Bool)

(declare-fun tp!2201714 () Bool)

(declare-fun tp!2201713 () Bool)

(assert (=> b!7560641 (= e!4502296 (and tp!2201714 tp!2201713))))

(assert (= (and b!7560143 ((_ is ElementMatch!19973) (reg!20302 baseR!101))) b!7560640))

(assert (= (and b!7560143 ((_ is Concat!28818) (reg!20302 baseR!101))) b!7560641))

(assert (= (and b!7560143 ((_ is Star!19973) (reg!20302 baseR!101))) b!7560642))

(assert (= (and b!7560143 ((_ is Union!19973) (reg!20302 baseR!101))) b!7560643))

(declare-fun e!4502297 () Bool)

(assert (=> b!7560128 (= tp!2201678 e!4502297)))

(declare-fun b!7560644 () Bool)

(assert (=> b!7560644 (= e!4502297 tp_is_empty!50301)))

(declare-fun b!7560646 () Bool)

(declare-fun tp!2201715 () Bool)

(assert (=> b!7560646 (= e!4502297 tp!2201715)))

(declare-fun b!7560647 () Bool)

(declare-fun tp!2201716 () Bool)

(declare-fun tp!2201717 () Bool)

(assert (=> b!7560647 (= e!4502297 (and tp!2201716 tp!2201717))))

(declare-fun b!7560645 () Bool)

(declare-fun tp!2201719 () Bool)

(declare-fun tp!2201718 () Bool)

(assert (=> b!7560645 (= e!4502297 (and tp!2201719 tp!2201718))))

(assert (= (and b!7560128 ((_ is ElementMatch!19973) (regOne!40459 r!24333))) b!7560644))

(assert (= (and b!7560128 ((_ is Concat!28818) (regOne!40459 r!24333))) b!7560645))

(assert (= (and b!7560128 ((_ is Star!19973) (regOne!40459 r!24333))) b!7560646))

(assert (= (and b!7560128 ((_ is Union!19973) (regOne!40459 r!24333))) b!7560647))

(declare-fun e!4502298 () Bool)

(assert (=> b!7560128 (= tp!2201681 e!4502298)))

(declare-fun b!7560648 () Bool)

(assert (=> b!7560648 (= e!4502298 tp_is_empty!50301)))

(declare-fun b!7560650 () Bool)

(declare-fun tp!2201720 () Bool)

(assert (=> b!7560650 (= e!4502298 tp!2201720)))

(declare-fun b!7560651 () Bool)

(declare-fun tp!2201721 () Bool)

(declare-fun tp!2201722 () Bool)

(assert (=> b!7560651 (= e!4502298 (and tp!2201721 tp!2201722))))

(declare-fun b!7560649 () Bool)

(declare-fun tp!2201724 () Bool)

(declare-fun tp!2201723 () Bool)

(assert (=> b!7560649 (= e!4502298 (and tp!2201724 tp!2201723))))

(assert (= (and b!7560128 ((_ is ElementMatch!19973) (regTwo!40459 r!24333))) b!7560648))

(assert (= (and b!7560128 ((_ is Concat!28818) (regTwo!40459 r!24333))) b!7560649))

(assert (= (and b!7560128 ((_ is Star!19973) (regTwo!40459 r!24333))) b!7560650))

(assert (= (and b!7560128 ((_ is Union!19973) (regTwo!40459 r!24333))) b!7560651))

(declare-fun b!7560656 () Bool)

(declare-fun e!4502301 () Bool)

(declare-fun tp!2201727 () Bool)

(assert (=> b!7560656 (= e!4502301 (and tp_is_empty!50301 tp!2201727))))

(assert (=> b!7560139 (= tp!2201686 e!4502301)))

(assert (= (and b!7560139 ((_ is Cons!72732) (t!387581 testedP!423))) b!7560656))

(declare-fun b!7560657 () Bool)

(declare-fun e!4502302 () Bool)

(declare-fun tp!2201728 () Bool)

(assert (=> b!7560657 (= e!4502302 (and tp_is_empty!50301 tp!2201728))))

(assert (=> b!7560129 (= tp!2201684 e!4502302)))

(assert (= (and b!7560129 ((_ is Cons!72732) (t!387581 input!7874))) b!7560657))

(declare-fun e!4502303 () Bool)

(assert (=> b!7560145 (= tp!2201687 e!4502303)))

(declare-fun b!7560658 () Bool)

(assert (=> b!7560658 (= e!4502303 tp_is_empty!50301)))

(declare-fun b!7560660 () Bool)

(declare-fun tp!2201729 () Bool)

(assert (=> b!7560660 (= e!4502303 tp!2201729)))

(declare-fun b!7560661 () Bool)

(declare-fun tp!2201730 () Bool)

(declare-fun tp!2201731 () Bool)

(assert (=> b!7560661 (= e!4502303 (and tp!2201730 tp!2201731))))

(declare-fun b!7560659 () Bool)

(declare-fun tp!2201733 () Bool)

(declare-fun tp!2201732 () Bool)

(assert (=> b!7560659 (= e!4502303 (and tp!2201733 tp!2201732))))

(assert (= (and b!7560145 ((_ is ElementMatch!19973) (regOne!40458 r!24333))) b!7560658))

(assert (= (and b!7560145 ((_ is Concat!28818) (regOne!40458 r!24333))) b!7560659))

(assert (= (and b!7560145 ((_ is Star!19973) (regOne!40458 r!24333))) b!7560660))

(assert (= (and b!7560145 ((_ is Union!19973) (regOne!40458 r!24333))) b!7560661))

(declare-fun e!4502304 () Bool)

(assert (=> b!7560145 (= tp!2201677 e!4502304)))

(declare-fun b!7560662 () Bool)

(assert (=> b!7560662 (= e!4502304 tp_is_empty!50301)))

(declare-fun b!7560664 () Bool)

(declare-fun tp!2201734 () Bool)

(assert (=> b!7560664 (= e!4502304 tp!2201734)))

(declare-fun b!7560665 () Bool)

(declare-fun tp!2201735 () Bool)

(declare-fun tp!2201736 () Bool)

(assert (=> b!7560665 (= e!4502304 (and tp!2201735 tp!2201736))))

(declare-fun b!7560663 () Bool)

(declare-fun tp!2201738 () Bool)

(declare-fun tp!2201737 () Bool)

(assert (=> b!7560663 (= e!4502304 (and tp!2201738 tp!2201737))))

(assert (= (and b!7560145 ((_ is ElementMatch!19973) (regTwo!40458 r!24333))) b!7560662))

(assert (= (and b!7560145 ((_ is Concat!28818) (regTwo!40458 r!24333))) b!7560663))

(assert (= (and b!7560145 ((_ is Star!19973) (regTwo!40458 r!24333))) b!7560664))

(assert (= (and b!7560145 ((_ is Union!19973) (regTwo!40458 r!24333))) b!7560665))

(declare-fun b!7560666 () Bool)

(declare-fun e!4502305 () Bool)

(declare-fun tp!2201739 () Bool)

(assert (=> b!7560666 (= e!4502305 (and tp_is_empty!50301 tp!2201739))))

(assert (=> b!7560140 (= tp!2201680 e!4502305)))

(assert (= (and b!7560140 ((_ is Cons!72732) (t!387581 knownP!30))) b!7560666))

(declare-fun e!4502306 () Bool)

(assert (=> b!7560119 (= tp!2201679 e!4502306)))

(declare-fun b!7560667 () Bool)

(assert (=> b!7560667 (= e!4502306 tp_is_empty!50301)))

(declare-fun b!7560669 () Bool)

(declare-fun tp!2201740 () Bool)

(assert (=> b!7560669 (= e!4502306 tp!2201740)))

(declare-fun b!7560670 () Bool)

(declare-fun tp!2201741 () Bool)

(declare-fun tp!2201742 () Bool)

(assert (=> b!7560670 (= e!4502306 (and tp!2201741 tp!2201742))))

(declare-fun b!7560668 () Bool)

(declare-fun tp!2201744 () Bool)

(declare-fun tp!2201743 () Bool)

(assert (=> b!7560668 (= e!4502306 (and tp!2201744 tp!2201743))))

(assert (= (and b!7560119 ((_ is ElementMatch!19973) (regOne!40458 baseR!101))) b!7560667))

(assert (= (and b!7560119 ((_ is Concat!28818) (regOne!40458 baseR!101))) b!7560668))

(assert (= (and b!7560119 ((_ is Star!19973) (regOne!40458 baseR!101))) b!7560669))

(assert (= (and b!7560119 ((_ is Union!19973) (regOne!40458 baseR!101))) b!7560670))

(declare-fun e!4502307 () Bool)

(assert (=> b!7560119 (= tp!2201682 e!4502307)))

(declare-fun b!7560671 () Bool)

(assert (=> b!7560671 (= e!4502307 tp_is_empty!50301)))

(declare-fun b!7560673 () Bool)

(declare-fun tp!2201745 () Bool)

(assert (=> b!7560673 (= e!4502307 tp!2201745)))

(declare-fun b!7560674 () Bool)

(declare-fun tp!2201746 () Bool)

(declare-fun tp!2201747 () Bool)

(assert (=> b!7560674 (= e!4502307 (and tp!2201746 tp!2201747))))

(declare-fun b!7560672 () Bool)

(declare-fun tp!2201749 () Bool)

(declare-fun tp!2201748 () Bool)

(assert (=> b!7560672 (= e!4502307 (and tp!2201749 tp!2201748))))

(assert (= (and b!7560119 ((_ is ElementMatch!19973) (regTwo!40458 baseR!101))) b!7560671))

(assert (= (and b!7560119 ((_ is Concat!28818) (regTwo!40458 baseR!101))) b!7560672))

(assert (= (and b!7560119 ((_ is Star!19973) (regTwo!40458 baseR!101))) b!7560673))

(assert (= (and b!7560119 ((_ is Union!19973) (regTwo!40458 baseR!101))) b!7560674))

(declare-fun e!4502308 () Bool)

(assert (=> b!7560120 (= tp!2201683 e!4502308)))

(declare-fun b!7560675 () Bool)

(assert (=> b!7560675 (= e!4502308 tp_is_empty!50301)))

(declare-fun b!7560677 () Bool)

(declare-fun tp!2201750 () Bool)

(assert (=> b!7560677 (= e!4502308 tp!2201750)))

(declare-fun b!7560678 () Bool)

(declare-fun tp!2201751 () Bool)

(declare-fun tp!2201752 () Bool)

(assert (=> b!7560678 (= e!4502308 (and tp!2201751 tp!2201752))))

(declare-fun b!7560676 () Bool)

(declare-fun tp!2201754 () Bool)

(declare-fun tp!2201753 () Bool)

(assert (=> b!7560676 (= e!4502308 (and tp!2201754 tp!2201753))))

(assert (= (and b!7560120 ((_ is ElementMatch!19973) (reg!20302 r!24333))) b!7560675))

(assert (= (and b!7560120 ((_ is Concat!28818) (reg!20302 r!24333))) b!7560676))

(assert (= (and b!7560120 ((_ is Star!19973) (reg!20302 r!24333))) b!7560677))

(assert (= (and b!7560120 ((_ is Union!19973) (reg!20302 r!24333))) b!7560678))

(check-sat (not d!2314696) (not b!7560263) (not d!2314752) (not b!7560383) (not b!7560415) (not b!7560495) (not b!7560183) (not d!2314770) (not b!7560193) (not b!7560191) (not b!7560299) (not b!7560627) (not b!7560578) (not b!7560256) (not d!2314686) (not b!7560678) (not bm!693185) (not b!7560677) (not b!7560260) (not b!7560401) (not b!7560402) (not d!2314798) (not bm!693149) (not b!7560564) (not b!7560670) (not b!7560391) (not b!7560173) (not d!2314784) (not b!7560184) (not b!7560300) (not d!2314708) (not b!7560571) (not b!7560369) (not b!7560647) (not b!7560668) (not b!7560659) (not b!7560646) (not b!7560656) (not b!7560588) (not bm!693150) (not d!2314676) (not d!2314780) (not b!7560589) (not b!7560312) (not d!2314664) (not bm!693148) (not b!7560676) (not b!7560664) (not b!7560199) (not d!2314736) (not b!7560643) (not d!2314818) (not b!7560499) (not b!7560178) (not b!7560563) (not b!7560307) (not b!7560410) (not b!7560666) (not b!7560409) (not b!7560635) (not b!7560649) (not b!7560628) (not bm!693173) (not b!7560493) (not bm!693183) (not d!2314782) (not bm!693182) (not b!7560507) (not b!7560196) (not b!7560261) tp_is_empty!50301 (not b!7560672) (not b!7560572) (not d!2314728) (not b!7560177) (not d!2314756) (not b!7560498) (not b!7560657) (not d!2314704) (not d!2314672) (not b!7560200) (not b!7560645) (not d!2314688) (not d!2314692) (not d!2314776) (not b!7560634) (not b!7560382) (not b!7560629) (not d!2314668) (not b!7560390) (not b!7560174) (not d!2314778) (not bm!693186) (not b!7560650) (not b!7560265) (not b!7560348) (not b!7560301) (not b!7560663) (not b!7560380) (not b!7560400) (not d!2314772) (not d!2314792) (not b!7560264) (not b!7560311) (not b!7560408) (not b!7560642) (not b!7560673) (not b!7560651) (not d!2314684) (not d!2314750) (not b!7560665) (not d!2314670) (not b!7560488) (not b!7560392) (not bm!693136) (not b!7560308) (not b!7560641) (not b!7560669) (not b!7560313) (not b!7560661) (not b!7560660) (not b!7560195) (not b!7560674) (not b!7560633) (not b!7560533) (not b!7560280) (not b!7560379) (not b!7560506) (not b!7560375) (not d!2314682) (not b!7560384) (not bm!693172))
(check-sat)
