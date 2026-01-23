; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!515880 () Bool)

(assert start!515880)

(declare-fun lt!2017395 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!26908 0))(
  ( (C!26909 (val!22788 Int)) )
))
(declare-datatypes ((Regex!13349 0))(
  ( (ElementMatch!13349 (c!835157 C!26908)) (Concat!21922 (regOne!27210 Regex!13349) (regTwo!27210 Regex!13349)) (EmptyExpr!13349) (Star!13349 (reg!13678 Regex!13349)) (EmptyLang!13349) (Union!13349 (regOne!27211 Regex!13349) (regTwo!27211 Regex!13349)) )
))
(declare-datatypes ((List!56757 0))(
  ( (Nil!56633) (Cons!56633 (h!63081 Regex!13349) (t!367163 List!56757)) )
))
(declare-datatypes ((Context!5982 0))(
  ( (Context!5983 (exprs!3491 List!56757)) )
))
(declare-fun z!3559 () (InoxSet Context!5982))

(declare-datatypes ((List!56758 0))(
  ( (Nil!56634) (Cons!56634 (h!63082 C!26908) (t!367164 List!56758)) )
))
(declare-datatypes ((IArray!29757 0))(
  ( (IArray!29758 (innerList!14936 List!56758)) )
))
(declare-datatypes ((Conc!14848 0))(
  ( (Node!14848 (left!41286 Conc!14848) (right!41616 Conc!14848) (csize!29926 Int) (cheight!15059 Int)) (Leaf!24705 (xs!18164 IArray!29757) (csize!29927 Int)) (Empty!14848) )
))
(declare-datatypes ((BalanceConc!29126 0))(
  ( (BalanceConc!29127 (c!835158 Conc!14848)) )
))
(declare-fun input!5492 () BalanceConc!29126)

(declare-fun findLongestMatchInnerZipperFast!61 ((InoxSet Context!5982) List!56758 Int List!56758 BalanceConc!29126 Int) Int)

(declare-fun list!17898 (BalanceConc!29126) List!56758)

(declare-fun size!37403 (BalanceConc!29126) Int)

(assert (=> start!515880 (= lt!2017395 (findLongestMatchInnerZipperFast!61 z!3559 Nil!56634 0 (list!17898 input!5492) input!5492 (size!37403 input!5492)))))

(declare-fun isBalanced!4064 (Conc!14848) Bool)

(assert (=> start!515880 (not (isBalanced!4064 (c!835158 input!5492)))))

(declare-fun condSetEmpty!27366 () Bool)

(assert (=> start!515880 (= condSetEmpty!27366 (= z!3559 ((as const (Array Context!5982 Bool)) false)))))

(declare-fun setRes!27366 () Bool)

(assert (=> start!515880 setRes!27366))

(declare-fun e!3071075 () Bool)

(declare-fun inv!73296 (BalanceConc!29126) Bool)

(assert (=> start!515880 (and (inv!73296 input!5492) e!3071075)))

(declare-fun setIsEmpty!27366 () Bool)

(assert (=> setIsEmpty!27366 setRes!27366))

(declare-fun b!4913442 () Bool)

(declare-fun e!3071076 () Bool)

(declare-fun tp!1381720 () Bool)

(assert (=> b!4913442 (= e!3071076 tp!1381720)))

(declare-fun setNonEmpty!27366 () Bool)

(declare-fun tp!1381719 () Bool)

(declare-fun setElem!27366 () Context!5982)

(declare-fun inv!73297 (Context!5982) Bool)

(assert (=> setNonEmpty!27366 (= setRes!27366 (and tp!1381719 (inv!73297 setElem!27366) e!3071076))))

(declare-fun setRest!27366 () (InoxSet Context!5982))

(assert (=> setNonEmpty!27366 (= z!3559 ((_ map or) (store ((as const (Array Context!5982 Bool)) false) setElem!27366 true) setRest!27366))))

(declare-fun b!4913443 () Bool)

(declare-fun tp!1381721 () Bool)

(declare-fun inv!73298 (Conc!14848) Bool)

(assert (=> b!4913443 (= e!3071075 (and (inv!73298 (c!835158 input!5492)) tp!1381721))))

(assert (= (and start!515880 condSetEmpty!27366) setIsEmpty!27366))

(assert (= (and start!515880 (not condSetEmpty!27366)) setNonEmpty!27366))

(assert (= setNonEmpty!27366 b!4913442))

(assert (= start!515880 b!4913443))

(declare-fun m!5923258 () Bool)

(assert (=> start!515880 m!5923258))

(declare-fun m!5923260 () Bool)

(assert (=> start!515880 m!5923260))

(declare-fun m!5923262 () Bool)

(assert (=> start!515880 m!5923262))

(declare-fun m!5923264 () Bool)

(assert (=> start!515880 m!5923264))

(declare-fun m!5923266 () Bool)

(assert (=> start!515880 m!5923266))

(assert (=> start!515880 m!5923258))

(assert (=> start!515880 m!5923260))

(declare-fun m!5923268 () Bool)

(assert (=> setNonEmpty!27366 m!5923268))

(declare-fun m!5923270 () Bool)

(assert (=> b!4913443 m!5923270))

(check-sat (not b!4913443) (not setNonEmpty!27366) (not start!515880) (not b!4913442))
(check-sat)
(get-model)

(declare-fun d!1578789 () Bool)

(declare-fun c!835161 () Bool)

(get-info :version)

(assert (=> d!1578789 (= c!835161 ((_ is Node!14848) (c!835158 input!5492)))))

(declare-fun e!3071081 () Bool)

(assert (=> d!1578789 (= (inv!73298 (c!835158 input!5492)) e!3071081)))

(declare-fun b!4913450 () Bool)

(declare-fun inv!73299 (Conc!14848) Bool)

(assert (=> b!4913450 (= e!3071081 (inv!73299 (c!835158 input!5492)))))

(declare-fun b!4913451 () Bool)

(declare-fun e!3071082 () Bool)

(assert (=> b!4913451 (= e!3071081 e!3071082)))

(declare-fun res!2098781 () Bool)

(assert (=> b!4913451 (= res!2098781 (not ((_ is Leaf!24705) (c!835158 input!5492))))))

(assert (=> b!4913451 (=> res!2098781 e!3071082)))

(declare-fun b!4913452 () Bool)

(declare-fun inv!73300 (Conc!14848) Bool)

(assert (=> b!4913452 (= e!3071082 (inv!73300 (c!835158 input!5492)))))

(assert (= (and d!1578789 c!835161) b!4913450))

(assert (= (and d!1578789 (not c!835161)) b!4913451))

(assert (= (and b!4913451 (not res!2098781)) b!4913452))

(declare-fun m!5923272 () Bool)

(assert (=> b!4913450 m!5923272))

(declare-fun m!5923274 () Bool)

(assert (=> b!4913452 m!5923274))

(assert (=> b!4913443 d!1578789))

(declare-fun d!1578791 () Bool)

(declare-fun lambda!244819 () Int)

(declare-fun forall!13102 (List!56757 Int) Bool)

(assert (=> d!1578791 (= (inv!73297 setElem!27366) (forall!13102 (exprs!3491 setElem!27366) lambda!244819))))

(declare-fun bs!1177637 () Bool)

(assert (= bs!1177637 d!1578791))

(declare-fun m!5923276 () Bool)

(assert (=> bs!1177637 m!5923276))

(assert (=> setNonEmpty!27366 d!1578791))

(declare-fun b!4913465 () Bool)

(declare-fun res!2098799 () Bool)

(declare-fun e!3071087 () Bool)

(assert (=> b!4913465 (=> (not res!2098799) (not e!3071087))))

(declare-fun height!1972 (Conc!14848) Int)

(assert (=> b!4913465 (= res!2098799 (<= (- (height!1972 (left!41286 (c!835158 input!5492))) (height!1972 (right!41616 (c!835158 input!5492)))) 1))))

(declare-fun b!4913466 () Bool)

(declare-fun res!2098794 () Bool)

(assert (=> b!4913466 (=> (not res!2098794) (not e!3071087))))

(assert (=> b!4913466 (= res!2098794 (isBalanced!4064 (left!41286 (c!835158 input!5492))))))

(declare-fun d!1578795 () Bool)

(declare-fun res!2098795 () Bool)

(declare-fun e!3071088 () Bool)

(assert (=> d!1578795 (=> res!2098795 e!3071088)))

(assert (=> d!1578795 (= res!2098795 (not ((_ is Node!14848) (c!835158 input!5492))))))

(assert (=> d!1578795 (= (isBalanced!4064 (c!835158 input!5492)) e!3071088)))

(declare-fun b!4913467 () Bool)

(declare-fun res!2098796 () Bool)

(assert (=> b!4913467 (=> (not res!2098796) (not e!3071087))))

(declare-fun isEmpty!30541 (Conc!14848) Bool)

(assert (=> b!4913467 (= res!2098796 (not (isEmpty!30541 (left!41286 (c!835158 input!5492)))))))

(declare-fun b!4913468 () Bool)

(assert (=> b!4913468 (= e!3071088 e!3071087)))

(declare-fun res!2098798 () Bool)

(assert (=> b!4913468 (=> (not res!2098798) (not e!3071087))))

(assert (=> b!4913468 (= res!2098798 (<= (- 1) (- (height!1972 (left!41286 (c!835158 input!5492))) (height!1972 (right!41616 (c!835158 input!5492))))))))

(declare-fun b!4913469 () Bool)

(declare-fun res!2098797 () Bool)

(assert (=> b!4913469 (=> (not res!2098797) (not e!3071087))))

(assert (=> b!4913469 (= res!2098797 (isBalanced!4064 (right!41616 (c!835158 input!5492))))))

(declare-fun b!4913470 () Bool)

(assert (=> b!4913470 (= e!3071087 (not (isEmpty!30541 (right!41616 (c!835158 input!5492)))))))

(assert (= (and d!1578795 (not res!2098795)) b!4913468))

(assert (= (and b!4913468 res!2098798) b!4913465))

(assert (= (and b!4913465 res!2098799) b!4913466))

(assert (= (and b!4913466 res!2098794) b!4913469))

(assert (= (and b!4913469 res!2098797) b!4913467))

(assert (= (and b!4913467 res!2098796) b!4913470))

(declare-fun m!5923278 () Bool)

(assert (=> b!4913470 m!5923278))

(declare-fun m!5923280 () Bool)

(assert (=> b!4913465 m!5923280))

(declare-fun m!5923282 () Bool)

(assert (=> b!4913465 m!5923282))

(assert (=> b!4913468 m!5923280))

(assert (=> b!4913468 m!5923282))

(declare-fun m!5923284 () Bool)

(assert (=> b!4913467 m!5923284))

(declare-fun m!5923286 () Bool)

(assert (=> b!4913466 m!5923286))

(declare-fun m!5923288 () Bool)

(assert (=> b!4913469 m!5923288))

(assert (=> start!515880 d!1578795))

(declare-fun d!1578797 () Bool)

(declare-fun lt!2017398 () Int)

(declare-fun size!37404 (List!56758) Int)

(assert (=> d!1578797 (= lt!2017398 (size!37404 (list!17898 input!5492)))))

(declare-fun size!37405 (Conc!14848) Int)

(assert (=> d!1578797 (= lt!2017398 (size!37405 (c!835158 input!5492)))))

(assert (=> d!1578797 (= (size!37403 input!5492) lt!2017398)))

(declare-fun bs!1177638 () Bool)

(assert (= bs!1177638 d!1578797))

(assert (=> bs!1177638 m!5923258))

(assert (=> bs!1177638 m!5923258))

(declare-fun m!5923290 () Bool)

(assert (=> bs!1177638 m!5923290))

(declare-fun m!5923292 () Bool)

(assert (=> bs!1177638 m!5923292))

(assert (=> start!515880 d!1578797))

(declare-fun bm!341246 () Bool)

(declare-fun call!341257 () Bool)

(declare-fun nullableZipper!789 ((InoxSet Context!5982)) Bool)

(assert (=> bm!341246 (= call!341257 (nullableZipper!789 z!3559))))

(declare-fun bm!341247 () Bool)

(declare-fun call!341256 () (InoxSet Context!5982))

(declare-fun call!341253 () C!26908)

(declare-fun derivationStepZipper!567 ((InoxSet Context!5982) C!26908) (InoxSet Context!5982))

(assert (=> bm!341247 (= call!341256 (derivationStepZipper!567 z!3559 call!341253))))

(declare-fun b!4913522 () Bool)

(declare-fun e!3071117 () Int)

(declare-fun call!341259 () Int)

(assert (=> b!4913522 (= e!3071117 call!341259)))

(declare-fun bm!341248 () Bool)

(declare-datatypes ((tuple2!61034 0))(
  ( (tuple2!61035 (_1!33820 BalanceConc!29126) (_2!33820 BalanceConc!29126)) )
))
(declare-fun lt!2017497 () tuple2!61034)

(declare-fun call!341260 () List!56758)

(declare-fun c!835181 () Bool)

(assert (=> bm!341248 (= call!341260 (list!17898 (ite c!835181 input!5492 (_1!33820 lt!2017497))))))

(declare-fun b!4913523 () Bool)

(declare-fun e!3071118 () Int)

(declare-fun e!3071116 () Int)

(assert (=> b!4913523 (= e!3071118 e!3071116)))

(assert (=> b!4913523 (= c!835181 (= 0 (size!37403 input!5492)))))

(declare-fun d!1578799 () Bool)

(declare-fun lt!2017492 () Int)

(declare-datatypes ((tuple2!61036 0))(
  ( (tuple2!61037 (_1!33821 List!56758) (_2!33821 List!56758)) )
))
(declare-fun findLongestMatchInnerZipper!34 ((InoxSet Context!5982) List!56758 Int List!56758 List!56758 Int) tuple2!61036)

(assert (=> d!1578799 (= (size!37404 (_1!33821 (findLongestMatchInnerZipper!34 z!3559 Nil!56634 0 (list!17898 input!5492) (list!17898 input!5492) (size!37403 input!5492)))) lt!2017492)))

(assert (=> d!1578799 (= lt!2017492 e!3071118)))

(declare-fun c!835182 () Bool)

(declare-fun lostCauseZipper!669 ((InoxSet Context!5982)) Bool)

(assert (=> d!1578799 (= c!835182 (lostCauseZipper!669 z!3559))))

(declare-datatypes ((Unit!146904 0))(
  ( (Unit!146905) )
))
(declare-fun lt!2017502 () Unit!146904)

(declare-fun Unit!146906 () Unit!146904)

(assert (=> d!1578799 (= lt!2017502 Unit!146906)))

(declare-fun getSuffix!2927 (List!56758 List!56758) List!56758)

(assert (=> d!1578799 (= (getSuffix!2927 (list!17898 input!5492) Nil!56634) (list!17898 input!5492))))

(declare-fun lt!2017526 () Unit!146904)

(declare-fun lt!2017489 () Unit!146904)

(assert (=> d!1578799 (= lt!2017526 lt!2017489)))

(declare-fun lt!2017513 () List!56758)

(assert (=> d!1578799 (= (list!17898 input!5492) lt!2017513)))

(declare-fun lemmaSamePrefixThenSameSuffix!2343 (List!56758 List!56758 List!56758 List!56758 List!56758) Unit!146904)

(assert (=> d!1578799 (= lt!2017489 (lemmaSamePrefixThenSameSuffix!2343 Nil!56634 (list!17898 input!5492) Nil!56634 lt!2017513 (list!17898 input!5492)))))

(assert (=> d!1578799 (= lt!2017513 (getSuffix!2927 (list!17898 input!5492) Nil!56634))))

(declare-fun lt!2017494 () Unit!146904)

(declare-fun lt!2017505 () Unit!146904)

(assert (=> d!1578799 (= lt!2017494 lt!2017505)))

(declare-fun isPrefix!4939 (List!56758 List!56758) Bool)

(declare-fun ++!12294 (List!56758 List!56758) List!56758)

(assert (=> d!1578799 (isPrefix!4939 Nil!56634 (++!12294 Nil!56634 (list!17898 input!5492)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3163 (List!56758 List!56758) Unit!146904)

(assert (=> d!1578799 (= lt!2017505 (lemmaConcatTwoListThenFirstIsPrefix!3163 Nil!56634 (list!17898 input!5492)))))

(assert (=> d!1578799 (= (++!12294 Nil!56634 (list!17898 input!5492)) (list!17898 input!5492))))

(assert (=> d!1578799 (= (findLongestMatchInnerZipperFast!61 z!3559 Nil!56634 0 (list!17898 input!5492) input!5492 (size!37403 input!5492)) lt!2017492)))

(declare-fun b!4913524 () Bool)

(declare-fun lt!2017503 () Int)

(assert (=> b!4913524 (= e!3071117 (ite (= lt!2017503 0) 0 lt!2017503))))

(assert (=> b!4913524 (= lt!2017503 call!341259)))

(declare-fun bm!341249 () Bool)

(declare-fun call!341251 () List!56758)

(declare-fun call!341252 () List!56758)

(assert (=> bm!341249 (= call!341259 (findLongestMatchInnerZipperFast!61 call!341256 call!341252 (+ 0 1) call!341251 input!5492 (size!37403 input!5492)))))

(declare-fun b!4913525 () Bool)

(assert (=> b!4913525 (= e!3071118 0)))

(declare-fun b!4913526 () Bool)

(declare-fun e!3071114 () Unit!146904)

(declare-fun Unit!146907 () Unit!146904)

(assert (=> b!4913526 (= e!3071114 Unit!146907)))

(declare-fun lt!2017514 () List!56758)

(assert (=> b!4913526 (= lt!2017514 (list!17898 input!5492))))

(declare-fun lt!2017506 () List!56758)

(assert (=> b!4913526 (= lt!2017506 (list!17898 input!5492))))

(declare-fun lt!2017522 () Unit!146904)

(declare-fun call!341258 () Unit!146904)

(assert (=> b!4913526 (= lt!2017522 call!341258)))

(declare-fun call!341255 () Bool)

(assert (=> b!4913526 call!341255))

(declare-fun lt!2017509 () Unit!146904)

(assert (=> b!4913526 (= lt!2017509 lt!2017522)))

(declare-fun lt!2017527 () List!56758)

(assert (=> b!4913526 (= lt!2017527 (list!17898 input!5492))))

(declare-fun lt!2017521 () Unit!146904)

(declare-fun call!341254 () Unit!146904)

(assert (=> b!4913526 (= lt!2017521 call!341254)))

(assert (=> b!4913526 (= lt!2017527 Nil!56634)))

(declare-fun lt!2017524 () Unit!146904)

(assert (=> b!4913526 (= lt!2017524 lt!2017521)))

(assert (=> b!4913526 false))

(declare-fun bm!341250 () Bool)

(declare-fun tail!9646 (List!56758) List!56758)

(assert (=> bm!341250 (= call!341251 (tail!9646 (list!17898 input!5492)))))

(declare-fun b!4913527 () Bool)

(declare-fun e!3071113 () Int)

(assert (=> b!4913527 (= e!3071113 0)))

(declare-fun lt!2017501 () List!56758)

(declare-fun lt!2017490 () List!56758)

(declare-fun bm!341251 () Bool)

(assert (=> bm!341251 (= call!341255 (isPrefix!4939 (ite c!835181 lt!2017501 lt!2017514) (ite c!835181 lt!2017490 lt!2017506)))))

(declare-fun b!4913528 () Bool)

(assert (=> b!4913528 (= e!3071113 0)))

(declare-fun b!4913529 () Bool)

(declare-fun e!3071115 () List!56758)

(assert (=> b!4913529 (= e!3071115 call!341260)))

(declare-fun bm!341252 () Bool)

(declare-fun lemmaIsPrefixRefl!3336 (List!56758 List!56758) Unit!146904)

(assert (=> bm!341252 (= call!341258 (lemmaIsPrefixRefl!3336 (ite c!835181 lt!2017501 lt!2017514) (ite c!835181 lt!2017490 lt!2017506)))))

(declare-fun b!4913530 () Bool)

(declare-fun c!835178 () Bool)

(assert (=> b!4913530 (= c!835178 call!341257)))

(declare-fun lt!2017508 () Unit!146904)

(declare-fun lt!2017500 () Unit!146904)

(assert (=> b!4913530 (= lt!2017508 lt!2017500)))

(declare-fun lt!2017520 () List!56758)

(assert (=> b!4913530 (= lt!2017520 Nil!56634)))

(assert (=> b!4913530 (= lt!2017500 call!341254)))

(assert (=> b!4913530 (= lt!2017520 call!341260)))

(declare-fun lt!2017491 () Unit!146904)

(declare-fun lt!2017516 () Unit!146904)

(assert (=> b!4913530 (= lt!2017491 lt!2017516)))

(assert (=> b!4913530 call!341255))

(assert (=> b!4913530 (= lt!2017516 call!341258)))

(assert (=> b!4913530 (= lt!2017490 call!341260)))

(assert (=> b!4913530 (= lt!2017501 call!341260)))

(assert (=> b!4913530 (= e!3071116 e!3071113)))

(declare-fun bm!341253 () Bool)

(assert (=> bm!341253 (= call!341252 (++!12294 Nil!56634 (Cons!56634 call!341253 Nil!56634)))))

(declare-fun bm!341254 () Bool)

(declare-fun c!835179 () Bool)

(assert (=> bm!341254 (= c!835179 c!835181)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!1098 (List!56758 List!56758 List!56758) Unit!146904)

(assert (=> bm!341254 (= call!341254 (lemmaIsPrefixSameLengthThenSameList!1098 (ite c!835181 lt!2017520 lt!2017527) Nil!56634 e!3071115))))

(declare-fun b!4913531 () Bool)

(assert (=> b!4913531 (= e!3071115 (list!17898 input!5492))))

(declare-fun bm!341255 () Bool)

(declare-fun apply!13605 (BalanceConc!29126 Int) C!26908)

(assert (=> bm!341255 (= call!341253 (apply!13605 input!5492 0))))

(declare-fun b!4913532 () Bool)

(declare-fun c!835180 () Bool)

(assert (=> b!4913532 (= c!835180 call!341257)))

(declare-fun lt!2017486 () Unit!146904)

(declare-fun lt!2017487 () Unit!146904)

(assert (=> b!4913532 (= lt!2017486 lt!2017487)))

(declare-fun lt!2017511 () C!26908)

(declare-fun lt!2017525 () List!56758)

(declare-fun lt!2017496 () List!56758)

(assert (=> b!4913532 (= (++!12294 (++!12294 Nil!56634 (Cons!56634 lt!2017511 Nil!56634)) lt!2017525) lt!2017496)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1370 (List!56758 C!26908 List!56758 List!56758) Unit!146904)

(assert (=> b!4913532 (= lt!2017487 (lemmaMoveElementToOtherListKeepsConcatEq!1370 Nil!56634 lt!2017511 lt!2017525 lt!2017496))))

(assert (=> b!4913532 (= lt!2017496 (list!17898 input!5492))))

(assert (=> b!4913532 (= lt!2017525 (tail!9646 (list!17898 input!5492)))))

(assert (=> b!4913532 (= lt!2017511 (apply!13605 input!5492 0))))

(declare-fun lt!2017517 () Unit!146904)

(declare-fun lt!2017512 () Unit!146904)

(assert (=> b!4913532 (= lt!2017517 lt!2017512)))

(declare-fun lt!2017495 () List!56758)

(declare-fun head!10499 (List!56758) C!26908)

(assert (=> b!4913532 (isPrefix!4939 (++!12294 Nil!56634 (Cons!56634 (head!10499 (getSuffix!2927 lt!2017495 Nil!56634)) Nil!56634)) lt!2017495)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!752 (List!56758 List!56758) Unit!146904)

(assert (=> b!4913532 (= lt!2017512 (lemmaAddHeadSuffixToPrefixStillPrefix!752 Nil!56634 lt!2017495))))

(assert (=> b!4913532 (= lt!2017495 (list!17898 input!5492))))

(declare-fun lt!2017488 () Unit!146904)

(assert (=> b!4913532 (= lt!2017488 e!3071114)))

(declare-fun c!835177 () Bool)

(assert (=> b!4913532 (= c!835177 (= (size!37404 Nil!56634) (size!37403 input!5492)))))

(declare-fun lt!2017510 () Unit!146904)

(declare-fun lt!2017493 () Unit!146904)

(assert (=> b!4913532 (= lt!2017510 lt!2017493)))

(declare-fun lt!2017518 () List!56758)

(assert (=> b!4913532 (<= (size!37404 Nil!56634) (size!37404 lt!2017518))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!664 (List!56758 List!56758) Unit!146904)

(assert (=> b!4913532 (= lt!2017493 (lemmaIsPrefixThenSmallerEqSize!664 Nil!56634 lt!2017518))))

(assert (=> b!4913532 (= lt!2017518 (list!17898 input!5492))))

(declare-fun lt!2017523 () Unit!146904)

(declare-fun lt!2017504 () Unit!146904)

(assert (=> b!4913532 (= lt!2017523 lt!2017504)))

(declare-fun lt!2017507 () List!56758)

(declare-fun drop!2203 (List!56758 Int) List!56758)

(declare-fun apply!13606 (List!56758 Int) C!26908)

(assert (=> b!4913532 (= (head!10499 (drop!2203 lt!2017507 0)) (apply!13606 lt!2017507 0))))

(declare-fun lemmaDropApply!1262 (List!56758 Int) Unit!146904)

(assert (=> b!4913532 (= lt!2017504 (lemmaDropApply!1262 lt!2017507 0))))

(assert (=> b!4913532 (= lt!2017507 (list!17898 input!5492))))

(declare-fun lt!2017515 () Unit!146904)

(declare-fun lt!2017519 () Unit!146904)

(assert (=> b!4913532 (= lt!2017515 lt!2017519)))

(declare-fun lt!2017498 () List!56758)

(declare-fun lt!2017499 () List!56758)

(assert (=> b!4913532 (and (= lt!2017498 Nil!56634) (= lt!2017499 (list!17898 input!5492)))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!637 (List!56758 List!56758 List!56758 List!56758) Unit!146904)

(assert (=> b!4913532 (= lt!2017519 (lemmaConcatSameAndSameSizesThenSameLists!637 lt!2017498 lt!2017499 Nil!56634 (list!17898 input!5492)))))

(assert (=> b!4913532 (= lt!2017499 (list!17898 (_2!33820 lt!2017497)))))

(assert (=> b!4913532 (= lt!2017498 call!341260)))

(declare-fun splitAt!226 (BalanceConc!29126 Int) tuple2!61034)

(assert (=> b!4913532 (= lt!2017497 (splitAt!226 input!5492 0))))

(assert (=> b!4913532 (= e!3071116 e!3071117)))

(declare-fun b!4913533 () Bool)

(declare-fun Unit!146908 () Unit!146904)

(assert (=> b!4913533 (= e!3071114 Unit!146908)))

(assert (= (and d!1578799 c!835182) b!4913525))

(assert (= (and d!1578799 (not c!835182)) b!4913523))

(assert (= (and b!4913523 c!835181) b!4913530))

(assert (= (and b!4913523 (not c!835181)) b!4913532))

(assert (= (and b!4913530 c!835178) b!4913527))

(assert (= (and b!4913530 (not c!835178)) b!4913528))

(assert (= (and b!4913532 c!835177) b!4913526))

(assert (= (and b!4913532 (not c!835177)) b!4913533))

(assert (= (and b!4913532 c!835180) b!4913524))

(assert (= (and b!4913532 (not c!835180)) b!4913522))

(assert (= (or b!4913524 b!4913522) bm!341250))

(assert (= (or b!4913524 b!4913522) bm!341255))

(assert (= (or b!4913524 b!4913522) bm!341247))

(assert (= (or b!4913524 b!4913522) bm!341253))

(assert (= (or b!4913524 b!4913522) bm!341249))

(assert (= (or b!4913530 b!4913532) bm!341246))

(assert (= (or b!4913530 b!4913526) bm!341252))

(assert (= (or b!4913530 b!4913526) bm!341251))

(assert (= (or b!4913530 b!4913532) bm!341248))

(assert (= (or b!4913530 b!4913526) bm!341254))

(assert (= (and bm!341254 c!835179) b!4913529))

(assert (= (and bm!341254 (not c!835179)) b!4913531))

(assert (=> bm!341249 m!5923260))

(declare-fun m!5923316 () Bool)

(assert (=> bm!341249 m!5923316))

(declare-fun m!5923318 () Bool)

(assert (=> bm!341246 m!5923318))

(assert (=> b!4913526 m!5923258))

(declare-fun m!5923320 () Bool)

(assert (=> bm!341247 m!5923320))

(declare-fun m!5923322 () Bool)

(assert (=> bm!341248 m!5923322))

(declare-fun m!5923324 () Bool)

(assert (=> bm!341253 m!5923324))

(declare-fun m!5923326 () Bool)

(assert (=> bm!341252 m!5923326))

(declare-fun m!5923328 () Bool)

(assert (=> bm!341251 m!5923328))

(assert (=> b!4913531 m!5923258))

(assert (=> bm!341250 m!5923258))

(declare-fun m!5923330 () Bool)

(assert (=> bm!341250 m!5923330))

(declare-fun m!5923332 () Bool)

(assert (=> bm!341255 m!5923332))

(declare-fun m!5923334 () Bool)

(assert (=> bm!341254 m!5923334))

(declare-fun m!5923336 () Bool)

(assert (=> b!4913532 m!5923336))

(declare-fun m!5923338 () Bool)

(assert (=> b!4913532 m!5923338))

(declare-fun m!5923340 () Bool)

(assert (=> b!4913532 m!5923340))

(declare-fun m!5923342 () Bool)

(assert (=> b!4913532 m!5923342))

(assert (=> b!4913532 m!5923258))

(declare-fun m!5923344 () Bool)

(assert (=> b!4913532 m!5923344))

(assert (=> b!4913532 m!5923258))

(declare-fun m!5923346 () Bool)

(assert (=> b!4913532 m!5923346))

(declare-fun m!5923348 () Bool)

(assert (=> b!4913532 m!5923348))

(declare-fun m!5923350 () Bool)

(assert (=> b!4913532 m!5923350))

(declare-fun m!5923352 () Bool)

(assert (=> b!4913532 m!5923352))

(declare-fun m!5923354 () Bool)

(assert (=> b!4913532 m!5923354))

(assert (=> b!4913532 m!5923260))

(declare-fun m!5923356 () Bool)

(assert (=> b!4913532 m!5923356))

(assert (=> b!4913532 m!5923340))

(declare-fun m!5923358 () Bool)

(assert (=> b!4913532 m!5923358))

(assert (=> b!4913532 m!5923352))

(assert (=> b!4913532 m!5923332))

(assert (=> b!4913532 m!5923258))

(assert (=> b!4913532 m!5923330))

(declare-fun m!5923360 () Bool)

(assert (=> b!4913532 m!5923360))

(assert (=> b!4913532 m!5923358))

(declare-fun m!5923362 () Bool)

(assert (=> b!4913532 m!5923362))

(declare-fun m!5923364 () Bool)

(assert (=> b!4913532 m!5923364))

(declare-fun m!5923366 () Bool)

(assert (=> b!4913532 m!5923366))

(declare-fun m!5923368 () Bool)

(assert (=> b!4913532 m!5923368))

(declare-fun m!5923370 () Bool)

(assert (=> b!4913532 m!5923370))

(assert (=> b!4913532 m!5923336))

(declare-fun m!5923372 () Bool)

(assert (=> d!1578799 m!5923372))

(declare-fun m!5923374 () Bool)

(assert (=> d!1578799 m!5923374))

(declare-fun m!5923376 () Bool)

(assert (=> d!1578799 m!5923376))

(assert (=> d!1578799 m!5923258))

(assert (=> d!1578799 m!5923258))

(assert (=> d!1578799 m!5923258))

(declare-fun m!5923378 () Bool)

(assert (=> d!1578799 m!5923378))

(assert (=> d!1578799 m!5923258))

(declare-fun m!5923380 () Bool)

(assert (=> d!1578799 m!5923380))

(assert (=> d!1578799 m!5923258))

(assert (=> d!1578799 m!5923258))

(assert (=> d!1578799 m!5923260))

(declare-fun m!5923382 () Bool)

(assert (=> d!1578799 m!5923382))

(declare-fun m!5923384 () Bool)

(assert (=> d!1578799 m!5923384))

(assert (=> d!1578799 m!5923258))

(declare-fun m!5923386 () Bool)

(assert (=> d!1578799 m!5923386))

(assert (=> d!1578799 m!5923258))

(assert (=> d!1578799 m!5923372))

(assert (=> start!515880 d!1578799))

(declare-fun d!1578809 () Bool)

(declare-fun list!17899 (Conc!14848) List!56758)

(assert (=> d!1578809 (= (list!17898 input!5492) (list!17899 (c!835158 input!5492)))))

(declare-fun bs!1177641 () Bool)

(assert (= bs!1177641 d!1578809))

(declare-fun m!5923388 () Bool)

(assert (=> bs!1177641 m!5923388))

(assert (=> start!515880 d!1578809))

(declare-fun d!1578811 () Bool)

(assert (=> d!1578811 (= (inv!73296 input!5492) (isBalanced!4064 (c!835158 input!5492)))))

(declare-fun bs!1177642 () Bool)

(assert (= bs!1177642 d!1578811))

(assert (=> bs!1177642 m!5923266))

(assert (=> start!515880 d!1578811))

(declare-fun tp!1381728 () Bool)

(declare-fun b!4913542 () Bool)

(declare-fun tp!1381729 () Bool)

(declare-fun e!3071124 () Bool)

(assert (=> b!4913542 (= e!3071124 (and (inv!73298 (left!41286 (c!835158 input!5492))) tp!1381728 (inv!73298 (right!41616 (c!835158 input!5492))) tp!1381729))))

(declare-fun b!4913544 () Bool)

(declare-fun e!3071123 () Bool)

(declare-fun tp!1381730 () Bool)

(assert (=> b!4913544 (= e!3071123 tp!1381730)))

(declare-fun b!4913543 () Bool)

(declare-fun inv!73301 (IArray!29757) Bool)

(assert (=> b!4913543 (= e!3071124 (and (inv!73301 (xs!18164 (c!835158 input!5492))) e!3071123))))

(assert (=> b!4913443 (= tp!1381721 (and (inv!73298 (c!835158 input!5492)) e!3071124))))

(assert (= (and b!4913443 ((_ is Node!14848) (c!835158 input!5492))) b!4913542))

(assert (= b!4913543 b!4913544))

(assert (= (and b!4913443 ((_ is Leaf!24705) (c!835158 input!5492))) b!4913543))

(declare-fun m!5923390 () Bool)

(assert (=> b!4913542 m!5923390))

(declare-fun m!5923392 () Bool)

(assert (=> b!4913542 m!5923392))

(declare-fun m!5923394 () Bool)

(assert (=> b!4913543 m!5923394))

(assert (=> b!4913443 m!5923270))

(declare-fun condSetEmpty!27369 () Bool)

(assert (=> setNonEmpty!27366 (= condSetEmpty!27369 (= setRest!27366 ((as const (Array Context!5982 Bool)) false)))))

(declare-fun setRes!27369 () Bool)

(assert (=> setNonEmpty!27366 (= tp!1381719 setRes!27369)))

(declare-fun setIsEmpty!27369 () Bool)

(assert (=> setIsEmpty!27369 setRes!27369))

(declare-fun e!3071127 () Bool)

(declare-fun setElem!27369 () Context!5982)

(declare-fun tp!1381736 () Bool)

(declare-fun setNonEmpty!27369 () Bool)

(assert (=> setNonEmpty!27369 (= setRes!27369 (and tp!1381736 (inv!73297 setElem!27369) e!3071127))))

(declare-fun setRest!27369 () (InoxSet Context!5982))

(assert (=> setNonEmpty!27369 (= setRest!27366 ((_ map or) (store ((as const (Array Context!5982 Bool)) false) setElem!27369 true) setRest!27369))))

(declare-fun b!4913549 () Bool)

(declare-fun tp!1381735 () Bool)

(assert (=> b!4913549 (= e!3071127 tp!1381735)))

(assert (= (and setNonEmpty!27366 condSetEmpty!27369) setIsEmpty!27369))

(assert (= (and setNonEmpty!27366 (not condSetEmpty!27369)) setNonEmpty!27369))

(assert (= setNonEmpty!27369 b!4913549))

(declare-fun m!5923396 () Bool)

(assert (=> setNonEmpty!27369 m!5923396))

(declare-fun b!4913554 () Bool)

(declare-fun e!3071130 () Bool)

(declare-fun tp!1381741 () Bool)

(declare-fun tp!1381742 () Bool)

(assert (=> b!4913554 (= e!3071130 (and tp!1381741 tp!1381742))))

(assert (=> b!4913442 (= tp!1381720 e!3071130)))

(assert (= (and b!4913442 ((_ is Cons!56633) (exprs!3491 setElem!27366))) b!4913554))

(check-sat (not b!4913468) (not bm!341254) (not bm!341246) (not bm!341248) (not b!4913443) (not bm!341247) (not bm!341253) (not b!4913467) (not d!1578797) (not d!1578809) (not b!4913466) (not b!4913544) (not b!4913450) (not bm!341250) (not b!4913532) (not bm!341252) (not b!4913470) (not b!4913531) (not b!4913465) (not b!4913549) (not d!1578791) (not d!1578799) (not setNonEmpty!27369) (not bm!341251) (not bm!341255) (not b!4913543) (not b!4913452) (not b!4913542) (not d!1578811) (not b!4913526) (not b!4913469) (not b!4913554) (not bm!341249))
(check-sat)
