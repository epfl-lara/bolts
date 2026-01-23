; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!521706 () Bool)

(assert start!521706)

(declare-fun b!4951401 () Bool)

(declare-fun e!3093535 () Bool)

(declare-fun e!3093528 () Bool)

(assert (=> b!4951401 (= e!3093535 (not e!3093528))))

(declare-fun res!2112492 () Bool)

(assert (=> b!4951401 (=> res!2112492 e!3093528)))

(declare-datatypes ((C!27238 0))(
  ( (C!27239 (val!22953 Int)) )
))
(declare-datatypes ((List!57137 0))(
  ( (Nil!57013) (Cons!57013 (h!63461 C!27238) (t!367703 List!57137)) )
))
(declare-fun testedP!110 () List!57137)

(declare-fun lt!2043183 () List!57137)

(declare-fun isPrefix!5100 (List!57137 List!57137) Bool)

(assert (=> b!4951401 (= res!2112492 (not (isPrefix!5100 testedP!110 lt!2043183)))))

(declare-fun lt!2043180 () List!57137)

(assert (=> b!4951401 (isPrefix!5100 testedP!110 lt!2043180)))

(declare-datatypes ((Unit!147884 0))(
  ( (Unit!147885) )
))
(declare-fun lt!2043194 () Unit!147884)

(declare-fun testedSuffix!70 () List!57137)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3324 (List!57137 List!57137) Unit!147884)

(assert (=> b!4951401 (= lt!2043194 (lemmaConcatTwoListThenFirstIsPrefix!3324 testedP!110 testedSuffix!70))))

(declare-fun b!4951402 () Bool)

(declare-fun e!3093531 () Bool)

(declare-fun e!3093534 () Bool)

(assert (=> b!4951402 (= e!3093531 e!3093534)))

(declare-fun res!2112494 () Bool)

(assert (=> b!4951402 (=> res!2112494 e!3093534)))

(declare-datatypes ((Regex!13494 0))(
  ( (ElementMatch!13494 (c!845515 C!27238)) (Concat!22067 (regOne!27500 Regex!13494) (regTwo!27500 Regex!13494)) (EmptyExpr!13494) (Star!13494 (reg!13823 Regex!13494)) (EmptyLang!13494) (Union!13494 (regOne!27501 Regex!13494) (regTwo!27501 Regex!13494)) )
))
(declare-datatypes ((List!57138 0))(
  ( (Nil!57014) (Cons!57014 (h!63462 Regex!13494) (t!367704 List!57138)) )
))
(declare-datatypes ((Context!6272 0))(
  ( (Context!6273 (exprs!3636 List!57138)) )
))
(declare-fun z!3568 () (Set Context!6272))

(declare-fun nullableZipper!865 ((Set Context!6272)) Bool)

(assert (=> b!4951402 (= res!2112494 (nullableZipper!865 z!3568))))

(declare-fun lt!2043185 () List!57137)

(declare-fun lt!2043181 () List!57137)

(declare-fun ++!12485 (List!57137 List!57137) List!57137)

(assert (=> b!4951402 (= (++!12485 lt!2043185 lt!2043181) lt!2043183)))

(declare-fun lt!2043196 () C!27238)

(assert (=> b!4951402 (= lt!2043185 (++!12485 testedP!110 (Cons!57013 lt!2043196 Nil!57013)))))

(declare-fun lt!2043178 () Unit!147884)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1439 (List!57137 C!27238 List!57137 List!57137) Unit!147884)

(assert (=> b!4951402 (= lt!2043178 (lemmaMoveElementToOtherListKeepsConcatEq!1439 testedP!110 lt!2043196 lt!2043181 lt!2043183))))

(declare-fun tail!9755 (List!57137) List!57137)

(assert (=> b!4951402 (= lt!2043181 (tail!9755 testedSuffix!70))))

(declare-fun lt!2043187 () List!57137)

(declare-fun head!10620 (List!57137) C!27238)

(assert (=> b!4951402 (isPrefix!5100 (++!12485 testedP!110 (Cons!57013 (head!10620 lt!2043187) Nil!57013)) lt!2043183)))

(declare-fun lt!2043193 () Unit!147884)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!829 (List!57137 List!57137) Unit!147884)

(assert (=> b!4951402 (= lt!2043193 (lemmaAddHeadSuffixToPrefixStillPrefix!829 testedP!110 lt!2043183))))

(declare-fun b!4951403 () Bool)

(declare-fun e!3093530 () Bool)

(assert (=> b!4951403 (= e!3093530 e!3093535)))

(declare-fun res!2112493 () Bool)

(assert (=> b!4951403 (=> (not res!2112493) (not e!3093535))))

(declare-fun totalInputSize!132 () Int)

(declare-fun lt!2043188 () Int)

(assert (=> b!4951403 (= res!2112493 (= totalInputSize!132 lt!2043188))))

(declare-datatypes ((IArray!30087 0))(
  ( (IArray!30088 (innerList!15101 List!57137)) )
))
(declare-datatypes ((Conc!15013 0))(
  ( (Node!15013 (left!41602 Conc!15013) (right!41932 Conc!15013) (csize!30256 Int) (cheight!15224 Int)) (Leaf!24953 (xs!18339 IArray!30087) (csize!30257 Int)) (Empty!15013) )
))
(declare-datatypes ((BalanceConc!29456 0))(
  ( (BalanceConc!29457 (c!845516 Conc!15013)) )
))
(declare-fun totalInput!685 () BalanceConc!29456)

(declare-fun size!37841 (BalanceConc!29456) Int)

(assert (=> b!4951403 (= lt!2043188 (size!37841 totalInput!685))))

(declare-fun b!4951404 () Bool)

(declare-fun e!3093533 () Bool)

(assert (=> b!4951404 (= e!3093528 e!3093533)))

(declare-fun res!2112487 () Bool)

(assert (=> b!4951404 (=> res!2112487 e!3093533)))

(declare-fun lostCauseZipper!812 ((Set Context!6272)) Bool)

(assert (=> b!4951404 (= res!2112487 (lostCauseZipper!812 z!3568))))

(assert (=> b!4951404 (and (= testedSuffix!70 lt!2043187) (= lt!2043187 testedSuffix!70))))

(declare-fun lt!2043184 () Unit!147884)

(declare-fun lemmaSamePrefixThenSameSuffix!2492 (List!57137 List!57137 List!57137 List!57137 List!57137) Unit!147884)

(assert (=> b!4951404 (= lt!2043184 (lemmaSamePrefixThenSameSuffix!2492 testedP!110 testedSuffix!70 testedP!110 lt!2043187 lt!2043183))))

(declare-fun getSuffix!3082 (List!57137 List!57137) List!57137)

(assert (=> b!4951404 (= lt!2043187 (getSuffix!3082 lt!2043183 testedP!110))))

(declare-fun b!4951405 () Bool)

(declare-fun res!2112485 () Bool)

(declare-fun e!3093532 () Bool)

(assert (=> b!4951405 (=> res!2112485 e!3093532)))

(declare-datatypes ((tuple2!61594 0))(
  ( (tuple2!61595 (_1!34100 BalanceConc!29456) (_2!34100 BalanceConc!29456)) )
))
(declare-fun lt!2043189 () tuple2!61594)

(declare-fun testedPSize!70 () Int)

(assert (=> b!4951405 (= res!2112485 (not (= (size!37841 (_1!34100 lt!2043189)) testedPSize!70)))))

(declare-fun b!4951406 () Bool)

(declare-fun e!3093541 () Bool)

(assert (=> b!4951406 (= e!3093541 e!3093531)))

(declare-fun res!2112490 () Bool)

(assert (=> b!4951406 (=> res!2112490 e!3093531)))

(declare-fun lt!2043182 () Int)

(assert (=> b!4951406 (= res!2112490 (>= lt!2043182 lt!2043188))))

(declare-fun lt!2043191 () Unit!147884)

(declare-fun e!3093538 () Unit!147884)

(assert (=> b!4951406 (= lt!2043191 e!3093538)))

(declare-fun c!845514 () Bool)

(assert (=> b!4951406 (= c!845514 (= lt!2043182 lt!2043188))))

(declare-fun size!37842 (List!57137) Int)

(assert (=> b!4951406 (<= lt!2043182 (size!37842 lt!2043183))))

(declare-fun lt!2043192 () Unit!147884)

(declare-fun lemmaIsPrefixThenSmallerEqSize!755 (List!57137 List!57137) Unit!147884)

(assert (=> b!4951406 (= lt!2043192 (lemmaIsPrefixThenSmallerEqSize!755 testedP!110 lt!2043183))))

(declare-fun b!4951407 () Bool)

(assert (=> b!4951407 (= e!3093533 e!3093532)))

(declare-fun res!2112489 () Bool)

(assert (=> b!4951407 (=> res!2112489 e!3093532)))

(declare-fun lt!2043179 () List!57137)

(declare-fun lt!2043190 () List!57137)

(assert (=> b!4951407 (= res!2112489 (not (= (++!12485 lt!2043179 lt!2043190) lt!2043183)))))

(declare-fun list!18190 (BalanceConc!29456) List!57137)

(assert (=> b!4951407 (= lt!2043190 (list!18190 (_2!34100 lt!2043189)))))

(assert (=> b!4951407 (= lt!2043179 (list!18190 (_1!34100 lt!2043189)))))

(declare-fun splitAt!419 (BalanceConc!29456 Int) tuple2!61594)

(assert (=> b!4951407 (= lt!2043189 (splitAt!419 totalInput!685 testedPSize!70))))

(declare-fun b!4951408 () Bool)

(declare-fun e!3093536 () Bool)

(declare-fun tp_is_empty!36185 () Bool)

(declare-fun tp!1388106 () Bool)

(assert (=> b!4951408 (= e!3093536 (and tp_is_empty!36185 tp!1388106))))

(declare-fun b!4951409 () Bool)

(declare-fun res!2112488 () Bool)

(assert (=> b!4951409 (=> res!2112488 e!3093533)))

(assert (=> b!4951409 (= res!2112488 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4951410 () Bool)

(declare-fun Unit!147886 () Unit!147884)

(assert (=> b!4951410 (= e!3093538 Unit!147886)))

(declare-fun b!4951411 () Bool)

(assert (=> b!4951411 (= e!3093532 e!3093541)))

(declare-fun res!2112486 () Bool)

(assert (=> b!4951411 (=> res!2112486 e!3093541)))

(assert (=> b!4951411 (= res!2112486 (not (= lt!2043196 (head!10620 testedSuffix!70))))))

(declare-fun apply!13855 (BalanceConc!29456 Int) C!27238)

(assert (=> b!4951411 (= lt!2043196 (apply!13855 totalInput!685 testedPSize!70))))

(declare-fun drop!2301 (List!57137 Int) List!57137)

(declare-fun apply!13856 (List!57137 Int) C!27238)

(assert (=> b!4951411 (= (head!10620 (drop!2301 lt!2043183 testedPSize!70)) (apply!13856 lt!2043183 testedPSize!70))))

(declare-fun lt!2043195 () Unit!147884)

(declare-fun lemmaDropApply!1355 (List!57137 Int) Unit!147884)

(assert (=> b!4951411 (= lt!2043195 (lemmaDropApply!1355 lt!2043183 testedPSize!70))))

(assert (=> b!4951411 (not (or (not (= lt!2043179 testedP!110)) (not (= lt!2043190 testedSuffix!70))))))

(declare-fun lt!2043186 () Unit!147884)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!738 (List!57137 List!57137 List!57137 List!57137) Unit!147884)

(assert (=> b!4951411 (= lt!2043186 (lemmaConcatSameAndSameSizesThenSameLists!738 lt!2043179 lt!2043190 testedP!110 testedSuffix!70))))

(declare-fun setIsEmpty!28127 () Bool)

(declare-fun setRes!28127 () Bool)

(assert (=> setIsEmpty!28127 setRes!28127))

(declare-fun b!4951400 () Bool)

(declare-fun e!3093539 () Bool)

(declare-fun tp!1388107 () Bool)

(assert (=> b!4951400 (= e!3093539 tp!1388107)))

(declare-fun res!2112495 () Bool)

(declare-fun e!3093529 () Bool)

(assert (=> start!521706 (=> (not res!2112495) (not e!3093529))))

(assert (=> start!521706 (= res!2112495 (= lt!2043180 lt!2043183))))

(assert (=> start!521706 (= lt!2043183 (list!18190 totalInput!685))))

(assert (=> start!521706 (= lt!2043180 (++!12485 testedP!110 testedSuffix!70))))

(assert (=> start!521706 e!3093529))

(assert (=> start!521706 e!3093536))

(declare-fun condSetEmpty!28127 () Bool)

(assert (=> start!521706 (= condSetEmpty!28127 (= z!3568 (as set.empty (Set Context!6272))))))

(assert (=> start!521706 setRes!28127))

(assert (=> start!521706 true))

(declare-fun e!3093537 () Bool)

(declare-fun inv!74307 (BalanceConc!29456) Bool)

(assert (=> start!521706 (and (inv!74307 totalInput!685) e!3093537)))

(declare-fun e!3093540 () Bool)

(assert (=> start!521706 e!3093540))

(declare-fun setElem!28127 () Context!6272)

(declare-fun setNonEmpty!28127 () Bool)

(declare-fun tp!1388109 () Bool)

(declare-fun inv!74308 (Context!6272) Bool)

(assert (=> setNonEmpty!28127 (= setRes!28127 (and tp!1388109 (inv!74308 setElem!28127) e!3093539))))

(declare-fun setRest!28127 () (Set Context!6272))

(assert (=> setNonEmpty!28127 (= z!3568 (set.union (set.insert setElem!28127 (as set.empty (Set Context!6272))) setRest!28127))))

(declare-fun b!4951412 () Bool)

(declare-fun Unit!147887 () Unit!147884)

(assert (=> b!4951412 (= e!3093538 Unit!147887)))

(declare-fun lt!2043197 () Unit!147884)

(declare-fun lemmaIsPrefixRefl!3440 (List!57137 List!57137) Unit!147884)

(assert (=> b!4951412 (= lt!2043197 (lemmaIsPrefixRefl!3440 lt!2043183 lt!2043183))))

(assert (=> b!4951412 (isPrefix!5100 lt!2043183 lt!2043183)))

(declare-fun lt!2043198 () Unit!147884)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1192 (List!57137 List!57137 List!57137) Unit!147884)

(assert (=> b!4951412 (= lt!2043198 (lemmaIsPrefixSameLengthThenSameList!1192 lt!2043183 testedP!110 lt!2043183))))

(assert (=> b!4951412 false))

(declare-fun b!4951413 () Bool)

(declare-fun tp!1388110 () Bool)

(declare-fun inv!74309 (Conc!15013) Bool)

(assert (=> b!4951413 (= e!3093537 (and (inv!74309 (c!845516 totalInput!685)) tp!1388110))))

(declare-fun b!4951414 () Bool)

(assert (=> b!4951414 (= e!3093529 e!3093530)))

(declare-fun res!2112491 () Bool)

(assert (=> b!4951414 (=> (not res!2112491) (not e!3093530))))

(assert (=> b!4951414 (= res!2112491 (= testedPSize!70 lt!2043182))))

(assert (=> b!4951414 (= lt!2043182 (size!37842 testedP!110))))

(declare-fun b!4951415 () Bool)

(declare-fun tp!1388108 () Bool)

(assert (=> b!4951415 (= e!3093540 (and tp_is_empty!36185 tp!1388108))))

(declare-fun b!4951416 () Bool)

(declare-datatypes ((tuple2!61596 0))(
  ( (tuple2!61597 (_1!34101 List!57137) (_2!34101 List!57137)) )
))
(declare-fun findLongestMatchInnerZipper!81 ((Set Context!6272) List!57137 Int List!57137 List!57137 Int) tuple2!61596)

(declare-fun findLongestMatchInnerZipperFast!106 ((Set Context!6272) List!57137 Int List!57137 BalanceConc!29456 Int) Int)

(declare-fun derivationStepZipper!614 ((Set Context!6272) C!27238) (Set Context!6272))

(assert (=> b!4951416 (= e!3093534 (= (size!37842 (_1!34101 (findLongestMatchInnerZipper!81 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2043183 totalInputSize!132))) (findLongestMatchInnerZipperFast!106 (derivationStepZipper!614 z!3568 lt!2043196) lt!2043185 (+ 1 testedPSize!70) lt!2043181 totalInput!685 totalInputSize!132)))))

(assert (= (and start!521706 res!2112495) b!4951414))

(assert (= (and b!4951414 res!2112491) b!4951403))

(assert (= (and b!4951403 res!2112493) b!4951401))

(assert (= (and b!4951401 (not res!2112492)) b!4951404))

(assert (= (and b!4951404 (not res!2112487)) b!4951409))

(assert (= (and b!4951409 (not res!2112488)) b!4951407))

(assert (= (and b!4951407 (not res!2112489)) b!4951405))

(assert (= (and b!4951405 (not res!2112485)) b!4951411))

(assert (= (and b!4951411 (not res!2112486)) b!4951406))

(assert (= (and b!4951406 c!845514) b!4951412))

(assert (= (and b!4951406 (not c!845514)) b!4951410))

(assert (= (and b!4951406 (not res!2112490)) b!4951402))

(assert (= (and b!4951402 (not res!2112494)) b!4951416))

(assert (= (and start!521706 (is-Cons!57013 testedP!110)) b!4951408))

(assert (= (and start!521706 condSetEmpty!28127) setIsEmpty!28127))

(assert (= (and start!521706 (not condSetEmpty!28127)) setNonEmpty!28127))

(assert (= setNonEmpty!28127 b!4951400))

(assert (= start!521706 b!4951413))

(assert (= (and start!521706 (is-Cons!57013 testedSuffix!70)) b!4951415))

(declare-fun m!5976264 () Bool)

(assert (=> b!4951413 m!5976264))

(declare-fun m!5976266 () Bool)

(assert (=> b!4951404 m!5976266))

(declare-fun m!5976268 () Bool)

(assert (=> b!4951404 m!5976268))

(declare-fun m!5976270 () Bool)

(assert (=> b!4951404 m!5976270))

(declare-fun m!5976272 () Bool)

(assert (=> b!4951414 m!5976272))

(declare-fun m!5976274 () Bool)

(assert (=> b!4951406 m!5976274))

(declare-fun m!5976276 () Bool)

(assert (=> b!4951406 m!5976276))

(declare-fun m!5976278 () Bool)

(assert (=> b!4951405 m!5976278))

(declare-fun m!5976280 () Bool)

(assert (=> start!521706 m!5976280))

(declare-fun m!5976282 () Bool)

(assert (=> start!521706 m!5976282))

(declare-fun m!5976284 () Bool)

(assert (=> start!521706 m!5976284))

(declare-fun m!5976286 () Bool)

(assert (=> setNonEmpty!28127 m!5976286))

(declare-fun m!5976288 () Bool)

(assert (=> b!4951411 m!5976288))

(declare-fun m!5976290 () Bool)

(assert (=> b!4951411 m!5976290))

(assert (=> b!4951411 m!5976288))

(declare-fun m!5976292 () Bool)

(assert (=> b!4951411 m!5976292))

(declare-fun m!5976294 () Bool)

(assert (=> b!4951411 m!5976294))

(declare-fun m!5976296 () Bool)

(assert (=> b!4951411 m!5976296))

(declare-fun m!5976298 () Bool)

(assert (=> b!4951411 m!5976298))

(declare-fun m!5976300 () Bool)

(assert (=> b!4951411 m!5976300))

(declare-fun m!5976302 () Bool)

(assert (=> b!4951403 m!5976302))

(declare-fun m!5976304 () Bool)

(assert (=> b!4951407 m!5976304))

(declare-fun m!5976306 () Bool)

(assert (=> b!4951407 m!5976306))

(declare-fun m!5976308 () Bool)

(assert (=> b!4951407 m!5976308))

(declare-fun m!5976310 () Bool)

(assert (=> b!4951407 m!5976310))

(declare-fun m!5976312 () Bool)

(assert (=> b!4951412 m!5976312))

(declare-fun m!5976314 () Bool)

(assert (=> b!4951412 m!5976314))

(declare-fun m!5976316 () Bool)

(assert (=> b!4951412 m!5976316))

(declare-fun m!5976318 () Bool)

(assert (=> b!4951416 m!5976318))

(declare-fun m!5976320 () Bool)

(assert (=> b!4951416 m!5976320))

(declare-fun m!5976322 () Bool)

(assert (=> b!4951416 m!5976322))

(assert (=> b!4951416 m!5976322))

(declare-fun m!5976324 () Bool)

(assert (=> b!4951416 m!5976324))

(declare-fun m!5976326 () Bool)

(assert (=> b!4951402 m!5976326))

(declare-fun m!5976328 () Bool)

(assert (=> b!4951402 m!5976328))

(declare-fun m!5976330 () Bool)

(assert (=> b!4951402 m!5976330))

(assert (=> b!4951402 m!5976328))

(declare-fun m!5976332 () Bool)

(assert (=> b!4951402 m!5976332))

(declare-fun m!5976334 () Bool)

(assert (=> b!4951402 m!5976334))

(declare-fun m!5976336 () Bool)

(assert (=> b!4951402 m!5976336))

(declare-fun m!5976338 () Bool)

(assert (=> b!4951402 m!5976338))

(declare-fun m!5976340 () Bool)

(assert (=> b!4951402 m!5976340))

(declare-fun m!5976342 () Bool)

(assert (=> b!4951402 m!5976342))

(declare-fun m!5976344 () Bool)

(assert (=> b!4951401 m!5976344))

(declare-fun m!5976346 () Bool)

(assert (=> b!4951401 m!5976346))

(declare-fun m!5976348 () Bool)

(assert (=> b!4951401 m!5976348))

(push 1)

(assert (not b!4951404))

(assert (not b!4951413))

(assert (not b!4951412))

(assert (not b!4951403))

(assert (not setNonEmpty!28127))

(assert (not b!4951401))

(assert (not b!4951407))

(assert tp_is_empty!36185)

(assert (not b!4951402))

(assert (not b!4951416))

(assert (not b!4951415))

(assert (not start!521706))

(assert (not b!4951405))

(assert (not b!4951400))

(assert (not b!4951406))

(assert (not b!4951408))

(assert (not b!4951414))

(assert (not b!4951411))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1594762 () Bool)

(assert (=> d!1594762 (= (head!10620 (drop!2301 lt!2043183 testedPSize!70)) (h!63461 (drop!2301 lt!2043183 testedPSize!70)))))

(assert (=> b!4951411 d!1594762))

(declare-fun b!4951495 () Bool)

(declare-fun e!3093600 () List!57137)

(assert (=> b!4951495 (= e!3093600 Nil!57013)))

(declare-fun b!4951496 () Bool)

(declare-fun e!3093602 () Int)

(assert (=> b!4951496 (= e!3093602 0)))

(declare-fun b!4951497 () Bool)

(declare-fun call!345705 () Int)

(assert (=> b!4951497 (= e!3093602 (- call!345705 testedPSize!70))))

(declare-fun b!4951498 () Bool)

(declare-fun e!3093603 () Int)

(assert (=> b!4951498 (= e!3093603 e!3093602)))

(declare-fun c!845534 () Bool)

(assert (=> b!4951498 (= c!845534 (>= testedPSize!70 call!345705))))

(declare-fun b!4951499 () Bool)

(declare-fun e!3093604 () List!57137)

(assert (=> b!4951499 (= e!3093604 (drop!2301 (t!367703 lt!2043183) (- testedPSize!70 1)))))

(declare-fun b!4951500 () Bool)

(assert (=> b!4951500 (= e!3093600 e!3093604)))

(declare-fun c!845536 () Bool)

(assert (=> b!4951500 (= c!845536 (<= testedPSize!70 0))))

(declare-fun d!1594764 () Bool)

(declare-fun e!3093601 () Bool)

(assert (=> d!1594764 e!3093601))

(declare-fun res!2112534 () Bool)

(assert (=> d!1594764 (=> (not res!2112534) (not e!3093601))))

(declare-fun lt!2043267 () List!57137)

(declare-fun content!10164 (List!57137) (Set C!27238))

(assert (=> d!1594764 (= res!2112534 (set.subset (content!10164 lt!2043267) (content!10164 lt!2043183)))))

(assert (=> d!1594764 (= lt!2043267 e!3093600)))

(declare-fun c!845533 () Bool)

(assert (=> d!1594764 (= c!845533 (is-Nil!57013 lt!2043183))))

(assert (=> d!1594764 (= (drop!2301 lt!2043183 testedPSize!70) lt!2043267)))

(declare-fun b!4951501 () Bool)

(assert (=> b!4951501 (= e!3093604 lt!2043183)))

(declare-fun b!4951502 () Bool)

(assert (=> b!4951502 (= e!3093603 call!345705)))

(declare-fun bm!345700 () Bool)

(assert (=> bm!345700 (= call!345705 (size!37842 lt!2043183))))

(declare-fun b!4951503 () Bool)

(assert (=> b!4951503 (= e!3093601 (= (size!37842 lt!2043267) e!3093603))))

(declare-fun c!845535 () Bool)

(assert (=> b!4951503 (= c!845535 (<= testedPSize!70 0))))

(assert (= (and d!1594764 c!845533) b!4951495))

(assert (= (and d!1594764 (not c!845533)) b!4951500))

(assert (= (and b!4951500 c!845536) b!4951501))

(assert (= (and b!4951500 (not c!845536)) b!4951499))

(assert (= (and d!1594764 res!2112534) b!4951503))

(assert (= (and b!4951503 c!845535) b!4951502))

(assert (= (and b!4951503 (not c!845535)) b!4951498))

(assert (= (and b!4951498 c!845534) b!4951496))

(assert (= (and b!4951498 (not c!845534)) b!4951497))

(assert (= (or b!4951502 b!4951498 b!4951497) bm!345700))

(declare-fun m!5976444 () Bool)

(assert (=> b!4951499 m!5976444))

(declare-fun m!5976446 () Bool)

(assert (=> d!1594764 m!5976446))

(declare-fun m!5976448 () Bool)

(assert (=> d!1594764 m!5976448))

(assert (=> bm!345700 m!5976274))

(declare-fun m!5976450 () Bool)

(assert (=> b!4951503 m!5976450))

(assert (=> b!4951411 d!1594764))

(declare-fun d!1594770 () Bool)

(assert (=> d!1594770 (= (head!10620 testedSuffix!70) (h!63461 testedSuffix!70))))

(assert (=> b!4951411 d!1594770))

(declare-fun d!1594772 () Bool)

(assert (=> d!1594772 (and (= lt!2043179 testedP!110) (= lt!2043190 testedSuffix!70))))

(declare-fun lt!2043273 () Unit!147884)

(declare-fun choose!36590 (List!57137 List!57137 List!57137 List!57137) Unit!147884)

(assert (=> d!1594772 (= lt!2043273 (choose!36590 lt!2043179 lt!2043190 testedP!110 testedSuffix!70))))

(assert (=> d!1594772 (= (++!12485 lt!2043179 lt!2043190) (++!12485 testedP!110 testedSuffix!70))))

(assert (=> d!1594772 (= (lemmaConcatSameAndSameSizesThenSameLists!738 lt!2043179 lt!2043190 testedP!110 testedSuffix!70) lt!2043273)))

(declare-fun bs!1182313 () Bool)

(assert (= bs!1182313 d!1594772))

(declare-fun m!5976454 () Bool)

(assert (=> bs!1182313 m!5976454))

(assert (=> bs!1182313 m!5976304))

(assert (=> bs!1182313 m!5976282))

(assert (=> b!4951411 d!1594772))

(declare-fun d!1594778 () Bool)

(assert (=> d!1594778 (= (head!10620 (drop!2301 lt!2043183 testedPSize!70)) (apply!13856 lt!2043183 testedPSize!70))))

(declare-fun lt!2043279 () Unit!147884)

(declare-fun choose!36591 (List!57137 Int) Unit!147884)

(assert (=> d!1594778 (= lt!2043279 (choose!36591 lt!2043183 testedPSize!70))))

(declare-fun e!3093610 () Bool)

(assert (=> d!1594778 e!3093610))

(declare-fun res!2112540 () Bool)

(assert (=> d!1594778 (=> (not res!2112540) (not e!3093610))))

(assert (=> d!1594778 (= res!2112540 (>= testedPSize!70 0))))

(assert (=> d!1594778 (= (lemmaDropApply!1355 lt!2043183 testedPSize!70) lt!2043279)))

(declare-fun b!4951509 () Bool)

(assert (=> b!4951509 (= e!3093610 (< testedPSize!70 (size!37842 lt!2043183)))))

(assert (= (and d!1594778 res!2112540) b!4951509))

(assert (=> d!1594778 m!5976288))

(assert (=> d!1594778 m!5976288))

(assert (=> d!1594778 m!5976292))

(assert (=> d!1594778 m!5976294))

(declare-fun m!5976458 () Bool)

(assert (=> d!1594778 m!5976458))

(assert (=> b!4951509 m!5976274))

(assert (=> b!4951411 d!1594778))

(declare-fun d!1594782 () Bool)

(declare-fun lt!2043282 () C!27238)

(declare-fun contains!19501 (List!57137 C!27238) Bool)

(assert (=> d!1594782 (contains!19501 lt!2043183 lt!2043282)))

(declare-fun e!3093615 () C!27238)

(assert (=> d!1594782 (= lt!2043282 e!3093615)))

(declare-fun c!845539 () Bool)

(assert (=> d!1594782 (= c!845539 (= testedPSize!70 0))))

(declare-fun e!3093616 () Bool)

(assert (=> d!1594782 e!3093616))

(declare-fun res!2112543 () Bool)

(assert (=> d!1594782 (=> (not res!2112543) (not e!3093616))))

(assert (=> d!1594782 (= res!2112543 (<= 0 testedPSize!70))))

(assert (=> d!1594782 (= (apply!13856 lt!2043183 testedPSize!70) lt!2043282)))

(declare-fun b!4951516 () Bool)

(assert (=> b!4951516 (= e!3093616 (< testedPSize!70 (size!37842 lt!2043183)))))

(declare-fun b!4951517 () Bool)

(assert (=> b!4951517 (= e!3093615 (head!10620 lt!2043183))))

(declare-fun b!4951518 () Bool)

(assert (=> b!4951518 (= e!3093615 (apply!13856 (tail!9755 lt!2043183) (- testedPSize!70 1)))))

(assert (= (and d!1594782 res!2112543) b!4951516))

(assert (= (and d!1594782 c!845539) b!4951517))

(assert (= (and d!1594782 (not c!845539)) b!4951518))

(declare-fun m!5976460 () Bool)

(assert (=> d!1594782 m!5976460))

(assert (=> b!4951516 m!5976274))

(declare-fun m!5976462 () Bool)

(assert (=> b!4951517 m!5976462))

(declare-fun m!5976464 () Bool)

(assert (=> b!4951518 m!5976464))

(assert (=> b!4951518 m!5976464))

(declare-fun m!5976466 () Bool)

(assert (=> b!4951518 m!5976466))

(assert (=> b!4951411 d!1594782))

(declare-fun d!1594784 () Bool)

(declare-fun lt!2043288 () C!27238)

(assert (=> d!1594784 (= lt!2043288 (apply!13856 (list!18190 totalInput!685) testedPSize!70))))

(declare-fun apply!13859 (Conc!15013 Int) C!27238)

(assert (=> d!1594784 (= lt!2043288 (apply!13859 (c!845516 totalInput!685) testedPSize!70))))

(declare-fun e!3093634 () Bool)

(assert (=> d!1594784 e!3093634))

(declare-fun res!2112549 () Bool)

(assert (=> d!1594784 (=> (not res!2112549) (not e!3093634))))

(assert (=> d!1594784 (= res!2112549 (<= 0 testedPSize!70))))

(assert (=> d!1594784 (= (apply!13855 totalInput!685 testedPSize!70) lt!2043288)))

(declare-fun b!4951548 () Bool)

(assert (=> b!4951548 (= e!3093634 (< testedPSize!70 (size!37841 totalInput!685)))))

(assert (= (and d!1594784 res!2112549) b!4951548))

(assert (=> d!1594784 m!5976280))

(assert (=> d!1594784 m!5976280))

(declare-fun m!5976468 () Bool)

(assert (=> d!1594784 m!5976468))

(declare-fun m!5976470 () Bool)

(assert (=> d!1594784 m!5976470))

(assert (=> b!4951548 m!5976302))

(assert (=> b!4951411 d!1594784))

(declare-fun b!4951559 () Bool)

(declare-fun e!3093643 () Bool)

(assert (=> b!4951559 (= e!3093643 (isPrefix!5100 (tail!9755 testedP!110) (tail!9755 lt!2043183)))))

(declare-fun b!4951560 () Bool)

(declare-fun e!3093642 () Bool)

(assert (=> b!4951560 (= e!3093642 (>= (size!37842 lt!2043183) (size!37842 testedP!110)))))

(declare-fun d!1594786 () Bool)

(assert (=> d!1594786 e!3093642))

(declare-fun res!2112559 () Bool)

(assert (=> d!1594786 (=> res!2112559 e!3093642)))

(declare-fun lt!2043291 () Bool)

(assert (=> d!1594786 (= res!2112559 (not lt!2043291))))

(declare-fun e!3093641 () Bool)

(assert (=> d!1594786 (= lt!2043291 e!3093641)))

(declare-fun res!2112560 () Bool)

(assert (=> d!1594786 (=> res!2112560 e!3093641)))

(assert (=> d!1594786 (= res!2112560 (is-Nil!57013 testedP!110))))

(assert (=> d!1594786 (= (isPrefix!5100 testedP!110 lt!2043183) lt!2043291)))

(declare-fun b!4951558 () Bool)

(declare-fun res!2112558 () Bool)

(assert (=> b!4951558 (=> (not res!2112558) (not e!3093643))))

(assert (=> b!4951558 (= res!2112558 (= (head!10620 testedP!110) (head!10620 lt!2043183)))))

(declare-fun b!4951557 () Bool)

(assert (=> b!4951557 (= e!3093641 e!3093643)))

(declare-fun res!2112561 () Bool)

(assert (=> b!4951557 (=> (not res!2112561) (not e!3093643))))

(assert (=> b!4951557 (= res!2112561 (not (is-Nil!57013 lt!2043183)))))

(assert (= (and d!1594786 (not res!2112560)) b!4951557))

(assert (= (and b!4951557 res!2112561) b!4951558))

(assert (= (and b!4951558 res!2112558) b!4951559))

(assert (= (and d!1594786 (not res!2112559)) b!4951560))

(declare-fun m!5976480 () Bool)

(assert (=> b!4951559 m!5976480))

(assert (=> b!4951559 m!5976464))

(assert (=> b!4951559 m!5976480))

(assert (=> b!4951559 m!5976464))

(declare-fun m!5976482 () Bool)

(assert (=> b!4951559 m!5976482))

(assert (=> b!4951560 m!5976274))

(assert (=> b!4951560 m!5976272))

(declare-fun m!5976484 () Bool)

(assert (=> b!4951558 m!5976484))

(assert (=> b!4951558 m!5976462))

(assert (=> b!4951401 d!1594786))

(declare-fun b!4951563 () Bool)

(declare-fun e!3093646 () Bool)

(assert (=> b!4951563 (= e!3093646 (isPrefix!5100 (tail!9755 testedP!110) (tail!9755 lt!2043180)))))

(declare-fun b!4951564 () Bool)

(declare-fun e!3093645 () Bool)

(assert (=> b!4951564 (= e!3093645 (>= (size!37842 lt!2043180) (size!37842 testedP!110)))))

(declare-fun d!1594790 () Bool)

(assert (=> d!1594790 e!3093645))

(declare-fun res!2112563 () Bool)

(assert (=> d!1594790 (=> res!2112563 e!3093645)))

(declare-fun lt!2043292 () Bool)

(assert (=> d!1594790 (= res!2112563 (not lt!2043292))))

(declare-fun e!3093644 () Bool)

(assert (=> d!1594790 (= lt!2043292 e!3093644)))

(declare-fun res!2112564 () Bool)

(assert (=> d!1594790 (=> res!2112564 e!3093644)))

(assert (=> d!1594790 (= res!2112564 (is-Nil!57013 testedP!110))))

(assert (=> d!1594790 (= (isPrefix!5100 testedP!110 lt!2043180) lt!2043292)))

(declare-fun b!4951562 () Bool)

(declare-fun res!2112562 () Bool)

(assert (=> b!4951562 (=> (not res!2112562) (not e!3093646))))

(assert (=> b!4951562 (= res!2112562 (= (head!10620 testedP!110) (head!10620 lt!2043180)))))

(declare-fun b!4951561 () Bool)

(assert (=> b!4951561 (= e!3093644 e!3093646)))

(declare-fun res!2112565 () Bool)

(assert (=> b!4951561 (=> (not res!2112565) (not e!3093646))))

(assert (=> b!4951561 (= res!2112565 (not (is-Nil!57013 lt!2043180)))))

(assert (= (and d!1594790 (not res!2112564)) b!4951561))

(assert (= (and b!4951561 res!2112565) b!4951562))

(assert (= (and b!4951562 res!2112562) b!4951563))

(assert (= (and d!1594790 (not res!2112563)) b!4951564))

(assert (=> b!4951563 m!5976480))

(declare-fun m!5976486 () Bool)

(assert (=> b!4951563 m!5976486))

(assert (=> b!4951563 m!5976480))

(assert (=> b!4951563 m!5976486))

(declare-fun m!5976488 () Bool)

(assert (=> b!4951563 m!5976488))

(declare-fun m!5976490 () Bool)

(assert (=> b!4951564 m!5976490))

(assert (=> b!4951564 m!5976272))

(assert (=> b!4951562 m!5976484))

(declare-fun m!5976492 () Bool)

(assert (=> b!4951562 m!5976492))

(assert (=> b!4951401 d!1594790))

(declare-fun d!1594792 () Bool)

(assert (=> d!1594792 (isPrefix!5100 testedP!110 (++!12485 testedP!110 testedSuffix!70))))

(declare-fun lt!2043298 () Unit!147884)

(declare-fun choose!36592 (List!57137 List!57137) Unit!147884)

(assert (=> d!1594792 (= lt!2043298 (choose!36592 testedP!110 testedSuffix!70))))

(assert (=> d!1594792 (= (lemmaConcatTwoListThenFirstIsPrefix!3324 testedP!110 testedSuffix!70) lt!2043298)))

(declare-fun bs!1182315 () Bool)

(assert (= bs!1182315 d!1594792))

(assert (=> bs!1182315 m!5976282))

(assert (=> bs!1182315 m!5976282))

(declare-fun m!5976494 () Bool)

(assert (=> bs!1182315 m!5976494))

(declare-fun m!5976496 () Bool)

(assert (=> bs!1182315 m!5976496))

(assert (=> b!4951401 d!1594792))

(declare-fun b!4951570 () Bool)

(declare-fun e!3093652 () Bool)

(assert (=> b!4951570 (= e!3093652 (isPrefix!5100 (tail!9755 (++!12485 testedP!110 (Cons!57013 (head!10620 lt!2043187) Nil!57013))) (tail!9755 lt!2043183)))))

(declare-fun e!3093651 () Bool)

(declare-fun b!4951571 () Bool)

(assert (=> b!4951571 (= e!3093651 (>= (size!37842 lt!2043183) (size!37842 (++!12485 testedP!110 (Cons!57013 (head!10620 lt!2043187) Nil!57013)))))))

(declare-fun d!1594794 () Bool)

(assert (=> d!1594794 e!3093651))

(declare-fun res!2112570 () Bool)

(assert (=> d!1594794 (=> res!2112570 e!3093651)))

(declare-fun lt!2043299 () Bool)

(assert (=> d!1594794 (= res!2112570 (not lt!2043299))))

(declare-fun e!3093650 () Bool)

(assert (=> d!1594794 (= lt!2043299 e!3093650)))

(declare-fun res!2112571 () Bool)

(assert (=> d!1594794 (=> res!2112571 e!3093650)))

(assert (=> d!1594794 (= res!2112571 (is-Nil!57013 (++!12485 testedP!110 (Cons!57013 (head!10620 lt!2043187) Nil!57013))))))

(assert (=> d!1594794 (= (isPrefix!5100 (++!12485 testedP!110 (Cons!57013 (head!10620 lt!2043187) Nil!57013)) lt!2043183) lt!2043299)))

(declare-fun b!4951569 () Bool)

(declare-fun res!2112569 () Bool)

(assert (=> b!4951569 (=> (not res!2112569) (not e!3093652))))

(assert (=> b!4951569 (= res!2112569 (= (head!10620 (++!12485 testedP!110 (Cons!57013 (head!10620 lt!2043187) Nil!57013))) (head!10620 lt!2043183)))))

(declare-fun b!4951568 () Bool)

(assert (=> b!4951568 (= e!3093650 e!3093652)))

(declare-fun res!2112572 () Bool)

(assert (=> b!4951568 (=> (not res!2112572) (not e!3093652))))

(assert (=> b!4951568 (= res!2112572 (not (is-Nil!57013 lt!2043183)))))

(assert (= (and d!1594794 (not res!2112571)) b!4951568))

(assert (= (and b!4951568 res!2112572) b!4951569))

(assert (= (and b!4951569 res!2112569) b!4951570))

(assert (= (and d!1594794 (not res!2112570)) b!4951571))

(assert (=> b!4951570 m!5976328))

(declare-fun m!5976502 () Bool)

(assert (=> b!4951570 m!5976502))

(assert (=> b!4951570 m!5976464))

(assert (=> b!4951570 m!5976502))

(assert (=> b!4951570 m!5976464))

(declare-fun m!5976504 () Bool)

(assert (=> b!4951570 m!5976504))

(assert (=> b!4951571 m!5976274))

(assert (=> b!4951571 m!5976328))

(declare-fun m!5976506 () Bool)

(assert (=> b!4951571 m!5976506))

(assert (=> b!4951569 m!5976328))

(declare-fun m!5976508 () Bool)

(assert (=> b!4951569 m!5976508))

(assert (=> b!4951569 m!5976462))

(assert (=> b!4951402 d!1594794))

(declare-fun d!1594798 () Bool)

(declare-fun lambda!246975 () Int)

(declare-fun exists!1351 ((Set Context!6272) Int) Bool)

(assert (=> d!1594798 (= (nullableZipper!865 z!3568) (exists!1351 z!3568 lambda!246975))))

(declare-fun bs!1182321 () Bool)

(assert (= bs!1182321 d!1594798))

(declare-fun m!5976568 () Bool)

(assert (=> bs!1182321 m!5976568))

(assert (=> b!4951402 d!1594798))

(declare-fun d!1594822 () Bool)

(assert (=> d!1594822 (= (++!12485 (++!12485 testedP!110 (Cons!57013 lt!2043196 Nil!57013)) lt!2043181) lt!2043183)))

(declare-fun lt!2043321 () Unit!147884)

(declare-fun choose!36593 (List!57137 C!27238 List!57137 List!57137) Unit!147884)

(assert (=> d!1594822 (= lt!2043321 (choose!36593 testedP!110 lt!2043196 lt!2043181 lt!2043183))))

(assert (=> d!1594822 (= (++!12485 testedP!110 (Cons!57013 lt!2043196 lt!2043181)) lt!2043183)))

(assert (=> d!1594822 (= (lemmaMoveElementToOtherListKeepsConcatEq!1439 testedP!110 lt!2043196 lt!2043181 lt!2043183) lt!2043321)))

(declare-fun bs!1182322 () Bool)

(assert (= bs!1182322 d!1594822))

(assert (=> bs!1182322 m!5976340))

(assert (=> bs!1182322 m!5976340))

(declare-fun m!5976570 () Bool)

(assert (=> bs!1182322 m!5976570))

(declare-fun m!5976572 () Bool)

(assert (=> bs!1182322 m!5976572))

(declare-fun m!5976574 () Bool)

(assert (=> bs!1182322 m!5976574))

(assert (=> b!4951402 d!1594822))

(declare-fun b!4951625 () Bool)

(declare-fun res!2112600 () Bool)

(declare-fun e!3093684 () Bool)

(assert (=> b!4951625 (=> (not res!2112600) (not e!3093684))))

(declare-fun lt!2043324 () List!57137)

(assert (=> b!4951625 (= res!2112600 (= (size!37842 lt!2043324) (+ (size!37842 lt!2043185) (size!37842 lt!2043181))))))

(declare-fun b!4951623 () Bool)

(declare-fun e!3093683 () List!57137)

(assert (=> b!4951623 (= e!3093683 lt!2043181)))

(declare-fun b!4951626 () Bool)

(assert (=> b!4951626 (= e!3093684 (or (not (= lt!2043181 Nil!57013)) (= lt!2043324 lt!2043185)))))

(declare-fun b!4951624 () Bool)

(assert (=> b!4951624 (= e!3093683 (Cons!57013 (h!63461 lt!2043185) (++!12485 (t!367703 lt!2043185) lt!2043181)))))

(declare-fun d!1594824 () Bool)

(assert (=> d!1594824 e!3093684))

(declare-fun res!2112601 () Bool)

(assert (=> d!1594824 (=> (not res!2112601) (not e!3093684))))

(assert (=> d!1594824 (= res!2112601 (= (content!10164 lt!2043324) (set.union (content!10164 lt!2043185) (content!10164 lt!2043181))))))

(assert (=> d!1594824 (= lt!2043324 e!3093683)))

(declare-fun c!845568 () Bool)

(assert (=> d!1594824 (= c!845568 (is-Nil!57013 lt!2043185))))

(assert (=> d!1594824 (= (++!12485 lt!2043185 lt!2043181) lt!2043324)))

(assert (= (and d!1594824 c!845568) b!4951623))

(assert (= (and d!1594824 (not c!845568)) b!4951624))

(assert (= (and d!1594824 res!2112601) b!4951625))

(assert (= (and b!4951625 res!2112600) b!4951626))

(declare-fun m!5976576 () Bool)

(assert (=> b!4951625 m!5976576))

(declare-fun m!5976578 () Bool)

(assert (=> b!4951625 m!5976578))

(declare-fun m!5976580 () Bool)

(assert (=> b!4951625 m!5976580))

(declare-fun m!5976582 () Bool)

(assert (=> b!4951624 m!5976582))

(declare-fun m!5976584 () Bool)

(assert (=> d!1594824 m!5976584))

(declare-fun m!5976586 () Bool)

(assert (=> d!1594824 m!5976586))

(declare-fun m!5976588 () Bool)

(assert (=> d!1594824 m!5976588))

(assert (=> b!4951402 d!1594824))

(declare-fun b!4951629 () Bool)

(declare-fun res!2112602 () Bool)

(declare-fun e!3093686 () Bool)

(assert (=> b!4951629 (=> (not res!2112602) (not e!3093686))))

(declare-fun lt!2043325 () List!57137)

(assert (=> b!4951629 (= res!2112602 (= (size!37842 lt!2043325) (+ (size!37842 testedP!110) (size!37842 (Cons!57013 (head!10620 lt!2043187) Nil!57013)))))))

(declare-fun b!4951627 () Bool)

(declare-fun e!3093685 () List!57137)

(assert (=> b!4951627 (= e!3093685 (Cons!57013 (head!10620 lt!2043187) Nil!57013))))

(declare-fun b!4951630 () Bool)

(assert (=> b!4951630 (= e!3093686 (or (not (= (Cons!57013 (head!10620 lt!2043187) Nil!57013) Nil!57013)) (= lt!2043325 testedP!110)))))

(declare-fun b!4951628 () Bool)

(assert (=> b!4951628 (= e!3093685 (Cons!57013 (h!63461 testedP!110) (++!12485 (t!367703 testedP!110) (Cons!57013 (head!10620 lt!2043187) Nil!57013))))))

(declare-fun d!1594826 () Bool)

(assert (=> d!1594826 e!3093686))

(declare-fun res!2112603 () Bool)

(assert (=> d!1594826 (=> (not res!2112603) (not e!3093686))))

(assert (=> d!1594826 (= res!2112603 (= (content!10164 lt!2043325) (set.union (content!10164 testedP!110) (content!10164 (Cons!57013 (head!10620 lt!2043187) Nil!57013)))))))

(assert (=> d!1594826 (= lt!2043325 e!3093685)))

(declare-fun c!845569 () Bool)

(assert (=> d!1594826 (= c!845569 (is-Nil!57013 testedP!110))))

(assert (=> d!1594826 (= (++!12485 testedP!110 (Cons!57013 (head!10620 lt!2043187) Nil!57013)) lt!2043325)))

(assert (= (and d!1594826 c!845569) b!4951627))

(assert (= (and d!1594826 (not c!845569)) b!4951628))

(assert (= (and d!1594826 res!2112603) b!4951629))

(assert (= (and b!4951629 res!2112602) b!4951630))

(declare-fun m!5976590 () Bool)

(assert (=> b!4951629 m!5976590))

(assert (=> b!4951629 m!5976272))

(declare-fun m!5976592 () Bool)

(assert (=> b!4951629 m!5976592))

(declare-fun m!5976594 () Bool)

(assert (=> b!4951628 m!5976594))

(declare-fun m!5976596 () Bool)

(assert (=> d!1594826 m!5976596))

(declare-fun m!5976598 () Bool)

(assert (=> d!1594826 m!5976598))

(declare-fun m!5976600 () Bool)

(assert (=> d!1594826 m!5976600))

(assert (=> b!4951402 d!1594826))

(declare-fun b!4951633 () Bool)

(declare-fun res!2112604 () Bool)

(declare-fun e!3093688 () Bool)

(assert (=> b!4951633 (=> (not res!2112604) (not e!3093688))))

(declare-fun lt!2043326 () List!57137)

(assert (=> b!4951633 (= res!2112604 (= (size!37842 lt!2043326) (+ (size!37842 testedP!110) (size!37842 (Cons!57013 lt!2043196 Nil!57013)))))))

(declare-fun b!4951631 () Bool)

(declare-fun e!3093687 () List!57137)

(assert (=> b!4951631 (= e!3093687 (Cons!57013 lt!2043196 Nil!57013))))

(declare-fun b!4951634 () Bool)

(assert (=> b!4951634 (= e!3093688 (or (not (= (Cons!57013 lt!2043196 Nil!57013) Nil!57013)) (= lt!2043326 testedP!110)))))

(declare-fun b!4951632 () Bool)

(assert (=> b!4951632 (= e!3093687 (Cons!57013 (h!63461 testedP!110) (++!12485 (t!367703 testedP!110) (Cons!57013 lt!2043196 Nil!57013))))))

(declare-fun d!1594828 () Bool)

(assert (=> d!1594828 e!3093688))

(declare-fun res!2112605 () Bool)

(assert (=> d!1594828 (=> (not res!2112605) (not e!3093688))))

(assert (=> d!1594828 (= res!2112605 (= (content!10164 lt!2043326) (set.union (content!10164 testedP!110) (content!10164 (Cons!57013 lt!2043196 Nil!57013)))))))

(assert (=> d!1594828 (= lt!2043326 e!3093687)))

(declare-fun c!845570 () Bool)

(assert (=> d!1594828 (= c!845570 (is-Nil!57013 testedP!110))))

(assert (=> d!1594828 (= (++!12485 testedP!110 (Cons!57013 lt!2043196 Nil!57013)) lt!2043326)))

(assert (= (and d!1594828 c!845570) b!4951631))

(assert (= (and d!1594828 (not c!845570)) b!4951632))

(assert (= (and d!1594828 res!2112605) b!4951633))

(assert (= (and b!4951633 res!2112604) b!4951634))

(declare-fun m!5976602 () Bool)

(assert (=> b!4951633 m!5976602))

(assert (=> b!4951633 m!5976272))

(declare-fun m!5976604 () Bool)

(assert (=> b!4951633 m!5976604))

(declare-fun m!5976606 () Bool)

(assert (=> b!4951632 m!5976606))

(declare-fun m!5976608 () Bool)

(assert (=> d!1594828 m!5976608))

(assert (=> d!1594828 m!5976598))

(declare-fun m!5976610 () Bool)

(assert (=> d!1594828 m!5976610))

(assert (=> b!4951402 d!1594828))

(declare-fun d!1594830 () Bool)

(assert (=> d!1594830 (isPrefix!5100 (++!12485 testedP!110 (Cons!57013 (head!10620 (getSuffix!3082 lt!2043183 testedP!110)) Nil!57013)) lt!2043183)))

(declare-fun lt!2043329 () Unit!147884)

(declare-fun choose!36594 (List!57137 List!57137) Unit!147884)

(assert (=> d!1594830 (= lt!2043329 (choose!36594 testedP!110 lt!2043183))))

(assert (=> d!1594830 (isPrefix!5100 testedP!110 lt!2043183)))

(assert (=> d!1594830 (= (lemmaAddHeadSuffixToPrefixStillPrefix!829 testedP!110 lt!2043183) lt!2043329)))

(declare-fun bs!1182323 () Bool)

(assert (= bs!1182323 d!1594830))

(declare-fun m!5976612 () Bool)

(assert (=> bs!1182323 m!5976612))

(declare-fun m!5976614 () Bool)

(assert (=> bs!1182323 m!5976614))

(assert (=> bs!1182323 m!5976270))

(declare-fun m!5976616 () Bool)

(assert (=> bs!1182323 m!5976616))

(assert (=> bs!1182323 m!5976612))

(declare-fun m!5976618 () Bool)

(assert (=> bs!1182323 m!5976618))

(assert (=> bs!1182323 m!5976270))

(assert (=> bs!1182323 m!5976344))

(assert (=> b!4951402 d!1594830))

(declare-fun d!1594832 () Bool)

(assert (=> d!1594832 (= (head!10620 lt!2043187) (h!63461 lt!2043187))))

(assert (=> b!4951402 d!1594832))

(declare-fun d!1594834 () Bool)

(assert (=> d!1594834 (= (tail!9755 testedSuffix!70) (t!367703 testedSuffix!70))))

(assert (=> b!4951402 d!1594834))

(declare-fun d!1594836 () Bool)

(declare-fun lambda!246978 () Int)

(declare-fun forall!13287 (List!57138 Int) Bool)

(assert (=> d!1594836 (= (inv!74308 setElem!28127) (forall!13287 (exprs!3636 setElem!28127) lambda!246978))))

(declare-fun bs!1182324 () Bool)

(assert (= bs!1182324 d!1594836))

(declare-fun m!5976620 () Bool)

(assert (=> bs!1182324 m!5976620))

(assert (=> setNonEmpty!28127 d!1594836))

(declare-fun d!1594838 () Bool)

(declare-fun lt!2043332 () Int)

(assert (=> d!1594838 (= lt!2043332 (size!37842 (list!18190 totalInput!685)))))

(declare-fun size!37845 (Conc!15013) Int)

(assert (=> d!1594838 (= lt!2043332 (size!37845 (c!845516 totalInput!685)))))

(assert (=> d!1594838 (= (size!37841 totalInput!685) lt!2043332)))

(declare-fun bs!1182325 () Bool)

(assert (= bs!1182325 d!1594838))

(assert (=> bs!1182325 m!5976280))

(assert (=> bs!1182325 m!5976280))

(declare-fun m!5976622 () Bool)

(assert (=> bs!1182325 m!5976622))

(declare-fun m!5976624 () Bool)

(assert (=> bs!1182325 m!5976624))

(assert (=> b!4951403 d!1594838))

(declare-fun d!1594840 () Bool)

(assert (=> d!1594840 (isPrefix!5100 lt!2043183 lt!2043183)))

(declare-fun lt!2043335 () Unit!147884)

(declare-fun choose!36595 (List!57137 List!57137) Unit!147884)

(assert (=> d!1594840 (= lt!2043335 (choose!36595 lt!2043183 lt!2043183))))

(assert (=> d!1594840 (= (lemmaIsPrefixRefl!3440 lt!2043183 lt!2043183) lt!2043335)))

(declare-fun bs!1182326 () Bool)

(assert (= bs!1182326 d!1594840))

(assert (=> bs!1182326 m!5976314))

(declare-fun m!5976626 () Bool)

(assert (=> bs!1182326 m!5976626))

(assert (=> b!4951412 d!1594840))

(declare-fun b!4951637 () Bool)

(declare-fun e!3093691 () Bool)

(assert (=> b!4951637 (= e!3093691 (isPrefix!5100 (tail!9755 lt!2043183) (tail!9755 lt!2043183)))))

(declare-fun b!4951638 () Bool)

(declare-fun e!3093690 () Bool)

(assert (=> b!4951638 (= e!3093690 (>= (size!37842 lt!2043183) (size!37842 lt!2043183)))))

(declare-fun d!1594842 () Bool)

(assert (=> d!1594842 e!3093690))

(declare-fun res!2112607 () Bool)

(assert (=> d!1594842 (=> res!2112607 e!3093690)))

(declare-fun lt!2043336 () Bool)

(assert (=> d!1594842 (= res!2112607 (not lt!2043336))))

(declare-fun e!3093689 () Bool)

(assert (=> d!1594842 (= lt!2043336 e!3093689)))

(declare-fun res!2112608 () Bool)

(assert (=> d!1594842 (=> res!2112608 e!3093689)))

(assert (=> d!1594842 (= res!2112608 (is-Nil!57013 lt!2043183))))

(assert (=> d!1594842 (= (isPrefix!5100 lt!2043183 lt!2043183) lt!2043336)))

(declare-fun b!4951636 () Bool)

(declare-fun res!2112606 () Bool)

(assert (=> b!4951636 (=> (not res!2112606) (not e!3093691))))

(assert (=> b!4951636 (= res!2112606 (= (head!10620 lt!2043183) (head!10620 lt!2043183)))))

(declare-fun b!4951635 () Bool)

(assert (=> b!4951635 (= e!3093689 e!3093691)))

(declare-fun res!2112609 () Bool)

(assert (=> b!4951635 (=> (not res!2112609) (not e!3093691))))

(assert (=> b!4951635 (= res!2112609 (not (is-Nil!57013 lt!2043183)))))

(assert (= (and d!1594842 (not res!2112608)) b!4951635))

(assert (= (and b!4951635 res!2112609) b!4951636))

(assert (= (and b!4951636 res!2112606) b!4951637))

(assert (= (and d!1594842 (not res!2112607)) b!4951638))

(assert (=> b!4951637 m!5976464))

(assert (=> b!4951637 m!5976464))

(assert (=> b!4951637 m!5976464))

(assert (=> b!4951637 m!5976464))

(declare-fun m!5976628 () Bool)

(assert (=> b!4951637 m!5976628))

(assert (=> b!4951638 m!5976274))

(assert (=> b!4951638 m!5976274))

(assert (=> b!4951636 m!5976462))

(assert (=> b!4951636 m!5976462))

(assert (=> b!4951412 d!1594842))

(declare-fun d!1594844 () Bool)

(assert (=> d!1594844 (= lt!2043183 testedP!110)))

(declare-fun lt!2043339 () Unit!147884)

(declare-fun choose!36596 (List!57137 List!57137 List!57137) Unit!147884)

(assert (=> d!1594844 (= lt!2043339 (choose!36596 lt!2043183 testedP!110 lt!2043183))))

(assert (=> d!1594844 (isPrefix!5100 lt!2043183 lt!2043183)))

(assert (=> d!1594844 (= (lemmaIsPrefixSameLengthThenSameList!1192 lt!2043183 testedP!110 lt!2043183) lt!2043339)))

(declare-fun bs!1182327 () Bool)

(assert (= bs!1182327 d!1594844))

(declare-fun m!5976630 () Bool)

(assert (=> bs!1182327 m!5976630))

(assert (=> bs!1182327 m!5976314))

(assert (=> b!4951412 d!1594844))

(declare-fun d!1594846 () Bool)

(declare-fun list!18192 (Conc!15013) List!57137)

(assert (=> d!1594846 (= (list!18190 totalInput!685) (list!18192 (c!845516 totalInput!685)))))

(declare-fun bs!1182328 () Bool)

(assert (= bs!1182328 d!1594846))

(declare-fun m!5976632 () Bool)

(assert (=> bs!1182328 m!5976632))

(assert (=> start!521706 d!1594846))

(declare-fun b!4951641 () Bool)

(declare-fun res!2112610 () Bool)

(declare-fun e!3093693 () Bool)

(assert (=> b!4951641 (=> (not res!2112610) (not e!3093693))))

(declare-fun lt!2043340 () List!57137)

(assert (=> b!4951641 (= res!2112610 (= (size!37842 lt!2043340) (+ (size!37842 testedP!110) (size!37842 testedSuffix!70))))))

(declare-fun b!4951639 () Bool)

(declare-fun e!3093692 () List!57137)

(assert (=> b!4951639 (= e!3093692 testedSuffix!70)))

(declare-fun b!4951642 () Bool)

(assert (=> b!4951642 (= e!3093693 (or (not (= testedSuffix!70 Nil!57013)) (= lt!2043340 testedP!110)))))

(declare-fun b!4951640 () Bool)

(assert (=> b!4951640 (= e!3093692 (Cons!57013 (h!63461 testedP!110) (++!12485 (t!367703 testedP!110) testedSuffix!70)))))

(declare-fun d!1594848 () Bool)

(assert (=> d!1594848 e!3093693))

(declare-fun res!2112611 () Bool)

(assert (=> d!1594848 (=> (not res!2112611) (not e!3093693))))

(assert (=> d!1594848 (= res!2112611 (= (content!10164 lt!2043340) (set.union (content!10164 testedP!110) (content!10164 testedSuffix!70))))))

(assert (=> d!1594848 (= lt!2043340 e!3093692)))

(declare-fun c!845571 () Bool)

(assert (=> d!1594848 (= c!845571 (is-Nil!57013 testedP!110))))

(assert (=> d!1594848 (= (++!12485 testedP!110 testedSuffix!70) lt!2043340)))

(assert (= (and d!1594848 c!845571) b!4951639))

(assert (= (and d!1594848 (not c!845571)) b!4951640))

(assert (= (and d!1594848 res!2112611) b!4951641))

(assert (= (and b!4951641 res!2112610) b!4951642))

(declare-fun m!5976634 () Bool)

(assert (=> b!4951641 m!5976634))

(assert (=> b!4951641 m!5976272))

(declare-fun m!5976636 () Bool)

(assert (=> b!4951641 m!5976636))

(declare-fun m!5976638 () Bool)

(assert (=> b!4951640 m!5976638))

(declare-fun m!5976640 () Bool)

(assert (=> d!1594848 m!5976640))

(assert (=> d!1594848 m!5976598))

(declare-fun m!5976642 () Bool)

(assert (=> d!1594848 m!5976642))

(assert (=> start!521706 d!1594848))

(declare-fun d!1594850 () Bool)

(declare-fun isBalanced!4163 (Conc!15013) Bool)

(assert (=> d!1594850 (= (inv!74307 totalInput!685) (isBalanced!4163 (c!845516 totalInput!685)))))

(declare-fun bs!1182329 () Bool)

(assert (= bs!1182329 d!1594850))

(declare-fun m!5976644 () Bool)

(assert (=> bs!1182329 m!5976644))

(assert (=> start!521706 d!1594850))

(declare-fun bs!1182330 () Bool)

(declare-fun d!1594852 () Bool)

(assert (= bs!1182330 (and d!1594852 d!1594798)))

(declare-fun lambda!246991 () Int)

(assert (=> bs!1182330 (not (= lambda!246991 lambda!246975))))

(declare-fun bs!1182331 () Bool)

(declare-fun b!4951647 () Bool)

(assert (= bs!1182331 (and b!4951647 d!1594798)))

(declare-fun lambda!246992 () Int)

(assert (=> bs!1182331 (not (= lambda!246992 lambda!246975))))

(declare-fun bs!1182332 () Bool)

(assert (= bs!1182332 (and b!4951647 d!1594852)))

(assert (=> bs!1182332 (not (= lambda!246992 lambda!246991))))

(declare-fun bs!1182333 () Bool)

(declare-fun b!4951648 () Bool)

(assert (= bs!1182333 (and b!4951648 d!1594798)))

(declare-fun lambda!246993 () Int)

(assert (=> bs!1182333 (not (= lambda!246993 lambda!246975))))

(declare-fun bs!1182334 () Bool)

(assert (= bs!1182334 (and b!4951648 d!1594852)))

(assert (=> bs!1182334 (not (= lambda!246993 lambda!246991))))

(declare-fun bs!1182335 () Bool)

(assert (= bs!1182335 (and b!4951648 b!4951647)))

(assert (=> bs!1182335 (= lambda!246993 lambda!246992)))

(declare-fun e!3093700 () Unit!147884)

(declare-fun Unit!147892 () Unit!147884)

(assert (=> b!4951648 (= e!3093700 Unit!147892)))

(declare-datatypes ((List!57141 0))(
  ( (Nil!57017) (Cons!57017 (h!63465 Context!6272) (t!367707 List!57141)) )
))
(declare-fun lt!2043357 () List!57141)

(declare-fun call!345713 () List!57141)

(assert (=> b!4951648 (= lt!2043357 call!345713)))

(declare-fun lt!2043364 () Unit!147884)

(declare-fun lemmaForallThenNotExists!228 (List!57141 Int) Unit!147884)

(assert (=> b!4951648 (= lt!2043364 (lemmaForallThenNotExists!228 lt!2043357 lambda!246991))))

(declare-fun call!345714 () Bool)

(assert (=> b!4951648 (not call!345714)))

(declare-fun lt!2043362 () Unit!147884)

(assert (=> b!4951648 (= lt!2043362 lt!2043364)))

(declare-fun Unit!147893 () Unit!147884)

(assert (=> b!4951647 (= e!3093700 Unit!147893)))

(declare-fun lt!2043359 () List!57141)

(assert (=> b!4951647 (= lt!2043359 call!345713)))

(declare-fun lt!2043358 () Unit!147884)

(declare-fun lemmaNotForallThenExists!245 (List!57141 Int) Unit!147884)

(assert (=> b!4951647 (= lt!2043358 (lemmaNotForallThenExists!245 lt!2043359 lambda!246991))))

(assert (=> b!4951647 call!345714))

(declare-fun lt!2043360 () Unit!147884)

(assert (=> b!4951647 (= lt!2043360 lt!2043358)))

(declare-fun c!845582 () Bool)

(declare-fun bm!345708 () Bool)

(declare-fun exists!1352 (List!57141 Int) Bool)

(assert (=> bm!345708 (= call!345714 (exists!1352 (ite c!845582 lt!2043359 lt!2043357) (ite c!845582 lambda!246992 lambda!246993)))))

(declare-fun bm!345709 () Bool)

(declare-fun toList!8007 ((Set Context!6272)) List!57141)

(assert (=> bm!345709 (= call!345713 (toList!8007 z!3568))))

(declare-fun lt!2043363 () Bool)

(declare-datatypes ((Option!14225 0))(
  ( (None!14224) (Some!14224 (v!50206 List!57137)) )
))
(declare-fun isEmpty!30679 (Option!14225) Bool)

(declare-fun getLanguageWitness!700 ((Set Context!6272)) Option!14225)

(assert (=> d!1594852 (= lt!2043363 (isEmpty!30679 (getLanguageWitness!700 z!3568)))))

(declare-fun forall!13288 ((Set Context!6272) Int) Bool)

(assert (=> d!1594852 (= lt!2043363 (forall!13288 z!3568 lambda!246991))))

(declare-fun lt!2043361 () Unit!147884)

(assert (=> d!1594852 (= lt!2043361 e!3093700)))

(assert (=> d!1594852 (= c!845582 (not (forall!13288 z!3568 lambda!246991)))))

(assert (=> d!1594852 (= (lostCauseZipper!812 z!3568) lt!2043363)))

(assert (= (and d!1594852 c!845582) b!4951647))

(assert (= (and d!1594852 (not c!845582)) b!4951648))

(assert (= (or b!4951647 b!4951648) bm!345708))

(assert (= (or b!4951647 b!4951648) bm!345709))

(declare-fun m!5976646 () Bool)

(assert (=> bm!345709 m!5976646))

(declare-fun m!5976648 () Bool)

(assert (=> b!4951647 m!5976648))

(declare-fun m!5976650 () Bool)

(assert (=> d!1594852 m!5976650))

(assert (=> d!1594852 m!5976650))

(declare-fun m!5976652 () Bool)

(assert (=> d!1594852 m!5976652))

(declare-fun m!5976654 () Bool)

(assert (=> d!1594852 m!5976654))

(assert (=> d!1594852 m!5976654))

(declare-fun m!5976656 () Bool)

(assert (=> bm!345708 m!5976656))

(declare-fun m!5976658 () Bool)

(assert (=> b!4951648 m!5976658))

(assert (=> b!4951404 d!1594852))

(declare-fun d!1594854 () Bool)

(assert (=> d!1594854 (= testedSuffix!70 lt!2043187)))

(declare-fun lt!2043367 () Unit!147884)

(declare-fun choose!36597 (List!57137 List!57137 List!57137 List!57137 List!57137) Unit!147884)

(assert (=> d!1594854 (= lt!2043367 (choose!36597 testedP!110 testedSuffix!70 testedP!110 lt!2043187 lt!2043183))))

(assert (=> d!1594854 (isPrefix!5100 testedP!110 lt!2043183)))

(assert (=> d!1594854 (= (lemmaSamePrefixThenSameSuffix!2492 testedP!110 testedSuffix!70 testedP!110 lt!2043187 lt!2043183) lt!2043367)))

(declare-fun bs!1182336 () Bool)

(assert (= bs!1182336 d!1594854))

(declare-fun m!5976660 () Bool)

(assert (=> bs!1182336 m!5976660))

(assert (=> bs!1182336 m!5976344))

(assert (=> b!4951404 d!1594854))

(declare-fun d!1594856 () Bool)

(declare-fun lt!2043370 () List!57137)

(assert (=> d!1594856 (= (++!12485 testedP!110 lt!2043370) lt!2043183)))

(declare-fun e!3093703 () List!57137)

(assert (=> d!1594856 (= lt!2043370 e!3093703)))

(declare-fun c!845585 () Bool)

(assert (=> d!1594856 (= c!845585 (is-Cons!57013 testedP!110))))

(assert (=> d!1594856 (>= (size!37842 lt!2043183) (size!37842 testedP!110))))

(assert (=> d!1594856 (= (getSuffix!3082 lt!2043183 testedP!110) lt!2043370)))

(declare-fun b!4951653 () Bool)

(assert (=> b!4951653 (= e!3093703 (getSuffix!3082 (tail!9755 lt!2043183) (t!367703 testedP!110)))))

(declare-fun b!4951654 () Bool)

(assert (=> b!4951654 (= e!3093703 lt!2043183)))

(assert (= (and d!1594856 c!845585) b!4951653))

(assert (= (and d!1594856 (not c!845585)) b!4951654))

(declare-fun m!5976662 () Bool)

(assert (=> d!1594856 m!5976662))

(assert (=> d!1594856 m!5976274))

(assert (=> d!1594856 m!5976272))

(assert (=> b!4951653 m!5976464))

(assert (=> b!4951653 m!5976464))

(declare-fun m!5976664 () Bool)

(assert (=> b!4951653 m!5976664))

(assert (=> b!4951404 d!1594856))

(declare-fun d!1594858 () Bool)

(declare-fun c!845588 () Bool)

(assert (=> d!1594858 (= c!845588 (is-Node!15013 (c!845516 totalInput!685)))))

(declare-fun e!3093708 () Bool)

(assert (=> d!1594858 (= (inv!74309 (c!845516 totalInput!685)) e!3093708)))

(declare-fun b!4951661 () Bool)

(declare-fun inv!74313 (Conc!15013) Bool)

(assert (=> b!4951661 (= e!3093708 (inv!74313 (c!845516 totalInput!685)))))

(declare-fun b!4951662 () Bool)

(declare-fun e!3093709 () Bool)

(assert (=> b!4951662 (= e!3093708 e!3093709)))

(declare-fun res!2112614 () Bool)

(assert (=> b!4951662 (= res!2112614 (not (is-Leaf!24953 (c!845516 totalInput!685))))))

(assert (=> b!4951662 (=> res!2112614 e!3093709)))

(declare-fun b!4951663 () Bool)

(declare-fun inv!74314 (Conc!15013) Bool)

(assert (=> b!4951663 (= e!3093709 (inv!74314 (c!845516 totalInput!685)))))

(assert (= (and d!1594858 c!845588) b!4951661))

(assert (= (and d!1594858 (not c!845588)) b!4951662))

(assert (= (and b!4951662 (not res!2112614)) b!4951663))

(declare-fun m!5976666 () Bool)

(assert (=> b!4951661 m!5976666))

(declare-fun m!5976668 () Bool)

(assert (=> b!4951663 m!5976668))

(assert (=> b!4951413 d!1594858))

(declare-fun d!1594860 () Bool)

(declare-fun lt!2043371 () Int)

(assert (=> d!1594860 (= lt!2043371 (size!37842 (list!18190 (_1!34100 lt!2043189))))))

(assert (=> d!1594860 (= lt!2043371 (size!37845 (c!845516 (_1!34100 lt!2043189))))))

(assert (=> d!1594860 (= (size!37841 (_1!34100 lt!2043189)) lt!2043371)))

(declare-fun bs!1182337 () Bool)

(assert (= bs!1182337 d!1594860))

(assert (=> bs!1182337 m!5976308))

(assert (=> bs!1182337 m!5976308))

(declare-fun m!5976670 () Bool)

(assert (=> bs!1182337 m!5976670))

(declare-fun m!5976672 () Bool)

(assert (=> bs!1182337 m!5976672))

(assert (=> b!4951405 d!1594860))

(declare-fun d!1594862 () Bool)

(declare-fun lt!2043374 () Int)

(assert (=> d!1594862 (>= lt!2043374 0)))

(declare-fun e!3093712 () Int)

(assert (=> d!1594862 (= lt!2043374 e!3093712)))

(declare-fun c!845591 () Bool)

(assert (=> d!1594862 (= c!845591 (is-Nil!57013 testedP!110))))

(assert (=> d!1594862 (= (size!37842 testedP!110) lt!2043374)))

(declare-fun b!4951668 () Bool)

(assert (=> b!4951668 (= e!3093712 0)))

(declare-fun b!4951669 () Bool)

(assert (=> b!4951669 (= e!3093712 (+ 1 (size!37842 (t!367703 testedP!110))))))

(assert (= (and d!1594862 c!845591) b!4951668))

(assert (= (and d!1594862 (not c!845591)) b!4951669))

(declare-fun m!5976674 () Bool)

(assert (=> b!4951669 m!5976674))

(assert (=> b!4951414 d!1594862))

(declare-fun d!1594864 () Bool)

(declare-fun lt!2043375 () Int)

(assert (=> d!1594864 (>= lt!2043375 0)))

(declare-fun e!3093713 () Int)

(assert (=> d!1594864 (= lt!2043375 e!3093713)))

(declare-fun c!845592 () Bool)

(assert (=> d!1594864 (= c!845592 (is-Nil!57013 lt!2043183))))

(assert (=> d!1594864 (= (size!37842 lt!2043183) lt!2043375)))

(declare-fun b!4951670 () Bool)

(assert (=> b!4951670 (= e!3093713 0)))

(declare-fun b!4951671 () Bool)

(assert (=> b!4951671 (= e!3093713 (+ 1 (size!37842 (t!367703 lt!2043183))))))

(assert (= (and d!1594864 c!845592) b!4951670))

(assert (= (and d!1594864 (not c!845592)) b!4951671))

(declare-fun m!5976676 () Bool)

(assert (=> b!4951671 m!5976676))

(assert (=> b!4951406 d!1594864))

(declare-fun d!1594866 () Bool)

(assert (=> d!1594866 (<= (size!37842 testedP!110) (size!37842 lt!2043183))))

(declare-fun lt!2043378 () Unit!147884)

(declare-fun choose!36598 (List!57137 List!57137) Unit!147884)

(assert (=> d!1594866 (= lt!2043378 (choose!36598 testedP!110 lt!2043183))))

(assert (=> d!1594866 (isPrefix!5100 testedP!110 lt!2043183)))

(assert (=> d!1594866 (= (lemmaIsPrefixThenSmallerEqSize!755 testedP!110 lt!2043183) lt!2043378)))

(declare-fun bs!1182338 () Bool)

(assert (= bs!1182338 d!1594866))

(assert (=> bs!1182338 m!5976272))

(assert (=> bs!1182338 m!5976274))

(declare-fun m!5976678 () Bool)

(assert (=> bs!1182338 m!5976678))

(assert (=> bs!1182338 m!5976344))

(assert (=> b!4951406 d!1594866))

(declare-fun b!4951674 () Bool)

(declare-fun res!2112615 () Bool)

(declare-fun e!3093715 () Bool)

(assert (=> b!4951674 (=> (not res!2112615) (not e!3093715))))

(declare-fun lt!2043379 () List!57137)

(assert (=> b!4951674 (= res!2112615 (= (size!37842 lt!2043379) (+ (size!37842 lt!2043179) (size!37842 lt!2043190))))))

(declare-fun b!4951672 () Bool)

(declare-fun e!3093714 () List!57137)

(assert (=> b!4951672 (= e!3093714 lt!2043190)))

(declare-fun b!4951675 () Bool)

(assert (=> b!4951675 (= e!3093715 (or (not (= lt!2043190 Nil!57013)) (= lt!2043379 lt!2043179)))))

(declare-fun b!4951673 () Bool)

(assert (=> b!4951673 (= e!3093714 (Cons!57013 (h!63461 lt!2043179) (++!12485 (t!367703 lt!2043179) lt!2043190)))))

(declare-fun d!1594868 () Bool)

(assert (=> d!1594868 e!3093715))

(declare-fun res!2112616 () Bool)

(assert (=> d!1594868 (=> (not res!2112616) (not e!3093715))))

(assert (=> d!1594868 (= res!2112616 (= (content!10164 lt!2043379) (set.union (content!10164 lt!2043179) (content!10164 lt!2043190))))))

(assert (=> d!1594868 (= lt!2043379 e!3093714)))

(declare-fun c!845593 () Bool)

(assert (=> d!1594868 (= c!845593 (is-Nil!57013 lt!2043179))))

(assert (=> d!1594868 (= (++!12485 lt!2043179 lt!2043190) lt!2043379)))

(assert (= (and d!1594868 c!845593) b!4951672))

(assert (= (and d!1594868 (not c!845593)) b!4951673))

(assert (= (and d!1594868 res!2112616) b!4951674))

(assert (= (and b!4951674 res!2112615) b!4951675))

(declare-fun m!5976680 () Bool)

(assert (=> b!4951674 m!5976680))

(declare-fun m!5976682 () Bool)

(assert (=> b!4951674 m!5976682))

(declare-fun m!5976684 () Bool)

(assert (=> b!4951674 m!5976684))

(declare-fun m!5976686 () Bool)

(assert (=> b!4951673 m!5976686))

(declare-fun m!5976688 () Bool)

(assert (=> d!1594868 m!5976688))

(declare-fun m!5976690 () Bool)

(assert (=> d!1594868 m!5976690))

(declare-fun m!5976692 () Bool)

(assert (=> d!1594868 m!5976692))

(assert (=> b!4951407 d!1594868))

(declare-fun d!1594870 () Bool)

(assert (=> d!1594870 (= (list!18190 (_2!34100 lt!2043189)) (list!18192 (c!845516 (_2!34100 lt!2043189))))))

(declare-fun bs!1182339 () Bool)

(assert (= bs!1182339 d!1594870))

(declare-fun m!5976694 () Bool)

(assert (=> bs!1182339 m!5976694))

(assert (=> b!4951407 d!1594870))

(declare-fun d!1594872 () Bool)

(assert (=> d!1594872 (= (list!18190 (_1!34100 lt!2043189)) (list!18192 (c!845516 (_1!34100 lt!2043189))))))

(declare-fun bs!1182340 () Bool)

(assert (= bs!1182340 d!1594872))

(declare-fun m!5976696 () Bool)

(assert (=> bs!1182340 m!5976696))

(assert (=> b!4951407 d!1594872))

(declare-fun d!1594874 () Bool)

(declare-fun e!3093718 () Bool)

(assert (=> d!1594874 e!3093718))

(declare-fun res!2112622 () Bool)

(assert (=> d!1594874 (=> (not res!2112622) (not e!3093718))))

(declare-fun lt!2043385 () tuple2!61594)

(assert (=> d!1594874 (= res!2112622 (isBalanced!4163 (c!845516 (_1!34100 lt!2043385))))))

(declare-datatypes ((tuple2!61602 0))(
  ( (tuple2!61603 (_1!34104 Conc!15013) (_2!34104 Conc!15013)) )
))
(declare-fun lt!2043384 () tuple2!61602)

(assert (=> d!1594874 (= lt!2043385 (tuple2!61595 (BalanceConc!29457 (_1!34104 lt!2043384)) (BalanceConc!29457 (_2!34104 lt!2043384))))))

(declare-fun splitAt!421 (Conc!15013 Int) tuple2!61602)

(assert (=> d!1594874 (= lt!2043384 (splitAt!421 (c!845516 totalInput!685) testedPSize!70))))

(assert (=> d!1594874 (isBalanced!4163 (c!845516 totalInput!685))))

(assert (=> d!1594874 (= (splitAt!419 totalInput!685 testedPSize!70) lt!2043385)))

(declare-fun b!4951680 () Bool)

(declare-fun res!2112621 () Bool)

(assert (=> b!4951680 (=> (not res!2112621) (not e!3093718))))

(assert (=> b!4951680 (= res!2112621 (isBalanced!4163 (c!845516 (_2!34100 lt!2043385))))))

(declare-fun b!4951681 () Bool)

(declare-fun splitAtIndex!157 (List!57137 Int) tuple2!61596)

(assert (=> b!4951681 (= e!3093718 (= (tuple2!61597 (list!18190 (_1!34100 lt!2043385)) (list!18190 (_2!34100 lt!2043385))) (splitAtIndex!157 (list!18190 totalInput!685) testedPSize!70)))))

(assert (= (and d!1594874 res!2112622) b!4951680))

(assert (= (and b!4951680 res!2112621) b!4951681))

(declare-fun m!5976698 () Bool)

(assert (=> d!1594874 m!5976698))

(declare-fun m!5976700 () Bool)

(assert (=> d!1594874 m!5976700))

(assert (=> d!1594874 m!5976644))

(declare-fun m!5976702 () Bool)

(assert (=> b!4951680 m!5976702))

(declare-fun m!5976704 () Bool)

(assert (=> b!4951681 m!5976704))

(declare-fun m!5976706 () Bool)

(assert (=> b!4951681 m!5976706))

(assert (=> b!4951681 m!5976280))

(assert (=> b!4951681 m!5976280))

(declare-fun m!5976708 () Bool)

(assert (=> b!4951681 m!5976708))

(assert (=> b!4951407 d!1594874))

(declare-fun d!1594876 () Bool)

(declare-fun lt!2043386 () Int)

(assert (=> d!1594876 (>= lt!2043386 0)))

(declare-fun e!3093719 () Int)

(assert (=> d!1594876 (= lt!2043386 e!3093719)))

(declare-fun c!845594 () Bool)

(assert (=> d!1594876 (= c!845594 (is-Nil!57013 (_1!34101 (findLongestMatchInnerZipper!81 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2043183 totalInputSize!132))))))

(assert (=> d!1594876 (= (size!37842 (_1!34101 (findLongestMatchInnerZipper!81 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2043183 totalInputSize!132))) lt!2043386)))

(declare-fun b!4951682 () Bool)

(assert (=> b!4951682 (= e!3093719 0)))

(declare-fun b!4951683 () Bool)

(assert (=> b!4951683 (= e!3093719 (+ 1 (size!37842 (t!367703 (_1!34101 (findLongestMatchInnerZipper!81 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2043183 totalInputSize!132))))))))

(assert (= (and d!1594876 c!845594) b!4951682))

(assert (= (and d!1594876 (not c!845594)) b!4951683))

(declare-fun m!5976710 () Bool)

(assert (=> b!4951683 m!5976710))

(assert (=> b!4951416 d!1594876))

(declare-fun b!4951746 () Bool)

(declare-fun e!3093766 () tuple2!61596)

(declare-fun e!3093767 () tuple2!61596)

(assert (=> b!4951746 (= e!3093766 e!3093767)))

(declare-fun lt!2043486 () tuple2!61596)

(declare-fun call!345741 () tuple2!61596)

(assert (=> b!4951746 (= lt!2043486 call!345741)))

(declare-fun c!845628 () Bool)

(declare-fun isEmpty!30680 (List!57137) Bool)

(assert (=> b!4951746 (= c!845628 (isEmpty!30680 (_1!34101 lt!2043486)))))

(declare-fun b!4951747 () Bool)

(declare-fun c!845624 () Bool)

(declare-fun call!345744 () Bool)

(assert (=> b!4951747 (= c!845624 call!345744)))

(declare-fun lt!2043510 () Unit!147884)

(declare-fun lt!2043489 () Unit!147884)

(assert (=> b!4951747 (= lt!2043510 lt!2043489)))

(declare-fun lt!2043506 () List!57137)

(declare-fun lt!2043507 () C!27238)

(assert (=> b!4951747 (= (++!12485 (++!12485 testedP!110 (Cons!57013 lt!2043507 Nil!57013)) lt!2043506) lt!2043183)))

(assert (=> b!4951747 (= lt!2043489 (lemmaMoveElementToOtherListKeepsConcatEq!1439 testedP!110 lt!2043507 lt!2043506 lt!2043183))))

(assert (=> b!4951747 (= lt!2043506 (tail!9755 testedSuffix!70))))

(assert (=> b!4951747 (= lt!2043507 (head!10620 testedSuffix!70))))

(declare-fun lt!2043500 () Unit!147884)

(declare-fun lt!2043491 () Unit!147884)

(assert (=> b!4951747 (= lt!2043500 lt!2043491)))

(assert (=> b!4951747 (isPrefix!5100 (++!12485 testedP!110 (Cons!57013 (head!10620 (getSuffix!3082 lt!2043183 testedP!110)) Nil!57013)) lt!2043183)))

(assert (=> b!4951747 (= lt!2043491 (lemmaAddHeadSuffixToPrefixStillPrefix!829 testedP!110 lt!2043183))))

(declare-fun lt!2043493 () List!57137)

(assert (=> b!4951747 (= lt!2043493 (++!12485 testedP!110 (Cons!57013 (head!10620 testedSuffix!70) Nil!57013)))))

(declare-fun lt!2043485 () Unit!147884)

(declare-fun e!3093762 () Unit!147884)

(assert (=> b!4951747 (= lt!2043485 e!3093762)))

(declare-fun c!845625 () Bool)

(assert (=> b!4951747 (= c!845625 (= (size!37842 testedP!110) (size!37842 lt!2043183)))))

(declare-fun lt!2043496 () Unit!147884)

(declare-fun lt!2043504 () Unit!147884)

(assert (=> b!4951747 (= lt!2043496 lt!2043504)))

(assert (=> b!4951747 (<= (size!37842 testedP!110) (size!37842 lt!2043183))))

(assert (=> b!4951747 (= lt!2043504 (lemmaIsPrefixThenSmallerEqSize!755 testedP!110 lt!2043183))))

(declare-fun e!3093764 () tuple2!61596)

(assert (=> b!4951747 (= e!3093764 e!3093766)))

(declare-fun b!4951748 () Bool)

(declare-fun e!3093760 () Bool)

(declare-fun lt!2043499 () tuple2!61596)

(assert (=> b!4951748 (= e!3093760 (>= (size!37842 (_1!34101 lt!2043499)) (size!37842 testedP!110)))))

(declare-fun b!4951749 () Bool)

(declare-fun c!845627 () Bool)

(assert (=> b!4951749 (= c!845627 call!345744)))

(declare-fun lt!2043503 () Unit!147884)

(declare-fun lt!2043494 () Unit!147884)

(assert (=> b!4951749 (= lt!2043503 lt!2043494)))

(assert (=> b!4951749 (= lt!2043183 testedP!110)))

(declare-fun call!345742 () Unit!147884)

(assert (=> b!4951749 (= lt!2043494 call!345742)))

(declare-fun lt!2043497 () Unit!147884)

(declare-fun lt!2043490 () Unit!147884)

(assert (=> b!4951749 (= lt!2043497 lt!2043490)))

(declare-fun call!345737 () Bool)

(assert (=> b!4951749 call!345737))

(declare-fun call!345738 () Unit!147884)

(assert (=> b!4951749 (= lt!2043490 call!345738)))

(declare-fun e!3093763 () tuple2!61596)

(assert (=> b!4951749 (= e!3093764 e!3093763)))

(declare-fun bm!345732 () Bool)

(assert (=> bm!345732 (= call!345744 (nullableZipper!865 z!3568))))

(declare-fun b!4951750 () Bool)

(assert (=> b!4951750 (= e!3093767 (tuple2!61597 testedP!110 testedSuffix!70))))

(declare-fun bm!345733 () Bool)

(assert (=> bm!345733 (= call!345742 (lemmaIsPrefixSameLengthThenSameList!1192 lt!2043183 testedP!110 lt!2043183))))

(declare-fun b!4951751 () Bool)

(assert (=> b!4951751 (= e!3093767 lt!2043486)))

(declare-fun call!345739 () (Set Context!6272))

(declare-fun call!345743 () List!57137)

(declare-fun bm!345734 () Bool)

(assert (=> bm!345734 (= call!345741 (findLongestMatchInnerZipper!81 call!345739 lt!2043493 (+ testedPSize!70 1) call!345743 lt!2043183 totalInputSize!132))))

(declare-fun bm!345735 () Bool)

(assert (=> bm!345735 (= call!345738 (lemmaIsPrefixRefl!3440 lt!2043183 lt!2043183))))

(declare-fun b!4951753 () Bool)

(assert (=> b!4951753 (= e!3093763 (tuple2!61597 testedP!110 Nil!57013))))

(declare-fun bm!345736 () Bool)

(assert (=> bm!345736 (= call!345743 (tail!9755 testedSuffix!70))))

(declare-fun b!4951754 () Bool)

(declare-fun e!3093761 () Bool)

(assert (=> b!4951754 (= e!3093761 e!3093760)))

(declare-fun res!2112644 () Bool)

(assert (=> b!4951754 (=> res!2112644 e!3093760)))

(assert (=> b!4951754 (= res!2112644 (isEmpty!30680 (_1!34101 lt!2043499)))))

(declare-fun b!4951755 () Bool)

(declare-fun e!3093765 () tuple2!61596)

(assert (=> b!4951755 (= e!3093765 e!3093764)))

(declare-fun c!845629 () Bool)

(assert (=> b!4951755 (= c!845629 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4951756 () Bool)

(declare-fun Unit!147894 () Unit!147884)

(assert (=> b!4951756 (= e!3093762 Unit!147894)))

(declare-fun bm!345737 () Bool)

(assert (=> bm!345737 (= call!345737 (isPrefix!5100 lt!2043183 lt!2043183))))

(declare-fun b!4951757 () Bool)

(assert (=> b!4951757 (= e!3093763 (tuple2!61597 Nil!57013 lt!2043183))))

(declare-fun b!4951758 () Bool)

(assert (=> b!4951758 (= e!3093766 call!345741)))

(declare-fun bm!345738 () Bool)

(declare-fun call!345740 () C!27238)

(assert (=> bm!345738 (= call!345739 (derivationStepZipper!614 z!3568 call!345740))))

(declare-fun b!4951759 () Bool)

(declare-fun Unit!147895 () Unit!147884)

(assert (=> b!4951759 (= e!3093762 Unit!147895)))

(declare-fun lt!2043501 () Unit!147884)

(assert (=> b!4951759 (= lt!2043501 call!345738)))

(assert (=> b!4951759 call!345737))

(declare-fun lt!2043509 () Unit!147884)

(assert (=> b!4951759 (= lt!2043509 lt!2043501)))

(declare-fun lt!2043498 () Unit!147884)

(assert (=> b!4951759 (= lt!2043498 call!345742)))

(assert (=> b!4951759 (= lt!2043183 testedP!110)))

(declare-fun lt!2043505 () Unit!147884)

(assert (=> b!4951759 (= lt!2043505 lt!2043498)))

(assert (=> b!4951759 false))

(declare-fun bm!345739 () Bool)

(assert (=> bm!345739 (= call!345740 (head!10620 testedSuffix!70))))

(declare-fun d!1594878 () Bool)

(assert (=> d!1594878 e!3093761))

(declare-fun res!2112643 () Bool)

(assert (=> d!1594878 (=> (not res!2112643) (not e!3093761))))

(assert (=> d!1594878 (= res!2112643 (= (++!12485 (_1!34101 lt!2043499) (_2!34101 lt!2043499)) lt!2043183))))

(assert (=> d!1594878 (= lt!2043499 e!3093765)))

(declare-fun c!845626 () Bool)

(assert (=> d!1594878 (= c!845626 (lostCauseZipper!812 z!3568))))

(declare-fun lt!2043488 () Unit!147884)

(declare-fun Unit!147896 () Unit!147884)

(assert (=> d!1594878 (= lt!2043488 Unit!147896)))

(assert (=> d!1594878 (= (getSuffix!3082 lt!2043183 testedP!110) testedSuffix!70)))

(declare-fun lt!2043502 () Unit!147884)

(declare-fun lt!2043508 () Unit!147884)

(assert (=> d!1594878 (= lt!2043502 lt!2043508)))

(declare-fun lt!2043492 () List!57137)

(assert (=> d!1594878 (= testedSuffix!70 lt!2043492)))

(assert (=> d!1594878 (= lt!2043508 (lemmaSamePrefixThenSameSuffix!2492 testedP!110 testedSuffix!70 testedP!110 lt!2043492 lt!2043183))))

(assert (=> d!1594878 (= lt!2043492 (getSuffix!3082 lt!2043183 testedP!110))))

(declare-fun lt!2043487 () Unit!147884)

(declare-fun lt!2043495 () Unit!147884)

(assert (=> d!1594878 (= lt!2043487 lt!2043495)))

(assert (=> d!1594878 (isPrefix!5100 testedP!110 (++!12485 testedP!110 testedSuffix!70))))

(assert (=> d!1594878 (= lt!2043495 (lemmaConcatTwoListThenFirstIsPrefix!3324 testedP!110 testedSuffix!70))))

(assert (=> d!1594878 (= (++!12485 testedP!110 testedSuffix!70) lt!2043183)))

(assert (=> d!1594878 (= (findLongestMatchInnerZipper!81 z!3568 testedP!110 testedPSize!70 testedSuffix!70 lt!2043183 totalInputSize!132) lt!2043499)))

(declare-fun b!4951752 () Bool)

(assert (=> b!4951752 (= e!3093765 (tuple2!61597 Nil!57013 lt!2043183))))

(assert (= (and d!1594878 c!845626) b!4951752))

(assert (= (and d!1594878 (not c!845626)) b!4951755))

(assert (= (and b!4951755 c!845629) b!4951749))

(assert (= (and b!4951755 (not c!845629)) b!4951747))

(assert (= (and b!4951749 c!845627) b!4951753))

(assert (= (and b!4951749 (not c!845627)) b!4951757))

(assert (= (and b!4951747 c!845625) b!4951759))

(assert (= (and b!4951747 (not c!845625)) b!4951756))

(assert (= (and b!4951747 c!845624) b!4951746))

(assert (= (and b!4951747 (not c!845624)) b!4951758))

(assert (= (and b!4951746 c!845628) b!4951750))

(assert (= (and b!4951746 (not c!845628)) b!4951751))

(assert (= (or b!4951746 b!4951758) bm!345736))

(assert (= (or b!4951746 b!4951758) bm!345739))

(assert (= (or b!4951746 b!4951758) bm!345738))

(assert (= (or b!4951746 b!4951758) bm!345734))

(assert (= (or b!4951749 b!4951759) bm!345735))

(assert (= (or b!4951749 b!4951759) bm!345737))

(assert (= (or b!4951749 b!4951759) bm!345733))

(assert (= (or b!4951749 b!4951747) bm!345732))

(assert (= (and d!1594878 res!2112643) b!4951754))

(assert (= (and b!4951754 (not res!2112644)) b!4951748))

(declare-fun m!5976792 () Bool)

(assert (=> b!4951746 m!5976792))

(declare-fun m!5976794 () Bool)

(assert (=> b!4951754 m!5976794))

(assert (=> bm!345735 m!5976312))

(assert (=> bm!345737 m!5976314))

(assert (=> bm!345732 m!5976326))

(assert (=> bm!345739 m!5976290))

(assert (=> b!4951747 m!5976272))

(declare-fun m!5976798 () Bool)

(assert (=> b!4951747 m!5976798))

(assert (=> b!4951747 m!5976338))

(assert (=> b!4951747 m!5976342))

(assert (=> b!4951747 m!5976290))

(assert (=> b!4951747 m!5976276))

(assert (=> b!4951747 m!5976612))

(declare-fun m!5976800 () Bool)

(assert (=> b!4951747 m!5976800))

(assert (=> b!4951747 m!5976612))

(assert (=> b!4951747 m!5976618))

(declare-fun m!5976802 () Bool)

(assert (=> b!4951747 m!5976802))

(assert (=> b!4951747 m!5976270))

(assert (=> b!4951747 m!5976798))

(declare-fun m!5976804 () Bool)

(assert (=> b!4951747 m!5976804))

(assert (=> b!4951747 m!5976274))

(assert (=> b!4951747 m!5976270))

(assert (=> b!4951747 m!5976616))

(declare-fun m!5976806 () Bool)

(assert (=> bm!345734 m!5976806))

(declare-fun m!5976808 () Bool)

(assert (=> bm!345738 m!5976808))

(declare-fun m!5976810 () Bool)

(assert (=> b!4951748 m!5976810))

(assert (=> b!4951748 m!5976272))

(assert (=> bm!345733 m!5976316))

(assert (=> bm!345736 m!5976338))

(declare-fun m!5976812 () Bool)

(assert (=> d!1594878 m!5976812))

(declare-fun m!5976814 () Bool)

(assert (=> d!1594878 m!5976814))

(assert (=> d!1594878 m!5976282))

(assert (=> d!1594878 m!5976494))

(assert (=> d!1594878 m!5976266))

(assert (=> d!1594878 m!5976270))

(assert (=> d!1594878 m!5976282))

(assert (=> d!1594878 m!5976348))

(assert (=> b!4951416 d!1594878))

(declare-fun call!345795 () List!57137)

(declare-fun call!345791 () Int)

(declare-fun call!345797 () (Set Context!6272))

(declare-fun call!345794 () List!57137)

(declare-fun bm!345784 () Bool)

(assert (=> bm!345784 (= call!345791 (findLongestMatchInnerZipperFast!106 call!345797 call!345794 (+ 1 testedPSize!70 1) call!345795 totalInput!685 totalInputSize!132))))

(declare-fun bm!345785 () Bool)

(declare-fun call!345798 () C!27238)

(assert (=> bm!345785 (= call!345798 (apply!13855 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun bm!345786 () Bool)

(declare-fun call!345793 () Bool)

(assert (=> bm!345786 (= call!345793 (nullableZipper!865 (derivationStepZipper!614 z!3568 lt!2043196)))))

(declare-fun b!4951824 () Bool)

(declare-fun e!3093806 () Int)

(declare-fun e!3093807 () Int)

(assert (=> b!4951824 (= e!3093806 e!3093807)))

(declare-fun c!845662 () Bool)

(assert (=> b!4951824 (= c!845662 (= (+ 1 testedPSize!70) totalInputSize!132))))

(declare-fun b!4951826 () Bool)

(declare-fun c!845663 () Bool)

(assert (=> b!4951826 (= c!845663 call!345793)))

(declare-fun lt!2043696 () Unit!147884)

(declare-fun lt!2043679 () Unit!147884)

(assert (=> b!4951826 (= lt!2043696 lt!2043679)))

(declare-fun lt!2043688 () List!57137)

(assert (=> b!4951826 (= lt!2043688 lt!2043185)))

(declare-fun call!345789 () Unit!147884)

(assert (=> b!4951826 (= lt!2043679 call!345789)))

(declare-fun call!345796 () List!57137)

(assert (=> b!4951826 (= lt!2043688 call!345796)))

(declare-fun lt!2043712 () Unit!147884)

(declare-fun lt!2043700 () Unit!147884)

(assert (=> b!4951826 (= lt!2043712 lt!2043700)))

(declare-fun call!345792 () Bool)

(assert (=> b!4951826 call!345792))

(declare-fun call!345790 () Unit!147884)

(assert (=> b!4951826 (= lt!2043700 call!345790)))

(declare-fun lt!2043707 () List!57137)

(assert (=> b!4951826 (= lt!2043707 call!345796)))

(declare-fun lt!2043697 () List!57137)

(assert (=> b!4951826 (= lt!2043697 call!345796)))

(declare-fun e!3093804 () Int)

(assert (=> b!4951826 (= e!3093807 e!3093804)))

(declare-fun b!4951827 () Bool)

(declare-fun e!3093805 () Unit!147884)

(declare-fun Unit!147897 () Unit!147884)

(assert (=> b!4951827 (= e!3093805 Unit!147897)))

(declare-fun lt!2043718 () List!57137)

(assert (=> b!4951827 (= lt!2043718 call!345796)))

(declare-fun lt!2043677 () List!57137)

(assert (=> b!4951827 (= lt!2043677 call!345796)))

(declare-fun lt!2043715 () Unit!147884)

(assert (=> b!4951827 (= lt!2043715 call!345790)))

(assert (=> b!4951827 call!345792))

(declare-fun lt!2043694 () Unit!147884)

(assert (=> b!4951827 (= lt!2043694 lt!2043715)))

(declare-fun lt!2043710 () List!57137)

(assert (=> b!4951827 (= lt!2043710 call!345796)))

(declare-fun lt!2043690 () Unit!147884)

(assert (=> b!4951827 (= lt!2043690 call!345789)))

(assert (=> b!4951827 (= lt!2043710 lt!2043185)))

(declare-fun lt!2043706 () Unit!147884)

(assert (=> b!4951827 (= lt!2043706 lt!2043690)))

(assert (=> b!4951827 false))

(declare-fun bm!345787 () Bool)

(assert (=> bm!345787 (= call!345795 (tail!9755 lt!2043181))))

(declare-fun bm!345788 () Bool)

(assert (=> bm!345788 (= call!345790 (lemmaIsPrefixRefl!3440 (ite c!845662 lt!2043697 lt!2043718) (ite c!845662 lt!2043707 lt!2043677)))))

(declare-fun b!4951828 () Bool)

(assert (=> b!4951828 (= e!3093806 0)))

(declare-fun b!4951829 () Bool)

(declare-fun c!845660 () Bool)

(assert (=> b!4951829 (= c!845660 call!345793)))

(declare-fun lt!2043704 () Unit!147884)

(declare-fun lt!2043691 () Unit!147884)

(assert (=> b!4951829 (= lt!2043704 lt!2043691)))

(declare-fun lt!2043686 () List!57137)

(declare-fun lt!2043717 () List!57137)

(declare-fun lt!2043713 () C!27238)

(assert (=> b!4951829 (= (++!12485 (++!12485 lt!2043185 (Cons!57013 lt!2043713 Nil!57013)) lt!2043717) lt!2043686)))

(assert (=> b!4951829 (= lt!2043691 (lemmaMoveElementToOtherListKeepsConcatEq!1439 lt!2043185 lt!2043713 lt!2043717 lt!2043686))))

(assert (=> b!4951829 (= lt!2043686 call!345796)))

(assert (=> b!4951829 (= lt!2043717 (tail!9755 lt!2043181))))

(assert (=> b!4951829 (= lt!2043713 (apply!13855 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun lt!2043693 () Unit!147884)

(declare-fun lt!2043683 () Unit!147884)

(assert (=> b!4951829 (= lt!2043693 lt!2043683)))

(declare-fun lt!2043701 () List!57137)

(assert (=> b!4951829 (isPrefix!5100 (++!12485 lt!2043185 (Cons!57013 (head!10620 (getSuffix!3082 lt!2043701 lt!2043185)) Nil!57013)) lt!2043701)))

(assert (=> b!4951829 (= lt!2043683 (lemmaAddHeadSuffixToPrefixStillPrefix!829 lt!2043185 lt!2043701))))

(assert (=> b!4951829 (= lt!2043701 call!345796)))

(declare-fun lt!2043709 () Unit!147884)

(assert (=> b!4951829 (= lt!2043709 e!3093805)))

(declare-fun c!845659 () Bool)

(assert (=> b!4951829 (= c!845659 (= (size!37842 lt!2043185) (size!37841 totalInput!685)))))

(declare-fun lt!2043680 () Unit!147884)

(declare-fun lt!2043714 () Unit!147884)

(assert (=> b!4951829 (= lt!2043680 lt!2043714)))

(declare-fun lt!2043689 () List!57137)

(assert (=> b!4951829 (<= (size!37842 lt!2043185) (size!37842 lt!2043689))))

(assert (=> b!4951829 (= lt!2043714 (lemmaIsPrefixThenSmallerEqSize!755 lt!2043185 lt!2043689))))

(assert (=> b!4951829 (= lt!2043689 call!345796)))

(declare-fun lt!2043684 () Unit!147884)

(declare-fun lt!2043702 () Unit!147884)

(assert (=> b!4951829 (= lt!2043684 lt!2043702)))

(declare-fun lt!2043678 () List!57137)

(assert (=> b!4951829 (= (head!10620 (drop!2301 lt!2043678 (+ 1 testedPSize!70))) (apply!13856 lt!2043678 (+ 1 testedPSize!70)))))

(assert (=> b!4951829 (= lt!2043702 (lemmaDropApply!1355 lt!2043678 (+ 1 testedPSize!70)))))

(assert (=> b!4951829 (= lt!2043678 call!345796)))

(declare-fun lt!2043685 () Unit!147884)

(declare-fun lt!2043692 () Unit!147884)

(assert (=> b!4951829 (= lt!2043685 lt!2043692)))

(declare-fun lt!2043703 () List!57137)

(declare-fun lt!2043708 () List!57137)

(assert (=> b!4951829 (and (= lt!2043708 lt!2043185) (= lt!2043703 lt!2043181))))

(assert (=> b!4951829 (= lt!2043692 (lemmaConcatSameAndSameSizesThenSameLists!738 lt!2043708 lt!2043703 lt!2043185 lt!2043181))))

(declare-fun lt!2043699 () tuple2!61594)

(assert (=> b!4951829 (= lt!2043703 (list!18190 (_2!34100 lt!2043699)))))

(assert (=> b!4951829 (= lt!2043708 (list!18190 (_1!34100 lt!2043699)))))

(assert (=> b!4951829 (= lt!2043699 (splitAt!419 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun e!3093803 () Int)

(assert (=> b!4951829 (= e!3093807 e!3093803)))

(declare-fun bm!345789 () Bool)

(assert (=> bm!345789 (= call!345792 (isPrefix!5100 (ite c!845662 lt!2043697 lt!2043718) (ite c!845662 lt!2043707 lt!2043677)))))

(declare-fun lt!2043716 () Int)

(declare-fun d!1594916 () Bool)

(assert (=> d!1594916 (= (size!37842 (_1!34101 (findLongestMatchInnerZipper!81 (derivationStepZipper!614 z!3568 lt!2043196) lt!2043185 (+ 1 testedPSize!70) lt!2043181 (list!18190 totalInput!685) totalInputSize!132))) lt!2043716)))

(assert (=> d!1594916 (= lt!2043716 e!3093806)))

(declare-fun c!845661 () Bool)

(assert (=> d!1594916 (= c!845661 (lostCauseZipper!812 (derivationStepZipper!614 z!3568 lt!2043196)))))

(declare-fun lt!2043681 () Unit!147884)

(declare-fun Unit!147898 () Unit!147884)

(assert (=> d!1594916 (= lt!2043681 Unit!147898)))

(assert (=> d!1594916 (= (getSuffix!3082 (list!18190 totalInput!685) lt!2043185) lt!2043181)))

(declare-fun lt!2043695 () Unit!147884)

(declare-fun lt!2043687 () Unit!147884)

(assert (=> d!1594916 (= lt!2043695 lt!2043687)))

(declare-fun lt!2043711 () List!57137)

(assert (=> d!1594916 (= lt!2043181 lt!2043711)))

(assert (=> d!1594916 (= lt!2043687 (lemmaSamePrefixThenSameSuffix!2492 lt!2043185 lt!2043181 lt!2043185 lt!2043711 (list!18190 totalInput!685)))))

(assert (=> d!1594916 (= lt!2043711 (getSuffix!3082 (list!18190 totalInput!685) lt!2043185))))

(declare-fun lt!2043682 () Unit!147884)

(declare-fun lt!2043705 () Unit!147884)

(assert (=> d!1594916 (= lt!2043682 lt!2043705)))

(assert (=> d!1594916 (isPrefix!5100 lt!2043185 (++!12485 lt!2043185 lt!2043181))))

(assert (=> d!1594916 (= lt!2043705 (lemmaConcatTwoListThenFirstIsPrefix!3324 lt!2043185 lt!2043181))))

(assert (=> d!1594916 (= (++!12485 lt!2043185 lt!2043181) (list!18190 totalInput!685))))

(assert (=> d!1594916 (= (findLongestMatchInnerZipperFast!106 (derivationStepZipper!614 z!3568 lt!2043196) lt!2043185 (+ 1 testedPSize!70) lt!2043181 totalInput!685 totalInputSize!132) lt!2043716)))

(declare-fun b!4951825 () Bool)

(declare-fun lt!2043698 () Int)

(assert (=> b!4951825 (= e!3093803 (ite (= lt!2043698 0) (+ 1 testedPSize!70) lt!2043698))))

(assert (=> b!4951825 (= lt!2043698 call!345791)))

(declare-fun b!4951830 () Bool)

(assert (=> b!4951830 (= e!3093804 0)))

(declare-fun bm!345790 () Bool)

(assert (=> bm!345790 (= call!345796 (list!18190 totalInput!685))))

(declare-fun bm!345791 () Bool)

(assert (=> bm!345791 (= call!345789 (lemmaIsPrefixSameLengthThenSameList!1192 (ite c!845662 lt!2043688 lt!2043710) lt!2043185 call!345796))))

(declare-fun b!4951831 () Bool)

(assert (=> b!4951831 (= e!3093803 call!345791)))

(declare-fun b!4951832 () Bool)

(declare-fun Unit!147899 () Unit!147884)

(assert (=> b!4951832 (= e!3093805 Unit!147899)))

(declare-fun bm!345792 () Bool)

(assert (=> bm!345792 (= call!345797 (derivationStepZipper!614 (derivationStepZipper!614 z!3568 lt!2043196) call!345798))))

(declare-fun bm!345793 () Bool)

(assert (=> bm!345793 (= call!345794 (++!12485 lt!2043185 (Cons!57013 call!345798 Nil!57013)))))

(declare-fun b!4951833 () Bool)

(assert (=> b!4951833 (= e!3093804 (+ 1 testedPSize!70))))

(assert (= (and d!1594916 c!845661) b!4951828))

(assert (= (and d!1594916 (not c!845661)) b!4951824))

(assert (= (and b!4951824 c!845662) b!4951826))

(assert (= (and b!4951824 (not c!845662)) b!4951829))

(assert (= (and b!4951826 c!845663) b!4951833))

(assert (= (and b!4951826 (not c!845663)) b!4951830))

(assert (= (and b!4951829 c!845659) b!4951827))

(assert (= (and b!4951829 (not c!845659)) b!4951832))

(assert (= (and b!4951829 c!845660) b!4951825))

(assert (= (and b!4951829 (not c!845660)) b!4951831))

(assert (= (or b!4951825 b!4951831) bm!345785))

(assert (= (or b!4951825 b!4951831) bm!345787))

(assert (= (or b!4951825 b!4951831) bm!345793))

(assert (= (or b!4951825 b!4951831) bm!345792))

(assert (= (or b!4951825 b!4951831) bm!345784))

(assert (= (or b!4951826 b!4951827) bm!345789))

(assert (= (or b!4951826 b!4951827) bm!345788))

(assert (= (or b!4951826 b!4951827 b!4951829) bm!345790))

(assert (= (or b!4951826 b!4951829) bm!345786))

(assert (= (or b!4951826 b!4951827) bm!345791))

(declare-fun m!5976838 () Bool)

(assert (=> bm!345789 m!5976838))

(declare-fun m!5976840 () Bool)

(assert (=> bm!345788 m!5976840))

(declare-fun m!5976842 () Bool)

(assert (=> bm!345787 m!5976842))

(declare-fun m!5976844 () Bool)

(assert (=> b!4951829 m!5976844))

(declare-fun m!5976846 () Bool)

(assert (=> b!4951829 m!5976846))

(declare-fun m!5976848 () Bool)

(assert (=> b!4951829 m!5976848))

(declare-fun m!5976850 () Bool)

(assert (=> b!4951829 m!5976850))

(declare-fun m!5976852 () Bool)

(assert (=> b!4951829 m!5976852))

(declare-fun m!5976854 () Bool)

(assert (=> b!4951829 m!5976854))

(declare-fun m!5976856 () Bool)

(assert (=> b!4951829 m!5976856))

(declare-fun m!5976858 () Bool)

(assert (=> b!4951829 m!5976858))

(declare-fun m!5976860 () Bool)

(assert (=> b!4951829 m!5976860))

(declare-fun m!5976862 () Bool)

(assert (=> b!4951829 m!5976862))

(declare-fun m!5976864 () Bool)

(assert (=> b!4951829 m!5976864))

(declare-fun m!5976866 () Bool)

(assert (=> b!4951829 m!5976866))

(declare-fun m!5976868 () Bool)

(assert (=> b!4951829 m!5976868))

(declare-fun m!5976870 () Bool)

(assert (=> b!4951829 m!5976870))

(declare-fun m!5976872 () Bool)

(assert (=> b!4951829 m!5976872))

(assert (=> b!4951829 m!5976864))

(assert (=> b!4951829 m!5976302))

(assert (=> b!4951829 m!5976848))

(declare-fun m!5976874 () Bool)

(assert (=> b!4951829 m!5976874))

(assert (=> b!4951829 m!5976862))

(declare-fun m!5976876 () Bool)

(assert (=> b!4951829 m!5976876))

(assert (=> b!4951829 m!5976842))

(declare-fun m!5976878 () Bool)

(assert (=> b!4951829 m!5976878))

(assert (=> b!4951829 m!5976578))

(assert (=> b!4951829 m!5976860))

(declare-fun m!5976880 () Bool)

(assert (=> b!4951829 m!5976880))

(assert (=> d!1594916 m!5976334))

(declare-fun m!5976882 () Bool)

(assert (=> d!1594916 m!5976882))

(assert (=> d!1594916 m!5976334))

(declare-fun m!5976884 () Bool)

(assert (=> d!1594916 m!5976884))

(assert (=> d!1594916 m!5976322))

(assert (=> d!1594916 m!5976280))

(declare-fun m!5976886 () Bool)

(assert (=> d!1594916 m!5976886))

(assert (=> d!1594916 m!5976280))

(declare-fun m!5976888 () Bool)

(assert (=> d!1594916 m!5976888))

(assert (=> d!1594916 m!5976322))

(declare-fun m!5976890 () Bool)

(assert (=> d!1594916 m!5976890))

(assert (=> d!1594916 m!5976280))

(declare-fun m!5976892 () Bool)

(assert (=> d!1594916 m!5976892))

(assert (=> d!1594916 m!5976280))

(declare-fun m!5976894 () Bool)

(assert (=> d!1594916 m!5976894))

(assert (=> bm!345786 m!5976322))

(declare-fun m!5976896 () Bool)

(assert (=> bm!345786 m!5976896))

(assert (=> bm!345792 m!5976322))

(declare-fun m!5976898 () Bool)

(assert (=> bm!345792 m!5976898))

(declare-fun m!5976900 () Bool)

(assert (=> bm!345793 m!5976900))

(assert (=> bm!345785 m!5976878))

(declare-fun m!5976902 () Bool)

(assert (=> bm!345791 m!5976902))

(assert (=> bm!345790 m!5976280))

(declare-fun m!5976904 () Bool)

(assert (=> bm!345784 m!5976904))

(assert (=> b!4951416 d!1594916))

(declare-fun d!1594920 () Bool)

(assert (=> d!1594920 true))

(declare-fun lambda!247017 () Int)

(declare-fun flatMap!277 ((Set Context!6272) Int) (Set Context!6272))

(assert (=> d!1594920 (= (derivationStepZipper!614 z!3568 lt!2043196) (flatMap!277 z!3568 lambda!247017))))

(declare-fun bs!1182355 () Bool)

(assert (= bs!1182355 d!1594920))

(declare-fun m!5976906 () Bool)

(assert (=> bs!1182355 m!5976906))

(assert (=> b!4951416 d!1594920))

(declare-fun tp!1388134 () Bool)

(declare-fun e!3093813 () Bool)

(declare-fun b!4951844 () Bool)

(declare-fun tp!1388132 () Bool)

(assert (=> b!4951844 (= e!3093813 (and (inv!74309 (left!41602 (c!845516 totalInput!685))) tp!1388134 (inv!74309 (right!41932 (c!845516 totalInput!685))) tp!1388132))))

(declare-fun b!4951846 () Bool)

(declare-fun e!3093812 () Bool)

(declare-fun tp!1388133 () Bool)

(assert (=> b!4951846 (= e!3093812 tp!1388133)))

(declare-fun b!4951845 () Bool)

(declare-fun inv!74317 (IArray!30087) Bool)

(assert (=> b!4951845 (= e!3093813 (and (inv!74317 (xs!18339 (c!845516 totalInput!685))) e!3093812))))

(assert (=> b!4951413 (= tp!1388110 (and (inv!74309 (c!845516 totalInput!685)) e!3093813))))

(assert (= (and b!4951413 (is-Node!15013 (c!845516 totalInput!685))) b!4951844))

(assert (= b!4951845 b!4951846))

(assert (= (and b!4951413 (is-Leaf!24953 (c!845516 totalInput!685))) b!4951845))

(declare-fun m!5976908 () Bool)

(assert (=> b!4951844 m!5976908))

(declare-fun m!5976910 () Bool)

(assert (=> b!4951844 m!5976910))

(declare-fun m!5976912 () Bool)

(assert (=> b!4951845 m!5976912))

(assert (=> b!4951413 m!5976264))

(declare-fun b!4951851 () Bool)

(declare-fun e!3093816 () Bool)

(declare-fun tp!1388139 () Bool)

(declare-fun tp!1388140 () Bool)

(assert (=> b!4951851 (= e!3093816 (and tp!1388139 tp!1388140))))

(assert (=> b!4951400 (= tp!1388107 e!3093816)))

(assert (= (and b!4951400 (is-Cons!57014 (exprs!3636 setElem!28127))) b!4951851))

(declare-fun b!4951856 () Bool)

(declare-fun e!3093819 () Bool)

(declare-fun tp!1388143 () Bool)

(assert (=> b!4951856 (= e!3093819 (and tp_is_empty!36185 tp!1388143))))

(assert (=> b!4951415 (= tp!1388108 e!3093819)))

(assert (= (and b!4951415 (is-Cons!57013 (t!367703 testedSuffix!70))) b!4951856))

(declare-fun condSetEmpty!28133 () Bool)

(assert (=> setNonEmpty!28127 (= condSetEmpty!28133 (= setRest!28127 (as set.empty (Set Context!6272))))))

(declare-fun setRes!28133 () Bool)

(assert (=> setNonEmpty!28127 (= tp!1388109 setRes!28133)))

(declare-fun setIsEmpty!28133 () Bool)

(assert (=> setIsEmpty!28133 setRes!28133))

(declare-fun setNonEmpty!28133 () Bool)

(declare-fun tp!1388148 () Bool)

(declare-fun setElem!28133 () Context!6272)

(declare-fun e!3093822 () Bool)

(assert (=> setNonEmpty!28133 (= setRes!28133 (and tp!1388148 (inv!74308 setElem!28133) e!3093822))))

(declare-fun setRest!28133 () (Set Context!6272))

(assert (=> setNonEmpty!28133 (= setRest!28127 (set.union (set.insert setElem!28133 (as set.empty (Set Context!6272))) setRest!28133))))

(declare-fun b!4951861 () Bool)

(declare-fun tp!1388149 () Bool)

(assert (=> b!4951861 (= e!3093822 tp!1388149)))

(assert (= (and setNonEmpty!28127 condSetEmpty!28133) setIsEmpty!28133))

(assert (= (and setNonEmpty!28127 (not condSetEmpty!28133)) setNonEmpty!28133))

(assert (= setNonEmpty!28133 b!4951861))

(declare-fun m!5976914 () Bool)

(assert (=> setNonEmpty!28133 m!5976914))

(declare-fun b!4951862 () Bool)

(declare-fun e!3093823 () Bool)

(declare-fun tp!1388150 () Bool)

(assert (=> b!4951862 (= e!3093823 (and tp_is_empty!36185 tp!1388150))))

(assert (=> b!4951408 (= tp!1388106 e!3093823)))

(assert (= (and b!4951408 (is-Cons!57013 (t!367703 testedP!110))) b!4951862))

(push 1)

(assert (not bm!345792))

(assert (not bm!345736))

(assert (not d!1594840))

(assert (not b!4951653))

(assert (not b!4951851))

(assert (not b!4951503))

(assert (not b!4951681))

(assert (not b!4951632))

(assert (not b!4951629))

(assert (not bm!345793))

(assert (not b!4951748))

(assert (not d!1594870))

(assert (not d!1594878))

(assert (not b!4951518))

(assert (not b!4951413))

(assert (not b!4951569))

(assert (not d!1594854))

(assert (not b!4951671))

(assert (not d!1594824))

(assert (not b!4951844))

(assert (not b!4951661))

(assert (not bm!345785))

(assert (not b!4951673))

(assert (not b!4951517))

(assert (not bm!345732))

(assert (not d!1594778))

(assert (not b!4951562))

(assert (not b!4951747))

(assert (not b!4951559))

(assert (not bm!345790))

(assert (not b!4951564))

(assert (not bm!345739))

(assert (not b!4951558))

(assert (not d!1594866))

(assert (not bm!345737))

(assert (not d!1594874))

(assert (not d!1594860))

(assert (not bm!345789))

(assert (not d!1594868))

(assert (not b!4951633))

(assert (not b!4951845))

(assert (not d!1594916))

(assert (not b!4951628))

(assert (not b!4951680))

(assert (not b!4951647))

(assert (not b!4951862))

(assert (not d!1594772))

(assert (not d!1594846))

(assert (not d!1594784))

(assert (not b!4951516))

(assert (not d!1594848))

(assert (not d!1594920))

(assert (not d!1594838))

(assert (not b!4951637))

(assert (not b!4951856))

(assert (not bm!345735))

(assert (not bm!345700))

(assert (not bm!345787))

(assert (not b!4951641))

(assert (not b!4951548))

(assert (not d!1594850))

(assert (not b!4951669))

(assert (not d!1594792))

(assert (not d!1594830))

(assert (not bm!345786))

(assert (not b!4951648))

(assert (not b!4951638))

(assert (not b!4951829))

(assert (not b!4951663))

(assert (not d!1594828))

(assert (not b!4951624))

(assert (not d!1594856))

(assert (not bm!345734))

(assert (not b!4951499))

(assert (not d!1594782))

(assert (not d!1594764))

(assert (not b!4951636))

(assert (not bm!345784))

(assert (not d!1594822))

(assert (not b!4951683))

(assert (not bm!345733))

(assert (not bm!345791))

(assert (not d!1594852))

(assert (not bm!345738))

(assert (not bm!345709))

(assert (not d!1594836))

(assert (not d!1594798))

(assert (not d!1594872))

(assert (not setNonEmpty!28133))

(assert (not bm!345708))

(assert (not d!1594826))

(assert tp_is_empty!36185)

(assert (not b!4951625))

(assert (not b!4951846))

(assert (not b!4951563))

(assert (not b!4951509))

(assert (not b!4951746))

(assert (not b!4951640))

(assert (not d!1594844))

(assert (not b!4951560))

(assert (not b!4951754))

(assert (not b!4951570))

(assert (not b!4951674))

(assert (not b!4951861))

(assert (not bm!345788))

(assert (not b!4951571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

