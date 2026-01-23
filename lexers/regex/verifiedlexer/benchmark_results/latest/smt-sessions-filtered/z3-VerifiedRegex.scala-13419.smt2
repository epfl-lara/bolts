; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726142 () Bool)

(assert start!726142)

(declare-fun b!7503574 () Bool)

(declare-fun e!4473821 () Bool)

(assert (=> b!7503574 (= e!4473821 true)))

(declare-fun lt!2633419 () Int)

(declare-datatypes ((C!39676 0))(
  ( (C!39677 (val!30236 Int)) )
))
(declare-datatypes ((List!72447 0))(
  ( (Nil!72323) (Cons!72323 (h!78771 C!39676) (t!387016 List!72447)) )
))
(declare-fun lt!2633427 () List!72447)

(declare-fun size!42246 (List!72447) Int)

(assert (=> b!7503574 (= lt!2633419 (size!42246 lt!2633427))))

(declare-fun b!7503575 () Bool)

(declare-fun e!4473819 () Bool)

(declare-fun e!4473826 () Bool)

(assert (=> b!7503575 (= e!4473819 e!4473826)))

(declare-fun res!3010253 () Bool)

(assert (=> b!7503575 (=> res!3010253 e!4473826)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19685 0))(
  ( (ElementMatch!19685 (c!1385244 C!39676)) (Concat!28530 (regOne!39882 Regex!19685) (regTwo!39882 Regex!19685)) (EmptyExpr!19685) (Star!19685 (reg!20014 Regex!19685)) (EmptyLang!19685) (Union!19685 (regOne!39883 Regex!19685) (regTwo!39883 Regex!19685)) )
))
(declare-datatypes ((List!72448 0))(
  ( (Nil!72324) (Cons!72324 (h!78772 Regex!19685) (t!387017 List!72448)) )
))
(declare-datatypes ((Context!16874 0))(
  ( (Context!16875 (exprs!8937 List!72448)) )
))
(declare-fun z!3716 () (InoxSet Context!16874))

(declare-fun lostCauseZipper!1373 ((InoxSet Context!16874)) Bool)

(assert (=> b!7503575 (= res!3010253 (lostCauseZipper!1373 z!3716))))

(declare-fun testedSuffix!164 () List!72447)

(declare-fun lt!2633424 () List!72447)

(assert (=> b!7503575 (and (= testedSuffix!164 lt!2633424) (= lt!2633424 testedSuffix!164))))

(declare-fun totalInput!779 () List!72447)

(declare-datatypes ((Unit!166278 0))(
  ( (Unit!166279) )
))
(declare-fun lt!2633428 () Unit!166278)

(declare-fun testedP!204 () List!72447)

(declare-fun lemmaSamePrefixThenSameSuffix!2776 (List!72447 List!72447 List!72447 List!72447 List!72447) Unit!166278)

(assert (=> b!7503575 (= lt!2633428 (lemmaSamePrefixThenSameSuffix!2776 testedP!204 testedSuffix!164 testedP!204 lt!2633424 totalInput!779))))

(declare-fun getSuffix!3473 (List!72447 List!72447) List!72447)

(assert (=> b!7503575 (= lt!2633424 (getSuffix!3473 totalInput!779 testedP!204))))

(declare-fun setNonEmpty!56908 () Bool)

(declare-fun tp!2178149 () Bool)

(declare-fun setElem!56908 () Context!16874)

(declare-fun setRes!56908 () Bool)

(declare-fun e!4473827 () Bool)

(declare-fun inv!92427 (Context!16874) Bool)

(assert (=> setNonEmpty!56908 (= setRes!56908 (and tp!2178149 (inv!92427 setElem!56908) e!4473827))))

(declare-fun setRest!56908 () (InoxSet Context!16874))

(assert (=> setNonEmpty!56908 (= z!3716 ((_ map or) (store ((as const (Array Context!16874 Bool)) false) setElem!56908 true) setRest!56908))))

(declare-fun b!7503576 () Bool)

(declare-fun e!4473824 () Unit!166278)

(declare-fun Unit!166280 () Unit!166278)

(assert (=> b!7503576 (= e!4473824 Unit!166280)))

(declare-fun b!7503577 () Bool)

(declare-fun e!4473822 () Bool)

(declare-fun e!4473820 () Bool)

(assert (=> b!7503577 (= e!4473822 e!4473820)))

(declare-fun res!3010260 () Bool)

(assert (=> b!7503577 (=> (not res!3010260) (not e!4473820))))

(declare-fun totalInputSize!226 () Int)

(declare-fun lt!2633420 () Int)

(assert (=> b!7503577 (= res!3010260 (= totalInputSize!226 lt!2633420))))

(assert (=> b!7503577 (= lt!2633420 (size!42246 totalInput!779))))

(declare-fun b!7503578 () Bool)

(assert (=> b!7503578 (= e!4473820 (not e!4473819))))

(declare-fun res!3010256 () Bool)

(assert (=> b!7503578 (=> res!3010256 e!4473819)))

(declare-fun isPrefix!5971 (List!72447 List!72447) Bool)

(assert (=> b!7503578 (= res!3010256 (not (isPrefix!5971 testedP!204 totalInput!779)))))

(declare-fun lt!2633422 () List!72447)

(assert (=> b!7503578 (isPrefix!5971 testedP!204 lt!2633422)))

(declare-fun lt!2633426 () Unit!166278)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3684 (List!72447 List!72447) Unit!166278)

(assert (=> b!7503578 (= lt!2633426 (lemmaConcatTwoListThenFirstIsPrefix!3684 testedP!204 testedSuffix!164))))

(declare-fun b!7503580 () Bool)

(declare-fun e!4473823 () Bool)

(assert (=> b!7503580 (= e!4473826 e!4473823)))

(declare-fun res!3010257 () Bool)

(assert (=> b!7503580 (=> res!3010257 e!4473823)))

(declare-fun lt!2633416 () Int)

(assert (=> b!7503580 (= res!3010257 (>= lt!2633416 lt!2633420))))

(declare-fun lt!2633415 () Unit!166278)

(assert (=> b!7503580 (= lt!2633415 e!4473824)))

(declare-fun c!1385243 () Bool)

(assert (=> b!7503580 (= c!1385243 (= lt!2633416 lt!2633420))))

(assert (=> b!7503580 (<= lt!2633416 lt!2633420)))

(declare-fun lt!2633417 () Unit!166278)

(declare-fun lemmaIsPrefixThenSmallerEqSize!976 (List!72447 List!72447) Unit!166278)

(assert (=> b!7503580 (= lt!2633417 (lemmaIsPrefixThenSmallerEqSize!976 testedP!204 totalInput!779))))

(declare-fun b!7503581 () Bool)

(declare-fun tp!2178152 () Bool)

(assert (=> b!7503581 (= e!4473827 tp!2178152)))

(declare-fun b!7503582 () Bool)

(declare-fun e!4473828 () Bool)

(declare-fun tp_is_empty!49691 () Bool)

(declare-fun tp!2178150 () Bool)

(assert (=> b!7503582 (= e!4473828 (and tp_is_empty!49691 tp!2178150))))

(declare-fun b!7503583 () Bool)

(declare-fun e!4473829 () Bool)

(declare-fun tp!2178151 () Bool)

(assert (=> b!7503583 (= e!4473829 (and tp_is_empty!49691 tp!2178151))))

(declare-fun b!7503584 () Bool)

(declare-fun res!3010254 () Bool)

(assert (=> b!7503584 (=> res!3010254 e!4473826)))

(declare-fun testedPSize!164 () Int)

(assert (=> b!7503584 (= res!3010254 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7503585 () Bool)

(declare-fun Unit!166281 () Unit!166278)

(assert (=> b!7503585 (= e!4473824 Unit!166281)))

(declare-fun lt!2633423 () Unit!166278)

(declare-fun lemmaIsPrefixRefl!3820 (List!72447 List!72447) Unit!166278)

(assert (=> b!7503585 (= lt!2633423 (lemmaIsPrefixRefl!3820 totalInput!779 totalInput!779))))

(assert (=> b!7503585 (isPrefix!5971 totalInput!779 totalInput!779)))

(declare-fun lt!2633421 () Unit!166278)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1474 (List!72447 List!72447 List!72447) Unit!166278)

(assert (=> b!7503585 (= lt!2633421 (lemmaIsPrefixSameLengthThenSameList!1474 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7503585 false))

(declare-fun b!7503586 () Bool)

(assert (=> b!7503586 (= e!4473823 e!4473821)))

(declare-fun res!3010258 () Bool)

(assert (=> b!7503586 (=> res!3010258 e!4473821)))

(declare-fun nullableZipper!3165 ((InoxSet Context!16874)) Bool)

(assert (=> b!7503586 (= res!3010258 (not (nullableZipper!3165 z!3716)))))

(declare-fun lt!2633413 () List!72447)

(declare-fun ++!17304 (List!72447 List!72447) List!72447)

(assert (=> b!7503586 (= (++!17304 lt!2633427 lt!2633413) totalInput!779)))

(declare-fun lt!2633418 () C!39676)

(declare-fun lt!2633425 () Unit!166278)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3145 (List!72447 C!39676 List!72447 List!72447) Unit!166278)

(assert (=> b!7503586 (= lt!2633425 (lemmaMoveElementToOtherListKeepsConcatEq!3145 testedP!204 lt!2633418 lt!2633413 totalInput!779))))

(declare-fun tail!14977 (List!72447) List!72447)

(assert (=> b!7503586 (= lt!2633413 (tail!14977 testedSuffix!164))))

(declare-fun head!15411 (List!72447) C!39676)

(assert (=> b!7503586 (isPrefix!5971 (++!17304 testedP!204 (Cons!72323 (head!15411 lt!2633424) Nil!72323)) totalInput!779)))

(declare-fun lt!2633414 () Unit!166278)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1112 (List!72447 List!72447) Unit!166278)

(assert (=> b!7503586 (= lt!2633414 (lemmaAddHeadSuffixToPrefixStillPrefix!1112 testedP!204 totalInput!779))))

(assert (=> b!7503586 (= lt!2633427 (++!17304 testedP!204 (Cons!72323 lt!2633418 Nil!72323)))))

(assert (=> b!7503586 (= lt!2633418 (head!15411 testedSuffix!164))))

(declare-fun res!3010259 () Bool)

(declare-fun e!4473825 () Bool)

(assert (=> start!726142 (=> (not res!3010259) (not e!4473825))))

(assert (=> start!726142 (= res!3010259 (= lt!2633422 totalInput!779))))

(assert (=> start!726142 (= lt!2633422 (++!17304 testedP!204 testedSuffix!164))))

(assert (=> start!726142 e!4473825))

(assert (=> start!726142 e!4473828))

(assert (=> start!726142 true))

(declare-fun e!4473830 () Bool)

(assert (=> start!726142 e!4473830))

(assert (=> start!726142 e!4473829))

(declare-fun condSetEmpty!56908 () Bool)

(assert (=> start!726142 (= condSetEmpty!56908 (= z!3716 ((as const (Array Context!16874 Bool)) false)))))

(assert (=> start!726142 setRes!56908))

(declare-fun b!7503579 () Bool)

(declare-fun tp!2178153 () Bool)

(assert (=> b!7503579 (= e!4473830 (and tp_is_empty!49691 tp!2178153))))

(declare-fun setIsEmpty!56908 () Bool)

(assert (=> setIsEmpty!56908 setRes!56908))

(declare-fun b!7503587 () Bool)

(assert (=> b!7503587 (= e!4473825 e!4473822)))

(declare-fun res!3010255 () Bool)

(assert (=> b!7503587 (=> (not res!3010255) (not e!4473822))))

(assert (=> b!7503587 (= res!3010255 (= testedPSize!164 lt!2633416))))

(assert (=> b!7503587 (= lt!2633416 (size!42246 testedP!204))))

(assert (= (and start!726142 res!3010259) b!7503587))

(assert (= (and b!7503587 res!3010255) b!7503577))

(assert (= (and b!7503577 res!3010260) b!7503578))

(assert (= (and b!7503578 (not res!3010256)) b!7503575))

(assert (= (and b!7503575 (not res!3010253)) b!7503584))

(assert (= (and b!7503584 (not res!3010254)) b!7503580))

(assert (= (and b!7503580 c!1385243) b!7503585))

(assert (= (and b!7503580 (not c!1385243)) b!7503576))

(assert (= (and b!7503580 (not res!3010257)) b!7503586))

(assert (= (and b!7503586 (not res!3010258)) b!7503574))

(get-info :version)

(assert (= (and start!726142 ((_ is Cons!72323) testedSuffix!164)) b!7503582))

(assert (= (and start!726142 ((_ is Cons!72323) totalInput!779)) b!7503579))

(assert (= (and start!726142 ((_ is Cons!72323) testedP!204)) b!7503583))

(assert (= (and start!726142 condSetEmpty!56908) setIsEmpty!56908))

(assert (= (and start!726142 (not condSetEmpty!56908)) setNonEmpty!56908))

(assert (= setNonEmpty!56908 b!7503581))

(declare-fun m!8085544 () Bool)

(assert (=> b!7503575 m!8085544))

(declare-fun m!8085546 () Bool)

(assert (=> b!7503575 m!8085546))

(declare-fun m!8085548 () Bool)

(assert (=> b!7503575 m!8085548))

(declare-fun m!8085550 () Bool)

(assert (=> start!726142 m!8085550))

(declare-fun m!8085552 () Bool)

(assert (=> b!7503586 m!8085552))

(declare-fun m!8085554 () Bool)

(assert (=> b!7503586 m!8085554))

(declare-fun m!8085556 () Bool)

(assert (=> b!7503586 m!8085556))

(declare-fun m!8085558 () Bool)

(assert (=> b!7503586 m!8085558))

(declare-fun m!8085560 () Bool)

(assert (=> b!7503586 m!8085560))

(declare-fun m!8085562 () Bool)

(assert (=> b!7503586 m!8085562))

(assert (=> b!7503586 m!8085554))

(declare-fun m!8085564 () Bool)

(assert (=> b!7503586 m!8085564))

(declare-fun m!8085566 () Bool)

(assert (=> b!7503586 m!8085566))

(declare-fun m!8085568 () Bool)

(assert (=> b!7503586 m!8085568))

(declare-fun m!8085570 () Bool)

(assert (=> b!7503586 m!8085570))

(declare-fun m!8085572 () Bool)

(assert (=> b!7503587 m!8085572))

(declare-fun m!8085574 () Bool)

(assert (=> b!7503574 m!8085574))

(declare-fun m!8085576 () Bool)

(assert (=> b!7503580 m!8085576))

(declare-fun m!8085578 () Bool)

(assert (=> b!7503578 m!8085578))

(declare-fun m!8085580 () Bool)

(assert (=> b!7503578 m!8085580))

(declare-fun m!8085582 () Bool)

(assert (=> b!7503578 m!8085582))

(declare-fun m!8085584 () Bool)

(assert (=> b!7503585 m!8085584))

(declare-fun m!8085586 () Bool)

(assert (=> b!7503585 m!8085586))

(declare-fun m!8085588 () Bool)

(assert (=> b!7503585 m!8085588))

(declare-fun m!8085590 () Bool)

(assert (=> setNonEmpty!56908 m!8085590))

(declare-fun m!8085592 () Bool)

(assert (=> b!7503577 m!8085592))

(check-sat (not b!7503577) (not b!7503585) (not b!7503587) (not b!7503580) (not b!7503581) (not start!726142) tp_is_empty!49691 (not b!7503578) (not b!7503586) (not setNonEmpty!56908) (not b!7503579) (not b!7503574) (not b!7503582) (not b!7503583) (not b!7503575))
(check-sat)
