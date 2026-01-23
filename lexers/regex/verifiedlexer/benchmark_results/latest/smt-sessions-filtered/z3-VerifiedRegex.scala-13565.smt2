; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729696 () Bool)

(assert start!729696)

(declare-fun b!7545570 () Bool)

(declare-fun e!4495297 () Bool)

(declare-fun e!4495287 () Bool)

(assert (=> b!7545570 (= e!4495297 e!4495287)))

(declare-fun res!3024271 () Bool)

(assert (=> b!7545570 (=> res!3024271 e!4495287)))

(declare-datatypes ((C!40176 0))(
  ( (C!40177 (val!30528 Int)) )
))
(declare-datatypes ((List!72808 0))(
  ( (Nil!72684) (Cons!72684 (h!79132 C!40176) (t!387525 List!72808)) )
))
(declare-fun lt!2645297 () List!72808)

(declare-fun knownP!30 () List!72808)

(assert (=> b!7545570 (= res!3024271 (not (= lt!2645297 knownP!30)))))

(declare-fun lt!2645293 () List!72808)

(declare-fun lt!2645284 () List!72808)

(declare-fun ++!17442 (List!72808 List!72808) List!72808)

(assert (=> b!7545570 (= lt!2645297 (++!17442 lt!2645293 lt!2645284))))

(declare-fun b!7545571 () Bool)

(declare-fun e!4495289 () Bool)

(declare-fun tp_is_empty!50205 () Bool)

(assert (=> b!7545571 (= e!4495289 tp_is_empty!50205)))

(declare-fun b!7545572 () Bool)

(declare-fun res!3024277 () Bool)

(declare-fun e!4495300 () Bool)

(assert (=> b!7545572 (=> (not res!3024277) (not e!4495300))))

(declare-datatypes ((Regex!19925 0))(
  ( (ElementMatch!19925 (c!1392912 C!40176)) (Concat!28770 (regOne!40362 Regex!19925) (regTwo!40362 Regex!19925)) (EmptyExpr!19925) (Star!19925 (reg!20254 Regex!19925)) (EmptyLang!19925) (Union!19925 (regOne!40363 Regex!19925) (regTwo!40363 Regex!19925)) )
))
(declare-fun baseR!101 () Regex!19925)

(declare-fun matchR!9527 (Regex!19925 List!72808) Bool)

(assert (=> b!7545572 (= res!3024277 (matchR!9527 baseR!101 knownP!30))))

(declare-fun b!7545573 () Bool)

(declare-fun tp!2194860 () Bool)

(assert (=> b!7545573 (= e!4495289 tp!2194860)))

(declare-fun b!7545574 () Bool)

(declare-fun e!4495285 () Bool)

(declare-fun e!4495291 () Bool)

(assert (=> b!7545574 (= e!4495285 e!4495291)))

(declare-fun res!3024269 () Bool)

(assert (=> b!7545574 (=> res!3024269 e!4495291)))

(declare-fun input!7874 () List!72808)

(declare-fun lt!2645288 () Int)

(declare-fun lt!2645294 () List!72808)

(declare-fun lt!2645286 () Int)

(declare-fun testedP!423 () List!72808)

(declare-fun r!24333 () Regex!19925)

(declare-fun lt!2645296 () Int)

(declare-fun size!42421 (List!72808) Int)

(declare-datatypes ((tuple2!68852 0))(
  ( (tuple2!68853 (_1!37729 List!72808) (_2!37729 List!72808)) )
))
(declare-fun findLongestMatchInner!2134 (Regex!19925 List!72808 Int List!72808 List!72808 Int) tuple2!68852)

(assert (=> b!7545574 (= res!3024269 (< (size!42421 (_1!37729 (findLongestMatchInner!2134 r!24333 testedP!423 lt!2645288 lt!2645294 input!7874 lt!2645296))) lt!2645286))))

(declare-fun lt!2645290 () Regex!19925)

(declare-fun getSuffix!3611 (List!72808 List!72808) List!72808)

(assert (=> b!7545574 (>= (size!42421 (_1!37729 (findLongestMatchInner!2134 lt!2645290 lt!2645293 (size!42421 lt!2645293) (getSuffix!3611 input!7874 lt!2645293) input!7874 lt!2645296))) lt!2645286)))

(declare-datatypes ((Unit!166788 0))(
  ( (Unit!166789) )
))
(declare-fun lt!2645302 () Unit!166788)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!25 (Regex!19925 Regex!19925 List!72808 List!72808 List!72808) Unit!166788)

(assert (=> b!7545574 (= lt!2645302 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!25 baseR!101 lt!2645290 input!7874 lt!2645293 knownP!30))))

(declare-fun b!7545575 () Bool)

(assert (=> b!7545575 (= e!4495291 (>= lt!2645296 lt!2645288))))

(declare-fun b!7545576 () Bool)

(declare-fun e!4495286 () Bool)

(declare-fun tp!2194865 () Bool)

(assert (=> b!7545576 (= e!4495286 tp!2194865)))

(declare-fun b!7545577 () Bool)

(declare-fun e!4495298 () Bool)

(declare-fun tp!2194859 () Bool)

(assert (=> b!7545577 (= e!4495298 (and tp_is_empty!50205 tp!2194859))))

(declare-fun b!7545578 () Bool)

(declare-fun e!4495296 () Bool)

(declare-fun e!4495293 () Bool)

(assert (=> b!7545578 (= e!4495296 e!4495293)))

(declare-fun res!3024266 () Bool)

(assert (=> b!7545578 (=> res!3024266 e!4495293)))

(assert (=> b!7545578 (= res!3024266 (>= lt!2645288 lt!2645296))))

(assert (=> b!7545578 (= lt!2645296 (size!42421 input!7874))))

(declare-fun b!7545579 () Bool)

(declare-fun e!4495301 () Bool)

(assert (=> b!7545579 (= e!4495293 e!4495301)))

(declare-fun res!3024280 () Bool)

(assert (=> b!7545579 (=> res!3024280 e!4495301)))

(declare-fun lt!2645277 () List!72808)

(assert (=> b!7545579 (= res!3024280 (not (= (++!17442 knownP!30 lt!2645277) input!7874)))))

(assert (=> b!7545579 (= lt!2645277 (getSuffix!3611 input!7874 knownP!30))))

(assert (=> b!7545579 (= lt!2645284 (getSuffix!3611 knownP!30 lt!2645293))))

(declare-fun isPrefix!6131 (List!72808 List!72808) Bool)

(assert (=> b!7545579 (isPrefix!6131 lt!2645293 knownP!30)))

(declare-fun lt!2645279 () Unit!166788)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!881 (List!72808 List!72808 List!72808) Unit!166788)

(assert (=> b!7545579 (= lt!2645279 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!881 knownP!30 lt!2645293 input!7874))))

(declare-fun lt!2645287 () Regex!19925)

(assert (=> b!7545579 (= lt!2645287 lt!2645290)))

(declare-fun lt!2645298 () C!40176)

(declare-fun derivativeStep!5715 (Regex!19925 C!40176) Regex!19925)

(assert (=> b!7545579 (= lt!2645290 (derivativeStep!5715 r!24333 lt!2645298))))

(declare-fun derivative!457 (Regex!19925 List!72808) Regex!19925)

(assert (=> b!7545579 (= lt!2645287 (derivative!457 baseR!101 lt!2645293))))

(declare-fun lt!2645303 () Unit!166788)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!163 (Regex!19925 Regex!19925 List!72808 C!40176) Unit!166788)

(assert (=> b!7545579 (= lt!2645303 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!163 baseR!101 r!24333 testedP!423 lt!2645298))))

(assert (=> b!7545579 (isPrefix!6131 lt!2645293 input!7874)))

(declare-fun lt!2645300 () Unit!166788)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1196 (List!72808 List!72808) Unit!166788)

(assert (=> b!7545579 (= lt!2645300 (lemmaAddHeadSuffixToPrefixStillPrefix!1196 testedP!423 input!7874))))

(declare-fun lt!2645289 () List!72808)

(assert (=> b!7545579 (= lt!2645293 (++!17442 testedP!423 lt!2645289))))

(assert (=> b!7545579 (= lt!2645289 (Cons!72684 lt!2645298 Nil!72684))))

(declare-fun head!15515 (List!72808) C!40176)

(assert (=> b!7545579 (= lt!2645298 (head!15515 lt!2645294))))

(assert (=> b!7545579 (= lt!2645294 (getSuffix!3611 input!7874 testedP!423))))

(declare-fun b!7545580 () Bool)

(assert (=> b!7545580 (= e!4495286 tp_is_empty!50205)))

(declare-fun b!7545581 () Bool)

(declare-fun e!4495299 () Bool)

(assert (=> b!7545581 (= e!4495301 e!4495299)))

(declare-fun res!3024278 () Bool)

(assert (=> b!7545581 (=> res!3024278 e!4495299)))

(declare-fun lt!2645301 () List!72808)

(assert (=> b!7545581 (= res!3024278 (not (= lt!2645301 input!7874)))))

(declare-fun lt!2645304 () List!72808)

(assert (=> b!7545581 (= lt!2645301 (++!17442 lt!2645304 lt!2645277))))

(declare-fun lt!2645278 () List!72808)

(assert (=> b!7545581 (= lt!2645304 (++!17442 testedP!423 lt!2645278))))

(declare-fun b!7545582 () Bool)

(declare-fun e!4495290 () Bool)

(declare-fun tp!2194863 () Bool)

(assert (=> b!7545582 (= e!4495290 (and tp_is_empty!50205 tp!2194863))))

(declare-fun b!7545583 () Bool)

(declare-fun res!3024272 () Bool)

(declare-fun e!4495292 () Bool)

(assert (=> b!7545583 (=> (not res!3024272) (not e!4495292))))

(declare-fun validRegex!10353 (Regex!19925) Bool)

(assert (=> b!7545583 (= res!3024272 (validRegex!10353 r!24333))))

(declare-fun b!7545584 () Bool)

(declare-fun res!3024275 () Bool)

(assert (=> b!7545584 (=> res!3024275 e!4495296)))

(assert (=> b!7545584 (= res!3024275 (= lt!2645288 lt!2645286))))

(declare-fun b!7545585 () Bool)

(declare-fun res!3024267 () Bool)

(assert (=> b!7545585 (=> res!3024267 e!4495296)))

(declare-fun lostCause!1717 (Regex!19925) Bool)

(assert (=> b!7545585 (= res!3024267 (lostCause!1717 r!24333))))

(declare-fun b!7545586 () Bool)

(declare-fun res!3024262 () Bool)

(assert (=> b!7545586 (=> (not res!3024262) (not e!4495292))))

(assert (=> b!7545586 (= res!3024262 (isPrefix!6131 knownP!30 input!7874))))

(declare-fun b!7545587 () Bool)

(declare-fun res!3024264 () Bool)

(assert (=> b!7545587 (=> res!3024264 e!4495299)))

(assert (=> b!7545587 (= res!3024264 (not (= (++!17442 testedP!423 lt!2645294) input!7874)))))

(declare-fun b!7545588 () Bool)

(declare-fun res!3024263 () Bool)

(assert (=> b!7545588 (=> res!3024263 e!4495296)))

(assert (=> b!7545588 (= res!3024263 (not (= (derivative!457 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7545589 () Bool)

(assert (=> b!7545589 (= e!4495292 e!4495300)))

(declare-fun res!3024270 () Bool)

(assert (=> b!7545589 (=> (not res!3024270) (not e!4495300))))

(assert (=> b!7545589 (= res!3024270 (>= lt!2645286 lt!2645288))))

(assert (=> b!7545589 (= lt!2645288 (size!42421 testedP!423))))

(assert (=> b!7545589 (= lt!2645286 (size!42421 knownP!30))))

(declare-fun b!7545590 () Bool)

(declare-fun e!4495295 () Bool)

(assert (=> b!7545590 (= e!4495299 e!4495295)))

(declare-fun res!3024276 () Bool)

(assert (=> b!7545590 (=> res!3024276 e!4495295)))

(declare-fun lt!2645283 () List!72808)

(assert (=> b!7545590 (= res!3024276 (not (= lt!2645283 input!7874)))))

(assert (=> b!7545590 (= lt!2645301 lt!2645283)))

(declare-fun lt!2645285 () List!72808)

(assert (=> b!7545590 (= lt!2645283 (++!17442 testedP!423 lt!2645285))))

(assert (=> b!7545590 (= lt!2645285 (++!17442 lt!2645278 lt!2645277))))

(declare-fun lt!2645292 () Unit!166788)

(declare-fun lemmaConcatAssociativity!3090 (List!72808 List!72808 List!72808) Unit!166788)

(assert (=> b!7545590 (= lt!2645292 (lemmaConcatAssociativity!3090 testedP!423 lt!2645278 lt!2645277))))

(declare-fun b!7545591 () Bool)

(declare-fun res!3024261 () Bool)

(assert (=> b!7545591 (=> (not res!3024261) (not e!4495292))))

(assert (=> b!7545591 (= res!3024261 (isPrefix!6131 testedP!423 input!7874))))

(declare-fun b!7545592 () Bool)

(declare-fun res!3024260 () Bool)

(assert (=> b!7545592 (=> res!3024260 e!4495297)))

(assert (=> b!7545592 (= res!3024260 (not (= lt!2645304 knownP!30)))))

(declare-fun b!7545593 () Bool)

(declare-fun tp!2194864 () Bool)

(declare-fun tp!2194866 () Bool)

(assert (=> b!7545593 (= e!4495286 (and tp!2194864 tp!2194866))))

(declare-fun b!7545594 () Bool)

(assert (=> b!7545594 (= e!4495287 e!4495285)))

(declare-fun res!3024265 () Bool)

(assert (=> b!7545594 (=> res!3024265 e!4495285)))

(declare-fun lt!2645282 () List!72808)

(assert (=> b!7545594 (= res!3024265 (not (= lt!2645282 lt!2645284)))))

(declare-fun lt!2645280 () List!72808)

(assert (=> b!7545594 (= lt!2645280 lt!2645278)))

(declare-fun lt!2645299 () Unit!166788)

(declare-fun lemmaSamePrefixThenSameSuffix!2859 (List!72808 List!72808 List!72808 List!72808 List!72808) Unit!166788)

(assert (=> b!7545594 (= lt!2645299 (lemmaSamePrefixThenSameSuffix!2859 testedP!423 lt!2645280 testedP!423 lt!2645278 knownP!30))))

(assert (=> b!7545594 (= lt!2645297 (++!17442 testedP!423 lt!2645280))))

(assert (=> b!7545594 (= lt!2645280 (++!17442 lt!2645289 lt!2645284))))

(declare-fun lt!2645291 () Unit!166788)

(assert (=> b!7545594 (= lt!2645291 (lemmaConcatAssociativity!3090 testedP!423 lt!2645289 lt!2645284))))

(declare-fun b!7545595 () Bool)

(declare-fun tp!2194858 () Bool)

(declare-fun tp!2194867 () Bool)

(assert (=> b!7545595 (= e!4495289 (and tp!2194858 tp!2194867))))

(declare-fun b!7545596 () Bool)

(declare-fun e!4495288 () Bool)

(assert (=> b!7545596 (= e!4495288 e!4495297)))

(declare-fun res!3024279 () Bool)

(assert (=> b!7545596 (=> res!3024279 e!4495297)))

(declare-fun $colon$colon!3385 (List!72808 C!40176) List!72808)

(assert (=> b!7545596 (= res!3024279 (not (= lt!2645278 ($colon$colon!3385 lt!2645282 lt!2645298))))))

(declare-fun tail!15061 (List!72808) List!72808)

(assert (=> b!7545596 (= lt!2645282 (tail!15061 lt!2645278))))

(declare-fun b!7545597 () Bool)

(declare-fun e!4495294 () Bool)

(declare-fun tp!2194869 () Bool)

(assert (=> b!7545597 (= e!4495294 (and tp_is_empty!50205 tp!2194869))))

(declare-fun b!7545598 () Bool)

(assert (=> b!7545598 (= e!4495295 e!4495288)))

(declare-fun res!3024273 () Bool)

(assert (=> b!7545598 (=> res!3024273 e!4495288)))

(assert (=> b!7545598 (= res!3024273 (not (= (head!15515 lt!2645278) lt!2645298)))))

(assert (=> b!7545598 (= lt!2645285 lt!2645294)))

(declare-fun lt!2645295 () Unit!166788)

(assert (=> b!7545598 (= lt!2645295 (lemmaSamePrefixThenSameSuffix!2859 testedP!423 lt!2645285 testedP!423 lt!2645294 input!7874))))

(declare-fun res!3024274 () Bool)

(assert (=> start!729696 (=> (not res!3024274) (not e!4495292))))

(assert (=> start!729696 (= res!3024274 (validRegex!10353 baseR!101))))

(assert (=> start!729696 e!4495292))

(assert (=> start!729696 e!4495289))

(assert (=> start!729696 e!4495294))

(assert (=> start!729696 e!4495290))

(assert (=> start!729696 e!4495298))

(assert (=> start!729696 e!4495286))

(declare-fun b!7545599 () Bool)

(declare-fun tp!2194868 () Bool)

(declare-fun tp!2194862 () Bool)

(assert (=> b!7545599 (= e!4495286 (and tp!2194868 tp!2194862))))

(declare-fun b!7545600 () Bool)

(assert (=> b!7545600 (= e!4495300 (not e!4495296))))

(declare-fun res!3024268 () Bool)

(assert (=> b!7545600 (=> res!3024268 e!4495296)))

(assert (=> b!7545600 (= res!3024268 (not (matchR!9527 r!24333 lt!2645278)))))

(assert (=> b!7545600 (= lt!2645278 (getSuffix!3611 knownP!30 testedP!423))))

(assert (=> b!7545600 (isPrefix!6131 testedP!423 knownP!30)))

(declare-fun lt!2645281 () Unit!166788)

(assert (=> b!7545600 (= lt!2645281 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!881 knownP!30 testedP!423 input!7874))))

(declare-fun b!7545601 () Bool)

(declare-fun tp!2194861 () Bool)

(declare-fun tp!2194857 () Bool)

(assert (=> b!7545601 (= e!4495289 (and tp!2194861 tp!2194857))))

(assert (= (and start!729696 res!3024274) b!7545583))

(assert (= (and b!7545583 res!3024272) b!7545591))

(assert (= (and b!7545591 res!3024261) b!7545586))

(assert (= (and b!7545586 res!3024262) b!7545589))

(assert (= (and b!7545589 res!3024270) b!7545572))

(assert (= (and b!7545572 res!3024277) b!7545600))

(assert (= (and b!7545600 (not res!3024268)) b!7545588))

(assert (= (and b!7545588 (not res!3024263)) b!7545585))

(assert (= (and b!7545585 (not res!3024267)) b!7545584))

(assert (= (and b!7545584 (not res!3024275)) b!7545578))

(assert (= (and b!7545578 (not res!3024266)) b!7545579))

(assert (= (and b!7545579 (not res!3024280)) b!7545581))

(assert (= (and b!7545581 (not res!3024278)) b!7545587))

(assert (= (and b!7545587 (not res!3024264)) b!7545590))

(assert (= (and b!7545590 (not res!3024276)) b!7545598))

(assert (= (and b!7545598 (not res!3024273)) b!7545596))

(assert (= (and b!7545596 (not res!3024279)) b!7545592))

(assert (= (and b!7545592 (not res!3024260)) b!7545570))

(assert (= (and b!7545570 (not res!3024271)) b!7545594))

(assert (= (and b!7545594 (not res!3024265)) b!7545574))

(assert (= (and b!7545574 (not res!3024269)) b!7545575))

(get-info :version)

(assert (= (and start!729696 ((_ is ElementMatch!19925) baseR!101)) b!7545571))

(assert (= (and start!729696 ((_ is Concat!28770) baseR!101)) b!7545595))

(assert (= (and start!729696 ((_ is Star!19925) baseR!101)) b!7545573))

(assert (= (and start!729696 ((_ is Union!19925) baseR!101)) b!7545601))

(assert (= (and start!729696 ((_ is Cons!72684) input!7874)) b!7545597))

(assert (= (and start!729696 ((_ is Cons!72684) knownP!30)) b!7545582))

(assert (= (and start!729696 ((_ is Cons!72684) testedP!423)) b!7545577))

(assert (= (and start!729696 ((_ is ElementMatch!19925) r!24333)) b!7545580))

(assert (= (and start!729696 ((_ is Concat!28770) r!24333)) b!7545593))

(assert (= (and start!729696 ((_ is Star!19925) r!24333)) b!7545576))

(assert (= (and start!729696 ((_ is Union!19925) r!24333)) b!7545599))

(declare-fun m!8114176 () Bool)

(assert (=> b!7545589 m!8114176))

(declare-fun m!8114178 () Bool)

(assert (=> b!7545589 m!8114178))

(declare-fun m!8114180 () Bool)

(assert (=> b!7545578 m!8114180))

(declare-fun m!8114182 () Bool)

(assert (=> b!7545591 m!8114182))

(declare-fun m!8114184 () Bool)

(assert (=> b!7545600 m!8114184))

(declare-fun m!8114186 () Bool)

(assert (=> b!7545600 m!8114186))

(declare-fun m!8114188 () Bool)

(assert (=> b!7545600 m!8114188))

(declare-fun m!8114190 () Bool)

(assert (=> b!7545600 m!8114190))

(declare-fun m!8114192 () Bool)

(assert (=> b!7545572 m!8114192))

(declare-fun m!8114194 () Bool)

(assert (=> b!7545594 m!8114194))

(declare-fun m!8114196 () Bool)

(assert (=> b!7545594 m!8114196))

(declare-fun m!8114198 () Bool)

(assert (=> b!7545594 m!8114198))

(declare-fun m!8114200 () Bool)

(assert (=> b!7545594 m!8114200))

(declare-fun m!8114202 () Bool)

(assert (=> b!7545583 m!8114202))

(declare-fun m!8114204 () Bool)

(assert (=> b!7545598 m!8114204))

(declare-fun m!8114206 () Bool)

(assert (=> b!7545598 m!8114206))

(declare-fun m!8114208 () Bool)

(assert (=> b!7545588 m!8114208))

(declare-fun m!8114210 () Bool)

(assert (=> b!7545581 m!8114210))

(declare-fun m!8114212 () Bool)

(assert (=> b!7545581 m!8114212))

(declare-fun m!8114214 () Bool)

(assert (=> b!7545586 m!8114214))

(declare-fun m!8114216 () Bool)

(assert (=> b!7545590 m!8114216))

(declare-fun m!8114218 () Bool)

(assert (=> b!7545590 m!8114218))

(declare-fun m!8114220 () Bool)

(assert (=> b!7545590 m!8114220))

(declare-fun m!8114222 () Bool)

(assert (=> b!7545574 m!8114222))

(declare-fun m!8114224 () Bool)

(assert (=> b!7545574 m!8114224))

(declare-fun m!8114226 () Bool)

(assert (=> b!7545574 m!8114226))

(declare-fun m!8114228 () Bool)

(assert (=> b!7545574 m!8114228))

(assert (=> b!7545574 m!8114224))

(assert (=> b!7545574 m!8114226))

(declare-fun m!8114230 () Bool)

(assert (=> b!7545574 m!8114230))

(declare-fun m!8114232 () Bool)

(assert (=> b!7545574 m!8114232))

(declare-fun m!8114234 () Bool)

(assert (=> b!7545574 m!8114234))

(declare-fun m!8114236 () Bool)

(assert (=> start!729696 m!8114236))

(declare-fun m!8114238 () Bool)

(assert (=> b!7545579 m!8114238))

(declare-fun m!8114240 () Bool)

(assert (=> b!7545579 m!8114240))

(declare-fun m!8114242 () Bool)

(assert (=> b!7545579 m!8114242))

(declare-fun m!8114244 () Bool)

(assert (=> b!7545579 m!8114244))

(declare-fun m!8114246 () Bool)

(assert (=> b!7545579 m!8114246))

(declare-fun m!8114248 () Bool)

(assert (=> b!7545579 m!8114248))

(declare-fun m!8114250 () Bool)

(assert (=> b!7545579 m!8114250))

(declare-fun m!8114252 () Bool)

(assert (=> b!7545579 m!8114252))

(declare-fun m!8114254 () Bool)

(assert (=> b!7545579 m!8114254))

(declare-fun m!8114256 () Bool)

(assert (=> b!7545579 m!8114256))

(declare-fun m!8114258 () Bool)

(assert (=> b!7545579 m!8114258))

(declare-fun m!8114260 () Bool)

(assert (=> b!7545579 m!8114260))

(declare-fun m!8114262 () Bool)

(assert (=> b!7545579 m!8114262))

(declare-fun m!8114264 () Bool)

(assert (=> b!7545596 m!8114264))

(declare-fun m!8114266 () Bool)

(assert (=> b!7545596 m!8114266))

(declare-fun m!8114268 () Bool)

(assert (=> b!7545585 m!8114268))

(declare-fun m!8114270 () Bool)

(assert (=> b!7545570 m!8114270))

(declare-fun m!8114272 () Bool)

(assert (=> b!7545587 m!8114272))

(check-sat (not b!7545591) (not b!7545588) (not b!7545574) (not b!7545576) (not b!7545597) (not b!7545586) (not b!7545572) (not b!7545600) (not b!7545598) (not b!7545573) (not b!7545582) (not b!7545589) (not start!729696) (not b!7545593) (not b!7545583) (not b!7545590) (not b!7545585) tp_is_empty!50205 (not b!7545570) (not b!7545595) (not b!7545596) (not b!7545578) (not b!7545577) (not b!7545579) (not b!7545581) (not b!7545594) (not b!7545601) (not b!7545599) (not b!7545587))
(check-sat)
