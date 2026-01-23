; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!698680 () Bool)

(assert start!698680)

(declare-fun b!7169651 () Bool)

(assert (=> b!7169651 true))

(declare-fun setRes!52976 () Bool)

(declare-fun setNonEmpty!52976 () Bool)

(declare-datatypes ((C!36934 0))(
  ( (C!36935 (val!28415 Int)) )
))
(declare-datatypes ((Regex!18330 0))(
  ( (ElementMatch!18330 (c!1335608 C!36934)) (Concat!27175 (regOne!37172 Regex!18330) (regTwo!37172 Regex!18330)) (EmptyExpr!18330) (Star!18330 (reg!18659 Regex!18330)) (EmptyLang!18330) (Union!18330 (regOne!37173 Regex!18330) (regTwo!37173 Regex!18330)) )
))
(declare-datatypes ((List!69728 0))(
  ( (Nil!69604) (Cons!69604 (h!76052 Regex!18330) (t!383747 List!69728)) )
))
(declare-datatypes ((Context!14564 0))(
  ( (Context!14565 (exprs!7782 List!69728)) )
))
(declare-fun setElem!52976 () Context!14564)

(declare-fun e!4306616 () Bool)

(declare-fun tp!1985953 () Bool)

(declare-fun inv!88848 (Context!14564) Bool)

(assert (=> setNonEmpty!52976 (= setRes!52976 (and tp!1985953 (inv!88848 setElem!52976) e!4306616))))

(declare-fun z!3530 () (Set Context!14564))

(declare-fun setRest!52976 () (Set Context!14564))

(assert (=> setNonEmpty!52976 (= z!3530 (set.union (set.insert setElem!52976 (as set.empty (Set Context!14564))) setRest!52976))))

(declare-fun b!7169646 () Bool)

(declare-fun res!2921851 () Bool)

(declare-fun e!4306618 () Bool)

(assert (=> b!7169646 (=> (not res!2921851) (not e!4306618))))

(declare-fun lt!2570291 () (Set Context!14564))

(assert (=> b!7169646 (= res!2921851 (not (= lt!2570291 (as set.empty (Set Context!14564)))))))

(declare-fun b!7169647 () Bool)

(declare-fun res!2921847 () Bool)

(declare-fun e!4306615 () Bool)

(assert (=> b!7169647 (=> (not res!2921847) (not e!4306615))))

(declare-fun focus!405 (Regex!18330) (Set Context!14564))

(assert (=> b!7169647 (= res!2921847 (not (= z!3530 (focus!405 EmptyExpr!18330))))))

(declare-fun b!7169648 () Bool)

(declare-fun e!4306619 () Bool)

(declare-fun tp_is_empty!46233 () Bool)

(declare-fun tp!1985952 () Bool)

(assert (=> b!7169648 (= e!4306619 (and tp_is_empty!46233 tp!1985952))))

(declare-fun b!7169649 () Bool)

(declare-fun e!4306617 () Bool)

(assert (=> b!7169649 (= e!4306617 e!4306618)))

(declare-fun res!2921849 () Bool)

(assert (=> b!7169649 (=> (not res!2921849) (not e!4306618))))

(declare-fun lt!2570292 () Context!14564)

(declare-fun lt!2570293 () C!36934)

(declare-fun derivationStepZipperUp!2316 (Context!14564 C!36934) (Set Context!14564))

(assert (=> b!7169649 (= res!2921849 (= (derivationStepZipperUp!2316 lt!2570292 lt!2570293) (as set.empty (Set Context!14564))))))

(declare-fun derivationStepZipper!3207 ((Set Context!14564) C!36934) (Set Context!14564))

(assert (=> b!7169649 (= lt!2570291 (derivationStepZipper!3207 z!3530 lt!2570293))))

(declare-datatypes ((List!69729 0))(
  ( (Nil!69605) (Cons!69605 (h!76053 C!36934) (t!383748 List!69729)) )
))
(declare-fun s!7967 () List!69729)

(declare-fun head!14634 (List!69729) C!36934)

(assert (=> b!7169649 (= lt!2570293 (head!14634 s!7967))))

(declare-fun b!7169650 () Bool)

(declare-fun tp!1985954 () Bool)

(assert (=> b!7169650 (= e!4306616 tp!1985954)))

(declare-fun setIsEmpty!52976 () Bool)

(assert (=> setIsEmpty!52976 setRes!52976))

(declare-fun res!2921848 () Bool)

(assert (=> start!698680 (=> (not res!2921848) (not e!4306615))))

(declare-datatypes ((List!69730 0))(
  ( (Nil!69606) (Cons!69606 (h!76054 Context!14564) (t!383749 List!69730)) )
))
(declare-fun unfocusZipper!2590 (List!69730) Regex!18330)

(declare-fun toList!11273 ((Set Context!14564)) List!69730)

(assert (=> start!698680 (= res!2921848 (= (unfocusZipper!2590 (toList!11273 z!3530)) EmptyExpr!18330))))

(assert (=> start!698680 e!4306615))

(declare-fun condSetEmpty!52976 () Bool)

(assert (=> start!698680 (= condSetEmpty!52976 (= z!3530 (as set.empty (Set Context!14564))))))

(assert (=> start!698680 setRes!52976))

(assert (=> start!698680 e!4306619))

(declare-fun lambda!437115 () Int)

(declare-fun head!14635 (List!69730) Context!14564)

(declare-fun flatMap!2658 ((Set Context!14564) Int) (Set Context!14564))

(assert (=> b!7169651 (= e!4306618 (not (set.member (head!14635 (toList!11273 lt!2570291)) (flatMap!2658 z!3530 lambda!437115))))))

(declare-fun b!7169652 () Bool)

(assert (=> b!7169652 (= e!4306615 e!4306617)))

(declare-fun res!2921850 () Bool)

(assert (=> b!7169652 (=> (not res!2921850) (not e!4306617))))

(assert (=> b!7169652 (= res!2921850 (= z!3530 (set.insert lt!2570292 (as set.empty (Set Context!14564)))))))

(assert (=> b!7169652 (= lt!2570292 (Context!14565 Nil!69604))))

(declare-fun b!7169653 () Bool)

(declare-fun res!2921846 () Bool)

(assert (=> b!7169653 (=> (not res!2921846) (not e!4306617))))

(declare-fun isEmpty!40190 (List!69729) Bool)

(assert (=> b!7169653 (= res!2921846 (not (isEmpty!40190 s!7967)))))

(assert (= (and start!698680 res!2921848) b!7169647))

(assert (= (and b!7169647 res!2921847) b!7169652))

(assert (= (and b!7169652 res!2921850) b!7169653))

(assert (= (and b!7169653 res!2921846) b!7169649))

(assert (= (and b!7169649 res!2921849) b!7169646))

(assert (= (and b!7169646 res!2921851) b!7169651))

(assert (= (and start!698680 condSetEmpty!52976) setIsEmpty!52976))

(assert (= (and start!698680 (not condSetEmpty!52976)) setNonEmpty!52976))

(assert (= setNonEmpty!52976 b!7169650))

(assert (= (and start!698680 (is-Cons!69605 s!7967)) b!7169648))

(declare-fun m!7871976 () Bool)

(assert (=> start!698680 m!7871976))

(assert (=> start!698680 m!7871976))

(declare-fun m!7871978 () Bool)

(assert (=> start!698680 m!7871978))

(declare-fun m!7871980 () Bool)

(assert (=> b!7169653 m!7871980))

(declare-fun m!7871982 () Bool)

(assert (=> b!7169647 m!7871982))

(declare-fun m!7871984 () Bool)

(assert (=> b!7169651 m!7871984))

(assert (=> b!7169651 m!7871984))

(declare-fun m!7871986 () Bool)

(assert (=> b!7169651 m!7871986))

(declare-fun m!7871988 () Bool)

(assert (=> b!7169651 m!7871988))

(assert (=> b!7169651 m!7871986))

(declare-fun m!7871990 () Bool)

(assert (=> b!7169651 m!7871990))

(declare-fun m!7871992 () Bool)

(assert (=> b!7169649 m!7871992))

(declare-fun m!7871994 () Bool)

(assert (=> b!7169649 m!7871994))

(declare-fun m!7871996 () Bool)

(assert (=> b!7169649 m!7871996))

(declare-fun m!7871998 () Bool)

(assert (=> b!7169652 m!7871998))

(declare-fun m!7872000 () Bool)

(assert (=> setNonEmpty!52976 m!7872000))

(push 1)

(assert (not b!7169649))

(assert (not b!7169651))

(assert (not b!7169648))

(assert (not setNonEmpty!52976))

(assert (not b!7169653))

(assert (not start!698680))

(assert (not b!7169647))

(assert tp_is_empty!46233)

(assert (not b!7169650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2233426 () Bool)

(declare-fun lambda!437121 () Int)

(declare-fun forall!17160 (List!69728 Int) Bool)

(assert (=> d!2233426 (= (inv!88848 setElem!52976) (forall!17160 (exprs!7782 setElem!52976) lambda!437121))))

(declare-fun bs!1893106 () Bool)

(assert (= bs!1893106 d!2233426))

(declare-fun m!7872028 () Bool)

(assert (=> bs!1893106 m!7872028))

(assert (=> setNonEmpty!52976 d!2233426))

(declare-fun d!2233428 () Bool)

(assert (=> d!2233428 (= (isEmpty!40190 s!7967) (is-Nil!69605 s!7967))))

(assert (=> b!7169653 d!2233428))

(declare-fun b!7169692 () Bool)

(declare-fun e!4306642 () (Set Context!14564))

(declare-fun call!653159 () (Set Context!14564))

(assert (=> b!7169692 (= e!4306642 call!653159)))

(declare-fun e!4306641 () (Set Context!14564))

(declare-fun b!7169693 () Bool)

(assert (=> b!7169693 (= e!4306641 (set.union call!653159 (derivationStepZipperUp!2316 (Context!14565 (t!383747 (exprs!7782 lt!2570292))) lt!2570293)))))

(declare-fun d!2233430 () Bool)

(declare-fun c!1335614 () Bool)

(declare-fun e!4306643 () Bool)

(assert (=> d!2233430 (= c!1335614 e!4306643)))

(declare-fun res!2921872 () Bool)

(assert (=> d!2233430 (=> (not res!2921872) (not e!4306643))))

(assert (=> d!2233430 (= res!2921872 (is-Cons!69604 (exprs!7782 lt!2570292)))))

(assert (=> d!2233430 (= (derivationStepZipperUp!2316 lt!2570292 lt!2570293) e!4306641)))

(declare-fun b!7169694 () Bool)

(declare-fun nullable!7766 (Regex!18330) Bool)

(assert (=> b!7169694 (= e!4306643 (nullable!7766 (h!76052 (exprs!7782 lt!2570292))))))

(declare-fun b!7169695 () Bool)

(assert (=> b!7169695 (= e!4306641 e!4306642)))

(declare-fun c!1335615 () Bool)

(assert (=> b!7169695 (= c!1335615 (is-Cons!69604 (exprs!7782 lt!2570292)))))

(declare-fun bm!653154 () Bool)

(declare-fun derivationStepZipperDown!2506 (Regex!18330 Context!14564 C!36934) (Set Context!14564))

(assert (=> bm!653154 (= call!653159 (derivationStepZipperDown!2506 (h!76052 (exprs!7782 lt!2570292)) (Context!14565 (t!383747 (exprs!7782 lt!2570292))) lt!2570293))))

(declare-fun b!7169696 () Bool)

(assert (=> b!7169696 (= e!4306642 (as set.empty (Set Context!14564)))))

(assert (= (and d!2233430 res!2921872) b!7169694))

(assert (= (and d!2233430 c!1335614) b!7169693))

(assert (= (and d!2233430 (not c!1335614)) b!7169695))

(assert (= (and b!7169695 c!1335615) b!7169692))

(assert (= (and b!7169695 (not c!1335615)) b!7169696))

(assert (= (or b!7169693 b!7169692) bm!653154))

(declare-fun m!7872030 () Bool)

(assert (=> b!7169693 m!7872030))

(declare-fun m!7872032 () Bool)

(assert (=> b!7169694 m!7872032))

(declare-fun m!7872034 () Bool)

(assert (=> bm!653154 m!7872034))

(assert (=> b!7169649 d!2233430))

(declare-fun bs!1893107 () Bool)

(declare-fun d!2233432 () Bool)

(assert (= bs!1893107 (and d!2233432 b!7169651)))

(declare-fun lambda!437124 () Int)

(assert (=> bs!1893107 (= lambda!437124 lambda!437115)))

(assert (=> d!2233432 true))

(assert (=> d!2233432 (= (derivationStepZipper!3207 z!3530 lt!2570293) (flatMap!2658 z!3530 lambda!437124))))

(declare-fun bs!1893108 () Bool)

(assert (= bs!1893108 d!2233432))

(declare-fun m!7872036 () Bool)

(assert (=> bs!1893108 m!7872036))

(assert (=> b!7169649 d!2233432))

(declare-fun d!2233434 () Bool)

(assert (=> d!2233434 (= (head!14634 s!7967) (h!76053 s!7967))))

(assert (=> b!7169649 d!2233434))

(declare-fun d!2233436 () Bool)

(declare-fun e!4306646 () Bool)

(assert (=> d!2233436 e!4306646))

(declare-fun res!2921876 () Bool)

(assert (=> d!2233436 (=> (not res!2921876) (not e!4306646))))

(declare-fun validRegex!9455 (Regex!18330) Bool)

(assert (=> d!2233436 (= res!2921876 (validRegex!9455 EmptyExpr!18330))))

(assert (=> d!2233436 (= (focus!405 EmptyExpr!18330) (set.insert (Context!14565 (Cons!69604 EmptyExpr!18330 Nil!69604)) (as set.empty (Set Context!14564))))))

(declare-fun b!7169699 () Bool)

(assert (=> b!7169699 (= e!4306646 (= (unfocusZipper!2590 (toList!11273 (set.insert (Context!14565 (Cons!69604 EmptyExpr!18330 Nil!69604)) (as set.empty (Set Context!14564))))) EmptyExpr!18330))))

(assert (= (and d!2233436 res!2921876) b!7169699))

(declare-fun m!7872038 () Bool)

(assert (=> d!2233436 m!7872038))

(declare-fun m!7872040 () Bool)

(assert (=> d!2233436 m!7872040))

(assert (=> b!7169699 m!7872040))

(assert (=> b!7169699 m!7872040))

(declare-fun m!7872042 () Bool)

(assert (=> b!7169699 m!7872042))

(assert (=> b!7169699 m!7872042))

(declare-fun m!7872044 () Bool)

(assert (=> b!7169699 m!7872044))

(assert (=> b!7169647 d!2233436))

(declare-fun d!2233438 () Bool)

(declare-fun lt!2570305 () Regex!18330)

(assert (=> d!2233438 (validRegex!9455 lt!2570305)))

(declare-fun generalisedUnion!2758 (List!69728) Regex!18330)

(declare-fun unfocusZipperList!2314 (List!69730) List!69728)

(assert (=> d!2233438 (= lt!2570305 (generalisedUnion!2758 (unfocusZipperList!2314 (toList!11273 z!3530))))))

(assert (=> d!2233438 (= (unfocusZipper!2590 (toList!11273 z!3530)) lt!2570305)))

(declare-fun bs!1893109 () Bool)

(assert (= bs!1893109 d!2233438))

(declare-fun m!7872046 () Bool)

(assert (=> bs!1893109 m!7872046))

(assert (=> bs!1893109 m!7871976))

(declare-fun m!7872048 () Bool)

(assert (=> bs!1893109 m!7872048))

(assert (=> bs!1893109 m!7872048))

(declare-fun m!7872050 () Bool)

(assert (=> bs!1893109 m!7872050))

(assert (=> start!698680 d!2233438))

(declare-fun d!2233442 () Bool)

(declare-fun e!4306649 () Bool)

(assert (=> d!2233442 e!4306649))

(declare-fun res!2921880 () Bool)

(assert (=> d!2233442 (=> (not res!2921880) (not e!4306649))))

(declare-fun lt!2570308 () List!69730)

(declare-fun noDuplicate!2874 (List!69730) Bool)

(assert (=> d!2233442 (= res!2921880 (noDuplicate!2874 lt!2570308))))

(declare-fun choose!55360 ((Set Context!14564)) List!69730)

(assert (=> d!2233442 (= lt!2570308 (choose!55360 z!3530))))

(assert (=> d!2233442 (= (toList!11273 z!3530) lt!2570308)))

(declare-fun b!7169702 () Bool)

(declare-fun content!14303 (List!69730) (Set Context!14564))

(assert (=> b!7169702 (= e!4306649 (= (content!14303 lt!2570308) z!3530))))

(assert (= (and d!2233442 res!2921880) b!7169702))

(declare-fun m!7872052 () Bool)

(assert (=> d!2233442 m!7872052))

(declare-fun m!7872054 () Bool)

(assert (=> d!2233442 m!7872054))

(declare-fun m!7872056 () Bool)

(assert (=> b!7169702 m!7872056))

(assert (=> start!698680 d!2233442))

(declare-fun d!2233444 () Bool)

(assert (=> d!2233444 (= (head!14635 (toList!11273 lt!2570291)) (h!76054 (toList!11273 lt!2570291)))))

(assert (=> b!7169651 d!2233444))

(declare-fun d!2233446 () Bool)

(declare-fun e!4306650 () Bool)

(assert (=> d!2233446 e!4306650))

(declare-fun res!2921881 () Bool)

(assert (=> d!2233446 (=> (not res!2921881) (not e!4306650))))

(declare-fun lt!2570309 () List!69730)

(assert (=> d!2233446 (= res!2921881 (noDuplicate!2874 lt!2570309))))

(assert (=> d!2233446 (= lt!2570309 (choose!55360 lt!2570291))))

(assert (=> d!2233446 (= (toList!11273 lt!2570291) lt!2570309)))

(declare-fun b!7169703 () Bool)

(assert (=> b!7169703 (= e!4306650 (= (content!14303 lt!2570309) lt!2570291))))

(assert (= (and d!2233446 res!2921881) b!7169703))

(declare-fun m!7872058 () Bool)

(assert (=> d!2233446 m!7872058))

(declare-fun m!7872060 () Bool)

(assert (=> d!2233446 m!7872060))

(declare-fun m!7872062 () Bool)

(assert (=> b!7169703 m!7872062))

(assert (=> b!7169651 d!2233446))

(declare-fun d!2233448 () Bool)

(declare-fun choose!55361 ((Set Context!14564) Int) (Set Context!14564))

(assert (=> d!2233448 (= (flatMap!2658 z!3530 lambda!437115) (choose!55361 z!3530 lambda!437115))))

(declare-fun bs!1893110 () Bool)

(assert (= bs!1893110 d!2233448))

(declare-fun m!7872064 () Bool)

(assert (=> bs!1893110 m!7872064))

(assert (=> b!7169651 d!2233448))

(declare-fun b!7169708 () Bool)

(declare-fun e!4306653 () Bool)

(declare-fun tp!1985968 () Bool)

(declare-fun tp!1985969 () Bool)

(assert (=> b!7169708 (= e!4306653 (and tp!1985968 tp!1985969))))

(assert (=> b!7169650 (= tp!1985954 e!4306653)))

(assert (= (and b!7169650 (is-Cons!69604 (exprs!7782 setElem!52976))) b!7169708))

(declare-fun condSetEmpty!52982 () Bool)

(assert (=> setNonEmpty!52976 (= condSetEmpty!52982 (= setRest!52976 (as set.empty (Set Context!14564))))))

(declare-fun setRes!52982 () Bool)

(assert (=> setNonEmpty!52976 (= tp!1985953 setRes!52982)))

(declare-fun setIsEmpty!52982 () Bool)

(assert (=> setIsEmpty!52982 setRes!52982))

(declare-fun setNonEmpty!52982 () Bool)

(declare-fun e!4306656 () Bool)

(declare-fun setElem!52982 () Context!14564)

(declare-fun tp!1985975 () Bool)

(assert (=> setNonEmpty!52982 (= setRes!52982 (and tp!1985975 (inv!88848 setElem!52982) e!4306656))))

(declare-fun setRest!52982 () (Set Context!14564))

(assert (=> setNonEmpty!52982 (= setRest!52976 (set.union (set.insert setElem!52982 (as set.empty (Set Context!14564))) setRest!52982))))

(declare-fun b!7169713 () Bool)

(declare-fun tp!1985974 () Bool)

(assert (=> b!7169713 (= e!4306656 tp!1985974)))

(assert (= (and setNonEmpty!52976 condSetEmpty!52982) setIsEmpty!52982))

(assert (= (and setNonEmpty!52976 (not condSetEmpty!52982)) setNonEmpty!52982))

(assert (= setNonEmpty!52982 b!7169713))

(declare-fun m!7872066 () Bool)

(assert (=> setNonEmpty!52982 m!7872066))

(declare-fun b!7169718 () Bool)

(declare-fun e!4306659 () Bool)

(declare-fun tp!1985978 () Bool)

(assert (=> b!7169718 (= e!4306659 (and tp_is_empty!46233 tp!1985978))))

(assert (=> b!7169648 (= tp!1985952 e!4306659)))

(assert (= (and b!7169648 (is-Cons!69605 (t!383748 s!7967))) b!7169718))

(push 1)

(assert (not d!2233436))

(assert (not d!2233432))

(assert (not d!2233446))

(assert (not d!2233438))

(assert (not d!2233426))

(assert (not b!7169713))

(assert (not b!7169708))

(assert (not b!7169699))

(assert (not bm!653154))

(assert (not b!7169694))

(assert (not d!2233448))

(assert (not b!7169703))

(assert (not d!2233442))

(assert (not b!7169702))

(assert (not b!7169693))

(assert (not setNonEmpty!52982))

(assert (not b!7169718))

(assert tp_is_empty!46233)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2233470 () Bool)

(declare-fun res!2921896 () Bool)

(declare-fun e!4306689 () Bool)

(assert (=> d!2233470 (=> res!2921896 e!4306689)))

(assert (=> d!2233470 (= res!2921896 (is-Nil!69604 (exprs!7782 setElem!52976)))))

(assert (=> d!2233470 (= (forall!17160 (exprs!7782 setElem!52976) lambda!437121) e!4306689)))

(declare-fun b!7169760 () Bool)

(declare-fun e!4306690 () Bool)

(assert (=> b!7169760 (= e!4306689 e!4306690)))

(declare-fun res!2921897 () Bool)

(assert (=> b!7169760 (=> (not res!2921897) (not e!4306690))))

(declare-fun dynLambda!28345 (Int Regex!18330) Bool)

(assert (=> b!7169760 (= res!2921897 (dynLambda!28345 lambda!437121 (h!76052 (exprs!7782 setElem!52976))))))

(declare-fun b!7169761 () Bool)

(assert (=> b!7169761 (= e!4306690 (forall!17160 (t!383747 (exprs!7782 setElem!52976)) lambda!437121))))

(assert (= (and d!2233470 (not res!2921896)) b!7169760))

(assert (= (and b!7169760 res!2921897) b!7169761))

(declare-fun b_lambda!274079 () Bool)

(assert (=> (not b_lambda!274079) (not b!7169760)))

(declare-fun m!7872108 () Bool)

(assert (=> b!7169760 m!7872108))

(declare-fun m!7872110 () Bool)

(assert (=> b!7169761 m!7872110))

(assert (=> d!2233426 d!2233470))

(declare-fun b!7169784 () Bool)

(declare-fun e!4306705 () (Set Context!14564))

(declare-fun call!653175 () (Set Context!14564))

(declare-fun call!653179 () (Set Context!14564))

(assert (=> b!7169784 (= e!4306705 (set.union call!653175 call!653179))))

(declare-fun c!1335637 () Bool)

(declare-fun call!653180 () List!69728)

(declare-fun bm!653170 () Bool)

(declare-fun c!1335639 () Bool)

(declare-fun $colon$colon!2839 (List!69728 Regex!18330) List!69728)

(assert (=> bm!653170 (= call!653180 ($colon$colon!2839 (exprs!7782 (Context!14565 (t!383747 (exprs!7782 lt!2570292)))) (ite (or c!1335639 c!1335637) (regTwo!37172 (h!76052 (exprs!7782 lt!2570292))) (h!76052 (exprs!7782 lt!2570292)))))))

(declare-fun b!7169785 () Bool)

(declare-fun e!4306703 () (Set Context!14564))

(assert (=> b!7169785 (= e!4306703 (as set.empty (Set Context!14564)))))

(declare-fun call!653177 () List!69728)

(declare-fun call!653176 () (Set Context!14564))

(declare-fun bm!653171 () Bool)

(declare-fun c!1335638 () Bool)

(assert (=> bm!653171 (= call!653176 (derivationStepZipperDown!2506 (ite c!1335638 (regOne!37173 (h!76052 (exprs!7782 lt!2570292))) (ite c!1335639 (regTwo!37172 (h!76052 (exprs!7782 lt!2570292))) (ite c!1335637 (regOne!37172 (h!76052 (exprs!7782 lt!2570292))) (reg!18659 (h!76052 (exprs!7782 lt!2570292)))))) (ite (or c!1335638 c!1335639) (Context!14565 (t!383747 (exprs!7782 lt!2570292))) (Context!14565 call!653177)) lt!2570293))))

(declare-fun b!7169787 () Bool)

(declare-fun e!4306708 () (Set Context!14564))

(declare-fun call!653178 () (Set Context!14564))

(assert (=> b!7169787 (= e!4306708 call!653178)))

(declare-fun bm!653172 () Bool)

(assert (=> bm!653172 (= call!653175 (derivationStepZipperDown!2506 (ite c!1335638 (regTwo!37173 (h!76052 (exprs!7782 lt!2570292))) (regOne!37172 (h!76052 (exprs!7782 lt!2570292)))) (ite c!1335638 (Context!14565 (t!383747 (exprs!7782 lt!2570292))) (Context!14565 call!653180)) lt!2570293))))

(declare-fun b!7169788 () Bool)

(assert (=> b!7169788 (= e!4306705 e!4306708)))

(assert (=> b!7169788 (= c!1335637 (is-Concat!27175 (h!76052 (exprs!7782 lt!2570292))))))

(declare-fun b!7169789 () Bool)

(declare-fun e!4306704 () Bool)

(assert (=> b!7169789 (= c!1335639 e!4306704)))

(declare-fun res!2921900 () Bool)

(assert (=> b!7169789 (=> (not res!2921900) (not e!4306704))))

(assert (=> b!7169789 (= res!2921900 (is-Concat!27175 (h!76052 (exprs!7782 lt!2570292))))))

(declare-fun e!4306706 () (Set Context!14564))

(assert (=> b!7169789 (= e!4306706 e!4306705)))

(declare-fun bm!653173 () Bool)

(assert (=> bm!653173 (= call!653177 call!653180)))

(declare-fun b!7169790 () Bool)

(assert (=> b!7169790 (= e!4306703 call!653178)))

(declare-fun b!7169791 () Bool)

(declare-fun c!1335636 () Bool)

(assert (=> b!7169791 (= c!1335636 (is-Star!18330 (h!76052 (exprs!7782 lt!2570292))))))

(assert (=> b!7169791 (= e!4306708 e!4306703)))

(declare-fun d!2233472 () Bool)

(declare-fun c!1335640 () Bool)

(assert (=> d!2233472 (= c!1335640 (and (is-ElementMatch!18330 (h!76052 (exprs!7782 lt!2570292))) (= (c!1335608 (h!76052 (exprs!7782 lt!2570292))) lt!2570293)))))

(declare-fun e!4306707 () (Set Context!14564))

(assert (=> d!2233472 (= (derivationStepZipperDown!2506 (h!76052 (exprs!7782 lt!2570292)) (Context!14565 (t!383747 (exprs!7782 lt!2570292))) lt!2570293) e!4306707)))

(declare-fun b!7169786 () Bool)

(assert (=> b!7169786 (= e!4306707 e!4306706)))

(assert (=> b!7169786 (= c!1335638 (is-Union!18330 (h!76052 (exprs!7782 lt!2570292))))))

(declare-fun b!7169792 () Bool)

(assert (=> b!7169792 (= e!4306704 (nullable!7766 (regOne!37172 (h!76052 (exprs!7782 lt!2570292)))))))

(declare-fun bm!653174 () Bool)

(assert (=> bm!653174 (= call!653179 call!653176)))

(declare-fun b!7169793 () Bool)

(assert (=> b!7169793 (= e!4306706 (set.union call!653176 call!653175))))

(declare-fun bm!653175 () Bool)

(assert (=> bm!653175 (= call!653178 call!653179)))

(declare-fun b!7169794 () Bool)

(assert (=> b!7169794 (= e!4306707 (set.insert (Context!14565 (t!383747 (exprs!7782 lt!2570292))) (as set.empty (Set Context!14564))))))

(assert (= (and d!2233472 c!1335640) b!7169794))

(assert (= (and d!2233472 (not c!1335640)) b!7169786))

(assert (= (and b!7169786 c!1335638) b!7169793))

(assert (= (and b!7169786 (not c!1335638)) b!7169789))

(assert (= (and b!7169789 res!2921900) b!7169792))

(assert (= (and b!7169789 c!1335639) b!7169784))

(assert (= (and b!7169789 (not c!1335639)) b!7169788))

(assert (= (and b!7169788 c!1335637) b!7169787))

(assert (= (and b!7169788 (not c!1335637)) b!7169791))

(assert (= (and b!7169791 c!1335636) b!7169790))

(assert (= (and b!7169791 (not c!1335636)) b!7169785))

(assert (= (or b!7169787 b!7169790) bm!653173))

(assert (= (or b!7169787 b!7169790) bm!653175))

(assert (= (or b!7169784 bm!653175) bm!653174))

(assert (= (or b!7169784 bm!653173) bm!653170))

(assert (= (or b!7169793 b!7169784) bm!653172))

(assert (= (or b!7169793 bm!653174) bm!653171))

(declare-fun m!7872112 () Bool)

(assert (=> bm!653172 m!7872112))

(declare-fun m!7872114 () Bool)

(assert (=> bm!653170 m!7872114))

(declare-fun m!7872116 () Bool)

(assert (=> b!7169792 m!7872116))

(declare-fun m!7872118 () Bool)

(assert (=> bm!653171 m!7872118))

(declare-fun m!7872120 () Bool)

(assert (=> b!7169794 m!7872120))

(assert (=> bm!653154 d!2233472))

(declare-fun d!2233474 () Bool)

(declare-fun nullableFct!3033 (Regex!18330) Bool)

(assert (=> d!2233474 (= (nullable!7766 (h!76052 (exprs!7782 lt!2570292))) (nullableFct!3033 (h!76052 (exprs!7782 lt!2570292))))))

(declare-fun bs!1893116 () Bool)

(assert (= bs!1893116 d!2233474))

(declare-fun m!7872122 () Bool)

(assert (=> bs!1893116 m!7872122))

(assert (=> b!7169694 d!2233474))

(declare-fun d!2233476 () Bool)

(declare-fun c!1335643 () Bool)

(assert (=> d!2233476 (= c!1335643 (is-Nil!69606 lt!2570308))))

(declare-fun e!4306711 () (Set Context!14564))

(assert (=> d!2233476 (= (content!14303 lt!2570308) e!4306711)))

(declare-fun b!7169799 () Bool)

(assert (=> b!7169799 (= e!4306711 (as set.empty (Set Context!14564)))))

(declare-fun b!7169800 () Bool)

(assert (=> b!7169800 (= e!4306711 (set.union (set.insert (h!76054 lt!2570308) (as set.empty (Set Context!14564))) (content!14303 (t!383749 lt!2570308))))))

(assert (= (and d!2233476 c!1335643) b!7169799))

(assert (= (and d!2233476 (not c!1335643)) b!7169800))

(declare-fun m!7872124 () Bool)

(assert (=> b!7169800 m!7872124))

(declare-fun m!7872126 () Bool)

(assert (=> b!7169800 m!7872126))

(assert (=> b!7169702 d!2233476))

(declare-fun d!2233478 () Bool)

(declare-fun lt!2570317 () Regex!18330)

(assert (=> d!2233478 (validRegex!9455 lt!2570317)))

(assert (=> d!2233478 (= lt!2570317 (generalisedUnion!2758 (unfocusZipperList!2314 (toList!11273 (set.insert (Context!14565 (Cons!69604 EmptyExpr!18330 Nil!69604)) (as set.empty (Set Context!14564)))))))))

(assert (=> d!2233478 (= (unfocusZipper!2590 (toList!11273 (set.insert (Context!14565 (Cons!69604 EmptyExpr!18330 Nil!69604)) (as set.empty (Set Context!14564))))) lt!2570317)))

(declare-fun bs!1893117 () Bool)

(assert (= bs!1893117 d!2233478))

(declare-fun m!7872128 () Bool)

(assert (=> bs!1893117 m!7872128))

(assert (=> bs!1893117 m!7872042))

(declare-fun m!7872130 () Bool)

(assert (=> bs!1893117 m!7872130))

(assert (=> bs!1893117 m!7872130))

(declare-fun m!7872132 () Bool)

(assert (=> bs!1893117 m!7872132))

(assert (=> b!7169699 d!2233478))

(declare-fun d!2233480 () Bool)

(declare-fun e!4306712 () Bool)

(assert (=> d!2233480 e!4306712))

(declare-fun res!2921901 () Bool)

(assert (=> d!2233480 (=> (not res!2921901) (not e!4306712))))

(declare-fun lt!2570318 () List!69730)

(assert (=> d!2233480 (= res!2921901 (noDuplicate!2874 lt!2570318))))

(assert (=> d!2233480 (= lt!2570318 (choose!55360 (set.insert (Context!14565 (Cons!69604 EmptyExpr!18330 Nil!69604)) (as set.empty (Set Context!14564)))))))

(assert (=> d!2233480 (= (toList!11273 (set.insert (Context!14565 (Cons!69604 EmptyExpr!18330 Nil!69604)) (as set.empty (Set Context!14564)))) lt!2570318)))

(declare-fun b!7169801 () Bool)

(assert (=> b!7169801 (= e!4306712 (= (content!14303 lt!2570318) (set.insert (Context!14565 (Cons!69604 EmptyExpr!18330 Nil!69604)) (as set.empty (Set Context!14564)))))))

(assert (= (and d!2233480 res!2921901) b!7169801))

(declare-fun m!7872134 () Bool)

(assert (=> d!2233480 m!7872134))

(assert (=> d!2233480 m!7872040))

(declare-fun m!7872136 () Bool)

(assert (=> d!2233480 m!7872136))

(declare-fun m!7872138 () Bool)

(assert (=> b!7169801 m!7872138))

(assert (=> b!7169699 d!2233480))

(declare-fun bs!1893118 () Bool)

(declare-fun d!2233482 () Bool)

(assert (= bs!1893118 (and d!2233482 d!2233426)))

(declare-fun lambda!437131 () Int)

(assert (=> bs!1893118 (= lambda!437131 lambda!437121)))

(assert (=> d!2233482 (= (inv!88848 setElem!52982) (forall!17160 (exprs!7782 setElem!52982) lambda!437131))))

(declare-fun bs!1893119 () Bool)

(assert (= bs!1893119 d!2233482))

(declare-fun m!7872140 () Bool)

(assert (=> bs!1893119 m!7872140))

(assert (=> setNonEmpty!52982 d!2233482))

(declare-fun d!2233484 () Bool)

(assert (=> d!2233484 (= (flatMap!2658 z!3530 lambda!437124) (choose!55361 z!3530 lambda!437124))))

(declare-fun bs!1893120 () Bool)

(assert (= bs!1893120 d!2233484))

(declare-fun m!7872142 () Bool)

(assert (=> bs!1893120 m!7872142))

(assert (=> d!2233432 d!2233484))

(declare-fun b!7169802 () Bool)

(declare-fun e!4306714 () (Set Context!14564))

(declare-fun call!653181 () (Set Context!14564))

(assert (=> b!7169802 (= e!4306714 call!653181)))

(declare-fun b!7169803 () Bool)

(declare-fun e!4306713 () (Set Context!14564))

(assert (=> b!7169803 (= e!4306713 (set.union call!653181 (derivationStepZipperUp!2316 (Context!14565 (t!383747 (exprs!7782 (Context!14565 (t!383747 (exprs!7782 lt!2570292)))))) lt!2570293)))))

(declare-fun d!2233486 () Bool)

(declare-fun c!1335644 () Bool)

(declare-fun e!4306715 () Bool)

(assert (=> d!2233486 (= c!1335644 e!4306715)))

(declare-fun res!2921902 () Bool)

(assert (=> d!2233486 (=> (not res!2921902) (not e!4306715))))

(assert (=> d!2233486 (= res!2921902 (is-Cons!69604 (exprs!7782 (Context!14565 (t!383747 (exprs!7782 lt!2570292))))))))

(assert (=> d!2233486 (= (derivationStepZipperUp!2316 (Context!14565 (t!383747 (exprs!7782 lt!2570292))) lt!2570293) e!4306713)))

(declare-fun b!7169804 () Bool)

(assert (=> b!7169804 (= e!4306715 (nullable!7766 (h!76052 (exprs!7782 (Context!14565 (t!383747 (exprs!7782 lt!2570292)))))))))

(declare-fun b!7169805 () Bool)

(assert (=> b!7169805 (= e!4306713 e!4306714)))

(declare-fun c!1335645 () Bool)

(assert (=> b!7169805 (= c!1335645 (is-Cons!69604 (exprs!7782 (Context!14565 (t!383747 (exprs!7782 lt!2570292))))))))

(declare-fun bm!653176 () Bool)

(assert (=> bm!653176 (= call!653181 (derivationStepZipperDown!2506 (h!76052 (exprs!7782 (Context!14565 (t!383747 (exprs!7782 lt!2570292))))) (Context!14565 (t!383747 (exprs!7782 (Context!14565 (t!383747 (exprs!7782 lt!2570292)))))) lt!2570293))))

(declare-fun b!7169806 () Bool)

(assert (=> b!7169806 (= e!4306714 (as set.empty (Set Context!14564)))))

(assert (= (and d!2233486 res!2921902) b!7169804))

(assert (= (and d!2233486 c!1335644) b!7169803))

(assert (= (and d!2233486 (not c!1335644)) b!7169805))

(assert (= (and b!7169805 c!1335645) b!7169802))

(assert (= (and b!7169805 (not c!1335645)) b!7169806))

(assert (= (or b!7169803 b!7169802) bm!653176))

(declare-fun m!7872144 () Bool)

(assert (=> b!7169803 m!7872144))

(declare-fun m!7872146 () Bool)

(assert (=> b!7169804 m!7872146))

(declare-fun m!7872148 () Bool)

(assert (=> bm!653176 m!7872148))

(assert (=> b!7169693 d!2233486))

(declare-fun b!7169825 () Bool)

(declare-fun e!4306733 () Bool)

(declare-fun call!653189 () Bool)

(assert (=> b!7169825 (= e!4306733 call!653189)))

(declare-fun b!7169826 () Bool)

(declare-fun e!4306734 () Bool)

(declare-fun e!4306731 () Bool)

(assert (=> b!7169826 (= e!4306734 e!4306731)))

(declare-fun c!1335650 () Bool)

(assert (=> b!7169826 (= c!1335650 (is-Union!18330 lt!2570305))))

(declare-fun b!7169828 () Bool)

(declare-fun res!2921916 () Bool)

(declare-fun e!4306732 () Bool)

(assert (=> b!7169828 (=> res!2921916 e!4306732)))

(assert (=> b!7169828 (= res!2921916 (not (is-Concat!27175 lt!2570305)))))

(assert (=> b!7169828 (= e!4306731 e!4306732)))

(declare-fun b!7169829 () Bool)

(declare-fun e!4306736 () Bool)

(declare-fun call!653188 () Bool)

(assert (=> b!7169829 (= e!4306736 call!653188)))

(declare-fun b!7169830 () Bool)

(declare-fun e!4306730 () Bool)

(assert (=> b!7169830 (= e!4306730 e!4306734)))

(declare-fun c!1335651 () Bool)

(assert (=> b!7169830 (= c!1335651 (is-Star!18330 lt!2570305))))

(declare-fun bm!653183 () Bool)

(assert (=> bm!653183 (= call!653189 call!653188)))

(declare-fun bm!653184 () Bool)

(declare-fun call!653190 () Bool)

(assert (=> bm!653184 (= call!653190 (validRegex!9455 (ite c!1335650 (regOne!37173 lt!2570305) (regOne!37172 lt!2570305))))))

(declare-fun b!7169831 () Bool)

(declare-fun res!2921915 () Bool)

(declare-fun e!4306735 () Bool)

(assert (=> b!7169831 (=> (not res!2921915) (not e!4306735))))

(assert (=> b!7169831 (= res!2921915 call!653190)))

(assert (=> b!7169831 (= e!4306731 e!4306735)))

(declare-fun bm!653185 () Bool)

(assert (=> bm!653185 (= call!653188 (validRegex!9455 (ite c!1335651 (reg!18659 lt!2570305) (ite c!1335650 (regTwo!37173 lt!2570305) (regTwo!37172 lt!2570305)))))))

(declare-fun b!7169832 () Bool)

(assert (=> b!7169832 (= e!4306734 e!4306736)))

(declare-fun res!2921913 () Bool)

(assert (=> b!7169832 (= res!2921913 (not (nullable!7766 (reg!18659 lt!2570305))))))

(assert (=> b!7169832 (=> (not res!2921913) (not e!4306736))))

(declare-fun b!7169833 () Bool)

(assert (=> b!7169833 (= e!4306735 call!653189)))

(declare-fun b!7169827 () Bool)

(assert (=> b!7169827 (= e!4306732 e!4306733)))

(declare-fun res!2921917 () Bool)

(assert (=> b!7169827 (=> (not res!2921917) (not e!4306733))))

(assert (=> b!7169827 (= res!2921917 call!653190)))

(declare-fun d!2233488 () Bool)

(declare-fun res!2921914 () Bool)

(assert (=> d!2233488 (=> res!2921914 e!4306730)))

(assert (=> d!2233488 (= res!2921914 (is-ElementMatch!18330 lt!2570305))))

(assert (=> d!2233488 (= (validRegex!9455 lt!2570305) e!4306730)))

(assert (= (and d!2233488 (not res!2921914)) b!7169830))

(assert (= (and b!7169830 c!1335651) b!7169832))

(assert (= (and b!7169830 (not c!1335651)) b!7169826))

(assert (= (and b!7169832 res!2921913) b!7169829))

(assert (= (and b!7169826 c!1335650) b!7169831))

(assert (= (and b!7169826 (not c!1335650)) b!7169828))

(assert (= (and b!7169831 res!2921915) b!7169833))

(assert (= (and b!7169828 (not res!2921916)) b!7169827))

(assert (= (and b!7169827 res!2921917) b!7169825))

(assert (= (or b!7169831 b!7169827) bm!653184))

(assert (= (or b!7169833 b!7169825) bm!653183))

(assert (= (or b!7169829 bm!653183) bm!653185))

(declare-fun m!7872150 () Bool)

(assert (=> bm!653184 m!7872150))

(declare-fun m!7872152 () Bool)

(assert (=> bm!653185 m!7872152))

(declare-fun m!7872154 () Bool)

(assert (=> b!7169832 m!7872154))

(assert (=> d!2233438 d!2233488))

(declare-fun bs!1893121 () Bool)

(declare-fun d!2233490 () Bool)

(assert (= bs!1893121 (and d!2233490 d!2233426)))

(declare-fun lambda!437134 () Int)

(assert (=> bs!1893121 (= lambda!437134 lambda!437121)))

(declare-fun bs!1893122 () Bool)

(assert (= bs!1893122 (and d!2233490 d!2233482)))

(assert (=> bs!1893122 (= lambda!437134 lambda!437131)))

(declare-fun b!7169854 () Bool)

(declare-fun e!4306752 () Bool)

(declare-fun isEmpty!40192 (List!69728) Bool)

(assert (=> b!7169854 (= e!4306752 (isEmpty!40192 (t!383747 (unfocusZipperList!2314 (toList!11273 z!3530)))))))

(declare-fun b!7169855 () Bool)

(declare-fun e!4306749 () Bool)

(declare-fun lt!2570321 () Regex!18330)

(declare-fun isEmptyLang!2142 (Regex!18330) Bool)

(assert (=> b!7169855 (= e!4306749 (isEmptyLang!2142 lt!2570321))))

(declare-fun b!7169856 () Bool)

(declare-fun e!4306751 () Bool)

(assert (=> b!7169856 (= e!4306751 e!4306749)))

(declare-fun c!1335661 () Bool)

(assert (=> b!7169856 (= c!1335661 (isEmpty!40192 (unfocusZipperList!2314 (toList!11273 z!3530))))))

(declare-fun b!7169857 () Bool)

(declare-fun e!4306750 () Bool)

(assert (=> b!7169857 (= e!4306749 e!4306750)))

(declare-fun c!1335660 () Bool)

(declare-fun tail!14058 (List!69728) List!69728)

(assert (=> b!7169857 (= c!1335660 (isEmpty!40192 (tail!14058 (unfocusZipperList!2314 (toList!11273 z!3530)))))))

(declare-fun b!7169858 () Bool)

(declare-fun e!4306754 () Regex!18330)

(assert (=> b!7169858 (= e!4306754 EmptyLang!18330)))

(declare-fun b!7169859 () Bool)

(declare-fun isUnion!1570 (Regex!18330) Bool)

(assert (=> b!7169859 (= e!4306750 (isUnion!1570 lt!2570321))))

(declare-fun b!7169860 () Bool)

(declare-fun e!4306753 () Regex!18330)

(assert (=> b!7169860 (= e!4306753 e!4306754)))

(declare-fun c!1335663 () Bool)

(assert (=> b!7169860 (= c!1335663 (is-Cons!69604 (unfocusZipperList!2314 (toList!11273 z!3530))))))

(declare-fun b!7169861 () Bool)

(assert (=> b!7169861 (= e!4306753 (h!76052 (unfocusZipperList!2314 (toList!11273 z!3530))))))

(assert (=> d!2233490 e!4306751))

(declare-fun res!2921922 () Bool)

(assert (=> d!2233490 (=> (not res!2921922) (not e!4306751))))

(assert (=> d!2233490 (= res!2921922 (validRegex!9455 lt!2570321))))

(assert (=> d!2233490 (= lt!2570321 e!4306753)))

(declare-fun c!1335662 () Bool)

(assert (=> d!2233490 (= c!1335662 e!4306752)))

(declare-fun res!2921923 () Bool)

(assert (=> d!2233490 (=> (not res!2921923) (not e!4306752))))

(assert (=> d!2233490 (= res!2921923 (is-Cons!69604 (unfocusZipperList!2314 (toList!11273 z!3530))))))

(assert (=> d!2233490 (forall!17160 (unfocusZipperList!2314 (toList!11273 z!3530)) lambda!437134)))

(assert (=> d!2233490 (= (generalisedUnion!2758 (unfocusZipperList!2314 (toList!11273 z!3530))) lt!2570321)))

(declare-fun b!7169862 () Bool)

(assert (=> b!7169862 (= e!4306754 (Union!18330 (h!76052 (unfocusZipperList!2314 (toList!11273 z!3530))) (generalisedUnion!2758 (t!383747 (unfocusZipperList!2314 (toList!11273 z!3530))))))))

(declare-fun b!7169863 () Bool)

(declare-fun head!14638 (List!69728) Regex!18330)

(assert (=> b!7169863 (= e!4306750 (= lt!2570321 (head!14638 (unfocusZipperList!2314 (toList!11273 z!3530)))))))

(assert (= (and d!2233490 res!2921923) b!7169854))

(assert (= (and d!2233490 c!1335662) b!7169861))

(assert (= (and d!2233490 (not c!1335662)) b!7169860))

(assert (= (and b!7169860 c!1335663) b!7169862))

(assert (= (and b!7169860 (not c!1335663)) b!7169858))

(assert (= (and d!2233490 res!2921922) b!7169856))

(assert (= (and b!7169856 c!1335661) b!7169855))

(assert (= (and b!7169856 (not c!1335661)) b!7169857))

(assert (= (and b!7169857 c!1335660) b!7169863))

(assert (= (and b!7169857 (not c!1335660)) b!7169859))

(declare-fun m!7872156 () Bool)

(assert (=> b!7169862 m!7872156))

(assert (=> b!7169863 m!7872048))

(declare-fun m!7872158 () Bool)

(assert (=> b!7169863 m!7872158))

(assert (=> b!7169856 m!7872048))

(declare-fun m!7872160 () Bool)

(assert (=> b!7169856 m!7872160))

(declare-fun m!7872162 () Bool)

(assert (=> b!7169855 m!7872162))

(declare-fun m!7872164 () Bool)

(assert (=> b!7169859 m!7872164))

(declare-fun m!7872166 () Bool)

(assert (=> b!7169854 m!7872166))

(assert (=> b!7169857 m!7872048))

(declare-fun m!7872168 () Bool)

(assert (=> b!7169857 m!7872168))

(assert (=> b!7169857 m!7872168))

(declare-fun m!7872170 () Bool)

(assert (=> b!7169857 m!7872170))

(declare-fun m!7872172 () Bool)

(assert (=> d!2233490 m!7872172))

(assert (=> d!2233490 m!7872048))

(declare-fun m!7872174 () Bool)

(assert (=> d!2233490 m!7872174))

(assert (=> d!2233438 d!2233490))

(declare-fun bs!1893123 () Bool)

(declare-fun d!2233492 () Bool)

(assert (= bs!1893123 (and d!2233492 d!2233426)))

(declare-fun lambda!437137 () Int)

(assert (=> bs!1893123 (= lambda!437137 lambda!437121)))

(declare-fun bs!1893124 () Bool)

(assert (= bs!1893124 (and d!2233492 d!2233482)))

(assert (=> bs!1893124 (= lambda!437137 lambda!437131)))

(declare-fun bs!1893125 () Bool)

(assert (= bs!1893125 (and d!2233492 d!2233490)))

(assert (=> bs!1893125 (= lambda!437137 lambda!437134)))

(declare-fun lt!2570324 () List!69728)

(assert (=> d!2233492 (forall!17160 lt!2570324 lambda!437137)))

(declare-fun e!4306757 () List!69728)

(assert (=> d!2233492 (= lt!2570324 e!4306757)))

(declare-fun c!1335666 () Bool)

(assert (=> d!2233492 (= c!1335666 (is-Cons!69606 (toList!11273 z!3530)))))

(assert (=> d!2233492 (= (unfocusZipperList!2314 (toList!11273 z!3530)) lt!2570324)))

(declare-fun b!7169868 () Bool)

(declare-fun generalisedConcat!2453 (List!69728) Regex!18330)

(assert (=> b!7169868 (= e!4306757 (Cons!69604 (generalisedConcat!2453 (exprs!7782 (h!76054 (toList!11273 z!3530)))) (unfocusZipperList!2314 (t!383749 (toList!11273 z!3530)))))))

(declare-fun b!7169869 () Bool)

(assert (=> b!7169869 (= e!4306757 Nil!69604)))

(assert (= (and d!2233492 c!1335666) b!7169868))

(assert (= (and d!2233492 (not c!1335666)) b!7169869))

(declare-fun m!7872176 () Bool)

(assert (=> d!2233492 m!7872176))

(declare-fun m!7872178 () Bool)

(assert (=> b!7169868 m!7872178))

(declare-fun m!7872180 () Bool)

(assert (=> b!7169868 m!7872180))

(assert (=> d!2233438 d!2233492))

(declare-fun d!2233494 () Bool)

(declare-fun c!1335667 () Bool)

(assert (=> d!2233494 (= c!1335667 (is-Nil!69606 lt!2570309))))

(declare-fun e!4306758 () (Set Context!14564))

(assert (=> d!2233494 (= (content!14303 lt!2570309) e!4306758)))

(declare-fun b!7169870 () Bool)

(assert (=> b!7169870 (= e!4306758 (as set.empty (Set Context!14564)))))

(declare-fun b!7169871 () Bool)

(assert (=> b!7169871 (= e!4306758 (set.union (set.insert (h!76054 lt!2570309) (as set.empty (Set Context!14564))) (content!14303 (t!383749 lt!2570309))))))

(assert (= (and d!2233494 c!1335667) b!7169870))

(assert (= (and d!2233494 (not c!1335667)) b!7169871))

(declare-fun m!7872182 () Bool)

(assert (=> b!7169871 m!7872182))

(declare-fun m!7872184 () Bool)

(assert (=> b!7169871 m!7872184))

(assert (=> b!7169703 d!2233494))

(declare-fun d!2233496 () Bool)

(declare-fun res!2921928 () Bool)

(declare-fun e!4306763 () Bool)

(assert (=> d!2233496 (=> res!2921928 e!4306763)))

(assert (=> d!2233496 (= res!2921928 (is-Nil!69606 lt!2570308))))

(assert (=> d!2233496 (= (noDuplicate!2874 lt!2570308) e!4306763)))

(declare-fun b!7169876 () Bool)

(declare-fun e!4306764 () Bool)

(assert (=> b!7169876 (= e!4306763 e!4306764)))

(declare-fun res!2921929 () Bool)

(assert (=> b!7169876 (=> (not res!2921929) (not e!4306764))))

(declare-fun contains!20710 (List!69730 Context!14564) Bool)

(assert (=> b!7169876 (= res!2921929 (not (contains!20710 (t!383749 lt!2570308) (h!76054 lt!2570308))))))

(declare-fun b!7169877 () Bool)

(assert (=> b!7169877 (= e!4306764 (noDuplicate!2874 (t!383749 lt!2570308)))))

(assert (= (and d!2233496 (not res!2921928)) b!7169876))

(assert (= (and b!7169876 res!2921929) b!7169877))

(declare-fun m!7872186 () Bool)

(assert (=> b!7169876 m!7872186))

(declare-fun m!7872188 () Bool)

(assert (=> b!7169877 m!7872188))

(assert (=> d!2233442 d!2233496))

(declare-fun d!2233498 () Bool)

(declare-fun e!4306773 () Bool)

(assert (=> d!2233498 e!4306773))

(declare-fun res!2921935 () Bool)

(assert (=> d!2233498 (=> (not res!2921935) (not e!4306773))))

(declare-fun res!2921934 () List!69730)

(assert (=> d!2233498 (= res!2921935 (noDuplicate!2874 res!2921934))))

(declare-fun e!4306772 () Bool)

(assert (=> d!2233498 e!4306772))

(assert (=> d!2233498 (= (choose!55360 z!3530) res!2921934)))

(declare-fun b!7169885 () Bool)

(declare-fun e!4306771 () Bool)

(declare-fun tp!1985998 () Bool)

(assert (=> b!7169885 (= e!4306771 tp!1985998)))

(declare-fun b!7169884 () Bool)

(declare-fun tp!1985999 () Bool)

(assert (=> b!7169884 (= e!4306772 (and (inv!88848 (h!76054 res!2921934)) e!4306771 tp!1985999))))

(declare-fun b!7169886 () Bool)

(assert (=> b!7169886 (= e!4306773 (= (content!14303 res!2921934) z!3530))))

(assert (= b!7169884 b!7169885))

(assert (= (and d!2233498 (is-Cons!69606 res!2921934)) b!7169884))

(assert (= (and d!2233498 res!2921935) b!7169886))

(declare-fun m!7872190 () Bool)

(assert (=> d!2233498 m!7872190))

(declare-fun m!7872192 () Bool)

(assert (=> b!7169884 m!7872192))

(declare-fun m!7872194 () Bool)

(assert (=> b!7169886 m!7872194))

(assert (=> d!2233442 d!2233498))

(declare-fun d!2233500 () Bool)

(assert (=> d!2233500 (= (validRegex!9455 EmptyExpr!18330) true)))

(assert (=> d!2233436 d!2233500))

(declare-fun d!2233502 () Bool)

(assert (=> d!2233502 true))

(declare-fun setRes!52988 () Bool)

(assert (=> d!2233502 setRes!52988))

(declare-fun condSetEmpty!52988 () Bool)

(declare-fun res!2921938 () (Set Context!14564))

(assert (=> d!2233502 (= condSetEmpty!52988 (= res!2921938 (as set.empty (Set Context!14564))))))

(assert (=> d!2233502 (= (choose!55361 z!3530 lambda!437115) res!2921938)))

(declare-fun setIsEmpty!52988 () Bool)

(assert (=> setIsEmpty!52988 setRes!52988))

(declare-fun setElem!52988 () Context!14564)

(declare-fun setNonEmpty!52988 () Bool)

(declare-fun e!4306776 () Bool)

(declare-fun tp!1986005 () Bool)

(assert (=> setNonEmpty!52988 (= setRes!52988 (and tp!1986005 (inv!88848 setElem!52988) e!4306776))))

(declare-fun setRest!52988 () (Set Context!14564))

(assert (=> setNonEmpty!52988 (= res!2921938 (set.union (set.insert setElem!52988 (as set.empty (Set Context!14564))) setRest!52988))))

(declare-fun b!7169889 () Bool)

(declare-fun tp!1986004 () Bool)

(assert (=> b!7169889 (= e!4306776 tp!1986004)))

(assert (= (and d!2233502 condSetEmpty!52988) setIsEmpty!52988))

(assert (= (and d!2233502 (not condSetEmpty!52988)) setNonEmpty!52988))

(assert (= setNonEmpty!52988 b!7169889))

(declare-fun m!7872196 () Bool)

(assert (=> setNonEmpty!52988 m!7872196))

(assert (=> d!2233448 d!2233502))

(declare-fun d!2233504 () Bool)

(declare-fun res!2921939 () Bool)

(declare-fun e!4306777 () Bool)

(assert (=> d!2233504 (=> res!2921939 e!4306777)))

(assert (=> d!2233504 (= res!2921939 (is-Nil!69606 lt!2570309))))

(assert (=> d!2233504 (= (noDuplicate!2874 lt!2570309) e!4306777)))

(declare-fun b!7169890 () Bool)

(declare-fun e!4306778 () Bool)

(assert (=> b!7169890 (= e!4306777 e!4306778)))

(declare-fun res!2921940 () Bool)

(assert (=> b!7169890 (=> (not res!2921940) (not e!4306778))))

(assert (=> b!7169890 (= res!2921940 (not (contains!20710 (t!383749 lt!2570309) (h!76054 lt!2570309))))))

(declare-fun b!7169891 () Bool)

(assert (=> b!7169891 (= e!4306778 (noDuplicate!2874 (t!383749 lt!2570309)))))

(assert (= (and d!2233504 (not res!2921939)) b!7169890))

(assert (= (and b!7169890 res!2921940) b!7169891))

(declare-fun m!7872198 () Bool)

(assert (=> b!7169890 m!7872198))

(declare-fun m!7872200 () Bool)

(assert (=> b!7169891 m!7872200))

(assert (=> d!2233446 d!2233504))

(declare-fun d!2233506 () Bool)

(declare-fun e!4306781 () Bool)

(assert (=> d!2233506 e!4306781))

(declare-fun res!2921942 () Bool)

(assert (=> d!2233506 (=> (not res!2921942) (not e!4306781))))

(declare-fun res!2921941 () List!69730)

(assert (=> d!2233506 (= res!2921942 (noDuplicate!2874 res!2921941))))

(declare-fun e!4306780 () Bool)

(assert (=> d!2233506 e!4306780))

(assert (=> d!2233506 (= (choose!55360 lt!2570291) res!2921941)))

(declare-fun b!7169893 () Bool)

(declare-fun e!4306779 () Bool)

(declare-fun tp!1986006 () Bool)

(assert (=> b!7169893 (= e!4306779 tp!1986006)))

(declare-fun b!7169892 () Bool)

(declare-fun tp!1986007 () Bool)

(assert (=> b!7169892 (= e!4306780 (and (inv!88848 (h!76054 res!2921941)) e!4306779 tp!1986007))))

(declare-fun b!7169894 () Bool)

(assert (=> b!7169894 (= e!4306781 (= (content!14303 res!2921941) lt!2570291))))

(assert (= b!7169892 b!7169893))

(assert (= (and d!2233506 (is-Cons!69606 res!2921941)) b!7169892))

(assert (= (and d!2233506 res!2921942) b!7169894))

(declare-fun m!7872202 () Bool)

(assert (=> d!2233506 m!7872202))

(declare-fun m!7872204 () Bool)

(assert (=> b!7169892 m!7872204))

(declare-fun m!7872206 () Bool)

(assert (=> b!7169894 m!7872206))

(assert (=> d!2233446 d!2233506))

(declare-fun b!7169907 () Bool)

(declare-fun e!4306784 () Bool)

(declare-fun tp!1986021 () Bool)

(assert (=> b!7169907 (= e!4306784 tp!1986021)))

(declare-fun b!7169905 () Bool)

(assert (=> b!7169905 (= e!4306784 tp_is_empty!46233)))

(assert (=> b!7169708 (= tp!1985968 e!4306784)))

(declare-fun b!7169906 () Bool)

(declare-fun tp!1986020 () Bool)

(declare-fun tp!1986022 () Bool)

(assert (=> b!7169906 (= e!4306784 (and tp!1986020 tp!1986022))))

(declare-fun b!7169908 () Bool)

(declare-fun tp!1986019 () Bool)

(declare-fun tp!1986018 () Bool)

(assert (=> b!7169908 (= e!4306784 (and tp!1986019 tp!1986018))))

(assert (= (and b!7169708 (is-ElementMatch!18330 (h!76052 (exprs!7782 setElem!52976)))) b!7169905))

(assert (= (and b!7169708 (is-Concat!27175 (h!76052 (exprs!7782 setElem!52976)))) b!7169906))

(assert (= (and b!7169708 (is-Star!18330 (h!76052 (exprs!7782 setElem!52976)))) b!7169907))

(assert (= (and b!7169708 (is-Union!18330 (h!76052 (exprs!7782 setElem!52976)))) b!7169908))

(declare-fun b!7169909 () Bool)

(declare-fun e!4306785 () Bool)

(declare-fun tp!1986023 () Bool)

(declare-fun tp!1986024 () Bool)

(assert (=> b!7169909 (= e!4306785 (and tp!1986023 tp!1986024))))

(assert (=> b!7169708 (= tp!1985969 e!4306785)))

(assert (= (and b!7169708 (is-Cons!69604 (t!383747 (exprs!7782 setElem!52976)))) b!7169909))

(declare-fun b!7169910 () Bool)

(declare-fun e!4306786 () Bool)

(declare-fun tp!1986025 () Bool)

(assert (=> b!7169910 (= e!4306786 (and tp_is_empty!46233 tp!1986025))))

(assert (=> b!7169718 (= tp!1985978 e!4306786)))

(assert (= (and b!7169718 (is-Cons!69605 (t!383748 (t!383748 s!7967)))) b!7169910))

(declare-fun condSetEmpty!52989 () Bool)

(assert (=> setNonEmpty!52982 (= condSetEmpty!52989 (= setRest!52982 (as set.empty (Set Context!14564))))))

(declare-fun setRes!52989 () Bool)

(assert (=> setNonEmpty!52982 (= tp!1985975 setRes!52989)))

(declare-fun setIsEmpty!52989 () Bool)

(assert (=> setIsEmpty!52989 setRes!52989))

(declare-fun setNonEmpty!52989 () Bool)

(declare-fun e!4306787 () Bool)

(declare-fun tp!1986027 () Bool)

(declare-fun setElem!52989 () Context!14564)

(assert (=> setNonEmpty!52989 (= setRes!52989 (and tp!1986027 (inv!88848 setElem!52989) e!4306787))))

(declare-fun setRest!52989 () (Set Context!14564))

(assert (=> setNonEmpty!52989 (= setRest!52982 (set.union (set.insert setElem!52989 (as set.empty (Set Context!14564))) setRest!52989))))

(declare-fun b!7169911 () Bool)

(declare-fun tp!1986026 () Bool)

(assert (=> b!7169911 (= e!4306787 tp!1986026)))

(assert (= (and setNonEmpty!52982 condSetEmpty!52989) setIsEmpty!52989))

(assert (= (and setNonEmpty!52982 (not condSetEmpty!52989)) setNonEmpty!52989))

(assert (= setNonEmpty!52989 b!7169911))

(declare-fun m!7872208 () Bool)

(assert (=> setNonEmpty!52989 m!7872208))

(declare-fun b!7169912 () Bool)

(declare-fun e!4306788 () Bool)

(declare-fun tp!1986028 () Bool)

(declare-fun tp!1986029 () Bool)

(assert (=> b!7169912 (= e!4306788 (and tp!1986028 tp!1986029))))

(assert (=> b!7169713 (= tp!1985974 e!4306788)))

(assert (= (and b!7169713 (is-Cons!69604 (exprs!7782 setElem!52982))) b!7169912))

(declare-fun b_lambda!274081 () Bool)

(assert (= b_lambda!274079 (or d!2233426 b_lambda!274081)))

(declare-fun bs!1893126 () Bool)

(declare-fun d!2233508 () Bool)

(assert (= bs!1893126 (and d!2233508 d!2233426)))

(assert (=> bs!1893126 (= (dynLambda!28345 lambda!437121 (h!76052 (exprs!7782 setElem!52976))) (validRegex!9455 (h!76052 (exprs!7782 setElem!52976))))))

(declare-fun m!7872210 () Bool)

(assert (=> bs!1893126 m!7872210))

(assert (=> b!7169760 d!2233508))

(push 1)

(assert (not b!7169894))

(assert (not bm!653185))

(assert (not d!2233480))

(assert (not d!2233490))

(assert (not b!7169885))

(assert (not d!2233492))

(assert (not b!7169912))

(assert (not b!7169871))

(assert (not b!7169907))

(assert (not b!7169910))

(assert (not b!7169801))

(assert (not bm!653184))

(assert (not d!2233484))

(assert (not b!7169792))

(assert (not b!7169889))

(assert (not d!2233478))

(assert (not b!7169859))

(assert (not b!7169908))

(assert (not b!7169800))

(assert (not b!7169855))

(assert (not b!7169909))

(assert (not b!7169854))

(assert (not b!7169886))

(assert (not b!7169890))

(assert (not b!7169892))

(assert (not d!2233482))

(assert (not b!7169804))

(assert (not bm!653170))

(assert (not b!7169877))

(assert (not b!7169857))

(assert (not bm!653176))

(assert (not bs!1893126))

(assert (not d!2233498))

(assert (not d!2233474))

(assert (not b_lambda!274081))

(assert (not b!7169906))

(assert (not d!2233506))

(assert (not b!7169884))

(assert (not bm!653171))

(assert (not b!7169891))

(assert (not b!7169876))

(assert (not b!7169893))

(assert (not bm!653172))

(assert (not setNonEmpty!52989))

(assert (not b!7169863))

(assert (not b!7169868))

(assert (not b!7169911))

(assert (not b!7169856))

(assert (not b!7169862))

(assert (not b!7169832))

(assert tp_is_empty!46233)

(assert (not b!7169761))

(assert (not b!7169803))

(assert (not setNonEmpty!52988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

