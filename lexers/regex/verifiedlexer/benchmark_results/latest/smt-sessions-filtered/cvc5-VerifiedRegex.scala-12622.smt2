; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!699398 () Bool)

(assert start!699398)

(declare-fun b!7185738 () Bool)

(assert (=> b!7185738 true))

(declare-fun b!7185736 () Bool)

(declare-fun e!4315301 () Bool)

(assert (=> b!7185736 (= e!4315301 false)))

(declare-fun b!7185737 () Bool)

(declare-fun e!4315296 () Bool)

(declare-fun tp!1995407 () Bool)

(assert (=> b!7185737 (= e!4315296 tp!1995407)))

(declare-fun setIsEmpty!53166 () Bool)

(declare-fun setRes!53166 () Bool)

(assert (=> setIsEmpty!53166 setRes!53166))

(declare-datatypes ((Unit!163355 0))(
  ( (Unit!163356) )
))
(declare-fun e!4315297 () Unit!163355)

(declare-fun Unit!163357 () Unit!163355)

(assert (=> b!7185738 (= e!4315297 Unit!163357)))

(declare-datatypes ((C!36978 0))(
  ( (C!36979 (val!28437 Int)) )
))
(declare-datatypes ((Regex!18352 0))(
  ( (ElementMatch!18352 (c!1337800 C!36978)) (Concat!27197 (regOne!37216 Regex!18352) (regTwo!37216 Regex!18352)) (EmptyExpr!18352) (Star!18352 (reg!18681 Regex!18352)) (EmptyLang!18352) (Union!18352 (regOne!37217 Regex!18352) (regTwo!37217 Regex!18352)) )
))
(declare-datatypes ((List!69786 0))(
  ( (Nil!69662) (Cons!69662 (h!76110 Regex!18352) (t!383809 List!69786)) )
))
(declare-datatypes ((Context!14608 0))(
  ( (Context!14609 (exprs!7804 List!69786)) )
))
(declare-fun empty!2979 () Context!14608)

(declare-fun inv!88903 (Context!14608) Bool)

(assert (=> b!7185738 (and (inv!88903 empty!2979) e!4315296)))

(assert (=> b!7185738 true))

(declare-fun z!3530 () (Set Context!14608))

(declare-fun lambda!437628 () Int)

(declare-fun res!2926218 () Bool)

(declare-fun lt!2570924 () (Set Context!14608))

(declare-fun flatMapPost!65 ((Set Context!14608) Int Context!14608) Context!14608)

(declare-datatypes ((List!69787 0))(
  ( (Nil!69663) (Cons!69663 (h!76111 Context!14608) (t!383810 List!69787)) )
))
(declare-fun head!14669 (List!69787) Context!14608)

(declare-fun toList!11295 ((Set Context!14608)) List!69787)

(assert (=> b!7185738 (= res!2926218 (= (flatMapPost!65 z!3530 lambda!437628 (head!14669 (toList!11295 lt!2570924))) empty!2979))))

(assert (=> b!7185738 (=> (not res!2926218) (not e!4315301))))

(assert (=> b!7185738 e!4315301))

(declare-fun b!7185739 () Bool)

(declare-fun e!4315298 () Bool)

(declare-fun tp!1995404 () Bool)

(assert (=> b!7185739 (= e!4315298 tp!1995404)))

(declare-fun b!7185740 () Bool)

(declare-fun e!4315300 () Bool)

(declare-fun tp_is_empty!46265 () Bool)

(declare-fun tp!1995406 () Bool)

(assert (=> b!7185740 (= e!4315300 (and tp_is_empty!46265 tp!1995406))))

(declare-fun b!7185741 () Bool)

(declare-fun res!2926222 () Bool)

(declare-fun e!4315295 () Bool)

(assert (=> b!7185741 (=> (not res!2926222) (not e!4315295))))

(declare-fun focus!427 (Regex!18352) (Set Context!14608))

(assert (=> b!7185741 (= res!2926222 (= z!3530 (focus!427 EmptyExpr!18352)))))

(declare-fun b!7185742 () Bool)

(declare-fun e!4315299 () Bool)

(declare-fun e!4315302 () Bool)

(assert (=> b!7185742 (= e!4315299 e!4315302)))

(declare-fun res!2926221 () Bool)

(assert (=> b!7185742 (=> res!2926221 e!4315302)))

(declare-fun lt!2570922 () Context!14608)

(declare-fun lt!2570925 () C!36978)

(declare-fun derivationStepZipperUp!2328 (Context!14608 C!36978) (Set Context!14608))

(assert (=> b!7185742 (= res!2926221 (not (= (derivationStepZipperUp!2328 lt!2570922 lt!2570925) (as set.empty (Set Context!14608)))))))

(declare-fun derivationStepZipper!3221 ((Set Context!14608) C!36978) (Set Context!14608))

(assert (=> b!7185742 (= lt!2570924 (derivationStepZipper!3221 z!3530 lt!2570925))))

(declare-datatypes ((List!69788 0))(
  ( (Nil!69664) (Cons!69664 (h!76112 C!36978) (t!383811 List!69788)) )
))
(declare-fun s!7967 () List!69788)

(declare-fun head!14670 (List!69788) C!36978)

(assert (=> b!7185742 (= lt!2570925 (head!14670 s!7967))))

(declare-fun b!7185743 () Bool)

(declare-fun matchZipper!3358 ((Set Context!14608) List!69788) Bool)

(assert (=> b!7185743 (= e!4315302 (not (matchZipper!3358 z!3530 s!7967)))))

(declare-fun lt!2570923 () List!69788)

(assert (=> b!7185743 (not (matchZipper!3358 lt!2570924 lt!2570923))))

(declare-fun lt!2570926 () Unit!163355)

(declare-fun lemmaEmptyZipperMatchesNothing!119 ((Set Context!14608) List!69788) Unit!163355)

(assert (=> b!7185743 (= lt!2570926 (lemmaEmptyZipperMatchesNothing!119 lt!2570924 lt!2570923))))

(declare-fun tail!14070 (List!69788) List!69788)

(assert (=> b!7185743 (= lt!2570923 (tail!14070 s!7967))))

(declare-fun lt!2570921 () Unit!163355)

(assert (=> b!7185743 (= lt!2570921 e!4315297)))

(declare-fun c!1337799 () Bool)

(assert (=> b!7185743 (= c!1337799 (not (= lt!2570924 (as set.empty (Set Context!14608)))))))

(declare-fun b!7185744 () Bool)

(assert (=> b!7185744 (= e!4315295 (not e!4315299))))

(declare-fun res!2926220 () Bool)

(assert (=> b!7185744 (=> res!2926220 e!4315299)))

(declare-fun isEmpty!40214 (List!69788) Bool)

(assert (=> b!7185744 (= res!2926220 (isEmpty!40214 s!7967))))

(declare-fun nullableContext!201 (Context!14608) Bool)

(assert (=> b!7185744 (nullableContext!201 lt!2570922)))

(assert (=> b!7185744 (= lt!2570922 (Context!14609 (Cons!69662 EmptyExpr!18352 Nil!69662)))))

(declare-fun b!7185745 () Bool)

(declare-fun Unit!163358 () Unit!163355)

(assert (=> b!7185745 (= e!4315297 Unit!163358)))

(declare-fun res!2926219 () Bool)

(assert (=> start!699398 (=> (not res!2926219) (not e!4315295))))

(declare-fun unfocusZipper!2612 (List!69787) Regex!18352)

(assert (=> start!699398 (= res!2926219 (= (unfocusZipper!2612 (toList!11295 z!3530)) EmptyExpr!18352))))

(assert (=> start!699398 e!4315295))

(declare-fun condSetEmpty!53166 () Bool)

(assert (=> start!699398 (= condSetEmpty!53166 (= z!3530 (as set.empty (Set Context!14608))))))

(assert (=> start!699398 setRes!53166))

(assert (=> start!699398 e!4315300))

(declare-fun tp!1995405 () Bool)

(declare-fun setElem!53166 () Context!14608)

(declare-fun setNonEmpty!53166 () Bool)

(assert (=> setNonEmpty!53166 (= setRes!53166 (and tp!1995405 (inv!88903 setElem!53166) e!4315298))))

(declare-fun setRest!53166 () (Set Context!14608))

(assert (=> setNonEmpty!53166 (= z!3530 (set.union (set.insert setElem!53166 (as set.empty (Set Context!14608))) setRest!53166))))

(assert (= (and start!699398 res!2926219) b!7185741))

(assert (= (and b!7185741 res!2926222) b!7185744))

(assert (= (and b!7185744 (not res!2926220)) b!7185742))

(assert (= (and b!7185742 (not res!2926221)) b!7185743))

(assert (= (and b!7185743 c!1337799) b!7185738))

(assert (= (and b!7185743 (not c!1337799)) b!7185745))

(assert (= b!7185738 b!7185737))

(assert (= (and b!7185738 res!2926218) b!7185736))

(assert (= (and start!699398 condSetEmpty!53166) setIsEmpty!53166))

(assert (= (and start!699398 (not condSetEmpty!53166)) setNonEmpty!53166))

(assert (= setNonEmpty!53166 b!7185739))

(assert (= (and start!699398 (is-Cons!69664 s!7967)) b!7185740))

(declare-fun m!7882530 () Bool)

(assert (=> b!7185741 m!7882530))

(declare-fun m!7882532 () Bool)

(assert (=> setNonEmpty!53166 m!7882532))

(declare-fun m!7882534 () Bool)

(assert (=> b!7185744 m!7882534))

(declare-fun m!7882536 () Bool)

(assert (=> b!7185744 m!7882536))

(declare-fun m!7882538 () Bool)

(assert (=> start!699398 m!7882538))

(assert (=> start!699398 m!7882538))

(declare-fun m!7882540 () Bool)

(assert (=> start!699398 m!7882540))

(declare-fun m!7882542 () Bool)

(assert (=> b!7185742 m!7882542))

(declare-fun m!7882544 () Bool)

(assert (=> b!7185742 m!7882544))

(declare-fun m!7882546 () Bool)

(assert (=> b!7185742 m!7882546))

(declare-fun m!7882548 () Bool)

(assert (=> b!7185738 m!7882548))

(declare-fun m!7882550 () Bool)

(assert (=> b!7185738 m!7882550))

(assert (=> b!7185738 m!7882550))

(declare-fun m!7882552 () Bool)

(assert (=> b!7185738 m!7882552))

(assert (=> b!7185738 m!7882552))

(declare-fun m!7882554 () Bool)

(assert (=> b!7185738 m!7882554))

(declare-fun m!7882556 () Bool)

(assert (=> b!7185743 m!7882556))

(declare-fun m!7882558 () Bool)

(assert (=> b!7185743 m!7882558))

(declare-fun m!7882560 () Bool)

(assert (=> b!7185743 m!7882560))

(declare-fun m!7882562 () Bool)

(assert (=> b!7185743 m!7882562))

(push 1)

(assert (not b!7185743))

(assert (not b!7185738))

(assert (not b!7185744))

(assert tp_is_empty!46265)

(assert (not setNonEmpty!53166))

(assert (not b!7185742))

(assert (not b!7185739))

(assert (not start!699398))

(assert (not b!7185737))

(assert (not b!7185741))

(assert (not b!7185740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2238337 () Bool)

(declare-fun c!1337807 () Bool)

(assert (=> d!2238337 (= c!1337807 (isEmpty!40214 s!7967))))

(declare-fun e!4315329 () Bool)

(assert (=> d!2238337 (= (matchZipper!3358 z!3530 s!7967) e!4315329)))

(declare-fun b!7185784 () Bool)

(declare-fun nullableZipper!2781 ((Set Context!14608)) Bool)

(assert (=> b!7185784 (= e!4315329 (nullableZipper!2781 z!3530))))

(declare-fun b!7185785 () Bool)

(assert (=> b!7185785 (= e!4315329 (matchZipper!3358 (derivationStepZipper!3221 z!3530 (head!14670 s!7967)) (tail!14070 s!7967)))))

(assert (= (and d!2238337 c!1337807) b!7185784))

(assert (= (and d!2238337 (not c!1337807)) b!7185785))

(assert (=> d!2238337 m!7882534))

(declare-fun m!7882598 () Bool)

(assert (=> b!7185784 m!7882598))

(assert (=> b!7185785 m!7882546))

(assert (=> b!7185785 m!7882546))

(declare-fun m!7882600 () Bool)

(assert (=> b!7185785 m!7882600))

(assert (=> b!7185785 m!7882562))

(assert (=> b!7185785 m!7882600))

(assert (=> b!7185785 m!7882562))

(declare-fun m!7882602 () Bool)

(assert (=> b!7185785 m!7882602))

(assert (=> b!7185743 d!2238337))

(declare-fun d!2238341 () Bool)

(declare-fun c!1337808 () Bool)

(assert (=> d!2238341 (= c!1337808 (isEmpty!40214 lt!2570923))))

(declare-fun e!4315330 () Bool)

(assert (=> d!2238341 (= (matchZipper!3358 lt!2570924 lt!2570923) e!4315330)))

(declare-fun b!7185786 () Bool)

(assert (=> b!7185786 (= e!4315330 (nullableZipper!2781 lt!2570924))))

(declare-fun b!7185787 () Bool)

(assert (=> b!7185787 (= e!4315330 (matchZipper!3358 (derivationStepZipper!3221 lt!2570924 (head!14670 lt!2570923)) (tail!14070 lt!2570923)))))

(assert (= (and d!2238341 c!1337808) b!7185786))

(assert (= (and d!2238341 (not c!1337808)) b!7185787))

(declare-fun m!7882604 () Bool)

(assert (=> d!2238341 m!7882604))

(declare-fun m!7882606 () Bool)

(assert (=> b!7185786 m!7882606))

(declare-fun m!7882608 () Bool)

(assert (=> b!7185787 m!7882608))

(assert (=> b!7185787 m!7882608))

(declare-fun m!7882610 () Bool)

(assert (=> b!7185787 m!7882610))

(declare-fun m!7882612 () Bool)

(assert (=> b!7185787 m!7882612))

(assert (=> b!7185787 m!7882610))

(assert (=> b!7185787 m!7882612))

(declare-fun m!7882614 () Bool)

(assert (=> b!7185787 m!7882614))

(assert (=> b!7185743 d!2238341))

(declare-fun d!2238343 () Bool)

(assert (=> d!2238343 (not (matchZipper!3358 lt!2570924 lt!2570923))))

(declare-fun lt!2570947 () Unit!163355)

(declare-fun choose!55394 ((Set Context!14608) List!69788) Unit!163355)

(assert (=> d!2238343 (= lt!2570947 (choose!55394 lt!2570924 lt!2570923))))

(assert (=> d!2238343 (= lt!2570924 (as set.empty (Set Context!14608)))))

(assert (=> d!2238343 (= (lemmaEmptyZipperMatchesNothing!119 lt!2570924 lt!2570923) lt!2570947)))

(declare-fun bs!1897905 () Bool)

(assert (= bs!1897905 d!2238343))

(assert (=> bs!1897905 m!7882558))

(declare-fun m!7882618 () Bool)

(assert (=> bs!1897905 m!7882618))

(assert (=> b!7185743 d!2238343))

(declare-fun d!2238347 () Bool)

(assert (=> d!2238347 (= (tail!14070 s!7967) (t!383811 s!7967))))

(assert (=> b!7185743 d!2238347))

(declare-fun d!2238349 () Bool)

(declare-fun lambda!437637 () Int)

(declare-fun forall!17180 (List!69786 Int) Bool)

(assert (=> d!2238349 (= (inv!88903 empty!2979) (forall!17180 (exprs!7804 empty!2979) lambda!437637))))

(declare-fun bs!1897906 () Bool)

(assert (= bs!1897906 d!2238349))

(declare-fun m!7882620 () Bool)

(assert (=> bs!1897906 m!7882620))

(assert (=> b!7185738 d!2238349))

(declare-fun d!2238351 () Bool)

(assert (=> d!2238351 true))

(assert (=> d!2238351 true))

(declare-fun order!28693 () Int)

(declare-fun order!28691 () Int)

(declare-fun lambda!437640 () Int)

(declare-fun dynLambda!28372 (Int Int) Int)

(declare-fun dynLambda!28373 (Int Int) Int)

(assert (=> d!2238351 (< (dynLambda!28372 order!28691 lambda!437628) (dynLambda!28373 order!28693 lambda!437640))))

(declare-fun flatMap!2670 ((Set Context!14608) Int) (Set Context!14608))

(declare-fun exists!4079 ((Set Context!14608) Int) Bool)

(assert (=> d!2238351 (= (set.member (head!14669 (toList!11295 lt!2570924)) (flatMap!2670 z!3530 lambda!437628)) (exists!4079 z!3530 lambda!437640))))

(declare-fun lt!2570950 () Context!14608)

(declare-fun choose!55395 ((Set Context!14608) Int Context!14608) Context!14608)

(assert (=> d!2238351 (= lt!2570950 (choose!55395 z!3530 lambda!437628 (head!14669 (toList!11295 lt!2570924))))))

(assert (=> d!2238351 (= (flatMapPost!65 z!3530 lambda!437628 (head!14669 (toList!11295 lt!2570924))) lt!2570950)))

(declare-fun bs!1897907 () Bool)

(assert (= bs!1897907 d!2238351))

(declare-fun m!7882622 () Bool)

(assert (=> bs!1897907 m!7882622))

(assert (=> bs!1897907 m!7882552))

(declare-fun m!7882624 () Bool)

(assert (=> bs!1897907 m!7882624))

(declare-fun m!7882626 () Bool)

(assert (=> bs!1897907 m!7882626))

(assert (=> bs!1897907 m!7882552))

(declare-fun m!7882628 () Bool)

(assert (=> bs!1897907 m!7882628))

(assert (=> b!7185738 d!2238351))

(declare-fun d!2238353 () Bool)

(assert (=> d!2238353 (= (head!14669 (toList!11295 lt!2570924)) (h!76111 (toList!11295 lt!2570924)))))

(assert (=> b!7185738 d!2238353))

(declare-fun d!2238355 () Bool)

(declare-fun e!4315339 () Bool)

(assert (=> d!2238355 e!4315339))

(declare-fun res!2926242 () Bool)

(assert (=> d!2238355 (=> (not res!2926242) (not e!4315339))))

(declare-fun lt!2570953 () List!69787)

(declare-fun noDuplicate!2888 (List!69787) Bool)

(assert (=> d!2238355 (= res!2926242 (noDuplicate!2888 lt!2570953))))

(declare-fun choose!55396 ((Set Context!14608)) List!69787)

(assert (=> d!2238355 (= lt!2570953 (choose!55396 lt!2570924))))

(assert (=> d!2238355 (= (toList!11295 lt!2570924) lt!2570953)))

(declare-fun b!7185805 () Bool)

(declare-fun content!14317 (List!69787) (Set Context!14608))

(assert (=> b!7185805 (= e!4315339 (= (content!14317 lt!2570953) lt!2570924))))

(assert (= (and d!2238355 res!2926242) b!7185805))

(declare-fun m!7882630 () Bool)

(assert (=> d!2238355 m!7882630))

(declare-fun m!7882632 () Bool)

(assert (=> d!2238355 m!7882632))

(declare-fun m!7882634 () Bool)

(assert (=> b!7185805 m!7882634))

(assert (=> b!7185738 d!2238355))

(declare-fun b!7185821 () Bool)

(declare-fun e!4315351 () Bool)

(declare-fun nullable!7777 (Regex!18352) Bool)

(assert (=> b!7185821 (= e!4315351 (nullable!7777 (h!76110 (exprs!7804 lt!2570922))))))

(declare-fun b!7185822 () Bool)

(declare-fun e!4315349 () (Set Context!14608))

(assert (=> b!7185822 (= e!4315349 (as set.empty (Set Context!14608)))))

(declare-fun call!655090 () (Set Context!14608))

(declare-fun e!4315350 () (Set Context!14608))

(declare-fun b!7185823 () Bool)

(assert (=> b!7185823 (= e!4315350 (set.union call!655090 (derivationStepZipperUp!2328 (Context!14609 (t!383809 (exprs!7804 lt!2570922))) lt!2570925)))))

(declare-fun d!2238357 () Bool)

(declare-fun c!1337821 () Bool)

(assert (=> d!2238357 (= c!1337821 e!4315351)))

(declare-fun res!2926246 () Bool)

(assert (=> d!2238357 (=> (not res!2926246) (not e!4315351))))

(assert (=> d!2238357 (= res!2926246 (is-Cons!69662 (exprs!7804 lt!2570922)))))

(assert (=> d!2238357 (= (derivationStepZipperUp!2328 lt!2570922 lt!2570925) e!4315350)))

(declare-fun b!7185824 () Bool)

(assert (=> b!7185824 (= e!4315350 e!4315349)))

(declare-fun c!1337822 () Bool)

(assert (=> b!7185824 (= c!1337822 (is-Cons!69662 (exprs!7804 lt!2570922)))))

(declare-fun bm!655085 () Bool)

(declare-fun derivationStepZipperDown!2513 (Regex!18352 Context!14608 C!36978) (Set Context!14608))

(assert (=> bm!655085 (= call!655090 (derivationStepZipperDown!2513 (h!76110 (exprs!7804 lt!2570922)) (Context!14609 (t!383809 (exprs!7804 lt!2570922))) lt!2570925))))

(declare-fun b!7185825 () Bool)

(assert (=> b!7185825 (= e!4315349 call!655090)))

(assert (= (and d!2238357 res!2926246) b!7185821))

(assert (= (and d!2238357 c!1337821) b!7185823))

(assert (= (and d!2238357 (not c!1337821)) b!7185824))

(assert (= (and b!7185824 c!1337822) b!7185825))

(assert (= (and b!7185824 (not c!1337822)) b!7185822))

(assert (= (or b!7185823 b!7185825) bm!655085))

(declare-fun m!7882642 () Bool)

(assert (=> b!7185821 m!7882642))

(declare-fun m!7882644 () Bool)

(assert (=> b!7185823 m!7882644))

(declare-fun m!7882646 () Bool)

(assert (=> bm!655085 m!7882646))

(assert (=> b!7185742 d!2238357))

(declare-fun bs!1897910 () Bool)

(declare-fun d!2238361 () Bool)

(assert (= bs!1897910 (and d!2238361 b!7185738)))

(declare-fun lambda!437646 () Int)

(assert (=> bs!1897910 (= lambda!437646 lambda!437628)))

(assert (=> d!2238361 true))

(assert (=> d!2238361 (= (derivationStepZipper!3221 z!3530 lt!2570925) (flatMap!2670 z!3530 lambda!437646))))

(declare-fun bs!1897911 () Bool)

(assert (= bs!1897911 d!2238361))

(declare-fun m!7882650 () Bool)

(assert (=> bs!1897911 m!7882650))

(assert (=> b!7185742 d!2238361))

(declare-fun d!2238365 () Bool)

(assert (=> d!2238365 (= (head!14670 s!7967) (h!76112 s!7967))))

(assert (=> b!7185742 d!2238365))

(declare-fun d!2238367 () Bool)

(declare-fun e!4315354 () Bool)

(assert (=> d!2238367 e!4315354))

(declare-fun res!2926251 () Bool)

(assert (=> d!2238367 (=> (not res!2926251) (not e!4315354))))

(declare-fun validRegex!9469 (Regex!18352) Bool)

(assert (=> d!2238367 (= res!2926251 (validRegex!9469 EmptyExpr!18352))))

(assert (=> d!2238367 (= (focus!427 EmptyExpr!18352) (set.insert (Context!14609 (Cons!69662 EmptyExpr!18352 Nil!69662)) (as set.empty (Set Context!14608))))))

(declare-fun b!7185828 () Bool)

(assert (=> b!7185828 (= e!4315354 (= (unfocusZipper!2612 (toList!11295 (set.insert (Context!14609 (Cons!69662 EmptyExpr!18352 Nil!69662)) (as set.empty (Set Context!14608))))) EmptyExpr!18352))))

(assert (= (and d!2238367 res!2926251) b!7185828))

(declare-fun m!7882652 () Bool)

(assert (=> d!2238367 m!7882652))

(declare-fun m!7882654 () Bool)

(assert (=> d!2238367 m!7882654))

(assert (=> b!7185828 m!7882654))

(assert (=> b!7185828 m!7882654))

(declare-fun m!7882656 () Bool)

(assert (=> b!7185828 m!7882656))

(assert (=> b!7185828 m!7882656))

(declare-fun m!7882658 () Bool)

(assert (=> b!7185828 m!7882658))

(assert (=> b!7185741 d!2238367))

(declare-fun d!2238371 () Bool)

(declare-fun lt!2570956 () Regex!18352)

(assert (=> d!2238371 (validRegex!9469 lt!2570956)))

(declare-fun generalisedUnion!2772 (List!69786) Regex!18352)

(declare-fun unfocusZipperList!2328 (List!69787) List!69786)

(assert (=> d!2238371 (= lt!2570956 (generalisedUnion!2772 (unfocusZipperList!2328 (toList!11295 z!3530))))))

(assert (=> d!2238371 (= (unfocusZipper!2612 (toList!11295 z!3530)) lt!2570956)))

(declare-fun bs!1897912 () Bool)

(assert (= bs!1897912 d!2238371))

(declare-fun m!7882660 () Bool)

(assert (=> bs!1897912 m!7882660))

(assert (=> bs!1897912 m!7882538))

(declare-fun m!7882662 () Bool)

(assert (=> bs!1897912 m!7882662))

(assert (=> bs!1897912 m!7882662))

(declare-fun m!7882664 () Bool)

(assert (=> bs!1897912 m!7882664))

(assert (=> start!699398 d!2238371))

(declare-fun d!2238373 () Bool)

(declare-fun e!4315355 () Bool)

(assert (=> d!2238373 e!4315355))

(declare-fun res!2926252 () Bool)

(assert (=> d!2238373 (=> (not res!2926252) (not e!4315355))))

(declare-fun lt!2570957 () List!69787)

(assert (=> d!2238373 (= res!2926252 (noDuplicate!2888 lt!2570957))))

(assert (=> d!2238373 (= lt!2570957 (choose!55396 z!3530))))

(assert (=> d!2238373 (= (toList!11295 z!3530) lt!2570957)))

(declare-fun b!7185829 () Bool)

(assert (=> b!7185829 (= e!4315355 (= (content!14317 lt!2570957) z!3530))))

(assert (= (and d!2238373 res!2926252) b!7185829))

(declare-fun m!7882666 () Bool)

(assert (=> d!2238373 m!7882666))

(declare-fun m!7882668 () Bool)

(assert (=> d!2238373 m!7882668))

(declare-fun m!7882670 () Bool)

(assert (=> b!7185829 m!7882670))

(assert (=> start!699398 d!2238373))

(declare-fun bs!1897913 () Bool)

(declare-fun d!2238375 () Bool)

(assert (= bs!1897913 (and d!2238375 d!2238349)))

(declare-fun lambda!437647 () Int)

(assert (=> bs!1897913 (= lambda!437647 lambda!437637)))

(assert (=> d!2238375 (= (inv!88903 setElem!53166) (forall!17180 (exprs!7804 setElem!53166) lambda!437647))))

(declare-fun bs!1897914 () Bool)

(assert (= bs!1897914 d!2238375))

(declare-fun m!7882672 () Bool)

(assert (=> bs!1897914 m!7882672))

(assert (=> setNonEmpty!53166 d!2238375))

(declare-fun d!2238377 () Bool)

(assert (=> d!2238377 (= (isEmpty!40214 s!7967) (is-Nil!69664 s!7967))))

(assert (=> b!7185744 d!2238377))

(declare-fun bs!1897915 () Bool)

(declare-fun d!2238379 () Bool)

(assert (= bs!1897915 (and d!2238379 d!2238349)))

(declare-fun lambda!437650 () Int)

(assert (=> bs!1897915 (not (= lambda!437650 lambda!437637))))

(declare-fun bs!1897916 () Bool)

(assert (= bs!1897916 (and d!2238379 d!2238375)))

(assert (=> bs!1897916 (not (= lambda!437650 lambda!437647))))

(assert (=> d!2238379 (= (nullableContext!201 lt!2570922) (forall!17180 (exprs!7804 lt!2570922) lambda!437650))))

(declare-fun bs!1897917 () Bool)

(assert (= bs!1897917 d!2238379))

(declare-fun m!7882674 () Bool)

(assert (=> bs!1897917 m!7882674))

(assert (=> b!7185744 d!2238379))

(declare-fun b!7185837 () Bool)

(declare-fun e!4315361 () Bool)

(declare-fun tp!1995424 () Bool)

(declare-fun tp!1995425 () Bool)

(assert (=> b!7185837 (= e!4315361 (and tp!1995424 tp!1995425))))

(assert (=> b!7185739 (= tp!1995404 e!4315361)))

(assert (= (and b!7185739 (is-Cons!69662 (exprs!7804 setElem!53166))) b!7185837))

(declare-fun b!7185838 () Bool)

(declare-fun e!4315362 () Bool)

(declare-fun tp!1995426 () Bool)

(declare-fun tp!1995427 () Bool)

(assert (=> b!7185838 (= e!4315362 (and tp!1995426 tp!1995427))))

(assert (=> b!7185737 (= tp!1995407 e!4315362)))

(assert (= (and b!7185737 (is-Cons!69662 (exprs!7804 empty!2979))) b!7185838))

(declare-fun b!7185843 () Bool)

(declare-fun e!4315365 () Bool)

(declare-fun tp!1995430 () Bool)

(assert (=> b!7185843 (= e!4315365 (and tp_is_empty!46265 tp!1995430))))

(assert (=> b!7185740 (= tp!1995406 e!4315365)))

(assert (= (and b!7185740 (is-Cons!69664 (t!383811 s!7967))) b!7185843))

(declare-fun condSetEmpty!53172 () Bool)

(assert (=> setNonEmpty!53166 (= condSetEmpty!53172 (= setRest!53166 (as set.empty (Set Context!14608))))))

(declare-fun setRes!53172 () Bool)

(assert (=> setNonEmpty!53166 (= tp!1995405 setRes!53172)))

(declare-fun setIsEmpty!53172 () Bool)

(assert (=> setIsEmpty!53172 setRes!53172))

(declare-fun e!4315368 () Bool)

(declare-fun setNonEmpty!53172 () Bool)

(declare-fun tp!1995436 () Bool)

(declare-fun setElem!53172 () Context!14608)

(assert (=> setNonEmpty!53172 (= setRes!53172 (and tp!1995436 (inv!88903 setElem!53172) e!4315368))))

(declare-fun setRest!53172 () (Set Context!14608))

(assert (=> setNonEmpty!53172 (= setRest!53166 (set.union (set.insert setElem!53172 (as set.empty (Set Context!14608))) setRest!53172))))

(declare-fun b!7185848 () Bool)

(declare-fun tp!1995435 () Bool)

(assert (=> b!7185848 (= e!4315368 tp!1995435)))

(assert (= (and setNonEmpty!53166 condSetEmpty!53172) setIsEmpty!53172))

(assert (= (and setNonEmpty!53166 (not condSetEmpty!53172)) setNonEmpty!53172))

(assert (= setNonEmpty!53172 b!7185848))

(declare-fun m!7882684 () Bool)

(assert (=> setNonEmpty!53172 m!7882684))

(push 1)

(assert (not b!7185828))

(assert (not b!7185785))

(assert (not d!2238361))

(assert (not d!2238351))

(assert (not bm!655085))

(assert (not b!7185829))

(assert (not d!2238373))

(assert (not b!7185805))

(assert (not d!2238337))

(assert (not d!2238371))

(assert (not b!7185786))

(assert (not d!2238375))

(assert (not d!2238341))

(assert (not d!2238343))

(assert (not b!7185787))

(assert (not b!7185821))

(assert (not d!2238367))

(assert (not b!7185784))

(assert tp_is_empty!46265)

(assert (not b!7185838))

(assert (not b!7185848))

(assert (not b!7185837))

(assert (not d!2238379))

(assert (not b!7185823))

(assert (not d!2238355))

(assert (not b!7185843))

(assert (not d!2238349))

(assert (not setNonEmpty!53172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

