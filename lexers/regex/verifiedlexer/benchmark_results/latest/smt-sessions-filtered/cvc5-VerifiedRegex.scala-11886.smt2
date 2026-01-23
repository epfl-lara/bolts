; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667152 () Bool)

(assert start!667152)

(declare-fun b!6950691 () Bool)

(assert (=> b!6950691 true))

(assert (=> b!6950691 true))

(declare-fun bs!1857686 () Bool)

(declare-fun b!6950683 () Bool)

(assert (= bs!1857686 (and b!6950683 b!6950691)))

(declare-fun lambda!396362 () Int)

(declare-fun lambda!396361 () Int)

(assert (=> bs!1857686 (not (= lambda!396362 lambda!396361))))

(assert (=> b!6950683 true))

(assert (=> b!6950683 true))

(declare-fun b!6950680 () Bool)

(declare-fun res!2835701 () Bool)

(declare-fun e!4180367 () Bool)

(assert (=> b!6950680 (=> (not res!2835701) (not e!4180367))))

(declare-datatypes ((C!34306 0))(
  ( (C!34307 (val!26855 Int)) )
))
(declare-datatypes ((Regex!17018 0))(
  ( (ElementMatch!17018 (c!1289296 C!34306)) (Concat!25863 (regOne!34548 Regex!17018) (regTwo!34548 Regex!17018)) (EmptyExpr!17018) (Star!17018 (reg!17347 Regex!17018)) (EmptyLang!17018) (Union!17018 (regOne!34549 Regex!17018) (regTwo!34549 Regex!17018)) )
))
(declare-fun rInner!765 () Regex!17018)

(declare-fun nullable!6831 (Regex!17018) Bool)

(assert (=> b!6950680 (= res!2835701 (not (nullable!6831 rInner!765)))))

(declare-fun b!6950681 () Bool)

(declare-fun e!4180365 () Bool)

(declare-fun tp_is_empty!43261 () Bool)

(declare-fun tp!1916081 () Bool)

(assert (=> b!6950681 (= e!4180365 (and tp_is_empty!43261 tp!1916081))))

(declare-fun b!6950682 () Bool)

(declare-fun res!2835702 () Bool)

(assert (=> b!6950682 (=> (not res!2835702) (not e!4180367))))

(declare-datatypes ((List!66771 0))(
  ( (Nil!66647) (Cons!66647 (h!73095 C!34306) (t!380514 List!66771)) )
))
(declare-datatypes ((tuple2!67746 0))(
  ( (tuple2!67747 (_1!37176 List!66771) (_2!37176 List!66771)) )
))
(declare-fun cut!50 () tuple2!67746)

(declare-fun isEmpty!38901 (List!66771) Bool)

(assert (=> b!6950682 (= res!2835702 (not (isEmpty!38901 (_1!37176 cut!50))))))

(declare-fun res!2835698 () Bool)

(assert (=> b!6950683 (=> (not res!2835698) (not e!4180367))))

(declare-fun Exists!4014 (Int) Bool)

(assert (=> b!6950683 (= res!2835698 (Exists!4014 lambda!396362))))

(declare-fun b!6950684 () Bool)

(declare-fun validRegex!8724 (Regex!17018) Bool)

(assert (=> b!6950684 (= e!4180367 (not (validRegex!8724 (Star!17018 rInner!765))))))

(declare-fun b!6950685 () Bool)

(declare-fun e!4180363 () Bool)

(declare-fun tp!1916080 () Bool)

(assert (=> b!6950685 (= e!4180363 tp!1916080)))

(declare-fun b!6950686 () Bool)

(declare-fun res!2835695 () Bool)

(assert (=> b!6950686 (=> (not res!2835695) (not e!4180367))))

(declare-fun matchRSpec!4055 (Regex!17018 List!66771) Bool)

(assert (=> b!6950686 (= res!2835695 (matchRSpec!4055 rInner!765 (_1!37176 cut!50)))))

(declare-fun b!6950687 () Bool)

(declare-fun tp!1916085 () Bool)

(declare-fun tp!1916079 () Bool)

(assert (=> b!6950687 (= e!4180363 (and tp!1916085 tp!1916079))))

(declare-fun res!2835699 () Bool)

(assert (=> start!667152 (=> (not res!2835699) (not e!4180367))))

(assert (=> start!667152 (= res!2835699 (validRegex!8724 rInner!765))))

(assert (=> start!667152 e!4180367))

(assert (=> start!667152 e!4180363))

(assert (=> start!667152 e!4180365))

(declare-fun e!4180366 () Bool)

(declare-fun e!4180364 () Bool)

(assert (=> start!667152 (and e!4180366 e!4180364)))

(declare-fun b!6950688 () Bool)

(declare-fun res!2835697 () Bool)

(assert (=> b!6950688 (=> (not res!2835697) (not e!4180367))))

(assert (=> b!6950688 (= res!2835697 (not (Exists!4014 lambda!396361)))))

(declare-fun b!6950689 () Bool)

(declare-fun tp!1916083 () Bool)

(assert (=> b!6950689 (= e!4180366 (and tp_is_empty!43261 tp!1916083))))

(declare-fun b!6950690 () Bool)

(declare-fun res!2835700 () Bool)

(assert (=> b!6950690 (=> (not res!2835700) (not e!4180367))))

(declare-fun s!10388 () List!66771)

(declare-fun ++!15055 (List!66771 List!66771) List!66771)

(assert (=> b!6950690 (= res!2835700 (= (++!15055 (_1!37176 cut!50) (_2!37176 cut!50)) s!10388))))

(declare-fun res!2835696 () Bool)

(assert (=> b!6950691 (=> (not res!2835696) (not e!4180367))))

(assert (=> b!6950691 (= res!2835696 (not (Exists!4014 lambda!396361)))))

(declare-fun b!6950692 () Bool)

(declare-fun tp!1916078 () Bool)

(assert (=> b!6950692 (= e!4180364 (and tp_is_empty!43261 tp!1916078))))

(declare-fun b!6950693 () Bool)

(assert (=> b!6950693 (= e!4180363 tp_is_empty!43261)))

(declare-fun b!6950694 () Bool)

(declare-fun tp!1916082 () Bool)

(declare-fun tp!1916084 () Bool)

(assert (=> b!6950694 (= e!4180363 (and tp!1916082 tp!1916084))))

(assert (= (and start!667152 res!2835699) b!6950680))

(assert (= (and b!6950680 res!2835701) b!6950691))

(assert (= (and b!6950691 res!2835696) b!6950688))

(assert (= (and b!6950688 res!2835697) b!6950683))

(assert (= (and b!6950683 res!2835698) b!6950690))

(assert (= (and b!6950690 res!2835700) b!6950682))

(assert (= (and b!6950682 res!2835702) b!6950686))

(assert (= (and b!6950686 res!2835695) b!6950684))

(assert (= (and start!667152 (is-ElementMatch!17018 rInner!765)) b!6950693))

(assert (= (and start!667152 (is-Concat!25863 rInner!765)) b!6950687))

(assert (= (and start!667152 (is-Star!17018 rInner!765)) b!6950685))

(assert (= (and start!667152 (is-Union!17018 rInner!765)) b!6950694))

(assert (= (and start!667152 (is-Cons!66647 s!10388)) b!6950681))

(assert (= (and start!667152 (is-Cons!66647 (_1!37176 cut!50))) b!6950689))

(assert (= (and start!667152 (is-Cons!66647 (_2!37176 cut!50))) b!6950692))

(declare-fun m!7652236 () Bool)

(assert (=> start!667152 m!7652236))

(declare-fun m!7652238 () Bool)

(assert (=> b!6950686 m!7652238))

(declare-fun m!7652240 () Bool)

(assert (=> b!6950680 m!7652240))

(declare-fun m!7652242 () Bool)

(assert (=> b!6950684 m!7652242))

(declare-fun m!7652244 () Bool)

(assert (=> b!6950683 m!7652244))

(declare-fun m!7652246 () Bool)

(assert (=> b!6950688 m!7652246))

(declare-fun m!7652248 () Bool)

(assert (=> b!6950690 m!7652248))

(declare-fun m!7652250 () Bool)

(assert (=> b!6950682 m!7652250))

(assert (=> b!6950691 m!7652246))

(push 1)

(assert (not b!6950684))

(assert tp_is_empty!43261)

(assert (not b!6950692))

(assert (not b!6950682))

(assert (not b!6950689))

(assert (not b!6950685))

(assert (not b!6950683))

(assert (not b!6950680))

(assert (not b!6950690))

(assert (not b!6950691))

(assert (not b!6950694))

(assert (not b!6950681))

(assert (not b!6950688))

(assert (not b!6950686))

(assert (not start!667152))

(assert (not b!6950687))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2169089 () Bool)

(assert (=> d!2169089 (= (isEmpty!38901 (_1!37176 cut!50)) (is-Nil!66647 (_1!37176 cut!50)))))

(assert (=> b!6950682 d!2169089))

(declare-fun d!2169093 () Bool)

(declare-fun choose!51796 (Int) Bool)

(assert (=> d!2169093 (= (Exists!4014 lambda!396361) (choose!51796 lambda!396361))))

(declare-fun bs!1857688 () Bool)

(assert (= bs!1857688 d!2169093))

(declare-fun m!7652268 () Bool)

(assert (=> bs!1857688 m!7652268))

(assert (=> b!6950688 d!2169093))

(declare-fun d!2169095 () Bool)

(assert (=> d!2169095 (= (Exists!4014 lambda!396362) (choose!51796 lambda!396362))))

(declare-fun bs!1857689 () Bool)

(assert (= bs!1857689 d!2169095))

(declare-fun m!7652270 () Bool)

(assert (=> bs!1857689 m!7652270))

(assert (=> b!6950683 d!2169095))

(declare-fun bm!631297 () Bool)

(declare-fun call!631302 () Bool)

(declare-fun call!631303 () Bool)

(assert (=> bm!631297 (= call!631302 call!631303)))

(declare-fun bm!631298 () Bool)

(declare-fun c!1289303 () Bool)

(declare-fun c!1289302 () Bool)

(assert (=> bm!631298 (= call!631303 (validRegex!8724 (ite c!1289303 (reg!17347 (Star!17018 rInner!765)) (ite c!1289302 (regOne!34549 (Star!17018 rInner!765)) (regTwo!34548 (Star!17018 rInner!765))))))))

(declare-fun b!6950784 () Bool)

(declare-fun e!4180405 () Bool)

(declare-fun e!4180409 () Bool)

(assert (=> b!6950784 (= e!4180405 e!4180409)))

(assert (=> b!6950784 (= c!1289302 (is-Union!17018 (Star!17018 rInner!765)))))

(declare-fun b!6950785 () Bool)

(declare-fun e!4180408 () Bool)

(assert (=> b!6950785 (= e!4180408 call!631303)))

(declare-fun b!6950786 () Bool)

(declare-fun e!4180406 () Bool)

(assert (=> b!6950786 (= e!4180406 call!631302)))

(declare-fun b!6950787 () Bool)

(declare-fun res!2835755 () Bool)

(declare-fun e!4180411 () Bool)

(assert (=> b!6950787 (=> (not res!2835755) (not e!4180411))))

(assert (=> b!6950787 (= res!2835755 call!631302)))

(assert (=> b!6950787 (= e!4180409 e!4180411)))

(declare-fun b!6950788 () Bool)

(declare-fun e!4180407 () Bool)

(assert (=> b!6950788 (= e!4180407 e!4180406)))

(declare-fun res!2835757 () Bool)

(assert (=> b!6950788 (=> (not res!2835757) (not e!4180406))))

(declare-fun call!631304 () Bool)

(assert (=> b!6950788 (= res!2835757 call!631304)))

(declare-fun bm!631299 () Bool)

(assert (=> bm!631299 (= call!631304 (validRegex!8724 (ite c!1289302 (regTwo!34549 (Star!17018 rInner!765)) (regOne!34548 (Star!17018 rInner!765)))))))

(declare-fun b!6950789 () Bool)

(declare-fun e!4180410 () Bool)

(assert (=> b!6950789 (= e!4180410 e!4180405)))

(assert (=> b!6950789 (= c!1289303 (is-Star!17018 (Star!17018 rInner!765)))))

(declare-fun b!6950790 () Bool)

(declare-fun res!2835756 () Bool)

(assert (=> b!6950790 (=> res!2835756 e!4180407)))

(assert (=> b!6950790 (= res!2835756 (not (is-Concat!25863 (Star!17018 rInner!765))))))

(assert (=> b!6950790 (= e!4180409 e!4180407)))

(declare-fun d!2169097 () Bool)

(declare-fun res!2835753 () Bool)

(assert (=> d!2169097 (=> res!2835753 e!4180410)))

(assert (=> d!2169097 (= res!2835753 (is-ElementMatch!17018 (Star!17018 rInner!765)))))

(assert (=> d!2169097 (= (validRegex!8724 (Star!17018 rInner!765)) e!4180410)))

(declare-fun b!6950791 () Bool)

(assert (=> b!6950791 (= e!4180411 call!631304)))

(declare-fun b!6950792 () Bool)

(assert (=> b!6950792 (= e!4180405 e!4180408)))

(declare-fun res!2835754 () Bool)

(assert (=> b!6950792 (= res!2835754 (not (nullable!6831 (reg!17347 (Star!17018 rInner!765)))))))

(assert (=> b!6950792 (=> (not res!2835754) (not e!4180408))))

(assert (= (and d!2169097 (not res!2835753)) b!6950789))

(assert (= (and b!6950789 c!1289303) b!6950792))

(assert (= (and b!6950789 (not c!1289303)) b!6950784))

(assert (= (and b!6950792 res!2835754) b!6950785))

(assert (= (and b!6950784 c!1289302) b!6950787))

(assert (= (and b!6950784 (not c!1289302)) b!6950790))

(assert (= (and b!6950787 res!2835755) b!6950791))

(assert (= (and b!6950790 (not res!2835756)) b!6950788))

(assert (= (and b!6950788 res!2835757) b!6950786))

(assert (= (or b!6950787 b!6950786) bm!631297))

(assert (= (or b!6950791 b!6950788) bm!631299))

(assert (= (or b!6950785 bm!631297) bm!631298))

(declare-fun m!7652274 () Bool)

(assert (=> bm!631298 m!7652274))

(declare-fun m!7652276 () Bool)

(assert (=> bm!631299 m!7652276))

(declare-fun m!7652278 () Bool)

(assert (=> b!6950792 m!7652278))

(assert (=> b!6950684 d!2169097))

(declare-fun d!2169101 () Bool)

(declare-fun e!4180429 () Bool)

(assert (=> d!2169101 e!4180429))

(declare-fun res!2835770 () Bool)

(assert (=> d!2169101 (=> (not res!2835770) (not e!4180429))))

(declare-fun lt!2477906 () List!66771)

(declare-fun content!13129 (List!66771) (Set C!34306))

(assert (=> d!2169101 (= res!2835770 (= (content!13129 lt!2477906) (set.union (content!13129 (_1!37176 cut!50)) (content!13129 (_2!37176 cut!50)))))))

(declare-fun e!4180428 () List!66771)

(assert (=> d!2169101 (= lt!2477906 e!4180428)))

(declare-fun c!1289310 () Bool)

(assert (=> d!2169101 (= c!1289310 (is-Nil!66647 (_1!37176 cut!50)))))

(assert (=> d!2169101 (= (++!15055 (_1!37176 cut!50) (_2!37176 cut!50)) lt!2477906)))

(declare-fun b!6950818 () Bool)

(assert (=> b!6950818 (= e!4180429 (or (not (= (_2!37176 cut!50) Nil!66647)) (= lt!2477906 (_1!37176 cut!50))))))

(declare-fun b!6950815 () Bool)

(assert (=> b!6950815 (= e!4180428 (_2!37176 cut!50))))

(declare-fun b!6950817 () Bool)

(declare-fun res!2835771 () Bool)

(assert (=> b!6950817 (=> (not res!2835771) (not e!4180429))))

(declare-fun size!40826 (List!66771) Int)

(assert (=> b!6950817 (= res!2835771 (= (size!40826 lt!2477906) (+ (size!40826 (_1!37176 cut!50)) (size!40826 (_2!37176 cut!50)))))))

(declare-fun b!6950816 () Bool)

(assert (=> b!6950816 (= e!4180428 (Cons!66647 (h!73095 (_1!37176 cut!50)) (++!15055 (t!380514 (_1!37176 cut!50)) (_2!37176 cut!50))))))

(assert (= (and d!2169101 c!1289310) b!6950815))

(assert (= (and d!2169101 (not c!1289310)) b!6950816))

(assert (= (and d!2169101 res!2835770) b!6950817))

(assert (= (and b!6950817 res!2835771) b!6950818))

(declare-fun m!7652280 () Bool)

(assert (=> d!2169101 m!7652280))

(declare-fun m!7652282 () Bool)

(assert (=> d!2169101 m!7652282))

(declare-fun m!7652284 () Bool)

(assert (=> d!2169101 m!7652284))

(declare-fun m!7652286 () Bool)

(assert (=> b!6950817 m!7652286))

(declare-fun m!7652288 () Bool)

(assert (=> b!6950817 m!7652288))

(declare-fun m!7652290 () Bool)

(assert (=> b!6950817 m!7652290))

(declare-fun m!7652292 () Bool)

(assert (=> b!6950816 m!7652292))

(assert (=> b!6950690 d!2169101))

(declare-fun bm!631306 () Bool)

(declare-fun call!631311 () Bool)

(declare-fun call!631312 () Bool)

(assert (=> bm!631306 (= call!631311 call!631312)))

(declare-fun bm!631307 () Bool)

(declare-fun c!1289311 () Bool)

(declare-fun c!1289312 () Bool)

(assert (=> bm!631307 (= call!631312 (validRegex!8724 (ite c!1289312 (reg!17347 rInner!765) (ite c!1289311 (regOne!34549 rInner!765) (regTwo!34548 rInner!765)))))))

(declare-fun b!6950819 () Bool)

(declare-fun e!4180430 () Bool)

(declare-fun e!4180434 () Bool)

(assert (=> b!6950819 (= e!4180430 e!4180434)))

(assert (=> b!6950819 (= c!1289311 (is-Union!17018 rInner!765))))

(declare-fun b!6950820 () Bool)

(declare-fun e!4180433 () Bool)

(assert (=> b!6950820 (= e!4180433 call!631312)))

(declare-fun b!6950821 () Bool)

(declare-fun e!4180431 () Bool)

(assert (=> b!6950821 (= e!4180431 call!631311)))

(declare-fun b!6950822 () Bool)

(declare-fun res!2835774 () Bool)

(declare-fun e!4180436 () Bool)

(assert (=> b!6950822 (=> (not res!2835774) (not e!4180436))))

(assert (=> b!6950822 (= res!2835774 call!631311)))

(assert (=> b!6950822 (= e!4180434 e!4180436)))

(declare-fun b!6950823 () Bool)

(declare-fun e!4180432 () Bool)

(assert (=> b!6950823 (= e!4180432 e!4180431)))

(declare-fun res!2835776 () Bool)

(assert (=> b!6950823 (=> (not res!2835776) (not e!4180431))))

(declare-fun call!631313 () Bool)

(assert (=> b!6950823 (= res!2835776 call!631313)))

(declare-fun bm!631308 () Bool)

(assert (=> bm!631308 (= call!631313 (validRegex!8724 (ite c!1289311 (regTwo!34549 rInner!765) (regOne!34548 rInner!765))))))

(declare-fun b!6950824 () Bool)

(declare-fun e!4180435 () Bool)

(assert (=> b!6950824 (= e!4180435 e!4180430)))

(assert (=> b!6950824 (= c!1289312 (is-Star!17018 rInner!765))))

(declare-fun b!6950825 () Bool)

(declare-fun res!2835775 () Bool)

(assert (=> b!6950825 (=> res!2835775 e!4180432)))

(assert (=> b!6950825 (= res!2835775 (not (is-Concat!25863 rInner!765)))))

(assert (=> b!6950825 (= e!4180434 e!4180432)))

(declare-fun d!2169103 () Bool)

(declare-fun res!2835772 () Bool)

(assert (=> d!2169103 (=> res!2835772 e!4180435)))

(assert (=> d!2169103 (= res!2835772 (is-ElementMatch!17018 rInner!765))))

(assert (=> d!2169103 (= (validRegex!8724 rInner!765) e!4180435)))

(declare-fun b!6950826 () Bool)

(assert (=> b!6950826 (= e!4180436 call!631313)))

(declare-fun b!6950827 () Bool)

(assert (=> b!6950827 (= e!4180430 e!4180433)))

(declare-fun res!2835773 () Bool)

(assert (=> b!6950827 (= res!2835773 (not (nullable!6831 (reg!17347 rInner!765))))))

(assert (=> b!6950827 (=> (not res!2835773) (not e!4180433))))

(assert (= (and d!2169103 (not res!2835772)) b!6950824))

(assert (= (and b!6950824 c!1289312) b!6950827))

(assert (= (and b!6950824 (not c!1289312)) b!6950819))

(assert (= (and b!6950827 res!2835773) b!6950820))

(assert (= (and b!6950819 c!1289311) b!6950822))

(assert (= (and b!6950819 (not c!1289311)) b!6950825))

(assert (= (and b!6950822 res!2835774) b!6950826))

(assert (= (and b!6950825 (not res!2835775)) b!6950823))

(assert (= (and b!6950823 res!2835776) b!6950821))

(assert (= (or b!6950822 b!6950821) bm!631306))

(assert (= (or b!6950826 b!6950823) bm!631308))

(assert (= (or b!6950820 bm!631306) bm!631307))

(declare-fun m!7652294 () Bool)

(assert (=> bm!631307 m!7652294))

(declare-fun m!7652296 () Bool)

(assert (=> bm!631308 m!7652296))

(declare-fun m!7652298 () Bool)

(assert (=> b!6950827 m!7652298))

(assert (=> start!667152 d!2169103))

(declare-fun d!2169105 () Bool)

(declare-fun nullableFct!2558 (Regex!17018) Bool)

(assert (=> d!2169105 (= (nullable!6831 rInner!765) (nullableFct!2558 rInner!765))))

(declare-fun bs!1857691 () Bool)

(assert (= bs!1857691 d!2169105))

(declare-fun m!7652300 () Bool)

(assert (=> bs!1857691 m!7652300))

(assert (=> b!6950680 d!2169105))

(assert (=> b!6950691 d!2169093))

(declare-fun bs!1857694 () Bool)

(declare-fun b!6950884 () Bool)

(assert (= bs!1857694 (and b!6950884 b!6950691)))

(declare-fun lambda!396375 () Int)

(assert (=> bs!1857694 (not (= lambda!396375 lambda!396361))))

(declare-fun bs!1857695 () Bool)

(assert (= bs!1857695 (and b!6950884 b!6950683)))

(assert (=> bs!1857695 (= (and (= (_1!37176 cut!50) s!10388) (= (reg!17347 rInner!765) rInner!765) (= rInner!765 (Star!17018 rInner!765))) (= lambda!396375 lambda!396362))))

(assert (=> b!6950884 true))

(assert (=> b!6950884 true))

(declare-fun bs!1857696 () Bool)

(declare-fun b!6950883 () Bool)

(assert (= bs!1857696 (and b!6950883 b!6950691)))

(declare-fun lambda!396376 () Int)

(assert (=> bs!1857696 (not (= lambda!396376 lambda!396361))))

(declare-fun bs!1857697 () Bool)

(assert (= bs!1857697 (and b!6950883 b!6950683)))

(assert (=> bs!1857697 (not (= lambda!396376 lambda!396362))))

(declare-fun bs!1857698 () Bool)

(assert (= bs!1857698 (and b!6950883 b!6950884)))

(assert (=> bs!1857698 (not (= lambda!396376 lambda!396375))))

(assert (=> b!6950883 true))

(assert (=> b!6950883 true))

(declare-fun b!6950877 () Bool)

(declare-fun e!4180471 () Bool)

(declare-fun e!4180472 () Bool)

(assert (=> b!6950877 (= e!4180471 e!4180472)))

(declare-fun res!2835803 () Bool)

(assert (=> b!6950877 (= res!2835803 (not (is-EmptyLang!17018 rInner!765)))))

(assert (=> b!6950877 (=> (not res!2835803) (not e!4180472))))

(declare-fun b!6950878 () Bool)

(declare-fun e!4180469 () Bool)

(assert (=> b!6950878 (= e!4180469 (= (_1!37176 cut!50) (Cons!66647 (c!1289296 rInner!765) Nil!66647)))))

(declare-fun b!6950879 () Bool)

(declare-fun call!631321 () Bool)

(assert (=> b!6950879 (= e!4180471 call!631321)))

(declare-fun bm!631317 () Bool)

(assert (=> bm!631317 (= call!631321 (isEmpty!38901 (_1!37176 cut!50)))))

(declare-fun b!6950880 () Bool)

(declare-fun c!1289326 () Bool)

(assert (=> b!6950880 (= c!1289326 (is-ElementMatch!17018 rInner!765))))

(assert (=> b!6950880 (= e!4180472 e!4180469)))

(declare-fun b!6950881 () Bool)

(declare-fun e!4180466 () Bool)

(assert (=> b!6950881 (= e!4180466 (matchRSpec!4055 (regTwo!34549 rInner!765) (_1!37176 cut!50)))))

(declare-fun b!6950882 () Bool)

(declare-fun c!1289328 () Bool)

(assert (=> b!6950882 (= c!1289328 (is-Union!17018 rInner!765))))

(declare-fun e!4180470 () Bool)

(assert (=> b!6950882 (= e!4180469 e!4180470)))

(declare-fun e!4180468 () Bool)

(declare-fun call!631322 () Bool)

(assert (=> b!6950883 (= e!4180468 call!631322)))

(declare-fun e!4180467 () Bool)

(assert (=> b!6950884 (= e!4180467 call!631322)))

(declare-fun b!6950885 () Bool)

(assert (=> b!6950885 (= e!4180470 e!4180466)))

(declare-fun res!2835802 () Bool)

(assert (=> b!6950885 (= res!2835802 (matchRSpec!4055 (regOne!34549 rInner!765) (_1!37176 cut!50)))))

(assert (=> b!6950885 (=> res!2835802 e!4180466)))

(declare-fun b!6950886 () Bool)

(declare-fun res!2835804 () Bool)

(assert (=> b!6950886 (=> res!2835804 e!4180467)))

(assert (=> b!6950886 (= res!2835804 call!631321)))

(assert (=> b!6950886 (= e!4180468 e!4180467)))

(declare-fun b!6950887 () Bool)

(assert (=> b!6950887 (= e!4180470 e!4180468)))

(declare-fun c!1289325 () Bool)

(assert (=> b!6950887 (= c!1289325 (is-Star!17018 rInner!765))))

(declare-fun d!2169107 () Bool)

(declare-fun c!1289327 () Bool)

(assert (=> d!2169107 (= c!1289327 (is-EmptyExpr!17018 rInner!765))))

(assert (=> d!2169107 (= (matchRSpec!4055 rInner!765 (_1!37176 cut!50)) e!4180471)))

(declare-fun bm!631316 () Bool)

(assert (=> bm!631316 (= call!631322 (Exists!4014 (ite c!1289325 lambda!396375 lambda!396376)))))

(assert (= (and d!2169107 c!1289327) b!6950879))

(assert (= (and d!2169107 (not c!1289327)) b!6950877))

(assert (= (and b!6950877 res!2835803) b!6950880))

(assert (= (and b!6950880 c!1289326) b!6950878))

(assert (= (and b!6950880 (not c!1289326)) b!6950882))

(assert (= (and b!6950882 c!1289328) b!6950885))

(assert (= (and b!6950882 (not c!1289328)) b!6950887))

(assert (= (and b!6950885 (not res!2835802)) b!6950881))

(assert (= (and b!6950887 c!1289325) b!6950886))

(assert (= (and b!6950887 (not c!1289325)) b!6950883))

(assert (= (and b!6950886 (not res!2835804)) b!6950884))

(assert (= (or b!6950884 b!6950883) bm!631316))

(assert (= (or b!6950879 b!6950886) bm!631317))

(assert (=> bm!631317 m!7652250))

(declare-fun m!7652312 () Bool)

(assert (=> b!6950881 m!7652312))

(declare-fun m!7652314 () Bool)

(assert (=> b!6950885 m!7652314))

(declare-fun m!7652318 () Bool)

(assert (=> bm!631316 m!7652318))

(assert (=> b!6950686 d!2169107))

(declare-fun b!6950896 () Bool)

(declare-fun e!4180477 () Bool)

(declare-fun tp!1916112 () Bool)

(assert (=> b!6950896 (= e!4180477 (and tp_is_empty!43261 tp!1916112))))

(assert (=> b!6950692 (= tp!1916078 e!4180477)))

(assert (= (and b!6950692 (is-Cons!66647 (t!380514 (_2!37176 cut!50)))) b!6950896))

(declare-fun b!6950907 () Bool)

(declare-fun e!4180480 () Bool)

(assert (=> b!6950907 (= e!4180480 tp_is_empty!43261)))

(declare-fun b!6950910 () Bool)

(declare-fun tp!1916127 () Bool)

(declare-fun tp!1916124 () Bool)

(assert (=> b!6950910 (= e!4180480 (and tp!1916127 tp!1916124))))

(assert (=> b!6950687 (= tp!1916085 e!4180480)))

(declare-fun b!6950908 () Bool)

(declare-fun tp!1916125 () Bool)

(declare-fun tp!1916123 () Bool)

(assert (=> b!6950908 (= e!4180480 (and tp!1916125 tp!1916123))))

(declare-fun b!6950909 () Bool)

(declare-fun tp!1916126 () Bool)

(assert (=> b!6950909 (= e!4180480 tp!1916126)))

(assert (= (and b!6950687 (is-ElementMatch!17018 (regOne!34548 rInner!765))) b!6950907))

(assert (= (and b!6950687 (is-Concat!25863 (regOne!34548 rInner!765))) b!6950908))

(assert (= (and b!6950687 (is-Star!17018 (regOne!34548 rInner!765))) b!6950909))

(assert (= (and b!6950687 (is-Union!17018 (regOne!34548 rInner!765))) b!6950910))

(declare-fun b!6950911 () Bool)

(declare-fun e!4180481 () Bool)

(assert (=> b!6950911 (= e!4180481 tp_is_empty!43261)))

(declare-fun b!6950914 () Bool)

(declare-fun tp!1916132 () Bool)

(declare-fun tp!1916129 () Bool)

(assert (=> b!6950914 (= e!4180481 (and tp!1916132 tp!1916129))))

(assert (=> b!6950687 (= tp!1916079 e!4180481)))

(declare-fun b!6950912 () Bool)

(declare-fun tp!1916130 () Bool)

(declare-fun tp!1916128 () Bool)

(assert (=> b!6950912 (= e!4180481 (and tp!1916130 tp!1916128))))

(declare-fun b!6950913 () Bool)

(declare-fun tp!1916131 () Bool)

(assert (=> b!6950913 (= e!4180481 tp!1916131)))

(assert (= (and b!6950687 (is-ElementMatch!17018 (regTwo!34548 rInner!765))) b!6950911))

(assert (= (and b!6950687 (is-Concat!25863 (regTwo!34548 rInner!765))) b!6950912))

(assert (= (and b!6950687 (is-Star!17018 (regTwo!34548 rInner!765))) b!6950913))

(assert (= (and b!6950687 (is-Union!17018 (regTwo!34548 rInner!765))) b!6950914))

(declare-fun b!6950915 () Bool)

(declare-fun e!4180482 () Bool)

(assert (=> b!6950915 (= e!4180482 tp_is_empty!43261)))

(declare-fun b!6950918 () Bool)

(declare-fun tp!1916137 () Bool)

(declare-fun tp!1916134 () Bool)

(assert (=> b!6950918 (= e!4180482 (and tp!1916137 tp!1916134))))

(assert (=> b!6950694 (= tp!1916082 e!4180482)))

(declare-fun b!6950916 () Bool)

(declare-fun tp!1916135 () Bool)

(declare-fun tp!1916133 () Bool)

(assert (=> b!6950916 (= e!4180482 (and tp!1916135 tp!1916133))))

(declare-fun b!6950917 () Bool)

(declare-fun tp!1916136 () Bool)

(assert (=> b!6950917 (= e!4180482 tp!1916136)))

(assert (= (and b!6950694 (is-ElementMatch!17018 (regOne!34549 rInner!765))) b!6950915))

(assert (= (and b!6950694 (is-Concat!25863 (regOne!34549 rInner!765))) b!6950916))

(assert (= (and b!6950694 (is-Star!17018 (regOne!34549 rInner!765))) b!6950917))

(assert (= (and b!6950694 (is-Union!17018 (regOne!34549 rInner!765))) b!6950918))

(declare-fun b!6950919 () Bool)

(declare-fun e!4180483 () Bool)

(assert (=> b!6950919 (= e!4180483 tp_is_empty!43261)))

(declare-fun b!6950922 () Bool)

(declare-fun tp!1916142 () Bool)

(declare-fun tp!1916139 () Bool)

(assert (=> b!6950922 (= e!4180483 (and tp!1916142 tp!1916139))))

(assert (=> b!6950694 (= tp!1916084 e!4180483)))

(declare-fun b!6950920 () Bool)

(declare-fun tp!1916140 () Bool)

(declare-fun tp!1916138 () Bool)

(assert (=> b!6950920 (= e!4180483 (and tp!1916140 tp!1916138))))

(declare-fun b!6950921 () Bool)

(declare-fun tp!1916141 () Bool)

(assert (=> b!6950921 (= e!4180483 tp!1916141)))

(assert (= (and b!6950694 (is-ElementMatch!17018 (regTwo!34549 rInner!765))) b!6950919))

(assert (= (and b!6950694 (is-Concat!25863 (regTwo!34549 rInner!765))) b!6950920))

(assert (= (and b!6950694 (is-Star!17018 (regTwo!34549 rInner!765))) b!6950921))

(assert (= (and b!6950694 (is-Union!17018 (regTwo!34549 rInner!765))) b!6950922))

(declare-fun b!6950923 () Bool)

(declare-fun e!4180484 () Bool)

(declare-fun tp!1916143 () Bool)

(assert (=> b!6950923 (= e!4180484 (and tp_is_empty!43261 tp!1916143))))

(assert (=> b!6950689 (= tp!1916083 e!4180484)))

(assert (= (and b!6950689 (is-Cons!66647 (t!380514 (_1!37176 cut!50)))) b!6950923))

(declare-fun b!6950924 () Bool)

(declare-fun e!4180485 () Bool)

(assert (=> b!6950924 (= e!4180485 tp_is_empty!43261)))

(declare-fun b!6950927 () Bool)

(declare-fun tp!1916148 () Bool)

(declare-fun tp!1916145 () Bool)

(assert (=> b!6950927 (= e!4180485 (and tp!1916148 tp!1916145))))

(assert (=> b!6950685 (= tp!1916080 e!4180485)))

(declare-fun b!6950925 () Bool)

(declare-fun tp!1916146 () Bool)

(declare-fun tp!1916144 () Bool)

(assert (=> b!6950925 (= e!4180485 (and tp!1916146 tp!1916144))))

(declare-fun b!6950926 () Bool)

(declare-fun tp!1916147 () Bool)

(assert (=> b!6950926 (= e!4180485 tp!1916147)))

(assert (= (and b!6950685 (is-ElementMatch!17018 (reg!17347 rInner!765))) b!6950924))

(assert (= (and b!6950685 (is-Concat!25863 (reg!17347 rInner!765))) b!6950925))

(assert (= (and b!6950685 (is-Star!17018 (reg!17347 rInner!765))) b!6950926))

(assert (= (and b!6950685 (is-Union!17018 (reg!17347 rInner!765))) b!6950927))

(declare-fun b!6950928 () Bool)

(declare-fun e!4180486 () Bool)

(declare-fun tp!1916149 () Bool)

(assert (=> b!6950928 (= e!4180486 (and tp_is_empty!43261 tp!1916149))))

(assert (=> b!6950681 (= tp!1916081 e!4180486)))

(assert (= (and b!6950681 (is-Cons!66647 (t!380514 s!10388))) b!6950928))

(push 1)

(assert (not b!6950908))

(assert (not bm!631308))

(assert (not b!6950881))

(assert (not b!6950910))

(assert (not b!6950928))

(assert (not d!2169105))

(assert (not b!6950916))

(assert (not b!6950885))

(assert (not b!6950817))

(assert (not b!6950914))

(assert (not b!6950816))

(assert (not d!2169095))

(assert (not b!6950921))

(assert (not b!6950827))

(assert (not b!6950922))

(assert (not b!6950792))

(assert (not b!6950927))

(assert (not b!6950913))

(assert (not bm!631299))

(assert (not b!6950917))

(assert (not bm!631317))

(assert (not bm!631298))

(assert (not d!2169101))

(assert tp_is_empty!43261)

(assert (not b!6950923))

(assert (not b!6950909))

(assert (not bm!631307))

(assert (not b!6950925))

(assert (not d!2169093))

(assert (not b!6950926))

(assert (not b!6950896))

(assert (not b!6950918))

(assert (not b!6950920))

(assert (not bm!631316))

(assert (not b!6950912))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

