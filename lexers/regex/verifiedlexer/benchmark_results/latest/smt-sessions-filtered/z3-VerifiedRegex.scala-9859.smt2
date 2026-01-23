; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!516296 () Bool)

(assert start!516296)

(declare-fun b!4918349 () Bool)

(declare-fun e!3073711 () Bool)

(declare-datatypes ((C!26920 0))(
  ( (C!26921 (val!22794 Int)) )
))
(declare-datatypes ((List!56771 0))(
  ( (Nil!56647) (Cons!56647 (h!63095 C!26920) (t!367195 List!56771)) )
))
(declare-datatypes ((IArray!29769 0))(
  ( (IArray!29770 (innerList!14942 List!56771)) )
))
(declare-datatypes ((Conc!14854 0))(
  ( (Node!14854 (left!41299 Conc!14854) (right!41629 Conc!14854) (csize!29938 Int) (cheight!15065 Int)) (Leaf!24714 (xs!18172 IArray!29769) (csize!29939 Int)) (Empty!14854) )
))
(declare-datatypes ((BalanceConc!29138 0))(
  ( (BalanceConc!29139 (c!836549 Conc!14854)) )
))
(declare-fun input!5492 () BalanceConc!29138)

(declare-fun tp!1382561 () Bool)

(declare-fun inv!73337 (Conc!14854) Bool)

(assert (=> b!4918349 (= e!3073711 (and (inv!73337 (c!836549 input!5492)) tp!1382561))))

(declare-fun b!4918351 () Bool)

(declare-fun e!3073710 () Bool)

(declare-fun tp!1382563 () Bool)

(assert (=> b!4918351 (= e!3073710 tp!1382563)))

(declare-datatypes ((Regex!13355 0))(
  ( (ElementMatch!13355 (c!836550 C!26920)) (Concat!21928 (regOne!27222 Regex!13355) (regTwo!27222 Regex!13355)) (EmptyExpr!13355) (Star!13355 (reg!13684 Regex!13355)) (EmptyLang!13355) (Union!13355 (regOne!27223 Regex!13355) (regTwo!27223 Regex!13355)) )
))
(declare-datatypes ((List!56772 0))(
  ( (Nil!56648) (Cons!56648 (h!63096 Regex!13355) (t!367196 List!56772)) )
))
(declare-datatypes ((Context!5994 0))(
  ( (Context!5995 (exprs!3497 List!56772)) )
))
(declare-fun setElem!27414 () Context!5994)

(declare-fun setNonEmpty!27414 () Bool)

(declare-fun setRes!27414 () Bool)

(declare-fun tp!1382562 () Bool)

(declare-fun inv!73338 (Context!5994) Bool)

(assert (=> setNonEmpty!27414 (= setRes!27414 (and tp!1382562 (inv!73338 setElem!27414) e!3073710))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3559 () (InoxSet Context!5994))

(declare-fun setRest!27414 () (InoxSet Context!5994))

(assert (=> setNonEmpty!27414 (= z!3559 ((_ map or) (store ((as const (Array Context!5994 Bool)) false) setElem!27414 true) setRest!27414))))

(declare-fun setIsEmpty!27414 () Bool)

(assert (=> setIsEmpty!27414 setRes!27414))

(declare-fun res!2100312 () Bool)

(declare-fun e!3073712 () Bool)

(assert (=> start!516296 (=> (not res!2100312) (not e!3073712))))

(declare-fun isBalanced!4070 (Conc!14854) Bool)

(assert (=> start!516296 (= res!2100312 (isBalanced!4070 (c!836549 input!5492)))))

(declare-fun lt!2020050 () List!56771)

(declare-fun lt!2020051 () Int)

(declare-fun list!17911 (BalanceConc!29138) List!56771)

(declare-datatypes ((tuple2!61064 0))(
  ( (tuple2!61065 (_1!33835 BalanceConc!29138) (_2!33835 BalanceConc!29138)) )
))
(declare-fun splitAt!236 (BalanceConc!29138 Int) tuple2!61064)

(assert (=> start!516296 (= lt!2020050 (list!17911 (_1!33835 (splitAt!236 input!5492 lt!2020051))))))

(declare-fun lt!2020053 () List!56771)

(declare-fun lt!2020052 () Int)

(declare-fun findLongestMatchInnerZipperFast!67 ((InoxSet Context!5994) List!56771 Int List!56771 BalanceConc!29138 Int) Int)

(assert (=> start!516296 (= lt!2020051 (findLongestMatchInnerZipperFast!67 z!3559 Nil!56647 0 lt!2020053 input!5492 lt!2020052))))

(declare-fun size!37421 (BalanceConc!29138) Int)

(assert (=> start!516296 (= lt!2020052 (size!37421 input!5492))))

(assert (=> start!516296 (= lt!2020053 (list!17911 input!5492))))

(assert (=> start!516296 e!3073712))

(declare-fun inv!73339 (BalanceConc!29138) Bool)

(assert (=> start!516296 (and (inv!73339 input!5492) e!3073711)))

(declare-fun condSetEmpty!27414 () Bool)

(assert (=> start!516296 (= condSetEmpty!27414 (= z!3559 ((as const (Array Context!5994 Bool)) false)))))

(assert (=> start!516296 setRes!27414))

(declare-fun b!4918350 () Bool)

(assert (=> b!4918350 (= e!3073712 (or (> 0 lt!2020051) (> lt!2020051 lt!2020052)))))

(assert (= (and start!516296 res!2100312) b!4918350))

(assert (= start!516296 b!4918349))

(assert (= (and start!516296 condSetEmpty!27414) setIsEmpty!27414))

(assert (= (and start!516296 (not condSetEmpty!27414)) setNonEmpty!27414))

(assert (= setNonEmpty!27414 b!4918351))

(declare-fun m!5931266 () Bool)

(assert (=> b!4918349 m!5931266))

(declare-fun m!5931268 () Bool)

(assert (=> setNonEmpty!27414 m!5931268))

(declare-fun m!5931270 () Bool)

(assert (=> start!516296 m!5931270))

(declare-fun m!5931272 () Bool)

(assert (=> start!516296 m!5931272))

(declare-fun m!5931274 () Bool)

(assert (=> start!516296 m!5931274))

(declare-fun m!5931276 () Bool)

(assert (=> start!516296 m!5931276))

(declare-fun m!5931278 () Bool)

(assert (=> start!516296 m!5931278))

(declare-fun m!5931280 () Bool)

(assert (=> start!516296 m!5931280))

(declare-fun m!5931282 () Bool)

(assert (=> start!516296 m!5931282))

(check-sat (not b!4918349) (not start!516296) (not setNonEmpty!27414) (not b!4918351))
(check-sat)
(get-model)

(declare-fun d!1581790 () Bool)

(declare-fun c!836556 () Bool)

(get-info :version)

(assert (=> d!1581790 (= c!836556 ((_ is Node!14854) (c!836549 input!5492)))))

(declare-fun e!3073723 () Bool)

(assert (=> d!1581790 (= (inv!73337 (c!836549 input!5492)) e!3073723)))

(declare-fun b!4918367 () Bool)

(declare-fun inv!73342 (Conc!14854) Bool)

(assert (=> b!4918367 (= e!3073723 (inv!73342 (c!836549 input!5492)))))

(declare-fun b!4918368 () Bool)

(declare-fun e!3073724 () Bool)

(assert (=> b!4918368 (= e!3073723 e!3073724)))

(declare-fun res!2100318 () Bool)

(assert (=> b!4918368 (= res!2100318 (not ((_ is Leaf!24714) (c!836549 input!5492))))))

(assert (=> b!4918368 (=> res!2100318 e!3073724)))

(declare-fun b!4918369 () Bool)

(declare-fun inv!73343 (Conc!14854) Bool)

(assert (=> b!4918369 (= e!3073724 (inv!73343 (c!836549 input!5492)))))

(assert (= (and d!1581790 c!836556) b!4918367))

(assert (= (and d!1581790 (not c!836556)) b!4918368))

(assert (= (and b!4918368 (not res!2100318)) b!4918369))

(declare-fun m!5931288 () Bool)

(assert (=> b!4918367 m!5931288))

(declare-fun m!5931290 () Bool)

(assert (=> b!4918369 m!5931290))

(assert (=> b!4918349 d!1581790))

(declare-fun d!1581794 () Bool)

(declare-fun e!3073727 () Bool)

(assert (=> d!1581794 e!3073727))

(declare-fun res!2100324 () Bool)

(assert (=> d!1581794 (=> (not res!2100324) (not e!3073727))))

(declare-fun lt!2020059 () tuple2!61064)

(assert (=> d!1581794 (= res!2100324 (isBalanced!4070 (c!836549 (_1!33835 lt!2020059))))))

(declare-datatypes ((tuple2!61068 0))(
  ( (tuple2!61069 (_1!33837 Conc!14854) (_2!33837 Conc!14854)) )
))
(declare-fun lt!2020058 () tuple2!61068)

(assert (=> d!1581794 (= lt!2020059 (tuple2!61065 (BalanceConc!29139 (_1!33837 lt!2020058)) (BalanceConc!29139 (_2!33837 lt!2020058))))))

(declare-fun splitAt!237 (Conc!14854 Int) tuple2!61068)

(assert (=> d!1581794 (= lt!2020058 (splitAt!237 (c!836549 input!5492) lt!2020051))))

(assert (=> d!1581794 (isBalanced!4070 (c!836549 input!5492))))

(assert (=> d!1581794 (= (splitAt!236 input!5492 lt!2020051) lt!2020059)))

(declare-fun b!4918374 () Bool)

(declare-fun res!2100323 () Bool)

(assert (=> b!4918374 (=> (not res!2100323) (not e!3073727))))

(assert (=> b!4918374 (= res!2100323 (isBalanced!4070 (c!836549 (_2!33835 lt!2020059))))))

(declare-fun b!4918375 () Bool)

(declare-datatypes ((tuple2!61070 0))(
  ( (tuple2!61071 (_1!33838 List!56771) (_2!33838 List!56771)) )
))
(declare-fun splitAtIndex!85 (List!56771 Int) tuple2!61070)

(assert (=> b!4918375 (= e!3073727 (= (tuple2!61071 (list!17911 (_1!33835 lt!2020059)) (list!17911 (_2!33835 lt!2020059))) (splitAtIndex!85 (list!17911 input!5492) lt!2020051)))))

(assert (= (and d!1581794 res!2100324) b!4918374))

(assert (= (and b!4918374 res!2100323) b!4918375))

(declare-fun m!5931292 () Bool)

(assert (=> d!1581794 m!5931292))

(declare-fun m!5931294 () Bool)

(assert (=> d!1581794 m!5931294))

(assert (=> d!1581794 m!5931278))

(declare-fun m!5931296 () Bool)

(assert (=> b!4918374 m!5931296))

(declare-fun m!5931298 () Bool)

(assert (=> b!4918375 m!5931298))

(declare-fun m!5931300 () Bool)

(assert (=> b!4918375 m!5931300))

(assert (=> b!4918375 m!5931280))

(assert (=> b!4918375 m!5931280))

(declare-fun m!5931302 () Bool)

(assert (=> b!4918375 m!5931302))

(assert (=> start!516296 d!1581794))

(declare-fun b!4918388 () Bool)

(declare-fun res!2100342 () Bool)

(declare-fun e!3073732 () Bool)

(assert (=> b!4918388 (=> (not res!2100342) (not e!3073732))))

(declare-fun isEmpty!30551 (Conc!14854) Bool)

(assert (=> b!4918388 (= res!2100342 (not (isEmpty!30551 (left!41299 (c!836549 input!5492)))))))

(declare-fun b!4918389 () Bool)

(assert (=> b!4918389 (= e!3073732 (not (isEmpty!30551 (right!41629 (c!836549 input!5492)))))))

(declare-fun b!4918390 () Bool)

(declare-fun res!2100340 () Bool)

(assert (=> b!4918390 (=> (not res!2100340) (not e!3073732))))

(declare-fun height!1978 (Conc!14854) Int)

(assert (=> b!4918390 (= res!2100340 (<= (- (height!1978 (left!41299 (c!836549 input!5492))) (height!1978 (right!41629 (c!836549 input!5492)))) 1))))

(declare-fun d!1581796 () Bool)

(declare-fun res!2100337 () Bool)

(declare-fun e!3073733 () Bool)

(assert (=> d!1581796 (=> res!2100337 e!3073733)))

(assert (=> d!1581796 (= res!2100337 (not ((_ is Node!14854) (c!836549 input!5492))))))

(assert (=> d!1581796 (= (isBalanced!4070 (c!836549 input!5492)) e!3073733)))

(declare-fun b!4918391 () Bool)

(declare-fun res!2100339 () Bool)

(assert (=> b!4918391 (=> (not res!2100339) (not e!3073732))))

(assert (=> b!4918391 (= res!2100339 (isBalanced!4070 (right!41629 (c!836549 input!5492))))))

(declare-fun b!4918392 () Bool)

(declare-fun res!2100341 () Bool)

(assert (=> b!4918392 (=> (not res!2100341) (not e!3073732))))

(assert (=> b!4918392 (= res!2100341 (isBalanced!4070 (left!41299 (c!836549 input!5492))))))

(declare-fun b!4918393 () Bool)

(assert (=> b!4918393 (= e!3073733 e!3073732)))

(declare-fun res!2100338 () Bool)

(assert (=> b!4918393 (=> (not res!2100338) (not e!3073732))))

(assert (=> b!4918393 (= res!2100338 (<= (- 1) (- (height!1978 (left!41299 (c!836549 input!5492))) (height!1978 (right!41629 (c!836549 input!5492))))))))

(assert (= (and d!1581796 (not res!2100337)) b!4918393))

(assert (= (and b!4918393 res!2100338) b!4918390))

(assert (= (and b!4918390 res!2100340) b!4918392))

(assert (= (and b!4918392 res!2100341) b!4918391))

(assert (= (and b!4918391 res!2100339) b!4918388))

(assert (= (and b!4918388 res!2100342) b!4918389))

(declare-fun m!5931304 () Bool)

(assert (=> b!4918391 m!5931304))

(declare-fun m!5931306 () Bool)

(assert (=> b!4918388 m!5931306))

(declare-fun m!5931308 () Bool)

(assert (=> b!4918393 m!5931308))

(declare-fun m!5931310 () Bool)

(assert (=> b!4918393 m!5931310))

(declare-fun m!5931312 () Bool)

(assert (=> b!4918389 m!5931312))

(assert (=> b!4918390 m!5931308))

(assert (=> b!4918390 m!5931310))

(declare-fun m!5931314 () Bool)

(assert (=> b!4918392 m!5931314))

(assert (=> start!516296 d!1581796))

(declare-fun bm!341914 () Bool)

(declare-fun call!341921 () Bool)

(declare-fun nullableZipper!795 ((InoxSet Context!5994)) Bool)

(assert (=> bm!341914 (= call!341921 (nullableZipper!795 z!3559))))

(declare-fun b!4918478 () Bool)

(declare-fun e!3073776 () Int)

(declare-fun call!341922 () Int)

(assert (=> b!4918478 (= e!3073776 call!341922)))

(declare-fun b!4918479 () Bool)

(declare-fun lt!2020282 () Int)

(assert (=> b!4918479 (= e!3073776 (ite (= lt!2020282 0) 0 lt!2020282))))

(assert (=> b!4918479 (= lt!2020282 call!341922)))

(declare-fun call!341923 () List!56771)

(declare-fun call!341924 () (InoxSet Context!5994))

(declare-fun call!341928 () List!56771)

(declare-fun bm!341915 () Bool)

(assert (=> bm!341915 (= call!341922 (findLongestMatchInnerZipperFast!67 call!341924 call!341923 (+ 0 1) call!341928 input!5492 lt!2020052))))

(declare-fun bm!341916 () Bool)

(declare-fun c!836590 () Bool)

(declare-fun c!836592 () Bool)

(assert (=> bm!341916 (= c!836590 c!836592)))

(declare-datatypes ((Unit!146993 0))(
  ( (Unit!146994) )
))
(declare-fun call!341919 () Unit!146993)

(declare-fun lt!2020292 () List!56771)

(declare-fun lt!2020285 () List!56771)

(declare-fun e!3073773 () List!56771)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1104 (List!56771 List!56771 List!56771) Unit!146993)

(assert (=> bm!341916 (= call!341919 (lemmaIsPrefixSameLengthThenSameList!1104 (ite c!836592 lt!2020285 lt!2020292) Nil!56647 e!3073773))))

(declare-fun call!341920 () Unit!146993)

(declare-fun lt!2020303 () List!56771)

(declare-fun bm!341917 () Bool)

(declare-fun lt!2020301 () List!56771)

(declare-fun lt!2020299 () List!56771)

(declare-fun lt!2020313 () List!56771)

(declare-fun lemmaIsPrefixRefl!3342 (List!56771 List!56771) Unit!146993)

(assert (=> bm!341917 (= call!341920 (lemmaIsPrefixRefl!3342 (ite c!836592 lt!2020299 lt!2020303) (ite c!836592 lt!2020301 lt!2020313)))))

(declare-fun b!4918480 () Bool)

(declare-fun e!3073777 () Int)

(assert (=> b!4918480 (= e!3073777 0)))

(declare-fun b!4918481 () Bool)

(declare-fun call!341925 () List!56771)

(assert (=> b!4918481 (= e!3073773 call!341925)))

(declare-fun b!4918482 () Bool)

(declare-fun c!836588 () Bool)

(assert (=> b!4918482 (= c!836588 call!341921)))

(declare-fun lt!2020314 () Unit!146993)

(declare-fun lt!2020291 () Unit!146993)

(assert (=> b!4918482 (= lt!2020314 lt!2020291)))

(declare-fun lt!2020295 () C!26920)

(declare-fun lt!2020284 () List!56771)

(declare-fun lt!2020300 () List!56771)

(declare-fun ++!12302 (List!56771 List!56771) List!56771)

(assert (=> b!4918482 (= (++!12302 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647)) lt!2020284) lt!2020300)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1376 (List!56771 C!26920 List!56771 List!56771) Unit!146993)

(assert (=> b!4918482 (= lt!2020291 (lemmaMoveElementToOtherListKeepsConcatEq!1376 Nil!56647 lt!2020295 lt!2020284 lt!2020300))))

(assert (=> b!4918482 (= lt!2020300 (list!17911 input!5492))))

(declare-fun tail!9652 (List!56771) List!56771)

(assert (=> b!4918482 (= lt!2020284 (tail!9652 lt!2020053))))

(declare-fun apply!13621 (BalanceConc!29138 Int) C!26920)

(assert (=> b!4918482 (= lt!2020295 (apply!13621 input!5492 0))))

(declare-fun lt!2020298 () Unit!146993)

(declare-fun lt!2020280 () Unit!146993)

(assert (=> b!4918482 (= lt!2020298 lt!2020280)))

(declare-fun lt!2020307 () List!56771)

(declare-fun isPrefix!4945 (List!56771 List!56771) Bool)

(declare-fun head!10505 (List!56771) C!26920)

(declare-fun getSuffix!2933 (List!56771 List!56771) List!56771)

(assert (=> b!4918482 (isPrefix!4945 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)) lt!2020307)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!758 (List!56771 List!56771) Unit!146993)

(assert (=> b!4918482 (= lt!2020280 (lemmaAddHeadSuffixToPrefixStillPrefix!758 Nil!56647 lt!2020307))))

(assert (=> b!4918482 (= lt!2020307 (list!17911 input!5492))))

(declare-fun lt!2020320 () Unit!146993)

(declare-fun e!3073774 () Unit!146993)

(assert (=> b!4918482 (= lt!2020320 e!3073774)))

(declare-fun c!836591 () Bool)

(declare-fun size!37424 (List!56771) Int)

(assert (=> b!4918482 (= c!836591 (= (size!37424 Nil!56647) (size!37421 input!5492)))))

(declare-fun lt!2020310 () Unit!146993)

(declare-fun lt!2020297 () Unit!146993)

(assert (=> b!4918482 (= lt!2020310 lt!2020297)))

(declare-fun lt!2020304 () List!56771)

(assert (=> b!4918482 (<= (size!37424 Nil!56647) (size!37424 lt!2020304))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!670 (List!56771 List!56771) Unit!146993)

(assert (=> b!4918482 (= lt!2020297 (lemmaIsPrefixThenSmallerEqSize!670 Nil!56647 lt!2020304))))

(assert (=> b!4918482 (= lt!2020304 (list!17911 input!5492))))

(declare-fun lt!2020294 () Unit!146993)

(declare-fun lt!2020286 () Unit!146993)

(assert (=> b!4918482 (= lt!2020294 lt!2020286)))

(declare-fun lt!2020318 () List!56771)

(declare-fun drop!2209 (List!56771 Int) List!56771)

(declare-fun apply!13622 (List!56771 Int) C!26920)

(assert (=> b!4918482 (= (head!10505 (drop!2209 lt!2020318 0)) (apply!13622 lt!2020318 0))))

(declare-fun lemmaDropApply!1267 (List!56771 Int) Unit!146993)

(assert (=> b!4918482 (= lt!2020286 (lemmaDropApply!1267 lt!2020318 0))))

(assert (=> b!4918482 (= lt!2020318 (list!17911 input!5492))))

(declare-fun lt!2020309 () Unit!146993)

(declare-fun lt!2020296 () Unit!146993)

(assert (=> b!4918482 (= lt!2020309 lt!2020296)))

(declare-fun lt!2020293 () List!56771)

(declare-fun lt!2020306 () List!56771)

(assert (=> b!4918482 (and (= lt!2020293 Nil!56647) (= lt!2020306 lt!2020053))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!642 (List!56771 List!56771 List!56771 List!56771) Unit!146993)

(assert (=> b!4918482 (= lt!2020296 (lemmaConcatSameAndSameSizesThenSameLists!642 lt!2020293 lt!2020306 Nil!56647 lt!2020053))))

(assert (=> b!4918482 (= lt!2020306 call!341925)))

(declare-fun lt!2020316 () tuple2!61064)

(assert (=> b!4918482 (= lt!2020293 (list!17911 (_1!33835 lt!2020316)))))

(assert (=> b!4918482 (= lt!2020316 (splitAt!236 input!5492 0))))

(declare-fun e!3073778 () Int)

(assert (=> b!4918482 (= e!3073778 e!3073776)))

(declare-fun bm!341918 () Bool)

(declare-fun call!341927 () C!26920)

(assert (=> bm!341918 (= call!341923 (++!12302 Nil!56647 (Cons!56647 call!341927 Nil!56647)))))

(declare-fun b!4918483 () Bool)

(declare-fun Unit!146995 () Unit!146993)

(assert (=> b!4918483 (= e!3073774 Unit!146995)))

(declare-fun bm!341919 () Bool)

(declare-fun derivationStepZipper!573 ((InoxSet Context!5994) C!26920) (InoxSet Context!5994))

(assert (=> bm!341919 (= call!341924 (derivationStepZipper!573 z!3559 call!341927))))

(declare-fun b!4918485 () Bool)

(declare-fun Unit!146996 () Unit!146993)

(assert (=> b!4918485 (= e!3073774 Unit!146996)))

(assert (=> b!4918485 (= lt!2020303 (list!17911 input!5492))))

(assert (=> b!4918485 (= lt!2020313 (list!17911 input!5492))))

(declare-fun lt!2020283 () Unit!146993)

(assert (=> b!4918485 (= lt!2020283 call!341920)))

(declare-fun call!341926 () Bool)

(assert (=> b!4918485 call!341926))

(declare-fun lt!2020288 () Unit!146993)

(assert (=> b!4918485 (= lt!2020288 lt!2020283)))

(assert (=> b!4918485 (= lt!2020292 (list!17911 input!5492))))

(declare-fun lt!2020311 () Unit!146993)

(assert (=> b!4918485 (= lt!2020311 call!341919)))

(assert (=> b!4918485 (= lt!2020292 Nil!56647)))

(declare-fun lt!2020281 () Unit!146993)

(assert (=> b!4918485 (= lt!2020281 lt!2020311)))

(assert (=> b!4918485 false))

(declare-fun b!4918486 () Bool)

(declare-fun e!3073775 () Int)

(assert (=> b!4918486 (= e!3073775 0)))

(declare-fun bm!341920 () Bool)

(assert (=> bm!341920 (= call!341925 (list!17911 (ite c!836592 input!5492 (_2!33835 lt!2020316))))))

(declare-fun b!4918487 () Bool)

(declare-fun c!836587 () Bool)

(assert (=> b!4918487 (= c!836587 call!341921)))

(declare-fun lt!2020287 () Unit!146993)

(declare-fun lt!2020312 () Unit!146993)

(assert (=> b!4918487 (= lt!2020287 lt!2020312)))

(assert (=> b!4918487 (= lt!2020285 Nil!56647)))

(assert (=> b!4918487 (= lt!2020312 call!341919)))

(assert (=> b!4918487 (= lt!2020285 call!341925)))

(declare-fun lt!2020302 () Unit!146993)

(declare-fun lt!2020319 () Unit!146993)

(assert (=> b!4918487 (= lt!2020302 lt!2020319)))

(assert (=> b!4918487 call!341926))

(assert (=> b!4918487 (= lt!2020319 call!341920)))

(assert (=> b!4918487 (= lt!2020301 call!341925)))

(assert (=> b!4918487 (= lt!2020299 call!341925)))

(assert (=> b!4918487 (= e!3073778 e!3073777)))

(declare-fun b!4918488 () Bool)

(assert (=> b!4918488 (= e!3073775 e!3073778)))

(assert (=> b!4918488 (= c!836592 (= 0 lt!2020052))))

(declare-fun bm!341921 () Bool)

(assert (=> bm!341921 (= call!341928 (tail!9652 lt!2020053))))

(declare-fun b!4918489 () Bool)

(assert (=> b!4918489 (= e!3073777 0)))

(declare-fun bm!341922 () Bool)

(assert (=> bm!341922 (= call!341926 (isPrefix!4945 (ite c!836592 lt!2020299 lt!2020303) (ite c!836592 lt!2020301 lt!2020313)))))

(declare-fun bm!341923 () Bool)

(assert (=> bm!341923 (= call!341927 (apply!13621 input!5492 0))))

(declare-fun b!4918484 () Bool)

(assert (=> b!4918484 (= e!3073773 (list!17911 input!5492))))

(declare-fun d!1581798 () Bool)

(declare-fun lt!2020289 () Int)

(declare-fun findLongestMatchInnerZipper!40 ((InoxSet Context!5994) List!56771 Int List!56771 List!56771 Int) tuple2!61070)

(assert (=> d!1581798 (= (size!37424 (_1!33838 (findLongestMatchInnerZipper!40 z!3559 Nil!56647 0 lt!2020053 (list!17911 input!5492) lt!2020052))) lt!2020289)))

(assert (=> d!1581798 (= lt!2020289 e!3073775)))

(declare-fun c!836589 () Bool)

(declare-fun lostCauseZipper!675 ((InoxSet Context!5994)) Bool)

(assert (=> d!1581798 (= c!836589 (lostCauseZipper!675 z!3559))))

(declare-fun lt!2020317 () Unit!146993)

(declare-fun Unit!146997 () Unit!146993)

(assert (=> d!1581798 (= lt!2020317 Unit!146997)))

(assert (=> d!1581798 (= (getSuffix!2933 (list!17911 input!5492) Nil!56647) lt!2020053)))

(declare-fun lt!2020308 () Unit!146993)

(declare-fun lt!2020305 () Unit!146993)

(assert (=> d!1581798 (= lt!2020308 lt!2020305)))

(declare-fun lt!2020279 () List!56771)

(assert (=> d!1581798 (= lt!2020053 lt!2020279)))

(declare-fun lemmaSamePrefixThenSameSuffix!2349 (List!56771 List!56771 List!56771 List!56771 List!56771) Unit!146993)

(assert (=> d!1581798 (= lt!2020305 (lemmaSamePrefixThenSameSuffix!2349 Nil!56647 lt!2020053 Nil!56647 lt!2020279 (list!17911 input!5492)))))

(assert (=> d!1581798 (= lt!2020279 (getSuffix!2933 (list!17911 input!5492) Nil!56647))))

(declare-fun lt!2020315 () Unit!146993)

(declare-fun lt!2020290 () Unit!146993)

(assert (=> d!1581798 (= lt!2020315 lt!2020290)))

(assert (=> d!1581798 (isPrefix!4945 Nil!56647 (++!12302 Nil!56647 lt!2020053))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3169 (List!56771 List!56771) Unit!146993)

(assert (=> d!1581798 (= lt!2020290 (lemmaConcatTwoListThenFirstIsPrefix!3169 Nil!56647 lt!2020053))))

(assert (=> d!1581798 (= (++!12302 Nil!56647 lt!2020053) (list!17911 input!5492))))

(assert (=> d!1581798 (= (findLongestMatchInnerZipperFast!67 z!3559 Nil!56647 0 lt!2020053 input!5492 lt!2020052) lt!2020289)))

(assert (= (and d!1581798 c!836589) b!4918486))

(assert (= (and d!1581798 (not c!836589)) b!4918488))

(assert (= (and b!4918488 c!836592) b!4918487))

(assert (= (and b!4918488 (not c!836592)) b!4918482))

(assert (= (and b!4918487 c!836587) b!4918489))

(assert (= (and b!4918487 (not c!836587)) b!4918480))

(assert (= (and b!4918482 c!836591) b!4918485))

(assert (= (and b!4918482 (not c!836591)) b!4918483))

(assert (= (and b!4918482 c!836588) b!4918479))

(assert (= (and b!4918482 (not c!836588)) b!4918478))

(assert (= (or b!4918479 b!4918478) bm!341923))

(assert (= (or b!4918479 b!4918478) bm!341921))

(assert (= (or b!4918479 b!4918478) bm!341919))

(assert (= (or b!4918479 b!4918478) bm!341918))

(assert (= (or b!4918479 b!4918478) bm!341915))

(assert (= (or b!4918487 b!4918482) bm!341914))

(assert (= (or b!4918487 b!4918482) bm!341920))

(assert (= (or b!4918487 b!4918485) bm!341917))

(assert (= (or b!4918487 b!4918485) bm!341922))

(assert (= (or b!4918487 b!4918485) bm!341916))

(assert (= (and bm!341916 c!836590) b!4918481))

(assert (= (and bm!341916 (not c!836590)) b!4918484))

(declare-fun m!5931420 () Bool)

(assert (=> bm!341919 m!5931420))

(declare-fun m!5931422 () Bool)

(assert (=> bm!341922 m!5931422))

(declare-fun m!5931424 () Bool)

(assert (=> bm!341921 m!5931424))

(declare-fun m!5931426 () Bool)

(assert (=> b!4918482 m!5931426))

(declare-fun m!5931428 () Bool)

(assert (=> b!4918482 m!5931428))

(assert (=> b!4918482 m!5931424))

(declare-fun m!5931430 () Bool)

(assert (=> b!4918482 m!5931430))

(declare-fun m!5931432 () Bool)

(assert (=> b!4918482 m!5931432))

(declare-fun m!5931434 () Bool)

(assert (=> b!4918482 m!5931434))

(declare-fun m!5931436 () Bool)

(assert (=> b!4918482 m!5931436))

(declare-fun m!5931438 () Bool)

(assert (=> b!4918482 m!5931438))

(declare-fun m!5931440 () Bool)

(assert (=> b!4918482 m!5931440))

(declare-fun m!5931442 () Bool)

(assert (=> b!4918482 m!5931442))

(declare-fun m!5931444 () Bool)

(assert (=> b!4918482 m!5931444))

(assert (=> b!4918482 m!5931432))

(declare-fun m!5931446 () Bool)

(assert (=> b!4918482 m!5931446))

(declare-fun m!5931448 () Bool)

(assert (=> b!4918482 m!5931448))

(declare-fun m!5931450 () Bool)

(assert (=> b!4918482 m!5931450))

(declare-fun m!5931452 () Bool)

(assert (=> b!4918482 m!5931452))

(assert (=> b!4918482 m!5931442))

(declare-fun m!5931454 () Bool)

(assert (=> b!4918482 m!5931454))

(declare-fun m!5931456 () Bool)

(assert (=> b!4918482 m!5931456))

(assert (=> b!4918482 m!5931450))

(assert (=> b!4918482 m!5931282))

(declare-fun m!5931458 () Bool)

(assert (=> b!4918482 m!5931458))

(assert (=> b!4918482 m!5931436))

(declare-fun m!5931460 () Bool)

(assert (=> b!4918482 m!5931460))

(declare-fun m!5931462 () Bool)

(assert (=> b!4918482 m!5931462))

(assert (=> b!4918482 m!5931280))

(assert (=> b!4918485 m!5931280))

(assert (=> d!1581798 m!5931280))

(declare-fun m!5931464 () Bool)

(assert (=> d!1581798 m!5931464))

(declare-fun m!5931466 () Bool)

(assert (=> d!1581798 m!5931466))

(declare-fun m!5931468 () Bool)

(assert (=> d!1581798 m!5931468))

(assert (=> d!1581798 m!5931280))

(declare-fun m!5931470 () Bool)

(assert (=> d!1581798 m!5931470))

(declare-fun m!5931472 () Bool)

(assert (=> d!1581798 m!5931472))

(declare-fun m!5931474 () Bool)

(assert (=> d!1581798 m!5931474))

(assert (=> d!1581798 m!5931280))

(assert (=> d!1581798 m!5931466))

(assert (=> d!1581798 m!5931280))

(declare-fun m!5931476 () Bool)

(assert (=> d!1581798 m!5931476))

(declare-fun m!5931478 () Bool)

(assert (=> d!1581798 m!5931478))

(declare-fun m!5931480 () Bool)

(assert (=> bm!341916 m!5931480))

(declare-fun m!5931482 () Bool)

(assert (=> bm!341918 m!5931482))

(assert (=> bm!341923 m!5931426))

(assert (=> b!4918484 m!5931280))

(declare-fun m!5931484 () Bool)

(assert (=> bm!341915 m!5931484))

(declare-fun m!5931486 () Bool)

(assert (=> bm!341914 m!5931486))

(declare-fun m!5931488 () Bool)

(assert (=> bm!341917 m!5931488))

(declare-fun m!5931490 () Bool)

(assert (=> bm!341920 m!5931490))

(assert (=> start!516296 d!1581798))

(declare-fun d!1581814 () Bool)

(declare-fun lt!2020323 () Int)

(assert (=> d!1581814 (= lt!2020323 (size!37424 (list!17911 input!5492)))))

(declare-fun size!37425 (Conc!14854) Int)

(assert (=> d!1581814 (= lt!2020323 (size!37425 (c!836549 input!5492)))))

(assert (=> d!1581814 (= (size!37421 input!5492) lt!2020323)))

(declare-fun bs!1178829 () Bool)

(assert (= bs!1178829 d!1581814))

(assert (=> bs!1178829 m!5931280))

(assert (=> bs!1178829 m!5931280))

(declare-fun m!5931492 () Bool)

(assert (=> bs!1178829 m!5931492))

(declare-fun m!5931494 () Bool)

(assert (=> bs!1178829 m!5931494))

(assert (=> start!516296 d!1581814))

(declare-fun d!1581816 () Bool)

(declare-fun list!17913 (Conc!14854) List!56771)

(assert (=> d!1581816 (= (list!17911 (_1!33835 (splitAt!236 input!5492 lt!2020051))) (list!17913 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))))

(declare-fun bs!1178830 () Bool)

(assert (= bs!1178830 d!1581816))

(declare-fun m!5931496 () Bool)

(assert (=> bs!1178830 m!5931496))

(assert (=> start!516296 d!1581816))

(declare-fun d!1581818 () Bool)

(assert (=> d!1581818 (= (list!17911 input!5492) (list!17913 (c!836549 input!5492)))))

(declare-fun bs!1178831 () Bool)

(assert (= bs!1178831 d!1581818))

(declare-fun m!5931498 () Bool)

(assert (=> bs!1178831 m!5931498))

(assert (=> start!516296 d!1581818))

(declare-fun d!1581820 () Bool)

(assert (=> d!1581820 (= (inv!73339 input!5492) (isBalanced!4070 (c!836549 input!5492)))))

(declare-fun bs!1178832 () Bool)

(assert (= bs!1178832 d!1581820))

(assert (=> bs!1178832 m!5931278))

(assert (=> start!516296 d!1581820))

(declare-fun d!1581822 () Bool)

(declare-fun lambda!244986 () Int)

(declare-fun forall!13113 (List!56772 Int) Bool)

(assert (=> d!1581822 (= (inv!73338 setElem!27414) (forall!13113 (exprs!3497 setElem!27414) lambda!244986))))

(declare-fun bs!1178834 () Bool)

(assert (= bs!1178834 d!1581822))

(declare-fun m!5931510 () Bool)

(assert (=> bs!1178834 m!5931510))

(assert (=> setNonEmpty!27414 d!1581822))

(declare-fun e!3073795 () Bool)

(declare-fun b!4918519 () Bool)

(declare-fun tp!1382592 () Bool)

(declare-fun tp!1382591 () Bool)

(assert (=> b!4918519 (= e!3073795 (and (inv!73337 (left!41299 (c!836549 input!5492))) tp!1382592 (inv!73337 (right!41629 (c!836549 input!5492))) tp!1382591))))

(declare-fun b!4918521 () Bool)

(declare-fun e!3073796 () Bool)

(declare-fun tp!1382593 () Bool)

(assert (=> b!4918521 (= e!3073796 tp!1382593)))

(declare-fun b!4918520 () Bool)

(declare-fun inv!73345 (IArray!29769) Bool)

(assert (=> b!4918520 (= e!3073795 (and (inv!73345 (xs!18172 (c!836549 input!5492))) e!3073796))))

(assert (=> b!4918349 (= tp!1382561 (and (inv!73337 (c!836549 input!5492)) e!3073795))))

(assert (= (and b!4918349 ((_ is Node!14854) (c!836549 input!5492))) b!4918519))

(assert (= b!4918520 b!4918521))

(assert (= (and b!4918349 ((_ is Leaf!24714) (c!836549 input!5492))) b!4918520))

(declare-fun m!5931512 () Bool)

(assert (=> b!4918519 m!5931512))

(declare-fun m!5931514 () Bool)

(assert (=> b!4918519 m!5931514))

(declare-fun m!5931516 () Bool)

(assert (=> b!4918520 m!5931516))

(assert (=> b!4918349 m!5931266))

(declare-fun b!4918526 () Bool)

(declare-fun e!3073799 () Bool)

(declare-fun tp!1382598 () Bool)

(declare-fun tp!1382599 () Bool)

(assert (=> b!4918526 (= e!3073799 (and tp!1382598 tp!1382599))))

(assert (=> b!4918351 (= tp!1382563 e!3073799)))

(assert (= (and b!4918351 ((_ is Cons!56648) (exprs!3497 setElem!27414))) b!4918526))

(declare-fun condSetEmpty!27420 () Bool)

(assert (=> setNonEmpty!27414 (= condSetEmpty!27420 (= setRest!27414 ((as const (Array Context!5994 Bool)) false)))))

(declare-fun setRes!27420 () Bool)

(assert (=> setNonEmpty!27414 (= tp!1382562 setRes!27420)))

(declare-fun setIsEmpty!27420 () Bool)

(assert (=> setIsEmpty!27420 setRes!27420))

(declare-fun setElem!27420 () Context!5994)

(declare-fun setNonEmpty!27420 () Bool)

(declare-fun e!3073802 () Bool)

(declare-fun tp!1382605 () Bool)

(assert (=> setNonEmpty!27420 (= setRes!27420 (and tp!1382605 (inv!73338 setElem!27420) e!3073802))))

(declare-fun setRest!27420 () (InoxSet Context!5994))

(assert (=> setNonEmpty!27420 (= setRest!27414 ((_ map or) (store ((as const (Array Context!5994 Bool)) false) setElem!27420 true) setRest!27420))))

(declare-fun b!4918531 () Bool)

(declare-fun tp!1382604 () Bool)

(assert (=> b!4918531 (= e!3073802 tp!1382604)))

(assert (= (and setNonEmpty!27414 condSetEmpty!27420) setIsEmpty!27420))

(assert (= (and setNonEmpty!27414 (not condSetEmpty!27420)) setNonEmpty!27420))

(assert (= setNonEmpty!27420 b!4918531))

(declare-fun m!5931518 () Bool)

(assert (=> setNonEmpty!27420 m!5931518))

(check-sat (not bm!341914) (not b!4918374) (not b!4918526) (not bm!341920) (not d!1581822) (not b!4918349) (not b!4918367) (not b!4918390) (not b!4918389) (not bm!341916) (not bm!341922) (not d!1581820) (not b!4918521) (not bm!341917) (not b!4918531) (not b!4918391) (not d!1581818) (not bm!341923) (not b!4918393) (not b!4918388) (not b!4918392) (not b!4918375) (not b!4918485) (not b!4918519) (not bm!341921) (not b!4918520) (not b!4918369) (not bm!341919) (not d!1581814) (not bm!341915) (not bm!341918) (not d!1581798) (not b!4918484) (not setNonEmpty!27420) (not d!1581794) (not d!1581816) (not b!4918482))
(check-sat)
(get-model)

(declare-fun bm!341924 () Bool)

(declare-fun call!341931 () Bool)

(assert (=> bm!341924 (= call!341931 (nullableZipper!795 call!341924))))

(declare-fun b!4918532 () Bool)

(declare-fun e!3073806 () Int)

(declare-fun call!341932 () Int)

(assert (=> b!4918532 (= e!3073806 call!341932)))

(declare-fun b!4918533 () Bool)

(declare-fun lt!2020327 () Int)

(assert (=> b!4918533 (= e!3073806 (ite (= lt!2020327 0) (+ 0 1) lt!2020327))))

(assert (=> b!4918533 (= lt!2020327 call!341932)))

(declare-fun call!341934 () (InoxSet Context!5994))

(declare-fun bm!341925 () Bool)

(declare-fun call!341938 () List!56771)

(declare-fun call!341933 () List!56771)

(assert (=> bm!341925 (= call!341932 (findLongestMatchInnerZipperFast!67 call!341934 call!341933 (+ 0 1 1) call!341938 input!5492 lt!2020052))))

(declare-fun bm!341926 () Bool)

(declare-fun c!836596 () Bool)

(declare-fun c!836598 () Bool)

(assert (=> bm!341926 (= c!836596 c!836598)))

(declare-fun e!3073803 () List!56771)

(declare-fun lt!2020337 () List!56771)

(declare-fun lt!2020330 () List!56771)

(declare-fun call!341929 () Unit!146993)

(assert (=> bm!341926 (= call!341929 (lemmaIsPrefixSameLengthThenSameList!1104 (ite c!836598 lt!2020330 lt!2020337) call!341923 e!3073803))))

(declare-fun lt!2020344 () List!56771)

(declare-fun lt!2020348 () List!56771)

(declare-fun lt!2020346 () List!56771)

(declare-fun call!341930 () Unit!146993)

(declare-fun lt!2020358 () List!56771)

(declare-fun bm!341927 () Bool)

(assert (=> bm!341927 (= call!341930 (lemmaIsPrefixRefl!3342 (ite c!836598 lt!2020344 lt!2020348) (ite c!836598 lt!2020346 lt!2020358)))))

(declare-fun b!4918534 () Bool)

(declare-fun e!3073807 () Int)

(assert (=> b!4918534 (= e!3073807 0)))

(declare-fun b!4918535 () Bool)

(declare-fun call!341935 () List!56771)

(assert (=> b!4918535 (= e!3073803 call!341935)))

(declare-fun b!4918536 () Bool)

(declare-fun c!836594 () Bool)

(assert (=> b!4918536 (= c!836594 call!341931)))

(declare-fun lt!2020359 () Unit!146993)

(declare-fun lt!2020336 () Unit!146993)

(assert (=> b!4918536 (= lt!2020359 lt!2020336)))

(declare-fun lt!2020329 () List!56771)

(declare-fun lt!2020340 () C!26920)

(declare-fun lt!2020345 () List!56771)

(assert (=> b!4918536 (= (++!12302 (++!12302 call!341923 (Cons!56647 lt!2020340 Nil!56647)) lt!2020329) lt!2020345)))

(assert (=> b!4918536 (= lt!2020336 (lemmaMoveElementToOtherListKeepsConcatEq!1376 call!341923 lt!2020340 lt!2020329 lt!2020345))))

(assert (=> b!4918536 (= lt!2020345 (list!17911 input!5492))))

(assert (=> b!4918536 (= lt!2020329 (tail!9652 call!341928))))

(assert (=> b!4918536 (= lt!2020340 (apply!13621 input!5492 (+ 0 1)))))

(declare-fun lt!2020343 () Unit!146993)

(declare-fun lt!2020325 () Unit!146993)

(assert (=> b!4918536 (= lt!2020343 lt!2020325)))

(declare-fun lt!2020352 () List!56771)

(assert (=> b!4918536 (isPrefix!4945 (++!12302 call!341923 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020352 call!341923)) Nil!56647)) lt!2020352)))

(assert (=> b!4918536 (= lt!2020325 (lemmaAddHeadSuffixToPrefixStillPrefix!758 call!341923 lt!2020352))))

(assert (=> b!4918536 (= lt!2020352 (list!17911 input!5492))))

(declare-fun lt!2020365 () Unit!146993)

(declare-fun e!3073804 () Unit!146993)

(assert (=> b!4918536 (= lt!2020365 e!3073804)))

(declare-fun c!836597 () Bool)

(assert (=> b!4918536 (= c!836597 (= (size!37424 call!341923) (size!37421 input!5492)))))

(declare-fun lt!2020355 () Unit!146993)

(declare-fun lt!2020342 () Unit!146993)

(assert (=> b!4918536 (= lt!2020355 lt!2020342)))

(declare-fun lt!2020349 () List!56771)

(assert (=> b!4918536 (<= (size!37424 call!341923) (size!37424 lt!2020349))))

(assert (=> b!4918536 (= lt!2020342 (lemmaIsPrefixThenSmallerEqSize!670 call!341923 lt!2020349))))

(assert (=> b!4918536 (= lt!2020349 (list!17911 input!5492))))

(declare-fun lt!2020339 () Unit!146993)

(declare-fun lt!2020331 () Unit!146993)

(assert (=> b!4918536 (= lt!2020339 lt!2020331)))

(declare-fun lt!2020363 () List!56771)

(assert (=> b!4918536 (= (head!10505 (drop!2209 lt!2020363 (+ 0 1))) (apply!13622 lt!2020363 (+ 0 1)))))

(assert (=> b!4918536 (= lt!2020331 (lemmaDropApply!1267 lt!2020363 (+ 0 1)))))

(assert (=> b!4918536 (= lt!2020363 (list!17911 input!5492))))

(declare-fun lt!2020354 () Unit!146993)

(declare-fun lt!2020341 () Unit!146993)

(assert (=> b!4918536 (= lt!2020354 lt!2020341)))

(declare-fun lt!2020351 () List!56771)

(declare-fun lt!2020338 () List!56771)

(assert (=> b!4918536 (and (= lt!2020338 call!341923) (= lt!2020351 call!341928))))

(assert (=> b!4918536 (= lt!2020341 (lemmaConcatSameAndSameSizesThenSameLists!642 lt!2020338 lt!2020351 call!341923 call!341928))))

(assert (=> b!4918536 (= lt!2020351 call!341935)))

(declare-fun lt!2020361 () tuple2!61064)

(assert (=> b!4918536 (= lt!2020338 (list!17911 (_1!33835 lt!2020361)))))

(assert (=> b!4918536 (= lt!2020361 (splitAt!236 input!5492 (+ 0 1)))))

(declare-fun e!3073808 () Int)

(assert (=> b!4918536 (= e!3073808 e!3073806)))

(declare-fun bm!341928 () Bool)

(declare-fun call!341937 () C!26920)

(assert (=> bm!341928 (= call!341933 (++!12302 call!341923 (Cons!56647 call!341937 Nil!56647)))))

(declare-fun b!4918537 () Bool)

(declare-fun Unit!146998 () Unit!146993)

(assert (=> b!4918537 (= e!3073804 Unit!146998)))

(declare-fun bm!341929 () Bool)

(assert (=> bm!341929 (= call!341934 (derivationStepZipper!573 call!341924 call!341937))))

(declare-fun b!4918539 () Bool)

(declare-fun Unit!146999 () Unit!146993)

(assert (=> b!4918539 (= e!3073804 Unit!146999)))

(assert (=> b!4918539 (= lt!2020348 (list!17911 input!5492))))

(assert (=> b!4918539 (= lt!2020358 (list!17911 input!5492))))

(declare-fun lt!2020328 () Unit!146993)

(assert (=> b!4918539 (= lt!2020328 call!341930)))

(declare-fun call!341936 () Bool)

(assert (=> b!4918539 call!341936))

(declare-fun lt!2020333 () Unit!146993)

(assert (=> b!4918539 (= lt!2020333 lt!2020328)))

(assert (=> b!4918539 (= lt!2020337 (list!17911 input!5492))))

(declare-fun lt!2020356 () Unit!146993)

(assert (=> b!4918539 (= lt!2020356 call!341929)))

(assert (=> b!4918539 (= lt!2020337 call!341923)))

(declare-fun lt!2020326 () Unit!146993)

(assert (=> b!4918539 (= lt!2020326 lt!2020356)))

(assert (=> b!4918539 false))

(declare-fun b!4918540 () Bool)

(declare-fun e!3073805 () Int)

(assert (=> b!4918540 (= e!3073805 0)))

(declare-fun bm!341930 () Bool)

(assert (=> bm!341930 (= call!341935 (list!17911 (ite c!836598 input!5492 (_2!33835 lt!2020361))))))

(declare-fun b!4918541 () Bool)

(declare-fun c!836593 () Bool)

(assert (=> b!4918541 (= c!836593 call!341931)))

(declare-fun lt!2020332 () Unit!146993)

(declare-fun lt!2020357 () Unit!146993)

(assert (=> b!4918541 (= lt!2020332 lt!2020357)))

(assert (=> b!4918541 (= lt!2020330 call!341923)))

(assert (=> b!4918541 (= lt!2020357 call!341929)))

(assert (=> b!4918541 (= lt!2020330 call!341935)))

(declare-fun lt!2020347 () Unit!146993)

(declare-fun lt!2020364 () Unit!146993)

(assert (=> b!4918541 (= lt!2020347 lt!2020364)))

(assert (=> b!4918541 call!341936))

(assert (=> b!4918541 (= lt!2020364 call!341930)))

(assert (=> b!4918541 (= lt!2020346 call!341935)))

(assert (=> b!4918541 (= lt!2020344 call!341935)))

(assert (=> b!4918541 (= e!3073808 e!3073807)))

(declare-fun b!4918542 () Bool)

(assert (=> b!4918542 (= e!3073805 e!3073808)))

(assert (=> b!4918542 (= c!836598 (= (+ 0 1) lt!2020052))))

(declare-fun bm!341931 () Bool)

(assert (=> bm!341931 (= call!341938 (tail!9652 call!341928))))

(declare-fun b!4918543 () Bool)

(assert (=> b!4918543 (= e!3073807 (+ 0 1))))

(declare-fun bm!341932 () Bool)

(assert (=> bm!341932 (= call!341936 (isPrefix!4945 (ite c!836598 lt!2020344 lt!2020348) (ite c!836598 lt!2020346 lt!2020358)))))

(declare-fun bm!341933 () Bool)

(assert (=> bm!341933 (= call!341937 (apply!13621 input!5492 (+ 0 1)))))

(declare-fun b!4918538 () Bool)

(assert (=> b!4918538 (= e!3073803 (list!17911 input!5492))))

(declare-fun lt!2020334 () Int)

(declare-fun d!1581824 () Bool)

(assert (=> d!1581824 (= (size!37424 (_1!33838 (findLongestMatchInnerZipper!40 call!341924 call!341923 (+ 0 1) call!341928 (list!17911 input!5492) lt!2020052))) lt!2020334)))

(assert (=> d!1581824 (= lt!2020334 e!3073805)))

(declare-fun c!836595 () Bool)

(assert (=> d!1581824 (= c!836595 (lostCauseZipper!675 call!341924))))

(declare-fun lt!2020362 () Unit!146993)

(declare-fun Unit!147000 () Unit!146993)

(assert (=> d!1581824 (= lt!2020362 Unit!147000)))

(assert (=> d!1581824 (= (getSuffix!2933 (list!17911 input!5492) call!341923) call!341928)))

(declare-fun lt!2020353 () Unit!146993)

(declare-fun lt!2020350 () Unit!146993)

(assert (=> d!1581824 (= lt!2020353 lt!2020350)))

(declare-fun lt!2020324 () List!56771)

(assert (=> d!1581824 (= call!341928 lt!2020324)))

(assert (=> d!1581824 (= lt!2020350 (lemmaSamePrefixThenSameSuffix!2349 call!341923 call!341928 call!341923 lt!2020324 (list!17911 input!5492)))))

(assert (=> d!1581824 (= lt!2020324 (getSuffix!2933 (list!17911 input!5492) call!341923))))

(declare-fun lt!2020360 () Unit!146993)

(declare-fun lt!2020335 () Unit!146993)

(assert (=> d!1581824 (= lt!2020360 lt!2020335)))

(assert (=> d!1581824 (isPrefix!4945 call!341923 (++!12302 call!341923 call!341928))))

(assert (=> d!1581824 (= lt!2020335 (lemmaConcatTwoListThenFirstIsPrefix!3169 call!341923 call!341928))))

(assert (=> d!1581824 (= (++!12302 call!341923 call!341928) (list!17911 input!5492))))

(assert (=> d!1581824 (= (findLongestMatchInnerZipperFast!67 call!341924 call!341923 (+ 0 1) call!341928 input!5492 lt!2020052) lt!2020334)))

(assert (= (and d!1581824 c!836595) b!4918540))

(assert (= (and d!1581824 (not c!836595)) b!4918542))

(assert (= (and b!4918542 c!836598) b!4918541))

(assert (= (and b!4918542 (not c!836598)) b!4918536))

(assert (= (and b!4918541 c!836593) b!4918543))

(assert (= (and b!4918541 (not c!836593)) b!4918534))

(assert (= (and b!4918536 c!836597) b!4918539))

(assert (= (and b!4918536 (not c!836597)) b!4918537))

(assert (= (and b!4918536 c!836594) b!4918533))

(assert (= (and b!4918536 (not c!836594)) b!4918532))

(assert (= (or b!4918533 b!4918532) bm!341933))

(assert (= (or b!4918533 b!4918532) bm!341931))

(assert (= (or b!4918533 b!4918532) bm!341929))

(assert (= (or b!4918533 b!4918532) bm!341928))

(assert (= (or b!4918533 b!4918532) bm!341925))

(assert (= (or b!4918541 b!4918536) bm!341924))

(assert (= (or b!4918541 b!4918536) bm!341930))

(assert (= (or b!4918541 b!4918539) bm!341927))

(assert (= (or b!4918541 b!4918539) bm!341932))

(assert (= (or b!4918541 b!4918539) bm!341926))

(assert (= (and bm!341926 c!836596) b!4918535))

(assert (= (and bm!341926 (not c!836596)) b!4918538))

(declare-fun m!5931520 () Bool)

(assert (=> bm!341929 m!5931520))

(declare-fun m!5931522 () Bool)

(assert (=> bm!341932 m!5931522))

(declare-fun m!5931524 () Bool)

(assert (=> bm!341931 m!5931524))

(declare-fun m!5931526 () Bool)

(assert (=> b!4918536 m!5931526))

(declare-fun m!5931528 () Bool)

(assert (=> b!4918536 m!5931528))

(assert (=> b!4918536 m!5931524))

(declare-fun m!5931530 () Bool)

(assert (=> b!4918536 m!5931530))

(declare-fun m!5931532 () Bool)

(assert (=> b!4918536 m!5931532))

(declare-fun m!5931534 () Bool)

(assert (=> b!4918536 m!5931534))

(declare-fun m!5931536 () Bool)

(assert (=> b!4918536 m!5931536))

(declare-fun m!5931538 () Bool)

(assert (=> b!4918536 m!5931538))

(declare-fun m!5931540 () Bool)

(assert (=> b!4918536 m!5931540))

(declare-fun m!5931542 () Bool)

(assert (=> b!4918536 m!5931542))

(declare-fun m!5931544 () Bool)

(assert (=> b!4918536 m!5931544))

(assert (=> b!4918536 m!5931532))

(declare-fun m!5931546 () Bool)

(assert (=> b!4918536 m!5931546))

(declare-fun m!5931548 () Bool)

(assert (=> b!4918536 m!5931548))

(declare-fun m!5931550 () Bool)

(assert (=> b!4918536 m!5931550))

(declare-fun m!5931552 () Bool)

(assert (=> b!4918536 m!5931552))

(assert (=> b!4918536 m!5931542))

(declare-fun m!5931554 () Bool)

(assert (=> b!4918536 m!5931554))

(declare-fun m!5931556 () Bool)

(assert (=> b!4918536 m!5931556))

(assert (=> b!4918536 m!5931550))

(assert (=> b!4918536 m!5931282))

(declare-fun m!5931558 () Bool)

(assert (=> b!4918536 m!5931558))

(assert (=> b!4918536 m!5931536))

(declare-fun m!5931560 () Bool)

(assert (=> b!4918536 m!5931560))

(declare-fun m!5931562 () Bool)

(assert (=> b!4918536 m!5931562))

(assert (=> b!4918536 m!5931280))

(assert (=> b!4918539 m!5931280))

(assert (=> d!1581824 m!5931280))

(declare-fun m!5931564 () Bool)

(assert (=> d!1581824 m!5931564))

(declare-fun m!5931566 () Bool)

(assert (=> d!1581824 m!5931566))

(declare-fun m!5931568 () Bool)

(assert (=> d!1581824 m!5931568))

(assert (=> d!1581824 m!5931280))

(declare-fun m!5931570 () Bool)

(assert (=> d!1581824 m!5931570))

(declare-fun m!5931572 () Bool)

(assert (=> d!1581824 m!5931572))

(declare-fun m!5931574 () Bool)

(assert (=> d!1581824 m!5931574))

(assert (=> d!1581824 m!5931280))

(assert (=> d!1581824 m!5931566))

(assert (=> d!1581824 m!5931280))

(declare-fun m!5931576 () Bool)

(assert (=> d!1581824 m!5931576))

(declare-fun m!5931578 () Bool)

(assert (=> d!1581824 m!5931578))

(declare-fun m!5931580 () Bool)

(assert (=> bm!341926 m!5931580))

(declare-fun m!5931582 () Bool)

(assert (=> bm!341928 m!5931582))

(assert (=> bm!341933 m!5931526))

(assert (=> b!4918538 m!5931280))

(declare-fun m!5931584 () Bool)

(assert (=> bm!341925 m!5931584))

(declare-fun m!5931586 () Bool)

(assert (=> bm!341924 m!5931586))

(declare-fun m!5931588 () Bool)

(assert (=> bm!341927 m!5931588))

(declare-fun m!5931590 () Bool)

(assert (=> bm!341930 m!5931590))

(assert (=> bm!341915 d!1581824))

(declare-fun b!4918553 () Bool)

(declare-fun e!3073813 () List!56771)

(declare-fun e!3073814 () List!56771)

(assert (=> b!4918553 (= e!3073813 e!3073814)))

(declare-fun c!836604 () Bool)

(assert (=> b!4918553 (= c!836604 ((_ is Leaf!24714) (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))))

(declare-fun d!1581826 () Bool)

(declare-fun c!836603 () Bool)

(assert (=> d!1581826 (= c!836603 ((_ is Empty!14854) (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))))

(assert (=> d!1581826 (= (list!17913 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))) e!3073813)))

(declare-fun b!4918554 () Bool)

(declare-fun list!17914 (IArray!29769) List!56771)

(assert (=> b!4918554 (= e!3073814 (list!17914 (xs!18172 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))))))

(declare-fun b!4918555 () Bool)

(assert (=> b!4918555 (= e!3073814 (++!12302 (list!17913 (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))) (list!17913 (right!41629 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))))))

(declare-fun b!4918552 () Bool)

(assert (=> b!4918552 (= e!3073813 Nil!56647)))

(assert (= (and d!1581826 c!836603) b!4918552))

(assert (= (and d!1581826 (not c!836603)) b!4918553))

(assert (= (and b!4918553 c!836604) b!4918554))

(assert (= (and b!4918553 (not c!836604)) b!4918555))

(declare-fun m!5931592 () Bool)

(assert (=> b!4918554 m!5931592))

(declare-fun m!5931594 () Bool)

(assert (=> b!4918555 m!5931594))

(declare-fun m!5931596 () Bool)

(assert (=> b!4918555 m!5931596))

(assert (=> b!4918555 m!5931594))

(assert (=> b!4918555 m!5931596))

(declare-fun m!5931598 () Bool)

(assert (=> b!4918555 m!5931598))

(assert (=> d!1581816 d!1581826))

(declare-fun d!1581828 () Bool)

(assert (=> d!1581828 (= (ite c!836592 lt!2020285 lt!2020292) Nil!56647)))

(declare-fun lt!2020368 () Unit!146993)

(declare-fun choose!35994 (List!56771 List!56771 List!56771) Unit!146993)

(assert (=> d!1581828 (= lt!2020368 (choose!35994 (ite c!836592 lt!2020285 lt!2020292) Nil!56647 e!3073773))))

(assert (=> d!1581828 (isPrefix!4945 (ite c!836592 lt!2020285 lt!2020292) e!3073773)))

(assert (=> d!1581828 (= (lemmaIsPrefixSameLengthThenSameList!1104 (ite c!836592 lt!2020285 lt!2020292) Nil!56647 e!3073773) lt!2020368)))

(declare-fun bs!1178835 () Bool)

(assert (= bs!1178835 d!1581828))

(declare-fun m!5931600 () Bool)

(assert (=> bs!1178835 m!5931600))

(declare-fun m!5931602 () Bool)

(assert (=> bs!1178835 m!5931602))

(assert (=> bm!341916 d!1581828))

(declare-fun d!1581830 () Bool)

(declare-fun lt!2020371 () C!26920)

(assert (=> d!1581830 (= lt!2020371 (apply!13622 (list!17911 input!5492) 0))))

(declare-fun apply!13623 (Conc!14854 Int) C!26920)

(assert (=> d!1581830 (= lt!2020371 (apply!13623 (c!836549 input!5492) 0))))

(declare-fun e!3073817 () Bool)

(assert (=> d!1581830 e!3073817))

(declare-fun res!2100369 () Bool)

(assert (=> d!1581830 (=> (not res!2100369) (not e!3073817))))

(assert (=> d!1581830 (= res!2100369 (<= 0 0))))

(assert (=> d!1581830 (= (apply!13621 input!5492 0) lt!2020371)))

(declare-fun b!4918558 () Bool)

(assert (=> b!4918558 (= e!3073817 (< 0 (size!37421 input!5492)))))

(assert (= (and d!1581830 res!2100369) b!4918558))

(assert (=> d!1581830 m!5931280))

(assert (=> d!1581830 m!5931280))

(declare-fun m!5931604 () Bool)

(assert (=> d!1581830 m!5931604))

(declare-fun m!5931606 () Bool)

(assert (=> d!1581830 m!5931606))

(assert (=> b!4918558 m!5931282))

(assert (=> bm!341923 d!1581830))

(declare-fun d!1581832 () Bool)

(declare-fun lambda!244989 () Int)

(declare-fun exists!1238 ((InoxSet Context!5994) Int) Bool)

(assert (=> d!1581832 (= (nullableZipper!795 z!3559) (exists!1238 z!3559 lambda!244989))))

(declare-fun bs!1178836 () Bool)

(assert (= bs!1178836 d!1581832))

(declare-fun m!5931608 () Bool)

(assert (=> bs!1178836 m!5931608))

(assert (=> bm!341914 d!1581832))

(declare-fun bs!1178837 () Bool)

(declare-fun d!1581834 () Bool)

(assert (= bs!1178837 (and d!1581834 d!1581822)))

(declare-fun lambda!244990 () Int)

(assert (=> bs!1178837 (= lambda!244990 lambda!244986)))

(assert (=> d!1581834 (= (inv!73338 setElem!27420) (forall!13113 (exprs!3497 setElem!27420) lambda!244990))))

(declare-fun bs!1178838 () Bool)

(assert (= bs!1178838 d!1581834))

(declare-fun m!5931610 () Bool)

(assert (=> bs!1178838 m!5931610))

(assert (=> setNonEmpty!27420 d!1581834))

(declare-fun d!1581836 () Bool)

(declare-fun lt!2020374 () Bool)

(declare-fun isEmpty!30552 (List!56771) Bool)

(assert (=> d!1581836 (= lt!2020374 (isEmpty!30552 (list!17913 (left!41299 (c!836549 input!5492)))))))

(assert (=> d!1581836 (= lt!2020374 (= (size!37425 (left!41299 (c!836549 input!5492))) 0))))

(assert (=> d!1581836 (= (isEmpty!30551 (left!41299 (c!836549 input!5492))) lt!2020374)))

(declare-fun bs!1178839 () Bool)

(assert (= bs!1178839 d!1581836))

(declare-fun m!5931612 () Bool)

(assert (=> bs!1178839 m!5931612))

(assert (=> bs!1178839 m!5931612))

(declare-fun m!5931614 () Bool)

(assert (=> bs!1178839 m!5931614))

(declare-fun m!5931616 () Bool)

(assert (=> bs!1178839 m!5931616))

(assert (=> b!4918388 d!1581836))

(declare-fun d!1581838 () Bool)

(assert (=> d!1581838 (= (inv!73345 (xs!18172 (c!836549 input!5492))) (<= (size!37424 (innerList!14942 (xs!18172 (c!836549 input!5492)))) 2147483647))))

(declare-fun bs!1178840 () Bool)

(assert (= bs!1178840 d!1581838))

(declare-fun m!5931618 () Bool)

(assert (=> bs!1178840 m!5931618))

(assert (=> b!4918520 d!1581838))

(declare-fun d!1581840 () Bool)

(declare-fun res!2100374 () Bool)

(declare-fun e!3073820 () Bool)

(assert (=> d!1581840 (=> (not res!2100374) (not e!3073820))))

(assert (=> d!1581840 (= res!2100374 (<= (size!37424 (list!17914 (xs!18172 (c!836549 input!5492)))) 512))))

(assert (=> d!1581840 (= (inv!73343 (c!836549 input!5492)) e!3073820)))

(declare-fun b!4918563 () Bool)

(declare-fun res!2100375 () Bool)

(assert (=> b!4918563 (=> (not res!2100375) (not e!3073820))))

(assert (=> b!4918563 (= res!2100375 (= (csize!29939 (c!836549 input!5492)) (size!37424 (list!17914 (xs!18172 (c!836549 input!5492))))))))

(declare-fun b!4918564 () Bool)

(assert (=> b!4918564 (= e!3073820 (and (> (csize!29939 (c!836549 input!5492)) 0) (<= (csize!29939 (c!836549 input!5492)) 512)))))

(assert (= (and d!1581840 res!2100374) b!4918563))

(assert (= (and b!4918563 res!2100375) b!4918564))

(declare-fun m!5931620 () Bool)

(assert (=> d!1581840 m!5931620))

(assert (=> d!1581840 m!5931620))

(declare-fun m!5931622 () Bool)

(assert (=> d!1581840 m!5931622))

(assert (=> b!4918563 m!5931620))

(assert (=> b!4918563 m!5931620))

(assert (=> b!4918563 m!5931622))

(assert (=> b!4918369 d!1581840))

(declare-fun d!1581842 () Bool)

(assert (=> d!1581842 (<= (size!37424 Nil!56647) (size!37424 lt!2020304))))

(declare-fun lt!2020377 () Unit!146993)

(declare-fun choose!35995 (List!56771 List!56771) Unit!146993)

(assert (=> d!1581842 (= lt!2020377 (choose!35995 Nil!56647 lt!2020304))))

(assert (=> d!1581842 (isPrefix!4945 Nil!56647 lt!2020304)))

(assert (=> d!1581842 (= (lemmaIsPrefixThenSmallerEqSize!670 Nil!56647 lt!2020304) lt!2020377)))

(declare-fun bs!1178841 () Bool)

(assert (= bs!1178841 d!1581842))

(assert (=> bs!1178841 m!5931462))

(assert (=> bs!1178841 m!5931430))

(declare-fun m!5931636 () Bool)

(assert (=> bs!1178841 m!5931636))

(declare-fun m!5931638 () Bool)

(assert (=> bs!1178841 m!5931638))

(assert (=> b!4918482 d!1581842))

(declare-fun d!1581848 () Bool)

(assert (=> d!1581848 (= (head!10505 (drop!2209 lt!2020318 0)) (apply!13622 lt!2020318 0))))

(declare-fun lt!2020425 () Unit!146993)

(declare-fun choose!35996 (List!56771 Int) Unit!146993)

(assert (=> d!1581848 (= lt!2020425 (choose!35996 lt!2020318 0))))

(declare-fun e!3073833 () Bool)

(assert (=> d!1581848 e!3073833))

(declare-fun res!2100390 () Bool)

(assert (=> d!1581848 (=> (not res!2100390) (not e!3073833))))

(assert (=> d!1581848 (= res!2100390 (>= 0 0))))

(assert (=> d!1581848 (= (lemmaDropApply!1267 lt!2020318 0) lt!2020425)))

(declare-fun b!4918591 () Bool)

(assert (=> b!4918591 (= e!3073833 (< 0 (size!37424 lt!2020318)))))

(assert (= (and d!1581848 res!2100390) b!4918591))

(assert (=> d!1581848 m!5931432))

(assert (=> d!1581848 m!5931432))

(assert (=> d!1581848 m!5931434))

(assert (=> d!1581848 m!5931458))

(declare-fun m!5931654 () Bool)

(assert (=> d!1581848 m!5931654))

(declare-fun m!5931656 () Bool)

(assert (=> b!4918591 m!5931656))

(assert (=> b!4918482 d!1581848))

(declare-fun d!1581854 () Bool)

(assert (=> d!1581854 (= (list!17911 (_1!33835 lt!2020316)) (list!17913 (c!836549 (_1!33835 lt!2020316))))))

(declare-fun bs!1178843 () Bool)

(assert (= bs!1178843 d!1581854))

(declare-fun m!5931658 () Bool)

(assert (=> bs!1178843 m!5931658))

(assert (=> b!4918482 d!1581854))

(declare-fun b!4918600 () Bool)

(declare-fun e!3073838 () List!56771)

(assert (=> b!4918600 (= e!3073838 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))))

(declare-fun b!4918602 () Bool)

(declare-fun res!2100395 () Bool)

(declare-fun e!3073839 () Bool)

(assert (=> b!4918602 (=> (not res!2100395) (not e!3073839))))

(declare-fun lt!2020428 () List!56771)

(assert (=> b!4918602 (= res!2100395 (= (size!37424 lt!2020428) (+ (size!37424 Nil!56647) (size!37424 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)))))))

(declare-fun b!4918601 () Bool)

(assert (=> b!4918601 (= e!3073838 (Cons!56647 (h!63095 Nil!56647) (++!12302 (t!367195 Nil!56647) (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))))))

(declare-fun d!1581856 () Bool)

(assert (=> d!1581856 e!3073839))

(declare-fun res!2100396 () Bool)

(assert (=> d!1581856 (=> (not res!2100396) (not e!3073839))))

(declare-fun content!10051 (List!56771) (InoxSet C!26920))

(assert (=> d!1581856 (= res!2100396 (= (content!10051 lt!2020428) ((_ map or) (content!10051 Nil!56647) (content!10051 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)))))))

(assert (=> d!1581856 (= lt!2020428 e!3073838)))

(declare-fun c!836615 () Bool)

(assert (=> d!1581856 (= c!836615 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1581856 (= (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)) lt!2020428)))

(declare-fun b!4918603 () Bool)

(assert (=> b!4918603 (= e!3073839 (or (not (= (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647) Nil!56647)) (= lt!2020428 Nil!56647)))))

(assert (= (and d!1581856 c!836615) b!4918600))

(assert (= (and d!1581856 (not c!836615)) b!4918601))

(assert (= (and d!1581856 res!2100396) b!4918602))

(assert (= (and b!4918602 res!2100395) b!4918603))

(declare-fun m!5931734 () Bool)

(assert (=> b!4918602 m!5931734))

(assert (=> b!4918602 m!5931462))

(declare-fun m!5931736 () Bool)

(assert (=> b!4918602 m!5931736))

(declare-fun m!5931738 () Bool)

(assert (=> b!4918601 m!5931738))

(declare-fun m!5931740 () Bool)

(assert (=> d!1581856 m!5931740))

(declare-fun m!5931742 () Bool)

(assert (=> d!1581856 m!5931742))

(declare-fun m!5931744 () Bool)

(assert (=> d!1581856 m!5931744))

(assert (=> b!4918482 d!1581856))

(assert (=> b!4918482 d!1581830))

(assert (=> b!4918482 d!1581814))

(declare-fun b!4918612 () Bool)

(declare-fun e!3073848 () Bool)

(declare-fun e!3073847 () Bool)

(assert (=> b!4918612 (= e!3073848 e!3073847)))

(declare-fun res!2100408 () Bool)

(assert (=> b!4918612 (=> (not res!2100408) (not e!3073847))))

(assert (=> b!4918612 (= res!2100408 (not ((_ is Nil!56647) lt!2020307)))))

(declare-fun b!4918614 () Bool)

(assert (=> b!4918614 (= e!3073847 (isPrefix!4945 (tail!9652 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))) (tail!9652 lt!2020307)))))

(declare-fun b!4918615 () Bool)

(declare-fun e!3073846 () Bool)

(assert (=> b!4918615 (= e!3073846 (>= (size!37424 lt!2020307) (size!37424 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)))))))

(declare-fun d!1581862 () Bool)

(assert (=> d!1581862 e!3073846))

(declare-fun res!2100407 () Bool)

(assert (=> d!1581862 (=> res!2100407 e!3073846)))

(declare-fun lt!2020437 () Bool)

(assert (=> d!1581862 (= res!2100407 (not lt!2020437))))

(assert (=> d!1581862 (= lt!2020437 e!3073848)))

(declare-fun res!2100406 () Bool)

(assert (=> d!1581862 (=> res!2100406 e!3073848)))

(assert (=> d!1581862 (= res!2100406 ((_ is Nil!56647) (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))))))

(assert (=> d!1581862 (= (isPrefix!4945 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)) lt!2020307) lt!2020437)))

(declare-fun b!4918613 () Bool)

(declare-fun res!2100405 () Bool)

(assert (=> b!4918613 (=> (not res!2100405) (not e!3073847))))

(assert (=> b!4918613 (= res!2100405 (= (head!10505 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))) (head!10505 lt!2020307)))))

(assert (= (and d!1581862 (not res!2100406)) b!4918612))

(assert (= (and b!4918612 res!2100408) b!4918613))

(assert (= (and b!4918613 res!2100405) b!4918614))

(assert (= (and d!1581862 (not res!2100407)) b!4918615))

(assert (=> b!4918614 m!5931450))

(declare-fun m!5931756 () Bool)

(assert (=> b!4918614 m!5931756))

(declare-fun m!5931758 () Bool)

(assert (=> b!4918614 m!5931758))

(assert (=> b!4918614 m!5931756))

(assert (=> b!4918614 m!5931758))

(declare-fun m!5931760 () Bool)

(assert (=> b!4918614 m!5931760))

(declare-fun m!5931762 () Bool)

(assert (=> b!4918615 m!5931762))

(assert (=> b!4918615 m!5931450))

(declare-fun m!5931764 () Bool)

(assert (=> b!4918615 m!5931764))

(assert (=> b!4918613 m!5931450))

(declare-fun m!5931766 () Bool)

(assert (=> b!4918613 m!5931766))

(declare-fun m!5931768 () Bool)

(assert (=> b!4918613 m!5931768))

(assert (=> b!4918482 d!1581862))

(declare-fun d!1581872 () Bool)

(declare-fun lt!2020443 () C!26920)

(declare-fun contains!19452 (List!56771 C!26920) Bool)

(assert (=> d!1581872 (contains!19452 lt!2020318 lt!2020443)))

(declare-fun e!3073863 () C!26920)

(assert (=> d!1581872 (= lt!2020443 e!3073863)))

(declare-fun c!836618 () Bool)

(assert (=> d!1581872 (= c!836618 (= 0 0))))

(declare-fun e!3073862 () Bool)

(assert (=> d!1581872 e!3073862))

(declare-fun res!2100423 () Bool)

(assert (=> d!1581872 (=> (not res!2100423) (not e!3073862))))

(assert (=> d!1581872 (= res!2100423 (<= 0 0))))

(assert (=> d!1581872 (= (apply!13622 lt!2020318 0) lt!2020443)))

(declare-fun b!4918634 () Bool)

(assert (=> b!4918634 (= e!3073862 (< 0 (size!37424 lt!2020318)))))

(declare-fun b!4918635 () Bool)

(assert (=> b!4918635 (= e!3073863 (head!10505 lt!2020318))))

(declare-fun b!4918636 () Bool)

(assert (=> b!4918636 (= e!3073863 (apply!13622 (tail!9652 lt!2020318) (- 0 1)))))

(assert (= (and d!1581872 res!2100423) b!4918634))

(assert (= (and d!1581872 c!836618) b!4918635))

(assert (= (and d!1581872 (not c!836618)) b!4918636))

(declare-fun m!5931784 () Bool)

(assert (=> d!1581872 m!5931784))

(assert (=> b!4918634 m!5931656))

(declare-fun m!5931786 () Bool)

(assert (=> b!4918635 m!5931786))

(declare-fun m!5931788 () Bool)

(assert (=> b!4918636 m!5931788))

(assert (=> b!4918636 m!5931788))

(declare-fun m!5931790 () Bool)

(assert (=> b!4918636 m!5931790))

(assert (=> b!4918482 d!1581872))

(declare-fun d!1581876 () Bool)

(assert (=> d!1581876 (= (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) (h!63095 (getSuffix!2933 lt!2020307 Nil!56647)))))

(assert (=> b!4918482 d!1581876))

(declare-fun d!1581878 () Bool)

(declare-fun e!3073864 () Bool)

(assert (=> d!1581878 e!3073864))

(declare-fun res!2100425 () Bool)

(assert (=> d!1581878 (=> (not res!2100425) (not e!3073864))))

(declare-fun lt!2020445 () tuple2!61064)

(assert (=> d!1581878 (= res!2100425 (isBalanced!4070 (c!836549 (_1!33835 lt!2020445))))))

(declare-fun lt!2020444 () tuple2!61068)

(assert (=> d!1581878 (= lt!2020445 (tuple2!61065 (BalanceConc!29139 (_1!33837 lt!2020444)) (BalanceConc!29139 (_2!33837 lt!2020444))))))

(assert (=> d!1581878 (= lt!2020444 (splitAt!237 (c!836549 input!5492) 0))))

(assert (=> d!1581878 (isBalanced!4070 (c!836549 input!5492))))

(assert (=> d!1581878 (= (splitAt!236 input!5492 0) lt!2020445)))

(declare-fun b!4918637 () Bool)

(declare-fun res!2100424 () Bool)

(assert (=> b!4918637 (=> (not res!2100424) (not e!3073864))))

(assert (=> b!4918637 (= res!2100424 (isBalanced!4070 (c!836549 (_2!33835 lt!2020445))))))

(declare-fun b!4918638 () Bool)

(assert (=> b!4918638 (= e!3073864 (= (tuple2!61071 (list!17911 (_1!33835 lt!2020445)) (list!17911 (_2!33835 lt!2020445))) (splitAtIndex!85 (list!17911 input!5492) 0)))))

(assert (= (and d!1581878 res!2100425) b!4918637))

(assert (= (and b!4918637 res!2100424) b!4918638))

(declare-fun m!5931792 () Bool)

(assert (=> d!1581878 m!5931792))

(declare-fun m!5931794 () Bool)

(assert (=> d!1581878 m!5931794))

(assert (=> d!1581878 m!5931278))

(declare-fun m!5931796 () Bool)

(assert (=> b!4918637 m!5931796))

(declare-fun m!5931798 () Bool)

(assert (=> b!4918638 m!5931798))

(declare-fun m!5931800 () Bool)

(assert (=> b!4918638 m!5931800))

(assert (=> b!4918638 m!5931280))

(assert (=> b!4918638 m!5931280))

(declare-fun m!5931802 () Bool)

(assert (=> b!4918638 m!5931802))

(assert (=> b!4918482 d!1581878))

(declare-fun d!1581880 () Bool)

(assert (=> d!1581880 (= (tail!9652 lt!2020053) (t!367195 lt!2020053))))

(assert (=> b!4918482 d!1581880))

(declare-fun d!1581882 () Bool)

(assert (=> d!1581882 (and (= lt!2020293 Nil!56647) (= lt!2020306 lt!2020053))))

(declare-fun lt!2020452 () Unit!146993)

(declare-fun choose!35998 (List!56771 List!56771 List!56771 List!56771) Unit!146993)

(assert (=> d!1581882 (= lt!2020452 (choose!35998 lt!2020293 lt!2020306 Nil!56647 lt!2020053))))

(assert (=> d!1581882 (= (++!12302 lt!2020293 lt!2020306) (++!12302 Nil!56647 lt!2020053))))

(assert (=> d!1581882 (= (lemmaConcatSameAndSameSizesThenSameLists!642 lt!2020293 lt!2020306 Nil!56647 lt!2020053) lt!2020452)))

(declare-fun bs!1178848 () Bool)

(assert (= bs!1178848 d!1581882))

(declare-fun m!5931810 () Bool)

(assert (=> bs!1178848 m!5931810))

(declare-fun m!5931812 () Bool)

(assert (=> bs!1178848 m!5931812))

(assert (=> bs!1178848 m!5931466))

(assert (=> b!4918482 d!1581882))

(declare-fun d!1581892 () Bool)

(declare-fun lt!2020457 () Int)

(assert (=> d!1581892 (>= lt!2020457 0)))

(declare-fun e!3073875 () Int)

(assert (=> d!1581892 (= lt!2020457 e!3073875)))

(declare-fun c!836627 () Bool)

(assert (=> d!1581892 (= c!836627 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1581892 (= (size!37424 Nil!56647) lt!2020457)))

(declare-fun b!4918659 () Bool)

(assert (=> b!4918659 (= e!3073875 0)))

(declare-fun b!4918660 () Bool)

(assert (=> b!4918660 (= e!3073875 (+ 1 (size!37424 (t!367195 Nil!56647))))))

(assert (= (and d!1581892 c!836627) b!4918659))

(assert (= (and d!1581892 (not c!836627)) b!4918660))

(declare-fun m!5931814 () Bool)

(assert (=> b!4918660 m!5931814))

(assert (=> b!4918482 d!1581892))

(declare-fun d!1581894 () Bool)

(assert (=> d!1581894 (isPrefix!4945 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)) lt!2020307)))

(declare-fun lt!2020461 () Unit!146993)

(declare-fun choose!35999 (List!56771 List!56771) Unit!146993)

(assert (=> d!1581894 (= lt!2020461 (choose!35999 Nil!56647 lt!2020307))))

(assert (=> d!1581894 (isPrefix!4945 Nil!56647 lt!2020307)))

(assert (=> d!1581894 (= (lemmaAddHeadSuffixToPrefixStillPrefix!758 Nil!56647 lt!2020307) lt!2020461)))

(declare-fun bs!1178849 () Bool)

(assert (= bs!1178849 d!1581894))

(assert (=> bs!1178849 m!5931450))

(assert (=> bs!1178849 m!5931452))

(assert (=> bs!1178849 m!5931450))

(assert (=> bs!1178849 m!5931436))

(declare-fun m!5931828 () Bool)

(assert (=> bs!1178849 m!5931828))

(declare-fun m!5931830 () Bool)

(assert (=> bs!1178849 m!5931830))

(assert (=> bs!1178849 m!5931436))

(assert (=> bs!1178849 m!5931438))

(assert (=> b!4918482 d!1581894))

(declare-fun b!4918665 () Bool)

(declare-fun e!3073878 () List!56771)

(assert (=> b!4918665 (= e!3073878 (Cons!56647 lt!2020295 Nil!56647))))

(declare-fun b!4918667 () Bool)

(declare-fun res!2100432 () Bool)

(declare-fun e!3073879 () Bool)

(assert (=> b!4918667 (=> (not res!2100432) (not e!3073879))))

(declare-fun lt!2020462 () List!56771)

(assert (=> b!4918667 (= res!2100432 (= (size!37424 lt!2020462) (+ (size!37424 Nil!56647) (size!37424 (Cons!56647 lt!2020295 Nil!56647)))))))

(declare-fun b!4918666 () Bool)

(assert (=> b!4918666 (= e!3073878 (Cons!56647 (h!63095 Nil!56647) (++!12302 (t!367195 Nil!56647) (Cons!56647 lt!2020295 Nil!56647))))))

(declare-fun d!1581898 () Bool)

(assert (=> d!1581898 e!3073879))

(declare-fun res!2100433 () Bool)

(assert (=> d!1581898 (=> (not res!2100433) (not e!3073879))))

(assert (=> d!1581898 (= res!2100433 (= (content!10051 lt!2020462) ((_ map or) (content!10051 Nil!56647) (content!10051 (Cons!56647 lt!2020295 Nil!56647)))))))

(assert (=> d!1581898 (= lt!2020462 e!3073878)))

(declare-fun c!836629 () Bool)

(assert (=> d!1581898 (= c!836629 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1581898 (= (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647)) lt!2020462)))

(declare-fun b!4918668 () Bool)

(assert (=> b!4918668 (= e!3073879 (or (not (= (Cons!56647 lt!2020295 Nil!56647) Nil!56647)) (= lt!2020462 Nil!56647)))))

(assert (= (and d!1581898 c!836629) b!4918665))

(assert (= (and d!1581898 (not c!836629)) b!4918666))

(assert (= (and d!1581898 res!2100433) b!4918667))

(assert (= (and b!4918667 res!2100432) b!4918668))

(declare-fun m!5931832 () Bool)

(assert (=> b!4918667 m!5931832))

(assert (=> b!4918667 m!5931462))

(declare-fun m!5931834 () Bool)

(assert (=> b!4918667 m!5931834))

(declare-fun m!5931836 () Bool)

(assert (=> b!4918666 m!5931836))

(declare-fun m!5931838 () Bool)

(assert (=> d!1581898 m!5931838))

(assert (=> d!1581898 m!5931742))

(declare-fun m!5931840 () Bool)

(assert (=> d!1581898 m!5931840))

(assert (=> b!4918482 d!1581898))

(declare-fun b!4918703 () Bool)

(declare-fun e!3073902 () Int)

(declare-fun e!3073904 () Int)

(assert (=> b!4918703 (= e!3073902 e!3073904)))

(declare-fun c!836642 () Bool)

(declare-fun call!341951 () Int)

(assert (=> b!4918703 (= c!836642 (>= 0 call!341951))))

(declare-fun d!1581900 () Bool)

(declare-fun e!3073903 () Bool)

(assert (=> d!1581900 e!3073903))

(declare-fun res!2100444 () Bool)

(assert (=> d!1581900 (=> (not res!2100444) (not e!3073903))))

(declare-fun lt!2020472 () List!56771)

(assert (=> d!1581900 (= res!2100444 (= ((_ map implies) (content!10051 lt!2020472) (content!10051 lt!2020318)) ((as const (InoxSet C!26920)) true)))))

(declare-fun e!3073901 () List!56771)

(assert (=> d!1581900 (= lt!2020472 e!3073901)))

(declare-fun c!836644 () Bool)

(assert (=> d!1581900 (= c!836644 ((_ is Nil!56647) lt!2020318))))

(assert (=> d!1581900 (= (drop!2209 lt!2020318 0) lt!2020472)))

(declare-fun b!4918704 () Bool)

(declare-fun e!3073905 () List!56771)

(assert (=> b!4918704 (= e!3073905 lt!2020318)))

(declare-fun b!4918705 () Bool)

(assert (=> b!4918705 (= e!3073902 call!341951)))

(declare-fun b!4918706 () Bool)

(assert (=> b!4918706 (= e!3073903 (= (size!37424 lt!2020472) e!3073902))))

(declare-fun c!836643 () Bool)

(assert (=> b!4918706 (= c!836643 (<= 0 0))))

(declare-fun b!4918707 () Bool)

(assert (=> b!4918707 (= e!3073901 Nil!56647)))

(declare-fun b!4918708 () Bool)

(assert (=> b!4918708 (= e!3073905 (drop!2209 (t!367195 lt!2020318) (- 0 1)))))

(declare-fun b!4918709 () Bool)

(assert (=> b!4918709 (= e!3073904 0)))

(declare-fun b!4918710 () Bool)

(assert (=> b!4918710 (= e!3073904 (- call!341951 0))))

(declare-fun b!4918711 () Bool)

(assert (=> b!4918711 (= e!3073901 e!3073905)))

(declare-fun c!836645 () Bool)

(assert (=> b!4918711 (= c!836645 (<= 0 0))))

(declare-fun bm!341946 () Bool)

(assert (=> bm!341946 (= call!341951 (size!37424 lt!2020318))))

(assert (= (and d!1581900 c!836644) b!4918707))

(assert (= (and d!1581900 (not c!836644)) b!4918711))

(assert (= (and b!4918711 c!836645) b!4918704))

(assert (= (and b!4918711 (not c!836645)) b!4918708))

(assert (= (and d!1581900 res!2100444) b!4918706))

(assert (= (and b!4918706 c!836643) b!4918705))

(assert (= (and b!4918706 (not c!836643)) b!4918703))

(assert (= (and b!4918703 c!836642) b!4918709))

(assert (= (and b!4918703 (not c!836642)) b!4918710))

(assert (= (or b!4918705 b!4918703 b!4918710) bm!341946))

(declare-fun m!5931868 () Bool)

(assert (=> d!1581900 m!5931868))

(declare-fun m!5931870 () Bool)

(assert (=> d!1581900 m!5931870))

(declare-fun m!5931872 () Bool)

(assert (=> b!4918706 m!5931872))

(declare-fun m!5931874 () Bool)

(assert (=> b!4918708 m!5931874))

(assert (=> bm!341946 m!5931656))

(assert (=> b!4918482 d!1581900))

(declare-fun d!1581908 () Bool)

(assert (=> d!1581908 (= (++!12302 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647)) lt!2020284) lt!2020300)))

(declare-fun lt!2020479 () Unit!146993)

(declare-fun choose!36000 (List!56771 C!26920 List!56771 List!56771) Unit!146993)

(assert (=> d!1581908 (= lt!2020479 (choose!36000 Nil!56647 lt!2020295 lt!2020284 lt!2020300))))

(assert (=> d!1581908 (= (++!12302 Nil!56647 (Cons!56647 lt!2020295 lt!2020284)) lt!2020300)))

(assert (=> d!1581908 (= (lemmaMoveElementToOtherListKeepsConcatEq!1376 Nil!56647 lt!2020295 lt!2020284 lt!2020300) lt!2020479)))

(declare-fun bs!1178851 () Bool)

(assert (= bs!1178851 d!1581908))

(assert (=> bs!1178851 m!5931442))

(assert (=> bs!1178851 m!5931442))

(assert (=> bs!1178851 m!5931444))

(declare-fun m!5931890 () Bool)

(assert (=> bs!1178851 m!5931890))

(declare-fun m!5931892 () Bool)

(assert (=> bs!1178851 m!5931892))

(assert (=> b!4918482 d!1581908))

(declare-fun d!1581914 () Bool)

(declare-fun lt!2020487 () List!56771)

(assert (=> d!1581914 (= (++!12302 Nil!56647 lt!2020487) lt!2020307)))

(declare-fun e!3073911 () List!56771)

(assert (=> d!1581914 (= lt!2020487 e!3073911)))

(declare-fun c!836649 () Bool)

(assert (=> d!1581914 (= c!836649 ((_ is Cons!56647) Nil!56647))))

(assert (=> d!1581914 (>= (size!37424 lt!2020307) (size!37424 Nil!56647))))

(assert (=> d!1581914 (= (getSuffix!2933 lt!2020307 Nil!56647) lt!2020487)))

(declare-fun b!4918722 () Bool)

(assert (=> b!4918722 (= e!3073911 (getSuffix!2933 (tail!9652 lt!2020307) (t!367195 Nil!56647)))))

(declare-fun b!4918723 () Bool)

(assert (=> b!4918723 (= e!3073911 lt!2020307)))

(assert (= (and d!1581914 c!836649) b!4918722))

(assert (= (and d!1581914 (not c!836649)) b!4918723))

(declare-fun m!5931910 () Bool)

(assert (=> d!1581914 m!5931910))

(assert (=> d!1581914 m!5931762))

(assert (=> d!1581914 m!5931462))

(assert (=> b!4918722 m!5931758))

(assert (=> b!4918722 m!5931758))

(declare-fun m!5931912 () Bool)

(assert (=> b!4918722 m!5931912))

(assert (=> b!4918482 d!1581914))

(declare-fun b!4918724 () Bool)

(declare-fun e!3073912 () List!56771)

(assert (=> b!4918724 (= e!3073912 lt!2020284)))

(declare-fun b!4918726 () Bool)

(declare-fun res!2100449 () Bool)

(declare-fun e!3073913 () Bool)

(assert (=> b!4918726 (=> (not res!2100449) (not e!3073913))))

(declare-fun lt!2020488 () List!56771)

(assert (=> b!4918726 (= res!2100449 (= (size!37424 lt!2020488) (+ (size!37424 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))) (size!37424 lt!2020284))))))

(declare-fun b!4918725 () Bool)

(assert (=> b!4918725 (= e!3073912 (Cons!56647 (h!63095 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))) (++!12302 (t!367195 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))) lt!2020284)))))

(declare-fun d!1581924 () Bool)

(assert (=> d!1581924 e!3073913))

(declare-fun res!2100450 () Bool)

(assert (=> d!1581924 (=> (not res!2100450) (not e!3073913))))

(assert (=> d!1581924 (= res!2100450 (= (content!10051 lt!2020488) ((_ map or) (content!10051 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))) (content!10051 lt!2020284))))))

(assert (=> d!1581924 (= lt!2020488 e!3073912)))

(declare-fun c!836650 () Bool)

(assert (=> d!1581924 (= c!836650 ((_ is Nil!56647) (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))))))

(assert (=> d!1581924 (= (++!12302 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647)) lt!2020284) lt!2020488)))

(declare-fun b!4918727 () Bool)

(assert (=> b!4918727 (= e!3073913 (or (not (= lt!2020284 Nil!56647)) (= lt!2020488 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647)))))))

(assert (= (and d!1581924 c!836650) b!4918724))

(assert (= (and d!1581924 (not c!836650)) b!4918725))

(assert (= (and d!1581924 res!2100450) b!4918726))

(assert (= (and b!4918726 res!2100449) b!4918727))

(declare-fun m!5931914 () Bool)

(assert (=> b!4918726 m!5931914))

(assert (=> b!4918726 m!5931442))

(declare-fun m!5931916 () Bool)

(assert (=> b!4918726 m!5931916))

(declare-fun m!5931918 () Bool)

(assert (=> b!4918726 m!5931918))

(declare-fun m!5931920 () Bool)

(assert (=> b!4918725 m!5931920))

(declare-fun m!5931922 () Bool)

(assert (=> d!1581924 m!5931922))

(assert (=> d!1581924 m!5931442))

(declare-fun m!5931924 () Bool)

(assert (=> d!1581924 m!5931924))

(declare-fun m!5931926 () Bool)

(assert (=> d!1581924 m!5931926))

(assert (=> b!4918482 d!1581924))

(declare-fun d!1581926 () Bool)

(declare-fun lt!2020489 () Int)

(assert (=> d!1581926 (>= lt!2020489 0)))

(declare-fun e!3073914 () Int)

(assert (=> d!1581926 (= lt!2020489 e!3073914)))

(declare-fun c!836651 () Bool)

(assert (=> d!1581926 (= c!836651 ((_ is Nil!56647) lt!2020304))))

(assert (=> d!1581926 (= (size!37424 lt!2020304) lt!2020489)))

(declare-fun b!4918728 () Bool)

(assert (=> b!4918728 (= e!3073914 0)))

(declare-fun b!4918729 () Bool)

(assert (=> b!4918729 (= e!3073914 (+ 1 (size!37424 (t!367195 lt!2020304))))))

(assert (= (and d!1581926 c!836651) b!4918728))

(assert (= (and d!1581926 (not c!836651)) b!4918729))

(declare-fun m!5931928 () Bool)

(assert (=> b!4918729 m!5931928))

(assert (=> b!4918482 d!1581926))

(assert (=> b!4918482 d!1581818))

(declare-fun d!1581928 () Bool)

(assert (=> d!1581928 (= (head!10505 (drop!2209 lt!2020318 0)) (h!63095 (drop!2209 lt!2020318 0)))))

(assert (=> b!4918482 d!1581928))

(declare-fun d!1581930 () Bool)

(declare-fun lt!2020490 () Bool)

(assert (=> d!1581930 (= lt!2020490 (isEmpty!30552 (list!17913 (right!41629 (c!836549 input!5492)))))))

(assert (=> d!1581930 (= lt!2020490 (= (size!37425 (right!41629 (c!836549 input!5492))) 0))))

(assert (=> d!1581930 (= (isEmpty!30551 (right!41629 (c!836549 input!5492))) lt!2020490)))

(declare-fun bs!1178853 () Bool)

(assert (= bs!1178853 d!1581930))

(declare-fun m!5931930 () Bool)

(assert (=> bs!1178853 m!5931930))

(assert (=> bs!1178853 m!5931930))

(declare-fun m!5931932 () Bool)

(assert (=> bs!1178853 m!5931932))

(declare-fun m!5931934 () Bool)

(assert (=> bs!1178853 m!5931934))

(assert (=> b!4918389 d!1581930))

(declare-fun d!1581932 () Bool)

(declare-fun c!836652 () Bool)

(assert (=> d!1581932 (= c!836652 ((_ is Node!14854) (left!41299 (c!836549 input!5492))))))

(declare-fun e!3073915 () Bool)

(assert (=> d!1581932 (= (inv!73337 (left!41299 (c!836549 input!5492))) e!3073915)))

(declare-fun b!4918730 () Bool)

(assert (=> b!4918730 (= e!3073915 (inv!73342 (left!41299 (c!836549 input!5492))))))

(declare-fun b!4918731 () Bool)

(declare-fun e!3073916 () Bool)

(assert (=> b!4918731 (= e!3073915 e!3073916)))

(declare-fun res!2100451 () Bool)

(assert (=> b!4918731 (= res!2100451 (not ((_ is Leaf!24714) (left!41299 (c!836549 input!5492)))))))

(assert (=> b!4918731 (=> res!2100451 e!3073916)))

(declare-fun b!4918732 () Bool)

(assert (=> b!4918732 (= e!3073916 (inv!73343 (left!41299 (c!836549 input!5492))))))

(assert (= (and d!1581932 c!836652) b!4918730))

(assert (= (and d!1581932 (not c!836652)) b!4918731))

(assert (= (and b!4918731 (not res!2100451)) b!4918732))

(declare-fun m!5931936 () Bool)

(assert (=> b!4918730 m!5931936))

(declare-fun m!5931938 () Bool)

(assert (=> b!4918732 m!5931938))

(assert (=> b!4918519 d!1581932))

(declare-fun d!1581934 () Bool)

(declare-fun c!836654 () Bool)

(assert (=> d!1581934 (= c!836654 ((_ is Node!14854) (right!41629 (c!836549 input!5492))))))

(declare-fun e!3073918 () Bool)

(assert (=> d!1581934 (= (inv!73337 (right!41629 (c!836549 input!5492))) e!3073918)))

(declare-fun b!4918737 () Bool)

(assert (=> b!4918737 (= e!3073918 (inv!73342 (right!41629 (c!836549 input!5492))))))

(declare-fun b!4918738 () Bool)

(declare-fun e!3073919 () Bool)

(assert (=> b!4918738 (= e!3073918 e!3073919)))

(declare-fun res!2100452 () Bool)

(assert (=> b!4918738 (= res!2100452 (not ((_ is Leaf!24714) (right!41629 (c!836549 input!5492)))))))

(assert (=> b!4918738 (=> res!2100452 e!3073919)))

(declare-fun b!4918739 () Bool)

(assert (=> b!4918739 (= e!3073919 (inv!73343 (right!41629 (c!836549 input!5492))))))

(assert (= (and d!1581934 c!836654) b!4918737))

(assert (= (and d!1581934 (not c!836654)) b!4918738))

(assert (= (and b!4918738 (not res!2100452)) b!4918739))

(declare-fun m!5931940 () Bool)

(assert (=> b!4918737 m!5931940))

(declare-fun m!5931942 () Bool)

(assert (=> b!4918739 m!5931942))

(assert (=> b!4918519 d!1581934))

(declare-fun b!4918740 () Bool)

(declare-fun e!3073921 () List!56771)

(assert (=> b!4918740 (= e!3073921 (Cons!56647 call!341927 Nil!56647))))

(declare-fun b!4918742 () Bool)

(declare-fun res!2100453 () Bool)

(declare-fun e!3073922 () Bool)

(assert (=> b!4918742 (=> (not res!2100453) (not e!3073922))))

(declare-fun lt!2020493 () List!56771)

(assert (=> b!4918742 (= res!2100453 (= (size!37424 lt!2020493) (+ (size!37424 Nil!56647) (size!37424 (Cons!56647 call!341927 Nil!56647)))))))

(declare-fun b!4918741 () Bool)

(assert (=> b!4918741 (= e!3073921 (Cons!56647 (h!63095 Nil!56647) (++!12302 (t!367195 Nil!56647) (Cons!56647 call!341927 Nil!56647))))))

(declare-fun d!1581936 () Bool)

(assert (=> d!1581936 e!3073922))

(declare-fun res!2100454 () Bool)

(assert (=> d!1581936 (=> (not res!2100454) (not e!3073922))))

(assert (=> d!1581936 (= res!2100454 (= (content!10051 lt!2020493) ((_ map or) (content!10051 Nil!56647) (content!10051 (Cons!56647 call!341927 Nil!56647)))))))

(assert (=> d!1581936 (= lt!2020493 e!3073921)))

(declare-fun c!836656 () Bool)

(assert (=> d!1581936 (= c!836656 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1581936 (= (++!12302 Nil!56647 (Cons!56647 call!341927 Nil!56647)) lt!2020493)))

(declare-fun b!4918743 () Bool)

(assert (=> b!4918743 (= e!3073922 (or (not (= (Cons!56647 call!341927 Nil!56647) Nil!56647)) (= lt!2020493 Nil!56647)))))

(assert (= (and d!1581936 c!836656) b!4918740))

(assert (= (and d!1581936 (not c!836656)) b!4918741))

(assert (= (and d!1581936 res!2100454) b!4918742))

(assert (= (and b!4918742 res!2100453) b!4918743))

(declare-fun m!5931944 () Bool)

(assert (=> b!4918742 m!5931944))

(assert (=> b!4918742 m!5931462))

(declare-fun m!5931946 () Bool)

(assert (=> b!4918742 m!5931946))

(declare-fun m!5931948 () Bool)

(assert (=> b!4918741 m!5931948))

(declare-fun m!5931950 () Bool)

(assert (=> d!1581936 m!5931950))

(assert (=> d!1581936 m!5931742))

(declare-fun m!5931952 () Bool)

(assert (=> d!1581936 m!5931952))

(assert (=> bm!341918 d!1581936))

(declare-fun d!1581938 () Bool)

(assert (=> d!1581938 (= (height!1978 (left!41299 (c!836549 input!5492))) (ite ((_ is Empty!14854) (left!41299 (c!836549 input!5492))) 0 (ite ((_ is Leaf!24714) (left!41299 (c!836549 input!5492))) 1 (cheight!15065 (left!41299 (c!836549 input!5492))))))))

(assert (=> b!4918390 d!1581938))

(declare-fun d!1581942 () Bool)

(assert (=> d!1581942 (= (height!1978 (right!41629 (c!836549 input!5492))) (ite ((_ is Empty!14854) (right!41629 (c!836549 input!5492))) 0 (ite ((_ is Leaf!24714) (right!41629 (c!836549 input!5492))) 1 (cheight!15065 (right!41629 (c!836549 input!5492))))))))

(assert (=> b!4918390 d!1581942))

(declare-fun d!1581944 () Bool)

(assert (=> d!1581944 (isPrefix!4945 (ite c!836592 lt!2020299 lt!2020303) (ite c!836592 lt!2020301 lt!2020313))))

(declare-fun lt!2020497 () Unit!146993)

(declare-fun choose!36004 (List!56771 List!56771) Unit!146993)

(assert (=> d!1581944 (= lt!2020497 (choose!36004 (ite c!836592 lt!2020299 lt!2020303) (ite c!836592 lt!2020301 lt!2020313)))))

(assert (=> d!1581944 (= (lemmaIsPrefixRefl!3342 (ite c!836592 lt!2020299 lt!2020303) (ite c!836592 lt!2020301 lt!2020313)) lt!2020497)))

(declare-fun bs!1178854 () Bool)

(assert (= bs!1178854 d!1581944))

(assert (=> bs!1178854 m!5931422))

(declare-fun m!5931958 () Bool)

(assert (=> bs!1178854 m!5931958))

(assert (=> bm!341917 d!1581944))

(declare-fun bs!1178856 () Bool)

(declare-fun d!1581946 () Bool)

(assert (= bs!1178856 (and d!1581946 d!1581832)))

(declare-fun lambda!245003 () Int)

(assert (=> bs!1178856 (not (= lambda!245003 lambda!244989))))

(declare-fun bs!1178857 () Bool)

(declare-fun b!4918780 () Bool)

(assert (= bs!1178857 (and b!4918780 d!1581832)))

(declare-fun lambda!245004 () Int)

(assert (=> bs!1178857 (not (= lambda!245004 lambda!244989))))

(declare-fun bs!1178858 () Bool)

(assert (= bs!1178858 (and b!4918780 d!1581946)))

(assert (=> bs!1178858 (not (= lambda!245004 lambda!245003))))

(declare-fun bs!1178859 () Bool)

(declare-fun b!4918781 () Bool)

(assert (= bs!1178859 (and b!4918781 d!1581832)))

(declare-fun lambda!245005 () Int)

(assert (=> bs!1178859 (not (= lambda!245005 lambda!244989))))

(declare-fun bs!1178860 () Bool)

(assert (= bs!1178860 (and b!4918781 d!1581946)))

(assert (=> bs!1178860 (not (= lambda!245005 lambda!245003))))

(declare-fun bs!1178861 () Bool)

(assert (= bs!1178861 (and b!4918781 b!4918780)))

(assert (=> bs!1178861 (= lambda!245005 lambda!245004)))

(declare-fun e!3073948 () Unit!146993)

(declare-fun Unit!147004 () Unit!146993)

(assert (=> b!4918781 (= e!3073948 Unit!147004)))

(declare-datatypes ((List!56773 0))(
  ( (Nil!56649) (Cons!56649 (h!63097 Context!5994) (t!367209 List!56773)) )
))
(declare-fun lt!2020527 () List!56773)

(declare-fun call!341960 () List!56773)

(assert (=> b!4918781 (= lt!2020527 call!341960)))

(declare-fun lt!2020525 () Unit!146993)

(declare-fun lemmaForallThenNotExists!160 (List!56773 Int) Unit!146993)

(assert (=> b!4918781 (= lt!2020525 (lemmaForallThenNotExists!160 lt!2020527 lambda!245003))))

(declare-fun call!341959 () Bool)

(assert (=> b!4918781 (not call!341959)))

(declare-fun lt!2020524 () Unit!146993)

(assert (=> b!4918781 (= lt!2020524 lt!2020525)))

(declare-fun lt!2020529 () Bool)

(declare-datatypes ((Option!14157 0))(
  ( (None!14156) (Some!14156 (v!50120 List!56771)) )
))
(declare-fun isEmpty!30554 (Option!14157) Bool)

(declare-fun getLanguageWitness!609 ((InoxSet Context!5994)) Option!14157)

(assert (=> d!1581946 (= lt!2020529 (isEmpty!30554 (getLanguageWitness!609 z!3559)))))

(declare-fun forall!13114 ((InoxSet Context!5994) Int) Bool)

(assert (=> d!1581946 (= lt!2020529 (forall!13114 z!3559 lambda!245003))))

(declare-fun lt!2020528 () Unit!146993)

(assert (=> d!1581946 (= lt!2020528 e!3073948)))

(declare-fun c!836680 () Bool)

(assert (=> d!1581946 (= c!836680 (not (forall!13114 z!3559 lambda!245003)))))

(assert (=> d!1581946 (= (lostCauseZipper!675 z!3559) lt!2020529)))

(declare-fun bm!341954 () Bool)

(declare-fun lt!2020523 () List!56773)

(declare-fun exists!1239 (List!56773 Int) Bool)

(assert (=> bm!341954 (= call!341959 (exists!1239 (ite c!836680 lt!2020523 lt!2020527) (ite c!836680 lambda!245004 lambda!245005)))))

(declare-fun bm!341955 () Bool)

(declare-fun toList!7939 ((InoxSet Context!5994)) List!56773)

(assert (=> bm!341955 (= call!341960 (toList!7939 z!3559))))

(declare-fun Unit!147005 () Unit!146993)

(assert (=> b!4918780 (= e!3073948 Unit!147005)))

(assert (=> b!4918780 (= lt!2020523 call!341960)))

(declare-fun lt!2020526 () Unit!146993)

(declare-fun lemmaNotForallThenExists!177 (List!56773 Int) Unit!146993)

(assert (=> b!4918780 (= lt!2020526 (lemmaNotForallThenExists!177 lt!2020523 lambda!245003))))

(assert (=> b!4918780 call!341959))

(declare-fun lt!2020530 () Unit!146993)

(assert (=> b!4918780 (= lt!2020530 lt!2020526)))

(assert (= (and d!1581946 c!836680) b!4918780))

(assert (= (and d!1581946 (not c!836680)) b!4918781))

(assert (= (or b!4918780 b!4918781) bm!341954))

(assert (= (or b!4918780 b!4918781) bm!341955))

(declare-fun m!5931976 () Bool)

(assert (=> b!4918781 m!5931976))

(declare-fun m!5931978 () Bool)

(assert (=> bm!341955 m!5931978))

(declare-fun m!5931980 () Bool)

(assert (=> d!1581946 m!5931980))

(assert (=> d!1581946 m!5931980))

(declare-fun m!5931982 () Bool)

(assert (=> d!1581946 m!5931982))

(declare-fun m!5931984 () Bool)

(assert (=> d!1581946 m!5931984))

(assert (=> d!1581946 m!5931984))

(declare-fun m!5931986 () Bool)

(assert (=> b!4918780 m!5931986))

(declare-fun m!5931988 () Bool)

(assert (=> bm!341954 m!5931988))

(assert (=> d!1581798 d!1581946))

(declare-fun d!1581954 () Bool)

(declare-fun lt!2020534 () Int)

(assert (=> d!1581954 (>= lt!2020534 0)))

(declare-fun e!3073949 () Int)

(assert (=> d!1581954 (= lt!2020534 e!3073949)))

(declare-fun c!836681 () Bool)

(assert (=> d!1581954 (= c!836681 ((_ is Nil!56647) (_1!33838 (findLongestMatchInnerZipper!40 z!3559 Nil!56647 0 lt!2020053 (list!17911 input!5492) lt!2020052))))))

(assert (=> d!1581954 (= (size!37424 (_1!33838 (findLongestMatchInnerZipper!40 z!3559 Nil!56647 0 lt!2020053 (list!17911 input!5492) lt!2020052))) lt!2020534)))

(declare-fun b!4918782 () Bool)

(assert (=> b!4918782 (= e!3073949 0)))

(declare-fun b!4918783 () Bool)

(assert (=> b!4918783 (= e!3073949 (+ 1 (size!37424 (t!367195 (_1!33838 (findLongestMatchInnerZipper!40 z!3559 Nil!56647 0 lt!2020053 (list!17911 input!5492) lt!2020052))))))))

(assert (= (and d!1581954 c!836681) b!4918782))

(assert (= (and d!1581954 (not c!836681)) b!4918783))

(declare-fun m!5931994 () Bool)

(assert (=> b!4918783 m!5931994))

(assert (=> d!1581798 d!1581954))

(declare-fun b!4918790 () Bool)

(declare-fun e!3073954 () Bool)

(declare-fun e!3073953 () Bool)

(assert (=> b!4918790 (= e!3073954 e!3073953)))

(declare-fun res!2100470 () Bool)

(assert (=> b!4918790 (=> (not res!2100470) (not e!3073953))))

(assert (=> b!4918790 (= res!2100470 (not ((_ is Nil!56647) (++!12302 Nil!56647 lt!2020053))))))

(declare-fun b!4918792 () Bool)

(assert (=> b!4918792 (= e!3073953 (isPrefix!4945 (tail!9652 Nil!56647) (tail!9652 (++!12302 Nil!56647 lt!2020053))))))

(declare-fun b!4918793 () Bool)

(declare-fun e!3073952 () Bool)

(assert (=> b!4918793 (= e!3073952 (>= (size!37424 (++!12302 Nil!56647 lt!2020053)) (size!37424 Nil!56647)))))

(declare-fun d!1581958 () Bool)

(assert (=> d!1581958 e!3073952))

(declare-fun res!2100469 () Bool)

(assert (=> d!1581958 (=> res!2100469 e!3073952)))

(declare-fun lt!2020535 () Bool)

(assert (=> d!1581958 (= res!2100469 (not lt!2020535))))

(assert (=> d!1581958 (= lt!2020535 e!3073954)))

(declare-fun res!2100468 () Bool)

(assert (=> d!1581958 (=> res!2100468 e!3073954)))

(assert (=> d!1581958 (= res!2100468 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1581958 (= (isPrefix!4945 Nil!56647 (++!12302 Nil!56647 lt!2020053)) lt!2020535)))

(declare-fun b!4918791 () Bool)

(declare-fun res!2100467 () Bool)

(assert (=> b!4918791 (=> (not res!2100467) (not e!3073953))))

(assert (=> b!4918791 (= res!2100467 (= (head!10505 Nil!56647) (head!10505 (++!12302 Nil!56647 lt!2020053))))))

(assert (= (and d!1581958 (not res!2100468)) b!4918790))

(assert (= (and b!4918790 res!2100470) b!4918791))

(assert (= (and b!4918791 res!2100467) b!4918792))

(assert (= (and d!1581958 (not res!2100469)) b!4918793))

(declare-fun m!5931996 () Bool)

(assert (=> b!4918792 m!5931996))

(assert (=> b!4918792 m!5931466))

(declare-fun m!5932000 () Bool)

(assert (=> b!4918792 m!5932000))

(assert (=> b!4918792 m!5931996))

(assert (=> b!4918792 m!5932000))

(declare-fun m!5932007 () Bool)

(assert (=> b!4918792 m!5932007))

(assert (=> b!4918793 m!5931466))

(declare-fun m!5932010 () Bool)

(assert (=> b!4918793 m!5932010))

(assert (=> b!4918793 m!5931462))

(declare-fun m!5932014 () Bool)

(assert (=> b!4918791 m!5932014))

(assert (=> b!4918791 m!5931466))

(declare-fun m!5932018 () Bool)

(assert (=> b!4918791 m!5932018))

(assert (=> d!1581798 d!1581958))

(declare-fun b!4918794 () Bool)

(declare-fun e!3073955 () List!56771)

(assert (=> b!4918794 (= e!3073955 lt!2020053)))

(declare-fun b!4918796 () Bool)

(declare-fun res!2100471 () Bool)

(declare-fun e!3073956 () Bool)

(assert (=> b!4918796 (=> (not res!2100471) (not e!3073956))))

(declare-fun lt!2020536 () List!56771)

(assert (=> b!4918796 (= res!2100471 (= (size!37424 lt!2020536) (+ (size!37424 Nil!56647) (size!37424 lt!2020053))))))

(declare-fun b!4918795 () Bool)

(assert (=> b!4918795 (= e!3073955 (Cons!56647 (h!63095 Nil!56647) (++!12302 (t!367195 Nil!56647) lt!2020053)))))

(declare-fun d!1581962 () Bool)

(assert (=> d!1581962 e!3073956))

(declare-fun res!2100472 () Bool)

(assert (=> d!1581962 (=> (not res!2100472) (not e!3073956))))

(assert (=> d!1581962 (= res!2100472 (= (content!10051 lt!2020536) ((_ map or) (content!10051 Nil!56647) (content!10051 lt!2020053))))))

(assert (=> d!1581962 (= lt!2020536 e!3073955)))

(declare-fun c!836682 () Bool)

(assert (=> d!1581962 (= c!836682 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1581962 (= (++!12302 Nil!56647 lt!2020053) lt!2020536)))

(declare-fun b!4918797 () Bool)

(assert (=> b!4918797 (= e!3073956 (or (not (= lt!2020053 Nil!56647)) (= lt!2020536 Nil!56647)))))

(assert (= (and d!1581962 c!836682) b!4918794))

(assert (= (and d!1581962 (not c!836682)) b!4918795))

(assert (= (and d!1581962 res!2100472) b!4918796))

(assert (= (and b!4918796 res!2100471) b!4918797))

(declare-fun m!5932020 () Bool)

(assert (=> b!4918796 m!5932020))

(assert (=> b!4918796 m!5931462))

(declare-fun m!5932022 () Bool)

(assert (=> b!4918796 m!5932022))

(declare-fun m!5932024 () Bool)

(assert (=> b!4918795 m!5932024))

(declare-fun m!5932026 () Bool)

(assert (=> d!1581962 m!5932026))

(assert (=> d!1581962 m!5931742))

(declare-fun m!5932028 () Bool)

(assert (=> d!1581962 m!5932028))

(assert (=> d!1581798 d!1581962))

(declare-fun d!1581964 () Bool)

(declare-fun lt!2020537 () List!56771)

(assert (=> d!1581964 (= (++!12302 Nil!56647 lt!2020537) (list!17911 input!5492))))

(declare-fun e!3073957 () List!56771)

(assert (=> d!1581964 (= lt!2020537 e!3073957)))

(declare-fun c!836683 () Bool)

(assert (=> d!1581964 (= c!836683 ((_ is Cons!56647) Nil!56647))))

(assert (=> d!1581964 (>= (size!37424 (list!17911 input!5492)) (size!37424 Nil!56647))))

(assert (=> d!1581964 (= (getSuffix!2933 (list!17911 input!5492) Nil!56647) lt!2020537)))

(declare-fun b!4918798 () Bool)

(assert (=> b!4918798 (= e!3073957 (getSuffix!2933 (tail!9652 (list!17911 input!5492)) (t!367195 Nil!56647)))))

(declare-fun b!4918799 () Bool)

(assert (=> b!4918799 (= e!3073957 (list!17911 input!5492))))

(assert (= (and d!1581964 c!836683) b!4918798))

(assert (= (and d!1581964 (not c!836683)) b!4918799))

(declare-fun m!5932030 () Bool)

(assert (=> d!1581964 m!5932030))

(assert (=> d!1581964 m!5931280))

(assert (=> d!1581964 m!5931492))

(assert (=> d!1581964 m!5931462))

(assert (=> b!4918798 m!5931280))

(declare-fun m!5932032 () Bool)

(assert (=> b!4918798 m!5932032))

(assert (=> b!4918798 m!5932032))

(declare-fun m!5932034 () Bool)

(assert (=> b!4918798 m!5932034))

(assert (=> d!1581798 d!1581964))

(declare-fun d!1581966 () Bool)

(assert (=> d!1581966 (= lt!2020053 lt!2020279)))

(declare-fun lt!2020540 () Unit!146993)

(declare-fun choose!36007 (List!56771 List!56771 List!56771 List!56771 List!56771) Unit!146993)

(assert (=> d!1581966 (= lt!2020540 (choose!36007 Nil!56647 lt!2020053 Nil!56647 lt!2020279 (list!17911 input!5492)))))

(assert (=> d!1581966 (isPrefix!4945 Nil!56647 (list!17911 input!5492))))

(assert (=> d!1581966 (= (lemmaSamePrefixThenSameSuffix!2349 Nil!56647 lt!2020053 Nil!56647 lt!2020279 (list!17911 input!5492)) lt!2020540)))

(declare-fun bs!1178863 () Bool)

(assert (= bs!1178863 d!1581966))

(assert (=> bs!1178863 m!5931280))

(declare-fun m!5932036 () Bool)

(assert (=> bs!1178863 m!5932036))

(assert (=> bs!1178863 m!5931280))

(declare-fun m!5932038 () Bool)

(assert (=> bs!1178863 m!5932038))

(assert (=> d!1581798 d!1581966))

(declare-fun b!4918908 () Bool)

(declare-fun e!3074025 () tuple2!61070)

(assert (=> b!4918908 (= e!3074025 (tuple2!61071 Nil!56647 Nil!56647))))

(declare-fun bm!341994 () Bool)

(declare-fun call!342002 () Unit!146993)

(assert (=> bm!341994 (= call!342002 (lemmaIsPrefixRefl!3342 (list!17911 input!5492) (list!17911 input!5492)))))

(declare-fun b!4918909 () Bool)

(declare-fun c!836741 () Bool)

(declare-fun call!341999 () Bool)

(assert (=> b!4918909 (= c!836741 call!341999)))

(declare-fun lt!2020664 () Unit!146993)

(declare-fun lt!2020671 () Unit!146993)

(assert (=> b!4918909 (= lt!2020664 lt!2020671)))

(declare-fun lt!2020663 () C!26920)

(declare-fun lt!2020669 () List!56771)

(assert (=> b!4918909 (= (++!12302 (++!12302 Nil!56647 (Cons!56647 lt!2020663 Nil!56647)) lt!2020669) (list!17911 input!5492))))

(assert (=> b!4918909 (= lt!2020671 (lemmaMoveElementToOtherListKeepsConcatEq!1376 Nil!56647 lt!2020663 lt!2020669 (list!17911 input!5492)))))

(assert (=> b!4918909 (= lt!2020669 (tail!9652 lt!2020053))))

(assert (=> b!4918909 (= lt!2020663 (head!10505 lt!2020053))))

(declare-fun lt!2020657 () Unit!146993)

(declare-fun lt!2020654 () Unit!146993)

(assert (=> b!4918909 (= lt!2020657 lt!2020654)))

(assert (=> b!4918909 (isPrefix!4945 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) Nil!56647)) (list!17911 input!5492))))

(assert (=> b!4918909 (= lt!2020654 (lemmaAddHeadSuffixToPrefixStillPrefix!758 Nil!56647 (list!17911 input!5492)))))

(declare-fun lt!2020655 () List!56771)

(assert (=> b!4918909 (= lt!2020655 (++!12302 Nil!56647 (Cons!56647 (head!10505 lt!2020053) Nil!56647)))))

(declare-fun lt!2020649 () Unit!146993)

(declare-fun e!3074021 () Unit!146993)

(assert (=> b!4918909 (= lt!2020649 e!3074021)))

(declare-fun c!836744 () Bool)

(assert (=> b!4918909 (= c!836744 (= (size!37424 Nil!56647) (size!37424 (list!17911 input!5492))))))

(declare-fun lt!2020672 () Unit!146993)

(declare-fun lt!2020658 () Unit!146993)

(assert (=> b!4918909 (= lt!2020672 lt!2020658)))

(assert (=> b!4918909 (<= (size!37424 Nil!56647) (size!37424 (list!17911 input!5492)))))

(assert (=> b!4918909 (= lt!2020658 (lemmaIsPrefixThenSmallerEqSize!670 Nil!56647 (list!17911 input!5492)))))

(declare-fun e!3074018 () tuple2!61070)

(declare-fun e!3074019 () tuple2!61070)

(assert (=> b!4918909 (= e!3074018 e!3074019)))

(declare-fun bm!341995 () Bool)

(assert (=> bm!341995 (= call!341999 (nullableZipper!795 z!3559))))

(declare-fun b!4918910 () Bool)

(declare-fun Unit!147006 () Unit!146993)

(assert (=> b!4918910 (= e!3074021 Unit!147006)))

(declare-fun lt!2020651 () Unit!146993)

(assert (=> b!4918910 (= lt!2020651 call!342002)))

(declare-fun call!342005 () Bool)

(assert (=> b!4918910 call!342005))

(declare-fun lt!2020660 () Unit!146993)

(assert (=> b!4918910 (= lt!2020660 lt!2020651)))

(declare-fun lt!2020666 () Unit!146993)

(declare-fun call!342000 () Unit!146993)

(assert (=> b!4918910 (= lt!2020666 call!342000)))

(assert (=> b!4918910 (= (list!17911 input!5492) Nil!56647)))

(declare-fun lt!2020656 () Unit!146993)

(assert (=> b!4918910 (= lt!2020656 lt!2020666)))

(assert (=> b!4918910 false))

(declare-fun b!4918911 () Bool)

(declare-fun e!3074022 () tuple2!61070)

(assert (=> b!4918911 (= e!3074022 (tuple2!61071 Nil!56647 lt!2020053))))

(declare-fun b!4918912 () Bool)

(declare-fun e!3074020 () tuple2!61070)

(assert (=> b!4918912 (= e!3074020 e!3074018)))

(declare-fun c!836742 () Bool)

(assert (=> b!4918912 (= c!836742 (= 0 lt!2020052))))

(declare-fun b!4918913 () Bool)

(declare-fun c!836740 () Bool)

(assert (=> b!4918913 (= c!836740 call!341999)))

(declare-fun lt!2020661 () Unit!146993)

(declare-fun lt!2020674 () Unit!146993)

(assert (=> b!4918913 (= lt!2020661 lt!2020674)))

(assert (=> b!4918913 (= (list!17911 input!5492) Nil!56647)))

(assert (=> b!4918913 (= lt!2020674 call!342000)))

(declare-fun lt!2020668 () Unit!146993)

(declare-fun lt!2020650 () Unit!146993)

(assert (=> b!4918913 (= lt!2020668 lt!2020650)))

(assert (=> b!4918913 call!342005))

(assert (=> b!4918913 (= lt!2020650 call!342002)))

(assert (=> b!4918913 (= e!3074018 e!3074025)))

(declare-fun b!4918914 () Bool)

(declare-fun lt!2020673 () tuple2!61070)

(assert (=> b!4918914 (= e!3074022 lt!2020673)))

(declare-fun b!4918915 () Bool)

(declare-fun Unit!147007 () Unit!146993)

(assert (=> b!4918915 (= e!3074021 Unit!147007)))

(declare-fun bm!341997 () Bool)

(declare-fun call!342004 () C!26920)

(assert (=> bm!341997 (= call!342004 (head!10505 lt!2020053))))

(declare-fun b!4918916 () Bool)

(declare-fun call!342003 () tuple2!61070)

(assert (=> b!4918916 (= e!3074019 call!342003)))

(declare-fun b!4918917 () Bool)

(declare-fun e!3074023 () Bool)

(declare-fun e!3074024 () Bool)

(assert (=> b!4918917 (= e!3074023 e!3074024)))

(declare-fun res!2100486 () Bool)

(assert (=> b!4918917 (=> res!2100486 e!3074024)))

(declare-fun lt!2020653 () tuple2!61070)

(assert (=> b!4918917 (= res!2100486 (isEmpty!30552 (_1!33838 lt!2020653)))))

(declare-fun b!4918918 () Bool)

(assert (=> b!4918918 (= e!3074020 (tuple2!61071 Nil!56647 (list!17911 input!5492)))))

(declare-fun bm!341996 () Bool)

(declare-fun call!342001 () List!56771)

(declare-fun call!342006 () (InoxSet Context!5994))

(assert (=> bm!341996 (= call!342003 (findLongestMatchInnerZipper!40 call!342006 lt!2020655 (+ 0 1) call!342001 (list!17911 input!5492) lt!2020052))))

(declare-fun d!1581968 () Bool)

(assert (=> d!1581968 e!3074023))

(declare-fun res!2100485 () Bool)

(assert (=> d!1581968 (=> (not res!2100485) (not e!3074023))))

(assert (=> d!1581968 (= res!2100485 (= (++!12302 (_1!33838 lt!2020653) (_2!33838 lt!2020653)) (list!17911 input!5492)))))

(assert (=> d!1581968 (= lt!2020653 e!3074020)))

(declare-fun c!836745 () Bool)

(assert (=> d!1581968 (= c!836745 (lostCauseZipper!675 z!3559))))

(declare-fun lt!2020659 () Unit!146993)

(declare-fun Unit!147008 () Unit!146993)

(assert (=> d!1581968 (= lt!2020659 Unit!147008)))

(assert (=> d!1581968 (= (getSuffix!2933 (list!17911 input!5492) Nil!56647) lt!2020053)))

(declare-fun lt!2020652 () Unit!146993)

(declare-fun lt!2020670 () Unit!146993)

(assert (=> d!1581968 (= lt!2020652 lt!2020670)))

(declare-fun lt!2020665 () List!56771)

(assert (=> d!1581968 (= lt!2020053 lt!2020665)))

(assert (=> d!1581968 (= lt!2020670 (lemmaSamePrefixThenSameSuffix!2349 Nil!56647 lt!2020053 Nil!56647 lt!2020665 (list!17911 input!5492)))))

(assert (=> d!1581968 (= lt!2020665 (getSuffix!2933 (list!17911 input!5492) Nil!56647))))

(declare-fun lt!2020667 () Unit!146993)

(declare-fun lt!2020662 () Unit!146993)

(assert (=> d!1581968 (= lt!2020667 lt!2020662)))

(assert (=> d!1581968 (isPrefix!4945 Nil!56647 (++!12302 Nil!56647 lt!2020053))))

(assert (=> d!1581968 (= lt!2020662 (lemmaConcatTwoListThenFirstIsPrefix!3169 Nil!56647 lt!2020053))))

(assert (=> d!1581968 (= (++!12302 Nil!56647 lt!2020053) (list!17911 input!5492))))

(assert (=> d!1581968 (= (findLongestMatchInnerZipper!40 z!3559 Nil!56647 0 lt!2020053 (list!17911 input!5492) lt!2020052) lt!2020653)))

(declare-fun b!4918919 () Bool)

(assert (=> b!4918919 (= e!3074019 e!3074022)))

(assert (=> b!4918919 (= lt!2020673 call!342003)))

(declare-fun c!836743 () Bool)

(assert (=> b!4918919 (= c!836743 (isEmpty!30552 (_1!33838 lt!2020673)))))

(declare-fun bm!341998 () Bool)

(assert (=> bm!341998 (= call!342006 (derivationStepZipper!573 z!3559 call!342004))))

(declare-fun b!4918920 () Bool)

(assert (=> b!4918920 (= e!3074024 (>= (size!37424 (_1!33838 lt!2020653)) (size!37424 Nil!56647)))))

(declare-fun b!4918921 () Bool)

(assert (=> b!4918921 (= e!3074025 (tuple2!61071 Nil!56647 (list!17911 input!5492)))))

(declare-fun bm!341999 () Bool)

(assert (=> bm!341999 (= call!342000 (lemmaIsPrefixSameLengthThenSameList!1104 (list!17911 input!5492) Nil!56647 (list!17911 input!5492)))))

(declare-fun bm!342000 () Bool)

(assert (=> bm!342000 (= call!342001 (tail!9652 lt!2020053))))

(declare-fun bm!342001 () Bool)

(assert (=> bm!342001 (= call!342005 (isPrefix!4945 (list!17911 input!5492) (list!17911 input!5492)))))

(assert (= (and d!1581968 c!836745) b!4918918))

(assert (= (and d!1581968 (not c!836745)) b!4918912))

(assert (= (and b!4918912 c!836742) b!4918913))

(assert (= (and b!4918912 (not c!836742)) b!4918909))

(assert (= (and b!4918913 c!836740) b!4918908))

(assert (= (and b!4918913 (not c!836740)) b!4918921))

(assert (= (and b!4918909 c!836744) b!4918910))

(assert (= (and b!4918909 (not c!836744)) b!4918915))

(assert (= (and b!4918909 c!836741) b!4918919))

(assert (= (and b!4918909 (not c!836741)) b!4918916))

(assert (= (and b!4918919 c!836743) b!4918911))

(assert (= (and b!4918919 (not c!836743)) b!4918914))

(assert (= (or b!4918919 b!4918916) bm!342000))

(assert (= (or b!4918919 b!4918916) bm!341997))

(assert (= (or b!4918919 b!4918916) bm!341998))

(assert (= (or b!4918919 b!4918916) bm!341996))

(assert (= (or b!4918913 b!4918910) bm!342001))

(assert (= (or b!4918913 b!4918910) bm!341994))

(assert (= (or b!4918913 b!4918910) bm!341999))

(assert (= (or b!4918913 b!4918909) bm!341995))

(assert (= (and d!1581968 res!2100485) b!4918917))

(assert (= (and b!4918917 (not res!2100486)) b!4918920))

(assert (=> bm!341995 m!5931486))

(assert (=> b!4918909 m!5931280))

(declare-fun m!5932104 () Bool)

(assert (=> b!4918909 m!5932104))

(assert (=> b!4918909 m!5931280))

(declare-fun m!5932106 () Bool)

(assert (=> b!4918909 m!5932106))

(assert (=> b!4918909 m!5931470))

(declare-fun m!5932108 () Bool)

(assert (=> b!4918909 m!5932108))

(assert (=> b!4918909 m!5931280))

(declare-fun m!5932110 () Bool)

(assert (=> b!4918909 m!5932110))

(assert (=> b!4918909 m!5931280))

(assert (=> b!4918909 m!5931470))

(assert (=> b!4918909 m!5931280))

(assert (=> b!4918909 m!5931492))

(declare-fun m!5932112 () Bool)

(assert (=> b!4918909 m!5932112))

(declare-fun m!5932114 () Bool)

(assert (=> b!4918909 m!5932114))

(declare-fun m!5932116 () Bool)

(assert (=> b!4918909 m!5932116))

(assert (=> b!4918909 m!5931280))

(declare-fun m!5932118 () Bool)

(assert (=> b!4918909 m!5932118))

(assert (=> b!4918909 m!5932112))

(assert (=> b!4918909 m!5931424))

(assert (=> b!4918909 m!5932116))

(assert (=> b!4918909 m!5931462))

(declare-fun m!5932120 () Bool)

(assert (=> b!4918909 m!5932120))

(declare-fun m!5932122 () Bool)

(assert (=> b!4918909 m!5932122))

(assert (=> d!1581968 m!5931478))

(assert (=> d!1581968 m!5931466))

(declare-fun m!5932124 () Bool)

(assert (=> d!1581968 m!5932124))

(assert (=> d!1581968 m!5931280))

(declare-fun m!5932126 () Bool)

(assert (=> d!1581968 m!5932126))

(assert (=> d!1581968 m!5931474))

(assert (=> d!1581968 m!5931280))

(assert (=> d!1581968 m!5931470))

(assert (=> d!1581968 m!5931466))

(assert (=> d!1581968 m!5931468))

(assert (=> bm!341994 m!5931280))

(assert (=> bm!341994 m!5931280))

(declare-fun m!5932128 () Bool)

(assert (=> bm!341994 m!5932128))

(declare-fun m!5932130 () Bool)

(assert (=> bm!341998 m!5932130))

(assert (=> bm!341999 m!5931280))

(assert (=> bm!341999 m!5931280))

(declare-fun m!5932132 () Bool)

(assert (=> bm!341999 m!5932132))

(declare-fun m!5932134 () Bool)

(assert (=> b!4918920 m!5932134))

(assert (=> b!4918920 m!5931462))

(declare-fun m!5932136 () Bool)

(assert (=> b!4918917 m!5932136))

(assert (=> bm!342001 m!5931280))

(assert (=> bm!342001 m!5931280))

(declare-fun m!5932138 () Bool)

(assert (=> bm!342001 m!5932138))

(assert (=> bm!342000 m!5931424))

(declare-fun m!5932140 () Bool)

(assert (=> b!4918919 m!5932140))

(assert (=> bm!341997 m!5932122))

(assert (=> bm!341996 m!5931280))

(declare-fun m!5932142 () Bool)

(assert (=> bm!341996 m!5932142))

(assert (=> d!1581798 d!1581968))

(assert (=> d!1581798 d!1581818))

(declare-fun d!1581976 () Bool)

(assert (=> d!1581976 (isPrefix!4945 Nil!56647 (++!12302 Nil!56647 lt!2020053))))

(declare-fun lt!2020690 () Unit!146993)

(declare-fun choose!36008 (List!56771 List!56771) Unit!146993)

(assert (=> d!1581976 (= lt!2020690 (choose!36008 Nil!56647 lt!2020053))))

(assert (=> d!1581976 (= (lemmaConcatTwoListThenFirstIsPrefix!3169 Nil!56647 lt!2020053) lt!2020690)))

(declare-fun bs!1178868 () Bool)

(assert (= bs!1178868 d!1581976))

(assert (=> bs!1178868 m!5931466))

(assert (=> bs!1178868 m!5931466))

(assert (=> bs!1178868 m!5931468))

(declare-fun m!5932164 () Bool)

(assert (=> bs!1178868 m!5932164))

(assert (=> d!1581798 d!1581976))

(declare-fun d!1581984 () Bool)

(declare-fun lt!2020691 () Int)

(assert (=> d!1581984 (>= lt!2020691 0)))

(declare-fun e!3074031 () Int)

(assert (=> d!1581984 (= lt!2020691 e!3074031)))

(declare-fun c!836748 () Bool)

(assert (=> d!1581984 (= c!836748 ((_ is Nil!56647) (list!17911 input!5492)))))

(assert (=> d!1581984 (= (size!37424 (list!17911 input!5492)) lt!2020691)))

(declare-fun b!4918930 () Bool)

(assert (=> b!4918930 (= e!3074031 0)))

(declare-fun b!4918931 () Bool)

(assert (=> b!4918931 (= e!3074031 (+ 1 (size!37424 (t!367195 (list!17911 input!5492)))))))

(assert (= (and d!1581984 c!836748) b!4918930))

(assert (= (and d!1581984 (not c!836748)) b!4918931))

(declare-fun m!5932166 () Bool)

(assert (=> b!4918931 m!5932166))

(assert (=> d!1581814 d!1581984))

(assert (=> d!1581814 d!1581818))

(declare-fun d!1581986 () Bool)

(declare-fun lt!2020697 () Int)

(assert (=> d!1581986 (= lt!2020697 (size!37424 (list!17913 (c!836549 input!5492))))))

(assert (=> d!1581986 (= lt!2020697 (ite ((_ is Empty!14854) (c!836549 input!5492)) 0 (ite ((_ is Leaf!24714) (c!836549 input!5492)) (csize!29939 (c!836549 input!5492)) (csize!29938 (c!836549 input!5492)))))))

(assert (=> d!1581986 (= (size!37425 (c!836549 input!5492)) lt!2020697)))

(declare-fun bs!1178870 () Bool)

(assert (= bs!1178870 d!1581986))

(assert (=> bs!1178870 m!5931498))

(assert (=> bs!1178870 m!5931498))

(declare-fun m!5932172 () Bool)

(assert (=> bs!1178870 m!5932172))

(assert (=> d!1581814 d!1581986))

(declare-fun b!4918933 () Bool)

(declare-fun e!3074032 () List!56771)

(declare-fun e!3074033 () List!56771)

(assert (=> b!4918933 (= e!3074032 e!3074033)))

(declare-fun c!836750 () Bool)

(assert (=> b!4918933 (= c!836750 ((_ is Leaf!24714) (c!836549 input!5492)))))

(declare-fun d!1581990 () Bool)

(declare-fun c!836749 () Bool)

(assert (=> d!1581990 (= c!836749 ((_ is Empty!14854) (c!836549 input!5492)))))

(assert (=> d!1581990 (= (list!17913 (c!836549 input!5492)) e!3074032)))

(declare-fun b!4918934 () Bool)

(assert (=> b!4918934 (= e!3074033 (list!17914 (xs!18172 (c!836549 input!5492))))))

(declare-fun b!4918935 () Bool)

(assert (=> b!4918935 (= e!3074033 (++!12302 (list!17913 (left!41299 (c!836549 input!5492))) (list!17913 (right!41629 (c!836549 input!5492)))))))

(declare-fun b!4918932 () Bool)

(assert (=> b!4918932 (= e!3074032 Nil!56647)))

(assert (= (and d!1581990 c!836749) b!4918932))

(assert (= (and d!1581990 (not c!836749)) b!4918933))

(assert (= (and b!4918933 c!836750) b!4918934))

(assert (= (and b!4918933 (not c!836750)) b!4918935))

(assert (=> b!4918934 m!5931620))

(assert (=> b!4918935 m!5931612))

(assert (=> b!4918935 m!5931930))

(assert (=> b!4918935 m!5931612))

(assert (=> b!4918935 m!5931930))

(declare-fun m!5932174 () Bool)

(assert (=> b!4918935 m!5932174))

(assert (=> d!1581818 d!1581990))

(declare-fun d!1581992 () Bool)

(declare-fun res!2100497 () Bool)

(declare-fun e!3074036 () Bool)

(assert (=> d!1581992 (=> (not res!2100497) (not e!3074036))))

(assert (=> d!1581992 (= res!2100497 (= (csize!29938 (c!836549 input!5492)) (+ (size!37425 (left!41299 (c!836549 input!5492))) (size!37425 (right!41629 (c!836549 input!5492))))))))

(assert (=> d!1581992 (= (inv!73342 (c!836549 input!5492)) e!3074036)))

(declare-fun b!4918942 () Bool)

(declare-fun res!2100498 () Bool)

(assert (=> b!4918942 (=> (not res!2100498) (not e!3074036))))

(assert (=> b!4918942 (= res!2100498 (and (not (= (left!41299 (c!836549 input!5492)) Empty!14854)) (not (= (right!41629 (c!836549 input!5492)) Empty!14854))))))

(declare-fun b!4918943 () Bool)

(declare-fun res!2100499 () Bool)

(assert (=> b!4918943 (=> (not res!2100499) (not e!3074036))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4918943 (= res!2100499 (= (cheight!15065 (c!836549 input!5492)) (+ (max!0 (height!1978 (left!41299 (c!836549 input!5492))) (height!1978 (right!41629 (c!836549 input!5492)))) 1)))))

(declare-fun b!4918944 () Bool)

(assert (=> b!4918944 (= e!3074036 (<= 0 (cheight!15065 (c!836549 input!5492))))))

(assert (= (and d!1581992 res!2100497) b!4918942))

(assert (= (and b!4918942 res!2100498) b!4918943))

(assert (= (and b!4918943 res!2100499) b!4918944))

(assert (=> d!1581992 m!5931616))

(assert (=> d!1581992 m!5931934))

(assert (=> b!4918943 m!5931308))

(assert (=> b!4918943 m!5931310))

(assert (=> b!4918943 m!5931308))

(assert (=> b!4918943 m!5931310))

(declare-fun m!5932176 () Bool)

(assert (=> b!4918943 m!5932176))

(assert (=> b!4918367 d!1581992))

(assert (=> b!4918485 d!1581818))

(declare-fun b!4918945 () Bool)

(declare-fun res!2100505 () Bool)

(declare-fun e!3074037 () Bool)

(assert (=> b!4918945 (=> (not res!2100505) (not e!3074037))))

(assert (=> b!4918945 (= res!2100505 (not (isEmpty!30551 (left!41299 (c!836549 (_1!33835 lt!2020059))))))))

(declare-fun b!4918946 () Bool)

(assert (=> b!4918946 (= e!3074037 (not (isEmpty!30551 (right!41629 (c!836549 (_1!33835 lt!2020059))))))))

(declare-fun b!4918947 () Bool)

(declare-fun res!2100503 () Bool)

(assert (=> b!4918947 (=> (not res!2100503) (not e!3074037))))

(assert (=> b!4918947 (= res!2100503 (<= (- (height!1978 (left!41299 (c!836549 (_1!33835 lt!2020059)))) (height!1978 (right!41629 (c!836549 (_1!33835 lt!2020059))))) 1))))

(declare-fun d!1581994 () Bool)

(declare-fun res!2100500 () Bool)

(declare-fun e!3074038 () Bool)

(assert (=> d!1581994 (=> res!2100500 e!3074038)))

(assert (=> d!1581994 (= res!2100500 (not ((_ is Node!14854) (c!836549 (_1!33835 lt!2020059)))))))

(assert (=> d!1581994 (= (isBalanced!4070 (c!836549 (_1!33835 lt!2020059))) e!3074038)))

(declare-fun b!4918948 () Bool)

(declare-fun res!2100502 () Bool)

(assert (=> b!4918948 (=> (not res!2100502) (not e!3074037))))

(assert (=> b!4918948 (= res!2100502 (isBalanced!4070 (right!41629 (c!836549 (_1!33835 lt!2020059)))))))

(declare-fun b!4918949 () Bool)

(declare-fun res!2100504 () Bool)

(assert (=> b!4918949 (=> (not res!2100504) (not e!3074037))))

(assert (=> b!4918949 (= res!2100504 (isBalanced!4070 (left!41299 (c!836549 (_1!33835 lt!2020059)))))))

(declare-fun b!4918950 () Bool)

(assert (=> b!4918950 (= e!3074038 e!3074037)))

(declare-fun res!2100501 () Bool)

(assert (=> b!4918950 (=> (not res!2100501) (not e!3074037))))

(assert (=> b!4918950 (= res!2100501 (<= (- 1) (- (height!1978 (left!41299 (c!836549 (_1!33835 lt!2020059)))) (height!1978 (right!41629 (c!836549 (_1!33835 lt!2020059)))))))))

(assert (= (and d!1581994 (not res!2100500)) b!4918950))

(assert (= (and b!4918950 res!2100501) b!4918947))

(assert (= (and b!4918947 res!2100503) b!4918949))

(assert (= (and b!4918949 res!2100504) b!4918948))

(assert (= (and b!4918948 res!2100502) b!4918945))

(assert (= (and b!4918945 res!2100505) b!4918946))

(declare-fun m!5932178 () Bool)

(assert (=> b!4918948 m!5932178))

(declare-fun m!5932180 () Bool)

(assert (=> b!4918945 m!5932180))

(declare-fun m!5932182 () Bool)

(assert (=> b!4918950 m!5932182))

(declare-fun m!5932184 () Bool)

(assert (=> b!4918950 m!5932184))

(declare-fun m!5932186 () Bool)

(assert (=> b!4918946 m!5932186))

(assert (=> b!4918947 m!5932182))

(assert (=> b!4918947 m!5932184))

(declare-fun m!5932188 () Bool)

(assert (=> b!4918949 m!5932188))

(assert (=> d!1581794 d!1581994))

(declare-fun bm!342032 () Bool)

(declare-fun c!836787 () Bool)

(declare-fun c!836789 () Bool)

(assert (=> bm!342032 (= c!836787 c!836789)))

(declare-fun e!3074086 () List!56771)

(declare-fun call!342037 () tuple2!61070)

(declare-fun e!3074076 () Int)

(assert (=> bm!342032 (= call!342037 (splitAtIndex!85 e!3074086 (ite c!836789 lt!2020051 e!3074076)))))

(declare-fun c!836792 () Bool)

(declare-fun lt!2020780 () List!56771)

(declare-fun lt!2020778 () List!56771)

(declare-fun b!4919023 () Bool)

(assert (=> b!4919023 (= e!3074086 (ite c!836792 lt!2020778 lt!2020780))))

(declare-fun b!4919024 () Bool)

(declare-fun e!3074082 () tuple2!61070)

(assert (=> b!4919024 (= e!3074082 (tuple2!61071 lt!2020778 lt!2020780))))

(declare-fun b!4919025 () Bool)

(declare-fun lt!2020781 () tuple2!61068)

(declare-fun call!342041 () tuple2!61068)

(assert (=> b!4919025 (= lt!2020781 call!342041)))

(declare-fun e!3074078 () tuple2!61068)

(declare-fun call!342040 () Conc!14854)

(assert (=> b!4919025 (= e!3074078 (tuple2!61069 (_1!33837 lt!2020781) call!342040))))

(declare-fun b!4919026 () Bool)

(declare-fun e!3074081 () tuple2!61068)

(assert (=> b!4919026 (= e!3074081 e!3074078)))

(declare-fun c!836790 () Bool)

(assert (=> b!4919026 (= c!836790 (< lt!2020051 (size!37425 (left!41299 (c!836549 input!5492)))))))

(declare-fun b!4919028 () Bool)

(declare-fun e!3074077 () tuple2!61068)

(assert (=> b!4919028 (= e!3074077 (tuple2!61069 (c!836549 input!5492) (c!836549 input!5492)))))

(declare-fun b!4919029 () Bool)

(assert (=> b!4919029 (= e!3074076 lt!2020051)))

(declare-fun b!4919030 () Bool)

(declare-fun e!3074080 () tuple2!61070)

(assert (=> b!4919030 (= e!3074082 e!3074080)))

(declare-fun call!342042 () Int)

(assert (=> b!4919030 (= c!836792 (< lt!2020051 call!342042))))

(declare-fun b!4919031 () Bool)

(declare-fun e!3074085 () tuple2!61068)

(declare-fun e!3074075 () tuple2!61068)

(assert (=> b!4919031 (= e!3074085 e!3074075)))

(declare-fun c!836788 () Bool)

(assert (=> b!4919031 (= c!836788 (= lt!2020051 (csize!29939 (c!836549 input!5492))))))

(declare-fun b!4919032 () Bool)

(declare-fun e!3074083 () Int)

(assert (=> b!4919032 (= e!3074083 lt!2020051)))

(declare-fun bm!342033 () Bool)

(declare-fun c!836785 () Bool)

(assert (=> bm!342033 (= c!836785 c!836792)))

(declare-fun call!342039 () tuple2!61070)

(assert (=> bm!342033 (= call!342039 call!342037)))

(declare-fun b!4919033 () Bool)

(declare-fun c!836793 () Bool)

(assert (=> b!4919033 (= c!836793 (= (size!37425 (left!41299 (c!836549 input!5492))) lt!2020051))))

(declare-fun lt!2020777 () Unit!146993)

(declare-fun lt!2020785 () Unit!146993)

(assert (=> b!4919033 (= lt!2020777 lt!2020785)))

(assert (=> b!4919033 (= (splitAtIndex!85 (++!12302 lt!2020778 lt!2020780) lt!2020051) e!3074082)))

(declare-fun c!836794 () Bool)

(assert (=> b!4919033 (= c!836794 (= call!342042 lt!2020051))))

(declare-fun splitAtLemma!24 (List!56771 List!56771 Int) Unit!146993)

(assert (=> b!4919033 (= lt!2020785 (splitAtLemma!24 lt!2020778 lt!2020780 lt!2020051))))

(assert (=> b!4919033 (= lt!2020780 (list!17913 (right!41629 (c!836549 input!5492))))))

(assert (=> b!4919033 (= lt!2020778 (list!17913 (left!41299 (c!836549 input!5492))))))

(declare-fun e!3074079 () tuple2!61068)

(assert (=> b!4919033 (= e!3074079 e!3074081)))

(declare-fun b!4919034 () Bool)

(declare-fun lt!2020776 () tuple2!61068)

(assert (=> b!4919034 (= lt!2020776 call!342041)))

(assert (=> b!4919034 (= e!3074078 (tuple2!61069 call!342040 (_2!33837 lt!2020776)))))

(declare-fun b!4919035 () Bool)

(assert (=> b!4919035 (= e!3074077 e!3074079)))

(assert (=> b!4919035 (= c!836789 ((_ is Leaf!24714) (c!836549 input!5492)))))

(declare-fun b!4919036 () Bool)

(assert (=> b!4919036 (= e!3074083 (- lt!2020051 (size!37425 (left!41299 (c!836549 input!5492)))))))

(declare-fun b!4919037 () Bool)

(declare-fun c!836791 () Bool)

(assert (=> b!4919037 (= c!836791 (<= lt!2020051 0))))

(assert (=> b!4919037 (= e!3074079 e!3074085)))

(declare-fun b!4919038 () Bool)

(assert (=> b!4919038 (= e!3074081 (tuple2!61069 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))))))

(declare-fun b!4919039 () Bool)

(assert (=> b!4919039 (= e!3074076 (- lt!2020051 call!342042))))

(declare-fun b!4919040 () Bool)

(declare-fun lt!2020787 () tuple2!61070)

(assert (=> b!4919040 (= lt!2020787 call!342039)))

(declare-fun call!342038 () List!56771)

(assert (=> b!4919040 (= e!3074080 (tuple2!61071 (_1!33838 lt!2020787) call!342038))))

(declare-fun b!4919041 () Bool)

(declare-fun lt!2020782 () tuple2!61070)

(assert (=> b!4919041 (= lt!2020782 call!342039)))

(assert (=> b!4919041 (= e!3074080 (tuple2!61071 call!342038 (_2!33838 lt!2020782)))))

(declare-fun b!4919042 () Bool)

(assert (=> b!4919042 (= e!3074075 (tuple2!61069 (c!836549 input!5492) Empty!14854))))

(declare-fun d!1581996 () Bool)

(declare-fun e!3074084 () Bool)

(assert (=> d!1581996 e!3074084))

(declare-fun res!2100511 () Bool)

(assert (=> d!1581996 (=> (not res!2100511) (not e!3074084))))

(declare-fun lt!2020784 () tuple2!61068)

(assert (=> d!1581996 (= res!2100511 (isBalanced!4070 (_1!33837 lt!2020784)))))

(assert (=> d!1581996 (= lt!2020784 e!3074077)))

(declare-fun c!836786 () Bool)

(assert (=> d!1581996 (= c!836786 ((_ is Empty!14854) (c!836549 input!5492)))))

(assert (=> d!1581996 (isBalanced!4070 (c!836549 input!5492))))

(assert (=> d!1581996 (= (splitAt!237 (c!836549 input!5492) lt!2020051) lt!2020784)))

(declare-fun b!4919027 () Bool)

(assert (=> b!4919027 (= e!3074085 (tuple2!61069 Empty!14854 (c!836549 input!5492)))))

(declare-fun bm!342034 () Bool)

(declare-fun lt!2020788 () List!56771)

(assert (=> bm!342034 (= call!342042 (size!37424 (ite c!836789 lt!2020788 lt!2020778)))))

(declare-fun b!4919043 () Bool)

(declare-fun lt!2020779 () Unit!146993)

(declare-fun lt!2020786 () Unit!146993)

(assert (=> b!4919043 (= lt!2020779 lt!2020786)))

(declare-fun slice!764 (List!56771 Int Int) List!56771)

(assert (=> b!4919043 (= (drop!2209 lt!2020788 lt!2020051) (slice!764 lt!2020788 lt!2020051 call!342042))))

(declare-fun dropLemma!24 (List!56771 Int) Unit!146993)

(assert (=> b!4919043 (= lt!2020786 (dropLemma!24 lt!2020788 lt!2020051))))

(assert (=> b!4919043 (= lt!2020788 (list!17914 (xs!18172 (c!836549 input!5492))))))

(declare-fun lt!2020783 () tuple2!61070)

(assert (=> b!4919043 (= lt!2020783 call!342037)))

(declare-fun slice!765 (IArray!29769 Int Int) IArray!29769)

(assert (=> b!4919043 (= e!3074075 (tuple2!61069 (Leaf!24714 (slice!765 (xs!18172 (c!836549 input!5492)) 0 lt!2020051) lt!2020051) (Leaf!24714 (slice!765 (xs!18172 (c!836549 input!5492)) lt!2020051 (csize!29939 (c!836549 input!5492))) (- (csize!29939 (c!836549 input!5492)) lt!2020051))))))

(declare-fun b!4919044 () Bool)

(declare-fun res!2100510 () Bool)

(assert (=> b!4919044 (=> (not res!2100510) (not e!3074084))))

(assert (=> b!4919044 (= res!2100510 (isBalanced!4070 (_2!33837 lt!2020784)))))

(declare-fun bm!342035 () Bool)

(declare-fun c!836795 () Bool)

(assert (=> bm!342035 (= c!836795 c!836790)))

(assert (=> bm!342035 (= call!342041 (splitAt!237 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))) e!3074083))))

(declare-fun b!4919045 () Bool)

(assert (=> b!4919045 (= e!3074084 (= (tuple2!61071 (list!17913 (_1!33837 lt!2020784)) (list!17913 (_2!33837 lt!2020784))) (splitAtIndex!85 (list!17913 (c!836549 input!5492)) lt!2020051)))))

(declare-fun bm!342036 () Bool)

(declare-fun ++!12304 (Conc!14854 Conc!14854) Conc!14854)

(assert (=> bm!342036 (= call!342040 (++!12304 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492))) (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776))))))

(declare-fun bm!342037 () Bool)

(assert (=> bm!342037 (= call!342038 (++!12302 (ite c!836792 (_2!33838 lt!2020787) lt!2020778) (ite c!836792 lt!2020780 (_1!33838 lt!2020782))))))

(declare-fun b!4919046 () Bool)

(assert (=> b!4919046 (= e!3074086 (list!17914 (xs!18172 (c!836549 input!5492))))))

(assert (= (and d!1581996 c!836786) b!4919028))

(assert (= (and d!1581996 (not c!836786)) b!4919035))

(assert (= (and b!4919035 c!836789) b!4919037))

(assert (= (and b!4919035 (not c!836789)) b!4919033))

(assert (= (and b!4919037 c!836791) b!4919027))

(assert (= (and b!4919037 (not c!836791)) b!4919031))

(assert (= (and b!4919031 c!836788) b!4919042))

(assert (= (and b!4919031 (not c!836788)) b!4919043))

(assert (= (and b!4919033 c!836794) b!4919024))

(assert (= (and b!4919033 (not c!836794)) b!4919030))

(assert (= (and b!4919030 c!836792) b!4919040))

(assert (= (and b!4919030 (not c!836792)) b!4919041))

(assert (= (or b!4919040 b!4919041) bm!342037))

(assert (= (or b!4919040 b!4919041) bm!342033))

(assert (= (and bm!342033 c!836785) b!4919029))

(assert (= (and bm!342033 (not c!836785)) b!4919039))

(assert (= (and b!4919033 c!836793) b!4919038))

(assert (= (and b!4919033 (not c!836793)) b!4919026))

(assert (= (and b!4919026 c!836790) b!4919025))

(assert (= (and b!4919026 (not c!836790)) b!4919034))

(assert (= (or b!4919025 b!4919034) bm!342036))

(assert (= (or b!4919025 b!4919034) bm!342035))

(assert (= (and bm!342035 c!836795) b!4919032))

(assert (= (and bm!342035 (not c!836795)) b!4919036))

(assert (= (or b!4919043 b!4919030 b!4919033 b!4919039) bm!342034))

(assert (= (or b!4919043 bm!342033) bm!342032))

(assert (= (and bm!342032 c!836787) b!4919046))

(assert (= (and bm!342032 (not c!836787)) b!4919023))

(assert (= (and d!1581996 res!2100511) b!4919044))

(assert (= (and b!4919044 res!2100510) b!4919045))

(assert (=> b!4919046 m!5931620))

(declare-fun m!5932190 () Bool)

(assert (=> bm!342034 m!5932190))

(declare-fun m!5932192 () Bool)

(assert (=> bm!342032 m!5932192))

(declare-fun m!5932194 () Bool)

(assert (=> b!4919044 m!5932194))

(assert (=> b!4919033 m!5931612))

(assert (=> b!4919033 m!5931616))

(declare-fun m!5932196 () Bool)

(assert (=> b!4919033 m!5932196))

(declare-fun m!5932198 () Bool)

(assert (=> b!4919033 m!5932198))

(assert (=> b!4919033 m!5932198))

(declare-fun m!5932200 () Bool)

(assert (=> b!4919033 m!5932200))

(assert (=> b!4919033 m!5931930))

(declare-fun m!5932202 () Bool)

(assert (=> b!4919043 m!5932202))

(assert (=> b!4919043 m!5931620))

(declare-fun m!5932204 () Bool)

(assert (=> b!4919043 m!5932204))

(declare-fun m!5932206 () Bool)

(assert (=> b!4919043 m!5932206))

(declare-fun m!5932208 () Bool)

(assert (=> b!4919043 m!5932208))

(declare-fun m!5932210 () Bool)

(assert (=> b!4919043 m!5932210))

(declare-fun m!5932212 () Bool)

(assert (=> bm!342035 m!5932212))

(declare-fun m!5932214 () Bool)

(assert (=> bm!342036 m!5932214))

(assert (=> b!4919036 m!5931616))

(assert (=> b!4919026 m!5931616))

(declare-fun m!5932216 () Bool)

(assert (=> b!4919045 m!5932216))

(declare-fun m!5932218 () Bool)

(assert (=> b!4919045 m!5932218))

(assert (=> b!4919045 m!5931498))

(assert (=> b!4919045 m!5931498))

(declare-fun m!5932220 () Bool)

(assert (=> b!4919045 m!5932220))

(declare-fun m!5932222 () Bool)

(assert (=> bm!342037 m!5932222))

(declare-fun m!5932224 () Bool)

(assert (=> d!1581996 m!5932224))

(assert (=> d!1581996 m!5931278))

(assert (=> d!1581794 d!1581996))

(assert (=> d!1581794 d!1581796))

(declare-fun d!1581998 () Bool)

(assert (=> d!1581998 (= (list!17911 (ite c!836592 input!5492 (_2!33835 lt!2020316))) (list!17913 (c!836549 (ite c!836592 input!5492 (_2!33835 lt!2020316)))))))

(declare-fun bs!1178871 () Bool)

(assert (= bs!1178871 d!1581998))

(declare-fun m!5932226 () Bool)

(assert (=> bs!1178871 m!5932226))

(assert (=> bm!341920 d!1581998))

(declare-fun b!4919051 () Bool)

(declare-fun res!2100521 () Bool)

(declare-fun e!3074091 () Bool)

(assert (=> b!4919051 (=> (not res!2100521) (not e!3074091))))

(assert (=> b!4919051 (= res!2100521 (not (isEmpty!30551 (left!41299 (right!41629 (c!836549 input!5492))))))))

(declare-fun b!4919052 () Bool)

(assert (=> b!4919052 (= e!3074091 (not (isEmpty!30551 (right!41629 (right!41629 (c!836549 input!5492))))))))

(declare-fun b!4919053 () Bool)

(declare-fun res!2100519 () Bool)

(assert (=> b!4919053 (=> (not res!2100519) (not e!3074091))))

(assert (=> b!4919053 (= res!2100519 (<= (- (height!1978 (left!41299 (right!41629 (c!836549 input!5492)))) (height!1978 (right!41629 (right!41629 (c!836549 input!5492))))) 1))))

(declare-fun d!1582000 () Bool)

(declare-fun res!2100516 () Bool)

(declare-fun e!3074092 () Bool)

(assert (=> d!1582000 (=> res!2100516 e!3074092)))

(assert (=> d!1582000 (= res!2100516 (not ((_ is Node!14854) (right!41629 (c!836549 input!5492)))))))

(assert (=> d!1582000 (= (isBalanced!4070 (right!41629 (c!836549 input!5492))) e!3074092)))

(declare-fun b!4919054 () Bool)

(declare-fun res!2100518 () Bool)

(assert (=> b!4919054 (=> (not res!2100518) (not e!3074091))))

(assert (=> b!4919054 (= res!2100518 (isBalanced!4070 (right!41629 (right!41629 (c!836549 input!5492)))))))

(declare-fun b!4919055 () Bool)

(declare-fun res!2100520 () Bool)

(assert (=> b!4919055 (=> (not res!2100520) (not e!3074091))))

(assert (=> b!4919055 (= res!2100520 (isBalanced!4070 (left!41299 (right!41629 (c!836549 input!5492)))))))

(declare-fun b!4919056 () Bool)

(assert (=> b!4919056 (= e!3074092 e!3074091)))

(declare-fun res!2100517 () Bool)

(assert (=> b!4919056 (=> (not res!2100517) (not e!3074091))))

(assert (=> b!4919056 (= res!2100517 (<= (- 1) (- (height!1978 (left!41299 (right!41629 (c!836549 input!5492)))) (height!1978 (right!41629 (right!41629 (c!836549 input!5492)))))))))

(assert (= (and d!1582000 (not res!2100516)) b!4919056))

(assert (= (and b!4919056 res!2100517) b!4919053))

(assert (= (and b!4919053 res!2100519) b!4919055))

(assert (= (and b!4919055 res!2100520) b!4919054))

(assert (= (and b!4919054 res!2100518) b!4919051))

(assert (= (and b!4919051 res!2100521) b!4919052))

(declare-fun m!5932228 () Bool)

(assert (=> b!4919054 m!5932228))

(declare-fun m!5932230 () Bool)

(assert (=> b!4919051 m!5932230))

(declare-fun m!5932232 () Bool)

(assert (=> b!4919056 m!5932232))

(declare-fun m!5932234 () Bool)

(assert (=> b!4919056 m!5932234))

(declare-fun m!5932236 () Bool)

(assert (=> b!4919052 m!5932236))

(assert (=> b!4919053 m!5932232))

(assert (=> b!4919053 m!5932234))

(declare-fun m!5932238 () Bool)

(assert (=> b!4919055 m!5932238))

(assert (=> b!4918391 d!1582000))

(assert (=> b!4918484 d!1581818))

(assert (=> d!1581820 d!1581796))

(declare-fun b!4919057 () Bool)

(declare-fun res!2100527 () Bool)

(declare-fun e!3074093 () Bool)

(assert (=> b!4919057 (=> (not res!2100527) (not e!3074093))))

(assert (=> b!4919057 (= res!2100527 (not (isEmpty!30551 (left!41299 (left!41299 (c!836549 input!5492))))))))

(declare-fun b!4919058 () Bool)

(assert (=> b!4919058 (= e!3074093 (not (isEmpty!30551 (right!41629 (left!41299 (c!836549 input!5492))))))))

(declare-fun b!4919059 () Bool)

(declare-fun res!2100525 () Bool)

(assert (=> b!4919059 (=> (not res!2100525) (not e!3074093))))

(assert (=> b!4919059 (= res!2100525 (<= (- (height!1978 (left!41299 (left!41299 (c!836549 input!5492)))) (height!1978 (right!41629 (left!41299 (c!836549 input!5492))))) 1))))

(declare-fun d!1582002 () Bool)

(declare-fun res!2100522 () Bool)

(declare-fun e!3074094 () Bool)

(assert (=> d!1582002 (=> res!2100522 e!3074094)))

(assert (=> d!1582002 (= res!2100522 (not ((_ is Node!14854) (left!41299 (c!836549 input!5492)))))))

(assert (=> d!1582002 (= (isBalanced!4070 (left!41299 (c!836549 input!5492))) e!3074094)))

(declare-fun b!4919060 () Bool)

(declare-fun res!2100524 () Bool)

(assert (=> b!4919060 (=> (not res!2100524) (not e!3074093))))

(assert (=> b!4919060 (= res!2100524 (isBalanced!4070 (right!41629 (left!41299 (c!836549 input!5492)))))))

(declare-fun b!4919061 () Bool)

(declare-fun res!2100526 () Bool)

(assert (=> b!4919061 (=> (not res!2100526) (not e!3074093))))

(assert (=> b!4919061 (= res!2100526 (isBalanced!4070 (left!41299 (left!41299 (c!836549 input!5492)))))))

(declare-fun b!4919062 () Bool)

(assert (=> b!4919062 (= e!3074094 e!3074093)))

(declare-fun res!2100523 () Bool)

(assert (=> b!4919062 (=> (not res!2100523) (not e!3074093))))

(assert (=> b!4919062 (= res!2100523 (<= (- 1) (- (height!1978 (left!41299 (left!41299 (c!836549 input!5492)))) (height!1978 (right!41629 (left!41299 (c!836549 input!5492)))))))))

(assert (= (and d!1582002 (not res!2100522)) b!4919062))

(assert (= (and b!4919062 res!2100523) b!4919059))

(assert (= (and b!4919059 res!2100525) b!4919061))

(assert (= (and b!4919061 res!2100526) b!4919060))

(assert (= (and b!4919060 res!2100524) b!4919057))

(assert (= (and b!4919057 res!2100527) b!4919058))

(declare-fun m!5932240 () Bool)

(assert (=> b!4919060 m!5932240))

(declare-fun m!5932242 () Bool)

(assert (=> b!4919057 m!5932242))

(declare-fun m!5932244 () Bool)

(assert (=> b!4919062 m!5932244))

(declare-fun m!5932246 () Bool)

(assert (=> b!4919062 m!5932246))

(declare-fun m!5932248 () Bool)

(assert (=> b!4919058 m!5932248))

(assert (=> b!4919059 m!5932244))

(assert (=> b!4919059 m!5932246))

(declare-fun m!5932250 () Bool)

(assert (=> b!4919061 m!5932250))

(assert (=> b!4918392 d!1582002))

(declare-fun d!1582004 () Bool)

(assert (=> d!1582004 true))

(declare-fun lambda!245023 () Int)

(declare-fun flatMap!260 ((InoxSet Context!5994) Int) (InoxSet Context!5994))

(assert (=> d!1582004 (= (derivationStepZipper!573 z!3559 call!341927) (flatMap!260 z!3559 lambda!245023))))

(declare-fun bs!1178872 () Bool)

(assert (= bs!1178872 d!1582004))

(declare-fun m!5932252 () Bool)

(assert (=> bs!1178872 m!5932252))

(assert (=> bm!341919 d!1582004))

(assert (=> b!4918393 d!1581938))

(assert (=> b!4918393 d!1581942))

(declare-fun b!4919065 () Bool)

(declare-fun e!3074097 () Bool)

(declare-fun e!3074096 () Bool)

(assert (=> b!4919065 (= e!3074097 e!3074096)))

(declare-fun res!2100531 () Bool)

(assert (=> b!4919065 (=> (not res!2100531) (not e!3074096))))

(assert (=> b!4919065 (= res!2100531 (not ((_ is Nil!56647) (ite c!836592 lt!2020301 lt!2020313))))))

(declare-fun b!4919067 () Bool)

(assert (=> b!4919067 (= e!3074096 (isPrefix!4945 (tail!9652 (ite c!836592 lt!2020299 lt!2020303)) (tail!9652 (ite c!836592 lt!2020301 lt!2020313))))))

(declare-fun e!3074095 () Bool)

(declare-fun b!4919068 () Bool)

(assert (=> b!4919068 (= e!3074095 (>= (size!37424 (ite c!836592 lt!2020301 lt!2020313)) (size!37424 (ite c!836592 lt!2020299 lt!2020303))))))

(declare-fun d!1582006 () Bool)

(assert (=> d!1582006 e!3074095))

(declare-fun res!2100530 () Bool)

(assert (=> d!1582006 (=> res!2100530 e!3074095)))

(declare-fun lt!2020789 () Bool)

(assert (=> d!1582006 (= res!2100530 (not lt!2020789))))

(assert (=> d!1582006 (= lt!2020789 e!3074097)))

(declare-fun res!2100529 () Bool)

(assert (=> d!1582006 (=> res!2100529 e!3074097)))

(assert (=> d!1582006 (= res!2100529 ((_ is Nil!56647) (ite c!836592 lt!2020299 lt!2020303)))))

(assert (=> d!1582006 (= (isPrefix!4945 (ite c!836592 lt!2020299 lt!2020303) (ite c!836592 lt!2020301 lt!2020313)) lt!2020789)))

(declare-fun b!4919066 () Bool)

(declare-fun res!2100528 () Bool)

(assert (=> b!4919066 (=> (not res!2100528) (not e!3074096))))

(assert (=> b!4919066 (= res!2100528 (= (head!10505 (ite c!836592 lt!2020299 lt!2020303)) (head!10505 (ite c!836592 lt!2020301 lt!2020313))))))

(assert (= (and d!1582006 (not res!2100529)) b!4919065))

(assert (= (and b!4919065 res!2100531) b!4919066))

(assert (= (and b!4919066 res!2100528) b!4919067))

(assert (= (and d!1582006 (not res!2100530)) b!4919068))

(declare-fun m!5932254 () Bool)

(assert (=> b!4919067 m!5932254))

(declare-fun m!5932256 () Bool)

(assert (=> b!4919067 m!5932256))

(assert (=> b!4919067 m!5932254))

(assert (=> b!4919067 m!5932256))

(declare-fun m!5932258 () Bool)

(assert (=> b!4919067 m!5932258))

(declare-fun m!5932260 () Bool)

(assert (=> b!4919068 m!5932260))

(declare-fun m!5932262 () Bool)

(assert (=> b!4919068 m!5932262))

(declare-fun m!5932264 () Bool)

(assert (=> b!4919066 m!5932264))

(declare-fun m!5932266 () Bool)

(assert (=> b!4919066 m!5932266))

(assert (=> bm!341922 d!1582006))

(assert (=> b!4918349 d!1581790))

(declare-fun d!1582008 () Bool)

(declare-fun res!2100538 () Bool)

(declare-fun e!3074110 () Bool)

(assert (=> d!1582008 (=> res!2100538 e!3074110)))

(assert (=> d!1582008 (= res!2100538 ((_ is Nil!56648) (exprs!3497 setElem!27414)))))

(assert (=> d!1582008 (= (forall!13113 (exprs!3497 setElem!27414) lambda!244986) e!3074110)))

(declare-fun b!4919087 () Bool)

(declare-fun e!3074111 () Bool)

(assert (=> b!4919087 (= e!3074110 e!3074111)))

(declare-fun res!2100539 () Bool)

(assert (=> b!4919087 (=> (not res!2100539) (not e!3074111))))

(declare-fun dynLambda!23002 (Int Regex!13355) Bool)

(assert (=> b!4919087 (= res!2100539 (dynLambda!23002 lambda!244986 (h!63096 (exprs!3497 setElem!27414))))))

(declare-fun b!4919088 () Bool)

(assert (=> b!4919088 (= e!3074111 (forall!13113 (t!367196 (exprs!3497 setElem!27414)) lambda!244986))))

(assert (= (and d!1582008 (not res!2100538)) b!4919087))

(assert (= (and b!4919087 res!2100539) b!4919088))

(declare-fun b_lambda!196241 () Bool)

(assert (=> (not b_lambda!196241) (not b!4919087)))

(declare-fun m!5932274 () Bool)

(assert (=> b!4919087 m!5932274))

(declare-fun m!5932276 () Bool)

(assert (=> b!4919088 m!5932276))

(assert (=> d!1581822 d!1582008))

(declare-fun b!4919089 () Bool)

(declare-fun res!2100545 () Bool)

(declare-fun e!3074112 () Bool)

(assert (=> b!4919089 (=> (not res!2100545) (not e!3074112))))

(assert (=> b!4919089 (= res!2100545 (not (isEmpty!30551 (left!41299 (c!836549 (_2!33835 lt!2020059))))))))

(declare-fun b!4919090 () Bool)

(assert (=> b!4919090 (= e!3074112 (not (isEmpty!30551 (right!41629 (c!836549 (_2!33835 lt!2020059))))))))

(declare-fun b!4919091 () Bool)

(declare-fun res!2100543 () Bool)

(assert (=> b!4919091 (=> (not res!2100543) (not e!3074112))))

(assert (=> b!4919091 (= res!2100543 (<= (- (height!1978 (left!41299 (c!836549 (_2!33835 lt!2020059)))) (height!1978 (right!41629 (c!836549 (_2!33835 lt!2020059))))) 1))))

(declare-fun d!1582010 () Bool)

(declare-fun res!2100540 () Bool)

(declare-fun e!3074113 () Bool)

(assert (=> d!1582010 (=> res!2100540 e!3074113)))

(assert (=> d!1582010 (= res!2100540 (not ((_ is Node!14854) (c!836549 (_2!33835 lt!2020059)))))))

(assert (=> d!1582010 (= (isBalanced!4070 (c!836549 (_2!33835 lt!2020059))) e!3074113)))

(declare-fun b!4919092 () Bool)

(declare-fun res!2100542 () Bool)

(assert (=> b!4919092 (=> (not res!2100542) (not e!3074112))))

(assert (=> b!4919092 (= res!2100542 (isBalanced!4070 (right!41629 (c!836549 (_2!33835 lt!2020059)))))))

(declare-fun b!4919093 () Bool)

(declare-fun res!2100544 () Bool)

(assert (=> b!4919093 (=> (not res!2100544) (not e!3074112))))

(assert (=> b!4919093 (= res!2100544 (isBalanced!4070 (left!41299 (c!836549 (_2!33835 lt!2020059)))))))

(declare-fun b!4919094 () Bool)

(assert (=> b!4919094 (= e!3074113 e!3074112)))

(declare-fun res!2100541 () Bool)

(assert (=> b!4919094 (=> (not res!2100541) (not e!3074112))))

(assert (=> b!4919094 (= res!2100541 (<= (- 1) (- (height!1978 (left!41299 (c!836549 (_2!33835 lt!2020059)))) (height!1978 (right!41629 (c!836549 (_2!33835 lt!2020059)))))))))

(assert (= (and d!1582010 (not res!2100540)) b!4919094))

(assert (= (and b!4919094 res!2100541) b!4919091))

(assert (= (and b!4919091 res!2100543) b!4919093))

(assert (= (and b!4919093 res!2100544) b!4919092))

(assert (= (and b!4919092 res!2100542) b!4919089))

(assert (= (and b!4919089 res!2100545) b!4919090))

(declare-fun m!5932302 () Bool)

(assert (=> b!4919092 m!5932302))

(declare-fun m!5932304 () Bool)

(assert (=> b!4919089 m!5932304))

(declare-fun m!5932306 () Bool)

(assert (=> b!4919094 m!5932306))

(declare-fun m!5932308 () Bool)

(assert (=> b!4919094 m!5932308))

(declare-fun m!5932312 () Bool)

(assert (=> b!4919090 m!5932312))

(assert (=> b!4919091 m!5932306))

(assert (=> b!4919091 m!5932308))

(declare-fun m!5932314 () Bool)

(assert (=> b!4919093 m!5932314))

(assert (=> b!4918374 d!1582010))

(declare-fun d!1582012 () Bool)

(assert (=> d!1582012 (= (list!17911 (_1!33835 lt!2020059)) (list!17913 (c!836549 (_1!33835 lt!2020059))))))

(declare-fun bs!1178873 () Bool)

(assert (= bs!1178873 d!1582012))

(declare-fun m!5932320 () Bool)

(assert (=> bs!1178873 m!5932320))

(assert (=> b!4918375 d!1582012))

(declare-fun d!1582014 () Bool)

(assert (=> d!1582014 (= (list!17911 (_2!33835 lt!2020059)) (list!17913 (c!836549 (_2!33835 lt!2020059))))))

(declare-fun bs!1178874 () Bool)

(assert (= bs!1178874 d!1582014))

(declare-fun m!5932326 () Bool)

(assert (=> bs!1178874 m!5932326))

(assert (=> b!4918375 d!1582014))

(declare-fun b!4919116 () Bool)

(declare-fun e!3074127 () Bool)

(declare-fun lt!2020823 () tuple2!61070)

(assert (=> b!4919116 (= e!3074127 (= (_2!33838 lt!2020823) (drop!2209 (list!17911 input!5492) lt!2020051)))))

(declare-fun b!4919117 () Bool)

(declare-fun res!2100557 () Bool)

(assert (=> b!4919117 (=> (not res!2100557) (not e!3074127))))

(declare-fun take!575 (List!56771 Int) List!56771)

(assert (=> b!4919117 (= res!2100557 (= (_1!33838 lt!2020823) (take!575 (list!17911 input!5492) lt!2020051)))))

(declare-fun b!4919118 () Bool)

(declare-fun e!3074129 () tuple2!61070)

(declare-fun e!3074128 () tuple2!61070)

(assert (=> b!4919118 (= e!3074129 e!3074128)))

(declare-fun c!836810 () Bool)

(assert (=> b!4919118 (= c!836810 (<= lt!2020051 0))))

(declare-fun b!4919119 () Bool)

(assert (=> b!4919119 (= e!3074129 (tuple2!61071 Nil!56647 Nil!56647))))

(declare-fun b!4919120 () Bool)

(declare-fun lt!2020822 () tuple2!61070)

(assert (=> b!4919120 (= lt!2020822 (splitAtIndex!85 (t!367195 (list!17911 input!5492)) (- lt!2020051 1)))))

(assert (=> b!4919120 (= e!3074128 (tuple2!61071 (Cons!56647 (h!63095 (list!17911 input!5492)) (_1!33838 lt!2020822)) (_2!33838 lt!2020822)))))

(declare-fun d!1582018 () Bool)

(assert (=> d!1582018 e!3074127))

(declare-fun res!2100556 () Bool)

(assert (=> d!1582018 (=> (not res!2100556) (not e!3074127))))

(assert (=> d!1582018 (= res!2100556 (= (++!12302 (_1!33838 lt!2020823) (_2!33838 lt!2020823)) (list!17911 input!5492)))))

(assert (=> d!1582018 (= lt!2020823 e!3074129)))

(declare-fun c!836809 () Bool)

(assert (=> d!1582018 (= c!836809 ((_ is Nil!56647) (list!17911 input!5492)))))

(assert (=> d!1582018 (= (splitAtIndex!85 (list!17911 input!5492) lt!2020051) lt!2020823)))

(declare-fun b!4919115 () Bool)

(assert (=> b!4919115 (= e!3074128 (tuple2!61071 Nil!56647 (list!17911 input!5492)))))

(assert (= (and d!1582018 c!836809) b!4919119))

(assert (= (and d!1582018 (not c!836809)) b!4919118))

(assert (= (and b!4919118 c!836810) b!4919115))

(assert (= (and b!4919118 (not c!836810)) b!4919120))

(assert (= (and d!1582018 res!2100556) b!4919117))

(assert (= (and b!4919117 res!2100557) b!4919116))

(assert (=> b!4919116 m!5931280))

(declare-fun m!5932342 () Bool)

(assert (=> b!4919116 m!5932342))

(assert (=> b!4919117 m!5931280))

(declare-fun m!5932344 () Bool)

(assert (=> b!4919117 m!5932344))

(declare-fun m!5932346 () Bool)

(assert (=> b!4919120 m!5932346))

(declare-fun m!5932348 () Bool)

(assert (=> d!1582018 m!5932348))

(assert (=> b!4918375 d!1582018))

(assert (=> b!4918375 d!1581818))

(assert (=> bm!341921 d!1581880))

(declare-fun tp!1382606 () Bool)

(declare-fun e!3074132 () Bool)

(declare-fun b!4919129 () Bool)

(declare-fun tp!1382607 () Bool)

(assert (=> b!4919129 (= e!3074132 (and (inv!73337 (left!41299 (left!41299 (c!836549 input!5492)))) tp!1382607 (inv!73337 (right!41629 (left!41299 (c!836549 input!5492)))) tp!1382606))))

(declare-fun b!4919131 () Bool)

(declare-fun e!3074135 () Bool)

(declare-fun tp!1382608 () Bool)

(assert (=> b!4919131 (= e!3074135 tp!1382608)))

(declare-fun b!4919130 () Bool)

(assert (=> b!4919130 (= e!3074132 (and (inv!73345 (xs!18172 (left!41299 (c!836549 input!5492)))) e!3074135))))

(assert (=> b!4918519 (= tp!1382592 (and (inv!73337 (left!41299 (c!836549 input!5492))) e!3074132))))

(assert (= (and b!4918519 ((_ is Node!14854) (left!41299 (c!836549 input!5492)))) b!4919129))

(assert (= b!4919130 b!4919131))

(assert (= (and b!4918519 ((_ is Leaf!24714) (left!41299 (c!836549 input!5492)))) b!4919130))

(declare-fun m!5932350 () Bool)

(assert (=> b!4919129 m!5932350))

(declare-fun m!5932352 () Bool)

(assert (=> b!4919129 m!5932352))

(declare-fun m!5932354 () Bool)

(assert (=> b!4919130 m!5932354))

(assert (=> b!4918519 m!5931512))

(declare-fun b!4919132 () Bool)

(declare-fun tp!1382609 () Bool)

(declare-fun e!3074136 () Bool)

(declare-fun tp!1382610 () Bool)

(assert (=> b!4919132 (= e!3074136 (and (inv!73337 (left!41299 (right!41629 (c!836549 input!5492)))) tp!1382610 (inv!73337 (right!41629 (right!41629 (c!836549 input!5492)))) tp!1382609))))

(declare-fun b!4919134 () Bool)

(declare-fun e!3074137 () Bool)

(declare-fun tp!1382611 () Bool)

(assert (=> b!4919134 (= e!3074137 tp!1382611)))

(declare-fun b!4919133 () Bool)

(assert (=> b!4919133 (= e!3074136 (and (inv!73345 (xs!18172 (right!41629 (c!836549 input!5492)))) e!3074137))))

(assert (=> b!4918519 (= tp!1382591 (and (inv!73337 (right!41629 (c!836549 input!5492))) e!3074136))))

(assert (= (and b!4918519 ((_ is Node!14854) (right!41629 (c!836549 input!5492)))) b!4919132))

(assert (= b!4919133 b!4919134))

(assert (= (and b!4918519 ((_ is Leaf!24714) (right!41629 (c!836549 input!5492)))) b!4919133))

(declare-fun m!5932356 () Bool)

(assert (=> b!4919132 m!5932356))

(declare-fun m!5932358 () Bool)

(assert (=> b!4919132 m!5932358))

(declare-fun m!5932360 () Bool)

(assert (=> b!4919133 m!5932360))

(assert (=> b!4918519 m!5931514))

(declare-fun e!3074142 () Bool)

(assert (=> b!4918526 (= tp!1382598 e!3074142)))

(declare-fun b!4919150 () Bool)

(declare-fun tp!1382625 () Bool)

(declare-fun tp!1382626 () Bool)

(assert (=> b!4919150 (= e!3074142 (and tp!1382625 tp!1382626))))

(declare-fun b!4919151 () Bool)

(declare-fun tp!1382624 () Bool)

(assert (=> b!4919151 (= e!3074142 tp!1382624)))

(declare-fun b!4919152 () Bool)

(declare-fun tp!1382622 () Bool)

(declare-fun tp!1382623 () Bool)

(assert (=> b!4919152 (= e!3074142 (and tp!1382622 tp!1382623))))

(declare-fun b!4919149 () Bool)

(declare-fun tp_is_empty!35901 () Bool)

(assert (=> b!4919149 (= e!3074142 tp_is_empty!35901)))

(assert (= (and b!4918526 ((_ is ElementMatch!13355) (h!63096 (exprs!3497 setElem!27414)))) b!4919149))

(assert (= (and b!4918526 ((_ is Concat!21928) (h!63096 (exprs!3497 setElem!27414)))) b!4919150))

(assert (= (and b!4918526 ((_ is Star!13355) (h!63096 (exprs!3497 setElem!27414)))) b!4919151))

(assert (= (and b!4918526 ((_ is Union!13355) (h!63096 (exprs!3497 setElem!27414)))) b!4919152))

(declare-fun b!4919153 () Bool)

(declare-fun e!3074143 () Bool)

(declare-fun tp!1382627 () Bool)

(declare-fun tp!1382628 () Bool)

(assert (=> b!4919153 (= e!3074143 (and tp!1382627 tp!1382628))))

(assert (=> b!4918526 (= tp!1382599 e!3074143)))

(assert (= (and b!4918526 ((_ is Cons!56648) (t!367196 (exprs!3497 setElem!27414)))) b!4919153))

(declare-fun b!4919154 () Bool)

(declare-fun e!3074144 () Bool)

(declare-fun tp!1382629 () Bool)

(declare-fun tp!1382630 () Bool)

(assert (=> b!4919154 (= e!3074144 (and tp!1382629 tp!1382630))))

(assert (=> b!4918531 (= tp!1382604 e!3074144)))

(assert (= (and b!4918531 ((_ is Cons!56648) (exprs!3497 setElem!27420))) b!4919154))

(declare-fun condSetEmpty!27421 () Bool)

(assert (=> setNonEmpty!27420 (= condSetEmpty!27421 (= setRest!27420 ((as const (Array Context!5994 Bool)) false)))))

(declare-fun setRes!27421 () Bool)

(assert (=> setNonEmpty!27420 (= tp!1382605 setRes!27421)))

(declare-fun setIsEmpty!27421 () Bool)

(assert (=> setIsEmpty!27421 setRes!27421))

(declare-fun tp!1382632 () Bool)

(declare-fun setElem!27421 () Context!5994)

(declare-fun setNonEmpty!27421 () Bool)

(declare-fun e!3074145 () Bool)

(assert (=> setNonEmpty!27421 (= setRes!27421 (and tp!1382632 (inv!73338 setElem!27421) e!3074145))))

(declare-fun setRest!27421 () (InoxSet Context!5994))

(assert (=> setNonEmpty!27421 (= setRest!27420 ((_ map or) (store ((as const (Array Context!5994 Bool)) false) setElem!27421 true) setRest!27421))))

(declare-fun b!4919155 () Bool)

(declare-fun tp!1382631 () Bool)

(assert (=> b!4919155 (= e!3074145 tp!1382631)))

(assert (= (and setNonEmpty!27420 condSetEmpty!27421) setIsEmpty!27421))

(assert (= (and setNonEmpty!27420 (not condSetEmpty!27421)) setNonEmpty!27421))

(assert (= setNonEmpty!27421 b!4919155))

(declare-fun m!5932362 () Bool)

(assert (=> setNonEmpty!27421 m!5932362))

(declare-fun b!4919166 () Bool)

(declare-fun e!3074151 () Bool)

(declare-fun tp!1382635 () Bool)

(assert (=> b!4919166 (= e!3074151 (and tp_is_empty!35901 tp!1382635))))

(assert (=> b!4918521 (= tp!1382593 e!3074151)))

(assert (= (and b!4918521 ((_ is Cons!56647) (innerList!14942 (xs!18172 (c!836549 input!5492))))) b!4919166))

(declare-fun b_lambda!196245 () Bool)

(assert (= b_lambda!196241 (or d!1581822 b_lambda!196245)))

(declare-fun bs!1178878 () Bool)

(declare-fun d!1582030 () Bool)

(assert (= bs!1178878 (and d!1582030 d!1581822)))

(declare-fun validRegex!5939 (Regex!13355) Bool)

(assert (=> bs!1178878 (= (dynLambda!23002 lambda!244986 (h!63096 (exprs!3497 setElem!27414))) (validRegex!5939 (h!63096 (exprs!3497 setElem!27414))))))

(declare-fun m!5932366 () Bool)

(assert (=> bs!1178878 m!5932366))

(assert (=> b!4919087 d!1582030))

(check-sat (not b!4918737) (not b!4919026) (not d!1581900) (not b!4918796) (not d!1581898) (not b!4918917) tp_is_empty!35901 (not b!4918613) (not b!4919061) (not b!4918730) (not b!4919094) (not b!4918538) (not d!1581854) (not d!1581996) (not bm!342037) (not d!1581828) (not b!4919130) (not b!4919132) (not bm!341997) (not d!1581976) (not b!4919133) (not b!4918781) (not b!4919033) (not bm!342036) (not b!4918536) (not bm!341999) (not bm!342035) (not b!4918729) (not b!4918793) (not b!4918634) (not b!4919043) (not b!4918791) (not b!4918614) (not b!4919066) (not b!4919151) (not b!4918519) (not b!4919155) (not bm!341954) (not setNonEmpty!27421) (not b!4918558) (not b!4919045) (not b!4918949) (not b!4918946) (not b!4918706) (not b!4919051) (not d!1581838) (not b!4919166) (not bm!341995) (not bm!341928) (not d!1581832) (not b!4918602) (not b!4918539) (not b!4919060) (not b!4919091) (not d!1582014) (not b!4918725) (not b!4918708) (not d!1581842) (not bm!341925) (not b!4919068) (not b!4918948) (not bm!341927) (not b!4919088) (not d!1582012) (not b!4919052) (not d!1582018) (not d!1581878) (not bm!341931) (not b!4919053) (not b!4918780) (not bm!341930) (not b!4918666) (not b!4919154) (not d!1581962) (not b!4919129) (not b!4918783) (not bm!341933) (not b!4919093) (not d!1581936) (not b!4918591) (not d!1581986) (not b!4918931) (not b!4918739) (not bm!341996) (not b!4918563) (not b!4919044) (not d!1581966) (not b!4918635) (not d!1581836) (not d!1581914) (not d!1581924) (not d!1582004) (not b!4918795) (not bm!342034) (not b!4919055) (not b!4919058) (not b!4918950) (not bm!342032) (not bm!341998) (not d!1581930) (not b!4918555) (not b!4918742) (not d!1581848) (not b!4918636) (not bs!1178878) (not b!4919067) (not bm!342000) (not b!4919092) (not b!4918667) (not b!4918732) (not b!4918554) (not b!4918741) (not b!4918726) (not b!4918615) (not b!4918722) (not b!4918638) (not d!1581908) (not b!4918943) (not b!4919062) (not b!4919036) (not d!1581992) (not d!1581894) (not bm!342001) (not b!4919057) (not b!4919089) (not d!1581834) (not d!1581856) (not bm!341926) (not bm!341994) (not b!4919134) (not b!4918792) (not b!4919120) (not b_lambda!196245) (not b!4918920) (not d!1581946) (not d!1581964) (not bm!341946) (not b!4918919) (not b!4919046) (not b!4918935) (not b!4918637) (not d!1581968) (not d!1581944) (not d!1581830) (not d!1581872) (not b!4919117) (not b!4919153) (not d!1581998) (not b!4919116) (not bm!341932) (not b!4918947) (not b!4918660) (not bm!341929) (not b!4918798) (not b!4919090) (not bm!341955) (not b!4919152) (not d!1581840) (not d!1581824) (not d!1581882) (not b!4919054) (not b!4919131) (not b!4918909) (not b!4918601) (not b!4919056) (not b!4918945) (not bm!341924) (not b!4918934) (not b!4919150) (not b!4919059))
(check-sat)
(get-model)

(declare-fun d!1582064 () Bool)

(assert (=> d!1582064 (= (isEmpty!30554 (getLanguageWitness!609 z!3559)) (not ((_ is Some!14156) (getLanguageWitness!609 z!3559))))))

(assert (=> d!1581946 d!1582064))

(declare-fun bs!1178889 () Bool)

(declare-fun d!1582066 () Bool)

(assert (= bs!1178889 (and d!1582066 d!1581832)))

(declare-fun lambda!245037 () Int)

(assert (=> bs!1178889 (not (= lambda!245037 lambda!244989))))

(declare-fun bs!1178890 () Bool)

(assert (= bs!1178890 (and d!1582066 d!1581946)))

(assert (=> bs!1178890 (not (= lambda!245037 lambda!245003))))

(declare-fun bs!1178891 () Bool)

(assert (= bs!1178891 (and d!1582066 b!4918780)))

(assert (=> bs!1178891 (= lambda!245037 lambda!245004)))

(declare-fun bs!1178892 () Bool)

(assert (= bs!1178892 (and d!1582066 b!4918781)))

(assert (=> bs!1178892 (= lambda!245037 lambda!245005)))

(declare-fun lt!2020838 () Option!14157)

(declare-fun isDefined!11164 (Option!14157) Bool)

(assert (=> d!1582066 (= (isDefined!11164 lt!2020838) (exists!1238 z!3559 lambda!245037))))

(declare-fun e!3074193 () Option!14157)

(assert (=> d!1582066 (= lt!2020838 e!3074193)))

(declare-fun c!836841 () Bool)

(assert (=> d!1582066 (= c!836841 (exists!1238 z!3559 lambda!245037))))

(assert (=> d!1582066 (= (getLanguageWitness!609 z!3559) lt!2020838)))

(declare-fun b!4919254 () Bool)

(declare-fun getLanguageWitness!611 (Context!5994) Option!14157)

(declare-fun getWitness!629 ((InoxSet Context!5994) Int) Context!5994)

(assert (=> b!4919254 (= e!3074193 (getLanguageWitness!611 (getWitness!629 z!3559 lambda!245037)))))

(declare-fun b!4919255 () Bool)

(assert (=> b!4919255 (= e!3074193 None!14156)))

(assert (= (and d!1582066 c!836841) b!4919254))

(assert (= (and d!1582066 (not c!836841)) b!4919255))

(declare-fun m!5932460 () Bool)

(assert (=> d!1582066 m!5932460))

(declare-fun m!5932462 () Bool)

(assert (=> d!1582066 m!5932462))

(assert (=> d!1582066 m!5932462))

(declare-fun m!5932464 () Bool)

(assert (=> b!4919254 m!5932464))

(assert (=> b!4919254 m!5932464))

(declare-fun m!5932466 () Bool)

(assert (=> b!4919254 m!5932466))

(assert (=> d!1581946 d!1582066))

(declare-fun d!1582068 () Bool)

(declare-fun lt!2020841 () Bool)

(declare-fun forall!13116 (List!56773 Int) Bool)

(assert (=> d!1582068 (= lt!2020841 (forall!13116 (toList!7939 z!3559) lambda!245003))))

(declare-fun choose!36011 ((InoxSet Context!5994) Int) Bool)

(assert (=> d!1582068 (= lt!2020841 (choose!36011 z!3559 lambda!245003))))

(assert (=> d!1582068 (= (forall!13114 z!3559 lambda!245003) lt!2020841)))

(declare-fun bs!1178893 () Bool)

(assert (= bs!1178893 d!1582068))

(assert (=> bs!1178893 m!5931978))

(assert (=> bs!1178893 m!5931978))

(declare-fun m!5932468 () Bool)

(assert (=> bs!1178893 m!5932468))

(declare-fun m!5932470 () Bool)

(assert (=> bs!1178893 m!5932470))

(assert (=> d!1581946 d!1582068))

(declare-fun bm!342078 () Bool)

(declare-fun call!342084 () Conc!14854)

(declare-fun call!342088 () Conc!14854)

(assert (=> bm!342078 (= call!342084 call!342088)))

(declare-fun b!4919299 () Bool)

(declare-fun res!2100606 () Bool)

(declare-fun e!3074218 () Bool)

(assert (=> b!4919299 (=> (not res!2100606) (not e!3074218))))

(declare-fun lt!2020850 () Conc!14854)

(assert (=> b!4919299 (= res!2100606 (isBalanced!4070 lt!2020850))))

(declare-fun bm!342079 () Bool)

(declare-fun c!836862 () Bool)

(declare-fun call!342090 () Int)

(assert (=> bm!342079 (= call!342090 (height!1978 (ite c!836862 (right!41629 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492)))) (left!41299 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776))))))))

(declare-fun b!4919300 () Bool)

(declare-fun e!3074216 () Conc!14854)

(declare-fun e!3074223 () Conc!14854)

(assert (=> b!4919300 (= e!3074216 e!3074223)))

(declare-fun c!836865 () Bool)

(assert (=> b!4919300 (= c!836865 (= (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776)) Empty!14854))))

(declare-fun b!4919301 () Bool)

(declare-fun e!3074221 () Conc!14854)

(assert (=> b!4919301 (= e!3074221 call!342084)))

(declare-fun call!342086 () Int)

(declare-fun bm!342080 () Bool)

(declare-fun lt!2020852 () Conc!14854)

(assert (=> bm!342080 (= call!342086 (height!1978 (ite c!836862 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492))) lt!2020852)))))

(declare-fun b!4919302 () Bool)

(declare-fun e!3074219 () Conc!14854)

(assert (=> b!4919302 (= e!3074219 e!3074221)))

(declare-fun lt!2020853 () Conc!14854)

(declare-fun call!342095 () Conc!14854)

(assert (=> b!4919302 (= lt!2020853 call!342095)))

(declare-fun c!836859 () Bool)

(declare-fun call!342085 () Int)

(assert (=> b!4919302 (= c!836859 (= call!342085 (- call!342086 3)))))

(declare-fun bm!342081 () Bool)

(declare-fun call!342083 () Conc!14854)

(declare-fun call!342096 () Conc!14854)

(assert (=> bm!342081 (= call!342083 call!342096)))

(declare-fun b!4919303 () Bool)

(declare-fun c!836860 () Bool)

(declare-fun lt!2020851 () Int)

(assert (=> b!4919303 (= c!836860 (and (<= (- 1) lt!2020851) (<= lt!2020851 1)))))

(assert (=> b!4919303 (= lt!2020851 (- (height!1978 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776))) (height!1978 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492))))))))

(declare-fun e!3074222 () Conc!14854)

(assert (=> b!4919303 (= e!3074223 e!3074222)))

(declare-fun b!4919304 () Bool)

(assert (=> b!4919304 (= e!3074221 call!342084)))

(declare-fun b!4919305 () Bool)

(declare-fun e!3074214 () Conc!14854)

(declare-fun call!342092 () Conc!14854)

(assert (=> b!4919305 (= e!3074214 call!342092)))

(declare-fun bm!342082 () Bool)

(declare-fun call!342091 () Conc!14854)

(assert (=> bm!342082 (= call!342092 call!342091)))

(declare-fun b!4919306 () Bool)

(declare-fun e!3074217 () Conc!14854)

(assert (=> b!4919306 (= e!3074217 e!3074214)))

(declare-fun call!342087 () Conc!14854)

(assert (=> b!4919306 (= lt!2020852 call!342087)))

(declare-fun c!836864 () Bool)

(assert (=> b!4919306 (= c!836864 (= call!342086 (- call!342085 3)))))

(declare-fun b!4919307 () Bool)

(assert (=> b!4919307 (= e!3074216 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776)))))

(declare-fun d!1582070 () Bool)

(assert (=> d!1582070 e!3074218))

(declare-fun res!2100604 () Bool)

(assert (=> d!1582070 (=> (not res!2100604) (not e!3074218))))

(declare-fun appendAssocInst!888 (Conc!14854 Conc!14854) Bool)

(assert (=> d!1582070 (= res!2100604 (appendAssocInst!888 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492))) (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776))))))

(assert (=> d!1582070 (= lt!2020850 e!3074216)))

(declare-fun c!836863 () Bool)

(assert (=> d!1582070 (= c!836863 (= (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492))) Empty!14854))))

(declare-fun e!3074220 () Bool)

(assert (=> d!1582070 e!3074220))

(declare-fun res!2100603 () Bool)

(assert (=> d!1582070 (=> (not res!2100603) (not e!3074220))))

(assert (=> d!1582070 (= res!2100603 (isBalanced!4070 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492)))))))

(assert (=> d!1582070 (= (++!12304 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492))) (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776))) lt!2020850)))

(declare-fun b!4919298 () Bool)

(declare-fun res!2100605 () Bool)

(assert (=> b!4919298 (=> (not res!2100605) (not e!3074218))))

(assert (=> b!4919298 (= res!2100605 (<= (height!1978 lt!2020850) (+ (max!0 (height!1978 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492)))) (height!1978 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776)))) 1)))))

(declare-fun bm!342083 () Bool)

(declare-fun call!342093 () Conc!14854)

(assert (=> bm!342083 (= call!342093 call!342088)))

(declare-fun bm!342084 () Bool)

(declare-fun c!836858 () Bool)

(declare-fun c!836861 () Bool)

(declare-fun <>!378 (Conc!14854 Conc!14854) Conc!14854)

(assert (=> bm!342084 (= call!342096 (<>!378 (ite c!836860 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492))) (ite c!836862 (ite c!836861 (left!41299 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492)))) (ite c!836859 (left!41299 (right!41629 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492))))) (left!41299 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492)))))) (ite c!836858 call!342087 (ite c!836864 call!342093 lt!2020852)))) (ite c!836860 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776)) (ite c!836862 (ite c!836861 call!342095 (ite c!836859 lt!2020853 (left!41299 (right!41629 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492))))))) (ite (or c!836858 c!836864) (right!41629 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776))) call!342093)))))))

(declare-fun b!4919308 () Bool)

(assert (=> b!4919308 (= e!3074222 call!342096)))

(declare-fun b!4919309 () Bool)

(declare-fun res!2100607 () Bool)

(assert (=> b!4919309 (=> (not res!2100607) (not e!3074218))))

(assert (=> b!4919309 (= res!2100607 (>= (height!1978 lt!2020850) (max!0 (height!1978 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492)))) (height!1978 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776))))))))

(declare-fun bm!342085 () Bool)

(declare-fun call!342098 () Conc!14854)

(assert (=> bm!342085 (= call!342088 (<>!378 (ite c!836862 (ite c!836859 (left!41299 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492)))) call!342098) (ite c!836864 lt!2020852 (right!41629 (left!41299 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776)))))) (ite c!836862 (ite c!836859 call!342098 lt!2020853) (ite c!836864 (right!41629 (left!41299 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776)))) (right!41629 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776)))))))))

(declare-fun bm!342086 () Bool)

(declare-fun call!342097 () Conc!14854)

(assert (=> bm!342086 (= call!342087 call!342097)))

(declare-fun call!342089 () Int)

(declare-fun bm!342087 () Bool)

(assert (=> bm!342087 (= call!342089 (height!1978 (ite c!836862 (left!41299 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492)))) (right!41629 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776))))))))

(declare-fun b!4919310 () Bool)

(assert (=> b!4919310 (= c!836861 (>= call!342089 call!342090))))

(declare-fun e!3074215 () Conc!14854)

(assert (=> b!4919310 (= e!3074215 e!3074219)))

(declare-fun bm!342088 () Bool)

(assert (=> bm!342088 (= call!342091 call!342083)))

(declare-fun b!4919311 () Bool)

(assert (=> b!4919311 (= c!836858 (>= call!342089 call!342090))))

(assert (=> b!4919311 (= e!3074215 e!3074217)))

(declare-fun bm!342089 () Bool)

(assert (=> bm!342089 (= call!342095 call!342097)))

(declare-fun b!4919312 () Bool)

(declare-fun call!342094 () Conc!14854)

(assert (=> b!4919312 (= e!3074219 call!342094)))

(declare-fun b!4919313 () Bool)

(assert (=> b!4919313 (= e!3074223 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492))))))

(declare-fun b!4919314 () Bool)

(assert (=> b!4919314 (= e!3074217 call!342091)))

(declare-fun bm!342090 () Bool)

(assert (=> bm!342090 (= call!342094 call!342083)))

(declare-fun bm!342091 () Bool)

(assert (=> bm!342091 (= call!342097 (++!12304 (ite c!836862 (ite c!836861 (right!41629 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492)))) (right!41629 (right!41629 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492)))))) (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492)))) (ite c!836862 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776)) (ite c!836858 (left!41299 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776))) (left!41299 (left!41299 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776))))))))))

(declare-fun b!4919315 () Bool)

(assert (=> b!4919315 (= e!3074214 call!342092)))

(declare-fun b!4919316 () Bool)

(assert (=> b!4919316 (= e!3074222 e!3074215)))

(assert (=> b!4919316 (= c!836862 (< lt!2020851 (- 1)))))

(declare-fun b!4919317 () Bool)

(assert (=> b!4919317 (= e!3074220 (isBalanced!4070 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776))))))

(declare-fun bm!342092 () Bool)

(assert (=> bm!342092 (= call!342098 call!342094)))

(declare-fun bm!342093 () Bool)

(assert (=> bm!342093 (= call!342085 (height!1978 (ite c!836862 lt!2020853 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776)))))))

(declare-fun b!4919318 () Bool)

(assert (=> b!4919318 (= e!3074218 (= (list!17913 lt!2020850) (++!12302 (list!17913 (ite c!836790 (_2!33837 lt!2020781) (left!41299 (c!836549 input!5492)))) (list!17913 (ite c!836790 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020776))))))))

(assert (= (and d!1582070 res!2100603) b!4919317))

(assert (= (and d!1582070 c!836863) b!4919307))

(assert (= (and d!1582070 (not c!836863)) b!4919300))

(assert (= (and b!4919300 c!836865) b!4919313))

(assert (= (and b!4919300 (not c!836865)) b!4919303))

(assert (= (and b!4919303 c!836860) b!4919308))

(assert (= (and b!4919303 (not c!836860)) b!4919316))

(assert (= (and b!4919316 c!836862) b!4919310))

(assert (= (and b!4919316 (not c!836862)) b!4919311))

(assert (= (and b!4919310 c!836861) b!4919312))

(assert (= (and b!4919310 (not c!836861)) b!4919302))

(assert (= (and b!4919302 c!836859) b!4919301))

(assert (= (and b!4919302 (not c!836859)) b!4919304))

(assert (= (or b!4919301 b!4919304) bm!342092))

(assert (= (or b!4919301 b!4919304) bm!342078))

(assert (= (or b!4919312 b!4919302) bm!342089))

(assert (= (or b!4919312 bm!342092) bm!342090))

(assert (= (and b!4919311 c!836858) b!4919314))

(assert (= (and b!4919311 (not c!836858)) b!4919306))

(assert (= (and b!4919306 c!836864) b!4919315))

(assert (= (and b!4919306 (not c!836864)) b!4919305))

(assert (= (or b!4919315 b!4919305) bm!342083))

(assert (= (or b!4919315 b!4919305) bm!342082))

(assert (= (or b!4919314 b!4919306) bm!342086))

(assert (= (or b!4919314 bm!342082) bm!342088))

(assert (= (or b!4919302 b!4919306) bm!342093))

(assert (= (or bm!342090 bm!342088) bm!342081))

(assert (= (or b!4919310 b!4919311) bm!342079))

(assert (= (or bm!342089 bm!342086) bm!342091))

(assert (= (or b!4919310 b!4919311) bm!342087))

(assert (= (or b!4919302 b!4919306) bm!342080))

(assert (= (or bm!342078 bm!342083) bm!342085))

(assert (= (or b!4919308 bm!342081) bm!342084))

(assert (= (and d!1582070 res!2100604) b!4919299))

(assert (= (and b!4919299 res!2100606) b!4919298))

(assert (= (and b!4919298 res!2100605) b!4919309))

(assert (= (and b!4919309 res!2100607) b!4919318))

(declare-fun m!5932472 () Bool)

(assert (=> bm!342080 m!5932472))

(declare-fun m!5932474 () Bool)

(assert (=> b!4919299 m!5932474))

(declare-fun m!5932476 () Bool)

(assert (=> b!4919298 m!5932476))

(declare-fun m!5932478 () Bool)

(assert (=> b!4919298 m!5932478))

(declare-fun m!5932480 () Bool)

(assert (=> b!4919298 m!5932480))

(assert (=> b!4919298 m!5932478))

(assert (=> b!4919298 m!5932480))

(declare-fun m!5932482 () Bool)

(assert (=> b!4919298 m!5932482))

(declare-fun m!5932484 () Bool)

(assert (=> b!4919318 m!5932484))

(declare-fun m!5932486 () Bool)

(assert (=> b!4919318 m!5932486))

(declare-fun m!5932488 () Bool)

(assert (=> b!4919318 m!5932488))

(assert (=> b!4919318 m!5932486))

(assert (=> b!4919318 m!5932488))

(declare-fun m!5932490 () Bool)

(assert (=> b!4919318 m!5932490))

(assert (=> b!4919303 m!5932480))

(assert (=> b!4919303 m!5932478))

(declare-fun m!5932492 () Bool)

(assert (=> d!1582070 m!5932492))

(declare-fun m!5932494 () Bool)

(assert (=> d!1582070 m!5932494))

(declare-fun m!5932496 () Bool)

(assert (=> b!4919317 m!5932496))

(declare-fun m!5932498 () Bool)

(assert (=> bm!342085 m!5932498))

(assert (=> b!4919309 m!5932476))

(assert (=> b!4919309 m!5932478))

(assert (=> b!4919309 m!5932480))

(assert (=> b!4919309 m!5932478))

(assert (=> b!4919309 m!5932480))

(assert (=> b!4919309 m!5932482))

(declare-fun m!5932500 () Bool)

(assert (=> bm!342093 m!5932500))

(declare-fun m!5932502 () Bool)

(assert (=> bm!342079 m!5932502))

(declare-fun m!5932504 () Bool)

(assert (=> bm!342087 m!5932504))

(declare-fun m!5932506 () Bool)

(assert (=> bm!342084 m!5932506))

(declare-fun m!5932508 () Bool)

(assert (=> bm!342091 m!5932508))

(assert (=> bm!342036 d!1582070))

(declare-fun d!1582072 () Bool)

(declare-fun lt!2020854 () Int)

(assert (=> d!1582072 (>= lt!2020854 0)))

(declare-fun e!3074224 () Int)

(assert (=> d!1582072 (= lt!2020854 e!3074224)))

(declare-fun c!836866 () Bool)

(assert (=> d!1582072 (= c!836866 ((_ is Nil!56647) lt!2020488))))

(assert (=> d!1582072 (= (size!37424 lt!2020488) lt!2020854)))

(declare-fun b!4919319 () Bool)

(assert (=> b!4919319 (= e!3074224 0)))

(declare-fun b!4919320 () Bool)

(assert (=> b!4919320 (= e!3074224 (+ 1 (size!37424 (t!367195 lt!2020488))))))

(assert (= (and d!1582072 c!836866) b!4919319))

(assert (= (and d!1582072 (not c!836866)) b!4919320))

(declare-fun m!5932510 () Bool)

(assert (=> b!4919320 m!5932510))

(assert (=> b!4918726 d!1582072))

(declare-fun d!1582074 () Bool)

(declare-fun lt!2020855 () Int)

(assert (=> d!1582074 (>= lt!2020855 0)))

(declare-fun e!3074225 () Int)

(assert (=> d!1582074 (= lt!2020855 e!3074225)))

(declare-fun c!836867 () Bool)

(assert (=> d!1582074 (= c!836867 ((_ is Nil!56647) (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))))))

(assert (=> d!1582074 (= (size!37424 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))) lt!2020855)))

(declare-fun b!4919321 () Bool)

(assert (=> b!4919321 (= e!3074225 0)))

(declare-fun b!4919322 () Bool)

(assert (=> b!4919322 (= e!3074225 (+ 1 (size!37424 (t!367195 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))))))))

(assert (= (and d!1582074 c!836867) b!4919321))

(assert (= (and d!1582074 (not c!836867)) b!4919322))

(declare-fun m!5932512 () Bool)

(assert (=> b!4919322 m!5932512))

(assert (=> b!4918726 d!1582074))

(declare-fun d!1582076 () Bool)

(declare-fun lt!2020856 () Int)

(assert (=> d!1582076 (>= lt!2020856 0)))

(declare-fun e!3074226 () Int)

(assert (=> d!1582076 (= lt!2020856 e!3074226)))

(declare-fun c!836868 () Bool)

(assert (=> d!1582076 (= c!836868 ((_ is Nil!56647) lt!2020284))))

(assert (=> d!1582076 (= (size!37424 lt!2020284) lt!2020856)))

(declare-fun b!4919323 () Bool)

(assert (=> b!4919323 (= e!3074226 0)))

(declare-fun b!4919324 () Bool)

(assert (=> b!4919324 (= e!3074226 (+ 1 (size!37424 (t!367195 lt!2020284))))))

(assert (= (and d!1582076 c!836868) b!4919323))

(assert (= (and d!1582076 (not c!836868)) b!4919324))

(declare-fun m!5932514 () Bool)

(assert (=> b!4919324 m!5932514))

(assert (=> b!4918726 d!1582076))

(declare-fun d!1582078 () Bool)

(declare-fun lt!2020857 () Bool)

(assert (=> d!1582078 (= lt!2020857 (isEmpty!30552 (list!17913 (right!41629 (c!836549 (_1!33835 lt!2020059))))))))

(assert (=> d!1582078 (= lt!2020857 (= (size!37425 (right!41629 (c!836549 (_1!33835 lt!2020059)))) 0))))

(assert (=> d!1582078 (= (isEmpty!30551 (right!41629 (c!836549 (_1!33835 lt!2020059)))) lt!2020857)))

(declare-fun bs!1178894 () Bool)

(assert (= bs!1178894 d!1582078))

(declare-fun m!5932516 () Bool)

(assert (=> bs!1178894 m!5932516))

(assert (=> bs!1178894 m!5932516))

(declare-fun m!5932518 () Bool)

(assert (=> bs!1178894 m!5932518))

(declare-fun m!5932520 () Bool)

(assert (=> bs!1178894 m!5932520))

(assert (=> b!4918946 d!1582078))

(declare-fun b!4919343 () Bool)

(declare-fun e!3074247 () Bool)

(declare-fun e!3074246 () Bool)

(assert (=> b!4919343 (= e!3074247 e!3074246)))

(declare-fun c!836873 () Bool)

(assert (=> b!4919343 (= c!836873 ((_ is Union!13355) (h!63096 (exprs!3497 setElem!27414))))))

(declare-fun b!4919344 () Bool)

(declare-fun e!3074241 () Bool)

(declare-fun call!342105 () Bool)

(assert (=> b!4919344 (= e!3074241 call!342105)))

(declare-fun b!4919345 () Bool)

(declare-fun e!3074242 () Bool)

(assert (=> b!4919345 (= e!3074242 e!3074241)))

(declare-fun res!2100618 () Bool)

(assert (=> b!4919345 (=> (not res!2100618) (not e!3074241))))

(declare-fun call!342106 () Bool)

(assert (=> b!4919345 (= res!2100618 call!342106)))

(declare-fun d!1582080 () Bool)

(declare-fun res!2100619 () Bool)

(declare-fun e!3074245 () Bool)

(assert (=> d!1582080 (=> res!2100619 e!3074245)))

(assert (=> d!1582080 (= res!2100619 ((_ is ElementMatch!13355) (h!63096 (exprs!3497 setElem!27414))))))

(assert (=> d!1582080 (= (validRegex!5939 (h!63096 (exprs!3497 setElem!27414))) e!3074245)))

(declare-fun b!4919346 () Bool)

(declare-fun e!3074244 () Bool)

(assert (=> b!4919346 (= e!3074244 call!342105)))

(declare-fun bm!342100 () Bool)

(declare-fun call!342107 () Bool)

(assert (=> bm!342100 (= call!342105 call!342107)))

(declare-fun bm!342101 () Bool)

(assert (=> bm!342101 (= call!342106 (validRegex!5939 (ite c!836873 (regOne!27223 (h!63096 (exprs!3497 setElem!27414))) (regOne!27222 (h!63096 (exprs!3497 setElem!27414))))))))

(declare-fun b!4919347 () Bool)

(assert (=> b!4919347 (= e!3074245 e!3074247)))

(declare-fun c!836874 () Bool)

(assert (=> b!4919347 (= c!836874 ((_ is Star!13355) (h!63096 (exprs!3497 setElem!27414))))))

(declare-fun bm!342102 () Bool)

(assert (=> bm!342102 (= call!342107 (validRegex!5939 (ite c!836874 (reg!13684 (h!63096 (exprs!3497 setElem!27414))) (ite c!836873 (regTwo!27223 (h!63096 (exprs!3497 setElem!27414))) (regTwo!27222 (h!63096 (exprs!3497 setElem!27414)))))))))

(declare-fun b!4919348 () Bool)

(declare-fun e!3074243 () Bool)

(assert (=> b!4919348 (= e!3074243 call!342107)))

(declare-fun b!4919349 () Bool)

(declare-fun res!2100622 () Bool)

(assert (=> b!4919349 (=> res!2100622 e!3074242)))

(assert (=> b!4919349 (= res!2100622 (not ((_ is Concat!21928) (h!63096 (exprs!3497 setElem!27414)))))))

(assert (=> b!4919349 (= e!3074246 e!3074242)))

(declare-fun b!4919350 () Bool)

(assert (=> b!4919350 (= e!3074247 e!3074243)))

(declare-fun res!2100621 () Bool)

(declare-fun nullable!4605 (Regex!13355) Bool)

(assert (=> b!4919350 (= res!2100621 (not (nullable!4605 (reg!13684 (h!63096 (exprs!3497 setElem!27414))))))))

(assert (=> b!4919350 (=> (not res!2100621) (not e!3074243))))

(declare-fun b!4919351 () Bool)

(declare-fun res!2100620 () Bool)

(assert (=> b!4919351 (=> (not res!2100620) (not e!3074244))))

(assert (=> b!4919351 (= res!2100620 call!342106)))

(assert (=> b!4919351 (= e!3074246 e!3074244)))

(assert (= (and d!1582080 (not res!2100619)) b!4919347))

(assert (= (and b!4919347 c!836874) b!4919350))

(assert (= (and b!4919347 (not c!836874)) b!4919343))

(assert (= (and b!4919350 res!2100621) b!4919348))

(assert (= (and b!4919343 c!836873) b!4919351))

(assert (= (and b!4919343 (not c!836873)) b!4919349))

(assert (= (and b!4919351 res!2100620) b!4919346))

(assert (= (and b!4919349 (not res!2100622)) b!4919345))

(assert (= (and b!4919345 res!2100618) b!4919344))

(assert (= (or b!4919346 b!4919344) bm!342100))

(assert (= (or b!4919351 b!4919345) bm!342101))

(assert (= (or b!4919348 bm!342100) bm!342102))

(declare-fun m!5932522 () Bool)

(assert (=> bm!342101 m!5932522))

(declare-fun m!5932524 () Bool)

(assert (=> bm!342102 m!5932524))

(declare-fun m!5932526 () Bool)

(assert (=> b!4919350 m!5932526))

(assert (=> bs!1178878 d!1582080))

(declare-fun b!4919352 () Bool)

(declare-fun e!3074248 () List!56771)

(assert (=> b!4919352 (= e!3074248 (list!17913 (right!41629 (c!836549 input!5492))))))

(declare-fun b!4919354 () Bool)

(declare-fun res!2100623 () Bool)

(declare-fun e!3074249 () Bool)

(assert (=> b!4919354 (=> (not res!2100623) (not e!3074249))))

(declare-fun lt!2020858 () List!56771)

(assert (=> b!4919354 (= res!2100623 (= (size!37424 lt!2020858) (+ (size!37424 (list!17913 (left!41299 (c!836549 input!5492)))) (size!37424 (list!17913 (right!41629 (c!836549 input!5492)))))))))

(declare-fun b!4919353 () Bool)

(assert (=> b!4919353 (= e!3074248 (Cons!56647 (h!63095 (list!17913 (left!41299 (c!836549 input!5492)))) (++!12302 (t!367195 (list!17913 (left!41299 (c!836549 input!5492)))) (list!17913 (right!41629 (c!836549 input!5492))))))))

(declare-fun d!1582082 () Bool)

(assert (=> d!1582082 e!3074249))

(declare-fun res!2100624 () Bool)

(assert (=> d!1582082 (=> (not res!2100624) (not e!3074249))))

(assert (=> d!1582082 (= res!2100624 (= (content!10051 lt!2020858) ((_ map or) (content!10051 (list!17913 (left!41299 (c!836549 input!5492)))) (content!10051 (list!17913 (right!41629 (c!836549 input!5492)))))))))

(assert (=> d!1582082 (= lt!2020858 e!3074248)))

(declare-fun c!836875 () Bool)

(assert (=> d!1582082 (= c!836875 ((_ is Nil!56647) (list!17913 (left!41299 (c!836549 input!5492)))))))

(assert (=> d!1582082 (= (++!12302 (list!17913 (left!41299 (c!836549 input!5492))) (list!17913 (right!41629 (c!836549 input!5492)))) lt!2020858)))

(declare-fun b!4919355 () Bool)

(assert (=> b!4919355 (= e!3074249 (or (not (= (list!17913 (right!41629 (c!836549 input!5492))) Nil!56647)) (= lt!2020858 (list!17913 (left!41299 (c!836549 input!5492))))))))

(assert (= (and d!1582082 c!836875) b!4919352))

(assert (= (and d!1582082 (not c!836875)) b!4919353))

(assert (= (and d!1582082 res!2100624) b!4919354))

(assert (= (and b!4919354 res!2100623) b!4919355))

(declare-fun m!5932528 () Bool)

(assert (=> b!4919354 m!5932528))

(assert (=> b!4919354 m!5931612))

(declare-fun m!5932530 () Bool)

(assert (=> b!4919354 m!5932530))

(assert (=> b!4919354 m!5931930))

(declare-fun m!5932532 () Bool)

(assert (=> b!4919354 m!5932532))

(assert (=> b!4919353 m!5931930))

(declare-fun m!5932534 () Bool)

(assert (=> b!4919353 m!5932534))

(declare-fun m!5932536 () Bool)

(assert (=> d!1582082 m!5932536))

(assert (=> d!1582082 m!5931612))

(declare-fun m!5932538 () Bool)

(assert (=> d!1582082 m!5932538))

(assert (=> d!1582082 m!5931930))

(declare-fun m!5932540 () Bool)

(assert (=> d!1582082 m!5932540))

(assert (=> b!4918935 d!1582082))

(declare-fun b!4919357 () Bool)

(declare-fun e!3074250 () List!56771)

(declare-fun e!3074251 () List!56771)

(assert (=> b!4919357 (= e!3074250 e!3074251)))

(declare-fun c!836877 () Bool)

(assert (=> b!4919357 (= c!836877 ((_ is Leaf!24714) (left!41299 (c!836549 input!5492))))))

(declare-fun d!1582084 () Bool)

(declare-fun c!836876 () Bool)

(assert (=> d!1582084 (= c!836876 ((_ is Empty!14854) (left!41299 (c!836549 input!5492))))))

(assert (=> d!1582084 (= (list!17913 (left!41299 (c!836549 input!5492))) e!3074250)))

(declare-fun b!4919358 () Bool)

(assert (=> b!4919358 (= e!3074251 (list!17914 (xs!18172 (left!41299 (c!836549 input!5492)))))))

(declare-fun b!4919359 () Bool)

(assert (=> b!4919359 (= e!3074251 (++!12302 (list!17913 (left!41299 (left!41299 (c!836549 input!5492)))) (list!17913 (right!41629 (left!41299 (c!836549 input!5492))))))))

(declare-fun b!4919356 () Bool)

(assert (=> b!4919356 (= e!3074250 Nil!56647)))

(assert (= (and d!1582084 c!836876) b!4919356))

(assert (= (and d!1582084 (not c!836876)) b!4919357))

(assert (= (and b!4919357 c!836877) b!4919358))

(assert (= (and b!4919357 (not c!836877)) b!4919359))

(declare-fun m!5932542 () Bool)

(assert (=> b!4919358 m!5932542))

(declare-fun m!5932544 () Bool)

(assert (=> b!4919359 m!5932544))

(declare-fun m!5932546 () Bool)

(assert (=> b!4919359 m!5932546))

(assert (=> b!4919359 m!5932544))

(assert (=> b!4919359 m!5932546))

(declare-fun m!5932548 () Bool)

(assert (=> b!4919359 m!5932548))

(assert (=> b!4918935 d!1582084))

(declare-fun b!4919361 () Bool)

(declare-fun e!3074252 () List!56771)

(declare-fun e!3074253 () List!56771)

(assert (=> b!4919361 (= e!3074252 e!3074253)))

(declare-fun c!836879 () Bool)

(assert (=> b!4919361 (= c!836879 ((_ is Leaf!24714) (right!41629 (c!836549 input!5492))))))

(declare-fun d!1582086 () Bool)

(declare-fun c!836878 () Bool)

(assert (=> d!1582086 (= c!836878 ((_ is Empty!14854) (right!41629 (c!836549 input!5492))))))

(assert (=> d!1582086 (= (list!17913 (right!41629 (c!836549 input!5492))) e!3074252)))

(declare-fun b!4919362 () Bool)

(assert (=> b!4919362 (= e!3074253 (list!17914 (xs!18172 (right!41629 (c!836549 input!5492)))))))

(declare-fun b!4919363 () Bool)

(assert (=> b!4919363 (= e!3074253 (++!12302 (list!17913 (left!41299 (right!41629 (c!836549 input!5492)))) (list!17913 (right!41629 (right!41629 (c!836549 input!5492))))))))

(declare-fun b!4919360 () Bool)

(assert (=> b!4919360 (= e!3074252 Nil!56647)))

(assert (= (and d!1582086 c!836878) b!4919360))

(assert (= (and d!1582086 (not c!836878)) b!4919361))

(assert (= (and b!4919361 c!836879) b!4919362))

(assert (= (and b!4919361 (not c!836879)) b!4919363))

(declare-fun m!5932550 () Bool)

(assert (=> b!4919362 m!5932550))

(declare-fun m!5932552 () Bool)

(assert (=> b!4919363 m!5932552))

(declare-fun m!5932554 () Bool)

(assert (=> b!4919363 m!5932554))

(assert (=> b!4919363 m!5932552))

(assert (=> b!4919363 m!5932554))

(declare-fun m!5932556 () Bool)

(assert (=> b!4919363 m!5932556))

(assert (=> b!4918935 d!1582086))

(declare-fun d!1582088 () Bool)

(declare-fun lt!2020859 () Bool)

(assert (=> d!1582088 (= lt!2020859 (isEmpty!30552 (list!17913 (right!41629 (right!41629 (c!836549 input!5492))))))))

(assert (=> d!1582088 (= lt!2020859 (= (size!37425 (right!41629 (right!41629 (c!836549 input!5492)))) 0))))

(assert (=> d!1582088 (= (isEmpty!30551 (right!41629 (right!41629 (c!836549 input!5492)))) lt!2020859)))

(declare-fun bs!1178895 () Bool)

(assert (= bs!1178895 d!1582088))

(assert (=> bs!1178895 m!5932554))

(assert (=> bs!1178895 m!5932554))

(declare-fun m!5932558 () Bool)

(assert (=> bs!1178895 m!5932558))

(declare-fun m!5932560 () Bool)

(assert (=> bs!1178895 m!5932560))

(assert (=> b!4919052 d!1582088))

(declare-fun bs!1178896 () Bool)

(declare-fun d!1582090 () Bool)

(assert (= bs!1178896 (and d!1582090 d!1582004)))

(declare-fun lambda!245038 () Int)

(assert (=> bs!1178896 (= (= call!342004 call!341927) (= lambda!245038 lambda!245023))))

(assert (=> d!1582090 true))

(assert (=> d!1582090 (= (derivationStepZipper!573 z!3559 call!342004) (flatMap!260 z!3559 lambda!245038))))

(declare-fun bs!1178897 () Bool)

(assert (= bs!1178897 d!1582090))

(declare-fun m!5932562 () Bool)

(assert (=> bs!1178897 m!5932562))

(assert (=> bm!341998 d!1582090))

(declare-fun d!1582092 () Bool)

(assert (=> d!1582092 (= (tail!9652 call!341928) (t!367195 call!341928))))

(assert (=> bm!341931 d!1582092))

(assert (=> bm!342000 d!1581880))

(assert (=> b!4918519 d!1581932))

(assert (=> b!4918519 d!1581934))

(declare-fun b!4919364 () Bool)

(declare-fun e!3074254 () List!56771)

(assert (=> b!4919364 (= e!3074254 lt!2020487)))

(declare-fun b!4919366 () Bool)

(declare-fun res!2100625 () Bool)

(declare-fun e!3074255 () Bool)

(assert (=> b!4919366 (=> (not res!2100625) (not e!3074255))))

(declare-fun lt!2020860 () List!56771)

(assert (=> b!4919366 (= res!2100625 (= (size!37424 lt!2020860) (+ (size!37424 Nil!56647) (size!37424 lt!2020487))))))

(declare-fun b!4919365 () Bool)

(assert (=> b!4919365 (= e!3074254 (Cons!56647 (h!63095 Nil!56647) (++!12302 (t!367195 Nil!56647) lt!2020487)))))

(declare-fun d!1582094 () Bool)

(assert (=> d!1582094 e!3074255))

(declare-fun res!2100626 () Bool)

(assert (=> d!1582094 (=> (not res!2100626) (not e!3074255))))

(assert (=> d!1582094 (= res!2100626 (= (content!10051 lt!2020860) ((_ map or) (content!10051 Nil!56647) (content!10051 lt!2020487))))))

(assert (=> d!1582094 (= lt!2020860 e!3074254)))

(declare-fun c!836880 () Bool)

(assert (=> d!1582094 (= c!836880 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1582094 (= (++!12302 Nil!56647 lt!2020487) lt!2020860)))

(declare-fun b!4919367 () Bool)

(assert (=> b!4919367 (= e!3074255 (or (not (= lt!2020487 Nil!56647)) (= lt!2020860 Nil!56647)))))

(assert (= (and d!1582094 c!836880) b!4919364))

(assert (= (and d!1582094 (not c!836880)) b!4919365))

(assert (= (and d!1582094 res!2100626) b!4919366))

(assert (= (and b!4919366 res!2100625) b!4919367))

(declare-fun m!5932564 () Bool)

(assert (=> b!4919366 m!5932564))

(assert (=> b!4919366 m!5931462))

(declare-fun m!5932566 () Bool)

(assert (=> b!4919366 m!5932566))

(declare-fun m!5932568 () Bool)

(assert (=> b!4919365 m!5932568))

(declare-fun m!5932570 () Bool)

(assert (=> d!1582094 m!5932570))

(assert (=> d!1582094 m!5931742))

(declare-fun m!5932572 () Bool)

(assert (=> d!1582094 m!5932572))

(assert (=> d!1581914 d!1582094))

(declare-fun d!1582096 () Bool)

(declare-fun lt!2020861 () Int)

(assert (=> d!1582096 (>= lt!2020861 0)))

(declare-fun e!3074256 () Int)

(assert (=> d!1582096 (= lt!2020861 e!3074256)))

(declare-fun c!836881 () Bool)

(assert (=> d!1582096 (= c!836881 ((_ is Nil!56647) lt!2020307))))

(assert (=> d!1582096 (= (size!37424 lt!2020307) lt!2020861)))

(declare-fun b!4919368 () Bool)

(assert (=> b!4919368 (= e!3074256 0)))

(declare-fun b!4919369 () Bool)

(assert (=> b!4919369 (= e!3074256 (+ 1 (size!37424 (t!367195 lt!2020307))))))

(assert (= (and d!1582096 c!836881) b!4919368))

(assert (= (and d!1582096 (not c!836881)) b!4919369))

(declare-fun m!5932574 () Bool)

(assert (=> b!4919369 m!5932574))

(assert (=> d!1581914 d!1582096))

(assert (=> d!1581914 d!1581892))

(declare-fun d!1582098 () Bool)

(declare-fun res!2100627 () Bool)

(declare-fun e!3074257 () Bool)

(assert (=> d!1582098 (=> res!2100627 e!3074257)))

(assert (=> d!1582098 (= res!2100627 ((_ is Nil!56648) (t!367196 (exprs!3497 setElem!27414))))))

(assert (=> d!1582098 (= (forall!13113 (t!367196 (exprs!3497 setElem!27414)) lambda!244986) e!3074257)))

(declare-fun b!4919370 () Bool)

(declare-fun e!3074258 () Bool)

(assert (=> b!4919370 (= e!3074257 e!3074258)))

(declare-fun res!2100628 () Bool)

(assert (=> b!4919370 (=> (not res!2100628) (not e!3074258))))

(assert (=> b!4919370 (= res!2100628 (dynLambda!23002 lambda!244986 (h!63096 (t!367196 (exprs!3497 setElem!27414)))))))

(declare-fun b!4919371 () Bool)

(assert (=> b!4919371 (= e!3074258 (forall!13113 (t!367196 (t!367196 (exprs!3497 setElem!27414))) lambda!244986))))

(assert (= (and d!1582098 (not res!2100627)) b!4919370))

(assert (= (and b!4919370 res!2100628) b!4919371))

(declare-fun b_lambda!196249 () Bool)

(assert (=> (not b_lambda!196249) (not b!4919370)))

(declare-fun m!5932576 () Bool)

(assert (=> b!4919370 m!5932576))

(declare-fun m!5932578 () Bool)

(assert (=> b!4919371 m!5932578))

(assert (=> b!4919088 d!1582098))

(declare-fun d!1582100 () Bool)

(declare-fun lt!2020864 () Bool)

(assert (=> d!1582100 (= lt!2020864 (exists!1239 (toList!7939 z!3559) lambda!244989))))

(declare-fun choose!36012 ((InoxSet Context!5994) Int) Bool)

(assert (=> d!1582100 (= lt!2020864 (choose!36012 z!3559 lambda!244989))))

(assert (=> d!1582100 (= (exists!1238 z!3559 lambda!244989) lt!2020864)))

(declare-fun bs!1178898 () Bool)

(assert (= bs!1178898 d!1582100))

(assert (=> bs!1178898 m!5931978))

(assert (=> bs!1178898 m!5931978))

(declare-fun m!5932580 () Bool)

(assert (=> bs!1178898 m!5932580))

(declare-fun m!5932582 () Bool)

(assert (=> bs!1178898 m!5932582))

(assert (=> d!1581832 d!1582100))

(declare-fun d!1582102 () Bool)

(declare-fun res!2100629 () Bool)

(declare-fun e!3074259 () Bool)

(assert (=> d!1582102 (=> res!2100629 e!3074259)))

(assert (=> d!1582102 (= res!2100629 ((_ is Nil!56648) (exprs!3497 setElem!27420)))))

(assert (=> d!1582102 (= (forall!13113 (exprs!3497 setElem!27420) lambda!244990) e!3074259)))

(declare-fun b!4919372 () Bool)

(declare-fun e!3074260 () Bool)

(assert (=> b!4919372 (= e!3074259 e!3074260)))

(declare-fun res!2100630 () Bool)

(assert (=> b!4919372 (=> (not res!2100630) (not e!3074260))))

(assert (=> b!4919372 (= res!2100630 (dynLambda!23002 lambda!244990 (h!63096 (exprs!3497 setElem!27420))))))

(declare-fun b!4919373 () Bool)

(assert (=> b!4919373 (= e!3074260 (forall!13113 (t!367196 (exprs!3497 setElem!27420)) lambda!244990))))

(assert (= (and d!1582102 (not res!2100629)) b!4919372))

(assert (= (and b!4919372 res!2100630) b!4919373))

(declare-fun b_lambda!196251 () Bool)

(assert (=> (not b_lambda!196251) (not b!4919372)))

(declare-fun m!5932584 () Bool)

(assert (=> b!4919372 m!5932584))

(declare-fun m!5932586 () Bool)

(assert (=> b!4919373 m!5932586))

(assert (=> d!1581834 d!1582102))

(declare-fun d!1582104 () Bool)

(assert (=> d!1582104 (= (height!1978 (left!41299 (c!836549 (_1!33835 lt!2020059)))) (ite ((_ is Empty!14854) (left!41299 (c!836549 (_1!33835 lt!2020059)))) 0 (ite ((_ is Leaf!24714) (left!41299 (c!836549 (_1!33835 lt!2020059)))) 1 (cheight!15065 (left!41299 (c!836549 (_1!33835 lt!2020059)))))))))

(assert (=> b!4918950 d!1582104))

(declare-fun d!1582106 () Bool)

(assert (=> d!1582106 (= (height!1978 (right!41629 (c!836549 (_1!33835 lt!2020059)))) (ite ((_ is Empty!14854) (right!41629 (c!836549 (_1!33835 lt!2020059)))) 0 (ite ((_ is Leaf!24714) (right!41629 (c!836549 (_1!33835 lt!2020059)))) 1 (cheight!15065 (right!41629 (c!836549 (_1!33835 lt!2020059)))))))))

(assert (=> b!4918950 d!1582106))

(declare-fun d!1582108 () Bool)

(declare-fun choose!36013 ((InoxSet Context!5994) Int) (InoxSet Context!5994))

(assert (=> d!1582108 (= (flatMap!260 z!3559 lambda!245023) (choose!36013 z!3559 lambda!245023))))

(declare-fun bs!1178899 () Bool)

(assert (= bs!1178899 d!1582108))

(declare-fun m!5932588 () Bool)

(assert (=> bs!1178899 m!5932588))

(assert (=> d!1582004 d!1582108))

(declare-fun d!1582110 () Bool)

(declare-fun lt!2020865 () Int)

(assert (=> d!1582110 (= lt!2020865 (size!37424 (list!17913 (left!41299 (c!836549 input!5492)))))))

(assert (=> d!1582110 (= lt!2020865 (ite ((_ is Empty!14854) (left!41299 (c!836549 input!5492))) 0 (ite ((_ is Leaf!24714) (left!41299 (c!836549 input!5492))) (csize!29939 (left!41299 (c!836549 input!5492))) (csize!29938 (left!41299 (c!836549 input!5492))))))))

(assert (=> d!1582110 (= (size!37425 (left!41299 (c!836549 input!5492))) lt!2020865)))

(declare-fun bs!1178900 () Bool)

(assert (= bs!1178900 d!1582110))

(assert (=> bs!1178900 m!5931612))

(assert (=> bs!1178900 m!5931612))

(assert (=> bs!1178900 m!5932530))

(assert (=> d!1581992 d!1582110))

(declare-fun d!1582112 () Bool)

(declare-fun lt!2020866 () Int)

(assert (=> d!1582112 (= lt!2020866 (size!37424 (list!17913 (right!41629 (c!836549 input!5492)))))))

(assert (=> d!1582112 (= lt!2020866 (ite ((_ is Empty!14854) (right!41629 (c!836549 input!5492))) 0 (ite ((_ is Leaf!24714) (right!41629 (c!836549 input!5492))) (csize!29939 (right!41629 (c!836549 input!5492))) (csize!29938 (right!41629 (c!836549 input!5492))))))))

(assert (=> d!1582112 (= (size!37425 (right!41629 (c!836549 input!5492))) lt!2020866)))

(declare-fun bs!1178901 () Bool)

(assert (= bs!1178901 d!1582112))

(assert (=> bs!1178901 m!5931930))

(assert (=> bs!1178901 m!5931930))

(assert (=> bs!1178901 m!5932532))

(assert (=> d!1581992 d!1582112))

(declare-fun d!1582114 () Bool)

(assert (=> d!1582114 (= (height!1978 (left!41299 (right!41629 (c!836549 input!5492)))) (ite ((_ is Empty!14854) (left!41299 (right!41629 (c!836549 input!5492)))) 0 (ite ((_ is Leaf!24714) (left!41299 (right!41629 (c!836549 input!5492)))) 1 (cheight!15065 (left!41299 (right!41629 (c!836549 input!5492)))))))))

(assert (=> b!4919056 d!1582114))

(declare-fun d!1582116 () Bool)

(assert (=> d!1582116 (= (height!1978 (right!41629 (right!41629 (c!836549 input!5492)))) (ite ((_ is Empty!14854) (right!41629 (right!41629 (c!836549 input!5492)))) 0 (ite ((_ is Leaf!24714) (right!41629 (right!41629 (c!836549 input!5492)))) 1 (cheight!15065 (right!41629 (right!41629 (c!836549 input!5492)))))))))

(assert (=> b!4919056 d!1582116))

(declare-fun bs!1178902 () Bool)

(declare-fun d!1582118 () Bool)

(assert (= bs!1178902 (and d!1582118 d!1581822)))

(declare-fun lambda!245039 () Int)

(assert (=> bs!1178902 (= lambda!245039 lambda!244986)))

(declare-fun bs!1178903 () Bool)

(assert (= bs!1178903 (and d!1582118 d!1581834)))

(assert (=> bs!1178903 (= lambda!245039 lambda!244990)))

(assert (=> d!1582118 (= (inv!73338 setElem!27421) (forall!13113 (exprs!3497 setElem!27421) lambda!245039))))

(declare-fun bs!1178904 () Bool)

(assert (= bs!1178904 d!1582118))

(declare-fun m!5932590 () Bool)

(assert (=> bs!1178904 m!5932590))

(assert (=> setNonEmpty!27421 d!1582118))

(assert (=> bm!341995 d!1581832))

(declare-fun b!4919374 () Bool)

(declare-fun e!3074261 () List!56771)

(assert (=> b!4919374 (= e!3074261 (_2!33838 lt!2020823))))

(declare-fun b!4919376 () Bool)

(declare-fun res!2100631 () Bool)

(declare-fun e!3074262 () Bool)

(assert (=> b!4919376 (=> (not res!2100631) (not e!3074262))))

(declare-fun lt!2020867 () List!56771)

(assert (=> b!4919376 (= res!2100631 (= (size!37424 lt!2020867) (+ (size!37424 (_1!33838 lt!2020823)) (size!37424 (_2!33838 lt!2020823)))))))

(declare-fun b!4919375 () Bool)

(assert (=> b!4919375 (= e!3074261 (Cons!56647 (h!63095 (_1!33838 lt!2020823)) (++!12302 (t!367195 (_1!33838 lt!2020823)) (_2!33838 lt!2020823))))))

(declare-fun d!1582120 () Bool)

(assert (=> d!1582120 e!3074262))

(declare-fun res!2100632 () Bool)

(assert (=> d!1582120 (=> (not res!2100632) (not e!3074262))))

(assert (=> d!1582120 (= res!2100632 (= (content!10051 lt!2020867) ((_ map or) (content!10051 (_1!33838 lt!2020823)) (content!10051 (_2!33838 lt!2020823)))))))

(assert (=> d!1582120 (= lt!2020867 e!3074261)))

(declare-fun c!836882 () Bool)

(assert (=> d!1582120 (= c!836882 ((_ is Nil!56647) (_1!33838 lt!2020823)))))

(assert (=> d!1582120 (= (++!12302 (_1!33838 lt!2020823) (_2!33838 lt!2020823)) lt!2020867)))

(declare-fun b!4919377 () Bool)

(assert (=> b!4919377 (= e!3074262 (or (not (= (_2!33838 lt!2020823) Nil!56647)) (= lt!2020867 (_1!33838 lt!2020823))))))

(assert (= (and d!1582120 c!836882) b!4919374))

(assert (= (and d!1582120 (not c!836882)) b!4919375))

(assert (= (and d!1582120 res!2100632) b!4919376))

(assert (= (and b!4919376 res!2100631) b!4919377))

(declare-fun m!5932592 () Bool)

(assert (=> b!4919376 m!5932592))

(declare-fun m!5932594 () Bool)

(assert (=> b!4919376 m!5932594))

(declare-fun m!5932596 () Bool)

(assert (=> b!4919376 m!5932596))

(declare-fun m!5932598 () Bool)

(assert (=> b!4919375 m!5932598))

(declare-fun m!5932600 () Bool)

(assert (=> d!1582120 m!5932600))

(declare-fun m!5932602 () Bool)

(assert (=> d!1582120 m!5932602))

(declare-fun m!5932604 () Bool)

(assert (=> d!1582120 m!5932604))

(assert (=> d!1582018 d!1582120))

(declare-fun d!1582122 () Bool)

(assert (=> d!1582122 (= (height!1978 (left!41299 (left!41299 (c!836549 input!5492)))) (ite ((_ is Empty!14854) (left!41299 (left!41299 (c!836549 input!5492)))) 0 (ite ((_ is Leaf!24714) (left!41299 (left!41299 (c!836549 input!5492)))) 1 (cheight!15065 (left!41299 (left!41299 (c!836549 input!5492)))))))))

(assert (=> b!4919059 d!1582122))

(declare-fun d!1582124 () Bool)

(assert (=> d!1582124 (= (height!1978 (right!41629 (left!41299 (c!836549 input!5492)))) (ite ((_ is Empty!14854) (right!41629 (left!41299 (c!836549 input!5492)))) 0 (ite ((_ is Leaf!24714) (right!41629 (left!41299 (c!836549 input!5492)))) 1 (cheight!15065 (right!41629 (left!41299 (c!836549 input!5492)))))))))

(assert (=> b!4919059 d!1582124))

(declare-fun d!1582126 () Bool)

(declare-fun c!836885 () Bool)

(assert (=> d!1582126 (= c!836885 ((_ is Nil!56647) lt!2020488))))

(declare-fun e!3074265 () (InoxSet C!26920))

(assert (=> d!1582126 (= (content!10051 lt!2020488) e!3074265)))

(declare-fun b!4919382 () Bool)

(assert (=> b!4919382 (= e!3074265 ((as const (Array C!26920 Bool)) false))))

(declare-fun b!4919383 () Bool)

(assert (=> b!4919383 (= e!3074265 ((_ map or) (store ((as const (Array C!26920 Bool)) false) (h!63095 lt!2020488) true) (content!10051 (t!367195 lt!2020488))))))

(assert (= (and d!1582126 c!836885) b!4919382))

(assert (= (and d!1582126 (not c!836885)) b!4919383))

(declare-fun m!5932606 () Bool)

(assert (=> b!4919383 m!5932606))

(declare-fun m!5932608 () Bool)

(assert (=> b!4919383 m!5932608))

(assert (=> d!1581924 d!1582126))

(declare-fun d!1582128 () Bool)

(declare-fun c!836886 () Bool)

(assert (=> d!1582128 (= c!836886 ((_ is Nil!56647) (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))))))

(declare-fun e!3074266 () (InoxSet C!26920))

(assert (=> d!1582128 (= (content!10051 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))) e!3074266)))

(declare-fun b!4919384 () Bool)

(assert (=> b!4919384 (= e!3074266 ((as const (Array C!26920 Bool)) false))))

(declare-fun b!4919385 () Bool)

(assert (=> b!4919385 (= e!3074266 ((_ map or) (store ((as const (Array C!26920 Bool)) false) (h!63095 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))) true) (content!10051 (t!367195 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))))))))

(assert (= (and d!1582128 c!836886) b!4919384))

(assert (= (and d!1582128 (not c!836886)) b!4919385))

(declare-fun m!5932610 () Bool)

(assert (=> b!4919385 m!5932610))

(declare-fun m!5932612 () Bool)

(assert (=> b!4919385 m!5932612))

(assert (=> d!1581924 d!1582128))

(declare-fun d!1582130 () Bool)

(declare-fun c!836887 () Bool)

(assert (=> d!1582130 (= c!836887 ((_ is Nil!56647) lt!2020284))))

(declare-fun e!3074267 () (InoxSet C!26920))

(assert (=> d!1582130 (= (content!10051 lt!2020284) e!3074267)))

(declare-fun b!4919386 () Bool)

(assert (=> b!4919386 (= e!3074267 ((as const (Array C!26920 Bool)) false))))

(declare-fun b!4919387 () Bool)

(assert (=> b!4919387 (= e!3074267 ((_ map or) (store ((as const (Array C!26920 Bool)) false) (h!63095 lt!2020284) true) (content!10051 (t!367195 lt!2020284))))))

(assert (= (and d!1582130 c!836887) b!4919386))

(assert (= (and d!1582130 (not c!836887)) b!4919387))

(declare-fun m!5932614 () Bool)

(assert (=> b!4919387 m!5932614))

(declare-fun m!5932616 () Bool)

(assert (=> b!4919387 m!5932616))

(assert (=> d!1581924 d!1582130))

(declare-fun b!4919388 () Bool)

(declare-fun res!2100638 () Bool)

(declare-fun e!3074268 () Bool)

(assert (=> b!4919388 (=> (not res!2100638) (not e!3074268))))

(assert (=> b!4919388 (= res!2100638 (not (isEmpty!30551 (left!41299 (c!836549 (_2!33835 lt!2020445))))))))

(declare-fun b!4919389 () Bool)

(assert (=> b!4919389 (= e!3074268 (not (isEmpty!30551 (right!41629 (c!836549 (_2!33835 lt!2020445))))))))

(declare-fun b!4919390 () Bool)

(declare-fun res!2100636 () Bool)

(assert (=> b!4919390 (=> (not res!2100636) (not e!3074268))))

(assert (=> b!4919390 (= res!2100636 (<= (- (height!1978 (left!41299 (c!836549 (_2!33835 lt!2020445)))) (height!1978 (right!41629 (c!836549 (_2!33835 lt!2020445))))) 1))))

(declare-fun d!1582132 () Bool)

(declare-fun res!2100633 () Bool)

(declare-fun e!3074269 () Bool)

(assert (=> d!1582132 (=> res!2100633 e!3074269)))

(assert (=> d!1582132 (= res!2100633 (not ((_ is Node!14854) (c!836549 (_2!33835 lt!2020445)))))))

(assert (=> d!1582132 (= (isBalanced!4070 (c!836549 (_2!33835 lt!2020445))) e!3074269)))

(declare-fun b!4919391 () Bool)

(declare-fun res!2100635 () Bool)

(assert (=> b!4919391 (=> (not res!2100635) (not e!3074268))))

(assert (=> b!4919391 (= res!2100635 (isBalanced!4070 (right!41629 (c!836549 (_2!33835 lt!2020445)))))))

(declare-fun b!4919392 () Bool)

(declare-fun res!2100637 () Bool)

(assert (=> b!4919392 (=> (not res!2100637) (not e!3074268))))

(assert (=> b!4919392 (= res!2100637 (isBalanced!4070 (left!41299 (c!836549 (_2!33835 lt!2020445)))))))

(declare-fun b!4919393 () Bool)

(assert (=> b!4919393 (= e!3074269 e!3074268)))

(declare-fun res!2100634 () Bool)

(assert (=> b!4919393 (=> (not res!2100634) (not e!3074268))))

(assert (=> b!4919393 (= res!2100634 (<= (- 1) (- (height!1978 (left!41299 (c!836549 (_2!33835 lt!2020445)))) (height!1978 (right!41629 (c!836549 (_2!33835 lt!2020445)))))))))

(assert (= (and d!1582132 (not res!2100633)) b!4919393))

(assert (= (and b!4919393 res!2100634) b!4919390))

(assert (= (and b!4919390 res!2100636) b!4919392))

(assert (= (and b!4919392 res!2100637) b!4919391))

(assert (= (and b!4919391 res!2100635) b!4919388))

(assert (= (and b!4919388 res!2100638) b!4919389))

(declare-fun m!5932618 () Bool)

(assert (=> b!4919391 m!5932618))

(declare-fun m!5932620 () Bool)

(assert (=> b!4919388 m!5932620))

(declare-fun m!5932622 () Bool)

(assert (=> b!4919393 m!5932622))

(declare-fun m!5932624 () Bool)

(assert (=> b!4919393 m!5932624))

(declare-fun m!5932626 () Bool)

(assert (=> b!4919389 m!5932626))

(assert (=> b!4919390 m!5932622))

(assert (=> b!4919390 m!5932624))

(declare-fun m!5932628 () Bool)

(assert (=> b!4919392 m!5932628))

(assert (=> b!4918637 d!1582132))

(declare-fun d!1582134 () Bool)

(assert (not d!1582134))

(assert (=> b!4918601 d!1582134))

(declare-fun d!1582136 () Bool)

(assert (=> d!1582136 (isPrefix!4945 (ite c!836598 lt!2020344 lt!2020348) (ite c!836598 lt!2020346 lt!2020358))))

(declare-fun lt!2020868 () Unit!146993)

(assert (=> d!1582136 (= lt!2020868 (choose!36004 (ite c!836598 lt!2020344 lt!2020348) (ite c!836598 lt!2020346 lt!2020358)))))

(assert (=> d!1582136 (= (lemmaIsPrefixRefl!3342 (ite c!836598 lt!2020344 lt!2020348) (ite c!836598 lt!2020346 lt!2020358)) lt!2020868)))

(declare-fun bs!1178905 () Bool)

(assert (= bs!1178905 d!1582136))

(assert (=> bs!1178905 m!5931522))

(declare-fun m!5932630 () Bool)

(assert (=> bs!1178905 m!5932630))

(assert (=> bm!341927 d!1582136))

(declare-fun bs!1178906 () Bool)

(declare-fun d!1582138 () Bool)

(assert (= bs!1178906 (and d!1582138 d!1582066)))

(declare-fun lambda!245042 () Int)

(assert (=> bs!1178906 (not (= lambda!245042 lambda!245037))))

(declare-fun bs!1178907 () Bool)

(assert (= bs!1178907 (and d!1582138 b!4918780)))

(assert (=> bs!1178907 (not (= lambda!245042 lambda!245004))))

(declare-fun bs!1178908 () Bool)

(assert (= bs!1178908 (and d!1582138 b!4918781)))

(assert (=> bs!1178908 (not (= lambda!245042 lambda!245005))))

(declare-fun bs!1178909 () Bool)

(assert (= bs!1178909 (and d!1582138 d!1581832)))

(assert (=> bs!1178909 (not (= lambda!245042 lambda!244989))))

(declare-fun bs!1178910 () Bool)

(assert (= bs!1178910 (and d!1582138 d!1581946)))

(assert (=> bs!1178910 (not (= lambda!245042 lambda!245003))))

(assert (=> d!1582138 true))

(declare-fun order!25971 () Int)

(declare-fun dynLambda!23003 (Int Int) Int)

(assert (=> d!1582138 (< (dynLambda!23003 order!25971 lambda!245003) (dynLambda!23003 order!25971 lambda!245042))))

(assert (=> d!1582138 (exists!1239 lt!2020523 lambda!245042)))

(declare-fun lt!2020871 () Unit!146993)

(declare-fun choose!36014 (List!56773 Int) Unit!146993)

(assert (=> d!1582138 (= lt!2020871 (choose!36014 lt!2020523 lambda!245003))))

(assert (=> d!1582138 (not (forall!13116 lt!2020523 lambda!245003))))

(assert (=> d!1582138 (= (lemmaNotForallThenExists!177 lt!2020523 lambda!245003) lt!2020871)))

(declare-fun bs!1178911 () Bool)

(assert (= bs!1178911 d!1582138))

(declare-fun m!5932632 () Bool)

(assert (=> bs!1178911 m!5932632))

(declare-fun m!5932634 () Bool)

(assert (=> bs!1178911 m!5932634))

(declare-fun m!5932636 () Bool)

(assert (=> bs!1178911 m!5932636))

(assert (=> b!4918780 d!1582138))

(declare-fun d!1582140 () Bool)

(declare-fun lt!2020874 () Bool)

(assert (=> d!1582140 (= lt!2020874 (select (content!10051 lt!2020318) lt!2020443))))

(declare-fun e!3074277 () Bool)

(assert (=> d!1582140 (= lt!2020874 e!3074277)))

(declare-fun res!2100643 () Bool)

(assert (=> d!1582140 (=> (not res!2100643) (not e!3074277))))

(assert (=> d!1582140 (= res!2100643 ((_ is Cons!56647) lt!2020318))))

(assert (=> d!1582140 (= (contains!19452 lt!2020318 lt!2020443) lt!2020874)))

(declare-fun b!4919400 () Bool)

(declare-fun e!3074276 () Bool)

(assert (=> b!4919400 (= e!3074277 e!3074276)))

(declare-fun res!2100644 () Bool)

(assert (=> b!4919400 (=> res!2100644 e!3074276)))

(assert (=> b!4919400 (= res!2100644 (= (h!63095 lt!2020318) lt!2020443))))

(declare-fun b!4919401 () Bool)

(assert (=> b!4919401 (= e!3074276 (contains!19452 (t!367195 lt!2020318) lt!2020443))))

(assert (= (and d!1582140 res!2100643) b!4919400))

(assert (= (and b!4919400 (not res!2100644)) b!4919401))

(assert (=> d!1582140 m!5931870))

(declare-fun m!5932638 () Bool)

(assert (=> d!1582140 m!5932638))

(declare-fun m!5932640 () Bool)

(assert (=> b!4919401 m!5932640))

(assert (=> d!1581872 d!1582140))

(declare-fun d!1582142 () Bool)

(assert (=> d!1582142 (= (height!1978 (left!41299 (c!836549 (_2!33835 lt!2020059)))) (ite ((_ is Empty!14854) (left!41299 (c!836549 (_2!33835 lt!2020059)))) 0 (ite ((_ is Leaf!24714) (left!41299 (c!836549 (_2!33835 lt!2020059)))) 1 (cheight!15065 (left!41299 (c!836549 (_2!33835 lt!2020059)))))))))

(assert (=> b!4919091 d!1582142))

(declare-fun d!1582144 () Bool)

(assert (=> d!1582144 (= (height!1978 (right!41629 (c!836549 (_2!33835 lt!2020059)))) (ite ((_ is Empty!14854) (right!41629 (c!836549 (_2!33835 lt!2020059)))) 0 (ite ((_ is Leaf!24714) (right!41629 (c!836549 (_2!33835 lt!2020059)))) 1 (cheight!15065 (right!41629 (c!836549 (_2!33835 lt!2020059)))))))))

(assert (=> b!4919091 d!1582144))

(declare-fun b!4919402 () Bool)

(declare-fun e!3074280 () Bool)

(declare-fun e!3074279 () Bool)

(assert (=> b!4919402 (= e!3074280 e!3074279)))

(declare-fun res!2100648 () Bool)

(assert (=> b!4919402 (=> (not res!2100648) (not e!3074279))))

(assert (=> b!4919402 (= res!2100648 (not ((_ is Nil!56647) (tail!9652 lt!2020307))))))

(declare-fun b!4919404 () Bool)

(assert (=> b!4919404 (= e!3074279 (isPrefix!4945 (tail!9652 (tail!9652 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)))) (tail!9652 (tail!9652 lt!2020307))))))

(declare-fun b!4919405 () Bool)

(declare-fun e!3074278 () Bool)

(assert (=> b!4919405 (= e!3074278 (>= (size!37424 (tail!9652 lt!2020307)) (size!37424 (tail!9652 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))))))))

(declare-fun d!1582146 () Bool)

(assert (=> d!1582146 e!3074278))

(declare-fun res!2100647 () Bool)

(assert (=> d!1582146 (=> res!2100647 e!3074278)))

(declare-fun lt!2020875 () Bool)

(assert (=> d!1582146 (= res!2100647 (not lt!2020875))))

(assert (=> d!1582146 (= lt!2020875 e!3074280)))

(declare-fun res!2100646 () Bool)

(assert (=> d!1582146 (=> res!2100646 e!3074280)))

(assert (=> d!1582146 (= res!2100646 ((_ is Nil!56647) (tail!9652 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)))))))

(assert (=> d!1582146 (= (isPrefix!4945 (tail!9652 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))) (tail!9652 lt!2020307)) lt!2020875)))

(declare-fun b!4919403 () Bool)

(declare-fun res!2100645 () Bool)

(assert (=> b!4919403 (=> (not res!2100645) (not e!3074279))))

(assert (=> b!4919403 (= res!2100645 (= (head!10505 (tail!9652 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)))) (head!10505 (tail!9652 lt!2020307))))))

(assert (= (and d!1582146 (not res!2100646)) b!4919402))

(assert (= (and b!4919402 res!2100648) b!4919403))

(assert (= (and b!4919403 res!2100645) b!4919404))

(assert (= (and d!1582146 (not res!2100647)) b!4919405))

(assert (=> b!4919404 m!5931756))

(declare-fun m!5932642 () Bool)

(assert (=> b!4919404 m!5932642))

(assert (=> b!4919404 m!5931758))

(declare-fun m!5932644 () Bool)

(assert (=> b!4919404 m!5932644))

(assert (=> b!4919404 m!5932642))

(assert (=> b!4919404 m!5932644))

(declare-fun m!5932646 () Bool)

(assert (=> b!4919404 m!5932646))

(assert (=> b!4919405 m!5931758))

(declare-fun m!5932648 () Bool)

(assert (=> b!4919405 m!5932648))

(assert (=> b!4919405 m!5931756))

(declare-fun m!5932650 () Bool)

(assert (=> b!4919405 m!5932650))

(assert (=> b!4919403 m!5931756))

(declare-fun m!5932652 () Bool)

(assert (=> b!4919403 m!5932652))

(assert (=> b!4919403 m!5931758))

(declare-fun m!5932654 () Bool)

(assert (=> b!4919403 m!5932654))

(assert (=> b!4918614 d!1582146))

(declare-fun d!1582148 () Bool)

(assert (=> d!1582148 (= (tail!9652 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))) (t!367195 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))))))

(assert (=> b!4918614 d!1582148))

(declare-fun d!1582150 () Bool)

(assert (=> d!1582150 (= (tail!9652 lt!2020307) (t!367195 lt!2020307))))

(assert (=> b!4918614 d!1582150))

(declare-fun d!1582152 () Bool)

(declare-fun lt!2020876 () Int)

(assert (=> d!1582152 (>= lt!2020876 0)))

(declare-fun e!3074281 () Int)

(assert (=> d!1582152 (= lt!2020876 e!3074281)))

(declare-fun c!836888 () Bool)

(assert (=> d!1582152 (= c!836888 ((_ is Nil!56647) (ite c!836789 lt!2020788 lt!2020778)))))

(assert (=> d!1582152 (= (size!37424 (ite c!836789 lt!2020788 lt!2020778)) lt!2020876)))

(declare-fun b!4919406 () Bool)

(assert (=> b!4919406 (= e!3074281 0)))

(declare-fun b!4919407 () Bool)

(assert (=> b!4919407 (= e!3074281 (+ 1 (size!37424 (t!367195 (ite c!836789 lt!2020788 lt!2020778)))))))

(assert (= (and d!1582152 c!836888) b!4919406))

(assert (= (and d!1582152 (not c!836888)) b!4919407))

(declare-fun m!5932656 () Bool)

(assert (=> b!4919407 m!5932656))

(assert (=> bm!342034 d!1582152))

(declare-fun d!1582154 () Bool)

(assert (=> d!1582154 (= (head!10505 lt!2020053) (h!63095 lt!2020053))))

(assert (=> bm!341997 d!1582154))

(assert (=> d!1581842 d!1581892))

(assert (=> d!1581842 d!1581926))

(declare-fun d!1582156 () Bool)

(assert (=> d!1582156 (<= (size!37424 Nil!56647) (size!37424 lt!2020304))))

(assert (=> d!1582156 true))

(declare-fun _$64!600 () Unit!146993)

(assert (=> d!1582156 (= (choose!35995 Nil!56647 lt!2020304) _$64!600)))

(declare-fun bs!1178912 () Bool)

(assert (= bs!1178912 d!1582156))

(assert (=> bs!1178912 m!5931462))

(assert (=> bs!1178912 m!5931430))

(assert (=> d!1581842 d!1582156))

(declare-fun b!4919408 () Bool)

(declare-fun e!3074284 () Bool)

(declare-fun e!3074283 () Bool)

(assert (=> b!4919408 (= e!3074284 e!3074283)))

(declare-fun res!2100652 () Bool)

(assert (=> b!4919408 (=> (not res!2100652) (not e!3074283))))

(assert (=> b!4919408 (= res!2100652 (not ((_ is Nil!56647) lt!2020304)))))

(declare-fun b!4919410 () Bool)

(assert (=> b!4919410 (= e!3074283 (isPrefix!4945 (tail!9652 Nil!56647) (tail!9652 lt!2020304)))))

(declare-fun b!4919411 () Bool)

(declare-fun e!3074282 () Bool)

(assert (=> b!4919411 (= e!3074282 (>= (size!37424 lt!2020304) (size!37424 Nil!56647)))))

(declare-fun d!1582158 () Bool)

(assert (=> d!1582158 e!3074282))

(declare-fun res!2100651 () Bool)

(assert (=> d!1582158 (=> res!2100651 e!3074282)))

(declare-fun lt!2020877 () Bool)

(assert (=> d!1582158 (= res!2100651 (not lt!2020877))))

(assert (=> d!1582158 (= lt!2020877 e!3074284)))

(declare-fun res!2100650 () Bool)

(assert (=> d!1582158 (=> res!2100650 e!3074284)))

(assert (=> d!1582158 (= res!2100650 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1582158 (= (isPrefix!4945 Nil!56647 lt!2020304) lt!2020877)))

(declare-fun b!4919409 () Bool)

(declare-fun res!2100649 () Bool)

(assert (=> b!4919409 (=> (not res!2100649) (not e!3074283))))

(assert (=> b!4919409 (= res!2100649 (= (head!10505 Nil!56647) (head!10505 lt!2020304)))))

(assert (= (and d!1582158 (not res!2100650)) b!4919408))

(assert (= (and b!4919408 res!2100652) b!4919409))

(assert (= (and b!4919409 res!2100649) b!4919410))

(assert (= (and d!1582158 (not res!2100651)) b!4919411))

(assert (=> b!4919410 m!5931996))

(declare-fun m!5932658 () Bool)

(assert (=> b!4919410 m!5932658))

(assert (=> b!4919410 m!5931996))

(assert (=> b!4919410 m!5932658))

(declare-fun m!5932660 () Bool)

(assert (=> b!4919410 m!5932660))

(assert (=> b!4919411 m!5931430))

(assert (=> b!4919411 m!5931462))

(assert (=> b!4919409 m!5932014))

(declare-fun m!5932662 () Bool)

(assert (=> b!4919409 m!5932662))

(assert (=> d!1581842 d!1582158))

(declare-fun b!4919412 () Bool)

(declare-fun e!3074285 () List!56771)

(assert (=> b!4919412 (= e!3074285 lt!2020284)))

(declare-fun b!4919414 () Bool)

(declare-fun res!2100653 () Bool)

(declare-fun e!3074286 () Bool)

(assert (=> b!4919414 (=> (not res!2100653) (not e!3074286))))

(declare-fun lt!2020878 () List!56771)

(assert (=> b!4919414 (= res!2100653 (= (size!37424 lt!2020878) (+ (size!37424 (t!367195 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647)))) (size!37424 lt!2020284))))))

(declare-fun b!4919413 () Bool)

(assert (=> b!4919413 (= e!3074285 (Cons!56647 (h!63095 (t!367195 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647)))) (++!12302 (t!367195 (t!367195 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647)))) lt!2020284)))))

(declare-fun d!1582160 () Bool)

(assert (=> d!1582160 e!3074286))

(declare-fun res!2100654 () Bool)

(assert (=> d!1582160 (=> (not res!2100654) (not e!3074286))))

(assert (=> d!1582160 (= res!2100654 (= (content!10051 lt!2020878) ((_ map or) (content!10051 (t!367195 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647)))) (content!10051 lt!2020284))))))

(assert (=> d!1582160 (= lt!2020878 e!3074285)))

(declare-fun c!836889 () Bool)

(assert (=> d!1582160 (= c!836889 ((_ is Nil!56647) (t!367195 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647)))))))

(assert (=> d!1582160 (= (++!12302 (t!367195 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))) lt!2020284) lt!2020878)))

(declare-fun b!4919415 () Bool)

(assert (=> b!4919415 (= e!3074286 (or (not (= lt!2020284 Nil!56647)) (= lt!2020878 (t!367195 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647))))))))

(assert (= (and d!1582160 c!836889) b!4919412))

(assert (= (and d!1582160 (not c!836889)) b!4919413))

(assert (= (and d!1582160 res!2100654) b!4919414))

(assert (= (and b!4919414 res!2100653) b!4919415))

(declare-fun m!5932664 () Bool)

(assert (=> b!4919414 m!5932664))

(assert (=> b!4919414 m!5932512))

(assert (=> b!4919414 m!5931918))

(declare-fun m!5932666 () Bool)

(assert (=> b!4919413 m!5932666))

(declare-fun m!5932668 () Bool)

(assert (=> d!1582160 m!5932668))

(assert (=> d!1582160 m!5932612))

(assert (=> d!1582160 m!5931926))

(assert (=> b!4918725 d!1582160))

(declare-fun b!4919416 () Bool)

(declare-fun e!3074287 () List!56771)

(assert (=> b!4919416 (= e!3074287 (Cons!56647 call!341937 Nil!56647))))

(declare-fun b!4919418 () Bool)

(declare-fun res!2100655 () Bool)

(declare-fun e!3074288 () Bool)

(assert (=> b!4919418 (=> (not res!2100655) (not e!3074288))))

(declare-fun lt!2020879 () List!56771)

(assert (=> b!4919418 (= res!2100655 (= (size!37424 lt!2020879) (+ (size!37424 call!341923) (size!37424 (Cons!56647 call!341937 Nil!56647)))))))

(declare-fun b!4919417 () Bool)

(assert (=> b!4919417 (= e!3074287 (Cons!56647 (h!63095 call!341923) (++!12302 (t!367195 call!341923) (Cons!56647 call!341937 Nil!56647))))))

(declare-fun d!1582162 () Bool)

(assert (=> d!1582162 e!3074288))

(declare-fun res!2100656 () Bool)

(assert (=> d!1582162 (=> (not res!2100656) (not e!3074288))))

(assert (=> d!1582162 (= res!2100656 (= (content!10051 lt!2020879) ((_ map or) (content!10051 call!341923) (content!10051 (Cons!56647 call!341937 Nil!56647)))))))

(assert (=> d!1582162 (= lt!2020879 e!3074287)))

(declare-fun c!836890 () Bool)

(assert (=> d!1582162 (= c!836890 ((_ is Nil!56647) call!341923))))

(assert (=> d!1582162 (= (++!12302 call!341923 (Cons!56647 call!341937 Nil!56647)) lt!2020879)))

(declare-fun b!4919419 () Bool)

(assert (=> b!4919419 (= e!3074288 (or (not (= (Cons!56647 call!341937 Nil!56647) Nil!56647)) (= lt!2020879 call!341923)))))

(assert (= (and d!1582162 c!836890) b!4919416))

(assert (= (and d!1582162 (not c!836890)) b!4919417))

(assert (= (and d!1582162 res!2100656) b!4919418))

(assert (= (and b!4919418 res!2100655) b!4919419))

(declare-fun m!5932670 () Bool)

(assert (=> b!4919418 m!5932670))

(assert (=> b!4919418 m!5931562))

(declare-fun m!5932672 () Bool)

(assert (=> b!4919418 m!5932672))

(declare-fun m!5932674 () Bool)

(assert (=> b!4919417 m!5932674))

(declare-fun m!5932676 () Bool)

(assert (=> d!1582162 m!5932676))

(declare-fun m!5932678 () Bool)

(assert (=> d!1582162 m!5932678))

(declare-fun m!5932680 () Bool)

(assert (=> d!1582162 m!5932680))

(assert (=> bm!341928 d!1582162))

(declare-fun d!1582164 () Bool)

(declare-fun lt!2020880 () Int)

(assert (=> d!1582164 (>= lt!2020880 0)))

(declare-fun e!3074289 () Int)

(assert (=> d!1582164 (= lt!2020880 e!3074289)))

(declare-fun c!836891 () Bool)

(assert (=> d!1582164 (= c!836891 ((_ is Nil!56647) (t!367195 (_1!33838 (findLongestMatchInnerZipper!40 z!3559 Nil!56647 0 lt!2020053 (list!17911 input!5492) lt!2020052)))))))

(assert (=> d!1582164 (= (size!37424 (t!367195 (_1!33838 (findLongestMatchInnerZipper!40 z!3559 Nil!56647 0 lt!2020053 (list!17911 input!5492) lt!2020052)))) lt!2020880)))

(declare-fun b!4919420 () Bool)

(assert (=> b!4919420 (= e!3074289 0)))

(declare-fun b!4919421 () Bool)

(assert (=> b!4919421 (= e!3074289 (+ 1 (size!37424 (t!367195 (t!367195 (_1!33838 (findLongestMatchInnerZipper!40 z!3559 Nil!56647 0 lt!2020053 (list!17911 input!5492) lt!2020052)))))))))

(assert (= (and d!1582164 c!836891) b!4919420))

(assert (= (and d!1582164 (not c!836891)) b!4919421))

(declare-fun m!5932682 () Bool)

(assert (=> b!4919421 m!5932682))

(assert (=> b!4918783 d!1582164))

(declare-fun d!1582166 () Bool)

(declare-fun c!836892 () Bool)

(assert (=> d!1582166 (= c!836892 ((_ is Nil!56647) lt!2020462))))

(declare-fun e!3074290 () (InoxSet C!26920))

(assert (=> d!1582166 (= (content!10051 lt!2020462) e!3074290)))

(declare-fun b!4919422 () Bool)

(assert (=> b!4919422 (= e!3074290 ((as const (Array C!26920 Bool)) false))))

(declare-fun b!4919423 () Bool)

(assert (=> b!4919423 (= e!3074290 ((_ map or) (store ((as const (Array C!26920 Bool)) false) (h!63095 lt!2020462) true) (content!10051 (t!367195 lt!2020462))))))

(assert (= (and d!1582166 c!836892) b!4919422))

(assert (= (and d!1582166 (not c!836892)) b!4919423))

(declare-fun m!5932684 () Bool)

(assert (=> b!4919423 m!5932684))

(declare-fun m!5932686 () Bool)

(assert (=> b!4919423 m!5932686))

(assert (=> d!1581898 d!1582166))

(declare-fun d!1582168 () Bool)

(assert (=> d!1582168 (= (content!10051 Nil!56647) ((as const (Array C!26920 Bool)) false))))

(assert (=> d!1581898 d!1582168))

(declare-fun d!1582170 () Bool)

(declare-fun c!836893 () Bool)

(assert (=> d!1582170 (= c!836893 ((_ is Nil!56647) (Cons!56647 lt!2020295 Nil!56647)))))

(declare-fun e!3074291 () (InoxSet C!26920))

(assert (=> d!1582170 (= (content!10051 (Cons!56647 lt!2020295 Nil!56647)) e!3074291)))

(declare-fun b!4919424 () Bool)

(assert (=> b!4919424 (= e!3074291 ((as const (Array C!26920 Bool)) false))))

(declare-fun b!4919425 () Bool)

(assert (=> b!4919425 (= e!3074291 ((_ map or) (store ((as const (Array C!26920 Bool)) false) (h!63095 (Cons!56647 lt!2020295 Nil!56647)) true) (content!10051 (t!367195 (Cons!56647 lt!2020295 Nil!56647)))))))

(assert (= (and d!1582170 c!836893) b!4919424))

(assert (= (and d!1582170 (not c!836893)) b!4919425))

(declare-fun m!5932688 () Bool)

(assert (=> b!4919425 m!5932688))

(declare-fun m!5932690 () Bool)

(assert (=> b!4919425 m!5932690))

(assert (=> d!1581898 d!1582170))

(declare-fun d!1582172 () Bool)

(declare-fun c!836894 () Bool)

(assert (=> d!1582172 (= c!836894 ((_ is Nil!56647) lt!2020472))))

(declare-fun e!3074292 () (InoxSet C!26920))

(assert (=> d!1582172 (= (content!10051 lt!2020472) e!3074292)))

(declare-fun b!4919426 () Bool)

(assert (=> b!4919426 (= e!3074292 ((as const (Array C!26920 Bool)) false))))

(declare-fun b!4919427 () Bool)

(assert (=> b!4919427 (= e!3074292 ((_ map or) (store ((as const (Array C!26920 Bool)) false) (h!63095 lt!2020472) true) (content!10051 (t!367195 lt!2020472))))))

(assert (= (and d!1582172 c!836894) b!4919426))

(assert (= (and d!1582172 (not c!836894)) b!4919427))

(declare-fun m!5932692 () Bool)

(assert (=> b!4919427 m!5932692))

(declare-fun m!5932694 () Bool)

(assert (=> b!4919427 m!5932694))

(assert (=> d!1581900 d!1582172))

(declare-fun d!1582174 () Bool)

(declare-fun c!836895 () Bool)

(assert (=> d!1582174 (= c!836895 ((_ is Nil!56647) lt!2020318))))

(declare-fun e!3074293 () (InoxSet C!26920))

(assert (=> d!1582174 (= (content!10051 lt!2020318) e!3074293)))

(declare-fun b!4919428 () Bool)

(assert (=> b!4919428 (= e!3074293 ((as const (Array C!26920 Bool)) false))))

(declare-fun b!4919429 () Bool)

(assert (=> b!4919429 (= e!3074293 ((_ map or) (store ((as const (Array C!26920 Bool)) false) (h!63095 lt!2020318) true) (content!10051 (t!367195 lt!2020318))))))

(assert (= (and d!1582174 c!836895) b!4919428))

(assert (= (and d!1582174 (not c!836895)) b!4919429))

(declare-fun m!5932696 () Bool)

(assert (=> b!4919429 m!5932696))

(declare-fun m!5932698 () Bool)

(assert (=> b!4919429 m!5932698))

(assert (=> d!1581900 d!1582174))

(declare-fun d!1582176 () Bool)

(declare-fun lt!2020881 () Int)

(assert (=> d!1582176 (>= lt!2020881 0)))

(declare-fun e!3074294 () Int)

(assert (=> d!1582176 (= lt!2020881 e!3074294)))

(declare-fun c!836896 () Bool)

(assert (=> d!1582176 (= c!836896 ((_ is Nil!56647) (t!367195 lt!2020304)))))

(assert (=> d!1582176 (= (size!37424 (t!367195 lt!2020304)) lt!2020881)))

(declare-fun b!4919430 () Bool)

(assert (=> b!4919430 (= e!3074294 0)))

(declare-fun b!4919431 () Bool)

(assert (=> b!4919431 (= e!3074294 (+ 1 (size!37424 (t!367195 (t!367195 lt!2020304)))))))

(assert (= (and d!1582176 c!836896) b!4919430))

(assert (= (and d!1582176 (not c!836896)) b!4919431))

(declare-fun m!5932700 () Bool)

(assert (=> b!4919431 m!5932700))

(assert (=> b!4918729 d!1582176))

(assert (=> b!4918538 d!1581818))

(assert (=> d!1581848 d!1581928))

(assert (=> d!1581848 d!1581900))

(assert (=> d!1581848 d!1581872))

(declare-fun d!1582178 () Bool)

(assert (=> d!1582178 (= (head!10505 (drop!2209 lt!2020318 0)) (apply!13622 lt!2020318 0))))

(assert (=> d!1582178 true))

(declare-fun _$27!1648 () Unit!146993)

(assert (=> d!1582178 (= (choose!35996 lt!2020318 0) _$27!1648)))

(declare-fun bs!1178913 () Bool)

(assert (= bs!1178913 d!1582178))

(assert (=> bs!1178913 m!5931432))

(assert (=> bs!1178913 m!5931432))

(assert (=> bs!1178913 m!5931434))

(assert (=> bs!1178913 m!5931458))

(assert (=> d!1581848 d!1582178))

(declare-fun d!1582180 () Bool)

(declare-fun res!2100657 () Bool)

(declare-fun e!3074295 () Bool)

(assert (=> d!1582180 (=> (not res!2100657) (not e!3074295))))

(assert (=> d!1582180 (= res!2100657 (= (csize!29938 (left!41299 (c!836549 input!5492))) (+ (size!37425 (left!41299 (left!41299 (c!836549 input!5492)))) (size!37425 (right!41629 (left!41299 (c!836549 input!5492)))))))))

(assert (=> d!1582180 (= (inv!73342 (left!41299 (c!836549 input!5492))) e!3074295)))

(declare-fun b!4919432 () Bool)

(declare-fun res!2100658 () Bool)

(assert (=> b!4919432 (=> (not res!2100658) (not e!3074295))))

(assert (=> b!4919432 (= res!2100658 (and (not (= (left!41299 (left!41299 (c!836549 input!5492))) Empty!14854)) (not (= (right!41629 (left!41299 (c!836549 input!5492))) Empty!14854))))))

(declare-fun b!4919433 () Bool)

(declare-fun res!2100659 () Bool)

(assert (=> b!4919433 (=> (not res!2100659) (not e!3074295))))

(assert (=> b!4919433 (= res!2100659 (= (cheight!15065 (left!41299 (c!836549 input!5492))) (+ (max!0 (height!1978 (left!41299 (left!41299 (c!836549 input!5492)))) (height!1978 (right!41629 (left!41299 (c!836549 input!5492))))) 1)))))

(declare-fun b!4919434 () Bool)

(assert (=> b!4919434 (= e!3074295 (<= 0 (cheight!15065 (left!41299 (c!836549 input!5492)))))))

(assert (= (and d!1582180 res!2100657) b!4919432))

(assert (= (and b!4919432 res!2100658) b!4919433))

(assert (= (and b!4919433 res!2100659) b!4919434))

(declare-fun m!5932702 () Bool)

(assert (=> d!1582180 m!5932702))

(declare-fun m!5932704 () Bool)

(assert (=> d!1582180 m!5932704))

(assert (=> b!4919433 m!5932244))

(assert (=> b!4919433 m!5932246))

(assert (=> b!4919433 m!5932244))

(assert (=> b!4919433 m!5932246))

(declare-fun m!5932706 () Bool)

(assert (=> b!4919433 m!5932706))

(assert (=> b!4918730 d!1582180))

(declare-fun b!4919435 () Bool)

(declare-fun res!2100665 () Bool)

(declare-fun e!3074296 () Bool)

(assert (=> b!4919435 (=> (not res!2100665) (not e!3074296))))

(assert (=> b!4919435 (= res!2100665 (not (isEmpty!30551 (left!41299 (_1!33837 lt!2020784)))))))

(declare-fun b!4919436 () Bool)

(assert (=> b!4919436 (= e!3074296 (not (isEmpty!30551 (right!41629 (_1!33837 lt!2020784)))))))

(declare-fun b!4919437 () Bool)

(declare-fun res!2100663 () Bool)

(assert (=> b!4919437 (=> (not res!2100663) (not e!3074296))))

(assert (=> b!4919437 (= res!2100663 (<= (- (height!1978 (left!41299 (_1!33837 lt!2020784))) (height!1978 (right!41629 (_1!33837 lt!2020784)))) 1))))

(declare-fun d!1582182 () Bool)

(declare-fun res!2100660 () Bool)

(declare-fun e!3074297 () Bool)

(assert (=> d!1582182 (=> res!2100660 e!3074297)))

(assert (=> d!1582182 (= res!2100660 (not ((_ is Node!14854) (_1!33837 lt!2020784))))))

(assert (=> d!1582182 (= (isBalanced!4070 (_1!33837 lt!2020784)) e!3074297)))

(declare-fun b!4919438 () Bool)

(declare-fun res!2100662 () Bool)

(assert (=> b!4919438 (=> (not res!2100662) (not e!3074296))))

(assert (=> b!4919438 (= res!2100662 (isBalanced!4070 (right!41629 (_1!33837 lt!2020784))))))

(declare-fun b!4919439 () Bool)

(declare-fun res!2100664 () Bool)

(assert (=> b!4919439 (=> (not res!2100664) (not e!3074296))))

(assert (=> b!4919439 (= res!2100664 (isBalanced!4070 (left!41299 (_1!33837 lt!2020784))))))

(declare-fun b!4919440 () Bool)

(assert (=> b!4919440 (= e!3074297 e!3074296)))

(declare-fun res!2100661 () Bool)

(assert (=> b!4919440 (=> (not res!2100661) (not e!3074296))))

(assert (=> b!4919440 (= res!2100661 (<= (- 1) (- (height!1978 (left!41299 (_1!33837 lt!2020784))) (height!1978 (right!41629 (_1!33837 lt!2020784))))))))

(assert (= (and d!1582182 (not res!2100660)) b!4919440))

(assert (= (and b!4919440 res!2100661) b!4919437))

(assert (= (and b!4919437 res!2100663) b!4919439))

(assert (= (and b!4919439 res!2100664) b!4919438))

(assert (= (and b!4919438 res!2100662) b!4919435))

(assert (= (and b!4919435 res!2100665) b!4919436))

(declare-fun m!5932708 () Bool)

(assert (=> b!4919438 m!5932708))

(declare-fun m!5932710 () Bool)

(assert (=> b!4919435 m!5932710))

(declare-fun m!5932712 () Bool)

(assert (=> b!4919440 m!5932712))

(declare-fun m!5932714 () Bool)

(assert (=> b!4919440 m!5932714))

(declare-fun m!5932716 () Bool)

(assert (=> b!4919436 m!5932716))

(assert (=> b!4919437 m!5932712))

(assert (=> b!4919437 m!5932714))

(declare-fun m!5932718 () Bool)

(assert (=> b!4919439 m!5932718))

(assert (=> d!1581996 d!1582182))

(assert (=> d!1581996 d!1581796))

(declare-fun d!1582184 () Bool)

(assert (=> d!1582184 (= (isEmpty!30552 (_1!33838 lt!2020653)) ((_ is Nil!56647) (_1!33838 lt!2020653)))))

(assert (=> b!4918917 d!1582184))

(declare-fun d!1582186 () Bool)

(assert (=> d!1582186 (= (list!17911 (ite c!836598 input!5492 (_2!33835 lt!2020361))) (list!17913 (c!836549 (ite c!836598 input!5492 (_2!33835 lt!2020361)))))))

(declare-fun bs!1178914 () Bool)

(assert (= bs!1178914 d!1582186))

(declare-fun m!5932720 () Bool)

(assert (=> bs!1178914 m!5932720))

(assert (=> bm!341930 d!1582186))

(assert (=> b!4918947 d!1582104))

(assert (=> b!4918947 d!1582106))

(declare-fun d!1582188 () Bool)

(assert (=> d!1582188 (= (head!10505 (ite c!836592 lt!2020299 lt!2020303)) (h!63095 (ite c!836592 lt!2020299 lt!2020303)))))

(assert (=> b!4919066 d!1582188))

(declare-fun d!1582190 () Bool)

(assert (=> d!1582190 (= (head!10505 (ite c!836592 lt!2020301 lt!2020313)) (h!63095 (ite c!836592 lt!2020301 lt!2020313)))))

(assert (=> b!4919066 d!1582190))

(declare-fun d!1582192 () Bool)

(declare-fun lt!2020882 () Int)

(assert (=> d!1582192 (>= lt!2020882 0)))

(declare-fun e!3074298 () Int)

(assert (=> d!1582192 (= lt!2020882 e!3074298)))

(declare-fun c!836897 () Bool)

(assert (=> d!1582192 (= c!836897 ((_ is Nil!56647) (_1!33838 lt!2020653)))))

(assert (=> d!1582192 (= (size!37424 (_1!33838 lt!2020653)) lt!2020882)))

(declare-fun b!4919441 () Bool)

(assert (=> b!4919441 (= e!3074298 0)))

(declare-fun b!4919442 () Bool)

(assert (=> b!4919442 (= e!3074298 (+ 1 (size!37424 (t!367195 (_1!33838 lt!2020653)))))))

(assert (= (and d!1582192 c!836897) b!4919441))

(assert (= (and d!1582192 (not c!836897)) b!4919442))

(declare-fun m!5932722 () Bool)

(assert (=> b!4919442 m!5932722))

(assert (=> b!4918920 d!1582192))

(assert (=> b!4918920 d!1581892))

(declare-fun d!1582194 () Bool)

(declare-fun lt!2020883 () Int)

(assert (=> d!1582194 (>= lt!2020883 0)))

(declare-fun e!3074299 () Int)

(assert (=> d!1582194 (= lt!2020883 e!3074299)))

(declare-fun c!836898 () Bool)

(assert (=> d!1582194 (= c!836898 ((_ is Nil!56647) lt!2020472))))

(assert (=> d!1582194 (= (size!37424 lt!2020472) lt!2020883)))

(declare-fun b!4919443 () Bool)

(assert (=> b!4919443 (= e!3074299 0)))

(declare-fun b!4919444 () Bool)

(assert (=> b!4919444 (= e!3074299 (+ 1 (size!37424 (t!367195 lt!2020472))))))

(assert (= (and d!1582194 c!836898) b!4919443))

(assert (= (and d!1582194 (not c!836898)) b!4919444))

(declare-fun m!5932724 () Bool)

(assert (=> b!4919444 m!5932724))

(assert (=> b!4918706 d!1582194))

(declare-fun b!4919445 () Bool)

(declare-fun e!3074300 () List!56771)

(assert (=> b!4919445 (= e!3074300 (ite c!836792 lt!2020780 (_1!33838 lt!2020782)))))

(declare-fun b!4919447 () Bool)

(declare-fun res!2100666 () Bool)

(declare-fun e!3074301 () Bool)

(assert (=> b!4919447 (=> (not res!2100666) (not e!3074301))))

(declare-fun lt!2020884 () List!56771)

(assert (=> b!4919447 (= res!2100666 (= (size!37424 lt!2020884) (+ (size!37424 (ite c!836792 (_2!33838 lt!2020787) lt!2020778)) (size!37424 (ite c!836792 lt!2020780 (_1!33838 lt!2020782))))))))

(declare-fun b!4919446 () Bool)

(assert (=> b!4919446 (= e!3074300 (Cons!56647 (h!63095 (ite c!836792 (_2!33838 lt!2020787) lt!2020778)) (++!12302 (t!367195 (ite c!836792 (_2!33838 lt!2020787) lt!2020778)) (ite c!836792 lt!2020780 (_1!33838 lt!2020782)))))))

(declare-fun d!1582196 () Bool)

(assert (=> d!1582196 e!3074301))

(declare-fun res!2100667 () Bool)

(assert (=> d!1582196 (=> (not res!2100667) (not e!3074301))))

(assert (=> d!1582196 (= res!2100667 (= (content!10051 lt!2020884) ((_ map or) (content!10051 (ite c!836792 (_2!33838 lt!2020787) lt!2020778)) (content!10051 (ite c!836792 lt!2020780 (_1!33838 lt!2020782))))))))

(assert (=> d!1582196 (= lt!2020884 e!3074300)))

(declare-fun c!836899 () Bool)

(assert (=> d!1582196 (= c!836899 ((_ is Nil!56647) (ite c!836792 (_2!33838 lt!2020787) lt!2020778)))))

(assert (=> d!1582196 (= (++!12302 (ite c!836792 (_2!33838 lt!2020787) lt!2020778) (ite c!836792 lt!2020780 (_1!33838 lt!2020782))) lt!2020884)))

(declare-fun b!4919448 () Bool)

(assert (=> b!4919448 (= e!3074301 (or (not (= (ite c!836792 lt!2020780 (_1!33838 lt!2020782)) Nil!56647)) (= lt!2020884 (ite c!836792 (_2!33838 lt!2020787) lt!2020778))))))

(assert (= (and d!1582196 c!836899) b!4919445))

(assert (= (and d!1582196 (not c!836899)) b!4919446))

(assert (= (and d!1582196 res!2100667) b!4919447))

(assert (= (and b!4919447 res!2100666) b!4919448))

(declare-fun m!5932726 () Bool)

(assert (=> b!4919447 m!5932726))

(declare-fun m!5932728 () Bool)

(assert (=> b!4919447 m!5932728))

(declare-fun m!5932730 () Bool)

(assert (=> b!4919447 m!5932730))

(declare-fun m!5932732 () Bool)

(assert (=> b!4919446 m!5932732))

(declare-fun m!5932734 () Bool)

(assert (=> d!1582196 m!5932734))

(declare-fun m!5932736 () Bool)

(assert (=> d!1582196 m!5932736))

(declare-fun m!5932738 () Bool)

(assert (=> d!1582196 m!5932738))

(assert (=> bm!342037 d!1582196))

(declare-fun d!1582198 () Bool)

(assert (not d!1582198))

(assert (=> b!4918660 d!1582198))

(declare-fun b!4919449 () Bool)

(declare-fun e!3074304 () Bool)

(declare-fun e!3074303 () Bool)

(assert (=> b!4919449 (= e!3074304 e!3074303)))

(declare-fun res!2100671 () Bool)

(assert (=> b!4919449 (=> (not res!2100671) (not e!3074303))))

(assert (=> b!4919449 (= res!2100671 (not ((_ is Nil!56647) lt!2020307)))))

(declare-fun b!4919451 () Bool)

(assert (=> b!4919451 (= e!3074303 (isPrefix!4945 (tail!9652 Nil!56647) (tail!9652 lt!2020307)))))

(declare-fun b!4919452 () Bool)

(declare-fun e!3074302 () Bool)

(assert (=> b!4919452 (= e!3074302 (>= (size!37424 lt!2020307) (size!37424 Nil!56647)))))

(declare-fun d!1582200 () Bool)

(assert (=> d!1582200 e!3074302))

(declare-fun res!2100670 () Bool)

(assert (=> d!1582200 (=> res!2100670 e!3074302)))

(declare-fun lt!2020885 () Bool)

(assert (=> d!1582200 (= res!2100670 (not lt!2020885))))

(assert (=> d!1582200 (= lt!2020885 e!3074304)))

(declare-fun res!2100669 () Bool)

(assert (=> d!1582200 (=> res!2100669 e!3074304)))

(assert (=> d!1582200 (= res!2100669 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1582200 (= (isPrefix!4945 Nil!56647 lt!2020307) lt!2020885)))

(declare-fun b!4919450 () Bool)

(declare-fun res!2100668 () Bool)

(assert (=> b!4919450 (=> (not res!2100668) (not e!3074303))))

(assert (=> b!4919450 (= res!2100668 (= (head!10505 Nil!56647) (head!10505 lt!2020307)))))

(assert (= (and d!1582200 (not res!2100669)) b!4919449))

(assert (= (and b!4919449 res!2100671) b!4919450))

(assert (= (and b!4919450 res!2100668) b!4919451))

(assert (= (and d!1582200 (not res!2100670)) b!4919452))

(assert (=> b!4919451 m!5931996))

(assert (=> b!4919451 m!5931758))

(assert (=> b!4919451 m!5931996))

(assert (=> b!4919451 m!5931758))

(declare-fun m!5932740 () Bool)

(assert (=> b!4919451 m!5932740))

(assert (=> b!4919452 m!5931762))

(assert (=> b!4919452 m!5931462))

(assert (=> b!4919450 m!5932014))

(assert (=> b!4919450 m!5931768))

(assert (=> d!1581894 d!1582200))

(declare-fun d!1582202 () Bool)

(assert (=> d!1582202 (isPrefix!4945 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)) lt!2020307)))

(assert (=> d!1582202 true))

(declare-fun _$65!1687 () Unit!146993)

(assert (=> d!1582202 (= (choose!35999 Nil!56647 lt!2020307) _$65!1687)))

(declare-fun bs!1178915 () Bool)

(assert (= bs!1178915 d!1582202))

(assert (=> bs!1178915 m!5931436))

(assert (=> bs!1178915 m!5931436))

(assert (=> bs!1178915 m!5931438))

(assert (=> bs!1178915 m!5931450))

(assert (=> bs!1178915 m!5931450))

(assert (=> bs!1178915 m!5931452))

(assert (=> d!1581894 d!1582202))

(assert (=> d!1581894 d!1581856))

(assert (=> d!1581894 d!1581862))

(assert (=> d!1581894 d!1581914))

(assert (=> d!1581894 d!1581876))

(declare-fun d!1582204 () Bool)

(assert (not d!1582204))

(assert (=> b!4918795 d!1582204))

(declare-fun b!4919454 () Bool)

(declare-fun e!3074305 () List!56771)

(declare-fun e!3074306 () List!56771)

(assert (=> b!4919454 (= e!3074305 e!3074306)))

(declare-fun c!836901 () Bool)

(assert (=> b!4919454 (= c!836901 ((_ is Leaf!24714) (c!836549 (_2!33835 lt!2020059))))))

(declare-fun d!1582206 () Bool)

(declare-fun c!836900 () Bool)

(assert (=> d!1582206 (= c!836900 ((_ is Empty!14854) (c!836549 (_2!33835 lt!2020059))))))

(assert (=> d!1582206 (= (list!17913 (c!836549 (_2!33835 lt!2020059))) e!3074305)))

(declare-fun b!4919455 () Bool)

(assert (=> b!4919455 (= e!3074306 (list!17914 (xs!18172 (c!836549 (_2!33835 lt!2020059)))))))

(declare-fun b!4919456 () Bool)

(assert (=> b!4919456 (= e!3074306 (++!12302 (list!17913 (left!41299 (c!836549 (_2!33835 lt!2020059)))) (list!17913 (right!41629 (c!836549 (_2!33835 lt!2020059))))))))

(declare-fun b!4919453 () Bool)

(assert (=> b!4919453 (= e!3074305 Nil!56647)))

(assert (= (and d!1582206 c!836900) b!4919453))

(assert (= (and d!1582206 (not c!836900)) b!4919454))

(assert (= (and b!4919454 c!836901) b!4919455))

(assert (= (and b!4919454 (not c!836901)) b!4919456))

(declare-fun m!5932742 () Bool)

(assert (=> b!4919455 m!5932742))

(declare-fun m!5932744 () Bool)

(assert (=> b!4919456 m!5932744))

(declare-fun m!5932746 () Bool)

(assert (=> b!4919456 m!5932746))

(assert (=> b!4919456 m!5932744))

(assert (=> b!4919456 m!5932746))

(declare-fun m!5932748 () Bool)

(assert (=> b!4919456 m!5932748))

(assert (=> d!1582014 d!1582206))

(declare-fun d!1582208 () Bool)

(assert (not d!1582208))

(assert (=> b!4918722 d!1582208))

(assert (=> b!4918722 d!1582150))

(assert (=> b!4919053 d!1582114))

(assert (=> b!4919053 d!1582116))

(declare-fun d!1582210 () Bool)

(assert (not d!1582210))

(assert (=> b!4918666 d!1582210))

(declare-fun d!1582212 () Bool)

(declare-fun lt!2020886 () List!56771)

(assert (=> d!1582212 (= (++!12302 call!341923 lt!2020886) (list!17911 input!5492))))

(declare-fun e!3074307 () List!56771)

(assert (=> d!1582212 (= lt!2020886 e!3074307)))

(declare-fun c!836902 () Bool)

(assert (=> d!1582212 (= c!836902 ((_ is Cons!56647) call!341923))))

(assert (=> d!1582212 (>= (size!37424 (list!17911 input!5492)) (size!37424 call!341923))))

(assert (=> d!1582212 (= (getSuffix!2933 (list!17911 input!5492) call!341923) lt!2020886)))

(declare-fun b!4919457 () Bool)

(assert (=> b!4919457 (= e!3074307 (getSuffix!2933 (tail!9652 (list!17911 input!5492)) (t!367195 call!341923)))))

(declare-fun b!4919458 () Bool)

(assert (=> b!4919458 (= e!3074307 (list!17911 input!5492))))

(assert (= (and d!1582212 c!836902) b!4919457))

(assert (= (and d!1582212 (not c!836902)) b!4919458))

(declare-fun m!5932750 () Bool)

(assert (=> d!1582212 m!5932750))

(assert (=> d!1582212 m!5931280))

(assert (=> d!1582212 m!5931492))

(assert (=> d!1582212 m!5931562))

(assert (=> b!4919457 m!5931280))

(assert (=> b!4919457 m!5932032))

(assert (=> b!4919457 m!5932032))

(declare-fun m!5932752 () Bool)

(assert (=> b!4919457 m!5932752))

(assert (=> d!1581824 d!1582212))

(declare-fun d!1582214 () Bool)

(assert (=> d!1582214 (= call!341928 lt!2020324)))

(declare-fun lt!2020887 () Unit!146993)

(assert (=> d!1582214 (= lt!2020887 (choose!36007 call!341923 call!341928 call!341923 lt!2020324 (list!17911 input!5492)))))

(assert (=> d!1582214 (isPrefix!4945 call!341923 (list!17911 input!5492))))

(assert (=> d!1582214 (= (lemmaSamePrefixThenSameSuffix!2349 call!341923 call!341928 call!341923 lt!2020324 (list!17911 input!5492)) lt!2020887)))

(declare-fun bs!1178916 () Bool)

(assert (= bs!1178916 d!1582214))

(assert (=> bs!1178916 m!5931280))

(declare-fun m!5932754 () Bool)

(assert (=> bs!1178916 m!5932754))

(assert (=> bs!1178916 m!5931280))

(declare-fun m!5932756 () Bool)

(assert (=> bs!1178916 m!5932756))

(assert (=> d!1581824 d!1582214))

(assert (=> d!1581824 d!1581818))

(declare-fun b!4919459 () Bool)

(declare-fun e!3074308 () List!56771)

(assert (=> b!4919459 (= e!3074308 call!341928)))

(declare-fun b!4919461 () Bool)

(declare-fun res!2100672 () Bool)

(declare-fun e!3074309 () Bool)

(assert (=> b!4919461 (=> (not res!2100672) (not e!3074309))))

(declare-fun lt!2020888 () List!56771)

(assert (=> b!4919461 (= res!2100672 (= (size!37424 lt!2020888) (+ (size!37424 call!341923) (size!37424 call!341928))))))

(declare-fun b!4919460 () Bool)

(assert (=> b!4919460 (= e!3074308 (Cons!56647 (h!63095 call!341923) (++!12302 (t!367195 call!341923) call!341928)))))

(declare-fun d!1582216 () Bool)

(assert (=> d!1582216 e!3074309))

(declare-fun res!2100673 () Bool)

(assert (=> d!1582216 (=> (not res!2100673) (not e!3074309))))

(assert (=> d!1582216 (= res!2100673 (= (content!10051 lt!2020888) ((_ map or) (content!10051 call!341923) (content!10051 call!341928))))))

(assert (=> d!1582216 (= lt!2020888 e!3074308)))

(declare-fun c!836903 () Bool)

(assert (=> d!1582216 (= c!836903 ((_ is Nil!56647) call!341923))))

(assert (=> d!1582216 (= (++!12302 call!341923 call!341928) lt!2020888)))

(declare-fun b!4919462 () Bool)

(assert (=> b!4919462 (= e!3074309 (or (not (= call!341928 Nil!56647)) (= lt!2020888 call!341923)))))

(assert (= (and d!1582216 c!836903) b!4919459))

(assert (= (and d!1582216 (not c!836903)) b!4919460))

(assert (= (and d!1582216 res!2100673) b!4919461))

(assert (= (and b!4919461 res!2100672) b!4919462))

(declare-fun m!5932758 () Bool)

(assert (=> b!4919461 m!5932758))

(assert (=> b!4919461 m!5931562))

(declare-fun m!5932760 () Bool)

(assert (=> b!4919461 m!5932760))

(declare-fun m!5932762 () Bool)

(assert (=> b!4919460 m!5932762))

(declare-fun m!5932764 () Bool)

(assert (=> d!1582216 m!5932764))

(assert (=> d!1582216 m!5932678))

(declare-fun m!5932766 () Bool)

(assert (=> d!1582216 m!5932766))

(assert (=> d!1581824 d!1582216))

(declare-fun d!1582218 () Bool)

(assert (=> d!1582218 (isPrefix!4945 call!341923 (++!12302 call!341923 call!341928))))

(declare-fun lt!2020889 () Unit!146993)

(assert (=> d!1582218 (= lt!2020889 (choose!36008 call!341923 call!341928))))

(assert (=> d!1582218 (= (lemmaConcatTwoListThenFirstIsPrefix!3169 call!341923 call!341928) lt!2020889)))

(declare-fun bs!1178917 () Bool)

(assert (= bs!1178917 d!1582218))

(assert (=> bs!1178917 m!5931566))

(assert (=> bs!1178917 m!5931566))

(assert (=> bs!1178917 m!5931568))

(declare-fun m!5932768 () Bool)

(assert (=> bs!1178917 m!5932768))

(assert (=> d!1581824 d!1582218))

(declare-fun d!1582220 () Bool)

(declare-fun lt!2020890 () Int)

(assert (=> d!1582220 (>= lt!2020890 0)))

(declare-fun e!3074310 () Int)

(assert (=> d!1582220 (= lt!2020890 e!3074310)))

(declare-fun c!836904 () Bool)

(assert (=> d!1582220 (= c!836904 ((_ is Nil!56647) (_1!33838 (findLongestMatchInnerZipper!40 call!341924 call!341923 (+ 0 1) call!341928 (list!17911 input!5492) lt!2020052))))))

(assert (=> d!1582220 (= (size!37424 (_1!33838 (findLongestMatchInnerZipper!40 call!341924 call!341923 (+ 0 1) call!341928 (list!17911 input!5492) lt!2020052))) lt!2020890)))

(declare-fun b!4919463 () Bool)

(assert (=> b!4919463 (= e!3074310 0)))

(declare-fun b!4919464 () Bool)

(assert (=> b!4919464 (= e!3074310 (+ 1 (size!37424 (t!367195 (_1!33838 (findLongestMatchInnerZipper!40 call!341924 call!341923 (+ 0 1) call!341928 (list!17911 input!5492) lt!2020052))))))))

(assert (= (and d!1582220 c!836904) b!4919463))

(assert (= (and d!1582220 (not c!836904)) b!4919464))

(declare-fun m!5932770 () Bool)

(assert (=> b!4919464 m!5932770))

(assert (=> d!1581824 d!1582220))

(declare-fun bs!1178918 () Bool)

(declare-fun d!1582222 () Bool)

(assert (= bs!1178918 (and d!1582222 d!1582066)))

(declare-fun lambda!245043 () Int)

(assert (=> bs!1178918 (not (= lambda!245043 lambda!245037))))

(declare-fun bs!1178919 () Bool)

(assert (= bs!1178919 (and d!1582222 b!4918780)))

(assert (=> bs!1178919 (not (= lambda!245043 lambda!245004))))

(declare-fun bs!1178920 () Bool)

(assert (= bs!1178920 (and d!1582222 b!4918781)))

(assert (=> bs!1178920 (not (= lambda!245043 lambda!245005))))

(declare-fun bs!1178921 () Bool)

(assert (= bs!1178921 (and d!1582222 d!1582138)))

(assert (=> bs!1178921 (not (= lambda!245043 lambda!245042))))

(declare-fun bs!1178922 () Bool)

(assert (= bs!1178922 (and d!1582222 d!1581832)))

(assert (=> bs!1178922 (not (= lambda!245043 lambda!244989))))

(declare-fun bs!1178923 () Bool)

(assert (= bs!1178923 (and d!1582222 d!1581946)))

(assert (=> bs!1178923 (= lambda!245043 lambda!245003)))

(declare-fun bs!1178924 () Bool)

(declare-fun b!4919465 () Bool)

(assert (= bs!1178924 (and b!4919465 d!1582066)))

(declare-fun lambda!245044 () Int)

(assert (=> bs!1178924 (= lambda!245044 lambda!245037)))

(declare-fun bs!1178925 () Bool)

(assert (= bs!1178925 (and b!4919465 b!4918780)))

(assert (=> bs!1178925 (= lambda!245044 lambda!245004)))

(declare-fun bs!1178926 () Bool)

(assert (= bs!1178926 (and b!4919465 b!4918781)))

(assert (=> bs!1178926 (= lambda!245044 lambda!245005)))

(declare-fun bs!1178927 () Bool)

(assert (= bs!1178927 (and b!4919465 d!1582138)))

(assert (=> bs!1178927 (not (= lambda!245044 lambda!245042))))

(declare-fun bs!1178928 () Bool)

(assert (= bs!1178928 (and b!4919465 d!1582222)))

(assert (=> bs!1178928 (not (= lambda!245044 lambda!245043))))

(declare-fun bs!1178929 () Bool)

(assert (= bs!1178929 (and b!4919465 d!1581832)))

(assert (=> bs!1178929 (not (= lambda!245044 lambda!244989))))

(declare-fun bs!1178930 () Bool)

(assert (= bs!1178930 (and b!4919465 d!1581946)))

(assert (=> bs!1178930 (not (= lambda!245044 lambda!245003))))

(declare-fun bs!1178931 () Bool)

(declare-fun b!4919466 () Bool)

(assert (= bs!1178931 (and b!4919466 d!1582066)))

(declare-fun lambda!245045 () Int)

(assert (=> bs!1178931 (= lambda!245045 lambda!245037)))

(declare-fun bs!1178932 () Bool)

(assert (= bs!1178932 (and b!4919466 b!4918781)))

(assert (=> bs!1178932 (= lambda!245045 lambda!245005)))

(declare-fun bs!1178933 () Bool)

(assert (= bs!1178933 (and b!4919466 d!1582138)))

(assert (=> bs!1178933 (not (= lambda!245045 lambda!245042))))

(declare-fun bs!1178934 () Bool)

(assert (= bs!1178934 (and b!4919466 d!1582222)))

(assert (=> bs!1178934 (not (= lambda!245045 lambda!245043))))

(declare-fun bs!1178935 () Bool)

(assert (= bs!1178935 (and b!4919466 d!1581832)))

(assert (=> bs!1178935 (not (= lambda!245045 lambda!244989))))

(declare-fun bs!1178936 () Bool)

(assert (= bs!1178936 (and b!4919466 d!1581946)))

(assert (=> bs!1178936 (not (= lambda!245045 lambda!245003))))

(declare-fun bs!1178937 () Bool)

(assert (= bs!1178937 (and b!4919466 b!4918780)))

(assert (=> bs!1178937 (= lambda!245045 lambda!245004)))

(declare-fun bs!1178938 () Bool)

(assert (= bs!1178938 (and b!4919466 b!4919465)))

(assert (=> bs!1178938 (= lambda!245045 lambda!245044)))

(declare-fun e!3074311 () Unit!146993)

(declare-fun Unit!147014 () Unit!146993)

(assert (=> b!4919466 (= e!3074311 Unit!147014)))

(declare-fun lt!2020895 () List!56773)

(declare-fun call!342109 () List!56773)

(assert (=> b!4919466 (= lt!2020895 call!342109)))

(declare-fun lt!2020893 () Unit!146993)

(assert (=> b!4919466 (= lt!2020893 (lemmaForallThenNotExists!160 lt!2020895 lambda!245043))))

(declare-fun call!342108 () Bool)

(assert (=> b!4919466 (not call!342108)))

(declare-fun lt!2020892 () Unit!146993)

(assert (=> b!4919466 (= lt!2020892 lt!2020893)))

(declare-fun lt!2020897 () Bool)

(assert (=> d!1582222 (= lt!2020897 (isEmpty!30554 (getLanguageWitness!609 call!341924)))))

(assert (=> d!1582222 (= lt!2020897 (forall!13114 call!341924 lambda!245043))))

(declare-fun lt!2020896 () Unit!146993)

(assert (=> d!1582222 (= lt!2020896 e!3074311)))

(declare-fun c!836905 () Bool)

(assert (=> d!1582222 (= c!836905 (not (forall!13114 call!341924 lambda!245043)))))

(assert (=> d!1582222 (= (lostCauseZipper!675 call!341924) lt!2020897)))

(declare-fun lt!2020891 () List!56773)

(declare-fun bm!342103 () Bool)

(assert (=> bm!342103 (= call!342108 (exists!1239 (ite c!836905 lt!2020891 lt!2020895) (ite c!836905 lambda!245044 lambda!245045)))))

(declare-fun bm!342104 () Bool)

(assert (=> bm!342104 (= call!342109 (toList!7939 call!341924))))

(declare-fun Unit!147015 () Unit!146993)

(assert (=> b!4919465 (= e!3074311 Unit!147015)))

(assert (=> b!4919465 (= lt!2020891 call!342109)))

(declare-fun lt!2020894 () Unit!146993)

(assert (=> b!4919465 (= lt!2020894 (lemmaNotForallThenExists!177 lt!2020891 lambda!245043))))

(assert (=> b!4919465 call!342108))

(declare-fun lt!2020898 () Unit!146993)

(assert (=> b!4919465 (= lt!2020898 lt!2020894)))

(assert (= (and d!1582222 c!836905) b!4919465))

(assert (= (and d!1582222 (not c!836905)) b!4919466))

(assert (= (or b!4919465 b!4919466) bm!342103))

(assert (= (or b!4919465 b!4919466) bm!342104))

(declare-fun m!5932772 () Bool)

(assert (=> b!4919466 m!5932772))

(declare-fun m!5932774 () Bool)

(assert (=> bm!342104 m!5932774))

(declare-fun m!5932776 () Bool)

(assert (=> d!1582222 m!5932776))

(assert (=> d!1582222 m!5932776))

(declare-fun m!5932778 () Bool)

(assert (=> d!1582222 m!5932778))

(declare-fun m!5932780 () Bool)

(assert (=> d!1582222 m!5932780))

(assert (=> d!1582222 m!5932780))

(declare-fun m!5932782 () Bool)

(assert (=> b!4919465 m!5932782))

(declare-fun m!5932784 () Bool)

(assert (=> bm!342103 m!5932784))

(assert (=> d!1581824 d!1582222))

(declare-fun b!4919467 () Bool)

(declare-fun e!3074319 () tuple2!61070)

(assert (=> b!4919467 (= e!3074319 (tuple2!61071 call!341923 Nil!56647))))

(declare-fun bm!342105 () Bool)

(declare-fun call!342113 () Unit!146993)

(assert (=> bm!342105 (= call!342113 (lemmaIsPrefixRefl!3342 (list!17911 input!5492) (list!17911 input!5492)))))

(declare-fun b!4919468 () Bool)

(declare-fun c!836907 () Bool)

(declare-fun call!342110 () Bool)

(assert (=> b!4919468 (= c!836907 call!342110)))

(declare-fun lt!2020914 () Unit!146993)

(declare-fun lt!2020921 () Unit!146993)

(assert (=> b!4919468 (= lt!2020914 lt!2020921)))

(declare-fun lt!2020919 () List!56771)

(declare-fun lt!2020913 () C!26920)

(assert (=> b!4919468 (= (++!12302 (++!12302 call!341923 (Cons!56647 lt!2020913 Nil!56647)) lt!2020919) (list!17911 input!5492))))

(assert (=> b!4919468 (= lt!2020921 (lemmaMoveElementToOtherListKeepsConcatEq!1376 call!341923 lt!2020913 lt!2020919 (list!17911 input!5492)))))

(assert (=> b!4919468 (= lt!2020919 (tail!9652 call!341928))))

(assert (=> b!4919468 (= lt!2020913 (head!10505 call!341928))))

(declare-fun lt!2020907 () Unit!146993)

(declare-fun lt!2020904 () Unit!146993)

(assert (=> b!4919468 (= lt!2020907 lt!2020904)))

(assert (=> b!4919468 (isPrefix!4945 (++!12302 call!341923 (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) call!341923)) Nil!56647)) (list!17911 input!5492))))

(assert (=> b!4919468 (= lt!2020904 (lemmaAddHeadSuffixToPrefixStillPrefix!758 call!341923 (list!17911 input!5492)))))

(declare-fun lt!2020905 () List!56771)

(assert (=> b!4919468 (= lt!2020905 (++!12302 call!341923 (Cons!56647 (head!10505 call!341928) Nil!56647)))))

(declare-fun lt!2020899 () Unit!146993)

(declare-fun e!3074315 () Unit!146993)

(assert (=> b!4919468 (= lt!2020899 e!3074315)))

(declare-fun c!836910 () Bool)

(assert (=> b!4919468 (= c!836910 (= (size!37424 call!341923) (size!37424 (list!17911 input!5492))))))

(declare-fun lt!2020922 () Unit!146993)

(declare-fun lt!2020908 () Unit!146993)

(assert (=> b!4919468 (= lt!2020922 lt!2020908)))

(assert (=> b!4919468 (<= (size!37424 call!341923) (size!37424 (list!17911 input!5492)))))

(assert (=> b!4919468 (= lt!2020908 (lemmaIsPrefixThenSmallerEqSize!670 call!341923 (list!17911 input!5492)))))

(declare-fun e!3074312 () tuple2!61070)

(declare-fun e!3074313 () tuple2!61070)

(assert (=> b!4919468 (= e!3074312 e!3074313)))

(declare-fun bm!342106 () Bool)

(assert (=> bm!342106 (= call!342110 (nullableZipper!795 call!341924))))

(declare-fun b!4919469 () Bool)

(declare-fun Unit!147016 () Unit!146993)

(assert (=> b!4919469 (= e!3074315 Unit!147016)))

(declare-fun lt!2020901 () Unit!146993)

(assert (=> b!4919469 (= lt!2020901 call!342113)))

(declare-fun call!342116 () Bool)

(assert (=> b!4919469 call!342116))

(declare-fun lt!2020910 () Unit!146993)

(assert (=> b!4919469 (= lt!2020910 lt!2020901)))

(declare-fun lt!2020916 () Unit!146993)

(declare-fun call!342111 () Unit!146993)

(assert (=> b!4919469 (= lt!2020916 call!342111)))

(assert (=> b!4919469 (= (list!17911 input!5492) call!341923)))

(declare-fun lt!2020906 () Unit!146993)

(assert (=> b!4919469 (= lt!2020906 lt!2020916)))

(assert (=> b!4919469 false))

(declare-fun b!4919470 () Bool)

(declare-fun e!3074316 () tuple2!61070)

(assert (=> b!4919470 (= e!3074316 (tuple2!61071 call!341923 call!341928))))

(declare-fun b!4919471 () Bool)

(declare-fun e!3074314 () tuple2!61070)

(assert (=> b!4919471 (= e!3074314 e!3074312)))

(declare-fun c!836908 () Bool)

(assert (=> b!4919471 (= c!836908 (= (+ 0 1) lt!2020052))))

(declare-fun b!4919472 () Bool)

(declare-fun c!836906 () Bool)

(assert (=> b!4919472 (= c!836906 call!342110)))

(declare-fun lt!2020911 () Unit!146993)

(declare-fun lt!2020924 () Unit!146993)

(assert (=> b!4919472 (= lt!2020911 lt!2020924)))

(assert (=> b!4919472 (= (list!17911 input!5492) call!341923)))

(assert (=> b!4919472 (= lt!2020924 call!342111)))

(declare-fun lt!2020918 () Unit!146993)

(declare-fun lt!2020900 () Unit!146993)

(assert (=> b!4919472 (= lt!2020918 lt!2020900)))

(assert (=> b!4919472 call!342116))

(assert (=> b!4919472 (= lt!2020900 call!342113)))

(assert (=> b!4919472 (= e!3074312 e!3074319)))

(declare-fun b!4919473 () Bool)

(declare-fun lt!2020923 () tuple2!61070)

(assert (=> b!4919473 (= e!3074316 lt!2020923)))

(declare-fun b!4919474 () Bool)

(declare-fun Unit!147017 () Unit!146993)

(assert (=> b!4919474 (= e!3074315 Unit!147017)))

(declare-fun bm!342108 () Bool)

(declare-fun call!342115 () C!26920)

(assert (=> bm!342108 (= call!342115 (head!10505 call!341928))))

(declare-fun b!4919475 () Bool)

(declare-fun call!342114 () tuple2!61070)

(assert (=> b!4919475 (= e!3074313 call!342114)))

(declare-fun b!4919476 () Bool)

(declare-fun e!3074317 () Bool)

(declare-fun e!3074318 () Bool)

(assert (=> b!4919476 (= e!3074317 e!3074318)))

(declare-fun res!2100675 () Bool)

(assert (=> b!4919476 (=> res!2100675 e!3074318)))

(declare-fun lt!2020903 () tuple2!61070)

(assert (=> b!4919476 (= res!2100675 (isEmpty!30552 (_1!33838 lt!2020903)))))

(declare-fun b!4919477 () Bool)

(assert (=> b!4919477 (= e!3074314 (tuple2!61071 Nil!56647 (list!17911 input!5492)))))

(declare-fun bm!342107 () Bool)

(declare-fun call!342112 () List!56771)

(declare-fun call!342117 () (InoxSet Context!5994))

(assert (=> bm!342107 (= call!342114 (findLongestMatchInnerZipper!40 call!342117 lt!2020905 (+ 0 1 1) call!342112 (list!17911 input!5492) lt!2020052))))

(declare-fun d!1582224 () Bool)

(assert (=> d!1582224 e!3074317))

(declare-fun res!2100674 () Bool)

(assert (=> d!1582224 (=> (not res!2100674) (not e!3074317))))

(assert (=> d!1582224 (= res!2100674 (= (++!12302 (_1!33838 lt!2020903) (_2!33838 lt!2020903)) (list!17911 input!5492)))))

(assert (=> d!1582224 (= lt!2020903 e!3074314)))

(declare-fun c!836911 () Bool)

(assert (=> d!1582224 (= c!836911 (lostCauseZipper!675 call!341924))))

(declare-fun lt!2020909 () Unit!146993)

(declare-fun Unit!147018 () Unit!146993)

(assert (=> d!1582224 (= lt!2020909 Unit!147018)))

(assert (=> d!1582224 (= (getSuffix!2933 (list!17911 input!5492) call!341923) call!341928)))

(declare-fun lt!2020902 () Unit!146993)

(declare-fun lt!2020920 () Unit!146993)

(assert (=> d!1582224 (= lt!2020902 lt!2020920)))

(declare-fun lt!2020915 () List!56771)

(assert (=> d!1582224 (= call!341928 lt!2020915)))

(assert (=> d!1582224 (= lt!2020920 (lemmaSamePrefixThenSameSuffix!2349 call!341923 call!341928 call!341923 lt!2020915 (list!17911 input!5492)))))

(assert (=> d!1582224 (= lt!2020915 (getSuffix!2933 (list!17911 input!5492) call!341923))))

(declare-fun lt!2020917 () Unit!146993)

(declare-fun lt!2020912 () Unit!146993)

(assert (=> d!1582224 (= lt!2020917 lt!2020912)))

(assert (=> d!1582224 (isPrefix!4945 call!341923 (++!12302 call!341923 call!341928))))

(assert (=> d!1582224 (= lt!2020912 (lemmaConcatTwoListThenFirstIsPrefix!3169 call!341923 call!341928))))

(assert (=> d!1582224 (= (++!12302 call!341923 call!341928) (list!17911 input!5492))))

(assert (=> d!1582224 (= (findLongestMatchInnerZipper!40 call!341924 call!341923 (+ 0 1) call!341928 (list!17911 input!5492) lt!2020052) lt!2020903)))

(declare-fun b!4919478 () Bool)

(assert (=> b!4919478 (= e!3074313 e!3074316)))

(assert (=> b!4919478 (= lt!2020923 call!342114)))

(declare-fun c!836909 () Bool)

(assert (=> b!4919478 (= c!836909 (isEmpty!30552 (_1!33838 lt!2020923)))))

(declare-fun bm!342109 () Bool)

(assert (=> bm!342109 (= call!342117 (derivationStepZipper!573 call!341924 call!342115))))

(declare-fun b!4919479 () Bool)

(assert (=> b!4919479 (= e!3074318 (>= (size!37424 (_1!33838 lt!2020903)) (size!37424 call!341923)))))

(declare-fun b!4919480 () Bool)

(assert (=> b!4919480 (= e!3074319 (tuple2!61071 Nil!56647 (list!17911 input!5492)))))

(declare-fun bm!342110 () Bool)

(assert (=> bm!342110 (= call!342111 (lemmaIsPrefixSameLengthThenSameList!1104 (list!17911 input!5492) call!341923 (list!17911 input!5492)))))

(declare-fun bm!342111 () Bool)

(assert (=> bm!342111 (= call!342112 (tail!9652 call!341928))))

(declare-fun bm!342112 () Bool)

(assert (=> bm!342112 (= call!342116 (isPrefix!4945 (list!17911 input!5492) (list!17911 input!5492)))))

(assert (= (and d!1582224 c!836911) b!4919477))

(assert (= (and d!1582224 (not c!836911)) b!4919471))

(assert (= (and b!4919471 c!836908) b!4919472))

(assert (= (and b!4919471 (not c!836908)) b!4919468))

(assert (= (and b!4919472 c!836906) b!4919467))

(assert (= (and b!4919472 (not c!836906)) b!4919480))

(assert (= (and b!4919468 c!836910) b!4919469))

(assert (= (and b!4919468 (not c!836910)) b!4919474))

(assert (= (and b!4919468 c!836907) b!4919478))

(assert (= (and b!4919468 (not c!836907)) b!4919475))

(assert (= (and b!4919478 c!836909) b!4919470))

(assert (= (and b!4919478 (not c!836909)) b!4919473))

(assert (= (or b!4919478 b!4919475) bm!342111))

(assert (= (or b!4919478 b!4919475) bm!342108))

(assert (= (or b!4919478 b!4919475) bm!342109))

(assert (= (or b!4919478 b!4919475) bm!342107))

(assert (= (or b!4919472 b!4919469) bm!342112))

(assert (= (or b!4919472 b!4919469) bm!342105))

(assert (= (or b!4919472 b!4919469) bm!342110))

(assert (= (or b!4919472 b!4919468) bm!342106))

(assert (= (and d!1582224 res!2100674) b!4919476))

(assert (= (and b!4919476 (not res!2100675)) b!4919479))

(assert (=> bm!342106 m!5931586))

(assert (=> b!4919468 m!5931280))

(declare-fun m!5932786 () Bool)

(assert (=> b!4919468 m!5932786))

(assert (=> b!4919468 m!5931280))

(declare-fun m!5932788 () Bool)

(assert (=> b!4919468 m!5932788))

(assert (=> b!4919468 m!5931570))

(declare-fun m!5932790 () Bool)

(assert (=> b!4919468 m!5932790))

(assert (=> b!4919468 m!5931280))

(declare-fun m!5932792 () Bool)

(assert (=> b!4919468 m!5932792))

(assert (=> b!4919468 m!5931280))

(assert (=> b!4919468 m!5931570))

(assert (=> b!4919468 m!5931280))

(assert (=> b!4919468 m!5931492))

(declare-fun m!5932794 () Bool)

(assert (=> b!4919468 m!5932794))

(declare-fun m!5932796 () Bool)

(assert (=> b!4919468 m!5932796))

(declare-fun m!5932798 () Bool)

(assert (=> b!4919468 m!5932798))

(assert (=> b!4919468 m!5931280))

(declare-fun m!5932800 () Bool)

(assert (=> b!4919468 m!5932800))

(assert (=> b!4919468 m!5932794))

(assert (=> b!4919468 m!5931524))

(assert (=> b!4919468 m!5932798))

(assert (=> b!4919468 m!5931562))

(declare-fun m!5932802 () Bool)

(assert (=> b!4919468 m!5932802))

(declare-fun m!5932804 () Bool)

(assert (=> b!4919468 m!5932804))

(assert (=> d!1582224 m!5931578))

(assert (=> d!1582224 m!5931566))

(declare-fun m!5932806 () Bool)

(assert (=> d!1582224 m!5932806))

(assert (=> d!1582224 m!5931280))

(declare-fun m!5932808 () Bool)

(assert (=> d!1582224 m!5932808))

(assert (=> d!1582224 m!5931574))

(assert (=> d!1582224 m!5931280))

(assert (=> d!1582224 m!5931570))

(assert (=> d!1582224 m!5931566))

(assert (=> d!1582224 m!5931568))

(assert (=> bm!342105 m!5931280))

(assert (=> bm!342105 m!5931280))

(assert (=> bm!342105 m!5932128))

(declare-fun m!5932810 () Bool)

(assert (=> bm!342109 m!5932810))

(assert (=> bm!342110 m!5931280))

(assert (=> bm!342110 m!5931280))

(declare-fun m!5932812 () Bool)

(assert (=> bm!342110 m!5932812))

(declare-fun m!5932814 () Bool)

(assert (=> b!4919479 m!5932814))

(assert (=> b!4919479 m!5931562))

(declare-fun m!5932816 () Bool)

(assert (=> b!4919476 m!5932816))

(assert (=> bm!342112 m!5931280))

(assert (=> bm!342112 m!5931280))

(assert (=> bm!342112 m!5932138))

(assert (=> bm!342111 m!5931524))

(declare-fun m!5932818 () Bool)

(assert (=> b!4919478 m!5932818))

(assert (=> bm!342108 m!5932804))

(assert (=> bm!342107 m!5931280))

(declare-fun m!5932820 () Bool)

(assert (=> bm!342107 m!5932820))

(assert (=> d!1581824 d!1582224))

(declare-fun b!4919481 () Bool)

(declare-fun e!3074322 () Bool)

(declare-fun e!3074321 () Bool)

(assert (=> b!4919481 (= e!3074322 e!3074321)))

(declare-fun res!2100679 () Bool)

(assert (=> b!4919481 (=> (not res!2100679) (not e!3074321))))

(assert (=> b!4919481 (= res!2100679 (not ((_ is Nil!56647) (++!12302 call!341923 call!341928))))))

(declare-fun b!4919483 () Bool)

(assert (=> b!4919483 (= e!3074321 (isPrefix!4945 (tail!9652 call!341923) (tail!9652 (++!12302 call!341923 call!341928))))))

(declare-fun b!4919484 () Bool)

(declare-fun e!3074320 () Bool)

(assert (=> b!4919484 (= e!3074320 (>= (size!37424 (++!12302 call!341923 call!341928)) (size!37424 call!341923)))))

(declare-fun d!1582226 () Bool)

(assert (=> d!1582226 e!3074320))

(declare-fun res!2100678 () Bool)

(assert (=> d!1582226 (=> res!2100678 e!3074320)))

(declare-fun lt!2020925 () Bool)

(assert (=> d!1582226 (= res!2100678 (not lt!2020925))))

(assert (=> d!1582226 (= lt!2020925 e!3074322)))

(declare-fun res!2100677 () Bool)

(assert (=> d!1582226 (=> res!2100677 e!3074322)))

(assert (=> d!1582226 (= res!2100677 ((_ is Nil!56647) call!341923))))

(assert (=> d!1582226 (= (isPrefix!4945 call!341923 (++!12302 call!341923 call!341928)) lt!2020925)))

(declare-fun b!4919482 () Bool)

(declare-fun res!2100676 () Bool)

(assert (=> b!4919482 (=> (not res!2100676) (not e!3074321))))

(assert (=> b!4919482 (= res!2100676 (= (head!10505 call!341923) (head!10505 (++!12302 call!341923 call!341928))))))

(assert (= (and d!1582226 (not res!2100677)) b!4919481))

(assert (= (and b!4919481 res!2100679) b!4919482))

(assert (= (and b!4919482 res!2100676) b!4919483))

(assert (= (and d!1582226 (not res!2100678)) b!4919484))

(declare-fun m!5932822 () Bool)

(assert (=> b!4919483 m!5932822))

(assert (=> b!4919483 m!5931566))

(declare-fun m!5932824 () Bool)

(assert (=> b!4919483 m!5932824))

(assert (=> b!4919483 m!5932822))

(assert (=> b!4919483 m!5932824))

(declare-fun m!5932826 () Bool)

(assert (=> b!4919483 m!5932826))

(assert (=> b!4919484 m!5931566))

(declare-fun m!5932828 () Bool)

(assert (=> b!4919484 m!5932828))

(assert (=> b!4919484 m!5931562))

(declare-fun m!5932830 () Bool)

(assert (=> b!4919482 m!5932830))

(assert (=> b!4919482 m!5931566))

(declare-fun m!5932832 () Bool)

(assert (=> b!4919482 m!5932832))

(assert (=> d!1581824 d!1582226))

(declare-fun d!1582228 () Bool)

(declare-fun lt!2020926 () Int)

(assert (=> d!1582228 (>= lt!2020926 0)))

(declare-fun e!3074323 () Int)

(assert (=> d!1582228 (= lt!2020926 e!3074323)))

(declare-fun c!836912 () Bool)

(assert (=> d!1582228 (= c!836912 ((_ is Nil!56647) (innerList!14942 (xs!18172 (c!836549 input!5492)))))))

(assert (=> d!1582228 (= (size!37424 (innerList!14942 (xs!18172 (c!836549 input!5492)))) lt!2020926)))

(declare-fun b!4919485 () Bool)

(assert (=> b!4919485 (= e!3074323 0)))

(declare-fun b!4919486 () Bool)

(assert (=> b!4919486 (= e!3074323 (+ 1 (size!37424 (t!367195 (innerList!14942 (xs!18172 (c!836549 input!5492)))))))))

(assert (= (and d!1582228 c!836912) b!4919485))

(assert (= (and d!1582228 (not c!836912)) b!4919486))

(declare-fun m!5932834 () Bool)

(assert (=> b!4919486 m!5932834))

(assert (=> d!1581838 d!1582228))

(declare-fun b!4919487 () Bool)

(declare-fun e!3074325 () Int)

(declare-fun e!3074327 () Int)

(assert (=> b!4919487 (= e!3074325 e!3074327)))

(declare-fun c!836913 () Bool)

(declare-fun call!342118 () Int)

(assert (=> b!4919487 (= c!836913 (>= lt!2020051 call!342118))))

(declare-fun d!1582230 () Bool)

(declare-fun e!3074326 () Bool)

(assert (=> d!1582230 e!3074326))

(declare-fun res!2100680 () Bool)

(assert (=> d!1582230 (=> (not res!2100680) (not e!3074326))))

(declare-fun lt!2020927 () List!56771)

(assert (=> d!1582230 (= res!2100680 (= ((_ map implies) (content!10051 lt!2020927) (content!10051 (list!17911 input!5492))) ((as const (InoxSet C!26920)) true)))))

(declare-fun e!3074324 () List!56771)

(assert (=> d!1582230 (= lt!2020927 e!3074324)))

(declare-fun c!836915 () Bool)

(assert (=> d!1582230 (= c!836915 ((_ is Nil!56647) (list!17911 input!5492)))))

(assert (=> d!1582230 (= (drop!2209 (list!17911 input!5492) lt!2020051) lt!2020927)))

(declare-fun b!4919488 () Bool)

(declare-fun e!3074328 () List!56771)

(assert (=> b!4919488 (= e!3074328 (list!17911 input!5492))))

(declare-fun b!4919489 () Bool)

(assert (=> b!4919489 (= e!3074325 call!342118)))

(declare-fun b!4919490 () Bool)

(assert (=> b!4919490 (= e!3074326 (= (size!37424 lt!2020927) e!3074325))))

(declare-fun c!836914 () Bool)

(assert (=> b!4919490 (= c!836914 (<= lt!2020051 0))))

(declare-fun b!4919491 () Bool)

(assert (=> b!4919491 (= e!3074324 Nil!56647)))

(declare-fun b!4919492 () Bool)

(assert (=> b!4919492 (= e!3074328 (drop!2209 (t!367195 (list!17911 input!5492)) (- lt!2020051 1)))))

(declare-fun b!4919493 () Bool)

(assert (=> b!4919493 (= e!3074327 0)))

(declare-fun b!4919494 () Bool)

(assert (=> b!4919494 (= e!3074327 (- call!342118 lt!2020051))))

(declare-fun b!4919495 () Bool)

(assert (=> b!4919495 (= e!3074324 e!3074328)))

(declare-fun c!836916 () Bool)

(assert (=> b!4919495 (= c!836916 (<= lt!2020051 0))))

(declare-fun bm!342113 () Bool)

(assert (=> bm!342113 (= call!342118 (size!37424 (list!17911 input!5492)))))

(assert (= (and d!1582230 c!836915) b!4919491))

(assert (= (and d!1582230 (not c!836915)) b!4919495))

(assert (= (and b!4919495 c!836916) b!4919488))

(assert (= (and b!4919495 (not c!836916)) b!4919492))

(assert (= (and d!1582230 res!2100680) b!4919490))

(assert (= (and b!4919490 c!836914) b!4919489))

(assert (= (and b!4919490 (not c!836914)) b!4919487))

(assert (= (and b!4919487 c!836913) b!4919493))

(assert (= (and b!4919487 (not c!836913)) b!4919494))

(assert (= (or b!4919489 b!4919487 b!4919494) bm!342113))

(declare-fun m!5932836 () Bool)

(assert (=> d!1582230 m!5932836))

(assert (=> d!1582230 m!5931280))

(declare-fun m!5932838 () Bool)

(assert (=> d!1582230 m!5932838))

(declare-fun m!5932840 () Bool)

(assert (=> b!4919490 m!5932840))

(declare-fun m!5932842 () Bool)

(assert (=> b!4919492 m!5932842))

(assert (=> bm!342113 m!5931280))

(assert (=> bm!342113 m!5931492))

(assert (=> b!4919116 d!1582230))

(declare-fun d!1582232 () Bool)

(declare-fun res!2100681 () Bool)

(declare-fun e!3074329 () Bool)

(assert (=> d!1582232 (=> (not res!2100681) (not e!3074329))))

(assert (=> d!1582232 (= res!2100681 (<= (size!37424 (list!17914 (xs!18172 (right!41629 (c!836549 input!5492))))) 512))))

(assert (=> d!1582232 (= (inv!73343 (right!41629 (c!836549 input!5492))) e!3074329)))

(declare-fun b!4919496 () Bool)

(declare-fun res!2100682 () Bool)

(assert (=> b!4919496 (=> (not res!2100682) (not e!3074329))))

(assert (=> b!4919496 (= res!2100682 (= (csize!29939 (right!41629 (c!836549 input!5492))) (size!37424 (list!17914 (xs!18172 (right!41629 (c!836549 input!5492)))))))))

(declare-fun b!4919497 () Bool)

(assert (=> b!4919497 (= e!3074329 (and (> (csize!29939 (right!41629 (c!836549 input!5492))) 0) (<= (csize!29939 (right!41629 (c!836549 input!5492))) 512)))))

(assert (= (and d!1582232 res!2100681) b!4919496))

(assert (= (and b!4919496 res!2100682) b!4919497))

(assert (=> d!1582232 m!5932550))

(assert (=> d!1582232 m!5932550))

(declare-fun m!5932844 () Bool)

(assert (=> d!1582232 m!5932844))

(assert (=> b!4919496 m!5932550))

(assert (=> b!4919496 m!5932550))

(assert (=> b!4919496 m!5932844))

(assert (=> b!4918739 d!1582232))

(declare-fun b!4919498 () Bool)

(declare-fun e!3074332 () Bool)

(declare-fun e!3074331 () Bool)

(assert (=> b!4919498 (= e!3074332 e!3074331)))

(declare-fun res!2100686 () Bool)

(assert (=> b!4919498 (=> (not res!2100686) (not e!3074331))))

(assert (=> b!4919498 (= res!2100686 (not ((_ is Nil!56647) (list!17911 input!5492))))))

(declare-fun b!4919500 () Bool)

(assert (=> b!4919500 (= e!3074331 (isPrefix!4945 (tail!9652 (list!17911 input!5492)) (tail!9652 (list!17911 input!5492))))))

(declare-fun b!4919501 () Bool)

(declare-fun e!3074330 () Bool)

(assert (=> b!4919501 (= e!3074330 (>= (size!37424 (list!17911 input!5492)) (size!37424 (list!17911 input!5492))))))

(declare-fun d!1582234 () Bool)

(assert (=> d!1582234 e!3074330))

(declare-fun res!2100685 () Bool)

(assert (=> d!1582234 (=> res!2100685 e!3074330)))

(declare-fun lt!2020928 () Bool)

(assert (=> d!1582234 (= res!2100685 (not lt!2020928))))

(assert (=> d!1582234 (= lt!2020928 e!3074332)))

(declare-fun res!2100684 () Bool)

(assert (=> d!1582234 (=> res!2100684 e!3074332)))

(assert (=> d!1582234 (= res!2100684 ((_ is Nil!56647) (list!17911 input!5492)))))

(assert (=> d!1582234 (= (isPrefix!4945 (list!17911 input!5492) (list!17911 input!5492)) lt!2020928)))

(declare-fun b!4919499 () Bool)

(declare-fun res!2100683 () Bool)

(assert (=> b!4919499 (=> (not res!2100683) (not e!3074331))))

(assert (=> b!4919499 (= res!2100683 (= (head!10505 (list!17911 input!5492)) (head!10505 (list!17911 input!5492))))))

(assert (= (and d!1582234 (not res!2100684)) b!4919498))

(assert (= (and b!4919498 res!2100686) b!4919499))

(assert (= (and b!4919499 res!2100683) b!4919500))

(assert (= (and d!1582234 (not res!2100685)) b!4919501))

(assert (=> b!4919500 m!5931280))

(assert (=> b!4919500 m!5932032))

(assert (=> b!4919500 m!5931280))

(assert (=> b!4919500 m!5932032))

(assert (=> b!4919500 m!5932032))

(assert (=> b!4919500 m!5932032))

(declare-fun m!5932846 () Bool)

(assert (=> b!4919500 m!5932846))

(assert (=> b!4919501 m!5931280))

(assert (=> b!4919501 m!5931492))

(assert (=> b!4919501 m!5931280))

(assert (=> b!4919501 m!5931492))

(assert (=> b!4919499 m!5931280))

(declare-fun m!5932848 () Bool)

(assert (=> b!4919499 m!5932848))

(assert (=> b!4919499 m!5931280))

(assert (=> b!4919499 m!5932848))

(assert (=> bm!342001 d!1582234))

(declare-fun d!1582236 () Bool)

(declare-fun lt!2020929 () Int)

(assert (=> d!1582236 (>= lt!2020929 0)))

(declare-fun e!3074333 () Int)

(assert (=> d!1582236 (= lt!2020929 e!3074333)))

(declare-fun c!836917 () Bool)

(assert (=> d!1582236 (= c!836917 ((_ is Nil!56647) (list!17914 (xs!18172 (c!836549 input!5492)))))))

(assert (=> d!1582236 (= (size!37424 (list!17914 (xs!18172 (c!836549 input!5492)))) lt!2020929)))

(declare-fun b!4919502 () Bool)

(assert (=> b!4919502 (= e!3074333 0)))

(declare-fun b!4919503 () Bool)

(assert (=> b!4919503 (= e!3074333 (+ 1 (size!37424 (t!367195 (list!17914 (xs!18172 (c!836549 input!5492)))))))))

(assert (= (and d!1582236 c!836917) b!4919502))

(assert (= (and d!1582236 (not c!836917)) b!4919503))

(declare-fun m!5932850 () Bool)

(assert (=> b!4919503 m!5932850))

(assert (=> b!4918563 d!1582236))

(declare-fun d!1582238 () Bool)

(assert (=> d!1582238 (= (list!17914 (xs!18172 (c!836549 input!5492))) (innerList!14942 (xs!18172 (c!836549 input!5492))))))

(assert (=> b!4918563 d!1582238))

(declare-fun d!1582240 () Bool)

(assert (=> d!1582240 (= (list!17911 (_1!33835 lt!2020445)) (list!17913 (c!836549 (_1!33835 lt!2020445))))))

(declare-fun bs!1178939 () Bool)

(assert (= bs!1178939 d!1582240))

(declare-fun m!5932852 () Bool)

(assert (=> bs!1178939 m!5932852))

(assert (=> b!4918638 d!1582240))

(declare-fun d!1582242 () Bool)

(assert (=> d!1582242 (= (list!17911 (_2!33835 lt!2020445)) (list!17913 (c!836549 (_2!33835 lt!2020445))))))

(declare-fun bs!1178940 () Bool)

(assert (= bs!1178940 d!1582242))

(declare-fun m!5932854 () Bool)

(assert (=> bs!1178940 m!5932854))

(assert (=> b!4918638 d!1582242))

(declare-fun b!4919505 () Bool)

(declare-fun e!3074334 () Bool)

(declare-fun lt!2020931 () tuple2!61070)

(assert (=> b!4919505 (= e!3074334 (= (_2!33838 lt!2020931) (drop!2209 (list!17911 input!5492) 0)))))

(declare-fun b!4919506 () Bool)

(declare-fun res!2100688 () Bool)

(assert (=> b!4919506 (=> (not res!2100688) (not e!3074334))))

(assert (=> b!4919506 (= res!2100688 (= (_1!33838 lt!2020931) (take!575 (list!17911 input!5492) 0)))))

(declare-fun b!4919507 () Bool)

(declare-fun e!3074336 () tuple2!61070)

(declare-fun e!3074335 () tuple2!61070)

(assert (=> b!4919507 (= e!3074336 e!3074335)))

(declare-fun c!836919 () Bool)

(assert (=> b!4919507 (= c!836919 (<= 0 0))))

(declare-fun b!4919508 () Bool)

(assert (=> b!4919508 (= e!3074336 (tuple2!61071 Nil!56647 Nil!56647))))

(declare-fun b!4919509 () Bool)

(declare-fun lt!2020930 () tuple2!61070)

(assert (=> b!4919509 (= lt!2020930 (splitAtIndex!85 (t!367195 (list!17911 input!5492)) (- 0 1)))))

(assert (=> b!4919509 (= e!3074335 (tuple2!61071 (Cons!56647 (h!63095 (list!17911 input!5492)) (_1!33838 lt!2020930)) (_2!33838 lt!2020930)))))

(declare-fun d!1582244 () Bool)

(assert (=> d!1582244 e!3074334))

(declare-fun res!2100687 () Bool)

(assert (=> d!1582244 (=> (not res!2100687) (not e!3074334))))

(assert (=> d!1582244 (= res!2100687 (= (++!12302 (_1!33838 lt!2020931) (_2!33838 lt!2020931)) (list!17911 input!5492)))))

(assert (=> d!1582244 (= lt!2020931 e!3074336)))

(declare-fun c!836918 () Bool)

(assert (=> d!1582244 (= c!836918 ((_ is Nil!56647) (list!17911 input!5492)))))

(assert (=> d!1582244 (= (splitAtIndex!85 (list!17911 input!5492) 0) lt!2020931)))

(declare-fun b!4919504 () Bool)

(assert (=> b!4919504 (= e!3074335 (tuple2!61071 Nil!56647 (list!17911 input!5492)))))

(assert (= (and d!1582244 c!836918) b!4919508))

(assert (= (and d!1582244 (not c!836918)) b!4919507))

(assert (= (and b!4919507 c!836919) b!4919504))

(assert (= (and b!4919507 (not c!836919)) b!4919509))

(assert (= (and d!1582244 res!2100687) b!4919506))

(assert (= (and b!4919506 res!2100688) b!4919505))

(assert (=> b!4919505 m!5931280))

(declare-fun m!5932856 () Bool)

(assert (=> b!4919505 m!5932856))

(assert (=> b!4919506 m!5931280))

(declare-fun m!5932858 () Bool)

(assert (=> b!4919506 m!5932858))

(declare-fun m!5932860 () Bool)

(assert (=> b!4919509 m!5932860))

(declare-fun m!5932862 () Bool)

(assert (=> d!1582244 m!5932862))

(assert (=> b!4918638 d!1582244))

(assert (=> b!4918638 d!1581818))

(declare-fun lt!2020933 () tuple2!61070)

(declare-fun b!4919511 () Bool)

(declare-fun e!3074337 () Bool)

(assert (=> b!4919511 (= e!3074337 (= (_2!33838 lt!2020933) (drop!2209 (t!367195 (list!17911 input!5492)) (- lt!2020051 1))))))

(declare-fun b!4919512 () Bool)

(declare-fun res!2100690 () Bool)

(assert (=> b!4919512 (=> (not res!2100690) (not e!3074337))))

(assert (=> b!4919512 (= res!2100690 (= (_1!33838 lt!2020933) (take!575 (t!367195 (list!17911 input!5492)) (- lt!2020051 1))))))

(declare-fun b!4919513 () Bool)

(declare-fun e!3074339 () tuple2!61070)

(declare-fun e!3074338 () tuple2!61070)

(assert (=> b!4919513 (= e!3074339 e!3074338)))

(declare-fun c!836921 () Bool)

(assert (=> b!4919513 (= c!836921 (<= (- lt!2020051 1) 0))))

(declare-fun b!4919514 () Bool)

(assert (=> b!4919514 (= e!3074339 (tuple2!61071 Nil!56647 Nil!56647))))

(declare-fun b!4919515 () Bool)

(declare-fun lt!2020932 () tuple2!61070)

(assert (=> b!4919515 (= lt!2020932 (splitAtIndex!85 (t!367195 (t!367195 (list!17911 input!5492))) (- (- lt!2020051 1) 1)))))

(assert (=> b!4919515 (= e!3074338 (tuple2!61071 (Cons!56647 (h!63095 (t!367195 (list!17911 input!5492))) (_1!33838 lt!2020932)) (_2!33838 lt!2020932)))))

(declare-fun d!1582246 () Bool)

(assert (=> d!1582246 e!3074337))

(declare-fun res!2100689 () Bool)

(assert (=> d!1582246 (=> (not res!2100689) (not e!3074337))))

(assert (=> d!1582246 (= res!2100689 (= (++!12302 (_1!33838 lt!2020933) (_2!33838 lt!2020933)) (t!367195 (list!17911 input!5492))))))

(assert (=> d!1582246 (= lt!2020933 e!3074339)))

(declare-fun c!836920 () Bool)

(assert (=> d!1582246 (= c!836920 ((_ is Nil!56647) (t!367195 (list!17911 input!5492))))))

(assert (=> d!1582246 (= (splitAtIndex!85 (t!367195 (list!17911 input!5492)) (- lt!2020051 1)) lt!2020933)))

(declare-fun b!4919510 () Bool)

(assert (=> b!4919510 (= e!3074338 (tuple2!61071 Nil!56647 (t!367195 (list!17911 input!5492))))))

(assert (= (and d!1582246 c!836920) b!4919514))

(assert (= (and d!1582246 (not c!836920)) b!4919513))

(assert (= (and b!4919513 c!836921) b!4919510))

(assert (= (and b!4919513 (not c!836921)) b!4919515))

(assert (= (and d!1582246 res!2100689) b!4919512))

(assert (= (and b!4919512 res!2100690) b!4919511))

(assert (=> b!4919511 m!5932842))

(declare-fun m!5932864 () Bool)

(assert (=> b!4919512 m!5932864))

(declare-fun m!5932866 () Bool)

(assert (=> b!4919515 m!5932866))

(declare-fun m!5932868 () Bool)

(assert (=> d!1582246 m!5932868))

(assert (=> b!4919120 d!1582246))

(declare-fun b!4919516 () Bool)

(declare-fun e!3074347 () tuple2!61070)

(assert (=> b!4919516 (= e!3074347 (tuple2!61071 lt!2020655 Nil!56647))))

(declare-fun bm!342114 () Bool)

(declare-fun call!342122 () Unit!146993)

(assert (=> bm!342114 (= call!342122 (lemmaIsPrefixRefl!3342 (list!17911 input!5492) (list!17911 input!5492)))))

(declare-fun b!4919517 () Bool)

(declare-fun c!836923 () Bool)

(declare-fun call!342119 () Bool)

(assert (=> b!4919517 (= c!836923 call!342119)))

(declare-fun lt!2020949 () Unit!146993)

(declare-fun lt!2020956 () Unit!146993)

(assert (=> b!4919517 (= lt!2020949 lt!2020956)))

(declare-fun lt!2020954 () List!56771)

(declare-fun lt!2020948 () C!26920)

(assert (=> b!4919517 (= (++!12302 (++!12302 lt!2020655 (Cons!56647 lt!2020948 Nil!56647)) lt!2020954) (list!17911 input!5492))))

(assert (=> b!4919517 (= lt!2020956 (lemmaMoveElementToOtherListKeepsConcatEq!1376 lt!2020655 lt!2020948 lt!2020954 (list!17911 input!5492)))))

(assert (=> b!4919517 (= lt!2020954 (tail!9652 call!342001))))

(assert (=> b!4919517 (= lt!2020948 (head!10505 call!342001))))

(declare-fun lt!2020942 () Unit!146993)

(declare-fun lt!2020939 () Unit!146993)

(assert (=> b!4919517 (= lt!2020942 lt!2020939)))

(assert (=> b!4919517 (isPrefix!4945 (++!12302 lt!2020655 (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) lt!2020655)) Nil!56647)) (list!17911 input!5492))))

(assert (=> b!4919517 (= lt!2020939 (lemmaAddHeadSuffixToPrefixStillPrefix!758 lt!2020655 (list!17911 input!5492)))))

(declare-fun lt!2020940 () List!56771)

(assert (=> b!4919517 (= lt!2020940 (++!12302 lt!2020655 (Cons!56647 (head!10505 call!342001) Nil!56647)))))

(declare-fun lt!2020934 () Unit!146993)

(declare-fun e!3074343 () Unit!146993)

(assert (=> b!4919517 (= lt!2020934 e!3074343)))

(declare-fun c!836926 () Bool)

(assert (=> b!4919517 (= c!836926 (= (size!37424 lt!2020655) (size!37424 (list!17911 input!5492))))))

(declare-fun lt!2020957 () Unit!146993)

(declare-fun lt!2020943 () Unit!146993)

(assert (=> b!4919517 (= lt!2020957 lt!2020943)))

(assert (=> b!4919517 (<= (size!37424 lt!2020655) (size!37424 (list!17911 input!5492)))))

(assert (=> b!4919517 (= lt!2020943 (lemmaIsPrefixThenSmallerEqSize!670 lt!2020655 (list!17911 input!5492)))))

(declare-fun e!3074340 () tuple2!61070)

(declare-fun e!3074341 () tuple2!61070)

(assert (=> b!4919517 (= e!3074340 e!3074341)))

(declare-fun bm!342115 () Bool)

(assert (=> bm!342115 (= call!342119 (nullableZipper!795 call!342006))))

(declare-fun b!4919518 () Bool)

(declare-fun Unit!147019 () Unit!146993)

(assert (=> b!4919518 (= e!3074343 Unit!147019)))

(declare-fun lt!2020936 () Unit!146993)

(assert (=> b!4919518 (= lt!2020936 call!342122)))

(declare-fun call!342125 () Bool)

(assert (=> b!4919518 call!342125))

(declare-fun lt!2020945 () Unit!146993)

(assert (=> b!4919518 (= lt!2020945 lt!2020936)))

(declare-fun lt!2020951 () Unit!146993)

(declare-fun call!342120 () Unit!146993)

(assert (=> b!4919518 (= lt!2020951 call!342120)))

(assert (=> b!4919518 (= (list!17911 input!5492) lt!2020655)))

(declare-fun lt!2020941 () Unit!146993)

(assert (=> b!4919518 (= lt!2020941 lt!2020951)))

(assert (=> b!4919518 false))

(declare-fun b!4919519 () Bool)

(declare-fun e!3074344 () tuple2!61070)

(assert (=> b!4919519 (= e!3074344 (tuple2!61071 lt!2020655 call!342001))))

(declare-fun b!4919520 () Bool)

(declare-fun e!3074342 () tuple2!61070)

(assert (=> b!4919520 (= e!3074342 e!3074340)))

(declare-fun c!836924 () Bool)

(assert (=> b!4919520 (= c!836924 (= (+ 0 1) lt!2020052))))

(declare-fun b!4919521 () Bool)

(declare-fun c!836922 () Bool)

(assert (=> b!4919521 (= c!836922 call!342119)))

(declare-fun lt!2020946 () Unit!146993)

(declare-fun lt!2020959 () Unit!146993)

(assert (=> b!4919521 (= lt!2020946 lt!2020959)))

(assert (=> b!4919521 (= (list!17911 input!5492) lt!2020655)))

(assert (=> b!4919521 (= lt!2020959 call!342120)))

(declare-fun lt!2020953 () Unit!146993)

(declare-fun lt!2020935 () Unit!146993)

(assert (=> b!4919521 (= lt!2020953 lt!2020935)))

(assert (=> b!4919521 call!342125))

(assert (=> b!4919521 (= lt!2020935 call!342122)))

(assert (=> b!4919521 (= e!3074340 e!3074347)))

(declare-fun b!4919522 () Bool)

(declare-fun lt!2020958 () tuple2!61070)

(assert (=> b!4919522 (= e!3074344 lt!2020958)))

(declare-fun b!4919523 () Bool)

(declare-fun Unit!147020 () Unit!146993)

(assert (=> b!4919523 (= e!3074343 Unit!147020)))

(declare-fun bm!342117 () Bool)

(declare-fun call!342124 () C!26920)

(assert (=> bm!342117 (= call!342124 (head!10505 call!342001))))

(declare-fun b!4919524 () Bool)

(declare-fun call!342123 () tuple2!61070)

(assert (=> b!4919524 (= e!3074341 call!342123)))

(declare-fun b!4919525 () Bool)

(declare-fun e!3074345 () Bool)

(declare-fun e!3074346 () Bool)

(assert (=> b!4919525 (= e!3074345 e!3074346)))

(declare-fun res!2100692 () Bool)

(assert (=> b!4919525 (=> res!2100692 e!3074346)))

(declare-fun lt!2020938 () tuple2!61070)

(assert (=> b!4919525 (= res!2100692 (isEmpty!30552 (_1!33838 lt!2020938)))))

(declare-fun b!4919526 () Bool)

(assert (=> b!4919526 (= e!3074342 (tuple2!61071 Nil!56647 (list!17911 input!5492)))))

(declare-fun bm!342116 () Bool)

(declare-fun call!342121 () List!56771)

(declare-fun call!342126 () (InoxSet Context!5994))

(assert (=> bm!342116 (= call!342123 (findLongestMatchInnerZipper!40 call!342126 lt!2020940 (+ 0 1 1) call!342121 (list!17911 input!5492) lt!2020052))))

(declare-fun d!1582248 () Bool)

(assert (=> d!1582248 e!3074345))

(declare-fun res!2100691 () Bool)

(assert (=> d!1582248 (=> (not res!2100691) (not e!3074345))))

(assert (=> d!1582248 (= res!2100691 (= (++!12302 (_1!33838 lt!2020938) (_2!33838 lt!2020938)) (list!17911 input!5492)))))

(assert (=> d!1582248 (= lt!2020938 e!3074342)))

(declare-fun c!836927 () Bool)

(assert (=> d!1582248 (= c!836927 (lostCauseZipper!675 call!342006))))

(declare-fun lt!2020944 () Unit!146993)

(declare-fun Unit!147021 () Unit!146993)

(assert (=> d!1582248 (= lt!2020944 Unit!147021)))

(assert (=> d!1582248 (= (getSuffix!2933 (list!17911 input!5492) lt!2020655) call!342001)))

(declare-fun lt!2020937 () Unit!146993)

(declare-fun lt!2020955 () Unit!146993)

(assert (=> d!1582248 (= lt!2020937 lt!2020955)))

(declare-fun lt!2020950 () List!56771)

(assert (=> d!1582248 (= call!342001 lt!2020950)))

(assert (=> d!1582248 (= lt!2020955 (lemmaSamePrefixThenSameSuffix!2349 lt!2020655 call!342001 lt!2020655 lt!2020950 (list!17911 input!5492)))))

(assert (=> d!1582248 (= lt!2020950 (getSuffix!2933 (list!17911 input!5492) lt!2020655))))

(declare-fun lt!2020952 () Unit!146993)

(declare-fun lt!2020947 () Unit!146993)

(assert (=> d!1582248 (= lt!2020952 lt!2020947)))

(assert (=> d!1582248 (isPrefix!4945 lt!2020655 (++!12302 lt!2020655 call!342001))))

(assert (=> d!1582248 (= lt!2020947 (lemmaConcatTwoListThenFirstIsPrefix!3169 lt!2020655 call!342001))))

(assert (=> d!1582248 (= (++!12302 lt!2020655 call!342001) (list!17911 input!5492))))

(assert (=> d!1582248 (= (findLongestMatchInnerZipper!40 call!342006 lt!2020655 (+ 0 1) call!342001 (list!17911 input!5492) lt!2020052) lt!2020938)))

(declare-fun b!4919527 () Bool)

(assert (=> b!4919527 (= e!3074341 e!3074344)))

(assert (=> b!4919527 (= lt!2020958 call!342123)))

(declare-fun c!836925 () Bool)

(assert (=> b!4919527 (= c!836925 (isEmpty!30552 (_1!33838 lt!2020958)))))

(declare-fun bm!342118 () Bool)

(assert (=> bm!342118 (= call!342126 (derivationStepZipper!573 call!342006 call!342124))))

(declare-fun b!4919528 () Bool)

(assert (=> b!4919528 (= e!3074346 (>= (size!37424 (_1!33838 lt!2020938)) (size!37424 lt!2020655)))))

(declare-fun b!4919529 () Bool)

(assert (=> b!4919529 (= e!3074347 (tuple2!61071 Nil!56647 (list!17911 input!5492)))))

(declare-fun bm!342119 () Bool)

(assert (=> bm!342119 (= call!342120 (lemmaIsPrefixSameLengthThenSameList!1104 (list!17911 input!5492) lt!2020655 (list!17911 input!5492)))))

(declare-fun bm!342120 () Bool)

(assert (=> bm!342120 (= call!342121 (tail!9652 call!342001))))

(declare-fun bm!342121 () Bool)

(assert (=> bm!342121 (= call!342125 (isPrefix!4945 (list!17911 input!5492) (list!17911 input!5492)))))

(assert (= (and d!1582248 c!836927) b!4919526))

(assert (= (and d!1582248 (not c!836927)) b!4919520))

(assert (= (and b!4919520 c!836924) b!4919521))

(assert (= (and b!4919520 (not c!836924)) b!4919517))

(assert (= (and b!4919521 c!836922) b!4919516))

(assert (= (and b!4919521 (not c!836922)) b!4919529))

(assert (= (and b!4919517 c!836926) b!4919518))

(assert (= (and b!4919517 (not c!836926)) b!4919523))

(assert (= (and b!4919517 c!836923) b!4919527))

(assert (= (and b!4919517 (not c!836923)) b!4919524))

(assert (= (and b!4919527 c!836925) b!4919519))

(assert (= (and b!4919527 (not c!836925)) b!4919522))

(assert (= (or b!4919527 b!4919524) bm!342120))

(assert (= (or b!4919527 b!4919524) bm!342117))

(assert (= (or b!4919527 b!4919524) bm!342118))

(assert (= (or b!4919527 b!4919524) bm!342116))

(assert (= (or b!4919521 b!4919518) bm!342121))

(assert (= (or b!4919521 b!4919518) bm!342114))

(assert (= (or b!4919521 b!4919518) bm!342119))

(assert (= (or b!4919521 b!4919517) bm!342115))

(assert (= (and d!1582248 res!2100691) b!4919525))

(assert (= (and b!4919525 (not res!2100692)) b!4919528))

(declare-fun m!5932870 () Bool)

(assert (=> bm!342115 m!5932870))

(assert (=> b!4919517 m!5931280))

(declare-fun m!5932872 () Bool)

(assert (=> b!4919517 m!5932872))

(assert (=> b!4919517 m!5931280))

(declare-fun m!5932874 () Bool)

(assert (=> b!4919517 m!5932874))

(declare-fun m!5932876 () Bool)

(assert (=> b!4919517 m!5932876))

(declare-fun m!5932878 () Bool)

(assert (=> b!4919517 m!5932878))

(assert (=> b!4919517 m!5931280))

(declare-fun m!5932880 () Bool)

(assert (=> b!4919517 m!5932880))

(assert (=> b!4919517 m!5931280))

(assert (=> b!4919517 m!5932876))

(assert (=> b!4919517 m!5931280))

(assert (=> b!4919517 m!5931492))

(declare-fun m!5932882 () Bool)

(assert (=> b!4919517 m!5932882))

(declare-fun m!5932884 () Bool)

(assert (=> b!4919517 m!5932884))

(declare-fun m!5932886 () Bool)

(assert (=> b!4919517 m!5932886))

(assert (=> b!4919517 m!5931280))

(declare-fun m!5932888 () Bool)

(assert (=> b!4919517 m!5932888))

(assert (=> b!4919517 m!5932882))

(declare-fun m!5932890 () Bool)

(assert (=> b!4919517 m!5932890))

(assert (=> b!4919517 m!5932886))

(declare-fun m!5932892 () Bool)

(assert (=> b!4919517 m!5932892))

(declare-fun m!5932894 () Bool)

(assert (=> b!4919517 m!5932894))

(declare-fun m!5932896 () Bool)

(assert (=> b!4919517 m!5932896))

(declare-fun m!5932898 () Bool)

(assert (=> d!1582248 m!5932898))

(declare-fun m!5932900 () Bool)

(assert (=> d!1582248 m!5932900))

(declare-fun m!5932902 () Bool)

(assert (=> d!1582248 m!5932902))

(assert (=> d!1582248 m!5931280))

(declare-fun m!5932904 () Bool)

(assert (=> d!1582248 m!5932904))

(declare-fun m!5932906 () Bool)

(assert (=> d!1582248 m!5932906))

(assert (=> d!1582248 m!5931280))

(assert (=> d!1582248 m!5932876))

(assert (=> d!1582248 m!5932900))

(declare-fun m!5932908 () Bool)

(assert (=> d!1582248 m!5932908))

(assert (=> bm!342114 m!5931280))

(assert (=> bm!342114 m!5931280))

(assert (=> bm!342114 m!5932128))

(declare-fun m!5932910 () Bool)

(assert (=> bm!342118 m!5932910))

(assert (=> bm!342119 m!5931280))

(assert (=> bm!342119 m!5931280))

(declare-fun m!5932912 () Bool)

(assert (=> bm!342119 m!5932912))

(declare-fun m!5932914 () Bool)

(assert (=> b!4919528 m!5932914))

(assert (=> b!4919528 m!5932892))

(declare-fun m!5932916 () Bool)

(assert (=> b!4919525 m!5932916))

(assert (=> bm!342121 m!5931280))

(assert (=> bm!342121 m!5931280))

(assert (=> bm!342121 m!5932138))

(assert (=> bm!342120 m!5932890))

(declare-fun m!5932918 () Bool)

(assert (=> b!4919527 m!5932918))

(assert (=> bm!342117 m!5932896))

(assert (=> bm!342116 m!5931280))

(declare-fun m!5932920 () Bool)

(assert (=> bm!342116 m!5932920))

(assert (=> bm!341996 d!1582248))

(declare-fun d!1582250 () Bool)

(declare-fun lt!2020960 () Int)

(assert (=> d!1582250 (>= lt!2020960 0)))

(declare-fun e!3074348 () Int)

(assert (=> d!1582250 (= lt!2020960 e!3074348)))

(declare-fun c!836928 () Bool)

(assert (=> d!1582250 (= c!836928 ((_ is Nil!56647) lt!2020428))))

(assert (=> d!1582250 (= (size!37424 lt!2020428) lt!2020960)))

(declare-fun b!4919530 () Bool)

(assert (=> b!4919530 (= e!3074348 0)))

(declare-fun b!4919531 () Bool)

(assert (=> b!4919531 (= e!3074348 (+ 1 (size!37424 (t!367195 lt!2020428))))))

(assert (= (and d!1582250 c!836928) b!4919530))

(assert (= (and d!1582250 (not c!836928)) b!4919531))

(declare-fun m!5932922 () Bool)

(assert (=> b!4919531 m!5932922))

(assert (=> b!4918602 d!1582250))

(assert (=> b!4918602 d!1581892))

(declare-fun d!1582252 () Bool)

(declare-fun lt!2020961 () Int)

(assert (=> d!1582252 (>= lt!2020961 0)))

(declare-fun e!3074349 () Int)

(assert (=> d!1582252 (= lt!2020961 e!3074349)))

(declare-fun c!836929 () Bool)

(assert (=> d!1582252 (= c!836929 ((_ is Nil!56647) (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)))))

(assert (=> d!1582252 (= (size!37424 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)) lt!2020961)))

(declare-fun b!4919532 () Bool)

(assert (=> b!4919532 (= e!3074349 0)))

(declare-fun b!4919533 () Bool)

(assert (=> b!4919533 (= e!3074349 (+ 1 (size!37424 (t!367195 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)))))))

(assert (= (and d!1582252 c!836929) b!4919532))

(assert (= (and d!1582252 (not c!836929)) b!4919533))

(declare-fun m!5932924 () Bool)

(assert (=> b!4919533 m!5932924))

(assert (=> b!4918602 d!1582252))

(assert (=> d!1581944 d!1582006))

(declare-fun d!1582254 () Bool)

(assert (=> d!1582254 (isPrefix!4945 (ite c!836592 lt!2020299 lt!2020303) (ite c!836592 lt!2020301 lt!2020313))))

(assert (=> d!1582254 true))

(declare-fun _$45!2208 () Unit!146993)

(assert (=> d!1582254 (= (choose!36004 (ite c!836592 lt!2020299 lt!2020303) (ite c!836592 lt!2020301 lt!2020313)) _$45!2208)))

(declare-fun bs!1178941 () Bool)

(assert (= bs!1178941 d!1582254))

(assert (=> bs!1178941 m!5931422))

(assert (=> d!1581944 d!1582254))

(assert (=> b!4919036 d!1582110))

(declare-fun d!1582256 () Bool)

(assert (not d!1582256))

(assert (=> b!4918791 d!1582256))

(declare-fun d!1582258 () Bool)

(assert (=> d!1582258 (= (head!10505 (++!12302 Nil!56647 lt!2020053)) (h!63095 (++!12302 Nil!56647 lt!2020053)))))

(assert (=> b!4918791 d!1582258))

(declare-fun d!1582260 () Bool)

(assert (=> d!1582260 (= (ite c!836592 lt!2020285 lt!2020292) Nil!56647)))

(assert (=> d!1582260 true))

(declare-fun _$60!862 () Unit!146993)

(assert (=> d!1582260 (= (choose!35994 (ite c!836592 lt!2020285 lt!2020292) Nil!56647 e!3073773) _$60!862)))

(assert (=> d!1581828 d!1582260))

(declare-fun b!4919534 () Bool)

(declare-fun e!3074352 () Bool)

(declare-fun e!3074351 () Bool)

(assert (=> b!4919534 (= e!3074352 e!3074351)))

(declare-fun res!2100696 () Bool)

(assert (=> b!4919534 (=> (not res!2100696) (not e!3074351))))

(assert (=> b!4919534 (= res!2100696 (not ((_ is Nil!56647) e!3073773)))))

(declare-fun b!4919536 () Bool)

(assert (=> b!4919536 (= e!3074351 (isPrefix!4945 (tail!9652 (ite c!836592 lt!2020285 lt!2020292)) (tail!9652 e!3073773)))))

(declare-fun b!4919537 () Bool)

(declare-fun e!3074350 () Bool)

(assert (=> b!4919537 (= e!3074350 (>= (size!37424 e!3073773) (size!37424 (ite c!836592 lt!2020285 lt!2020292))))))

(declare-fun d!1582262 () Bool)

(assert (=> d!1582262 e!3074350))

(declare-fun res!2100695 () Bool)

(assert (=> d!1582262 (=> res!2100695 e!3074350)))

(declare-fun lt!2020962 () Bool)

(assert (=> d!1582262 (= res!2100695 (not lt!2020962))))

(assert (=> d!1582262 (= lt!2020962 e!3074352)))

(declare-fun res!2100694 () Bool)

(assert (=> d!1582262 (=> res!2100694 e!3074352)))

(assert (=> d!1582262 (= res!2100694 ((_ is Nil!56647) (ite c!836592 lt!2020285 lt!2020292)))))

(assert (=> d!1582262 (= (isPrefix!4945 (ite c!836592 lt!2020285 lt!2020292) e!3073773) lt!2020962)))

(declare-fun b!4919535 () Bool)

(declare-fun res!2100693 () Bool)

(assert (=> b!4919535 (=> (not res!2100693) (not e!3074351))))

(assert (=> b!4919535 (= res!2100693 (= (head!10505 (ite c!836592 lt!2020285 lt!2020292)) (head!10505 e!3073773)))))

(assert (= (and d!1582262 (not res!2100694)) b!4919534))

(assert (= (and b!4919534 res!2100696) b!4919535))

(assert (= (and b!4919535 res!2100693) b!4919536))

(assert (= (and d!1582262 (not res!2100695)) b!4919537))

(declare-fun m!5932926 () Bool)

(assert (=> b!4919536 m!5932926))

(declare-fun m!5932928 () Bool)

(assert (=> b!4919536 m!5932928))

(assert (=> b!4919536 m!5932926))

(assert (=> b!4919536 m!5932928))

(declare-fun m!5932930 () Bool)

(assert (=> b!4919536 m!5932930))

(declare-fun m!5932932 () Bool)

(assert (=> b!4919537 m!5932932))

(declare-fun m!5932934 () Bool)

(assert (=> b!4919537 m!5932934))

(declare-fun m!5932936 () Bool)

(assert (=> b!4919535 m!5932936))

(declare-fun m!5932938 () Bool)

(assert (=> b!4919535 m!5932938))

(assert (=> d!1581828 d!1582262))

(declare-fun d!1582264 () Bool)

(declare-fun lt!2020963 () Int)

(assert (=> d!1582264 (>= lt!2020963 0)))

(declare-fun e!3074353 () Int)

(assert (=> d!1582264 (= lt!2020963 e!3074353)))

(declare-fun c!836930 () Bool)

(assert (=> d!1582264 (= c!836930 ((_ is Nil!56647) lt!2020318))))

(assert (=> d!1582264 (= (size!37424 lt!2020318) lt!2020963)))

(declare-fun b!4919538 () Bool)

(assert (=> b!4919538 (= e!3074353 0)))

(declare-fun b!4919539 () Bool)

(assert (=> b!4919539 (= e!3074353 (+ 1 (size!37424 (t!367195 lt!2020318))))))

(assert (= (and d!1582264 c!836930) b!4919538))

(assert (= (and d!1582264 (not c!836930)) b!4919539))

(declare-fun m!5932940 () Bool)

(assert (=> b!4919539 m!5932940))

(assert (=> b!4918591 d!1582264))

(declare-fun b!4919540 () Bool)

(declare-fun res!2100702 () Bool)

(declare-fun e!3074354 () Bool)

(assert (=> b!4919540 (=> (not res!2100702) (not e!3074354))))

(assert (=> b!4919540 (= res!2100702 (not (isEmpty!30551 (left!41299 (right!41629 (left!41299 (c!836549 input!5492)))))))))

(declare-fun b!4919541 () Bool)

(assert (=> b!4919541 (= e!3074354 (not (isEmpty!30551 (right!41629 (right!41629 (left!41299 (c!836549 input!5492)))))))))

(declare-fun b!4919542 () Bool)

(declare-fun res!2100700 () Bool)

(assert (=> b!4919542 (=> (not res!2100700) (not e!3074354))))

(assert (=> b!4919542 (= res!2100700 (<= (- (height!1978 (left!41299 (right!41629 (left!41299 (c!836549 input!5492))))) (height!1978 (right!41629 (right!41629 (left!41299 (c!836549 input!5492)))))) 1))))

(declare-fun d!1582266 () Bool)

(declare-fun res!2100697 () Bool)

(declare-fun e!3074355 () Bool)

(assert (=> d!1582266 (=> res!2100697 e!3074355)))

(assert (=> d!1582266 (= res!2100697 (not ((_ is Node!14854) (right!41629 (left!41299 (c!836549 input!5492))))))))

(assert (=> d!1582266 (= (isBalanced!4070 (right!41629 (left!41299 (c!836549 input!5492)))) e!3074355)))

(declare-fun b!4919543 () Bool)

(declare-fun res!2100699 () Bool)

(assert (=> b!4919543 (=> (not res!2100699) (not e!3074354))))

(assert (=> b!4919543 (= res!2100699 (isBalanced!4070 (right!41629 (right!41629 (left!41299 (c!836549 input!5492))))))))

(declare-fun b!4919544 () Bool)

(declare-fun res!2100701 () Bool)

(assert (=> b!4919544 (=> (not res!2100701) (not e!3074354))))

(assert (=> b!4919544 (= res!2100701 (isBalanced!4070 (left!41299 (right!41629 (left!41299 (c!836549 input!5492))))))))

(declare-fun b!4919545 () Bool)

(assert (=> b!4919545 (= e!3074355 e!3074354)))

(declare-fun res!2100698 () Bool)

(assert (=> b!4919545 (=> (not res!2100698) (not e!3074354))))

(assert (=> b!4919545 (= res!2100698 (<= (- 1) (- (height!1978 (left!41299 (right!41629 (left!41299 (c!836549 input!5492))))) (height!1978 (right!41629 (right!41629 (left!41299 (c!836549 input!5492))))))))))

(assert (= (and d!1582266 (not res!2100697)) b!4919545))

(assert (= (and b!4919545 res!2100698) b!4919542))

(assert (= (and b!4919542 res!2100700) b!4919544))

(assert (= (and b!4919544 res!2100701) b!4919543))

(assert (= (and b!4919543 res!2100699) b!4919540))

(assert (= (and b!4919540 res!2100702) b!4919541))

(declare-fun m!5932942 () Bool)

(assert (=> b!4919543 m!5932942))

(declare-fun m!5932944 () Bool)

(assert (=> b!4919540 m!5932944))

(declare-fun m!5932946 () Bool)

(assert (=> b!4919545 m!5932946))

(declare-fun m!5932948 () Bool)

(assert (=> b!4919545 m!5932948))

(declare-fun m!5932950 () Bool)

(assert (=> b!4919541 m!5932950))

(assert (=> b!4919542 m!5932946))

(assert (=> b!4919542 m!5932948))

(declare-fun m!5932952 () Bool)

(assert (=> b!4919544 m!5932952))

(assert (=> b!4919060 d!1582266))

(assert (=> b!4918634 d!1582264))

(assert (=> d!1581840 d!1582236))

(assert (=> d!1581840 d!1582238))

(declare-fun bs!1178942 () Bool)

(declare-fun d!1582268 () Bool)

(assert (= bs!1178942 (and d!1582268 d!1582066)))

(declare-fun lambda!245048 () Int)

(assert (=> bs!1178942 (not (= lambda!245048 lambda!245037))))

(declare-fun bs!1178943 () Bool)

(assert (= bs!1178943 (and d!1582268 b!4919466)))

(assert (=> bs!1178943 (not (= lambda!245048 lambda!245045))))

(declare-fun bs!1178944 () Bool)

(assert (= bs!1178944 (and d!1582268 b!4918781)))

(assert (=> bs!1178944 (not (= lambda!245048 lambda!245005))))

(declare-fun bs!1178945 () Bool)

(assert (= bs!1178945 (and d!1582268 d!1582138)))

(assert (=> bs!1178945 (= lambda!245048 lambda!245042)))

(declare-fun bs!1178946 () Bool)

(assert (= bs!1178946 (and d!1582268 d!1582222)))

(assert (=> bs!1178946 (not (= lambda!245048 lambda!245043))))

(declare-fun bs!1178947 () Bool)

(assert (= bs!1178947 (and d!1582268 d!1581832)))

(assert (=> bs!1178947 (not (= lambda!245048 lambda!244989))))

(declare-fun bs!1178948 () Bool)

(assert (= bs!1178948 (and d!1582268 d!1581946)))

(assert (=> bs!1178948 (not (= lambda!245048 lambda!245003))))

(declare-fun bs!1178949 () Bool)

(assert (= bs!1178949 (and d!1582268 b!4918780)))

(assert (=> bs!1178949 (not (= lambda!245048 lambda!245004))))

(declare-fun bs!1178950 () Bool)

(assert (= bs!1178950 (and d!1582268 b!4919465)))

(assert (=> bs!1178950 (not (= lambda!245048 lambda!245044))))

(assert (=> d!1582268 true))

(assert (=> d!1582268 (< (dynLambda!23003 order!25971 lambda!245003) (dynLambda!23003 order!25971 lambda!245048))))

(assert (=> d!1582268 (not (exists!1239 lt!2020527 lambda!245048))))

(declare-fun lt!2020966 () Unit!146993)

(declare-fun choose!36019 (List!56773 Int) Unit!146993)

(assert (=> d!1582268 (= lt!2020966 (choose!36019 lt!2020527 lambda!245003))))

(assert (=> d!1582268 (forall!13116 lt!2020527 lambda!245003)))

(assert (=> d!1582268 (= (lemmaForallThenNotExists!160 lt!2020527 lambda!245003) lt!2020966)))

(declare-fun bs!1178951 () Bool)

(assert (= bs!1178951 d!1582268))

(declare-fun m!5932954 () Bool)

(assert (=> bs!1178951 m!5932954))

(declare-fun m!5932956 () Bool)

(assert (=> bs!1178951 m!5932956))

(declare-fun m!5932958 () Bool)

(assert (=> bs!1178951 m!5932958))

(assert (=> b!4918781 d!1582268))

(assert (=> d!1581908 d!1581924))

(assert (=> d!1581908 d!1581898))

(declare-fun d!1582270 () Bool)

(assert (=> d!1582270 (= (++!12302 (++!12302 Nil!56647 (Cons!56647 lt!2020295 Nil!56647)) lt!2020284) lt!2020300)))

(assert (=> d!1582270 true))

(declare-fun _$68!794 () Unit!146993)

(assert (=> d!1582270 (= (choose!36000 Nil!56647 lt!2020295 lt!2020284 lt!2020300) _$68!794)))

(declare-fun bs!1178952 () Bool)

(assert (= bs!1178952 d!1582270))

(assert (=> bs!1178952 m!5931442))

(assert (=> bs!1178952 m!5931442))

(assert (=> bs!1178952 m!5931444))

(assert (=> d!1581908 d!1582270))

(declare-fun b!4919546 () Bool)

(declare-fun e!3074358 () List!56771)

(assert (=> b!4919546 (= e!3074358 (Cons!56647 lt!2020295 lt!2020284))))

(declare-fun b!4919548 () Bool)

(declare-fun res!2100703 () Bool)

(declare-fun e!3074359 () Bool)

(assert (=> b!4919548 (=> (not res!2100703) (not e!3074359))))

(declare-fun lt!2020967 () List!56771)

(assert (=> b!4919548 (= res!2100703 (= (size!37424 lt!2020967) (+ (size!37424 Nil!56647) (size!37424 (Cons!56647 lt!2020295 lt!2020284)))))))

(declare-fun b!4919547 () Bool)

(assert (=> b!4919547 (= e!3074358 (Cons!56647 (h!63095 Nil!56647) (++!12302 (t!367195 Nil!56647) (Cons!56647 lt!2020295 lt!2020284))))))

(declare-fun d!1582272 () Bool)

(assert (=> d!1582272 e!3074359))

(declare-fun res!2100704 () Bool)

(assert (=> d!1582272 (=> (not res!2100704) (not e!3074359))))

(assert (=> d!1582272 (= res!2100704 (= (content!10051 lt!2020967) ((_ map or) (content!10051 Nil!56647) (content!10051 (Cons!56647 lt!2020295 lt!2020284)))))))

(assert (=> d!1582272 (= lt!2020967 e!3074358)))

(declare-fun c!836931 () Bool)

(assert (=> d!1582272 (= c!836931 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1582272 (= (++!12302 Nil!56647 (Cons!56647 lt!2020295 lt!2020284)) lt!2020967)))

(declare-fun b!4919549 () Bool)

(assert (=> b!4919549 (= e!3074359 (or (not (= (Cons!56647 lt!2020295 lt!2020284) Nil!56647)) (= lt!2020967 Nil!56647)))))

(assert (= (and d!1582272 c!836931) b!4919546))

(assert (= (and d!1582272 (not c!836931)) b!4919547))

(assert (= (and d!1582272 res!2100704) b!4919548))

(assert (= (and b!4919548 res!2100703) b!4919549))

(declare-fun m!5932960 () Bool)

(assert (=> b!4919548 m!5932960))

(assert (=> b!4919548 m!5931462))

(declare-fun m!5932962 () Bool)

(assert (=> b!4919548 m!5932962))

(declare-fun m!5932964 () Bool)

(assert (=> b!4919547 m!5932964))

(declare-fun m!5932966 () Bool)

(assert (=> d!1582272 m!5932966))

(assert (=> d!1582272 m!5931742))

(declare-fun m!5932968 () Bool)

(assert (=> d!1582272 m!5932968))

(assert (=> d!1581908 d!1582272))

(declare-fun b!4919550 () Bool)

(declare-fun res!2100710 () Bool)

(declare-fun e!3074360 () Bool)

(assert (=> b!4919550 (=> (not res!2100710) (not e!3074360))))

(assert (=> b!4919550 (= res!2100710 (not (isEmpty!30551 (left!41299 (right!41629 (c!836549 (_2!33835 lt!2020059)))))))))

(declare-fun b!4919551 () Bool)

(assert (=> b!4919551 (= e!3074360 (not (isEmpty!30551 (right!41629 (right!41629 (c!836549 (_2!33835 lt!2020059)))))))))

(declare-fun b!4919552 () Bool)

(declare-fun res!2100708 () Bool)

(assert (=> b!4919552 (=> (not res!2100708) (not e!3074360))))

(assert (=> b!4919552 (= res!2100708 (<= (- (height!1978 (left!41299 (right!41629 (c!836549 (_2!33835 lt!2020059))))) (height!1978 (right!41629 (right!41629 (c!836549 (_2!33835 lt!2020059)))))) 1))))

(declare-fun d!1582274 () Bool)

(declare-fun res!2100705 () Bool)

(declare-fun e!3074361 () Bool)

(assert (=> d!1582274 (=> res!2100705 e!3074361)))

(assert (=> d!1582274 (= res!2100705 (not ((_ is Node!14854) (right!41629 (c!836549 (_2!33835 lt!2020059))))))))

(assert (=> d!1582274 (= (isBalanced!4070 (right!41629 (c!836549 (_2!33835 lt!2020059)))) e!3074361)))

(declare-fun b!4919553 () Bool)

(declare-fun res!2100707 () Bool)

(assert (=> b!4919553 (=> (not res!2100707) (not e!3074360))))

(assert (=> b!4919553 (= res!2100707 (isBalanced!4070 (right!41629 (right!41629 (c!836549 (_2!33835 lt!2020059))))))))

(declare-fun b!4919554 () Bool)

(declare-fun res!2100709 () Bool)

(assert (=> b!4919554 (=> (not res!2100709) (not e!3074360))))

(assert (=> b!4919554 (= res!2100709 (isBalanced!4070 (left!41299 (right!41629 (c!836549 (_2!33835 lt!2020059))))))))

(declare-fun b!4919555 () Bool)

(assert (=> b!4919555 (= e!3074361 e!3074360)))

(declare-fun res!2100706 () Bool)

(assert (=> b!4919555 (=> (not res!2100706) (not e!3074360))))

(assert (=> b!4919555 (= res!2100706 (<= (- 1) (- (height!1978 (left!41299 (right!41629 (c!836549 (_2!33835 lt!2020059))))) (height!1978 (right!41629 (right!41629 (c!836549 (_2!33835 lt!2020059))))))))))

(assert (= (and d!1582274 (not res!2100705)) b!4919555))

(assert (= (and b!4919555 res!2100706) b!4919552))

(assert (= (and b!4919552 res!2100708) b!4919554))

(assert (= (and b!4919554 res!2100709) b!4919553))

(assert (= (and b!4919553 res!2100707) b!4919550))

(assert (= (and b!4919550 res!2100710) b!4919551))

(declare-fun m!5932970 () Bool)

(assert (=> b!4919553 m!5932970))

(declare-fun m!5932972 () Bool)

(assert (=> b!4919550 m!5932972))

(declare-fun m!5932974 () Bool)

(assert (=> b!4919555 m!5932974))

(declare-fun m!5932976 () Bool)

(assert (=> b!4919555 m!5932976))

(declare-fun m!5932978 () Bool)

(assert (=> b!4919551 m!5932978))

(assert (=> b!4919552 m!5932974))

(assert (=> b!4919552 m!5932976))

(declare-fun m!5932980 () Bool)

(assert (=> b!4919554 m!5932980))

(assert (=> b!4919092 d!1582274))

(assert (=> b!4918615 d!1582096))

(declare-fun d!1582276 () Bool)

(declare-fun lt!2020968 () Int)

(assert (=> d!1582276 (>= lt!2020968 0)))

(declare-fun e!3074362 () Int)

(assert (=> d!1582276 (= lt!2020968 e!3074362)))

(declare-fun c!836932 () Bool)

(assert (=> d!1582276 (= c!836932 ((_ is Nil!56647) (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))))))

(assert (=> d!1582276 (= (size!37424 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))) lt!2020968)))

(declare-fun b!4919556 () Bool)

(assert (=> b!4919556 (= e!3074362 0)))

(declare-fun b!4919557 () Bool)

(assert (=> b!4919557 (= e!3074362 (+ 1 (size!37424 (t!367195 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))))))))

(assert (= (and d!1582276 c!836932) b!4919556))

(assert (= (and d!1582276 (not c!836932)) b!4919557))

(declare-fun m!5932982 () Bool)

(assert (=> b!4919557 m!5932982))

(assert (=> b!4918615 d!1582276))

(assert (=> b!4919043 d!1582238))

(declare-fun d!1582278 () Bool)

(assert (=> d!1582278 (= (slice!764 lt!2020788 lt!2020051 call!342042) (take!575 (drop!2209 lt!2020788 lt!2020051) (- call!342042 lt!2020051)))))

(declare-fun bs!1178953 () Bool)

(assert (= bs!1178953 d!1582278))

(assert (=> bs!1178953 m!5932208))

(assert (=> bs!1178953 m!5932208))

(declare-fun m!5932984 () Bool)

(assert (=> bs!1178953 m!5932984))

(assert (=> b!4919043 d!1582278))

(declare-fun d!1582280 () Bool)

(assert (=> d!1582280 (= (drop!2209 lt!2020788 lt!2020051) (slice!764 lt!2020788 lt!2020051 (size!37424 lt!2020788)))))

(declare-fun lt!2020971 () Unit!146993)

(declare-fun choose!36020 (List!56771 Int) Unit!146993)

(assert (=> d!1582280 (= lt!2020971 (choose!36020 lt!2020788 lt!2020051))))

(declare-fun e!3074365 () Bool)

(assert (=> d!1582280 e!3074365))

(declare-fun res!2100713 () Bool)

(assert (=> d!1582280 (=> (not res!2100713) (not e!3074365))))

(assert (=> d!1582280 (= res!2100713 (<= 0 lt!2020051))))

(assert (=> d!1582280 (= (dropLemma!24 lt!2020788 lt!2020051) lt!2020971)))

(declare-fun b!4919560 () Bool)

(assert (=> b!4919560 (= e!3074365 (<= lt!2020051 (size!37424 lt!2020788)))))

(assert (= (and d!1582280 res!2100713) b!4919560))

(assert (=> d!1582280 m!5932208))

(declare-fun m!5932986 () Bool)

(assert (=> d!1582280 m!5932986))

(assert (=> d!1582280 m!5932986))

(declare-fun m!5932988 () Bool)

(assert (=> d!1582280 m!5932988))

(declare-fun m!5932990 () Bool)

(assert (=> d!1582280 m!5932990))

(assert (=> b!4919560 m!5932986))

(assert (=> b!4919043 d!1582280))

(declare-fun d!1582282 () Bool)

(declare-fun lt!2020974 () IArray!29769)

(assert (=> d!1582282 (= lt!2020974 (IArray!29770 (slice!764 (list!17914 (xs!18172 (c!836549 input!5492))) lt!2020051 (csize!29939 (c!836549 input!5492)))))))

(declare-fun choose!36021 (IArray!29769 Int Int) IArray!29769)

(assert (=> d!1582282 (= lt!2020974 (choose!36021 (xs!18172 (c!836549 input!5492)) lt!2020051 (csize!29939 (c!836549 input!5492))))))

(declare-fun e!3074368 () Bool)

(assert (=> d!1582282 e!3074368))

(declare-fun res!2100716 () Bool)

(assert (=> d!1582282 (=> (not res!2100716) (not e!3074368))))

(assert (=> d!1582282 (= res!2100716 (and (<= 0 lt!2020051) (<= lt!2020051 (csize!29939 (c!836549 input!5492)))))))

(assert (=> d!1582282 (= (slice!765 (xs!18172 (c!836549 input!5492)) lt!2020051 (csize!29939 (c!836549 input!5492))) lt!2020974)))

(declare-fun b!4919563 () Bool)

(declare-fun size!37427 (IArray!29769) Int)

(assert (=> b!4919563 (= e!3074368 (<= (csize!29939 (c!836549 input!5492)) (size!37427 (xs!18172 (c!836549 input!5492)))))))

(assert (= (and d!1582282 res!2100716) b!4919563))

(assert (=> d!1582282 m!5931620))

(assert (=> d!1582282 m!5931620))

(declare-fun m!5932992 () Bool)

(assert (=> d!1582282 m!5932992))

(declare-fun m!5932994 () Bool)

(assert (=> d!1582282 m!5932994))

(declare-fun m!5932996 () Bool)

(assert (=> b!4919563 m!5932996))

(assert (=> b!4919043 d!1582282))

(declare-fun b!4919564 () Bool)

(declare-fun e!3074370 () Int)

(declare-fun e!3074372 () Int)

(assert (=> b!4919564 (= e!3074370 e!3074372)))

(declare-fun c!836933 () Bool)

(declare-fun call!342127 () Int)

(assert (=> b!4919564 (= c!836933 (>= lt!2020051 call!342127))))

(declare-fun d!1582284 () Bool)

(declare-fun e!3074371 () Bool)

(assert (=> d!1582284 e!3074371))

(declare-fun res!2100717 () Bool)

(assert (=> d!1582284 (=> (not res!2100717) (not e!3074371))))

(declare-fun lt!2020975 () List!56771)

(assert (=> d!1582284 (= res!2100717 (= ((_ map implies) (content!10051 lt!2020975) (content!10051 lt!2020788)) ((as const (InoxSet C!26920)) true)))))

(declare-fun e!3074369 () List!56771)

(assert (=> d!1582284 (= lt!2020975 e!3074369)))

(declare-fun c!836935 () Bool)

(assert (=> d!1582284 (= c!836935 ((_ is Nil!56647) lt!2020788))))

(assert (=> d!1582284 (= (drop!2209 lt!2020788 lt!2020051) lt!2020975)))

(declare-fun b!4919565 () Bool)

(declare-fun e!3074373 () List!56771)

(assert (=> b!4919565 (= e!3074373 lt!2020788)))

(declare-fun b!4919566 () Bool)

(assert (=> b!4919566 (= e!3074370 call!342127)))

(declare-fun b!4919567 () Bool)

(assert (=> b!4919567 (= e!3074371 (= (size!37424 lt!2020975) e!3074370))))

(declare-fun c!836934 () Bool)

(assert (=> b!4919567 (= c!836934 (<= lt!2020051 0))))

(declare-fun b!4919568 () Bool)

(assert (=> b!4919568 (= e!3074369 Nil!56647)))

(declare-fun b!4919569 () Bool)

(assert (=> b!4919569 (= e!3074373 (drop!2209 (t!367195 lt!2020788) (- lt!2020051 1)))))

(declare-fun b!4919570 () Bool)

(assert (=> b!4919570 (= e!3074372 0)))

(declare-fun b!4919571 () Bool)

(assert (=> b!4919571 (= e!3074372 (- call!342127 lt!2020051))))

(declare-fun b!4919572 () Bool)

(assert (=> b!4919572 (= e!3074369 e!3074373)))

(declare-fun c!836936 () Bool)

(assert (=> b!4919572 (= c!836936 (<= lt!2020051 0))))

(declare-fun bm!342122 () Bool)

(assert (=> bm!342122 (= call!342127 (size!37424 lt!2020788))))

(assert (= (and d!1582284 c!836935) b!4919568))

(assert (= (and d!1582284 (not c!836935)) b!4919572))

(assert (= (and b!4919572 c!836936) b!4919565))

(assert (= (and b!4919572 (not c!836936)) b!4919569))

(assert (= (and d!1582284 res!2100717) b!4919567))

(assert (= (and b!4919567 c!836934) b!4919566))

(assert (= (and b!4919567 (not c!836934)) b!4919564))

(assert (= (and b!4919564 c!836933) b!4919570))

(assert (= (and b!4919564 (not c!836933)) b!4919571))

(assert (= (or b!4919566 b!4919564 b!4919571) bm!342122))

(declare-fun m!5932998 () Bool)

(assert (=> d!1582284 m!5932998))

(declare-fun m!5933000 () Bool)

(assert (=> d!1582284 m!5933000))

(declare-fun m!5933002 () Bool)

(assert (=> b!4919567 m!5933002))

(declare-fun m!5933004 () Bool)

(assert (=> b!4919569 m!5933004))

(assert (=> bm!342122 m!5932986))

(assert (=> b!4919043 d!1582284))

(declare-fun d!1582286 () Bool)

(declare-fun lt!2020976 () IArray!29769)

(assert (=> d!1582286 (= lt!2020976 (IArray!29770 (slice!764 (list!17914 (xs!18172 (c!836549 input!5492))) 0 lt!2020051)))))

(assert (=> d!1582286 (= lt!2020976 (choose!36021 (xs!18172 (c!836549 input!5492)) 0 lt!2020051))))

(declare-fun e!3074374 () Bool)

(assert (=> d!1582286 e!3074374))

(declare-fun res!2100718 () Bool)

(assert (=> d!1582286 (=> (not res!2100718) (not e!3074374))))

(assert (=> d!1582286 (= res!2100718 (and (<= 0 0) (<= 0 lt!2020051)))))

(assert (=> d!1582286 (= (slice!765 (xs!18172 (c!836549 input!5492)) 0 lt!2020051) lt!2020976)))

(declare-fun b!4919573 () Bool)

(assert (=> b!4919573 (= e!3074374 (<= lt!2020051 (size!37427 (xs!18172 (c!836549 input!5492)))))))

(assert (= (and d!1582286 res!2100718) b!4919573))

(assert (=> d!1582286 m!5931620))

(assert (=> d!1582286 m!5931620))

(declare-fun m!5933006 () Bool)

(assert (=> d!1582286 m!5933006))

(declare-fun m!5933008 () Bool)

(assert (=> d!1582286 m!5933008))

(assert (=> b!4919573 m!5932996))

(assert (=> b!4919043 d!1582286))

(declare-fun bs!1178954 () Bool)

(declare-fun d!1582288 () Bool)

(assert (= bs!1178954 (and d!1582288 d!1582004)))

(declare-fun lambda!245049 () Int)

(assert (=> bs!1178954 (= (= call!341937 call!341927) (= lambda!245049 lambda!245023))))

(declare-fun bs!1178955 () Bool)

(assert (= bs!1178955 (and d!1582288 d!1582090)))

(assert (=> bs!1178955 (= (= call!341937 call!342004) (= lambda!245049 lambda!245038))))

(assert (=> d!1582288 true))

(assert (=> d!1582288 (= (derivationStepZipper!573 call!341924 call!341937) (flatMap!260 call!341924 lambda!245049))))

(declare-fun bs!1178956 () Bool)

(assert (= bs!1178956 d!1582288))

(declare-fun m!5933010 () Bool)

(assert (=> bs!1178956 m!5933010))

(assert (=> bm!341929 d!1582288))

(declare-fun d!1582290 () Bool)

(assert (not d!1582290))

(assert (=> b!4918741 d!1582290))

(declare-fun bm!342123 () Bool)

(declare-fun c!836939 () Bool)

(declare-fun c!836941 () Bool)

(assert (=> bm!342123 (= c!836939 c!836941)))

(declare-fun call!342128 () tuple2!61070)

(declare-fun e!3074376 () Int)

(declare-fun e!3074386 () List!56771)

(assert (=> bm!342123 (= call!342128 (splitAtIndex!85 e!3074386 (ite c!836941 e!3074083 e!3074376)))))

(declare-fun b!4919574 () Bool)

(declare-fun lt!2020979 () List!56771)

(declare-fun c!836944 () Bool)

(declare-fun lt!2020981 () List!56771)

(assert (=> b!4919574 (= e!3074386 (ite c!836944 lt!2020979 lt!2020981))))

(declare-fun b!4919575 () Bool)

(declare-fun e!3074382 () tuple2!61070)

(assert (=> b!4919575 (= e!3074382 (tuple2!61071 lt!2020979 lt!2020981))))

(declare-fun b!4919576 () Bool)

(declare-fun lt!2020982 () tuple2!61068)

(declare-fun call!342132 () tuple2!61068)

(assert (=> b!4919576 (= lt!2020982 call!342132)))

(declare-fun e!3074378 () tuple2!61068)

(declare-fun call!342131 () Conc!14854)

(assert (=> b!4919576 (= e!3074378 (tuple2!61069 (_1!33837 lt!2020982) call!342131))))

(declare-fun b!4919577 () Bool)

(declare-fun e!3074381 () tuple2!61068)

(assert (=> b!4919577 (= e!3074381 e!3074378)))

(declare-fun c!836942 () Bool)

(assert (=> b!4919577 (= c!836942 (< e!3074083 (size!37425 (left!41299 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492)))))))))

(declare-fun b!4919579 () Bool)

(declare-fun e!3074377 () tuple2!61068)

(assert (=> b!4919579 (= e!3074377 (tuple2!61069 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))) (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492)))))))

(declare-fun b!4919580 () Bool)

(assert (=> b!4919580 (= e!3074376 e!3074083)))

(declare-fun b!4919581 () Bool)

(declare-fun e!3074380 () tuple2!61070)

(assert (=> b!4919581 (= e!3074382 e!3074380)))

(declare-fun call!342133 () Int)

(assert (=> b!4919581 (= c!836944 (< e!3074083 call!342133))))

(declare-fun b!4919582 () Bool)

(declare-fun e!3074385 () tuple2!61068)

(declare-fun e!3074375 () tuple2!61068)

(assert (=> b!4919582 (= e!3074385 e!3074375)))

(declare-fun c!836940 () Bool)

(assert (=> b!4919582 (= c!836940 (= e!3074083 (csize!29939 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))))))))

(declare-fun b!4919583 () Bool)

(declare-fun e!3074383 () Int)

(assert (=> b!4919583 (= e!3074383 e!3074083)))

(declare-fun bm!342124 () Bool)

(declare-fun c!836937 () Bool)

(assert (=> bm!342124 (= c!836937 c!836944)))

(declare-fun call!342130 () tuple2!61070)

(assert (=> bm!342124 (= call!342130 call!342128)))

(declare-fun b!4919584 () Bool)

(declare-fun c!836945 () Bool)

(assert (=> b!4919584 (= c!836945 (= (size!37425 (left!41299 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))))) e!3074083))))

(declare-fun lt!2020978 () Unit!146993)

(declare-fun lt!2020986 () Unit!146993)

(assert (=> b!4919584 (= lt!2020978 lt!2020986)))

(assert (=> b!4919584 (= (splitAtIndex!85 (++!12302 lt!2020979 lt!2020981) e!3074083) e!3074382)))

(declare-fun c!836946 () Bool)

(assert (=> b!4919584 (= c!836946 (= call!342133 e!3074083))))

(assert (=> b!4919584 (= lt!2020986 (splitAtLemma!24 lt!2020979 lt!2020981 e!3074083))))

(assert (=> b!4919584 (= lt!2020981 (list!17913 (right!41629 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))))))))

(assert (=> b!4919584 (= lt!2020979 (list!17913 (left!41299 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))))))))

(declare-fun e!3074379 () tuple2!61068)

(assert (=> b!4919584 (= e!3074379 e!3074381)))

(declare-fun b!4919585 () Bool)

(declare-fun lt!2020977 () tuple2!61068)

(assert (=> b!4919585 (= lt!2020977 call!342132)))

(assert (=> b!4919585 (= e!3074378 (tuple2!61069 call!342131 (_2!33837 lt!2020977)))))

(declare-fun b!4919586 () Bool)

(assert (=> b!4919586 (= e!3074377 e!3074379)))

(assert (=> b!4919586 (= c!836941 ((_ is Leaf!24714) (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492)))))))

(declare-fun b!4919587 () Bool)

(assert (=> b!4919587 (= e!3074383 (- e!3074083 (size!37425 (left!41299 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492)))))))))

(declare-fun b!4919588 () Bool)

(declare-fun c!836943 () Bool)

(assert (=> b!4919588 (= c!836943 (<= e!3074083 0))))

(assert (=> b!4919588 (= e!3074379 e!3074385)))

(declare-fun b!4919589 () Bool)

(assert (=> b!4919589 (= e!3074381 (tuple2!61069 (left!41299 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492)))) (right!41629 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))))))))

(declare-fun b!4919590 () Bool)

(assert (=> b!4919590 (= e!3074376 (- e!3074083 call!342133))))

(declare-fun b!4919591 () Bool)

(declare-fun lt!2020988 () tuple2!61070)

(assert (=> b!4919591 (= lt!2020988 call!342130)))

(declare-fun call!342129 () List!56771)

(assert (=> b!4919591 (= e!3074380 (tuple2!61071 (_1!33838 lt!2020988) call!342129))))

(declare-fun b!4919592 () Bool)

(declare-fun lt!2020983 () tuple2!61070)

(assert (=> b!4919592 (= lt!2020983 call!342130)))

(assert (=> b!4919592 (= e!3074380 (tuple2!61071 call!342129 (_2!33838 lt!2020983)))))

(declare-fun b!4919593 () Bool)

(assert (=> b!4919593 (= e!3074375 (tuple2!61069 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))) Empty!14854))))

(declare-fun d!1582292 () Bool)

(declare-fun e!3074384 () Bool)

(assert (=> d!1582292 e!3074384))

(declare-fun res!2100720 () Bool)

(assert (=> d!1582292 (=> (not res!2100720) (not e!3074384))))

(declare-fun lt!2020985 () tuple2!61068)

(assert (=> d!1582292 (= res!2100720 (isBalanced!4070 (_1!33837 lt!2020985)))))

(assert (=> d!1582292 (= lt!2020985 e!3074377)))

(declare-fun c!836938 () Bool)

(assert (=> d!1582292 (= c!836938 ((_ is Empty!14854) (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492)))))))

(assert (=> d!1582292 (isBalanced!4070 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))))))

(assert (=> d!1582292 (= (splitAt!237 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))) e!3074083) lt!2020985)))

(declare-fun b!4919578 () Bool)

(assert (=> b!4919578 (= e!3074385 (tuple2!61069 Empty!14854 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492)))))))

(declare-fun lt!2020989 () List!56771)

(declare-fun bm!342125 () Bool)

(assert (=> bm!342125 (= call!342133 (size!37424 (ite c!836941 lt!2020989 lt!2020979)))))

(declare-fun b!4919594 () Bool)

(declare-fun lt!2020980 () Unit!146993)

(declare-fun lt!2020987 () Unit!146993)

(assert (=> b!4919594 (= lt!2020980 lt!2020987)))

(assert (=> b!4919594 (= (drop!2209 lt!2020989 e!3074083) (slice!764 lt!2020989 e!3074083 call!342133))))

(assert (=> b!4919594 (= lt!2020987 (dropLemma!24 lt!2020989 e!3074083))))

(assert (=> b!4919594 (= lt!2020989 (list!17914 (xs!18172 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))))))))

(declare-fun lt!2020984 () tuple2!61070)

(assert (=> b!4919594 (= lt!2020984 call!342128)))

(assert (=> b!4919594 (= e!3074375 (tuple2!61069 (Leaf!24714 (slice!765 (xs!18172 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492)))) 0 e!3074083) e!3074083) (Leaf!24714 (slice!765 (xs!18172 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492)))) e!3074083 (csize!29939 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))))) (- (csize!29939 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492)))) e!3074083))))))

(declare-fun b!4919595 () Bool)

(declare-fun res!2100719 () Bool)

(assert (=> b!4919595 (=> (not res!2100719) (not e!3074384))))

(assert (=> b!4919595 (= res!2100719 (isBalanced!4070 (_2!33837 lt!2020985)))))

(declare-fun bm!342126 () Bool)

(declare-fun c!836947 () Bool)

(assert (=> bm!342126 (= c!836947 c!836942)))

(assert (=> bm!342126 (= call!342132 (splitAt!237 (ite c!836942 (left!41299 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492)))) (right!41629 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))))) e!3074383))))

(declare-fun b!4919596 () Bool)

(assert (=> b!4919596 (= e!3074384 (= (tuple2!61071 (list!17913 (_1!33837 lt!2020985)) (list!17913 (_2!33837 lt!2020985))) (splitAtIndex!85 (list!17913 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492)))) e!3074083)))))

(declare-fun bm!342127 () Bool)

(assert (=> bm!342127 (= call!342131 (++!12304 (ite c!836942 (_2!33837 lt!2020982) (left!41299 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))))) (ite c!836942 (right!41629 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492)))) (_1!33837 lt!2020977))))))

(declare-fun bm!342128 () Bool)

(assert (=> bm!342128 (= call!342129 (++!12302 (ite c!836944 (_2!33838 lt!2020988) lt!2020979) (ite c!836944 lt!2020981 (_1!33838 lt!2020983))))))

(declare-fun b!4919597 () Bool)

(assert (=> b!4919597 (= e!3074386 (list!17914 (xs!18172 (ite c!836790 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))))))))

(assert (= (and d!1582292 c!836938) b!4919579))

(assert (= (and d!1582292 (not c!836938)) b!4919586))

(assert (= (and b!4919586 c!836941) b!4919588))

(assert (= (and b!4919586 (not c!836941)) b!4919584))

(assert (= (and b!4919588 c!836943) b!4919578))

(assert (= (and b!4919588 (not c!836943)) b!4919582))

(assert (= (and b!4919582 c!836940) b!4919593))

(assert (= (and b!4919582 (not c!836940)) b!4919594))

(assert (= (and b!4919584 c!836946) b!4919575))

(assert (= (and b!4919584 (not c!836946)) b!4919581))

(assert (= (and b!4919581 c!836944) b!4919591))

(assert (= (and b!4919581 (not c!836944)) b!4919592))

(assert (= (or b!4919591 b!4919592) bm!342128))

(assert (= (or b!4919591 b!4919592) bm!342124))

(assert (= (and bm!342124 c!836937) b!4919580))

(assert (= (and bm!342124 (not c!836937)) b!4919590))

(assert (= (and b!4919584 c!836945) b!4919589))

(assert (= (and b!4919584 (not c!836945)) b!4919577))

(assert (= (and b!4919577 c!836942) b!4919576))

(assert (= (and b!4919577 (not c!836942)) b!4919585))

(assert (= (or b!4919576 b!4919585) bm!342127))

(assert (= (or b!4919576 b!4919585) bm!342126))

(assert (= (and bm!342126 c!836947) b!4919583))

(assert (= (and bm!342126 (not c!836947)) b!4919587))

(assert (= (or b!4919594 b!4919581 b!4919584 b!4919590) bm!342125))

(assert (= (or b!4919594 bm!342124) bm!342123))

(assert (= (and bm!342123 c!836939) b!4919597))

(assert (= (and bm!342123 (not c!836939)) b!4919574))

(assert (= (and d!1582292 res!2100720) b!4919595))

(assert (= (and b!4919595 res!2100719) b!4919596))

(declare-fun m!5933012 () Bool)

(assert (=> b!4919597 m!5933012))

(declare-fun m!5933014 () Bool)

(assert (=> bm!342125 m!5933014))

(declare-fun m!5933016 () Bool)

(assert (=> bm!342123 m!5933016))

(declare-fun m!5933018 () Bool)

(assert (=> b!4919595 m!5933018))

(declare-fun m!5933020 () Bool)

(assert (=> b!4919584 m!5933020))

(declare-fun m!5933022 () Bool)

(assert (=> b!4919584 m!5933022))

(declare-fun m!5933024 () Bool)

(assert (=> b!4919584 m!5933024))

(declare-fun m!5933026 () Bool)

(assert (=> b!4919584 m!5933026))

(assert (=> b!4919584 m!5933026))

(declare-fun m!5933028 () Bool)

(assert (=> b!4919584 m!5933028))

(declare-fun m!5933030 () Bool)

(assert (=> b!4919584 m!5933030))

(declare-fun m!5933032 () Bool)

(assert (=> b!4919594 m!5933032))

(assert (=> b!4919594 m!5933012))

(declare-fun m!5933034 () Bool)

(assert (=> b!4919594 m!5933034))

(declare-fun m!5933036 () Bool)

(assert (=> b!4919594 m!5933036))

(declare-fun m!5933038 () Bool)

(assert (=> b!4919594 m!5933038))

(declare-fun m!5933040 () Bool)

(assert (=> b!4919594 m!5933040))

(declare-fun m!5933042 () Bool)

(assert (=> bm!342126 m!5933042))

(declare-fun m!5933044 () Bool)

(assert (=> bm!342127 m!5933044))

(assert (=> b!4919587 m!5933022))

(assert (=> b!4919577 m!5933022))

(declare-fun m!5933046 () Bool)

(assert (=> b!4919596 m!5933046))

(declare-fun m!5933048 () Bool)

(assert (=> b!4919596 m!5933048))

(declare-fun m!5933050 () Bool)

(assert (=> b!4919596 m!5933050))

(assert (=> b!4919596 m!5933050))

(declare-fun m!5933052 () Bool)

(assert (=> b!4919596 m!5933052))

(declare-fun m!5933054 () Bool)

(assert (=> bm!342128 m!5933054))

(declare-fun m!5933056 () Bool)

(assert (=> d!1582292 m!5933056))

(declare-fun m!5933058 () Bool)

(assert (=> d!1582292 m!5933058))

(assert (=> bm!342035 d!1582292))

(declare-fun d!1582294 () Bool)

(declare-fun c!836948 () Bool)

(assert (=> d!1582294 (= c!836948 ((_ is Node!14854) (left!41299 (right!41629 (c!836549 input!5492)))))))

(declare-fun e!3074387 () Bool)

(assert (=> d!1582294 (= (inv!73337 (left!41299 (right!41629 (c!836549 input!5492)))) e!3074387)))

(declare-fun b!4919598 () Bool)

(assert (=> b!4919598 (= e!3074387 (inv!73342 (left!41299 (right!41629 (c!836549 input!5492)))))))

(declare-fun b!4919599 () Bool)

(declare-fun e!3074388 () Bool)

(assert (=> b!4919599 (= e!3074387 e!3074388)))

(declare-fun res!2100721 () Bool)

(assert (=> b!4919599 (= res!2100721 (not ((_ is Leaf!24714) (left!41299 (right!41629 (c!836549 input!5492))))))))

(assert (=> b!4919599 (=> res!2100721 e!3074388)))

(declare-fun b!4919600 () Bool)

(assert (=> b!4919600 (= e!3074388 (inv!73343 (left!41299 (right!41629 (c!836549 input!5492)))))))

(assert (= (and d!1582294 c!836948) b!4919598))

(assert (= (and d!1582294 (not c!836948)) b!4919599))

(assert (= (and b!4919599 (not res!2100721)) b!4919600))

(declare-fun m!5933060 () Bool)

(assert (=> b!4919598 m!5933060))

(declare-fun m!5933062 () Bool)

(assert (=> b!4919600 m!5933062))

(assert (=> b!4919132 d!1582294))

(declare-fun d!1582296 () Bool)

(declare-fun c!836949 () Bool)

(assert (=> d!1582296 (= c!836949 ((_ is Node!14854) (right!41629 (right!41629 (c!836549 input!5492)))))))

(declare-fun e!3074389 () Bool)

(assert (=> d!1582296 (= (inv!73337 (right!41629 (right!41629 (c!836549 input!5492)))) e!3074389)))

(declare-fun b!4919601 () Bool)

(assert (=> b!4919601 (= e!3074389 (inv!73342 (right!41629 (right!41629 (c!836549 input!5492)))))))

(declare-fun b!4919602 () Bool)

(declare-fun e!3074390 () Bool)

(assert (=> b!4919602 (= e!3074389 e!3074390)))

(declare-fun res!2100722 () Bool)

(assert (=> b!4919602 (= res!2100722 (not ((_ is Leaf!24714) (right!41629 (right!41629 (c!836549 input!5492))))))))

(assert (=> b!4919602 (=> res!2100722 e!3074390)))

(declare-fun b!4919603 () Bool)

(assert (=> b!4919603 (= e!3074390 (inv!73343 (right!41629 (right!41629 (c!836549 input!5492)))))))

(assert (= (and d!1582296 c!836949) b!4919601))

(assert (= (and d!1582296 (not c!836949)) b!4919602))

(assert (= (and b!4919602 (not res!2100722)) b!4919603))

(declare-fun m!5933064 () Bool)

(assert (=> b!4919601 m!5933064))

(declare-fun m!5933066 () Bool)

(assert (=> b!4919603 m!5933066))

(assert (=> b!4919132 d!1582296))

(assert (=> b!4919026 d!1582110))

(assert (=> b!4919046 d!1582238))

(declare-fun d!1582298 () Bool)

(assert (=> d!1582298 (= (list!17914 (xs!18172 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))) (innerList!14942 (xs!18172 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))))))

(assert (=> b!4918554 d!1582298))

(declare-fun d!1582300 () Bool)

(assert (not d!1582300))

(assert (=> b!4918798 d!1582300))

(declare-fun d!1582302 () Bool)

(assert (=> d!1582302 (= (tail!9652 (list!17911 input!5492)) (t!367195 (list!17911 input!5492)))))

(assert (=> b!4918798 d!1582302))

(assert (=> b!4918558 d!1581814))

(declare-fun d!1582304 () Bool)

(declare-fun lt!2020990 () Int)

(assert (=> d!1582304 (>= lt!2020990 0)))

(declare-fun e!3074391 () Int)

(assert (=> d!1582304 (= lt!2020990 e!3074391)))

(declare-fun c!836950 () Bool)

(assert (=> d!1582304 (= c!836950 ((_ is Nil!56647) lt!2020536))))

(assert (=> d!1582304 (= (size!37424 lt!2020536) lt!2020990)))

(declare-fun b!4919604 () Bool)

(assert (=> b!4919604 (= e!3074391 0)))

(declare-fun b!4919605 () Bool)

(assert (=> b!4919605 (= e!3074391 (+ 1 (size!37424 (t!367195 lt!2020536))))))

(assert (= (and d!1582304 c!836950) b!4919604))

(assert (= (and d!1582304 (not c!836950)) b!4919605))

(declare-fun m!5933068 () Bool)

(assert (=> b!4919605 m!5933068))

(assert (=> b!4918796 d!1582304))

(assert (=> b!4918796 d!1581892))

(declare-fun d!1582306 () Bool)

(declare-fun lt!2020991 () Int)

(assert (=> d!1582306 (>= lt!2020991 0)))

(declare-fun e!3074392 () Int)

(assert (=> d!1582306 (= lt!2020991 e!3074392)))

(declare-fun c!836951 () Bool)

(assert (=> d!1582306 (= c!836951 ((_ is Nil!56647) lt!2020053))))

(assert (=> d!1582306 (= (size!37424 lt!2020053) lt!2020991)))

(declare-fun b!4919606 () Bool)

(assert (=> b!4919606 (= e!3074392 0)))

(declare-fun b!4919607 () Bool)

(assert (=> b!4919607 (= e!3074392 (+ 1 (size!37424 (t!367195 lt!2020053))))))

(assert (= (and d!1582306 c!836951) b!4919606))

(assert (= (and d!1582306 (not c!836951)) b!4919607))

(declare-fun m!5933070 () Bool)

(assert (=> b!4919607 m!5933070))

(assert (=> b!4918796 d!1582306))

(declare-fun b!4919608 () Bool)

(declare-fun res!2100728 () Bool)

(declare-fun e!3074393 () Bool)

(assert (=> b!4919608 (=> (not res!2100728) (not e!3074393))))

(assert (=> b!4919608 (= res!2100728 (not (isEmpty!30551 (left!41299 (right!41629 (right!41629 (c!836549 input!5492)))))))))

(declare-fun b!4919609 () Bool)

(assert (=> b!4919609 (= e!3074393 (not (isEmpty!30551 (right!41629 (right!41629 (right!41629 (c!836549 input!5492)))))))))

(declare-fun b!4919610 () Bool)

(declare-fun res!2100726 () Bool)

(assert (=> b!4919610 (=> (not res!2100726) (not e!3074393))))

(assert (=> b!4919610 (= res!2100726 (<= (- (height!1978 (left!41299 (right!41629 (right!41629 (c!836549 input!5492))))) (height!1978 (right!41629 (right!41629 (right!41629 (c!836549 input!5492)))))) 1))))

(declare-fun d!1582308 () Bool)

(declare-fun res!2100723 () Bool)

(declare-fun e!3074394 () Bool)

(assert (=> d!1582308 (=> res!2100723 e!3074394)))

(assert (=> d!1582308 (= res!2100723 (not ((_ is Node!14854) (right!41629 (right!41629 (c!836549 input!5492))))))))

(assert (=> d!1582308 (= (isBalanced!4070 (right!41629 (right!41629 (c!836549 input!5492)))) e!3074394)))

(declare-fun b!4919611 () Bool)

(declare-fun res!2100725 () Bool)

(assert (=> b!4919611 (=> (not res!2100725) (not e!3074393))))

(assert (=> b!4919611 (= res!2100725 (isBalanced!4070 (right!41629 (right!41629 (right!41629 (c!836549 input!5492))))))))

(declare-fun b!4919612 () Bool)

(declare-fun res!2100727 () Bool)

(assert (=> b!4919612 (=> (not res!2100727) (not e!3074393))))

(assert (=> b!4919612 (= res!2100727 (isBalanced!4070 (left!41299 (right!41629 (right!41629 (c!836549 input!5492))))))))

(declare-fun b!4919613 () Bool)

(assert (=> b!4919613 (= e!3074394 e!3074393)))

(declare-fun res!2100724 () Bool)

(assert (=> b!4919613 (=> (not res!2100724) (not e!3074393))))

(assert (=> b!4919613 (= res!2100724 (<= (- 1) (- (height!1978 (left!41299 (right!41629 (right!41629 (c!836549 input!5492))))) (height!1978 (right!41629 (right!41629 (right!41629 (c!836549 input!5492))))))))))

(assert (= (and d!1582308 (not res!2100723)) b!4919613))

(assert (= (and b!4919613 res!2100724) b!4919610))

(assert (= (and b!4919610 res!2100726) b!4919612))

(assert (= (and b!4919612 res!2100727) b!4919611))

(assert (= (and b!4919611 res!2100725) b!4919608))

(assert (= (and b!4919608 res!2100728) b!4919609))

(declare-fun m!5933072 () Bool)

(assert (=> b!4919611 m!5933072))

(declare-fun m!5933074 () Bool)

(assert (=> b!4919608 m!5933074))

(declare-fun m!5933076 () Bool)

(assert (=> b!4919613 m!5933076))

(declare-fun m!5933078 () Bool)

(assert (=> b!4919613 m!5933078))

(declare-fun m!5933080 () Bool)

(assert (=> b!4919609 m!5933080))

(assert (=> b!4919610 m!5933076))

(assert (=> b!4919610 m!5933078))

(declare-fun m!5933082 () Bool)

(assert (=> b!4919612 m!5933082))

(assert (=> b!4919054 d!1582308))

(declare-fun d!1582310 () Bool)

(declare-fun lt!2020992 () Int)

(assert (=> d!1582310 (>= lt!2020992 0)))

(declare-fun e!3074395 () Int)

(assert (=> d!1582310 (= lt!2020992 e!3074395)))

(declare-fun c!836952 () Bool)

(assert (=> d!1582310 (= c!836952 ((_ is Nil!56647) (t!367195 (list!17911 input!5492))))))

(assert (=> d!1582310 (= (size!37424 (t!367195 (list!17911 input!5492))) lt!2020992)))

(declare-fun b!4919614 () Bool)

(assert (=> b!4919614 (= e!3074395 0)))

(declare-fun b!4919615 () Bool)

(assert (=> b!4919615 (= e!3074395 (+ 1 (size!37424 (t!367195 (t!367195 (list!17911 input!5492))))))))

(assert (= (and d!1582310 c!836952) b!4919614))

(assert (= (and d!1582310 (not c!836952)) b!4919615))

(declare-fun m!5933084 () Bool)

(assert (=> b!4919615 m!5933084))

(assert (=> b!4918931 d!1582310))

(declare-fun b!4919616 () Bool)

(declare-fun e!3074398 () Bool)

(declare-fun e!3074397 () Bool)

(assert (=> b!4919616 (= e!3074398 e!3074397)))

(declare-fun res!2100732 () Bool)

(assert (=> b!4919616 (=> (not res!2100732) (not e!3074397))))

(assert (=> b!4919616 (= res!2100732 (not ((_ is Nil!56647) (tail!9652 (ite c!836592 lt!2020301 lt!2020313)))))))

(declare-fun b!4919618 () Bool)

(assert (=> b!4919618 (= e!3074397 (isPrefix!4945 (tail!9652 (tail!9652 (ite c!836592 lt!2020299 lt!2020303))) (tail!9652 (tail!9652 (ite c!836592 lt!2020301 lt!2020313)))))))

(declare-fun b!4919619 () Bool)

(declare-fun e!3074396 () Bool)

(assert (=> b!4919619 (= e!3074396 (>= (size!37424 (tail!9652 (ite c!836592 lt!2020301 lt!2020313))) (size!37424 (tail!9652 (ite c!836592 lt!2020299 lt!2020303)))))))

(declare-fun d!1582312 () Bool)

(assert (=> d!1582312 e!3074396))

(declare-fun res!2100731 () Bool)

(assert (=> d!1582312 (=> res!2100731 e!3074396)))

(declare-fun lt!2020993 () Bool)

(assert (=> d!1582312 (= res!2100731 (not lt!2020993))))

(assert (=> d!1582312 (= lt!2020993 e!3074398)))

(declare-fun res!2100730 () Bool)

(assert (=> d!1582312 (=> res!2100730 e!3074398)))

(assert (=> d!1582312 (= res!2100730 ((_ is Nil!56647) (tail!9652 (ite c!836592 lt!2020299 lt!2020303))))))

(assert (=> d!1582312 (= (isPrefix!4945 (tail!9652 (ite c!836592 lt!2020299 lt!2020303)) (tail!9652 (ite c!836592 lt!2020301 lt!2020313))) lt!2020993)))

(declare-fun b!4919617 () Bool)

(declare-fun res!2100729 () Bool)

(assert (=> b!4919617 (=> (not res!2100729) (not e!3074397))))

(assert (=> b!4919617 (= res!2100729 (= (head!10505 (tail!9652 (ite c!836592 lt!2020299 lt!2020303))) (head!10505 (tail!9652 (ite c!836592 lt!2020301 lt!2020313)))))))

(assert (= (and d!1582312 (not res!2100730)) b!4919616))

(assert (= (and b!4919616 res!2100732) b!4919617))

(assert (= (and b!4919617 res!2100729) b!4919618))

(assert (= (and d!1582312 (not res!2100731)) b!4919619))

(assert (=> b!4919618 m!5932254))

(declare-fun m!5933086 () Bool)

(assert (=> b!4919618 m!5933086))

(assert (=> b!4919618 m!5932256))

(declare-fun m!5933088 () Bool)

(assert (=> b!4919618 m!5933088))

(assert (=> b!4919618 m!5933086))

(assert (=> b!4919618 m!5933088))

(declare-fun m!5933090 () Bool)

(assert (=> b!4919618 m!5933090))

(assert (=> b!4919619 m!5932256))

(declare-fun m!5933092 () Bool)

(assert (=> b!4919619 m!5933092))

(assert (=> b!4919619 m!5932254))

(declare-fun m!5933094 () Bool)

(assert (=> b!4919619 m!5933094))

(assert (=> b!4919617 m!5932254))

(declare-fun m!5933096 () Bool)

(assert (=> b!4919617 m!5933096))

(assert (=> b!4919617 m!5932256))

(declare-fun m!5933098 () Bool)

(assert (=> b!4919617 m!5933098))

(assert (=> b!4919067 d!1582312))

(declare-fun d!1582314 () Bool)

(assert (=> d!1582314 (= (tail!9652 (ite c!836592 lt!2020299 lt!2020303)) (t!367195 (ite c!836592 lt!2020299 lt!2020303)))))

(assert (=> b!4919067 d!1582314))

(declare-fun d!1582316 () Bool)

(assert (=> d!1582316 (= (tail!9652 (ite c!836592 lt!2020301 lt!2020313)) (t!367195 (ite c!836592 lt!2020301 lt!2020313)))))

(assert (=> b!4919067 d!1582316))

(declare-fun b!4919620 () Bool)

(declare-fun res!2100738 () Bool)

(declare-fun e!3074399 () Bool)

(assert (=> b!4919620 (=> (not res!2100738) (not e!3074399))))

(assert (=> b!4919620 (= res!2100738 (not (isEmpty!30551 (left!41299 (c!836549 (_1!33835 lt!2020445))))))))

(declare-fun b!4919621 () Bool)

(assert (=> b!4919621 (= e!3074399 (not (isEmpty!30551 (right!41629 (c!836549 (_1!33835 lt!2020445))))))))

(declare-fun b!4919622 () Bool)

(declare-fun res!2100736 () Bool)

(assert (=> b!4919622 (=> (not res!2100736) (not e!3074399))))

(assert (=> b!4919622 (= res!2100736 (<= (- (height!1978 (left!41299 (c!836549 (_1!33835 lt!2020445)))) (height!1978 (right!41629 (c!836549 (_1!33835 lt!2020445))))) 1))))

(declare-fun d!1582318 () Bool)

(declare-fun res!2100733 () Bool)

(declare-fun e!3074400 () Bool)

(assert (=> d!1582318 (=> res!2100733 e!3074400)))

(assert (=> d!1582318 (= res!2100733 (not ((_ is Node!14854) (c!836549 (_1!33835 lt!2020445)))))))

(assert (=> d!1582318 (= (isBalanced!4070 (c!836549 (_1!33835 lt!2020445))) e!3074400)))

(declare-fun b!4919623 () Bool)

(declare-fun res!2100735 () Bool)

(assert (=> b!4919623 (=> (not res!2100735) (not e!3074399))))

(assert (=> b!4919623 (= res!2100735 (isBalanced!4070 (right!41629 (c!836549 (_1!33835 lt!2020445)))))))

(declare-fun b!4919624 () Bool)

(declare-fun res!2100737 () Bool)

(assert (=> b!4919624 (=> (not res!2100737) (not e!3074399))))

(assert (=> b!4919624 (= res!2100737 (isBalanced!4070 (left!41299 (c!836549 (_1!33835 lt!2020445)))))))

(declare-fun b!4919625 () Bool)

(assert (=> b!4919625 (= e!3074400 e!3074399)))

(declare-fun res!2100734 () Bool)

(assert (=> b!4919625 (=> (not res!2100734) (not e!3074399))))

(assert (=> b!4919625 (= res!2100734 (<= (- 1) (- (height!1978 (left!41299 (c!836549 (_1!33835 lt!2020445)))) (height!1978 (right!41629 (c!836549 (_1!33835 lt!2020445)))))))))

(assert (= (and d!1582318 (not res!2100733)) b!4919625))

(assert (= (and b!4919625 res!2100734) b!4919622))

(assert (= (and b!4919622 res!2100736) b!4919624))

(assert (= (and b!4919624 res!2100737) b!4919623))

(assert (= (and b!4919623 res!2100735) b!4919620))

(assert (= (and b!4919620 res!2100738) b!4919621))

(declare-fun m!5933100 () Bool)

(assert (=> b!4919623 m!5933100))

(declare-fun m!5933102 () Bool)

(assert (=> b!4919620 m!5933102))

(declare-fun m!5933104 () Bool)

(assert (=> b!4919625 m!5933104))

(declare-fun m!5933106 () Bool)

(assert (=> b!4919625 m!5933106))

(declare-fun m!5933108 () Bool)

(assert (=> b!4919621 m!5933108))

(assert (=> b!4919622 m!5933104))

(assert (=> b!4919622 m!5933106))

(declare-fun m!5933110 () Bool)

(assert (=> b!4919624 m!5933110))

(assert (=> d!1581878 d!1582318))

(declare-fun bm!342129 () Bool)

(declare-fun c!836955 () Bool)

(declare-fun c!836957 () Bool)

(assert (=> bm!342129 (= c!836955 c!836957)))

(declare-fun e!3074402 () Int)

(declare-fun e!3074412 () List!56771)

(declare-fun call!342134 () tuple2!61070)

(assert (=> bm!342129 (= call!342134 (splitAtIndex!85 e!3074412 (ite c!836957 0 e!3074402)))))

(declare-fun c!836960 () Bool)

(declare-fun lt!2020996 () List!56771)

(declare-fun lt!2020998 () List!56771)

(declare-fun b!4919626 () Bool)

(assert (=> b!4919626 (= e!3074412 (ite c!836960 lt!2020996 lt!2020998))))

(declare-fun b!4919627 () Bool)

(declare-fun e!3074408 () tuple2!61070)

(assert (=> b!4919627 (= e!3074408 (tuple2!61071 lt!2020996 lt!2020998))))

(declare-fun b!4919628 () Bool)

(declare-fun lt!2020999 () tuple2!61068)

(declare-fun call!342138 () tuple2!61068)

(assert (=> b!4919628 (= lt!2020999 call!342138)))

(declare-fun e!3074404 () tuple2!61068)

(declare-fun call!342137 () Conc!14854)

(assert (=> b!4919628 (= e!3074404 (tuple2!61069 (_1!33837 lt!2020999) call!342137))))

(declare-fun b!4919629 () Bool)

(declare-fun e!3074407 () tuple2!61068)

(assert (=> b!4919629 (= e!3074407 e!3074404)))

(declare-fun c!836958 () Bool)

(assert (=> b!4919629 (= c!836958 (< 0 (size!37425 (left!41299 (c!836549 input!5492)))))))

(declare-fun b!4919631 () Bool)

(declare-fun e!3074403 () tuple2!61068)

(assert (=> b!4919631 (= e!3074403 (tuple2!61069 (c!836549 input!5492) (c!836549 input!5492)))))

(declare-fun b!4919632 () Bool)

(assert (=> b!4919632 (= e!3074402 0)))

(declare-fun b!4919633 () Bool)

(declare-fun e!3074406 () tuple2!61070)

(assert (=> b!4919633 (= e!3074408 e!3074406)))

(declare-fun call!342139 () Int)

(assert (=> b!4919633 (= c!836960 (< 0 call!342139))))

(declare-fun b!4919634 () Bool)

(declare-fun e!3074411 () tuple2!61068)

(declare-fun e!3074401 () tuple2!61068)

(assert (=> b!4919634 (= e!3074411 e!3074401)))

(declare-fun c!836956 () Bool)

(assert (=> b!4919634 (= c!836956 (= 0 (csize!29939 (c!836549 input!5492))))))

(declare-fun b!4919635 () Bool)

(declare-fun e!3074409 () Int)

(assert (=> b!4919635 (= e!3074409 0)))

(declare-fun bm!342130 () Bool)

(declare-fun c!836953 () Bool)

(assert (=> bm!342130 (= c!836953 c!836960)))

(declare-fun call!342136 () tuple2!61070)

(assert (=> bm!342130 (= call!342136 call!342134)))

(declare-fun b!4919636 () Bool)

(declare-fun c!836961 () Bool)

(assert (=> b!4919636 (= c!836961 (= (size!37425 (left!41299 (c!836549 input!5492))) 0))))

(declare-fun lt!2020995 () Unit!146993)

(declare-fun lt!2021003 () Unit!146993)

(assert (=> b!4919636 (= lt!2020995 lt!2021003)))

(assert (=> b!4919636 (= (splitAtIndex!85 (++!12302 lt!2020996 lt!2020998) 0) e!3074408)))

(declare-fun c!836962 () Bool)

(assert (=> b!4919636 (= c!836962 (= call!342139 0))))

(assert (=> b!4919636 (= lt!2021003 (splitAtLemma!24 lt!2020996 lt!2020998 0))))

(assert (=> b!4919636 (= lt!2020998 (list!17913 (right!41629 (c!836549 input!5492))))))

(assert (=> b!4919636 (= lt!2020996 (list!17913 (left!41299 (c!836549 input!5492))))))

(declare-fun e!3074405 () tuple2!61068)

(assert (=> b!4919636 (= e!3074405 e!3074407)))

(declare-fun b!4919637 () Bool)

(declare-fun lt!2020994 () tuple2!61068)

(assert (=> b!4919637 (= lt!2020994 call!342138)))

(assert (=> b!4919637 (= e!3074404 (tuple2!61069 call!342137 (_2!33837 lt!2020994)))))

(declare-fun b!4919638 () Bool)

(assert (=> b!4919638 (= e!3074403 e!3074405)))

(assert (=> b!4919638 (= c!836957 ((_ is Leaf!24714) (c!836549 input!5492)))))

(declare-fun b!4919639 () Bool)

(assert (=> b!4919639 (= e!3074409 (- 0 (size!37425 (left!41299 (c!836549 input!5492)))))))

(declare-fun b!4919640 () Bool)

(declare-fun c!836959 () Bool)

(assert (=> b!4919640 (= c!836959 (<= 0 0))))

(assert (=> b!4919640 (= e!3074405 e!3074411)))

(declare-fun b!4919641 () Bool)

(assert (=> b!4919641 (= e!3074407 (tuple2!61069 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))))))

(declare-fun b!4919642 () Bool)

(assert (=> b!4919642 (= e!3074402 (- 0 call!342139))))

(declare-fun b!4919643 () Bool)

(declare-fun lt!2021005 () tuple2!61070)

(assert (=> b!4919643 (= lt!2021005 call!342136)))

(declare-fun call!342135 () List!56771)

(assert (=> b!4919643 (= e!3074406 (tuple2!61071 (_1!33838 lt!2021005) call!342135))))

(declare-fun b!4919644 () Bool)

(declare-fun lt!2021000 () tuple2!61070)

(assert (=> b!4919644 (= lt!2021000 call!342136)))

(assert (=> b!4919644 (= e!3074406 (tuple2!61071 call!342135 (_2!33838 lt!2021000)))))

(declare-fun b!4919645 () Bool)

(assert (=> b!4919645 (= e!3074401 (tuple2!61069 (c!836549 input!5492) Empty!14854))))

(declare-fun d!1582320 () Bool)

(declare-fun e!3074410 () Bool)

(assert (=> d!1582320 e!3074410))

(declare-fun res!2100740 () Bool)

(assert (=> d!1582320 (=> (not res!2100740) (not e!3074410))))

(declare-fun lt!2021002 () tuple2!61068)

(assert (=> d!1582320 (= res!2100740 (isBalanced!4070 (_1!33837 lt!2021002)))))

(assert (=> d!1582320 (= lt!2021002 e!3074403)))

(declare-fun c!836954 () Bool)

(assert (=> d!1582320 (= c!836954 ((_ is Empty!14854) (c!836549 input!5492)))))

(assert (=> d!1582320 (isBalanced!4070 (c!836549 input!5492))))

(assert (=> d!1582320 (= (splitAt!237 (c!836549 input!5492) 0) lt!2021002)))

(declare-fun b!4919630 () Bool)

(assert (=> b!4919630 (= e!3074411 (tuple2!61069 Empty!14854 (c!836549 input!5492)))))

(declare-fun lt!2021006 () List!56771)

(declare-fun bm!342131 () Bool)

(assert (=> bm!342131 (= call!342139 (size!37424 (ite c!836957 lt!2021006 lt!2020996)))))

(declare-fun b!4919646 () Bool)

(declare-fun lt!2020997 () Unit!146993)

(declare-fun lt!2021004 () Unit!146993)

(assert (=> b!4919646 (= lt!2020997 lt!2021004)))

(assert (=> b!4919646 (= (drop!2209 lt!2021006 0) (slice!764 lt!2021006 0 call!342139))))

(assert (=> b!4919646 (= lt!2021004 (dropLemma!24 lt!2021006 0))))

(assert (=> b!4919646 (= lt!2021006 (list!17914 (xs!18172 (c!836549 input!5492))))))

(declare-fun lt!2021001 () tuple2!61070)

(assert (=> b!4919646 (= lt!2021001 call!342134)))

(assert (=> b!4919646 (= e!3074401 (tuple2!61069 (Leaf!24714 (slice!765 (xs!18172 (c!836549 input!5492)) 0 0) 0) (Leaf!24714 (slice!765 (xs!18172 (c!836549 input!5492)) 0 (csize!29939 (c!836549 input!5492))) (- (csize!29939 (c!836549 input!5492)) 0))))))

(declare-fun b!4919647 () Bool)

(declare-fun res!2100739 () Bool)

(assert (=> b!4919647 (=> (not res!2100739) (not e!3074410))))

(assert (=> b!4919647 (= res!2100739 (isBalanced!4070 (_2!33837 lt!2021002)))))

(declare-fun bm!342132 () Bool)

(declare-fun c!836963 () Bool)

(assert (=> bm!342132 (= c!836963 c!836958)))

(assert (=> bm!342132 (= call!342138 (splitAt!237 (ite c!836958 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))) e!3074409))))

(declare-fun b!4919648 () Bool)

(assert (=> b!4919648 (= e!3074410 (= (tuple2!61071 (list!17913 (_1!33837 lt!2021002)) (list!17913 (_2!33837 lt!2021002))) (splitAtIndex!85 (list!17913 (c!836549 input!5492)) 0)))))

(declare-fun bm!342133 () Bool)

(assert (=> bm!342133 (= call!342137 (++!12304 (ite c!836958 (_2!33837 lt!2020999) (left!41299 (c!836549 input!5492))) (ite c!836958 (right!41629 (c!836549 input!5492)) (_1!33837 lt!2020994))))))

(declare-fun bm!342134 () Bool)

(assert (=> bm!342134 (= call!342135 (++!12302 (ite c!836960 (_2!33838 lt!2021005) lt!2020996) (ite c!836960 lt!2020998 (_1!33838 lt!2021000))))))

(declare-fun b!4919649 () Bool)

(assert (=> b!4919649 (= e!3074412 (list!17914 (xs!18172 (c!836549 input!5492))))))

(assert (= (and d!1582320 c!836954) b!4919631))

(assert (= (and d!1582320 (not c!836954)) b!4919638))

(assert (= (and b!4919638 c!836957) b!4919640))

(assert (= (and b!4919638 (not c!836957)) b!4919636))

(assert (= (and b!4919640 c!836959) b!4919630))

(assert (= (and b!4919640 (not c!836959)) b!4919634))

(assert (= (and b!4919634 c!836956) b!4919645))

(assert (= (and b!4919634 (not c!836956)) b!4919646))

(assert (= (and b!4919636 c!836962) b!4919627))

(assert (= (and b!4919636 (not c!836962)) b!4919633))

(assert (= (and b!4919633 c!836960) b!4919643))

(assert (= (and b!4919633 (not c!836960)) b!4919644))

(assert (= (or b!4919643 b!4919644) bm!342134))

(assert (= (or b!4919643 b!4919644) bm!342130))

(assert (= (and bm!342130 c!836953) b!4919632))

(assert (= (and bm!342130 (not c!836953)) b!4919642))

(assert (= (and b!4919636 c!836961) b!4919641))

(assert (= (and b!4919636 (not c!836961)) b!4919629))

(assert (= (and b!4919629 c!836958) b!4919628))

(assert (= (and b!4919629 (not c!836958)) b!4919637))

(assert (= (or b!4919628 b!4919637) bm!342133))

(assert (= (or b!4919628 b!4919637) bm!342132))

(assert (= (and bm!342132 c!836963) b!4919635))

(assert (= (and bm!342132 (not c!836963)) b!4919639))

(assert (= (or b!4919646 b!4919633 b!4919636 b!4919642) bm!342131))

(assert (= (or b!4919646 bm!342130) bm!342129))

(assert (= (and bm!342129 c!836955) b!4919649))

(assert (= (and bm!342129 (not c!836955)) b!4919626))

(assert (= (and d!1582320 res!2100740) b!4919647))

(assert (= (and b!4919647 res!2100739) b!4919648))

(assert (=> b!4919649 m!5931620))

(declare-fun m!5933112 () Bool)

(assert (=> bm!342131 m!5933112))

(declare-fun m!5933114 () Bool)

(assert (=> bm!342129 m!5933114))

(declare-fun m!5933116 () Bool)

(assert (=> b!4919647 m!5933116))

(assert (=> b!4919636 m!5931612))

(assert (=> b!4919636 m!5931616))

(declare-fun m!5933118 () Bool)

(assert (=> b!4919636 m!5933118))

(declare-fun m!5933120 () Bool)

(assert (=> b!4919636 m!5933120))

(assert (=> b!4919636 m!5933120))

(declare-fun m!5933122 () Bool)

(assert (=> b!4919636 m!5933122))

(assert (=> b!4919636 m!5931930))

(declare-fun m!5933124 () Bool)

(assert (=> b!4919646 m!5933124))

(assert (=> b!4919646 m!5931620))

(declare-fun m!5933126 () Bool)

(assert (=> b!4919646 m!5933126))

(declare-fun m!5933128 () Bool)

(assert (=> b!4919646 m!5933128))

(declare-fun m!5933130 () Bool)

(assert (=> b!4919646 m!5933130))

(declare-fun m!5933132 () Bool)

(assert (=> b!4919646 m!5933132))

(declare-fun m!5933134 () Bool)

(assert (=> bm!342132 m!5933134))

(declare-fun m!5933136 () Bool)

(assert (=> bm!342133 m!5933136))

(assert (=> b!4919639 m!5931616))

(assert (=> b!4919629 m!5931616))

(declare-fun m!5933138 () Bool)

(assert (=> b!4919648 m!5933138))

(declare-fun m!5933140 () Bool)

(assert (=> b!4919648 m!5933140))

(assert (=> b!4919648 m!5931498))

(assert (=> b!4919648 m!5931498))

(declare-fun m!5933142 () Bool)

(assert (=> b!4919648 m!5933142))

(declare-fun m!5933144 () Bool)

(assert (=> bm!342134 m!5933144))

(declare-fun m!5933146 () Bool)

(assert (=> d!1582320 m!5933146))

(assert (=> d!1582320 m!5931278))

(assert (=> d!1581878 d!1582320))

(assert (=> d!1581878 d!1581796))

(declare-fun b!4919650 () Bool)

(declare-fun res!2100746 () Bool)

(declare-fun e!3074413 () Bool)

(assert (=> b!4919650 (=> (not res!2100746) (not e!3074413))))

(assert (=> b!4919650 (= res!2100746 (not (isEmpty!30551 (left!41299 (right!41629 (c!836549 (_1!33835 lt!2020059)))))))))

(declare-fun b!4919651 () Bool)

(assert (=> b!4919651 (= e!3074413 (not (isEmpty!30551 (right!41629 (right!41629 (c!836549 (_1!33835 lt!2020059)))))))))

(declare-fun b!4919652 () Bool)

(declare-fun res!2100744 () Bool)

(assert (=> b!4919652 (=> (not res!2100744) (not e!3074413))))

(assert (=> b!4919652 (= res!2100744 (<= (- (height!1978 (left!41299 (right!41629 (c!836549 (_1!33835 lt!2020059))))) (height!1978 (right!41629 (right!41629 (c!836549 (_1!33835 lt!2020059)))))) 1))))

(declare-fun d!1582322 () Bool)

(declare-fun res!2100741 () Bool)

(declare-fun e!3074414 () Bool)

(assert (=> d!1582322 (=> res!2100741 e!3074414)))

(assert (=> d!1582322 (= res!2100741 (not ((_ is Node!14854) (right!41629 (c!836549 (_1!33835 lt!2020059))))))))

(assert (=> d!1582322 (= (isBalanced!4070 (right!41629 (c!836549 (_1!33835 lt!2020059)))) e!3074414)))

(declare-fun b!4919653 () Bool)

(declare-fun res!2100743 () Bool)

(assert (=> b!4919653 (=> (not res!2100743) (not e!3074413))))

(assert (=> b!4919653 (= res!2100743 (isBalanced!4070 (right!41629 (right!41629 (c!836549 (_1!33835 lt!2020059))))))))

(declare-fun b!4919654 () Bool)

(declare-fun res!2100745 () Bool)

(assert (=> b!4919654 (=> (not res!2100745) (not e!3074413))))

(assert (=> b!4919654 (= res!2100745 (isBalanced!4070 (left!41299 (right!41629 (c!836549 (_1!33835 lt!2020059))))))))

(declare-fun b!4919655 () Bool)

(assert (=> b!4919655 (= e!3074414 e!3074413)))

(declare-fun res!2100742 () Bool)

(assert (=> b!4919655 (=> (not res!2100742) (not e!3074413))))

(assert (=> b!4919655 (= res!2100742 (<= (- 1) (- (height!1978 (left!41299 (right!41629 (c!836549 (_1!33835 lt!2020059))))) (height!1978 (right!41629 (right!41629 (c!836549 (_1!33835 lt!2020059))))))))))

(assert (= (and d!1582322 (not res!2100741)) b!4919655))

(assert (= (and b!4919655 res!2100742) b!4919652))

(assert (= (and b!4919652 res!2100744) b!4919654))

(assert (= (and b!4919654 res!2100745) b!4919653))

(assert (= (and b!4919653 res!2100743) b!4919650))

(assert (= (and b!4919650 res!2100746) b!4919651))

(declare-fun m!5933148 () Bool)

(assert (=> b!4919653 m!5933148))

(declare-fun m!5933150 () Bool)

(assert (=> b!4919650 m!5933150))

(declare-fun m!5933152 () Bool)

(assert (=> b!4919655 m!5933152))

(declare-fun m!5933154 () Bool)

(assert (=> b!4919655 m!5933154))

(declare-fun m!5933156 () Bool)

(assert (=> b!4919651 m!5933156))

(assert (=> b!4919652 m!5933152))

(assert (=> b!4919652 m!5933154))

(declare-fun m!5933158 () Bool)

(assert (=> b!4919654 m!5933158))

(assert (=> b!4918948 d!1582322))

(declare-fun d!1582324 () Bool)

(assert (=> d!1582324 (= (max!0 (height!1978 (left!41299 (c!836549 input!5492))) (height!1978 (right!41629 (c!836549 input!5492)))) (ite (< (height!1978 (left!41299 (c!836549 input!5492))) (height!1978 (right!41629 (c!836549 input!5492)))) (height!1978 (right!41629 (c!836549 input!5492))) (height!1978 (left!41299 (c!836549 input!5492)))))))

(assert (=> b!4918943 d!1582324))

(assert (=> b!4918943 d!1581938))

(assert (=> b!4918943 d!1581942))

(declare-fun b!4919656 () Bool)

(declare-fun e!3074417 () Bool)

(declare-fun e!3074416 () Bool)

(assert (=> b!4919656 (= e!3074417 e!3074416)))

(declare-fun res!2100750 () Bool)

(assert (=> b!4919656 (=> (not res!2100750) (not e!3074416))))

(assert (=> b!4919656 (= res!2100750 (not ((_ is Nil!56647) (ite c!836598 lt!2020346 lt!2020358))))))

(declare-fun b!4919658 () Bool)

(assert (=> b!4919658 (= e!3074416 (isPrefix!4945 (tail!9652 (ite c!836598 lt!2020344 lt!2020348)) (tail!9652 (ite c!836598 lt!2020346 lt!2020358))))))

(declare-fun b!4919659 () Bool)

(declare-fun e!3074415 () Bool)

(assert (=> b!4919659 (= e!3074415 (>= (size!37424 (ite c!836598 lt!2020346 lt!2020358)) (size!37424 (ite c!836598 lt!2020344 lt!2020348))))))

(declare-fun d!1582326 () Bool)

(assert (=> d!1582326 e!3074415))

(declare-fun res!2100749 () Bool)

(assert (=> d!1582326 (=> res!2100749 e!3074415)))

(declare-fun lt!2021007 () Bool)

(assert (=> d!1582326 (= res!2100749 (not lt!2021007))))

(assert (=> d!1582326 (= lt!2021007 e!3074417)))

(declare-fun res!2100748 () Bool)

(assert (=> d!1582326 (=> res!2100748 e!3074417)))

(assert (=> d!1582326 (= res!2100748 ((_ is Nil!56647) (ite c!836598 lt!2020344 lt!2020348)))))

(assert (=> d!1582326 (= (isPrefix!4945 (ite c!836598 lt!2020344 lt!2020348) (ite c!836598 lt!2020346 lt!2020358)) lt!2021007)))

(declare-fun b!4919657 () Bool)

(declare-fun res!2100747 () Bool)

(assert (=> b!4919657 (=> (not res!2100747) (not e!3074416))))

(assert (=> b!4919657 (= res!2100747 (= (head!10505 (ite c!836598 lt!2020344 lt!2020348)) (head!10505 (ite c!836598 lt!2020346 lt!2020358))))))

(assert (= (and d!1582326 (not res!2100748)) b!4919656))

(assert (= (and b!4919656 res!2100750) b!4919657))

(assert (= (and b!4919657 res!2100747) b!4919658))

(assert (= (and d!1582326 (not res!2100749)) b!4919659))

(declare-fun m!5933160 () Bool)

(assert (=> b!4919658 m!5933160))

(declare-fun m!5933162 () Bool)

(assert (=> b!4919658 m!5933162))

(assert (=> b!4919658 m!5933160))

(assert (=> b!4919658 m!5933162))

(declare-fun m!5933164 () Bool)

(assert (=> b!4919658 m!5933164))

(declare-fun m!5933166 () Bool)

(assert (=> b!4919659 m!5933166))

(declare-fun m!5933168 () Bool)

(assert (=> b!4919659 m!5933168))

(declare-fun m!5933170 () Bool)

(assert (=> b!4919657 m!5933170))

(declare-fun m!5933172 () Bool)

(assert (=> b!4919657 m!5933172))

(assert (=> bm!341932 d!1582326))

(declare-fun d!1582328 () Bool)

(assert (=> d!1582328 (isPrefix!4945 (list!17911 input!5492) (list!17911 input!5492))))

(declare-fun lt!2021008 () Unit!146993)

(assert (=> d!1582328 (= lt!2021008 (choose!36004 (list!17911 input!5492) (list!17911 input!5492)))))

(assert (=> d!1582328 (= (lemmaIsPrefixRefl!3342 (list!17911 input!5492) (list!17911 input!5492)) lt!2021008)))

(declare-fun bs!1178957 () Bool)

(assert (= bs!1178957 d!1582328))

(assert (=> bs!1178957 m!5931280))

(assert (=> bs!1178957 m!5931280))

(assert (=> bs!1178957 m!5932138))

(assert (=> bs!1178957 m!5931280))

(assert (=> bs!1178957 m!5931280))

(declare-fun m!5933174 () Bool)

(assert (=> bs!1178957 m!5933174))

(assert (=> bm!341994 d!1582328))

(assert (=> b!4919033 d!1582086))

(declare-fun e!3074418 () Bool)

(declare-fun b!4919661 () Bool)

(declare-fun lt!2021010 () tuple2!61070)

(assert (=> b!4919661 (= e!3074418 (= (_2!33838 lt!2021010) (drop!2209 (++!12302 lt!2020778 lt!2020780) lt!2020051)))))

(declare-fun b!4919662 () Bool)

(declare-fun res!2100752 () Bool)

(assert (=> b!4919662 (=> (not res!2100752) (not e!3074418))))

(assert (=> b!4919662 (= res!2100752 (= (_1!33838 lt!2021010) (take!575 (++!12302 lt!2020778 lt!2020780) lt!2020051)))))

(declare-fun b!4919663 () Bool)

(declare-fun e!3074420 () tuple2!61070)

(declare-fun e!3074419 () tuple2!61070)

(assert (=> b!4919663 (= e!3074420 e!3074419)))

(declare-fun c!836965 () Bool)

(assert (=> b!4919663 (= c!836965 (<= lt!2020051 0))))

(declare-fun b!4919664 () Bool)

(assert (=> b!4919664 (= e!3074420 (tuple2!61071 Nil!56647 Nil!56647))))

(declare-fun lt!2021009 () tuple2!61070)

(declare-fun b!4919665 () Bool)

(assert (=> b!4919665 (= lt!2021009 (splitAtIndex!85 (t!367195 (++!12302 lt!2020778 lt!2020780)) (- lt!2020051 1)))))

(assert (=> b!4919665 (= e!3074419 (tuple2!61071 (Cons!56647 (h!63095 (++!12302 lt!2020778 lt!2020780)) (_1!33838 lt!2021009)) (_2!33838 lt!2021009)))))

(declare-fun d!1582330 () Bool)

(assert (=> d!1582330 e!3074418))

(declare-fun res!2100751 () Bool)

(assert (=> d!1582330 (=> (not res!2100751) (not e!3074418))))

(assert (=> d!1582330 (= res!2100751 (= (++!12302 (_1!33838 lt!2021010) (_2!33838 lt!2021010)) (++!12302 lt!2020778 lt!2020780)))))

(assert (=> d!1582330 (= lt!2021010 e!3074420)))

(declare-fun c!836964 () Bool)

(assert (=> d!1582330 (= c!836964 ((_ is Nil!56647) (++!12302 lt!2020778 lt!2020780)))))

(assert (=> d!1582330 (= (splitAtIndex!85 (++!12302 lt!2020778 lt!2020780) lt!2020051) lt!2021010)))

(declare-fun b!4919660 () Bool)

(assert (=> b!4919660 (= e!3074419 (tuple2!61071 Nil!56647 (++!12302 lt!2020778 lt!2020780)))))

(assert (= (and d!1582330 c!836964) b!4919664))

(assert (= (and d!1582330 (not c!836964)) b!4919663))

(assert (= (and b!4919663 c!836965) b!4919660))

(assert (= (and b!4919663 (not c!836965)) b!4919665))

(assert (= (and d!1582330 res!2100751) b!4919662))

(assert (= (and b!4919662 res!2100752) b!4919661))

(assert (=> b!4919661 m!5932198))

(declare-fun m!5933176 () Bool)

(assert (=> b!4919661 m!5933176))

(assert (=> b!4919662 m!5932198))

(declare-fun m!5933178 () Bool)

(assert (=> b!4919662 m!5933178))

(declare-fun m!5933180 () Bool)

(assert (=> b!4919665 m!5933180))

(declare-fun m!5933182 () Bool)

(assert (=> d!1582330 m!5933182))

(assert (=> b!4919033 d!1582330))

(assert (=> b!4919033 d!1582084))

(assert (=> b!4919033 d!1582110))

(declare-fun call!342144 () List!56771)

(declare-fun c!836976 () Bool)

(declare-fun bm!342139 () Bool)

(declare-fun lt!2021020 () tuple2!61070)

(declare-fun lt!2021021 () tuple2!61070)

(assert (=> bm!342139 (= call!342144 (++!12302 (ite c!836976 (_2!33838 lt!2021021) lt!2020778) (ite c!836976 lt!2020780 (_1!33838 lt!2021020))))))

(declare-fun b!4919691 () Bool)

(declare-fun e!3074434 () tuple2!61070)

(assert (=> b!4919691 (= e!3074434 (tuple2!61071 lt!2020778 lt!2020780))))

(declare-fun b!4919692 () Bool)

(declare-fun call!342145 () tuple2!61070)

(assert (=> b!4919692 (= lt!2021020 call!342145)))

(declare-fun e!3074435 () tuple2!61070)

(assert (=> b!4919692 (= e!3074435 (tuple2!61071 call!342144 (_2!33838 lt!2021020)))))

(declare-fun b!4919693 () Bool)

(declare-fun e!3074436 () Int)

(assert (=> b!4919693 (= e!3074436 (- lt!2020051 (size!37424 lt!2020778)))))

(declare-fun b!4919694 () Bool)

(assert (=> b!4919694 (= e!3074434 e!3074435)))

(assert (=> b!4919694 (= c!836976 (< lt!2020051 (size!37424 lt!2020778)))))

(declare-fun b!4919695 () Bool)

(assert (=> b!4919695 (= lt!2021021 call!342145)))

(assert (=> b!4919695 (= e!3074435 (tuple2!61071 (_1!33838 lt!2021021) call!342144))))

(declare-fun b!4919696 () Bool)

(declare-fun e!3074437 () Bool)

(assert (=> b!4919696 (= e!3074437 (<= lt!2020051 (+ (size!37424 lt!2020778) (size!37424 lt!2020780))))))

(declare-fun b!4919697 () Bool)

(assert (=> b!4919697 (= e!3074436 lt!2020051)))

(declare-fun d!1582332 () Bool)

(assert (=> d!1582332 (= (splitAtIndex!85 (++!12302 lt!2020778 lt!2020780) lt!2020051) e!3074434)))

(declare-fun c!836978 () Bool)

(assert (=> d!1582332 (= c!836978 (= (size!37424 lt!2020778) lt!2020051))))

(declare-fun lt!2021022 () Unit!146993)

(declare-fun choose!36024 (List!56771 List!56771 Int) Unit!146993)

(assert (=> d!1582332 (= lt!2021022 (choose!36024 lt!2020778 lt!2020780 lt!2020051))))

(assert (=> d!1582332 e!3074437))

(declare-fun res!2100758 () Bool)

(assert (=> d!1582332 (=> (not res!2100758) (not e!3074437))))

(assert (=> d!1582332 (= res!2100758 (<= 0 lt!2020051))))

(assert (=> d!1582332 (= (splitAtLemma!24 lt!2020778 lt!2020780 lt!2020051) lt!2021022)))

(declare-fun bm!342140 () Bool)

(declare-fun c!836977 () Bool)

(assert (=> bm!342140 (= c!836977 c!836976)))

(assert (=> bm!342140 (= call!342145 (splitAtIndex!85 (ite c!836976 lt!2020778 lt!2020780) e!3074436))))

(assert (= (and d!1582332 res!2100758) b!4919696))

(assert (= (and d!1582332 c!836978) b!4919691))

(assert (= (and d!1582332 (not c!836978)) b!4919694))

(assert (= (and b!4919694 c!836976) b!4919695))

(assert (= (and b!4919694 (not c!836976)) b!4919692))

(assert (= (or b!4919695 b!4919692) bm!342139))

(assert (= (or b!4919695 b!4919692) bm!342140))

(assert (= (and bm!342140 c!836977) b!4919697))

(assert (= (and bm!342140 (not c!836977)) b!4919693))

(assert (=> d!1582332 m!5932198))

(assert (=> d!1582332 m!5932198))

(assert (=> d!1582332 m!5932200))

(declare-fun m!5933204 () Bool)

(assert (=> d!1582332 m!5933204))

(declare-fun m!5933206 () Bool)

(assert (=> d!1582332 m!5933206))

(assert (=> b!4919694 m!5933204))

(declare-fun m!5933208 () Bool)

(assert (=> bm!342139 m!5933208))

(assert (=> b!4919696 m!5933204))

(declare-fun m!5933212 () Bool)

(assert (=> b!4919696 m!5933212))

(assert (=> b!4919693 m!5933204))

(declare-fun m!5933214 () Bool)

(assert (=> bm!342140 m!5933214))

(assert (=> b!4919033 d!1582332))

(declare-fun b!4919698 () Bool)

(declare-fun e!3074438 () List!56771)

(assert (=> b!4919698 (= e!3074438 lt!2020780)))

(declare-fun b!4919700 () Bool)

(declare-fun res!2100759 () Bool)

(declare-fun e!3074439 () Bool)

(assert (=> b!4919700 (=> (not res!2100759) (not e!3074439))))

(declare-fun lt!2021024 () List!56771)

(assert (=> b!4919700 (= res!2100759 (= (size!37424 lt!2021024) (+ (size!37424 lt!2020778) (size!37424 lt!2020780))))))

(declare-fun b!4919699 () Bool)

(assert (=> b!4919699 (= e!3074438 (Cons!56647 (h!63095 lt!2020778) (++!12302 (t!367195 lt!2020778) lt!2020780)))))

(declare-fun d!1582350 () Bool)

(assert (=> d!1582350 e!3074439))

(declare-fun res!2100760 () Bool)

(assert (=> d!1582350 (=> (not res!2100760) (not e!3074439))))

(assert (=> d!1582350 (= res!2100760 (= (content!10051 lt!2021024) ((_ map or) (content!10051 lt!2020778) (content!10051 lt!2020780))))))

(assert (=> d!1582350 (= lt!2021024 e!3074438)))

(declare-fun c!836979 () Bool)

(assert (=> d!1582350 (= c!836979 ((_ is Nil!56647) lt!2020778))))

(assert (=> d!1582350 (= (++!12302 lt!2020778 lt!2020780) lt!2021024)))

(declare-fun b!4919701 () Bool)

(assert (=> b!4919701 (= e!3074439 (or (not (= lt!2020780 Nil!56647)) (= lt!2021024 lt!2020778)))))

(assert (= (and d!1582350 c!836979) b!4919698))

(assert (= (and d!1582350 (not c!836979)) b!4919699))

(assert (= (and d!1582350 res!2100760) b!4919700))

(assert (= (and b!4919700 res!2100759) b!4919701))

(declare-fun m!5933216 () Bool)

(assert (=> b!4919700 m!5933216))

(assert (=> b!4919700 m!5933204))

(assert (=> b!4919700 m!5933212))

(declare-fun m!5933218 () Bool)

(assert (=> b!4919699 m!5933218))

(declare-fun m!5933220 () Bool)

(assert (=> d!1582350 m!5933220))

(declare-fun m!5933222 () Bool)

(assert (=> d!1582350 m!5933222))

(declare-fun m!5933224 () Bool)

(assert (=> d!1582350 m!5933224))

(assert (=> b!4919033 d!1582350))

(declare-fun d!1582352 () Bool)

(assert (=> d!1582352 (= (inv!73345 (xs!18172 (left!41299 (c!836549 input!5492)))) (<= (size!37424 (innerList!14942 (xs!18172 (left!41299 (c!836549 input!5492))))) 2147483647))))

(declare-fun bs!1178960 () Bool)

(assert (= bs!1178960 d!1582352))

(declare-fun m!5933226 () Bool)

(assert (=> bs!1178960 m!5933226))

(assert (=> b!4919130 d!1582352))

(declare-fun b!4919734 () Bool)

(declare-fun e!3074458 () Int)

(assert (=> b!4919734 (= e!3074458 lt!2020051)))

(declare-fun d!1582354 () Bool)

(declare-fun e!3074460 () Bool)

(assert (=> d!1582354 e!3074460))

(declare-fun res!2100765 () Bool)

(assert (=> d!1582354 (=> (not res!2100765) (not e!3074460))))

(declare-fun lt!2021030 () List!56771)

(assert (=> d!1582354 (= res!2100765 (= ((_ map implies) (content!10051 lt!2021030) (content!10051 (list!17911 input!5492))) ((as const (InoxSet C!26920)) true)))))

(declare-fun e!3074457 () List!56771)

(assert (=> d!1582354 (= lt!2021030 e!3074457)))

(declare-fun c!836995 () Bool)

(assert (=> d!1582354 (= c!836995 (or ((_ is Nil!56647) (list!17911 input!5492)) (<= lt!2020051 0)))))

(assert (=> d!1582354 (= (take!575 (list!17911 input!5492) lt!2020051) lt!2021030)))

(declare-fun b!4919735 () Bool)

(assert (=> b!4919735 (= e!3074457 Nil!56647)))

(declare-fun b!4919736 () Bool)

(declare-fun e!3074459 () Int)

(assert (=> b!4919736 (= e!3074459 e!3074458)))

(declare-fun c!836996 () Bool)

(assert (=> b!4919736 (= c!836996 (>= lt!2020051 (size!37424 (list!17911 input!5492))))))

(declare-fun b!4919737 () Bool)

(assert (=> b!4919737 (= e!3074460 (= (size!37424 lt!2021030) e!3074459))))

(declare-fun c!836994 () Bool)

(assert (=> b!4919737 (= c!836994 (<= lt!2020051 0))))

(declare-fun b!4919738 () Bool)

(assert (=> b!4919738 (= e!3074459 0)))

(declare-fun b!4919739 () Bool)

(assert (=> b!4919739 (= e!3074457 (Cons!56647 (h!63095 (list!17911 input!5492)) (take!575 (t!367195 (list!17911 input!5492)) (- lt!2020051 1))))))

(declare-fun b!4919740 () Bool)

(assert (=> b!4919740 (= e!3074458 (size!37424 (list!17911 input!5492)))))

(assert (= (and d!1582354 c!836995) b!4919735))

(assert (= (and d!1582354 (not c!836995)) b!4919739))

(assert (= (and d!1582354 res!2100765) b!4919737))

(assert (= (and b!4919737 c!836994) b!4919738))

(assert (= (and b!4919737 (not c!836994)) b!4919736))

(assert (= (and b!4919736 c!836996) b!4919740))

(assert (= (and b!4919736 (not c!836996)) b!4919734))

(assert (=> b!4919736 m!5931280))

(assert (=> b!4919736 m!5931492))

(assert (=> b!4919739 m!5932864))

(assert (=> b!4919740 m!5931280))

(assert (=> b!4919740 m!5931492))

(declare-fun m!5933254 () Bool)

(assert (=> b!4919737 m!5933254))

(declare-fun m!5933256 () Bool)

(assert (=> d!1582354 m!5933256))

(assert (=> d!1582354 m!5931280))

(assert (=> d!1582354 m!5932838))

(assert (=> b!4919117 d!1582354))

(declare-fun d!1582372 () Bool)

(assert (not d!1582372))

(assert (=> b!4918792 d!1582372))

(declare-fun d!1582374 () Bool)

(assert (not d!1582374))

(assert (=> b!4918792 d!1582374))

(declare-fun d!1582376 () Bool)

(assert (=> d!1582376 (= (tail!9652 (++!12302 Nil!56647 lt!2020053)) (t!367195 (++!12302 Nil!56647 lt!2020053)))))

(assert (=> b!4918792 d!1582376))

(declare-fun d!1582380 () Bool)

(declare-fun lt!2021032 () Bool)

(assert (=> d!1582380 (= lt!2021032 (isEmpty!30552 (list!17913 (left!41299 (left!41299 (c!836549 input!5492))))))))

(assert (=> d!1582380 (= lt!2021032 (= (size!37425 (left!41299 (left!41299 (c!836549 input!5492)))) 0))))

(assert (=> d!1582380 (= (isEmpty!30551 (left!41299 (left!41299 (c!836549 input!5492)))) lt!2021032)))

(declare-fun bs!1178962 () Bool)

(assert (= bs!1178962 d!1582380))

(assert (=> bs!1178962 m!5932544))

(assert (=> bs!1178962 m!5932544))

(declare-fun m!5933266 () Bool)

(assert (=> bs!1178962 m!5933266))

(assert (=> bs!1178962 m!5932702))

(assert (=> b!4919057 d!1582380))

(declare-fun b!4919746 () Bool)

(declare-fun e!3074463 () List!56771)

(declare-fun e!3074464 () List!56771)

(assert (=> b!4919746 (= e!3074463 e!3074464)))

(declare-fun c!837000 () Bool)

(assert (=> b!4919746 (= c!837000 ((_ is Leaf!24714) (c!836549 (ite c!836592 input!5492 (_2!33835 lt!2020316)))))))

(declare-fun c!836999 () Bool)

(declare-fun d!1582382 () Bool)

(assert (=> d!1582382 (= c!836999 ((_ is Empty!14854) (c!836549 (ite c!836592 input!5492 (_2!33835 lt!2020316)))))))

(assert (=> d!1582382 (= (list!17913 (c!836549 (ite c!836592 input!5492 (_2!33835 lt!2020316)))) e!3074463)))

(declare-fun b!4919747 () Bool)

(assert (=> b!4919747 (= e!3074464 (list!17914 (xs!18172 (c!836549 (ite c!836592 input!5492 (_2!33835 lt!2020316))))))))

(declare-fun b!4919748 () Bool)

(assert (=> b!4919748 (= e!3074464 (++!12302 (list!17913 (left!41299 (c!836549 (ite c!836592 input!5492 (_2!33835 lt!2020316))))) (list!17913 (right!41629 (c!836549 (ite c!836592 input!5492 (_2!33835 lt!2020316)))))))))

(declare-fun b!4919745 () Bool)

(assert (=> b!4919745 (= e!3074463 Nil!56647)))

(assert (= (and d!1582382 c!836999) b!4919745))

(assert (= (and d!1582382 (not c!836999)) b!4919746))

(assert (= (and b!4919746 c!837000) b!4919747))

(assert (= (and b!4919746 (not c!837000)) b!4919748))

(declare-fun m!5933272 () Bool)

(assert (=> b!4919747 m!5933272))

(declare-fun m!5933274 () Bool)

(assert (=> b!4919748 m!5933274))

(declare-fun m!5933276 () Bool)

(assert (=> b!4919748 m!5933276))

(assert (=> b!4919748 m!5933274))

(assert (=> b!4919748 m!5933276))

(declare-fun m!5933278 () Bool)

(assert (=> b!4919748 m!5933278))

(assert (=> d!1581998 d!1582382))

(declare-fun d!1582388 () Bool)

(declare-fun lt!2021034 () Int)

(assert (=> d!1582388 (>= lt!2021034 0)))

(declare-fun e!3074465 () Int)

(assert (=> d!1582388 (= lt!2021034 e!3074465)))

(declare-fun c!837001 () Bool)

(assert (=> d!1582388 (= c!837001 ((_ is Nil!56647) lt!2020462))))

(assert (=> d!1582388 (= (size!37424 lt!2020462) lt!2021034)))

(declare-fun b!4919749 () Bool)

(assert (=> b!4919749 (= e!3074465 0)))

(declare-fun b!4919750 () Bool)

(assert (=> b!4919750 (= e!3074465 (+ 1 (size!37424 (t!367195 lt!2020462))))))

(assert (= (and d!1582388 c!837001) b!4919749))

(assert (= (and d!1582388 (not c!837001)) b!4919750))

(declare-fun m!5933280 () Bool)

(assert (=> b!4919750 m!5933280))

(assert (=> b!4918667 d!1582388))

(assert (=> b!4918667 d!1581892))

(declare-fun d!1582390 () Bool)

(declare-fun lt!2021035 () Int)

(assert (=> d!1582390 (>= lt!2021035 0)))

(declare-fun e!3074466 () Int)

(assert (=> d!1582390 (= lt!2021035 e!3074466)))

(declare-fun c!837002 () Bool)

(assert (=> d!1582390 (= c!837002 ((_ is Nil!56647) (Cons!56647 lt!2020295 Nil!56647)))))

(assert (=> d!1582390 (= (size!37424 (Cons!56647 lt!2020295 Nil!56647)) lt!2021035)))

(declare-fun b!4919751 () Bool)

(assert (=> b!4919751 (= e!3074466 0)))

(declare-fun b!4919752 () Bool)

(assert (=> b!4919752 (= e!3074466 (+ 1 (size!37424 (t!367195 (Cons!56647 lt!2020295 Nil!56647)))))))

(assert (= (and d!1582390 c!837002) b!4919751))

(assert (= (and d!1582390 (not c!837002)) b!4919752))

(declare-fun m!5933282 () Bool)

(assert (=> b!4919752 m!5933282))

(assert (=> b!4918667 d!1582390))

(declare-fun d!1582392 () Bool)

(declare-fun lt!2021036 () Int)

(assert (=> d!1582392 (>= lt!2021036 0)))

(declare-fun e!3074467 () Int)

(assert (=> d!1582392 (= lt!2021036 e!3074467)))

(declare-fun c!837003 () Bool)

(assert (=> d!1582392 (= c!837003 ((_ is Nil!56647) (list!17913 (c!836549 input!5492))))))

(assert (=> d!1582392 (= (size!37424 (list!17913 (c!836549 input!5492))) lt!2021036)))

(declare-fun b!4919753 () Bool)

(assert (=> b!4919753 (= e!3074467 0)))

(declare-fun b!4919754 () Bool)

(assert (=> b!4919754 (= e!3074467 (+ 1 (size!37424 (t!367195 (list!17913 (c!836549 input!5492))))))))

(assert (= (and d!1582392 c!837003) b!4919753))

(assert (= (and d!1582392 (not c!837003)) b!4919754))

(declare-fun m!5933284 () Bool)

(assert (=> b!4919754 m!5933284))

(assert (=> d!1581986 d!1582392))

(assert (=> d!1581986 d!1581990))

(declare-fun b!4919755 () Bool)

(declare-fun res!2100771 () Bool)

(declare-fun e!3074468 () Bool)

(assert (=> b!4919755 (=> (not res!2100771) (not e!3074468))))

(assert (=> b!4919755 (= res!2100771 (not (isEmpty!30551 (left!41299 (left!41299 (left!41299 (c!836549 input!5492)))))))))

(declare-fun b!4919756 () Bool)

(assert (=> b!4919756 (= e!3074468 (not (isEmpty!30551 (right!41629 (left!41299 (left!41299 (c!836549 input!5492)))))))))

(declare-fun b!4919757 () Bool)

(declare-fun res!2100769 () Bool)

(assert (=> b!4919757 (=> (not res!2100769) (not e!3074468))))

(assert (=> b!4919757 (= res!2100769 (<= (- (height!1978 (left!41299 (left!41299 (left!41299 (c!836549 input!5492))))) (height!1978 (right!41629 (left!41299 (left!41299 (c!836549 input!5492)))))) 1))))

(declare-fun d!1582394 () Bool)

(declare-fun res!2100766 () Bool)

(declare-fun e!3074469 () Bool)

(assert (=> d!1582394 (=> res!2100766 e!3074469)))

(assert (=> d!1582394 (= res!2100766 (not ((_ is Node!14854) (left!41299 (left!41299 (c!836549 input!5492))))))))

(assert (=> d!1582394 (= (isBalanced!4070 (left!41299 (left!41299 (c!836549 input!5492)))) e!3074469)))

(declare-fun b!4919758 () Bool)

(declare-fun res!2100768 () Bool)

(assert (=> b!4919758 (=> (not res!2100768) (not e!3074468))))

(assert (=> b!4919758 (= res!2100768 (isBalanced!4070 (right!41629 (left!41299 (left!41299 (c!836549 input!5492))))))))

(declare-fun b!4919759 () Bool)

(declare-fun res!2100770 () Bool)

(assert (=> b!4919759 (=> (not res!2100770) (not e!3074468))))

(assert (=> b!4919759 (= res!2100770 (isBalanced!4070 (left!41299 (left!41299 (left!41299 (c!836549 input!5492))))))))

(declare-fun b!4919760 () Bool)

(assert (=> b!4919760 (= e!3074469 e!3074468)))

(declare-fun res!2100767 () Bool)

(assert (=> b!4919760 (=> (not res!2100767) (not e!3074468))))

(assert (=> b!4919760 (= res!2100767 (<= (- 1) (- (height!1978 (left!41299 (left!41299 (left!41299 (c!836549 input!5492))))) (height!1978 (right!41629 (left!41299 (left!41299 (c!836549 input!5492))))))))))

(assert (= (and d!1582394 (not res!2100766)) b!4919760))

(assert (= (and b!4919760 res!2100767) b!4919757))

(assert (= (and b!4919757 res!2100769) b!4919759))

(assert (= (and b!4919759 res!2100770) b!4919758))

(assert (= (and b!4919758 res!2100768) b!4919755))

(assert (= (and b!4919755 res!2100771) b!4919756))

(declare-fun m!5933286 () Bool)

(assert (=> b!4919758 m!5933286))

(declare-fun m!5933288 () Bool)

(assert (=> b!4919755 m!5933288))

(declare-fun m!5933290 () Bool)

(assert (=> b!4919760 m!5933290))

(declare-fun m!5933292 () Bool)

(assert (=> b!4919760 m!5933292))

(declare-fun m!5933294 () Bool)

(assert (=> b!4919756 m!5933294))

(assert (=> b!4919757 m!5933290))

(assert (=> b!4919757 m!5933292))

(declare-fun m!5933296 () Bool)

(assert (=> b!4919759 m!5933296))

(assert (=> b!4919061 d!1582394))

(declare-fun d!1582396 () Bool)

(declare-fun lt!2021037 () Bool)

(assert (=> d!1582396 (= lt!2021037 (isEmpty!30552 (list!17913 (left!41299 (c!836549 (_2!33835 lt!2020059))))))))

(assert (=> d!1582396 (= lt!2021037 (= (size!37425 (left!41299 (c!836549 (_2!33835 lt!2020059)))) 0))))

(assert (=> d!1582396 (= (isEmpty!30551 (left!41299 (c!836549 (_2!33835 lt!2020059)))) lt!2021037)))

(declare-fun bs!1178964 () Bool)

(assert (= bs!1178964 d!1582396))

(assert (=> bs!1178964 m!5932744))

(assert (=> bs!1178964 m!5932744))

(declare-fun m!5933298 () Bool)

(assert (=> bs!1178964 m!5933298))

(declare-fun m!5933300 () Bool)

(assert (=> bs!1178964 m!5933300))

(assert (=> b!4919089 d!1582396))

(declare-fun bm!342141 () Bool)

(declare-fun call!342148 () Bool)

(assert (=> bm!342141 (= call!342148 (nullableZipper!795 call!341934))))

(declare-fun b!4919761 () Bool)

(declare-fun e!3074473 () Int)

(declare-fun call!342149 () Int)

(assert (=> b!4919761 (= e!3074473 call!342149)))

(declare-fun b!4919762 () Bool)

(declare-fun lt!2021041 () Int)

(assert (=> b!4919762 (= e!3074473 (ite (= lt!2021041 0) (+ 0 1 1) lt!2021041))))

(assert (=> b!4919762 (= lt!2021041 call!342149)))

(declare-fun call!342151 () (InoxSet Context!5994))

(declare-fun call!342155 () List!56771)

(declare-fun call!342150 () List!56771)

(declare-fun bm!342142 () Bool)

(assert (=> bm!342142 (= call!342149 (findLongestMatchInnerZipperFast!67 call!342151 call!342150 (+ 0 1 1 1) call!342155 input!5492 lt!2020052))))

(declare-fun bm!342143 () Bool)

(declare-fun c!837007 () Bool)

(declare-fun c!837009 () Bool)

(assert (=> bm!342143 (= c!837007 c!837009)))

(declare-fun lt!2021044 () List!56771)

(declare-fun call!342146 () Unit!146993)

(declare-fun lt!2021051 () List!56771)

(declare-fun e!3074470 () List!56771)

(assert (=> bm!342143 (= call!342146 (lemmaIsPrefixSameLengthThenSameList!1104 (ite c!837009 lt!2021044 lt!2021051) call!341933 e!3074470))))

(declare-fun lt!2021060 () List!56771)

(declare-fun call!342147 () Unit!146993)

(declare-fun lt!2021072 () List!56771)

(declare-fun lt!2021058 () List!56771)

(declare-fun lt!2021062 () List!56771)

(declare-fun bm!342144 () Bool)

(assert (=> bm!342144 (= call!342147 (lemmaIsPrefixRefl!3342 (ite c!837009 lt!2021058 lt!2021062) (ite c!837009 lt!2021060 lt!2021072)))))

(declare-fun b!4919763 () Bool)

(declare-fun e!3074474 () Int)

(assert (=> b!4919763 (= e!3074474 0)))

(declare-fun b!4919764 () Bool)

(declare-fun call!342152 () List!56771)

(assert (=> b!4919764 (= e!3074470 call!342152)))

(declare-fun b!4919765 () Bool)

(declare-fun c!837005 () Bool)

(assert (=> b!4919765 (= c!837005 call!342148)))

(declare-fun lt!2021073 () Unit!146993)

(declare-fun lt!2021050 () Unit!146993)

(assert (=> b!4919765 (= lt!2021073 lt!2021050)))

(declare-fun lt!2021059 () List!56771)

(declare-fun lt!2021043 () List!56771)

(declare-fun lt!2021054 () C!26920)

(assert (=> b!4919765 (= (++!12302 (++!12302 call!341933 (Cons!56647 lt!2021054 Nil!56647)) lt!2021043) lt!2021059)))

(assert (=> b!4919765 (= lt!2021050 (lemmaMoveElementToOtherListKeepsConcatEq!1376 call!341933 lt!2021054 lt!2021043 lt!2021059))))

(assert (=> b!4919765 (= lt!2021059 (list!17911 input!5492))))

(assert (=> b!4919765 (= lt!2021043 (tail!9652 call!341938))))

(assert (=> b!4919765 (= lt!2021054 (apply!13621 input!5492 (+ 0 1 1)))))

(declare-fun lt!2021057 () Unit!146993)

(declare-fun lt!2021039 () Unit!146993)

(assert (=> b!4919765 (= lt!2021057 lt!2021039)))

(declare-fun lt!2021066 () List!56771)

(assert (=> b!4919765 (isPrefix!4945 (++!12302 call!341933 (Cons!56647 (head!10505 (getSuffix!2933 lt!2021066 call!341933)) Nil!56647)) lt!2021066)))

(assert (=> b!4919765 (= lt!2021039 (lemmaAddHeadSuffixToPrefixStillPrefix!758 call!341933 lt!2021066))))

(assert (=> b!4919765 (= lt!2021066 (list!17911 input!5492))))

(declare-fun lt!2021079 () Unit!146993)

(declare-fun e!3074471 () Unit!146993)

(assert (=> b!4919765 (= lt!2021079 e!3074471)))

(declare-fun c!837008 () Bool)

(assert (=> b!4919765 (= c!837008 (= (size!37424 call!341933) (size!37421 input!5492)))))

(declare-fun lt!2021069 () Unit!146993)

(declare-fun lt!2021056 () Unit!146993)

(assert (=> b!4919765 (= lt!2021069 lt!2021056)))

(declare-fun lt!2021063 () List!56771)

(assert (=> b!4919765 (<= (size!37424 call!341933) (size!37424 lt!2021063))))

(assert (=> b!4919765 (= lt!2021056 (lemmaIsPrefixThenSmallerEqSize!670 call!341933 lt!2021063))))

(assert (=> b!4919765 (= lt!2021063 (list!17911 input!5492))))

(declare-fun lt!2021053 () Unit!146993)

(declare-fun lt!2021045 () Unit!146993)

(assert (=> b!4919765 (= lt!2021053 lt!2021045)))

(declare-fun lt!2021077 () List!56771)

(assert (=> b!4919765 (= (head!10505 (drop!2209 lt!2021077 (+ 0 1 1))) (apply!13622 lt!2021077 (+ 0 1 1)))))

(assert (=> b!4919765 (= lt!2021045 (lemmaDropApply!1267 lt!2021077 (+ 0 1 1)))))

(assert (=> b!4919765 (= lt!2021077 (list!17911 input!5492))))

(declare-fun lt!2021068 () Unit!146993)

(declare-fun lt!2021055 () Unit!146993)

(assert (=> b!4919765 (= lt!2021068 lt!2021055)))

(declare-fun lt!2021052 () List!56771)

(declare-fun lt!2021065 () List!56771)

(assert (=> b!4919765 (and (= lt!2021052 call!341933) (= lt!2021065 call!341938))))

(assert (=> b!4919765 (= lt!2021055 (lemmaConcatSameAndSameSizesThenSameLists!642 lt!2021052 lt!2021065 call!341933 call!341938))))

(assert (=> b!4919765 (= lt!2021065 call!342152)))

(declare-fun lt!2021075 () tuple2!61064)

(assert (=> b!4919765 (= lt!2021052 (list!17911 (_1!33835 lt!2021075)))))

(assert (=> b!4919765 (= lt!2021075 (splitAt!236 input!5492 (+ 0 1 1)))))

(declare-fun e!3074475 () Int)

(assert (=> b!4919765 (= e!3074475 e!3074473)))

(declare-fun bm!342145 () Bool)

(declare-fun call!342154 () C!26920)

(assert (=> bm!342145 (= call!342150 (++!12302 call!341933 (Cons!56647 call!342154 Nil!56647)))))

(declare-fun b!4919766 () Bool)

(declare-fun Unit!147022 () Unit!146993)

(assert (=> b!4919766 (= e!3074471 Unit!147022)))

(declare-fun bm!342146 () Bool)

(assert (=> bm!342146 (= call!342151 (derivationStepZipper!573 call!341934 call!342154))))

(declare-fun b!4919768 () Bool)

(declare-fun Unit!147023 () Unit!146993)

(assert (=> b!4919768 (= e!3074471 Unit!147023)))

(assert (=> b!4919768 (= lt!2021062 (list!17911 input!5492))))

(assert (=> b!4919768 (= lt!2021072 (list!17911 input!5492))))

(declare-fun lt!2021042 () Unit!146993)

(assert (=> b!4919768 (= lt!2021042 call!342147)))

(declare-fun call!342153 () Bool)

(assert (=> b!4919768 call!342153))

(declare-fun lt!2021047 () Unit!146993)

(assert (=> b!4919768 (= lt!2021047 lt!2021042)))

(assert (=> b!4919768 (= lt!2021051 (list!17911 input!5492))))

(declare-fun lt!2021070 () Unit!146993)

(assert (=> b!4919768 (= lt!2021070 call!342146)))

(assert (=> b!4919768 (= lt!2021051 call!341933)))

(declare-fun lt!2021040 () Unit!146993)

(assert (=> b!4919768 (= lt!2021040 lt!2021070)))

(assert (=> b!4919768 false))

(declare-fun b!4919769 () Bool)

(declare-fun e!3074472 () Int)

(assert (=> b!4919769 (= e!3074472 0)))

(declare-fun bm!342147 () Bool)

(assert (=> bm!342147 (= call!342152 (list!17911 (ite c!837009 input!5492 (_2!33835 lt!2021075))))))

(declare-fun b!4919770 () Bool)

(declare-fun c!837004 () Bool)

(assert (=> b!4919770 (= c!837004 call!342148)))

(declare-fun lt!2021046 () Unit!146993)

(declare-fun lt!2021071 () Unit!146993)

(assert (=> b!4919770 (= lt!2021046 lt!2021071)))

(assert (=> b!4919770 (= lt!2021044 call!341933)))

(assert (=> b!4919770 (= lt!2021071 call!342146)))

(assert (=> b!4919770 (= lt!2021044 call!342152)))

(declare-fun lt!2021061 () Unit!146993)

(declare-fun lt!2021078 () Unit!146993)

(assert (=> b!4919770 (= lt!2021061 lt!2021078)))

(assert (=> b!4919770 call!342153))

(assert (=> b!4919770 (= lt!2021078 call!342147)))

(assert (=> b!4919770 (= lt!2021060 call!342152)))

(assert (=> b!4919770 (= lt!2021058 call!342152)))

(assert (=> b!4919770 (= e!3074475 e!3074474)))

(declare-fun b!4919771 () Bool)

(assert (=> b!4919771 (= e!3074472 e!3074475)))

(assert (=> b!4919771 (= c!837009 (= (+ 0 1 1) lt!2020052))))

(declare-fun bm!342148 () Bool)

(assert (=> bm!342148 (= call!342155 (tail!9652 call!341938))))

(declare-fun b!4919772 () Bool)

(assert (=> b!4919772 (= e!3074474 (+ 0 1 1))))

(declare-fun bm!342149 () Bool)

(assert (=> bm!342149 (= call!342153 (isPrefix!4945 (ite c!837009 lt!2021058 lt!2021062) (ite c!837009 lt!2021060 lt!2021072)))))

(declare-fun bm!342150 () Bool)

(assert (=> bm!342150 (= call!342154 (apply!13621 input!5492 (+ 0 1 1)))))

(declare-fun b!4919767 () Bool)

(assert (=> b!4919767 (= e!3074470 (list!17911 input!5492))))

(declare-fun lt!2021048 () Int)

(declare-fun d!1582398 () Bool)

(assert (=> d!1582398 (= (size!37424 (_1!33838 (findLongestMatchInnerZipper!40 call!341934 call!341933 (+ 0 1 1) call!341938 (list!17911 input!5492) lt!2020052))) lt!2021048)))

(assert (=> d!1582398 (= lt!2021048 e!3074472)))

(declare-fun c!837006 () Bool)

(assert (=> d!1582398 (= c!837006 (lostCauseZipper!675 call!341934))))

(declare-fun lt!2021076 () Unit!146993)

(declare-fun Unit!147024 () Unit!146993)

(assert (=> d!1582398 (= lt!2021076 Unit!147024)))

(assert (=> d!1582398 (= (getSuffix!2933 (list!17911 input!5492) call!341933) call!341938)))

(declare-fun lt!2021067 () Unit!146993)

(declare-fun lt!2021064 () Unit!146993)

(assert (=> d!1582398 (= lt!2021067 lt!2021064)))

(declare-fun lt!2021038 () List!56771)

(assert (=> d!1582398 (= call!341938 lt!2021038)))

(assert (=> d!1582398 (= lt!2021064 (lemmaSamePrefixThenSameSuffix!2349 call!341933 call!341938 call!341933 lt!2021038 (list!17911 input!5492)))))

(assert (=> d!1582398 (= lt!2021038 (getSuffix!2933 (list!17911 input!5492) call!341933))))

(declare-fun lt!2021074 () Unit!146993)

(declare-fun lt!2021049 () Unit!146993)

(assert (=> d!1582398 (= lt!2021074 lt!2021049)))

(assert (=> d!1582398 (isPrefix!4945 call!341933 (++!12302 call!341933 call!341938))))

(assert (=> d!1582398 (= lt!2021049 (lemmaConcatTwoListThenFirstIsPrefix!3169 call!341933 call!341938))))

(assert (=> d!1582398 (= (++!12302 call!341933 call!341938) (list!17911 input!5492))))

(assert (=> d!1582398 (= (findLongestMatchInnerZipperFast!67 call!341934 call!341933 (+ 0 1 1) call!341938 input!5492 lt!2020052) lt!2021048)))

(assert (= (and d!1582398 c!837006) b!4919769))

(assert (= (and d!1582398 (not c!837006)) b!4919771))

(assert (= (and b!4919771 c!837009) b!4919770))

(assert (= (and b!4919771 (not c!837009)) b!4919765))

(assert (= (and b!4919770 c!837004) b!4919772))

(assert (= (and b!4919770 (not c!837004)) b!4919763))

(assert (= (and b!4919765 c!837008) b!4919768))

(assert (= (and b!4919765 (not c!837008)) b!4919766))

(assert (= (and b!4919765 c!837005) b!4919762))

(assert (= (and b!4919765 (not c!837005)) b!4919761))

(assert (= (or b!4919762 b!4919761) bm!342150))

(assert (= (or b!4919762 b!4919761) bm!342148))

(assert (= (or b!4919762 b!4919761) bm!342146))

(assert (= (or b!4919762 b!4919761) bm!342145))

(assert (= (or b!4919762 b!4919761) bm!342142))

(assert (= (or b!4919770 b!4919765) bm!342141))

(assert (= (or b!4919770 b!4919765) bm!342147))

(assert (= (or b!4919770 b!4919768) bm!342144))

(assert (= (or b!4919770 b!4919768) bm!342149))

(assert (= (or b!4919770 b!4919768) bm!342143))

(assert (= (and bm!342143 c!837007) b!4919764))

(assert (= (and bm!342143 (not c!837007)) b!4919767))

(declare-fun m!5933308 () Bool)

(assert (=> bm!342146 m!5933308))

(declare-fun m!5933310 () Bool)

(assert (=> bm!342149 m!5933310))

(declare-fun m!5933312 () Bool)

(assert (=> bm!342148 m!5933312))

(declare-fun m!5933314 () Bool)

(assert (=> b!4919765 m!5933314))

(declare-fun m!5933316 () Bool)

(assert (=> b!4919765 m!5933316))

(assert (=> b!4919765 m!5933312))

(declare-fun m!5933318 () Bool)

(assert (=> b!4919765 m!5933318))

(declare-fun m!5933320 () Bool)

(assert (=> b!4919765 m!5933320))

(declare-fun m!5933322 () Bool)

(assert (=> b!4919765 m!5933322))

(declare-fun m!5933324 () Bool)

(assert (=> b!4919765 m!5933324))

(declare-fun m!5933326 () Bool)

(assert (=> b!4919765 m!5933326))

(declare-fun m!5933328 () Bool)

(assert (=> b!4919765 m!5933328))

(declare-fun m!5933330 () Bool)

(assert (=> b!4919765 m!5933330))

(declare-fun m!5933332 () Bool)

(assert (=> b!4919765 m!5933332))

(assert (=> b!4919765 m!5933320))

(declare-fun m!5933334 () Bool)

(assert (=> b!4919765 m!5933334))

(declare-fun m!5933336 () Bool)

(assert (=> b!4919765 m!5933336))

(declare-fun m!5933338 () Bool)

(assert (=> b!4919765 m!5933338))

(declare-fun m!5933340 () Bool)

(assert (=> b!4919765 m!5933340))

(assert (=> b!4919765 m!5933330))

(declare-fun m!5933342 () Bool)

(assert (=> b!4919765 m!5933342))

(declare-fun m!5933344 () Bool)

(assert (=> b!4919765 m!5933344))

(assert (=> b!4919765 m!5933338))

(assert (=> b!4919765 m!5931282))

(declare-fun m!5933346 () Bool)

(assert (=> b!4919765 m!5933346))

(assert (=> b!4919765 m!5933324))

(declare-fun m!5933348 () Bool)

(assert (=> b!4919765 m!5933348))

(declare-fun m!5933350 () Bool)

(assert (=> b!4919765 m!5933350))

(assert (=> b!4919765 m!5931280))

(assert (=> b!4919768 m!5931280))

(assert (=> d!1582398 m!5931280))

(declare-fun m!5933352 () Bool)

(assert (=> d!1582398 m!5933352))

(declare-fun m!5933354 () Bool)

(assert (=> d!1582398 m!5933354))

(declare-fun m!5933356 () Bool)

(assert (=> d!1582398 m!5933356))

(assert (=> d!1582398 m!5931280))

(declare-fun m!5933358 () Bool)

(assert (=> d!1582398 m!5933358))

(declare-fun m!5933360 () Bool)

(assert (=> d!1582398 m!5933360))

(declare-fun m!5933362 () Bool)

(assert (=> d!1582398 m!5933362))

(assert (=> d!1582398 m!5931280))

(assert (=> d!1582398 m!5933354))

(assert (=> d!1582398 m!5931280))

(declare-fun m!5933364 () Bool)

(assert (=> d!1582398 m!5933364))

(declare-fun m!5933366 () Bool)

(assert (=> d!1582398 m!5933366))

(declare-fun m!5933368 () Bool)

(assert (=> bm!342143 m!5933368))

(declare-fun m!5933370 () Bool)

(assert (=> bm!342145 m!5933370))

(assert (=> bm!342150 m!5933314))

(assert (=> b!4919767 m!5931280))

(declare-fun m!5933372 () Bool)

(assert (=> bm!342142 m!5933372))

(declare-fun m!5933374 () Bool)

(assert (=> bm!342141 m!5933374))

(declare-fun m!5933376 () Bool)

(assert (=> bm!342144 m!5933376))

(declare-fun m!5933378 () Bool)

(assert (=> bm!342147 m!5933378))

(assert (=> bm!341925 d!1582398))

(declare-fun d!1582404 () Bool)

(assert (=> d!1582404 (= (head!10505 lt!2020318) (h!63095 lt!2020318))))

(assert (=> b!4918635 d!1582404))

(declare-fun bs!1178966 () Bool)

(declare-fun d!1582406 () Bool)

(assert (= bs!1178966 (and d!1582406 d!1582066)))

(declare-fun lambda!245052 () Int)

(assert (=> bs!1178966 (not (= lambda!245052 lambda!245037))))

(declare-fun bs!1178967 () Bool)

(assert (= bs!1178967 (and d!1582406 b!4919466)))

(assert (=> bs!1178967 (not (= lambda!245052 lambda!245045))))

(declare-fun bs!1178968 () Bool)

(assert (= bs!1178968 (and d!1582406 b!4918781)))

(assert (=> bs!1178968 (not (= lambda!245052 lambda!245005))))

(declare-fun bs!1178969 () Bool)

(assert (= bs!1178969 (and d!1582406 d!1582138)))

(assert (=> bs!1178969 (= (= (ite c!836680 lambda!245004 lambda!245005) lambda!245003) (= lambda!245052 lambda!245042))))

(declare-fun bs!1178970 () Bool)

(assert (= bs!1178970 (and d!1582406 d!1582222)))

(assert (=> bs!1178970 (not (= lambda!245052 lambda!245043))))

(declare-fun bs!1178971 () Bool)

(assert (= bs!1178971 (and d!1582406 d!1581832)))

(assert (=> bs!1178971 (not (= lambda!245052 lambda!244989))))

(declare-fun bs!1178972 () Bool)

(assert (= bs!1178972 (and d!1582406 d!1582268)))

(assert (=> bs!1178972 (= (= (ite c!836680 lambda!245004 lambda!245005) lambda!245003) (= lambda!245052 lambda!245048))))

(declare-fun bs!1178973 () Bool)

(assert (= bs!1178973 (and d!1582406 d!1581946)))

(assert (=> bs!1178973 (not (= lambda!245052 lambda!245003))))

(declare-fun bs!1178974 () Bool)

(assert (= bs!1178974 (and d!1582406 b!4918780)))

(assert (=> bs!1178974 (not (= lambda!245052 lambda!245004))))

(declare-fun bs!1178975 () Bool)

(assert (= bs!1178975 (and d!1582406 b!4919465)))

(assert (=> bs!1178975 (not (= lambda!245052 lambda!245044))))

(assert (=> d!1582406 true))

(assert (=> d!1582406 (< (dynLambda!23003 order!25971 (ite c!836680 lambda!245004 lambda!245005)) (dynLambda!23003 order!25971 lambda!245052))))

(assert (=> d!1582406 (= (exists!1239 (ite c!836680 lt!2020523 lt!2020527) (ite c!836680 lambda!245004 lambda!245005)) (not (forall!13116 (ite c!836680 lt!2020523 lt!2020527) lambda!245052)))))

(declare-fun bs!1178976 () Bool)

(assert (= bs!1178976 d!1582406))

(declare-fun m!5933382 () Bool)

(assert (=> bs!1178976 m!5933382))

(assert (=> bm!341954 d!1582406))

(declare-fun b!4919776 () Bool)

(declare-fun res!2100780 () Bool)

(declare-fun e!3074479 () Bool)

(assert (=> b!4919776 (=> (not res!2100780) (not e!3074479))))

(assert (=> b!4919776 (= res!2100780 (not (isEmpty!30551 (left!41299 (_2!33837 lt!2020784)))))))

(declare-fun b!4919777 () Bool)

(assert (=> b!4919777 (= e!3074479 (not (isEmpty!30551 (right!41629 (_2!33837 lt!2020784)))))))

(declare-fun b!4919778 () Bool)

(declare-fun res!2100778 () Bool)

(assert (=> b!4919778 (=> (not res!2100778) (not e!3074479))))

(assert (=> b!4919778 (= res!2100778 (<= (- (height!1978 (left!41299 (_2!33837 lt!2020784))) (height!1978 (right!41629 (_2!33837 lt!2020784)))) 1))))

(declare-fun d!1582410 () Bool)

(declare-fun res!2100775 () Bool)

(declare-fun e!3074480 () Bool)

(assert (=> d!1582410 (=> res!2100775 e!3074480)))

(assert (=> d!1582410 (= res!2100775 (not ((_ is Node!14854) (_2!33837 lt!2020784))))))

(assert (=> d!1582410 (= (isBalanced!4070 (_2!33837 lt!2020784)) e!3074480)))

(declare-fun b!4919779 () Bool)

(declare-fun res!2100777 () Bool)

(assert (=> b!4919779 (=> (not res!2100777) (not e!3074479))))

(assert (=> b!4919779 (= res!2100777 (isBalanced!4070 (right!41629 (_2!33837 lt!2020784))))))

(declare-fun b!4919780 () Bool)

(declare-fun res!2100779 () Bool)

(assert (=> b!4919780 (=> (not res!2100779) (not e!3074479))))

(assert (=> b!4919780 (= res!2100779 (isBalanced!4070 (left!41299 (_2!33837 lt!2020784))))))

(declare-fun b!4919781 () Bool)

(assert (=> b!4919781 (= e!3074480 e!3074479)))

(declare-fun res!2100776 () Bool)

(assert (=> b!4919781 (=> (not res!2100776) (not e!3074479))))

(assert (=> b!4919781 (= res!2100776 (<= (- 1) (- (height!1978 (left!41299 (_2!33837 lt!2020784))) (height!1978 (right!41629 (_2!33837 lt!2020784))))))))

(assert (= (and d!1582410 (not res!2100775)) b!4919781))

(assert (= (and b!4919781 res!2100776) b!4919778))

(assert (= (and b!4919778 res!2100778) b!4919780))

(assert (= (and b!4919780 res!2100779) b!4919779))

(assert (= (and b!4919779 res!2100777) b!4919776))

(assert (= (and b!4919776 res!2100780) b!4919777))

(declare-fun m!5933384 () Bool)

(assert (=> b!4919779 m!5933384))

(declare-fun m!5933386 () Bool)

(assert (=> b!4919776 m!5933386))

(declare-fun m!5933388 () Bool)

(assert (=> b!4919781 m!5933388))

(declare-fun m!5933390 () Bool)

(assert (=> b!4919781 m!5933390))

(declare-fun m!5933392 () Bool)

(assert (=> b!4919777 m!5933392))

(assert (=> b!4919778 m!5933388))

(assert (=> b!4919778 m!5933390))

(declare-fun m!5933394 () Bool)

(assert (=> b!4919780 m!5933394))

(assert (=> b!4919044 d!1582410))

(declare-fun d!1582412 () Bool)

(declare-fun c!837010 () Bool)

(assert (=> d!1582412 (= c!837010 ((_ is Nil!56647) lt!2020536))))

(declare-fun e!3074481 () (InoxSet C!26920))

(assert (=> d!1582412 (= (content!10051 lt!2020536) e!3074481)))

(declare-fun b!4919782 () Bool)

(assert (=> b!4919782 (= e!3074481 ((as const (Array C!26920 Bool)) false))))

(declare-fun b!4919783 () Bool)

(assert (=> b!4919783 (= e!3074481 ((_ map or) (store ((as const (Array C!26920 Bool)) false) (h!63095 lt!2020536) true) (content!10051 (t!367195 lt!2020536))))))

(assert (= (and d!1582412 c!837010) b!4919782))

(assert (= (and d!1582412 (not c!837010)) b!4919783))

(declare-fun m!5933396 () Bool)

(assert (=> b!4919783 m!5933396))

(declare-fun m!5933398 () Bool)

(assert (=> b!4919783 m!5933398))

(assert (=> d!1581962 d!1582412))

(assert (=> d!1581962 d!1582168))

(declare-fun d!1582414 () Bool)

(declare-fun c!837011 () Bool)

(assert (=> d!1582414 (= c!837011 ((_ is Nil!56647) lt!2020053))))

(declare-fun e!3074482 () (InoxSet C!26920))

(assert (=> d!1582414 (= (content!10051 lt!2020053) e!3074482)))

(declare-fun b!4919784 () Bool)

(assert (=> b!4919784 (= e!3074482 ((as const (Array C!26920 Bool)) false))))

(declare-fun b!4919785 () Bool)

(assert (=> b!4919785 (= e!3074482 ((_ map or) (store ((as const (Array C!26920 Bool)) false) (h!63095 lt!2020053) true) (content!10051 (t!367195 lt!2020053))))))

(assert (= (and d!1582414 c!837011) b!4919784))

(assert (= (and d!1582414 (not c!837011)) b!4919785))

(declare-fun m!5933400 () Bool)

(assert (=> b!4919785 m!5933400))

(declare-fun m!5933402 () Bool)

(assert (=> b!4919785 m!5933402))

(assert (=> d!1581962 d!1582414))

(declare-fun b!4919786 () Bool)

(declare-fun res!2100786 () Bool)

(declare-fun e!3074483 () Bool)

(assert (=> b!4919786 (=> (not res!2100786) (not e!3074483))))

(assert (=> b!4919786 (= res!2100786 (not (isEmpty!30551 (left!41299 (left!41299 (c!836549 (_2!33835 lt!2020059)))))))))

(declare-fun b!4919787 () Bool)

(assert (=> b!4919787 (= e!3074483 (not (isEmpty!30551 (right!41629 (left!41299 (c!836549 (_2!33835 lt!2020059)))))))))

(declare-fun b!4919788 () Bool)

(declare-fun res!2100784 () Bool)

(assert (=> b!4919788 (=> (not res!2100784) (not e!3074483))))

(assert (=> b!4919788 (= res!2100784 (<= (- (height!1978 (left!41299 (left!41299 (c!836549 (_2!33835 lt!2020059))))) (height!1978 (right!41629 (left!41299 (c!836549 (_2!33835 lt!2020059)))))) 1))))

(declare-fun d!1582416 () Bool)

(declare-fun res!2100781 () Bool)

(declare-fun e!3074484 () Bool)

(assert (=> d!1582416 (=> res!2100781 e!3074484)))

(assert (=> d!1582416 (= res!2100781 (not ((_ is Node!14854) (left!41299 (c!836549 (_2!33835 lt!2020059))))))))

(assert (=> d!1582416 (= (isBalanced!4070 (left!41299 (c!836549 (_2!33835 lt!2020059)))) e!3074484)))

(declare-fun b!4919789 () Bool)

(declare-fun res!2100783 () Bool)

(assert (=> b!4919789 (=> (not res!2100783) (not e!3074483))))

(assert (=> b!4919789 (= res!2100783 (isBalanced!4070 (right!41629 (left!41299 (c!836549 (_2!33835 lt!2020059))))))))

(declare-fun b!4919790 () Bool)

(declare-fun res!2100785 () Bool)

(assert (=> b!4919790 (=> (not res!2100785) (not e!3074483))))

(assert (=> b!4919790 (= res!2100785 (isBalanced!4070 (left!41299 (left!41299 (c!836549 (_2!33835 lt!2020059))))))))

(declare-fun b!4919791 () Bool)

(assert (=> b!4919791 (= e!3074484 e!3074483)))

(declare-fun res!2100782 () Bool)

(assert (=> b!4919791 (=> (not res!2100782) (not e!3074483))))

(assert (=> b!4919791 (= res!2100782 (<= (- 1) (- (height!1978 (left!41299 (left!41299 (c!836549 (_2!33835 lt!2020059))))) (height!1978 (right!41629 (left!41299 (c!836549 (_2!33835 lt!2020059))))))))))

(assert (= (and d!1582416 (not res!2100781)) b!4919791))

(assert (= (and b!4919791 res!2100782) b!4919788))

(assert (= (and b!4919788 res!2100784) b!4919790))

(assert (= (and b!4919790 res!2100785) b!4919789))

(assert (= (and b!4919789 res!2100783) b!4919786))

(assert (= (and b!4919786 res!2100786) b!4919787))

(declare-fun m!5933404 () Bool)

(assert (=> b!4919789 m!5933404))

(declare-fun m!5933406 () Bool)

(assert (=> b!4919786 m!5933406))

(declare-fun m!5933408 () Bool)

(assert (=> b!4919791 m!5933408))

(declare-fun m!5933410 () Bool)

(assert (=> b!4919791 m!5933410))

(declare-fun m!5933412 () Bool)

(assert (=> b!4919787 m!5933412))

(assert (=> b!4919788 m!5933408))

(assert (=> b!4919788 m!5933410))

(declare-fun m!5933414 () Bool)

(assert (=> b!4919790 m!5933414))

(assert (=> b!4919093 d!1582416))

(assert (=> b!4918539 d!1581818))

(declare-fun d!1582418 () Bool)

(assert (=> d!1582418 (and (= lt!2020293 Nil!56647) (= lt!2020306 lt!2020053))))

(assert (=> d!1582418 true))

(declare-fun _$50!393 () Unit!146993)

(assert (=> d!1582418 (= (choose!35998 lt!2020293 lt!2020306 Nil!56647 lt!2020053) _$50!393)))

(assert (=> d!1581882 d!1582418))

(declare-fun b!4919792 () Bool)

(declare-fun e!3074485 () List!56771)

(assert (=> b!4919792 (= e!3074485 lt!2020306)))

(declare-fun b!4919794 () Bool)

(declare-fun res!2100787 () Bool)

(declare-fun e!3074486 () Bool)

(assert (=> b!4919794 (=> (not res!2100787) (not e!3074486))))

(declare-fun lt!2021083 () List!56771)

(assert (=> b!4919794 (= res!2100787 (= (size!37424 lt!2021083) (+ (size!37424 lt!2020293) (size!37424 lt!2020306))))))

(declare-fun b!4919793 () Bool)

(assert (=> b!4919793 (= e!3074485 (Cons!56647 (h!63095 lt!2020293) (++!12302 (t!367195 lt!2020293) lt!2020306)))))

(declare-fun d!1582420 () Bool)

(assert (=> d!1582420 e!3074486))

(declare-fun res!2100788 () Bool)

(assert (=> d!1582420 (=> (not res!2100788) (not e!3074486))))

(assert (=> d!1582420 (= res!2100788 (= (content!10051 lt!2021083) ((_ map or) (content!10051 lt!2020293) (content!10051 lt!2020306))))))

(assert (=> d!1582420 (= lt!2021083 e!3074485)))

(declare-fun c!837012 () Bool)

(assert (=> d!1582420 (= c!837012 ((_ is Nil!56647) lt!2020293))))

(assert (=> d!1582420 (= (++!12302 lt!2020293 lt!2020306) lt!2021083)))

(declare-fun b!4919795 () Bool)

(assert (=> b!4919795 (= e!3074486 (or (not (= lt!2020306 Nil!56647)) (= lt!2021083 lt!2020293)))))

(assert (= (and d!1582420 c!837012) b!4919792))

(assert (= (and d!1582420 (not c!837012)) b!4919793))

(assert (= (and d!1582420 res!2100788) b!4919794))

(assert (= (and b!4919794 res!2100787) b!4919795))

(declare-fun m!5933416 () Bool)

(assert (=> b!4919794 m!5933416))

(declare-fun m!5933418 () Bool)

(assert (=> b!4919794 m!5933418))

(declare-fun m!5933420 () Bool)

(assert (=> b!4919794 m!5933420))

(declare-fun m!5933422 () Bool)

(assert (=> b!4919793 m!5933422))

(declare-fun m!5933424 () Bool)

(assert (=> d!1582420 m!5933424))

(declare-fun m!5933426 () Bool)

(assert (=> d!1582420 m!5933426))

(declare-fun m!5933428 () Bool)

(assert (=> d!1582420 m!5933428))

(assert (=> d!1581882 d!1582420))

(assert (=> d!1581882 d!1581962))

(declare-fun d!1582422 () Bool)

(declare-fun res!2100789 () Bool)

(declare-fun e!3074487 () Bool)

(assert (=> d!1582422 (=> (not res!2100789) (not e!3074487))))

(assert (=> d!1582422 (= res!2100789 (<= (size!37424 (list!17914 (xs!18172 (left!41299 (c!836549 input!5492))))) 512))))

(assert (=> d!1582422 (= (inv!73343 (left!41299 (c!836549 input!5492))) e!3074487)))

(declare-fun b!4919796 () Bool)

(declare-fun res!2100790 () Bool)

(assert (=> b!4919796 (=> (not res!2100790) (not e!3074487))))

(assert (=> b!4919796 (= res!2100790 (= (csize!29939 (left!41299 (c!836549 input!5492))) (size!37424 (list!17914 (xs!18172 (left!41299 (c!836549 input!5492)))))))))

(declare-fun b!4919797 () Bool)

(assert (=> b!4919797 (= e!3074487 (and (> (csize!29939 (left!41299 (c!836549 input!5492))) 0) (<= (csize!29939 (left!41299 (c!836549 input!5492))) 512)))))

(assert (= (and d!1582422 res!2100789) b!4919796))

(assert (= (and b!4919796 res!2100790) b!4919797))

(assert (=> d!1582422 m!5932542))

(assert (=> d!1582422 m!5932542))

(declare-fun m!5933430 () Bool)

(assert (=> d!1582422 m!5933430))

(assert (=> b!4919796 m!5932542))

(assert (=> b!4919796 m!5932542))

(assert (=> b!4919796 m!5933430))

(assert (=> b!4918732 d!1582422))

(declare-fun d!1582424 () Bool)

(declare-fun lt!2021084 () Int)

(assert (=> d!1582424 (>= lt!2021084 0)))

(declare-fun e!3074488 () Int)

(assert (=> d!1582424 (= lt!2021084 e!3074488)))

(declare-fun c!837013 () Bool)

(assert (=> d!1582424 (= c!837013 ((_ is Nil!56647) lt!2020493))))

(assert (=> d!1582424 (= (size!37424 lt!2020493) lt!2021084)))

(declare-fun b!4919798 () Bool)

(assert (=> b!4919798 (= e!3074488 0)))

(declare-fun b!4919799 () Bool)

(assert (=> b!4919799 (= e!3074488 (+ 1 (size!37424 (t!367195 lt!2020493))))))

(assert (= (and d!1582424 c!837013) b!4919798))

(assert (= (and d!1582424 (not c!837013)) b!4919799))

(declare-fun m!5933432 () Bool)

(assert (=> b!4919799 m!5933432))

(assert (=> b!4918742 d!1582424))

(assert (=> b!4918742 d!1581892))

(declare-fun d!1582426 () Bool)

(declare-fun lt!2021085 () Int)

(assert (=> d!1582426 (>= lt!2021085 0)))

(declare-fun e!3074491 () Int)

(assert (=> d!1582426 (= lt!2021085 e!3074491)))

(declare-fun c!837014 () Bool)

(assert (=> d!1582426 (= c!837014 ((_ is Nil!56647) (Cons!56647 call!341927 Nil!56647)))))

(assert (=> d!1582426 (= (size!37424 (Cons!56647 call!341927 Nil!56647)) lt!2021085)))

(declare-fun b!4919802 () Bool)

(assert (=> b!4919802 (= e!3074491 0)))

(declare-fun b!4919803 () Bool)

(assert (=> b!4919803 (= e!3074491 (+ 1 (size!37424 (t!367195 (Cons!56647 call!341927 Nil!56647)))))))

(assert (= (and d!1582426 c!837014) b!4919802))

(assert (= (and d!1582426 (not c!837014)) b!4919803))

(declare-fun m!5933434 () Bool)

(assert (=> b!4919803 m!5933434))

(assert (=> b!4918742 d!1582426))

(declare-fun b!4919805 () Bool)

(declare-fun e!3074492 () List!56771)

(declare-fun e!3074493 () List!56771)

(assert (=> b!4919805 (= e!3074492 e!3074493)))

(declare-fun c!837016 () Bool)

(assert (=> b!4919805 (= c!837016 ((_ is Leaf!24714) (_1!33837 lt!2020784)))))

(declare-fun d!1582428 () Bool)

(declare-fun c!837015 () Bool)

(assert (=> d!1582428 (= c!837015 ((_ is Empty!14854) (_1!33837 lt!2020784)))))

(assert (=> d!1582428 (= (list!17913 (_1!33837 lt!2020784)) e!3074492)))

(declare-fun b!4919806 () Bool)

(assert (=> b!4919806 (= e!3074493 (list!17914 (xs!18172 (_1!33837 lt!2020784))))))

(declare-fun b!4919807 () Bool)

(assert (=> b!4919807 (= e!3074493 (++!12302 (list!17913 (left!41299 (_1!33837 lt!2020784))) (list!17913 (right!41629 (_1!33837 lt!2020784)))))))

(declare-fun b!4919804 () Bool)

(assert (=> b!4919804 (= e!3074492 Nil!56647)))

(assert (= (and d!1582428 c!837015) b!4919804))

(assert (= (and d!1582428 (not c!837015)) b!4919805))

(assert (= (and b!4919805 c!837016) b!4919806))

(assert (= (and b!4919805 (not c!837016)) b!4919807))

(declare-fun m!5933436 () Bool)

(assert (=> b!4919806 m!5933436))

(declare-fun m!5933438 () Bool)

(assert (=> b!4919807 m!5933438))

(declare-fun m!5933440 () Bool)

(assert (=> b!4919807 m!5933440))

(assert (=> b!4919807 m!5933438))

(assert (=> b!4919807 m!5933440))

(declare-fun m!5933442 () Bool)

(assert (=> b!4919807 m!5933442))

(assert (=> b!4919045 d!1582428))

(declare-fun b!4919809 () Bool)

(declare-fun e!3074494 () List!56771)

(declare-fun e!3074495 () List!56771)

(assert (=> b!4919809 (= e!3074494 e!3074495)))

(declare-fun c!837018 () Bool)

(assert (=> b!4919809 (= c!837018 ((_ is Leaf!24714) (_2!33837 lt!2020784)))))

(declare-fun d!1582430 () Bool)

(declare-fun c!837017 () Bool)

(assert (=> d!1582430 (= c!837017 ((_ is Empty!14854) (_2!33837 lt!2020784)))))

(assert (=> d!1582430 (= (list!17913 (_2!33837 lt!2020784)) e!3074494)))

(declare-fun b!4919810 () Bool)

(assert (=> b!4919810 (= e!3074495 (list!17914 (xs!18172 (_2!33837 lt!2020784))))))

(declare-fun b!4919811 () Bool)

(assert (=> b!4919811 (= e!3074495 (++!12302 (list!17913 (left!41299 (_2!33837 lt!2020784))) (list!17913 (right!41629 (_2!33837 lt!2020784)))))))

(declare-fun b!4919808 () Bool)

(assert (=> b!4919808 (= e!3074494 Nil!56647)))

(assert (= (and d!1582430 c!837017) b!4919808))

(assert (= (and d!1582430 (not c!837017)) b!4919809))

(assert (= (and b!4919809 c!837018) b!4919810))

(assert (= (and b!4919809 (not c!837018)) b!4919811))

(declare-fun m!5933444 () Bool)

(assert (=> b!4919810 m!5933444))

(declare-fun m!5933446 () Bool)

(assert (=> b!4919811 m!5933446))

(declare-fun m!5933448 () Bool)

(assert (=> b!4919811 m!5933448))

(assert (=> b!4919811 m!5933446))

(assert (=> b!4919811 m!5933448))

(declare-fun m!5933450 () Bool)

(assert (=> b!4919811 m!5933450))

(assert (=> b!4919045 d!1582430))

(declare-fun lt!2021089 () tuple2!61070)

(declare-fun b!4919813 () Bool)

(declare-fun e!3074496 () Bool)

(assert (=> b!4919813 (= e!3074496 (= (_2!33838 lt!2021089) (drop!2209 (list!17913 (c!836549 input!5492)) lt!2020051)))))

(declare-fun b!4919814 () Bool)

(declare-fun res!2100794 () Bool)

(assert (=> b!4919814 (=> (not res!2100794) (not e!3074496))))

(assert (=> b!4919814 (= res!2100794 (= (_1!33838 lt!2021089) (take!575 (list!17913 (c!836549 input!5492)) lt!2020051)))))

(declare-fun b!4919815 () Bool)

(declare-fun e!3074498 () tuple2!61070)

(declare-fun e!3074497 () tuple2!61070)

(assert (=> b!4919815 (= e!3074498 e!3074497)))

(declare-fun c!837020 () Bool)

(assert (=> b!4919815 (= c!837020 (<= lt!2020051 0))))

(declare-fun b!4919816 () Bool)

(assert (=> b!4919816 (= e!3074498 (tuple2!61071 Nil!56647 Nil!56647))))

(declare-fun b!4919817 () Bool)

(declare-fun lt!2021088 () tuple2!61070)

(assert (=> b!4919817 (= lt!2021088 (splitAtIndex!85 (t!367195 (list!17913 (c!836549 input!5492))) (- lt!2020051 1)))))

(assert (=> b!4919817 (= e!3074497 (tuple2!61071 (Cons!56647 (h!63095 (list!17913 (c!836549 input!5492))) (_1!33838 lt!2021088)) (_2!33838 lt!2021088)))))

(declare-fun d!1582432 () Bool)

(assert (=> d!1582432 e!3074496))

(declare-fun res!2100793 () Bool)

(assert (=> d!1582432 (=> (not res!2100793) (not e!3074496))))

(assert (=> d!1582432 (= res!2100793 (= (++!12302 (_1!33838 lt!2021089) (_2!33838 lt!2021089)) (list!17913 (c!836549 input!5492))))))

(assert (=> d!1582432 (= lt!2021089 e!3074498)))

(declare-fun c!837019 () Bool)

(assert (=> d!1582432 (= c!837019 ((_ is Nil!56647) (list!17913 (c!836549 input!5492))))))

(assert (=> d!1582432 (= (splitAtIndex!85 (list!17913 (c!836549 input!5492)) lt!2020051) lt!2021089)))

(declare-fun b!4919812 () Bool)

(assert (=> b!4919812 (= e!3074497 (tuple2!61071 Nil!56647 (list!17913 (c!836549 input!5492))))))

(assert (= (and d!1582432 c!837019) b!4919816))

(assert (= (and d!1582432 (not c!837019)) b!4919815))

(assert (= (and b!4919815 c!837020) b!4919812))

(assert (= (and b!4919815 (not c!837020)) b!4919817))

(assert (= (and d!1582432 res!2100793) b!4919814))

(assert (= (and b!4919814 res!2100794) b!4919813))

(assert (=> b!4919813 m!5931498))

(declare-fun m!5933452 () Bool)

(assert (=> b!4919813 m!5933452))

(assert (=> b!4919814 m!5931498))

(declare-fun m!5933454 () Bool)

(assert (=> b!4919814 m!5933454))

(declare-fun m!5933456 () Bool)

(assert (=> b!4919817 m!5933456))

(declare-fun m!5933458 () Bool)

(assert (=> d!1582432 m!5933458))

(assert (=> b!4919045 d!1582432))

(assert (=> b!4919045 d!1581990))

(declare-fun d!1582434 () Bool)

(assert (=> d!1582434 (= (inv!73345 (xs!18172 (right!41629 (c!836549 input!5492)))) (<= (size!37424 (innerList!14942 (xs!18172 (right!41629 (c!836549 input!5492))))) 2147483647))))

(declare-fun bs!1178977 () Bool)

(assert (= bs!1178977 d!1582434))

(declare-fun m!5933460 () Bool)

(assert (=> bs!1178977 m!5933460))

(assert (=> b!4919133 d!1582434))

(declare-fun d!1582436 () Bool)

(declare-fun lt!2021091 () Bool)

(assert (=> d!1582436 (= lt!2021091 (isEmpty!30552 (list!17913 (left!41299 (right!41629 (c!836549 input!5492))))))))

(assert (=> d!1582436 (= lt!2021091 (= (size!37425 (left!41299 (right!41629 (c!836549 input!5492)))) 0))))

(assert (=> d!1582436 (= (isEmpty!30551 (left!41299 (right!41629 (c!836549 input!5492)))) lt!2021091)))

(declare-fun bs!1178978 () Bool)

(assert (= bs!1178978 d!1582436))

(assert (=> bs!1178978 m!5932552))

(assert (=> bs!1178978 m!5932552))

(declare-fun m!5933462 () Bool)

(assert (=> bs!1178978 m!5933462))

(declare-fun m!5933464 () Bool)

(assert (=> bs!1178978 m!5933464))

(assert (=> b!4919051 d!1582436))

(declare-fun b!4919819 () Bool)

(declare-fun e!3074500 () List!56771)

(assert (=> b!4919819 (= e!3074500 (list!17913 (right!41629 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))))))

(declare-fun b!4919821 () Bool)

(declare-fun res!2100796 () Bool)

(declare-fun e!3074501 () Bool)

(assert (=> b!4919821 (=> (not res!2100796) (not e!3074501))))

(declare-fun lt!2021092 () List!56771)

(assert (=> b!4919821 (= res!2100796 (= (size!37424 lt!2021092) (+ (size!37424 (list!17913 (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))) (size!37424 (list!17913 (right!41629 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))))))))

(declare-fun b!4919820 () Bool)

(assert (=> b!4919820 (= e!3074500 (Cons!56647 (h!63095 (list!17913 (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))) (++!12302 (t!367195 (list!17913 (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))) (list!17913 (right!41629 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))))))))

(declare-fun d!1582438 () Bool)

(assert (=> d!1582438 e!3074501))

(declare-fun res!2100797 () Bool)

(assert (=> d!1582438 (=> (not res!2100797) (not e!3074501))))

(assert (=> d!1582438 (= res!2100797 (= (content!10051 lt!2021092) ((_ map or) (content!10051 (list!17913 (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))) (content!10051 (list!17913 (right!41629 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))))))))

(assert (=> d!1582438 (= lt!2021092 e!3074500)))

(declare-fun c!837021 () Bool)

(assert (=> d!1582438 (= c!837021 ((_ is Nil!56647) (list!17913 (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))))))

(assert (=> d!1582438 (= (++!12302 (list!17913 (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))) (list!17913 (right!41629 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))) lt!2021092)))

(declare-fun b!4919822 () Bool)

(assert (=> b!4919822 (= e!3074501 (or (not (= (list!17913 (right!41629 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))) Nil!56647)) (= lt!2021092 (list!17913 (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))))))))

(assert (= (and d!1582438 c!837021) b!4919819))

(assert (= (and d!1582438 (not c!837021)) b!4919820))

(assert (= (and d!1582438 res!2100797) b!4919821))

(assert (= (and b!4919821 res!2100796) b!4919822))

(declare-fun m!5933472 () Bool)

(assert (=> b!4919821 m!5933472))

(assert (=> b!4919821 m!5931594))

(declare-fun m!5933474 () Bool)

(assert (=> b!4919821 m!5933474))

(assert (=> b!4919821 m!5931596))

(declare-fun m!5933476 () Bool)

(assert (=> b!4919821 m!5933476))

(assert (=> b!4919820 m!5931596))

(declare-fun m!5933478 () Bool)

(assert (=> b!4919820 m!5933478))

(declare-fun m!5933480 () Bool)

(assert (=> d!1582438 m!5933480))

(assert (=> d!1582438 m!5931594))

(declare-fun m!5933482 () Bool)

(assert (=> d!1582438 m!5933482))

(assert (=> d!1582438 m!5931596))

(declare-fun m!5933484 () Bool)

(assert (=> d!1582438 m!5933484))

(assert (=> b!4918555 d!1582438))

(declare-fun b!4919825 () Bool)

(declare-fun e!3074503 () List!56771)

(declare-fun e!3074504 () List!56771)

(assert (=> b!4919825 (= e!3074503 e!3074504)))

(declare-fun c!837023 () Bool)

(assert (=> b!4919825 (= c!837023 ((_ is Leaf!24714) (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))))))

(declare-fun d!1582442 () Bool)

(declare-fun c!837022 () Bool)

(assert (=> d!1582442 (= c!837022 ((_ is Empty!14854) (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))))))

(assert (=> d!1582442 (= (list!17913 (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))) e!3074503)))

(declare-fun b!4919826 () Bool)

(assert (=> b!4919826 (= e!3074504 (list!17914 (xs!18172 (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))))))

(declare-fun b!4919827 () Bool)

(assert (=> b!4919827 (= e!3074504 (++!12302 (list!17913 (left!41299 (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))) (list!17913 (right!41629 (left!41299 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))))))))

(declare-fun b!4919824 () Bool)

(assert (=> b!4919824 (= e!3074503 Nil!56647)))

(assert (= (and d!1582442 c!837022) b!4919824))

(assert (= (and d!1582442 (not c!837022)) b!4919825))

(assert (= (and b!4919825 c!837023) b!4919826))

(assert (= (and b!4919825 (not c!837023)) b!4919827))

(declare-fun m!5933490 () Bool)

(assert (=> b!4919826 m!5933490))

(declare-fun m!5933492 () Bool)

(assert (=> b!4919827 m!5933492))

(declare-fun m!5933494 () Bool)

(assert (=> b!4919827 m!5933494))

(assert (=> b!4919827 m!5933492))

(assert (=> b!4919827 m!5933494))

(declare-fun m!5933496 () Bool)

(assert (=> b!4919827 m!5933496))

(assert (=> b!4918555 d!1582442))

(declare-fun b!4919829 () Bool)

(declare-fun e!3074505 () List!56771)

(declare-fun e!3074506 () List!56771)

(assert (=> b!4919829 (= e!3074505 e!3074506)))

(declare-fun c!837025 () Bool)

(assert (=> b!4919829 (= c!837025 ((_ is Leaf!24714) (right!41629 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))))))

(declare-fun d!1582446 () Bool)

(declare-fun c!837024 () Bool)

(assert (=> d!1582446 (= c!837024 ((_ is Empty!14854) (right!41629 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))))))

(assert (=> d!1582446 (= (list!17913 (right!41629 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))) e!3074505)))

(declare-fun b!4919830 () Bool)

(assert (=> b!4919830 (= e!3074506 (list!17914 (xs!18172 (right!41629 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))))))

(declare-fun b!4919831 () Bool)

(assert (=> b!4919831 (= e!3074506 (++!12302 (list!17913 (left!41299 (right!41629 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051)))))) (list!17913 (right!41629 (right!41629 (c!836549 (_1!33835 (splitAt!236 input!5492 lt!2020051))))))))))

(declare-fun b!4919828 () Bool)

(assert (=> b!4919828 (= e!3074505 Nil!56647)))

(assert (= (and d!1582446 c!837024) b!4919828))

(assert (= (and d!1582446 (not c!837024)) b!4919829))

(assert (= (and b!4919829 c!837025) b!4919830))

(assert (= (and b!4919829 (not c!837025)) b!4919831))

(declare-fun m!5933498 () Bool)

(assert (=> b!4919830 m!5933498))

(declare-fun m!5933500 () Bool)

(assert (=> b!4919831 m!5933500))

(declare-fun m!5933502 () Bool)

(assert (=> b!4919831 m!5933502))

(assert (=> b!4919831 m!5933500))

(assert (=> b!4919831 m!5933502))

(declare-fun m!5933504 () Bool)

(assert (=> b!4919831 m!5933504))

(assert (=> b!4918555 d!1582446))

(declare-fun d!1582448 () Bool)

(declare-fun c!837026 () Bool)

(assert (=> d!1582448 (= c!837026 ((_ is Nil!56647) lt!2020428))))

(declare-fun e!3074507 () (InoxSet C!26920))

(assert (=> d!1582448 (= (content!10051 lt!2020428) e!3074507)))

(declare-fun b!4919832 () Bool)

(assert (=> b!4919832 (= e!3074507 ((as const (Array C!26920 Bool)) false))))

(declare-fun b!4919833 () Bool)

(assert (=> b!4919833 (= e!3074507 ((_ map or) (store ((as const (Array C!26920 Bool)) false) (h!63095 lt!2020428) true) (content!10051 (t!367195 lt!2020428))))))

(assert (= (and d!1582448 c!837026) b!4919832))

(assert (= (and d!1582448 (not c!837026)) b!4919833))

(declare-fun m!5933506 () Bool)

(assert (=> b!4919833 m!5933506))

(declare-fun m!5933508 () Bool)

(assert (=> b!4919833 m!5933508))

(assert (=> d!1581856 d!1582448))

(assert (=> d!1581856 d!1582168))

(declare-fun d!1582450 () Bool)

(declare-fun c!837027 () Bool)

(assert (=> d!1582450 (= c!837027 ((_ is Nil!56647) (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)))))

(declare-fun e!3074508 () (InoxSet C!26920))

(assert (=> d!1582450 (= (content!10051 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)) e!3074508)))

(declare-fun b!4919834 () Bool)

(assert (=> b!4919834 (= e!3074508 ((as const (Array C!26920 Bool)) false))))

(declare-fun b!4919835 () Bool)

(assert (=> b!4919835 (= e!3074508 ((_ map or) (store ((as const (Array C!26920 Bool)) false) (h!63095 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)) true) (content!10051 (t!367195 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647)))))))

(assert (= (and d!1582450 c!837027) b!4919834))

(assert (= (and d!1582450 (not c!837027)) b!4919835))

(declare-fun m!5933510 () Bool)

(assert (=> b!4919835 m!5933510))

(declare-fun m!5933512 () Bool)

(assert (=> b!4919835 m!5933512))

(assert (=> d!1581856 d!1582450))

(declare-fun d!1582452 () Bool)

(declare-fun lt!2021094 () Bool)

(assert (=> d!1582452 (= lt!2021094 (isEmpty!30552 (list!17913 (left!41299 (c!836549 (_1!33835 lt!2020059))))))))

(assert (=> d!1582452 (= lt!2021094 (= (size!37425 (left!41299 (c!836549 (_1!33835 lt!2020059)))) 0))))

(assert (=> d!1582452 (= (isEmpty!30551 (left!41299 (c!836549 (_1!33835 lt!2020059)))) lt!2021094)))

(declare-fun bs!1178979 () Bool)

(assert (= bs!1178979 d!1582452))

(declare-fun m!5933514 () Bool)

(assert (=> bs!1178979 m!5933514))

(assert (=> bs!1178979 m!5933514))

(declare-fun m!5933516 () Bool)

(assert (=> bs!1178979 m!5933516))

(declare-fun m!5933518 () Bool)

(assert (=> bs!1178979 m!5933518))

(assert (=> b!4918945 d!1582452))

(declare-fun d!1582454 () Bool)

(assert (=> d!1582454 (= (isEmpty!30552 (_1!33838 lt!2020673)) ((_ is Nil!56647) (_1!33838 lt!2020673)))))

(assert (=> b!4918919 d!1582454))

(assert (=> b!4918934 d!1582238))

(declare-fun b!4919836 () Bool)

(declare-fun res!2100804 () Bool)

(declare-fun e!3074509 () Bool)

(assert (=> b!4919836 (=> (not res!2100804) (not e!3074509))))

(assert (=> b!4919836 (= res!2100804 (not (isEmpty!30551 (left!41299 (left!41299 (c!836549 (_1!33835 lt!2020059)))))))))

(declare-fun b!4919837 () Bool)

(assert (=> b!4919837 (= e!3074509 (not (isEmpty!30551 (right!41629 (left!41299 (c!836549 (_1!33835 lt!2020059)))))))))

(declare-fun b!4919838 () Bool)

(declare-fun res!2100802 () Bool)

(assert (=> b!4919838 (=> (not res!2100802) (not e!3074509))))

(assert (=> b!4919838 (= res!2100802 (<= (- (height!1978 (left!41299 (left!41299 (c!836549 (_1!33835 lt!2020059))))) (height!1978 (right!41629 (left!41299 (c!836549 (_1!33835 lt!2020059)))))) 1))))

(declare-fun d!1582456 () Bool)

(declare-fun res!2100799 () Bool)

(declare-fun e!3074510 () Bool)

(assert (=> d!1582456 (=> res!2100799 e!3074510)))

(assert (=> d!1582456 (= res!2100799 (not ((_ is Node!14854) (left!41299 (c!836549 (_1!33835 lt!2020059))))))))

(assert (=> d!1582456 (= (isBalanced!4070 (left!41299 (c!836549 (_1!33835 lt!2020059)))) e!3074510)))

(declare-fun b!4919839 () Bool)

(declare-fun res!2100801 () Bool)

(assert (=> b!4919839 (=> (not res!2100801) (not e!3074509))))

(assert (=> b!4919839 (= res!2100801 (isBalanced!4070 (right!41629 (left!41299 (c!836549 (_1!33835 lt!2020059))))))))

(declare-fun b!4919840 () Bool)

(declare-fun res!2100803 () Bool)

(assert (=> b!4919840 (=> (not res!2100803) (not e!3074509))))

(assert (=> b!4919840 (= res!2100803 (isBalanced!4070 (left!41299 (left!41299 (c!836549 (_1!33835 lt!2020059))))))))

(declare-fun b!4919841 () Bool)

(assert (=> b!4919841 (= e!3074510 e!3074509)))

(declare-fun res!2100800 () Bool)

(assert (=> b!4919841 (=> (not res!2100800) (not e!3074509))))

(assert (=> b!4919841 (= res!2100800 (<= (- 1) (- (height!1978 (left!41299 (left!41299 (c!836549 (_1!33835 lt!2020059))))) (height!1978 (right!41629 (left!41299 (c!836549 (_1!33835 lt!2020059))))))))))

(assert (= (and d!1582456 (not res!2100799)) b!4919841))

(assert (= (and b!4919841 res!2100800) b!4919838))

(assert (= (and b!4919838 res!2100802) b!4919840))

(assert (= (and b!4919840 res!2100803) b!4919839))

(assert (= (and b!4919839 res!2100801) b!4919836))

(assert (= (and b!4919836 res!2100804) b!4919837))

(declare-fun m!5933520 () Bool)

(assert (=> b!4919839 m!5933520))

(declare-fun m!5933522 () Bool)

(assert (=> b!4919836 m!5933522))

(declare-fun m!5933524 () Bool)

(assert (=> b!4919841 m!5933524))

(declare-fun m!5933526 () Bool)

(assert (=> b!4919841 m!5933526))

(declare-fun m!5933528 () Bool)

(assert (=> b!4919837 m!5933528))

(assert (=> b!4919838 m!5933524))

(assert (=> b!4919838 m!5933526))

(declare-fun m!5933530 () Bool)

(assert (=> b!4919840 m!5933530))

(assert (=> b!4918949 d!1582456))

(declare-fun d!1582458 () Bool)

(declare-fun lt!2021095 () Int)

(assert (=> d!1582458 (>= lt!2021095 0)))

(declare-fun e!3074511 () Int)

(assert (=> d!1582458 (= lt!2021095 e!3074511)))

(declare-fun c!837028 () Bool)

(assert (=> d!1582458 (= c!837028 ((_ is Nil!56647) (ite c!836592 lt!2020301 lt!2020313)))))

(assert (=> d!1582458 (= (size!37424 (ite c!836592 lt!2020301 lt!2020313)) lt!2021095)))

(declare-fun b!4919842 () Bool)

(assert (=> b!4919842 (= e!3074511 0)))

(declare-fun b!4919843 () Bool)

(assert (=> b!4919843 (= e!3074511 (+ 1 (size!37424 (t!367195 (ite c!836592 lt!2020301 lt!2020313)))))))

(assert (= (and d!1582458 c!837028) b!4919842))

(assert (= (and d!1582458 (not c!837028)) b!4919843))

(declare-fun m!5933532 () Bool)

(assert (=> b!4919843 m!5933532))

(assert (=> b!4919068 d!1582458))

(declare-fun d!1582460 () Bool)

(declare-fun lt!2021096 () Int)

(assert (=> d!1582460 (>= lt!2021096 0)))

(declare-fun e!3074512 () Int)

(assert (=> d!1582460 (= lt!2021096 e!3074512)))

(declare-fun c!837029 () Bool)

(assert (=> d!1582460 (= c!837029 ((_ is Nil!56647) (ite c!836592 lt!2020299 lt!2020303)))))

(assert (=> d!1582460 (= (size!37424 (ite c!836592 lt!2020299 lt!2020303)) lt!2021096)))

(declare-fun b!4919844 () Bool)

(assert (=> b!4919844 (= e!3074512 0)))

(declare-fun b!4919845 () Bool)

(assert (=> b!4919845 (= e!3074512 (+ 1 (size!37424 (t!367195 (ite c!836592 lt!2020299 lt!2020303)))))))

(assert (= (and d!1582460 c!837029) b!4919844))

(assert (= (and d!1582460 (not c!837029)) b!4919845))

(declare-fun m!5933534 () Bool)

(assert (=> b!4919845 m!5933534))

(assert (=> b!4919068 d!1582460))

(declare-fun d!1582462 () Bool)

(assert (=> d!1582462 (= (list!17911 input!5492) Nil!56647)))

(declare-fun lt!2021097 () Unit!146993)

(assert (=> d!1582462 (= lt!2021097 (choose!35994 (list!17911 input!5492) Nil!56647 (list!17911 input!5492)))))

(assert (=> d!1582462 (isPrefix!4945 (list!17911 input!5492) (list!17911 input!5492))))

(assert (=> d!1582462 (= (lemmaIsPrefixSameLengthThenSameList!1104 (list!17911 input!5492) Nil!56647 (list!17911 input!5492)) lt!2021097)))

(declare-fun bs!1178980 () Bool)

(assert (= bs!1178980 d!1582462))

(assert (=> bs!1178980 m!5931280))

(assert (=> bs!1178980 m!5931280))

(declare-fun m!5933536 () Bool)

(assert (=> bs!1178980 m!5933536))

(assert (=> bs!1178980 m!5931280))

(assert (=> bs!1178980 m!5931280))

(assert (=> bs!1178980 m!5932138))

(assert (=> bm!341999 d!1582462))

(declare-fun d!1582464 () Bool)

(assert (=> d!1582464 (= (isEmpty!30552 (list!17913 (right!41629 (c!836549 input!5492)))) ((_ is Nil!56647) (list!17913 (right!41629 (c!836549 input!5492)))))))

(assert (=> d!1581930 d!1582464))

(assert (=> d!1581930 d!1582086))

(assert (=> d!1581930 d!1582112))

(assert (=> d!1581968 d!1581946))

(assert (=> d!1581968 d!1581958))

(assert (=> d!1581968 d!1581962))

(assert (=> d!1581968 d!1581964))

(declare-fun b!4919846 () Bool)

(declare-fun e!3074513 () List!56771)

(assert (=> b!4919846 (= e!3074513 (_2!33838 lt!2020653))))

(declare-fun b!4919848 () Bool)

(declare-fun res!2100805 () Bool)

(declare-fun e!3074514 () Bool)

(assert (=> b!4919848 (=> (not res!2100805) (not e!3074514))))

(declare-fun lt!2021098 () List!56771)

(assert (=> b!4919848 (= res!2100805 (= (size!37424 lt!2021098) (+ (size!37424 (_1!33838 lt!2020653)) (size!37424 (_2!33838 lt!2020653)))))))

(declare-fun b!4919847 () Bool)

(assert (=> b!4919847 (= e!3074513 (Cons!56647 (h!63095 (_1!33838 lt!2020653)) (++!12302 (t!367195 (_1!33838 lt!2020653)) (_2!33838 lt!2020653))))))

(declare-fun d!1582466 () Bool)

(assert (=> d!1582466 e!3074514))

(declare-fun res!2100806 () Bool)

(assert (=> d!1582466 (=> (not res!2100806) (not e!3074514))))

(assert (=> d!1582466 (= res!2100806 (= (content!10051 lt!2021098) ((_ map or) (content!10051 (_1!33838 lt!2020653)) (content!10051 (_2!33838 lt!2020653)))))))

(assert (=> d!1582466 (= lt!2021098 e!3074513)))

(declare-fun c!837030 () Bool)

(assert (=> d!1582466 (= c!837030 ((_ is Nil!56647) (_1!33838 lt!2020653)))))

(assert (=> d!1582466 (= (++!12302 (_1!33838 lt!2020653) (_2!33838 lt!2020653)) lt!2021098)))

(declare-fun b!4919849 () Bool)

(assert (=> b!4919849 (= e!3074514 (or (not (= (_2!33838 lt!2020653) Nil!56647)) (= lt!2021098 (_1!33838 lt!2020653))))))

(assert (= (and d!1582466 c!837030) b!4919846))

(assert (= (and d!1582466 (not c!837030)) b!4919847))

(assert (= (and d!1582466 res!2100806) b!4919848))

(assert (= (and b!4919848 res!2100805) b!4919849))

(declare-fun m!5933538 () Bool)

(assert (=> b!4919848 m!5933538))

(assert (=> b!4919848 m!5932134))

(declare-fun m!5933540 () Bool)

(assert (=> b!4919848 m!5933540))

(declare-fun m!5933542 () Bool)

(assert (=> b!4919847 m!5933542))

(declare-fun m!5933544 () Bool)

(assert (=> d!1582466 m!5933544))

(declare-fun m!5933546 () Bool)

(assert (=> d!1582466 m!5933546))

(declare-fun m!5933548 () Bool)

(assert (=> d!1582466 m!5933548))

(assert (=> d!1581968 d!1582466))

(declare-fun d!1582468 () Bool)

(assert (=> d!1582468 (= lt!2020053 lt!2020665)))

(declare-fun lt!2021101 () Unit!146993)

(assert (=> d!1582468 (= lt!2021101 (choose!36007 Nil!56647 lt!2020053 Nil!56647 lt!2020665 (list!17911 input!5492)))))

(assert (=> d!1582468 (isPrefix!4945 Nil!56647 (list!17911 input!5492))))

(assert (=> d!1582468 (= (lemmaSamePrefixThenSameSuffix!2349 Nil!56647 lt!2020053 Nil!56647 lt!2020665 (list!17911 input!5492)) lt!2021101)))

(declare-fun bs!1178981 () Bool)

(assert (= bs!1178981 d!1582468))

(assert (=> bs!1178981 m!5931280))

(declare-fun m!5933550 () Bool)

(assert (=> bs!1178981 m!5933550))

(assert (=> bs!1178981 m!5931280))

(assert (=> bs!1178981 m!5932038))

(assert (=> d!1581968 d!1582468))

(assert (=> d!1581968 d!1581976))

(declare-fun d!1582470 () Bool)

(declare-fun res!2100809 () Bool)

(declare-fun e!3074517 () Bool)

(assert (=> d!1582470 (=> (not res!2100809) (not e!3074517))))

(assert (=> d!1582470 (= res!2100809 (= (csize!29938 (right!41629 (c!836549 input!5492))) (+ (size!37425 (left!41299 (right!41629 (c!836549 input!5492)))) (size!37425 (right!41629 (right!41629 (c!836549 input!5492)))))))))

(assert (=> d!1582470 (= (inv!73342 (right!41629 (c!836549 input!5492))) e!3074517)))

(declare-fun b!4919852 () Bool)

(declare-fun res!2100810 () Bool)

(assert (=> b!4919852 (=> (not res!2100810) (not e!3074517))))

(assert (=> b!4919852 (= res!2100810 (and (not (= (left!41299 (right!41629 (c!836549 input!5492))) Empty!14854)) (not (= (right!41629 (right!41629 (c!836549 input!5492))) Empty!14854))))))

(declare-fun b!4919853 () Bool)

(declare-fun res!2100811 () Bool)

(assert (=> b!4919853 (=> (not res!2100811) (not e!3074517))))

(assert (=> b!4919853 (= res!2100811 (= (cheight!15065 (right!41629 (c!836549 input!5492))) (+ (max!0 (height!1978 (left!41299 (right!41629 (c!836549 input!5492)))) (height!1978 (right!41629 (right!41629 (c!836549 input!5492))))) 1)))))

(declare-fun b!4919854 () Bool)

(assert (=> b!4919854 (= e!3074517 (<= 0 (cheight!15065 (right!41629 (c!836549 input!5492)))))))

(assert (= (and d!1582470 res!2100809) b!4919852))

(assert (= (and b!4919852 res!2100810) b!4919853))

(assert (= (and b!4919853 res!2100811) b!4919854))

(assert (=> d!1582470 m!5933464))

(assert (=> d!1582470 m!5932560))

(assert (=> b!4919853 m!5932232))

(assert (=> b!4919853 m!5932234))

(assert (=> b!4919853 m!5932232))

(assert (=> b!4919853 m!5932234))

(declare-fun m!5933552 () Bool)

(assert (=> b!4919853 m!5933552))

(assert (=> b!4918737 d!1582470))

(declare-fun d!1582472 () Bool)

(declare-fun c!837031 () Bool)

(assert (=> d!1582472 (= c!837031 ((_ is Node!14854) (left!41299 (left!41299 (c!836549 input!5492)))))))

(declare-fun e!3074518 () Bool)

(assert (=> d!1582472 (= (inv!73337 (left!41299 (left!41299 (c!836549 input!5492)))) e!3074518)))

(declare-fun b!4919855 () Bool)

(assert (=> b!4919855 (= e!3074518 (inv!73342 (left!41299 (left!41299 (c!836549 input!5492)))))))

(declare-fun b!4919856 () Bool)

(declare-fun e!3074519 () Bool)

(assert (=> b!4919856 (= e!3074518 e!3074519)))

(declare-fun res!2100812 () Bool)

(assert (=> b!4919856 (= res!2100812 (not ((_ is Leaf!24714) (left!41299 (left!41299 (c!836549 input!5492))))))))

(assert (=> b!4919856 (=> res!2100812 e!3074519)))

(declare-fun b!4919857 () Bool)

(assert (=> b!4919857 (= e!3074519 (inv!73343 (left!41299 (left!41299 (c!836549 input!5492)))))))

(assert (= (and d!1582472 c!837031) b!4919855))

(assert (= (and d!1582472 (not c!837031)) b!4919856))

(assert (= (and b!4919856 (not res!2100812)) b!4919857))

(declare-fun m!5933554 () Bool)

(assert (=> b!4919855 m!5933554))

(declare-fun m!5933556 () Bool)

(assert (=> b!4919857 m!5933556))

(assert (=> b!4919129 d!1582472))

(declare-fun d!1582474 () Bool)

(declare-fun c!837032 () Bool)

(assert (=> d!1582474 (= c!837032 ((_ is Node!14854) (right!41629 (left!41299 (c!836549 input!5492)))))))

(declare-fun e!3074520 () Bool)

(assert (=> d!1582474 (= (inv!73337 (right!41629 (left!41299 (c!836549 input!5492)))) e!3074520)))

(declare-fun b!4919858 () Bool)

(assert (=> b!4919858 (= e!3074520 (inv!73342 (right!41629 (left!41299 (c!836549 input!5492)))))))

(declare-fun b!4919859 () Bool)

(declare-fun e!3074521 () Bool)

(assert (=> b!4919859 (= e!3074520 e!3074521)))

(declare-fun res!2100813 () Bool)

(assert (=> b!4919859 (= res!2100813 (not ((_ is Leaf!24714) (right!41629 (left!41299 (c!836549 input!5492))))))))

(assert (=> b!4919859 (=> res!2100813 e!3074521)))

(declare-fun b!4919860 () Bool)

(assert (=> b!4919860 (= e!3074521 (inv!73343 (right!41629 (left!41299 (c!836549 input!5492)))))))

(assert (= (and d!1582474 c!837032) b!4919858))

(assert (= (and d!1582474 (not c!837032)) b!4919859))

(assert (= (and b!4919859 (not res!2100813)) b!4919860))

(declare-fun m!5933558 () Bool)

(assert (=> b!4919858 m!5933558))

(declare-fun m!5933560 () Bool)

(assert (=> b!4919860 m!5933560))

(assert (=> b!4919129 d!1582474))

(declare-fun b!4919861 () Bool)

(declare-fun e!3074523 () Int)

(declare-fun e!3074525 () Int)

(assert (=> b!4919861 (= e!3074523 e!3074525)))

(declare-fun c!837033 () Bool)

(declare-fun call!342156 () Int)

(assert (=> b!4919861 (= c!837033 (>= (- 0 1) call!342156))))

(declare-fun d!1582476 () Bool)

(declare-fun e!3074524 () Bool)

(assert (=> d!1582476 e!3074524))

(declare-fun res!2100814 () Bool)

(assert (=> d!1582476 (=> (not res!2100814) (not e!3074524))))

(declare-fun lt!2021102 () List!56771)

(assert (=> d!1582476 (= res!2100814 (= ((_ map implies) (content!10051 lt!2021102) (content!10051 (t!367195 lt!2020318))) ((as const (InoxSet C!26920)) true)))))

(declare-fun e!3074522 () List!56771)

(assert (=> d!1582476 (= lt!2021102 e!3074522)))

(declare-fun c!837035 () Bool)

(assert (=> d!1582476 (= c!837035 ((_ is Nil!56647) (t!367195 lt!2020318)))))

(assert (=> d!1582476 (= (drop!2209 (t!367195 lt!2020318) (- 0 1)) lt!2021102)))

(declare-fun b!4919862 () Bool)

(declare-fun e!3074526 () List!56771)

(assert (=> b!4919862 (= e!3074526 (t!367195 lt!2020318))))

(declare-fun b!4919863 () Bool)

(assert (=> b!4919863 (= e!3074523 call!342156)))

(declare-fun b!4919864 () Bool)

(assert (=> b!4919864 (= e!3074524 (= (size!37424 lt!2021102) e!3074523))))

(declare-fun c!837034 () Bool)

(assert (=> b!4919864 (= c!837034 (<= (- 0 1) 0))))

(declare-fun b!4919865 () Bool)

(assert (=> b!4919865 (= e!3074522 Nil!56647)))

(declare-fun b!4919866 () Bool)

(assert (=> b!4919866 (= e!3074526 (drop!2209 (t!367195 (t!367195 lt!2020318)) (- (- 0 1) 1)))))

(declare-fun b!4919867 () Bool)

(assert (=> b!4919867 (= e!3074525 0)))

(declare-fun b!4919868 () Bool)

(assert (=> b!4919868 (= e!3074525 (- call!342156 (- 0 1)))))

(declare-fun b!4919869 () Bool)

(assert (=> b!4919869 (= e!3074522 e!3074526)))

(declare-fun c!837036 () Bool)

(assert (=> b!4919869 (= c!837036 (<= (- 0 1) 0))))

(declare-fun bm!342151 () Bool)

(assert (=> bm!342151 (= call!342156 (size!37424 (t!367195 lt!2020318)))))

(assert (= (and d!1582476 c!837035) b!4919865))

(assert (= (and d!1582476 (not c!837035)) b!4919869))

(assert (= (and b!4919869 c!837036) b!4919862))

(assert (= (and b!4919869 (not c!837036)) b!4919866))

(assert (= (and d!1582476 res!2100814) b!4919864))

(assert (= (and b!4919864 c!837034) b!4919863))

(assert (= (and b!4919864 (not c!837034)) b!4919861))

(assert (= (and b!4919861 c!837033) b!4919867))

(assert (= (and b!4919861 (not c!837033)) b!4919868))

(assert (= (or b!4919863 b!4919861 b!4919868) bm!342151))

(declare-fun m!5933562 () Bool)

(assert (=> d!1582476 m!5933562))

(assert (=> d!1582476 m!5932698))

(declare-fun m!5933564 () Bool)

(assert (=> b!4919864 m!5933564))

(declare-fun m!5933566 () Bool)

(assert (=> b!4919866 m!5933566))

(assert (=> bm!342151 m!5932940))

(assert (=> b!4918708 d!1582476))

(declare-fun d!1582478 () Bool)

(declare-fun lt!2021104 () C!26920)

(assert (=> d!1582478 (= lt!2021104 (apply!13622 (list!17911 input!5492) (+ 0 1)))))

(assert (=> d!1582478 (= lt!2021104 (apply!13623 (c!836549 input!5492) (+ 0 1)))))

(declare-fun e!3074528 () Bool)

(assert (=> d!1582478 e!3074528))

(declare-fun res!2100816 () Bool)

(assert (=> d!1582478 (=> (not res!2100816) (not e!3074528))))

(assert (=> d!1582478 (= res!2100816 (<= 0 (+ 0 1)))))

(assert (=> d!1582478 (= (apply!13621 input!5492 (+ 0 1)) lt!2021104)))

(declare-fun b!4919871 () Bool)

(assert (=> b!4919871 (= e!3074528 (< (+ 0 1) (size!37421 input!5492)))))

(assert (= (and d!1582478 res!2100816) b!4919871))

(assert (=> d!1582478 m!5931280))

(assert (=> d!1582478 m!5931280))

(declare-fun m!5933574 () Bool)

(assert (=> d!1582478 m!5933574))

(declare-fun m!5933576 () Bool)

(assert (=> d!1582478 m!5933576))

(assert (=> b!4919871 m!5931282))

(assert (=> bm!341933 d!1582478))

(assert (=> d!1581976 d!1581958))

(assert (=> d!1581976 d!1581962))

(declare-fun d!1582482 () Bool)

(assert (=> d!1582482 (isPrefix!4945 Nil!56647 (++!12302 Nil!56647 lt!2020053))))

(assert (=> d!1582482 true))

(declare-fun _$46!1870 () Unit!146993)

(assert (=> d!1582482 (= (choose!36008 Nil!56647 lt!2020053) _$46!1870)))

(declare-fun bs!1178982 () Bool)

(assert (= bs!1178982 d!1582482))

(assert (=> bs!1178982 m!5931466))

(assert (=> bs!1178982 m!5931466))

(assert (=> bs!1178982 m!5931468))

(assert (=> d!1581976 d!1582482))

(assert (=> bm!341946 d!1582264))

(declare-fun b!4919881 () Bool)

(declare-fun res!2100823 () Bool)

(declare-fun e!3074534 () Bool)

(assert (=> b!4919881 (=> (not res!2100823) (not e!3074534))))

(assert (=> b!4919881 (= res!2100823 (not (isEmpty!30551 (left!41299 (left!41299 (right!41629 (c!836549 input!5492)))))))))

(declare-fun b!4919882 () Bool)

(assert (=> b!4919882 (= e!3074534 (not (isEmpty!30551 (right!41629 (left!41299 (right!41629 (c!836549 input!5492)))))))))

(declare-fun b!4919883 () Bool)

(declare-fun res!2100821 () Bool)

(assert (=> b!4919883 (=> (not res!2100821) (not e!3074534))))

(assert (=> b!4919883 (= res!2100821 (<= (- (height!1978 (left!41299 (left!41299 (right!41629 (c!836549 input!5492))))) (height!1978 (right!41629 (left!41299 (right!41629 (c!836549 input!5492)))))) 1))))

(declare-fun d!1582486 () Bool)

(declare-fun res!2100818 () Bool)

(declare-fun e!3074535 () Bool)

(assert (=> d!1582486 (=> res!2100818 e!3074535)))

(assert (=> d!1582486 (= res!2100818 (not ((_ is Node!14854) (left!41299 (right!41629 (c!836549 input!5492))))))))

(assert (=> d!1582486 (= (isBalanced!4070 (left!41299 (right!41629 (c!836549 input!5492)))) e!3074535)))

(declare-fun b!4919884 () Bool)

(declare-fun res!2100820 () Bool)

(assert (=> b!4919884 (=> (not res!2100820) (not e!3074534))))

(assert (=> b!4919884 (= res!2100820 (isBalanced!4070 (right!41629 (left!41299 (right!41629 (c!836549 input!5492))))))))

(declare-fun b!4919885 () Bool)

(declare-fun res!2100822 () Bool)

(assert (=> b!4919885 (=> (not res!2100822) (not e!3074534))))

(assert (=> b!4919885 (= res!2100822 (isBalanced!4070 (left!41299 (left!41299 (right!41629 (c!836549 input!5492))))))))

(declare-fun b!4919886 () Bool)

(assert (=> b!4919886 (= e!3074535 e!3074534)))

(declare-fun res!2100819 () Bool)

(assert (=> b!4919886 (=> (not res!2100819) (not e!3074534))))

(assert (=> b!4919886 (= res!2100819 (<= (- 1) (- (height!1978 (left!41299 (left!41299 (right!41629 (c!836549 input!5492))))) (height!1978 (right!41629 (left!41299 (right!41629 (c!836549 input!5492))))))))))

(assert (= (and d!1582486 (not res!2100818)) b!4919886))

(assert (= (and b!4919886 res!2100819) b!4919883))

(assert (= (and b!4919883 res!2100821) b!4919885))

(assert (= (and b!4919885 res!2100822) b!4919884))

(assert (= (and b!4919884 res!2100820) b!4919881))

(assert (= (and b!4919881 res!2100823) b!4919882))

(declare-fun m!5933586 () Bool)

(assert (=> b!4919884 m!5933586))

(declare-fun m!5933588 () Bool)

(assert (=> b!4919881 m!5933588))

(declare-fun m!5933590 () Bool)

(assert (=> b!4919886 m!5933590))

(declare-fun m!5933592 () Bool)

(assert (=> b!4919886 m!5933592))

(declare-fun m!5933594 () Bool)

(assert (=> b!4919882 m!5933594))

(assert (=> b!4919883 m!5933590))

(assert (=> b!4919883 m!5933592))

(declare-fun m!5933596 () Bool)

(assert (=> b!4919885 m!5933596))

(assert (=> b!4919055 d!1582486))

(declare-fun d!1582488 () Bool)

(declare-fun lt!2021106 () C!26920)

(assert (=> d!1582488 (contains!19452 (list!17911 input!5492) lt!2021106)))

(declare-fun e!3074537 () C!26920)

(assert (=> d!1582488 (= lt!2021106 e!3074537)))

(declare-fun c!837041 () Bool)

(assert (=> d!1582488 (= c!837041 (= 0 0))))

(declare-fun e!3074536 () Bool)

(assert (=> d!1582488 e!3074536))

(declare-fun res!2100824 () Bool)

(assert (=> d!1582488 (=> (not res!2100824) (not e!3074536))))

(assert (=> d!1582488 (= res!2100824 (<= 0 0))))

(assert (=> d!1582488 (= (apply!13622 (list!17911 input!5492) 0) lt!2021106)))

(declare-fun b!4919887 () Bool)

(assert (=> b!4919887 (= e!3074536 (< 0 (size!37424 (list!17911 input!5492))))))

(declare-fun b!4919888 () Bool)

(assert (=> b!4919888 (= e!3074537 (head!10505 (list!17911 input!5492)))))

(declare-fun b!4919889 () Bool)

(assert (=> b!4919889 (= e!3074537 (apply!13622 (tail!9652 (list!17911 input!5492)) (- 0 1)))))

(assert (= (and d!1582488 res!2100824) b!4919887))

(assert (= (and d!1582488 c!837041) b!4919888))

(assert (= (and d!1582488 (not c!837041)) b!4919889))

(assert (=> d!1582488 m!5931280))

(declare-fun m!5933598 () Bool)

(assert (=> d!1582488 m!5933598))

(assert (=> b!4919887 m!5931280))

(assert (=> b!4919887 m!5931492))

(assert (=> b!4919888 m!5931280))

(assert (=> b!4919888 m!5932848))

(assert (=> b!4919889 m!5931280))

(assert (=> b!4919889 m!5932032))

(assert (=> b!4919889 m!5932032))

(declare-fun m!5933600 () Bool)

(assert (=> b!4919889 m!5933600))

(assert (=> d!1581830 d!1582488))

(assert (=> d!1581830 d!1581818))

(declare-fun bm!342155 () Bool)

(declare-fun c!837055 () Bool)

(declare-fun c!837054 () Bool)

(assert (=> bm!342155 (= c!837055 c!837054)))

(declare-fun e!3074567 () Int)

(declare-fun call!342160 () C!26920)

(assert (=> bm!342155 (= call!342160 (apply!13623 (ite c!837054 (left!41299 (c!836549 input!5492)) (right!41629 (c!836549 input!5492))) e!3074567))))

(declare-fun d!1582490 () Bool)

(declare-fun lt!2021119 () C!26920)

(assert (=> d!1582490 (= lt!2021119 (apply!13622 (list!17913 (c!836549 input!5492)) 0))))

(declare-fun e!3074564 () C!26920)

(assert (=> d!1582490 (= lt!2021119 e!3074564)))

(declare-fun c!837053 () Bool)

(assert (=> d!1582490 (= c!837053 ((_ is Leaf!24714) (c!836549 input!5492)))))

(declare-fun e!3074565 () Bool)

(assert (=> d!1582490 e!3074565))

(declare-fun res!2100843 () Bool)

(assert (=> d!1582490 (=> (not res!2100843) (not e!3074565))))

(assert (=> d!1582490 (= res!2100843 (<= 0 0))))

(assert (=> d!1582490 (= (apply!13623 (c!836549 input!5492) 0) lt!2021119)))

(declare-fun b!4919930 () Bool)

(assert (=> b!4919930 (= e!3074567 (- 0 (size!37425 (left!41299 (c!836549 input!5492)))))))

(declare-fun b!4919931 () Bool)

(assert (=> b!4919931 (= e!3074565 (< 0 (size!37425 (c!836549 input!5492))))))

(declare-fun b!4919932 () Bool)

(declare-fun apply!13626 (IArray!29769 Int) C!26920)

(assert (=> b!4919932 (= e!3074564 (apply!13626 (xs!18172 (c!836549 input!5492)) 0))))

(declare-fun b!4919933 () Bool)

(assert (=> b!4919933 (= e!3074567 0)))

(declare-fun b!4919934 () Bool)

(declare-fun e!3074566 () C!26920)

(assert (=> b!4919934 (= e!3074566 call!342160)))

(declare-fun b!4919935 () Bool)

(assert (=> b!4919935 (= e!3074566 call!342160)))

(declare-fun b!4919936 () Bool)

(assert (=> b!4919936 (= e!3074564 e!3074566)))

(declare-fun lt!2021120 () Bool)

(declare-fun appendIndex!375 (List!56771 List!56771 Int) Bool)

(assert (=> b!4919936 (= lt!2021120 (appendIndex!375 (list!17913 (left!41299 (c!836549 input!5492))) (list!17913 (right!41629 (c!836549 input!5492))) 0))))

(assert (=> b!4919936 (= c!837054 (< 0 (size!37425 (left!41299 (c!836549 input!5492)))))))

(assert (= (and d!1582490 res!2100843) b!4919931))

(assert (= (and d!1582490 c!837053) b!4919932))

(assert (= (and d!1582490 (not c!837053)) b!4919936))

(assert (= (and b!4919936 c!837054) b!4919934))

(assert (= (and b!4919936 (not c!837054)) b!4919935))

(assert (= (or b!4919934 b!4919935) bm!342155))

(assert (= (and bm!342155 c!837055) b!4919933))

(assert (= (and bm!342155 (not c!837055)) b!4919930))

(declare-fun m!5933652 () Bool)

(assert (=> b!4919932 m!5933652))

(assert (=> d!1582490 m!5931498))

(assert (=> d!1582490 m!5931498))

(declare-fun m!5933654 () Bool)

(assert (=> d!1582490 m!5933654))

(assert (=> b!4919936 m!5931612))

(assert (=> b!4919936 m!5931930))

(assert (=> b!4919936 m!5931612))

(assert (=> b!4919936 m!5931930))

(declare-fun m!5933656 () Bool)

(assert (=> b!4919936 m!5933656))

(assert (=> b!4919936 m!5931616))

(declare-fun m!5933658 () Bool)

(assert (=> bm!342155 m!5933658))

(assert (=> b!4919931 m!5931494))

(assert (=> b!4919930 m!5931616))

(assert (=> d!1581830 d!1582490))

(declare-fun d!1582514 () Bool)

(declare-fun lt!2021121 () Int)

(assert (=> d!1582514 (>= lt!2021121 0)))

(declare-fun e!3074570 () Int)

(assert (=> d!1582514 (= lt!2021121 e!3074570)))

(declare-fun c!837056 () Bool)

(assert (=> d!1582514 (= c!837056 ((_ is Nil!56647) (++!12302 Nil!56647 lt!2020053)))))

(assert (=> d!1582514 (= (size!37424 (++!12302 Nil!56647 lt!2020053)) lt!2021121)))

(declare-fun b!4919943 () Bool)

(assert (=> b!4919943 (= e!3074570 0)))

(declare-fun b!4919944 () Bool)

(assert (=> b!4919944 (= e!3074570 (+ 1 (size!37424 (t!367195 (++!12302 Nil!56647 lt!2020053)))))))

(assert (= (and d!1582514 c!837056) b!4919943))

(assert (= (and d!1582514 (not c!837056)) b!4919944))

(declare-fun m!5933666 () Bool)

(assert (=> b!4919944 m!5933666))

(assert (=> b!4918793 d!1582514))

(assert (=> b!4918793 d!1581892))

(declare-fun d!1582516 () Bool)

(assert (=> d!1582516 (= lt!2020053 lt!2020279)))

(assert (=> d!1582516 true))

(declare-fun _$63!1170 () Unit!146993)

(assert (=> d!1582516 (= (choose!36007 Nil!56647 lt!2020053 Nil!56647 lt!2020279 (list!17911 input!5492)) _$63!1170)))

(assert (=> d!1581966 d!1582516))

(declare-fun b!4919949 () Bool)

(declare-fun e!3074576 () Bool)

(declare-fun e!3074575 () Bool)

(assert (=> b!4919949 (= e!3074576 e!3074575)))

(declare-fun res!2100857 () Bool)

(assert (=> b!4919949 (=> (not res!2100857) (not e!3074575))))

(assert (=> b!4919949 (= res!2100857 (not ((_ is Nil!56647) (list!17911 input!5492))))))

(declare-fun b!4919951 () Bool)

(assert (=> b!4919951 (= e!3074575 (isPrefix!4945 (tail!9652 Nil!56647) (tail!9652 (list!17911 input!5492))))))

(declare-fun b!4919952 () Bool)

(declare-fun e!3074574 () Bool)

(assert (=> b!4919952 (= e!3074574 (>= (size!37424 (list!17911 input!5492)) (size!37424 Nil!56647)))))

(declare-fun d!1582520 () Bool)

(assert (=> d!1582520 e!3074574))

(declare-fun res!2100856 () Bool)

(assert (=> d!1582520 (=> res!2100856 e!3074574)))

(declare-fun lt!2021123 () Bool)

(assert (=> d!1582520 (= res!2100856 (not lt!2021123))))

(assert (=> d!1582520 (= lt!2021123 e!3074576)))

(declare-fun res!2100855 () Bool)

(assert (=> d!1582520 (=> res!2100855 e!3074576)))

(assert (=> d!1582520 (= res!2100855 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1582520 (= (isPrefix!4945 Nil!56647 (list!17911 input!5492)) lt!2021123)))

(declare-fun b!4919950 () Bool)

(declare-fun res!2100854 () Bool)

(assert (=> b!4919950 (=> (not res!2100854) (not e!3074575))))

(assert (=> b!4919950 (= res!2100854 (= (head!10505 Nil!56647) (head!10505 (list!17911 input!5492))))))

(assert (= (and d!1582520 (not res!2100855)) b!4919949))

(assert (= (and b!4919949 res!2100857) b!4919950))

(assert (= (and b!4919950 res!2100854) b!4919951))

(assert (= (and d!1582520 (not res!2100856)) b!4919952))

(assert (=> b!4919951 m!5931996))

(assert (=> b!4919951 m!5931280))

(assert (=> b!4919951 m!5932032))

(assert (=> b!4919951 m!5931996))

(assert (=> b!4919951 m!5932032))

(declare-fun m!5933678 () Bool)

(assert (=> b!4919951 m!5933678))

(assert (=> b!4919952 m!5931280))

(assert (=> b!4919952 m!5931492))

(assert (=> b!4919952 m!5931462))

(assert (=> b!4919950 m!5932014))

(assert (=> b!4919950 m!5931280))

(assert (=> b!4919950 m!5932848))

(assert (=> d!1581966 d!1582520))

(assert (=> b!4918909 d!1581892))

(declare-fun d!1582524 () Bool)

(assert (=> d!1582524 (= (++!12302 (++!12302 Nil!56647 (Cons!56647 lt!2020663 Nil!56647)) lt!2020669) (list!17911 input!5492))))

(declare-fun lt!2021125 () Unit!146993)

(assert (=> d!1582524 (= lt!2021125 (choose!36000 Nil!56647 lt!2020663 lt!2020669 (list!17911 input!5492)))))

(assert (=> d!1582524 (= (++!12302 Nil!56647 (Cons!56647 lt!2020663 lt!2020669)) (list!17911 input!5492))))

(assert (=> d!1582524 (= (lemmaMoveElementToOtherListKeepsConcatEq!1376 Nil!56647 lt!2020663 lt!2020669 (list!17911 input!5492)) lt!2021125)))

(declare-fun bs!1178990 () Bool)

(assert (= bs!1178990 d!1582524))

(assert (=> bs!1178990 m!5932112))

(assert (=> bs!1178990 m!5932112))

(assert (=> bs!1178990 m!5932114))

(assert (=> bs!1178990 m!5931280))

(declare-fun m!5933682 () Bool)

(assert (=> bs!1178990 m!5933682))

(declare-fun m!5933684 () Bool)

(assert (=> bs!1178990 m!5933684))

(assert (=> b!4918909 d!1582524))

(assert (=> b!4918909 d!1581964))

(declare-fun b!4919955 () Bool)

(declare-fun e!3074578 () List!56771)

(assert (=> b!4919955 (= e!3074578 (Cons!56647 lt!2020663 Nil!56647))))

(declare-fun b!4919957 () Bool)

(declare-fun res!2100858 () Bool)

(declare-fun e!3074579 () Bool)

(assert (=> b!4919957 (=> (not res!2100858) (not e!3074579))))

(declare-fun lt!2021126 () List!56771)

(assert (=> b!4919957 (= res!2100858 (= (size!37424 lt!2021126) (+ (size!37424 Nil!56647) (size!37424 (Cons!56647 lt!2020663 Nil!56647)))))))

(declare-fun b!4919956 () Bool)

(assert (=> b!4919956 (= e!3074578 (Cons!56647 (h!63095 Nil!56647) (++!12302 (t!367195 Nil!56647) (Cons!56647 lt!2020663 Nil!56647))))))

(declare-fun d!1582528 () Bool)

(assert (=> d!1582528 e!3074579))

(declare-fun res!2100859 () Bool)

(assert (=> d!1582528 (=> (not res!2100859) (not e!3074579))))

(assert (=> d!1582528 (= res!2100859 (= (content!10051 lt!2021126) ((_ map or) (content!10051 Nil!56647) (content!10051 (Cons!56647 lt!2020663 Nil!56647)))))))

(assert (=> d!1582528 (= lt!2021126 e!3074578)))

(declare-fun c!837058 () Bool)

(assert (=> d!1582528 (= c!837058 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1582528 (= (++!12302 Nil!56647 (Cons!56647 lt!2020663 Nil!56647)) lt!2021126)))

(declare-fun b!4919958 () Bool)

(assert (=> b!4919958 (= e!3074579 (or (not (= (Cons!56647 lt!2020663 Nil!56647) Nil!56647)) (= lt!2021126 Nil!56647)))))

(assert (= (and d!1582528 c!837058) b!4919955))

(assert (= (and d!1582528 (not c!837058)) b!4919956))

(assert (= (and d!1582528 res!2100859) b!4919957))

(assert (= (and b!4919957 res!2100858) b!4919958))

(declare-fun m!5933690 () Bool)

(assert (=> b!4919957 m!5933690))

(assert (=> b!4919957 m!5931462))

(declare-fun m!5933692 () Bool)

(assert (=> b!4919957 m!5933692))

(declare-fun m!5933694 () Bool)

(assert (=> b!4919956 m!5933694))

(declare-fun m!5933696 () Bool)

(assert (=> d!1582528 m!5933696))

(assert (=> d!1582528 m!5931742))

(declare-fun m!5933698 () Bool)

(assert (=> d!1582528 m!5933698))

(assert (=> b!4918909 d!1582528))

(declare-fun b!4919959 () Bool)

(declare-fun e!3074580 () List!56771)

(assert (=> b!4919959 (= e!3074580 lt!2020669)))

(declare-fun b!4919961 () Bool)

(declare-fun res!2100860 () Bool)

(declare-fun e!3074581 () Bool)

(assert (=> b!4919961 (=> (not res!2100860) (not e!3074581))))

(declare-fun lt!2021127 () List!56771)

(assert (=> b!4919961 (= res!2100860 (= (size!37424 lt!2021127) (+ (size!37424 (++!12302 Nil!56647 (Cons!56647 lt!2020663 Nil!56647))) (size!37424 lt!2020669))))))

(declare-fun b!4919960 () Bool)

(assert (=> b!4919960 (= e!3074580 (Cons!56647 (h!63095 (++!12302 Nil!56647 (Cons!56647 lt!2020663 Nil!56647))) (++!12302 (t!367195 (++!12302 Nil!56647 (Cons!56647 lt!2020663 Nil!56647))) lt!2020669)))))

(declare-fun d!1582532 () Bool)

(assert (=> d!1582532 e!3074581))

(declare-fun res!2100861 () Bool)

(assert (=> d!1582532 (=> (not res!2100861) (not e!3074581))))

(assert (=> d!1582532 (= res!2100861 (= (content!10051 lt!2021127) ((_ map or) (content!10051 (++!12302 Nil!56647 (Cons!56647 lt!2020663 Nil!56647))) (content!10051 lt!2020669))))))

(assert (=> d!1582532 (= lt!2021127 e!3074580)))

(declare-fun c!837059 () Bool)

(assert (=> d!1582532 (= c!837059 ((_ is Nil!56647) (++!12302 Nil!56647 (Cons!56647 lt!2020663 Nil!56647))))))

(assert (=> d!1582532 (= (++!12302 (++!12302 Nil!56647 (Cons!56647 lt!2020663 Nil!56647)) lt!2020669) lt!2021127)))

(declare-fun b!4919962 () Bool)

(assert (=> b!4919962 (= e!3074581 (or (not (= lt!2020669 Nil!56647)) (= lt!2021127 (++!12302 Nil!56647 (Cons!56647 lt!2020663 Nil!56647)))))))

(assert (= (and d!1582532 c!837059) b!4919959))

(assert (= (and d!1582532 (not c!837059)) b!4919960))

(assert (= (and d!1582532 res!2100861) b!4919961))

(assert (= (and b!4919961 res!2100860) b!4919962))

(declare-fun m!5933700 () Bool)

(assert (=> b!4919961 m!5933700))

(assert (=> b!4919961 m!5932112))

(declare-fun m!5933702 () Bool)

(assert (=> b!4919961 m!5933702))

(declare-fun m!5933704 () Bool)

(assert (=> b!4919961 m!5933704))

(declare-fun m!5933706 () Bool)

(assert (=> b!4919960 m!5933706))

(declare-fun m!5933708 () Bool)

(assert (=> d!1582532 m!5933708))

(assert (=> d!1582532 m!5932112))

(declare-fun m!5933710 () Bool)

(assert (=> d!1582532 m!5933710))

(declare-fun m!5933712 () Bool)

(assert (=> d!1582532 m!5933712))

(assert (=> b!4918909 d!1582532))

(assert (=> b!4918909 d!1581880))

(declare-fun d!1582536 () Bool)

(assert (=> d!1582536 (<= (size!37424 Nil!56647) (size!37424 (list!17911 input!5492)))))

(declare-fun lt!2021128 () Unit!146993)

(assert (=> d!1582536 (= lt!2021128 (choose!35995 Nil!56647 (list!17911 input!5492)))))

(assert (=> d!1582536 (isPrefix!4945 Nil!56647 (list!17911 input!5492))))

(assert (=> d!1582536 (= (lemmaIsPrefixThenSmallerEqSize!670 Nil!56647 (list!17911 input!5492)) lt!2021128)))

(declare-fun bs!1178991 () Bool)

(assert (= bs!1178991 d!1582536))

(assert (=> bs!1178991 m!5931462))

(assert (=> bs!1178991 m!5931280))

(assert (=> bs!1178991 m!5931492))

(assert (=> bs!1178991 m!5931280))

(declare-fun m!5933716 () Bool)

(assert (=> bs!1178991 m!5933716))

(assert (=> bs!1178991 m!5931280))

(assert (=> bs!1178991 m!5932038))

(assert (=> b!4918909 d!1582536))

(assert (=> b!4918909 d!1581984))

(declare-fun b!4919971 () Bool)

(declare-fun e!3074587 () Bool)

(declare-fun e!3074586 () Bool)

(assert (=> b!4919971 (= e!3074587 e!3074586)))

(declare-fun res!2100871 () Bool)

(assert (=> b!4919971 (=> (not res!2100871) (not e!3074586))))

(assert (=> b!4919971 (= res!2100871 (not ((_ is Nil!56647) (list!17911 input!5492))))))

(declare-fun b!4919973 () Bool)

(assert (=> b!4919973 (= e!3074586 (isPrefix!4945 (tail!9652 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) Nil!56647))) (tail!9652 (list!17911 input!5492))))))

(declare-fun b!4919974 () Bool)

(declare-fun e!3074585 () Bool)

(assert (=> b!4919974 (= e!3074585 (>= (size!37424 (list!17911 input!5492)) (size!37424 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) Nil!56647)))))))

(declare-fun d!1582540 () Bool)

(assert (=> d!1582540 e!3074585))

(declare-fun res!2100870 () Bool)

(assert (=> d!1582540 (=> res!2100870 e!3074585)))

(declare-fun lt!2021129 () Bool)

(assert (=> d!1582540 (= res!2100870 (not lt!2021129))))

(assert (=> d!1582540 (= lt!2021129 e!3074587)))

(declare-fun res!2100869 () Bool)

(assert (=> d!1582540 (=> res!2100869 e!3074587)))

(assert (=> d!1582540 (= res!2100869 ((_ is Nil!56647) (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) Nil!56647))))))

(assert (=> d!1582540 (= (isPrefix!4945 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) Nil!56647)) (list!17911 input!5492)) lt!2021129)))

(declare-fun b!4919972 () Bool)

(declare-fun res!2100868 () Bool)

(assert (=> b!4919972 (=> (not res!2100868) (not e!3074586))))

(assert (=> b!4919972 (= res!2100868 (= (head!10505 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) Nil!56647))) (head!10505 (list!17911 input!5492))))))

(assert (= (and d!1582540 (not res!2100869)) b!4919971))

(assert (= (and b!4919971 res!2100871) b!4919972))

(assert (= (and b!4919972 res!2100868) b!4919973))

(assert (= (and d!1582540 (not res!2100870)) b!4919974))

(assert (=> b!4919973 m!5932116))

(declare-fun m!5933720 () Bool)

(assert (=> b!4919973 m!5933720))

(assert (=> b!4919973 m!5931280))

(assert (=> b!4919973 m!5932032))

(assert (=> b!4919973 m!5933720))

(assert (=> b!4919973 m!5932032))

(declare-fun m!5933722 () Bool)

(assert (=> b!4919973 m!5933722))

(assert (=> b!4919974 m!5931280))

(assert (=> b!4919974 m!5931492))

(assert (=> b!4919974 m!5932116))

(declare-fun m!5933724 () Bool)

(assert (=> b!4919974 m!5933724))

(assert (=> b!4919972 m!5932116))

(declare-fun m!5933726 () Bool)

(assert (=> b!4919972 m!5933726))

(assert (=> b!4919972 m!5931280))

(assert (=> b!4919972 m!5932848))

(assert (=> b!4918909 d!1582540))

(assert (=> b!4918909 d!1582154))

(declare-fun d!1582542 () Bool)

(assert (=> d!1582542 (isPrefix!4945 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) Nil!56647)) (list!17911 input!5492))))

(declare-fun lt!2021130 () Unit!146993)

(assert (=> d!1582542 (= lt!2021130 (choose!35999 Nil!56647 (list!17911 input!5492)))))

(assert (=> d!1582542 (isPrefix!4945 Nil!56647 (list!17911 input!5492))))

(assert (=> d!1582542 (= (lemmaAddHeadSuffixToPrefixStillPrefix!758 Nil!56647 (list!17911 input!5492)) lt!2021130)))

(declare-fun bs!1178992 () Bool)

(assert (= bs!1178992 d!1582542))

(assert (=> bs!1178992 m!5932116))

(assert (=> bs!1178992 m!5931280))

(assert (=> bs!1178992 m!5932118))

(assert (=> bs!1178992 m!5932116))

(assert (=> bs!1178992 m!5931280))

(assert (=> bs!1178992 m!5931470))

(assert (=> bs!1178992 m!5931280))

(assert (=> bs!1178992 m!5932038))

(assert (=> bs!1178992 m!5931280))

(declare-fun m!5933740 () Bool)

(assert (=> bs!1178992 m!5933740))

(assert (=> bs!1178992 m!5931470))

(assert (=> bs!1178992 m!5932108))

(assert (=> b!4918909 d!1582542))

(declare-fun d!1582546 () Bool)

(assert (=> d!1582546 (= (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) (h!63095 (getSuffix!2933 (list!17911 input!5492) Nil!56647)))))

(assert (=> b!4918909 d!1582546))

(declare-fun b!4919977 () Bool)

(declare-fun e!3074589 () List!56771)

(assert (=> b!4919977 (= e!3074589 (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) Nil!56647))))

(declare-fun b!4919979 () Bool)

(declare-fun res!2100872 () Bool)

(declare-fun e!3074590 () Bool)

(assert (=> b!4919979 (=> (not res!2100872) (not e!3074590))))

(declare-fun lt!2021132 () List!56771)

(assert (=> b!4919979 (= res!2100872 (= (size!37424 lt!2021132) (+ (size!37424 Nil!56647) (size!37424 (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) Nil!56647)))))))

(declare-fun b!4919978 () Bool)

(assert (=> b!4919978 (= e!3074589 (Cons!56647 (h!63095 Nil!56647) (++!12302 (t!367195 Nil!56647) (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) Nil!56647))))))

(declare-fun d!1582548 () Bool)

(assert (=> d!1582548 e!3074590))

(declare-fun res!2100873 () Bool)

(assert (=> d!1582548 (=> (not res!2100873) (not e!3074590))))

(assert (=> d!1582548 (= res!2100873 (= (content!10051 lt!2021132) ((_ map or) (content!10051 Nil!56647) (content!10051 (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) Nil!56647)))))))

(assert (=> d!1582548 (= lt!2021132 e!3074589)))

(declare-fun c!837062 () Bool)

(assert (=> d!1582548 (= c!837062 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1582548 (= (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) Nil!56647)) lt!2021132)))

(declare-fun b!4919980 () Bool)

(assert (=> b!4919980 (= e!3074590 (or (not (= (Cons!56647 (head!10505 (getSuffix!2933 (list!17911 input!5492) Nil!56647)) Nil!56647) Nil!56647)) (= lt!2021132 Nil!56647)))))

(assert (= (and d!1582548 c!837062) b!4919977))

(assert (= (and d!1582548 (not c!837062)) b!4919978))

(assert (= (and d!1582548 res!2100873) b!4919979))

(assert (= (and b!4919979 res!2100872) b!4919980))

(declare-fun m!5933744 () Bool)

(assert (=> b!4919979 m!5933744))

(assert (=> b!4919979 m!5931462))

(declare-fun m!5933746 () Bool)

(assert (=> b!4919979 m!5933746))

(declare-fun m!5933748 () Bool)

(assert (=> b!4919978 m!5933748))

(declare-fun m!5933750 () Bool)

(assert (=> d!1582548 m!5933750))

(assert (=> d!1582548 m!5931742))

(declare-fun m!5933752 () Bool)

(assert (=> d!1582548 m!5933752))

(assert (=> b!4918909 d!1582548))

(declare-fun b!4919985 () Bool)

(declare-fun e!3074593 () List!56771)

(assert (=> b!4919985 (= e!3074593 (Cons!56647 (head!10505 lt!2020053) Nil!56647))))

(declare-fun b!4919987 () Bool)

(declare-fun res!2100876 () Bool)

(declare-fun e!3074594 () Bool)

(assert (=> b!4919987 (=> (not res!2100876) (not e!3074594))))

(declare-fun lt!2021134 () List!56771)

(assert (=> b!4919987 (= res!2100876 (= (size!37424 lt!2021134) (+ (size!37424 Nil!56647) (size!37424 (Cons!56647 (head!10505 lt!2020053) Nil!56647)))))))

(declare-fun b!4919986 () Bool)

(assert (=> b!4919986 (= e!3074593 (Cons!56647 (h!63095 Nil!56647) (++!12302 (t!367195 Nil!56647) (Cons!56647 (head!10505 lt!2020053) Nil!56647))))))

(declare-fun d!1582552 () Bool)

(assert (=> d!1582552 e!3074594))

(declare-fun res!2100877 () Bool)

(assert (=> d!1582552 (=> (not res!2100877) (not e!3074594))))

(assert (=> d!1582552 (= res!2100877 (= (content!10051 lt!2021134) ((_ map or) (content!10051 Nil!56647) (content!10051 (Cons!56647 (head!10505 lt!2020053) Nil!56647)))))))

(assert (=> d!1582552 (= lt!2021134 e!3074593)))

(declare-fun c!837064 () Bool)

(assert (=> d!1582552 (= c!837064 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1582552 (= (++!12302 Nil!56647 (Cons!56647 (head!10505 lt!2020053) Nil!56647)) lt!2021134)))

(declare-fun b!4919988 () Bool)

(assert (=> b!4919988 (= e!3074594 (or (not (= (Cons!56647 (head!10505 lt!2020053) Nil!56647) Nil!56647)) (= lt!2021134 Nil!56647)))))

(assert (= (and d!1582552 c!837064) b!4919985))

(assert (= (and d!1582552 (not c!837064)) b!4919986))

(assert (= (and d!1582552 res!2100877) b!4919987))

(assert (= (and b!4919987 res!2100876) b!4919988))

(declare-fun m!5933766 () Bool)

(assert (=> b!4919987 m!5933766))

(assert (=> b!4919987 m!5931462))

(declare-fun m!5933768 () Bool)

(assert (=> b!4919987 m!5933768))

(declare-fun m!5933770 () Bool)

(assert (=> b!4919986 m!5933770))

(declare-fun m!5933772 () Bool)

(assert (=> d!1582552 m!5933772))

(assert (=> d!1582552 m!5931742))

(declare-fun m!5933774 () Bool)

(assert (=> d!1582552 m!5933774))

(assert (=> b!4918909 d!1582552))

(declare-fun bs!1178993 () Bool)

(declare-fun d!1582556 () Bool)

(assert (= bs!1178993 (and d!1582556 d!1582066)))

(declare-fun lambda!245054 () Int)

(assert (=> bs!1178993 (not (= lambda!245054 lambda!245037))))

(declare-fun bs!1178994 () Bool)

(assert (= bs!1178994 (and d!1582556 b!4919466)))

(assert (=> bs!1178994 (not (= lambda!245054 lambda!245045))))

(declare-fun bs!1178995 () Bool)

(assert (= bs!1178995 (and d!1582556 b!4918781)))

(assert (=> bs!1178995 (not (= lambda!245054 lambda!245005))))

(declare-fun bs!1178996 () Bool)

(assert (= bs!1178996 (and d!1582556 d!1582138)))

(assert (=> bs!1178996 (not (= lambda!245054 lambda!245042))))

(declare-fun bs!1178997 () Bool)

(assert (= bs!1178997 (and d!1582556 d!1582406)))

(assert (=> bs!1178997 (not (= lambda!245054 lambda!245052))))

(declare-fun bs!1178998 () Bool)

(assert (= bs!1178998 (and d!1582556 d!1582222)))

(assert (=> bs!1178998 (not (= lambda!245054 lambda!245043))))

(declare-fun bs!1178999 () Bool)

(assert (= bs!1178999 (and d!1582556 d!1581832)))

(assert (=> bs!1178999 (= lambda!245054 lambda!244989)))

(declare-fun bs!1179000 () Bool)

(assert (= bs!1179000 (and d!1582556 d!1582268)))

(assert (=> bs!1179000 (not (= lambda!245054 lambda!245048))))

(declare-fun bs!1179001 () Bool)

(assert (= bs!1179001 (and d!1582556 d!1581946)))

(assert (=> bs!1179001 (not (= lambda!245054 lambda!245003))))

(declare-fun bs!1179002 () Bool)

(assert (= bs!1179002 (and d!1582556 b!4918780)))

(assert (=> bs!1179002 (not (= lambda!245054 lambda!245004))))

(declare-fun bs!1179003 () Bool)

(assert (= bs!1179003 (and d!1582556 b!4919465)))

(assert (=> bs!1179003 (not (= lambda!245054 lambda!245044))))

(assert (=> d!1582556 (= (nullableZipper!795 call!341924) (exists!1238 call!341924 lambda!245054))))

(declare-fun bs!1179004 () Bool)

(assert (= bs!1179004 d!1582556))

(declare-fun m!5933776 () Bool)

(assert (=> bs!1179004 m!5933776))

(assert (=> bm!341924 d!1582556))

(declare-fun d!1582558 () Bool)

(declare-fun lt!2021135 () Bool)

(assert (=> d!1582558 (= lt!2021135 (isEmpty!30552 (list!17913 (right!41629 (left!41299 (c!836549 input!5492))))))))

(assert (=> d!1582558 (= lt!2021135 (= (size!37425 (right!41629 (left!41299 (c!836549 input!5492)))) 0))))

(assert (=> d!1582558 (= (isEmpty!30551 (right!41629 (left!41299 (c!836549 input!5492)))) lt!2021135)))

(declare-fun bs!1179005 () Bool)

(assert (= bs!1179005 d!1582558))

(assert (=> bs!1179005 m!5932546))

(assert (=> bs!1179005 m!5932546))

(declare-fun m!5933778 () Bool)

(assert (=> bs!1179005 m!5933778))

(assert (=> bs!1179005 m!5932704))

(assert (=> b!4919058 d!1582558))

(declare-fun d!1582562 () Bool)

(assert (=> d!1582562 (= (isEmpty!30552 (list!17913 (left!41299 (c!836549 input!5492)))) ((_ is Nil!56647) (list!17913 (left!41299 (c!836549 input!5492)))))))

(assert (=> d!1581836 d!1582562))

(assert (=> d!1581836 d!1582084))

(assert (=> d!1581836 d!1582110))

(declare-fun d!1582564 () Bool)

(assert (=> d!1582564 (= (ite c!836598 lt!2020330 lt!2020337) call!341923)))

(declare-fun lt!2021137 () Unit!146993)

(assert (=> d!1582564 (= lt!2021137 (choose!35994 (ite c!836598 lt!2020330 lt!2020337) call!341923 e!3073803))))

(assert (=> d!1582564 (isPrefix!4945 (ite c!836598 lt!2020330 lt!2020337) e!3073803)))

(assert (=> d!1582564 (= (lemmaIsPrefixSameLengthThenSameList!1104 (ite c!836598 lt!2020330 lt!2020337) call!341923 e!3073803) lt!2021137)))

(declare-fun bs!1179006 () Bool)

(assert (= bs!1179006 d!1582564))

(declare-fun m!5933780 () Bool)

(assert (=> bs!1179006 m!5933780))

(declare-fun m!5933782 () Bool)

(assert (=> bs!1179006 m!5933782))

(assert (=> bm!341926 d!1582564))

(assert (=> b!4919062 d!1582122))

(assert (=> b!4919062 d!1582124))

(declare-fun d!1582566 () Bool)

(declare-fun c!837065 () Bool)

(assert (=> d!1582566 (= c!837065 ((_ is Nil!56647) lt!2020493))))

(declare-fun e!3074598 () (InoxSet C!26920))

(assert (=> d!1582566 (= (content!10051 lt!2020493) e!3074598)))

(declare-fun b!4919993 () Bool)

(assert (=> b!4919993 (= e!3074598 ((as const (Array C!26920 Bool)) false))))

(declare-fun b!4919994 () Bool)

(assert (=> b!4919994 (= e!3074598 ((_ map or) (store ((as const (Array C!26920 Bool)) false) (h!63095 lt!2020493) true) (content!10051 (t!367195 lt!2020493))))))

(assert (= (and d!1582566 c!837065) b!4919993))

(assert (= (and d!1582566 (not c!837065)) b!4919994))

(declare-fun m!5933784 () Bool)

(assert (=> b!4919994 m!5933784))

(declare-fun m!5933786 () Bool)

(assert (=> b!4919994 m!5933786))

(assert (=> d!1581936 d!1582566))

(assert (=> d!1581936 d!1582168))

(declare-fun d!1582568 () Bool)

(declare-fun c!837066 () Bool)

(assert (=> d!1582568 (= c!837066 ((_ is Nil!56647) (Cons!56647 call!341927 Nil!56647)))))

(declare-fun e!3074599 () (InoxSet C!26920))

(assert (=> d!1582568 (= (content!10051 (Cons!56647 call!341927 Nil!56647)) e!3074599)))

(declare-fun b!4919995 () Bool)

(assert (=> b!4919995 (= e!3074599 ((as const (Array C!26920 Bool)) false))))

(declare-fun b!4919996 () Bool)

(assert (=> b!4919996 (= e!3074599 ((_ map or) (store ((as const (Array C!26920 Bool)) false) (h!63095 (Cons!56647 call!341927 Nil!56647)) true) (content!10051 (t!367195 (Cons!56647 call!341927 Nil!56647)))))))

(assert (= (and d!1582568 c!837066) b!4919995))

(assert (= (and d!1582568 (not c!837066)) b!4919996))

(declare-fun m!5933790 () Bool)

(assert (=> b!4919996 m!5933790))

(declare-fun m!5933792 () Bool)

(assert (=> b!4919996 m!5933792))

(assert (=> d!1581936 d!1582568))

(declare-fun d!1582570 () Bool)

(declare-fun e!3074614 () Bool)

(assert (=> d!1582570 e!3074614))

(declare-fun res!2100886 () Bool)

(assert (=> d!1582570 (=> (not res!2100886) (not e!3074614))))

(declare-fun lt!2021154 () List!56773)

(declare-fun noDuplicate!987 (List!56773) Bool)

(assert (=> d!1582570 (= res!2100886 (noDuplicate!987 lt!2021154))))

(declare-fun choose!36028 ((InoxSet Context!5994)) List!56773)

(assert (=> d!1582570 (= lt!2021154 (choose!36028 z!3559))))

(assert (=> d!1582570 (= (toList!7939 z!3559) lt!2021154)))

(declare-fun b!4920023 () Bool)

(declare-fun content!10054 (List!56773) (InoxSet Context!5994))

(assert (=> b!4920023 (= e!3074614 (= (content!10054 lt!2021154) z!3559))))

(assert (= (and d!1582570 res!2100886) b!4920023))

(declare-fun m!5933800 () Bool)

(assert (=> d!1582570 m!5933800))

(declare-fun m!5933802 () Bool)

(assert (=> d!1582570 m!5933802))

(declare-fun m!5933804 () Bool)

(assert (=> b!4920023 m!5933804))

(assert (=> bm!341955 d!1582570))

(declare-fun e!3074615 () Bool)

(declare-fun b!4920025 () Bool)

(declare-fun lt!2021156 () tuple2!61070)

(assert (=> b!4920025 (= e!3074615 (= (_2!33838 lt!2021156) (drop!2209 e!3074086 (ite c!836789 lt!2020051 e!3074076))))))

(declare-fun b!4920026 () Bool)

(declare-fun res!2100888 () Bool)

(assert (=> b!4920026 (=> (not res!2100888) (not e!3074615))))

(assert (=> b!4920026 (= res!2100888 (= (_1!33838 lt!2021156) (take!575 e!3074086 (ite c!836789 lt!2020051 e!3074076))))))

(declare-fun b!4920027 () Bool)

(declare-fun e!3074617 () tuple2!61070)

(declare-fun e!3074616 () tuple2!61070)

(assert (=> b!4920027 (= e!3074617 e!3074616)))

(declare-fun c!837079 () Bool)

(assert (=> b!4920027 (= c!837079 (<= (ite c!836789 lt!2020051 e!3074076) 0))))

(declare-fun b!4920028 () Bool)

(assert (=> b!4920028 (= e!3074617 (tuple2!61071 Nil!56647 Nil!56647))))

(declare-fun lt!2021155 () tuple2!61070)

(declare-fun b!4920029 () Bool)

(assert (=> b!4920029 (= lt!2021155 (splitAtIndex!85 (t!367195 e!3074086) (- (ite c!836789 lt!2020051 e!3074076) 1)))))

(assert (=> b!4920029 (= e!3074616 (tuple2!61071 (Cons!56647 (h!63095 e!3074086) (_1!33838 lt!2021155)) (_2!33838 lt!2021155)))))

(declare-fun d!1582576 () Bool)

(assert (=> d!1582576 e!3074615))

(declare-fun res!2100887 () Bool)

(assert (=> d!1582576 (=> (not res!2100887) (not e!3074615))))

(assert (=> d!1582576 (= res!2100887 (= (++!12302 (_1!33838 lt!2021156) (_2!33838 lt!2021156)) e!3074086))))

(assert (=> d!1582576 (= lt!2021156 e!3074617)))

(declare-fun c!837078 () Bool)

(assert (=> d!1582576 (= c!837078 ((_ is Nil!56647) e!3074086))))

(assert (=> d!1582576 (= (splitAtIndex!85 e!3074086 (ite c!836789 lt!2020051 e!3074076)) lt!2021156)))

(declare-fun b!4920024 () Bool)

(assert (=> b!4920024 (= e!3074616 (tuple2!61071 Nil!56647 e!3074086))))

(assert (= (and d!1582576 c!837078) b!4920028))

(assert (= (and d!1582576 (not c!837078)) b!4920027))

(assert (= (and b!4920027 c!837079) b!4920024))

(assert (= (and b!4920027 (not c!837079)) b!4920029))

(assert (= (and d!1582576 res!2100887) b!4920026))

(assert (= (and b!4920026 res!2100888) b!4920025))

(declare-fun m!5933806 () Bool)

(assert (=> b!4920025 m!5933806))

(declare-fun m!5933808 () Bool)

(assert (=> b!4920026 m!5933808))

(declare-fun m!5933810 () Bool)

(assert (=> b!4920029 m!5933810))

(declare-fun m!5933812 () Bool)

(assert (=> d!1582576 m!5933812))

(assert (=> bm!342032 d!1582576))

(declare-fun d!1582578 () Bool)

(assert (=> d!1582578 (= (head!10505 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))) (h!63095 (++!12302 Nil!56647 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020307 Nil!56647)) Nil!56647))))))

(assert (=> b!4918613 d!1582578))

(declare-fun d!1582580 () Bool)

(assert (=> d!1582580 (= (head!10505 lt!2020307) (h!63095 lt!2020307))))

(assert (=> b!4918613 d!1582580))

(declare-fun b!4920031 () Bool)

(declare-fun e!3074618 () List!56771)

(declare-fun e!3074619 () List!56771)

(assert (=> b!4920031 (= e!3074618 e!3074619)))

(declare-fun c!837081 () Bool)

(assert (=> b!4920031 (= c!837081 ((_ is Leaf!24714) (c!836549 (_1!33835 lt!2020059))))))

(declare-fun d!1582582 () Bool)

(declare-fun c!837080 () Bool)

(assert (=> d!1582582 (= c!837080 ((_ is Empty!14854) (c!836549 (_1!33835 lt!2020059))))))

(assert (=> d!1582582 (= (list!17913 (c!836549 (_1!33835 lt!2020059))) e!3074618)))

(declare-fun b!4920032 () Bool)

(assert (=> b!4920032 (= e!3074619 (list!17914 (xs!18172 (c!836549 (_1!33835 lt!2020059)))))))

(declare-fun b!4920033 () Bool)

(assert (=> b!4920033 (= e!3074619 (++!12302 (list!17913 (left!41299 (c!836549 (_1!33835 lt!2020059)))) (list!17913 (right!41629 (c!836549 (_1!33835 lt!2020059))))))))

(declare-fun b!4920030 () Bool)

(assert (=> b!4920030 (= e!3074618 Nil!56647)))

(assert (= (and d!1582582 c!837080) b!4920030))

(assert (= (and d!1582582 (not c!837080)) b!4920031))

(assert (= (and b!4920031 c!837081) b!4920032))

(assert (= (and b!4920031 (not c!837081)) b!4920033))

(declare-fun m!5933814 () Bool)

(assert (=> b!4920032 m!5933814))

(assert (=> b!4920033 m!5933514))

(assert (=> b!4920033 m!5932516))

(assert (=> b!4920033 m!5933514))

(assert (=> b!4920033 m!5932516))

(declare-fun m!5933816 () Bool)

(assert (=> b!4920033 m!5933816))

(assert (=> d!1582012 d!1582582))

(declare-fun d!1582584 () Bool)

(declare-fun lt!2021157 () Bool)

(assert (=> d!1582584 (= lt!2021157 (isEmpty!30552 (list!17913 (right!41629 (c!836549 (_2!33835 lt!2020059))))))))

(assert (=> d!1582584 (= lt!2021157 (= (size!37425 (right!41629 (c!836549 (_2!33835 lt!2020059)))) 0))))

(assert (=> d!1582584 (= (isEmpty!30551 (right!41629 (c!836549 (_2!33835 lt!2020059)))) lt!2021157)))

(declare-fun bs!1179008 () Bool)

(assert (= bs!1179008 d!1582584))

(assert (=> bs!1179008 m!5932746))

(assert (=> bs!1179008 m!5932746))

(declare-fun m!5933818 () Bool)

(assert (=> bs!1179008 m!5933818))

(declare-fun m!5933820 () Bool)

(assert (=> bs!1179008 m!5933820))

(assert (=> b!4919090 d!1582584))

(declare-fun b!4920034 () Bool)

(declare-fun e!3074620 () List!56771)

(assert (=> b!4920034 (= e!3074620 lt!2020537)))

(declare-fun b!4920036 () Bool)

(declare-fun res!2100889 () Bool)

(declare-fun e!3074621 () Bool)

(assert (=> b!4920036 (=> (not res!2100889) (not e!3074621))))

(declare-fun lt!2021158 () List!56771)

(assert (=> b!4920036 (= res!2100889 (= (size!37424 lt!2021158) (+ (size!37424 Nil!56647) (size!37424 lt!2020537))))))

(declare-fun b!4920035 () Bool)

(assert (=> b!4920035 (= e!3074620 (Cons!56647 (h!63095 Nil!56647) (++!12302 (t!367195 Nil!56647) lt!2020537)))))

(declare-fun d!1582586 () Bool)

(assert (=> d!1582586 e!3074621))

(declare-fun res!2100890 () Bool)

(assert (=> d!1582586 (=> (not res!2100890) (not e!3074621))))

(assert (=> d!1582586 (= res!2100890 (= (content!10051 lt!2021158) ((_ map or) (content!10051 Nil!56647) (content!10051 lt!2020537))))))

(assert (=> d!1582586 (= lt!2021158 e!3074620)))

(declare-fun c!837082 () Bool)

(assert (=> d!1582586 (= c!837082 ((_ is Nil!56647) Nil!56647))))

(assert (=> d!1582586 (= (++!12302 Nil!56647 lt!2020537) lt!2021158)))

(declare-fun b!4920037 () Bool)

(assert (=> b!4920037 (= e!3074621 (or (not (= lt!2020537 Nil!56647)) (= lt!2021158 Nil!56647)))))

(assert (= (and d!1582586 c!837082) b!4920034))

(assert (= (and d!1582586 (not c!837082)) b!4920035))

(assert (= (and d!1582586 res!2100890) b!4920036))

(assert (= (and b!4920036 res!2100889) b!4920037))

(declare-fun m!5933822 () Bool)

(assert (=> b!4920036 m!5933822))

(assert (=> b!4920036 m!5931462))

(declare-fun m!5933824 () Bool)

(assert (=> b!4920036 m!5933824))

(declare-fun m!5933826 () Bool)

(assert (=> b!4920035 m!5933826))

(declare-fun m!5933828 () Bool)

(assert (=> d!1582586 m!5933828))

(assert (=> d!1582586 m!5931742))

(declare-fun m!5933830 () Bool)

(assert (=> d!1582586 m!5933830))

(assert (=> d!1581964 d!1582586))

(assert (=> d!1581964 d!1581984))

(assert (=> d!1581964 d!1581892))

(assert (=> b!4919094 d!1582142))

(assert (=> b!4919094 d!1582144))

(declare-fun b!4920039 () Bool)

(declare-fun e!3074622 () List!56771)

(declare-fun e!3074623 () List!56771)

(assert (=> b!4920039 (= e!3074622 e!3074623)))

(declare-fun c!837084 () Bool)

(assert (=> b!4920039 (= c!837084 ((_ is Leaf!24714) (c!836549 (_1!33835 lt!2020316))))))

(declare-fun d!1582588 () Bool)

(declare-fun c!837083 () Bool)

(assert (=> d!1582588 (= c!837083 ((_ is Empty!14854) (c!836549 (_1!33835 lt!2020316))))))

(assert (=> d!1582588 (= (list!17913 (c!836549 (_1!33835 lt!2020316))) e!3074622)))

(declare-fun b!4920040 () Bool)

(assert (=> b!4920040 (= e!3074623 (list!17914 (xs!18172 (c!836549 (_1!33835 lt!2020316)))))))

(declare-fun b!4920041 () Bool)

(assert (=> b!4920041 (= e!3074623 (++!12302 (list!17913 (left!41299 (c!836549 (_1!33835 lt!2020316)))) (list!17913 (right!41629 (c!836549 (_1!33835 lt!2020316))))))))

(declare-fun b!4920038 () Bool)

(assert (=> b!4920038 (= e!3074622 Nil!56647)))

(assert (= (and d!1582588 c!837083) b!4920038))

(assert (= (and d!1582588 (not c!837083)) b!4920039))

(assert (= (and b!4920039 c!837084) b!4920040))

(assert (= (and b!4920039 (not c!837084)) b!4920041))

(declare-fun m!5933832 () Bool)

(assert (=> b!4920040 m!5933832))

(declare-fun m!5933834 () Bool)

(assert (=> b!4920041 m!5933834))

(declare-fun m!5933838 () Bool)

(assert (=> b!4920041 m!5933838))

(assert (=> b!4920041 m!5933834))

(assert (=> b!4920041 m!5933838))

(declare-fun m!5933842 () Bool)

(assert (=> b!4920041 m!5933842))

(assert (=> d!1581854 d!1582588))

(declare-fun d!1582590 () Bool)

(declare-fun lt!2021159 () C!26920)

(assert (=> d!1582590 (contains!19452 (tail!9652 lt!2020318) lt!2021159)))

(declare-fun e!3074625 () C!26920)

(assert (=> d!1582590 (= lt!2021159 e!3074625)))

(declare-fun c!837085 () Bool)

(assert (=> d!1582590 (= c!837085 (= (- 0 1) 0))))

(declare-fun e!3074624 () Bool)

(assert (=> d!1582590 e!3074624))

(declare-fun res!2100891 () Bool)

(assert (=> d!1582590 (=> (not res!2100891) (not e!3074624))))

(assert (=> d!1582590 (= res!2100891 (<= 0 (- 0 1)))))

(assert (=> d!1582590 (= (apply!13622 (tail!9652 lt!2020318) (- 0 1)) lt!2021159)))

(declare-fun b!4920042 () Bool)

(assert (=> b!4920042 (= e!3074624 (< (- 0 1) (size!37424 (tail!9652 lt!2020318))))))

(declare-fun b!4920043 () Bool)

(assert (=> b!4920043 (= e!3074625 (head!10505 (tail!9652 lt!2020318)))))

(declare-fun b!4920044 () Bool)

(assert (=> b!4920044 (= e!3074625 (apply!13622 (tail!9652 (tail!9652 lt!2020318)) (- (- 0 1) 1)))))

(assert (= (and d!1582590 res!2100891) b!4920042))

(assert (= (and d!1582590 c!837085) b!4920043))

(assert (= (and d!1582590 (not c!837085)) b!4920044))

(assert (=> d!1582590 m!5931788))

(declare-fun m!5933862 () Bool)

(assert (=> d!1582590 m!5933862))

(assert (=> b!4920042 m!5931788))

(declare-fun m!5933864 () Bool)

(assert (=> b!4920042 m!5933864))

(assert (=> b!4920043 m!5931788))

(declare-fun m!5933868 () Bool)

(assert (=> b!4920043 m!5933868))

(assert (=> b!4920044 m!5931788))

(declare-fun m!5933872 () Bool)

(assert (=> b!4920044 m!5933872))

(assert (=> b!4920044 m!5933872))

(declare-fun m!5933874 () Bool)

(assert (=> b!4920044 m!5933874))

(assert (=> b!4918636 d!1582590))

(declare-fun d!1582592 () Bool)

(assert (=> d!1582592 (= (tail!9652 lt!2020318) (t!367195 lt!2020318))))

(assert (=> b!4918636 d!1582592))

(declare-fun d!1582594 () Bool)

(assert (=> d!1582594 (= (head!10505 (drop!2209 lt!2020363 (+ 0 1))) (apply!13622 lt!2020363 (+ 0 1)))))

(declare-fun lt!2021160 () Unit!146993)

(assert (=> d!1582594 (= lt!2021160 (choose!35996 lt!2020363 (+ 0 1)))))

(declare-fun e!3074626 () Bool)

(assert (=> d!1582594 e!3074626))

(declare-fun res!2100892 () Bool)

(assert (=> d!1582594 (=> (not res!2100892) (not e!3074626))))

(assert (=> d!1582594 (= res!2100892 (>= (+ 0 1) 0))))

(assert (=> d!1582594 (= (lemmaDropApply!1267 lt!2020363 (+ 0 1)) lt!2021160)))

(declare-fun b!4920045 () Bool)

(assert (=> b!4920045 (= e!3074626 (< (+ 0 1) (size!37424 lt!2020363)))))

(assert (= (and d!1582594 res!2100892) b!4920045))

(assert (=> d!1582594 m!5931532))

(assert (=> d!1582594 m!5931532))

(assert (=> d!1582594 m!5931534))

(assert (=> d!1582594 m!5931558))

(declare-fun m!5933890 () Bool)

(assert (=> d!1582594 m!5933890))

(declare-fun m!5933892 () Bool)

(assert (=> b!4920045 m!5933892))

(assert (=> b!4918536 d!1582594))

(declare-fun b!4920046 () Bool)

(declare-fun e!3074627 () List!56771)

(assert (=> b!4920046 (= e!3074627 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020352 call!341923)) Nil!56647))))

(declare-fun b!4920048 () Bool)

(declare-fun res!2100893 () Bool)

(declare-fun e!3074628 () Bool)

(assert (=> b!4920048 (=> (not res!2100893) (not e!3074628))))

(declare-fun lt!2021161 () List!56771)

(assert (=> b!4920048 (= res!2100893 (= (size!37424 lt!2021161) (+ (size!37424 call!341923) (size!37424 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020352 call!341923)) Nil!56647)))))))

(declare-fun b!4920047 () Bool)

(assert (=> b!4920047 (= e!3074627 (Cons!56647 (h!63095 call!341923) (++!12302 (t!367195 call!341923) (Cons!56647 (head!10505 (getSuffix!2933 lt!2020352 call!341923)) Nil!56647))))))

(declare-fun d!1582596 () Bool)

(assert (=> d!1582596 e!3074628))

(declare-fun res!2100894 () Bool)

(assert (=> d!1582596 (=> (not res!2100894) (not e!3074628))))

(assert (=> d!1582596 (= res!2100894 (= (content!10051 lt!2021161) ((_ map or) (content!10051 call!341923) (content!10051 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020352 call!341923)) Nil!56647)))))))

(assert (=> d!1582596 (= lt!2021161 e!3074627)))

(declare-fun c!837086 () Bool)

(assert (=> d!1582596 (= c!837086 ((_ is Nil!56647) call!341923))))

(assert (=> d!1582596 (= (++!12302 call!341923 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020352 call!341923)) Nil!56647)) lt!2021161)))

(declare-fun b!4920049 () Bool)

(assert (=> b!4920049 (= e!3074628 (or (not (= (Cons!56647 (head!10505 (getSuffix!2933 lt!2020352 call!341923)) Nil!56647) Nil!56647)) (= lt!2021161 call!341923)))))

(assert (= (and d!1582596 c!837086) b!4920046))

(assert (= (and d!1582596 (not c!837086)) b!4920047))

(assert (= (and d!1582596 res!2100894) b!4920048))

(assert (= (and b!4920048 res!2100893) b!4920049))

(declare-fun m!5933902 () Bool)

(assert (=> b!4920048 m!5933902))

(assert (=> b!4920048 m!5931562))

(declare-fun m!5933904 () Bool)

(assert (=> b!4920048 m!5933904))

(declare-fun m!5933906 () Bool)

(assert (=> b!4920047 m!5933906))

(declare-fun m!5933908 () Bool)

(assert (=> d!1582596 m!5933908))

(assert (=> d!1582596 m!5932678))

(declare-fun m!5933910 () Bool)

(assert (=> d!1582596 m!5933910))

(assert (=> b!4918536 d!1582596))

(declare-fun d!1582600 () Bool)

(assert (=> d!1582600 (= (list!17911 (_1!33835 lt!2020361)) (list!17913 (c!836549 (_1!33835 lt!2020361))))))

(declare-fun bs!1179009 () Bool)

(assert (= bs!1179009 d!1582600))

(declare-fun m!5933912 () Bool)

(assert (=> bs!1179009 m!5933912))

(assert (=> b!4918536 d!1582600))

(declare-fun d!1582602 () Bool)

(declare-fun e!3074631 () Bool)

(assert (=> d!1582602 e!3074631))

(declare-fun res!2100902 () Bool)

(assert (=> d!1582602 (=> (not res!2100902) (not e!3074631))))

(declare-fun lt!2021163 () tuple2!61064)

(assert (=> d!1582602 (= res!2100902 (isBalanced!4070 (c!836549 (_1!33835 lt!2021163))))))

(declare-fun lt!2021162 () tuple2!61068)

(assert (=> d!1582602 (= lt!2021163 (tuple2!61065 (BalanceConc!29139 (_1!33837 lt!2021162)) (BalanceConc!29139 (_2!33837 lt!2021162))))))

(assert (=> d!1582602 (= lt!2021162 (splitAt!237 (c!836549 input!5492) (+ 0 1)))))

(assert (=> d!1582602 (isBalanced!4070 (c!836549 input!5492))))

(assert (=> d!1582602 (= (splitAt!236 input!5492 (+ 0 1)) lt!2021163)))

(declare-fun b!4920056 () Bool)

(declare-fun res!2100901 () Bool)

(assert (=> b!4920056 (=> (not res!2100901) (not e!3074631))))

(assert (=> b!4920056 (= res!2100901 (isBalanced!4070 (c!836549 (_2!33835 lt!2021163))))))

(declare-fun b!4920057 () Bool)

(assert (=> b!4920057 (= e!3074631 (= (tuple2!61071 (list!17911 (_1!33835 lt!2021163)) (list!17911 (_2!33835 lt!2021163))) (splitAtIndex!85 (list!17911 input!5492) (+ 0 1))))))

(assert (= (and d!1582602 res!2100902) b!4920056))

(assert (= (and b!4920056 res!2100901) b!4920057))

(declare-fun m!5933920 () Bool)

(assert (=> d!1582602 m!5933920))

(declare-fun m!5933922 () Bool)

(assert (=> d!1582602 m!5933922))

(assert (=> d!1582602 m!5931278))

(declare-fun m!5933926 () Bool)

(assert (=> b!4920056 m!5933926))

(declare-fun m!5933928 () Bool)

(assert (=> b!4920057 m!5933928))

(declare-fun m!5933930 () Bool)

(assert (=> b!4920057 m!5933930))

(assert (=> b!4920057 m!5931280))

(assert (=> b!4920057 m!5931280))

(declare-fun m!5933936 () Bool)

(assert (=> b!4920057 m!5933936))

(assert (=> b!4918536 d!1582602))

(assert (=> b!4918536 d!1581814))

(declare-fun b!4920058 () Bool)

(declare-fun e!3074632 () List!56771)

(assert (=> b!4920058 (= e!3074632 lt!2020329)))

(declare-fun b!4920060 () Bool)

(declare-fun res!2100903 () Bool)

(declare-fun e!3074633 () Bool)

(assert (=> b!4920060 (=> (not res!2100903) (not e!3074633))))

(declare-fun lt!2021164 () List!56771)

(assert (=> b!4920060 (= res!2100903 (= (size!37424 lt!2021164) (+ (size!37424 (++!12302 call!341923 (Cons!56647 lt!2020340 Nil!56647))) (size!37424 lt!2020329))))))

(declare-fun b!4920059 () Bool)

(assert (=> b!4920059 (= e!3074632 (Cons!56647 (h!63095 (++!12302 call!341923 (Cons!56647 lt!2020340 Nil!56647))) (++!12302 (t!367195 (++!12302 call!341923 (Cons!56647 lt!2020340 Nil!56647))) lt!2020329)))))

(declare-fun d!1582604 () Bool)

(assert (=> d!1582604 e!3074633))

(declare-fun res!2100904 () Bool)

(assert (=> d!1582604 (=> (not res!2100904) (not e!3074633))))

(assert (=> d!1582604 (= res!2100904 (= (content!10051 lt!2021164) ((_ map or) (content!10051 (++!12302 call!341923 (Cons!56647 lt!2020340 Nil!56647))) (content!10051 lt!2020329))))))

(assert (=> d!1582604 (= lt!2021164 e!3074632)))

(declare-fun c!837087 () Bool)

(assert (=> d!1582604 (= c!837087 ((_ is Nil!56647) (++!12302 call!341923 (Cons!56647 lt!2020340 Nil!56647))))))

(assert (=> d!1582604 (= (++!12302 (++!12302 call!341923 (Cons!56647 lt!2020340 Nil!56647)) lt!2020329) lt!2021164)))

(declare-fun b!4920061 () Bool)

(assert (=> b!4920061 (= e!3074633 (or (not (= lt!2020329 Nil!56647)) (= lt!2021164 (++!12302 call!341923 (Cons!56647 lt!2020340 Nil!56647)))))))

(assert (= (and d!1582604 c!837087) b!4920058))

(assert (= (and d!1582604 (not c!837087)) b!4920059))

(assert (= (and d!1582604 res!2100904) b!4920060))

(assert (= (and b!4920060 res!2100903) b!4920061))

(declare-fun m!5933938 () Bool)

(assert (=> b!4920060 m!5933938))

(assert (=> b!4920060 m!5931542))

(declare-fun m!5933940 () Bool)

(assert (=> b!4920060 m!5933940))

(declare-fun m!5933942 () Bool)

(assert (=> b!4920060 m!5933942))

(declare-fun m!5933944 () Bool)

(assert (=> b!4920059 m!5933944))

(declare-fun m!5933946 () Bool)

(assert (=> d!1582604 m!5933946))

(assert (=> d!1582604 m!5931542))

(declare-fun m!5933948 () Bool)

(assert (=> d!1582604 m!5933948))

(declare-fun m!5933950 () Bool)

(assert (=> d!1582604 m!5933950))

(assert (=> b!4918536 d!1582604))

(declare-fun d!1582610 () Bool)

(declare-fun lt!2021165 () Int)

(assert (=> d!1582610 (>= lt!2021165 0)))

(declare-fun e!3074634 () Int)

(assert (=> d!1582610 (= lt!2021165 e!3074634)))

(declare-fun c!837088 () Bool)

(assert (=> d!1582610 (= c!837088 ((_ is Nil!56647) call!341923))))

(assert (=> d!1582610 (= (size!37424 call!341923) lt!2021165)))

(declare-fun b!4920062 () Bool)

(assert (=> b!4920062 (= e!3074634 0)))

(declare-fun b!4920063 () Bool)

(assert (=> b!4920063 (= e!3074634 (+ 1 (size!37424 (t!367195 call!341923))))))

(assert (= (and d!1582610 c!837088) b!4920062))

(assert (= (and d!1582610 (not c!837088)) b!4920063))

(declare-fun m!5933952 () Bool)

(assert (=> b!4920063 m!5933952))

(assert (=> b!4918536 d!1582610))

(declare-fun d!1582614 () Bool)

(declare-fun lt!2021166 () C!26920)

(assert (=> d!1582614 (contains!19452 lt!2020363 lt!2021166)))

(declare-fun e!3074636 () C!26920)

(assert (=> d!1582614 (= lt!2021166 e!3074636)))

(declare-fun c!837089 () Bool)

(assert (=> d!1582614 (= c!837089 (= (+ 0 1) 0))))

(declare-fun e!3074635 () Bool)

(assert (=> d!1582614 e!3074635))

(declare-fun res!2100905 () Bool)

(assert (=> d!1582614 (=> (not res!2100905) (not e!3074635))))

(assert (=> d!1582614 (= res!2100905 (<= 0 (+ 0 1)))))

(assert (=> d!1582614 (= (apply!13622 lt!2020363 (+ 0 1)) lt!2021166)))

(declare-fun b!4920064 () Bool)

(assert (=> b!4920064 (= e!3074635 (< (+ 0 1) (size!37424 lt!2020363)))))

(declare-fun b!4920065 () Bool)

(assert (=> b!4920065 (= e!3074636 (head!10505 lt!2020363))))

(declare-fun b!4920066 () Bool)

(assert (=> b!4920066 (= e!3074636 (apply!13622 (tail!9652 lt!2020363) (- (+ 0 1) 1)))))

(assert (= (and d!1582614 res!2100905) b!4920064))

(assert (= (and d!1582614 c!837089) b!4920065))

(assert (= (and d!1582614 (not c!837089)) b!4920066))

(declare-fun m!5933954 () Bool)

(assert (=> d!1582614 m!5933954))

(assert (=> b!4920064 m!5933892))

(declare-fun m!5933956 () Bool)

(assert (=> b!4920065 m!5933956))

(declare-fun m!5933958 () Bool)

(assert (=> b!4920066 m!5933958))

(assert (=> b!4920066 m!5933958))

(declare-fun m!5933960 () Bool)

(assert (=> b!4920066 m!5933960))

(assert (=> b!4918536 d!1582614))

(declare-fun d!1582618 () Bool)

(assert (=> d!1582618 (and (= lt!2020338 call!341923) (= lt!2020351 call!341928))))

(declare-fun lt!2021167 () Unit!146993)

(assert (=> d!1582618 (= lt!2021167 (choose!35998 lt!2020338 lt!2020351 call!341923 call!341928))))

(assert (=> d!1582618 (= (++!12302 lt!2020338 lt!2020351) (++!12302 call!341923 call!341928))))

(assert (=> d!1582618 (= (lemmaConcatSameAndSameSizesThenSameLists!642 lt!2020338 lt!2020351 call!341923 call!341928) lt!2021167)))

(declare-fun bs!1179010 () Bool)

(assert (= bs!1179010 d!1582618))

(declare-fun m!5933962 () Bool)

(assert (=> bs!1179010 m!5933962))

(declare-fun m!5933964 () Bool)

(assert (=> bs!1179010 m!5933964))

(assert (=> bs!1179010 m!5931566))

(assert (=> b!4918536 d!1582618))

(declare-fun d!1582620 () Bool)

(declare-fun lt!2021168 () Int)

(assert (=> d!1582620 (>= lt!2021168 0)))

(declare-fun e!3074637 () Int)

(assert (=> d!1582620 (= lt!2021168 e!3074637)))

(declare-fun c!837090 () Bool)

(assert (=> d!1582620 (= c!837090 ((_ is Nil!56647) lt!2020349))))

(assert (=> d!1582620 (= (size!37424 lt!2020349) lt!2021168)))

(declare-fun b!4920067 () Bool)

(assert (=> b!4920067 (= e!3074637 0)))

(declare-fun b!4920068 () Bool)

(assert (=> b!4920068 (= e!3074637 (+ 1 (size!37424 (t!367195 lt!2020349))))))

(assert (= (and d!1582620 c!837090) b!4920067))

(assert (= (and d!1582620 (not c!837090)) b!4920068))

(declare-fun m!5933966 () Bool)

(assert (=> b!4920068 m!5933966))

(assert (=> b!4918536 d!1582620))

(declare-fun d!1582622 () Bool)

(assert (=> d!1582622 (= (++!12302 (++!12302 call!341923 (Cons!56647 lt!2020340 Nil!56647)) lt!2020329) lt!2020345)))

(declare-fun lt!2021169 () Unit!146993)

(assert (=> d!1582622 (= lt!2021169 (choose!36000 call!341923 lt!2020340 lt!2020329 lt!2020345))))

(assert (=> d!1582622 (= (++!12302 call!341923 (Cons!56647 lt!2020340 lt!2020329)) lt!2020345)))

(assert (=> d!1582622 (= (lemmaMoveElementToOtherListKeepsConcatEq!1376 call!341923 lt!2020340 lt!2020329 lt!2020345) lt!2021169)))

(declare-fun bs!1179011 () Bool)

(assert (= bs!1179011 d!1582622))

(assert (=> bs!1179011 m!5931542))

(assert (=> bs!1179011 m!5931542))

(assert (=> bs!1179011 m!5931544))

(declare-fun m!5933968 () Bool)

(assert (=> bs!1179011 m!5933968))

(declare-fun m!5933970 () Bool)

(assert (=> bs!1179011 m!5933970))

(assert (=> b!4918536 d!1582622))

(declare-fun d!1582624 () Bool)

(declare-fun lt!2021170 () List!56771)

(assert (=> d!1582624 (= (++!12302 call!341923 lt!2021170) lt!2020352)))

(declare-fun e!3074638 () List!56771)

(assert (=> d!1582624 (= lt!2021170 e!3074638)))

(declare-fun c!837091 () Bool)

(assert (=> d!1582624 (= c!837091 ((_ is Cons!56647) call!341923))))

(assert (=> d!1582624 (>= (size!37424 lt!2020352) (size!37424 call!341923))))

(assert (=> d!1582624 (= (getSuffix!2933 lt!2020352 call!341923) lt!2021170)))

(declare-fun b!4920069 () Bool)

(assert (=> b!4920069 (= e!3074638 (getSuffix!2933 (tail!9652 lt!2020352) (t!367195 call!341923)))))

(declare-fun b!4920070 () Bool)

(assert (=> b!4920070 (= e!3074638 lt!2020352)))

(assert (= (and d!1582624 c!837091) b!4920069))

(assert (= (and d!1582624 (not c!837091)) b!4920070))

(declare-fun m!5933972 () Bool)

(assert (=> d!1582624 m!5933972))

(declare-fun m!5933974 () Bool)

(assert (=> d!1582624 m!5933974))

(assert (=> d!1582624 m!5931562))

(declare-fun m!5933976 () Bool)

(assert (=> b!4920069 m!5933976))

(assert (=> b!4920069 m!5933976))

(declare-fun m!5933978 () Bool)

(assert (=> b!4920069 m!5933978))

(assert (=> b!4918536 d!1582624))

(assert (=> b!4918536 d!1582478))

(declare-fun b!4920071 () Bool)

(declare-fun e!3074641 () Bool)

(declare-fun e!3074640 () Bool)

(assert (=> b!4920071 (= e!3074641 e!3074640)))

(declare-fun res!2100909 () Bool)

(assert (=> b!4920071 (=> (not res!2100909) (not e!3074640))))

(assert (=> b!4920071 (= res!2100909 (not ((_ is Nil!56647) lt!2020352)))))

(declare-fun b!4920073 () Bool)

(assert (=> b!4920073 (= e!3074640 (isPrefix!4945 (tail!9652 (++!12302 call!341923 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020352 call!341923)) Nil!56647))) (tail!9652 lt!2020352)))))

(declare-fun b!4920074 () Bool)

(declare-fun e!3074639 () Bool)

(assert (=> b!4920074 (= e!3074639 (>= (size!37424 lt!2020352) (size!37424 (++!12302 call!341923 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020352 call!341923)) Nil!56647)))))))

(declare-fun d!1582626 () Bool)

(assert (=> d!1582626 e!3074639))

(declare-fun res!2100908 () Bool)

(assert (=> d!1582626 (=> res!2100908 e!3074639)))

(declare-fun lt!2021171 () Bool)

(assert (=> d!1582626 (= res!2100908 (not lt!2021171))))

(assert (=> d!1582626 (= lt!2021171 e!3074641)))

(declare-fun res!2100907 () Bool)

(assert (=> d!1582626 (=> res!2100907 e!3074641)))

(assert (=> d!1582626 (= res!2100907 ((_ is Nil!56647) (++!12302 call!341923 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020352 call!341923)) Nil!56647))))))

(assert (=> d!1582626 (= (isPrefix!4945 (++!12302 call!341923 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020352 call!341923)) Nil!56647)) lt!2020352) lt!2021171)))

(declare-fun b!4920072 () Bool)

(declare-fun res!2100906 () Bool)

(assert (=> b!4920072 (=> (not res!2100906) (not e!3074640))))

(assert (=> b!4920072 (= res!2100906 (= (head!10505 (++!12302 call!341923 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020352 call!341923)) Nil!56647))) (head!10505 lt!2020352)))))

(assert (= (and d!1582626 (not res!2100907)) b!4920071))

(assert (= (and b!4920071 res!2100909) b!4920072))

(assert (= (and b!4920072 res!2100906) b!4920073))

(assert (= (and d!1582626 (not res!2100908)) b!4920074))

(assert (=> b!4920073 m!5931550))

(declare-fun m!5933980 () Bool)

(assert (=> b!4920073 m!5933980))

(assert (=> b!4920073 m!5933976))

(assert (=> b!4920073 m!5933980))

(assert (=> b!4920073 m!5933976))

(declare-fun m!5933982 () Bool)

(assert (=> b!4920073 m!5933982))

(assert (=> b!4920074 m!5933974))

(assert (=> b!4920074 m!5931550))

(declare-fun m!5933984 () Bool)

(assert (=> b!4920074 m!5933984))

(assert (=> b!4920072 m!5931550))

(declare-fun m!5933986 () Bool)

(assert (=> b!4920072 m!5933986))

(declare-fun m!5933988 () Bool)

(assert (=> b!4920072 m!5933988))

(assert (=> b!4918536 d!1582626))

(declare-fun d!1582628 () Bool)

(assert (=> d!1582628 (isPrefix!4945 (++!12302 call!341923 (Cons!56647 (head!10505 (getSuffix!2933 lt!2020352 call!341923)) Nil!56647)) lt!2020352)))

(declare-fun lt!2021172 () Unit!146993)

(assert (=> d!1582628 (= lt!2021172 (choose!35999 call!341923 lt!2020352))))

(assert (=> d!1582628 (isPrefix!4945 call!341923 lt!2020352)))

(assert (=> d!1582628 (= (lemmaAddHeadSuffixToPrefixStillPrefix!758 call!341923 lt!2020352) lt!2021172)))

(declare-fun bs!1179012 () Bool)

(assert (= bs!1179012 d!1582628))

(assert (=> bs!1179012 m!5931550))

(assert (=> bs!1179012 m!5931552))

(assert (=> bs!1179012 m!5931550))

(assert (=> bs!1179012 m!5931536))

(declare-fun m!5933990 () Bool)

(assert (=> bs!1179012 m!5933990))

(declare-fun m!5933992 () Bool)

(assert (=> bs!1179012 m!5933992))

(assert (=> bs!1179012 m!5931536))

(assert (=> bs!1179012 m!5931538))

(assert (=> b!4918536 d!1582628))

(declare-fun b!4920075 () Bool)

(declare-fun e!3074642 () List!56771)

(assert (=> b!4920075 (= e!3074642 (Cons!56647 lt!2020340 Nil!56647))))

(declare-fun b!4920077 () Bool)

(declare-fun res!2100910 () Bool)

(declare-fun e!3074643 () Bool)

(assert (=> b!4920077 (=> (not res!2100910) (not e!3074643))))

(declare-fun lt!2021173 () List!56771)

(assert (=> b!4920077 (= res!2100910 (= (size!37424 lt!2021173) (+ (size!37424 call!341923) (size!37424 (Cons!56647 lt!2020340 Nil!56647)))))))

(declare-fun b!4920076 () Bool)

(assert (=> b!4920076 (= e!3074642 (Cons!56647 (h!63095 call!341923) (++!12302 (t!367195 call!341923) (Cons!56647 lt!2020340 Nil!56647))))))

(declare-fun d!1582630 () Bool)

(assert (=> d!1582630 e!3074643))

(declare-fun res!2100911 () Bool)

(assert (=> d!1582630 (=> (not res!2100911) (not e!3074643))))

(assert (=> d!1582630 (= res!2100911 (= (content!10051 lt!2021173) ((_ map or) (content!10051 call!341923) (content!10051 (Cons!56647 lt!2020340 Nil!56647)))))))

(assert (=> d!1582630 (= lt!2021173 e!3074642)))

(declare-fun c!837092 () Bool)

(assert (=> d!1582630 (= c!837092 ((_ is Nil!56647) call!341923))))

(assert (=> d!1582630 (= (++!12302 call!341923 (Cons!56647 lt!2020340 Nil!56647)) lt!2021173)))

(declare-fun b!4920078 () Bool)

(assert (=> b!4920078 (= e!3074643 (or (not (= (Cons!56647 lt!2020340 Nil!56647) Nil!56647)) (= lt!2021173 call!341923)))))

(assert (= (and d!1582630 c!837092) b!4920075))

(assert (= (and d!1582630 (not c!837092)) b!4920076))

(assert (= (and d!1582630 res!2100911) b!4920077))

(assert (= (and b!4920077 res!2100910) b!4920078))

(declare-fun m!5933994 () Bool)

(assert (=> b!4920077 m!5933994))

(assert (=> b!4920077 m!5931562))

(declare-fun m!5933996 () Bool)

(assert (=> b!4920077 m!5933996))

(declare-fun m!5933998 () Bool)

(assert (=> b!4920076 m!5933998))

(declare-fun m!5934000 () Bool)

(assert (=> d!1582630 m!5934000))

(assert (=> d!1582630 m!5932678))

(declare-fun m!5934002 () Bool)

(assert (=> d!1582630 m!5934002))

(assert (=> b!4918536 d!1582630))

(assert (=> b!4918536 d!1582092))

(declare-fun d!1582632 () Bool)

(assert (=> d!1582632 (= (head!10505 (drop!2209 lt!2020363 (+ 0 1))) (h!63095 (drop!2209 lt!2020363 (+ 0 1))))))

(assert (=> b!4918536 d!1582632))

(declare-fun d!1582634 () Bool)

(assert (=> d!1582634 (<= (size!37424 call!341923) (size!37424 lt!2020349))))

(declare-fun lt!2021174 () Unit!146993)

(assert (=> d!1582634 (= lt!2021174 (choose!35995 call!341923 lt!2020349))))

(assert (=> d!1582634 (isPrefix!4945 call!341923 lt!2020349)))

(assert (=> d!1582634 (= (lemmaIsPrefixThenSmallerEqSize!670 call!341923 lt!2020349) lt!2021174)))

(declare-fun bs!1179013 () Bool)

(assert (= bs!1179013 d!1582634))

(assert (=> bs!1179013 m!5931562))

(assert (=> bs!1179013 m!5931530))

(declare-fun m!5934004 () Bool)

(assert (=> bs!1179013 m!5934004))

(declare-fun m!5934006 () Bool)

(assert (=> bs!1179013 m!5934006))

(assert (=> b!4918536 d!1582634))

(declare-fun d!1582636 () Bool)

(assert (=> d!1582636 (= (head!10505 (getSuffix!2933 lt!2020352 call!341923)) (h!63095 (getSuffix!2933 lt!2020352 call!341923)))))

(assert (=> b!4918536 d!1582636))

(assert (=> b!4918536 d!1581818))

(declare-fun b!4920081 () Bool)

(declare-fun e!3074647 () Int)

(declare-fun e!3074649 () Int)

(assert (=> b!4920081 (= e!3074647 e!3074649)))

(declare-fun c!837093 () Bool)

(declare-fun call!342167 () Int)

(assert (=> b!4920081 (= c!837093 (>= (+ 0 1) call!342167))))

(declare-fun d!1582638 () Bool)

(declare-fun e!3074648 () Bool)

(assert (=> d!1582638 e!3074648))

(declare-fun res!2100914 () Bool)

(assert (=> d!1582638 (=> (not res!2100914) (not e!3074648))))

(declare-fun lt!2021175 () List!56771)

(assert (=> d!1582638 (= res!2100914 (= ((_ map implies) (content!10051 lt!2021175) (content!10051 lt!2020363)) ((as const (InoxSet C!26920)) true)))))

(declare-fun e!3074646 () List!56771)

(assert (=> d!1582638 (= lt!2021175 e!3074646)))

(declare-fun c!837095 () Bool)

(assert (=> d!1582638 (= c!837095 ((_ is Nil!56647) lt!2020363))))

(assert (=> d!1582638 (= (drop!2209 lt!2020363 (+ 0 1)) lt!2021175)))

(declare-fun b!4920082 () Bool)

(declare-fun e!3074650 () List!56771)

(assert (=> b!4920082 (= e!3074650 lt!2020363)))

(declare-fun b!4920083 () Bool)

(assert (=> b!4920083 (= e!3074647 call!342167)))

(declare-fun b!4920084 () Bool)

(assert (=> b!4920084 (= e!3074648 (= (size!37424 lt!2021175) e!3074647))))

(declare-fun c!837094 () Bool)

(assert (=> b!4920084 (= c!837094 (<= (+ 0 1) 0))))

(declare-fun b!4920085 () Bool)

(assert (=> b!4920085 (= e!3074646 Nil!56647)))

(declare-fun b!4920086 () Bool)

(assert (=> b!4920086 (= e!3074650 (drop!2209 (t!367195 lt!2020363) (- (+ 0 1) 1)))))

(declare-fun b!4920087 () Bool)

(assert (=> b!4920087 (= e!3074649 0)))

(declare-fun b!4920088 () Bool)

(assert (=> b!4920088 (= e!3074649 (- call!342167 (+ 0 1)))))

(declare-fun b!4920089 () Bool)

(assert (=> b!4920089 (= e!3074646 e!3074650)))

(declare-fun c!837096 () Bool)

(assert (=> b!4920089 (= c!837096 (<= (+ 0 1) 0))))

(declare-fun bm!342162 () Bool)

(assert (=> bm!342162 (= call!342167 (size!37424 lt!2020363))))

(assert (= (and d!1582638 c!837095) b!4920085))

(assert (= (and d!1582638 (not c!837095)) b!4920089))

(assert (= (and b!4920089 c!837096) b!4920082))

(assert (= (and b!4920089 (not c!837096)) b!4920086))

(assert (= (and d!1582638 res!2100914) b!4920084))

(assert (= (and b!4920084 c!837094) b!4920083))

(assert (= (and b!4920084 (not c!837094)) b!4920081))

(assert (= (and b!4920081 c!837093) b!4920087))

(assert (= (and b!4920081 (not c!837093)) b!4920088))

(assert (= (or b!4920083 b!4920081 b!4920088) bm!342162))

(declare-fun m!5934008 () Bool)

(assert (=> d!1582638 m!5934008))

(declare-fun m!5934010 () Bool)

(assert (=> d!1582638 m!5934010))

(declare-fun m!5934012 () Bool)

(assert (=> b!4920084 m!5934012))

(declare-fun m!5934014 () Bool)

(assert (=> b!4920086 m!5934014))

(assert (=> bm!342162 m!5933892))

(assert (=> b!4918536 d!1582638))

(declare-fun e!3074663 () Bool)

(assert (=> b!4919151 (= tp!1382624 e!3074663)))

(declare-fun b!4920107 () Bool)

(declare-fun tp!1382669 () Bool)

(declare-fun tp!1382670 () Bool)

(assert (=> b!4920107 (= e!3074663 (and tp!1382669 tp!1382670))))

(declare-fun b!4920108 () Bool)

(declare-fun tp!1382668 () Bool)

(assert (=> b!4920108 (= e!3074663 tp!1382668)))

(declare-fun b!4920109 () Bool)

(declare-fun tp!1382666 () Bool)

(declare-fun tp!1382667 () Bool)

(assert (=> b!4920109 (= e!3074663 (and tp!1382666 tp!1382667))))

(declare-fun b!4920106 () Bool)

(assert (=> b!4920106 (= e!3074663 tp_is_empty!35901)))

(assert (= (and b!4919151 ((_ is ElementMatch!13355) (reg!13684 (h!63096 (exprs!3497 setElem!27414))))) b!4920106))

(assert (= (and b!4919151 ((_ is Concat!21928) (reg!13684 (h!63096 (exprs!3497 setElem!27414))))) b!4920107))

(assert (= (and b!4919151 ((_ is Star!13355) (reg!13684 (h!63096 (exprs!3497 setElem!27414))))) b!4920108))

(assert (= (and b!4919151 ((_ is Union!13355) (reg!13684 (h!63096 (exprs!3497 setElem!27414))))) b!4920109))

(declare-fun b!4920110 () Bool)

(declare-fun e!3074664 () Bool)

(declare-fun tp!1382671 () Bool)

(assert (=> b!4920110 (= e!3074664 (and tp_is_empty!35901 tp!1382671))))

(assert (=> b!4919134 (= tp!1382611 e!3074664)))

(assert (= (and b!4919134 ((_ is Cons!56647) (innerList!14942 (xs!18172 (right!41629 (c!836549 input!5492)))))) b!4920110))

(declare-fun e!3074665 () Bool)

(assert (=> b!4919154 (= tp!1382629 e!3074665)))

(declare-fun b!4920112 () Bool)

(declare-fun tp!1382675 () Bool)

(declare-fun tp!1382676 () Bool)

(assert (=> b!4920112 (= e!3074665 (and tp!1382675 tp!1382676))))

(declare-fun b!4920113 () Bool)

(declare-fun tp!1382674 () Bool)

(assert (=> b!4920113 (= e!3074665 tp!1382674)))

(declare-fun b!4920114 () Bool)

(declare-fun tp!1382672 () Bool)

(declare-fun tp!1382673 () Bool)

(assert (=> b!4920114 (= e!3074665 (and tp!1382672 tp!1382673))))

(declare-fun b!4920111 () Bool)

(assert (=> b!4920111 (= e!3074665 tp_is_empty!35901)))

(assert (= (and b!4919154 ((_ is ElementMatch!13355) (h!63096 (exprs!3497 setElem!27420)))) b!4920111))

(assert (= (and b!4919154 ((_ is Concat!21928) (h!63096 (exprs!3497 setElem!27420)))) b!4920112))

(assert (= (and b!4919154 ((_ is Star!13355) (h!63096 (exprs!3497 setElem!27420)))) b!4920113))

(assert (= (and b!4919154 ((_ is Union!13355) (h!63096 (exprs!3497 setElem!27420)))) b!4920114))

(declare-fun b!4920115 () Bool)

(declare-fun e!3074666 () Bool)

(declare-fun tp!1382677 () Bool)

(declare-fun tp!1382678 () Bool)

(assert (=> b!4920115 (= e!3074666 (and tp!1382677 tp!1382678))))

(assert (=> b!4919154 (= tp!1382630 e!3074666)))

(assert (= (and b!4919154 ((_ is Cons!56648) (t!367196 (exprs!3497 setElem!27420)))) b!4920115))

(declare-fun tp!1382679 () Bool)

(declare-fun tp!1382680 () Bool)

(declare-fun b!4920116 () Bool)

(declare-fun e!3074667 () Bool)

(assert (=> b!4920116 (= e!3074667 (and (inv!73337 (left!41299 (left!41299 (right!41629 (c!836549 input!5492))))) tp!1382680 (inv!73337 (right!41629 (left!41299 (right!41629 (c!836549 input!5492))))) tp!1382679))))

(declare-fun b!4920118 () Bool)

(declare-fun e!3074668 () Bool)

(declare-fun tp!1382681 () Bool)

(assert (=> b!4920118 (= e!3074668 tp!1382681)))

(declare-fun b!4920117 () Bool)

(assert (=> b!4920117 (= e!3074667 (and (inv!73345 (xs!18172 (left!41299 (right!41629 (c!836549 input!5492))))) e!3074668))))

(assert (=> b!4919132 (= tp!1382610 (and (inv!73337 (left!41299 (right!41629 (c!836549 input!5492)))) e!3074667))))

(assert (= (and b!4919132 ((_ is Node!14854) (left!41299 (right!41629 (c!836549 input!5492))))) b!4920116))

(assert (= b!4920117 b!4920118))

(assert (= (and b!4919132 ((_ is Leaf!24714) (left!41299 (right!41629 (c!836549 input!5492))))) b!4920117))

(declare-fun m!5934016 () Bool)

(assert (=> b!4920116 m!5934016))

(declare-fun m!5934018 () Bool)

(assert (=> b!4920116 m!5934018))

(declare-fun m!5934020 () Bool)

(assert (=> b!4920117 m!5934020))

(assert (=> b!4919132 m!5932356))

(declare-fun e!3074669 () Bool)

(declare-fun b!4920119 () Bool)

(declare-fun tp!1382683 () Bool)

(declare-fun tp!1382682 () Bool)

(assert (=> b!4920119 (= e!3074669 (and (inv!73337 (left!41299 (right!41629 (right!41629 (c!836549 input!5492))))) tp!1382683 (inv!73337 (right!41629 (right!41629 (right!41629 (c!836549 input!5492))))) tp!1382682))))

(declare-fun b!4920121 () Bool)

(declare-fun e!3074670 () Bool)

(declare-fun tp!1382684 () Bool)

(assert (=> b!4920121 (= e!3074670 tp!1382684)))

(declare-fun b!4920120 () Bool)

(assert (=> b!4920120 (= e!3074669 (and (inv!73345 (xs!18172 (right!41629 (right!41629 (c!836549 input!5492))))) e!3074670))))

(assert (=> b!4919132 (= tp!1382609 (and (inv!73337 (right!41629 (right!41629 (c!836549 input!5492)))) e!3074669))))

(assert (= (and b!4919132 ((_ is Node!14854) (right!41629 (right!41629 (c!836549 input!5492))))) b!4920119))

(assert (= b!4920120 b!4920121))

(assert (= (and b!4919132 ((_ is Leaf!24714) (right!41629 (right!41629 (c!836549 input!5492))))) b!4920120))

(declare-fun m!5934022 () Bool)

(assert (=> b!4920119 m!5934022))

(declare-fun m!5934024 () Bool)

(assert (=> b!4920119 m!5934024))

(declare-fun m!5934026 () Bool)

(assert (=> b!4920120 m!5934026))

(assert (=> b!4919132 m!5932358))

(declare-fun e!3074671 () Bool)

(assert (=> b!4919150 (= tp!1382625 e!3074671)))

(declare-fun b!4920123 () Bool)

(declare-fun tp!1382688 () Bool)

(declare-fun tp!1382689 () Bool)

(assert (=> b!4920123 (= e!3074671 (and tp!1382688 tp!1382689))))

(declare-fun b!4920124 () Bool)

(declare-fun tp!1382687 () Bool)

(assert (=> b!4920124 (= e!3074671 tp!1382687)))

(declare-fun b!4920125 () Bool)

(declare-fun tp!1382685 () Bool)

(declare-fun tp!1382686 () Bool)

(assert (=> b!4920125 (= e!3074671 (and tp!1382685 tp!1382686))))

(declare-fun b!4920122 () Bool)

(assert (=> b!4920122 (= e!3074671 tp_is_empty!35901)))

(assert (= (and b!4919150 ((_ is ElementMatch!13355) (regOne!27222 (h!63096 (exprs!3497 setElem!27414))))) b!4920122))

(assert (= (and b!4919150 ((_ is Concat!21928) (regOne!27222 (h!63096 (exprs!3497 setElem!27414))))) b!4920123))

(assert (= (and b!4919150 ((_ is Star!13355) (regOne!27222 (h!63096 (exprs!3497 setElem!27414))))) b!4920124))

(assert (= (and b!4919150 ((_ is Union!13355) (regOne!27222 (h!63096 (exprs!3497 setElem!27414))))) b!4920125))

(declare-fun e!3074672 () Bool)

(assert (=> b!4919150 (= tp!1382626 e!3074672)))

(declare-fun b!4920127 () Bool)

(declare-fun tp!1382693 () Bool)

(declare-fun tp!1382694 () Bool)

(assert (=> b!4920127 (= e!3074672 (and tp!1382693 tp!1382694))))

(declare-fun b!4920128 () Bool)

(declare-fun tp!1382692 () Bool)

(assert (=> b!4920128 (= e!3074672 tp!1382692)))

(declare-fun b!4920129 () Bool)

(declare-fun tp!1382690 () Bool)

(declare-fun tp!1382691 () Bool)

(assert (=> b!4920129 (= e!3074672 (and tp!1382690 tp!1382691))))

(declare-fun b!4920126 () Bool)

(assert (=> b!4920126 (= e!3074672 tp_is_empty!35901)))

(assert (= (and b!4919150 ((_ is ElementMatch!13355) (regTwo!27222 (h!63096 (exprs!3497 setElem!27414))))) b!4920126))

(assert (= (and b!4919150 ((_ is Concat!21928) (regTwo!27222 (h!63096 (exprs!3497 setElem!27414))))) b!4920127))

(assert (= (and b!4919150 ((_ is Star!13355) (regTwo!27222 (h!63096 (exprs!3497 setElem!27414))))) b!4920128))

(assert (= (and b!4919150 ((_ is Union!13355) (regTwo!27222 (h!63096 (exprs!3497 setElem!27414))))) b!4920129))

(declare-fun e!3074673 () Bool)

(assert (=> b!4919152 (= tp!1382622 e!3074673)))

(declare-fun b!4920131 () Bool)

(declare-fun tp!1382698 () Bool)

(declare-fun tp!1382699 () Bool)

(assert (=> b!4920131 (= e!3074673 (and tp!1382698 tp!1382699))))

(declare-fun b!4920132 () Bool)

(declare-fun tp!1382697 () Bool)

(assert (=> b!4920132 (= e!3074673 tp!1382697)))

(declare-fun b!4920133 () Bool)

(declare-fun tp!1382695 () Bool)

(declare-fun tp!1382696 () Bool)

(assert (=> b!4920133 (= e!3074673 (and tp!1382695 tp!1382696))))

(declare-fun b!4920130 () Bool)

(assert (=> b!4920130 (= e!3074673 tp_is_empty!35901)))

(assert (= (and b!4919152 ((_ is ElementMatch!13355) (regOne!27223 (h!63096 (exprs!3497 setElem!27414))))) b!4920130))

(assert (= (and b!4919152 ((_ is Concat!21928) (regOne!27223 (h!63096 (exprs!3497 setElem!27414))))) b!4920131))

(assert (= (and b!4919152 ((_ is Star!13355) (regOne!27223 (h!63096 (exprs!3497 setElem!27414))))) b!4920132))

(assert (= (and b!4919152 ((_ is Union!13355) (regOne!27223 (h!63096 (exprs!3497 setElem!27414))))) b!4920133))

(declare-fun e!3074674 () Bool)

(assert (=> b!4919152 (= tp!1382623 e!3074674)))

(declare-fun b!4920135 () Bool)

(declare-fun tp!1382703 () Bool)

(declare-fun tp!1382704 () Bool)

(assert (=> b!4920135 (= e!3074674 (and tp!1382703 tp!1382704))))

(declare-fun b!4920136 () Bool)

(declare-fun tp!1382702 () Bool)

(assert (=> b!4920136 (= e!3074674 tp!1382702)))

(declare-fun b!4920137 () Bool)

(declare-fun tp!1382700 () Bool)

(declare-fun tp!1382701 () Bool)

(assert (=> b!4920137 (= e!3074674 (and tp!1382700 tp!1382701))))

(declare-fun b!4920134 () Bool)

(assert (=> b!4920134 (= e!3074674 tp_is_empty!35901)))

(assert (= (and b!4919152 ((_ is ElementMatch!13355) (regTwo!27223 (h!63096 (exprs!3497 setElem!27414))))) b!4920134))

(assert (= (and b!4919152 ((_ is Concat!21928) (regTwo!27223 (h!63096 (exprs!3497 setElem!27414))))) b!4920135))

(assert (= (and b!4919152 ((_ is Star!13355) (regTwo!27223 (h!63096 (exprs!3497 setElem!27414))))) b!4920136))

(assert (= (and b!4919152 ((_ is Union!13355) (regTwo!27223 (h!63096 (exprs!3497 setElem!27414))))) b!4920137))

(declare-fun e!3074675 () Bool)

(assert (=> b!4919153 (= tp!1382627 e!3074675)))

(declare-fun b!4920139 () Bool)

(declare-fun tp!1382708 () Bool)

(declare-fun tp!1382709 () Bool)

(assert (=> b!4920139 (= e!3074675 (and tp!1382708 tp!1382709))))

(declare-fun b!4920140 () Bool)

(declare-fun tp!1382707 () Bool)

(assert (=> b!4920140 (= e!3074675 tp!1382707)))

(declare-fun b!4920141 () Bool)

(declare-fun tp!1382705 () Bool)

(declare-fun tp!1382706 () Bool)

(assert (=> b!4920141 (= e!3074675 (and tp!1382705 tp!1382706))))

(declare-fun b!4920138 () Bool)

(assert (=> b!4920138 (= e!3074675 tp_is_empty!35901)))

(assert (= (and b!4919153 ((_ is ElementMatch!13355) (h!63096 (t!367196 (exprs!3497 setElem!27414))))) b!4920138))

(assert (= (and b!4919153 ((_ is Concat!21928) (h!63096 (t!367196 (exprs!3497 setElem!27414))))) b!4920139))

(assert (= (and b!4919153 ((_ is Star!13355) (h!63096 (t!367196 (exprs!3497 setElem!27414))))) b!4920140))

(assert (= (and b!4919153 ((_ is Union!13355) (h!63096 (t!367196 (exprs!3497 setElem!27414))))) b!4920141))

(declare-fun b!4920142 () Bool)

(declare-fun e!3074676 () Bool)

(declare-fun tp!1382710 () Bool)

(declare-fun tp!1382711 () Bool)

(assert (=> b!4920142 (= e!3074676 (and tp!1382710 tp!1382711))))

(assert (=> b!4919153 (= tp!1382628 e!3074676)))

(assert (= (and b!4919153 ((_ is Cons!56648) (t!367196 (t!367196 (exprs!3497 setElem!27414))))) b!4920142))

(declare-fun b!4920143 () Bool)

(declare-fun tp!1382713 () Bool)

(declare-fun tp!1382712 () Bool)

(declare-fun e!3074677 () Bool)

(assert (=> b!4920143 (= e!3074677 (and (inv!73337 (left!41299 (left!41299 (left!41299 (c!836549 input!5492))))) tp!1382713 (inv!73337 (right!41629 (left!41299 (left!41299 (c!836549 input!5492))))) tp!1382712))))

(declare-fun b!4920145 () Bool)

(declare-fun e!3074678 () Bool)

(declare-fun tp!1382714 () Bool)

(assert (=> b!4920145 (= e!3074678 tp!1382714)))

(declare-fun b!4920144 () Bool)

(assert (=> b!4920144 (= e!3074677 (and (inv!73345 (xs!18172 (left!41299 (left!41299 (c!836549 input!5492))))) e!3074678))))

(assert (=> b!4919129 (= tp!1382607 (and (inv!73337 (left!41299 (left!41299 (c!836549 input!5492)))) e!3074677))))

(assert (= (and b!4919129 ((_ is Node!14854) (left!41299 (left!41299 (c!836549 input!5492))))) b!4920143))

(assert (= b!4920144 b!4920145))

(assert (= (and b!4919129 ((_ is Leaf!24714) (left!41299 (left!41299 (c!836549 input!5492))))) b!4920144))

(declare-fun m!5934028 () Bool)

(assert (=> b!4920143 m!5934028))

(declare-fun m!5934030 () Bool)

(assert (=> b!4920143 m!5934030))

(declare-fun m!5934032 () Bool)

(assert (=> b!4920144 m!5934032))

(assert (=> b!4919129 m!5932350))

(declare-fun b!4920146 () Bool)

(declare-fun tp!1382715 () Bool)

(declare-fun e!3074679 () Bool)

(declare-fun tp!1382716 () Bool)

(assert (=> b!4920146 (= e!3074679 (and (inv!73337 (left!41299 (right!41629 (left!41299 (c!836549 input!5492))))) tp!1382716 (inv!73337 (right!41629 (right!41629 (left!41299 (c!836549 input!5492))))) tp!1382715))))

(declare-fun b!4920148 () Bool)

(declare-fun e!3074680 () Bool)

(declare-fun tp!1382717 () Bool)

(assert (=> b!4920148 (= e!3074680 tp!1382717)))

(declare-fun b!4920147 () Bool)

(assert (=> b!4920147 (= e!3074679 (and (inv!73345 (xs!18172 (right!41629 (left!41299 (c!836549 input!5492))))) e!3074680))))

(assert (=> b!4919129 (= tp!1382606 (and (inv!73337 (right!41629 (left!41299 (c!836549 input!5492)))) e!3074679))))

(assert (= (and b!4919129 ((_ is Node!14854) (right!41629 (left!41299 (c!836549 input!5492))))) b!4920146))

(assert (= b!4920147 b!4920148))

(assert (= (and b!4919129 ((_ is Leaf!24714) (right!41629 (left!41299 (c!836549 input!5492))))) b!4920147))

(declare-fun m!5934034 () Bool)

(assert (=> b!4920146 m!5934034))

(declare-fun m!5934036 () Bool)

(assert (=> b!4920146 m!5934036))

(declare-fun m!5934038 () Bool)

(assert (=> b!4920147 m!5934038))

(assert (=> b!4919129 m!5932352))

(declare-fun b!4920149 () Bool)

(declare-fun e!3074681 () Bool)

(declare-fun tp!1382718 () Bool)

(assert (=> b!4920149 (= e!3074681 (and tp_is_empty!35901 tp!1382718))))

(assert (=> b!4919131 (= tp!1382608 e!3074681)))

(assert (= (and b!4919131 ((_ is Cons!56647) (innerList!14942 (xs!18172 (left!41299 (c!836549 input!5492)))))) b!4920149))

(declare-fun b!4920150 () Bool)

(declare-fun e!3074682 () Bool)

(declare-fun tp!1382719 () Bool)

(declare-fun tp!1382720 () Bool)

(assert (=> b!4920150 (= e!3074682 (and tp!1382719 tp!1382720))))

(assert (=> b!4919155 (= tp!1382631 e!3074682)))

(assert (= (and b!4919155 ((_ is Cons!56648) (exprs!3497 setElem!27421))) b!4920150))

(declare-fun b!4920151 () Bool)

(declare-fun e!3074683 () Bool)

(declare-fun tp!1382721 () Bool)

(assert (=> b!4920151 (= e!3074683 (and tp_is_empty!35901 tp!1382721))))

(assert (=> b!4919166 (= tp!1382635 e!3074683)))

(assert (= (and b!4919166 ((_ is Cons!56647) (t!367195 (innerList!14942 (xs!18172 (c!836549 input!5492)))))) b!4920151))

(declare-fun condSetEmpty!27423 () Bool)

(assert (=> setNonEmpty!27421 (= condSetEmpty!27423 (= setRest!27421 ((as const (Array Context!5994 Bool)) false)))))

(declare-fun setRes!27423 () Bool)

(assert (=> setNonEmpty!27421 (= tp!1382632 setRes!27423)))

(declare-fun setIsEmpty!27423 () Bool)

(assert (=> setIsEmpty!27423 setRes!27423))

(declare-fun setNonEmpty!27423 () Bool)

(declare-fun e!3074684 () Bool)

(declare-fun setElem!27423 () Context!5994)

(declare-fun tp!1382723 () Bool)

(assert (=> setNonEmpty!27423 (= setRes!27423 (and tp!1382723 (inv!73338 setElem!27423) e!3074684))))

(declare-fun setRest!27423 () (InoxSet Context!5994))

(assert (=> setNonEmpty!27423 (= setRest!27421 ((_ map or) (store ((as const (Array Context!5994 Bool)) false) setElem!27423 true) setRest!27423))))

(declare-fun b!4920152 () Bool)

(declare-fun tp!1382722 () Bool)

(assert (=> b!4920152 (= e!3074684 tp!1382722)))

(assert (= (and setNonEmpty!27421 condSetEmpty!27423) setIsEmpty!27423))

(assert (= (and setNonEmpty!27421 (not condSetEmpty!27423)) setNonEmpty!27423))

(assert (= setNonEmpty!27423 b!4920152))

(declare-fun m!5934040 () Bool)

(assert (=> setNonEmpty!27423 m!5934040))

(declare-fun b_lambda!196253 () Bool)

(assert (= b_lambda!196249 (or d!1581822 b_lambda!196253)))

(declare-fun bs!1179014 () Bool)

(declare-fun d!1582640 () Bool)

(assert (= bs!1179014 (and d!1582640 d!1581822)))

(assert (=> bs!1179014 (= (dynLambda!23002 lambda!244986 (h!63096 (t!367196 (exprs!3497 setElem!27414)))) (validRegex!5939 (h!63096 (t!367196 (exprs!3497 setElem!27414)))))))

(declare-fun m!5934042 () Bool)

(assert (=> bs!1179014 m!5934042))

(assert (=> b!4919370 d!1582640))

(declare-fun b_lambda!196255 () Bool)

(assert (= b_lambda!196251 (or d!1581834 b_lambda!196255)))

(declare-fun bs!1179015 () Bool)

(declare-fun d!1582642 () Bool)

(assert (= bs!1179015 (and d!1582642 d!1581834)))

(assert (=> bs!1179015 (= (dynLambda!23002 lambda!244990 (h!63096 (exprs!3497 setElem!27420))) (validRegex!5939 (h!63096 (exprs!3497 setElem!27420))))))

(declare-fun m!5934044 () Bool)

(assert (=> bs!1179015 m!5934044))

(assert (=> b!4919372 d!1582642))

(check-sat (not bm!342093) (not d!1582120) (not b!4919512) (not b!4920144) (not b!4919451) (not d!1582478) (not bm!342103) (not b!4919835) (not b!4919503) (not b!4919767) (not bm!342142) (not b!4919545) (not b!4919793) (not bm!342115) (not b!4919403) (not b!4919366) (not d!1582564) (not bm!342084) (not b!4920026) tp_is_empty!35901 (not b!4919299) (not d!1582178) (not d!1582406) (not d!1582524) (not b!4919478) (not b!4919625) (not b!4919843) (not b!4919407) (not b!4919886) (not b!4920110) (not b!4919563) (not b!4919539) (not d!1582246) (not b!4920113) (not b!4920032) (not b!4919821) (not bm!342123) (not b!4919132) (not b!4919548) (not b!4919884) (not b!4919840) (not b!4919440) (not b!4919747) (not b!4920077) (not b!4919864) (not b!4920108) (not b!4919755) (not b!4920142) (not b!4919533) (not d!1582434) (not b!4919887) (not b!4919765) (not d!1582624) (not bm!342111) (not b!4919752) (not b!4919657) (not b!4919390) (not b!4919853) (not d!1582112) (not b!4919950) (not bm!342109) (not b!4919444) (not b!4919465) (not b!4919417) (not b!4920109) (not b!4920145) (not b!4919807) (not b!4919693) (not b!4919611) (not b!4919956) (not bm!342126) (not b!4919450) (not b!4919931) (not bm!342113) (not b!4919790) (not b!4919757) (not b!4919889) (not bm!342101) (not b!4920029) (not bm!342140) (not b!4919365) (not b!4919466) (not d!1582284) (not d!1582160) (not d!1582066) (not b!4919820) (not b!4919785) (not d!1582422) (not b!4920035) (not d!1582090) (not b!4919636) (not b!4919438) (not b!4920044) (not b!4920150) (not b!4919791) (not b!4920127) (not b!4919433) (not b!4919505) (not b!4920114) (not bm!342127) (not bs!1179014) (not b!4920025) (not b!4919659) (not b!4919461) (not b!4919605) (not b!4919369) (not d!1582552) (not b!4919557) (not b!4919794) (not b!4919595) (not bm!342143) (not b!4919391) (not b!4919883) (not b!4919661) (not d!1582140) (not b!4919814) (not bm!342139) (not d!1582570) (not b!4919551) (not b!4920117) (not b!4920143) (not b!4919298) (not b!4919609) (not d!1582218) (not b!4919431) (not d!1582634) (not b!4919650) (not b!4919452) (not b!4920151) (not d!1582216) (not d!1582638) (not b!4919696) (not b!4919768) (not b!4919788) (not b!4919612) (not d!1582110) (not b!4919479) (not b!4920135) (not bm!342114) (not b!4919855) (not bs!1179015) (not b!4920123) (not b!4919254) (not b!4919446) (not b!4919554) (not d!1582600) (not b!4920066) (not bm!342122) (not d!1582180) (not b!4919646) (not bm!342104) (not b!4919833) (not b!4920045) (not b!4919845) (not b!4919847) (not bm!342162) (not d!1582332) (not d!1582232) (not b!4919613) (not bm!342132) (not bm!342079) (not b!4920065) (not d!1582288) (not b!4920064) (not d!1582528) (not bm!342091) (not d!1582602) (not b!4919492) (not d!1582614) (not b!4919654) (not d!1582398) (not b!4919836) (not b!4919607) (not b!4919555) (not b!4920141) (not d!1582078) (not b!4919584) (not b!4919537) (not b!4920119) (not b!4919620) (not b!4920069) (not b!4920060) (not b!4919401) (not d!1582350) (not b!4919994) (not b!4919827) (not b!4920041) (not d!1582254) (not b!4919778) (not d!1582196) (not b!4920063) (not b!4919376) (not b!4919780) (not b!4919317) (not d!1582618) (not b!4919885) (not b!4920136) (not b!4919758) (not b!4920129) (not b!4919737) (not b!4919952) (not b!4919951) (not b!4919623) (not d!1582354) (not b!4919739) (not b!4919699) (not d!1582488) (not b!4919866) (not b!4919436) (not b!4920076) (not bm!342150) (not d!1582270) (not b!4919435) (not b!4920118) (not b!4919647) (not bm!342131) (not b!4919653) (not b!4919799) (not b!4919303) (not b!4919405) (not b!4919979) (not d!1582162) (not b!4919754) (not b!4919841) (not d!1582328) (not d!1582108) (not d!1582432) (not b!4919385) (not b!4919779) (not d!1582536) (not b!4919651) (not d!1582070) (not b!4919597) (not b!4919857) (not b!4919427) (not d!1582136) (not b!4919414) (not b!4919429) (not b!4920047) (not b!4919783) (not b!4919740) (not b!4919700) (not b!4920133) (not b!4920149) (not bm!342105) (not b!4919600) (not b!4919986) (not d!1582556) (not b!4919811) (not d!1582224) (not b!4919411) (not b!4919421) (not d!1582622) (not b!4920086) (not b!4919535) (not b!4920147) (not b!4919781) (not b!4919598) (not bm!342087) (not bm!342107) (not b!4919318) (not b!4920128) (not bm!342144) (not b!4919759) (not bm!342129) (not d!1582292) (not b!4919359) (not b!4919608) (not b!4919383) (not b!4919129) (not b!4919536) (not d!1582476) (not bm!342125) (not d!1582242) (not b!4919622) (not b!4920033) (not d!1582244) (not b!4920152) (not b!4920084) (not d!1582138) (not b!4919439) (not d!1582594) (not b!4919527) (not bm!342112) (not b!4920116) (not b!4919596) (not b!4919447) (not b!4920139) (not b!4919961) (not b!4920023) (not bm!342108) (not d!1582286) (not bm!342141) (not b!4919552) (not b!4919871) (not d!1582436) (not b!4919658) (not b!4919442) (not bm!342102) (not b!4919610) (not d!1582118) (not b!4919506) (not b!4919960) (not d!1582466) (not b!4919423) (not b!4919484) (not d!1582596) (not b!4919973) (not b!4919830) (not bm!342148) (not d!1582202) (not bm!342118) (not d!1582100) (not d!1582156) (not d!1582628) (not d!1582068) (not b!4919848) (not bm!342151) (not b!4919756) (not b!4919760) (not bm!342155) (not b!4919409) (not b!4919511) (not d!1582396) (not bm!342147) (not b!4919838) (not b!4919515) (not b!4919324) (not b!4919550) (not bm!342117) (not b!4920068) (not d!1582212) (not d!1582462) (not b!4919387) (not b!4919750) (not b!4919389) (not b!4919547) (not b!4919577) (not d!1582282) (not b!4919787) (not b!4919882) (not b!4920125) (not b!4919358) (not bm!342146) (not d!1582320) (not b!4920042) (not b!4919476) (not d!1582438) (not d!1582576) (not b!4919776) (not d!1582280) (not b!4919860) (not b!4920107) (not b!4919601) (not d!1582420) (not b!4919542) (not b!4919629) (not b!4919482) (not b!4919363) (not b!4919393) (not d!1582532) (not b!4919460) (not b!4919839) (not b!4920059) (not b!4919541) (not setNonEmpty!27423) (not b!4919573) (not bm!342116) (not bm!342145) (not b!4919544) (not b!4919418) (not d!1582240) (not b!4919932) (not b!4920040) (not b!4919987) (not b!4919350) (not b!4920140) (not b!4919615) (not b!4919509) (not b!4920115) (not bm!342133) (not b!4919617) (not b!4919499) (not b!4919322) (not b!4919388) (not b!4919457) (not b!4919826) (not d!1582214) (not b!4919490) (not d!1582548) (not b!4920120) (not bm!342134) (not b!4919618) (not b!4919652) (not b!4919858) (not b!4919624) (not b!4919594) (not b!4919404) (not d!1582094) (not b!4919944) (not d!1582586) (not b!4920112) (not d!1582088) (not d!1582470) (not b!4919501) (not b!4919309) (not d!1582268) (not bm!342149) (not b!4919392) (not b!4920036) (not b!4919665) (not b!4919500) (not d!1582230) (not b!4919837) (not bm!342110) (not bm!342085) (not b!4919456) (not d!1582186) (not b!4919648) (not d!1582558) (not b!4919639) (not b!4919354) (not b_lambda!196255) (not b!4920148) (not b!4919972) (not b!4919831) (not b!4919437) (not b!4919373) (not b!4919777) (not d!1582604) (not b_lambda!196245) (not b!4919531) (not b!4919881) (not b!4919517) (not d!1582482) (not b!4919543) (not b!4919936) (not b!4919425) (not b!4919736) (not b!4919621) (not d!1582330) (not b!4919930) (not b!4919786) (not d!1582630) (not b!4919974) (not b!4920057) (not b!4919371) (not b!4919569) (not b!4919748) (not b!4919455) (not b!4919619) (not d!1582542) (not b!4919468) (not b!4919978) (not d!1582352) (not b!4919996) (not d!1582248) (not bm!342128) (not b!4919353) (not d!1582490) (not b!4919789) (not b!4919410) (not b!4919320) (not b!4919796) (not b!4919483) (not d!1582468) (not d!1582272) (not b!4919496) (not b!4920073) (not b!4919817) (not b!4919888) (not b!4919540) (not b!4919560) (not b_lambda!196253) (not b!4919362) (not b!4920131) (not b!4919375) (not b!4919662) (not d!1582380) (not b!4919525) (not b!4919806) (not b!4920074) (not b!4920132) (not b!4919553) (not b!4919587) (not b!4919567) (not bm!342080) (not bm!342120) (not b!4919694) (not b!4919813) (not d!1582584) (not bm!342121) (not b!4919803) (not b!4919810) (not d!1582082) (not b!4920137) (not b!4920121) (not d!1582222) (not b!4920056) (not d!1582278) (not b!4920048) (not b!4919413) (not b!4919957) (not bm!342119) (not d!1582590) (not b!4920072) (not b!4919464) (not bm!342106) (not b!4919655) (not b!4920124) (not b!4919649) (not b!4920146) (not d!1582452) (not b!4919528) (not b!4919486) (not b!4920043) (not b!4919603))
(check-sat)
