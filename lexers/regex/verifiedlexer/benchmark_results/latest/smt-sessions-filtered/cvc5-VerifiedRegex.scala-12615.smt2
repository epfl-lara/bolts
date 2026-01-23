; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!698964 () Bool)

(assert start!698964)

(declare-fun e!4310818 () Bool)

(declare-fun setRes!53052 () Bool)

(declare-datatypes ((C!36950 0))(
  ( (C!36951 (val!28423 Int)) )
))
(declare-datatypes ((Regex!18338 0))(
  ( (ElementMatch!18338 (c!1336674 C!36950)) (Concat!27183 (regOne!37188 Regex!18338) (regTwo!37188 Regex!18338)) (EmptyExpr!18338) (Star!18338 (reg!18667 Regex!18338)) (EmptyLang!18338) (Union!18338 (regOne!37189 Regex!18338) (regTwo!37189 Regex!18338)) )
))
(declare-datatypes ((List!69752 0))(
  ( (Nil!69628) (Cons!69628 (h!76076 Regex!18338) (t!383773 List!69752)) )
))
(declare-datatypes ((Context!14580 0))(
  ( (Context!14581 (exprs!7790 List!69752)) )
))
(declare-fun setElem!53052 () Context!14580)

(declare-fun setNonEmpty!53052 () Bool)

(declare-fun tp!1991196 () Bool)

(declare-fun inv!88868 (Context!14580) Bool)

(assert (=> setNonEmpty!53052 (= setRes!53052 (and tp!1991196 (inv!88868 setElem!53052) e!4310818))))

(declare-fun z!3530 () (Set Context!14580))

(declare-fun setRest!53052 () (Set Context!14580))

(assert (=> setNonEmpty!53052 (= z!3530 (set.union (set.insert setElem!53052 (as set.empty (Set Context!14580))) setRest!53052))))

(declare-fun res!2923852 () Bool)

(declare-fun e!4310817 () Bool)

(assert (=> start!698964 (=> (not res!2923852) (not e!4310817))))

(declare-datatypes ((List!69753 0))(
  ( (Nil!69629) (Cons!69629 (h!76077 Context!14580) (t!383774 List!69753)) )
))
(declare-fun unfocusZipper!2598 (List!69753) Regex!18338)

(declare-fun toList!11281 ((Set Context!14580)) List!69753)

(assert (=> start!698964 (= res!2923852 (= (unfocusZipper!2598 (toList!11281 z!3530)) EmptyExpr!18338))))

(assert (=> start!698964 e!4310817))

(declare-fun condSetEmpty!53052 () Bool)

(assert (=> start!698964 (= condSetEmpty!53052 (= z!3530 (as set.empty (Set Context!14580))))))

(assert (=> start!698964 setRes!53052))

(declare-fun b!7177898 () Bool)

(declare-fun res!2923853 () Bool)

(assert (=> b!7177898 (=> (not res!2923853) (not e!4310817))))

(declare-fun focus!413 (Regex!18338) (Set Context!14580))

(assert (=> b!7177898 (= res!2923853 (= z!3530 (focus!413 EmptyExpr!18338)))))

(declare-fun setIsEmpty!53052 () Bool)

(assert (=> setIsEmpty!53052 setRes!53052))

(declare-fun b!7177899 () Bool)

(assert (=> b!7177899 (= e!4310817 (not (inv!88868 (Context!14581 (Cons!69628 EmptyExpr!18338 Nil!69628)))))))

(declare-fun b!7177900 () Bool)

(declare-fun tp!1991197 () Bool)

(assert (=> b!7177900 (= e!4310818 tp!1991197)))

(assert (= (and start!698964 res!2923852) b!7177898))

(assert (= (and b!7177898 res!2923853) b!7177899))

(assert (= (and start!698964 condSetEmpty!53052) setIsEmpty!53052))

(assert (= (and start!698964 (not condSetEmpty!53052)) setNonEmpty!53052))

(assert (= setNonEmpty!53052 b!7177900))

(declare-fun m!7876768 () Bool)

(assert (=> setNonEmpty!53052 m!7876768))

(declare-fun m!7876770 () Bool)

(assert (=> start!698964 m!7876770))

(assert (=> start!698964 m!7876770))

(declare-fun m!7876772 () Bool)

(assert (=> start!698964 m!7876772))

(declare-fun m!7876774 () Bool)

(assert (=> b!7177898 m!7876774))

(declare-fun m!7876776 () Bool)

(assert (=> b!7177899 m!7876776))

(push 1)

(assert (not b!7177898))

(assert (not b!7177899))

(assert (not start!698964))

(assert (not setNonEmpty!53052))

(assert (not b!7177900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2235624 () Bool)

(declare-fun lt!2570567 () Regex!18338)

(declare-fun validRegex!9460 (Regex!18338) Bool)

(assert (=> d!2235624 (validRegex!9460 lt!2570567)))

(declare-fun generalisedUnion!2763 (List!69752) Regex!18338)

(declare-fun unfocusZipperList!2319 (List!69753) List!69752)

(assert (=> d!2235624 (= lt!2570567 (generalisedUnion!2763 (unfocusZipperList!2319 (toList!11281 z!3530))))))

(assert (=> d!2235624 (= (unfocusZipper!2598 (toList!11281 z!3530)) lt!2570567)))

(declare-fun bs!1895286 () Bool)

(assert (= bs!1895286 d!2235624))

(declare-fun m!7876788 () Bool)

(assert (=> bs!1895286 m!7876788))

(assert (=> bs!1895286 m!7876770))

(declare-fun m!7876790 () Bool)

(assert (=> bs!1895286 m!7876790))

(assert (=> bs!1895286 m!7876790))

(declare-fun m!7876792 () Bool)

(assert (=> bs!1895286 m!7876792))

(assert (=> start!698964 d!2235624))

(declare-fun d!2235626 () Bool)

(declare-fun e!4310827 () Bool)

(assert (=> d!2235626 e!4310827))

(declare-fun res!2923862 () Bool)

(assert (=> d!2235626 (=> (not res!2923862) (not e!4310827))))

(declare-fun lt!2570570 () List!69753)

(declare-fun noDuplicate!2879 (List!69753) Bool)

(assert (=> d!2235626 (= res!2923862 (noDuplicate!2879 lt!2570570))))

(declare-fun choose!55375 ((Set Context!14580)) List!69753)

(assert (=> d!2235626 (= lt!2570570 (choose!55375 z!3530))))

(assert (=> d!2235626 (= (toList!11281 z!3530) lt!2570570)))

(declare-fun b!7177912 () Bool)

(declare-fun content!14308 (List!69753) (Set Context!14580))

(assert (=> b!7177912 (= e!4310827 (= (content!14308 lt!2570570) z!3530))))

(assert (= (and d!2235626 res!2923862) b!7177912))

(declare-fun m!7876794 () Bool)

(assert (=> d!2235626 m!7876794))

(declare-fun m!7876796 () Bool)

(assert (=> d!2235626 m!7876796))

(declare-fun m!7876798 () Bool)

(assert (=> b!7177912 m!7876798))

(assert (=> start!698964 d!2235626))

(declare-fun d!2235628 () Bool)

(declare-fun lambda!437319 () Int)

(declare-fun forall!17167 (List!69752 Int) Bool)

(assert (=> d!2235628 (= (inv!88868 (Context!14581 (Cons!69628 EmptyExpr!18338 Nil!69628))) (forall!17167 (exprs!7790 (Context!14581 (Cons!69628 EmptyExpr!18338 Nil!69628))) lambda!437319))))

(declare-fun bs!1895287 () Bool)

(assert (= bs!1895287 d!2235628))

(declare-fun m!7876800 () Bool)

(assert (=> bs!1895287 m!7876800))

(assert (=> b!7177899 d!2235628))

(declare-fun d!2235630 () Bool)

(declare-fun e!4310830 () Bool)

(assert (=> d!2235630 e!4310830))

(declare-fun res!2923866 () Bool)

(assert (=> d!2235630 (=> (not res!2923866) (not e!4310830))))

(assert (=> d!2235630 (= res!2923866 (validRegex!9460 EmptyExpr!18338))))

(assert (=> d!2235630 (= (focus!413 EmptyExpr!18338) (set.insert (Context!14581 (Cons!69628 EmptyExpr!18338 Nil!69628)) (as set.empty (Set Context!14580))))))

(declare-fun b!7177915 () Bool)

(assert (=> b!7177915 (= e!4310830 (= (unfocusZipper!2598 (toList!11281 (set.insert (Context!14581 (Cons!69628 EmptyExpr!18338 Nil!69628)) (as set.empty (Set Context!14580))))) EmptyExpr!18338))))

(assert (= (and d!2235630 res!2923866) b!7177915))

(declare-fun m!7876802 () Bool)

(assert (=> d!2235630 m!7876802))

(declare-fun m!7876804 () Bool)

(assert (=> d!2235630 m!7876804))

(assert (=> b!7177915 m!7876804))

(assert (=> b!7177915 m!7876804))

(declare-fun m!7876806 () Bool)

(assert (=> b!7177915 m!7876806))

(assert (=> b!7177915 m!7876806))

(declare-fun m!7876808 () Bool)

(assert (=> b!7177915 m!7876808))

(assert (=> b!7177898 d!2235630))

(declare-fun bs!1895288 () Bool)

(declare-fun d!2235632 () Bool)

(assert (= bs!1895288 (and d!2235632 d!2235628)))

(declare-fun lambda!437320 () Int)

(assert (=> bs!1895288 (= lambda!437320 lambda!437319)))

(assert (=> d!2235632 (= (inv!88868 setElem!53052) (forall!17167 (exprs!7790 setElem!53052) lambda!437320))))

(declare-fun bs!1895289 () Bool)

(assert (= bs!1895289 d!2235632))

(declare-fun m!7876810 () Bool)

(assert (=> bs!1895289 m!7876810))

(assert (=> setNonEmpty!53052 d!2235632))

(declare-fun b!7177920 () Bool)

(declare-fun e!4310833 () Bool)

(declare-fun tp!1991208 () Bool)

(declare-fun tp!1991209 () Bool)

(assert (=> b!7177920 (= e!4310833 (and tp!1991208 tp!1991209))))

(assert (=> b!7177900 (= tp!1991197 e!4310833)))

(assert (= (and b!7177900 (is-Cons!69628 (exprs!7790 setElem!53052))) b!7177920))

(declare-fun condSetEmpty!53058 () Bool)

(assert (=> setNonEmpty!53052 (= condSetEmpty!53058 (= setRest!53052 (as set.empty (Set Context!14580))))))

(declare-fun setRes!53058 () Bool)

(assert (=> setNonEmpty!53052 (= tp!1991196 setRes!53058)))

(declare-fun setIsEmpty!53058 () Bool)

(assert (=> setIsEmpty!53058 setRes!53058))

(declare-fun setNonEmpty!53058 () Bool)

(declare-fun setElem!53058 () Context!14580)

(declare-fun e!4310836 () Bool)

(declare-fun tp!1991214 () Bool)

(assert (=> setNonEmpty!53058 (= setRes!53058 (and tp!1991214 (inv!88868 setElem!53058) e!4310836))))

(declare-fun setRest!53058 () (Set Context!14580))

(assert (=> setNonEmpty!53058 (= setRest!53052 (set.union (set.insert setElem!53058 (as set.empty (Set Context!14580))) setRest!53058))))

(declare-fun b!7177925 () Bool)

(declare-fun tp!1991215 () Bool)

(assert (=> b!7177925 (= e!4310836 tp!1991215)))

(assert (= (and setNonEmpty!53052 condSetEmpty!53058) setIsEmpty!53058))

(assert (= (and setNonEmpty!53052 (not condSetEmpty!53058)) setNonEmpty!53058))

(assert (= setNonEmpty!53058 b!7177925))

(declare-fun m!7876812 () Bool)

(assert (=> setNonEmpty!53058 m!7876812))

(push 1)

(assert (not b!7177912))

(assert (not b!7177925))

(assert (not b!7177920))

(assert (not d!2235624))

(assert (not d!2235628))

(assert (not d!2235630))

(assert (not b!7177915))

(assert (not setNonEmpty!53058))

(assert (not d!2235632))

(assert (not d!2235626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

