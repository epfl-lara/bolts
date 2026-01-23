; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92666 () Bool)

(assert start!92666)

(declare-fun b!1086789 () Bool)

(assert (=> b!1086789 true))

(declare-fun setRes!7638 () Bool)

(declare-fun setNonEmpty!7638 () Bool)

(declare-fun e!687396 () Bool)

(declare-fun tp!325575 () Bool)

(declare-datatypes ((C!6608 0))(
  ( (C!6609 (val!3552 Int)) )
))
(declare-datatypes ((Regex!3019 0))(
  ( (ElementMatch!3019 (c!183885 C!6608)) (Concat!4852 (regOne!6550 Regex!3019) (regTwo!6550 Regex!3019)) (EmptyExpr!3019) (Star!3019 (reg!3348 Regex!3019)) (EmptyLang!3019) (Union!3019 (regOne!6551 Regex!3019) (regTwo!6551 Regex!3019)) )
))
(declare-datatypes ((List!10360 0))(
  ( (Nil!10344) (Cons!10344 (h!15745 Regex!3019) (t!101406 List!10360)) )
))
(declare-datatypes ((Context!998 0))(
  ( (Context!999 (exprs!999 List!10360)) )
))
(declare-fun setElem!7638 () Context!998)

(declare-fun inv!13260 (Context!998) Bool)

(assert (=> setNonEmpty!7638 (= setRes!7638 (and tp!325575 (inv!13260 setElem!7638) e!687396))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1122 () (InoxSet Context!998))

(declare-fun setRest!7638 () (InoxSet Context!998))

(assert (=> setNonEmpty!7638 (= z!1122 ((_ map or) (store ((as const (Array Context!998 Bool)) false) setElem!7638 true) setRest!7638))))

(declare-fun e!687395 () Bool)

(declare-fun e!687397 () Bool)

(assert (=> b!1086789 (= e!687395 (not e!687397))))

(declare-fun res!483263 () Bool)

(assert (=> b!1086789 (=> res!483263 e!687397)))

(declare-fun lambda!40320 () Int)

(declare-fun exists!177 ((InoxSet Context!998) Int) Bool)

(assert (=> b!1086789 (= res!483263 (not (exists!177 z!1122 lambda!40320)))))

(declare-datatypes ((List!10361 0))(
  ( (Nil!10345) (Cons!10345 (h!15746 Context!998) (t!101407 List!10361)) )
))
(declare-fun zl!316 () List!10361)

(declare-fun exists!178 (List!10361 Int) Bool)

(assert (=> b!1086789 (exists!178 zl!316 lambda!40320)))

(declare-datatypes ((Unit!15729 0))(
  ( (Unit!15730) )
))
(declare-fun lt!363603 () Unit!15729)

(declare-datatypes ((List!10362 0))(
  ( (Nil!10346) (Cons!10346 (h!15747 C!6608) (t!101408 List!10362)) )
))
(declare-fun s!2287 () List!10362)

(declare-fun lemmaZipperMatchesExistsMatchingContext!44 (List!10361 List!10362) Unit!15729)

(assert (=> b!1086789 (= lt!363603 (lemmaZipperMatchesExistsMatchingContext!44 zl!316 s!2287))))

(declare-fun b!1086790 () Bool)

(declare-fun e!687400 () Bool)

(assert (=> b!1086790 (= e!687397 e!687400)))

(declare-fun res!483262 () Bool)

(assert (=> b!1086790 (=> res!483262 e!687400)))

(declare-fun lt!363604 () Context!998)

(assert (=> b!1086790 (= res!483262 (not (select z!1122 lt!363604)))))

(declare-fun getWitness!90 ((InoxSet Context!998) Int) Context!998)

(assert (=> b!1086790 (= lt!363604 (getWitness!90 z!1122 lambda!40320))))

(declare-fun b!1086791 () Bool)

(declare-fun tp!325576 () Bool)

(assert (=> b!1086791 (= e!687396 tp!325576)))

(declare-fun setIsEmpty!7638 () Bool)

(assert (=> setIsEmpty!7638 setRes!7638))

(declare-fun b!1086792 () Bool)

(declare-fun res!483260 () Bool)

(declare-fun e!687393 () Bool)

(assert (=> b!1086792 (=> res!483260 e!687393)))

(declare-fun lostCause!229 (Context!998) Bool)

(assert (=> b!1086792 (= res!483260 (not (lostCause!229 lt!363604)))))

(declare-fun res!483261 () Bool)

(assert (=> start!92666 (=> (not res!483261) (not e!687395))))

(declare-fun toList!637 ((InoxSet Context!998)) List!10361)

(assert (=> start!92666 (= res!483261 (= (toList!637 z!1122) zl!316))))

(assert (=> start!92666 e!687395))

(declare-fun condSetEmpty!7638 () Bool)

(assert (=> start!92666 (= condSetEmpty!7638 (= z!1122 ((as const (Array Context!998 Bool)) false)))))

(assert (=> start!92666 setRes!7638))

(declare-fun e!687394 () Bool)

(assert (=> start!92666 e!687394))

(declare-fun e!687399 () Bool)

(assert (=> start!92666 e!687399))

(declare-fun b!1086788 () Bool)

(declare-fun lt!363605 () (InoxSet Context!998))

(declare-fun lostCauseZipper!10 ((InoxSet Context!998)) Bool)

(assert (=> b!1086788 (= e!687393 (lostCauseZipper!10 lt!363605))))

(declare-fun b!1086793 () Bool)

(declare-fun e!687398 () Bool)

(declare-fun tp!325572 () Bool)

(assert (=> b!1086793 (= e!687394 (and (inv!13260 (h!15746 zl!316)) e!687398 tp!325572))))

(declare-fun b!1086794 () Bool)

(assert (=> b!1086794 (= e!687400 e!687393)))

(declare-fun res!483259 () Bool)

(assert (=> b!1086794 (=> res!483259 e!687393)))

(declare-fun matchZipper!67 ((InoxSet Context!998) List!10362) Bool)

(assert (=> b!1086794 (= res!483259 (not (matchZipper!67 lt!363605 s!2287)))))

(assert (=> b!1086794 (= lt!363605 (store ((as const (Array Context!998 Bool)) false) lt!363604 true))))

(declare-fun b!1086795 () Bool)

(declare-fun tp_is_empty!5669 () Bool)

(declare-fun tp!325573 () Bool)

(assert (=> b!1086795 (= e!687399 (and tp_is_empty!5669 tp!325573))))

(declare-fun b!1086796 () Bool)

(declare-fun res!483258 () Bool)

(assert (=> b!1086796 (=> (not res!483258) (not e!687395))))

(assert (=> b!1086796 (= res!483258 (matchZipper!67 z!1122 s!2287))))

(declare-fun b!1086797 () Bool)

(declare-fun tp!325574 () Bool)

(assert (=> b!1086797 (= e!687398 tp!325574)))

(assert (= (and start!92666 res!483261) b!1086796))

(assert (= (and b!1086796 res!483258) b!1086789))

(assert (= (and b!1086789 (not res!483263)) b!1086790))

(assert (= (and b!1086790 (not res!483262)) b!1086794))

(assert (= (and b!1086794 (not res!483259)) b!1086792))

(assert (= (and b!1086792 (not res!483260)) b!1086788))

(assert (= (and start!92666 condSetEmpty!7638) setIsEmpty!7638))

(assert (= (and start!92666 (not condSetEmpty!7638)) setNonEmpty!7638))

(assert (= setNonEmpty!7638 b!1086791))

(assert (= b!1086793 b!1086797))

(get-info :version)

(assert (= (and start!92666 ((_ is Cons!10345) zl!316)) b!1086793))

(assert (= (and start!92666 ((_ is Cons!10346) s!2287)) b!1086795))

(declare-fun m!1236789 () Bool)

(assert (=> b!1086793 m!1236789))

(declare-fun m!1236791 () Bool)

(assert (=> b!1086794 m!1236791))

(declare-fun m!1236793 () Bool)

(assert (=> b!1086794 m!1236793))

(declare-fun m!1236795 () Bool)

(assert (=> b!1086790 m!1236795))

(declare-fun m!1236797 () Bool)

(assert (=> b!1086790 m!1236797))

(declare-fun m!1236799 () Bool)

(assert (=> b!1086789 m!1236799))

(declare-fun m!1236801 () Bool)

(assert (=> b!1086789 m!1236801))

(declare-fun m!1236803 () Bool)

(assert (=> b!1086789 m!1236803))

(declare-fun m!1236805 () Bool)

(assert (=> setNonEmpty!7638 m!1236805))

(declare-fun m!1236807 () Bool)

(assert (=> b!1086788 m!1236807))

(declare-fun m!1236809 () Bool)

(assert (=> b!1086796 m!1236809))

(declare-fun m!1236811 () Bool)

(assert (=> b!1086792 m!1236811))

(declare-fun m!1236813 () Bool)

(assert (=> start!92666 m!1236813))

(check-sat (not b!1086794) (not b!1086797) (not b!1086795) (not setNonEmpty!7638) (not b!1086788) (not b!1086789) tp_is_empty!5669 (not b!1086791) (not start!92666) (not b!1086796) (not b!1086793) (not b!1086790) (not b!1086792))
(check-sat)
(get-model)

(declare-fun d!305347 () Bool)

(declare-fun lambda!40333 () Int)

(declare-fun exists!180 (List!10360 Int) Bool)

(assert (=> d!305347 (= (lostCause!229 lt!363604) (exists!180 (exprs!999 lt!363604) lambda!40333))))

(declare-fun bs!256818 () Bool)

(assert (= bs!256818 d!305347))

(declare-fun m!1236851 () Bool)

(assert (=> bs!256818 m!1236851))

(assert (=> b!1086792 d!305347))

(declare-fun d!305357 () Bool)

(declare-fun e!687412 () Bool)

(assert (=> d!305357 e!687412))

(declare-fun res!483272 () Bool)

(assert (=> d!305357 (=> (not res!483272) (not e!687412))))

(declare-fun lt!363620 () List!10361)

(declare-fun noDuplicate!193 (List!10361) Bool)

(assert (=> d!305357 (= res!483272 (noDuplicate!193 lt!363620))))

(declare-fun choose!6956 ((InoxSet Context!998)) List!10361)

(assert (=> d!305357 (= lt!363620 (choose!6956 z!1122))))

(assert (=> d!305357 (= (toList!637 z!1122) lt!363620)))

(declare-fun b!1086816 () Bool)

(declare-fun content!1488 (List!10361) (InoxSet Context!998))

(assert (=> b!1086816 (= e!687412 (= (content!1488 lt!363620) z!1122))))

(assert (= (and d!305357 res!483272) b!1086816))

(declare-fun m!1236859 () Bool)

(assert (=> d!305357 m!1236859))

(declare-fun m!1236861 () Bool)

(assert (=> d!305357 m!1236861))

(declare-fun m!1236863 () Bool)

(assert (=> b!1086816 m!1236863))

(assert (=> start!92666 d!305357))

(declare-fun bs!256835 () Bool)

(declare-fun d!305361 () Bool)

(assert (= bs!256835 (and d!305361 b!1086789)))

(declare-fun lambda!40364 () Int)

(assert (=> bs!256835 (not (= lambda!40364 lambda!40320))))

(declare-fun bs!256836 () Bool)

(declare-fun b!1086853 () Bool)

(assert (= bs!256836 (and b!1086853 b!1086789)))

(declare-fun lambda!40365 () Int)

(assert (=> bs!256836 (not (= lambda!40365 lambda!40320))))

(declare-fun bs!256837 () Bool)

(assert (= bs!256837 (and b!1086853 d!305361)))

(assert (=> bs!256837 (not (= lambda!40365 lambda!40364))))

(declare-fun bs!256838 () Bool)

(declare-fun b!1086854 () Bool)

(assert (= bs!256838 (and b!1086854 b!1086789)))

(declare-fun lambda!40366 () Int)

(assert (=> bs!256838 (not (= lambda!40366 lambda!40320))))

(declare-fun bs!256839 () Bool)

(assert (= bs!256839 (and b!1086854 d!305361)))

(assert (=> bs!256839 (not (= lambda!40366 lambda!40364))))

(declare-fun bs!256840 () Bool)

(assert (= bs!256840 (and b!1086854 b!1086853)))

(assert (=> bs!256840 (= lambda!40366 lambda!40365)))

(declare-fun e!687443 () Unit!15729)

(declare-fun Unit!15733 () Unit!15729)

(assert (=> b!1086854 (= e!687443 Unit!15733)))

(declare-fun lt!363662 () List!10361)

(declare-fun call!80184 () List!10361)

(assert (=> b!1086854 (= lt!363662 call!80184)))

(declare-fun lt!363664 () Unit!15729)

(declare-fun lemmaForallThenNotExists!2 (List!10361 Int) Unit!15729)

(assert (=> b!1086854 (= lt!363664 (lemmaForallThenNotExists!2 lt!363662 lambda!40364))))

(declare-fun call!80183 () Bool)

(assert (=> b!1086854 (not call!80183)))

(declare-fun lt!363668 () Unit!15729)

(assert (=> b!1086854 (= lt!363668 lt!363664)))

(declare-fun Unit!15734 () Unit!15729)

(assert (=> b!1086853 (= e!687443 Unit!15734)))

(declare-fun lt!363667 () List!10361)

(assert (=> b!1086853 (= lt!363667 call!80184)))

(declare-fun lt!363665 () Unit!15729)

(declare-fun lemmaNotForallThenExists!2 (List!10361 Int) Unit!15729)

(assert (=> b!1086853 (= lt!363665 (lemmaNotForallThenExists!2 lt!363667 lambda!40364))))

(assert (=> b!1086853 call!80183))

(declare-fun lt!363661 () Unit!15729)

(assert (=> b!1086853 (= lt!363661 lt!363665)))

(declare-fun lt!363663 () Bool)

(declare-datatypes ((Option!2460 0))(
  ( (None!2459) (Some!2459 (v!19888 List!10362)) )
))
(declare-fun isEmpty!6634 (Option!2460) Bool)

(declare-fun getLanguageWitness!63 ((InoxSet Context!998)) Option!2460)

(assert (=> d!305361 (= lt!363663 (isEmpty!6634 (getLanguageWitness!63 lt!363605)))))

(declare-fun forall!2278 ((InoxSet Context!998) Int) Bool)

(assert (=> d!305361 (= lt!363663 (forall!2278 lt!363605 lambda!40364))))

(declare-fun lt!363666 () Unit!15729)

(assert (=> d!305361 (= lt!363666 e!687443)))

(declare-fun c!183913 () Bool)

(assert (=> d!305361 (= c!183913 (not (forall!2278 lt!363605 lambda!40364)))))

(assert (=> d!305361 (= (lostCauseZipper!10 lt!363605) lt!363663)))

(declare-fun bm!80178 () Bool)

(assert (=> bm!80178 (= call!80184 (toList!637 lt!363605))))

(declare-fun bm!80179 () Bool)

(assert (=> bm!80179 (= call!80183 (exists!178 (ite c!183913 lt!363667 lt!363662) (ite c!183913 lambda!40365 lambda!40366)))))

(assert (= (and d!305361 c!183913) b!1086853))

(assert (= (and d!305361 (not c!183913)) b!1086854))

(assert (= (or b!1086853 b!1086854) bm!80178))

(assert (= (or b!1086853 b!1086854) bm!80179))

(declare-fun m!1236895 () Bool)

(assert (=> d!305361 m!1236895))

(assert (=> d!305361 m!1236895))

(declare-fun m!1236897 () Bool)

(assert (=> d!305361 m!1236897))

(declare-fun m!1236899 () Bool)

(assert (=> d!305361 m!1236899))

(assert (=> d!305361 m!1236899))

(declare-fun m!1236901 () Bool)

(assert (=> b!1086853 m!1236901))

(declare-fun m!1236903 () Bool)

(assert (=> bm!80178 m!1236903))

(declare-fun m!1236905 () Bool)

(assert (=> bm!80179 m!1236905))

(declare-fun m!1236907 () Bool)

(assert (=> b!1086854 m!1236907))

(assert (=> b!1086788 d!305361))

(declare-fun bs!256841 () Bool)

(declare-fun d!305369 () Bool)

(assert (= bs!256841 (and d!305369 d!305347)))

(declare-fun lambda!40369 () Int)

(assert (=> bs!256841 (not (= lambda!40369 lambda!40333))))

(declare-fun forall!2279 (List!10360 Int) Bool)

(assert (=> d!305369 (= (inv!13260 setElem!7638) (forall!2279 (exprs!999 setElem!7638) lambda!40369))))

(declare-fun bs!256842 () Bool)

(assert (= bs!256842 d!305369))

(declare-fun m!1236909 () Bool)

(assert (=> bs!256842 m!1236909))

(assert (=> setNonEmpty!7638 d!305369))

(declare-fun d!305371 () Bool)

(declare-fun lt!363671 () Bool)

(assert (=> d!305371 (= lt!363671 (exists!178 (toList!637 z!1122) lambda!40320))))

(declare-fun choose!6957 ((InoxSet Context!998) Int) Bool)

(assert (=> d!305371 (= lt!363671 (choose!6957 z!1122 lambda!40320))))

(assert (=> d!305371 (= (exists!177 z!1122 lambda!40320) lt!363671)))

(declare-fun bs!256843 () Bool)

(assert (= bs!256843 d!305371))

(assert (=> bs!256843 m!1236813))

(assert (=> bs!256843 m!1236813))

(declare-fun m!1236911 () Bool)

(assert (=> bs!256843 m!1236911))

(declare-fun m!1236913 () Bool)

(assert (=> bs!256843 m!1236913))

(assert (=> b!1086789 d!305371))

(declare-fun bs!256844 () Bool)

(declare-fun d!305373 () Bool)

(assert (= bs!256844 (and d!305373 b!1086789)))

(declare-fun lambda!40372 () Int)

(assert (=> bs!256844 (not (= lambda!40372 lambda!40320))))

(declare-fun bs!256845 () Bool)

(assert (= bs!256845 (and d!305373 d!305361)))

(assert (=> bs!256845 (not (= lambda!40372 lambda!40364))))

(declare-fun bs!256846 () Bool)

(assert (= bs!256846 (and d!305373 b!1086853)))

(assert (=> bs!256846 (not (= lambda!40372 lambda!40365))))

(declare-fun bs!256847 () Bool)

(assert (= bs!256847 (and d!305373 b!1086854)))

(assert (=> bs!256847 (not (= lambda!40372 lambda!40366))))

(assert (=> d!305373 true))

(declare-fun order!6223 () Int)

(declare-fun dynLambda!4529 (Int Int) Int)

(assert (=> d!305373 (< (dynLambda!4529 order!6223 lambda!40320) (dynLambda!4529 order!6223 lambda!40372))))

(declare-fun forall!2280 (List!10361 Int) Bool)

(assert (=> d!305373 (= (exists!178 zl!316 lambda!40320) (not (forall!2280 zl!316 lambda!40372)))))

(declare-fun bs!256848 () Bool)

(assert (= bs!256848 d!305373))

(declare-fun m!1236915 () Bool)

(assert (=> bs!256848 m!1236915))

(assert (=> b!1086789 d!305373))

(declare-fun bs!256849 () Bool)

(declare-fun d!305375 () Bool)

(assert (= bs!256849 (and d!305375 b!1086854)))

(declare-fun lambda!40375 () Int)

(assert (=> bs!256849 (not (= lambda!40375 lambda!40366))))

(declare-fun bs!256850 () Bool)

(assert (= bs!256850 (and d!305375 d!305361)))

(assert (=> bs!256850 (not (= lambda!40375 lambda!40364))))

(declare-fun bs!256851 () Bool)

(assert (= bs!256851 (and d!305375 b!1086789)))

(assert (=> bs!256851 (= lambda!40375 lambda!40320)))

(declare-fun bs!256852 () Bool)

(assert (= bs!256852 (and d!305375 d!305373)))

(assert (=> bs!256852 (not (= lambda!40375 lambda!40372))))

(declare-fun bs!256853 () Bool)

(assert (= bs!256853 (and d!305375 b!1086853)))

(assert (=> bs!256853 (not (= lambda!40375 lambda!40365))))

(assert (=> d!305375 true))

(assert (=> d!305375 (exists!178 zl!316 lambda!40375)))

(declare-fun lt!363674 () Unit!15729)

(declare-fun choose!6958 (List!10361 List!10362) Unit!15729)

(assert (=> d!305375 (= lt!363674 (choose!6958 zl!316 s!2287))))

(assert (=> d!305375 (matchZipper!67 (content!1488 zl!316) s!2287)))

(assert (=> d!305375 (= (lemmaZipperMatchesExistsMatchingContext!44 zl!316 s!2287) lt!363674)))

(declare-fun bs!256854 () Bool)

(assert (= bs!256854 d!305375))

(declare-fun m!1236917 () Bool)

(assert (=> bs!256854 m!1236917))

(declare-fun m!1236919 () Bool)

(assert (=> bs!256854 m!1236919))

(declare-fun m!1236921 () Bool)

(assert (=> bs!256854 m!1236921))

(assert (=> bs!256854 m!1236921))

(declare-fun m!1236923 () Bool)

(assert (=> bs!256854 m!1236923))

(assert (=> b!1086789 d!305375))

(declare-fun bs!256855 () Bool)

(declare-fun d!305377 () Bool)

(assert (= bs!256855 (and d!305377 d!305347)))

(declare-fun lambda!40376 () Int)

(assert (=> bs!256855 (not (= lambda!40376 lambda!40333))))

(declare-fun bs!256856 () Bool)

(assert (= bs!256856 (and d!305377 d!305369)))

(assert (=> bs!256856 (= lambda!40376 lambda!40369)))

(assert (=> d!305377 (= (inv!13260 (h!15746 zl!316)) (forall!2279 (exprs!999 (h!15746 zl!316)) lambda!40376))))

(declare-fun bs!256857 () Bool)

(assert (= bs!256857 d!305377))

(declare-fun m!1236925 () Bool)

(assert (=> bs!256857 m!1236925))

(assert (=> b!1086793 d!305377))

(declare-fun d!305379 () Bool)

(declare-fun c!183918 () Bool)

(declare-fun isEmpty!6635 (List!10362) Bool)

(assert (=> d!305379 (= c!183918 (isEmpty!6635 s!2287))))

(declare-fun e!687446 () Bool)

(assert (=> d!305379 (= (matchZipper!67 lt!363605 s!2287) e!687446)))

(declare-fun b!1086861 () Bool)

(declare-fun nullableZipper!32 ((InoxSet Context!998)) Bool)

(assert (=> b!1086861 (= e!687446 (nullableZipper!32 lt!363605))))

(declare-fun b!1086862 () Bool)

(declare-fun derivationStepZipper!30 ((InoxSet Context!998) C!6608) (InoxSet Context!998))

(declare-fun head!2018 (List!10362) C!6608)

(declare-fun tail!1580 (List!10362) List!10362)

(assert (=> b!1086862 (= e!687446 (matchZipper!67 (derivationStepZipper!30 lt!363605 (head!2018 s!2287)) (tail!1580 s!2287)))))

(assert (= (and d!305379 c!183918) b!1086861))

(assert (= (and d!305379 (not c!183918)) b!1086862))

(declare-fun m!1236927 () Bool)

(assert (=> d!305379 m!1236927))

(declare-fun m!1236929 () Bool)

(assert (=> b!1086861 m!1236929))

(declare-fun m!1236931 () Bool)

(assert (=> b!1086862 m!1236931))

(assert (=> b!1086862 m!1236931))

(declare-fun m!1236933 () Bool)

(assert (=> b!1086862 m!1236933))

(declare-fun m!1236935 () Bool)

(assert (=> b!1086862 m!1236935))

(assert (=> b!1086862 m!1236933))

(assert (=> b!1086862 m!1236935))

(declare-fun m!1236937 () Bool)

(assert (=> b!1086862 m!1236937))

(assert (=> b!1086794 d!305379))

(declare-fun d!305381 () Bool)

(declare-fun e!687449 () Bool)

(assert (=> d!305381 e!687449))

(declare-fun res!483275 () Bool)

(assert (=> d!305381 (=> (not res!483275) (not e!687449))))

(declare-fun lt!363677 () Context!998)

(declare-fun dynLambda!4530 (Int Context!998) Bool)

(assert (=> d!305381 (= res!483275 (dynLambda!4530 lambda!40320 lt!363677))))

(declare-fun getWitness!92 (List!10361 Int) Context!998)

(assert (=> d!305381 (= lt!363677 (getWitness!92 (toList!637 z!1122) lambda!40320))))

(assert (=> d!305381 (exists!177 z!1122 lambda!40320)))

(assert (=> d!305381 (= (getWitness!90 z!1122 lambda!40320) lt!363677)))

(declare-fun b!1086865 () Bool)

(assert (=> b!1086865 (= e!687449 (select z!1122 lt!363677))))

(assert (= (and d!305381 res!483275) b!1086865))

(declare-fun b_lambda!30083 () Bool)

(assert (=> (not b_lambda!30083) (not d!305381)))

(declare-fun m!1236939 () Bool)

(assert (=> d!305381 m!1236939))

(assert (=> d!305381 m!1236813))

(assert (=> d!305381 m!1236813))

(declare-fun m!1236941 () Bool)

(assert (=> d!305381 m!1236941))

(assert (=> d!305381 m!1236799))

(declare-fun m!1236943 () Bool)

(assert (=> b!1086865 m!1236943))

(assert (=> b!1086790 d!305381))

(declare-fun d!305383 () Bool)

(declare-fun c!183919 () Bool)

(assert (=> d!305383 (= c!183919 (isEmpty!6635 s!2287))))

(declare-fun e!687450 () Bool)

(assert (=> d!305383 (= (matchZipper!67 z!1122 s!2287) e!687450)))

(declare-fun b!1086866 () Bool)

(assert (=> b!1086866 (= e!687450 (nullableZipper!32 z!1122))))

(declare-fun b!1086867 () Bool)

(assert (=> b!1086867 (= e!687450 (matchZipper!67 (derivationStepZipper!30 z!1122 (head!2018 s!2287)) (tail!1580 s!2287)))))

(assert (= (and d!305383 c!183919) b!1086866))

(assert (= (and d!305383 (not c!183919)) b!1086867))

(assert (=> d!305383 m!1236927))

(declare-fun m!1236945 () Bool)

(assert (=> b!1086866 m!1236945))

(assert (=> b!1086867 m!1236931))

(assert (=> b!1086867 m!1236931))

(declare-fun m!1236947 () Bool)

(assert (=> b!1086867 m!1236947))

(assert (=> b!1086867 m!1236935))

(assert (=> b!1086867 m!1236947))

(assert (=> b!1086867 m!1236935))

(declare-fun m!1236949 () Bool)

(assert (=> b!1086867 m!1236949))

(assert (=> b!1086796 d!305383))

(declare-fun condSetEmpty!7644 () Bool)

(assert (=> setNonEmpty!7638 (= condSetEmpty!7644 (= setRest!7638 ((as const (Array Context!998 Bool)) false)))))

(declare-fun setRes!7644 () Bool)

(assert (=> setNonEmpty!7638 (= tp!325575 setRes!7644)))

(declare-fun setIsEmpty!7644 () Bool)

(assert (=> setIsEmpty!7644 setRes!7644))

(declare-fun setElem!7644 () Context!998)

(declare-fun setNonEmpty!7644 () Bool)

(declare-fun e!687453 () Bool)

(declare-fun tp!325604 () Bool)

(assert (=> setNonEmpty!7644 (= setRes!7644 (and tp!325604 (inv!13260 setElem!7644) e!687453))))

(declare-fun setRest!7644 () (InoxSet Context!998))

(assert (=> setNonEmpty!7644 (= setRest!7638 ((_ map or) (store ((as const (Array Context!998 Bool)) false) setElem!7644 true) setRest!7644))))

(declare-fun b!1086872 () Bool)

(declare-fun tp!325605 () Bool)

(assert (=> b!1086872 (= e!687453 tp!325605)))

(assert (= (and setNonEmpty!7638 condSetEmpty!7644) setIsEmpty!7644))

(assert (= (and setNonEmpty!7638 (not condSetEmpty!7644)) setNonEmpty!7644))

(assert (= setNonEmpty!7644 b!1086872))

(declare-fun m!1236951 () Bool)

(assert (=> setNonEmpty!7644 m!1236951))

(declare-fun b!1086877 () Bool)

(declare-fun e!687456 () Bool)

(declare-fun tp!325610 () Bool)

(declare-fun tp!325611 () Bool)

(assert (=> b!1086877 (= e!687456 (and tp!325610 tp!325611))))

(assert (=> b!1086797 (= tp!325574 e!687456)))

(assert (= (and b!1086797 ((_ is Cons!10344) (exprs!999 (h!15746 zl!316)))) b!1086877))

(declare-fun b!1086885 () Bool)

(declare-fun e!687462 () Bool)

(declare-fun tp!325616 () Bool)

(assert (=> b!1086885 (= e!687462 tp!325616)))

(declare-fun e!687461 () Bool)

(declare-fun tp!325617 () Bool)

(declare-fun b!1086884 () Bool)

(assert (=> b!1086884 (= e!687461 (and (inv!13260 (h!15746 (t!101407 zl!316))) e!687462 tp!325617))))

(assert (=> b!1086793 (= tp!325572 e!687461)))

(assert (= b!1086884 b!1086885))

(assert (= (and b!1086793 ((_ is Cons!10345) (t!101407 zl!316))) b!1086884))

(declare-fun m!1236953 () Bool)

(assert (=> b!1086884 m!1236953))

(declare-fun b!1086890 () Bool)

(declare-fun e!687465 () Bool)

(declare-fun tp!325620 () Bool)

(assert (=> b!1086890 (= e!687465 (and tp_is_empty!5669 tp!325620))))

(assert (=> b!1086795 (= tp!325573 e!687465)))

(assert (= (and b!1086795 ((_ is Cons!10346) (t!101408 s!2287))) b!1086890))

(declare-fun b!1086891 () Bool)

(declare-fun e!687466 () Bool)

(declare-fun tp!325621 () Bool)

(declare-fun tp!325622 () Bool)

(assert (=> b!1086891 (= e!687466 (and tp!325621 tp!325622))))

(assert (=> b!1086791 (= tp!325576 e!687466)))

(assert (= (and b!1086791 ((_ is Cons!10344) (exprs!999 setElem!7638))) b!1086891))

(declare-fun b_lambda!30085 () Bool)

(assert (= b_lambda!30083 (or b!1086789 b_lambda!30085)))

(declare-fun bs!256858 () Bool)

(declare-fun d!305385 () Bool)

(assert (= bs!256858 (and d!305385 b!1086789)))

(assert (=> bs!256858 (= (dynLambda!4530 lambda!40320 lt!363677) (matchZipper!67 (store ((as const (Array Context!998 Bool)) false) lt!363677 true) s!2287))))

(declare-fun m!1236955 () Bool)

(assert (=> bs!256858 m!1236955))

(assert (=> bs!256858 m!1236955))

(declare-fun m!1236957 () Bool)

(assert (=> bs!256858 m!1236957))

(assert (=> d!305381 d!305385))

(check-sat (not b!1086877) (not d!305375) (not d!305369) (not b!1086853) (not d!305371) (not b!1086867) (not b!1086862) (not b!1086866) (not d!305361) (not d!305373) (not b!1086872) (not b!1086816) (not b!1086885) (not d!305379) (not bm!80178) (not b!1086884) (not b_lambda!30085) (not b!1086891) (not bs!256858) (not d!305347) (not d!305357) (not b!1086854) (not d!305381) (not bm!80179) (not setNonEmpty!7644) (not d!305383) (not b!1086890) (not d!305377) (not b!1086861) tp_is_empty!5669)
(check-sat)
(get-model)

(declare-fun bs!256982 () Bool)

(declare-fun d!305463 () Bool)

(assert (= bs!256982 (and d!305463 d!305347)))

(declare-fun lambda!40411 () Int)

(assert (=> bs!256982 (not (= lambda!40411 lambda!40333))))

(declare-fun bs!256983 () Bool)

(assert (= bs!256983 (and d!305463 d!305369)))

(assert (=> bs!256983 (not (= lambda!40411 lambda!40369))))

(declare-fun bs!256984 () Bool)

(assert (= bs!256984 (and d!305463 d!305377)))

(assert (=> bs!256984 (not (= lambda!40411 lambda!40376))))

(assert (=> d!305463 true))

(declare-fun order!6227 () Int)

(declare-fun dynLambda!4533 (Int Int) Int)

(assert (=> d!305463 (< (dynLambda!4533 order!6227 lambda!40333) (dynLambda!4533 order!6227 lambda!40411))))

(assert (=> d!305463 (= (exists!180 (exprs!999 lt!363604) lambda!40333) (not (forall!2279 (exprs!999 lt!363604) lambda!40411)))))

(declare-fun bs!256985 () Bool)

(assert (= bs!256985 d!305463))

(declare-fun m!1237099 () Bool)

(assert (=> bs!256985 m!1237099))

(assert (=> d!305347 d!305463))

(declare-fun d!305465 () Bool)

(declare-fun res!483316 () Bool)

(declare-fun e!687540 () Bool)

(assert (=> d!305465 (=> res!483316 e!687540)))

(assert (=> d!305465 (= res!483316 ((_ is Nil!10344) (exprs!999 (h!15746 zl!316))))))

(assert (=> d!305465 (= (forall!2279 (exprs!999 (h!15746 zl!316)) lambda!40376) e!687540)))

(declare-fun b!1086998 () Bool)

(declare-fun e!687541 () Bool)

(assert (=> b!1086998 (= e!687540 e!687541)))

(declare-fun res!483317 () Bool)

(assert (=> b!1086998 (=> (not res!483317) (not e!687541))))

(declare-fun dynLambda!4534 (Int Regex!3019) Bool)

(assert (=> b!1086998 (= res!483317 (dynLambda!4534 lambda!40376 (h!15745 (exprs!999 (h!15746 zl!316)))))))

(declare-fun b!1086999 () Bool)

(assert (=> b!1086999 (= e!687541 (forall!2279 (t!101406 (exprs!999 (h!15746 zl!316))) lambda!40376))))

(assert (= (and d!305465 (not res!483316)) b!1086998))

(assert (= (and b!1086998 res!483317) b!1086999))

(declare-fun b_lambda!30109 () Bool)

(assert (=> (not b_lambda!30109) (not b!1086998)))

(declare-fun m!1237101 () Bool)

(assert (=> b!1086998 m!1237101))

(declare-fun m!1237103 () Bool)

(assert (=> b!1086999 m!1237103))

(assert (=> d!305377 d!305465))

(declare-fun d!305467 () Bool)

(assert (=> d!305467 (= (isEmpty!6635 s!2287) ((_ is Nil!10346) s!2287))))

(assert (=> d!305383 d!305467))

(declare-fun bs!256986 () Bool)

(declare-fun d!305469 () Bool)

(assert (= bs!256986 (and d!305469 b!1086854)))

(declare-fun lambda!40412 () Int)

(assert (=> bs!256986 (not (= lambda!40412 lambda!40366))))

(declare-fun bs!256987 () Bool)

(assert (= bs!256987 (and d!305469 d!305361)))

(assert (=> bs!256987 (not (= lambda!40412 lambda!40364))))

(declare-fun bs!256988 () Bool)

(assert (= bs!256988 (and d!305469 b!1086789)))

(assert (=> bs!256988 (not (= lambda!40412 lambda!40320))))

(declare-fun bs!256989 () Bool)

(assert (= bs!256989 (and d!305469 d!305373)))

(assert (=> bs!256989 (= (= lambda!40375 lambda!40320) (= lambda!40412 lambda!40372))))

(declare-fun bs!256990 () Bool)

(assert (= bs!256990 (and d!305469 d!305375)))

(assert (=> bs!256990 (not (= lambda!40412 lambda!40375))))

(declare-fun bs!256991 () Bool)

(assert (= bs!256991 (and d!305469 b!1086853)))

(assert (=> bs!256991 (not (= lambda!40412 lambda!40365))))

(assert (=> d!305469 true))

(assert (=> d!305469 (< (dynLambda!4529 order!6223 lambda!40375) (dynLambda!4529 order!6223 lambda!40412))))

(assert (=> d!305469 (= (exists!178 zl!316 lambda!40375) (not (forall!2280 zl!316 lambda!40412)))))

(declare-fun bs!256992 () Bool)

(assert (= bs!256992 d!305469))

(declare-fun m!1237105 () Bool)

(assert (=> bs!256992 m!1237105))

(assert (=> d!305375 d!305469))

(declare-fun bs!256993 () Bool)

(declare-fun d!305471 () Bool)

(assert (= bs!256993 (and d!305471 b!1086854)))

(declare-fun lambda!40415 () Int)

(assert (=> bs!256993 (not (= lambda!40415 lambda!40366))))

(declare-fun bs!256994 () Bool)

(assert (= bs!256994 (and d!305471 d!305361)))

(assert (=> bs!256994 (not (= lambda!40415 lambda!40364))))

(declare-fun bs!256995 () Bool)

(assert (= bs!256995 (and d!305471 b!1086789)))

(assert (=> bs!256995 (= lambda!40415 lambda!40320)))

(declare-fun bs!256996 () Bool)

(assert (= bs!256996 (and d!305471 d!305373)))

(assert (=> bs!256996 (not (= lambda!40415 lambda!40372))))

(declare-fun bs!256997 () Bool)

(assert (= bs!256997 (and d!305471 d!305375)))

(assert (=> bs!256997 (= lambda!40415 lambda!40375)))

(declare-fun bs!256998 () Bool)

(assert (= bs!256998 (and d!305471 d!305469)))

(assert (=> bs!256998 (not (= lambda!40415 lambda!40412))))

(declare-fun bs!256999 () Bool)

(assert (= bs!256999 (and d!305471 b!1086853)))

(assert (=> bs!256999 (not (= lambda!40415 lambda!40365))))

(assert (=> d!305471 true))

(assert (=> d!305471 (exists!178 zl!316 lambda!40415)))

(assert (=> d!305471 true))

(declare-fun _$60!682 () Unit!15729)

(assert (=> d!305471 (= (choose!6958 zl!316 s!2287) _$60!682)))

(declare-fun bs!257000 () Bool)

(assert (= bs!257000 d!305471))

(declare-fun m!1237107 () Bool)

(assert (=> bs!257000 m!1237107))

(assert (=> d!305375 d!305471))

(declare-fun d!305473 () Bool)

(declare-fun c!183951 () Bool)

(assert (=> d!305473 (= c!183951 (isEmpty!6635 s!2287))))

(declare-fun e!687542 () Bool)

(assert (=> d!305473 (= (matchZipper!67 (content!1488 zl!316) s!2287) e!687542)))

(declare-fun b!1087000 () Bool)

(assert (=> b!1087000 (= e!687542 (nullableZipper!32 (content!1488 zl!316)))))

(declare-fun b!1087001 () Bool)

(assert (=> b!1087001 (= e!687542 (matchZipper!67 (derivationStepZipper!30 (content!1488 zl!316) (head!2018 s!2287)) (tail!1580 s!2287)))))

(assert (= (and d!305473 c!183951) b!1087000))

(assert (= (and d!305473 (not c!183951)) b!1087001))

(assert (=> d!305473 m!1236927))

(assert (=> b!1087000 m!1236921))

(declare-fun m!1237109 () Bool)

(assert (=> b!1087000 m!1237109))

(assert (=> b!1087001 m!1236931))

(assert (=> b!1087001 m!1236921))

(assert (=> b!1087001 m!1236931))

(declare-fun m!1237111 () Bool)

(assert (=> b!1087001 m!1237111))

(assert (=> b!1087001 m!1236935))

(assert (=> b!1087001 m!1237111))

(assert (=> b!1087001 m!1236935))

(declare-fun m!1237113 () Bool)

(assert (=> b!1087001 m!1237113))

(assert (=> d!305375 d!305473))

(declare-fun d!305475 () Bool)

(declare-fun c!183954 () Bool)

(assert (=> d!305475 (= c!183954 ((_ is Nil!10345) zl!316))))

(declare-fun e!687545 () (InoxSet Context!998))

(assert (=> d!305475 (= (content!1488 zl!316) e!687545)))

(declare-fun b!1087006 () Bool)

(assert (=> b!1087006 (= e!687545 ((as const (Array Context!998 Bool)) false))))

(declare-fun b!1087007 () Bool)

(assert (=> b!1087007 (= e!687545 ((_ map or) (store ((as const (Array Context!998 Bool)) false) (h!15746 zl!316) true) (content!1488 (t!101407 zl!316))))))

(assert (= (and d!305475 c!183954) b!1087006))

(assert (= (and d!305475 (not c!183954)) b!1087007))

(declare-fun m!1237115 () Bool)

(assert (=> b!1087007 m!1237115))

(declare-fun m!1237117 () Bool)

(assert (=> b!1087007 m!1237117))

(assert (=> d!305375 d!305475))

(declare-fun bs!257001 () Bool)

(declare-fun d!305477 () Bool)

(assert (= bs!257001 (and d!305477 b!1086854)))

(declare-fun lambda!40418 () Int)

(assert (=> bs!257001 (not (= lambda!40418 lambda!40366))))

(declare-fun bs!257002 () Bool)

(assert (= bs!257002 (and d!305477 d!305361)))

(assert (=> bs!257002 (not (= lambda!40418 lambda!40364))))

(declare-fun bs!257003 () Bool)

(assert (= bs!257003 (and d!305477 d!305471)))

(assert (=> bs!257003 (not (= lambda!40418 lambda!40415))))

(declare-fun bs!257004 () Bool)

(assert (= bs!257004 (and d!305477 b!1086789)))

(assert (=> bs!257004 (not (= lambda!40418 lambda!40320))))

(declare-fun bs!257005 () Bool)

(assert (= bs!257005 (and d!305477 d!305373)))

(assert (=> bs!257005 (not (= lambda!40418 lambda!40372))))

(declare-fun bs!257006 () Bool)

(assert (= bs!257006 (and d!305477 d!305375)))

(assert (=> bs!257006 (not (= lambda!40418 lambda!40375))))

(declare-fun bs!257007 () Bool)

(assert (= bs!257007 (and d!305477 d!305469)))

(assert (=> bs!257007 (not (= lambda!40418 lambda!40412))))

(declare-fun bs!257008 () Bool)

(assert (= bs!257008 (and d!305477 b!1086853)))

(assert (=> bs!257008 (not (= lambda!40418 lambda!40365))))

(assert (=> d!305477 (= (nullableZipper!32 lt!363605) (exists!177 lt!363605 lambda!40418))))

(declare-fun bs!257009 () Bool)

(assert (= bs!257009 d!305477))

(declare-fun m!1237119 () Bool)

(assert (=> bs!257009 m!1237119))

(assert (=> b!1086861 d!305477))

(declare-fun bs!257010 () Bool)

(declare-fun d!305479 () Bool)

(assert (= bs!257010 (and d!305479 b!1086854)))

(declare-fun lambda!40419 () Int)

(assert (=> bs!257010 (not (= lambda!40419 lambda!40366))))

(declare-fun bs!257011 () Bool)

(assert (= bs!257011 (and d!305479 d!305361)))

(assert (=> bs!257011 (not (= lambda!40419 lambda!40364))))

(declare-fun bs!257012 () Bool)

(assert (= bs!257012 (and d!305479 d!305471)))

(assert (=> bs!257012 (not (= lambda!40419 lambda!40415))))

(declare-fun bs!257013 () Bool)

(assert (= bs!257013 (and d!305479 b!1086789)))

(assert (=> bs!257013 (not (= lambda!40419 lambda!40320))))

(declare-fun bs!257014 () Bool)

(assert (= bs!257014 (and d!305479 d!305373)))

(assert (=> bs!257014 (= lambda!40419 lambda!40372)))

(declare-fun bs!257015 () Bool)

(assert (= bs!257015 (and d!305479 d!305477)))

(assert (=> bs!257015 (not (= lambda!40419 lambda!40418))))

(declare-fun bs!257016 () Bool)

(assert (= bs!257016 (and d!305479 d!305375)))

(assert (=> bs!257016 (not (= lambda!40419 lambda!40375))))

(declare-fun bs!257017 () Bool)

(assert (= bs!257017 (and d!305479 d!305469)))

(assert (=> bs!257017 (= (= lambda!40320 lambda!40375) (= lambda!40419 lambda!40412))))

(declare-fun bs!257018 () Bool)

(assert (= bs!257018 (and d!305479 b!1086853)))

(assert (=> bs!257018 (not (= lambda!40419 lambda!40365))))

(assert (=> d!305479 true))

(assert (=> d!305479 (< (dynLambda!4529 order!6223 lambda!40320) (dynLambda!4529 order!6223 lambda!40419))))

(assert (=> d!305479 (= (exists!178 (toList!637 z!1122) lambda!40320) (not (forall!2280 (toList!637 z!1122) lambda!40419)))))

(declare-fun bs!257019 () Bool)

(assert (= bs!257019 d!305479))

(assert (=> bs!257019 m!1236813))

(declare-fun m!1237121 () Bool)

(assert (=> bs!257019 m!1237121))

(assert (=> d!305371 d!305479))

(assert (=> d!305371 d!305357))

(declare-fun d!305481 () Bool)

(declare-fun res!483320 () Bool)

(assert (=> d!305481 (= res!483320 (exists!178 (toList!637 z!1122) lambda!40320))))

(assert (=> d!305481 true))

(assert (=> d!305481 (= (choose!6957 z!1122 lambda!40320) res!483320)))

(declare-fun bs!257020 () Bool)

(assert (= bs!257020 d!305481))

(assert (=> bs!257020 m!1236813))

(assert (=> bs!257020 m!1236813))

(assert (=> bs!257020 m!1236911))

(assert (=> d!305371 d!305481))

(declare-fun bs!257021 () Bool)

(declare-fun d!305483 () Bool)

(assert (= bs!257021 (and d!305483 d!305347)))

(declare-fun lambda!40420 () Int)

(assert (=> bs!257021 (not (= lambda!40420 lambda!40333))))

(declare-fun bs!257022 () Bool)

(assert (= bs!257022 (and d!305483 d!305369)))

(assert (=> bs!257022 (= lambda!40420 lambda!40369)))

(declare-fun bs!257023 () Bool)

(assert (= bs!257023 (and d!305483 d!305377)))

(assert (=> bs!257023 (= lambda!40420 lambda!40376)))

(declare-fun bs!257024 () Bool)

(assert (= bs!257024 (and d!305483 d!305463)))

(assert (=> bs!257024 (not (= lambda!40420 lambda!40411))))

(assert (=> d!305483 (= (inv!13260 setElem!7644) (forall!2279 (exprs!999 setElem!7644) lambda!40420))))

(declare-fun bs!257025 () Bool)

(assert (= bs!257025 d!305483))

(declare-fun m!1237123 () Bool)

(assert (=> bs!257025 m!1237123))

(assert (=> setNonEmpty!7644 d!305483))

(declare-fun bs!257026 () Bool)

(declare-fun d!305485 () Bool)

(assert (= bs!257026 (and d!305485 b!1086854)))

(declare-fun lambda!40421 () Int)

(assert (=> bs!257026 (not (= lambda!40421 lambda!40366))))

(declare-fun bs!257027 () Bool)

(assert (= bs!257027 (and d!305485 d!305361)))

(assert (=> bs!257027 (not (= lambda!40421 lambda!40364))))

(declare-fun bs!257028 () Bool)

(assert (= bs!257028 (and d!305485 d!305471)))

(assert (=> bs!257028 (not (= lambda!40421 lambda!40415))))

(declare-fun bs!257029 () Bool)

(assert (= bs!257029 (and d!305485 b!1086789)))

(assert (=> bs!257029 (not (= lambda!40421 lambda!40320))))

(declare-fun bs!257030 () Bool)

(assert (= bs!257030 (and d!305485 d!305373)))

(assert (=> bs!257030 (not (= lambda!40421 lambda!40372))))

(declare-fun bs!257031 () Bool)

(assert (= bs!257031 (and d!305485 d!305477)))

(assert (=> bs!257031 (= lambda!40421 lambda!40418)))

(declare-fun bs!257032 () Bool)

(assert (= bs!257032 (and d!305485 d!305375)))

(assert (=> bs!257032 (not (= lambda!40421 lambda!40375))))

(declare-fun bs!257033 () Bool)

(assert (= bs!257033 (and d!305485 d!305469)))

(assert (=> bs!257033 (not (= lambda!40421 lambda!40412))))

(declare-fun bs!257034 () Bool)

(assert (= bs!257034 (and d!305485 b!1086853)))

(assert (=> bs!257034 (not (= lambda!40421 lambda!40365))))

(declare-fun bs!257035 () Bool)

(assert (= bs!257035 (and d!305485 d!305479)))

(assert (=> bs!257035 (not (= lambda!40421 lambda!40419))))

(assert (=> d!305485 (= (nullableZipper!32 z!1122) (exists!177 z!1122 lambda!40421))))

(declare-fun bs!257036 () Bool)

(assert (= bs!257036 d!305485))

(declare-fun m!1237125 () Bool)

(assert (=> bs!257036 m!1237125))

(assert (=> b!1086866 d!305485))

(declare-fun d!305487 () Bool)

(declare-fun c!183957 () Bool)

(assert (=> d!305487 (= c!183957 (isEmpty!6635 (tail!1580 s!2287)))))

(declare-fun e!687546 () Bool)

(assert (=> d!305487 (= (matchZipper!67 (derivationStepZipper!30 lt!363605 (head!2018 s!2287)) (tail!1580 s!2287)) e!687546)))

(declare-fun b!1087008 () Bool)

(assert (=> b!1087008 (= e!687546 (nullableZipper!32 (derivationStepZipper!30 lt!363605 (head!2018 s!2287))))))

(declare-fun b!1087009 () Bool)

(assert (=> b!1087009 (= e!687546 (matchZipper!67 (derivationStepZipper!30 (derivationStepZipper!30 lt!363605 (head!2018 s!2287)) (head!2018 (tail!1580 s!2287))) (tail!1580 (tail!1580 s!2287))))))

(assert (= (and d!305487 c!183957) b!1087008))

(assert (= (and d!305487 (not c!183957)) b!1087009))

(assert (=> d!305487 m!1236935))

(declare-fun m!1237127 () Bool)

(assert (=> d!305487 m!1237127))

(assert (=> b!1087008 m!1236933))

(declare-fun m!1237129 () Bool)

(assert (=> b!1087008 m!1237129))

(assert (=> b!1087009 m!1236935))

(declare-fun m!1237131 () Bool)

(assert (=> b!1087009 m!1237131))

(assert (=> b!1087009 m!1236933))

(assert (=> b!1087009 m!1237131))

(declare-fun m!1237133 () Bool)

(assert (=> b!1087009 m!1237133))

(assert (=> b!1087009 m!1236935))

(declare-fun m!1237135 () Bool)

(assert (=> b!1087009 m!1237135))

(assert (=> b!1087009 m!1237133))

(assert (=> b!1087009 m!1237135))

(declare-fun m!1237137 () Bool)

(assert (=> b!1087009 m!1237137))

(assert (=> b!1086862 d!305487))

(declare-fun d!305489 () Bool)

(assert (=> d!305489 true))

(declare-fun lambda!40424 () Int)

(declare-fun flatMap!118 ((InoxSet Context!998) Int) (InoxSet Context!998))

(assert (=> d!305489 (= (derivationStepZipper!30 lt!363605 (head!2018 s!2287)) (flatMap!118 lt!363605 lambda!40424))))

(declare-fun bs!257037 () Bool)

(assert (= bs!257037 d!305489))

(declare-fun m!1237139 () Bool)

(assert (=> bs!257037 m!1237139))

(assert (=> b!1086862 d!305489))

(declare-fun d!305491 () Bool)

(assert (=> d!305491 (= (head!2018 s!2287) (h!15747 s!2287))))

(assert (=> b!1086862 d!305491))

(declare-fun d!305493 () Bool)

(assert (=> d!305493 (= (tail!1580 s!2287) (t!101408 s!2287))))

(assert (=> b!1086862 d!305493))

(declare-fun bs!257038 () Bool)

(declare-fun d!305495 () Bool)

(assert (= bs!257038 (and d!305495 d!305369)))

(declare-fun lambda!40425 () Int)

(assert (=> bs!257038 (= lambda!40425 lambda!40369)))

(declare-fun bs!257039 () Bool)

(assert (= bs!257039 (and d!305495 d!305483)))

(assert (=> bs!257039 (= lambda!40425 lambda!40420)))

(declare-fun bs!257040 () Bool)

(assert (= bs!257040 (and d!305495 d!305463)))

(assert (=> bs!257040 (not (= lambda!40425 lambda!40411))))

(declare-fun bs!257041 () Bool)

(assert (= bs!257041 (and d!305495 d!305377)))

(assert (=> bs!257041 (= lambda!40425 lambda!40376)))

(declare-fun bs!257042 () Bool)

(assert (= bs!257042 (and d!305495 d!305347)))

(assert (=> bs!257042 (not (= lambda!40425 lambda!40333))))

(assert (=> d!305495 (= (inv!13260 (h!15746 (t!101407 zl!316))) (forall!2279 (exprs!999 (h!15746 (t!101407 zl!316))) lambda!40425))))

(declare-fun bs!257043 () Bool)

(assert (= bs!257043 d!305495))

(declare-fun m!1237141 () Bool)

(assert (=> bs!257043 m!1237141))

(assert (=> b!1086884 d!305495))

(declare-fun d!305497 () Bool)

(declare-fun c!183960 () Bool)

(assert (=> d!305497 (= c!183960 (isEmpty!6635 (tail!1580 s!2287)))))

(declare-fun e!687547 () Bool)

(assert (=> d!305497 (= (matchZipper!67 (derivationStepZipper!30 z!1122 (head!2018 s!2287)) (tail!1580 s!2287)) e!687547)))

(declare-fun b!1087012 () Bool)

(assert (=> b!1087012 (= e!687547 (nullableZipper!32 (derivationStepZipper!30 z!1122 (head!2018 s!2287))))))

(declare-fun b!1087013 () Bool)

(assert (=> b!1087013 (= e!687547 (matchZipper!67 (derivationStepZipper!30 (derivationStepZipper!30 z!1122 (head!2018 s!2287)) (head!2018 (tail!1580 s!2287))) (tail!1580 (tail!1580 s!2287))))))

(assert (= (and d!305497 c!183960) b!1087012))

(assert (= (and d!305497 (not c!183960)) b!1087013))

(assert (=> d!305497 m!1236935))

(assert (=> d!305497 m!1237127))

(assert (=> b!1087012 m!1236947))

(declare-fun m!1237143 () Bool)

(assert (=> b!1087012 m!1237143))

(assert (=> b!1087013 m!1236935))

(assert (=> b!1087013 m!1237131))

(assert (=> b!1087013 m!1236947))

(assert (=> b!1087013 m!1237131))

(declare-fun m!1237145 () Bool)

(assert (=> b!1087013 m!1237145))

(assert (=> b!1087013 m!1236935))

(assert (=> b!1087013 m!1237135))

(assert (=> b!1087013 m!1237145))

(assert (=> b!1087013 m!1237135))

(declare-fun m!1237147 () Bool)

(assert (=> b!1087013 m!1237147))

(assert (=> b!1086867 d!305497))

(declare-fun bs!257044 () Bool)

(declare-fun d!305499 () Bool)

(assert (= bs!257044 (and d!305499 d!305489)))

(declare-fun lambda!40426 () Int)

(assert (=> bs!257044 (= lambda!40426 lambda!40424)))

(assert (=> d!305499 true))

(assert (=> d!305499 (= (derivationStepZipper!30 z!1122 (head!2018 s!2287)) (flatMap!118 z!1122 lambda!40426))))

(declare-fun bs!257045 () Bool)

(assert (= bs!257045 d!305499))

(declare-fun m!1237149 () Bool)

(assert (=> bs!257045 m!1237149))

(assert (=> b!1086867 d!305499))

(assert (=> b!1086867 d!305491))

(assert (=> b!1086867 d!305493))

(declare-fun bs!257046 () Bool)

(declare-fun d!305501 () Bool)

(assert (= bs!257046 (and d!305501 b!1086854)))

(declare-fun lambda!40429 () Int)

(assert (=> bs!257046 (not (= lambda!40429 lambda!40366))))

(declare-fun bs!257047 () Bool)

(assert (= bs!257047 (and d!305501 d!305361)))

(assert (=> bs!257047 (not (= lambda!40429 lambda!40364))))

(declare-fun bs!257048 () Bool)

(assert (= bs!257048 (and d!305501 d!305471)))

(assert (=> bs!257048 (not (= lambda!40429 lambda!40415))))

(declare-fun bs!257049 () Bool)

(assert (= bs!257049 (and d!305501 b!1086789)))

(assert (=> bs!257049 (not (= lambda!40429 lambda!40320))))

(declare-fun bs!257050 () Bool)

(assert (= bs!257050 (and d!305501 d!305373)))

(assert (=> bs!257050 (= (= lambda!40364 lambda!40320) (= lambda!40429 lambda!40372))))

(declare-fun bs!257051 () Bool)

(assert (= bs!257051 (and d!305501 d!305477)))

(assert (=> bs!257051 (not (= lambda!40429 lambda!40418))))

(declare-fun bs!257052 () Bool)

(assert (= bs!257052 (and d!305501 d!305375)))

(assert (=> bs!257052 (not (= lambda!40429 lambda!40375))))

(declare-fun bs!257053 () Bool)

(assert (= bs!257053 (and d!305501 d!305485)))

(assert (=> bs!257053 (not (= lambda!40429 lambda!40421))))

(declare-fun bs!257054 () Bool)

(assert (= bs!257054 (and d!305501 d!305469)))

(assert (=> bs!257054 (= (= lambda!40364 lambda!40375) (= lambda!40429 lambda!40412))))

(declare-fun bs!257055 () Bool)

(assert (= bs!257055 (and d!305501 b!1086853)))

(assert (=> bs!257055 (not (= lambda!40429 lambda!40365))))

(declare-fun bs!257056 () Bool)

(assert (= bs!257056 (and d!305501 d!305479)))

(assert (=> bs!257056 (= (= lambda!40364 lambda!40320) (= lambda!40429 lambda!40419))))

(assert (=> d!305501 true))

(assert (=> d!305501 (< (dynLambda!4529 order!6223 lambda!40364) (dynLambda!4529 order!6223 lambda!40429))))

(assert (=> d!305501 (exists!178 lt!363667 lambda!40429)))

(declare-fun lt!363699 () Unit!15729)

(declare-fun choose!6962 (List!10361 Int) Unit!15729)

(assert (=> d!305501 (= lt!363699 (choose!6962 lt!363667 lambda!40364))))

(assert (=> d!305501 (not (forall!2280 lt!363667 lambda!40364))))

(assert (=> d!305501 (= (lemmaNotForallThenExists!2 lt!363667 lambda!40364) lt!363699)))

(declare-fun bs!257057 () Bool)

(assert (= bs!257057 d!305501))

(declare-fun m!1237151 () Bool)

(assert (=> bs!257057 m!1237151))

(declare-fun m!1237153 () Bool)

(assert (=> bs!257057 m!1237153))

(declare-fun m!1237155 () Bool)

(assert (=> bs!257057 m!1237155))

(assert (=> b!1086853 d!305501))

(declare-fun d!305503 () Bool)

(declare-fun res!483325 () Bool)

(declare-fun e!687554 () Bool)

(assert (=> d!305503 (=> res!483325 e!687554)))

(assert (=> d!305503 (= res!483325 ((_ is Nil!10345) zl!316))))

(assert (=> d!305503 (= (forall!2280 zl!316 lambda!40372) e!687554)))

(declare-fun b!1087018 () Bool)

(declare-fun e!687555 () Bool)

(assert (=> b!1087018 (= e!687554 e!687555)))

(declare-fun res!483326 () Bool)

(assert (=> b!1087018 (=> (not res!483326) (not e!687555))))

(assert (=> b!1087018 (= res!483326 (dynLambda!4530 lambda!40372 (h!15746 zl!316)))))

(declare-fun b!1087019 () Bool)

(assert (=> b!1087019 (= e!687555 (forall!2280 (t!101407 zl!316) lambda!40372))))

(assert (= (and d!305503 (not res!483325)) b!1087018))

(assert (= (and b!1087018 res!483326) b!1087019))

(declare-fun b_lambda!30111 () Bool)

(assert (=> (not b_lambda!30111) (not b!1087018)))

(declare-fun m!1237157 () Bool)

(assert (=> b!1087018 m!1237157))

(declare-fun m!1237159 () Bool)

(assert (=> b!1087019 m!1237159))

(assert (=> d!305373 d!305503))

(declare-fun d!305505 () Bool)

(declare-fun res!483331 () Bool)

(declare-fun e!687560 () Bool)

(assert (=> d!305505 (=> res!483331 e!687560)))

(assert (=> d!305505 (= res!483331 ((_ is Nil!10345) lt!363620))))

(assert (=> d!305505 (= (noDuplicate!193 lt!363620) e!687560)))

(declare-fun b!1087024 () Bool)

(declare-fun e!687561 () Bool)

(assert (=> b!1087024 (= e!687560 e!687561)))

(declare-fun res!483332 () Bool)

(assert (=> b!1087024 (=> (not res!483332) (not e!687561))))

(declare-fun contains!1724 (List!10361 Context!998) Bool)

(assert (=> b!1087024 (= res!483332 (not (contains!1724 (t!101407 lt!363620) (h!15746 lt!363620))))))

(declare-fun b!1087025 () Bool)

(assert (=> b!1087025 (= e!687561 (noDuplicate!193 (t!101407 lt!363620)))))

(assert (= (and d!305505 (not res!483331)) b!1087024))

(assert (= (and b!1087024 res!483332) b!1087025))

(declare-fun m!1237161 () Bool)

(assert (=> b!1087024 m!1237161))

(declare-fun m!1237163 () Bool)

(assert (=> b!1087025 m!1237163))

(assert (=> d!305357 d!305505))

(declare-fun d!305507 () Bool)

(declare-fun e!687570 () Bool)

(assert (=> d!305507 e!687570))

(declare-fun res!483338 () Bool)

(assert (=> d!305507 (=> (not res!483338) (not e!687570))))

(declare-fun res!483337 () List!10361)

(assert (=> d!305507 (= res!483338 (noDuplicate!193 res!483337))))

(declare-fun e!687569 () Bool)

(assert (=> d!305507 e!687569))

(assert (=> d!305507 (= (choose!6956 z!1122) res!483337)))

(declare-fun b!1087033 () Bool)

(declare-fun e!687568 () Bool)

(declare-fun tp!325666 () Bool)

(assert (=> b!1087033 (= e!687568 tp!325666)))

(declare-fun tp!325667 () Bool)

(declare-fun b!1087032 () Bool)

(assert (=> b!1087032 (= e!687569 (and (inv!13260 (h!15746 res!483337)) e!687568 tp!325667))))

(declare-fun b!1087034 () Bool)

(assert (=> b!1087034 (= e!687570 (= (content!1488 res!483337) z!1122))))

(assert (= b!1087032 b!1087033))

(assert (= (and d!305507 ((_ is Cons!10345) res!483337)) b!1087032))

(assert (= (and d!305507 res!483338) b!1087034))

(declare-fun m!1237165 () Bool)

(assert (=> d!305507 m!1237165))

(declare-fun m!1237167 () Bool)

(assert (=> b!1087032 m!1237167))

(declare-fun m!1237169 () Bool)

(assert (=> b!1087034 m!1237169))

(assert (=> d!305357 d!305507))

(declare-fun bs!257058 () Bool)

(declare-fun d!305509 () Bool)

(assert (= bs!257058 (and d!305509 b!1086854)))

(declare-fun lambda!40432 () Int)

(assert (=> bs!257058 (not (= lambda!40432 lambda!40366))))

(declare-fun bs!257059 () Bool)

(assert (= bs!257059 (and d!305509 d!305361)))

(assert (=> bs!257059 (not (= lambda!40432 lambda!40364))))

(declare-fun bs!257060 () Bool)

(assert (= bs!257060 (and d!305509 d!305471)))

(assert (=> bs!257060 (not (= lambda!40432 lambda!40415))))

(declare-fun bs!257061 () Bool)

(assert (= bs!257061 (and d!305509 b!1086789)))

(assert (=> bs!257061 (not (= lambda!40432 lambda!40320))))

(declare-fun bs!257062 () Bool)

(assert (= bs!257062 (and d!305509 d!305373)))

(assert (=> bs!257062 (= (= lambda!40364 lambda!40320) (= lambda!40432 lambda!40372))))

(declare-fun bs!257063 () Bool)

(assert (= bs!257063 (and d!305509 d!305477)))

(assert (=> bs!257063 (not (= lambda!40432 lambda!40418))))

(declare-fun bs!257064 () Bool)

(assert (= bs!257064 (and d!305509 d!305375)))

(assert (=> bs!257064 (not (= lambda!40432 lambda!40375))))

(declare-fun bs!257065 () Bool)

(assert (= bs!257065 (and d!305509 d!305501)))

(assert (=> bs!257065 (= lambda!40432 lambda!40429)))

(declare-fun bs!257066 () Bool)

(assert (= bs!257066 (and d!305509 d!305485)))

(assert (=> bs!257066 (not (= lambda!40432 lambda!40421))))

(declare-fun bs!257067 () Bool)

(assert (= bs!257067 (and d!305509 d!305469)))

(assert (=> bs!257067 (= (= lambda!40364 lambda!40375) (= lambda!40432 lambda!40412))))

(declare-fun bs!257068 () Bool)

(assert (= bs!257068 (and d!305509 b!1086853)))

(assert (=> bs!257068 (not (= lambda!40432 lambda!40365))))

(declare-fun bs!257069 () Bool)

(assert (= bs!257069 (and d!305509 d!305479)))

(assert (=> bs!257069 (= (= lambda!40364 lambda!40320) (= lambda!40432 lambda!40419))))

(assert (=> d!305509 true))

(assert (=> d!305509 (< (dynLambda!4529 order!6223 lambda!40364) (dynLambda!4529 order!6223 lambda!40432))))

(assert (=> d!305509 (not (exists!178 lt!363662 lambda!40432))))

(declare-fun lt!363702 () Unit!15729)

(declare-fun choose!6963 (List!10361 Int) Unit!15729)

(assert (=> d!305509 (= lt!363702 (choose!6963 lt!363662 lambda!40364))))

(assert (=> d!305509 (forall!2280 lt!363662 lambda!40364)))

(assert (=> d!305509 (= (lemmaForallThenNotExists!2 lt!363662 lambda!40364) lt!363702)))

(declare-fun bs!257070 () Bool)

(assert (= bs!257070 d!305509))

(declare-fun m!1237171 () Bool)

(assert (=> bs!257070 m!1237171))

(declare-fun m!1237173 () Bool)

(assert (=> bs!257070 m!1237173))

(declare-fun m!1237175 () Bool)

(assert (=> bs!257070 m!1237175))

(assert (=> b!1086854 d!305509))

(declare-fun d!305511 () Bool)

(declare-fun res!483339 () Bool)

(declare-fun e!687573 () Bool)

(assert (=> d!305511 (=> res!483339 e!687573)))

(assert (=> d!305511 (= res!483339 ((_ is Nil!10344) (exprs!999 setElem!7638)))))

(assert (=> d!305511 (= (forall!2279 (exprs!999 setElem!7638) lambda!40369) e!687573)))

(declare-fun b!1087035 () Bool)

(declare-fun e!687574 () Bool)

(assert (=> b!1087035 (= e!687573 e!687574)))

(declare-fun res!483340 () Bool)

(assert (=> b!1087035 (=> (not res!483340) (not e!687574))))

(assert (=> b!1087035 (= res!483340 (dynLambda!4534 lambda!40369 (h!15745 (exprs!999 setElem!7638))))))

(declare-fun b!1087036 () Bool)

(assert (=> b!1087036 (= e!687574 (forall!2279 (t!101406 (exprs!999 setElem!7638)) lambda!40369))))

(assert (= (and d!305511 (not res!483339)) b!1087035))

(assert (= (and b!1087035 res!483340) b!1087036))

(declare-fun b_lambda!30113 () Bool)

(assert (=> (not b_lambda!30113) (not b!1087035)))

(declare-fun m!1237177 () Bool)

(assert (=> b!1087035 m!1237177))

(declare-fun m!1237179 () Bool)

(assert (=> b!1087036 m!1237179))

(assert (=> d!305369 d!305511))

(declare-fun d!305513 () Bool)

(assert (=> d!305513 (= (isEmpty!6634 (getLanguageWitness!63 lt!363605)) (not ((_ is Some!2459) (getLanguageWitness!63 lt!363605))))))

(assert (=> d!305361 d!305513))

(declare-fun bs!257071 () Bool)

(declare-fun d!305515 () Bool)

(assert (= bs!257071 (and d!305515 b!1086854)))

(declare-fun lambda!40439 () Int)

(assert (=> bs!257071 (= lambda!40439 lambda!40366)))

(declare-fun bs!257072 () Bool)

(assert (= bs!257072 (and d!305515 d!305361)))

(assert (=> bs!257072 (not (= lambda!40439 lambda!40364))))

(declare-fun bs!257073 () Bool)

(assert (= bs!257073 (and d!305515 d!305471)))

(assert (=> bs!257073 (not (= lambda!40439 lambda!40415))))

(declare-fun bs!257074 () Bool)

(assert (= bs!257074 (and d!305515 d!305373)))

(assert (=> bs!257074 (not (= lambda!40439 lambda!40372))))

(declare-fun bs!257075 () Bool)

(assert (= bs!257075 (and d!305515 d!305477)))

(assert (=> bs!257075 (not (= lambda!40439 lambda!40418))))

(declare-fun bs!257076 () Bool)

(assert (= bs!257076 (and d!305515 d!305375)))

(assert (=> bs!257076 (not (= lambda!40439 lambda!40375))))

(declare-fun bs!257077 () Bool)

(assert (= bs!257077 (and d!305515 d!305501)))

(assert (=> bs!257077 (not (= lambda!40439 lambda!40429))))

(declare-fun bs!257078 () Bool)

(assert (= bs!257078 (and d!305515 d!305485)))

(assert (=> bs!257078 (not (= lambda!40439 lambda!40421))))

(declare-fun bs!257079 () Bool)

(assert (= bs!257079 (and d!305515 d!305469)))

(assert (=> bs!257079 (not (= lambda!40439 lambda!40412))))

(declare-fun bs!257080 () Bool)

(assert (= bs!257080 (and d!305515 b!1086853)))

(assert (=> bs!257080 (= lambda!40439 lambda!40365)))

(declare-fun bs!257081 () Bool)

(assert (= bs!257081 (and d!305515 d!305479)))

(assert (=> bs!257081 (not (= lambda!40439 lambda!40419))))

(declare-fun bs!257082 () Bool)

(assert (= bs!257082 (and d!305515 d!305509)))

(assert (=> bs!257082 (not (= lambda!40439 lambda!40432))))

(declare-fun bs!257083 () Bool)

(assert (= bs!257083 (and d!305515 b!1086789)))

(assert (=> bs!257083 (not (= lambda!40439 lambda!40320))))

(declare-fun lt!363705 () Option!2460)

(declare-fun isDefined!2102 (Option!2460) Bool)

(assert (=> d!305515 (= (isDefined!2102 lt!363705) (exists!177 lt!363605 lambda!40439))))

(declare-fun e!687577 () Option!2460)

(assert (=> d!305515 (= lt!363705 e!687577)))

(declare-fun c!183969 () Bool)

(assert (=> d!305515 (= c!183969 (exists!177 lt!363605 lambda!40439))))

(assert (=> d!305515 (= (getLanguageWitness!63 lt!363605) lt!363705)))

(declare-fun b!1087041 () Bool)

(declare-fun getLanguageWitness!65 (Context!998) Option!2460)

(assert (=> b!1087041 (= e!687577 (getLanguageWitness!65 (getWitness!90 lt!363605 lambda!40439)))))

(declare-fun b!1087042 () Bool)

(assert (=> b!1087042 (= e!687577 None!2459)))

(assert (= (and d!305515 c!183969) b!1087041))

(assert (= (and d!305515 (not c!183969)) b!1087042))

(declare-fun m!1237181 () Bool)

(assert (=> d!305515 m!1237181))

(declare-fun m!1237183 () Bool)

(assert (=> d!305515 m!1237183))

(assert (=> d!305515 m!1237183))

(declare-fun m!1237185 () Bool)

(assert (=> b!1087041 m!1237185))

(assert (=> b!1087041 m!1237185))

(declare-fun m!1237187 () Bool)

(assert (=> b!1087041 m!1237187))

(assert (=> d!305361 d!305515))

(declare-fun d!305517 () Bool)

(declare-fun lt!363708 () Bool)

(assert (=> d!305517 (= lt!363708 (forall!2280 (toList!637 lt!363605) lambda!40364))))

(declare-fun choose!6964 ((InoxSet Context!998) Int) Bool)

(assert (=> d!305517 (= lt!363708 (choose!6964 lt!363605 lambda!40364))))

(assert (=> d!305517 (= (forall!2278 lt!363605 lambda!40364) lt!363708)))

(declare-fun bs!257084 () Bool)

(assert (= bs!257084 d!305517))

(assert (=> bs!257084 m!1236903))

(assert (=> bs!257084 m!1236903))

(declare-fun m!1237189 () Bool)

(assert (=> bs!257084 m!1237189))

(declare-fun m!1237191 () Bool)

(assert (=> bs!257084 m!1237191))

(assert (=> d!305361 d!305517))

(declare-fun b!1087055 () Bool)

(declare-fun e!687588 () Context!998)

(declare-fun e!687586 () Context!998)

(assert (=> b!1087055 (= e!687588 e!687586)))

(declare-fun c!183974 () Bool)

(assert (=> b!1087055 (= c!183974 ((_ is Cons!10345) (toList!637 z!1122)))))

(declare-fun b!1087056 () Bool)

(assert (=> b!1087056 (= e!687588 (h!15746 (toList!637 z!1122)))))

(declare-fun d!305519 () Bool)

(declare-fun e!687589 () Bool)

(assert (=> d!305519 e!687589))

(declare-fun res!483346 () Bool)

(assert (=> d!305519 (=> (not res!483346) (not e!687589))))

(declare-fun lt!363713 () Context!998)

(assert (=> d!305519 (= res!483346 (dynLambda!4530 lambda!40320 lt!363713))))

(assert (=> d!305519 (= lt!363713 e!687588)))

(declare-fun c!183975 () Bool)

(declare-fun e!687587 () Bool)

(assert (=> d!305519 (= c!183975 e!687587)))

(declare-fun res!483345 () Bool)

(assert (=> d!305519 (=> (not res!483345) (not e!687587))))

(assert (=> d!305519 (= res!483345 ((_ is Cons!10345) (toList!637 z!1122)))))

(assert (=> d!305519 (exists!178 (toList!637 z!1122) lambda!40320)))

(assert (=> d!305519 (= (getWitness!92 (toList!637 z!1122) lambda!40320) lt!363713)))

(declare-fun b!1087057 () Bool)

(assert (=> b!1087057 (= e!687586 (getWitness!92 (t!101407 (toList!637 z!1122)) lambda!40320))))

(declare-fun b!1087058 () Bool)

(assert (=> b!1087058 (= e!687587 (dynLambda!4530 lambda!40320 (h!15746 (toList!637 z!1122))))))

(declare-fun b!1087059 () Bool)

(assert (=> b!1087059 (= e!687589 (contains!1724 (toList!637 z!1122) lt!363713))))

(declare-fun b!1087060 () Bool)

(declare-fun lt!363714 () Unit!15729)

(declare-fun Unit!15736 () Unit!15729)

(assert (=> b!1087060 (= lt!363714 Unit!15736)))

(assert (=> b!1087060 false))

(declare-fun head!2020 (List!10361) Context!998)

(assert (=> b!1087060 (= e!687586 (head!2020 (toList!637 z!1122)))))

(assert (= (and d!305519 res!483345) b!1087058))

(assert (= (and d!305519 c!183975) b!1087056))

(assert (= (and d!305519 (not c!183975)) b!1087055))

(assert (= (and b!1087055 c!183974) b!1087057))

(assert (= (and b!1087055 (not c!183974)) b!1087060))

(assert (= (and d!305519 res!483346) b!1087059))

(declare-fun b_lambda!30115 () Bool)

(assert (=> (not b_lambda!30115) (not d!305519)))

(declare-fun b_lambda!30117 () Bool)

(assert (=> (not b_lambda!30117) (not b!1087058)))

(declare-fun m!1237193 () Bool)

(assert (=> b!1087057 m!1237193))

(assert (=> b!1087060 m!1236813))

(declare-fun m!1237195 () Bool)

(assert (=> b!1087060 m!1237195))

(declare-fun m!1237197 () Bool)

(assert (=> d!305519 m!1237197))

(assert (=> d!305519 m!1236813))

(assert (=> d!305519 m!1236911))

(declare-fun m!1237199 () Bool)

(assert (=> b!1087058 m!1237199))

(assert (=> b!1087059 m!1236813))

(declare-fun m!1237201 () Bool)

(assert (=> b!1087059 m!1237201))

(assert (=> d!305381 d!305519))

(assert (=> d!305381 d!305357))

(assert (=> d!305381 d!305371))

(declare-fun d!305521 () Bool)

(declare-fun c!183976 () Bool)

(assert (=> d!305521 (= c!183976 ((_ is Nil!10345) lt!363620))))

(declare-fun e!687590 () (InoxSet Context!998))

(assert (=> d!305521 (= (content!1488 lt!363620) e!687590)))

(declare-fun b!1087061 () Bool)

(assert (=> b!1087061 (= e!687590 ((as const (Array Context!998 Bool)) false))))

(declare-fun b!1087062 () Bool)

(assert (=> b!1087062 (= e!687590 ((_ map or) (store ((as const (Array Context!998 Bool)) false) (h!15746 lt!363620) true) (content!1488 (t!101407 lt!363620))))))

(assert (= (and d!305521 c!183976) b!1087061))

(assert (= (and d!305521 (not c!183976)) b!1087062))

(declare-fun m!1237203 () Bool)

(assert (=> b!1087062 m!1237203))

(declare-fun m!1237205 () Bool)

(assert (=> b!1087062 m!1237205))

(assert (=> b!1086816 d!305521))

(declare-fun d!305523 () Bool)

(declare-fun e!687591 () Bool)

(assert (=> d!305523 e!687591))

(declare-fun res!483347 () Bool)

(assert (=> d!305523 (=> (not res!483347) (not e!687591))))

(declare-fun lt!363715 () List!10361)

(assert (=> d!305523 (= res!483347 (noDuplicate!193 lt!363715))))

(assert (=> d!305523 (= lt!363715 (choose!6956 lt!363605))))

(assert (=> d!305523 (= (toList!637 lt!363605) lt!363715)))

(declare-fun b!1087063 () Bool)

(assert (=> b!1087063 (= e!687591 (= (content!1488 lt!363715) lt!363605))))

(assert (= (and d!305523 res!483347) b!1087063))

(declare-fun m!1237207 () Bool)

(assert (=> d!305523 m!1237207))

(declare-fun m!1237209 () Bool)

(assert (=> d!305523 m!1237209))

(declare-fun m!1237211 () Bool)

(assert (=> b!1087063 m!1237211))

(assert (=> bm!80178 d!305523))

(declare-fun bs!257085 () Bool)

(declare-fun d!305525 () Bool)

(assert (= bs!257085 (and d!305525 b!1086854)))

(declare-fun lambda!40440 () Int)

(assert (=> bs!257085 (not (= lambda!40440 lambda!40366))))

(declare-fun bs!257086 () Bool)

(assert (= bs!257086 (and d!305525 d!305515)))

(assert (=> bs!257086 (not (= lambda!40440 lambda!40439))))

(declare-fun bs!257087 () Bool)

(assert (= bs!257087 (and d!305525 d!305361)))

(assert (=> bs!257087 (not (= lambda!40440 lambda!40364))))

(declare-fun bs!257088 () Bool)

(assert (= bs!257088 (and d!305525 d!305471)))

(assert (=> bs!257088 (not (= lambda!40440 lambda!40415))))

(declare-fun bs!257089 () Bool)

(assert (= bs!257089 (and d!305525 d!305373)))

(assert (=> bs!257089 (= (= (ite c!183913 lambda!40365 lambda!40366) lambda!40320) (= lambda!40440 lambda!40372))))

(declare-fun bs!257090 () Bool)

(assert (= bs!257090 (and d!305525 d!305477)))

(assert (=> bs!257090 (not (= lambda!40440 lambda!40418))))

(declare-fun bs!257091 () Bool)

(assert (= bs!257091 (and d!305525 d!305375)))

(assert (=> bs!257091 (not (= lambda!40440 lambda!40375))))

(declare-fun bs!257092 () Bool)

(assert (= bs!257092 (and d!305525 d!305501)))

(assert (=> bs!257092 (= (= (ite c!183913 lambda!40365 lambda!40366) lambda!40364) (= lambda!40440 lambda!40429))))

(declare-fun bs!257093 () Bool)

(assert (= bs!257093 (and d!305525 d!305485)))

(assert (=> bs!257093 (not (= lambda!40440 lambda!40421))))

(declare-fun bs!257094 () Bool)

(assert (= bs!257094 (and d!305525 d!305469)))

(assert (=> bs!257094 (= (= (ite c!183913 lambda!40365 lambda!40366) lambda!40375) (= lambda!40440 lambda!40412))))

(declare-fun bs!257095 () Bool)

(assert (= bs!257095 (and d!305525 b!1086853)))

(assert (=> bs!257095 (not (= lambda!40440 lambda!40365))))

(declare-fun bs!257096 () Bool)

(assert (= bs!257096 (and d!305525 d!305479)))

(assert (=> bs!257096 (= (= (ite c!183913 lambda!40365 lambda!40366) lambda!40320) (= lambda!40440 lambda!40419))))

(declare-fun bs!257097 () Bool)

(assert (= bs!257097 (and d!305525 d!305509)))

(assert (=> bs!257097 (= (= (ite c!183913 lambda!40365 lambda!40366) lambda!40364) (= lambda!40440 lambda!40432))))

(declare-fun bs!257098 () Bool)

(assert (= bs!257098 (and d!305525 b!1086789)))

(assert (=> bs!257098 (not (= lambda!40440 lambda!40320))))

(assert (=> d!305525 true))

(assert (=> d!305525 (< (dynLambda!4529 order!6223 (ite c!183913 lambda!40365 lambda!40366)) (dynLambda!4529 order!6223 lambda!40440))))

(assert (=> d!305525 (= (exists!178 (ite c!183913 lt!363667 lt!363662) (ite c!183913 lambda!40365 lambda!40366)) (not (forall!2280 (ite c!183913 lt!363667 lt!363662) lambda!40440)))))

(declare-fun bs!257099 () Bool)

(assert (= bs!257099 d!305525))

(declare-fun m!1237213 () Bool)

(assert (=> bs!257099 m!1237213))

(assert (=> bm!80179 d!305525))

(assert (=> d!305379 d!305467))

(declare-fun d!305527 () Bool)

(declare-fun c!183977 () Bool)

(assert (=> d!305527 (= c!183977 (isEmpty!6635 s!2287))))

(declare-fun e!687592 () Bool)

(assert (=> d!305527 (= (matchZipper!67 (store ((as const (Array Context!998 Bool)) false) lt!363677 true) s!2287) e!687592)))

(declare-fun b!1087064 () Bool)

(assert (=> b!1087064 (= e!687592 (nullableZipper!32 (store ((as const (Array Context!998 Bool)) false) lt!363677 true)))))

(declare-fun b!1087065 () Bool)

(assert (=> b!1087065 (= e!687592 (matchZipper!67 (derivationStepZipper!30 (store ((as const (Array Context!998 Bool)) false) lt!363677 true) (head!2018 s!2287)) (tail!1580 s!2287)))))

(assert (= (and d!305527 c!183977) b!1087064))

(assert (= (and d!305527 (not c!183977)) b!1087065))

(assert (=> d!305527 m!1236927))

(assert (=> b!1087064 m!1236955))

(declare-fun m!1237215 () Bool)

(assert (=> b!1087064 m!1237215))

(assert (=> b!1087065 m!1236931))

(assert (=> b!1087065 m!1236955))

(assert (=> b!1087065 m!1236931))

(declare-fun m!1237217 () Bool)

(assert (=> b!1087065 m!1237217))

(assert (=> b!1087065 m!1236935))

(assert (=> b!1087065 m!1237217))

(assert (=> b!1087065 m!1236935))

(declare-fun m!1237219 () Bool)

(assert (=> b!1087065 m!1237219))

(assert (=> bs!256858 d!305527))

(declare-fun b!1087066 () Bool)

(declare-fun e!687593 () Bool)

(declare-fun tp!325668 () Bool)

(declare-fun tp!325669 () Bool)

(assert (=> b!1087066 (= e!687593 (and tp!325668 tp!325669))))

(assert (=> b!1086885 (= tp!325616 e!687593)))

(assert (= (and b!1086885 ((_ is Cons!10344) (exprs!999 (h!15746 (t!101407 zl!316))))) b!1087066))

(declare-fun b!1087067 () Bool)

(declare-fun e!687594 () Bool)

(declare-fun tp!325670 () Bool)

(assert (=> b!1087067 (= e!687594 (and tp_is_empty!5669 tp!325670))))

(assert (=> b!1086890 (= tp!325620 e!687594)))

(assert (= (and b!1086890 ((_ is Cons!10346) (t!101408 (t!101408 s!2287)))) b!1087067))

(declare-fun condSetEmpty!7646 () Bool)

(assert (=> setNonEmpty!7644 (= condSetEmpty!7646 (= setRest!7644 ((as const (Array Context!998 Bool)) false)))))

(declare-fun setRes!7646 () Bool)

(assert (=> setNonEmpty!7644 (= tp!325604 setRes!7646)))

(declare-fun setIsEmpty!7646 () Bool)

(assert (=> setIsEmpty!7646 setRes!7646))

(declare-fun setNonEmpty!7646 () Bool)

(declare-fun e!687595 () Bool)

(declare-fun setElem!7646 () Context!998)

(declare-fun tp!325671 () Bool)

(assert (=> setNonEmpty!7646 (= setRes!7646 (and tp!325671 (inv!13260 setElem!7646) e!687595))))

(declare-fun setRest!7646 () (InoxSet Context!998))

(assert (=> setNonEmpty!7646 (= setRest!7644 ((_ map or) (store ((as const (Array Context!998 Bool)) false) setElem!7646 true) setRest!7646))))

(declare-fun b!1087068 () Bool)

(declare-fun tp!325672 () Bool)

(assert (=> b!1087068 (= e!687595 tp!325672)))

(assert (= (and setNonEmpty!7644 condSetEmpty!7646) setIsEmpty!7646))

(assert (= (and setNonEmpty!7644 (not condSetEmpty!7646)) setNonEmpty!7646))

(assert (= setNonEmpty!7646 b!1087068))

(declare-fun m!1237221 () Bool)

(assert (=> setNonEmpty!7646 m!1237221))

(declare-fun b!1087081 () Bool)

(declare-fun e!687598 () Bool)

(declare-fun tp!325687 () Bool)

(assert (=> b!1087081 (= e!687598 tp!325687)))

(declare-fun b!1087079 () Bool)

(assert (=> b!1087079 (= e!687598 tp_is_empty!5669)))

(assert (=> b!1086877 (= tp!325610 e!687598)))

(declare-fun b!1087082 () Bool)

(declare-fun tp!325685 () Bool)

(declare-fun tp!325686 () Bool)

(assert (=> b!1087082 (= e!687598 (and tp!325685 tp!325686))))

(declare-fun b!1087080 () Bool)

(declare-fun tp!325683 () Bool)

(declare-fun tp!325684 () Bool)

(assert (=> b!1087080 (= e!687598 (and tp!325683 tp!325684))))

(assert (= (and b!1086877 ((_ is ElementMatch!3019) (h!15745 (exprs!999 (h!15746 zl!316))))) b!1087079))

(assert (= (and b!1086877 ((_ is Concat!4852) (h!15745 (exprs!999 (h!15746 zl!316))))) b!1087080))

(assert (= (and b!1086877 ((_ is Star!3019) (h!15745 (exprs!999 (h!15746 zl!316))))) b!1087081))

(assert (= (and b!1086877 ((_ is Union!3019) (h!15745 (exprs!999 (h!15746 zl!316))))) b!1087082))

(declare-fun b!1087083 () Bool)

(declare-fun e!687599 () Bool)

(declare-fun tp!325688 () Bool)

(declare-fun tp!325689 () Bool)

(assert (=> b!1087083 (= e!687599 (and tp!325688 tp!325689))))

(assert (=> b!1086877 (= tp!325611 e!687599)))

(assert (= (and b!1086877 ((_ is Cons!10344) (t!101406 (exprs!999 (h!15746 zl!316))))) b!1087083))

(declare-fun b!1087085 () Bool)

(declare-fun e!687601 () Bool)

(declare-fun tp!325690 () Bool)

(assert (=> b!1087085 (= e!687601 tp!325690)))

(declare-fun tp!325691 () Bool)

(declare-fun b!1087084 () Bool)

(declare-fun e!687600 () Bool)

(assert (=> b!1087084 (= e!687600 (and (inv!13260 (h!15746 (t!101407 (t!101407 zl!316)))) e!687601 tp!325691))))

(assert (=> b!1086884 (= tp!325617 e!687600)))

(assert (= b!1087084 b!1087085))

(assert (= (and b!1086884 ((_ is Cons!10345) (t!101407 (t!101407 zl!316)))) b!1087084))

(declare-fun m!1237223 () Bool)

(assert (=> b!1087084 m!1237223))

(declare-fun b!1087086 () Bool)

(declare-fun e!687602 () Bool)

(declare-fun tp!325692 () Bool)

(declare-fun tp!325693 () Bool)

(assert (=> b!1087086 (= e!687602 (and tp!325692 tp!325693))))

(assert (=> b!1086872 (= tp!325605 e!687602)))

(assert (= (and b!1086872 ((_ is Cons!10344) (exprs!999 setElem!7644))) b!1087086))

(declare-fun b!1087089 () Bool)

(declare-fun e!687603 () Bool)

(declare-fun tp!325698 () Bool)

(assert (=> b!1087089 (= e!687603 tp!325698)))

(declare-fun b!1087087 () Bool)

(assert (=> b!1087087 (= e!687603 tp_is_empty!5669)))

(assert (=> b!1086891 (= tp!325621 e!687603)))

(declare-fun b!1087090 () Bool)

(declare-fun tp!325696 () Bool)

(declare-fun tp!325697 () Bool)

(assert (=> b!1087090 (= e!687603 (and tp!325696 tp!325697))))

(declare-fun b!1087088 () Bool)

(declare-fun tp!325694 () Bool)

(declare-fun tp!325695 () Bool)

(assert (=> b!1087088 (= e!687603 (and tp!325694 tp!325695))))

(assert (= (and b!1086891 ((_ is ElementMatch!3019) (h!15745 (exprs!999 setElem!7638)))) b!1087087))

(assert (= (and b!1086891 ((_ is Concat!4852) (h!15745 (exprs!999 setElem!7638)))) b!1087088))

(assert (= (and b!1086891 ((_ is Star!3019) (h!15745 (exprs!999 setElem!7638)))) b!1087089))

(assert (= (and b!1086891 ((_ is Union!3019) (h!15745 (exprs!999 setElem!7638)))) b!1087090))

(declare-fun b!1087091 () Bool)

(declare-fun e!687604 () Bool)

(declare-fun tp!325699 () Bool)

(declare-fun tp!325700 () Bool)

(assert (=> b!1087091 (= e!687604 (and tp!325699 tp!325700))))

(assert (=> b!1086891 (= tp!325622 e!687604)))

(assert (= (and b!1086891 ((_ is Cons!10344) (t!101406 (exprs!999 setElem!7638)))) b!1087091))

(declare-fun b_lambda!30119 () Bool)

(assert (= b_lambda!30109 (or d!305377 b_lambda!30119)))

(declare-fun bs!257100 () Bool)

(declare-fun d!305529 () Bool)

(assert (= bs!257100 (and d!305529 d!305377)))

(declare-fun validRegex!1434 (Regex!3019) Bool)

(assert (=> bs!257100 (= (dynLambda!4534 lambda!40376 (h!15745 (exprs!999 (h!15746 zl!316)))) (validRegex!1434 (h!15745 (exprs!999 (h!15746 zl!316)))))))

(declare-fun m!1237225 () Bool)

(assert (=> bs!257100 m!1237225))

(assert (=> b!1086998 d!305529))

(declare-fun b_lambda!30121 () Bool)

(assert (= b_lambda!30115 (or b!1086789 b_lambda!30121)))

(declare-fun bs!257101 () Bool)

(declare-fun d!305531 () Bool)

(assert (= bs!257101 (and d!305531 b!1086789)))

(assert (=> bs!257101 (= (dynLambda!4530 lambda!40320 lt!363713) (matchZipper!67 (store ((as const (Array Context!998 Bool)) false) lt!363713 true) s!2287))))

(declare-fun m!1237227 () Bool)

(assert (=> bs!257101 m!1237227))

(assert (=> bs!257101 m!1237227))

(declare-fun m!1237229 () Bool)

(assert (=> bs!257101 m!1237229))

(assert (=> d!305519 d!305531))

(declare-fun b_lambda!30123 () Bool)

(assert (= b_lambda!30113 (or d!305369 b_lambda!30123)))

(declare-fun bs!257102 () Bool)

(declare-fun d!305533 () Bool)

(assert (= bs!257102 (and d!305533 d!305369)))

(assert (=> bs!257102 (= (dynLambda!4534 lambda!40369 (h!15745 (exprs!999 setElem!7638))) (validRegex!1434 (h!15745 (exprs!999 setElem!7638))))))

(declare-fun m!1237231 () Bool)

(assert (=> bs!257102 m!1237231))

(assert (=> b!1087035 d!305533))

(declare-fun b_lambda!30125 () Bool)

(assert (= b_lambda!30111 (or d!305373 b_lambda!30125)))

(declare-fun bs!257103 () Bool)

(declare-fun d!305535 () Bool)

(assert (= bs!257103 (and d!305535 d!305373)))

(assert (=> bs!257103 (= (dynLambda!4530 lambda!40372 (h!15746 zl!316)) (not (dynLambda!4530 lambda!40320 (h!15746 zl!316))))))

(declare-fun b_lambda!30129 () Bool)

(assert (=> (not b_lambda!30129) (not bs!257103)))

(declare-fun m!1237233 () Bool)

(assert (=> bs!257103 m!1237233))

(assert (=> b!1087018 d!305535))

(declare-fun b_lambda!30127 () Bool)

(assert (= b_lambda!30117 (or b!1086789 b_lambda!30127)))

(declare-fun bs!257104 () Bool)

(declare-fun d!305537 () Bool)

(assert (= bs!257104 (and d!305537 b!1086789)))

(assert (=> bs!257104 (= (dynLambda!4530 lambda!40320 (h!15746 (toList!637 z!1122))) (matchZipper!67 (store ((as const (Array Context!998 Bool)) false) (h!15746 (toList!637 z!1122)) true) s!2287))))

(declare-fun m!1237235 () Bool)

(assert (=> bs!257104 m!1237235))

(assert (=> bs!257104 m!1237235))

(declare-fun m!1237237 () Bool)

(assert (=> bs!257104 m!1237237))

(assert (=> b!1087058 d!305537))

(check-sat (not b!1087025) (not b!1087007) (not b!1087062) (not d!305473) (not b!1087080) (not b!1087001) (not b!1087057) (not d!305469) (not b_lambda!30119) (not b!1087036) (not bs!257102) (not d!305487) (not b!1087012) (not b!1087082) (not b!1087013) (not d!305485) (not d!305527) (not b!1087083) (not b_lambda!30127) (not b_lambda!30129) (not bs!257104) (not b!1087063) (not b!1087066) (not b!1087065) (not b_lambda!30085) (not bs!257100) (not b!1087091) (not b!1087008) (not d!305489) (not b!1087019) (not d!305523) (not d!305517) (not b!1087067) (not b!1087084) (not d!305483) (not b!1087086) (not d!305463) (not b!1087024) (not d!305525) (not d!305515) (not b!1087059) (not d!305499) (not d!305519) (not b!1087009) (not d!305509) (not d!305507) (not b!1087081) (not b!1087085) (not b!1087064) (not b_lambda!30123) (not b!1087060) (not b_lambda!30125) (not b!1087032) (not b!1087088) (not b!1087090) (not b!1087041) (not b!1087089) (not b!1087034) (not b!1086999) (not b!1087068) (not b_lambda!30121) (not d!305495) (not b!1087000) tp_is_empty!5669 (not d!305479) (not d!305471) (not d!305497) (not d!305501) (not b!1087033) (not setNonEmpty!7646) (not d!305481) (not d!305477) (not bs!257101))
(check-sat)
(get-model)

(declare-fun b_lambda!30133 () Bool)

(assert (= b_lambda!30129 (or b!1086789 b_lambda!30133)))

(declare-fun bs!257106 () Bool)

(declare-fun d!305541 () Bool)

(assert (= bs!257106 (and d!305541 b!1086789)))

(assert (=> bs!257106 (= (dynLambda!4530 lambda!40320 (h!15746 zl!316)) (matchZipper!67 (store ((as const (Array Context!998 Bool)) false) (h!15746 zl!316) true) s!2287))))

(assert (=> bs!257106 m!1237115))

(assert (=> bs!257106 m!1237115))

(declare-fun m!1237241 () Bool)

(assert (=> bs!257106 m!1237241))

(assert (=> bs!257103 d!305541))

(check-sat (not b!1087007) (not b!1087062) (not d!305473) (not b!1087080) (not b!1087001) (not b!1087057) (not d!305469) (not b_lambda!30119) (not b!1087036) (not b_lambda!30133) (not b!1087025) (not bs!257102) (not d!305487) (not b!1087012) (not b!1087082) (not b!1087013) (not d!305485) (not d!305527) (not b!1087083) (not b_lambda!30127) (not bs!257104) (not b!1087063) (not b!1087066) (not b!1087065) (not b_lambda!30085) (not bs!257100) (not b!1087091) (not b!1087008) (not d!305489) (not b!1087019) (not d!305523) (not d!305517) (not b!1087067) (not b!1087084) (not d!305483) (not b!1087086) (not d!305463) (not b!1087024) (not d!305525) (not d!305515) (not b!1087059) (not d!305499) (not d!305519) (not b!1087009) (not bs!257106) (not d!305509) (not d!305507) (not b!1087081) (not b!1087085) (not b!1087064) (not b_lambda!30123) (not b!1087060) (not b_lambda!30125) (not b!1087032) (not b!1087088) (not b!1087090) (not b!1087041) (not b!1087089) (not b!1087034) (not b!1086999) (not b!1087068) (not b_lambda!30121) (not d!305495) (not b!1087000) tp_is_empty!5669 (not d!305479) (not d!305471) (not d!305497) (not d!305501) (not b!1087033) (not setNonEmpty!7646) (not d!305481) (not d!305477) (not bs!257101))
(check-sat)
(get-model)

(declare-fun d!305577 () Bool)

(declare-fun c!183996 () Bool)

(assert (=> d!305577 (= c!183996 (isEmpty!6635 (tail!1580 (tail!1580 s!2287))))))

(declare-fun e!687648 () Bool)

(assert (=> d!305577 (= (matchZipper!67 (derivationStepZipper!30 (derivationStepZipper!30 z!1122 (head!2018 s!2287)) (head!2018 (tail!1580 s!2287))) (tail!1580 (tail!1580 s!2287))) e!687648)))

(declare-fun b!1087150 () Bool)

(assert (=> b!1087150 (= e!687648 (nullableZipper!32 (derivationStepZipper!30 (derivationStepZipper!30 z!1122 (head!2018 s!2287)) (head!2018 (tail!1580 s!2287)))))))

(declare-fun b!1087151 () Bool)

(assert (=> b!1087151 (= e!687648 (matchZipper!67 (derivationStepZipper!30 (derivationStepZipper!30 (derivationStepZipper!30 z!1122 (head!2018 s!2287)) (head!2018 (tail!1580 s!2287))) (head!2018 (tail!1580 (tail!1580 s!2287)))) (tail!1580 (tail!1580 (tail!1580 s!2287)))))))

(assert (= (and d!305577 c!183996) b!1087150))

(assert (= (and d!305577 (not c!183996)) b!1087151))

(assert (=> d!305577 m!1237135))

(declare-fun m!1237301 () Bool)

(assert (=> d!305577 m!1237301))

(assert (=> b!1087150 m!1237145))

(declare-fun m!1237303 () Bool)

(assert (=> b!1087150 m!1237303))

(assert (=> b!1087151 m!1237135))

(declare-fun m!1237305 () Bool)

(assert (=> b!1087151 m!1237305))

(assert (=> b!1087151 m!1237145))

(assert (=> b!1087151 m!1237305))

(declare-fun m!1237307 () Bool)

(assert (=> b!1087151 m!1237307))

(assert (=> b!1087151 m!1237135))

(declare-fun m!1237309 () Bool)

(assert (=> b!1087151 m!1237309))

(assert (=> b!1087151 m!1237307))

(assert (=> b!1087151 m!1237309))

(declare-fun m!1237311 () Bool)

(assert (=> b!1087151 m!1237311))

(assert (=> b!1087013 d!305577))

(declare-fun bs!257155 () Bool)

(declare-fun d!305579 () Bool)

(assert (= bs!257155 (and d!305579 d!305489)))

(declare-fun lambda!40448 () Int)

(assert (=> bs!257155 (= (= (head!2018 (tail!1580 s!2287)) (head!2018 s!2287)) (= lambda!40448 lambda!40424))))

(declare-fun bs!257156 () Bool)

(assert (= bs!257156 (and d!305579 d!305499)))

(assert (=> bs!257156 (= (= (head!2018 (tail!1580 s!2287)) (head!2018 s!2287)) (= lambda!40448 lambda!40426))))

(assert (=> d!305579 true))

(assert (=> d!305579 (= (derivationStepZipper!30 (derivationStepZipper!30 z!1122 (head!2018 s!2287)) (head!2018 (tail!1580 s!2287))) (flatMap!118 (derivationStepZipper!30 z!1122 (head!2018 s!2287)) lambda!40448))))

(declare-fun bs!257157 () Bool)

(assert (= bs!257157 d!305579))

(assert (=> bs!257157 m!1236947))

(declare-fun m!1237313 () Bool)

(assert (=> bs!257157 m!1237313))

(assert (=> b!1087013 d!305579))

(declare-fun d!305581 () Bool)

(assert (=> d!305581 (= (head!2018 (tail!1580 s!2287)) (h!15747 (tail!1580 s!2287)))))

(assert (=> b!1087013 d!305581))

(declare-fun d!305583 () Bool)

(assert (=> d!305583 (= (tail!1580 (tail!1580 s!2287)) (t!101408 (tail!1580 s!2287)))))

(assert (=> b!1087013 d!305583))

(declare-fun bs!257158 () Bool)

(declare-fun d!305585 () Bool)

(assert (= bs!257158 (and d!305585 b!1086854)))

(declare-fun lambda!40449 () Int)

(assert (=> bs!257158 (not (= lambda!40449 lambda!40366))))

(declare-fun bs!257159 () Bool)

(assert (= bs!257159 (and d!305585 d!305515)))

(assert (=> bs!257159 (not (= lambda!40449 lambda!40439))))

(declare-fun bs!257160 () Bool)

(assert (= bs!257160 (and d!305585 d!305361)))

(assert (=> bs!257160 (not (= lambda!40449 lambda!40364))))

(declare-fun bs!257161 () Bool)

(assert (= bs!257161 (and d!305585 d!305471)))

(assert (=> bs!257161 (not (= lambda!40449 lambda!40415))))

(declare-fun bs!257162 () Bool)

(assert (= bs!257162 (and d!305585 d!305373)))

(assert (=> bs!257162 (not (= lambda!40449 lambda!40372))))

(declare-fun bs!257163 () Bool)

(assert (= bs!257163 (and d!305585 d!305477)))

(assert (=> bs!257163 (= lambda!40449 lambda!40418)))

(declare-fun bs!257164 () Bool)

(assert (= bs!257164 (and d!305585 d!305375)))

(assert (=> bs!257164 (not (= lambda!40449 lambda!40375))))

(declare-fun bs!257165 () Bool)

(assert (= bs!257165 (and d!305585 d!305501)))

(assert (=> bs!257165 (not (= lambda!40449 lambda!40429))))

(declare-fun bs!257166 () Bool)

(assert (= bs!257166 (and d!305585 d!305469)))

(assert (=> bs!257166 (not (= lambda!40449 lambda!40412))))

(declare-fun bs!257167 () Bool)

(assert (= bs!257167 (and d!305585 b!1086853)))

(assert (=> bs!257167 (not (= lambda!40449 lambda!40365))))

(declare-fun bs!257168 () Bool)

(assert (= bs!257168 (and d!305585 d!305479)))

(assert (=> bs!257168 (not (= lambda!40449 lambda!40419))))

(declare-fun bs!257169 () Bool)

(assert (= bs!257169 (and d!305585 d!305509)))

(assert (=> bs!257169 (not (= lambda!40449 lambda!40432))))

(declare-fun bs!257170 () Bool)

(assert (= bs!257170 (and d!305585 b!1086789)))

(assert (=> bs!257170 (not (= lambda!40449 lambda!40320))))

(declare-fun bs!257171 () Bool)

(assert (= bs!257171 (and d!305585 d!305525)))

(assert (=> bs!257171 (not (= lambda!40449 lambda!40440))))

(declare-fun bs!257172 () Bool)

(assert (= bs!257172 (and d!305585 d!305485)))

(assert (=> bs!257172 (= lambda!40449 lambda!40421)))

(assert (=> d!305585 (= (nullableZipper!32 (store ((as const (Array Context!998 Bool)) false) lt!363677 true)) (exists!177 (store ((as const (Array Context!998 Bool)) false) lt!363677 true) lambda!40449))))

(declare-fun bs!257173 () Bool)

(assert (= bs!257173 d!305585))

(assert (=> bs!257173 m!1236955))

(declare-fun m!1237315 () Bool)

(assert (=> bs!257173 m!1237315))

(assert (=> b!1087064 d!305585))

(declare-fun b!1087177 () Bool)

(declare-fun e!687669 () Bool)

(declare-fun call!80203 () Bool)

(assert (=> b!1087177 (= e!687669 call!80203)))

(declare-fun bm!80198 () Bool)

(declare-fun call!80205 () Bool)

(assert (=> bm!80198 (= call!80205 call!80203)))

(declare-fun bm!80199 () Bool)

(declare-fun c!184005 () Bool)

(declare-fun c!184004 () Bool)

(assert (=> bm!80199 (= call!80203 (validRegex!1434 (ite c!184005 (reg!3348 (h!15745 (exprs!999 (h!15746 zl!316)))) (ite c!184004 (regOne!6551 (h!15745 (exprs!999 (h!15746 zl!316)))) (regOne!6550 (h!15745 (exprs!999 (h!15746 zl!316))))))))))

(declare-fun d!305587 () Bool)

(declare-fun res!483387 () Bool)

(declare-fun e!687667 () Bool)

(assert (=> d!305587 (=> res!483387 e!687667)))

(assert (=> d!305587 (= res!483387 ((_ is ElementMatch!3019) (h!15745 (exprs!999 (h!15746 zl!316)))))))

(assert (=> d!305587 (= (validRegex!1434 (h!15745 (exprs!999 (h!15746 zl!316)))) e!687667)))

(declare-fun b!1087178 () Bool)

(declare-fun res!483384 () Bool)

(declare-fun e!687672 () Bool)

(assert (=> b!1087178 (=> (not res!483384) (not e!687672))))

(assert (=> b!1087178 (= res!483384 call!80205)))

(declare-fun e!687671 () Bool)

(assert (=> b!1087178 (= e!687671 e!687672)))

(declare-fun b!1087179 () Bool)

(declare-fun res!483385 () Bool)

(declare-fun e!687673 () Bool)

(assert (=> b!1087179 (=> res!483385 e!687673)))

(assert (=> b!1087179 (= res!483385 (not ((_ is Concat!4852) (h!15745 (exprs!999 (h!15746 zl!316))))))))

(assert (=> b!1087179 (= e!687671 e!687673)))

(declare-fun b!1087180 () Bool)

(declare-fun e!687670 () Bool)

(declare-fun call!80204 () Bool)

(assert (=> b!1087180 (= e!687670 call!80204)))

(declare-fun bm!80200 () Bool)

(assert (=> bm!80200 (= call!80204 (validRegex!1434 (ite c!184004 (regTwo!6551 (h!15745 (exprs!999 (h!15746 zl!316)))) (regTwo!6550 (h!15745 (exprs!999 (h!15746 zl!316)))))))))

(declare-fun b!1087181 () Bool)

(assert (=> b!1087181 (= e!687673 e!687670)))

(declare-fun res!483383 () Bool)

(assert (=> b!1087181 (=> (not res!483383) (not e!687670))))

(assert (=> b!1087181 (= res!483383 call!80205)))

(declare-fun b!1087182 () Bool)

(declare-fun e!687668 () Bool)

(assert (=> b!1087182 (= e!687667 e!687668)))

(assert (=> b!1087182 (= c!184005 ((_ is Star!3019) (h!15745 (exprs!999 (h!15746 zl!316)))))))

(declare-fun b!1087183 () Bool)

(assert (=> b!1087183 (= e!687672 call!80204)))

(declare-fun b!1087184 () Bool)

(assert (=> b!1087184 (= e!687668 e!687671)))

(assert (=> b!1087184 (= c!184004 ((_ is Union!3019) (h!15745 (exprs!999 (h!15746 zl!316)))))))

(declare-fun b!1087185 () Bool)

(assert (=> b!1087185 (= e!687668 e!687669)))

(declare-fun res!483386 () Bool)

(declare-fun nullable!1047 (Regex!3019) Bool)

(assert (=> b!1087185 (= res!483386 (not (nullable!1047 (reg!3348 (h!15745 (exprs!999 (h!15746 zl!316)))))))))

(assert (=> b!1087185 (=> (not res!483386) (not e!687669))))

(assert (= (and d!305587 (not res!483387)) b!1087182))

(assert (= (and b!1087182 c!184005) b!1087185))

(assert (= (and b!1087182 (not c!184005)) b!1087184))

(assert (= (and b!1087185 res!483386) b!1087177))

(assert (= (and b!1087184 c!184004) b!1087178))

(assert (= (and b!1087184 (not c!184004)) b!1087179))

(assert (= (and b!1087178 res!483384) b!1087183))

(assert (= (and b!1087179 (not res!483385)) b!1087181))

(assert (= (and b!1087181 res!483383) b!1087180))

(assert (= (or b!1087183 b!1087180) bm!80200))

(assert (= (or b!1087178 b!1087181) bm!80198))

(assert (= (or b!1087177 bm!80198) bm!80199))

(declare-fun m!1237333 () Bool)

(assert (=> bm!80199 m!1237333))

(declare-fun m!1237335 () Bool)

(assert (=> bm!80200 m!1237335))

(declare-fun m!1237337 () Bool)

(assert (=> b!1087185 m!1237337))

(assert (=> bs!257100 d!305587))

(declare-fun d!305593 () Bool)

(declare-fun res!483388 () Bool)

(declare-fun e!687674 () Bool)

(assert (=> d!305593 (=> res!483388 e!687674)))

(assert (=> d!305593 (= res!483388 ((_ is Nil!10345) res!483337))))

(assert (=> d!305593 (= (noDuplicate!193 res!483337) e!687674)))

(declare-fun b!1087186 () Bool)

(declare-fun e!687675 () Bool)

(assert (=> b!1087186 (= e!687674 e!687675)))

(declare-fun res!483389 () Bool)

(assert (=> b!1087186 (=> (not res!483389) (not e!687675))))

(assert (=> b!1087186 (= res!483389 (not (contains!1724 (t!101407 res!483337) (h!15746 res!483337))))))

(declare-fun b!1087187 () Bool)

(assert (=> b!1087187 (= e!687675 (noDuplicate!193 (t!101407 res!483337)))))

(assert (= (and d!305593 (not res!483388)) b!1087186))

(assert (= (and b!1087186 res!483389) b!1087187))

(declare-fun m!1237339 () Bool)

(assert (=> b!1087186 m!1237339))

(declare-fun m!1237341 () Bool)

(assert (=> b!1087187 m!1237341))

(assert (=> d!305507 d!305593))

(declare-fun d!305595 () Bool)

(declare-fun c!184006 () Bool)

(assert (=> d!305595 (= c!184006 (isEmpty!6635 (tail!1580 s!2287)))))

(declare-fun e!687676 () Bool)

(assert (=> d!305595 (= (matchZipper!67 (derivationStepZipper!30 (content!1488 zl!316) (head!2018 s!2287)) (tail!1580 s!2287)) e!687676)))

(declare-fun b!1087188 () Bool)

(assert (=> b!1087188 (= e!687676 (nullableZipper!32 (derivationStepZipper!30 (content!1488 zl!316) (head!2018 s!2287))))))

(declare-fun b!1087189 () Bool)

(assert (=> b!1087189 (= e!687676 (matchZipper!67 (derivationStepZipper!30 (derivationStepZipper!30 (content!1488 zl!316) (head!2018 s!2287)) (head!2018 (tail!1580 s!2287))) (tail!1580 (tail!1580 s!2287))))))

(assert (= (and d!305595 c!184006) b!1087188))

(assert (= (and d!305595 (not c!184006)) b!1087189))

(assert (=> d!305595 m!1236935))

(assert (=> d!305595 m!1237127))

(assert (=> b!1087188 m!1237111))

(declare-fun m!1237343 () Bool)

(assert (=> b!1087188 m!1237343))

(assert (=> b!1087189 m!1236935))

(assert (=> b!1087189 m!1237131))

(assert (=> b!1087189 m!1237111))

(assert (=> b!1087189 m!1237131))

(declare-fun m!1237345 () Bool)

(assert (=> b!1087189 m!1237345))

(assert (=> b!1087189 m!1236935))

(assert (=> b!1087189 m!1237135))

(assert (=> b!1087189 m!1237345))

(assert (=> b!1087189 m!1237135))

(declare-fun m!1237347 () Bool)

(assert (=> b!1087189 m!1237347))

(assert (=> b!1087001 d!305595))

(declare-fun bs!257193 () Bool)

(declare-fun d!305597 () Bool)

(assert (= bs!257193 (and d!305597 d!305489)))

(declare-fun lambda!40454 () Int)

(assert (=> bs!257193 (= lambda!40454 lambda!40424)))

(declare-fun bs!257195 () Bool)

(assert (= bs!257195 (and d!305597 d!305499)))

(assert (=> bs!257195 (= lambda!40454 lambda!40426)))

(declare-fun bs!257196 () Bool)

(assert (= bs!257196 (and d!305597 d!305579)))

(assert (=> bs!257196 (= (= (head!2018 s!2287) (head!2018 (tail!1580 s!2287))) (= lambda!40454 lambda!40448))))

(assert (=> d!305597 true))

(assert (=> d!305597 (= (derivationStepZipper!30 (content!1488 zl!316) (head!2018 s!2287)) (flatMap!118 (content!1488 zl!316) lambda!40454))))

(declare-fun bs!257198 () Bool)

(assert (= bs!257198 d!305597))

(assert (=> bs!257198 m!1236921))

(declare-fun m!1237349 () Bool)

(assert (=> bs!257198 m!1237349))

(assert (=> b!1087001 d!305597))

(assert (=> b!1087001 d!305491))

(assert (=> b!1087001 d!305493))

(declare-fun d!305599 () Bool)

(declare-fun lt!363727 () Bool)

(assert (=> d!305599 (= lt!363727 (exists!178 (toList!637 z!1122) lambda!40421))))

(assert (=> d!305599 (= lt!363727 (choose!6957 z!1122 lambda!40421))))

(assert (=> d!305599 (= (exists!177 z!1122 lambda!40421) lt!363727)))

(declare-fun bs!257202 () Bool)

(assert (= bs!257202 d!305599))

(assert (=> bs!257202 m!1236813))

(assert (=> bs!257202 m!1236813))

(declare-fun m!1237351 () Bool)

(assert (=> bs!257202 m!1237351))

(declare-fun m!1237353 () Bool)

(assert (=> bs!257202 m!1237353))

(assert (=> d!305485 d!305599))

(declare-fun bs!257203 () Bool)

(declare-fun d!305601 () Bool)

(assert (= bs!257203 (and d!305601 d!305495)))

(declare-fun lambda!40455 () Int)

(assert (=> bs!257203 (= lambda!40455 lambda!40425)))

(declare-fun bs!257205 () Bool)

(assert (= bs!257205 (and d!305601 d!305369)))

(assert (=> bs!257205 (= lambda!40455 lambda!40369)))

(declare-fun bs!257206 () Bool)

(assert (= bs!257206 (and d!305601 d!305483)))

(assert (=> bs!257206 (= lambda!40455 lambda!40420)))

(declare-fun bs!257207 () Bool)

(assert (= bs!257207 (and d!305601 d!305463)))

(assert (=> bs!257207 (not (= lambda!40455 lambda!40411))))

(declare-fun bs!257208 () Bool)

(assert (= bs!257208 (and d!305601 d!305377)))

(assert (=> bs!257208 (= lambda!40455 lambda!40376)))

(declare-fun bs!257209 () Bool)

(assert (= bs!257209 (and d!305601 d!305347)))

(assert (=> bs!257209 (not (= lambda!40455 lambda!40333))))

(assert (=> d!305601 (= (inv!13260 setElem!7646) (forall!2279 (exprs!999 setElem!7646) lambda!40455))))

(declare-fun bs!257210 () Bool)

(assert (= bs!257210 d!305601))

(declare-fun m!1237357 () Bool)

(assert (=> bs!257210 m!1237357))

(assert (=> setNonEmpty!7646 d!305601))

(declare-fun d!305605 () Bool)

(declare-fun c!184008 () Bool)

(assert (=> d!305605 (= c!184008 ((_ is Nil!10345) (t!101407 zl!316)))))

(declare-fun e!687678 () (InoxSet Context!998))

(assert (=> d!305605 (= (content!1488 (t!101407 zl!316)) e!687678)))

(declare-fun b!1087192 () Bool)

(assert (=> b!1087192 (= e!687678 ((as const (Array Context!998 Bool)) false))))

(declare-fun b!1087193 () Bool)

(assert (=> b!1087193 (= e!687678 ((_ map or) (store ((as const (Array Context!998 Bool)) false) (h!15746 (t!101407 zl!316)) true) (content!1488 (t!101407 (t!101407 zl!316)))))))

(assert (= (and d!305605 c!184008) b!1087192))

(assert (= (and d!305605 (not c!184008)) b!1087193))

(declare-fun m!1237363 () Bool)

(assert (=> b!1087193 m!1237363))

(declare-fun m!1237365 () Bool)

(assert (=> b!1087193 m!1237365))

(assert (=> b!1087007 d!305605))

(declare-fun d!305609 () Bool)

(assert (=> d!305609 (= (head!2020 (toList!637 z!1122)) (h!15746 (toList!637 z!1122)))))

(assert (=> b!1087060 d!305609))

(declare-fun d!305611 () Bool)

(declare-fun res!483392 () Bool)

(declare-fun e!687681 () Bool)

(assert (=> d!305611 (=> res!483392 e!687681)))

(assert (=> d!305611 (= res!483392 ((_ is Nil!10344) (exprs!999 (h!15746 (t!101407 zl!316)))))))

(assert (=> d!305611 (= (forall!2279 (exprs!999 (h!15746 (t!101407 zl!316))) lambda!40425) e!687681)))

(declare-fun b!1087196 () Bool)

(declare-fun e!687682 () Bool)

(assert (=> b!1087196 (= e!687681 e!687682)))

(declare-fun res!483393 () Bool)

(assert (=> b!1087196 (=> (not res!483393) (not e!687682))))

(assert (=> b!1087196 (= res!483393 (dynLambda!4534 lambda!40425 (h!15745 (exprs!999 (h!15746 (t!101407 zl!316))))))))

(declare-fun b!1087197 () Bool)

(assert (=> b!1087197 (= e!687682 (forall!2279 (t!101406 (exprs!999 (h!15746 (t!101407 zl!316)))) lambda!40425))))

(assert (= (and d!305611 (not res!483392)) b!1087196))

(assert (= (and b!1087196 res!483393) b!1087197))

(declare-fun b_lambda!30143 () Bool)

(assert (=> (not b_lambda!30143) (not b!1087196)))

(declare-fun m!1237371 () Bool)

(assert (=> b!1087196 m!1237371))

(declare-fun m!1237373 () Bool)

(assert (=> b!1087197 m!1237373))

(assert (=> d!305495 d!305611))

(declare-fun d!305615 () Bool)

(declare-fun res!483396 () Bool)

(declare-fun e!687685 () Bool)

(assert (=> d!305615 (=> res!483396 e!687685)))

(assert (=> d!305615 (= res!483396 ((_ is Nil!10345) (t!101407 zl!316)))))

(assert (=> d!305615 (= (forall!2280 (t!101407 zl!316) lambda!40372) e!687685)))

(declare-fun b!1087200 () Bool)

(declare-fun e!687686 () Bool)

(assert (=> b!1087200 (= e!687685 e!687686)))

(declare-fun res!483397 () Bool)

(assert (=> b!1087200 (=> (not res!483397) (not e!687686))))

(assert (=> b!1087200 (= res!483397 (dynLambda!4530 lambda!40372 (h!15746 (t!101407 zl!316))))))

(declare-fun b!1087201 () Bool)

(assert (=> b!1087201 (= e!687686 (forall!2280 (t!101407 (t!101407 zl!316)) lambda!40372))))

(assert (= (and d!305615 (not res!483396)) b!1087200))

(assert (= (and b!1087200 res!483397) b!1087201))

(declare-fun b_lambda!30147 () Bool)

(assert (=> (not b_lambda!30147) (not b!1087200)))

(declare-fun m!1237379 () Bool)

(assert (=> b!1087200 m!1237379))

(declare-fun m!1237381 () Bool)

(assert (=> b!1087201 m!1237381))

(assert (=> b!1087019 d!305615))

(declare-fun d!305619 () Bool)

(declare-fun choose!6965 ((InoxSet Context!998) Int) (InoxSet Context!998))

(assert (=> d!305619 (= (flatMap!118 z!1122 lambda!40426) (choose!6965 z!1122 lambda!40426))))

(declare-fun bs!257211 () Bool)

(assert (= bs!257211 d!305619))

(declare-fun m!1237385 () Bool)

(assert (=> bs!257211 m!1237385))

(assert (=> d!305499 d!305619))

(declare-fun d!305621 () Bool)

(declare-fun lt!363728 () Bool)

(assert (=> d!305621 (= lt!363728 (exists!178 (toList!637 lt!363605) lambda!40418))))

(assert (=> d!305621 (= lt!363728 (choose!6957 lt!363605 lambda!40418))))

(assert (=> d!305621 (= (exists!177 lt!363605 lambda!40418) lt!363728)))

(declare-fun bs!257212 () Bool)

(assert (= bs!257212 d!305621))

(assert (=> bs!257212 m!1236903))

(assert (=> bs!257212 m!1236903))

(declare-fun m!1237389 () Bool)

(assert (=> bs!257212 m!1237389))

(declare-fun m!1237391 () Bool)

(assert (=> bs!257212 m!1237391))

(assert (=> d!305477 d!305621))

(declare-fun d!305623 () Bool)

(assert (=> d!305623 (= (isDefined!2102 lt!363705) (not (isEmpty!6634 lt!363705)))))

(declare-fun bs!257213 () Bool)

(assert (= bs!257213 d!305623))

(declare-fun m!1237395 () Bool)

(assert (=> bs!257213 m!1237395))

(assert (=> d!305515 d!305623))

(declare-fun d!305627 () Bool)

(declare-fun lt!363729 () Bool)

(assert (=> d!305627 (= lt!363729 (exists!178 (toList!637 lt!363605) lambda!40439))))

(assert (=> d!305627 (= lt!363729 (choose!6957 lt!363605 lambda!40439))))

(assert (=> d!305627 (= (exists!177 lt!363605 lambda!40439) lt!363729)))

(declare-fun bs!257215 () Bool)

(assert (= bs!257215 d!305627))

(assert (=> bs!257215 m!1236903))

(assert (=> bs!257215 m!1236903))

(declare-fun m!1237397 () Bool)

(assert (=> bs!257215 m!1237397))

(declare-fun m!1237399 () Bool)

(assert (=> bs!257215 m!1237399))

(assert (=> d!305515 d!305627))

(declare-fun bs!257218 () Bool)

(declare-fun d!305629 () Bool)

(assert (= bs!257218 (and d!305629 d!305495)))

(declare-fun lambda!40457 () Int)

(assert (=> bs!257218 (= lambda!40457 lambda!40425)))

(declare-fun bs!257220 () Bool)

(assert (= bs!257220 (and d!305629 d!305369)))

(assert (=> bs!257220 (= lambda!40457 lambda!40369)))

(declare-fun bs!257221 () Bool)

(assert (= bs!257221 (and d!305629 d!305483)))

(assert (=> bs!257221 (= lambda!40457 lambda!40420)))

(declare-fun bs!257222 () Bool)

(assert (= bs!257222 (and d!305629 d!305463)))

(assert (=> bs!257222 (not (= lambda!40457 lambda!40411))))

(declare-fun bs!257223 () Bool)

(assert (= bs!257223 (and d!305629 d!305601)))

(assert (=> bs!257223 (= lambda!40457 lambda!40455)))

(declare-fun bs!257225 () Bool)

(assert (= bs!257225 (and d!305629 d!305377)))

(assert (=> bs!257225 (= lambda!40457 lambda!40376)))

(declare-fun bs!257226 () Bool)

(assert (= bs!257226 (and d!305629 d!305347)))

(assert (=> bs!257226 (not (= lambda!40457 lambda!40333))))

(assert (=> d!305629 (= (inv!13260 (h!15746 res!483337)) (forall!2279 (exprs!999 (h!15746 res!483337)) lambda!40457))))

(declare-fun bs!257227 () Bool)

(assert (= bs!257227 d!305629))

(declare-fun m!1237403 () Bool)

(assert (=> bs!257227 m!1237403))

(assert (=> b!1087032 d!305629))

(declare-fun d!305633 () Bool)

(declare-fun c!184010 () Bool)

(assert (=> d!305633 (= c!184010 ((_ is Nil!10345) res!483337))))

(declare-fun e!687688 () (InoxSet Context!998))

(assert (=> d!305633 (= (content!1488 res!483337) e!687688)))

(declare-fun b!1087204 () Bool)

(assert (=> b!1087204 (= e!687688 ((as const (Array Context!998 Bool)) false))))

(declare-fun b!1087205 () Bool)

(assert (=> b!1087205 (= e!687688 ((_ map or) (store ((as const (Array Context!998 Bool)) false) (h!15746 res!483337) true) (content!1488 (t!101407 res!483337))))))

(assert (= (and d!305633 c!184010) b!1087204))

(assert (= (and d!305633 (not c!184010)) b!1087205))

(declare-fun m!1237405 () Bool)

(assert (=> b!1087205 m!1237405))

(declare-fun m!1237407 () Bool)

(assert (=> b!1087205 m!1237407))

(assert (=> b!1087034 d!305633))

(declare-fun d!305635 () Bool)

(declare-fun res!483398 () Bool)

(declare-fun e!687689 () Bool)

(assert (=> d!305635 (=> res!483398 e!687689)))

(assert (=> d!305635 (= res!483398 ((_ is Nil!10345) (t!101407 lt!363620)))))

(assert (=> d!305635 (= (noDuplicate!193 (t!101407 lt!363620)) e!687689)))

(declare-fun b!1087206 () Bool)

(declare-fun e!687690 () Bool)

(assert (=> b!1087206 (= e!687689 e!687690)))

(declare-fun res!483399 () Bool)

(assert (=> b!1087206 (=> (not res!483399) (not e!687690))))

(assert (=> b!1087206 (= res!483399 (not (contains!1724 (t!101407 (t!101407 lt!363620)) (h!15746 (t!101407 lt!363620)))))))

(declare-fun b!1087207 () Bool)

(assert (=> b!1087207 (= e!687690 (noDuplicate!193 (t!101407 (t!101407 lt!363620))))))

(assert (= (and d!305635 (not res!483398)) b!1087206))

(assert (= (and b!1087206 res!483399) b!1087207))

(declare-fun m!1237409 () Bool)

(assert (=> b!1087206 m!1237409))

(declare-fun m!1237411 () Bool)

(assert (=> b!1087207 m!1237411))

(assert (=> b!1087025 d!305635))

(declare-fun d!305637 () Bool)

(declare-fun c!184011 () Bool)

(assert (=> d!305637 (= c!184011 (isEmpty!6635 s!2287))))

(declare-fun e!687691 () Bool)

(assert (=> d!305637 (= (matchZipper!67 (store ((as const (Array Context!998 Bool)) false) lt!363713 true) s!2287) e!687691)))

(declare-fun b!1087208 () Bool)

(assert (=> b!1087208 (= e!687691 (nullableZipper!32 (store ((as const (Array Context!998 Bool)) false) lt!363713 true)))))

(declare-fun b!1087209 () Bool)

(assert (=> b!1087209 (= e!687691 (matchZipper!67 (derivationStepZipper!30 (store ((as const (Array Context!998 Bool)) false) lt!363713 true) (head!2018 s!2287)) (tail!1580 s!2287)))))

(assert (= (and d!305637 c!184011) b!1087208))

(assert (= (and d!305637 (not c!184011)) b!1087209))

(assert (=> d!305637 m!1236927))

(assert (=> b!1087208 m!1237227))

(declare-fun m!1237415 () Bool)

(assert (=> b!1087208 m!1237415))

(assert (=> b!1087209 m!1236931))

(assert (=> b!1087209 m!1237227))

(assert (=> b!1087209 m!1236931))

(declare-fun m!1237417 () Bool)

(assert (=> b!1087209 m!1237417))

(assert (=> b!1087209 m!1236935))

(assert (=> b!1087209 m!1237417))

(assert (=> b!1087209 m!1236935))

(declare-fun m!1237419 () Bool)

(assert (=> b!1087209 m!1237419))

(assert (=> bs!257101 d!305637))

(declare-fun d!305641 () Bool)

(assert (=> d!305641 (= (isEmpty!6635 (tail!1580 s!2287)) ((_ is Nil!10346) (tail!1580 s!2287)))))

(assert (=> d!305487 d!305641))

(assert (=> d!305527 d!305467))

(declare-fun bs!257233 () Bool)

(declare-fun d!305643 () Bool)

(assert (= bs!257233 (and d!305643 d!305495)))

(declare-fun lambda!40460 () Int)

(assert (=> bs!257233 (not (= lambda!40460 lambda!40425))))

(declare-fun bs!257234 () Bool)

(assert (= bs!257234 (and d!305643 d!305369)))

(assert (=> bs!257234 (not (= lambda!40460 lambda!40369))))

(declare-fun bs!257235 () Bool)

(assert (= bs!257235 (and d!305643 d!305483)))

(assert (=> bs!257235 (not (= lambda!40460 lambda!40420))))

(declare-fun bs!257236 () Bool)

(assert (= bs!257236 (and d!305643 d!305629)))

(assert (=> bs!257236 (not (= lambda!40460 lambda!40457))))

(declare-fun bs!257237 () Bool)

(assert (= bs!257237 (and d!305643 d!305463)))

(assert (=> bs!257237 (not (= lambda!40460 lambda!40411))))

(declare-fun bs!257238 () Bool)

(assert (= bs!257238 (and d!305643 d!305601)))

(assert (=> bs!257238 (not (= lambda!40460 lambda!40455))))

(declare-fun bs!257239 () Bool)

(assert (= bs!257239 (and d!305643 d!305377)))

(assert (=> bs!257239 (not (= lambda!40460 lambda!40376))))

(declare-fun bs!257240 () Bool)

(assert (= bs!257240 (and d!305643 d!305347)))

(assert (=> bs!257240 (= lambda!40460 lambda!40333)))

(declare-fun b!1087234 () Bool)

(declare-fun e!687710 () Option!2460)

(declare-fun e!687708 () Option!2460)

(assert (=> b!1087234 (= e!687710 e!687708)))

(declare-fun lt!363740 () Option!2460)

(declare-fun getLanguageWitness!67 (Regex!3019) Option!2460)

(assert (=> b!1087234 (= lt!363740 (getLanguageWitness!67 (h!15745 (exprs!999 (getWitness!90 lt!363605 lambda!40439)))))))

(declare-fun c!184023 () Bool)

(assert (=> b!1087234 (= c!184023 ((_ is Some!2459) lt!363740))))

(declare-fun b!1087236 () Bool)

(assert (=> b!1087236 (= e!687708 None!2459)))

(declare-fun b!1087237 () Bool)

(declare-fun e!687709 () Option!2460)

(assert (=> b!1087237 (= e!687709 None!2459)))

(declare-fun b!1087238 () Bool)

(assert (=> b!1087238 (= e!687710 (Some!2459 Nil!10346))))

(declare-fun b!1087239 () Bool)

(declare-fun c!184022 () Bool)

(declare-fun lt!363739 () Option!2460)

(assert (=> b!1087239 (= c!184022 ((_ is Some!2459) lt!363739))))

(assert (=> b!1087239 (= lt!363739 (getLanguageWitness!65 (Context!999 (t!101406 (exprs!999 (getWitness!90 lt!363605 lambda!40439))))))))

(assert (=> b!1087239 (= e!687708 e!687709)))

(declare-fun b!1087235 () Bool)

(declare-fun ++!2827 (List!10362 List!10362) List!10362)

(assert (=> b!1087235 (= e!687709 (Some!2459 (++!2827 (v!19888 lt!363740) (v!19888 lt!363739))))))

(declare-fun lt!363738 () Option!2460)

(assert (=> d!305643 (= (isEmpty!6634 lt!363738) (exists!180 (exprs!999 (getWitness!90 lt!363605 lambda!40439)) lambda!40460))))

(assert (=> d!305643 (= lt!363738 e!687710)))

(declare-fun c!184021 () Bool)

(assert (=> d!305643 (= c!184021 ((_ is Cons!10344) (exprs!999 (getWitness!90 lt!363605 lambda!40439))))))

(assert (=> d!305643 (= (getLanguageWitness!65 (getWitness!90 lt!363605 lambda!40439)) lt!363738)))

(assert (= (and d!305643 c!184021) b!1087234))

(assert (= (and d!305643 (not c!184021)) b!1087238))

(assert (= (and b!1087234 c!184023) b!1087239))

(assert (= (and b!1087234 (not c!184023)) b!1087236))

(assert (= (and b!1087239 c!184022) b!1087235))

(assert (= (and b!1087239 (not c!184022)) b!1087237))

(declare-fun m!1237475 () Bool)

(assert (=> b!1087234 m!1237475))

(declare-fun m!1237477 () Bool)

(assert (=> b!1087239 m!1237477))

(declare-fun m!1237479 () Bool)

(assert (=> b!1087235 m!1237479))

(declare-fun m!1237481 () Bool)

(assert (=> d!305643 m!1237481))

(declare-fun m!1237483 () Bool)

(assert (=> d!305643 m!1237483))

(assert (=> b!1087041 d!305643))

(declare-fun d!305671 () Bool)

(declare-fun e!687717 () Bool)

(assert (=> d!305671 e!687717))

(declare-fun res!483415 () Bool)

(assert (=> d!305671 (=> (not res!483415) (not e!687717))))

(declare-fun lt!363743 () Context!998)

(assert (=> d!305671 (= res!483415 (dynLambda!4530 lambda!40439 lt!363743))))

(assert (=> d!305671 (= lt!363743 (getWitness!92 (toList!637 lt!363605) lambda!40439))))

(assert (=> d!305671 (exists!177 lt!363605 lambda!40439)))

(assert (=> d!305671 (= (getWitness!90 lt!363605 lambda!40439) lt!363743)))

(declare-fun b!1087248 () Bool)

(assert (=> b!1087248 (= e!687717 (select lt!363605 lt!363743))))

(assert (= (and d!305671 res!483415) b!1087248))

(declare-fun b_lambda!30161 () Bool)

(assert (=> (not b_lambda!30161) (not d!305671)))

(declare-fun m!1237485 () Bool)

(assert (=> d!305671 m!1237485))

(assert (=> d!305671 m!1236903))

(assert (=> d!305671 m!1236903))

(declare-fun m!1237487 () Bool)

(assert (=> d!305671 m!1237487))

(assert (=> d!305671 m!1237183))

(declare-fun m!1237489 () Bool)

(assert (=> b!1087248 m!1237489))

(assert (=> b!1087041 d!305671))

(declare-fun d!305673 () Bool)

(declare-fun c!184026 () Bool)

(assert (=> d!305673 (= c!184026 (isEmpty!6635 s!2287))))

(declare-fun e!687718 () Bool)

(assert (=> d!305673 (= (matchZipper!67 (store ((as const (Array Context!998 Bool)) false) (h!15746 (toList!637 z!1122)) true) s!2287) e!687718)))

(declare-fun b!1087249 () Bool)

(assert (=> b!1087249 (= e!687718 (nullableZipper!32 (store ((as const (Array Context!998 Bool)) false) (h!15746 (toList!637 z!1122)) true)))))

(declare-fun b!1087250 () Bool)

(assert (=> b!1087250 (= e!687718 (matchZipper!67 (derivationStepZipper!30 (store ((as const (Array Context!998 Bool)) false) (h!15746 (toList!637 z!1122)) true) (head!2018 s!2287)) (tail!1580 s!2287)))))

(assert (= (and d!305673 c!184026) b!1087249))

(assert (= (and d!305673 (not c!184026)) b!1087250))

(assert (=> d!305673 m!1236927))

(assert (=> b!1087249 m!1237235))

(declare-fun m!1237491 () Bool)

(assert (=> b!1087249 m!1237491))

(assert (=> b!1087250 m!1236931))

(assert (=> b!1087250 m!1237235))

(assert (=> b!1087250 m!1236931))

(declare-fun m!1237493 () Bool)

(assert (=> b!1087250 m!1237493))

(assert (=> b!1087250 m!1236935))

(assert (=> b!1087250 m!1237493))

(assert (=> b!1087250 m!1236935))

(declare-fun m!1237495 () Bool)

(assert (=> b!1087250 m!1237495))

(assert (=> bs!257104 d!305673))

(declare-fun d!305675 () Bool)

(declare-fun res!483416 () Bool)

(declare-fun e!687719 () Bool)

(assert (=> d!305675 (=> res!483416 e!687719)))

(assert (=> d!305675 (= res!483416 ((_ is Nil!10344) (t!101406 (exprs!999 setElem!7638))))))

(assert (=> d!305675 (= (forall!2279 (t!101406 (exprs!999 setElem!7638)) lambda!40369) e!687719)))

(declare-fun b!1087251 () Bool)

(declare-fun e!687720 () Bool)

(assert (=> b!1087251 (= e!687719 e!687720)))

(declare-fun res!483417 () Bool)

(assert (=> b!1087251 (=> (not res!483417) (not e!687720))))

(assert (=> b!1087251 (= res!483417 (dynLambda!4534 lambda!40369 (h!15745 (t!101406 (exprs!999 setElem!7638)))))))

(declare-fun b!1087252 () Bool)

(assert (=> b!1087252 (= e!687720 (forall!2279 (t!101406 (t!101406 (exprs!999 setElem!7638))) lambda!40369))))

(assert (= (and d!305675 (not res!483416)) b!1087251))

(assert (= (and b!1087251 res!483417) b!1087252))

(declare-fun b_lambda!30163 () Bool)

(assert (=> (not b_lambda!30163) (not b!1087251)))

(declare-fun m!1237499 () Bool)

(assert (=> b!1087251 m!1237499))

(declare-fun m!1237501 () Bool)

(assert (=> b!1087252 m!1237501))

(assert (=> b!1087036 d!305675))

(declare-fun d!305679 () Bool)

(declare-fun res!483418 () Bool)

(declare-fun e!687722 () Bool)

(assert (=> d!305679 (=> res!483418 e!687722)))

(assert (=> d!305679 (= res!483418 ((_ is Nil!10345) zl!316))))

(assert (=> d!305679 (= (forall!2280 zl!316 lambda!40412) e!687722)))

(declare-fun b!1087255 () Bool)

(declare-fun e!687723 () Bool)

(assert (=> b!1087255 (= e!687722 e!687723)))

(declare-fun res!483419 () Bool)

(assert (=> b!1087255 (=> (not res!483419) (not e!687723))))

(assert (=> b!1087255 (= res!483419 (dynLambda!4530 lambda!40412 (h!15746 zl!316)))))

(declare-fun b!1087256 () Bool)

(assert (=> b!1087256 (= e!687723 (forall!2280 (t!101407 zl!316) lambda!40412))))

(assert (= (and d!305679 (not res!483418)) b!1087255))

(assert (= (and b!1087255 res!483419) b!1087256))

(declare-fun b_lambda!30165 () Bool)

(assert (=> (not b_lambda!30165) (not b!1087255)))

(declare-fun m!1237507 () Bool)

(assert (=> b!1087255 m!1237507))

(declare-fun m!1237509 () Bool)

(assert (=> b!1087256 m!1237509))

(assert (=> d!305469 d!305679))

(declare-fun bs!257262 () Bool)

(declare-fun d!305683 () Bool)

(assert (= bs!257262 (and d!305683 b!1086854)))

(declare-fun lambda!40463 () Int)

(assert (=> bs!257262 (not (= lambda!40463 lambda!40366))))

(declare-fun bs!257265 () Bool)

(assert (= bs!257265 (and d!305683 d!305515)))

(assert (=> bs!257265 (not (= lambda!40463 lambda!40439))))

(declare-fun bs!257267 () Bool)

(assert (= bs!257267 (and d!305683 d!305361)))

(assert (=> bs!257267 (not (= lambda!40463 lambda!40364))))

(declare-fun bs!257269 () Bool)

(assert (= bs!257269 (and d!305683 d!305471)))

(assert (=> bs!257269 (not (= lambda!40463 lambda!40415))))

(declare-fun bs!257271 () Bool)

(assert (= bs!257271 (and d!305683 d!305585)))

(assert (=> bs!257271 (= lambda!40463 lambda!40449)))

(declare-fun bs!257273 () Bool)

(assert (= bs!257273 (and d!305683 d!305373)))

(assert (=> bs!257273 (not (= lambda!40463 lambda!40372))))

(declare-fun bs!257275 () Bool)

(assert (= bs!257275 (and d!305683 d!305477)))

(assert (=> bs!257275 (= lambda!40463 lambda!40418)))

(declare-fun bs!257277 () Bool)

(assert (= bs!257277 (and d!305683 d!305375)))

(assert (=> bs!257277 (not (= lambda!40463 lambda!40375))))

(declare-fun bs!257280 () Bool)

(assert (= bs!257280 (and d!305683 d!305501)))

(assert (=> bs!257280 (not (= lambda!40463 lambda!40429))))

(declare-fun bs!257282 () Bool)

(assert (= bs!257282 (and d!305683 d!305469)))

(assert (=> bs!257282 (not (= lambda!40463 lambda!40412))))

(declare-fun bs!257284 () Bool)

(assert (= bs!257284 (and d!305683 b!1086853)))

(assert (=> bs!257284 (not (= lambda!40463 lambda!40365))))

(declare-fun bs!257286 () Bool)

(assert (= bs!257286 (and d!305683 d!305479)))

(assert (=> bs!257286 (not (= lambda!40463 lambda!40419))))

(declare-fun bs!257288 () Bool)

(assert (= bs!257288 (and d!305683 d!305509)))

(assert (=> bs!257288 (not (= lambda!40463 lambda!40432))))

(declare-fun bs!257290 () Bool)

(assert (= bs!257290 (and d!305683 b!1086789)))

(assert (=> bs!257290 (not (= lambda!40463 lambda!40320))))

(declare-fun bs!257292 () Bool)

(assert (= bs!257292 (and d!305683 d!305525)))

(assert (=> bs!257292 (not (= lambda!40463 lambda!40440))))

(declare-fun bs!257294 () Bool)

(assert (= bs!257294 (and d!305683 d!305485)))

(assert (=> bs!257294 (= lambda!40463 lambda!40421)))

(assert (=> d!305683 (= (nullableZipper!32 (derivationStepZipper!30 z!1122 (head!2018 s!2287))) (exists!177 (derivationStepZipper!30 z!1122 (head!2018 s!2287)) lambda!40463))))

(declare-fun bs!257296 () Bool)

(assert (= bs!257296 d!305683))

(assert (=> bs!257296 m!1236947))

(declare-fun m!1237513 () Bool)

(assert (=> bs!257296 m!1237513))

(assert (=> b!1087012 d!305683))

(declare-fun bs!257297 () Bool)

(declare-fun d!305687 () Bool)

(assert (= bs!257297 (and d!305687 b!1086854)))

(declare-fun lambda!40464 () Int)

(assert (=> bs!257297 (not (= lambda!40464 lambda!40366))))

(declare-fun bs!257298 () Bool)

(assert (= bs!257298 (and d!305687 d!305683)))

(assert (=> bs!257298 (= lambda!40464 lambda!40463)))

(declare-fun bs!257299 () Bool)

(assert (= bs!257299 (and d!305687 d!305515)))

(assert (=> bs!257299 (not (= lambda!40464 lambda!40439))))

(declare-fun bs!257300 () Bool)

(assert (= bs!257300 (and d!305687 d!305361)))

(assert (=> bs!257300 (not (= lambda!40464 lambda!40364))))

(declare-fun bs!257301 () Bool)

(assert (= bs!257301 (and d!305687 d!305471)))

(assert (=> bs!257301 (not (= lambda!40464 lambda!40415))))

(declare-fun bs!257302 () Bool)

(assert (= bs!257302 (and d!305687 d!305585)))

(assert (=> bs!257302 (= lambda!40464 lambda!40449)))

(declare-fun bs!257303 () Bool)

(assert (= bs!257303 (and d!305687 d!305373)))

(assert (=> bs!257303 (not (= lambda!40464 lambda!40372))))

(declare-fun bs!257304 () Bool)

(assert (= bs!257304 (and d!305687 d!305477)))

(assert (=> bs!257304 (= lambda!40464 lambda!40418)))

(declare-fun bs!257305 () Bool)

(assert (= bs!257305 (and d!305687 d!305375)))

(assert (=> bs!257305 (not (= lambda!40464 lambda!40375))))

(declare-fun bs!257306 () Bool)

(assert (= bs!257306 (and d!305687 d!305501)))

(assert (=> bs!257306 (not (= lambda!40464 lambda!40429))))

(declare-fun bs!257308 () Bool)

(assert (= bs!257308 (and d!305687 d!305469)))

(assert (=> bs!257308 (not (= lambda!40464 lambda!40412))))

(declare-fun bs!257310 () Bool)

(assert (= bs!257310 (and d!305687 b!1086853)))

(assert (=> bs!257310 (not (= lambda!40464 lambda!40365))))

(declare-fun bs!257312 () Bool)

(assert (= bs!257312 (and d!305687 d!305479)))

(assert (=> bs!257312 (not (= lambda!40464 lambda!40419))))

(declare-fun bs!257314 () Bool)

(assert (= bs!257314 (and d!305687 d!305509)))

(assert (=> bs!257314 (not (= lambda!40464 lambda!40432))))

(declare-fun bs!257316 () Bool)

(assert (= bs!257316 (and d!305687 b!1086789)))

(assert (=> bs!257316 (not (= lambda!40464 lambda!40320))))

(declare-fun bs!257318 () Bool)

(assert (= bs!257318 (and d!305687 d!305525)))

(assert (=> bs!257318 (not (= lambda!40464 lambda!40440))))

(declare-fun bs!257320 () Bool)

(assert (= bs!257320 (and d!305687 d!305485)))

(assert (=> bs!257320 (= lambda!40464 lambda!40421)))

(assert (=> d!305687 (= (nullableZipper!32 (content!1488 zl!316)) (exists!177 (content!1488 zl!316) lambda!40464))))

(declare-fun bs!257322 () Bool)

(assert (= bs!257322 d!305687))

(assert (=> bs!257322 m!1236921))

(declare-fun m!1237525 () Bool)

(assert (=> bs!257322 m!1237525))

(assert (=> b!1087000 d!305687))

(declare-fun d!305693 () Bool)

(declare-fun c!184028 () Bool)

(assert (=> d!305693 (= c!184028 (isEmpty!6635 (tail!1580 (tail!1580 s!2287))))))

(declare-fun e!687728 () Bool)

(assert (=> d!305693 (= (matchZipper!67 (derivationStepZipper!30 (derivationStepZipper!30 lt!363605 (head!2018 s!2287)) (head!2018 (tail!1580 s!2287))) (tail!1580 (tail!1580 s!2287))) e!687728)))

(declare-fun b!1087261 () Bool)

(assert (=> b!1087261 (= e!687728 (nullableZipper!32 (derivationStepZipper!30 (derivationStepZipper!30 lt!363605 (head!2018 s!2287)) (head!2018 (tail!1580 s!2287)))))))

(declare-fun b!1087262 () Bool)

(assert (=> b!1087262 (= e!687728 (matchZipper!67 (derivationStepZipper!30 (derivationStepZipper!30 (derivationStepZipper!30 lt!363605 (head!2018 s!2287)) (head!2018 (tail!1580 s!2287))) (head!2018 (tail!1580 (tail!1580 s!2287)))) (tail!1580 (tail!1580 (tail!1580 s!2287)))))))

(assert (= (and d!305693 c!184028) b!1087261))

(assert (= (and d!305693 (not c!184028)) b!1087262))

(assert (=> d!305693 m!1237135))

(assert (=> d!305693 m!1237301))

(assert (=> b!1087261 m!1237133))

(declare-fun m!1237529 () Bool)

(assert (=> b!1087261 m!1237529))

(assert (=> b!1087262 m!1237135))

(assert (=> b!1087262 m!1237305))

(assert (=> b!1087262 m!1237133))

(assert (=> b!1087262 m!1237305))

(declare-fun m!1237533 () Bool)

(assert (=> b!1087262 m!1237533))

(assert (=> b!1087262 m!1237135))

(assert (=> b!1087262 m!1237309))

(assert (=> b!1087262 m!1237533))

(assert (=> b!1087262 m!1237309))

(declare-fun m!1237537 () Bool)

(assert (=> b!1087262 m!1237537))

(assert (=> b!1087009 d!305693))

(declare-fun bs!257325 () Bool)

(declare-fun d!305699 () Bool)

(assert (= bs!257325 (and d!305699 d!305489)))

(declare-fun lambda!40467 () Int)

(assert (=> bs!257325 (= (= (head!2018 (tail!1580 s!2287)) (head!2018 s!2287)) (= lambda!40467 lambda!40424))))

(declare-fun bs!257327 () Bool)

(assert (= bs!257327 (and d!305699 d!305499)))

(assert (=> bs!257327 (= (= (head!2018 (tail!1580 s!2287)) (head!2018 s!2287)) (= lambda!40467 lambda!40426))))

(declare-fun bs!257329 () Bool)

(assert (= bs!257329 (and d!305699 d!305579)))

(assert (=> bs!257329 (= lambda!40467 lambda!40448)))

(declare-fun bs!257331 () Bool)

(assert (= bs!257331 (and d!305699 d!305597)))

(assert (=> bs!257331 (= (= (head!2018 (tail!1580 s!2287)) (head!2018 s!2287)) (= lambda!40467 lambda!40454))))

(assert (=> d!305699 true))

(assert (=> d!305699 (= (derivationStepZipper!30 (derivationStepZipper!30 lt!363605 (head!2018 s!2287)) (head!2018 (tail!1580 s!2287))) (flatMap!118 (derivationStepZipper!30 lt!363605 (head!2018 s!2287)) lambda!40467))))

(declare-fun bs!257333 () Bool)

(assert (= bs!257333 d!305699))

(assert (=> bs!257333 m!1236933))

(declare-fun m!1237539 () Bool)

(assert (=> bs!257333 m!1237539))

(assert (=> b!1087009 d!305699))

(assert (=> b!1087009 d!305581))

(assert (=> b!1087009 d!305583))

(declare-fun b!1087265 () Bool)

(declare-fun e!687732 () Context!998)

(declare-fun e!687730 () Context!998)

(assert (=> b!1087265 (= e!687732 e!687730)))

(declare-fun c!184030 () Bool)

(assert (=> b!1087265 (= c!184030 ((_ is Cons!10345) (t!101407 (toList!637 z!1122))))))

(declare-fun b!1087266 () Bool)

(assert (=> b!1087266 (= e!687732 (h!15746 (t!101407 (toList!637 z!1122))))))

(declare-fun d!305701 () Bool)

(declare-fun e!687733 () Bool)

(assert (=> d!305701 e!687733))

(declare-fun res!483425 () Bool)

(assert (=> d!305701 (=> (not res!483425) (not e!687733))))

(declare-fun lt!363744 () Context!998)

(assert (=> d!305701 (= res!483425 (dynLambda!4530 lambda!40320 lt!363744))))

(assert (=> d!305701 (= lt!363744 e!687732)))

(declare-fun c!184031 () Bool)

(declare-fun e!687731 () Bool)

(assert (=> d!305701 (= c!184031 e!687731)))

(declare-fun res!483424 () Bool)

(assert (=> d!305701 (=> (not res!483424) (not e!687731))))

(assert (=> d!305701 (= res!483424 ((_ is Cons!10345) (t!101407 (toList!637 z!1122))))))

(assert (=> d!305701 (exists!178 (t!101407 (toList!637 z!1122)) lambda!40320)))

(assert (=> d!305701 (= (getWitness!92 (t!101407 (toList!637 z!1122)) lambda!40320) lt!363744)))

(declare-fun b!1087267 () Bool)

(assert (=> b!1087267 (= e!687730 (getWitness!92 (t!101407 (t!101407 (toList!637 z!1122))) lambda!40320))))

(declare-fun b!1087268 () Bool)

(assert (=> b!1087268 (= e!687731 (dynLambda!4530 lambda!40320 (h!15746 (t!101407 (toList!637 z!1122)))))))

(declare-fun b!1087269 () Bool)

(assert (=> b!1087269 (= e!687733 (contains!1724 (t!101407 (toList!637 z!1122)) lt!363744))))

(declare-fun b!1087270 () Bool)

(declare-fun lt!363745 () Unit!15729)

(declare-fun Unit!15738 () Unit!15729)

(assert (=> b!1087270 (= lt!363745 Unit!15738)))

(assert (=> b!1087270 false))

(assert (=> b!1087270 (= e!687730 (head!2020 (t!101407 (toList!637 z!1122))))))

(assert (= (and d!305701 res!483424) b!1087268))

(assert (= (and d!305701 c!184031) b!1087266))

(assert (= (and d!305701 (not c!184031)) b!1087265))

(assert (= (and b!1087265 c!184030) b!1087267))

(assert (= (and b!1087265 (not c!184030)) b!1087270))

(assert (= (and d!305701 res!483425) b!1087269))

(declare-fun b_lambda!30169 () Bool)

(assert (=> (not b_lambda!30169) (not d!305701)))

(declare-fun b_lambda!30171 () Bool)

(assert (=> (not b_lambda!30171) (not b!1087268)))

(declare-fun m!1237543 () Bool)

(assert (=> b!1087267 m!1237543))

(declare-fun m!1237545 () Bool)

(assert (=> b!1087270 m!1237545))

(declare-fun m!1237547 () Bool)

(assert (=> d!305701 m!1237547))

(declare-fun m!1237549 () Bool)

(assert (=> d!305701 m!1237549))

(declare-fun m!1237551 () Bool)

(assert (=> b!1087268 m!1237551))

(declare-fun m!1237553 () Bool)

(assert (=> b!1087269 m!1237553))

(assert (=> b!1087057 d!305701))

(declare-fun bs!257348 () Bool)

(declare-fun d!305705 () Bool)

(assert (= bs!257348 (and d!305705 b!1086854)))

(declare-fun lambda!40469 () Int)

(assert (=> bs!257348 (not (= lambda!40469 lambda!40366))))

(declare-fun bs!257351 () Bool)

(assert (= bs!257351 (and d!305705 d!305683)))

(assert (=> bs!257351 (not (= lambda!40469 lambda!40463))))

(declare-fun bs!257353 () Bool)

(assert (= bs!257353 (and d!305705 d!305515)))

(assert (=> bs!257353 (not (= lambda!40469 lambda!40439))))

(declare-fun bs!257355 () Bool)

(assert (= bs!257355 (and d!305705 d!305361)))

(assert (=> bs!257355 (not (= lambda!40469 lambda!40364))))

(declare-fun bs!257357 () Bool)

(assert (= bs!257357 (and d!305705 d!305471)))

(assert (=> bs!257357 (not (= lambda!40469 lambda!40415))))

(declare-fun bs!257359 () Bool)

(assert (= bs!257359 (and d!305705 d!305585)))

(assert (=> bs!257359 (not (= lambda!40469 lambda!40449))))

(declare-fun bs!257361 () Bool)

(assert (= bs!257361 (and d!305705 d!305687)))

(assert (=> bs!257361 (not (= lambda!40469 lambda!40464))))

(declare-fun bs!257362 () Bool)

(assert (= bs!257362 (and d!305705 d!305373)))

(assert (=> bs!257362 (= (= lambda!40432 lambda!40320) (= lambda!40469 lambda!40372))))

(declare-fun bs!257364 () Bool)

(assert (= bs!257364 (and d!305705 d!305477)))

(assert (=> bs!257364 (not (= lambda!40469 lambda!40418))))

(declare-fun bs!257365 () Bool)

(assert (= bs!257365 (and d!305705 d!305375)))

(assert (=> bs!257365 (not (= lambda!40469 lambda!40375))))

(declare-fun bs!257366 () Bool)

(assert (= bs!257366 (and d!305705 d!305501)))

(assert (=> bs!257366 (= (= lambda!40432 lambda!40364) (= lambda!40469 lambda!40429))))

(declare-fun bs!257367 () Bool)

(assert (= bs!257367 (and d!305705 d!305469)))

(assert (=> bs!257367 (= (= lambda!40432 lambda!40375) (= lambda!40469 lambda!40412))))

(declare-fun bs!257368 () Bool)

(assert (= bs!257368 (and d!305705 b!1086853)))

(assert (=> bs!257368 (not (= lambda!40469 lambda!40365))))

(declare-fun bs!257369 () Bool)

(assert (= bs!257369 (and d!305705 d!305479)))

(assert (=> bs!257369 (= (= lambda!40432 lambda!40320) (= lambda!40469 lambda!40419))))

(declare-fun bs!257370 () Bool)

(assert (= bs!257370 (and d!305705 d!305509)))

(assert (=> bs!257370 (= (= lambda!40432 lambda!40364) (= lambda!40469 lambda!40432))))

(declare-fun bs!257371 () Bool)

(assert (= bs!257371 (and d!305705 b!1086789)))

(assert (=> bs!257371 (not (= lambda!40469 lambda!40320))))

(declare-fun bs!257372 () Bool)

(assert (= bs!257372 (and d!305705 d!305525)))

(assert (=> bs!257372 (= (= lambda!40432 (ite c!183913 lambda!40365 lambda!40366)) (= lambda!40469 lambda!40440))))

(declare-fun bs!257373 () Bool)

(assert (= bs!257373 (and d!305705 d!305485)))

(assert (=> bs!257373 (not (= lambda!40469 lambda!40421))))

(assert (=> d!305705 true))

(assert (=> d!305705 (< (dynLambda!4529 order!6223 lambda!40432) (dynLambda!4529 order!6223 lambda!40469))))

(assert (=> d!305705 (= (exists!178 lt!363662 lambda!40432) (not (forall!2280 lt!363662 lambda!40469)))))

(declare-fun bs!257374 () Bool)

(assert (= bs!257374 d!305705))

(declare-fun m!1237565 () Bool)

(assert (=> bs!257374 m!1237565))

(assert (=> d!305509 d!305705))

(declare-fun bs!257397 () Bool)

(declare-fun d!305713 () Bool)

(assert (= bs!257397 (and d!305713 b!1086854)))

(declare-fun lambda!40473 () Int)

(assert (=> bs!257397 (not (= lambda!40473 lambda!40366))))

(declare-fun bs!257398 () Bool)

(assert (= bs!257398 (and d!305713 d!305683)))

(assert (=> bs!257398 (not (= lambda!40473 lambda!40463))))

(declare-fun bs!257399 () Bool)

(assert (= bs!257399 (and d!305713 d!305515)))

(assert (=> bs!257399 (not (= lambda!40473 lambda!40439))))

(declare-fun bs!257400 () Bool)

(assert (= bs!257400 (and d!305713 d!305361)))

(assert (=> bs!257400 (not (= lambda!40473 lambda!40364))))

(declare-fun bs!257401 () Bool)

(assert (= bs!257401 (and d!305713 d!305471)))

(assert (=> bs!257401 (not (= lambda!40473 lambda!40415))))

(declare-fun bs!257402 () Bool)

(assert (= bs!257402 (and d!305713 d!305585)))

(assert (=> bs!257402 (not (= lambda!40473 lambda!40449))))

(declare-fun bs!257403 () Bool)

(assert (= bs!257403 (and d!305713 d!305687)))

(assert (=> bs!257403 (not (= lambda!40473 lambda!40464))))

(declare-fun bs!257404 () Bool)

(assert (= bs!257404 (and d!305713 d!305373)))

(assert (=> bs!257404 (= (= lambda!40364 lambda!40320) (= lambda!40473 lambda!40372))))

(declare-fun bs!257405 () Bool)

(assert (= bs!257405 (and d!305713 d!305477)))

(assert (=> bs!257405 (not (= lambda!40473 lambda!40418))))

(declare-fun bs!257407 () Bool)

(assert (= bs!257407 (and d!305713 d!305375)))

(assert (=> bs!257407 (not (= lambda!40473 lambda!40375))))

(declare-fun bs!257409 () Bool)

(assert (= bs!257409 (and d!305713 d!305501)))

(assert (=> bs!257409 (= lambda!40473 lambda!40429)))

(declare-fun bs!257412 () Bool)

(assert (= bs!257412 (and d!305713 d!305469)))

(assert (=> bs!257412 (= (= lambda!40364 lambda!40375) (= lambda!40473 lambda!40412))))

(declare-fun bs!257414 () Bool)

(assert (= bs!257414 (and d!305713 b!1086853)))

(assert (=> bs!257414 (not (= lambda!40473 lambda!40365))))

(declare-fun bs!257416 () Bool)

(assert (= bs!257416 (and d!305713 d!305705)))

(assert (=> bs!257416 (= (= lambda!40364 lambda!40432) (= lambda!40473 lambda!40469))))

(declare-fun bs!257418 () Bool)

(assert (= bs!257418 (and d!305713 d!305479)))

(assert (=> bs!257418 (= (= lambda!40364 lambda!40320) (= lambda!40473 lambda!40419))))

(declare-fun bs!257420 () Bool)

(assert (= bs!257420 (and d!305713 d!305509)))

(assert (=> bs!257420 (= lambda!40473 lambda!40432)))

(declare-fun bs!257422 () Bool)

(assert (= bs!257422 (and d!305713 b!1086789)))

(assert (=> bs!257422 (not (= lambda!40473 lambda!40320))))

(declare-fun bs!257423 () Bool)

(assert (= bs!257423 (and d!305713 d!305525)))

(assert (=> bs!257423 (= (= lambda!40364 (ite c!183913 lambda!40365 lambda!40366)) (= lambda!40473 lambda!40440))))

(declare-fun bs!257425 () Bool)

(assert (= bs!257425 (and d!305713 d!305485)))

(assert (=> bs!257425 (not (= lambda!40473 lambda!40421))))

(assert (=> d!305713 true))

(assert (=> d!305713 (< (dynLambda!4529 order!6223 lambda!40364) (dynLambda!4529 order!6223 lambda!40473))))

(assert (=> d!305713 (not (exists!178 lt!363662 lambda!40473))))

(assert (=> d!305713 true))

(declare-fun _$98!186 () Unit!15729)

(assert (=> d!305713 (= (choose!6963 lt!363662 lambda!40364) _$98!186)))

(declare-fun bs!257426 () Bool)

(assert (= bs!257426 d!305713))

(declare-fun m!1237583 () Bool)

(assert (=> bs!257426 m!1237583))

(assert (=> d!305509 d!305713))

(declare-fun d!305725 () Bool)

(declare-fun res!483434 () Bool)

(declare-fun e!687747 () Bool)

(assert (=> d!305725 (=> res!483434 e!687747)))

(assert (=> d!305725 (= res!483434 ((_ is Nil!10345) lt!363662))))

(assert (=> d!305725 (= (forall!2280 lt!363662 lambda!40364) e!687747)))

(declare-fun b!1087284 () Bool)

(declare-fun e!687748 () Bool)

(assert (=> b!1087284 (= e!687747 e!687748)))

(declare-fun res!483435 () Bool)

(assert (=> b!1087284 (=> (not res!483435) (not e!687748))))

(assert (=> b!1087284 (= res!483435 (dynLambda!4530 lambda!40364 (h!15746 lt!363662)))))

(declare-fun b!1087285 () Bool)

(assert (=> b!1087285 (= e!687748 (forall!2280 (t!101407 lt!363662) lambda!40364))))

(assert (= (and d!305725 (not res!483434)) b!1087284))

(assert (= (and b!1087284 res!483435) b!1087285))

(declare-fun b_lambda!30177 () Bool)

(assert (=> (not b_lambda!30177) (not b!1087284)))

(declare-fun m!1237591 () Bool)

(assert (=> b!1087284 m!1237591))

(declare-fun m!1237593 () Bool)

(assert (=> b!1087285 m!1237593))

(assert (=> d!305509 d!305725))

(declare-fun d!305729 () Bool)

(declare-fun res!483436 () Bool)

(declare-fun e!687749 () Bool)

(assert (=> d!305729 (=> res!483436 e!687749)))

(assert (=> d!305729 (= res!483436 ((_ is Nil!10345) (toList!637 lt!363605)))))

(assert (=> d!305729 (= (forall!2280 (toList!637 lt!363605) lambda!40364) e!687749)))

(declare-fun b!1087286 () Bool)

(declare-fun e!687750 () Bool)

(assert (=> b!1087286 (= e!687749 e!687750)))

(declare-fun res!483437 () Bool)

(assert (=> b!1087286 (=> (not res!483437) (not e!687750))))

(assert (=> b!1087286 (= res!483437 (dynLambda!4530 lambda!40364 (h!15746 (toList!637 lt!363605))))))

(declare-fun b!1087287 () Bool)

(assert (=> b!1087287 (= e!687750 (forall!2280 (t!101407 (toList!637 lt!363605)) lambda!40364))))

(assert (= (and d!305729 (not res!483436)) b!1087286))

(assert (= (and b!1087286 res!483437) b!1087287))

(declare-fun b_lambda!30179 () Bool)

(assert (=> (not b_lambda!30179) (not b!1087286)))

(declare-fun m!1237595 () Bool)

(assert (=> b!1087286 m!1237595))

(declare-fun m!1237597 () Bool)

(assert (=> b!1087287 m!1237597))

(assert (=> d!305517 d!305729))

(assert (=> d!305517 d!305523))

(declare-fun d!305731 () Bool)

(declare-fun res!483440 () Bool)

(assert (=> d!305731 (= res!483440 (forall!2280 (toList!637 lt!363605) lambda!40364))))

(assert (=> d!305731 true))

(assert (=> d!305731 (= (choose!6964 lt!363605 lambda!40364) res!483440)))

(declare-fun bs!257450 () Bool)

(assert (= bs!257450 d!305731))

(assert (=> bs!257450 m!1236903))

(assert (=> bs!257450 m!1236903))

(assert (=> bs!257450 m!1237189))

(assert (=> d!305517 d!305731))

(declare-fun d!305735 () Bool)

(declare-fun c!184034 () Bool)

(assert (=> d!305735 (= c!184034 (isEmpty!6635 (tail!1580 s!2287)))))

(declare-fun e!687751 () Bool)

(assert (=> d!305735 (= (matchZipper!67 (derivationStepZipper!30 (store ((as const (Array Context!998 Bool)) false) lt!363677 true) (head!2018 s!2287)) (tail!1580 s!2287)) e!687751)))

(declare-fun b!1087288 () Bool)

(assert (=> b!1087288 (= e!687751 (nullableZipper!32 (derivationStepZipper!30 (store ((as const (Array Context!998 Bool)) false) lt!363677 true) (head!2018 s!2287))))))

(declare-fun b!1087289 () Bool)

(assert (=> b!1087289 (= e!687751 (matchZipper!67 (derivationStepZipper!30 (derivationStepZipper!30 (store ((as const (Array Context!998 Bool)) false) lt!363677 true) (head!2018 s!2287)) (head!2018 (tail!1580 s!2287))) (tail!1580 (tail!1580 s!2287))))))

(assert (= (and d!305735 c!184034) b!1087288))

(assert (= (and d!305735 (not c!184034)) b!1087289))

(assert (=> d!305735 m!1236935))

(assert (=> d!305735 m!1237127))

(assert (=> b!1087288 m!1237217))

(declare-fun m!1237601 () Bool)

(assert (=> b!1087288 m!1237601))

(assert (=> b!1087289 m!1236935))

(assert (=> b!1087289 m!1237131))

(assert (=> b!1087289 m!1237217))

(assert (=> b!1087289 m!1237131))

(declare-fun m!1237603 () Bool)

(assert (=> b!1087289 m!1237603))

(assert (=> b!1087289 m!1236935))

(assert (=> b!1087289 m!1237135))

(assert (=> b!1087289 m!1237603))

(assert (=> b!1087289 m!1237135))

(declare-fun m!1237605 () Bool)

(assert (=> b!1087289 m!1237605))

(assert (=> b!1087065 d!305735))

(declare-fun bs!257451 () Bool)

(declare-fun d!305737 () Bool)

(assert (= bs!257451 (and d!305737 d!305499)))

(declare-fun lambda!40478 () Int)

(assert (=> bs!257451 (= lambda!40478 lambda!40426)))

(declare-fun bs!257452 () Bool)

(assert (= bs!257452 (and d!305737 d!305579)))

(assert (=> bs!257452 (= (= (head!2018 s!2287) (head!2018 (tail!1580 s!2287))) (= lambda!40478 lambda!40448))))

(declare-fun bs!257453 () Bool)

(assert (= bs!257453 (and d!305737 d!305489)))

(assert (=> bs!257453 (= lambda!40478 lambda!40424)))

(declare-fun bs!257454 () Bool)

(assert (= bs!257454 (and d!305737 d!305597)))

(assert (=> bs!257454 (= lambda!40478 lambda!40454)))

(declare-fun bs!257455 () Bool)

(assert (= bs!257455 (and d!305737 d!305699)))

(assert (=> bs!257455 (= (= (head!2018 s!2287) (head!2018 (tail!1580 s!2287))) (= lambda!40478 lambda!40467))))

(assert (=> d!305737 true))

(assert (=> d!305737 (= (derivationStepZipper!30 (store ((as const (Array Context!998 Bool)) false) lt!363677 true) (head!2018 s!2287)) (flatMap!118 (store ((as const (Array Context!998 Bool)) false) lt!363677 true) lambda!40478))))

(declare-fun bs!257456 () Bool)

(assert (= bs!257456 d!305737))

(assert (=> bs!257456 m!1236955))

(declare-fun m!1237607 () Bool)

(assert (=> bs!257456 m!1237607))

(assert (=> b!1087065 d!305737))

(assert (=> b!1087065 d!305491))

(assert (=> b!1087065 d!305493))

(declare-fun d!305739 () Bool)

(declare-fun c!184035 () Bool)

(assert (=> d!305739 (= c!184035 ((_ is Nil!10345) (t!101407 lt!363620)))))

(declare-fun e!687754 () (InoxSet Context!998))

(assert (=> d!305739 (= (content!1488 (t!101407 lt!363620)) e!687754)))

(declare-fun b!1087290 () Bool)

(assert (=> b!1087290 (= e!687754 ((as const (Array Context!998 Bool)) false))))

(declare-fun b!1087291 () Bool)

(assert (=> b!1087291 (= e!687754 ((_ map or) (store ((as const (Array Context!998 Bool)) false) (h!15746 (t!101407 lt!363620)) true) (content!1488 (t!101407 (t!101407 lt!363620)))))))

(assert (= (and d!305739 c!184035) b!1087290))

(assert (= (and d!305739 (not c!184035)) b!1087291))

(declare-fun m!1237609 () Bool)

(assert (=> b!1087291 m!1237609))

(declare-fun m!1237611 () Bool)

(assert (=> b!1087291 m!1237611))

(assert (=> b!1087062 d!305739))

(declare-fun d!305741 () Bool)

(declare-fun lt!363748 () Bool)

(assert (=> d!305741 (= lt!363748 (select (content!1488 (toList!637 z!1122)) lt!363713))))

(declare-fun e!687761 () Bool)

(assert (=> d!305741 (= lt!363748 e!687761)))

(declare-fun res!483448 () Bool)

(assert (=> d!305741 (=> (not res!483448) (not e!687761))))

(assert (=> d!305741 (= res!483448 ((_ is Cons!10345) (toList!637 z!1122)))))

(assert (=> d!305741 (= (contains!1724 (toList!637 z!1122) lt!363713) lt!363748)))

(declare-fun b!1087298 () Bool)

(declare-fun e!687762 () Bool)

(assert (=> b!1087298 (= e!687761 e!687762)))

(declare-fun res!483447 () Bool)

(assert (=> b!1087298 (=> res!483447 e!687762)))

(assert (=> b!1087298 (= res!483447 (= (h!15746 (toList!637 z!1122)) lt!363713))))

(declare-fun b!1087299 () Bool)

(assert (=> b!1087299 (= e!687762 (contains!1724 (t!101407 (toList!637 z!1122)) lt!363713))))

(assert (= (and d!305741 res!483448) b!1087298))

(assert (= (and b!1087298 (not res!483447)) b!1087299))

(assert (=> d!305741 m!1236813))

(declare-fun m!1237619 () Bool)

(assert (=> d!305741 m!1237619))

(declare-fun m!1237621 () Bool)

(assert (=> d!305741 m!1237621))

(declare-fun m!1237623 () Bool)

(assert (=> b!1087299 m!1237623))

(assert (=> b!1087059 d!305741))

(assert (=> d!305481 d!305479))

(assert (=> d!305481 d!305357))

(declare-fun d!305747 () Bool)

(declare-fun res!483449 () Bool)

(declare-fun e!687763 () Bool)

(assert (=> d!305747 (=> res!483449 e!687763)))

(assert (=> d!305747 (= res!483449 ((_ is Nil!10344) (t!101406 (exprs!999 (h!15746 zl!316)))))))

(assert (=> d!305747 (= (forall!2279 (t!101406 (exprs!999 (h!15746 zl!316))) lambda!40376) e!687763)))

(declare-fun b!1087300 () Bool)

(declare-fun e!687764 () Bool)

(assert (=> b!1087300 (= e!687763 e!687764)))

(declare-fun res!483450 () Bool)

(assert (=> b!1087300 (=> (not res!483450) (not e!687764))))

(assert (=> b!1087300 (= res!483450 (dynLambda!4534 lambda!40376 (h!15745 (t!101406 (exprs!999 (h!15746 zl!316))))))))

(declare-fun b!1087301 () Bool)

(assert (=> b!1087301 (= e!687764 (forall!2279 (t!101406 (t!101406 (exprs!999 (h!15746 zl!316)))) lambda!40376))))

(assert (= (and d!305747 (not res!483449)) b!1087300))

(assert (= (and b!1087300 res!483450) b!1087301))

(declare-fun b_lambda!30183 () Bool)

(assert (=> (not b_lambda!30183) (not b!1087300)))

(declare-fun m!1237625 () Bool)

(assert (=> b!1087300 m!1237625))

(declare-fun m!1237627 () Bool)

(assert (=> b!1087301 m!1237627))

(assert (=> b!1086999 d!305747))

(declare-fun d!305749 () Bool)

(declare-fun res!483451 () Bool)

(declare-fun e!687765 () Bool)

(assert (=> d!305749 (=> res!483451 e!687765)))

(assert (=> d!305749 (= res!483451 ((_ is Nil!10345) lt!363715))))

(assert (=> d!305749 (= (noDuplicate!193 lt!363715) e!687765)))

(declare-fun b!1087302 () Bool)

(declare-fun e!687766 () Bool)

(assert (=> b!1087302 (= e!687765 e!687766)))

(declare-fun res!483452 () Bool)

(assert (=> b!1087302 (=> (not res!483452) (not e!687766))))

(assert (=> b!1087302 (= res!483452 (not (contains!1724 (t!101407 lt!363715) (h!15746 lt!363715))))))

(declare-fun b!1087303 () Bool)

(assert (=> b!1087303 (= e!687766 (noDuplicate!193 (t!101407 lt!363715)))))

(assert (= (and d!305749 (not res!483451)) b!1087302))

(assert (= (and b!1087302 res!483452) b!1087303))

(declare-fun m!1237629 () Bool)

(assert (=> b!1087302 m!1237629))

(declare-fun m!1237631 () Bool)

(assert (=> b!1087303 m!1237631))

(assert (=> d!305523 d!305749))

(declare-fun d!305751 () Bool)

(declare-fun e!687769 () Bool)

(assert (=> d!305751 e!687769))

(declare-fun res!483454 () Bool)

(assert (=> d!305751 (=> (not res!483454) (not e!687769))))

(declare-fun res!483453 () List!10361)

(assert (=> d!305751 (= res!483454 (noDuplicate!193 res!483453))))

(declare-fun e!687768 () Bool)

(assert (=> d!305751 e!687768))

(assert (=> d!305751 (= (choose!6956 lt!363605) res!483453)))

(declare-fun b!1087305 () Bool)

(declare-fun e!687767 () Bool)

(declare-fun tp!325703 () Bool)

(assert (=> b!1087305 (= e!687767 tp!325703)))

(declare-fun tp!325704 () Bool)

(declare-fun b!1087304 () Bool)

(assert (=> b!1087304 (= e!687768 (and (inv!13260 (h!15746 res!483453)) e!687767 tp!325704))))

(declare-fun b!1087306 () Bool)

(assert (=> b!1087306 (= e!687769 (= (content!1488 res!483453) lt!363605))))

(assert (= b!1087304 b!1087305))

(assert (= (and d!305751 ((_ is Cons!10345) res!483453)) b!1087304))

(assert (= (and d!305751 res!483454) b!1087306))

(declare-fun m!1237633 () Bool)

(assert (=> d!305751 m!1237633))

(declare-fun m!1237635 () Bool)

(assert (=> b!1087304 m!1237635))

(declare-fun m!1237637 () Bool)

(assert (=> b!1087306 m!1237637))

(assert (=> d!305523 d!305751))

(declare-fun d!305753 () Bool)

(declare-fun res!483459 () Bool)

(declare-fun e!687774 () Bool)

(assert (=> d!305753 (=> res!483459 e!687774)))

(assert (=> d!305753 (= res!483459 ((_ is Nil!10345) (toList!637 z!1122)))))

(assert (=> d!305753 (= (forall!2280 (toList!637 z!1122) lambda!40419) e!687774)))

(declare-fun b!1087311 () Bool)

(declare-fun e!687775 () Bool)

(assert (=> b!1087311 (= e!687774 e!687775)))

(declare-fun res!483460 () Bool)

(assert (=> b!1087311 (=> (not res!483460) (not e!687775))))

(assert (=> b!1087311 (= res!483460 (dynLambda!4530 lambda!40419 (h!15746 (toList!637 z!1122))))))

(declare-fun b!1087312 () Bool)

(assert (=> b!1087312 (= e!687775 (forall!2280 (t!101407 (toList!637 z!1122)) lambda!40419))))

(assert (= (and d!305753 (not res!483459)) b!1087311))

(assert (= (and b!1087311 res!483460) b!1087312))

(declare-fun b_lambda!30185 () Bool)

(assert (=> (not b_lambda!30185) (not b!1087311)))

(declare-fun m!1237639 () Bool)

(assert (=> b!1087311 m!1237639))

(declare-fun m!1237641 () Bool)

(assert (=> b!1087312 m!1237641))

(assert (=> d!305479 d!305753))

(declare-fun b!1087313 () Bool)

(declare-fun e!687778 () Bool)

(declare-fun call!80206 () Bool)

(assert (=> b!1087313 (= e!687778 call!80206)))

(declare-fun bm!80201 () Bool)

(declare-fun call!80208 () Bool)

(assert (=> bm!80201 (= call!80208 call!80206)))

(declare-fun c!184036 () Bool)

(declare-fun bm!80202 () Bool)

(declare-fun c!184037 () Bool)

(assert (=> bm!80202 (= call!80206 (validRegex!1434 (ite c!184037 (reg!3348 (h!15745 (exprs!999 setElem!7638))) (ite c!184036 (regOne!6551 (h!15745 (exprs!999 setElem!7638))) (regOne!6550 (h!15745 (exprs!999 setElem!7638)))))))))

(declare-fun d!305755 () Bool)

(declare-fun res!483465 () Bool)

(declare-fun e!687776 () Bool)

(assert (=> d!305755 (=> res!483465 e!687776)))

(assert (=> d!305755 (= res!483465 ((_ is ElementMatch!3019) (h!15745 (exprs!999 setElem!7638))))))

(assert (=> d!305755 (= (validRegex!1434 (h!15745 (exprs!999 setElem!7638))) e!687776)))

(declare-fun b!1087314 () Bool)

(declare-fun res!483462 () Bool)

(declare-fun e!687781 () Bool)

(assert (=> b!1087314 (=> (not res!483462) (not e!687781))))

(assert (=> b!1087314 (= res!483462 call!80208)))

(declare-fun e!687780 () Bool)

(assert (=> b!1087314 (= e!687780 e!687781)))

(declare-fun b!1087315 () Bool)

(declare-fun res!483463 () Bool)

(declare-fun e!687782 () Bool)

(assert (=> b!1087315 (=> res!483463 e!687782)))

(assert (=> b!1087315 (= res!483463 (not ((_ is Concat!4852) (h!15745 (exprs!999 setElem!7638)))))))

(assert (=> b!1087315 (= e!687780 e!687782)))

(declare-fun b!1087316 () Bool)

(declare-fun e!687779 () Bool)

(declare-fun call!80207 () Bool)

(assert (=> b!1087316 (= e!687779 call!80207)))

(declare-fun bm!80203 () Bool)

(assert (=> bm!80203 (= call!80207 (validRegex!1434 (ite c!184036 (regTwo!6551 (h!15745 (exprs!999 setElem!7638))) (regTwo!6550 (h!15745 (exprs!999 setElem!7638))))))))

(declare-fun b!1087317 () Bool)

(assert (=> b!1087317 (= e!687782 e!687779)))

(declare-fun res!483461 () Bool)

(assert (=> b!1087317 (=> (not res!483461) (not e!687779))))

(assert (=> b!1087317 (= res!483461 call!80208)))

(declare-fun b!1087318 () Bool)

(declare-fun e!687777 () Bool)

(assert (=> b!1087318 (= e!687776 e!687777)))

(assert (=> b!1087318 (= c!184037 ((_ is Star!3019) (h!15745 (exprs!999 setElem!7638))))))

(declare-fun b!1087319 () Bool)

(assert (=> b!1087319 (= e!687781 call!80207)))

(declare-fun b!1087320 () Bool)

(assert (=> b!1087320 (= e!687777 e!687780)))

(assert (=> b!1087320 (= c!184036 ((_ is Union!3019) (h!15745 (exprs!999 setElem!7638))))))

(declare-fun b!1087321 () Bool)

(assert (=> b!1087321 (= e!687777 e!687778)))

(declare-fun res!483464 () Bool)

(assert (=> b!1087321 (= res!483464 (not (nullable!1047 (reg!3348 (h!15745 (exprs!999 setElem!7638))))))))

(assert (=> b!1087321 (=> (not res!483464) (not e!687778))))

(assert (= (and d!305755 (not res!483465)) b!1087318))

(assert (= (and b!1087318 c!184037) b!1087321))

(assert (= (and b!1087318 (not c!184037)) b!1087320))

(assert (= (and b!1087321 res!483464) b!1087313))

(assert (= (and b!1087320 c!184036) b!1087314))

(assert (= (and b!1087320 (not c!184036)) b!1087315))

(assert (= (and b!1087314 res!483462) b!1087319))

(assert (= (and b!1087315 (not res!483463)) b!1087317))

(assert (= (and b!1087317 res!483461) b!1087316))

(assert (= (or b!1087319 b!1087316) bm!80203))

(assert (= (or b!1087314 b!1087317) bm!80201))

(assert (= (or b!1087313 bm!80201) bm!80202))

(declare-fun m!1237643 () Bool)

(assert (=> bm!80202 m!1237643))

(declare-fun m!1237647 () Bool)

(assert (=> bm!80203 m!1237647))

(declare-fun m!1237651 () Bool)

(assert (=> b!1087321 m!1237651))

(assert (=> bs!257102 d!305755))

(declare-fun bs!257482 () Bool)

(declare-fun d!305757 () Bool)

(assert (= bs!257482 (and d!305757 b!1086854)))

(declare-fun lambda!40480 () Int)

(assert (=> bs!257482 (not (= lambda!40480 lambda!40366))))

(declare-fun bs!257483 () Bool)

(assert (= bs!257483 (and d!305757 d!305683)))

(assert (=> bs!257483 (not (= lambda!40480 lambda!40463))))

(declare-fun bs!257484 () Bool)

(assert (= bs!257484 (and d!305757 d!305515)))

(assert (=> bs!257484 (not (= lambda!40480 lambda!40439))))

(declare-fun bs!257485 () Bool)

(assert (= bs!257485 (and d!305757 d!305361)))

(assert (=> bs!257485 (not (= lambda!40480 lambda!40364))))

(declare-fun bs!257486 () Bool)

(assert (= bs!257486 (and d!305757 d!305471)))

(assert (=> bs!257486 (not (= lambda!40480 lambda!40415))))

(declare-fun bs!257487 () Bool)

(assert (= bs!257487 (and d!305757 d!305585)))

(assert (=> bs!257487 (not (= lambda!40480 lambda!40449))))

(declare-fun bs!257488 () Bool)

(assert (= bs!257488 (and d!305757 d!305687)))

(assert (=> bs!257488 (not (= lambda!40480 lambda!40464))))

(declare-fun bs!257489 () Bool)

(assert (= bs!257489 (and d!305757 d!305373)))

(assert (=> bs!257489 (= (= lambda!40415 lambda!40320) (= lambda!40480 lambda!40372))))

(declare-fun bs!257490 () Bool)

(assert (= bs!257490 (and d!305757 d!305477)))

(assert (=> bs!257490 (not (= lambda!40480 lambda!40418))))

(declare-fun bs!257491 () Bool)

(assert (= bs!257491 (and d!305757 d!305375)))

(assert (=> bs!257491 (not (= lambda!40480 lambda!40375))))

(declare-fun bs!257492 () Bool)

(assert (= bs!257492 (and d!305757 d!305501)))

(assert (=> bs!257492 (= (= lambda!40415 lambda!40364) (= lambda!40480 lambda!40429))))

(declare-fun bs!257493 () Bool)

(assert (= bs!257493 (and d!305757 d!305469)))

(assert (=> bs!257493 (= (= lambda!40415 lambda!40375) (= lambda!40480 lambda!40412))))

(declare-fun bs!257494 () Bool)

(assert (= bs!257494 (and d!305757 b!1086853)))

(assert (=> bs!257494 (not (= lambda!40480 lambda!40365))))

(declare-fun bs!257495 () Bool)

(assert (= bs!257495 (and d!305757 d!305705)))

(assert (=> bs!257495 (= (= lambda!40415 lambda!40432) (= lambda!40480 lambda!40469))))

(declare-fun bs!257496 () Bool)

(assert (= bs!257496 (and d!305757 d!305479)))

(assert (=> bs!257496 (= (= lambda!40415 lambda!40320) (= lambda!40480 lambda!40419))))

(declare-fun bs!257497 () Bool)

(assert (= bs!257497 (and d!305757 d!305509)))

(assert (=> bs!257497 (= (= lambda!40415 lambda!40364) (= lambda!40480 lambda!40432))))

(declare-fun bs!257498 () Bool)

(assert (= bs!257498 (and d!305757 b!1086789)))

(assert (=> bs!257498 (not (= lambda!40480 lambda!40320))))

(declare-fun bs!257499 () Bool)

(assert (= bs!257499 (and d!305757 d!305713)))

(assert (=> bs!257499 (= (= lambda!40415 lambda!40364) (= lambda!40480 lambda!40473))))

(declare-fun bs!257500 () Bool)

(assert (= bs!257500 (and d!305757 d!305525)))

(assert (=> bs!257500 (= (= lambda!40415 (ite c!183913 lambda!40365 lambda!40366)) (= lambda!40480 lambda!40440))))

(declare-fun bs!257501 () Bool)

(assert (= bs!257501 (and d!305757 d!305485)))

(assert (=> bs!257501 (not (= lambda!40480 lambda!40421))))

(assert (=> d!305757 true))

(assert (=> d!305757 (< (dynLambda!4529 order!6223 lambda!40415) (dynLambda!4529 order!6223 lambda!40480))))

(assert (=> d!305757 (= (exists!178 zl!316 lambda!40415) (not (forall!2280 zl!316 lambda!40480)))))

(declare-fun bs!257502 () Bool)

(assert (= bs!257502 d!305757))

(declare-fun m!1237663 () Bool)

(assert (=> bs!257502 m!1237663))

(assert (=> d!305471 d!305757))

(declare-fun d!305763 () Bool)

(declare-fun c!184038 () Bool)

(assert (=> d!305763 (= c!184038 (isEmpty!6635 s!2287))))

(declare-fun e!687795 () Bool)

(assert (=> d!305763 (= (matchZipper!67 (store ((as const (Array Context!998 Bool)) false) (h!15746 zl!316) true) s!2287) e!687795)))

(declare-fun b!1087340 () Bool)

(assert (=> b!1087340 (= e!687795 (nullableZipper!32 (store ((as const (Array Context!998 Bool)) false) (h!15746 zl!316) true)))))

(declare-fun b!1087341 () Bool)

(assert (=> b!1087341 (= e!687795 (matchZipper!67 (derivationStepZipper!30 (store ((as const (Array Context!998 Bool)) false) (h!15746 zl!316) true) (head!2018 s!2287)) (tail!1580 s!2287)))))

(assert (= (and d!305763 c!184038) b!1087340))

(assert (= (and d!305763 (not c!184038)) b!1087341))

(assert (=> d!305763 m!1236927))

(assert (=> b!1087340 m!1237115))

(declare-fun m!1237667 () Bool)

(assert (=> b!1087340 m!1237667))

(assert (=> b!1087341 m!1236931))

(assert (=> b!1087341 m!1237115))

(assert (=> b!1087341 m!1236931))

(declare-fun m!1237669 () Bool)

(assert (=> b!1087341 m!1237669))

(assert (=> b!1087341 m!1236935))

(assert (=> b!1087341 m!1237669))

(assert (=> b!1087341 m!1236935))

(declare-fun m!1237671 () Bool)

(assert (=> b!1087341 m!1237671))

(assert (=> bs!257106 d!305763))

(declare-fun d!305765 () Bool)

(declare-fun c!184039 () Bool)

(assert (=> d!305765 (= c!184039 ((_ is Nil!10345) lt!363715))))

(declare-fun e!687799 () (InoxSet Context!998))

(assert (=> d!305765 (= (content!1488 lt!363715) e!687799)))

(declare-fun b!1087348 () Bool)

(assert (=> b!1087348 (= e!687799 ((as const (Array Context!998 Bool)) false))))

(declare-fun b!1087349 () Bool)

(assert (=> b!1087349 (= e!687799 ((_ map or) (store ((as const (Array Context!998 Bool)) false) (h!15746 lt!363715) true) (content!1488 (t!101407 lt!363715))))))

(assert (= (and d!305765 c!184039) b!1087348))

(assert (= (and d!305765 (not c!184039)) b!1087349))

(declare-fun m!1237673 () Bool)

(assert (=> b!1087349 m!1237673))

(declare-fun m!1237675 () Bool)

(assert (=> b!1087349 m!1237675))

(assert (=> b!1087063 d!305765))

(declare-fun d!305767 () Bool)

(declare-fun res!483470 () Bool)

(declare-fun e!687802 () Bool)

(assert (=> d!305767 (=> res!483470 e!687802)))

(assert (=> d!305767 (= res!483470 ((_ is Nil!10344) (exprs!999 setElem!7644)))))

(assert (=> d!305767 (= (forall!2279 (exprs!999 setElem!7644) lambda!40420) e!687802)))

(declare-fun b!1087358 () Bool)

(declare-fun e!687803 () Bool)

(assert (=> b!1087358 (= e!687802 e!687803)))

(declare-fun res!483471 () Bool)

(assert (=> b!1087358 (=> (not res!483471) (not e!687803))))

(assert (=> b!1087358 (= res!483471 (dynLambda!4534 lambda!40420 (h!15745 (exprs!999 setElem!7644))))))

(declare-fun b!1087359 () Bool)

(assert (=> b!1087359 (= e!687803 (forall!2279 (t!101406 (exprs!999 setElem!7644)) lambda!40420))))

(assert (= (and d!305767 (not res!483470)) b!1087358))

(assert (= (and b!1087358 res!483471) b!1087359))

(declare-fun b_lambda!30187 () Bool)

(assert (=> (not b_lambda!30187) (not b!1087358)))

(declare-fun m!1237677 () Bool)

(assert (=> b!1087358 m!1237677))

(declare-fun m!1237681 () Bool)

(assert (=> b!1087359 m!1237681))

(assert (=> d!305483 d!305767))

(declare-fun bs!257503 () Bool)

(declare-fun d!305769 () Bool)

(assert (= bs!257503 (and d!305769 d!305643)))

(declare-fun lambda!40481 () Int)

(assert (=> bs!257503 (not (= lambda!40481 lambda!40460))))

(declare-fun bs!257504 () Bool)

(assert (= bs!257504 (and d!305769 d!305495)))

(assert (=> bs!257504 (= lambda!40481 lambda!40425)))

(declare-fun bs!257505 () Bool)

(assert (= bs!257505 (and d!305769 d!305369)))

(assert (=> bs!257505 (= lambda!40481 lambda!40369)))

(declare-fun bs!257506 () Bool)

(assert (= bs!257506 (and d!305769 d!305483)))

(assert (=> bs!257506 (= lambda!40481 lambda!40420)))

(declare-fun bs!257507 () Bool)

(assert (= bs!257507 (and d!305769 d!305629)))

(assert (=> bs!257507 (= lambda!40481 lambda!40457)))

(declare-fun bs!257508 () Bool)

(assert (= bs!257508 (and d!305769 d!305463)))

(assert (=> bs!257508 (not (= lambda!40481 lambda!40411))))

(declare-fun bs!257509 () Bool)

(assert (= bs!257509 (and d!305769 d!305601)))

(assert (=> bs!257509 (= lambda!40481 lambda!40455)))

(declare-fun bs!257510 () Bool)

(assert (= bs!257510 (and d!305769 d!305377)))

(assert (=> bs!257510 (= lambda!40481 lambda!40376)))

(declare-fun bs!257511 () Bool)

(assert (= bs!257511 (and d!305769 d!305347)))

(assert (=> bs!257511 (not (= lambda!40481 lambda!40333))))

(assert (=> d!305769 (= (inv!13260 (h!15746 (t!101407 (t!101407 zl!316)))) (forall!2279 (exprs!999 (h!15746 (t!101407 (t!101407 zl!316)))) lambda!40481))))

(declare-fun bs!257512 () Bool)

(assert (= bs!257512 d!305769))

(declare-fun m!1237683 () Bool)

(assert (=> bs!257512 m!1237683))

(assert (=> b!1087084 d!305769))

(declare-fun d!305771 () Bool)

(declare-fun lt!363753 () Bool)

(assert (=> d!305771 (= lt!363753 (select (content!1488 (t!101407 lt!363620)) (h!15746 lt!363620)))))

(declare-fun e!687813 () Bool)

(assert (=> d!305771 (= lt!363753 e!687813)))

(declare-fun res!483473 () Bool)

(assert (=> d!305771 (=> (not res!483473) (not e!687813))))

(assert (=> d!305771 (= res!483473 ((_ is Cons!10345) (t!101407 lt!363620)))))

(assert (=> d!305771 (= (contains!1724 (t!101407 lt!363620) (h!15746 lt!363620)) lt!363753)))

(declare-fun b!1087384 () Bool)

(declare-fun e!687814 () Bool)

(assert (=> b!1087384 (= e!687813 e!687814)))

(declare-fun res!483472 () Bool)

(assert (=> b!1087384 (=> res!483472 e!687814)))

(assert (=> b!1087384 (= res!483472 (= (h!15746 (t!101407 lt!363620)) (h!15746 lt!363620)))))

(declare-fun b!1087385 () Bool)

(assert (=> b!1087385 (= e!687814 (contains!1724 (t!101407 (t!101407 lt!363620)) (h!15746 lt!363620)))))

(assert (= (and d!305771 res!483473) b!1087384))

(assert (= (and b!1087384 (not res!483472)) b!1087385))

(assert (=> d!305771 m!1237205))

(declare-fun m!1237685 () Bool)

(assert (=> d!305771 m!1237685))

(declare-fun m!1237687 () Bool)

(assert (=> b!1087385 m!1237687))

(assert (=> b!1087024 d!305771))

(declare-fun d!305773 () Bool)

(assert (=> d!305773 (= (flatMap!118 lt!363605 lambda!40424) (choose!6965 lt!363605 lambda!40424))))

(declare-fun bs!257513 () Bool)

(assert (= bs!257513 d!305773))

(declare-fun m!1237689 () Bool)

(assert (=> bs!257513 m!1237689))

(assert (=> d!305489 d!305773))

(declare-fun bs!257514 () Bool)

(declare-fun d!305775 () Bool)

(assert (= bs!257514 (and d!305775 b!1086854)))

(declare-fun lambda!40482 () Int)

(assert (=> bs!257514 (not (= lambda!40482 lambda!40366))))

(declare-fun bs!257515 () Bool)

(assert (= bs!257515 (and d!305775 d!305683)))

(assert (=> bs!257515 (not (= lambda!40482 lambda!40463))))

(declare-fun bs!257516 () Bool)

(assert (= bs!257516 (and d!305775 d!305515)))

(assert (=> bs!257516 (not (= lambda!40482 lambda!40439))))

(declare-fun bs!257517 () Bool)

(assert (= bs!257517 (and d!305775 d!305361)))

(assert (=> bs!257517 (not (= lambda!40482 lambda!40364))))

(declare-fun bs!257518 () Bool)

(assert (= bs!257518 (and d!305775 d!305471)))

(assert (=> bs!257518 (not (= lambda!40482 lambda!40415))))

(declare-fun bs!257519 () Bool)

(assert (= bs!257519 (and d!305775 d!305585)))

(assert (=> bs!257519 (not (= lambda!40482 lambda!40449))))

(declare-fun bs!257520 () Bool)

(assert (= bs!257520 (and d!305775 d!305687)))

(assert (=> bs!257520 (not (= lambda!40482 lambda!40464))))

(declare-fun bs!257521 () Bool)

(assert (= bs!257521 (and d!305775 d!305373)))

(assert (=> bs!257521 (= (= lambda!40429 lambda!40320) (= lambda!40482 lambda!40372))))

(declare-fun bs!257522 () Bool)

(assert (= bs!257522 (and d!305775 d!305477)))

(assert (=> bs!257522 (not (= lambda!40482 lambda!40418))))

(declare-fun bs!257523 () Bool)

(assert (= bs!257523 (and d!305775 d!305375)))

(assert (=> bs!257523 (not (= lambda!40482 lambda!40375))))

(declare-fun bs!257524 () Bool)

(assert (= bs!257524 (and d!305775 d!305501)))

(assert (=> bs!257524 (= (= lambda!40429 lambda!40364) (= lambda!40482 lambda!40429))))

(declare-fun bs!257525 () Bool)

(assert (= bs!257525 (and d!305775 b!1086853)))

(assert (=> bs!257525 (not (= lambda!40482 lambda!40365))))

(declare-fun bs!257526 () Bool)

(assert (= bs!257526 (and d!305775 d!305705)))

(assert (=> bs!257526 (= (= lambda!40429 lambda!40432) (= lambda!40482 lambda!40469))))

(declare-fun bs!257527 () Bool)

(assert (= bs!257527 (and d!305775 d!305479)))

(assert (=> bs!257527 (= (= lambda!40429 lambda!40320) (= lambda!40482 lambda!40419))))

(declare-fun bs!257529 () Bool)

(assert (= bs!257529 (and d!305775 d!305509)))

(assert (=> bs!257529 (= (= lambda!40429 lambda!40364) (= lambda!40482 lambda!40432))))

(declare-fun bs!257530 () Bool)

(assert (= bs!257530 (and d!305775 b!1086789)))

(assert (=> bs!257530 (not (= lambda!40482 lambda!40320))))

(declare-fun bs!257531 () Bool)

(assert (= bs!257531 (and d!305775 d!305713)))

(assert (=> bs!257531 (= (= lambda!40429 lambda!40364) (= lambda!40482 lambda!40473))))

(declare-fun bs!257533 () Bool)

(assert (= bs!257533 (and d!305775 d!305525)))

(assert (=> bs!257533 (= (= lambda!40429 (ite c!183913 lambda!40365 lambda!40366)) (= lambda!40482 lambda!40440))))

(declare-fun bs!257535 () Bool)

(assert (= bs!257535 (and d!305775 d!305485)))

(assert (=> bs!257535 (not (= lambda!40482 lambda!40421))))

(declare-fun bs!257536 () Bool)

(assert (= bs!257536 (and d!305775 d!305469)))

(assert (=> bs!257536 (= (= lambda!40429 lambda!40375) (= lambda!40482 lambda!40412))))

(declare-fun bs!257538 () Bool)

(assert (= bs!257538 (and d!305775 d!305757)))

(assert (=> bs!257538 (= (= lambda!40429 lambda!40415) (= lambda!40482 lambda!40480))))

(assert (=> d!305775 true))

(assert (=> d!305775 (< (dynLambda!4529 order!6223 lambda!40429) (dynLambda!4529 order!6223 lambda!40482))))

(assert (=> d!305775 (= (exists!178 lt!363667 lambda!40429) (not (forall!2280 lt!363667 lambda!40482)))))

(declare-fun bs!257540 () Bool)

(assert (= bs!257540 d!305775))

(declare-fun m!1237699 () Bool)

(assert (=> bs!257540 m!1237699))

(assert (=> d!305501 d!305775))

(declare-fun bs!257551 () Bool)

(declare-fun d!305787 () Bool)

(assert (= bs!257551 (and d!305787 b!1086854)))

(declare-fun lambda!40485 () Int)

(assert (=> bs!257551 (not (= lambda!40485 lambda!40366))))

(declare-fun bs!257552 () Bool)

(assert (= bs!257552 (and d!305787 d!305683)))

(assert (=> bs!257552 (not (= lambda!40485 lambda!40463))))

(declare-fun bs!257553 () Bool)

(assert (= bs!257553 (and d!305787 d!305515)))

(assert (=> bs!257553 (not (= lambda!40485 lambda!40439))))

(declare-fun bs!257554 () Bool)

(assert (= bs!257554 (and d!305787 d!305361)))

(assert (=> bs!257554 (not (= lambda!40485 lambda!40364))))

(declare-fun bs!257555 () Bool)

(assert (= bs!257555 (and d!305787 d!305471)))

(assert (=> bs!257555 (not (= lambda!40485 lambda!40415))))

(declare-fun bs!257556 () Bool)

(assert (= bs!257556 (and d!305787 d!305585)))

(assert (=> bs!257556 (not (= lambda!40485 lambda!40449))))

(declare-fun bs!257557 () Bool)

(assert (= bs!257557 (and d!305787 d!305373)))

(assert (=> bs!257557 (= (= lambda!40364 lambda!40320) (= lambda!40485 lambda!40372))))

(declare-fun bs!257558 () Bool)

(assert (= bs!257558 (and d!305787 d!305477)))

(assert (=> bs!257558 (not (= lambda!40485 lambda!40418))))

(declare-fun bs!257559 () Bool)

(assert (= bs!257559 (and d!305787 d!305375)))

(assert (=> bs!257559 (not (= lambda!40485 lambda!40375))))

(declare-fun bs!257560 () Bool)

(assert (= bs!257560 (and d!305787 d!305501)))

(assert (=> bs!257560 (= lambda!40485 lambda!40429)))

(declare-fun bs!257561 () Bool)

(assert (= bs!257561 (and d!305787 b!1086853)))

(assert (=> bs!257561 (not (= lambda!40485 lambda!40365))))

(declare-fun bs!257562 () Bool)

(assert (= bs!257562 (and d!305787 d!305705)))

(assert (=> bs!257562 (= (= lambda!40364 lambda!40432) (= lambda!40485 lambda!40469))))

(declare-fun bs!257563 () Bool)

(assert (= bs!257563 (and d!305787 d!305479)))

(assert (=> bs!257563 (= (= lambda!40364 lambda!40320) (= lambda!40485 lambda!40419))))

(declare-fun bs!257564 () Bool)

(assert (= bs!257564 (and d!305787 d!305509)))

(assert (=> bs!257564 (= lambda!40485 lambda!40432)))

(declare-fun bs!257565 () Bool)

(assert (= bs!257565 (and d!305787 b!1086789)))

(assert (=> bs!257565 (not (= lambda!40485 lambda!40320))))

(declare-fun bs!257566 () Bool)

(assert (= bs!257566 (and d!305787 d!305713)))

(assert (=> bs!257566 (= lambda!40485 lambda!40473)))

(declare-fun bs!257567 () Bool)

(assert (= bs!257567 (and d!305787 d!305775)))

(assert (=> bs!257567 (= (= lambda!40364 lambda!40429) (= lambda!40485 lambda!40482))))

(declare-fun bs!257568 () Bool)

(assert (= bs!257568 (and d!305787 d!305687)))

(assert (=> bs!257568 (not (= lambda!40485 lambda!40464))))

(declare-fun bs!257569 () Bool)

(assert (= bs!257569 (and d!305787 d!305525)))

(assert (=> bs!257569 (= (= lambda!40364 (ite c!183913 lambda!40365 lambda!40366)) (= lambda!40485 lambda!40440))))

(declare-fun bs!257570 () Bool)

(assert (= bs!257570 (and d!305787 d!305485)))

(assert (=> bs!257570 (not (= lambda!40485 lambda!40421))))

(declare-fun bs!257571 () Bool)

(assert (= bs!257571 (and d!305787 d!305469)))

(assert (=> bs!257571 (= (= lambda!40364 lambda!40375) (= lambda!40485 lambda!40412))))

(declare-fun bs!257572 () Bool)

(assert (= bs!257572 (and d!305787 d!305757)))

(assert (=> bs!257572 (= (= lambda!40364 lambda!40415) (= lambda!40485 lambda!40480))))

(assert (=> d!305787 true))

(assert (=> d!305787 (< (dynLambda!4529 order!6223 lambda!40364) (dynLambda!4529 order!6223 lambda!40485))))

(assert (=> d!305787 (exists!178 lt!363667 lambda!40485)))

(assert (=> d!305787 true))

(declare-fun _$97!119 () Unit!15729)

(assert (=> d!305787 (= (choose!6962 lt!363667 lambda!40364) _$97!119)))

(declare-fun bs!257573 () Bool)

(assert (= bs!257573 d!305787))

(declare-fun m!1237725 () Bool)

(assert (=> bs!257573 m!1237725))

(assert (=> d!305501 d!305787))

(declare-fun d!305809 () Bool)

(declare-fun res!483474 () Bool)

(declare-fun e!687822 () Bool)

(assert (=> d!305809 (=> res!483474 e!687822)))

(assert (=> d!305809 (= res!483474 ((_ is Nil!10345) lt!363667))))

(assert (=> d!305809 (= (forall!2280 lt!363667 lambda!40364) e!687822)))

(declare-fun b!1087403 () Bool)

(declare-fun e!687823 () Bool)

(assert (=> b!1087403 (= e!687822 e!687823)))

(declare-fun res!483475 () Bool)

(assert (=> b!1087403 (=> (not res!483475) (not e!687823))))

(assert (=> b!1087403 (= res!483475 (dynLambda!4530 lambda!40364 (h!15746 lt!363667)))))

(declare-fun b!1087404 () Bool)

(assert (=> b!1087404 (= e!687823 (forall!2280 (t!101407 lt!363667) lambda!40364))))

(assert (= (and d!305809 (not res!483474)) b!1087403))

(assert (= (and b!1087403 res!483475) b!1087404))

(declare-fun b_lambda!30229 () Bool)

(assert (=> (not b_lambda!30229) (not b!1087403)))

(declare-fun m!1237727 () Bool)

(assert (=> b!1087403 m!1237727))

(declare-fun m!1237729 () Bool)

(assert (=> b!1087404 m!1237729))

(assert (=> d!305501 d!305809))

(assert (=> d!305519 d!305479))

(assert (=> d!305497 d!305641))

(assert (=> d!305473 d!305467))

(declare-fun d!305811 () Bool)

(declare-fun res!483476 () Bool)

(declare-fun e!687824 () Bool)

(assert (=> d!305811 (=> res!483476 e!687824)))

(assert (=> d!305811 (= res!483476 ((_ is Nil!10344) (exprs!999 lt!363604)))))

(assert (=> d!305811 (= (forall!2279 (exprs!999 lt!363604) lambda!40411) e!687824)))

(declare-fun b!1087405 () Bool)

(declare-fun e!687825 () Bool)

(assert (=> b!1087405 (= e!687824 e!687825)))

(declare-fun res!483477 () Bool)

(assert (=> b!1087405 (=> (not res!483477) (not e!687825))))

(assert (=> b!1087405 (= res!483477 (dynLambda!4534 lambda!40411 (h!15745 (exprs!999 lt!363604))))))

(declare-fun b!1087406 () Bool)

(assert (=> b!1087406 (= e!687825 (forall!2279 (t!101406 (exprs!999 lt!363604)) lambda!40411))))

(assert (= (and d!305811 (not res!483476)) b!1087405))

(assert (= (and b!1087405 res!483477) b!1087406))

(declare-fun b_lambda!30231 () Bool)

(assert (=> (not b_lambda!30231) (not b!1087405)))

(declare-fun m!1237731 () Bool)

(assert (=> b!1087405 m!1237731))

(declare-fun m!1237733 () Bool)

(assert (=> b!1087406 m!1237733))

(assert (=> d!305463 d!305811))

(declare-fun d!305813 () Bool)

(declare-fun res!483478 () Bool)

(declare-fun e!687826 () Bool)

(assert (=> d!305813 (=> res!483478 e!687826)))

(assert (=> d!305813 (= res!483478 ((_ is Nil!10345) (ite c!183913 lt!363667 lt!363662)))))

(assert (=> d!305813 (= (forall!2280 (ite c!183913 lt!363667 lt!363662) lambda!40440) e!687826)))

(declare-fun b!1087407 () Bool)

(declare-fun e!687827 () Bool)

(assert (=> b!1087407 (= e!687826 e!687827)))

(declare-fun res!483479 () Bool)

(assert (=> b!1087407 (=> (not res!483479) (not e!687827))))

(assert (=> b!1087407 (= res!483479 (dynLambda!4530 lambda!40440 (h!15746 (ite c!183913 lt!363667 lt!363662))))))

(declare-fun b!1087408 () Bool)

(assert (=> b!1087408 (= e!687827 (forall!2280 (t!101407 (ite c!183913 lt!363667 lt!363662)) lambda!40440))))

(assert (= (and d!305813 (not res!483478)) b!1087407))

(assert (= (and b!1087407 res!483479) b!1087408))

(declare-fun b_lambda!30233 () Bool)

(assert (=> (not b_lambda!30233) (not b!1087407)))

(declare-fun m!1237735 () Bool)

(assert (=> b!1087407 m!1237735))

(declare-fun m!1237737 () Bool)

(assert (=> b!1087408 m!1237737))

(assert (=> d!305525 d!305813))

(declare-fun bs!257574 () Bool)

(declare-fun d!305815 () Bool)

(assert (= bs!257574 (and d!305815 b!1086854)))

(declare-fun lambda!40486 () Int)

(assert (=> bs!257574 (not (= lambda!40486 lambda!40366))))

(declare-fun bs!257575 () Bool)

(assert (= bs!257575 (and d!305815 d!305683)))

(assert (=> bs!257575 (= lambda!40486 lambda!40463)))

(declare-fun bs!257576 () Bool)

(assert (= bs!257576 (and d!305815 d!305515)))

(assert (=> bs!257576 (not (= lambda!40486 lambda!40439))))

(declare-fun bs!257577 () Bool)

(assert (= bs!257577 (and d!305815 d!305361)))

(assert (=> bs!257577 (not (= lambda!40486 lambda!40364))))

(declare-fun bs!257578 () Bool)

(assert (= bs!257578 (and d!305815 d!305471)))

(assert (=> bs!257578 (not (= lambda!40486 lambda!40415))))

(declare-fun bs!257579 () Bool)

(assert (= bs!257579 (and d!305815 d!305585)))

(assert (=> bs!257579 (= lambda!40486 lambda!40449)))

(declare-fun bs!257580 () Bool)

(assert (= bs!257580 (and d!305815 d!305373)))

(assert (=> bs!257580 (not (= lambda!40486 lambda!40372))))

(declare-fun bs!257581 () Bool)

(assert (= bs!257581 (and d!305815 d!305477)))

(assert (=> bs!257581 (= lambda!40486 lambda!40418)))

(declare-fun bs!257582 () Bool)

(assert (= bs!257582 (and d!305815 d!305375)))

(assert (=> bs!257582 (not (= lambda!40486 lambda!40375))))

(declare-fun bs!257583 () Bool)

(assert (= bs!257583 (and d!305815 d!305787)))

(assert (=> bs!257583 (not (= lambda!40486 lambda!40485))))

(declare-fun bs!257584 () Bool)

(assert (= bs!257584 (and d!305815 d!305501)))

(assert (=> bs!257584 (not (= lambda!40486 lambda!40429))))

(declare-fun bs!257585 () Bool)

(assert (= bs!257585 (and d!305815 b!1086853)))

(assert (=> bs!257585 (not (= lambda!40486 lambda!40365))))

(declare-fun bs!257586 () Bool)

(assert (= bs!257586 (and d!305815 d!305705)))

(assert (=> bs!257586 (not (= lambda!40486 lambda!40469))))

(declare-fun bs!257587 () Bool)

(assert (= bs!257587 (and d!305815 d!305479)))

(assert (=> bs!257587 (not (= lambda!40486 lambda!40419))))

(declare-fun bs!257588 () Bool)

(assert (= bs!257588 (and d!305815 d!305509)))

(assert (=> bs!257588 (not (= lambda!40486 lambda!40432))))

(declare-fun bs!257589 () Bool)

(assert (= bs!257589 (and d!305815 b!1086789)))

(assert (=> bs!257589 (not (= lambda!40486 lambda!40320))))

(declare-fun bs!257590 () Bool)

(assert (= bs!257590 (and d!305815 d!305713)))

(assert (=> bs!257590 (not (= lambda!40486 lambda!40473))))

(declare-fun bs!257591 () Bool)

(assert (= bs!257591 (and d!305815 d!305775)))

(assert (=> bs!257591 (not (= lambda!40486 lambda!40482))))

(declare-fun bs!257592 () Bool)

(assert (= bs!257592 (and d!305815 d!305687)))

(assert (=> bs!257592 (= lambda!40486 lambda!40464)))

(declare-fun bs!257593 () Bool)

(assert (= bs!257593 (and d!305815 d!305525)))

(assert (=> bs!257593 (not (= lambda!40486 lambda!40440))))

(declare-fun bs!257594 () Bool)

(assert (= bs!257594 (and d!305815 d!305485)))

(assert (=> bs!257594 (= lambda!40486 lambda!40421)))

(declare-fun bs!257595 () Bool)

(assert (= bs!257595 (and d!305815 d!305469)))

(assert (=> bs!257595 (not (= lambda!40486 lambda!40412))))

(declare-fun bs!257596 () Bool)

(assert (= bs!257596 (and d!305815 d!305757)))

(assert (=> bs!257596 (not (= lambda!40486 lambda!40480))))

(assert (=> d!305815 (= (nullableZipper!32 (derivationStepZipper!30 lt!363605 (head!2018 s!2287))) (exists!177 (derivationStepZipper!30 lt!363605 (head!2018 s!2287)) lambda!40486))))

(declare-fun bs!257597 () Bool)

(assert (= bs!257597 d!305815))

(assert (=> bs!257597 m!1236933))

(declare-fun m!1237739 () Bool)

(assert (=> bs!257597 m!1237739))

(assert (=> b!1087008 d!305815))

(declare-fun b!1087411 () Bool)

(declare-fun e!687828 () Bool)

(declare-fun tp!325800 () Bool)

(assert (=> b!1087411 (= e!687828 tp!325800)))

(declare-fun b!1087409 () Bool)

(assert (=> b!1087409 (= e!687828 tp_is_empty!5669)))

(assert (=> b!1087066 (= tp!325668 e!687828)))

(declare-fun b!1087412 () Bool)

(declare-fun tp!325798 () Bool)

(declare-fun tp!325799 () Bool)

(assert (=> b!1087412 (= e!687828 (and tp!325798 tp!325799))))

(declare-fun b!1087410 () Bool)

(declare-fun tp!325796 () Bool)

(declare-fun tp!325797 () Bool)

(assert (=> b!1087410 (= e!687828 (and tp!325796 tp!325797))))

(assert (= (and b!1087066 ((_ is ElementMatch!3019) (h!15745 (exprs!999 (h!15746 (t!101407 zl!316)))))) b!1087409))

(assert (= (and b!1087066 ((_ is Concat!4852) (h!15745 (exprs!999 (h!15746 (t!101407 zl!316)))))) b!1087410))

(assert (= (and b!1087066 ((_ is Star!3019) (h!15745 (exprs!999 (h!15746 (t!101407 zl!316)))))) b!1087411))

(assert (= (and b!1087066 ((_ is Union!3019) (h!15745 (exprs!999 (h!15746 (t!101407 zl!316)))))) b!1087412))

(declare-fun b!1087413 () Bool)

(declare-fun e!687829 () Bool)

(declare-fun tp!325801 () Bool)

(declare-fun tp!325802 () Bool)

(assert (=> b!1087413 (= e!687829 (and tp!325801 tp!325802))))

(assert (=> b!1087066 (= tp!325669 e!687829)))

(assert (= (and b!1087066 ((_ is Cons!10344) (t!101406 (exprs!999 (h!15746 (t!101407 zl!316)))))) b!1087413))

(declare-fun b!1087416 () Bool)

(declare-fun e!687830 () Bool)

(declare-fun tp!325807 () Bool)

(assert (=> b!1087416 (= e!687830 tp!325807)))

(declare-fun b!1087414 () Bool)

(assert (=> b!1087414 (= e!687830 tp_is_empty!5669)))

(assert (=> b!1087082 (= tp!325685 e!687830)))

(declare-fun b!1087417 () Bool)

(declare-fun tp!325805 () Bool)

(declare-fun tp!325806 () Bool)

(assert (=> b!1087417 (= e!687830 (and tp!325805 tp!325806))))

(declare-fun b!1087415 () Bool)

(declare-fun tp!325803 () Bool)

(declare-fun tp!325804 () Bool)

(assert (=> b!1087415 (= e!687830 (and tp!325803 tp!325804))))

(assert (= (and b!1087082 ((_ is ElementMatch!3019) (regOne!6551 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087414))

(assert (= (and b!1087082 ((_ is Concat!4852) (regOne!6551 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087415))

(assert (= (and b!1087082 ((_ is Star!3019) (regOne!6551 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087416))

(assert (= (and b!1087082 ((_ is Union!3019) (regOne!6551 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087417))

(declare-fun b!1087420 () Bool)

(declare-fun e!687831 () Bool)

(declare-fun tp!325812 () Bool)

(assert (=> b!1087420 (= e!687831 tp!325812)))

(declare-fun b!1087418 () Bool)

(assert (=> b!1087418 (= e!687831 tp_is_empty!5669)))

(assert (=> b!1087082 (= tp!325686 e!687831)))

(declare-fun b!1087421 () Bool)

(declare-fun tp!325810 () Bool)

(declare-fun tp!325811 () Bool)

(assert (=> b!1087421 (= e!687831 (and tp!325810 tp!325811))))

(declare-fun b!1087419 () Bool)

(declare-fun tp!325808 () Bool)

(declare-fun tp!325809 () Bool)

(assert (=> b!1087419 (= e!687831 (and tp!325808 tp!325809))))

(assert (= (and b!1087082 ((_ is ElementMatch!3019) (regTwo!6551 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087418))

(assert (= (and b!1087082 ((_ is Concat!4852) (regTwo!6551 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087419))

(assert (= (and b!1087082 ((_ is Star!3019) (regTwo!6551 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087420))

(assert (= (and b!1087082 ((_ is Union!3019) (regTwo!6551 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087421))

(declare-fun b!1087422 () Bool)

(declare-fun e!687832 () Bool)

(declare-fun tp!325813 () Bool)

(declare-fun tp!325814 () Bool)

(assert (=> b!1087422 (= e!687832 (and tp!325813 tp!325814))))

(assert (=> b!1087085 (= tp!325690 e!687832)))

(assert (= (and b!1087085 ((_ is Cons!10344) (exprs!999 (h!15746 (t!101407 (t!101407 zl!316)))))) b!1087422))

(declare-fun b!1087424 () Bool)

(declare-fun e!687834 () Bool)

(declare-fun tp!325815 () Bool)

(assert (=> b!1087424 (= e!687834 tp!325815)))

(declare-fun e!687833 () Bool)

(declare-fun tp!325816 () Bool)

(declare-fun b!1087423 () Bool)

(assert (=> b!1087423 (= e!687833 (and (inv!13260 (h!15746 (t!101407 res!483337))) e!687834 tp!325816))))

(assert (=> b!1087032 (= tp!325667 e!687833)))

(assert (= b!1087423 b!1087424))

(assert (= (and b!1087032 ((_ is Cons!10345) (t!101407 res!483337))) b!1087423))

(declare-fun m!1237741 () Bool)

(assert (=> b!1087423 m!1237741))

(declare-fun b!1087427 () Bool)

(declare-fun e!687835 () Bool)

(declare-fun tp!325821 () Bool)

(assert (=> b!1087427 (= e!687835 tp!325821)))

(declare-fun b!1087425 () Bool)

(assert (=> b!1087425 (= e!687835 tp_is_empty!5669)))

(assert (=> b!1087081 (= tp!325687 e!687835)))

(declare-fun b!1087428 () Bool)

(declare-fun tp!325819 () Bool)

(declare-fun tp!325820 () Bool)

(assert (=> b!1087428 (= e!687835 (and tp!325819 tp!325820))))

(declare-fun b!1087426 () Bool)

(declare-fun tp!325817 () Bool)

(declare-fun tp!325818 () Bool)

(assert (=> b!1087426 (= e!687835 (and tp!325817 tp!325818))))

(assert (= (and b!1087081 ((_ is ElementMatch!3019) (reg!3348 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087425))

(assert (= (and b!1087081 ((_ is Concat!4852) (reg!3348 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087426))

(assert (= (and b!1087081 ((_ is Star!3019) (reg!3348 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087427))

(assert (= (and b!1087081 ((_ is Union!3019) (reg!3348 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087428))

(declare-fun condSetEmpty!7648 () Bool)

(assert (=> setNonEmpty!7646 (= condSetEmpty!7648 (= setRest!7646 ((as const (Array Context!998 Bool)) false)))))

(declare-fun setRes!7648 () Bool)

(assert (=> setNonEmpty!7646 (= tp!325671 setRes!7648)))

(declare-fun setIsEmpty!7648 () Bool)

(assert (=> setIsEmpty!7648 setRes!7648))

(declare-fun setNonEmpty!7648 () Bool)

(declare-fun setElem!7648 () Context!998)

(declare-fun e!687836 () Bool)

(declare-fun tp!325822 () Bool)

(assert (=> setNonEmpty!7648 (= setRes!7648 (and tp!325822 (inv!13260 setElem!7648) e!687836))))

(declare-fun setRest!7648 () (InoxSet Context!998))

(assert (=> setNonEmpty!7648 (= setRest!7646 ((_ map or) (store ((as const (Array Context!998 Bool)) false) setElem!7648 true) setRest!7648))))

(declare-fun b!1087429 () Bool)

(declare-fun tp!325823 () Bool)

(assert (=> b!1087429 (= e!687836 tp!325823)))

(assert (= (and setNonEmpty!7646 condSetEmpty!7648) setIsEmpty!7648))

(assert (= (and setNonEmpty!7646 (not condSetEmpty!7648)) setNonEmpty!7648))

(assert (= setNonEmpty!7648 b!1087429))

(declare-fun m!1237743 () Bool)

(assert (=> setNonEmpty!7648 m!1237743))

(declare-fun b!1087431 () Bool)

(declare-fun e!687838 () Bool)

(declare-fun tp!325824 () Bool)

(assert (=> b!1087431 (= e!687838 tp!325824)))

(declare-fun b!1087430 () Bool)

(declare-fun e!687837 () Bool)

(declare-fun tp!325825 () Bool)

(assert (=> b!1087430 (= e!687837 (and (inv!13260 (h!15746 (t!101407 (t!101407 (t!101407 zl!316))))) e!687838 tp!325825))))

(assert (=> b!1087084 (= tp!325691 e!687837)))

(assert (= b!1087430 b!1087431))

(assert (= (and b!1087084 ((_ is Cons!10345) (t!101407 (t!101407 (t!101407 zl!316))))) b!1087430))

(declare-fun m!1237745 () Bool)

(assert (=> b!1087430 m!1237745))

(declare-fun b!1087432 () Bool)

(declare-fun e!687839 () Bool)

(declare-fun tp!325826 () Bool)

(declare-fun tp!325827 () Bool)

(assert (=> b!1087432 (= e!687839 (and tp!325826 tp!325827))))

(assert (=> b!1087033 (= tp!325666 e!687839)))

(assert (= (and b!1087033 ((_ is Cons!10344) (exprs!999 (h!15746 res!483337)))) b!1087432))

(declare-fun b!1087435 () Bool)

(declare-fun e!687840 () Bool)

(declare-fun tp!325832 () Bool)

(assert (=> b!1087435 (= e!687840 tp!325832)))

(declare-fun b!1087433 () Bool)

(assert (=> b!1087433 (= e!687840 tp_is_empty!5669)))

(assert (=> b!1087080 (= tp!325683 e!687840)))

(declare-fun b!1087436 () Bool)

(declare-fun tp!325830 () Bool)

(declare-fun tp!325831 () Bool)

(assert (=> b!1087436 (= e!687840 (and tp!325830 tp!325831))))

(declare-fun b!1087434 () Bool)

(declare-fun tp!325828 () Bool)

(declare-fun tp!325829 () Bool)

(assert (=> b!1087434 (= e!687840 (and tp!325828 tp!325829))))

(assert (= (and b!1087080 ((_ is ElementMatch!3019) (regOne!6550 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087433))

(assert (= (and b!1087080 ((_ is Concat!4852) (regOne!6550 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087434))

(assert (= (and b!1087080 ((_ is Star!3019) (regOne!6550 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087435))

(assert (= (and b!1087080 ((_ is Union!3019) (regOne!6550 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087436))

(declare-fun b!1087439 () Bool)

(declare-fun e!687841 () Bool)

(declare-fun tp!325837 () Bool)

(assert (=> b!1087439 (= e!687841 tp!325837)))

(declare-fun b!1087437 () Bool)

(assert (=> b!1087437 (= e!687841 tp_is_empty!5669)))

(assert (=> b!1087080 (= tp!325684 e!687841)))

(declare-fun b!1087440 () Bool)

(declare-fun tp!325835 () Bool)

(declare-fun tp!325836 () Bool)

(assert (=> b!1087440 (= e!687841 (and tp!325835 tp!325836))))

(declare-fun b!1087438 () Bool)

(declare-fun tp!325833 () Bool)

(declare-fun tp!325834 () Bool)

(assert (=> b!1087438 (= e!687841 (and tp!325833 tp!325834))))

(assert (= (and b!1087080 ((_ is ElementMatch!3019) (regTwo!6550 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087437))

(assert (= (and b!1087080 ((_ is Concat!4852) (regTwo!6550 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087438))

(assert (= (and b!1087080 ((_ is Star!3019) (regTwo!6550 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087439))

(assert (= (and b!1087080 ((_ is Union!3019) (regTwo!6550 (h!15745 (exprs!999 (h!15746 zl!316)))))) b!1087440))

(declare-fun b!1087443 () Bool)

(declare-fun e!687842 () Bool)

(declare-fun tp!325842 () Bool)

(assert (=> b!1087443 (= e!687842 tp!325842)))

(declare-fun b!1087441 () Bool)

(assert (=> b!1087441 (= e!687842 tp_is_empty!5669)))

(assert (=> b!1087091 (= tp!325699 e!687842)))

(declare-fun b!1087444 () Bool)

(declare-fun tp!325840 () Bool)

(declare-fun tp!325841 () Bool)

(assert (=> b!1087444 (= e!687842 (and tp!325840 tp!325841))))

(declare-fun b!1087442 () Bool)

(declare-fun tp!325838 () Bool)

(declare-fun tp!325839 () Bool)

(assert (=> b!1087442 (= e!687842 (and tp!325838 tp!325839))))

(assert (= (and b!1087091 ((_ is ElementMatch!3019) (h!15745 (t!101406 (exprs!999 setElem!7638))))) b!1087441))

(assert (= (and b!1087091 ((_ is Concat!4852) (h!15745 (t!101406 (exprs!999 setElem!7638))))) b!1087442))

(assert (= (and b!1087091 ((_ is Star!3019) (h!15745 (t!101406 (exprs!999 setElem!7638))))) b!1087443))

(assert (= (and b!1087091 ((_ is Union!3019) (h!15745 (t!101406 (exprs!999 setElem!7638))))) b!1087444))

(declare-fun b!1087445 () Bool)

(declare-fun e!687843 () Bool)

(declare-fun tp!325843 () Bool)

(declare-fun tp!325844 () Bool)

(assert (=> b!1087445 (= e!687843 (and tp!325843 tp!325844))))

(assert (=> b!1087091 (= tp!325700 e!687843)))

(assert (= (and b!1087091 ((_ is Cons!10344) (t!101406 (t!101406 (exprs!999 setElem!7638))))) b!1087445))

(declare-fun b!1087446 () Bool)

(declare-fun e!687844 () Bool)

(declare-fun tp!325845 () Bool)

(declare-fun tp!325846 () Bool)

(assert (=> b!1087446 (= e!687844 (and tp!325845 tp!325846))))

(assert (=> b!1087068 (= tp!325672 e!687844)))

(assert (= (and b!1087068 ((_ is Cons!10344) (exprs!999 setElem!7646))) b!1087446))

(declare-fun b!1087447 () Bool)

(declare-fun e!687845 () Bool)

(declare-fun tp!325847 () Bool)

(assert (=> b!1087447 (= e!687845 (and tp_is_empty!5669 tp!325847))))

(assert (=> b!1087067 (= tp!325670 e!687845)))

(assert (= (and b!1087067 ((_ is Cons!10346) (t!101408 (t!101408 (t!101408 s!2287))))) b!1087447))

(declare-fun b!1087450 () Bool)

(declare-fun e!687846 () Bool)

(declare-fun tp!325852 () Bool)

(assert (=> b!1087450 (= e!687846 tp!325852)))

(declare-fun b!1087448 () Bool)

(assert (=> b!1087448 (= e!687846 tp_is_empty!5669)))

(assert (=> b!1087086 (= tp!325692 e!687846)))

(declare-fun b!1087451 () Bool)

(declare-fun tp!325850 () Bool)

(declare-fun tp!325851 () Bool)

(assert (=> b!1087451 (= e!687846 (and tp!325850 tp!325851))))

(declare-fun b!1087449 () Bool)

(declare-fun tp!325848 () Bool)

(declare-fun tp!325849 () Bool)

(assert (=> b!1087449 (= e!687846 (and tp!325848 tp!325849))))

(assert (= (and b!1087086 ((_ is ElementMatch!3019) (h!15745 (exprs!999 setElem!7644)))) b!1087448))

(assert (= (and b!1087086 ((_ is Concat!4852) (h!15745 (exprs!999 setElem!7644)))) b!1087449))

(assert (= (and b!1087086 ((_ is Star!3019) (h!15745 (exprs!999 setElem!7644)))) b!1087450))

(assert (= (and b!1087086 ((_ is Union!3019) (h!15745 (exprs!999 setElem!7644)))) b!1087451))

(declare-fun b!1087452 () Bool)

(declare-fun e!687847 () Bool)

(declare-fun tp!325853 () Bool)

(declare-fun tp!325854 () Bool)

(assert (=> b!1087452 (= e!687847 (and tp!325853 tp!325854))))

(assert (=> b!1087086 (= tp!325693 e!687847)))

(assert (= (and b!1087086 ((_ is Cons!10344) (t!101406 (exprs!999 setElem!7644)))) b!1087452))

(declare-fun b!1087455 () Bool)

(declare-fun e!687848 () Bool)

(declare-fun tp!325859 () Bool)

(assert (=> b!1087455 (= e!687848 tp!325859)))

(declare-fun b!1087453 () Bool)

(assert (=> b!1087453 (= e!687848 tp_is_empty!5669)))

(assert (=> b!1087090 (= tp!325696 e!687848)))

(declare-fun b!1087456 () Bool)

(declare-fun tp!325857 () Bool)

(declare-fun tp!325858 () Bool)

(assert (=> b!1087456 (= e!687848 (and tp!325857 tp!325858))))

(declare-fun b!1087454 () Bool)

(declare-fun tp!325855 () Bool)

(declare-fun tp!325856 () Bool)

(assert (=> b!1087454 (= e!687848 (and tp!325855 tp!325856))))

(assert (= (and b!1087090 ((_ is ElementMatch!3019) (regOne!6551 (h!15745 (exprs!999 setElem!7638))))) b!1087453))

(assert (= (and b!1087090 ((_ is Concat!4852) (regOne!6551 (h!15745 (exprs!999 setElem!7638))))) b!1087454))

(assert (= (and b!1087090 ((_ is Star!3019) (regOne!6551 (h!15745 (exprs!999 setElem!7638))))) b!1087455))

(assert (= (and b!1087090 ((_ is Union!3019) (regOne!6551 (h!15745 (exprs!999 setElem!7638))))) b!1087456))

(declare-fun b!1087459 () Bool)

(declare-fun e!687849 () Bool)

(declare-fun tp!325864 () Bool)

(assert (=> b!1087459 (= e!687849 tp!325864)))

(declare-fun b!1087457 () Bool)

(assert (=> b!1087457 (= e!687849 tp_is_empty!5669)))

(assert (=> b!1087090 (= tp!325697 e!687849)))

(declare-fun b!1087460 () Bool)

(declare-fun tp!325862 () Bool)

(declare-fun tp!325863 () Bool)

(assert (=> b!1087460 (= e!687849 (and tp!325862 tp!325863))))

(declare-fun b!1087458 () Bool)

(declare-fun tp!325860 () Bool)

(declare-fun tp!325861 () Bool)

(assert (=> b!1087458 (= e!687849 (and tp!325860 tp!325861))))

(assert (= (and b!1087090 ((_ is ElementMatch!3019) (regTwo!6551 (h!15745 (exprs!999 setElem!7638))))) b!1087457))

(assert (= (and b!1087090 ((_ is Concat!4852) (regTwo!6551 (h!15745 (exprs!999 setElem!7638))))) b!1087458))

(assert (= (and b!1087090 ((_ is Star!3019) (regTwo!6551 (h!15745 (exprs!999 setElem!7638))))) b!1087459))

(assert (= (and b!1087090 ((_ is Union!3019) (regTwo!6551 (h!15745 (exprs!999 setElem!7638))))) b!1087460))

(declare-fun b!1087463 () Bool)

(declare-fun e!687850 () Bool)

(declare-fun tp!325869 () Bool)

(assert (=> b!1087463 (= e!687850 tp!325869)))

(declare-fun b!1087461 () Bool)

(assert (=> b!1087461 (= e!687850 tp_is_empty!5669)))

(assert (=> b!1087083 (= tp!325688 e!687850)))

(declare-fun b!1087464 () Bool)

(declare-fun tp!325867 () Bool)

(declare-fun tp!325868 () Bool)

(assert (=> b!1087464 (= e!687850 (and tp!325867 tp!325868))))

(declare-fun b!1087462 () Bool)

(declare-fun tp!325865 () Bool)

(declare-fun tp!325866 () Bool)

(assert (=> b!1087462 (= e!687850 (and tp!325865 tp!325866))))

(assert (= (and b!1087083 ((_ is ElementMatch!3019) (h!15745 (t!101406 (exprs!999 (h!15746 zl!316)))))) b!1087461))

(assert (= (and b!1087083 ((_ is Concat!4852) (h!15745 (t!101406 (exprs!999 (h!15746 zl!316)))))) b!1087462))

(assert (= (and b!1087083 ((_ is Star!3019) (h!15745 (t!101406 (exprs!999 (h!15746 zl!316)))))) b!1087463))

(assert (= (and b!1087083 ((_ is Union!3019) (h!15745 (t!101406 (exprs!999 (h!15746 zl!316)))))) b!1087464))

(declare-fun b!1087465 () Bool)

(declare-fun e!687851 () Bool)

(declare-fun tp!325870 () Bool)

(declare-fun tp!325871 () Bool)

(assert (=> b!1087465 (= e!687851 (and tp!325870 tp!325871))))

(assert (=> b!1087083 (= tp!325689 e!687851)))

(assert (= (and b!1087083 ((_ is Cons!10344) (t!101406 (t!101406 (exprs!999 (h!15746 zl!316)))))) b!1087465))

(declare-fun b!1087468 () Bool)

(declare-fun e!687852 () Bool)

(declare-fun tp!325876 () Bool)

(assert (=> b!1087468 (= e!687852 tp!325876)))

(declare-fun b!1087466 () Bool)

(assert (=> b!1087466 (= e!687852 tp_is_empty!5669)))

(assert (=> b!1087089 (= tp!325698 e!687852)))

(declare-fun b!1087469 () Bool)

(declare-fun tp!325874 () Bool)

(declare-fun tp!325875 () Bool)

(assert (=> b!1087469 (= e!687852 (and tp!325874 tp!325875))))

(declare-fun b!1087467 () Bool)

(declare-fun tp!325872 () Bool)

(declare-fun tp!325873 () Bool)

(assert (=> b!1087467 (= e!687852 (and tp!325872 tp!325873))))

(assert (= (and b!1087089 ((_ is ElementMatch!3019) (reg!3348 (h!15745 (exprs!999 setElem!7638))))) b!1087466))

(assert (= (and b!1087089 ((_ is Concat!4852) (reg!3348 (h!15745 (exprs!999 setElem!7638))))) b!1087467))

(assert (= (and b!1087089 ((_ is Star!3019) (reg!3348 (h!15745 (exprs!999 setElem!7638))))) b!1087468))

(assert (= (and b!1087089 ((_ is Union!3019) (reg!3348 (h!15745 (exprs!999 setElem!7638))))) b!1087469))

(declare-fun b!1087472 () Bool)

(declare-fun e!687853 () Bool)

(declare-fun tp!325881 () Bool)

(assert (=> b!1087472 (= e!687853 tp!325881)))

(declare-fun b!1087470 () Bool)

(assert (=> b!1087470 (= e!687853 tp_is_empty!5669)))

(assert (=> b!1087088 (= tp!325694 e!687853)))

(declare-fun b!1087473 () Bool)

(declare-fun tp!325879 () Bool)

(declare-fun tp!325880 () Bool)

(assert (=> b!1087473 (= e!687853 (and tp!325879 tp!325880))))

(declare-fun b!1087471 () Bool)

(declare-fun tp!325877 () Bool)

(declare-fun tp!325878 () Bool)

(assert (=> b!1087471 (= e!687853 (and tp!325877 tp!325878))))

(assert (= (and b!1087088 ((_ is ElementMatch!3019) (regOne!6550 (h!15745 (exprs!999 setElem!7638))))) b!1087470))

(assert (= (and b!1087088 ((_ is Concat!4852) (regOne!6550 (h!15745 (exprs!999 setElem!7638))))) b!1087471))

(assert (= (and b!1087088 ((_ is Star!3019) (regOne!6550 (h!15745 (exprs!999 setElem!7638))))) b!1087472))

(assert (= (and b!1087088 ((_ is Union!3019) (regOne!6550 (h!15745 (exprs!999 setElem!7638))))) b!1087473))

(declare-fun b!1087476 () Bool)

(declare-fun e!687854 () Bool)

(declare-fun tp!325886 () Bool)

(assert (=> b!1087476 (= e!687854 tp!325886)))

(declare-fun b!1087474 () Bool)

(assert (=> b!1087474 (= e!687854 tp_is_empty!5669)))

(assert (=> b!1087088 (= tp!325695 e!687854)))

(declare-fun b!1087477 () Bool)

(declare-fun tp!325884 () Bool)

(declare-fun tp!325885 () Bool)

(assert (=> b!1087477 (= e!687854 (and tp!325884 tp!325885))))

(declare-fun b!1087475 () Bool)

(declare-fun tp!325882 () Bool)

(declare-fun tp!325883 () Bool)

(assert (=> b!1087475 (= e!687854 (and tp!325882 tp!325883))))

(assert (= (and b!1087088 ((_ is ElementMatch!3019) (regTwo!6550 (h!15745 (exprs!999 setElem!7638))))) b!1087474))

(assert (= (and b!1087088 ((_ is Concat!4852) (regTwo!6550 (h!15745 (exprs!999 setElem!7638))))) b!1087475))

(assert (= (and b!1087088 ((_ is Star!3019) (regTwo!6550 (h!15745 (exprs!999 setElem!7638))))) b!1087476))

(assert (= (and b!1087088 ((_ is Union!3019) (regTwo!6550 (h!15745 (exprs!999 setElem!7638))))) b!1087477))

(declare-fun b_lambda!30235 () Bool)

(assert (= b_lambda!30231 (or d!305463 b_lambda!30235)))

(declare-fun bs!257598 () Bool)

(declare-fun d!305817 () Bool)

(assert (= bs!257598 (and d!305817 d!305463)))

(assert (=> bs!257598 (= (dynLambda!4534 lambda!40411 (h!15745 (exprs!999 lt!363604))) (not (dynLambda!4534 lambda!40333 (h!15745 (exprs!999 lt!363604)))))))

(declare-fun b_lambda!30265 () Bool)

(assert (=> (not b_lambda!30265) (not bs!257598)))

(declare-fun m!1237747 () Bool)

(assert (=> bs!257598 m!1237747))

(assert (=> b!1087405 d!305817))

(declare-fun b_lambda!30237 () Bool)

(assert (= b_lambda!30183 (or d!305377 b_lambda!30237)))

(declare-fun bs!257599 () Bool)

(declare-fun d!305819 () Bool)

(assert (= bs!257599 (and d!305819 d!305377)))

(assert (=> bs!257599 (= (dynLambda!4534 lambda!40376 (h!15745 (t!101406 (exprs!999 (h!15746 zl!316))))) (validRegex!1434 (h!15745 (t!101406 (exprs!999 (h!15746 zl!316))))))))

(declare-fun m!1237749 () Bool)

(assert (=> bs!257599 m!1237749))

(assert (=> b!1087300 d!305819))

(declare-fun b_lambda!30239 () Bool)

(assert (= b_lambda!30171 (or b!1086789 b_lambda!30239)))

(declare-fun bs!257600 () Bool)

(declare-fun d!305821 () Bool)

(assert (= bs!257600 (and d!305821 b!1086789)))

(assert (=> bs!257600 (= (dynLambda!4530 lambda!40320 (h!15746 (t!101407 (toList!637 z!1122)))) (matchZipper!67 (store ((as const (Array Context!998 Bool)) false) (h!15746 (t!101407 (toList!637 z!1122))) true) s!2287))))

(declare-fun m!1237751 () Bool)

(assert (=> bs!257600 m!1237751))

(assert (=> bs!257600 m!1237751))

(declare-fun m!1237753 () Bool)

(assert (=> bs!257600 m!1237753))

(assert (=> b!1087268 d!305821))

(declare-fun b_lambda!30241 () Bool)

(assert (= b_lambda!30229 (or d!305361 b_lambda!30241)))

(declare-fun bs!257601 () Bool)

(declare-fun d!305823 () Bool)

(assert (= bs!257601 (and d!305823 d!305361)))

(assert (=> bs!257601 (= (dynLambda!4530 lambda!40364 (h!15746 lt!363667)) (lostCause!229 (h!15746 lt!363667)))))

(declare-fun m!1237755 () Bool)

(assert (=> bs!257601 m!1237755))

(assert (=> b!1087403 d!305823))

(declare-fun b_lambda!30243 () Bool)

(assert (= b_lambda!30177 (or d!305361 b_lambda!30243)))

(declare-fun bs!257602 () Bool)

(declare-fun d!305825 () Bool)

(assert (= bs!257602 (and d!305825 d!305361)))

(assert (=> bs!257602 (= (dynLambda!4530 lambda!40364 (h!15746 lt!363662)) (lostCause!229 (h!15746 lt!363662)))))

(declare-fun m!1237757 () Bool)

(assert (=> bs!257602 m!1237757))

(assert (=> b!1087284 d!305825))

(declare-fun b_lambda!30245 () Bool)

(assert (= b_lambda!30165 (or d!305469 b_lambda!30245)))

(declare-fun bs!257603 () Bool)

(declare-fun d!305827 () Bool)

(assert (= bs!257603 (and d!305827 d!305469)))

(assert (=> bs!257603 (= (dynLambda!4530 lambda!40412 (h!15746 zl!316)) (not (dynLambda!4530 lambda!40375 (h!15746 zl!316))))))

(declare-fun b_lambda!30267 () Bool)

(assert (=> (not b_lambda!30267) (not bs!257603)))

(declare-fun m!1237759 () Bool)

(assert (=> bs!257603 m!1237759))

(assert (=> b!1087255 d!305827))

(declare-fun b_lambda!30247 () Bool)

(assert (= b_lambda!30169 (or b!1086789 b_lambda!30247)))

(declare-fun bs!257604 () Bool)

(declare-fun d!305829 () Bool)

(assert (= bs!257604 (and d!305829 b!1086789)))

(assert (=> bs!257604 (= (dynLambda!4530 lambda!40320 lt!363744) (matchZipper!67 (store ((as const (Array Context!998 Bool)) false) lt!363744 true) s!2287))))

(declare-fun m!1237761 () Bool)

(assert (=> bs!257604 m!1237761))

(assert (=> bs!257604 m!1237761))

(declare-fun m!1237763 () Bool)

(assert (=> bs!257604 m!1237763))

(assert (=> d!305701 d!305829))

(declare-fun b_lambda!30249 () Bool)

(assert (= b_lambda!30163 (or d!305369 b_lambda!30249)))

(declare-fun bs!257605 () Bool)

(declare-fun d!305831 () Bool)

(assert (= bs!257605 (and d!305831 d!305369)))

(assert (=> bs!257605 (= (dynLambda!4534 lambda!40369 (h!15745 (t!101406 (exprs!999 setElem!7638)))) (validRegex!1434 (h!15745 (t!101406 (exprs!999 setElem!7638)))))))

(declare-fun m!1237765 () Bool)

(assert (=> bs!257605 m!1237765))

(assert (=> b!1087251 d!305831))

(declare-fun b_lambda!30251 () Bool)

(assert (= b_lambda!30147 (or d!305373 b_lambda!30251)))

(declare-fun bs!257606 () Bool)

(declare-fun d!305833 () Bool)

(assert (= bs!257606 (and d!305833 d!305373)))

(assert (=> bs!257606 (= (dynLambda!4530 lambda!40372 (h!15746 (t!101407 zl!316))) (not (dynLambda!4530 lambda!40320 (h!15746 (t!101407 zl!316)))))))

(declare-fun b_lambda!30269 () Bool)

(assert (=> (not b_lambda!30269) (not bs!257606)))

(declare-fun m!1237767 () Bool)

(assert (=> bs!257606 m!1237767))

(assert (=> b!1087200 d!305833))

(declare-fun b_lambda!30253 () Bool)

(assert (= b_lambda!30161 (or d!305515 b_lambda!30253)))

(declare-fun bs!257607 () Bool)

(declare-fun d!305835 () Bool)

(assert (= bs!257607 (and d!305835 d!305515)))

(assert (=> bs!257607 (= (dynLambda!4530 lambda!40439 lt!363743) (not (lostCause!229 lt!363743)))))

(declare-fun m!1237769 () Bool)

(assert (=> bs!257607 m!1237769))

(assert (=> d!305671 d!305835))

(declare-fun b_lambda!30255 () Bool)

(assert (= b_lambda!30185 (or d!305479 b_lambda!30255)))

(declare-fun bs!257608 () Bool)

(declare-fun d!305837 () Bool)

(assert (= bs!257608 (and d!305837 d!305479)))

(assert (=> bs!257608 (= (dynLambda!4530 lambda!40419 (h!15746 (toList!637 z!1122))) (not (dynLambda!4530 lambda!40320 (h!15746 (toList!637 z!1122)))))))

(declare-fun b_lambda!30271 () Bool)

(assert (=> (not b_lambda!30271) (not bs!257608)))

(assert (=> bs!257608 m!1237199))

(assert (=> b!1087311 d!305837))

(declare-fun b_lambda!30257 () Bool)

(assert (= b_lambda!30143 (or d!305495 b_lambda!30257)))

(declare-fun bs!257609 () Bool)

(declare-fun d!305839 () Bool)

(assert (= bs!257609 (and d!305839 d!305495)))

(assert (=> bs!257609 (= (dynLambda!4534 lambda!40425 (h!15745 (exprs!999 (h!15746 (t!101407 zl!316))))) (validRegex!1434 (h!15745 (exprs!999 (h!15746 (t!101407 zl!316))))))))

(declare-fun m!1237771 () Bool)

(assert (=> bs!257609 m!1237771))

(assert (=> b!1087196 d!305839))

(declare-fun b_lambda!30259 () Bool)

(assert (= b_lambda!30233 (or d!305525 b_lambda!30259)))

(declare-fun bs!257610 () Bool)

(declare-fun d!305841 () Bool)

(assert (= bs!257610 (and d!305841 d!305525)))

(assert (=> bs!257610 (= (dynLambda!4530 lambda!40440 (h!15746 (ite c!183913 lt!363667 lt!363662))) (not (dynLambda!4530 (ite c!183913 lambda!40365 lambda!40366) (h!15746 (ite c!183913 lt!363667 lt!363662)))))))

(declare-fun b_lambda!30273 () Bool)

(assert (=> (not b_lambda!30273) (not bs!257610)))

(declare-fun m!1237773 () Bool)

(assert (=> bs!257610 m!1237773))

(assert (=> b!1087407 d!305841))

(declare-fun b_lambda!30261 () Bool)

(assert (= b_lambda!30179 (or d!305361 b_lambda!30261)))

(declare-fun bs!257611 () Bool)

(declare-fun d!305843 () Bool)

(assert (= bs!257611 (and d!305843 d!305361)))

(assert (=> bs!257611 (= (dynLambda!4530 lambda!40364 (h!15746 (toList!637 lt!363605))) (lostCause!229 (h!15746 (toList!637 lt!363605))))))

(declare-fun m!1237775 () Bool)

(assert (=> bs!257611 m!1237775))

(assert (=> b!1087286 d!305843))

(declare-fun b_lambda!30263 () Bool)

(assert (= b_lambda!30187 (or d!305483 b_lambda!30263)))

(declare-fun bs!257612 () Bool)

(declare-fun d!305845 () Bool)

(assert (= bs!257612 (and d!305845 d!305483)))

(assert (=> bs!257612 (= (dynLambda!4534 lambda!40420 (h!15745 (exprs!999 setElem!7644))) (validRegex!1434 (h!15745 (exprs!999 setElem!7644))))))

(declare-fun m!1237777 () Bool)

(assert (=> bs!257612 m!1237777))

(assert (=> b!1087358 d!305845))

(check-sat (not b_lambda!30265) (not b_lambda!30119) (not d!305623) (not b!1087340) (not b_lambda!30259) (not b!1087291) (not b!1087463) (not d!305763) (not bs!257599) (not b!1087207) (not bs!257601) (not b_lambda!30261) (not bs!257607) (not b_lambda!30133) (not b!1087385) (not b!1087456) (not b!1087434) (not b_lambda!30235) (not b!1087269) (not d!305629) (not b_lambda!30267) (not b!1087445) (not b!1087412) (not d!305775) (not b!1087188) (not d!305701) (not d!305741) (not b!1087321) (not b!1087423) (not d!305599) (not b!1087446) (not b!1087417) (not b!1087288) (not b!1087465) (not b!1087252) (not b!1087464) (not d!305577) (not b!1087451) (not b!1087206) (not b_lambda!30247) (not b!1087475) (not b!1087426) (not b!1087467) (not b!1087443) (not b_lambda!30127) (not b_lambda!30237) (not b!1087447) (not b!1087430) (not b!1087304) (not b!1087420) (not d!305751) (not b!1087359) (not b!1087267) (not b_lambda!30273) (not bm!80199) (not d!305687) (not b!1087261) (not b!1087262) (not b!1087422) (not b!1087305) (not b!1087193) (not b!1087460) (not b!1087270) (not d!305773) (not b!1087250) (not b_lambda!30085) (not b!1087436) (not bs!257600) (not b!1087189) (not b!1087235) (not b!1087455) (not b_lambda!30251) (not b!1087444) (not d!305699) (not b!1087256) (not b_lambda!30249) (not b!1087439) (not b!1087303) (not d!305735) (not b!1087239) (not d!305585) (not b!1087201) (not b!1087432) (not d!305731) (not bs!257609) (not setNonEmpty!7648) (not bs!257602) (not b!1087312) (not b!1087449) (not d!305597) (not b!1087476) (not b!1087299) (not bm!80202) (not b_lambda!30257) (not b!1087471) (not b!1087151) (not bs!257612) (not b!1087431) (not b!1087249) (not b!1087428) (not b_lambda!30241) (not b!1087468) (not d!305683) (not b!1087341) (not b!1087150) (not b!1087208) (not b_lambda!30263) (not b!1087427) (not d!305673) (not d!305643) (not b!1087454) (not bs!257604) (not d!305579) (not b!1087306) (not b_lambda!30239) (not b!1087442) (not b!1087406) (not b!1087435) (not b!1087234) (not b_lambda!30123) (not d!305595) (not b!1087209) (not b!1087185) (not b!1087429) (not b!1087289) (not b_lambda!30125) (not b!1087413) (not d!305769) (not b!1087473) (not b!1087187) (not d!305671) (not b!1087452) (not b!1087404) (not d!305637) (not b!1087440) (not d!305737) (not bm!80203) (not b_lambda!30271) (not b!1087469) (not b_lambda!30243) (not b!1087197) (not b!1087458) (not bs!257605) (not b_lambda!30245) (not d!305621) (not b_lambda!30269) (not b!1087408) (not b!1087186) (not d!305601) (not b_lambda!30253) (not b!1087416) (not b!1087349) (not b!1087424) (not b!1087459) (not d!305757) (not d!305771) (not bs!257611) (not b!1087410) (not bm!80200) (not b!1087285) (not b_lambda!30121) tp_is_empty!5669 (not b!1087462) (not d!305627) (not b_lambda!30255) (not d!305713) (not b!1087287) (not b!1087419) (not b!1087302) (not b!1087411) (not b!1087421) (not d!305619) (not b!1087450) (not b!1087472) (not b!1087205) (not d!305705) (not b!1087438) (not d!305787) (not b!1087301) (not b!1087415) (not d!305693) (not d!305815) (not b!1087477))
(check-sat)
