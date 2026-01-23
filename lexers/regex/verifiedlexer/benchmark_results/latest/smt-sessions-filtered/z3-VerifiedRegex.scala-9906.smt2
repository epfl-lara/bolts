; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!519212 () Bool)

(assert start!519212)

(declare-fun b!4937427 () Bool)

(declare-fun e!3085042 () Bool)

(declare-fun testedPSize!70 () Int)

(declare-datatypes ((C!27108 0))(
  ( (C!27109 (val!22888 Int)) )
))
(declare-datatypes ((List!56984 0))(
  ( (Nil!56860) (Cons!56860 (h!63308 C!27108) (t!367474 List!56984)) )
))
(declare-fun lt!2034852 () List!56984)

(declare-fun size!37670 (List!56984) Int)

(assert (=> b!4937427 (= e!3085042 (= (+ 1 testedPSize!70) (size!37670 lt!2034852)))))

(declare-fun b!4937429 () Bool)

(declare-fun e!3085050 () Bool)

(declare-fun e!3085054 () Bool)

(assert (=> b!4937429 (= e!3085050 e!3085054)))

(declare-fun res!2107178 () Bool)

(assert (=> b!4937429 (=> res!2107178 e!3085054)))

(declare-fun lt!2034847 () List!56984)

(declare-fun lt!2034835 () List!56984)

(declare-fun lt!2034833 () List!56984)

(declare-fun ++!12406 (List!56984 List!56984) List!56984)

(assert (=> b!4937429 (= res!2107178 (not (= (++!12406 lt!2034835 lt!2034847) lt!2034833)))))

(declare-datatypes ((IArray!29957 0))(
  ( (IArray!29958 (innerList!15036 List!56984)) )
))
(declare-datatypes ((Conc!14948 0))(
  ( (Node!14948 (left!41468 Conc!14948) (right!41798 Conc!14948) (csize!30126 Int) (cheight!15159 Int)) (Leaf!24855 (xs!18272 IArray!29957) (csize!30127 Int)) (Empty!14948) )
))
(declare-datatypes ((BalanceConc!29326 0))(
  ( (BalanceConc!29327 (c!841800 Conc!14948)) )
))
(declare-datatypes ((tuple2!61386 0))(
  ( (tuple2!61387 (_1!33996 BalanceConc!29326) (_2!33996 BalanceConc!29326)) )
))
(declare-fun lt!2034840 () tuple2!61386)

(declare-fun list!18070 (BalanceConc!29326) List!56984)

(assert (=> b!4937429 (= lt!2034847 (list!18070 (_2!33996 lt!2034840)))))

(assert (=> b!4937429 (= lt!2034835 (list!18070 (_1!33996 lt!2034840)))))

(declare-fun totalInput!685 () BalanceConc!29326)

(declare-fun splitAt!349 (BalanceConc!29326 Int) tuple2!61386)

(assert (=> b!4937429 (= lt!2034840 (splitAt!349 totalInput!685 testedPSize!70))))

(declare-fun b!4937430 () Bool)

(declare-fun res!2107176 () Bool)

(assert (=> b!4937430 (=> res!2107176 e!3085050)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4937430 (= res!2107176 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4937431 () Bool)

(declare-fun e!3085047 () Bool)

(declare-fun tp_is_empty!36055 () Bool)

(declare-fun tp!1385672 () Bool)

(assert (=> b!4937431 (= e!3085047 (and tp_is_empty!36055 tp!1385672))))

(declare-fun b!4937432 () Bool)

(declare-fun e!3085053 () Bool)

(assert (=> b!4937432 (= e!3085053 e!3085050)))

(declare-fun res!2107183 () Bool)

(assert (=> b!4937432 (=> res!2107183 e!3085050)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13439 0))(
  ( (ElementMatch!13439 (c!841801 C!27108)) (Concat!22012 (regOne!27390 Regex!13439) (regTwo!27390 Regex!13439)) (EmptyExpr!13439) (Star!13439 (reg!13768 Regex!13439)) (EmptyLang!13439) (Union!13439 (regOne!27391 Regex!13439) (regTwo!27391 Regex!13439)) )
))
(declare-datatypes ((List!56985 0))(
  ( (Nil!56861) (Cons!56861 (h!63309 Regex!13439) (t!367475 List!56985)) )
))
(declare-datatypes ((Context!6162 0))(
  ( (Context!6163 (exprs!3581 List!56985)) )
))
(declare-fun z!3568 () (InoxSet Context!6162))

(declare-fun lostCauseZipper!757 ((InoxSet Context!6162)) Bool)

(assert (=> b!4937432 (= res!2107183 (lostCauseZipper!757 z!3568))))

(declare-fun testedSuffix!70 () List!56984)

(declare-fun lt!2034843 () List!56984)

(assert (=> b!4937432 (and (= testedSuffix!70 lt!2034843) (= lt!2034843 testedSuffix!70))))

(declare-fun testedP!110 () List!56984)

(declare-datatypes ((Unit!147585 0))(
  ( (Unit!147586) )
))
(declare-fun lt!2034848 () Unit!147585)

(declare-fun lemmaSamePrefixThenSameSuffix!2435 (List!56984 List!56984 List!56984 List!56984 List!56984) Unit!147585)

(assert (=> b!4937432 (= lt!2034848 (lemmaSamePrefixThenSameSuffix!2435 testedP!110 testedSuffix!70 testedP!110 lt!2034843 lt!2034833))))

(declare-fun getSuffix!3021 (List!56984 List!56984) List!56984)

(assert (=> b!4937432 (= lt!2034843 (getSuffix!3021 lt!2034833 testedP!110))))

(declare-fun b!4937433 () Bool)

(declare-fun res!2107179 () Bool)

(assert (=> b!4937433 (=> res!2107179 e!3085054)))

(declare-fun size!37671 (BalanceConc!29326) Int)

(assert (=> b!4937433 (= res!2107179 (not (= (size!37671 (_1!33996 lt!2034840)) testedPSize!70)))))

(declare-fun setNonEmpty!27838 () Bool)

(declare-fun setRes!27838 () Bool)

(declare-fun setElem!27838 () Context!6162)

(declare-fun e!3085051 () Bool)

(declare-fun tp!1385670 () Bool)

(declare-fun inv!73909 (Context!6162) Bool)

(assert (=> setNonEmpty!27838 (= setRes!27838 (and tp!1385670 (inv!73909 setElem!27838) e!3085051))))

(declare-fun setRest!27838 () (InoxSet Context!6162))

(assert (=> setNonEmpty!27838 (= z!3568 ((_ map or) (store ((as const (Array Context!6162 Bool)) false) setElem!27838 true) setRest!27838))))

(declare-fun b!4937434 () Bool)

(declare-fun e!3085048 () Bool)

(declare-fun e!3085044 () Bool)

(assert (=> b!4937434 (= e!3085048 e!3085044)))

(declare-fun res!2107185 () Bool)

(assert (=> b!4937434 (=> (not res!2107185) (not e!3085044))))

(declare-fun lt!2034849 () Int)

(assert (=> b!4937434 (= res!2107185 (= totalInputSize!132 lt!2034849))))

(assert (=> b!4937434 (= lt!2034849 (size!37671 totalInput!685))))

(declare-fun b!4937435 () Bool)

(declare-fun e!3085043 () Bool)

(assert (=> b!4937435 (= e!3085043 e!3085042)))

(declare-fun res!2107182 () Bool)

(assert (=> b!4937435 (=> res!2107182 e!3085042)))

(declare-fun nullableZipper!844 ((InoxSet Context!6162)) Bool)

(assert (=> b!4937435 (= res!2107182 (nullableZipper!844 z!3568))))

(declare-fun lt!2034850 () List!56984)

(assert (=> b!4937435 (= (++!12406 lt!2034852 lt!2034850) lt!2034833)))

(declare-fun lt!2034837 () C!27108)

(assert (=> b!4937435 (= lt!2034852 (++!12406 testedP!110 (Cons!56860 lt!2034837 Nil!56860)))))

(declare-fun lt!2034838 () Unit!147585)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1419 (List!56984 C!27108 List!56984 List!56984) Unit!147585)

(assert (=> b!4937435 (= lt!2034838 (lemmaMoveElementToOtherListKeepsConcatEq!1419 testedP!110 lt!2034837 lt!2034850 lt!2034833))))

(declare-fun tail!9715 (List!56984) List!56984)

(assert (=> b!4937435 (= lt!2034850 (tail!9715 testedSuffix!70))))

(declare-fun isPrefix!5037 (List!56984 List!56984) Bool)

(declare-fun head!10576 (List!56984) C!27108)

(assert (=> b!4937435 (isPrefix!5037 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860)) lt!2034833)))

(declare-fun lt!2034841 () Unit!147585)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!807 (List!56984 List!56984) Unit!147585)

(assert (=> b!4937435 (= lt!2034841 (lemmaAddHeadSuffixToPrefixStillPrefix!807 testedP!110 lt!2034833))))

(declare-fun b!4937436 () Bool)

(declare-fun e!3085049 () Unit!147585)

(declare-fun Unit!147587 () Unit!147585)

(assert (=> b!4937436 (= e!3085049 Unit!147587)))

(declare-fun b!4937428 () Bool)

(declare-fun e!3085046 () Bool)

(assert (=> b!4937428 (= e!3085054 e!3085046)))

(declare-fun res!2107186 () Bool)

(assert (=> b!4937428 (=> res!2107186 e!3085046)))

(assert (=> b!4937428 (= res!2107186 (not (= lt!2034837 (head!10576 testedSuffix!70))))))

(declare-fun apply!13772 (BalanceConc!29326 Int) C!27108)

(assert (=> b!4937428 (= lt!2034837 (apply!13772 totalInput!685 testedPSize!70))))

(declare-fun drop!2270 (List!56984 Int) List!56984)

(declare-fun apply!13773 (List!56984 Int) C!27108)

(assert (=> b!4937428 (= (head!10576 (drop!2270 lt!2034833 testedPSize!70)) (apply!13773 lt!2034833 testedPSize!70))))

(declare-fun lt!2034839 () Unit!147585)

(declare-fun lemmaDropApply!1328 (List!56984 Int) Unit!147585)

(assert (=> b!4937428 (= lt!2034839 (lemmaDropApply!1328 lt!2034833 testedPSize!70))))

(assert (=> b!4937428 (not (or (not (= lt!2034835 testedP!110)) (not (= lt!2034847 testedSuffix!70))))))

(declare-fun lt!2034851 () Unit!147585)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!705 (List!56984 List!56984 List!56984 List!56984) Unit!147585)

(assert (=> b!4937428 (= lt!2034851 (lemmaConcatSameAndSameSizesThenSameLists!705 lt!2034835 lt!2034847 testedP!110 testedSuffix!70))))

(declare-fun res!2107181 () Bool)

(declare-fun e!3085055 () Bool)

(assert (=> start!519212 (=> (not res!2107181) (not e!3085055))))

(declare-fun lt!2034846 () List!56984)

(assert (=> start!519212 (= res!2107181 (= lt!2034846 lt!2034833))))

(assert (=> start!519212 (= lt!2034833 (list!18070 totalInput!685))))

(assert (=> start!519212 (= lt!2034846 (++!12406 testedP!110 testedSuffix!70))))

(assert (=> start!519212 e!3085055))

(declare-fun e!3085052 () Bool)

(assert (=> start!519212 e!3085052))

(declare-fun condSetEmpty!27838 () Bool)

(assert (=> start!519212 (= condSetEmpty!27838 (= z!3568 ((as const (Array Context!6162 Bool)) false)))))

(assert (=> start!519212 setRes!27838))

(assert (=> start!519212 true))

(declare-fun e!3085045 () Bool)

(declare-fun inv!73910 (BalanceConc!29326) Bool)

(assert (=> start!519212 (and (inv!73910 totalInput!685) e!3085045)))

(assert (=> start!519212 e!3085047))

(declare-fun b!4937437 () Bool)

(declare-fun tp!1385671 () Bool)

(declare-fun inv!73911 (Conc!14948) Bool)

(assert (=> b!4937437 (= e!3085045 (and (inv!73911 (c!841800 totalInput!685)) tp!1385671))))

(declare-fun b!4937438 () Bool)

(assert (=> b!4937438 (= e!3085055 e!3085048)))

(declare-fun res!2107177 () Bool)

(assert (=> b!4937438 (=> (not res!2107177) (not e!3085048))))

(declare-fun lt!2034834 () Int)

(assert (=> b!4937438 (= res!2107177 (= testedPSize!70 lt!2034834))))

(assert (=> b!4937438 (= lt!2034834 (size!37670 testedP!110))))

(declare-fun b!4937439 () Bool)

(assert (=> b!4937439 (= e!3085044 (not e!3085053))))

(declare-fun res!2107184 () Bool)

(assert (=> b!4937439 (=> res!2107184 e!3085053)))

(assert (=> b!4937439 (= res!2107184 (not (isPrefix!5037 testedP!110 lt!2034833)))))

(assert (=> b!4937439 (isPrefix!5037 testedP!110 lt!2034846)))

(declare-fun lt!2034844 () Unit!147585)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3261 (List!56984 List!56984) Unit!147585)

(assert (=> b!4937439 (= lt!2034844 (lemmaConcatTwoListThenFirstIsPrefix!3261 testedP!110 testedSuffix!70))))

(declare-fun b!4937440 () Bool)

(assert (=> b!4937440 (= e!3085046 e!3085043)))

(declare-fun res!2107180 () Bool)

(assert (=> b!4937440 (=> res!2107180 e!3085043)))

(assert (=> b!4937440 (= res!2107180 (>= lt!2034834 lt!2034849))))

(declare-fun lt!2034845 () Unit!147585)

(assert (=> b!4937440 (= lt!2034845 e!3085049)))

(declare-fun c!841799 () Bool)

(assert (=> b!4937440 (= c!841799 (= lt!2034834 lt!2034849))))

(assert (=> b!4937440 (<= lt!2034834 (size!37670 lt!2034833))))

(declare-fun lt!2034836 () Unit!147585)

(declare-fun lemmaIsPrefixThenSmallerEqSize!725 (List!56984 List!56984) Unit!147585)

(assert (=> b!4937440 (= lt!2034836 (lemmaIsPrefixThenSmallerEqSize!725 testedP!110 lt!2034833))))

(declare-fun b!4937441 () Bool)

(declare-fun tp!1385669 () Bool)

(assert (=> b!4937441 (= e!3085052 (and tp_is_empty!36055 tp!1385669))))

(declare-fun b!4937442 () Bool)

(declare-fun tp!1385673 () Bool)

(assert (=> b!4937442 (= e!3085051 tp!1385673)))

(declare-fun b!4937443 () Bool)

(declare-fun Unit!147588 () Unit!147585)

(assert (=> b!4937443 (= e!3085049 Unit!147588)))

(declare-fun lt!2034842 () Unit!147585)

(declare-fun lemmaIsPrefixRefl!3403 (List!56984 List!56984) Unit!147585)

(assert (=> b!4937443 (= lt!2034842 (lemmaIsPrefixRefl!3403 lt!2034833 lt!2034833))))

(assert (=> b!4937443 (isPrefix!5037 lt!2034833 lt!2034833)))

(declare-fun lt!2034853 () Unit!147585)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1161 (List!56984 List!56984 List!56984) Unit!147585)

(assert (=> b!4937443 (= lt!2034853 (lemmaIsPrefixSameLengthThenSameList!1161 lt!2034833 testedP!110 lt!2034833))))

(assert (=> b!4937443 false))

(declare-fun setIsEmpty!27838 () Bool)

(assert (=> setIsEmpty!27838 setRes!27838))

(assert (= (and start!519212 res!2107181) b!4937438))

(assert (= (and b!4937438 res!2107177) b!4937434))

(assert (= (and b!4937434 res!2107185) b!4937439))

(assert (= (and b!4937439 (not res!2107184)) b!4937432))

(assert (= (and b!4937432 (not res!2107183)) b!4937430))

(assert (= (and b!4937430 (not res!2107176)) b!4937429))

(assert (= (and b!4937429 (not res!2107178)) b!4937433))

(assert (= (and b!4937433 (not res!2107179)) b!4937428))

(assert (= (and b!4937428 (not res!2107186)) b!4937440))

(assert (= (and b!4937440 c!841799) b!4937443))

(assert (= (and b!4937440 (not c!841799)) b!4937436))

(assert (= (and b!4937440 (not res!2107180)) b!4937435))

(assert (= (and b!4937435 (not res!2107182)) b!4937427))

(get-info :version)

(assert (= (and start!519212 ((_ is Cons!56860) testedP!110)) b!4937441))

(assert (= (and start!519212 condSetEmpty!27838) setIsEmpty!27838))

(assert (= (and start!519212 (not condSetEmpty!27838)) setNonEmpty!27838))

(assert (= setNonEmpty!27838 b!4937442))

(assert (= start!519212 b!4937437))

(assert (= (and start!519212 ((_ is Cons!56860) testedSuffix!70)) b!4937431))

(declare-fun m!5959276 () Bool)

(assert (=> b!4937439 m!5959276))

(declare-fun m!5959278 () Bool)

(assert (=> b!4937439 m!5959278))

(declare-fun m!5959280 () Bool)

(assert (=> b!4937439 m!5959280))

(declare-fun m!5959282 () Bool)

(assert (=> b!4937437 m!5959282))

(declare-fun m!5959284 () Bool)

(assert (=> b!4937427 m!5959284))

(declare-fun m!5959286 () Bool)

(assert (=> setNonEmpty!27838 m!5959286))

(declare-fun m!5959288 () Bool)

(assert (=> b!4937435 m!5959288))

(declare-fun m!5959290 () Bool)

(assert (=> b!4937435 m!5959290))

(declare-fun m!5959292 () Bool)

(assert (=> b!4937435 m!5959292))

(declare-fun m!5959294 () Bool)

(assert (=> b!4937435 m!5959294))

(declare-fun m!5959296 () Bool)

(assert (=> b!4937435 m!5959296))

(declare-fun m!5959298 () Bool)

(assert (=> b!4937435 m!5959298))

(declare-fun m!5959300 () Bool)

(assert (=> b!4937435 m!5959300))

(declare-fun m!5959302 () Bool)

(assert (=> b!4937435 m!5959302))

(assert (=> b!4937435 m!5959288))

(declare-fun m!5959304 () Bool)

(assert (=> b!4937435 m!5959304))

(declare-fun m!5959306 () Bool)

(assert (=> b!4937434 m!5959306))

(declare-fun m!5959308 () Bool)

(assert (=> b!4937438 m!5959308))

(declare-fun m!5959310 () Bool)

(assert (=> b!4937433 m!5959310))

(declare-fun m!5959312 () Bool)

(assert (=> b!4937440 m!5959312))

(declare-fun m!5959314 () Bool)

(assert (=> b!4937440 m!5959314))

(declare-fun m!5959316 () Bool)

(assert (=> b!4937443 m!5959316))

(declare-fun m!5959318 () Bool)

(assert (=> b!4937443 m!5959318))

(declare-fun m!5959320 () Bool)

(assert (=> b!4937443 m!5959320))

(declare-fun m!5959322 () Bool)

(assert (=> b!4937432 m!5959322))

(declare-fun m!5959324 () Bool)

(assert (=> b!4937432 m!5959324))

(declare-fun m!5959326 () Bool)

(assert (=> b!4937432 m!5959326))

(declare-fun m!5959328 () Bool)

(assert (=> b!4937428 m!5959328))

(declare-fun m!5959330 () Bool)

(assert (=> b!4937428 m!5959330))

(declare-fun m!5959332 () Bool)

(assert (=> b!4937428 m!5959332))

(declare-fun m!5959334 () Bool)

(assert (=> b!4937428 m!5959334))

(declare-fun m!5959336 () Bool)

(assert (=> b!4937428 m!5959336))

(declare-fun m!5959338 () Bool)

(assert (=> b!4937428 m!5959338))

(declare-fun m!5959340 () Bool)

(assert (=> b!4937428 m!5959340))

(assert (=> b!4937428 m!5959330))

(declare-fun m!5959342 () Bool)

(assert (=> start!519212 m!5959342))

(declare-fun m!5959344 () Bool)

(assert (=> start!519212 m!5959344))

(declare-fun m!5959346 () Bool)

(assert (=> start!519212 m!5959346))

(declare-fun m!5959348 () Bool)

(assert (=> b!4937429 m!5959348))

(declare-fun m!5959350 () Bool)

(assert (=> b!4937429 m!5959350))

(declare-fun m!5959352 () Bool)

(assert (=> b!4937429 m!5959352))

(declare-fun m!5959354 () Bool)

(assert (=> b!4937429 m!5959354))

(check-sat (not b!4937442) (not b!4937441) (not setNonEmpty!27838) (not b!4937438) (not b!4937433) (not b!4937428) (not b!4937429) (not start!519212) (not b!4937443) (not b!4937431) tp_is_empty!36055 (not b!4937440) (not b!4937437) (not b!4937432) (not b!4937427) (not b!4937435) (not b!4937434) (not b!4937439))
(check-sat)
(get-model)

(declare-fun d!1589469 () Bool)

(declare-fun list!18072 (Conc!14948) List!56984)

(assert (=> d!1589469 (= (list!18070 totalInput!685) (list!18072 (c!841800 totalInput!685)))))

(declare-fun bs!1180885 () Bool)

(assert (= bs!1180885 d!1589469))

(declare-fun m!5959394 () Bool)

(assert (=> bs!1180885 m!5959394))

(assert (=> start!519212 d!1589469))

(declare-fun b!4937486 () Bool)

(declare-fun res!2107213 () Bool)

(declare-fun e!3085079 () Bool)

(assert (=> b!4937486 (=> (not res!2107213) (not e!3085079))))

(declare-fun lt!2034870 () List!56984)

(assert (=> b!4937486 (= res!2107213 (= (size!37670 lt!2034870) (+ (size!37670 testedP!110) (size!37670 testedSuffix!70))))))

(declare-fun b!4937485 () Bool)

(declare-fun e!3085080 () List!56984)

(assert (=> b!4937485 (= e!3085080 (Cons!56860 (h!63308 testedP!110) (++!12406 (t!367474 testedP!110) testedSuffix!70)))))

(declare-fun b!4937484 () Bool)

(assert (=> b!4937484 (= e!3085080 testedSuffix!70)))

(declare-fun b!4937487 () Bool)

(assert (=> b!4937487 (= e!3085079 (or (not (= testedSuffix!70 Nil!56860)) (= lt!2034870 testedP!110)))))

(declare-fun d!1589475 () Bool)

(assert (=> d!1589475 e!3085079))

(declare-fun res!2107214 () Bool)

(assert (=> d!1589475 (=> (not res!2107214) (not e!3085079))))

(declare-fun content!10112 (List!56984) (InoxSet C!27108))

(assert (=> d!1589475 (= res!2107214 (= (content!10112 lt!2034870) ((_ map or) (content!10112 testedP!110) (content!10112 testedSuffix!70))))))

(assert (=> d!1589475 (= lt!2034870 e!3085080)))

(declare-fun c!841811 () Bool)

(assert (=> d!1589475 (= c!841811 ((_ is Nil!56860) testedP!110))))

(assert (=> d!1589475 (= (++!12406 testedP!110 testedSuffix!70) lt!2034870)))

(assert (= (and d!1589475 c!841811) b!4937484))

(assert (= (and d!1589475 (not c!841811)) b!4937485))

(assert (= (and d!1589475 res!2107214) b!4937486))

(assert (= (and b!4937486 res!2107213) b!4937487))

(declare-fun m!5959418 () Bool)

(assert (=> b!4937486 m!5959418))

(assert (=> b!4937486 m!5959308))

(declare-fun m!5959420 () Bool)

(assert (=> b!4937486 m!5959420))

(declare-fun m!5959422 () Bool)

(assert (=> b!4937485 m!5959422))

(declare-fun m!5959424 () Bool)

(assert (=> d!1589475 m!5959424))

(declare-fun m!5959426 () Bool)

(assert (=> d!1589475 m!5959426))

(declare-fun m!5959428 () Bool)

(assert (=> d!1589475 m!5959428))

(assert (=> start!519212 d!1589475))

(declare-fun d!1589481 () Bool)

(declare-fun isBalanced!4125 (Conc!14948) Bool)

(assert (=> d!1589481 (= (inv!73910 totalInput!685) (isBalanced!4125 (c!841800 totalInput!685)))))

(declare-fun bs!1180886 () Bool)

(assert (= bs!1180886 d!1589481))

(declare-fun m!5959430 () Bool)

(assert (=> bs!1180886 m!5959430))

(assert (=> start!519212 d!1589481))

(declare-fun d!1589483 () Bool)

(declare-fun lt!2034873 () Int)

(assert (=> d!1589483 (>= lt!2034873 0)))

(declare-fun e!3085083 () Int)

(assert (=> d!1589483 (= lt!2034873 e!3085083)))

(declare-fun c!841814 () Bool)

(assert (=> d!1589483 (= c!841814 ((_ is Nil!56860) lt!2034833))))

(assert (=> d!1589483 (= (size!37670 lt!2034833) lt!2034873)))

(declare-fun b!4937492 () Bool)

(assert (=> b!4937492 (= e!3085083 0)))

(declare-fun b!4937493 () Bool)

(assert (=> b!4937493 (= e!3085083 (+ 1 (size!37670 (t!367474 lt!2034833))))))

(assert (= (and d!1589483 c!841814) b!4937492))

(assert (= (and d!1589483 (not c!841814)) b!4937493))

(declare-fun m!5959432 () Bool)

(assert (=> b!4937493 m!5959432))

(assert (=> b!4937440 d!1589483))

(declare-fun d!1589485 () Bool)

(assert (=> d!1589485 (<= (size!37670 testedP!110) (size!37670 lt!2034833))))

(declare-fun lt!2034876 () Unit!147585)

(declare-fun choose!36329 (List!56984 List!56984) Unit!147585)

(assert (=> d!1589485 (= lt!2034876 (choose!36329 testedP!110 lt!2034833))))

(assert (=> d!1589485 (isPrefix!5037 testedP!110 lt!2034833)))

(assert (=> d!1589485 (= (lemmaIsPrefixThenSmallerEqSize!725 testedP!110 lt!2034833) lt!2034876)))

(declare-fun bs!1180887 () Bool)

(assert (= bs!1180887 d!1589485))

(assert (=> bs!1180887 m!5959308))

(assert (=> bs!1180887 m!5959312))

(declare-fun m!5959434 () Bool)

(assert (=> bs!1180887 m!5959434))

(assert (=> bs!1180887 m!5959276))

(assert (=> b!4937440 d!1589485))

(declare-fun bs!1180908 () Bool)

(declare-fun b!4937624 () Bool)

(declare-fun d!1589487 () Bool)

(assert (= bs!1180908 (and b!4937624 d!1589487)))

(declare-fun lambda!246019 () Int)

(declare-fun lambda!246018 () Int)

(assert (=> bs!1180908 (not (= lambda!246019 lambda!246018))))

(declare-fun bs!1180909 () Bool)

(declare-fun b!4937625 () Bool)

(assert (= bs!1180909 (and b!4937625 d!1589487)))

(declare-fun lambda!246020 () Int)

(assert (=> bs!1180909 (not (= lambda!246020 lambda!246018))))

(declare-fun bs!1180910 () Bool)

(assert (= bs!1180910 (and b!4937625 b!4937624)))

(assert (=> bs!1180910 (= lambda!246020 lambda!246019)))

(declare-fun e!3085170 () Unit!147585)

(declare-fun Unit!147591 () Unit!147585)

(assert (=> b!4937625 (= e!3085170 Unit!147591)))

(declare-datatypes ((List!56987 0))(
  ( (Nil!56863) (Cons!56863 (h!63311 Context!6162) (t!367477 List!56987)) )
))
(declare-fun lt!2034974 () List!56987)

(declare-fun call!344524 () List!56987)

(assert (=> b!4937625 (= lt!2034974 call!344524)))

(declare-fun lt!2034973 () Unit!147585)

(declare-fun lemmaForallThenNotExists!196 (List!56987 Int) Unit!147585)

(assert (=> b!4937625 (= lt!2034973 (lemmaForallThenNotExists!196 lt!2034974 lambda!246018))))

(declare-fun call!344525 () Bool)

(assert (=> b!4937625 (not call!344525)))

(declare-fun lt!2034971 () Unit!147585)

(assert (=> b!4937625 (= lt!2034971 lt!2034973)))

(declare-fun bm!344520 () Bool)

(declare-fun toList!7975 ((InoxSet Context!6162)) List!56987)

(assert (=> bm!344520 (= call!344524 (toList!7975 z!3568))))

(declare-fun Unit!147592 () Unit!147585)

(assert (=> b!4937624 (= e!3085170 Unit!147592)))

(declare-fun lt!2034977 () List!56987)

(assert (=> b!4937624 (= lt!2034977 call!344524)))

(declare-fun lt!2034972 () Unit!147585)

(declare-fun lemmaNotForallThenExists!213 (List!56987 Int) Unit!147585)

(assert (=> b!4937624 (= lt!2034972 (lemmaNotForallThenExists!213 lt!2034977 lambda!246018))))

(assert (=> b!4937624 call!344525))

(declare-fun lt!2034975 () Unit!147585)

(assert (=> b!4937624 (= lt!2034975 lt!2034972)))

(declare-fun lt!2034970 () Bool)

(declare-datatypes ((Option!14193 0))(
  ( (None!14192) (Some!14192 (v!50164 List!56984)) )
))
(declare-fun isEmpty!30620 (Option!14193) Bool)

(declare-fun getLanguageWitness!653 ((InoxSet Context!6162)) Option!14193)

(assert (=> d!1589487 (= lt!2034970 (isEmpty!30620 (getLanguageWitness!653 z!3568)))))

(declare-fun forall!13207 ((InoxSet Context!6162) Int) Bool)

(assert (=> d!1589487 (= lt!2034970 (forall!13207 z!3568 lambda!246018))))

(declare-fun lt!2034976 () Unit!147585)

(assert (=> d!1589487 (= lt!2034976 e!3085170)))

(declare-fun c!841864 () Bool)

(assert (=> d!1589487 (= c!841864 (not (forall!13207 z!3568 lambda!246018)))))

(assert (=> d!1589487 (= (lostCauseZipper!757 z!3568) lt!2034970)))

(declare-fun bm!344519 () Bool)

(declare-fun exists!1297 (List!56987 Int) Bool)

(assert (=> bm!344519 (= call!344525 (exists!1297 (ite c!841864 lt!2034977 lt!2034974) (ite c!841864 lambda!246019 lambda!246020)))))

(assert (= (and d!1589487 c!841864) b!4937624))

(assert (= (and d!1589487 (not c!841864)) b!4937625))

(assert (= (or b!4937624 b!4937625) bm!344519))

(assert (= (or b!4937624 b!4937625) bm!344520))

(declare-fun m!5959576 () Bool)

(assert (=> bm!344520 m!5959576))

(declare-fun m!5959578 () Bool)

(assert (=> bm!344519 m!5959578))

(declare-fun m!5959580 () Bool)

(assert (=> d!1589487 m!5959580))

(assert (=> d!1589487 m!5959580))

(declare-fun m!5959582 () Bool)

(assert (=> d!1589487 m!5959582))

(declare-fun m!5959584 () Bool)

(assert (=> d!1589487 m!5959584))

(assert (=> d!1589487 m!5959584))

(declare-fun m!5959586 () Bool)

(assert (=> b!4937624 m!5959586))

(declare-fun m!5959588 () Bool)

(assert (=> b!4937625 m!5959588))

(assert (=> b!4937432 d!1589487))

(declare-fun d!1589551 () Bool)

(assert (=> d!1589551 (= testedSuffix!70 lt!2034843)))

(declare-fun lt!2034980 () Unit!147585)

(declare-fun choose!36330 (List!56984 List!56984 List!56984 List!56984 List!56984) Unit!147585)

(assert (=> d!1589551 (= lt!2034980 (choose!36330 testedP!110 testedSuffix!70 testedP!110 lt!2034843 lt!2034833))))

(assert (=> d!1589551 (isPrefix!5037 testedP!110 lt!2034833)))

(assert (=> d!1589551 (= (lemmaSamePrefixThenSameSuffix!2435 testedP!110 testedSuffix!70 testedP!110 lt!2034843 lt!2034833) lt!2034980)))

(declare-fun bs!1180911 () Bool)

(assert (= bs!1180911 d!1589551))

(declare-fun m!5959590 () Bool)

(assert (=> bs!1180911 m!5959590))

(assert (=> bs!1180911 m!5959276))

(assert (=> b!4937432 d!1589551))

(declare-fun d!1589553 () Bool)

(declare-fun lt!2034983 () List!56984)

(assert (=> d!1589553 (= (++!12406 testedP!110 lt!2034983) lt!2034833)))

(declare-fun e!3085173 () List!56984)

(assert (=> d!1589553 (= lt!2034983 e!3085173)))

(declare-fun c!841867 () Bool)

(assert (=> d!1589553 (= c!841867 ((_ is Cons!56860) testedP!110))))

(assert (=> d!1589553 (>= (size!37670 lt!2034833) (size!37670 testedP!110))))

(assert (=> d!1589553 (= (getSuffix!3021 lt!2034833 testedP!110) lt!2034983)))

(declare-fun b!4937630 () Bool)

(assert (=> b!4937630 (= e!3085173 (getSuffix!3021 (tail!9715 lt!2034833) (t!367474 testedP!110)))))

(declare-fun b!4937631 () Bool)

(assert (=> b!4937631 (= e!3085173 lt!2034833)))

(assert (= (and d!1589553 c!841867) b!4937630))

(assert (= (and d!1589553 (not c!841867)) b!4937631))

(declare-fun m!5959592 () Bool)

(assert (=> d!1589553 m!5959592))

(assert (=> d!1589553 m!5959312))

(assert (=> d!1589553 m!5959308))

(declare-fun m!5959594 () Bool)

(assert (=> b!4937630 m!5959594))

(assert (=> b!4937630 m!5959594))

(declare-fun m!5959596 () Bool)

(assert (=> b!4937630 m!5959596))

(assert (=> b!4937432 d!1589553))

(declare-fun d!1589555 () Bool)

(assert (=> d!1589555 (isPrefix!5037 lt!2034833 lt!2034833)))

(declare-fun lt!2034986 () Unit!147585)

(declare-fun choose!36331 (List!56984 List!56984) Unit!147585)

(assert (=> d!1589555 (= lt!2034986 (choose!36331 lt!2034833 lt!2034833))))

(assert (=> d!1589555 (= (lemmaIsPrefixRefl!3403 lt!2034833 lt!2034833) lt!2034986)))

(declare-fun bs!1180912 () Bool)

(assert (= bs!1180912 d!1589555))

(assert (=> bs!1180912 m!5959318))

(declare-fun m!5959598 () Bool)

(assert (=> bs!1180912 m!5959598))

(assert (=> b!4937443 d!1589555))

(declare-fun b!4937641 () Bool)

(declare-fun res!2107263 () Bool)

(declare-fun e!3085180 () Bool)

(assert (=> b!4937641 (=> (not res!2107263) (not e!3085180))))

(assert (=> b!4937641 (= res!2107263 (= (head!10576 lt!2034833) (head!10576 lt!2034833)))))

(declare-fun b!4937640 () Bool)

(declare-fun e!3085182 () Bool)

(assert (=> b!4937640 (= e!3085182 e!3085180)))

(declare-fun res!2107261 () Bool)

(assert (=> b!4937640 (=> (not res!2107261) (not e!3085180))))

(assert (=> b!4937640 (= res!2107261 (not ((_ is Nil!56860) lt!2034833)))))

(declare-fun d!1589557 () Bool)

(declare-fun e!3085181 () Bool)

(assert (=> d!1589557 e!3085181))

(declare-fun res!2107262 () Bool)

(assert (=> d!1589557 (=> res!2107262 e!3085181)))

(declare-fun lt!2034989 () Bool)

(assert (=> d!1589557 (= res!2107262 (not lt!2034989))))

(assert (=> d!1589557 (= lt!2034989 e!3085182)))

(declare-fun res!2107260 () Bool)

(assert (=> d!1589557 (=> res!2107260 e!3085182)))

(assert (=> d!1589557 (= res!2107260 ((_ is Nil!56860) lt!2034833))))

(assert (=> d!1589557 (= (isPrefix!5037 lt!2034833 lt!2034833) lt!2034989)))

(declare-fun b!4937642 () Bool)

(assert (=> b!4937642 (= e!3085180 (isPrefix!5037 (tail!9715 lt!2034833) (tail!9715 lt!2034833)))))

(declare-fun b!4937643 () Bool)

(assert (=> b!4937643 (= e!3085181 (>= (size!37670 lt!2034833) (size!37670 lt!2034833)))))

(assert (= (and d!1589557 (not res!2107260)) b!4937640))

(assert (= (and b!4937640 res!2107261) b!4937641))

(assert (= (and b!4937641 res!2107263) b!4937642))

(assert (= (and d!1589557 (not res!2107262)) b!4937643))

(declare-fun m!5959600 () Bool)

(assert (=> b!4937641 m!5959600))

(assert (=> b!4937641 m!5959600))

(assert (=> b!4937642 m!5959594))

(assert (=> b!4937642 m!5959594))

(assert (=> b!4937642 m!5959594))

(assert (=> b!4937642 m!5959594))

(declare-fun m!5959602 () Bool)

(assert (=> b!4937642 m!5959602))

(assert (=> b!4937643 m!5959312))

(assert (=> b!4937643 m!5959312))

(assert (=> b!4937443 d!1589557))

(declare-fun d!1589559 () Bool)

(assert (=> d!1589559 (= lt!2034833 testedP!110)))

(declare-fun lt!2034992 () Unit!147585)

(declare-fun choose!36332 (List!56984 List!56984 List!56984) Unit!147585)

(assert (=> d!1589559 (= lt!2034992 (choose!36332 lt!2034833 testedP!110 lt!2034833))))

(assert (=> d!1589559 (isPrefix!5037 lt!2034833 lt!2034833)))

(assert (=> d!1589559 (= (lemmaIsPrefixSameLengthThenSameList!1161 lt!2034833 testedP!110 lt!2034833) lt!2034992)))

(declare-fun bs!1180913 () Bool)

(assert (= bs!1180913 d!1589559))

(declare-fun m!5959604 () Bool)

(assert (=> bs!1180913 m!5959604))

(assert (=> bs!1180913 m!5959318))

(assert (=> b!4937443 d!1589559))

(declare-fun d!1589561 () Bool)

(declare-fun lt!2034995 () Int)

(assert (=> d!1589561 (= lt!2034995 (size!37670 (list!18070 (_1!33996 lt!2034840))))))

(declare-fun size!37673 (Conc!14948) Int)

(assert (=> d!1589561 (= lt!2034995 (size!37673 (c!841800 (_1!33996 lt!2034840))))))

(assert (=> d!1589561 (= (size!37671 (_1!33996 lt!2034840)) lt!2034995)))

(declare-fun bs!1180914 () Bool)

(assert (= bs!1180914 d!1589561))

(assert (=> bs!1180914 m!5959352))

(assert (=> bs!1180914 m!5959352))

(declare-fun m!5959606 () Bool)

(assert (=> bs!1180914 m!5959606))

(declare-fun m!5959608 () Bool)

(assert (=> bs!1180914 m!5959608))

(assert (=> b!4937433 d!1589561))

(declare-fun d!1589563 () Bool)

(declare-fun lambda!246023 () Int)

(declare-fun forall!13208 (List!56985 Int) Bool)

(assert (=> d!1589563 (= (inv!73909 setElem!27838) (forall!13208 (exprs!3581 setElem!27838) lambda!246023))))

(declare-fun bs!1180915 () Bool)

(assert (= bs!1180915 d!1589563))

(declare-fun m!5959610 () Bool)

(assert (=> bs!1180915 m!5959610))

(assert (=> setNonEmpty!27838 d!1589563))

(declare-fun d!1589565 () Bool)

(declare-fun lt!2034996 () Int)

(assert (=> d!1589565 (= lt!2034996 (size!37670 (list!18070 totalInput!685)))))

(assert (=> d!1589565 (= lt!2034996 (size!37673 (c!841800 totalInput!685)))))

(assert (=> d!1589565 (= (size!37671 totalInput!685) lt!2034996)))

(declare-fun bs!1180916 () Bool)

(assert (= bs!1180916 d!1589565))

(assert (=> bs!1180916 m!5959342))

(assert (=> bs!1180916 m!5959342))

(declare-fun m!5959612 () Bool)

(assert (=> bs!1180916 m!5959612))

(declare-fun m!5959614 () Bool)

(assert (=> bs!1180916 m!5959614))

(assert (=> b!4937434 d!1589565))

(declare-fun bs!1180917 () Bool)

(declare-fun d!1589567 () Bool)

(assert (= bs!1180917 (and d!1589567 d!1589487)))

(declare-fun lambda!246026 () Int)

(assert (=> bs!1180917 (not (= lambda!246026 lambda!246018))))

(declare-fun bs!1180918 () Bool)

(assert (= bs!1180918 (and d!1589567 b!4937624)))

(assert (=> bs!1180918 (not (= lambda!246026 lambda!246019))))

(declare-fun bs!1180919 () Bool)

(assert (= bs!1180919 (and d!1589567 b!4937625)))

(assert (=> bs!1180919 (not (= lambda!246026 lambda!246020))))

(declare-fun exists!1298 ((InoxSet Context!6162) Int) Bool)

(assert (=> d!1589567 (= (nullableZipper!844 z!3568) (exists!1298 z!3568 lambda!246026))))

(declare-fun bs!1180920 () Bool)

(assert (= bs!1180920 d!1589567))

(declare-fun m!5959616 () Bool)

(assert (=> bs!1180920 m!5959616))

(assert (=> b!4937435 d!1589567))

(declare-fun b!4937646 () Bool)

(declare-fun res!2107264 () Bool)

(declare-fun e!3085183 () Bool)

(assert (=> b!4937646 (=> (not res!2107264) (not e!3085183))))

(declare-fun lt!2034997 () List!56984)

(assert (=> b!4937646 (= res!2107264 (= (size!37670 lt!2034997) (+ (size!37670 lt!2034852) (size!37670 lt!2034850))))))

(declare-fun b!4937645 () Bool)

(declare-fun e!3085184 () List!56984)

(assert (=> b!4937645 (= e!3085184 (Cons!56860 (h!63308 lt!2034852) (++!12406 (t!367474 lt!2034852) lt!2034850)))))

(declare-fun b!4937644 () Bool)

(assert (=> b!4937644 (= e!3085184 lt!2034850)))

(declare-fun b!4937647 () Bool)

(assert (=> b!4937647 (= e!3085183 (or (not (= lt!2034850 Nil!56860)) (= lt!2034997 lt!2034852)))))

(declare-fun d!1589569 () Bool)

(assert (=> d!1589569 e!3085183))

(declare-fun res!2107265 () Bool)

(assert (=> d!1589569 (=> (not res!2107265) (not e!3085183))))

(assert (=> d!1589569 (= res!2107265 (= (content!10112 lt!2034997) ((_ map or) (content!10112 lt!2034852) (content!10112 lt!2034850))))))

(assert (=> d!1589569 (= lt!2034997 e!3085184)))

(declare-fun c!841870 () Bool)

(assert (=> d!1589569 (= c!841870 ((_ is Nil!56860) lt!2034852))))

(assert (=> d!1589569 (= (++!12406 lt!2034852 lt!2034850) lt!2034997)))

(assert (= (and d!1589569 c!841870) b!4937644))

(assert (= (and d!1589569 (not c!841870)) b!4937645))

(assert (= (and d!1589569 res!2107265) b!4937646))

(assert (= (and b!4937646 res!2107264) b!4937647))

(declare-fun m!5959618 () Bool)

(assert (=> b!4937646 m!5959618))

(assert (=> b!4937646 m!5959284))

(declare-fun m!5959620 () Bool)

(assert (=> b!4937646 m!5959620))

(declare-fun m!5959622 () Bool)

(assert (=> b!4937645 m!5959622))

(declare-fun m!5959624 () Bool)

(assert (=> d!1589569 m!5959624))

(declare-fun m!5959626 () Bool)

(assert (=> d!1589569 m!5959626))

(declare-fun m!5959628 () Bool)

(assert (=> d!1589569 m!5959628))

(assert (=> b!4937435 d!1589569))

(declare-fun d!1589571 () Bool)

(assert (=> d!1589571 (= (head!10576 lt!2034843) (h!63308 lt!2034843))))

(assert (=> b!4937435 d!1589571))

(declare-fun b!4937649 () Bool)

(declare-fun res!2107269 () Bool)

(declare-fun e!3085185 () Bool)

(assert (=> b!4937649 (=> (not res!2107269) (not e!3085185))))

(assert (=> b!4937649 (= res!2107269 (= (head!10576 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860))) (head!10576 lt!2034833)))))

(declare-fun b!4937648 () Bool)

(declare-fun e!3085187 () Bool)

(assert (=> b!4937648 (= e!3085187 e!3085185)))

(declare-fun res!2107267 () Bool)

(assert (=> b!4937648 (=> (not res!2107267) (not e!3085185))))

(assert (=> b!4937648 (= res!2107267 (not ((_ is Nil!56860) lt!2034833)))))

(declare-fun d!1589573 () Bool)

(declare-fun e!3085186 () Bool)

(assert (=> d!1589573 e!3085186))

(declare-fun res!2107268 () Bool)

(assert (=> d!1589573 (=> res!2107268 e!3085186)))

(declare-fun lt!2034998 () Bool)

(assert (=> d!1589573 (= res!2107268 (not lt!2034998))))

(assert (=> d!1589573 (= lt!2034998 e!3085187)))

(declare-fun res!2107266 () Bool)

(assert (=> d!1589573 (=> res!2107266 e!3085187)))

(assert (=> d!1589573 (= res!2107266 ((_ is Nil!56860) (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860))))))

(assert (=> d!1589573 (= (isPrefix!5037 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860)) lt!2034833) lt!2034998)))

(declare-fun b!4937650 () Bool)

(assert (=> b!4937650 (= e!3085185 (isPrefix!5037 (tail!9715 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860))) (tail!9715 lt!2034833)))))

(declare-fun b!4937651 () Bool)

(assert (=> b!4937651 (= e!3085186 (>= (size!37670 lt!2034833) (size!37670 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860)))))))

(assert (= (and d!1589573 (not res!2107266)) b!4937648))

(assert (= (and b!4937648 res!2107267) b!4937649))

(assert (= (and b!4937649 res!2107269) b!4937650))

(assert (= (and d!1589573 (not res!2107268)) b!4937651))

(assert (=> b!4937649 m!5959288))

(declare-fun m!5959630 () Bool)

(assert (=> b!4937649 m!5959630))

(assert (=> b!4937649 m!5959600))

(assert (=> b!4937650 m!5959288))

(declare-fun m!5959632 () Bool)

(assert (=> b!4937650 m!5959632))

(assert (=> b!4937650 m!5959594))

(assert (=> b!4937650 m!5959632))

(assert (=> b!4937650 m!5959594))

(declare-fun m!5959634 () Bool)

(assert (=> b!4937650 m!5959634))

(assert (=> b!4937651 m!5959312))

(assert (=> b!4937651 m!5959288))

(declare-fun m!5959636 () Bool)

(assert (=> b!4937651 m!5959636))

(assert (=> b!4937435 d!1589573))

(declare-fun d!1589575 () Bool)

(assert (=> d!1589575 (isPrefix!5037 (++!12406 testedP!110 (Cons!56860 (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) Nil!56860)) lt!2034833)))

(declare-fun lt!2035001 () Unit!147585)

(declare-fun choose!36333 (List!56984 List!56984) Unit!147585)

(assert (=> d!1589575 (= lt!2035001 (choose!36333 testedP!110 lt!2034833))))

(assert (=> d!1589575 (isPrefix!5037 testedP!110 lt!2034833)))

(assert (=> d!1589575 (= (lemmaAddHeadSuffixToPrefixStillPrefix!807 testedP!110 lt!2034833) lt!2035001)))

(declare-fun bs!1180921 () Bool)

(assert (= bs!1180921 d!1589575))

(assert (=> bs!1180921 m!5959326))

(declare-fun m!5959638 () Bool)

(assert (=> bs!1180921 m!5959638))

(declare-fun m!5959640 () Bool)

(assert (=> bs!1180921 m!5959640))

(declare-fun m!5959642 () Bool)

(assert (=> bs!1180921 m!5959642))

(assert (=> bs!1180921 m!5959640))

(assert (=> bs!1180921 m!5959276))

(assert (=> bs!1180921 m!5959326))

(declare-fun m!5959644 () Bool)

(assert (=> bs!1180921 m!5959644))

(assert (=> b!4937435 d!1589575))

(declare-fun d!1589577 () Bool)

(assert (=> d!1589577 (= (tail!9715 testedSuffix!70) (t!367474 testedSuffix!70))))

(assert (=> b!4937435 d!1589577))

(declare-fun b!4937654 () Bool)

(declare-fun res!2107270 () Bool)

(declare-fun e!3085188 () Bool)

(assert (=> b!4937654 (=> (not res!2107270) (not e!3085188))))

(declare-fun lt!2035002 () List!56984)

(assert (=> b!4937654 (= res!2107270 (= (size!37670 lt!2035002) (+ (size!37670 testedP!110) (size!37670 (Cons!56860 (head!10576 lt!2034843) Nil!56860)))))))

(declare-fun b!4937653 () Bool)

(declare-fun e!3085189 () List!56984)

(assert (=> b!4937653 (= e!3085189 (Cons!56860 (h!63308 testedP!110) (++!12406 (t!367474 testedP!110) (Cons!56860 (head!10576 lt!2034843) Nil!56860))))))

(declare-fun b!4937652 () Bool)

(assert (=> b!4937652 (= e!3085189 (Cons!56860 (head!10576 lt!2034843) Nil!56860))))

(declare-fun b!4937655 () Bool)

(assert (=> b!4937655 (= e!3085188 (or (not (= (Cons!56860 (head!10576 lt!2034843) Nil!56860) Nil!56860)) (= lt!2035002 testedP!110)))))

(declare-fun d!1589579 () Bool)

(assert (=> d!1589579 e!3085188))

(declare-fun res!2107271 () Bool)

(assert (=> d!1589579 (=> (not res!2107271) (not e!3085188))))

(assert (=> d!1589579 (= res!2107271 (= (content!10112 lt!2035002) ((_ map or) (content!10112 testedP!110) (content!10112 (Cons!56860 (head!10576 lt!2034843) Nil!56860)))))))

(assert (=> d!1589579 (= lt!2035002 e!3085189)))

(declare-fun c!841871 () Bool)

(assert (=> d!1589579 (= c!841871 ((_ is Nil!56860) testedP!110))))

(assert (=> d!1589579 (= (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860)) lt!2035002)))

(assert (= (and d!1589579 c!841871) b!4937652))

(assert (= (and d!1589579 (not c!841871)) b!4937653))

(assert (= (and d!1589579 res!2107271) b!4937654))

(assert (= (and b!4937654 res!2107270) b!4937655))

(declare-fun m!5959646 () Bool)

(assert (=> b!4937654 m!5959646))

(assert (=> b!4937654 m!5959308))

(declare-fun m!5959648 () Bool)

(assert (=> b!4937654 m!5959648))

(declare-fun m!5959650 () Bool)

(assert (=> b!4937653 m!5959650))

(declare-fun m!5959652 () Bool)

(assert (=> d!1589579 m!5959652))

(assert (=> d!1589579 m!5959426))

(declare-fun m!5959654 () Bool)

(assert (=> d!1589579 m!5959654))

(assert (=> b!4937435 d!1589579))

(declare-fun b!4937658 () Bool)

(declare-fun res!2107272 () Bool)

(declare-fun e!3085190 () Bool)

(assert (=> b!4937658 (=> (not res!2107272) (not e!3085190))))

(declare-fun lt!2035003 () List!56984)

(assert (=> b!4937658 (= res!2107272 (= (size!37670 lt!2035003) (+ (size!37670 testedP!110) (size!37670 (Cons!56860 lt!2034837 Nil!56860)))))))

(declare-fun b!4937657 () Bool)

(declare-fun e!3085191 () List!56984)

(assert (=> b!4937657 (= e!3085191 (Cons!56860 (h!63308 testedP!110) (++!12406 (t!367474 testedP!110) (Cons!56860 lt!2034837 Nil!56860))))))

(declare-fun b!4937656 () Bool)

(assert (=> b!4937656 (= e!3085191 (Cons!56860 lt!2034837 Nil!56860))))

(declare-fun b!4937659 () Bool)

(assert (=> b!4937659 (= e!3085190 (or (not (= (Cons!56860 lt!2034837 Nil!56860) Nil!56860)) (= lt!2035003 testedP!110)))))

(declare-fun d!1589581 () Bool)

(assert (=> d!1589581 e!3085190))

(declare-fun res!2107273 () Bool)

(assert (=> d!1589581 (=> (not res!2107273) (not e!3085190))))

(assert (=> d!1589581 (= res!2107273 (= (content!10112 lt!2035003) ((_ map or) (content!10112 testedP!110) (content!10112 (Cons!56860 lt!2034837 Nil!56860)))))))

(assert (=> d!1589581 (= lt!2035003 e!3085191)))

(declare-fun c!841872 () Bool)

(assert (=> d!1589581 (= c!841872 ((_ is Nil!56860) testedP!110))))

(assert (=> d!1589581 (= (++!12406 testedP!110 (Cons!56860 lt!2034837 Nil!56860)) lt!2035003)))

(assert (= (and d!1589581 c!841872) b!4937656))

(assert (= (and d!1589581 (not c!841872)) b!4937657))

(assert (= (and d!1589581 res!2107273) b!4937658))

(assert (= (and b!4937658 res!2107272) b!4937659))

(declare-fun m!5959656 () Bool)

(assert (=> b!4937658 m!5959656))

(assert (=> b!4937658 m!5959308))

(declare-fun m!5959658 () Bool)

(assert (=> b!4937658 m!5959658))

(declare-fun m!5959660 () Bool)

(assert (=> b!4937657 m!5959660))

(declare-fun m!5959662 () Bool)

(assert (=> d!1589581 m!5959662))

(assert (=> d!1589581 m!5959426))

(declare-fun m!5959664 () Bool)

(assert (=> d!1589581 m!5959664))

(assert (=> b!4937435 d!1589581))

(declare-fun d!1589583 () Bool)

(assert (=> d!1589583 (= (++!12406 (++!12406 testedP!110 (Cons!56860 lt!2034837 Nil!56860)) lt!2034850) lt!2034833)))

(declare-fun lt!2035006 () Unit!147585)

(declare-fun choose!36334 (List!56984 C!27108 List!56984 List!56984) Unit!147585)

(assert (=> d!1589583 (= lt!2035006 (choose!36334 testedP!110 lt!2034837 lt!2034850 lt!2034833))))

(assert (=> d!1589583 (= (++!12406 testedP!110 (Cons!56860 lt!2034837 lt!2034850)) lt!2034833)))

(assert (=> d!1589583 (= (lemmaMoveElementToOtherListKeepsConcatEq!1419 testedP!110 lt!2034837 lt!2034850 lt!2034833) lt!2035006)))

(declare-fun bs!1180922 () Bool)

(assert (= bs!1180922 d!1589583))

(assert (=> bs!1180922 m!5959304))

(assert (=> bs!1180922 m!5959304))

(declare-fun m!5959666 () Bool)

(assert (=> bs!1180922 m!5959666))

(declare-fun m!5959668 () Bool)

(assert (=> bs!1180922 m!5959668))

(declare-fun m!5959670 () Bool)

(assert (=> bs!1180922 m!5959670))

(assert (=> b!4937435 d!1589583))

(declare-fun d!1589585 () Bool)

(declare-fun c!841875 () Bool)

(assert (=> d!1589585 (= c!841875 ((_ is Node!14948) (c!841800 totalInput!685)))))

(declare-fun e!3085196 () Bool)

(assert (=> d!1589585 (= (inv!73911 (c!841800 totalInput!685)) e!3085196)))

(declare-fun b!4937666 () Bool)

(declare-fun inv!73915 (Conc!14948) Bool)

(assert (=> b!4937666 (= e!3085196 (inv!73915 (c!841800 totalInput!685)))))

(declare-fun b!4937667 () Bool)

(declare-fun e!3085197 () Bool)

(assert (=> b!4937667 (= e!3085196 e!3085197)))

(declare-fun res!2107276 () Bool)

(assert (=> b!4937667 (= res!2107276 (not ((_ is Leaf!24855) (c!841800 totalInput!685))))))

(assert (=> b!4937667 (=> res!2107276 e!3085197)))

(declare-fun b!4937668 () Bool)

(declare-fun inv!73916 (Conc!14948) Bool)

(assert (=> b!4937668 (= e!3085197 (inv!73916 (c!841800 totalInput!685)))))

(assert (= (and d!1589585 c!841875) b!4937666))

(assert (= (and d!1589585 (not c!841875)) b!4937667))

(assert (= (and b!4937667 (not res!2107276)) b!4937668))

(declare-fun m!5959672 () Bool)

(assert (=> b!4937666 m!5959672))

(declare-fun m!5959674 () Bool)

(assert (=> b!4937668 m!5959674))

(assert (=> b!4937437 d!1589585))

(declare-fun d!1589587 () Bool)

(declare-fun lt!2035007 () Int)

(assert (=> d!1589587 (>= lt!2035007 0)))

(declare-fun e!3085198 () Int)

(assert (=> d!1589587 (= lt!2035007 e!3085198)))

(declare-fun c!841876 () Bool)

(assert (=> d!1589587 (= c!841876 ((_ is Nil!56860) lt!2034852))))

(assert (=> d!1589587 (= (size!37670 lt!2034852) lt!2035007)))

(declare-fun b!4937669 () Bool)

(assert (=> b!4937669 (= e!3085198 0)))

(declare-fun b!4937670 () Bool)

(assert (=> b!4937670 (= e!3085198 (+ 1 (size!37670 (t!367474 lt!2034852))))))

(assert (= (and d!1589587 c!841876) b!4937669))

(assert (= (and d!1589587 (not c!841876)) b!4937670))

(declare-fun m!5959676 () Bool)

(assert (=> b!4937670 m!5959676))

(assert (=> b!4937427 d!1589587))

(declare-fun d!1589589 () Bool)

(declare-fun lt!2035010 () C!27108)

(declare-fun contains!19482 (List!56984 C!27108) Bool)

(assert (=> d!1589589 (contains!19482 lt!2034833 lt!2035010)))

(declare-fun e!3085203 () C!27108)

(assert (=> d!1589589 (= lt!2035010 e!3085203)))

(declare-fun c!841879 () Bool)

(assert (=> d!1589589 (= c!841879 (= testedPSize!70 0))))

(declare-fun e!3085204 () Bool)

(assert (=> d!1589589 e!3085204))

(declare-fun res!2107279 () Bool)

(assert (=> d!1589589 (=> (not res!2107279) (not e!3085204))))

(assert (=> d!1589589 (= res!2107279 (<= 0 testedPSize!70))))

(assert (=> d!1589589 (= (apply!13773 lt!2034833 testedPSize!70) lt!2035010)))

(declare-fun b!4937677 () Bool)

(assert (=> b!4937677 (= e!3085204 (< testedPSize!70 (size!37670 lt!2034833)))))

(declare-fun b!4937678 () Bool)

(assert (=> b!4937678 (= e!3085203 (head!10576 lt!2034833))))

(declare-fun b!4937679 () Bool)

(assert (=> b!4937679 (= e!3085203 (apply!13773 (tail!9715 lt!2034833) (- testedPSize!70 1)))))

(assert (= (and d!1589589 res!2107279) b!4937677))

(assert (= (and d!1589589 c!841879) b!4937678))

(assert (= (and d!1589589 (not c!841879)) b!4937679))

(declare-fun m!5959678 () Bool)

(assert (=> d!1589589 m!5959678))

(assert (=> b!4937677 m!5959312))

(assert (=> b!4937678 m!5959600))

(assert (=> b!4937679 m!5959594))

(assert (=> b!4937679 m!5959594))

(declare-fun m!5959680 () Bool)

(assert (=> b!4937679 m!5959680))

(assert (=> b!4937428 d!1589589))

(declare-fun d!1589591 () Bool)

(assert (=> d!1589591 (= (head!10576 testedSuffix!70) (h!63308 testedSuffix!70))))

(assert (=> b!4937428 d!1589591))

(declare-fun d!1589593 () Bool)

(assert (=> d!1589593 (= (head!10576 (drop!2270 lt!2034833 testedPSize!70)) (h!63308 (drop!2270 lt!2034833 testedPSize!70)))))

(assert (=> b!4937428 d!1589593))

(declare-fun b!4937698 () Bool)

(declare-fun e!3085215 () Int)

(declare-fun call!344528 () Int)

(assert (=> b!4937698 (= e!3085215 call!344528)))

(declare-fun b!4937699 () Bool)

(declare-fun e!3085218 () List!56984)

(declare-fun e!3085217 () List!56984)

(assert (=> b!4937699 (= e!3085218 e!3085217)))

(declare-fun c!841891 () Bool)

(assert (=> b!4937699 (= c!841891 (<= testedPSize!70 0))))

(declare-fun b!4937700 () Bool)

(declare-fun e!3085216 () Int)

(assert (=> b!4937700 (= e!3085215 e!3085216)))

(declare-fun c!841890 () Bool)

(assert (=> b!4937700 (= c!841890 (>= testedPSize!70 call!344528))))

(declare-fun b!4937701 () Bool)

(declare-fun e!3085219 () Bool)

(declare-fun lt!2035013 () List!56984)

(assert (=> b!4937701 (= e!3085219 (= (size!37670 lt!2035013) e!3085215))))

(declare-fun c!841889 () Bool)

(assert (=> b!4937701 (= c!841889 (<= testedPSize!70 0))))

(declare-fun b!4937702 () Bool)

(assert (=> b!4937702 (= e!3085217 lt!2034833)))

(declare-fun b!4937703 () Bool)

(assert (=> b!4937703 (= e!3085216 0)))

(declare-fun b!4937704 () Bool)

(assert (=> b!4937704 (= e!3085216 (- call!344528 testedPSize!70))))

(declare-fun d!1589595 () Bool)

(assert (=> d!1589595 e!3085219))

(declare-fun res!2107282 () Bool)

(assert (=> d!1589595 (=> (not res!2107282) (not e!3085219))))

(assert (=> d!1589595 (= res!2107282 (= ((_ map implies) (content!10112 lt!2035013) (content!10112 lt!2034833)) ((as const (InoxSet C!27108)) true)))))

(assert (=> d!1589595 (= lt!2035013 e!3085218)))

(declare-fun c!841888 () Bool)

(assert (=> d!1589595 (= c!841888 ((_ is Nil!56860) lt!2034833))))

(assert (=> d!1589595 (= (drop!2270 lt!2034833 testedPSize!70) lt!2035013)))

(declare-fun b!4937705 () Bool)

(assert (=> b!4937705 (= e!3085217 (drop!2270 (t!367474 lt!2034833) (- testedPSize!70 1)))))

(declare-fun bm!344523 () Bool)

(assert (=> bm!344523 (= call!344528 (size!37670 lt!2034833))))

(declare-fun b!4937706 () Bool)

(assert (=> b!4937706 (= e!3085218 Nil!56860)))

(assert (= (and d!1589595 c!841888) b!4937706))

(assert (= (and d!1589595 (not c!841888)) b!4937699))

(assert (= (and b!4937699 c!841891) b!4937702))

(assert (= (and b!4937699 (not c!841891)) b!4937705))

(assert (= (and d!1589595 res!2107282) b!4937701))

(assert (= (and b!4937701 c!841889) b!4937698))

(assert (= (and b!4937701 (not c!841889)) b!4937700))

(assert (= (and b!4937700 c!841890) b!4937703))

(assert (= (and b!4937700 (not c!841890)) b!4937704))

(assert (= (or b!4937698 b!4937700 b!4937704) bm!344523))

(declare-fun m!5959682 () Bool)

(assert (=> b!4937701 m!5959682))

(declare-fun m!5959684 () Bool)

(assert (=> d!1589595 m!5959684))

(declare-fun m!5959686 () Bool)

(assert (=> d!1589595 m!5959686))

(declare-fun m!5959688 () Bool)

(assert (=> b!4937705 m!5959688))

(assert (=> bm!344523 m!5959312))

(assert (=> b!4937428 d!1589595))

(declare-fun d!1589597 () Bool)

(declare-fun lt!2035016 () C!27108)

(assert (=> d!1589597 (= lt!2035016 (apply!13773 (list!18070 totalInput!685) testedPSize!70))))

(declare-fun apply!13775 (Conc!14948 Int) C!27108)

(assert (=> d!1589597 (= lt!2035016 (apply!13775 (c!841800 totalInput!685) testedPSize!70))))

(declare-fun e!3085222 () Bool)

(assert (=> d!1589597 e!3085222))

(declare-fun res!2107285 () Bool)

(assert (=> d!1589597 (=> (not res!2107285) (not e!3085222))))

(assert (=> d!1589597 (= res!2107285 (<= 0 testedPSize!70))))

(assert (=> d!1589597 (= (apply!13772 totalInput!685 testedPSize!70) lt!2035016)))

(declare-fun b!4937709 () Bool)

(assert (=> b!4937709 (= e!3085222 (< testedPSize!70 (size!37671 totalInput!685)))))

(assert (= (and d!1589597 res!2107285) b!4937709))

(assert (=> d!1589597 m!5959342))

(assert (=> d!1589597 m!5959342))

(declare-fun m!5959690 () Bool)

(assert (=> d!1589597 m!5959690))

(declare-fun m!5959692 () Bool)

(assert (=> d!1589597 m!5959692))

(assert (=> b!4937709 m!5959306))

(assert (=> b!4937428 d!1589597))

(declare-fun d!1589599 () Bool)

(assert (=> d!1589599 (= (head!10576 (drop!2270 lt!2034833 testedPSize!70)) (apply!13773 lt!2034833 testedPSize!70))))

(declare-fun lt!2035019 () Unit!147585)

(declare-fun choose!36335 (List!56984 Int) Unit!147585)

(assert (=> d!1589599 (= lt!2035019 (choose!36335 lt!2034833 testedPSize!70))))

(declare-fun e!3085225 () Bool)

(assert (=> d!1589599 e!3085225))

(declare-fun res!2107288 () Bool)

(assert (=> d!1589599 (=> (not res!2107288) (not e!3085225))))

(assert (=> d!1589599 (= res!2107288 (>= testedPSize!70 0))))

(assert (=> d!1589599 (= (lemmaDropApply!1328 lt!2034833 testedPSize!70) lt!2035019)))

(declare-fun b!4937712 () Bool)

(assert (=> b!4937712 (= e!3085225 (< testedPSize!70 (size!37670 lt!2034833)))))

(assert (= (and d!1589599 res!2107288) b!4937712))

(assert (=> d!1589599 m!5959330))

(assert (=> d!1589599 m!5959330))

(assert (=> d!1589599 m!5959332))

(assert (=> d!1589599 m!5959328))

(declare-fun m!5959694 () Bool)

(assert (=> d!1589599 m!5959694))

(assert (=> b!4937712 m!5959312))

(assert (=> b!4937428 d!1589599))

(declare-fun d!1589601 () Bool)

(assert (=> d!1589601 (and (= lt!2034835 testedP!110) (= lt!2034847 testedSuffix!70))))

(declare-fun lt!2035022 () Unit!147585)

(declare-fun choose!36336 (List!56984 List!56984 List!56984 List!56984) Unit!147585)

(assert (=> d!1589601 (= lt!2035022 (choose!36336 lt!2034835 lt!2034847 testedP!110 testedSuffix!70))))

(assert (=> d!1589601 (= (++!12406 lt!2034835 lt!2034847) (++!12406 testedP!110 testedSuffix!70))))

(assert (=> d!1589601 (= (lemmaConcatSameAndSameSizesThenSameLists!705 lt!2034835 lt!2034847 testedP!110 testedSuffix!70) lt!2035022)))

(declare-fun bs!1180923 () Bool)

(assert (= bs!1180923 d!1589601))

(declare-fun m!5959696 () Bool)

(assert (=> bs!1180923 m!5959696))

(assert (=> bs!1180923 m!5959348))

(assert (=> bs!1180923 m!5959344))

(assert (=> b!4937428 d!1589601))

(declare-fun d!1589603 () Bool)

(declare-fun lt!2035023 () Int)

(assert (=> d!1589603 (>= lt!2035023 0)))

(declare-fun e!3085226 () Int)

(assert (=> d!1589603 (= lt!2035023 e!3085226)))

(declare-fun c!841892 () Bool)

(assert (=> d!1589603 (= c!841892 ((_ is Nil!56860) testedP!110))))

(assert (=> d!1589603 (= (size!37670 testedP!110) lt!2035023)))

(declare-fun b!4937713 () Bool)

(assert (=> b!4937713 (= e!3085226 0)))

(declare-fun b!4937714 () Bool)

(assert (=> b!4937714 (= e!3085226 (+ 1 (size!37670 (t!367474 testedP!110))))))

(assert (= (and d!1589603 c!841892) b!4937713))

(assert (= (and d!1589603 (not c!841892)) b!4937714))

(declare-fun m!5959698 () Bool)

(assert (=> b!4937714 m!5959698))

(assert (=> b!4937438 d!1589603))

(declare-fun b!4937716 () Bool)

(declare-fun res!2107292 () Bool)

(declare-fun e!3085227 () Bool)

(assert (=> b!4937716 (=> (not res!2107292) (not e!3085227))))

(assert (=> b!4937716 (= res!2107292 (= (head!10576 testedP!110) (head!10576 lt!2034833)))))

(declare-fun b!4937715 () Bool)

(declare-fun e!3085229 () Bool)

(assert (=> b!4937715 (= e!3085229 e!3085227)))

(declare-fun res!2107290 () Bool)

(assert (=> b!4937715 (=> (not res!2107290) (not e!3085227))))

(assert (=> b!4937715 (= res!2107290 (not ((_ is Nil!56860) lt!2034833)))))

(declare-fun d!1589605 () Bool)

(declare-fun e!3085228 () Bool)

(assert (=> d!1589605 e!3085228))

(declare-fun res!2107291 () Bool)

(assert (=> d!1589605 (=> res!2107291 e!3085228)))

(declare-fun lt!2035024 () Bool)

(assert (=> d!1589605 (= res!2107291 (not lt!2035024))))

(assert (=> d!1589605 (= lt!2035024 e!3085229)))

(declare-fun res!2107289 () Bool)

(assert (=> d!1589605 (=> res!2107289 e!3085229)))

(assert (=> d!1589605 (= res!2107289 ((_ is Nil!56860) testedP!110))))

(assert (=> d!1589605 (= (isPrefix!5037 testedP!110 lt!2034833) lt!2035024)))

(declare-fun b!4937717 () Bool)

(assert (=> b!4937717 (= e!3085227 (isPrefix!5037 (tail!9715 testedP!110) (tail!9715 lt!2034833)))))

(declare-fun b!4937718 () Bool)

(assert (=> b!4937718 (= e!3085228 (>= (size!37670 lt!2034833) (size!37670 testedP!110)))))

(assert (= (and d!1589605 (not res!2107289)) b!4937715))

(assert (= (and b!4937715 res!2107290) b!4937716))

(assert (= (and b!4937716 res!2107292) b!4937717))

(assert (= (and d!1589605 (not res!2107291)) b!4937718))

(declare-fun m!5959700 () Bool)

(assert (=> b!4937716 m!5959700))

(assert (=> b!4937716 m!5959600))

(declare-fun m!5959702 () Bool)

(assert (=> b!4937717 m!5959702))

(assert (=> b!4937717 m!5959594))

(assert (=> b!4937717 m!5959702))

(assert (=> b!4937717 m!5959594))

(declare-fun m!5959704 () Bool)

(assert (=> b!4937717 m!5959704))

(assert (=> b!4937718 m!5959312))

(assert (=> b!4937718 m!5959308))

(assert (=> b!4937439 d!1589605))

(declare-fun b!4937720 () Bool)

(declare-fun res!2107296 () Bool)

(declare-fun e!3085230 () Bool)

(assert (=> b!4937720 (=> (not res!2107296) (not e!3085230))))

(assert (=> b!4937720 (= res!2107296 (= (head!10576 testedP!110) (head!10576 lt!2034846)))))

(declare-fun b!4937719 () Bool)

(declare-fun e!3085232 () Bool)

(assert (=> b!4937719 (= e!3085232 e!3085230)))

(declare-fun res!2107294 () Bool)

(assert (=> b!4937719 (=> (not res!2107294) (not e!3085230))))

(assert (=> b!4937719 (= res!2107294 (not ((_ is Nil!56860) lt!2034846)))))

(declare-fun d!1589607 () Bool)

(declare-fun e!3085231 () Bool)

(assert (=> d!1589607 e!3085231))

(declare-fun res!2107295 () Bool)

(assert (=> d!1589607 (=> res!2107295 e!3085231)))

(declare-fun lt!2035025 () Bool)

(assert (=> d!1589607 (= res!2107295 (not lt!2035025))))

(assert (=> d!1589607 (= lt!2035025 e!3085232)))

(declare-fun res!2107293 () Bool)

(assert (=> d!1589607 (=> res!2107293 e!3085232)))

(assert (=> d!1589607 (= res!2107293 ((_ is Nil!56860) testedP!110))))

(assert (=> d!1589607 (= (isPrefix!5037 testedP!110 lt!2034846) lt!2035025)))

(declare-fun b!4937721 () Bool)

(assert (=> b!4937721 (= e!3085230 (isPrefix!5037 (tail!9715 testedP!110) (tail!9715 lt!2034846)))))

(declare-fun b!4937722 () Bool)

(assert (=> b!4937722 (= e!3085231 (>= (size!37670 lt!2034846) (size!37670 testedP!110)))))

(assert (= (and d!1589607 (not res!2107293)) b!4937719))

(assert (= (and b!4937719 res!2107294) b!4937720))

(assert (= (and b!4937720 res!2107296) b!4937721))

(assert (= (and d!1589607 (not res!2107295)) b!4937722))

(assert (=> b!4937720 m!5959700))

(declare-fun m!5959706 () Bool)

(assert (=> b!4937720 m!5959706))

(assert (=> b!4937721 m!5959702))

(declare-fun m!5959708 () Bool)

(assert (=> b!4937721 m!5959708))

(assert (=> b!4937721 m!5959702))

(assert (=> b!4937721 m!5959708))

(declare-fun m!5959710 () Bool)

(assert (=> b!4937721 m!5959710))

(declare-fun m!5959712 () Bool)

(assert (=> b!4937722 m!5959712))

(assert (=> b!4937722 m!5959308))

(assert (=> b!4937439 d!1589607))

(declare-fun d!1589609 () Bool)

(assert (=> d!1589609 (isPrefix!5037 testedP!110 (++!12406 testedP!110 testedSuffix!70))))

(declare-fun lt!2035028 () Unit!147585)

(declare-fun choose!36337 (List!56984 List!56984) Unit!147585)

(assert (=> d!1589609 (= lt!2035028 (choose!36337 testedP!110 testedSuffix!70))))

(assert (=> d!1589609 (= (lemmaConcatTwoListThenFirstIsPrefix!3261 testedP!110 testedSuffix!70) lt!2035028)))

(declare-fun bs!1180924 () Bool)

(assert (= bs!1180924 d!1589609))

(assert (=> bs!1180924 m!5959344))

(assert (=> bs!1180924 m!5959344))

(declare-fun m!5959714 () Bool)

(assert (=> bs!1180924 m!5959714))

(declare-fun m!5959716 () Bool)

(assert (=> bs!1180924 m!5959716))

(assert (=> b!4937439 d!1589609))

(declare-fun b!4937725 () Bool)

(declare-fun res!2107297 () Bool)

(declare-fun e!3085233 () Bool)

(assert (=> b!4937725 (=> (not res!2107297) (not e!3085233))))

(declare-fun lt!2035029 () List!56984)

(assert (=> b!4937725 (= res!2107297 (= (size!37670 lt!2035029) (+ (size!37670 lt!2034835) (size!37670 lt!2034847))))))

(declare-fun b!4937724 () Bool)

(declare-fun e!3085234 () List!56984)

(assert (=> b!4937724 (= e!3085234 (Cons!56860 (h!63308 lt!2034835) (++!12406 (t!367474 lt!2034835) lt!2034847)))))

(declare-fun b!4937723 () Bool)

(assert (=> b!4937723 (= e!3085234 lt!2034847)))

(declare-fun b!4937726 () Bool)

(assert (=> b!4937726 (= e!3085233 (or (not (= lt!2034847 Nil!56860)) (= lt!2035029 lt!2034835)))))

(declare-fun d!1589611 () Bool)

(assert (=> d!1589611 e!3085233))

(declare-fun res!2107298 () Bool)

(assert (=> d!1589611 (=> (not res!2107298) (not e!3085233))))

(assert (=> d!1589611 (= res!2107298 (= (content!10112 lt!2035029) ((_ map or) (content!10112 lt!2034835) (content!10112 lt!2034847))))))

(assert (=> d!1589611 (= lt!2035029 e!3085234)))

(declare-fun c!841893 () Bool)

(assert (=> d!1589611 (= c!841893 ((_ is Nil!56860) lt!2034835))))

(assert (=> d!1589611 (= (++!12406 lt!2034835 lt!2034847) lt!2035029)))

(assert (= (and d!1589611 c!841893) b!4937723))

(assert (= (and d!1589611 (not c!841893)) b!4937724))

(assert (= (and d!1589611 res!2107298) b!4937725))

(assert (= (and b!4937725 res!2107297) b!4937726))

(declare-fun m!5959718 () Bool)

(assert (=> b!4937725 m!5959718))

(declare-fun m!5959720 () Bool)

(assert (=> b!4937725 m!5959720))

(declare-fun m!5959722 () Bool)

(assert (=> b!4937725 m!5959722))

(declare-fun m!5959724 () Bool)

(assert (=> b!4937724 m!5959724))

(declare-fun m!5959726 () Bool)

(assert (=> d!1589611 m!5959726))

(declare-fun m!5959728 () Bool)

(assert (=> d!1589611 m!5959728))

(declare-fun m!5959730 () Bool)

(assert (=> d!1589611 m!5959730))

(assert (=> b!4937429 d!1589611))

(declare-fun d!1589613 () Bool)

(assert (=> d!1589613 (= (list!18070 (_2!33996 lt!2034840)) (list!18072 (c!841800 (_2!33996 lt!2034840))))))

(declare-fun bs!1180925 () Bool)

(assert (= bs!1180925 d!1589613))

(declare-fun m!5959732 () Bool)

(assert (=> bs!1180925 m!5959732))

(assert (=> b!4937429 d!1589613))

(declare-fun d!1589615 () Bool)

(assert (=> d!1589615 (= (list!18070 (_1!33996 lt!2034840)) (list!18072 (c!841800 (_1!33996 lt!2034840))))))

(declare-fun bs!1180926 () Bool)

(assert (= bs!1180926 d!1589615))

(declare-fun m!5959734 () Bool)

(assert (=> bs!1180926 m!5959734))

(assert (=> b!4937429 d!1589615))

(declare-fun d!1589617 () Bool)

(declare-fun e!3085237 () Bool)

(assert (=> d!1589617 e!3085237))

(declare-fun res!2107303 () Bool)

(assert (=> d!1589617 (=> (not res!2107303) (not e!3085237))))

(declare-fun lt!2035035 () tuple2!61386)

(assert (=> d!1589617 (= res!2107303 (isBalanced!4125 (c!841800 (_1!33996 lt!2035035))))))

(declare-datatypes ((tuple2!61392 0))(
  ( (tuple2!61393 (_1!33999 Conc!14948) (_2!33999 Conc!14948)) )
))
(declare-fun lt!2035034 () tuple2!61392)

(assert (=> d!1589617 (= lt!2035035 (tuple2!61387 (BalanceConc!29327 (_1!33999 lt!2035034)) (BalanceConc!29327 (_2!33999 lt!2035034))))))

(declare-fun splitAt!351 (Conc!14948 Int) tuple2!61392)

(assert (=> d!1589617 (= lt!2035034 (splitAt!351 (c!841800 totalInput!685) testedPSize!70))))

(assert (=> d!1589617 (isBalanced!4125 (c!841800 totalInput!685))))

(assert (=> d!1589617 (= (splitAt!349 totalInput!685 testedPSize!70) lt!2035035)))

(declare-fun b!4937731 () Bool)

(declare-fun res!2107304 () Bool)

(assert (=> b!4937731 (=> (not res!2107304) (not e!3085237))))

(assert (=> b!4937731 (= res!2107304 (isBalanced!4125 (c!841800 (_2!33996 lt!2035035))))))

(declare-fun b!4937732 () Bool)

(declare-datatypes ((tuple2!61394 0))(
  ( (tuple2!61395 (_1!34000 List!56984) (_2!34000 List!56984)) )
))
(declare-fun splitAtIndex!131 (List!56984 Int) tuple2!61394)

(assert (=> b!4937732 (= e!3085237 (= (tuple2!61395 (list!18070 (_1!33996 lt!2035035)) (list!18070 (_2!33996 lt!2035035))) (splitAtIndex!131 (list!18070 totalInput!685) testedPSize!70)))))

(assert (= (and d!1589617 res!2107303) b!4937731))

(assert (= (and b!4937731 res!2107304) b!4937732))

(declare-fun m!5959736 () Bool)

(assert (=> d!1589617 m!5959736))

(declare-fun m!5959738 () Bool)

(assert (=> d!1589617 m!5959738))

(assert (=> d!1589617 m!5959430))

(declare-fun m!5959740 () Bool)

(assert (=> b!4937731 m!5959740))

(declare-fun m!5959742 () Bool)

(assert (=> b!4937732 m!5959742))

(declare-fun m!5959744 () Bool)

(assert (=> b!4937732 m!5959744))

(assert (=> b!4937732 m!5959342))

(assert (=> b!4937732 m!5959342))

(declare-fun m!5959746 () Bool)

(assert (=> b!4937732 m!5959746))

(assert (=> b!4937429 d!1589617))

(declare-fun b!4937737 () Bool)

(declare-fun e!3085240 () Bool)

(declare-fun tp!1385701 () Bool)

(assert (=> b!4937737 (= e!3085240 (and tp_is_empty!36055 tp!1385701))))

(assert (=> b!4937441 (= tp!1385669 e!3085240)))

(assert (= (and b!4937441 ((_ is Cons!56860) (t!367474 testedP!110))) b!4937737))

(declare-fun b!4937738 () Bool)

(declare-fun e!3085241 () Bool)

(declare-fun tp!1385702 () Bool)

(assert (=> b!4937738 (= e!3085241 (and tp_is_empty!36055 tp!1385702))))

(assert (=> b!4937431 (= tp!1385672 e!3085241)))

(assert (= (and b!4937431 ((_ is Cons!56860) (t!367474 testedSuffix!70))) b!4937738))

(declare-fun tp!1385711 () Bool)

(declare-fun tp!1385709 () Bool)

(declare-fun b!4937747 () Bool)

(declare-fun e!3085247 () Bool)

(assert (=> b!4937747 (= e!3085247 (and (inv!73911 (left!41468 (c!841800 totalInput!685))) tp!1385709 (inv!73911 (right!41798 (c!841800 totalInput!685))) tp!1385711))))

(declare-fun b!4937749 () Bool)

(declare-fun e!3085246 () Bool)

(declare-fun tp!1385710 () Bool)

(assert (=> b!4937749 (= e!3085246 tp!1385710)))

(declare-fun b!4937748 () Bool)

(declare-fun inv!73917 (IArray!29957) Bool)

(assert (=> b!4937748 (= e!3085247 (and (inv!73917 (xs!18272 (c!841800 totalInput!685))) e!3085246))))

(assert (=> b!4937437 (= tp!1385671 (and (inv!73911 (c!841800 totalInput!685)) e!3085247))))

(assert (= (and b!4937437 ((_ is Node!14948) (c!841800 totalInput!685))) b!4937747))

(assert (= b!4937748 b!4937749))

(assert (= (and b!4937437 ((_ is Leaf!24855) (c!841800 totalInput!685))) b!4937748))

(declare-fun m!5959748 () Bool)

(assert (=> b!4937747 m!5959748))

(declare-fun m!5959750 () Bool)

(assert (=> b!4937747 m!5959750))

(declare-fun m!5959752 () Bool)

(assert (=> b!4937748 m!5959752))

(assert (=> b!4937437 m!5959282))

(declare-fun b!4937754 () Bool)

(declare-fun e!3085250 () Bool)

(declare-fun tp!1385716 () Bool)

(declare-fun tp!1385717 () Bool)

(assert (=> b!4937754 (= e!3085250 (and tp!1385716 tp!1385717))))

(assert (=> b!4937442 (= tp!1385673 e!3085250)))

(assert (= (and b!4937442 ((_ is Cons!56861) (exprs!3581 setElem!27838))) b!4937754))

(declare-fun condSetEmpty!27844 () Bool)

(assert (=> setNonEmpty!27838 (= condSetEmpty!27844 (= setRest!27838 ((as const (Array Context!6162 Bool)) false)))))

(declare-fun setRes!27844 () Bool)

(assert (=> setNonEmpty!27838 (= tp!1385670 setRes!27844)))

(declare-fun setIsEmpty!27844 () Bool)

(assert (=> setIsEmpty!27844 setRes!27844))

(declare-fun setNonEmpty!27844 () Bool)

(declare-fun tp!1385723 () Bool)

(declare-fun setElem!27844 () Context!6162)

(declare-fun e!3085253 () Bool)

(assert (=> setNonEmpty!27844 (= setRes!27844 (and tp!1385723 (inv!73909 setElem!27844) e!3085253))))

(declare-fun setRest!27844 () (InoxSet Context!6162))

(assert (=> setNonEmpty!27844 (= setRest!27838 ((_ map or) (store ((as const (Array Context!6162 Bool)) false) setElem!27844 true) setRest!27844))))

(declare-fun b!4937759 () Bool)

(declare-fun tp!1385722 () Bool)

(assert (=> b!4937759 (= e!3085253 tp!1385722)))

(assert (= (and setNonEmpty!27838 condSetEmpty!27844) setIsEmpty!27844))

(assert (= (and setNonEmpty!27838 (not condSetEmpty!27844)) setNonEmpty!27844))

(assert (= setNonEmpty!27844 b!4937759))

(declare-fun m!5959754 () Bool)

(assert (=> setNonEmpty!27844 m!5959754))

(check-sat (not d!1589613) (not d!1589575) (not d!1589469) (not b!4937486) (not d!1589559) (not b!4937642) (not setNonEmpty!27844) (not d!1589581) (not bm!344520) (not b!4937712) (not b!4937754) (not d!1589551) (not b!4937709) (not b!4937701) (not b!4937731) (not b!4937714) (not b!4937721) (not b!4937624) (not b!4937679) (not b!4937759) (not d!1589553) (not d!1589475) (not d!1589555) (not b!4937645) (not d!1589583) (not d!1589579) (not b!4937658) (not b!4937651) (not b!4937749) (not b!4937670) (not b!4937653) (not b!4937724) (not b!4937725) (not b!4937705) (not b!4937718) (not b!4937654) (not b!4937720) (not d!1589611) (not d!1589487) (not d!1589595) (not d!1589617) (not d!1589481) (not b!4937678) (not b!4937437) (not bm!344519) (not b!4937649) (not b!4937732) (not d!1589563) (not b!4937738) (not b!4937493) (not bm!344523) (not b!4937716) (not b!4937485) (not d!1589565) (not b!4937641) (not b!4937650) (not b!4937630) (not d!1589485) (not b!4937677) (not b!4937666) (not b!4937737) (not b!4937657) (not b!4937643) (not d!1589569) (not d!1589601) (not d!1589609) (not b!4937748) (not d!1589589) (not b!4937625) (not d!1589567) (not d!1589615) (not b!4937646) (not b!4937668) tp_is_empty!36055 (not b!4937722) (not b!4937747) (not d!1589561) (not d!1589597) (not b!4937717) (not d!1589599))
(check-sat)
(get-model)

(assert (=> b!4937651 d!1589483))

(declare-fun d!1589817 () Bool)

(declare-fun lt!2035147 () Int)

(assert (=> d!1589817 (>= lt!2035147 0)))

(declare-fun e!3085443 () Int)

(assert (=> d!1589817 (= lt!2035147 e!3085443)))

(declare-fun c!842015 () Bool)

(assert (=> d!1589817 (= c!842015 ((_ is Nil!56860) (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860))))))

(assert (=> d!1589817 (= (size!37670 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860))) lt!2035147)))

(declare-fun b!4938114 () Bool)

(assert (=> b!4938114 (= e!3085443 0)))

(declare-fun b!4938115 () Bool)

(assert (=> b!4938115 (= e!3085443 (+ 1 (size!37670 (t!367474 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860))))))))

(assert (= (and d!1589817 c!842015) b!4938114))

(assert (= (and d!1589817 (not c!842015)) b!4938115))

(declare-fun m!5960172 () Bool)

(assert (=> b!4938115 m!5960172))

(assert (=> b!4937651 d!1589817))

(declare-fun b!4938118 () Bool)

(declare-fun res!2107427 () Bool)

(declare-fun e!3085446 () Bool)

(assert (=> b!4938118 (=> (not res!2107427) (not e!3085446))))

(declare-fun lt!2035150 () List!56984)

(assert (=> b!4938118 (= res!2107427 (= (size!37670 lt!2035150) (+ (size!37670 (t!367474 testedP!110)) (size!37670 (Cons!56860 lt!2034837 Nil!56860)))))))

(declare-fun b!4938117 () Bool)

(declare-fun e!3085447 () List!56984)

(assert (=> b!4938117 (= e!3085447 (Cons!56860 (h!63308 (t!367474 testedP!110)) (++!12406 (t!367474 (t!367474 testedP!110)) (Cons!56860 lt!2034837 Nil!56860))))))

(declare-fun b!4938116 () Bool)

(assert (=> b!4938116 (= e!3085447 (Cons!56860 lt!2034837 Nil!56860))))

(declare-fun b!4938119 () Bool)

(assert (=> b!4938119 (= e!3085446 (or (not (= (Cons!56860 lt!2034837 Nil!56860) Nil!56860)) (= lt!2035150 (t!367474 testedP!110))))))

(declare-fun d!1589819 () Bool)

(assert (=> d!1589819 e!3085446))

(declare-fun res!2107428 () Bool)

(assert (=> d!1589819 (=> (not res!2107428) (not e!3085446))))

(assert (=> d!1589819 (= res!2107428 (= (content!10112 lt!2035150) ((_ map or) (content!10112 (t!367474 testedP!110)) (content!10112 (Cons!56860 lt!2034837 Nil!56860)))))))

(assert (=> d!1589819 (= lt!2035150 e!3085447)))

(declare-fun c!842016 () Bool)

(assert (=> d!1589819 (= c!842016 ((_ is Nil!56860) (t!367474 testedP!110)))))

(assert (=> d!1589819 (= (++!12406 (t!367474 testedP!110) (Cons!56860 lt!2034837 Nil!56860)) lt!2035150)))

(assert (= (and d!1589819 c!842016) b!4938116))

(assert (= (and d!1589819 (not c!842016)) b!4938117))

(assert (= (and d!1589819 res!2107428) b!4938118))

(assert (= (and b!4938118 res!2107427) b!4938119))

(declare-fun m!5960174 () Bool)

(assert (=> b!4938118 m!5960174))

(assert (=> b!4938118 m!5959698))

(assert (=> b!4938118 m!5959658))

(declare-fun m!5960176 () Bool)

(assert (=> b!4938117 m!5960176))

(declare-fun m!5960178 () Bool)

(assert (=> d!1589819 m!5960178))

(declare-fun m!5960180 () Bool)

(assert (=> d!1589819 m!5960180))

(assert (=> d!1589819 m!5959664))

(assert (=> b!4937657 d!1589819))

(declare-fun d!1589821 () Bool)

(declare-fun lt!2035151 () Int)

(assert (=> d!1589821 (>= lt!2035151 0)))

(declare-fun e!3085448 () Int)

(assert (=> d!1589821 (= lt!2035151 e!3085448)))

(declare-fun c!842017 () Bool)

(assert (=> d!1589821 (= c!842017 ((_ is Nil!56860) lt!2035002))))

(assert (=> d!1589821 (= (size!37670 lt!2035002) lt!2035151)))

(declare-fun b!4938120 () Bool)

(assert (=> b!4938120 (= e!3085448 0)))

(declare-fun b!4938121 () Bool)

(assert (=> b!4938121 (= e!3085448 (+ 1 (size!37670 (t!367474 lt!2035002))))))

(assert (= (and d!1589821 c!842017) b!4938120))

(assert (= (and d!1589821 (not c!842017)) b!4938121))

(declare-fun m!5960182 () Bool)

(assert (=> b!4938121 m!5960182))

(assert (=> b!4937654 d!1589821))

(assert (=> b!4937654 d!1589603))

(declare-fun d!1589823 () Bool)

(declare-fun lt!2035152 () Int)

(assert (=> d!1589823 (>= lt!2035152 0)))

(declare-fun e!3085449 () Int)

(assert (=> d!1589823 (= lt!2035152 e!3085449)))

(declare-fun c!842018 () Bool)

(assert (=> d!1589823 (= c!842018 ((_ is Nil!56860) (Cons!56860 (head!10576 lt!2034843) Nil!56860)))))

(assert (=> d!1589823 (= (size!37670 (Cons!56860 (head!10576 lt!2034843) Nil!56860)) lt!2035152)))

(declare-fun b!4938122 () Bool)

(assert (=> b!4938122 (= e!3085449 0)))

(declare-fun b!4938123 () Bool)

(assert (=> b!4938123 (= e!3085449 (+ 1 (size!37670 (t!367474 (Cons!56860 (head!10576 lt!2034843) Nil!56860)))))))

(assert (= (and d!1589823 c!842018) b!4938122))

(assert (= (and d!1589823 (not c!842018)) b!4938123))

(declare-fun m!5960184 () Bool)

(assert (=> b!4938123 m!5960184))

(assert (=> b!4937654 d!1589823))

(declare-fun b!4938126 () Bool)

(declare-fun res!2107429 () Bool)

(declare-fun e!3085450 () Bool)

(assert (=> b!4938126 (=> (not res!2107429) (not e!3085450))))

(declare-fun lt!2035154 () List!56984)

(assert (=> b!4938126 (= res!2107429 (= (size!37670 lt!2035154) (+ (size!37670 (t!367474 lt!2034835)) (size!37670 lt!2034847))))))

(declare-fun b!4938125 () Bool)

(declare-fun e!3085451 () List!56984)

(assert (=> b!4938125 (= e!3085451 (Cons!56860 (h!63308 (t!367474 lt!2034835)) (++!12406 (t!367474 (t!367474 lt!2034835)) lt!2034847)))))

(declare-fun b!4938124 () Bool)

(assert (=> b!4938124 (= e!3085451 lt!2034847)))

(declare-fun b!4938127 () Bool)

(assert (=> b!4938127 (= e!3085450 (or (not (= lt!2034847 Nil!56860)) (= lt!2035154 (t!367474 lt!2034835))))))

(declare-fun d!1589825 () Bool)

(assert (=> d!1589825 e!3085450))

(declare-fun res!2107430 () Bool)

(assert (=> d!1589825 (=> (not res!2107430) (not e!3085450))))

(assert (=> d!1589825 (= res!2107430 (= (content!10112 lt!2035154) ((_ map or) (content!10112 (t!367474 lt!2034835)) (content!10112 lt!2034847))))))

(assert (=> d!1589825 (= lt!2035154 e!3085451)))

(declare-fun c!842019 () Bool)

(assert (=> d!1589825 (= c!842019 ((_ is Nil!56860) (t!367474 lt!2034835)))))

(assert (=> d!1589825 (= (++!12406 (t!367474 lt!2034835) lt!2034847) lt!2035154)))

(assert (= (and d!1589825 c!842019) b!4938124))

(assert (= (and d!1589825 (not c!842019)) b!4938125))

(assert (= (and d!1589825 res!2107430) b!4938126))

(assert (= (and b!4938126 res!2107429) b!4938127))

(declare-fun m!5960186 () Bool)

(assert (=> b!4938126 m!5960186))

(declare-fun m!5960188 () Bool)

(assert (=> b!4938126 m!5960188))

(assert (=> b!4938126 m!5959722))

(declare-fun m!5960190 () Bool)

(assert (=> b!4938125 m!5960190))

(declare-fun m!5960192 () Bool)

(assert (=> d!1589825 m!5960192))

(declare-fun m!5960194 () Bool)

(assert (=> d!1589825 m!5960194))

(assert (=> d!1589825 m!5959730))

(assert (=> b!4937724 d!1589825))

(declare-fun d!1589827 () Bool)

(declare-fun lt!2035155 () Int)

(assert (=> d!1589827 (>= lt!2035155 0)))

(declare-fun e!3085452 () Int)

(assert (=> d!1589827 (= lt!2035155 e!3085452)))

(declare-fun c!842020 () Bool)

(assert (=> d!1589827 (= c!842020 ((_ is Nil!56860) lt!2035013))))

(assert (=> d!1589827 (= (size!37670 lt!2035013) lt!2035155)))

(declare-fun b!4938128 () Bool)

(assert (=> b!4938128 (= e!3085452 0)))

(declare-fun b!4938129 () Bool)

(assert (=> b!4938129 (= e!3085452 (+ 1 (size!37670 (t!367474 lt!2035013))))))

(assert (= (and d!1589827 c!842020) b!4938128))

(assert (= (and d!1589827 (not c!842020)) b!4938129))

(declare-fun m!5960196 () Bool)

(assert (=> b!4938129 m!5960196))

(assert (=> b!4937701 d!1589827))

(declare-fun b!4938146 () Bool)

(declare-fun e!3085463 () List!56984)

(assert (=> b!4938146 (= e!3085463 Nil!56860)))

(declare-fun b!4938148 () Bool)

(declare-fun e!3085464 () List!56984)

(declare-fun list!18074 (IArray!29957) List!56984)

(assert (=> b!4938148 (= e!3085464 (list!18074 (xs!18272 (c!841800 (_1!33996 lt!2034840)))))))

(declare-fun b!4938147 () Bool)

(assert (=> b!4938147 (= e!3085463 e!3085464)))

(declare-fun c!842026 () Bool)

(assert (=> b!4938147 (= c!842026 ((_ is Leaf!24855) (c!841800 (_1!33996 lt!2034840))))))

(declare-fun b!4938149 () Bool)

(assert (=> b!4938149 (= e!3085464 (++!12406 (list!18072 (left!41468 (c!841800 (_1!33996 lt!2034840)))) (list!18072 (right!41798 (c!841800 (_1!33996 lt!2034840))))))))

(declare-fun d!1589829 () Bool)

(declare-fun c!842025 () Bool)

(assert (=> d!1589829 (= c!842025 ((_ is Empty!14948) (c!841800 (_1!33996 lt!2034840))))))

(assert (=> d!1589829 (= (list!18072 (c!841800 (_1!33996 lt!2034840))) e!3085463)))

(assert (= (and d!1589829 c!842025) b!4938146))

(assert (= (and d!1589829 (not c!842025)) b!4938147))

(assert (= (and b!4938147 c!842026) b!4938148))

(assert (= (and b!4938147 (not c!842026)) b!4938149))

(declare-fun m!5960218 () Bool)

(assert (=> b!4938148 m!5960218))

(declare-fun m!5960220 () Bool)

(assert (=> b!4938149 m!5960220))

(declare-fun m!5960222 () Bool)

(assert (=> b!4938149 m!5960222))

(assert (=> b!4938149 m!5960220))

(assert (=> b!4938149 m!5960222))

(declare-fun m!5960224 () Bool)

(assert (=> b!4938149 m!5960224))

(assert (=> d!1589615 d!1589829))

(declare-fun d!1589833 () Bool)

(declare-fun c!842027 () Bool)

(assert (=> d!1589833 (= c!842027 ((_ is Node!14948) (left!41468 (c!841800 totalInput!685))))))

(declare-fun e!3085470 () Bool)

(assert (=> d!1589833 (= (inv!73911 (left!41468 (c!841800 totalInput!685))) e!3085470)))

(declare-fun b!4938159 () Bool)

(assert (=> b!4938159 (= e!3085470 (inv!73915 (left!41468 (c!841800 totalInput!685))))))

(declare-fun b!4938160 () Bool)

(declare-fun e!3085471 () Bool)

(assert (=> b!4938160 (= e!3085470 e!3085471)))

(declare-fun res!2107431 () Bool)

(assert (=> b!4938160 (= res!2107431 (not ((_ is Leaf!24855) (left!41468 (c!841800 totalInput!685)))))))

(assert (=> b!4938160 (=> res!2107431 e!3085471)))

(declare-fun b!4938161 () Bool)

(assert (=> b!4938161 (= e!3085471 (inv!73916 (left!41468 (c!841800 totalInput!685))))))

(assert (= (and d!1589833 c!842027) b!4938159))

(assert (= (and d!1589833 (not c!842027)) b!4938160))

(assert (= (and b!4938160 (not res!2107431)) b!4938161))

(declare-fun m!5960226 () Bool)

(assert (=> b!4938159 m!5960226))

(declare-fun m!5960228 () Bool)

(assert (=> b!4938161 m!5960228))

(assert (=> b!4937747 d!1589833))

(declare-fun d!1589835 () Bool)

(declare-fun c!842028 () Bool)

(assert (=> d!1589835 (= c!842028 ((_ is Node!14948) (right!41798 (c!841800 totalInput!685))))))

(declare-fun e!3085472 () Bool)

(assert (=> d!1589835 (= (inv!73911 (right!41798 (c!841800 totalInput!685))) e!3085472)))

(declare-fun b!4938166 () Bool)

(assert (=> b!4938166 (= e!3085472 (inv!73915 (right!41798 (c!841800 totalInput!685))))))

(declare-fun b!4938167 () Bool)

(declare-fun e!3085473 () Bool)

(assert (=> b!4938167 (= e!3085472 e!3085473)))

(declare-fun res!2107432 () Bool)

(assert (=> b!4938167 (= res!2107432 (not ((_ is Leaf!24855) (right!41798 (c!841800 totalInput!685)))))))

(assert (=> b!4938167 (=> res!2107432 e!3085473)))

(declare-fun b!4938168 () Bool)

(assert (=> b!4938168 (= e!3085473 (inv!73916 (right!41798 (c!841800 totalInput!685))))))

(assert (= (and d!1589835 c!842028) b!4938166))

(assert (= (and d!1589835 (not c!842028)) b!4938167))

(assert (= (and b!4938167 (not res!2107432)) b!4938168))

(declare-fun m!5960230 () Bool)

(assert (=> b!4938166 m!5960230))

(declare-fun m!5960232 () Bool)

(assert (=> b!4938168 m!5960232))

(assert (=> b!4937747 d!1589835))

(declare-fun d!1589837 () Bool)

(assert (=> d!1589837 (= lt!2034833 testedP!110)))

(assert (=> d!1589837 true))

(declare-fun _$60!893 () Unit!147585)

(assert (=> d!1589837 (= (choose!36332 lt!2034833 testedP!110 lt!2034833) _$60!893)))

(assert (=> d!1589559 d!1589837))

(assert (=> d!1589559 d!1589557))

(declare-fun bs!1180968 () Bool)

(declare-fun d!1589839 () Bool)

(assert (= bs!1180968 (and d!1589839 d!1589487)))

(declare-fun lambda!246046 () Int)

(assert (=> bs!1180968 (not (= lambda!246046 lambda!246018))))

(declare-fun bs!1180969 () Bool)

(assert (= bs!1180969 (and d!1589839 b!4937624)))

(assert (=> bs!1180969 (not (= lambda!246046 lambda!246019))))

(declare-fun bs!1180970 () Bool)

(assert (= bs!1180970 (and d!1589839 b!4937625)))

(assert (=> bs!1180970 (not (= lambda!246046 lambda!246020))))

(declare-fun bs!1180971 () Bool)

(assert (= bs!1180971 (and d!1589839 d!1589567)))

(assert (=> bs!1180971 (not (= lambda!246046 lambda!246026))))

(assert (=> d!1589839 true))

(declare-fun order!25989 () Int)

(declare-fun dynLambda!23020 (Int Int) Int)

(assert (=> d!1589839 (< (dynLambda!23020 order!25989 lambda!246018) (dynLambda!23020 order!25989 lambda!246046))))

(assert (=> d!1589839 (not (exists!1297 lt!2034974 lambda!246046))))

(declare-fun lt!2035158 () Unit!147585)

(declare-fun choose!36341 (List!56987 Int) Unit!147585)

(assert (=> d!1589839 (= lt!2035158 (choose!36341 lt!2034974 lambda!246018))))

(declare-fun forall!13210 (List!56987 Int) Bool)

(assert (=> d!1589839 (forall!13210 lt!2034974 lambda!246018)))

(assert (=> d!1589839 (= (lemmaForallThenNotExists!196 lt!2034974 lambda!246018) lt!2035158)))

(declare-fun bs!1180972 () Bool)

(assert (= bs!1180972 d!1589839))

(declare-fun m!5960236 () Bool)

(assert (=> bs!1180972 m!5960236))

(declare-fun m!5960238 () Bool)

(assert (=> bs!1180972 m!5960238))

(declare-fun m!5960240 () Bool)

(assert (=> bs!1180972 m!5960240))

(assert (=> b!4937625 d!1589839))

(declare-fun d!1589843 () Bool)

(declare-fun e!3085480 () Bool)

(assert (=> d!1589843 e!3085480))

(declare-fun res!2107435 () Bool)

(assert (=> d!1589843 (=> (not res!2107435) (not e!3085480))))

(declare-fun lt!2035161 () List!56987)

(declare-fun noDuplicate!995 (List!56987) Bool)

(assert (=> d!1589843 (= res!2107435 (noDuplicate!995 lt!2035161))))

(declare-fun choose!36342 ((InoxSet Context!6162)) List!56987)

(assert (=> d!1589843 (= lt!2035161 (choose!36342 z!3568))))

(assert (=> d!1589843 (= (toList!7975 z!3568) lt!2035161)))

(declare-fun b!4938178 () Bool)

(declare-fun content!10114 (List!56987) (InoxSet Context!6162))

(assert (=> b!4938178 (= e!3085480 (= (content!10114 lt!2035161) z!3568))))

(assert (= (and d!1589843 res!2107435) b!4938178))

(declare-fun m!5960242 () Bool)

(assert (=> d!1589843 m!5960242))

(declare-fun m!5960244 () Bool)

(assert (=> d!1589843 m!5960244))

(declare-fun m!5960246 () Bool)

(assert (=> b!4938178 m!5960246))

(assert (=> bm!344520 d!1589843))

(declare-fun d!1589845 () Bool)

(declare-fun lt!2035162 () C!27108)

(assert (=> d!1589845 (contains!19482 (list!18070 totalInput!685) lt!2035162)))

(declare-fun e!3085481 () C!27108)

(assert (=> d!1589845 (= lt!2035162 e!3085481)))

(declare-fun c!842029 () Bool)

(assert (=> d!1589845 (= c!842029 (= testedPSize!70 0))))

(declare-fun e!3085482 () Bool)

(assert (=> d!1589845 e!3085482))

(declare-fun res!2107436 () Bool)

(assert (=> d!1589845 (=> (not res!2107436) (not e!3085482))))

(assert (=> d!1589845 (= res!2107436 (<= 0 testedPSize!70))))

(assert (=> d!1589845 (= (apply!13773 (list!18070 totalInput!685) testedPSize!70) lt!2035162)))

(declare-fun b!4938179 () Bool)

(assert (=> b!4938179 (= e!3085482 (< testedPSize!70 (size!37670 (list!18070 totalInput!685))))))

(declare-fun b!4938180 () Bool)

(assert (=> b!4938180 (= e!3085481 (head!10576 (list!18070 totalInput!685)))))

(declare-fun b!4938181 () Bool)

(assert (=> b!4938181 (= e!3085481 (apply!13773 (tail!9715 (list!18070 totalInput!685)) (- testedPSize!70 1)))))

(assert (= (and d!1589845 res!2107436) b!4938179))

(assert (= (and d!1589845 c!842029) b!4938180))

(assert (= (and d!1589845 (not c!842029)) b!4938181))

(assert (=> d!1589845 m!5959342))

(declare-fun m!5960248 () Bool)

(assert (=> d!1589845 m!5960248))

(assert (=> b!4938179 m!5959342))

(assert (=> b!4938179 m!5959612))

(assert (=> b!4938180 m!5959342))

(declare-fun m!5960250 () Bool)

(assert (=> b!4938180 m!5960250))

(assert (=> b!4938181 m!5959342))

(declare-fun m!5960252 () Bool)

(assert (=> b!4938181 m!5960252))

(assert (=> b!4938181 m!5960252))

(declare-fun m!5960254 () Bool)

(assert (=> b!4938181 m!5960254))

(assert (=> d!1589597 d!1589845))

(assert (=> d!1589597 d!1589469))

(declare-fun b!4938196 () Bool)

(declare-fun e!3085491 () Bool)

(assert (=> b!4938196 (= e!3085491 (< testedPSize!70 (size!37673 (c!841800 totalInput!685))))))

(declare-fun b!4938197 () Bool)

(declare-fun e!3085492 () Int)

(assert (=> b!4938197 (= e!3085492 (- testedPSize!70 (size!37673 (left!41468 (c!841800 totalInput!685)))))))

(declare-fun b!4938198 () Bool)

(assert (=> b!4938198 (= e!3085492 testedPSize!70)))

(declare-fun b!4938200 () Bool)

(declare-fun e!3085493 () C!27108)

(declare-fun call!344553 () C!27108)

(assert (=> b!4938200 (= e!3085493 call!344553)))

(declare-fun b!4938201 () Bool)

(assert (=> b!4938201 (= e!3085493 call!344553)))

(declare-fun bm!344548 () Bool)

(declare-fun c!842037 () Bool)

(declare-fun c!842036 () Bool)

(assert (=> bm!344548 (= c!842037 c!842036)))

(assert (=> bm!344548 (= call!344553 (apply!13775 (ite c!842036 (left!41468 (c!841800 totalInput!685)) (right!41798 (c!841800 totalInput!685))) e!3085492))))

(declare-fun b!4938202 () Bool)

(declare-fun e!3085494 () C!27108)

(declare-fun apply!13777 (IArray!29957 Int) C!27108)

(assert (=> b!4938202 (= e!3085494 (apply!13777 (xs!18272 (c!841800 totalInput!685)) testedPSize!70))))

(declare-fun d!1589847 () Bool)

(declare-fun lt!2035167 () C!27108)

(assert (=> d!1589847 (= lt!2035167 (apply!13773 (list!18072 (c!841800 totalInput!685)) testedPSize!70))))

(assert (=> d!1589847 (= lt!2035167 e!3085494)))

(declare-fun c!842038 () Bool)

(assert (=> d!1589847 (= c!842038 ((_ is Leaf!24855) (c!841800 totalInput!685)))))

(assert (=> d!1589847 e!3085491))

(declare-fun res!2107439 () Bool)

(assert (=> d!1589847 (=> (not res!2107439) (not e!3085491))))

(assert (=> d!1589847 (= res!2107439 (<= 0 testedPSize!70))))

(assert (=> d!1589847 (= (apply!13775 (c!841800 totalInput!685) testedPSize!70) lt!2035167)))

(declare-fun b!4938199 () Bool)

(assert (=> b!4938199 (= e!3085494 e!3085493)))

(declare-fun lt!2035168 () Bool)

(declare-fun appendIndex!383 (List!56984 List!56984 Int) Bool)

(assert (=> b!4938199 (= lt!2035168 (appendIndex!383 (list!18072 (left!41468 (c!841800 totalInput!685))) (list!18072 (right!41798 (c!841800 totalInput!685))) testedPSize!70))))

(assert (=> b!4938199 (= c!842036 (< testedPSize!70 (size!37673 (left!41468 (c!841800 totalInput!685)))))))

(assert (= (and d!1589847 res!2107439) b!4938196))

(assert (= (and d!1589847 c!842038) b!4938202))

(assert (= (and d!1589847 (not c!842038)) b!4938199))

(assert (= (and b!4938199 c!842036) b!4938200))

(assert (= (and b!4938199 (not c!842036)) b!4938201))

(assert (= (or b!4938200 b!4938201) bm!344548))

(assert (= (and bm!344548 c!842037) b!4938198))

(assert (= (and bm!344548 (not c!842037)) b!4938197))

(declare-fun m!5960256 () Bool)

(assert (=> b!4938197 m!5960256))

(assert (=> d!1589847 m!5959394))

(assert (=> d!1589847 m!5959394))

(declare-fun m!5960258 () Bool)

(assert (=> d!1589847 m!5960258))

(declare-fun m!5960260 () Bool)

(assert (=> bm!344548 m!5960260))

(declare-fun m!5960262 () Bool)

(assert (=> b!4938202 m!5960262))

(declare-fun m!5960264 () Bool)

(assert (=> b!4938199 m!5960264))

(declare-fun m!5960266 () Bool)

(assert (=> b!4938199 m!5960266))

(assert (=> b!4938199 m!5960264))

(assert (=> b!4938199 m!5960266))

(declare-fun m!5960268 () Bool)

(assert (=> b!4938199 m!5960268))

(assert (=> b!4938199 m!5960256))

(assert (=> b!4938196 m!5959614))

(assert (=> d!1589597 d!1589847))

(declare-fun d!1589849 () Bool)

(assert (=> d!1589849 (= (head!10576 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860))) (h!63308 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860))))))

(assert (=> b!4937649 d!1589849))

(declare-fun d!1589851 () Bool)

(assert (=> d!1589851 (= (head!10576 lt!2034833) (h!63308 lt!2034833))))

(assert (=> b!4937649 d!1589851))

(declare-fun b!4938215 () Bool)

(declare-fun res!2107457 () Bool)

(declare-fun e!3085500 () Bool)

(assert (=> b!4938215 (=> (not res!2107457) (not e!3085500))))

(assert (=> b!4938215 (= res!2107457 (isBalanced!4125 (left!41468 (c!841800 (_2!33996 lt!2035035)))))))

(declare-fun b!4938216 () Bool)

(declare-fun isEmpty!30622 (Conc!14948) Bool)

(assert (=> b!4938216 (= e!3085500 (not (isEmpty!30622 (right!41798 (c!841800 (_2!33996 lt!2035035))))))))

(declare-fun b!4938218 () Bool)

(declare-fun res!2107455 () Bool)

(assert (=> b!4938218 (=> (not res!2107455) (not e!3085500))))

(assert (=> b!4938218 (= res!2107455 (not (isEmpty!30622 (left!41468 (c!841800 (_2!33996 lt!2035035))))))))

(declare-fun b!4938219 () Bool)

(declare-fun e!3085499 () Bool)

(assert (=> b!4938219 (= e!3085499 e!3085500)))

(declare-fun res!2107454 () Bool)

(assert (=> b!4938219 (=> (not res!2107454) (not e!3085500))))

(declare-fun height!1994 (Conc!14948) Int)

(assert (=> b!4938219 (= res!2107454 (<= (- 1) (- (height!1994 (left!41468 (c!841800 (_2!33996 lt!2035035)))) (height!1994 (right!41798 (c!841800 (_2!33996 lt!2035035)))))))))

(declare-fun b!4938220 () Bool)

(declare-fun res!2107452 () Bool)

(assert (=> b!4938220 (=> (not res!2107452) (not e!3085500))))

(assert (=> b!4938220 (= res!2107452 (<= (- (height!1994 (left!41468 (c!841800 (_2!33996 lt!2035035)))) (height!1994 (right!41798 (c!841800 (_2!33996 lt!2035035))))) 1))))

(declare-fun d!1589853 () Bool)

(declare-fun res!2107453 () Bool)

(assert (=> d!1589853 (=> res!2107453 e!3085499)))

(assert (=> d!1589853 (= res!2107453 (not ((_ is Node!14948) (c!841800 (_2!33996 lt!2035035)))))))

(assert (=> d!1589853 (= (isBalanced!4125 (c!841800 (_2!33996 lt!2035035))) e!3085499)))

(declare-fun b!4938217 () Bool)

(declare-fun res!2107456 () Bool)

(assert (=> b!4938217 (=> (not res!2107456) (not e!3085500))))

(assert (=> b!4938217 (= res!2107456 (isBalanced!4125 (right!41798 (c!841800 (_2!33996 lt!2035035)))))))

(assert (= (and d!1589853 (not res!2107453)) b!4938219))

(assert (= (and b!4938219 res!2107454) b!4938220))

(assert (= (and b!4938220 res!2107452) b!4938215))

(assert (= (and b!4938215 res!2107457) b!4938217))

(assert (= (and b!4938217 res!2107456) b!4938218))

(assert (= (and b!4938218 res!2107455) b!4938216))

(declare-fun m!5960270 () Bool)

(assert (=> b!4938216 m!5960270))

(declare-fun m!5960272 () Bool)

(assert (=> b!4938217 m!5960272))

(declare-fun m!5960274 () Bool)

(assert (=> b!4938219 m!5960274))

(declare-fun m!5960276 () Bool)

(assert (=> b!4938219 m!5960276))

(declare-fun m!5960278 () Bool)

(assert (=> b!4938218 m!5960278))

(assert (=> b!4938220 m!5960274))

(assert (=> b!4938220 m!5960276))

(declare-fun m!5960280 () Bool)

(assert (=> b!4938215 m!5960280))

(assert (=> b!4937731 d!1589853))

(assert (=> d!1589555 d!1589557))

(declare-fun d!1589855 () Bool)

(assert (=> d!1589855 (isPrefix!5037 lt!2034833 lt!2034833)))

(assert (=> d!1589855 true))

(declare-fun _$45!2239 () Unit!147585)

(assert (=> d!1589855 (= (choose!36331 lt!2034833 lt!2034833) _$45!2239)))

(declare-fun bs!1180973 () Bool)

(assert (= bs!1180973 d!1589855))

(assert (=> bs!1180973 m!5959318))

(assert (=> d!1589555 d!1589855))

(declare-fun d!1589857 () Bool)

(declare-fun c!842041 () Bool)

(assert (=> d!1589857 (= c!842041 ((_ is Nil!56860) lt!2035013))))

(declare-fun e!3085503 () (InoxSet C!27108))

(assert (=> d!1589857 (= (content!10112 lt!2035013) e!3085503)))

(declare-fun b!4938225 () Bool)

(assert (=> b!4938225 (= e!3085503 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938226 () Bool)

(assert (=> b!4938226 (= e!3085503 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 lt!2035013) true) (content!10112 (t!367474 lt!2035013))))))

(assert (= (and d!1589857 c!842041) b!4938225))

(assert (= (and d!1589857 (not c!842041)) b!4938226))

(declare-fun m!5960282 () Bool)

(assert (=> b!4938226 m!5960282))

(declare-fun m!5960284 () Bool)

(assert (=> b!4938226 m!5960284))

(assert (=> d!1589595 d!1589857))

(declare-fun d!1589859 () Bool)

(declare-fun c!842042 () Bool)

(assert (=> d!1589859 (= c!842042 ((_ is Nil!56860) lt!2034833))))

(declare-fun e!3085504 () (InoxSet C!27108))

(assert (=> d!1589859 (= (content!10112 lt!2034833) e!3085504)))

(declare-fun b!4938227 () Bool)

(assert (=> b!4938227 (= e!3085504 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938228 () Bool)

(assert (=> b!4938228 (= e!3085504 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 lt!2034833) true) (content!10112 (t!367474 lt!2034833))))))

(assert (= (and d!1589859 c!842042) b!4938227))

(assert (= (and d!1589859 (not c!842042)) b!4938228))

(declare-fun m!5960286 () Bool)

(assert (=> b!4938228 m!5960286))

(declare-fun m!5960288 () Bool)

(assert (=> b!4938228 m!5960288))

(assert (=> d!1589595 d!1589859))

(declare-fun d!1589861 () Bool)

(declare-fun lt!2035169 () Int)

(assert (=> d!1589861 (>= lt!2035169 0)))

(declare-fun e!3085505 () Int)

(assert (=> d!1589861 (= lt!2035169 e!3085505)))

(declare-fun c!842043 () Bool)

(assert (=> d!1589861 (= c!842043 ((_ is Nil!56860) (list!18070 totalInput!685)))))

(assert (=> d!1589861 (= (size!37670 (list!18070 totalInput!685)) lt!2035169)))

(declare-fun b!4938229 () Bool)

(assert (=> b!4938229 (= e!3085505 0)))

(declare-fun b!4938230 () Bool)

(assert (=> b!4938230 (= e!3085505 (+ 1 (size!37670 (t!367474 (list!18070 totalInput!685)))))))

(assert (= (and d!1589861 c!842043) b!4938229))

(assert (= (and d!1589861 (not c!842043)) b!4938230))

(declare-fun m!5960290 () Bool)

(assert (=> b!4938230 m!5960290))

(assert (=> d!1589565 d!1589861))

(assert (=> d!1589565 d!1589469))

(declare-fun d!1589863 () Bool)

(declare-fun lt!2035172 () Int)

(assert (=> d!1589863 (= lt!2035172 (size!37670 (list!18072 (c!841800 totalInput!685))))))

(assert (=> d!1589863 (= lt!2035172 (ite ((_ is Empty!14948) (c!841800 totalInput!685)) 0 (ite ((_ is Leaf!24855) (c!841800 totalInput!685)) (csize!30127 (c!841800 totalInput!685)) (csize!30126 (c!841800 totalInput!685)))))))

(assert (=> d!1589863 (= (size!37673 (c!841800 totalInput!685)) lt!2035172)))

(declare-fun bs!1180974 () Bool)

(assert (= bs!1180974 d!1589863))

(assert (=> bs!1180974 m!5959394))

(assert (=> bs!1180974 m!5959394))

(declare-fun m!5960292 () Bool)

(assert (=> bs!1180974 m!5960292))

(assert (=> d!1589565 d!1589863))

(assert (=> d!1589599 d!1589593))

(assert (=> d!1589599 d!1589595))

(assert (=> d!1589599 d!1589589))

(declare-fun d!1589865 () Bool)

(assert (=> d!1589865 (= (head!10576 (drop!2270 lt!2034833 testedPSize!70)) (apply!13773 lt!2034833 testedPSize!70))))

(assert (=> d!1589865 true))

(declare-fun _$27!1675 () Unit!147585)

(assert (=> d!1589865 (= (choose!36335 lt!2034833 testedPSize!70) _$27!1675)))

(declare-fun bs!1180975 () Bool)

(assert (= bs!1180975 d!1589865))

(assert (=> bs!1180975 m!5959330))

(assert (=> bs!1180975 m!5959330))

(assert (=> bs!1180975 m!5959332))

(assert (=> bs!1180975 m!5959328))

(assert (=> d!1589599 d!1589865))

(declare-fun d!1589867 () Bool)

(assert (=> d!1589867 (= (head!10576 testedP!110) (h!63308 testedP!110))))

(assert (=> b!4937720 d!1589867))

(declare-fun d!1589869 () Bool)

(assert (=> d!1589869 (= (head!10576 lt!2034846) (h!63308 lt!2034846))))

(assert (=> b!4937720 d!1589869))

(declare-fun d!1589871 () Bool)

(declare-fun lt!2035173 () Int)

(assert (=> d!1589871 (>= lt!2035173 0)))

(declare-fun e!3085506 () Int)

(assert (=> d!1589871 (= lt!2035173 e!3085506)))

(declare-fun c!842044 () Bool)

(assert (=> d!1589871 (= c!842044 ((_ is Nil!56860) lt!2034997))))

(assert (=> d!1589871 (= (size!37670 lt!2034997) lt!2035173)))

(declare-fun b!4938231 () Bool)

(assert (=> b!4938231 (= e!3085506 0)))

(declare-fun b!4938232 () Bool)

(assert (=> b!4938232 (= e!3085506 (+ 1 (size!37670 (t!367474 lt!2034997))))))

(assert (= (and d!1589871 c!842044) b!4938231))

(assert (= (and d!1589871 (not c!842044)) b!4938232))

(declare-fun m!5960294 () Bool)

(assert (=> b!4938232 m!5960294))

(assert (=> b!4937646 d!1589871))

(assert (=> b!4937646 d!1589587))

(declare-fun d!1589873 () Bool)

(declare-fun lt!2035174 () Int)

(assert (=> d!1589873 (>= lt!2035174 0)))

(declare-fun e!3085507 () Int)

(assert (=> d!1589873 (= lt!2035174 e!3085507)))

(declare-fun c!842045 () Bool)

(assert (=> d!1589873 (= c!842045 ((_ is Nil!56860) lt!2034850))))

(assert (=> d!1589873 (= (size!37670 lt!2034850) lt!2035174)))

(declare-fun b!4938233 () Bool)

(assert (=> b!4938233 (= e!3085507 0)))

(declare-fun b!4938234 () Bool)

(assert (=> b!4938234 (= e!3085507 (+ 1 (size!37670 (t!367474 lt!2034850))))))

(assert (= (and d!1589873 c!842045) b!4938233))

(assert (= (and d!1589873 (not c!842045)) b!4938234))

(declare-fun m!5960296 () Bool)

(assert (=> b!4938234 m!5960296))

(assert (=> b!4937646 d!1589873))

(declare-fun d!1589875 () Bool)

(declare-fun c!842046 () Bool)

(assert (=> d!1589875 (= c!842046 ((_ is Nil!56860) lt!2034870))))

(declare-fun e!3085508 () (InoxSet C!27108))

(assert (=> d!1589875 (= (content!10112 lt!2034870) e!3085508)))

(declare-fun b!4938235 () Bool)

(assert (=> b!4938235 (= e!3085508 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938236 () Bool)

(assert (=> b!4938236 (= e!3085508 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 lt!2034870) true) (content!10112 (t!367474 lt!2034870))))))

(assert (= (and d!1589875 c!842046) b!4938235))

(assert (= (and d!1589875 (not c!842046)) b!4938236))

(declare-fun m!5960298 () Bool)

(assert (=> b!4938236 m!5960298))

(declare-fun m!5960300 () Bool)

(assert (=> b!4938236 m!5960300))

(assert (=> d!1589475 d!1589875))

(declare-fun d!1589877 () Bool)

(declare-fun c!842047 () Bool)

(assert (=> d!1589877 (= c!842047 ((_ is Nil!56860) testedP!110))))

(declare-fun e!3085509 () (InoxSet C!27108))

(assert (=> d!1589877 (= (content!10112 testedP!110) e!3085509)))

(declare-fun b!4938237 () Bool)

(assert (=> b!4938237 (= e!3085509 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938238 () Bool)

(assert (=> b!4938238 (= e!3085509 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 testedP!110) true) (content!10112 (t!367474 testedP!110))))))

(assert (= (and d!1589877 c!842047) b!4938237))

(assert (= (and d!1589877 (not c!842047)) b!4938238))

(declare-fun m!5960302 () Bool)

(assert (=> b!4938238 m!5960302))

(assert (=> b!4938238 m!5960180))

(assert (=> d!1589475 d!1589877))

(declare-fun d!1589879 () Bool)

(declare-fun c!842048 () Bool)

(assert (=> d!1589879 (= c!842048 ((_ is Nil!56860) testedSuffix!70))))

(declare-fun e!3085510 () (InoxSet C!27108))

(assert (=> d!1589879 (= (content!10112 testedSuffix!70) e!3085510)))

(declare-fun b!4938239 () Bool)

(assert (=> b!4938239 (= e!3085510 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938240 () Bool)

(assert (=> b!4938240 (= e!3085510 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 testedSuffix!70) true) (content!10112 (t!367474 testedSuffix!70))))))

(assert (= (and d!1589879 c!842048) b!4938239))

(assert (= (and d!1589879 (not c!842048)) b!4938240))

(declare-fun m!5960304 () Bool)

(assert (=> b!4938240 m!5960304))

(declare-fun m!5960306 () Bool)

(assert (=> b!4938240 m!5960306))

(assert (=> d!1589475 d!1589879))

(declare-fun d!1589881 () Bool)

(declare-fun lt!2035175 () List!56984)

(assert (=> d!1589881 (= (++!12406 (t!367474 testedP!110) lt!2035175) (tail!9715 lt!2034833))))

(declare-fun e!3085511 () List!56984)

(assert (=> d!1589881 (= lt!2035175 e!3085511)))

(declare-fun c!842049 () Bool)

(assert (=> d!1589881 (= c!842049 ((_ is Cons!56860) (t!367474 testedP!110)))))

(assert (=> d!1589881 (>= (size!37670 (tail!9715 lt!2034833)) (size!37670 (t!367474 testedP!110)))))

(assert (=> d!1589881 (= (getSuffix!3021 (tail!9715 lt!2034833) (t!367474 testedP!110)) lt!2035175)))

(declare-fun b!4938241 () Bool)

(assert (=> b!4938241 (= e!3085511 (getSuffix!3021 (tail!9715 (tail!9715 lt!2034833)) (t!367474 (t!367474 testedP!110))))))

(declare-fun b!4938242 () Bool)

(assert (=> b!4938242 (= e!3085511 (tail!9715 lt!2034833))))

(assert (= (and d!1589881 c!842049) b!4938241))

(assert (= (and d!1589881 (not c!842049)) b!4938242))

(declare-fun m!5960308 () Bool)

(assert (=> d!1589881 m!5960308))

(assert (=> d!1589881 m!5959594))

(declare-fun m!5960310 () Bool)

(assert (=> d!1589881 m!5960310))

(assert (=> d!1589881 m!5959698))

(assert (=> b!4938241 m!5959594))

(declare-fun m!5960312 () Bool)

(assert (=> b!4938241 m!5960312))

(assert (=> b!4938241 m!5960312))

(declare-fun m!5960314 () Bool)

(assert (=> b!4938241 m!5960314))

(assert (=> b!4937630 d!1589881))

(declare-fun d!1589883 () Bool)

(assert (=> d!1589883 (= (tail!9715 lt!2034833) (t!367474 lt!2034833))))

(assert (=> b!4937630 d!1589883))

(declare-fun d!1589885 () Bool)

(declare-fun lt!2035176 () Int)

(assert (=> d!1589885 (>= lt!2035176 0)))

(declare-fun e!3085512 () Int)

(assert (=> d!1589885 (= lt!2035176 e!3085512)))

(declare-fun c!842050 () Bool)

(assert (=> d!1589885 (= c!842050 ((_ is Nil!56860) lt!2034870))))

(assert (=> d!1589885 (= (size!37670 lt!2034870) lt!2035176)))

(declare-fun b!4938243 () Bool)

(assert (=> b!4938243 (= e!3085512 0)))

(declare-fun b!4938244 () Bool)

(assert (=> b!4938244 (= e!3085512 (+ 1 (size!37670 (t!367474 lt!2034870))))))

(assert (= (and d!1589885 c!842050) b!4938243))

(assert (= (and d!1589885 (not c!842050)) b!4938244))

(declare-fun m!5960316 () Bool)

(assert (=> b!4938244 m!5960316))

(assert (=> b!4937486 d!1589885))

(assert (=> b!4937486 d!1589603))

(declare-fun d!1589887 () Bool)

(declare-fun lt!2035177 () Int)

(assert (=> d!1589887 (>= lt!2035177 0)))

(declare-fun e!3085513 () Int)

(assert (=> d!1589887 (= lt!2035177 e!3085513)))

(declare-fun c!842051 () Bool)

(assert (=> d!1589887 (= c!842051 ((_ is Nil!56860) testedSuffix!70))))

(assert (=> d!1589887 (= (size!37670 testedSuffix!70) lt!2035177)))

(declare-fun b!4938245 () Bool)

(assert (=> b!4938245 (= e!3085513 0)))

(declare-fun b!4938246 () Bool)

(assert (=> b!4938246 (= e!3085513 (+ 1 (size!37670 (t!367474 testedSuffix!70))))))

(assert (= (and d!1589887 c!842051) b!4938245))

(assert (= (and d!1589887 (not c!842051)) b!4938246))

(declare-fun m!5960318 () Bool)

(assert (=> b!4938246 m!5960318))

(assert (=> b!4937486 d!1589887))

(declare-fun d!1589889 () Bool)

(declare-fun lt!2035178 () Int)

(assert (=> d!1589889 (>= lt!2035178 0)))

(declare-fun e!3085514 () Int)

(assert (=> d!1589889 (= lt!2035178 e!3085514)))

(declare-fun c!842052 () Bool)

(assert (=> d!1589889 (= c!842052 ((_ is Nil!56860) lt!2034846))))

(assert (=> d!1589889 (= (size!37670 lt!2034846) lt!2035178)))

(declare-fun b!4938247 () Bool)

(assert (=> b!4938247 (= e!3085514 0)))

(declare-fun b!4938248 () Bool)

(assert (=> b!4938248 (= e!3085514 (+ 1 (size!37670 (t!367474 lt!2034846))))))

(assert (= (and d!1589889 c!842052) b!4938247))

(assert (= (and d!1589889 (not c!842052)) b!4938248))

(declare-fun m!5960320 () Bool)

(assert (=> b!4938248 m!5960320))

(assert (=> b!4937722 d!1589889))

(assert (=> b!4937722 d!1589603))

(declare-fun b!4938250 () Bool)

(declare-fun res!2107461 () Bool)

(declare-fun e!3085515 () Bool)

(assert (=> b!4938250 (=> (not res!2107461) (not e!3085515))))

(assert (=> b!4938250 (= res!2107461 (= (head!10576 (tail!9715 testedP!110)) (head!10576 (tail!9715 lt!2034833))))))

(declare-fun b!4938249 () Bool)

(declare-fun e!3085517 () Bool)

(assert (=> b!4938249 (= e!3085517 e!3085515)))

(declare-fun res!2107459 () Bool)

(assert (=> b!4938249 (=> (not res!2107459) (not e!3085515))))

(assert (=> b!4938249 (= res!2107459 (not ((_ is Nil!56860) (tail!9715 lt!2034833))))))

(declare-fun d!1589891 () Bool)

(declare-fun e!3085516 () Bool)

(assert (=> d!1589891 e!3085516))

(declare-fun res!2107460 () Bool)

(assert (=> d!1589891 (=> res!2107460 e!3085516)))

(declare-fun lt!2035179 () Bool)

(assert (=> d!1589891 (= res!2107460 (not lt!2035179))))

(assert (=> d!1589891 (= lt!2035179 e!3085517)))

(declare-fun res!2107458 () Bool)

(assert (=> d!1589891 (=> res!2107458 e!3085517)))

(assert (=> d!1589891 (= res!2107458 ((_ is Nil!56860) (tail!9715 testedP!110)))))

(assert (=> d!1589891 (= (isPrefix!5037 (tail!9715 testedP!110) (tail!9715 lt!2034833)) lt!2035179)))

(declare-fun b!4938251 () Bool)

(assert (=> b!4938251 (= e!3085515 (isPrefix!5037 (tail!9715 (tail!9715 testedP!110)) (tail!9715 (tail!9715 lt!2034833))))))

(declare-fun b!4938252 () Bool)

(assert (=> b!4938252 (= e!3085516 (>= (size!37670 (tail!9715 lt!2034833)) (size!37670 (tail!9715 testedP!110))))))

(assert (= (and d!1589891 (not res!2107458)) b!4938249))

(assert (= (and b!4938249 res!2107459) b!4938250))

(assert (= (and b!4938250 res!2107461) b!4938251))

(assert (= (and d!1589891 (not res!2107460)) b!4938252))

(assert (=> b!4938250 m!5959702))

(declare-fun m!5960322 () Bool)

(assert (=> b!4938250 m!5960322))

(assert (=> b!4938250 m!5959594))

(declare-fun m!5960324 () Bool)

(assert (=> b!4938250 m!5960324))

(assert (=> b!4938251 m!5959702))

(declare-fun m!5960326 () Bool)

(assert (=> b!4938251 m!5960326))

(assert (=> b!4938251 m!5959594))

(assert (=> b!4938251 m!5960312))

(assert (=> b!4938251 m!5960326))

(assert (=> b!4938251 m!5960312))

(declare-fun m!5960328 () Bool)

(assert (=> b!4938251 m!5960328))

(assert (=> b!4938252 m!5959594))

(assert (=> b!4938252 m!5960310))

(assert (=> b!4938252 m!5959702))

(declare-fun m!5960330 () Bool)

(assert (=> b!4938252 m!5960330))

(assert (=> b!4937717 d!1589891))

(declare-fun d!1589893 () Bool)

(assert (=> d!1589893 (= (tail!9715 testedP!110) (t!367474 testedP!110))))

(assert (=> b!4937717 d!1589893))

(assert (=> b!4937717 d!1589883))

(declare-fun b!4938255 () Bool)

(declare-fun res!2107462 () Bool)

(declare-fun e!3085518 () Bool)

(assert (=> b!4938255 (=> (not res!2107462) (not e!3085518))))

(declare-fun lt!2035180 () List!56984)

(assert (=> b!4938255 (= res!2107462 (= (size!37670 lt!2035180) (+ (size!37670 testedP!110) (size!37670 lt!2034983))))))

(declare-fun b!4938254 () Bool)

(declare-fun e!3085519 () List!56984)

(assert (=> b!4938254 (= e!3085519 (Cons!56860 (h!63308 testedP!110) (++!12406 (t!367474 testedP!110) lt!2034983)))))

(declare-fun b!4938253 () Bool)

(assert (=> b!4938253 (= e!3085519 lt!2034983)))

(declare-fun b!4938256 () Bool)

(assert (=> b!4938256 (= e!3085518 (or (not (= lt!2034983 Nil!56860)) (= lt!2035180 testedP!110)))))

(declare-fun d!1589895 () Bool)

(assert (=> d!1589895 e!3085518))

(declare-fun res!2107463 () Bool)

(assert (=> d!1589895 (=> (not res!2107463) (not e!3085518))))

(assert (=> d!1589895 (= res!2107463 (= (content!10112 lt!2035180) ((_ map or) (content!10112 testedP!110) (content!10112 lt!2034983))))))

(assert (=> d!1589895 (= lt!2035180 e!3085519)))

(declare-fun c!842053 () Bool)

(assert (=> d!1589895 (= c!842053 ((_ is Nil!56860) testedP!110))))

(assert (=> d!1589895 (= (++!12406 testedP!110 lt!2034983) lt!2035180)))

(assert (= (and d!1589895 c!842053) b!4938253))

(assert (= (and d!1589895 (not c!842053)) b!4938254))

(assert (= (and d!1589895 res!2107463) b!4938255))

(assert (= (and b!4938255 res!2107462) b!4938256))

(declare-fun m!5960332 () Bool)

(assert (=> b!4938255 m!5960332))

(assert (=> b!4938255 m!5959308))

(declare-fun m!5960334 () Bool)

(assert (=> b!4938255 m!5960334))

(declare-fun m!5960336 () Bool)

(assert (=> b!4938254 m!5960336))

(declare-fun m!5960338 () Bool)

(assert (=> d!1589895 m!5960338))

(assert (=> d!1589895 m!5959426))

(declare-fun m!5960340 () Bool)

(assert (=> d!1589895 m!5960340))

(assert (=> d!1589553 d!1589895))

(assert (=> d!1589553 d!1589483))

(assert (=> d!1589553 d!1589603))

(declare-fun d!1589897 () Bool)

(declare-fun c!842054 () Bool)

(assert (=> d!1589897 (= c!842054 ((_ is Nil!56860) lt!2035002))))

(declare-fun e!3085520 () (InoxSet C!27108))

(assert (=> d!1589897 (= (content!10112 lt!2035002) e!3085520)))

(declare-fun b!4938257 () Bool)

(assert (=> b!4938257 (= e!3085520 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938258 () Bool)

(assert (=> b!4938258 (= e!3085520 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 lt!2035002) true) (content!10112 (t!367474 lt!2035002))))))

(assert (= (and d!1589897 c!842054) b!4938257))

(assert (= (and d!1589897 (not c!842054)) b!4938258))

(declare-fun m!5960342 () Bool)

(assert (=> b!4938258 m!5960342))

(declare-fun m!5960344 () Bool)

(assert (=> b!4938258 m!5960344))

(assert (=> d!1589579 d!1589897))

(assert (=> d!1589579 d!1589877))

(declare-fun d!1589899 () Bool)

(declare-fun c!842055 () Bool)

(assert (=> d!1589899 (= c!842055 ((_ is Nil!56860) (Cons!56860 (head!10576 lt!2034843) Nil!56860)))))

(declare-fun e!3085521 () (InoxSet C!27108))

(assert (=> d!1589899 (= (content!10112 (Cons!56860 (head!10576 lt!2034843) Nil!56860)) e!3085521)))

(declare-fun b!4938259 () Bool)

(assert (=> b!4938259 (= e!3085521 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938260 () Bool)

(assert (=> b!4938260 (= e!3085521 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 (Cons!56860 (head!10576 lt!2034843) Nil!56860)) true) (content!10112 (t!367474 (Cons!56860 (head!10576 lt!2034843) Nil!56860)))))))

(assert (= (and d!1589899 c!842055) b!4938259))

(assert (= (and d!1589899 (not c!842055)) b!4938260))

(declare-fun m!5960346 () Bool)

(assert (=> b!4938260 m!5960346))

(declare-fun m!5960348 () Bool)

(assert (=> b!4938260 m!5960348))

(assert (=> d!1589579 d!1589899))

(declare-fun b!4938263 () Bool)

(declare-fun res!2107464 () Bool)

(declare-fun e!3085522 () Bool)

(assert (=> b!4938263 (=> (not res!2107464) (not e!3085522))))

(declare-fun lt!2035181 () List!56984)

(assert (=> b!4938263 (= res!2107464 (= (size!37670 lt!2035181) (+ (size!37670 (++!12406 testedP!110 (Cons!56860 lt!2034837 Nil!56860))) (size!37670 lt!2034850))))))

(declare-fun e!3085523 () List!56984)

(declare-fun b!4938262 () Bool)

(assert (=> b!4938262 (= e!3085523 (Cons!56860 (h!63308 (++!12406 testedP!110 (Cons!56860 lt!2034837 Nil!56860))) (++!12406 (t!367474 (++!12406 testedP!110 (Cons!56860 lt!2034837 Nil!56860))) lt!2034850)))))

(declare-fun b!4938261 () Bool)

(assert (=> b!4938261 (= e!3085523 lt!2034850)))

(declare-fun b!4938264 () Bool)

(assert (=> b!4938264 (= e!3085522 (or (not (= lt!2034850 Nil!56860)) (= lt!2035181 (++!12406 testedP!110 (Cons!56860 lt!2034837 Nil!56860)))))))

(declare-fun d!1589901 () Bool)

(assert (=> d!1589901 e!3085522))

(declare-fun res!2107465 () Bool)

(assert (=> d!1589901 (=> (not res!2107465) (not e!3085522))))

(assert (=> d!1589901 (= res!2107465 (= (content!10112 lt!2035181) ((_ map or) (content!10112 (++!12406 testedP!110 (Cons!56860 lt!2034837 Nil!56860))) (content!10112 lt!2034850))))))

(assert (=> d!1589901 (= lt!2035181 e!3085523)))

(declare-fun c!842056 () Bool)

(assert (=> d!1589901 (= c!842056 ((_ is Nil!56860) (++!12406 testedP!110 (Cons!56860 lt!2034837 Nil!56860))))))

(assert (=> d!1589901 (= (++!12406 (++!12406 testedP!110 (Cons!56860 lt!2034837 Nil!56860)) lt!2034850) lt!2035181)))

(assert (= (and d!1589901 c!842056) b!4938261))

(assert (= (and d!1589901 (not c!842056)) b!4938262))

(assert (= (and d!1589901 res!2107465) b!4938263))

(assert (= (and b!4938263 res!2107464) b!4938264))

(declare-fun m!5960350 () Bool)

(assert (=> b!4938263 m!5960350))

(assert (=> b!4938263 m!5959304))

(declare-fun m!5960352 () Bool)

(assert (=> b!4938263 m!5960352))

(assert (=> b!4938263 m!5959620))

(declare-fun m!5960354 () Bool)

(assert (=> b!4938262 m!5960354))

(declare-fun m!5960356 () Bool)

(assert (=> d!1589901 m!5960356))

(assert (=> d!1589901 m!5959304))

(declare-fun m!5960358 () Bool)

(assert (=> d!1589901 m!5960358))

(assert (=> d!1589901 m!5959628))

(assert (=> d!1589583 d!1589901))

(assert (=> d!1589583 d!1589581))

(declare-fun d!1589903 () Bool)

(assert (=> d!1589903 (= (++!12406 (++!12406 testedP!110 (Cons!56860 lt!2034837 Nil!56860)) lt!2034850) lt!2034833)))

(assert (=> d!1589903 true))

(declare-fun _$68!825 () Unit!147585)

(assert (=> d!1589903 (= (choose!36334 testedP!110 lt!2034837 lt!2034850 lt!2034833) _$68!825)))

(declare-fun bs!1180976 () Bool)

(assert (= bs!1180976 d!1589903))

(assert (=> bs!1180976 m!5959304))

(assert (=> bs!1180976 m!5959304))

(assert (=> bs!1180976 m!5959666))

(assert (=> d!1589583 d!1589903))

(declare-fun b!4938267 () Bool)

(declare-fun res!2107466 () Bool)

(declare-fun e!3085524 () Bool)

(assert (=> b!4938267 (=> (not res!2107466) (not e!3085524))))

(declare-fun lt!2035182 () List!56984)

(assert (=> b!4938267 (= res!2107466 (= (size!37670 lt!2035182) (+ (size!37670 testedP!110) (size!37670 (Cons!56860 lt!2034837 lt!2034850)))))))

(declare-fun e!3085525 () List!56984)

(declare-fun b!4938266 () Bool)

(assert (=> b!4938266 (= e!3085525 (Cons!56860 (h!63308 testedP!110) (++!12406 (t!367474 testedP!110) (Cons!56860 lt!2034837 lt!2034850))))))

(declare-fun b!4938265 () Bool)

(assert (=> b!4938265 (= e!3085525 (Cons!56860 lt!2034837 lt!2034850))))

(declare-fun b!4938268 () Bool)

(assert (=> b!4938268 (= e!3085524 (or (not (= (Cons!56860 lt!2034837 lt!2034850) Nil!56860)) (= lt!2035182 testedP!110)))))

(declare-fun d!1589905 () Bool)

(assert (=> d!1589905 e!3085524))

(declare-fun res!2107467 () Bool)

(assert (=> d!1589905 (=> (not res!2107467) (not e!3085524))))

(assert (=> d!1589905 (= res!2107467 (= (content!10112 lt!2035182) ((_ map or) (content!10112 testedP!110) (content!10112 (Cons!56860 lt!2034837 lt!2034850)))))))

(assert (=> d!1589905 (= lt!2035182 e!3085525)))

(declare-fun c!842057 () Bool)

(assert (=> d!1589905 (= c!842057 ((_ is Nil!56860) testedP!110))))

(assert (=> d!1589905 (= (++!12406 testedP!110 (Cons!56860 lt!2034837 lt!2034850)) lt!2035182)))

(assert (= (and d!1589905 c!842057) b!4938265))

(assert (= (and d!1589905 (not c!842057)) b!4938266))

(assert (= (and d!1589905 res!2107467) b!4938267))

(assert (= (and b!4938267 res!2107466) b!4938268))

(declare-fun m!5960360 () Bool)

(assert (=> b!4938267 m!5960360))

(assert (=> b!4938267 m!5959308))

(declare-fun m!5960362 () Bool)

(assert (=> b!4938267 m!5960362))

(declare-fun m!5960364 () Bool)

(assert (=> b!4938266 m!5960364))

(declare-fun m!5960366 () Bool)

(assert (=> d!1589905 m!5960366))

(assert (=> d!1589905 m!5959426))

(declare-fun m!5960368 () Bool)

(assert (=> d!1589905 m!5960368))

(assert (=> d!1589583 d!1589905))

(declare-fun d!1589907 () Bool)

(assert (=> d!1589907 (= (isEmpty!30620 (getLanguageWitness!653 z!3568)) (not ((_ is Some!14192) (getLanguageWitness!653 z!3568))))))

(assert (=> d!1589487 d!1589907))

(declare-fun bs!1180977 () Bool)

(declare-fun d!1589909 () Bool)

(assert (= bs!1180977 (and d!1589909 b!4937624)))

(declare-fun lambda!246053 () Int)

(assert (=> bs!1180977 (= lambda!246053 lambda!246019)))

(declare-fun bs!1180978 () Bool)

(assert (= bs!1180978 (and d!1589909 d!1589567)))

(assert (=> bs!1180978 (not (= lambda!246053 lambda!246026))))

(declare-fun bs!1180979 () Bool)

(assert (= bs!1180979 (and d!1589909 b!4937625)))

(assert (=> bs!1180979 (= lambda!246053 lambda!246020)))

(declare-fun bs!1180980 () Bool)

(assert (= bs!1180980 (and d!1589909 d!1589839)))

(assert (=> bs!1180980 (not (= lambda!246053 lambda!246046))))

(declare-fun bs!1180981 () Bool)

(assert (= bs!1180981 (and d!1589909 d!1589487)))

(assert (=> bs!1180981 (not (= lambda!246053 lambda!246018))))

(declare-fun lt!2035185 () Option!14193)

(declare-fun isDefined!11173 (Option!14193) Bool)

(assert (=> d!1589909 (= (isDefined!11173 lt!2035185) (exists!1298 z!3568 lambda!246053))))

(declare-fun e!3085528 () Option!14193)

(assert (=> d!1589909 (= lt!2035185 e!3085528)))

(declare-fun c!842066 () Bool)

(assert (=> d!1589909 (= c!842066 (exists!1298 z!3568 lambda!246053))))

(assert (=> d!1589909 (= (getLanguageWitness!653 z!3568) lt!2035185)))

(declare-fun b!4938273 () Bool)

(declare-fun getLanguageWitness!655 (Context!6162) Option!14193)

(declare-fun getWitness!638 ((InoxSet Context!6162) Int) Context!6162)

(assert (=> b!4938273 (= e!3085528 (getLanguageWitness!655 (getWitness!638 z!3568 lambda!246053)))))

(declare-fun b!4938274 () Bool)

(assert (=> b!4938274 (= e!3085528 None!14192)))

(assert (= (and d!1589909 c!842066) b!4938273))

(assert (= (and d!1589909 (not c!842066)) b!4938274))

(declare-fun m!5960370 () Bool)

(assert (=> d!1589909 m!5960370))

(declare-fun m!5960372 () Bool)

(assert (=> d!1589909 m!5960372))

(assert (=> d!1589909 m!5960372))

(declare-fun m!5960374 () Bool)

(assert (=> b!4938273 m!5960374))

(assert (=> b!4938273 m!5960374))

(declare-fun m!5960376 () Bool)

(assert (=> b!4938273 m!5960376))

(assert (=> d!1589487 d!1589909))

(declare-fun d!1589911 () Bool)

(declare-fun lt!2035188 () Bool)

(assert (=> d!1589911 (= lt!2035188 (forall!13210 (toList!7975 z!3568) lambda!246018))))

(declare-fun choose!36344 ((InoxSet Context!6162) Int) Bool)

(assert (=> d!1589911 (= lt!2035188 (choose!36344 z!3568 lambda!246018))))

(assert (=> d!1589911 (= (forall!13207 z!3568 lambda!246018) lt!2035188)))

(declare-fun bs!1180982 () Bool)

(assert (= bs!1180982 d!1589911))

(assert (=> bs!1180982 m!5959576))

(assert (=> bs!1180982 m!5959576))

(declare-fun m!5960378 () Bool)

(assert (=> bs!1180982 m!5960378))

(declare-fun m!5960380 () Bool)

(assert (=> bs!1180982 m!5960380))

(assert (=> d!1589487 d!1589911))

(declare-fun b!4938275 () Bool)

(declare-fun res!2107473 () Bool)

(declare-fun e!3085530 () Bool)

(assert (=> b!4938275 (=> (not res!2107473) (not e!3085530))))

(assert (=> b!4938275 (= res!2107473 (isBalanced!4125 (left!41468 (c!841800 totalInput!685))))))

(declare-fun b!4938276 () Bool)

(assert (=> b!4938276 (= e!3085530 (not (isEmpty!30622 (right!41798 (c!841800 totalInput!685)))))))

(declare-fun b!4938278 () Bool)

(declare-fun res!2107471 () Bool)

(assert (=> b!4938278 (=> (not res!2107471) (not e!3085530))))

(assert (=> b!4938278 (= res!2107471 (not (isEmpty!30622 (left!41468 (c!841800 totalInput!685)))))))

(declare-fun b!4938279 () Bool)

(declare-fun e!3085529 () Bool)

(assert (=> b!4938279 (= e!3085529 e!3085530)))

(declare-fun res!2107470 () Bool)

(assert (=> b!4938279 (=> (not res!2107470) (not e!3085530))))

(assert (=> b!4938279 (= res!2107470 (<= (- 1) (- (height!1994 (left!41468 (c!841800 totalInput!685))) (height!1994 (right!41798 (c!841800 totalInput!685))))))))

(declare-fun b!4938280 () Bool)

(declare-fun res!2107468 () Bool)

(assert (=> b!4938280 (=> (not res!2107468) (not e!3085530))))

(assert (=> b!4938280 (= res!2107468 (<= (- (height!1994 (left!41468 (c!841800 totalInput!685))) (height!1994 (right!41798 (c!841800 totalInput!685)))) 1))))

(declare-fun d!1589913 () Bool)

(declare-fun res!2107469 () Bool)

(assert (=> d!1589913 (=> res!2107469 e!3085529)))

(assert (=> d!1589913 (= res!2107469 (not ((_ is Node!14948) (c!841800 totalInput!685))))))

(assert (=> d!1589913 (= (isBalanced!4125 (c!841800 totalInput!685)) e!3085529)))

(declare-fun b!4938277 () Bool)

(declare-fun res!2107472 () Bool)

(assert (=> b!4938277 (=> (not res!2107472) (not e!3085530))))

(assert (=> b!4938277 (= res!2107472 (isBalanced!4125 (right!41798 (c!841800 totalInput!685))))))

(assert (= (and d!1589913 (not res!2107469)) b!4938279))

(assert (= (and b!4938279 res!2107470) b!4938280))

(assert (= (and b!4938280 res!2107468) b!4938275))

(assert (= (and b!4938275 res!2107473) b!4938277))

(assert (= (and b!4938277 res!2107472) b!4938278))

(assert (= (and b!4938278 res!2107471) b!4938276))

(declare-fun m!5960382 () Bool)

(assert (=> b!4938276 m!5960382))

(declare-fun m!5960384 () Bool)

(assert (=> b!4938277 m!5960384))

(declare-fun m!5960386 () Bool)

(assert (=> b!4938279 m!5960386))

(declare-fun m!5960388 () Bool)

(assert (=> b!4938279 m!5960388))

(declare-fun m!5960390 () Bool)

(assert (=> b!4938278 m!5960390))

(assert (=> b!4938280 m!5960386))

(assert (=> b!4938280 m!5960388))

(declare-fun m!5960392 () Bool)

(assert (=> b!4938275 m!5960392))

(assert (=> d!1589481 d!1589913))

(declare-fun b!4938281 () Bool)

(declare-fun e!3085531 () Int)

(declare-fun call!344554 () Int)

(assert (=> b!4938281 (= e!3085531 call!344554)))

(declare-fun b!4938282 () Bool)

(declare-fun e!3085534 () List!56984)

(declare-fun e!3085533 () List!56984)

(assert (=> b!4938282 (= e!3085534 e!3085533)))

(declare-fun c!842070 () Bool)

(assert (=> b!4938282 (= c!842070 (<= (- testedPSize!70 1) 0))))

(declare-fun b!4938283 () Bool)

(declare-fun e!3085532 () Int)

(assert (=> b!4938283 (= e!3085531 e!3085532)))

(declare-fun c!842069 () Bool)

(assert (=> b!4938283 (= c!842069 (>= (- testedPSize!70 1) call!344554))))

(declare-fun b!4938284 () Bool)

(declare-fun e!3085535 () Bool)

(declare-fun lt!2035189 () List!56984)

(assert (=> b!4938284 (= e!3085535 (= (size!37670 lt!2035189) e!3085531))))

(declare-fun c!842068 () Bool)

(assert (=> b!4938284 (= c!842068 (<= (- testedPSize!70 1) 0))))

(declare-fun b!4938285 () Bool)

(assert (=> b!4938285 (= e!3085533 (t!367474 lt!2034833))))

(declare-fun b!4938286 () Bool)

(assert (=> b!4938286 (= e!3085532 0)))

(declare-fun b!4938287 () Bool)

(assert (=> b!4938287 (= e!3085532 (- call!344554 (- testedPSize!70 1)))))

(declare-fun d!1589915 () Bool)

(assert (=> d!1589915 e!3085535))

(declare-fun res!2107474 () Bool)

(assert (=> d!1589915 (=> (not res!2107474) (not e!3085535))))

(assert (=> d!1589915 (= res!2107474 (= ((_ map implies) (content!10112 lt!2035189) (content!10112 (t!367474 lt!2034833))) ((as const (InoxSet C!27108)) true)))))

(assert (=> d!1589915 (= lt!2035189 e!3085534)))

(declare-fun c!842067 () Bool)

(assert (=> d!1589915 (= c!842067 ((_ is Nil!56860) (t!367474 lt!2034833)))))

(assert (=> d!1589915 (= (drop!2270 (t!367474 lt!2034833) (- testedPSize!70 1)) lt!2035189)))

(declare-fun b!4938288 () Bool)

(assert (=> b!4938288 (= e!3085533 (drop!2270 (t!367474 (t!367474 lt!2034833)) (- (- testedPSize!70 1) 1)))))

(declare-fun bm!344549 () Bool)

(assert (=> bm!344549 (= call!344554 (size!37670 (t!367474 lt!2034833)))))

(declare-fun b!4938289 () Bool)

(assert (=> b!4938289 (= e!3085534 Nil!56860)))

(assert (= (and d!1589915 c!842067) b!4938289))

(assert (= (and d!1589915 (not c!842067)) b!4938282))

(assert (= (and b!4938282 c!842070) b!4938285))

(assert (= (and b!4938282 (not c!842070)) b!4938288))

(assert (= (and d!1589915 res!2107474) b!4938284))

(assert (= (and b!4938284 c!842068) b!4938281))

(assert (= (and b!4938284 (not c!842068)) b!4938283))

(assert (= (and b!4938283 c!842069) b!4938286))

(assert (= (and b!4938283 (not c!842069)) b!4938287))

(assert (= (or b!4938281 b!4938283 b!4938287) bm!344549))

(declare-fun m!5960394 () Bool)

(assert (=> b!4938284 m!5960394))

(declare-fun m!5960396 () Bool)

(assert (=> d!1589915 m!5960396))

(assert (=> d!1589915 m!5960288))

(declare-fun m!5960398 () Bool)

(assert (=> b!4938288 m!5960398))

(assert (=> bm!344549 m!5959432))

(assert (=> b!4937705 d!1589915))

(declare-fun d!1589917 () Bool)

(declare-fun lt!2035192 () Bool)

(assert (=> d!1589917 (= lt!2035192 (exists!1297 (toList!7975 z!3568) lambda!246026))))

(declare-fun choose!36345 ((InoxSet Context!6162) Int) Bool)

(assert (=> d!1589917 (= lt!2035192 (choose!36345 z!3568 lambda!246026))))

(assert (=> d!1589917 (= (exists!1298 z!3568 lambda!246026) lt!2035192)))

(declare-fun bs!1180983 () Bool)

(assert (= bs!1180983 d!1589917))

(assert (=> bs!1180983 m!5959576))

(assert (=> bs!1180983 m!5959576))

(declare-fun m!5960400 () Bool)

(assert (=> bs!1180983 m!5960400))

(declare-fun m!5960402 () Bool)

(assert (=> bs!1180983 m!5960402))

(assert (=> d!1589567 d!1589917))

(assert (=> b!4937677 d!1589483))

(declare-fun d!1589919 () Bool)

(declare-fun lt!2035193 () C!27108)

(assert (=> d!1589919 (contains!19482 (tail!9715 lt!2034833) lt!2035193)))

(declare-fun e!3085536 () C!27108)

(assert (=> d!1589919 (= lt!2035193 e!3085536)))

(declare-fun c!842071 () Bool)

(assert (=> d!1589919 (= c!842071 (= (- testedPSize!70 1) 0))))

(declare-fun e!3085537 () Bool)

(assert (=> d!1589919 e!3085537))

(declare-fun res!2107475 () Bool)

(assert (=> d!1589919 (=> (not res!2107475) (not e!3085537))))

(assert (=> d!1589919 (= res!2107475 (<= 0 (- testedPSize!70 1)))))

(assert (=> d!1589919 (= (apply!13773 (tail!9715 lt!2034833) (- testedPSize!70 1)) lt!2035193)))

(declare-fun b!4938290 () Bool)

(assert (=> b!4938290 (= e!3085537 (< (- testedPSize!70 1) (size!37670 (tail!9715 lt!2034833))))))

(declare-fun b!4938291 () Bool)

(assert (=> b!4938291 (= e!3085536 (head!10576 (tail!9715 lt!2034833)))))

(declare-fun b!4938292 () Bool)

(assert (=> b!4938292 (= e!3085536 (apply!13773 (tail!9715 (tail!9715 lt!2034833)) (- (- testedPSize!70 1) 1)))))

(assert (= (and d!1589919 res!2107475) b!4938290))

(assert (= (and d!1589919 c!842071) b!4938291))

(assert (= (and d!1589919 (not c!842071)) b!4938292))

(assert (=> d!1589919 m!5959594))

(declare-fun m!5960404 () Bool)

(assert (=> d!1589919 m!5960404))

(assert (=> b!4938290 m!5959594))

(assert (=> b!4938290 m!5960310))

(assert (=> b!4938291 m!5959594))

(assert (=> b!4938291 m!5960324))

(assert (=> b!4938292 m!5959594))

(assert (=> b!4938292 m!5960312))

(assert (=> b!4938292 m!5960312))

(declare-fun m!5960406 () Bool)

(assert (=> b!4938292 m!5960406))

(assert (=> b!4937679 d!1589919))

(assert (=> b!4937679 d!1589883))

(declare-fun d!1589921 () Bool)

(declare-fun lt!2035194 () Int)

(assert (=> d!1589921 (>= lt!2035194 0)))

(declare-fun e!3085538 () Int)

(assert (=> d!1589921 (= lt!2035194 e!3085538)))

(declare-fun c!842072 () Bool)

(assert (=> d!1589921 (= c!842072 ((_ is Nil!56860) (list!18070 (_1!33996 lt!2034840))))))

(assert (=> d!1589921 (= (size!37670 (list!18070 (_1!33996 lt!2034840))) lt!2035194)))

(declare-fun b!4938293 () Bool)

(assert (=> b!4938293 (= e!3085538 0)))

(declare-fun b!4938294 () Bool)

(assert (=> b!4938294 (= e!3085538 (+ 1 (size!37670 (t!367474 (list!18070 (_1!33996 lt!2034840))))))))

(assert (= (and d!1589921 c!842072) b!4938293))

(assert (= (and d!1589921 (not c!842072)) b!4938294))

(declare-fun m!5960408 () Bool)

(assert (=> b!4938294 m!5960408))

(assert (=> d!1589561 d!1589921))

(assert (=> d!1589561 d!1589615))

(declare-fun d!1589923 () Bool)

(declare-fun lt!2035195 () Int)

(assert (=> d!1589923 (= lt!2035195 (size!37670 (list!18072 (c!841800 (_1!33996 lt!2034840)))))))

(assert (=> d!1589923 (= lt!2035195 (ite ((_ is Empty!14948) (c!841800 (_1!33996 lt!2034840))) 0 (ite ((_ is Leaf!24855) (c!841800 (_1!33996 lt!2034840))) (csize!30127 (c!841800 (_1!33996 lt!2034840))) (csize!30126 (c!841800 (_1!33996 lt!2034840))))))))

(assert (=> d!1589923 (= (size!37673 (c!841800 (_1!33996 lt!2034840))) lt!2035195)))

(declare-fun bs!1180984 () Bool)

(assert (= bs!1180984 d!1589923))

(assert (=> bs!1180984 m!5959734))

(assert (=> bs!1180984 m!5959734))

(declare-fun m!5960410 () Bool)

(assert (=> bs!1180984 m!5960410))

(assert (=> d!1589561 d!1589923))

(declare-fun b!4938296 () Bool)

(declare-fun res!2107479 () Bool)

(declare-fun e!3085539 () Bool)

(assert (=> b!4938296 (=> (not res!2107479) (not e!3085539))))

(assert (=> b!4938296 (= res!2107479 (= (head!10576 (tail!9715 lt!2034833)) (head!10576 (tail!9715 lt!2034833))))))

(declare-fun b!4938295 () Bool)

(declare-fun e!3085541 () Bool)

(assert (=> b!4938295 (= e!3085541 e!3085539)))

(declare-fun res!2107477 () Bool)

(assert (=> b!4938295 (=> (not res!2107477) (not e!3085539))))

(assert (=> b!4938295 (= res!2107477 (not ((_ is Nil!56860) (tail!9715 lt!2034833))))))

(declare-fun d!1589925 () Bool)

(declare-fun e!3085540 () Bool)

(assert (=> d!1589925 e!3085540))

(declare-fun res!2107478 () Bool)

(assert (=> d!1589925 (=> res!2107478 e!3085540)))

(declare-fun lt!2035196 () Bool)

(assert (=> d!1589925 (= res!2107478 (not lt!2035196))))

(assert (=> d!1589925 (= lt!2035196 e!3085541)))

(declare-fun res!2107476 () Bool)

(assert (=> d!1589925 (=> res!2107476 e!3085541)))

(assert (=> d!1589925 (= res!2107476 ((_ is Nil!56860) (tail!9715 lt!2034833)))))

(assert (=> d!1589925 (= (isPrefix!5037 (tail!9715 lt!2034833) (tail!9715 lt!2034833)) lt!2035196)))

(declare-fun b!4938297 () Bool)

(assert (=> b!4938297 (= e!3085539 (isPrefix!5037 (tail!9715 (tail!9715 lt!2034833)) (tail!9715 (tail!9715 lt!2034833))))))

(declare-fun b!4938298 () Bool)

(assert (=> b!4938298 (= e!3085540 (>= (size!37670 (tail!9715 lt!2034833)) (size!37670 (tail!9715 lt!2034833))))))

(assert (= (and d!1589925 (not res!2107476)) b!4938295))

(assert (= (and b!4938295 res!2107477) b!4938296))

(assert (= (and b!4938296 res!2107479) b!4938297))

(assert (= (and d!1589925 (not res!2107478)) b!4938298))

(assert (=> b!4938296 m!5959594))

(assert (=> b!4938296 m!5960324))

(assert (=> b!4938296 m!5959594))

(assert (=> b!4938296 m!5960324))

(assert (=> b!4938297 m!5959594))

(assert (=> b!4938297 m!5960312))

(assert (=> b!4938297 m!5959594))

(assert (=> b!4938297 m!5960312))

(assert (=> b!4938297 m!5960312))

(assert (=> b!4938297 m!5960312))

(declare-fun m!5960412 () Bool)

(assert (=> b!4938297 m!5960412))

(assert (=> b!4938298 m!5959594))

(assert (=> b!4938298 m!5960310))

(assert (=> b!4938298 m!5959594))

(assert (=> b!4938298 m!5960310))

(assert (=> b!4937642 d!1589925))

(assert (=> b!4937642 d!1589883))

(declare-fun d!1589927 () Bool)

(declare-fun lt!2035199 () Bool)

(assert (=> d!1589927 (= lt!2035199 (select (content!10112 lt!2034833) lt!2035010))))

(declare-fun e!3085546 () Bool)

(assert (=> d!1589927 (= lt!2035199 e!3085546)))

(declare-fun res!2107484 () Bool)

(assert (=> d!1589927 (=> (not res!2107484) (not e!3085546))))

(assert (=> d!1589927 (= res!2107484 ((_ is Cons!56860) lt!2034833))))

(assert (=> d!1589927 (= (contains!19482 lt!2034833 lt!2035010) lt!2035199)))

(declare-fun b!4938303 () Bool)

(declare-fun e!3085547 () Bool)

(assert (=> b!4938303 (= e!3085546 e!3085547)))

(declare-fun res!2107485 () Bool)

(assert (=> b!4938303 (=> res!2107485 e!3085547)))

(assert (=> b!4938303 (= res!2107485 (= (h!63308 lt!2034833) lt!2035010))))

(declare-fun b!4938304 () Bool)

(assert (=> b!4938304 (= e!3085547 (contains!19482 (t!367474 lt!2034833) lt!2035010))))

(assert (= (and d!1589927 res!2107484) b!4938303))

(assert (= (and b!4938303 (not res!2107485)) b!4938304))

(assert (=> d!1589927 m!5959686))

(declare-fun m!5960414 () Bool)

(assert (=> d!1589927 m!5960414))

(declare-fun m!5960416 () Bool)

(assert (=> b!4938304 m!5960416))

(assert (=> d!1589589 d!1589927))

(assert (=> d!1589575 d!1589553))

(declare-fun b!4938307 () Bool)

(declare-fun res!2107486 () Bool)

(declare-fun e!3085548 () Bool)

(assert (=> b!4938307 (=> (not res!2107486) (not e!3085548))))

(declare-fun lt!2035200 () List!56984)

(assert (=> b!4938307 (= res!2107486 (= (size!37670 lt!2035200) (+ (size!37670 testedP!110) (size!37670 (Cons!56860 (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) Nil!56860)))))))

(declare-fun b!4938306 () Bool)

(declare-fun e!3085549 () List!56984)

(assert (=> b!4938306 (= e!3085549 (Cons!56860 (h!63308 testedP!110) (++!12406 (t!367474 testedP!110) (Cons!56860 (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) Nil!56860))))))

(declare-fun b!4938305 () Bool)

(assert (=> b!4938305 (= e!3085549 (Cons!56860 (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) Nil!56860))))

(declare-fun b!4938308 () Bool)

(assert (=> b!4938308 (= e!3085548 (or (not (= (Cons!56860 (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) Nil!56860) Nil!56860)) (= lt!2035200 testedP!110)))))

(declare-fun d!1589929 () Bool)

(assert (=> d!1589929 e!3085548))

(declare-fun res!2107487 () Bool)

(assert (=> d!1589929 (=> (not res!2107487) (not e!3085548))))

(assert (=> d!1589929 (= res!2107487 (= (content!10112 lt!2035200) ((_ map or) (content!10112 testedP!110) (content!10112 (Cons!56860 (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) Nil!56860)))))))

(assert (=> d!1589929 (= lt!2035200 e!3085549)))

(declare-fun c!842073 () Bool)

(assert (=> d!1589929 (= c!842073 ((_ is Nil!56860) testedP!110))))

(assert (=> d!1589929 (= (++!12406 testedP!110 (Cons!56860 (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) Nil!56860)) lt!2035200)))

(assert (= (and d!1589929 c!842073) b!4938305))

(assert (= (and d!1589929 (not c!842073)) b!4938306))

(assert (= (and d!1589929 res!2107487) b!4938307))

(assert (= (and b!4938307 res!2107486) b!4938308))

(declare-fun m!5960418 () Bool)

(assert (=> b!4938307 m!5960418))

(assert (=> b!4938307 m!5959308))

(declare-fun m!5960420 () Bool)

(assert (=> b!4938307 m!5960420))

(declare-fun m!5960422 () Bool)

(assert (=> b!4938306 m!5960422))

(declare-fun m!5960424 () Bool)

(assert (=> d!1589929 m!5960424))

(assert (=> d!1589929 m!5959426))

(declare-fun m!5960426 () Bool)

(assert (=> d!1589929 m!5960426))

(assert (=> d!1589575 d!1589929))

(declare-fun d!1589931 () Bool)

(assert (=> d!1589931 (isPrefix!5037 (++!12406 testedP!110 (Cons!56860 (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) Nil!56860)) lt!2034833)))

(assert (=> d!1589931 true))

(declare-fun _$65!1718 () Unit!147585)

(assert (=> d!1589931 (= (choose!36333 testedP!110 lt!2034833) _$65!1718)))

(declare-fun bs!1180985 () Bool)

(assert (= bs!1180985 d!1589931))

(assert (=> bs!1180985 m!5959326))

(assert (=> bs!1180985 m!5959326))

(assert (=> bs!1180985 m!5959644))

(assert (=> bs!1180985 m!5959640))

(assert (=> bs!1180985 m!5959640))

(assert (=> bs!1180985 m!5959642))

(assert (=> d!1589575 d!1589931))

(declare-fun d!1589933 () Bool)

(assert (=> d!1589933 (= (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) (h!63308 (getSuffix!3021 lt!2034833 testedP!110)))))

(assert (=> d!1589575 d!1589933))

(assert (=> d!1589575 d!1589605))

(declare-fun b!4938310 () Bool)

(declare-fun res!2107491 () Bool)

(declare-fun e!3085550 () Bool)

(assert (=> b!4938310 (=> (not res!2107491) (not e!3085550))))

(assert (=> b!4938310 (= res!2107491 (= (head!10576 (++!12406 testedP!110 (Cons!56860 (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) Nil!56860))) (head!10576 lt!2034833)))))

(declare-fun b!4938309 () Bool)

(declare-fun e!3085552 () Bool)

(assert (=> b!4938309 (= e!3085552 e!3085550)))

(declare-fun res!2107489 () Bool)

(assert (=> b!4938309 (=> (not res!2107489) (not e!3085550))))

(assert (=> b!4938309 (= res!2107489 (not ((_ is Nil!56860) lt!2034833)))))

(declare-fun d!1589935 () Bool)

(declare-fun e!3085551 () Bool)

(assert (=> d!1589935 e!3085551))

(declare-fun res!2107490 () Bool)

(assert (=> d!1589935 (=> res!2107490 e!3085551)))

(declare-fun lt!2035201 () Bool)

(assert (=> d!1589935 (= res!2107490 (not lt!2035201))))

(assert (=> d!1589935 (= lt!2035201 e!3085552)))

(declare-fun res!2107488 () Bool)

(assert (=> d!1589935 (=> res!2107488 e!3085552)))

(assert (=> d!1589935 (= res!2107488 ((_ is Nil!56860) (++!12406 testedP!110 (Cons!56860 (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) Nil!56860))))))

(assert (=> d!1589935 (= (isPrefix!5037 (++!12406 testedP!110 (Cons!56860 (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) Nil!56860)) lt!2034833) lt!2035201)))

(declare-fun b!4938311 () Bool)

(assert (=> b!4938311 (= e!3085550 (isPrefix!5037 (tail!9715 (++!12406 testedP!110 (Cons!56860 (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) Nil!56860))) (tail!9715 lt!2034833)))))

(declare-fun b!4938312 () Bool)

(assert (=> b!4938312 (= e!3085551 (>= (size!37670 lt!2034833) (size!37670 (++!12406 testedP!110 (Cons!56860 (head!10576 (getSuffix!3021 lt!2034833 testedP!110)) Nil!56860)))))))

(assert (= (and d!1589935 (not res!2107488)) b!4938309))

(assert (= (and b!4938309 res!2107489) b!4938310))

(assert (= (and b!4938310 res!2107491) b!4938311))

(assert (= (and d!1589935 (not res!2107490)) b!4938312))

(assert (=> b!4938310 m!5959640))

(declare-fun m!5960428 () Bool)

(assert (=> b!4938310 m!5960428))

(assert (=> b!4938310 m!5959600))

(assert (=> b!4938311 m!5959640))

(declare-fun m!5960430 () Bool)

(assert (=> b!4938311 m!5960430))

(assert (=> b!4938311 m!5959594))

(assert (=> b!4938311 m!5960430))

(assert (=> b!4938311 m!5959594))

(declare-fun m!5960432 () Bool)

(assert (=> b!4938311 m!5960432))

(assert (=> b!4938312 m!5959312))

(assert (=> b!4938312 m!5959640))

(declare-fun m!5960434 () Bool)

(assert (=> b!4938312 m!5960434))

(assert (=> d!1589575 d!1589935))

(declare-fun d!1589937 () Bool)

(assert (=> d!1589937 (and (= lt!2034835 testedP!110) (= lt!2034847 testedSuffix!70))))

(assert (=> d!1589937 true))

(declare-fun _$50!422 () Unit!147585)

(assert (=> d!1589937 (= (choose!36336 lt!2034835 lt!2034847 testedP!110 testedSuffix!70) _$50!422)))

(assert (=> d!1589601 d!1589937))

(assert (=> d!1589601 d!1589611))

(assert (=> d!1589601 d!1589475))

(declare-fun b!4938315 () Bool)

(declare-fun res!2107492 () Bool)

(declare-fun e!3085553 () Bool)

(assert (=> b!4938315 (=> (not res!2107492) (not e!3085553))))

(declare-fun lt!2035202 () List!56984)

(assert (=> b!4938315 (= res!2107492 (= (size!37670 lt!2035202) (+ (size!37670 (t!367474 testedP!110)) (size!37670 (Cons!56860 (head!10576 lt!2034843) Nil!56860)))))))

(declare-fun b!4938314 () Bool)

(declare-fun e!3085554 () List!56984)

(assert (=> b!4938314 (= e!3085554 (Cons!56860 (h!63308 (t!367474 testedP!110)) (++!12406 (t!367474 (t!367474 testedP!110)) (Cons!56860 (head!10576 lt!2034843) Nil!56860))))))

(declare-fun b!4938313 () Bool)

(assert (=> b!4938313 (= e!3085554 (Cons!56860 (head!10576 lt!2034843) Nil!56860))))

(declare-fun b!4938316 () Bool)

(assert (=> b!4938316 (= e!3085553 (or (not (= (Cons!56860 (head!10576 lt!2034843) Nil!56860) Nil!56860)) (= lt!2035202 (t!367474 testedP!110))))))

(declare-fun d!1589939 () Bool)

(assert (=> d!1589939 e!3085553))

(declare-fun res!2107493 () Bool)

(assert (=> d!1589939 (=> (not res!2107493) (not e!3085553))))

(assert (=> d!1589939 (= res!2107493 (= (content!10112 lt!2035202) ((_ map or) (content!10112 (t!367474 testedP!110)) (content!10112 (Cons!56860 (head!10576 lt!2034843) Nil!56860)))))))

(assert (=> d!1589939 (= lt!2035202 e!3085554)))

(declare-fun c!842074 () Bool)

(assert (=> d!1589939 (= c!842074 ((_ is Nil!56860) (t!367474 testedP!110)))))

(assert (=> d!1589939 (= (++!12406 (t!367474 testedP!110) (Cons!56860 (head!10576 lt!2034843) Nil!56860)) lt!2035202)))

(assert (= (and d!1589939 c!842074) b!4938313))

(assert (= (and d!1589939 (not c!842074)) b!4938314))

(assert (= (and d!1589939 res!2107493) b!4938315))

(assert (= (and b!4938315 res!2107492) b!4938316))

(declare-fun m!5960436 () Bool)

(assert (=> b!4938315 m!5960436))

(assert (=> b!4938315 m!5959698))

(assert (=> b!4938315 m!5959648))

(declare-fun m!5960438 () Bool)

(assert (=> b!4938314 m!5960438))

(declare-fun m!5960440 () Bool)

(assert (=> d!1589939 m!5960440))

(assert (=> d!1589939 m!5960180))

(assert (=> d!1589939 m!5959654))

(assert (=> b!4937653 d!1589939))

(declare-fun b!4938318 () Bool)

(declare-fun res!2107497 () Bool)

(declare-fun e!3085555 () Bool)

(assert (=> b!4938318 (=> (not res!2107497) (not e!3085555))))

(assert (=> b!4938318 (= res!2107497 (= (head!10576 testedP!110) (head!10576 (++!12406 testedP!110 testedSuffix!70))))))

(declare-fun b!4938317 () Bool)

(declare-fun e!3085557 () Bool)

(assert (=> b!4938317 (= e!3085557 e!3085555)))

(declare-fun res!2107495 () Bool)

(assert (=> b!4938317 (=> (not res!2107495) (not e!3085555))))

(assert (=> b!4938317 (= res!2107495 (not ((_ is Nil!56860) (++!12406 testedP!110 testedSuffix!70))))))

(declare-fun d!1589941 () Bool)

(declare-fun e!3085556 () Bool)

(assert (=> d!1589941 e!3085556))

(declare-fun res!2107496 () Bool)

(assert (=> d!1589941 (=> res!2107496 e!3085556)))

(declare-fun lt!2035203 () Bool)

(assert (=> d!1589941 (= res!2107496 (not lt!2035203))))

(assert (=> d!1589941 (= lt!2035203 e!3085557)))

(declare-fun res!2107494 () Bool)

(assert (=> d!1589941 (=> res!2107494 e!3085557)))

(assert (=> d!1589941 (= res!2107494 ((_ is Nil!56860) testedP!110))))

(assert (=> d!1589941 (= (isPrefix!5037 testedP!110 (++!12406 testedP!110 testedSuffix!70)) lt!2035203)))

(declare-fun b!4938319 () Bool)

(assert (=> b!4938319 (= e!3085555 (isPrefix!5037 (tail!9715 testedP!110) (tail!9715 (++!12406 testedP!110 testedSuffix!70))))))

(declare-fun b!4938320 () Bool)

(assert (=> b!4938320 (= e!3085556 (>= (size!37670 (++!12406 testedP!110 testedSuffix!70)) (size!37670 testedP!110)))))

(assert (= (and d!1589941 (not res!2107494)) b!4938317))

(assert (= (and b!4938317 res!2107495) b!4938318))

(assert (= (and b!4938318 res!2107497) b!4938319))

(assert (= (and d!1589941 (not res!2107496)) b!4938320))

(assert (=> b!4938318 m!5959700))

(assert (=> b!4938318 m!5959344))

(declare-fun m!5960442 () Bool)

(assert (=> b!4938318 m!5960442))

(assert (=> b!4938319 m!5959702))

(assert (=> b!4938319 m!5959344))

(declare-fun m!5960444 () Bool)

(assert (=> b!4938319 m!5960444))

(assert (=> b!4938319 m!5959702))

(assert (=> b!4938319 m!5960444))

(declare-fun m!5960446 () Bool)

(assert (=> b!4938319 m!5960446))

(assert (=> b!4938320 m!5959344))

(declare-fun m!5960448 () Bool)

(assert (=> b!4938320 m!5960448))

(assert (=> b!4938320 m!5959308))

(assert (=> d!1589609 d!1589941))

(assert (=> d!1589609 d!1589475))

(declare-fun d!1589943 () Bool)

(assert (=> d!1589943 (isPrefix!5037 testedP!110 (++!12406 testedP!110 testedSuffix!70))))

(assert (=> d!1589943 true))

(declare-fun _$46!1897 () Unit!147585)

(assert (=> d!1589943 (= (choose!36337 testedP!110 testedSuffix!70) _$46!1897)))

(declare-fun bs!1180986 () Bool)

(assert (= bs!1180986 d!1589943))

(assert (=> bs!1180986 m!5959344))

(assert (=> bs!1180986 m!5959344))

(assert (=> bs!1180986 m!5959714))

(assert (=> d!1589609 d!1589943))

(declare-fun d!1589945 () Bool)

(declare-fun c!842075 () Bool)

(assert (=> d!1589945 (= c!842075 ((_ is Nil!56860) lt!2034997))))

(declare-fun e!3085558 () (InoxSet C!27108))

(assert (=> d!1589945 (= (content!10112 lt!2034997) e!3085558)))

(declare-fun b!4938321 () Bool)

(assert (=> b!4938321 (= e!3085558 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938322 () Bool)

(assert (=> b!4938322 (= e!3085558 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 lt!2034997) true) (content!10112 (t!367474 lt!2034997))))))

(assert (= (and d!1589945 c!842075) b!4938321))

(assert (= (and d!1589945 (not c!842075)) b!4938322))

(declare-fun m!5960450 () Bool)

(assert (=> b!4938322 m!5960450))

(declare-fun m!5960452 () Bool)

(assert (=> b!4938322 m!5960452))

(assert (=> d!1589569 d!1589945))

(declare-fun d!1589947 () Bool)

(declare-fun c!842076 () Bool)

(assert (=> d!1589947 (= c!842076 ((_ is Nil!56860) lt!2034852))))

(declare-fun e!3085559 () (InoxSet C!27108))

(assert (=> d!1589947 (= (content!10112 lt!2034852) e!3085559)))

(declare-fun b!4938323 () Bool)

(assert (=> b!4938323 (= e!3085559 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938324 () Bool)

(assert (=> b!4938324 (= e!3085559 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 lt!2034852) true) (content!10112 (t!367474 lt!2034852))))))

(assert (= (and d!1589947 c!842076) b!4938323))

(assert (= (and d!1589947 (not c!842076)) b!4938324))

(declare-fun m!5960454 () Bool)

(assert (=> b!4938324 m!5960454))

(declare-fun m!5960456 () Bool)

(assert (=> b!4938324 m!5960456))

(assert (=> d!1589569 d!1589947))

(declare-fun d!1589949 () Bool)

(declare-fun c!842077 () Bool)

(assert (=> d!1589949 (= c!842077 ((_ is Nil!56860) lt!2034850))))

(declare-fun e!3085560 () (InoxSet C!27108))

(assert (=> d!1589949 (= (content!10112 lt!2034850) e!3085560)))

(declare-fun b!4938325 () Bool)

(assert (=> b!4938325 (= e!3085560 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938326 () Bool)

(assert (=> b!4938326 (= e!3085560 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 lt!2034850) true) (content!10112 (t!367474 lt!2034850))))))

(assert (= (and d!1589949 c!842077) b!4938325))

(assert (= (and d!1589949 (not c!842077)) b!4938326))

(declare-fun m!5960458 () Bool)

(assert (=> b!4938326 m!5960458))

(declare-fun m!5960460 () Bool)

(assert (=> b!4938326 m!5960460))

(assert (=> d!1589569 d!1589949))

(declare-fun d!1589951 () Bool)

(declare-fun lt!2035204 () Int)

(assert (=> d!1589951 (>= lt!2035204 0)))

(declare-fun e!3085561 () Int)

(assert (=> d!1589951 (= lt!2035204 e!3085561)))

(declare-fun c!842078 () Bool)

(assert (=> d!1589951 (= c!842078 ((_ is Nil!56860) lt!2035003))))

(assert (=> d!1589951 (= (size!37670 lt!2035003) lt!2035204)))

(declare-fun b!4938327 () Bool)

(assert (=> b!4938327 (= e!3085561 0)))

(declare-fun b!4938328 () Bool)

(assert (=> b!4938328 (= e!3085561 (+ 1 (size!37670 (t!367474 lt!2035003))))))

(assert (= (and d!1589951 c!842078) b!4938327))

(assert (= (and d!1589951 (not c!842078)) b!4938328))

(declare-fun m!5960462 () Bool)

(assert (=> b!4938328 m!5960462))

(assert (=> b!4937658 d!1589951))

(assert (=> b!4937658 d!1589603))

(declare-fun d!1589953 () Bool)

(declare-fun lt!2035205 () Int)

(assert (=> d!1589953 (>= lt!2035205 0)))

(declare-fun e!3085562 () Int)

(assert (=> d!1589953 (= lt!2035205 e!3085562)))

(declare-fun c!842079 () Bool)

(assert (=> d!1589953 (= c!842079 ((_ is Nil!56860) (Cons!56860 lt!2034837 Nil!56860)))))

(assert (=> d!1589953 (= (size!37670 (Cons!56860 lt!2034837 Nil!56860)) lt!2035205)))

(declare-fun b!4938329 () Bool)

(assert (=> b!4938329 (= e!3085562 0)))

(declare-fun b!4938330 () Bool)

(assert (=> b!4938330 (= e!3085562 (+ 1 (size!37670 (t!367474 (Cons!56860 lt!2034837 Nil!56860)))))))

(assert (= (and d!1589953 c!842079) b!4938329))

(assert (= (and d!1589953 (not c!842079)) b!4938330))

(declare-fun m!5960464 () Bool)

(assert (=> b!4938330 m!5960464))

(assert (=> b!4937658 d!1589953))

(declare-fun d!1589955 () Bool)

(declare-fun res!2107502 () Bool)

(declare-fun e!3085567 () Bool)

(assert (=> d!1589955 (=> res!2107502 e!3085567)))

(assert (=> d!1589955 (= res!2107502 ((_ is Nil!56861) (exprs!3581 setElem!27838)))))

(assert (=> d!1589955 (= (forall!13208 (exprs!3581 setElem!27838) lambda!246023) e!3085567)))

(declare-fun b!4938335 () Bool)

(declare-fun e!3085568 () Bool)

(assert (=> b!4938335 (= e!3085567 e!3085568)))

(declare-fun res!2107503 () Bool)

(assert (=> b!4938335 (=> (not res!2107503) (not e!3085568))))

(declare-fun dynLambda!23021 (Int Regex!13439) Bool)

(assert (=> b!4938335 (= res!2107503 (dynLambda!23021 lambda!246023 (h!63309 (exprs!3581 setElem!27838))))))

(declare-fun b!4938336 () Bool)

(assert (=> b!4938336 (= e!3085568 (forall!13208 (t!367475 (exprs!3581 setElem!27838)) lambda!246023))))

(assert (= (and d!1589955 (not res!2107502)) b!4938335))

(assert (= (and b!4938335 res!2107503) b!4938336))

(declare-fun b_lambda!196333 () Bool)

(assert (=> (not b_lambda!196333) (not b!4938335)))

(declare-fun m!5960466 () Bool)

(assert (=> b!4938335 m!5960466))

(declare-fun m!5960468 () Bool)

(assert (=> b!4938336 m!5960468))

(assert (=> d!1589563 d!1589955))

(declare-fun d!1589957 () Bool)

(assert (=> d!1589957 (= (inv!73917 (xs!18272 (c!841800 totalInput!685))) (<= (size!37670 (innerList!15036 (xs!18272 (c!841800 totalInput!685)))) 2147483647))))

(declare-fun bs!1180987 () Bool)

(assert (= bs!1180987 d!1589957))

(declare-fun m!5960470 () Bool)

(assert (=> bs!1180987 m!5960470))

(assert (=> b!4937748 d!1589957))

(declare-fun d!1589959 () Bool)

(declare-fun lt!2035206 () Int)

(assert (=> d!1589959 (>= lt!2035206 0)))

(declare-fun e!3085569 () Int)

(assert (=> d!1589959 (= lt!2035206 e!3085569)))

(declare-fun c!842080 () Bool)

(assert (=> d!1589959 (= c!842080 ((_ is Nil!56860) lt!2035029))))

(assert (=> d!1589959 (= (size!37670 lt!2035029) lt!2035206)))

(declare-fun b!4938337 () Bool)

(assert (=> b!4938337 (= e!3085569 0)))

(declare-fun b!4938338 () Bool)

(assert (=> b!4938338 (= e!3085569 (+ 1 (size!37670 (t!367474 lt!2035029))))))

(assert (= (and d!1589959 c!842080) b!4938337))

(assert (= (and d!1589959 (not c!842080)) b!4938338))

(declare-fun m!5960472 () Bool)

(assert (=> b!4938338 m!5960472))

(assert (=> b!4937725 d!1589959))

(declare-fun d!1589961 () Bool)

(declare-fun lt!2035207 () Int)

(assert (=> d!1589961 (>= lt!2035207 0)))

(declare-fun e!3085570 () Int)

(assert (=> d!1589961 (= lt!2035207 e!3085570)))

(declare-fun c!842081 () Bool)

(assert (=> d!1589961 (= c!842081 ((_ is Nil!56860) lt!2034835))))

(assert (=> d!1589961 (= (size!37670 lt!2034835) lt!2035207)))

(declare-fun b!4938339 () Bool)

(assert (=> b!4938339 (= e!3085570 0)))

(declare-fun b!4938340 () Bool)

(assert (=> b!4938340 (= e!3085570 (+ 1 (size!37670 (t!367474 lt!2034835))))))

(assert (= (and d!1589961 c!842081) b!4938339))

(assert (= (and d!1589961 (not c!842081)) b!4938340))

(assert (=> b!4938340 m!5960188))

(assert (=> b!4937725 d!1589961))

(declare-fun d!1589963 () Bool)

(declare-fun lt!2035208 () Int)

(assert (=> d!1589963 (>= lt!2035208 0)))

(declare-fun e!3085571 () Int)

(assert (=> d!1589963 (= lt!2035208 e!3085571)))

(declare-fun c!842082 () Bool)

(assert (=> d!1589963 (= c!842082 ((_ is Nil!56860) lt!2034847))))

(assert (=> d!1589963 (= (size!37670 lt!2034847) lt!2035208)))

(declare-fun b!4938341 () Bool)

(assert (=> b!4938341 (= e!3085571 0)))

(declare-fun b!4938342 () Bool)

(assert (=> b!4938342 (= e!3085571 (+ 1 (size!37670 (t!367474 lt!2034847))))))

(assert (= (and d!1589963 c!842082) b!4938341))

(assert (= (and d!1589963 (not c!842082)) b!4938342))

(declare-fun m!5960474 () Bool)

(assert (=> b!4938342 m!5960474))

(assert (=> b!4937725 d!1589963))

(declare-fun bs!1180988 () Bool)

(declare-fun d!1589965 () Bool)

(assert (= bs!1180988 (and d!1589965 b!4937624)))

(declare-fun lambda!246056 () Int)

(assert (=> bs!1180988 (not (= lambda!246056 lambda!246019))))

(declare-fun bs!1180989 () Bool)

(assert (= bs!1180989 (and d!1589965 d!1589567)))

(assert (=> bs!1180989 (not (= lambda!246056 lambda!246026))))

(declare-fun bs!1180990 () Bool)

(assert (= bs!1180990 (and d!1589965 b!4937625)))

(assert (=> bs!1180990 (not (= lambda!246056 lambda!246020))))

(declare-fun bs!1180991 () Bool)

(assert (= bs!1180991 (and d!1589965 d!1589909)))

(assert (=> bs!1180991 (not (= lambda!246056 lambda!246053))))

(declare-fun bs!1180992 () Bool)

(assert (= bs!1180992 (and d!1589965 d!1589839)))

(assert (=> bs!1180992 (= lambda!246056 lambda!246046)))

(declare-fun bs!1180993 () Bool)

(assert (= bs!1180993 (and d!1589965 d!1589487)))

(assert (=> bs!1180993 (not (= lambda!246056 lambda!246018))))

(assert (=> d!1589965 true))

(assert (=> d!1589965 (< (dynLambda!23020 order!25989 lambda!246018) (dynLambda!23020 order!25989 lambda!246056))))

(assert (=> d!1589965 (exists!1297 lt!2034977 lambda!246056)))

(declare-fun lt!2035211 () Unit!147585)

(declare-fun choose!36347 (List!56987 Int) Unit!147585)

(assert (=> d!1589965 (= lt!2035211 (choose!36347 lt!2034977 lambda!246018))))

(assert (=> d!1589965 (not (forall!13210 lt!2034977 lambda!246018))))

(assert (=> d!1589965 (= (lemmaNotForallThenExists!213 lt!2034977 lambda!246018) lt!2035211)))

(declare-fun bs!1180994 () Bool)

(assert (= bs!1180994 d!1589965))

(declare-fun m!5960476 () Bool)

(assert (=> bs!1180994 m!5960476))

(declare-fun m!5960478 () Bool)

(assert (=> bs!1180994 m!5960478))

(declare-fun m!5960480 () Bool)

(assert (=> bs!1180994 m!5960480))

(assert (=> b!4937624 d!1589965))

(assert (=> b!4937712 d!1589483))

(declare-fun bs!1180995 () Bool)

(declare-fun d!1589967 () Bool)

(assert (= bs!1180995 (and d!1589967 b!4937624)))

(declare-fun lambda!246059 () Int)

(assert (=> bs!1180995 (not (= lambda!246059 lambda!246019))))

(declare-fun bs!1180996 () Bool)

(assert (= bs!1180996 (and d!1589967 d!1589567)))

(assert (=> bs!1180996 (not (= lambda!246059 lambda!246026))))

(declare-fun bs!1180997 () Bool)

(assert (= bs!1180997 (and d!1589967 d!1589965)))

(assert (=> bs!1180997 (= (= (ite c!841864 lambda!246019 lambda!246020) lambda!246018) (= lambda!246059 lambda!246056))))

(declare-fun bs!1180998 () Bool)

(assert (= bs!1180998 (and d!1589967 b!4937625)))

(assert (=> bs!1180998 (not (= lambda!246059 lambda!246020))))

(declare-fun bs!1180999 () Bool)

(assert (= bs!1180999 (and d!1589967 d!1589909)))

(assert (=> bs!1180999 (not (= lambda!246059 lambda!246053))))

(declare-fun bs!1181000 () Bool)

(assert (= bs!1181000 (and d!1589967 d!1589839)))

(assert (=> bs!1181000 (= (= (ite c!841864 lambda!246019 lambda!246020) lambda!246018) (= lambda!246059 lambda!246046))))

(declare-fun bs!1181001 () Bool)

(assert (= bs!1181001 (and d!1589967 d!1589487)))

(assert (=> bs!1181001 (not (= lambda!246059 lambda!246018))))

(assert (=> d!1589967 true))

(assert (=> d!1589967 (< (dynLambda!23020 order!25989 (ite c!841864 lambda!246019 lambda!246020)) (dynLambda!23020 order!25989 lambda!246059))))

(assert (=> d!1589967 (= (exists!1297 (ite c!841864 lt!2034977 lt!2034974) (ite c!841864 lambda!246019 lambda!246020)) (not (forall!13210 (ite c!841864 lt!2034977 lt!2034974) lambda!246059)))))

(declare-fun bs!1181002 () Bool)

(assert (= bs!1181002 d!1589967))

(declare-fun m!5960482 () Bool)

(assert (=> bs!1181002 m!5960482))

(assert (=> bm!344519 d!1589967))

(declare-fun d!1589969 () Bool)

(assert (=> d!1589969 (= (list!18070 (_1!33996 lt!2035035)) (list!18072 (c!841800 (_1!33996 lt!2035035))))))

(declare-fun bs!1181003 () Bool)

(assert (= bs!1181003 d!1589969))

(declare-fun m!5960484 () Bool)

(assert (=> bs!1181003 m!5960484))

(assert (=> b!4937732 d!1589969))

(declare-fun d!1589971 () Bool)

(assert (=> d!1589971 (= (list!18070 (_2!33996 lt!2035035)) (list!18072 (c!841800 (_2!33996 lt!2035035))))))

(declare-fun bs!1181004 () Bool)

(assert (= bs!1181004 d!1589971))

(declare-fun m!5960486 () Bool)

(assert (=> bs!1181004 m!5960486))

(assert (=> b!4937732 d!1589971))

(declare-fun b!4938355 () Bool)

(declare-fun e!3085581 () tuple2!61394)

(assert (=> b!4938355 (= e!3085581 (tuple2!61395 Nil!56860 (list!18070 totalInput!685)))))

(declare-fun d!1589973 () Bool)

(declare-fun e!3085582 () Bool)

(assert (=> d!1589973 e!3085582))

(declare-fun res!2107509 () Bool)

(assert (=> d!1589973 (=> (not res!2107509) (not e!3085582))))

(declare-fun lt!2035217 () tuple2!61394)

(assert (=> d!1589973 (= res!2107509 (= (++!12406 (_1!34000 lt!2035217) (_2!34000 lt!2035217)) (list!18070 totalInput!685)))))

(declare-fun e!3085580 () tuple2!61394)

(assert (=> d!1589973 (= lt!2035217 e!3085580)))

(declare-fun c!842087 () Bool)

(assert (=> d!1589973 (= c!842087 ((_ is Nil!56860) (list!18070 totalInput!685)))))

(assert (=> d!1589973 (= (splitAtIndex!131 (list!18070 totalInput!685) testedPSize!70) lt!2035217)))

(declare-fun b!4938356 () Bool)

(assert (=> b!4938356 (= e!3085580 (tuple2!61395 Nil!56860 Nil!56860))))

(declare-fun b!4938357 () Bool)

(declare-fun res!2107508 () Bool)

(assert (=> b!4938357 (=> (not res!2107508) (not e!3085582))))

(declare-fun take!584 (List!56984 Int) List!56984)

(assert (=> b!4938357 (= res!2107508 (= (_1!34000 lt!2035217) (take!584 (list!18070 totalInput!685) testedPSize!70)))))

(declare-fun b!4938358 () Bool)

(assert (=> b!4938358 (= e!3085580 e!3085581)))

(declare-fun c!842088 () Bool)

(assert (=> b!4938358 (= c!842088 (<= testedPSize!70 0))))

(declare-fun b!4938359 () Bool)

(declare-fun lt!2035216 () tuple2!61394)

(assert (=> b!4938359 (= lt!2035216 (splitAtIndex!131 (t!367474 (list!18070 totalInput!685)) (- testedPSize!70 1)))))

(assert (=> b!4938359 (= e!3085581 (tuple2!61395 (Cons!56860 (h!63308 (list!18070 totalInput!685)) (_1!34000 lt!2035216)) (_2!34000 lt!2035216)))))

(declare-fun b!4938360 () Bool)

(assert (=> b!4938360 (= e!3085582 (= (_2!34000 lt!2035217) (drop!2270 (list!18070 totalInput!685) testedPSize!70)))))

(assert (= (and d!1589973 c!842087) b!4938356))

(assert (= (and d!1589973 (not c!842087)) b!4938358))

(assert (= (and b!4938358 c!842088) b!4938355))

(assert (= (and b!4938358 (not c!842088)) b!4938359))

(assert (= (and d!1589973 res!2107509) b!4938357))

(assert (= (and b!4938357 res!2107508) b!4938360))

(declare-fun m!5960488 () Bool)

(assert (=> d!1589973 m!5960488))

(assert (=> b!4938357 m!5959342))

(declare-fun m!5960490 () Bool)

(assert (=> b!4938357 m!5960490))

(declare-fun m!5960492 () Bool)

(assert (=> b!4938359 m!5960492))

(assert (=> b!4938360 m!5959342))

(declare-fun m!5960494 () Bool)

(assert (=> b!4938360 m!5960494))

(assert (=> b!4937732 d!1589973))

(assert (=> b!4937732 d!1589469))

(declare-fun d!1589975 () Bool)

(declare-fun lt!2035218 () Int)

(assert (=> d!1589975 (>= lt!2035218 0)))

(declare-fun e!3085583 () Int)

(assert (=> d!1589975 (= lt!2035218 e!3085583)))

(declare-fun c!842089 () Bool)

(assert (=> d!1589975 (= c!842089 ((_ is Nil!56860) (t!367474 testedP!110)))))

(assert (=> d!1589975 (= (size!37670 (t!367474 testedP!110)) lt!2035218)))

(declare-fun b!4938361 () Bool)

(assert (=> b!4938361 (= e!3085583 0)))

(declare-fun b!4938362 () Bool)

(assert (=> b!4938362 (= e!3085583 (+ 1 (size!37670 (t!367474 (t!367474 testedP!110)))))))

(assert (= (and d!1589975 c!842089) b!4938361))

(assert (= (and d!1589975 (not c!842089)) b!4938362))

(declare-fun m!5960496 () Bool)

(assert (=> b!4938362 m!5960496))

(assert (=> b!4937714 d!1589975))

(declare-fun d!1589977 () Bool)

(assert (=> d!1589977 (= testedSuffix!70 lt!2034843)))

(assert (=> d!1589977 true))

(declare-fun _$63!1201 () Unit!147585)

(assert (=> d!1589977 (= (choose!36330 testedP!110 testedSuffix!70 testedP!110 lt!2034843 lt!2034833) _$63!1201)))

(assert (=> d!1589551 d!1589977))

(assert (=> d!1589551 d!1589605))

(declare-fun b!4938363 () Bool)

(declare-fun e!3085584 () List!56984)

(assert (=> b!4938363 (= e!3085584 Nil!56860)))

(declare-fun b!4938365 () Bool)

(declare-fun e!3085585 () List!56984)

(assert (=> b!4938365 (= e!3085585 (list!18074 (xs!18272 (c!841800 (_2!33996 lt!2034840)))))))

(declare-fun b!4938364 () Bool)

(assert (=> b!4938364 (= e!3085584 e!3085585)))

(declare-fun c!842091 () Bool)

(assert (=> b!4938364 (= c!842091 ((_ is Leaf!24855) (c!841800 (_2!33996 lt!2034840))))))

(declare-fun b!4938366 () Bool)

(assert (=> b!4938366 (= e!3085585 (++!12406 (list!18072 (left!41468 (c!841800 (_2!33996 lt!2034840)))) (list!18072 (right!41798 (c!841800 (_2!33996 lt!2034840))))))))

(declare-fun d!1589979 () Bool)

(declare-fun c!842090 () Bool)

(assert (=> d!1589979 (= c!842090 ((_ is Empty!14948) (c!841800 (_2!33996 lt!2034840))))))

(assert (=> d!1589979 (= (list!18072 (c!841800 (_2!33996 lt!2034840))) e!3085584)))

(assert (= (and d!1589979 c!842090) b!4938363))

(assert (= (and d!1589979 (not c!842090)) b!4938364))

(assert (= (and b!4938364 c!842091) b!4938365))

(assert (= (and b!4938364 (not c!842091)) b!4938366))

(declare-fun m!5960498 () Bool)

(assert (=> b!4938365 m!5960498))

(declare-fun m!5960500 () Bool)

(assert (=> b!4938366 m!5960500))

(declare-fun m!5960502 () Bool)

(assert (=> b!4938366 m!5960502))

(assert (=> b!4938366 m!5960500))

(assert (=> b!4938366 m!5960502))

(declare-fun m!5960504 () Bool)

(assert (=> b!4938366 m!5960504))

(assert (=> d!1589613 d!1589979))

(declare-fun b!4938368 () Bool)

(declare-fun res!2107513 () Bool)

(declare-fun e!3085586 () Bool)

(assert (=> b!4938368 (=> (not res!2107513) (not e!3085586))))

(assert (=> b!4938368 (= res!2107513 (= (head!10576 (tail!9715 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860)))) (head!10576 (tail!9715 lt!2034833))))))

(declare-fun b!4938367 () Bool)

(declare-fun e!3085588 () Bool)

(assert (=> b!4938367 (= e!3085588 e!3085586)))

(declare-fun res!2107511 () Bool)

(assert (=> b!4938367 (=> (not res!2107511) (not e!3085586))))

(assert (=> b!4938367 (= res!2107511 (not ((_ is Nil!56860) (tail!9715 lt!2034833))))))

(declare-fun d!1589981 () Bool)

(declare-fun e!3085587 () Bool)

(assert (=> d!1589981 e!3085587))

(declare-fun res!2107512 () Bool)

(assert (=> d!1589981 (=> res!2107512 e!3085587)))

(declare-fun lt!2035219 () Bool)

(assert (=> d!1589981 (= res!2107512 (not lt!2035219))))

(assert (=> d!1589981 (= lt!2035219 e!3085588)))

(declare-fun res!2107510 () Bool)

(assert (=> d!1589981 (=> res!2107510 e!3085588)))

(assert (=> d!1589981 (= res!2107510 ((_ is Nil!56860) (tail!9715 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860)))))))

(assert (=> d!1589981 (= (isPrefix!5037 (tail!9715 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860))) (tail!9715 lt!2034833)) lt!2035219)))

(declare-fun b!4938369 () Bool)

(assert (=> b!4938369 (= e!3085586 (isPrefix!5037 (tail!9715 (tail!9715 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860)))) (tail!9715 (tail!9715 lt!2034833))))))

(declare-fun b!4938370 () Bool)

(assert (=> b!4938370 (= e!3085587 (>= (size!37670 (tail!9715 lt!2034833)) (size!37670 (tail!9715 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860))))))))

(assert (= (and d!1589981 (not res!2107510)) b!4938367))

(assert (= (and b!4938367 res!2107511) b!4938368))

(assert (= (and b!4938368 res!2107513) b!4938369))

(assert (= (and d!1589981 (not res!2107512)) b!4938370))

(assert (=> b!4938368 m!5959632))

(declare-fun m!5960506 () Bool)

(assert (=> b!4938368 m!5960506))

(assert (=> b!4938368 m!5959594))

(assert (=> b!4938368 m!5960324))

(assert (=> b!4938369 m!5959632))

(declare-fun m!5960508 () Bool)

(assert (=> b!4938369 m!5960508))

(assert (=> b!4938369 m!5959594))

(assert (=> b!4938369 m!5960312))

(assert (=> b!4938369 m!5960508))

(assert (=> b!4938369 m!5960312))

(declare-fun m!5960510 () Bool)

(assert (=> b!4938369 m!5960510))

(assert (=> b!4938370 m!5959594))

(assert (=> b!4938370 m!5960310))

(assert (=> b!4938370 m!5959632))

(declare-fun m!5960512 () Bool)

(assert (=> b!4938370 m!5960512))

(assert (=> b!4937650 d!1589981))

(declare-fun d!1589983 () Bool)

(assert (=> d!1589983 (= (tail!9715 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860))) (t!367474 (++!12406 testedP!110 (Cons!56860 (head!10576 lt!2034843) Nil!56860))))))

(assert (=> b!4937650 d!1589983))

(assert (=> b!4937650 d!1589883))

(declare-fun d!1589985 () Bool)

(declare-fun lt!2035220 () Int)

(assert (=> d!1589985 (>= lt!2035220 0)))

(declare-fun e!3085589 () Int)

(assert (=> d!1589985 (= lt!2035220 e!3085589)))

(declare-fun c!842092 () Bool)

(assert (=> d!1589985 (= c!842092 ((_ is Nil!56860) (t!367474 lt!2034833)))))

(assert (=> d!1589985 (= (size!37670 (t!367474 lt!2034833)) lt!2035220)))

(declare-fun b!4938371 () Bool)

(assert (=> b!4938371 (= e!3085589 0)))

(declare-fun b!4938372 () Bool)

(assert (=> b!4938372 (= e!3085589 (+ 1 (size!37670 (t!367474 (t!367474 lt!2034833)))))))

(assert (= (and d!1589985 c!842092) b!4938371))

(assert (= (and d!1589985 (not c!842092)) b!4938372))

(declare-fun m!5960514 () Bool)

(assert (=> b!4938372 m!5960514))

(assert (=> b!4937493 d!1589985))

(assert (=> b!4937643 d!1589483))

(declare-fun b!4938373 () Bool)

(declare-fun e!3085590 () List!56984)

(assert (=> b!4938373 (= e!3085590 Nil!56860)))

(declare-fun b!4938375 () Bool)

(declare-fun e!3085591 () List!56984)

(assert (=> b!4938375 (= e!3085591 (list!18074 (xs!18272 (c!841800 totalInput!685))))))

(declare-fun b!4938374 () Bool)

(assert (=> b!4938374 (= e!3085590 e!3085591)))

(declare-fun c!842094 () Bool)

(assert (=> b!4938374 (= c!842094 ((_ is Leaf!24855) (c!841800 totalInput!685)))))

(declare-fun b!4938376 () Bool)

(assert (=> b!4938376 (= e!3085591 (++!12406 (list!18072 (left!41468 (c!841800 totalInput!685))) (list!18072 (right!41798 (c!841800 totalInput!685)))))))

(declare-fun d!1589987 () Bool)

(declare-fun c!842093 () Bool)

(assert (=> d!1589987 (= c!842093 ((_ is Empty!14948) (c!841800 totalInput!685)))))

(assert (=> d!1589987 (= (list!18072 (c!841800 totalInput!685)) e!3085590)))

(assert (= (and d!1589987 c!842093) b!4938373))

(assert (= (and d!1589987 (not c!842093)) b!4938374))

(assert (= (and b!4938374 c!842094) b!4938375))

(assert (= (and b!4938374 (not c!842094)) b!4938376))

(declare-fun m!5960516 () Bool)

(assert (=> b!4938375 m!5960516))

(assert (=> b!4938376 m!5960264))

(assert (=> b!4938376 m!5960266))

(assert (=> b!4938376 m!5960264))

(assert (=> b!4938376 m!5960266))

(declare-fun m!5960518 () Bool)

(assert (=> b!4938376 m!5960518))

(assert (=> d!1589469 d!1589987))

(declare-fun b!4938379 () Bool)

(declare-fun res!2107514 () Bool)

(declare-fun e!3085592 () Bool)

(assert (=> b!4938379 (=> (not res!2107514) (not e!3085592))))

(declare-fun lt!2035221 () List!56984)

(assert (=> b!4938379 (= res!2107514 (= (size!37670 lt!2035221) (+ (size!37670 (t!367474 testedP!110)) (size!37670 testedSuffix!70))))))

(declare-fun b!4938378 () Bool)

(declare-fun e!3085593 () List!56984)

(assert (=> b!4938378 (= e!3085593 (Cons!56860 (h!63308 (t!367474 testedP!110)) (++!12406 (t!367474 (t!367474 testedP!110)) testedSuffix!70)))))

(declare-fun b!4938377 () Bool)

(assert (=> b!4938377 (= e!3085593 testedSuffix!70)))

(declare-fun b!4938380 () Bool)

(assert (=> b!4938380 (= e!3085592 (or (not (= testedSuffix!70 Nil!56860)) (= lt!2035221 (t!367474 testedP!110))))))

(declare-fun d!1589989 () Bool)

(assert (=> d!1589989 e!3085592))

(declare-fun res!2107515 () Bool)

(assert (=> d!1589989 (=> (not res!2107515) (not e!3085592))))

(assert (=> d!1589989 (= res!2107515 (= (content!10112 lt!2035221) ((_ map or) (content!10112 (t!367474 testedP!110)) (content!10112 testedSuffix!70))))))

(assert (=> d!1589989 (= lt!2035221 e!3085593)))

(declare-fun c!842095 () Bool)

(assert (=> d!1589989 (= c!842095 ((_ is Nil!56860) (t!367474 testedP!110)))))

(assert (=> d!1589989 (= (++!12406 (t!367474 testedP!110) testedSuffix!70) lt!2035221)))

(assert (= (and d!1589989 c!842095) b!4938377))

(assert (= (and d!1589989 (not c!842095)) b!4938378))

(assert (= (and d!1589989 res!2107515) b!4938379))

(assert (= (and b!4938379 res!2107514) b!4938380))

(declare-fun m!5960520 () Bool)

(assert (=> b!4938379 m!5960520))

(assert (=> b!4938379 m!5959698))

(assert (=> b!4938379 m!5959420))

(declare-fun m!5960522 () Bool)

(assert (=> b!4938378 m!5960522))

(declare-fun m!5960524 () Bool)

(assert (=> d!1589989 m!5960524))

(assert (=> d!1589989 m!5960180))

(assert (=> d!1589989 m!5959428))

(assert (=> b!4937485 d!1589989))

(declare-fun b!4938382 () Bool)

(declare-fun res!2107519 () Bool)

(declare-fun e!3085594 () Bool)

(assert (=> b!4938382 (=> (not res!2107519) (not e!3085594))))

(assert (=> b!4938382 (= res!2107519 (= (head!10576 (tail!9715 testedP!110)) (head!10576 (tail!9715 lt!2034846))))))

(declare-fun b!4938381 () Bool)

(declare-fun e!3085596 () Bool)

(assert (=> b!4938381 (= e!3085596 e!3085594)))

(declare-fun res!2107517 () Bool)

(assert (=> b!4938381 (=> (not res!2107517) (not e!3085594))))

(assert (=> b!4938381 (= res!2107517 (not ((_ is Nil!56860) (tail!9715 lt!2034846))))))

(declare-fun d!1589991 () Bool)

(declare-fun e!3085595 () Bool)

(assert (=> d!1589991 e!3085595))

(declare-fun res!2107518 () Bool)

(assert (=> d!1589991 (=> res!2107518 e!3085595)))

(declare-fun lt!2035222 () Bool)

(assert (=> d!1589991 (= res!2107518 (not lt!2035222))))

(assert (=> d!1589991 (= lt!2035222 e!3085596)))

(declare-fun res!2107516 () Bool)

(assert (=> d!1589991 (=> res!2107516 e!3085596)))

(assert (=> d!1589991 (= res!2107516 ((_ is Nil!56860) (tail!9715 testedP!110)))))

(assert (=> d!1589991 (= (isPrefix!5037 (tail!9715 testedP!110) (tail!9715 lt!2034846)) lt!2035222)))

(declare-fun b!4938383 () Bool)

(assert (=> b!4938383 (= e!3085594 (isPrefix!5037 (tail!9715 (tail!9715 testedP!110)) (tail!9715 (tail!9715 lt!2034846))))))

(declare-fun b!4938384 () Bool)

(assert (=> b!4938384 (= e!3085595 (>= (size!37670 (tail!9715 lt!2034846)) (size!37670 (tail!9715 testedP!110))))))

(assert (= (and d!1589991 (not res!2107516)) b!4938381))

(assert (= (and b!4938381 res!2107517) b!4938382))

(assert (= (and b!4938382 res!2107519) b!4938383))

(assert (= (and d!1589991 (not res!2107518)) b!4938384))

(assert (=> b!4938382 m!5959702))

(assert (=> b!4938382 m!5960322))

(assert (=> b!4938382 m!5959708))

(declare-fun m!5960526 () Bool)

(assert (=> b!4938382 m!5960526))

(assert (=> b!4938383 m!5959702))

(assert (=> b!4938383 m!5960326))

(assert (=> b!4938383 m!5959708))

(declare-fun m!5960528 () Bool)

(assert (=> b!4938383 m!5960528))

(assert (=> b!4938383 m!5960326))

(assert (=> b!4938383 m!5960528))

(declare-fun m!5960530 () Bool)

(assert (=> b!4938383 m!5960530))

(assert (=> b!4938384 m!5959708))

(declare-fun m!5960532 () Bool)

(assert (=> b!4938384 m!5960532))

(assert (=> b!4938384 m!5959702))

(assert (=> b!4938384 m!5960330))

(assert (=> b!4937721 d!1589991))

(assert (=> b!4937721 d!1589893))

(declare-fun d!1589993 () Bool)

(assert (=> d!1589993 (= (tail!9715 lt!2034846) (t!367474 lt!2034846))))

(assert (=> b!4937721 d!1589993))

(assert (=> b!4937716 d!1589867))

(assert (=> b!4937716 d!1589851))

(declare-fun d!1589995 () Bool)

(declare-fun res!2107526 () Bool)

(declare-fun e!3085599 () Bool)

(assert (=> d!1589995 (=> (not res!2107526) (not e!3085599))))

(assert (=> d!1589995 (= res!2107526 (= (csize!30126 (c!841800 totalInput!685)) (+ (size!37673 (left!41468 (c!841800 totalInput!685))) (size!37673 (right!41798 (c!841800 totalInput!685))))))))

(assert (=> d!1589995 (= (inv!73915 (c!841800 totalInput!685)) e!3085599)))

(declare-fun b!4938391 () Bool)

(declare-fun res!2107527 () Bool)

(assert (=> b!4938391 (=> (not res!2107527) (not e!3085599))))

(assert (=> b!4938391 (= res!2107527 (and (not (= (left!41468 (c!841800 totalInput!685)) Empty!14948)) (not (= (right!41798 (c!841800 totalInput!685)) Empty!14948))))))

(declare-fun b!4938392 () Bool)

(declare-fun res!2107528 () Bool)

(assert (=> b!4938392 (=> (not res!2107528) (not e!3085599))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4938392 (= res!2107528 (= (cheight!15159 (c!841800 totalInput!685)) (+ (max!0 (height!1994 (left!41468 (c!841800 totalInput!685))) (height!1994 (right!41798 (c!841800 totalInput!685)))) 1)))))

(declare-fun b!4938393 () Bool)

(assert (=> b!4938393 (= e!3085599 (<= 0 (cheight!15159 (c!841800 totalInput!685))))))

(assert (= (and d!1589995 res!2107526) b!4938391))

(assert (= (and b!4938391 res!2107527) b!4938392))

(assert (= (and b!4938392 res!2107528) b!4938393))

(assert (=> d!1589995 m!5960256))

(declare-fun m!5960534 () Bool)

(assert (=> d!1589995 m!5960534))

(assert (=> b!4938392 m!5960386))

(assert (=> b!4938392 m!5960388))

(assert (=> b!4938392 m!5960386))

(assert (=> b!4938392 m!5960388))

(declare-fun m!5960536 () Bool)

(assert (=> b!4938392 m!5960536))

(assert (=> b!4937666 d!1589995))

(assert (=> b!4937718 d!1589483))

(assert (=> b!4937718 d!1589603))

(declare-fun d!1589997 () Bool)

(declare-fun c!842096 () Bool)

(assert (=> d!1589997 (= c!842096 ((_ is Nil!56860) lt!2035003))))

(declare-fun e!3085600 () (InoxSet C!27108))

(assert (=> d!1589997 (= (content!10112 lt!2035003) e!3085600)))

(declare-fun b!4938394 () Bool)

(assert (=> b!4938394 (= e!3085600 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938395 () Bool)

(assert (=> b!4938395 (= e!3085600 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 lt!2035003) true) (content!10112 (t!367474 lt!2035003))))))

(assert (= (and d!1589997 c!842096) b!4938394))

(assert (= (and d!1589997 (not c!842096)) b!4938395))

(declare-fun m!5960538 () Bool)

(assert (=> b!4938395 m!5960538))

(declare-fun m!5960540 () Bool)

(assert (=> b!4938395 m!5960540))

(assert (=> d!1589581 d!1589997))

(assert (=> d!1589581 d!1589877))

(declare-fun d!1589999 () Bool)

(declare-fun c!842097 () Bool)

(assert (=> d!1589999 (= c!842097 ((_ is Nil!56860) (Cons!56860 lt!2034837 Nil!56860)))))

(declare-fun e!3085601 () (InoxSet C!27108))

(assert (=> d!1589999 (= (content!10112 (Cons!56860 lt!2034837 Nil!56860)) e!3085601)))

(declare-fun b!4938396 () Bool)

(assert (=> b!4938396 (= e!3085601 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938397 () Bool)

(assert (=> b!4938397 (= e!3085601 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 (Cons!56860 lt!2034837 Nil!56860)) true) (content!10112 (t!367474 (Cons!56860 lt!2034837 Nil!56860)))))))

(assert (= (and d!1589999 c!842097) b!4938396))

(assert (= (and d!1589999 (not c!842097)) b!4938397))

(declare-fun m!5960542 () Bool)

(assert (=> b!4938397 m!5960542))

(declare-fun m!5960544 () Bool)

(assert (=> b!4938397 m!5960544))

(assert (=> d!1589581 d!1589999))

(assert (=> d!1589485 d!1589603))

(assert (=> d!1589485 d!1589483))

(declare-fun d!1590001 () Bool)

(assert (=> d!1590001 (<= (size!37670 testedP!110) (size!37670 lt!2034833))))

(assert (=> d!1590001 true))

(declare-fun _$64!631 () Unit!147585)

(assert (=> d!1590001 (= (choose!36329 testedP!110 lt!2034833) _$64!631)))

(declare-fun bs!1181005 () Bool)

(assert (= bs!1181005 d!1590001))

(assert (=> bs!1181005 m!5959308))

(assert (=> bs!1181005 m!5959312))

(assert (=> d!1589485 d!1590001))

(assert (=> d!1589485 d!1589605))

(assert (=> b!4937709 d!1589565))

(declare-fun d!1590003 () Bool)

(declare-fun c!842098 () Bool)

(assert (=> d!1590003 (= c!842098 ((_ is Nil!56860) lt!2035029))))

(declare-fun e!3085602 () (InoxSet C!27108))

(assert (=> d!1590003 (= (content!10112 lt!2035029) e!3085602)))

(declare-fun b!4938398 () Bool)

(assert (=> b!4938398 (= e!3085602 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938399 () Bool)

(assert (=> b!4938399 (= e!3085602 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 lt!2035029) true) (content!10112 (t!367474 lt!2035029))))))

(assert (= (and d!1590003 c!842098) b!4938398))

(assert (= (and d!1590003 (not c!842098)) b!4938399))

(declare-fun m!5960546 () Bool)

(assert (=> b!4938399 m!5960546))

(declare-fun m!5960548 () Bool)

(assert (=> b!4938399 m!5960548))

(assert (=> d!1589611 d!1590003))

(declare-fun d!1590005 () Bool)

(declare-fun c!842099 () Bool)

(assert (=> d!1590005 (= c!842099 ((_ is Nil!56860) lt!2034835))))

(declare-fun e!3085603 () (InoxSet C!27108))

(assert (=> d!1590005 (= (content!10112 lt!2034835) e!3085603)))

(declare-fun b!4938400 () Bool)

(assert (=> b!4938400 (= e!3085603 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938401 () Bool)

(assert (=> b!4938401 (= e!3085603 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 lt!2034835) true) (content!10112 (t!367474 lt!2034835))))))

(assert (= (and d!1590005 c!842099) b!4938400))

(assert (= (and d!1590005 (not c!842099)) b!4938401))

(declare-fun m!5960550 () Bool)

(assert (=> b!4938401 m!5960550))

(assert (=> b!4938401 m!5960194))

(assert (=> d!1589611 d!1590005))

(declare-fun d!1590007 () Bool)

(declare-fun c!842100 () Bool)

(assert (=> d!1590007 (= c!842100 ((_ is Nil!56860) lt!2034847))))

(declare-fun e!3085604 () (InoxSet C!27108))

(assert (=> d!1590007 (= (content!10112 lt!2034847) e!3085604)))

(declare-fun b!4938402 () Bool)

(assert (=> b!4938402 (= e!3085604 ((as const (Array C!27108 Bool)) false))))

(declare-fun b!4938403 () Bool)

(assert (=> b!4938403 (= e!3085604 ((_ map or) (store ((as const (Array C!27108 Bool)) false) (h!63308 lt!2034847) true) (content!10112 (t!367474 lt!2034847))))))

(assert (= (and d!1590007 c!842100) b!4938402))

(assert (= (and d!1590007 (not c!842100)) b!4938403))

(declare-fun m!5960552 () Bool)

(assert (=> b!4938403 m!5960552))

(declare-fun m!5960554 () Bool)

(assert (=> b!4938403 m!5960554))

(assert (=> d!1589611 d!1590007))

(declare-fun d!1590009 () Bool)

(declare-fun res!2107533 () Bool)

(declare-fun e!3085607 () Bool)

(assert (=> d!1590009 (=> (not res!2107533) (not e!3085607))))

(assert (=> d!1590009 (= res!2107533 (<= (size!37670 (list!18074 (xs!18272 (c!841800 totalInput!685)))) 512))))

(assert (=> d!1590009 (= (inv!73916 (c!841800 totalInput!685)) e!3085607)))

(declare-fun b!4938408 () Bool)

(declare-fun res!2107534 () Bool)

(assert (=> b!4938408 (=> (not res!2107534) (not e!3085607))))

(assert (=> b!4938408 (= res!2107534 (= (csize!30127 (c!841800 totalInput!685)) (size!37670 (list!18074 (xs!18272 (c!841800 totalInput!685))))))))

(declare-fun b!4938409 () Bool)

(assert (=> b!4938409 (= e!3085607 (and (> (csize!30127 (c!841800 totalInput!685)) 0) (<= (csize!30127 (c!841800 totalInput!685)) 512)))))

(assert (= (and d!1590009 res!2107533) b!4938408))

(assert (= (and b!4938408 res!2107534) b!4938409))

(assert (=> d!1590009 m!5960516))

(assert (=> d!1590009 m!5960516))

(declare-fun m!5960556 () Bool)

(assert (=> d!1590009 m!5960556))

(assert (=> b!4938408 m!5960516))

(assert (=> b!4938408 m!5960516))

(assert (=> b!4938408 m!5960556))

(assert (=> b!4937668 d!1590009))

(declare-fun d!1590011 () Bool)

(declare-fun lt!2035223 () Int)

(assert (=> d!1590011 (>= lt!2035223 0)))

(declare-fun e!3085608 () Int)

(assert (=> d!1590011 (= lt!2035223 e!3085608)))

(declare-fun c!842101 () Bool)

(assert (=> d!1590011 (= c!842101 ((_ is Nil!56860) (t!367474 lt!2034852)))))

(assert (=> d!1590011 (= (size!37670 (t!367474 lt!2034852)) lt!2035223)))

(declare-fun b!4938410 () Bool)

(assert (=> b!4938410 (= e!3085608 0)))

(declare-fun b!4938411 () Bool)

(assert (=> b!4938411 (= e!3085608 (+ 1 (size!37670 (t!367474 (t!367474 lt!2034852)))))))

(assert (= (and d!1590011 c!842101) b!4938410))

(assert (= (and d!1590011 (not c!842101)) b!4938411))

(declare-fun m!5960558 () Bool)

(assert (=> b!4938411 m!5960558))

(assert (=> b!4937670 d!1590011))

(declare-fun bs!1181006 () Bool)

(declare-fun d!1590013 () Bool)

(assert (= bs!1181006 (and d!1590013 d!1589563)))

(declare-fun lambda!246060 () Int)

(assert (=> bs!1181006 (= lambda!246060 lambda!246023)))

(assert (=> d!1590013 (= (inv!73909 setElem!27844) (forall!13208 (exprs!3581 setElem!27844) lambda!246060))))

(declare-fun bs!1181007 () Bool)

(assert (= bs!1181007 d!1590013))

(declare-fun m!5960560 () Bool)

(assert (=> bs!1181007 m!5960560))

(assert (=> setNonEmpty!27844 d!1590013))

(assert (=> b!4937437 d!1589585))

(assert (=> bm!344523 d!1589483))

(declare-fun b!4938412 () Bool)

(declare-fun res!2107540 () Bool)

(declare-fun e!3085610 () Bool)

(assert (=> b!4938412 (=> (not res!2107540) (not e!3085610))))

(assert (=> b!4938412 (= res!2107540 (isBalanced!4125 (left!41468 (c!841800 (_1!33996 lt!2035035)))))))

(declare-fun b!4938413 () Bool)

(assert (=> b!4938413 (= e!3085610 (not (isEmpty!30622 (right!41798 (c!841800 (_1!33996 lt!2035035))))))))

(declare-fun b!4938415 () Bool)

(declare-fun res!2107538 () Bool)

(assert (=> b!4938415 (=> (not res!2107538) (not e!3085610))))

(assert (=> b!4938415 (= res!2107538 (not (isEmpty!30622 (left!41468 (c!841800 (_1!33996 lt!2035035))))))))

(declare-fun b!4938416 () Bool)

(declare-fun e!3085609 () Bool)

(assert (=> b!4938416 (= e!3085609 e!3085610)))

(declare-fun res!2107537 () Bool)

(assert (=> b!4938416 (=> (not res!2107537) (not e!3085610))))

(assert (=> b!4938416 (= res!2107537 (<= (- 1) (- (height!1994 (left!41468 (c!841800 (_1!33996 lt!2035035)))) (height!1994 (right!41798 (c!841800 (_1!33996 lt!2035035)))))))))

(declare-fun b!4938417 () Bool)

(declare-fun res!2107535 () Bool)

(assert (=> b!4938417 (=> (not res!2107535) (not e!3085610))))

(assert (=> b!4938417 (= res!2107535 (<= (- (height!1994 (left!41468 (c!841800 (_1!33996 lt!2035035)))) (height!1994 (right!41798 (c!841800 (_1!33996 lt!2035035))))) 1))))

(declare-fun d!1590015 () Bool)

(declare-fun res!2107536 () Bool)

(assert (=> d!1590015 (=> res!2107536 e!3085609)))

(assert (=> d!1590015 (= res!2107536 (not ((_ is Node!14948) (c!841800 (_1!33996 lt!2035035)))))))

(assert (=> d!1590015 (= (isBalanced!4125 (c!841800 (_1!33996 lt!2035035))) e!3085609)))

(declare-fun b!4938414 () Bool)

(declare-fun res!2107539 () Bool)

(assert (=> b!4938414 (=> (not res!2107539) (not e!3085610))))

(assert (=> b!4938414 (= res!2107539 (isBalanced!4125 (right!41798 (c!841800 (_1!33996 lt!2035035)))))))

(assert (= (and d!1590015 (not res!2107536)) b!4938416))

(assert (= (and b!4938416 res!2107537) b!4938417))

(assert (= (and b!4938417 res!2107535) b!4938412))

(assert (= (and b!4938412 res!2107540) b!4938414))

(assert (= (and b!4938414 res!2107539) b!4938415))

(assert (= (and b!4938415 res!2107538) b!4938413))

(declare-fun m!5960562 () Bool)

(assert (=> b!4938413 m!5960562))

(declare-fun m!5960564 () Bool)

(assert (=> b!4938414 m!5960564))

(declare-fun m!5960566 () Bool)

(assert (=> b!4938416 m!5960566))

(declare-fun m!5960568 () Bool)

(assert (=> b!4938416 m!5960568))

(declare-fun m!5960570 () Bool)

(assert (=> b!4938415 m!5960570))

(assert (=> b!4938417 m!5960566))

(assert (=> b!4938417 m!5960568))

(declare-fun m!5960572 () Bool)

(assert (=> b!4938412 m!5960572))

(assert (=> d!1589617 d!1590015))

(declare-fun b!4938466 () Bool)

(declare-fun e!3085645 () List!56984)

(assert (=> b!4938466 (= e!3085645 (list!18074 (xs!18272 (c!841800 totalInput!685))))))

(declare-fun call!344570 () Int)

(declare-fun lt!2035250 () List!56984)

(declare-fun c!842132 () Bool)

(declare-fun lt!2035256 () List!56984)

(declare-fun bm!344562 () Bool)

(assert (=> bm!344562 (= call!344570 (size!37670 (ite c!842132 lt!2035250 lt!2035256)))))

(declare-fun bm!344563 () Bool)

(declare-fun c!842134 () Bool)

(declare-fun c!842133 () Bool)

(assert (=> bm!344563 (= c!842134 c!842133)))

(declare-fun e!3085635 () Int)

(declare-fun call!344568 () tuple2!61392)

(assert (=> bm!344563 (= call!344568 (splitAt!351 (ite c!842133 (left!41468 (c!841800 totalInput!685)) (right!41798 (c!841800 totalInput!685))) e!3085635))))

(declare-fun b!4938467 () Bool)

(declare-fun e!3085639 () tuple2!61394)

(declare-fun e!3085643 () tuple2!61394)

(assert (=> b!4938467 (= e!3085639 e!3085643)))

(declare-fun c!842128 () Bool)

(assert (=> b!4938467 (= c!842128 (< testedPSize!70 call!344570))))

(declare-fun lt!2035260 () List!56984)

(declare-fun b!4938468 () Bool)

(assert (=> b!4938468 (= e!3085645 (ite c!842128 lt!2035256 lt!2035260))))

(declare-fun b!4938469 () Bool)

(declare-fun lt!2035261 () tuple2!61394)

(declare-fun call!344571 () tuple2!61394)

(assert (=> b!4938469 (= lt!2035261 call!344571)))

(declare-fun call!344567 () List!56984)

(assert (=> b!4938469 (= e!3085643 (tuple2!61395 call!344567 (_2!34000 lt!2035261)))))

(declare-fun b!4938470 () Bool)

(declare-fun e!3085641 () Int)

(assert (=> b!4938470 (= e!3085641 (- testedPSize!70 call!344570))))

(declare-fun bm!344565 () Bool)

(declare-fun c!842130 () Bool)

(assert (=> bm!344565 (= c!842130 c!842132)))

(declare-fun call!344572 () tuple2!61394)

(assert (=> bm!344565 (= call!344572 (splitAtIndex!131 e!3085645 (ite c!842132 testedPSize!70 e!3085641)))))

(declare-fun b!4938471 () Bool)

(declare-fun e!3085644 () tuple2!61392)

(declare-fun e!3085636 () tuple2!61392)

(assert (=> b!4938471 (= e!3085644 e!3085636)))

(assert (=> b!4938471 (= c!842133 (< testedPSize!70 (size!37673 (left!41468 (c!841800 totalInput!685)))))))

(declare-fun b!4938472 () Bool)

(declare-fun c!842124 () Bool)

(assert (=> b!4938472 (= c!842124 (= (size!37673 (left!41468 (c!841800 totalInput!685))) testedPSize!70))))

(declare-fun lt!2035251 () Unit!147585)

(declare-fun lt!2035253 () Unit!147585)

(assert (=> b!4938472 (= lt!2035251 lt!2035253)))

(assert (=> b!4938472 (= (splitAtIndex!131 (++!12406 lt!2035256 lt!2035260) testedPSize!70) e!3085639)))

(declare-fun c!842129 () Bool)

(assert (=> b!4938472 (= c!842129 (= call!344570 testedPSize!70))))

(declare-fun splitAtLemma!34 (List!56984 List!56984 Int) Unit!147585)

(assert (=> b!4938472 (= lt!2035253 (splitAtLemma!34 lt!2035256 lt!2035260 testedPSize!70))))

(assert (=> b!4938472 (= lt!2035260 (list!18072 (right!41798 (c!841800 totalInput!685))))))

(assert (=> b!4938472 (= lt!2035256 (list!18072 (left!41468 (c!841800 totalInput!685))))))

(declare-fun e!3085642 () tuple2!61392)

(assert (=> b!4938472 (= e!3085642 e!3085644)))

(declare-fun b!4938473 () Bool)

(assert (=> b!4938473 (= e!3085644 (tuple2!61393 (left!41468 (c!841800 totalInput!685)) (right!41798 (c!841800 totalInput!685))))))

(declare-fun bm!344566 () Bool)

(declare-fun lt!2035255 () tuple2!61394)

(assert (=> bm!344566 (= call!344567 (++!12406 (ite c!842128 (_2!34000 lt!2035255) lt!2035256) (ite c!842128 lt!2035260 (_1!34000 lt!2035261))))))

(declare-fun b!4938474 () Bool)

(assert (=> b!4938474 (= e!3085635 testedPSize!70)))

(declare-fun e!3085640 () Bool)

(declare-fun b!4938475 () Bool)

(declare-fun lt!2035258 () tuple2!61392)

(assert (=> b!4938475 (= e!3085640 (= (tuple2!61395 (list!18072 (_1!33999 lt!2035258)) (list!18072 (_2!33999 lt!2035258))) (splitAtIndex!131 (list!18072 (c!841800 totalInput!685)) testedPSize!70)))))

(declare-fun b!4938476 () Bool)

(declare-fun e!3085637 () tuple2!61392)

(assert (=> b!4938476 (= e!3085637 (tuple2!61393 (c!841800 totalInput!685) (c!841800 totalInput!685)))))

(declare-fun b!4938477 () Bool)

(declare-fun lt!2035252 () tuple2!61392)

(assert (=> b!4938477 (= lt!2035252 call!344568)))

(declare-fun call!344569 () Conc!14948)

(assert (=> b!4938477 (= e!3085636 (tuple2!61393 call!344569 (_2!33999 lt!2035252)))))

(declare-fun lt!2035254 () tuple2!61392)

(declare-fun bm!344567 () Bool)

(declare-fun ++!12408 (Conc!14948 Conc!14948) Conc!14948)

(assert (=> bm!344567 (= call!344569 (++!12408 (ite c!842133 (_2!33999 lt!2035254) (left!41468 (c!841800 totalInput!685))) (ite c!842133 (right!41798 (c!841800 totalInput!685)) (_1!33999 lt!2035252))))))

(declare-fun b!4938478 () Bool)

(assert (=> b!4938478 (= lt!2035254 call!344568)))

(assert (=> b!4938478 (= e!3085636 (tuple2!61393 (_1!33999 lt!2035254) call!344569))))

(declare-fun d!1590017 () Bool)

(assert (=> d!1590017 e!3085640))

(declare-fun res!2107545 () Bool)

(assert (=> d!1590017 (=> (not res!2107545) (not e!3085640))))

(assert (=> d!1590017 (= res!2107545 (isBalanced!4125 (_1!33999 lt!2035258)))))

(assert (=> d!1590017 (= lt!2035258 e!3085637)))

(declare-fun c!842127 () Bool)

(assert (=> d!1590017 (= c!842127 ((_ is Empty!14948) (c!841800 totalInput!685)))))

(assert (=> d!1590017 (isBalanced!4125 (c!841800 totalInput!685))))

(assert (=> d!1590017 (= (splitAt!351 (c!841800 totalInput!685) testedPSize!70) lt!2035258)))

(declare-fun bm!344564 () Bool)

(declare-fun c!842125 () Bool)

(assert (=> bm!344564 (= c!842125 c!842128)))

(assert (=> bm!344564 (= call!344571 call!344572)))

(declare-fun b!4938479 () Bool)

(declare-fun e!3085638 () tuple2!61392)

(assert (=> b!4938479 (= e!3085638 (tuple2!61393 Empty!14948 (c!841800 totalInput!685)))))

(declare-fun b!4938480 () Bool)

(declare-fun e!3085646 () tuple2!61392)

(assert (=> b!4938480 (= e!3085646 (tuple2!61393 (c!841800 totalInput!685) Empty!14948))))

(declare-fun b!4938481 () Bool)

(assert (=> b!4938481 (= e!3085635 (- testedPSize!70 (size!37673 (left!41468 (c!841800 totalInput!685)))))))

(declare-fun b!4938482 () Bool)

(declare-fun res!2107546 () Bool)

(assert (=> b!4938482 (=> (not res!2107546) (not e!3085640))))

(assert (=> b!4938482 (= res!2107546 (isBalanced!4125 (_2!33999 lt!2035258)))))

(declare-fun b!4938483 () Bool)

(assert (=> b!4938483 (= e!3085637 e!3085642)))

(assert (=> b!4938483 (= c!842132 ((_ is Leaf!24855) (c!841800 totalInput!685)))))

(declare-fun b!4938484 () Bool)

(declare-fun c!842126 () Bool)

(assert (=> b!4938484 (= c!842126 (<= testedPSize!70 0))))

(assert (=> b!4938484 (= e!3085642 e!3085638)))

(declare-fun b!4938485 () Bool)

(assert (=> b!4938485 (= e!3085639 (tuple2!61395 lt!2035256 lt!2035260))))

(declare-fun b!4938486 () Bool)

(assert (=> b!4938486 (= e!3085641 testedPSize!70)))

(declare-fun b!4938487 () Bool)

(declare-fun lt!2035262 () Unit!147585)

(declare-fun lt!2035259 () Unit!147585)

(assert (=> b!4938487 (= lt!2035262 lt!2035259)))

(declare-fun slice!784 (List!56984 Int Int) List!56984)

(assert (=> b!4938487 (= (drop!2270 lt!2035250 testedPSize!70) (slice!784 lt!2035250 testedPSize!70 call!344570))))

(declare-fun dropLemma!34 (List!56984 Int) Unit!147585)

(assert (=> b!4938487 (= lt!2035259 (dropLemma!34 lt!2035250 testedPSize!70))))

(assert (=> b!4938487 (= lt!2035250 (list!18074 (xs!18272 (c!841800 totalInput!685))))))

(declare-fun lt!2035257 () tuple2!61394)

(assert (=> b!4938487 (= lt!2035257 call!344572)))

(declare-fun slice!785 (IArray!29957 Int Int) IArray!29957)

(assert (=> b!4938487 (= e!3085646 (tuple2!61393 (Leaf!24855 (slice!785 (xs!18272 (c!841800 totalInput!685)) 0 testedPSize!70) testedPSize!70) (Leaf!24855 (slice!785 (xs!18272 (c!841800 totalInput!685)) testedPSize!70 (csize!30127 (c!841800 totalInput!685))) (- (csize!30127 (c!841800 totalInput!685)) testedPSize!70))))))

(declare-fun b!4938488 () Bool)

(assert (=> b!4938488 (= lt!2035255 call!344571)))

(assert (=> b!4938488 (= e!3085643 (tuple2!61395 (_1!34000 lt!2035255) call!344567))))

(declare-fun b!4938489 () Bool)

(assert (=> b!4938489 (= e!3085638 e!3085646)))

(declare-fun c!842131 () Bool)

(assert (=> b!4938489 (= c!842131 (= testedPSize!70 (csize!30127 (c!841800 totalInput!685))))))

(assert (= (and d!1590017 c!842127) b!4938476))

(assert (= (and d!1590017 (not c!842127)) b!4938483))

(assert (= (and b!4938483 c!842132) b!4938484))

(assert (= (and b!4938483 (not c!842132)) b!4938472))

(assert (= (and b!4938484 c!842126) b!4938479))

(assert (= (and b!4938484 (not c!842126)) b!4938489))

(assert (= (and b!4938489 c!842131) b!4938480))

(assert (= (and b!4938489 (not c!842131)) b!4938487))

(assert (= (and b!4938472 c!842129) b!4938485))

(assert (= (and b!4938472 (not c!842129)) b!4938467))

(assert (= (and b!4938467 c!842128) b!4938488))

(assert (= (and b!4938467 (not c!842128)) b!4938469))

(assert (= (or b!4938488 b!4938469) bm!344566))

(assert (= (or b!4938488 b!4938469) bm!344564))

(assert (= (and bm!344564 c!842125) b!4938486))

(assert (= (and bm!344564 (not c!842125)) b!4938470))

(assert (= (and b!4938472 c!842124) b!4938473))

(assert (= (and b!4938472 (not c!842124)) b!4938471))

(assert (= (and b!4938471 c!842133) b!4938478))

(assert (= (and b!4938471 (not c!842133)) b!4938477))

(assert (= (or b!4938478 b!4938477) bm!344567))

(assert (= (or b!4938478 b!4938477) bm!344563))

(assert (= (and bm!344563 c!842134) b!4938474))

(assert (= (and bm!344563 (not c!842134)) b!4938481))

(assert (= (or b!4938487 b!4938467 b!4938470 b!4938472) bm!344562))

(assert (= (or b!4938487 bm!344564) bm!344565))

(assert (= (and bm!344565 c!842130) b!4938466))

(assert (= (and bm!344565 (not c!842130)) b!4938468))

(assert (= (and d!1590017 res!2107545) b!4938482))

(assert (= (and b!4938482 res!2107546) b!4938475))

(declare-fun m!5960574 () Bool)

(assert (=> b!4938475 m!5960574))

(declare-fun m!5960576 () Bool)

(assert (=> b!4938475 m!5960576))

(assert (=> b!4938475 m!5959394))

(assert (=> b!4938475 m!5959394))

(declare-fun m!5960578 () Bool)

(assert (=> b!4938475 m!5960578))

(declare-fun m!5960580 () Bool)

(assert (=> bm!344567 m!5960580))

(declare-fun m!5960582 () Bool)

(assert (=> bm!344563 m!5960582))

(assert (=> b!4938466 m!5960516))

(declare-fun m!5960584 () Bool)

(assert (=> bm!344566 m!5960584))

(declare-fun m!5960586 () Bool)

(assert (=> d!1590017 m!5960586))

(assert (=> d!1590017 m!5959430))

(assert (=> b!4938471 m!5960256))

(declare-fun m!5960588 () Bool)

(assert (=> bm!344562 m!5960588))

(declare-fun m!5960590 () Bool)

(assert (=> b!4938472 m!5960590))

(declare-fun m!5960592 () Bool)

(assert (=> b!4938472 m!5960592))

(assert (=> b!4938472 m!5960590))

(declare-fun m!5960594 () Bool)

(assert (=> b!4938472 m!5960594))

(assert (=> b!4938472 m!5960256))

(assert (=> b!4938472 m!5960266))

(assert (=> b!4938472 m!5960264))

(declare-fun m!5960596 () Bool)

(assert (=> b!4938487 m!5960596))

(assert (=> b!4938487 m!5960516))

(declare-fun m!5960598 () Bool)

(assert (=> b!4938487 m!5960598))

(declare-fun m!5960600 () Bool)

(assert (=> b!4938487 m!5960600))

(declare-fun m!5960602 () Bool)

(assert (=> b!4938487 m!5960602))

(declare-fun m!5960604 () Bool)

(assert (=> b!4938487 m!5960604))

(declare-fun m!5960606 () Bool)

(assert (=> bm!344565 m!5960606))

(assert (=> b!4938481 m!5960256))

(declare-fun m!5960608 () Bool)

(assert (=> b!4938482 m!5960608))

(assert (=> d!1589617 d!1590017))

(assert (=> d!1589617 d!1589913))

(assert (=> b!4937678 d!1589851))

(assert (=> b!4937641 d!1589851))

(declare-fun b!4938492 () Bool)

(declare-fun res!2107547 () Bool)

(declare-fun e!3085647 () Bool)

(assert (=> b!4938492 (=> (not res!2107547) (not e!3085647))))

(declare-fun lt!2035263 () List!56984)

(assert (=> b!4938492 (= res!2107547 (= (size!37670 lt!2035263) (+ (size!37670 (t!367474 lt!2034852)) (size!37670 lt!2034850))))))

(declare-fun b!4938491 () Bool)

(declare-fun e!3085648 () List!56984)

(assert (=> b!4938491 (= e!3085648 (Cons!56860 (h!63308 (t!367474 lt!2034852)) (++!12406 (t!367474 (t!367474 lt!2034852)) lt!2034850)))))

(declare-fun b!4938490 () Bool)

(assert (=> b!4938490 (= e!3085648 lt!2034850)))

(declare-fun b!4938493 () Bool)

(assert (=> b!4938493 (= e!3085647 (or (not (= lt!2034850 Nil!56860)) (= lt!2035263 (t!367474 lt!2034852))))))

(declare-fun d!1590019 () Bool)

(assert (=> d!1590019 e!3085647))

(declare-fun res!2107548 () Bool)

(assert (=> d!1590019 (=> (not res!2107548) (not e!3085647))))

(assert (=> d!1590019 (= res!2107548 (= (content!10112 lt!2035263) ((_ map or) (content!10112 (t!367474 lt!2034852)) (content!10112 lt!2034850))))))

(assert (=> d!1590019 (= lt!2035263 e!3085648)))

(declare-fun c!842135 () Bool)

(assert (=> d!1590019 (= c!842135 ((_ is Nil!56860) (t!367474 lt!2034852)))))

(assert (=> d!1590019 (= (++!12406 (t!367474 lt!2034852) lt!2034850) lt!2035263)))

(assert (= (and d!1590019 c!842135) b!4938490))

(assert (= (and d!1590019 (not c!842135)) b!4938491))

(assert (= (and d!1590019 res!2107548) b!4938492))

(assert (= (and b!4938492 res!2107547) b!4938493))

(declare-fun m!5960610 () Bool)

(assert (=> b!4938492 m!5960610))

(assert (=> b!4938492 m!5959676))

(assert (=> b!4938492 m!5959620))

(declare-fun m!5960612 () Bool)

(assert (=> b!4938491 m!5960612))

(declare-fun m!5960614 () Bool)

(assert (=> d!1590019 m!5960614))

(assert (=> d!1590019 m!5960456))

(assert (=> d!1590019 m!5959628))

(assert (=> b!4937645 d!1590019))

(declare-fun b!4938494 () Bool)

(declare-fun e!3085649 () Bool)

(declare-fun tp!1385754 () Bool)

(declare-fun tp!1385755 () Bool)

(assert (=> b!4938494 (= e!3085649 (and tp!1385754 tp!1385755))))

(assert (=> b!4937759 (= tp!1385722 e!3085649)))

(assert (= (and b!4937759 ((_ is Cons!56861) (exprs!3581 setElem!27844))) b!4938494))

(declare-fun condSetEmpty!27846 () Bool)

(assert (=> setNonEmpty!27844 (= condSetEmpty!27846 (= setRest!27844 ((as const (Array Context!6162 Bool)) false)))))

(declare-fun setRes!27846 () Bool)

(assert (=> setNonEmpty!27844 (= tp!1385723 setRes!27846)))

(declare-fun setIsEmpty!27846 () Bool)

(assert (=> setIsEmpty!27846 setRes!27846))

(declare-fun setNonEmpty!27846 () Bool)

(declare-fun tp!1385757 () Bool)

(declare-fun e!3085650 () Bool)

(declare-fun setElem!27846 () Context!6162)

(assert (=> setNonEmpty!27846 (= setRes!27846 (and tp!1385757 (inv!73909 setElem!27846) e!3085650))))

(declare-fun setRest!27846 () (InoxSet Context!6162))

(assert (=> setNonEmpty!27846 (= setRest!27844 ((_ map or) (store ((as const (Array Context!6162 Bool)) false) setElem!27846 true) setRest!27846))))

(declare-fun b!4938495 () Bool)

(declare-fun tp!1385756 () Bool)

(assert (=> b!4938495 (= e!3085650 tp!1385756)))

(assert (= (and setNonEmpty!27844 condSetEmpty!27846) setIsEmpty!27846))

(assert (= (and setNonEmpty!27844 (not condSetEmpty!27846)) setNonEmpty!27846))

(assert (= setNonEmpty!27846 b!4938495))

(declare-fun m!5960616 () Bool)

(assert (=> setNonEmpty!27846 m!5960616))

(declare-fun b!4938496 () Bool)

(declare-fun e!3085651 () Bool)

(declare-fun tp!1385758 () Bool)

(assert (=> b!4938496 (= e!3085651 (and tp_is_empty!36055 tp!1385758))))

(assert (=> b!4937749 (= tp!1385710 e!3085651)))

(assert (= (and b!4937749 ((_ is Cons!56860) (innerList!15036 (xs!18272 (c!841800 totalInput!685))))) b!4938496))

(declare-fun b!4938497 () Bool)

(declare-fun e!3085652 () Bool)

(declare-fun tp!1385759 () Bool)

(assert (=> b!4938497 (= e!3085652 (and tp_is_empty!36055 tp!1385759))))

(assert (=> b!4937737 (= tp!1385701 e!3085652)))

(assert (= (and b!4937737 ((_ is Cons!56860) (t!367474 (t!367474 testedP!110)))) b!4938497))

(declare-fun e!3085654 () Bool)

(declare-fun b!4938498 () Bool)

(declare-fun tp!1385760 () Bool)

(declare-fun tp!1385762 () Bool)

(assert (=> b!4938498 (= e!3085654 (and (inv!73911 (left!41468 (left!41468 (c!841800 totalInput!685)))) tp!1385760 (inv!73911 (right!41798 (left!41468 (c!841800 totalInput!685)))) tp!1385762))))

(declare-fun b!4938500 () Bool)

(declare-fun e!3085653 () Bool)

(declare-fun tp!1385761 () Bool)

(assert (=> b!4938500 (= e!3085653 tp!1385761)))

(declare-fun b!4938499 () Bool)

(assert (=> b!4938499 (= e!3085654 (and (inv!73917 (xs!18272 (left!41468 (c!841800 totalInput!685)))) e!3085653))))

(assert (=> b!4937747 (= tp!1385709 (and (inv!73911 (left!41468 (c!841800 totalInput!685))) e!3085654))))

(assert (= (and b!4937747 ((_ is Node!14948) (left!41468 (c!841800 totalInput!685)))) b!4938498))

(assert (= b!4938499 b!4938500))

(assert (= (and b!4937747 ((_ is Leaf!24855) (left!41468 (c!841800 totalInput!685)))) b!4938499))

(declare-fun m!5960618 () Bool)

(assert (=> b!4938498 m!5960618))

(declare-fun m!5960620 () Bool)

(assert (=> b!4938498 m!5960620))

(declare-fun m!5960622 () Bool)

(assert (=> b!4938499 m!5960622))

(assert (=> b!4937747 m!5959748))

(declare-fun tp!1385765 () Bool)

(declare-fun tp!1385763 () Bool)

(declare-fun e!3085656 () Bool)

(declare-fun b!4938501 () Bool)

(assert (=> b!4938501 (= e!3085656 (and (inv!73911 (left!41468 (right!41798 (c!841800 totalInput!685)))) tp!1385763 (inv!73911 (right!41798 (right!41798 (c!841800 totalInput!685)))) tp!1385765))))

(declare-fun b!4938503 () Bool)

(declare-fun e!3085655 () Bool)

(declare-fun tp!1385764 () Bool)

(assert (=> b!4938503 (= e!3085655 tp!1385764)))

(declare-fun b!4938502 () Bool)

(assert (=> b!4938502 (= e!3085656 (and (inv!73917 (xs!18272 (right!41798 (c!841800 totalInput!685)))) e!3085655))))

(assert (=> b!4937747 (= tp!1385711 (and (inv!73911 (right!41798 (c!841800 totalInput!685))) e!3085656))))

(assert (= (and b!4937747 ((_ is Node!14948) (right!41798 (c!841800 totalInput!685)))) b!4938501))

(assert (= b!4938502 b!4938503))

(assert (= (and b!4937747 ((_ is Leaf!24855) (right!41798 (c!841800 totalInput!685)))) b!4938502))

(declare-fun m!5960624 () Bool)

(assert (=> b!4938501 m!5960624))

(declare-fun m!5960626 () Bool)

(assert (=> b!4938501 m!5960626))

(declare-fun m!5960628 () Bool)

(assert (=> b!4938502 m!5960628))

(assert (=> b!4937747 m!5959750))

(declare-fun e!3085659 () Bool)

(assert (=> b!4937754 (= tp!1385716 e!3085659)))

(declare-fun b!4938514 () Bool)

(assert (=> b!4938514 (= e!3085659 tp_is_empty!36055)))

(declare-fun b!4938517 () Bool)

(declare-fun tp!1385777 () Bool)

(declare-fun tp!1385778 () Bool)

(assert (=> b!4938517 (= e!3085659 (and tp!1385777 tp!1385778))))

(declare-fun b!4938516 () Bool)

(declare-fun tp!1385780 () Bool)

(assert (=> b!4938516 (= e!3085659 tp!1385780)))

(declare-fun b!4938515 () Bool)

(declare-fun tp!1385779 () Bool)

(declare-fun tp!1385776 () Bool)

(assert (=> b!4938515 (= e!3085659 (and tp!1385779 tp!1385776))))

(assert (= (and b!4937754 ((_ is ElementMatch!13439) (h!63309 (exprs!3581 setElem!27838)))) b!4938514))

(assert (= (and b!4937754 ((_ is Concat!22012) (h!63309 (exprs!3581 setElem!27838)))) b!4938515))

(assert (= (and b!4937754 ((_ is Star!13439) (h!63309 (exprs!3581 setElem!27838)))) b!4938516))

(assert (= (and b!4937754 ((_ is Union!13439) (h!63309 (exprs!3581 setElem!27838)))) b!4938517))

(declare-fun b!4938518 () Bool)

(declare-fun e!3085660 () Bool)

(declare-fun tp!1385781 () Bool)

(declare-fun tp!1385782 () Bool)

(assert (=> b!4938518 (= e!3085660 (and tp!1385781 tp!1385782))))

(assert (=> b!4937754 (= tp!1385717 e!3085660)))

(assert (= (and b!4937754 ((_ is Cons!56861) (t!367475 (exprs!3581 setElem!27838)))) b!4938518))

(declare-fun b!4938519 () Bool)

(declare-fun e!3085661 () Bool)

(declare-fun tp!1385783 () Bool)

(assert (=> b!4938519 (= e!3085661 (and tp_is_empty!36055 tp!1385783))))

(assert (=> b!4937738 (= tp!1385702 e!3085661)))

(assert (= (and b!4937738 ((_ is Cons!56860) (t!367474 (t!367474 testedSuffix!70)))) b!4938519))

(declare-fun b_lambda!196335 () Bool)

(assert (= b_lambda!196333 (or d!1589563 b_lambda!196335)))

(declare-fun bs!1181008 () Bool)

(declare-fun d!1590021 () Bool)

(assert (= bs!1181008 (and d!1590021 d!1589563)))

(declare-fun validRegex!5949 (Regex!13439) Bool)

(assert (=> bs!1181008 (= (dynLambda!23021 lambda!246023 (h!63309 (exprs!3581 setElem!27838))) (validRegex!5949 (h!63309 (exprs!3581 setElem!27838))))))

(declare-fun m!5960630 () Bool)

(assert (=> bs!1181008 m!5960630))

(assert (=> b!4938335 d!1590021))

(check-sat (not b!4938338) (not b!4938228) (not d!1589905) (not b!4938315) (not b!4938217) (not d!1589903) (not d!1589911) (not b!4938246) (not b!4938129) (not bm!344562) (not b!4938330) (not b!4938501) (not b!4938322) (not b!4938471) (not b!4938368) (not b!4938262) (not d!1589995) (not b!4938260) (not b!4938234) (not d!1589845) (not b!4938500) (not b!4938496) (not b!4938395) (not b!4938199) (not b!4938298) (not b!4938314) (not b!4938159) (not b!4938417) (not d!1589825) (not b!4938232) (not b!4938288) (not bs!1181008) (not b!4938328) (not b!4938359) (not b!4938251) (not b!4938306) (not b!4938296) (not b!4938220) (not d!1589895) (not bm!344563) (not b!4938384) (not b!4938375) (not b!4938408) (not d!1589919) (not b!4938117) (not d!1589917) (not b!4938275) (not b!4938115) (not b!4938290) (not bm!344567) (not b!4938403) (not b!4938241) (not b!4938324) (not d!1589839) (not b!4938263) (not d!1589863) (not b!4938197) (not b!4938284) (not d!1589847) (not b!4938515) (not b!4938215) (not b!4938365) (not b!4938357) (not b!4938466) (not b!4938499) (not b!4938502) (not b!4938181) (not b!4938202) (not b!4938123) (not d!1589929) (not b!4938399) (not b!4938492) (not b!4938397) (not b!4938254) (not bm!344565) (not b!4938179) (not d!1589989) (not d!1589957) (not b!4938392) (not b!4938219) (not b!4938376) (not d!1590001) (not b!4938238) (not b!4938291) (not b!4938280) (not b!4938255) (not b!4938366) (not b!4938118) (not b!4938342) (not b!4938312) (not b!4938250) (not d!1589923) (not b!4938307) (not b!4938494) (not b!4938266) (not b!4938503) (not d!1589969) (not d!1589931) (not b!4938319) (not d!1589901) (not b!4938166) (not d!1589855) (not b!4938294) (not b!4938487) (not setNonEmpty!27846) (not b!4938482) (not d!1589881) (not b!4938472) (not b!4938149) (not b!4938415) (not b!4938519) (not b!4938379) (not b!4938125) (not b!4938180) (not b!4938495) (not bm!344549) (not b!4938360) (not d!1589939) (not b!4938413) (not b!4938276) (not b!4938382) (not b!4938311) (not b!4938318) (not b!4938178) (not b!4938378) (not d!1589943) (not b!4938240) (not d!1589967) (not d!1589973) (not b!4938326) (not b!4938517) (not b!4938481) (not b!4938516) (not b!4938297) (not d!1589965) (not b!4938226) (not b!4938475) (not b!4938258) (not b!4938252) (not d!1590019) (not d!1590017) (not b!4938267) (not b!4938218) (not d!1589909) (not d!1589915) (not b!4938168) (not b!4938279) (not b!4938383) (not b!4938126) (not b!4938518) (not b!4938244) (not b!4938292) (not b!4938411) (not b!4938416) (not b!4938336) (not b!4938362) (not b!4938304) (not b!4938372) (not b!4938273) (not b!4938320) (not b!4938216) (not b!4938340) tp_is_empty!36055 (not b!4938497) (not b!4938498) (not b!4938121) (not b!4938148) (not b!4937747) (not b!4938310) (not d!1590009) (not b!4938412) (not bm!344566) (not b!4938370) (not d!1589927) (not bm!344548) (not b!4938196) (not b!4938414) (not d!1590013) (not d!1589843) (not d!1589819) (not b!4938236) (not b!4938369) (not d!1589971) (not b!4938401) (not d!1589865) (not b!4938278) (not b!4938248) (not b!4938491) (not b!4938161) (not b!4938230) (not b!4938277) (not b_lambda!196335))
(check-sat)
