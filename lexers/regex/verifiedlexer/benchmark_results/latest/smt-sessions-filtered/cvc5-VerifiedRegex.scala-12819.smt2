; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708100 () Bool)

(assert start!708100)

(declare-fun b!7263366 () Bool)

(assert (=> b!7263366 true))

(declare-fun e!4355668 () Bool)

(declare-datatypes ((C!37766 0))(
  ( (C!37767 (val!28831 Int)) )
))
(declare-datatypes ((Regex!18746 0))(
  ( (ElementMatch!18746 (c!1351280 C!37766)) (Concat!27591 (regOne!38004 Regex!18746) (regTwo!38004 Regex!18746)) (EmptyExpr!18746) (Star!18746 (reg!19075 Regex!18746)) (EmptyLang!18746) (Union!18746 (regOne!38005 Regex!18746) (regTwo!38005 Regex!18746)) )
))
(declare-datatypes ((List!70807 0))(
  ( (Nil!70683) (Cons!70683 (h!77131 Regex!18746) (t!384873 List!70807)) )
))
(declare-datatypes ((Context!15372 0))(
  ( (Context!15373 (exprs!8186 List!70807)) )
))
(declare-fun ct1!250 () Context!15372)

(declare-fun lambda!446982 () Int)

(declare-fun forall!17583 (List!70807 Int) Bool)

(assert (=> b!7263366 (= e!4355668 (not (forall!17583 (exprs!8186 ct1!250) lambda!446982)))))

(declare-datatypes ((Unit!164110 0))(
  ( (Unit!164111) )
))
(declare-fun lt!2591531 () Unit!164110)

(declare-fun ct2!346 () Context!15372)

(declare-fun lemmaConcatPreservesForall!1503 (List!70807 List!70807 Int) Unit!164110)

(assert (=> b!7263366 (= lt!2591531 (lemmaConcatPreservesForall!1503 (exprs!8186 ct1!250) (exprs!8186 ct2!346) lambda!446982))))

(declare-datatypes ((List!70808 0))(
  ( (Nil!70684) (Cons!70684 (h!77132 C!37766) (t!384874 List!70808)) )
))
(declare-fun s!7854 () List!70808)

(declare-fun lambda!446983 () Int)

(declare-fun lt!2591530 () (Set Context!15372))

(declare-fun flatMap!2859 ((Set Context!15372) Int) (Set Context!15372))

(declare-fun derivationStepZipperUp!2516 (Context!15372 C!37766) (Set Context!15372))

(assert (=> b!7263366 (= (flatMap!2859 lt!2591530 lambda!446983) (derivationStepZipperUp!2516 ct1!250 (h!77132 s!7854)))))

(declare-fun lt!2591528 () Unit!164110)

(declare-fun lemmaFlatMapOnSingletonSet!2259 ((Set Context!15372) Context!15372 Int) Unit!164110)

(assert (=> b!7263366 (= lt!2591528 (lemmaFlatMapOnSingletonSet!2259 lt!2591530 ct1!250 lambda!446983))))

(assert (=> b!7263366 (= lt!2591530 (set.insert ct1!250 (as set.empty (Set Context!15372))))))

(declare-fun lt!2591529 () (Set Context!15372))

(declare-fun ++!16646 (List!70807 List!70807) List!70807)

(assert (=> b!7263366 (= lt!2591529 (derivationStepZipperUp!2516 (Context!15373 (++!16646 (exprs!8186 ct1!250) (exprs!8186 ct2!346))) (h!77132 s!7854)))))

(declare-fun lt!2591532 () Unit!164110)

(assert (=> b!7263366 (= lt!2591532 (lemmaConcatPreservesForall!1503 (exprs!8186 ct1!250) (exprs!8186 ct2!346) lambda!446982))))

(declare-fun b!7263367 () Bool)

(declare-fun res!2944838 () Bool)

(assert (=> b!7263367 (=> (not res!2944838) (not e!4355668))))

(assert (=> b!7263367 (= res!2944838 (is-Cons!70684 s!7854))))

(declare-fun b!7263368 () Bool)

(declare-fun e!4355667 () Bool)

(declare-fun tp!2039935 () Bool)

(assert (=> b!7263368 (= e!4355667 tp!2039935)))

(declare-fun b!7263369 () Bool)

(declare-fun e!4355669 () Bool)

(declare-fun tp_is_empty!46957 () Bool)

(declare-fun tp!2039933 () Bool)

(assert (=> b!7263369 (= e!4355669 (and tp_is_empty!46957 tp!2039933))))

(declare-fun b!7263370 () Bool)

(declare-fun e!4355666 () Bool)

(declare-fun tp!2039934 () Bool)

(assert (=> b!7263370 (= e!4355666 tp!2039934)))

(declare-fun res!2944836 () Bool)

(assert (=> start!708100 (=> (not res!2944836) (not e!4355668))))

(declare-fun matchZipper!3650 ((Set Context!15372) List!70808) Bool)

(assert (=> start!708100 (= res!2944836 (matchZipper!3650 (set.insert ct2!346 (as set.empty (Set Context!15372))) s!7854))))

(assert (=> start!708100 e!4355668))

(declare-fun inv!89876 (Context!15372) Bool)

(assert (=> start!708100 (and (inv!89876 ct2!346) e!4355667)))

(assert (=> start!708100 e!4355669))

(assert (=> start!708100 (and (inv!89876 ct1!250) e!4355666)))

(declare-fun b!7263371 () Bool)

(declare-fun res!2944837 () Bool)

(assert (=> b!7263371 (=> (not res!2944837) (not e!4355668))))

(declare-fun nullableContext!236 (Context!15372) Bool)

(assert (=> b!7263371 (= res!2944837 (nullableContext!236 ct1!250))))

(assert (= (and start!708100 res!2944836) b!7263371))

(assert (= (and b!7263371 res!2944837) b!7263367))

(assert (= (and b!7263367 res!2944838) b!7263366))

(assert (= start!708100 b!7263368))

(assert (= (and start!708100 (is-Cons!70684 s!7854)) b!7263369))

(assert (= start!708100 b!7263370))

(declare-fun m!7947962 () Bool)

(assert (=> b!7263366 m!7947962))

(declare-fun m!7947964 () Bool)

(assert (=> b!7263366 m!7947964))

(declare-fun m!7947966 () Bool)

(assert (=> b!7263366 m!7947966))

(declare-fun m!7947968 () Bool)

(assert (=> b!7263366 m!7947968))

(declare-fun m!7947970 () Bool)

(assert (=> b!7263366 m!7947970))

(declare-fun m!7947972 () Bool)

(assert (=> b!7263366 m!7947972))

(declare-fun m!7947974 () Bool)

(assert (=> b!7263366 m!7947974))

(declare-fun m!7947976 () Bool)

(assert (=> b!7263366 m!7947976))

(assert (=> b!7263366 m!7947964))

(declare-fun m!7947978 () Bool)

(assert (=> start!708100 m!7947978))

(assert (=> start!708100 m!7947978))

(declare-fun m!7947980 () Bool)

(assert (=> start!708100 m!7947980))

(declare-fun m!7947982 () Bool)

(assert (=> start!708100 m!7947982))

(declare-fun m!7947984 () Bool)

(assert (=> start!708100 m!7947984))

(declare-fun m!7947986 () Bool)

(assert (=> b!7263371 m!7947986))

(push 1)

(assert (not b!7263368))

(assert (not b!7263371))

(assert (not start!708100))

(assert (not b!7263366))

(assert (not b!7263370))

(assert (not b!7263369))

(assert tp_is_empty!46957)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259700 () Bool)

(declare-fun c!1351286 () Bool)

(declare-fun isEmpty!40631 (List!70808) Bool)

(assert (=> d!2259700 (= c!1351286 (isEmpty!40631 s!7854))))

(declare-fun e!4355684 () Bool)

(assert (=> d!2259700 (= (matchZipper!3650 (set.insert ct2!346 (as set.empty (Set Context!15372))) s!7854) e!4355684)))

(declare-fun b!7263398 () Bool)

(declare-fun nullableZipper!2965 ((Set Context!15372)) Bool)

(assert (=> b!7263398 (= e!4355684 (nullableZipper!2965 (set.insert ct2!346 (as set.empty (Set Context!15372)))))))

(declare-fun b!7263399 () Bool)

(declare-fun derivationStepZipper!3491 ((Set Context!15372) C!37766) (Set Context!15372))

(declare-fun head!14964 (List!70808) C!37766)

(declare-fun tail!14423 (List!70808) List!70808)

(assert (=> b!7263399 (= e!4355684 (matchZipper!3650 (derivationStepZipper!3491 (set.insert ct2!346 (as set.empty (Set Context!15372))) (head!14964 s!7854)) (tail!14423 s!7854)))))

(assert (= (and d!2259700 c!1351286) b!7263398))

(assert (= (and d!2259700 (not c!1351286)) b!7263399))

(declare-fun m!7948014 () Bool)

(assert (=> d!2259700 m!7948014))

(assert (=> b!7263398 m!7947978))

(declare-fun m!7948016 () Bool)

(assert (=> b!7263398 m!7948016))

(declare-fun m!7948018 () Bool)

(assert (=> b!7263399 m!7948018))

(assert (=> b!7263399 m!7947978))

(assert (=> b!7263399 m!7948018))

(declare-fun m!7948020 () Bool)

(assert (=> b!7263399 m!7948020))

(declare-fun m!7948022 () Bool)

(assert (=> b!7263399 m!7948022))

(assert (=> b!7263399 m!7948020))

(assert (=> b!7263399 m!7948022))

(declare-fun m!7948024 () Bool)

(assert (=> b!7263399 m!7948024))

(assert (=> start!708100 d!2259700))

(declare-fun bs!1909855 () Bool)

(declare-fun d!2259704 () Bool)

(assert (= bs!1909855 (and d!2259704 b!7263366)))

(declare-fun lambda!446996 () Int)

(assert (=> bs!1909855 (= lambda!446996 lambda!446982)))

(assert (=> d!2259704 (= (inv!89876 ct2!346) (forall!17583 (exprs!8186 ct2!346) lambda!446996))))

(declare-fun bs!1909856 () Bool)

(assert (= bs!1909856 d!2259704))

(declare-fun m!7948026 () Bool)

(assert (=> bs!1909856 m!7948026))

(assert (=> start!708100 d!2259704))

(declare-fun bs!1909857 () Bool)

(declare-fun d!2259706 () Bool)

(assert (= bs!1909857 (and d!2259706 b!7263366)))

(declare-fun lambda!446997 () Int)

(assert (=> bs!1909857 (= lambda!446997 lambda!446982)))

(declare-fun bs!1909858 () Bool)

(assert (= bs!1909858 (and d!2259706 d!2259704)))

(assert (=> bs!1909858 (= lambda!446997 lambda!446996)))

(assert (=> d!2259706 (= (inv!89876 ct1!250) (forall!17583 (exprs!8186 ct1!250) lambda!446997))))

(declare-fun bs!1909859 () Bool)

(assert (= bs!1909859 d!2259706))

(declare-fun m!7948028 () Bool)

(assert (=> bs!1909859 m!7948028))

(assert (=> start!708100 d!2259706))

(declare-fun d!2259708 () Bool)

(assert (=> d!2259708 (forall!17583 (++!16646 (exprs!8186 ct1!250) (exprs!8186 ct2!346)) lambda!446982)))

(declare-fun lt!2591550 () Unit!164110)

(declare-fun choose!56264 (List!70807 List!70807 Int) Unit!164110)

(assert (=> d!2259708 (= lt!2591550 (choose!56264 (exprs!8186 ct1!250) (exprs!8186 ct2!346) lambda!446982))))

(assert (=> d!2259708 (forall!17583 (exprs!8186 ct1!250) lambda!446982)))

(assert (=> d!2259708 (= (lemmaConcatPreservesForall!1503 (exprs!8186 ct1!250) (exprs!8186 ct2!346) lambda!446982) lt!2591550)))

(declare-fun bs!1909860 () Bool)

(assert (= bs!1909860 d!2259708))

(assert (=> bs!1909860 m!7947976))

(assert (=> bs!1909860 m!7947976))

(declare-fun m!7948030 () Bool)

(assert (=> bs!1909860 m!7948030))

(declare-fun m!7948032 () Bool)

(assert (=> bs!1909860 m!7948032))

(assert (=> bs!1909860 m!7947968))

(assert (=> b!7263366 d!2259708))

(declare-fun d!2259710 () Bool)

(declare-fun choose!56265 ((Set Context!15372) Int) (Set Context!15372))

(assert (=> d!2259710 (= (flatMap!2859 lt!2591530 lambda!446983) (choose!56265 lt!2591530 lambda!446983))))

(declare-fun bs!1909861 () Bool)

(assert (= bs!1909861 d!2259710))

(declare-fun m!7948034 () Bool)

(assert (=> bs!1909861 m!7948034))

(assert (=> b!7263366 d!2259710))

(declare-fun b!7263425 () Bool)

(declare-fun e!4355702 () Bool)

(declare-fun nullable!7950 (Regex!18746) Bool)

(assert (=> b!7263425 (= e!4355702 (nullable!7950 (h!77131 (exprs!8186 ct1!250))))))

(declare-fun b!7263426 () Bool)

(declare-fun e!4355700 () (Set Context!15372))

(declare-fun call!661819 () (Set Context!15372))

(assert (=> b!7263426 (= e!4355700 call!661819)))

(declare-fun bm!661814 () Bool)

(declare-fun derivationStepZipperDown!2684 (Regex!18746 Context!15372 C!37766) (Set Context!15372))

(assert (=> bm!661814 (= call!661819 (derivationStepZipperDown!2684 (h!77131 (exprs!8186 ct1!250)) (Context!15373 (t!384873 (exprs!8186 ct1!250))) (h!77132 s!7854)))))

(declare-fun b!7263427 () Bool)

(assert (=> b!7263427 (= e!4355700 (as set.empty (Set Context!15372)))))

(declare-fun b!7263429 () Bool)

(declare-fun e!4355701 () (Set Context!15372))

(assert (=> b!7263429 (= e!4355701 e!4355700)))

(declare-fun c!1351298 () Bool)

(assert (=> b!7263429 (= c!1351298 (is-Cons!70683 (exprs!8186 ct1!250)))))

(declare-fun b!7263428 () Bool)

(assert (=> b!7263428 (= e!4355701 (set.union call!661819 (derivationStepZipperUp!2516 (Context!15373 (t!384873 (exprs!8186 ct1!250))) (h!77132 s!7854))))))

(declare-fun d!2259712 () Bool)

(declare-fun c!1351297 () Bool)

(assert (=> d!2259712 (= c!1351297 e!4355702)))

(declare-fun res!2944853 () Bool)

(assert (=> d!2259712 (=> (not res!2944853) (not e!4355702))))

(assert (=> d!2259712 (= res!2944853 (is-Cons!70683 (exprs!8186 ct1!250)))))

(assert (=> d!2259712 (= (derivationStepZipperUp!2516 ct1!250 (h!77132 s!7854)) e!4355701)))

(assert (= (and d!2259712 res!2944853) b!7263425))

(assert (= (and d!2259712 c!1351297) b!7263428))

(assert (= (and d!2259712 (not c!1351297)) b!7263429))

(assert (= (and b!7263429 c!1351298) b!7263426))

(assert (= (and b!7263429 (not c!1351298)) b!7263427))

(assert (= (or b!7263428 b!7263426) bm!661814))

(declare-fun m!7948042 () Bool)

(assert (=> b!7263425 m!7948042))

(declare-fun m!7948044 () Bool)

(assert (=> bm!661814 m!7948044))

(declare-fun m!7948046 () Bool)

(assert (=> b!7263428 m!7948046))

(assert (=> b!7263366 d!2259712))

(declare-fun b!7263441 () Bool)

(declare-fun e!4355708 () Bool)

(declare-fun lt!2591556 () List!70807)

(assert (=> b!7263441 (= e!4355708 (or (not (= (exprs!8186 ct2!346) Nil!70683)) (= lt!2591556 (exprs!8186 ct1!250))))))

(declare-fun d!2259716 () Bool)

(assert (=> d!2259716 e!4355708))

(declare-fun res!2944859 () Bool)

(assert (=> d!2259716 (=> (not res!2944859) (not e!4355708))))

(declare-fun content!14734 (List!70807) (Set Regex!18746))

(assert (=> d!2259716 (= res!2944859 (= (content!14734 lt!2591556) (set.union (content!14734 (exprs!8186 ct1!250)) (content!14734 (exprs!8186 ct2!346)))))))

(declare-fun e!4355707 () List!70807)

(assert (=> d!2259716 (= lt!2591556 e!4355707)))

(declare-fun c!1351301 () Bool)

(assert (=> d!2259716 (= c!1351301 (is-Nil!70683 (exprs!8186 ct1!250)))))

(assert (=> d!2259716 (= (++!16646 (exprs!8186 ct1!250) (exprs!8186 ct2!346)) lt!2591556)))

(declare-fun b!7263438 () Bool)

(assert (=> b!7263438 (= e!4355707 (exprs!8186 ct2!346))))

(declare-fun b!7263440 () Bool)

(declare-fun res!2944858 () Bool)

(assert (=> b!7263440 (=> (not res!2944858) (not e!4355708))))

(declare-fun size!41782 (List!70807) Int)

(assert (=> b!7263440 (= res!2944858 (= (size!41782 lt!2591556) (+ (size!41782 (exprs!8186 ct1!250)) (size!41782 (exprs!8186 ct2!346)))))))

(declare-fun b!7263439 () Bool)

(assert (=> b!7263439 (= e!4355707 (Cons!70683 (h!77131 (exprs!8186 ct1!250)) (++!16646 (t!384873 (exprs!8186 ct1!250)) (exprs!8186 ct2!346))))))

(assert (= (and d!2259716 c!1351301) b!7263438))

(assert (= (and d!2259716 (not c!1351301)) b!7263439))

(assert (= (and d!2259716 res!2944859) b!7263440))

(assert (= (and b!7263440 res!2944858) b!7263441))

(declare-fun m!7948050 () Bool)

(assert (=> d!2259716 m!7948050))

(declare-fun m!7948052 () Bool)

(assert (=> d!2259716 m!7948052))

(declare-fun m!7948054 () Bool)

(assert (=> d!2259716 m!7948054))

(declare-fun m!7948058 () Bool)

(assert (=> b!7263440 m!7948058))

(declare-fun m!7948060 () Bool)

(assert (=> b!7263440 m!7948060))

(declare-fun m!7948062 () Bool)

(assert (=> b!7263440 m!7948062))

(declare-fun m!7948064 () Bool)

(assert (=> b!7263439 m!7948064))

(assert (=> b!7263366 d!2259716))

(declare-fun d!2259720 () Bool)

(declare-fun dynLambda!28853 (Int Context!15372) (Set Context!15372))

(assert (=> d!2259720 (= (flatMap!2859 lt!2591530 lambda!446983) (dynLambda!28853 lambda!446983 ct1!250))))

(declare-fun lt!2591559 () Unit!164110)

(declare-fun choose!56266 ((Set Context!15372) Context!15372 Int) Unit!164110)

(assert (=> d!2259720 (= lt!2591559 (choose!56266 lt!2591530 ct1!250 lambda!446983))))

(assert (=> d!2259720 (= lt!2591530 (set.insert ct1!250 (as set.empty (Set Context!15372))))))

(assert (=> d!2259720 (= (lemmaFlatMapOnSingletonSet!2259 lt!2591530 ct1!250 lambda!446983) lt!2591559)))

(declare-fun b_lambda!279447 () Bool)

(assert (=> (not b_lambda!279447) (not d!2259720)))

(declare-fun bs!1909863 () Bool)

(assert (= bs!1909863 d!2259720))

(assert (=> bs!1909863 m!7947970))

(declare-fun m!7948066 () Bool)

(assert (=> bs!1909863 m!7948066))

(declare-fun m!7948068 () Bool)

(assert (=> bs!1909863 m!7948068))

(assert (=> bs!1909863 m!7947974))

(assert (=> b!7263366 d!2259720))

(declare-fun b!7263442 () Bool)

(declare-fun e!4355711 () Bool)

(assert (=> b!7263442 (= e!4355711 (nullable!7950 (h!77131 (exprs!8186 (Context!15373 (++!16646 (exprs!8186 ct1!250) (exprs!8186 ct2!346)))))))))

(declare-fun b!7263443 () Bool)

(declare-fun e!4355709 () (Set Context!15372))

(declare-fun call!661820 () (Set Context!15372))

(assert (=> b!7263443 (= e!4355709 call!661820)))

(declare-fun bm!661815 () Bool)

(assert (=> bm!661815 (= call!661820 (derivationStepZipperDown!2684 (h!77131 (exprs!8186 (Context!15373 (++!16646 (exprs!8186 ct1!250) (exprs!8186 ct2!346))))) (Context!15373 (t!384873 (exprs!8186 (Context!15373 (++!16646 (exprs!8186 ct1!250) (exprs!8186 ct2!346)))))) (h!77132 s!7854)))))

(declare-fun b!7263444 () Bool)

(assert (=> b!7263444 (= e!4355709 (as set.empty (Set Context!15372)))))

(declare-fun b!7263446 () Bool)

(declare-fun e!4355710 () (Set Context!15372))

(assert (=> b!7263446 (= e!4355710 e!4355709)))

(declare-fun c!1351303 () Bool)

(assert (=> b!7263446 (= c!1351303 (is-Cons!70683 (exprs!8186 (Context!15373 (++!16646 (exprs!8186 ct1!250) (exprs!8186 ct2!346))))))))

(declare-fun b!7263445 () Bool)

(assert (=> b!7263445 (= e!4355710 (set.union call!661820 (derivationStepZipperUp!2516 (Context!15373 (t!384873 (exprs!8186 (Context!15373 (++!16646 (exprs!8186 ct1!250) (exprs!8186 ct2!346)))))) (h!77132 s!7854))))))

(declare-fun d!2259722 () Bool)

(declare-fun c!1351302 () Bool)

(assert (=> d!2259722 (= c!1351302 e!4355711)))

(declare-fun res!2944860 () Bool)

(assert (=> d!2259722 (=> (not res!2944860) (not e!4355711))))

(assert (=> d!2259722 (= res!2944860 (is-Cons!70683 (exprs!8186 (Context!15373 (++!16646 (exprs!8186 ct1!250) (exprs!8186 ct2!346))))))))

(assert (=> d!2259722 (= (derivationStepZipperUp!2516 (Context!15373 (++!16646 (exprs!8186 ct1!250) (exprs!8186 ct2!346))) (h!77132 s!7854)) e!4355710)))

(assert (= (and d!2259722 res!2944860) b!7263442))

(assert (= (and d!2259722 c!1351302) b!7263445))

(assert (= (and d!2259722 (not c!1351302)) b!7263446))

(assert (= (and b!7263446 c!1351303) b!7263443))

(assert (= (and b!7263446 (not c!1351303)) b!7263444))

(assert (= (or b!7263445 b!7263443) bm!661815))

(declare-fun m!7948070 () Bool)

(assert (=> b!7263442 m!7948070))

(declare-fun m!7948072 () Bool)

(assert (=> bm!661815 m!7948072))

(declare-fun m!7948074 () Bool)

(assert (=> b!7263445 m!7948074))

(assert (=> b!7263366 d!2259722))

(declare-fun d!2259724 () Bool)

(declare-fun res!2944865 () Bool)

(declare-fun e!4355716 () Bool)

(assert (=> d!2259724 (=> res!2944865 e!4355716)))

(assert (=> d!2259724 (= res!2944865 (is-Nil!70683 (exprs!8186 ct1!250)))))

(assert (=> d!2259724 (= (forall!17583 (exprs!8186 ct1!250) lambda!446982) e!4355716)))

(declare-fun b!7263451 () Bool)

(declare-fun e!4355717 () Bool)

(assert (=> b!7263451 (= e!4355716 e!4355717)))

(declare-fun res!2944866 () Bool)

(assert (=> b!7263451 (=> (not res!2944866) (not e!4355717))))

(declare-fun dynLambda!28854 (Int Regex!18746) Bool)

(assert (=> b!7263451 (= res!2944866 (dynLambda!28854 lambda!446982 (h!77131 (exprs!8186 ct1!250))))))

(declare-fun b!7263452 () Bool)

(assert (=> b!7263452 (= e!4355717 (forall!17583 (t!384873 (exprs!8186 ct1!250)) lambda!446982))))

(assert (= (and d!2259724 (not res!2944865)) b!7263451))

(assert (= (and b!7263451 res!2944866) b!7263452))

(declare-fun b_lambda!279449 () Bool)

(assert (=> (not b_lambda!279449) (not b!7263451)))

(declare-fun m!7948076 () Bool)

(assert (=> b!7263451 m!7948076))

(declare-fun m!7948078 () Bool)

(assert (=> b!7263452 m!7948078))

(assert (=> b!7263366 d!2259724))

(declare-fun bs!1909864 () Bool)

(declare-fun d!2259726 () Bool)

(assert (= bs!1909864 (and d!2259726 b!7263366)))

(declare-fun lambda!447000 () Int)

(assert (=> bs!1909864 (not (= lambda!447000 lambda!446982))))

(declare-fun bs!1909865 () Bool)

(assert (= bs!1909865 (and d!2259726 d!2259704)))

(assert (=> bs!1909865 (not (= lambda!447000 lambda!446996))))

(declare-fun bs!1909866 () Bool)

(assert (= bs!1909866 (and d!2259726 d!2259706)))

(assert (=> bs!1909866 (not (= lambda!447000 lambda!446997))))

(assert (=> d!2259726 (= (nullableContext!236 ct1!250) (forall!17583 (exprs!8186 ct1!250) lambda!447000))))

(declare-fun bs!1909867 () Bool)

(assert (= bs!1909867 d!2259726))

(declare-fun m!7948080 () Bool)

(assert (=> bs!1909867 m!7948080))

(assert (=> b!7263371 d!2259726))

(declare-fun b!7263465 () Bool)

(declare-fun e!4355724 () Bool)

(declare-fun tp!2039949 () Bool)

(declare-fun tp!2039950 () Bool)

(assert (=> b!7263465 (= e!4355724 (and tp!2039949 tp!2039950))))

(assert (=> b!7263368 (= tp!2039935 e!4355724)))

(assert (= (and b!7263368 (is-Cons!70683 (exprs!8186 ct2!346))) b!7263465))

(declare-fun b!7263470 () Bool)

(declare-fun e!4355727 () Bool)

(declare-fun tp!2039953 () Bool)

(assert (=> b!7263470 (= e!4355727 (and tp_is_empty!46957 tp!2039953))))

(assert (=> b!7263369 (= tp!2039933 e!4355727)))

(assert (= (and b!7263369 (is-Cons!70684 (t!384874 s!7854))) b!7263470))

(declare-fun b!7263471 () Bool)

(declare-fun e!4355728 () Bool)

(declare-fun tp!2039954 () Bool)

(declare-fun tp!2039955 () Bool)

(assert (=> b!7263471 (= e!4355728 (and tp!2039954 tp!2039955))))

(assert (=> b!7263370 (= tp!2039934 e!4355728)))

(assert (= (and b!7263370 (is-Cons!70683 (exprs!8186 ct1!250))) b!7263471))

(declare-fun b_lambda!279451 () Bool)

(assert (= b_lambda!279447 (or b!7263366 b_lambda!279451)))

(declare-fun bs!1909868 () Bool)

(declare-fun d!2259728 () Bool)

(assert (= bs!1909868 (and d!2259728 b!7263366)))

(assert (=> bs!1909868 (= (dynLambda!28853 lambda!446983 ct1!250) (derivationStepZipperUp!2516 ct1!250 (h!77132 s!7854)))))

(assert (=> bs!1909868 m!7947972))

(assert (=> d!2259720 d!2259728))

(declare-fun b_lambda!279453 () Bool)

(assert (= b_lambda!279449 (or b!7263366 b_lambda!279453)))

(declare-fun bs!1909869 () Bool)

(declare-fun d!2259730 () Bool)

(assert (= bs!1909869 (and d!2259730 b!7263366)))

(declare-fun validRegex!9559 (Regex!18746) Bool)

(assert (=> bs!1909869 (= (dynLambda!28854 lambda!446982 (h!77131 (exprs!8186 ct1!250))) (validRegex!9559 (h!77131 (exprs!8186 ct1!250))))))

(declare-fun m!7948082 () Bool)

(assert (=> bs!1909869 m!7948082))

(assert (=> b!7263451 d!2259730))

(push 1)

(assert (not bs!1909869))

(assert (not b_lambda!279453))

(assert (not d!2259708))

(assert (not d!2259704))

(assert (not b!7263445))

(assert (not b!7263398))

(assert (not b!7263471))

(assert (not bs!1909868))

(assert (not b!7263428))

(assert (not b!7263442))

(assert (not d!2259700))

(assert (not d!2259710))

(assert (not d!2259706))

(assert (not b!7263470))

(assert (not d!2259720))

(assert (not d!2259716))

(assert (not b!7263439))

(assert (not b!7263452))

(assert tp_is_empty!46957)

(assert (not bm!661815))

(assert (not b_lambda!279451))

(assert (not b!7263440))

(assert (not d!2259726))

(assert (not b!7263399))

(assert (not b!7263425))

(assert (not bm!661814))

(assert (not b!7263465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

