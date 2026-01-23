; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!698212 () Bool)

(assert start!698212)

(declare-fun b!7159692 () Bool)

(assert (=> b!7159692 true))

(declare-fun b!7159688 () Bool)

(declare-fun e!4301317 () Bool)

(declare-fun e!4301319 () Bool)

(assert (=> b!7159688 (= e!4301317 (not e!4301319))))

(declare-fun res!2919237 () Bool)

(assert (=> b!7159688 (=> res!2919237 e!4301319)))

(declare-datatypes ((C!36910 0))(
  ( (C!36911 (val!28403 Int)) )
))
(declare-datatypes ((List!69694 0))(
  ( (Nil!69570) (Cons!69570 (h!76018 C!36910) (t!383711 List!69694)) )
))
(declare-fun s!7967 () List!69694)

(declare-fun isEmpty!40174 (List!69694) Bool)

(assert (=> b!7159688 (= res!2919237 (isEmpty!40174 s!7967))))

(declare-datatypes ((Regex!18318 0))(
  ( (ElementMatch!18318 (c!1334258 C!36910)) (Concat!27163 (regOne!37148 Regex!18318) (regTwo!37148 Regex!18318)) (EmptyExpr!18318) (Star!18318 (reg!18647 Regex!18318)) (EmptyLang!18318) (Union!18318 (regOne!37149 Regex!18318) (regTwo!37149 Regex!18318)) )
))
(declare-datatypes ((List!69695 0))(
  ( (Nil!69571) (Cons!69571 (h!76019 Regex!18318) (t!383712 List!69695)) )
))
(declare-datatypes ((Context!14540 0))(
  ( (Context!14541 (exprs!7770 List!69695)) )
))
(declare-fun lt!2569904 () Context!14540)

(declare-fun nullableContext!181 (Context!14540) Bool)

(assert (=> b!7159688 (nullableContext!181 lt!2569904)))

(assert (=> b!7159688 (= lt!2569904 (Context!14541 (Cons!69571 EmptyExpr!18318 Nil!69571)))))

(declare-fun b!7159689 () Bool)

(declare-fun e!4301321 () Bool)

(declare-fun tp_is_empty!46209 () Bool)

(declare-fun tp!1980000 () Bool)

(assert (=> b!7159689 (= e!4301321 (and tp_is_empty!46209 tp!1980000))))

(declare-fun setIsEmpty!52864 () Bool)

(declare-fun setRes!52864 () Bool)

(assert (=> setIsEmpty!52864 setRes!52864))

(declare-fun b!7159690 () Bool)

(declare-fun e!4301320 () Bool)

(assert (=> b!7159690 (= e!4301319 e!4301320)))

(declare-fun res!2919238 () Bool)

(assert (=> b!7159690 (=> res!2919238 e!4301320)))

(declare-fun lt!2569903 () C!36910)

(declare-fun derivationStepZipperUp!2306 (Context!14540 C!36910) (Set Context!14540))

(assert (=> b!7159690 (= res!2919238 (not (= (derivationStepZipperUp!2306 lt!2569904 lt!2569903) (as set.empty (Set Context!14540)))))))

(declare-fun lt!2569905 () (Set Context!14540))

(declare-fun z!3530 () (Set Context!14540))

(declare-fun derivationStepZipper!3199 ((Set Context!14540) C!36910) (Set Context!14540))

(assert (=> b!7159690 (= lt!2569905 (derivationStepZipper!3199 z!3530 lt!2569903))))

(declare-fun head!14610 (List!69694) C!36910)

(assert (=> b!7159690 (= lt!2569903 (head!14610 s!7967))))

(declare-fun b!7159691 () Bool)

(declare-fun e!4301318 () Bool)

(declare-fun tp!1979998 () Bool)

(assert (=> b!7159691 (= e!4301318 tp!1979998)))

(declare-fun lambda!436806 () Int)

(declare-datatypes ((List!69696 0))(
  ( (Nil!69572) (Cons!69572 (h!76020 Context!14540) (t!383713 List!69696)) )
))
(declare-fun head!14611 (List!69696) Context!14540)

(declare-fun toList!11261 ((Set Context!14540)) List!69696)

(declare-fun flatMap!2650 ((Set Context!14540) Int) (Set Context!14540))

(assert (=> b!7159692 (= e!4301320 (set.member (head!14611 (toList!11261 lt!2569905)) (flatMap!2650 z!3530 lambda!436806)))))

(declare-fun res!2919236 () Bool)

(assert (=> start!698212 (=> (not res!2919236) (not e!4301317))))

(declare-fun unfocusZipper!2578 (List!69696) Regex!18318)

(assert (=> start!698212 (= res!2919236 (= (unfocusZipper!2578 (toList!11261 z!3530)) EmptyExpr!18318))))

(assert (=> start!698212 e!4301317))

(declare-fun condSetEmpty!52864 () Bool)

(assert (=> start!698212 (= condSetEmpty!52864 (= z!3530 (as set.empty (Set Context!14540))))))

(assert (=> start!698212 setRes!52864))

(assert (=> start!698212 e!4301321))

(declare-fun b!7159693 () Bool)

(declare-fun res!2919240 () Bool)

(assert (=> b!7159693 (=> res!2919240 e!4301320)))

(assert (=> b!7159693 (= res!2919240 (= lt!2569905 (as set.empty (Set Context!14540))))))

(declare-fun tp!1979999 () Bool)

(declare-fun setNonEmpty!52864 () Bool)

(declare-fun setElem!52864 () Context!14540)

(declare-fun inv!88818 (Context!14540) Bool)

(assert (=> setNonEmpty!52864 (= setRes!52864 (and tp!1979999 (inv!88818 setElem!52864) e!4301318))))

(declare-fun setRest!52864 () (Set Context!14540))

(assert (=> setNonEmpty!52864 (= z!3530 (set.union (set.insert setElem!52864 (as set.empty (Set Context!14540))) setRest!52864))))

(declare-fun b!7159694 () Bool)

(declare-fun res!2919239 () Bool)

(assert (=> b!7159694 (=> (not res!2919239) (not e!4301317))))

(declare-fun focus!393 (Regex!18318) (Set Context!14540))

(assert (=> b!7159694 (= res!2919239 (= z!3530 (focus!393 EmptyExpr!18318)))))

(assert (= (and start!698212 res!2919236) b!7159694))

(assert (= (and b!7159694 res!2919239) b!7159688))

(assert (= (and b!7159688 (not res!2919237)) b!7159690))

(assert (= (and b!7159690 (not res!2919238)) b!7159693))

(assert (= (and b!7159693 (not res!2919240)) b!7159692))

(assert (= (and start!698212 condSetEmpty!52864) setIsEmpty!52864))

(assert (= (and start!698212 (not condSetEmpty!52864)) setNonEmpty!52864))

(assert (= setNonEmpty!52864 b!7159691))

(assert (= (and start!698212 (is-Cons!69570 s!7967)) b!7159689))

(declare-fun m!7865686 () Bool)

(assert (=> start!698212 m!7865686))

(assert (=> start!698212 m!7865686))

(declare-fun m!7865688 () Bool)

(assert (=> start!698212 m!7865688))

(declare-fun m!7865690 () Bool)

(assert (=> b!7159688 m!7865690))

(declare-fun m!7865692 () Bool)

(assert (=> b!7159688 m!7865692))

(declare-fun m!7865694 () Bool)

(assert (=> b!7159690 m!7865694))

(declare-fun m!7865696 () Bool)

(assert (=> b!7159690 m!7865696))

(declare-fun m!7865698 () Bool)

(assert (=> b!7159690 m!7865698))

(declare-fun m!7865700 () Bool)

(assert (=> b!7159694 m!7865700))

(declare-fun m!7865702 () Bool)

(assert (=> b!7159692 m!7865702))

(assert (=> b!7159692 m!7865702))

(declare-fun m!7865704 () Bool)

(assert (=> b!7159692 m!7865704))

(declare-fun m!7865706 () Bool)

(assert (=> b!7159692 m!7865706))

(assert (=> b!7159692 m!7865704))

(declare-fun m!7865708 () Bool)

(assert (=> b!7159692 m!7865708))

(declare-fun m!7865710 () Bool)

(assert (=> setNonEmpty!52864 m!7865710))

(push 1)

(assert (not b!7159694))

(assert (not b!7159689))

(assert (not b!7159690))

(assert (not b!7159688))

(assert (not b!7159692))

(assert (not setNonEmpty!52864))

(assert (not b!7159691))

(assert tp_is_empty!46209)

(assert (not start!698212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2230524 () Bool)

(declare-fun lt!2569917 () Regex!18318)

(declare-fun validRegex!9444 (Regex!18318) Bool)

(assert (=> d!2230524 (validRegex!9444 lt!2569917)))

(declare-fun generalisedUnion!2747 (List!69695) Regex!18318)

(declare-fun unfocusZipperList!2303 (List!69696) List!69695)

(assert (=> d!2230524 (= lt!2569917 (generalisedUnion!2747 (unfocusZipperList!2303 (toList!11261 z!3530))))))

(assert (=> d!2230524 (= (unfocusZipper!2578 (toList!11261 z!3530)) lt!2569917)))

(declare-fun bs!1890296 () Bool)

(assert (= bs!1890296 d!2230524))

(declare-fun m!7865738 () Bool)

(assert (=> bs!1890296 m!7865738))

(assert (=> bs!1890296 m!7865686))

(declare-fun m!7865740 () Bool)

(assert (=> bs!1890296 m!7865740))

(assert (=> bs!1890296 m!7865740))

(declare-fun m!7865742 () Bool)

(assert (=> bs!1890296 m!7865742))

(assert (=> start!698212 d!2230524))

(declare-fun d!2230526 () Bool)

(declare-fun e!4301339 () Bool)

(assert (=> d!2230526 e!4301339))

(declare-fun res!2919258 () Bool)

(assert (=> d!2230526 (=> (not res!2919258) (not e!4301339))))

(declare-fun lt!2569920 () List!69696)

(declare-fun noDuplicate!2863 (List!69696) Bool)

(assert (=> d!2230526 (= res!2919258 (noDuplicate!2863 lt!2569920))))

(declare-fun choose!55334 ((Set Context!14540)) List!69696)

(assert (=> d!2230526 (= lt!2569920 (choose!55334 z!3530))))

(assert (=> d!2230526 (= (toList!11261 z!3530) lt!2569920)))

(declare-fun b!7159722 () Bool)

(declare-fun content!14292 (List!69696) (Set Context!14540))

(assert (=> b!7159722 (= e!4301339 (= (content!14292 lt!2569920) z!3530))))

(assert (= (and d!2230526 res!2919258) b!7159722))

(declare-fun m!7865744 () Bool)

(assert (=> d!2230526 m!7865744))

(declare-fun m!7865746 () Bool)

(assert (=> d!2230526 m!7865746))

(declare-fun m!7865748 () Bool)

(assert (=> b!7159722 m!7865748))

(assert (=> start!698212 d!2230526))

(declare-fun d!2230528 () Bool)

(declare-fun lambda!436812 () Int)

(declare-fun forall!17147 (List!69695 Int) Bool)

(assert (=> d!2230528 (= (inv!88818 setElem!52864) (forall!17147 (exprs!7770 setElem!52864) lambda!436812))))

(declare-fun bs!1890297 () Bool)

(assert (= bs!1890297 d!2230528))

(declare-fun m!7865750 () Bool)

(assert (=> bs!1890297 m!7865750))

(assert (=> setNonEmpty!52864 d!2230528))

(declare-fun d!2230530 () Bool)

(declare-fun e!4301342 () Bool)

(assert (=> d!2230530 e!4301342))

(declare-fun res!2919262 () Bool)

(assert (=> d!2230530 (=> (not res!2919262) (not e!4301342))))

(assert (=> d!2230530 (= res!2919262 (validRegex!9444 EmptyExpr!18318))))

(assert (=> d!2230530 (= (focus!393 EmptyExpr!18318) (set.insert (Context!14541 (Cons!69571 EmptyExpr!18318 Nil!69571)) (as set.empty (Set Context!14540))))))

(declare-fun b!7159725 () Bool)

(assert (=> b!7159725 (= e!4301342 (= (unfocusZipper!2578 (toList!11261 (set.insert (Context!14541 (Cons!69571 EmptyExpr!18318 Nil!69571)) (as set.empty (Set Context!14540))))) EmptyExpr!18318))))

(assert (= (and d!2230530 res!2919262) b!7159725))

(declare-fun m!7865752 () Bool)

(assert (=> d!2230530 m!7865752))

(declare-fun m!7865754 () Bool)

(assert (=> d!2230530 m!7865754))

(assert (=> b!7159725 m!7865754))

(assert (=> b!7159725 m!7865754))

(declare-fun m!7865756 () Bool)

(assert (=> b!7159725 m!7865756))

(assert (=> b!7159725 m!7865756))

(declare-fun m!7865758 () Bool)

(assert (=> b!7159725 m!7865758))

(assert (=> b!7159694 d!2230530))

(declare-fun d!2230536 () Bool)

(declare-fun c!1334265 () Bool)

(declare-fun e!4301349 () Bool)

(assert (=> d!2230536 (= c!1334265 e!4301349)))

(declare-fun res!2919265 () Bool)

(assert (=> d!2230536 (=> (not res!2919265) (not e!4301349))))

(assert (=> d!2230536 (= res!2919265 (is-Cons!69571 (exprs!7770 lt!2569904)))))

(declare-fun e!4301350 () (Set Context!14540))

(assert (=> d!2230536 (= (derivationStepZipperUp!2306 lt!2569904 lt!2569903) e!4301350)))

(declare-fun b!7159736 () Bool)

(declare-fun e!4301351 () (Set Context!14540))

(assert (=> b!7159736 (= e!4301351 (as set.empty (Set Context!14540)))))

(declare-fun b!7159737 () Bool)

(assert (=> b!7159737 (= e!4301350 e!4301351)))

(declare-fun c!1334266 () Bool)

(assert (=> b!7159737 (= c!1334266 (is-Cons!69571 (exprs!7770 lt!2569904)))))

(declare-fun b!7159738 () Bool)

(declare-fun nullable!7755 (Regex!18318) Bool)

(assert (=> b!7159738 (= e!4301349 (nullable!7755 (h!76019 (exprs!7770 lt!2569904))))))

(declare-fun bm!651940 () Bool)

(declare-fun call!651945 () (Set Context!14540))

(declare-fun derivationStepZipperDown!2497 (Regex!18318 Context!14540 C!36910) (Set Context!14540))

(assert (=> bm!651940 (= call!651945 (derivationStepZipperDown!2497 (h!76019 (exprs!7770 lt!2569904)) (Context!14541 (t!383712 (exprs!7770 lt!2569904))) lt!2569903))))

(declare-fun b!7159739 () Bool)

(assert (=> b!7159739 (= e!4301351 call!651945)))

(declare-fun b!7159740 () Bool)

(assert (=> b!7159740 (= e!4301350 (set.union call!651945 (derivationStepZipperUp!2306 (Context!14541 (t!383712 (exprs!7770 lt!2569904))) lt!2569903)))))

(assert (= (and d!2230536 res!2919265) b!7159738))

(assert (= (and d!2230536 c!1334265) b!7159740))

(assert (= (and d!2230536 (not c!1334265)) b!7159737))

(assert (= (and b!7159737 c!1334266) b!7159739))

(assert (= (and b!7159737 (not c!1334266)) b!7159736))

(assert (= (or b!7159740 b!7159739) bm!651940))

(declare-fun m!7865762 () Bool)

(assert (=> b!7159738 m!7865762))

(declare-fun m!7865764 () Bool)

(assert (=> bm!651940 m!7865764))

(declare-fun m!7865766 () Bool)

(assert (=> b!7159740 m!7865766))

(assert (=> b!7159690 d!2230536))

(declare-fun bs!1890300 () Bool)

(declare-fun d!2230540 () Bool)

(assert (= bs!1890300 (and d!2230540 b!7159692)))

(declare-fun lambda!436818 () Int)

(assert (=> bs!1890300 (= lambda!436818 lambda!436806)))

(assert (=> d!2230540 true))

(assert (=> d!2230540 (= (derivationStepZipper!3199 z!3530 lt!2569903) (flatMap!2650 z!3530 lambda!436818))))

(declare-fun bs!1890301 () Bool)

(assert (= bs!1890301 d!2230540))

(declare-fun m!7865774 () Bool)

(assert (=> bs!1890301 m!7865774))

(assert (=> b!7159690 d!2230540))

(declare-fun d!2230544 () Bool)

(assert (=> d!2230544 (= (head!14610 s!7967) (h!76018 s!7967))))

(assert (=> b!7159690 d!2230544))

(declare-fun d!2230546 () Bool)

(assert (=> d!2230546 (= (head!14611 (toList!11261 lt!2569905)) (h!76020 (toList!11261 lt!2569905)))))

(assert (=> b!7159692 d!2230546))

(declare-fun d!2230548 () Bool)

(declare-fun e!4301352 () Bool)

(assert (=> d!2230548 e!4301352))

(declare-fun res!2919266 () Bool)

(assert (=> d!2230548 (=> (not res!2919266) (not e!4301352))))

(declare-fun lt!2569924 () List!69696)

(assert (=> d!2230548 (= res!2919266 (noDuplicate!2863 lt!2569924))))

(assert (=> d!2230548 (= lt!2569924 (choose!55334 lt!2569905))))

(assert (=> d!2230548 (= (toList!11261 lt!2569905) lt!2569924)))

(declare-fun b!7159741 () Bool)

(assert (=> b!7159741 (= e!4301352 (= (content!14292 lt!2569924) lt!2569905))))

(assert (= (and d!2230548 res!2919266) b!7159741))

(declare-fun m!7865776 () Bool)

(assert (=> d!2230548 m!7865776))

(declare-fun m!7865778 () Bool)

(assert (=> d!2230548 m!7865778))

(declare-fun m!7865780 () Bool)

(assert (=> b!7159741 m!7865780))

(assert (=> b!7159692 d!2230548))

(declare-fun d!2230550 () Bool)

(declare-fun choose!55335 ((Set Context!14540) Int) (Set Context!14540))

(assert (=> d!2230550 (= (flatMap!2650 z!3530 lambda!436806) (choose!55335 z!3530 lambda!436806))))

(declare-fun bs!1890302 () Bool)

(assert (= bs!1890302 d!2230550))

(declare-fun m!7865782 () Bool)

(assert (=> bs!1890302 m!7865782))

(assert (=> b!7159692 d!2230550))

(declare-fun d!2230552 () Bool)

(assert (=> d!2230552 (= (isEmpty!40174 s!7967) (is-Nil!69570 s!7967))))

(assert (=> b!7159688 d!2230552))

(declare-fun bs!1890303 () Bool)

(declare-fun d!2230554 () Bool)

(assert (= bs!1890303 (and d!2230554 d!2230528)))

(declare-fun lambda!436821 () Int)

(assert (=> bs!1890303 (not (= lambda!436821 lambda!436812))))

(assert (=> d!2230554 (= (nullableContext!181 lt!2569904) (forall!17147 (exprs!7770 lt!2569904) lambda!436821))))

(declare-fun bs!1890304 () Bool)

(assert (= bs!1890304 d!2230554))

(declare-fun m!7865784 () Bool)

(assert (=> bs!1890304 m!7865784))

(assert (=> b!7159688 d!2230554))

(declare-fun b!7159748 () Bool)

(declare-fun e!4301357 () Bool)

(declare-fun tp!1980012 () Bool)

(assert (=> b!7159748 (= e!4301357 (and tp_is_empty!46209 tp!1980012))))

(assert (=> b!7159689 (= tp!1980000 e!4301357)))

(assert (= (and b!7159689 (is-Cons!69570 (t!383711 s!7967))) b!7159748))

(declare-fun condSetEmpty!52870 () Bool)

(assert (=> setNonEmpty!52864 (= condSetEmpty!52870 (= setRest!52864 (as set.empty (Set Context!14540))))))

(declare-fun setRes!52870 () Bool)

(assert (=> setNonEmpty!52864 (= tp!1979999 setRes!52870)))

(declare-fun setIsEmpty!52870 () Bool)

(assert (=> setIsEmpty!52870 setRes!52870))

(declare-fun e!4301361 () Bool)

(declare-fun setNonEmpty!52870 () Bool)

(declare-fun tp!1980018 () Bool)

(declare-fun setElem!52870 () Context!14540)

(assert (=> setNonEmpty!52870 (= setRes!52870 (and tp!1980018 (inv!88818 setElem!52870) e!4301361))))

(declare-fun setRest!52870 () (Set Context!14540))

(assert (=> setNonEmpty!52870 (= setRest!52864 (set.union (set.insert setElem!52870 (as set.empty (Set Context!14540))) setRest!52870))))

(declare-fun b!7159754 () Bool)

(declare-fun tp!1980017 () Bool)

(assert (=> b!7159754 (= e!4301361 tp!1980017)))

(assert (= (and setNonEmpty!52864 condSetEmpty!52870) setIsEmpty!52870))

(assert (= (and setNonEmpty!52864 (not condSetEmpty!52870)) setNonEmpty!52870))

(assert (= setNonEmpty!52870 b!7159754))

(declare-fun m!7865792 () Bool)

(assert (=> setNonEmpty!52870 m!7865792))

(declare-fun b!7159759 () Bool)

(declare-fun e!4301364 () Bool)

(declare-fun tp!1980023 () Bool)

(declare-fun tp!1980024 () Bool)

(assert (=> b!7159759 (= e!4301364 (and tp!1980023 tp!1980024))))

(assert (=> b!7159691 (= tp!1979998 e!4301364)))

(assert (= (and b!7159691 (is-Cons!69571 (exprs!7770 setElem!52864))) b!7159759))

(push 1)

(assert (not b!7159748))

(assert tp_is_empty!46209)

(assert (not b!7159740))

(assert (not d!2230524))

(assert (not d!2230526))

(assert (not b!7159754))

(assert (not d!2230528))

(assert (not bm!651940))

(assert (not d!2230554))

(assert (not d!2230540))

(assert (not d!2230530))

(assert (not d!2230548))

(assert (not b!7159759))

(assert (not b!7159725))

(assert (not d!2230550))

(assert (not b!7159741))

(assert (not b!7159738))

(assert (not setNonEmpty!52870))

(assert (not b!7159722))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2230572 () Bool)

(declare-fun c!1334280 () Bool)

(assert (=> d!2230572 (= c!1334280 (is-Nil!69572 lt!2569924))))

(declare-fun e!4301389 () (Set Context!14540))

(assert (=> d!2230572 (= (content!14292 lt!2569924) e!4301389)))

(declare-fun b!7159798 () Bool)

(assert (=> b!7159798 (= e!4301389 (as set.empty (Set Context!14540)))))

(declare-fun b!7159799 () Bool)

(assert (=> b!7159799 (= e!4301389 (set.union (set.insert (h!76020 lt!2569924) (as set.empty (Set Context!14540))) (content!14292 (t!383713 lt!2569924))))))

(assert (= (and d!2230572 c!1334280) b!7159798))

(assert (= (and d!2230572 (not c!1334280)) b!7159799))

(declare-fun m!7865822 () Bool)

(assert (=> b!7159799 m!7865822))

(declare-fun m!7865824 () Bool)

(assert (=> b!7159799 m!7865824))

(assert (=> b!7159741 d!2230572))

(declare-fun d!2230574 () Bool)

(declare-fun c!1334281 () Bool)

(declare-fun e!4301390 () Bool)

(assert (=> d!2230574 (= c!1334281 e!4301390)))

(declare-fun res!2919278 () Bool)

(assert (=> d!2230574 (=> (not res!2919278) (not e!4301390))))

(assert (=> d!2230574 (= res!2919278 (is-Cons!69571 (exprs!7770 (Context!14541 (t!383712 (exprs!7770 lt!2569904))))))))

(declare-fun e!4301391 () (Set Context!14540))

(assert (=> d!2230574 (= (derivationStepZipperUp!2306 (Context!14541 (t!383712 (exprs!7770 lt!2569904))) lt!2569903) e!4301391)))

(declare-fun b!7159800 () Bool)

(declare-fun e!4301392 () (Set Context!14540))

(assert (=> b!7159800 (= e!4301392 (as set.empty (Set Context!14540)))))

(declare-fun b!7159801 () Bool)

(assert (=> b!7159801 (= e!4301391 e!4301392)))

(declare-fun c!1334282 () Bool)

(assert (=> b!7159801 (= c!1334282 (is-Cons!69571 (exprs!7770 (Context!14541 (t!383712 (exprs!7770 lt!2569904))))))))

(declare-fun b!7159802 () Bool)

(assert (=> b!7159802 (= e!4301390 (nullable!7755 (h!76019 (exprs!7770 (Context!14541 (t!383712 (exprs!7770 lt!2569904)))))))))

(declare-fun bm!651944 () Bool)

(declare-fun call!651949 () (Set Context!14540))

(assert (=> bm!651944 (= call!651949 (derivationStepZipperDown!2497 (h!76019 (exprs!7770 (Context!14541 (t!383712 (exprs!7770 lt!2569904))))) (Context!14541 (t!383712 (exprs!7770 (Context!14541 (t!383712 (exprs!7770 lt!2569904)))))) lt!2569903))))

(declare-fun b!7159803 () Bool)

(assert (=> b!7159803 (= e!4301392 call!651949)))

(declare-fun b!7159804 () Bool)

(assert (=> b!7159804 (= e!4301391 (set.union call!651949 (derivationStepZipperUp!2306 (Context!14541 (t!383712 (exprs!7770 (Context!14541 (t!383712 (exprs!7770 lt!2569904)))))) lt!2569903)))))

(assert (= (and d!2230574 res!2919278) b!7159802))

(assert (= (and d!2230574 c!1334281) b!7159804))

(assert (= (and d!2230574 (not c!1334281)) b!7159801))

(assert (= (and b!7159801 c!1334282) b!7159803))

(assert (= (and b!7159801 (not c!1334282)) b!7159800))

(assert (= (or b!7159804 b!7159803) bm!651944))

(declare-fun m!7865826 () Bool)

(assert (=> b!7159802 m!7865826))

(declare-fun m!7865828 () Bool)

(assert (=> bm!651944 m!7865828))

(declare-fun m!7865830 () Bool)

(assert (=> b!7159804 m!7865830))

(assert (=> b!7159740 d!2230574))

(declare-fun bs!1890310 () Bool)

(declare-fun d!2230576 () Bool)

(assert (= bs!1890310 (and d!2230576 d!2230528)))

(declare-fun lambda!436828 () Int)

(assert (=> bs!1890310 (= lambda!436828 lambda!436812)))

(declare-fun bs!1890311 () Bool)

(assert (= bs!1890311 (and d!2230576 d!2230554)))

(assert (=> bs!1890311 (not (= lambda!436828 lambda!436821))))

(assert (=> d!2230576 (= (inv!88818 setElem!52870) (forall!17147 (exprs!7770 setElem!52870) lambda!436828))))

(declare-fun bs!1890312 () Bool)

(assert (= bs!1890312 d!2230576))

(declare-fun m!7865832 () Bool)

(assert (=> bs!1890312 m!7865832))

(assert (=> setNonEmpty!52870 d!2230576))

(declare-fun d!2230578 () Bool)

(declare-fun res!2919283 () Bool)

(declare-fun e!4301397 () Bool)

(assert (=> d!2230578 (=> res!2919283 e!4301397)))

(assert (=> d!2230578 (= res!2919283 (is-Nil!69571 (exprs!7770 lt!2569904)))))

(assert (=> d!2230578 (= (forall!17147 (exprs!7770 lt!2569904) lambda!436821) e!4301397)))

(declare-fun b!7159809 () Bool)

(declare-fun e!4301398 () Bool)

(assert (=> b!7159809 (= e!4301397 e!4301398)))

(declare-fun res!2919284 () Bool)

(assert (=> b!7159809 (=> (not res!2919284) (not e!4301398))))

(declare-fun dynLambda!28327 (Int Regex!18318) Bool)

(assert (=> b!7159809 (= res!2919284 (dynLambda!28327 lambda!436821 (h!76019 (exprs!7770 lt!2569904))))))

(declare-fun b!7159810 () Bool)

(assert (=> b!7159810 (= e!4301398 (forall!17147 (t!383712 (exprs!7770 lt!2569904)) lambda!436821))))

(assert (= (and d!2230578 (not res!2919283)) b!7159809))

(assert (= (and b!7159809 res!2919284) b!7159810))

(declare-fun b_lambda!273411 () Bool)

(assert (=> (not b_lambda!273411) (not b!7159809)))

(declare-fun m!7865834 () Bool)

(assert (=> b!7159809 m!7865834))

(declare-fun m!7865836 () Bool)

(assert (=> b!7159810 m!7865836))

(assert (=> d!2230554 d!2230578))

(declare-fun b!7159829 () Bool)

(declare-fun e!4301416 () Bool)

(declare-fun call!651958 () Bool)

(assert (=> b!7159829 (= e!4301416 call!651958)))

(declare-fun b!7159830 () Bool)

(declare-fun e!4301418 () Bool)

(declare-fun call!651957 () Bool)

(assert (=> b!7159830 (= e!4301418 call!651957)))

(declare-fun b!7159832 () Bool)

(declare-fun e!4301417 () Bool)

(assert (=> b!7159832 (= e!4301417 e!4301418)))

(declare-fun res!2919295 () Bool)

(assert (=> b!7159832 (=> (not res!2919295) (not e!4301418))))

(declare-fun call!651956 () Bool)

(assert (=> b!7159832 (= res!2919295 call!651956)))

(declare-fun c!1334288 () Bool)

(declare-fun c!1334287 () Bool)

(declare-fun bm!651951 () Bool)

(assert (=> bm!651951 (= call!651958 (validRegex!9444 (ite c!1334288 (reg!18647 lt!2569917) (ite c!1334287 (regTwo!37149 lt!2569917) (regTwo!37148 lt!2569917)))))))

(declare-fun b!7159833 () Bool)

(declare-fun res!2919296 () Bool)

(assert (=> b!7159833 (=> res!2919296 e!4301417)))

(assert (=> b!7159833 (= res!2919296 (not (is-Concat!27163 lt!2569917)))))

(declare-fun e!4301413 () Bool)

(assert (=> b!7159833 (= e!4301413 e!4301417)))

(declare-fun b!7159834 () Bool)

(declare-fun e!4301419 () Bool)

(assert (=> b!7159834 (= e!4301419 e!4301413)))

(assert (=> b!7159834 (= c!1334287 (is-Union!18318 lt!2569917))))

(declare-fun b!7159835 () Bool)

(declare-fun e!4301415 () Bool)

(assert (=> b!7159835 (= e!4301415 call!651957)))

(declare-fun d!2230580 () Bool)

(declare-fun res!2919298 () Bool)

(declare-fun e!4301414 () Bool)

(assert (=> d!2230580 (=> res!2919298 e!4301414)))

(assert (=> d!2230580 (= res!2919298 (is-ElementMatch!18318 lt!2569917))))

(assert (=> d!2230580 (= (validRegex!9444 lt!2569917) e!4301414)))

(declare-fun b!7159831 () Bool)

(declare-fun res!2919297 () Bool)

(assert (=> b!7159831 (=> (not res!2919297) (not e!4301415))))

(assert (=> b!7159831 (= res!2919297 call!651956)))

(assert (=> b!7159831 (= e!4301413 e!4301415)))

(declare-fun b!7159836 () Bool)

(assert (=> b!7159836 (= e!4301419 e!4301416)))

(declare-fun res!2919299 () Bool)

(assert (=> b!7159836 (= res!2919299 (not (nullable!7755 (reg!18647 lt!2569917))))))

(assert (=> b!7159836 (=> (not res!2919299) (not e!4301416))))

(declare-fun bm!651952 () Bool)

(assert (=> bm!651952 (= call!651957 call!651958)))

(declare-fun b!7159837 () Bool)

(assert (=> b!7159837 (= e!4301414 e!4301419)))

(assert (=> b!7159837 (= c!1334288 (is-Star!18318 lt!2569917))))

(declare-fun bm!651953 () Bool)

(assert (=> bm!651953 (= call!651956 (validRegex!9444 (ite c!1334287 (regOne!37149 lt!2569917) (regOne!37148 lt!2569917))))))

(assert (= (and d!2230580 (not res!2919298)) b!7159837))

(assert (= (and b!7159837 c!1334288) b!7159836))

(assert (= (and b!7159837 (not c!1334288)) b!7159834))

(assert (= (and b!7159836 res!2919299) b!7159829))

(assert (= (and b!7159834 c!1334287) b!7159831))

(assert (= (and b!7159834 (not c!1334287)) b!7159833))

(assert (= (and b!7159831 res!2919297) b!7159835))

(assert (= (and b!7159833 (not res!2919296)) b!7159832))

(assert (= (and b!7159832 res!2919295) b!7159830))

(assert (= (or b!7159831 b!7159832) bm!651953))

(assert (= (or b!7159835 b!7159830) bm!651952))

(assert (= (or b!7159829 bm!651952) bm!651951))

(declare-fun m!7865838 () Bool)

(assert (=> bm!651951 m!7865838))

(declare-fun m!7865840 () Bool)

(assert (=> b!7159836 m!7865840))

(declare-fun m!7865842 () Bool)

(assert (=> bm!651953 m!7865842))

(assert (=> d!2230524 d!2230580))

(declare-fun bs!1890313 () Bool)

(declare-fun d!2230582 () Bool)

(assert (= bs!1890313 (and d!2230582 d!2230528)))

(declare-fun lambda!436831 () Int)

(assert (=> bs!1890313 (= lambda!436831 lambda!436812)))

(declare-fun bs!1890314 () Bool)

(assert (= bs!1890314 (and d!2230582 d!2230554)))

(assert (=> bs!1890314 (not (= lambda!436831 lambda!436821))))

(declare-fun bs!1890315 () Bool)

(assert (= bs!1890315 (and d!2230582 d!2230576)))

(assert (=> bs!1890315 (= lambda!436831 lambda!436828)))

(declare-fun b!7159858 () Bool)

(declare-fun e!4301437 () Bool)

(declare-fun lt!2569931 () Regex!18318)

(declare-fun isEmptyLang!2136 (Regex!18318) Bool)

(assert (=> b!7159858 (= e!4301437 (isEmptyLang!2136 lt!2569931))))

(declare-fun b!7159859 () Bool)

(declare-fun e!4301433 () Bool)

(declare-fun isUnion!1564 (Regex!18318) Bool)

(assert (=> b!7159859 (= e!4301433 (isUnion!1564 lt!2569931))))

(declare-fun b!7159860 () Bool)

(declare-fun e!4301435 () Regex!18318)

(assert (=> b!7159860 (= e!4301435 (Union!18318 (h!76019 (unfocusZipperList!2303 (toList!11261 z!3530))) (generalisedUnion!2747 (t!383712 (unfocusZipperList!2303 (toList!11261 z!3530))))))))

(declare-fun b!7159861 () Bool)

(declare-fun e!4301436 () Bool)

(assert (=> b!7159861 (= e!4301436 e!4301437)))

(declare-fun c!1334299 () Bool)

(declare-fun isEmpty!40176 (List!69695) Bool)

(assert (=> b!7159861 (= c!1334299 (isEmpty!40176 (unfocusZipperList!2303 (toList!11261 z!3530))))))

(declare-fun b!7159862 () Bool)

(declare-fun e!4301432 () Bool)

(assert (=> b!7159862 (= e!4301432 (isEmpty!40176 (t!383712 (unfocusZipperList!2303 (toList!11261 z!3530)))))))

(assert (=> d!2230582 e!4301436))

(declare-fun res!2919304 () Bool)

(assert (=> d!2230582 (=> (not res!2919304) (not e!4301436))))

(assert (=> d!2230582 (= res!2919304 (validRegex!9444 lt!2569931))))

(declare-fun e!4301434 () Regex!18318)

(assert (=> d!2230582 (= lt!2569931 e!4301434)))

(declare-fun c!1334297 () Bool)

(assert (=> d!2230582 (= c!1334297 e!4301432)))

(declare-fun res!2919305 () Bool)

(assert (=> d!2230582 (=> (not res!2919305) (not e!4301432))))

(assert (=> d!2230582 (= res!2919305 (is-Cons!69571 (unfocusZipperList!2303 (toList!11261 z!3530))))))

(assert (=> d!2230582 (forall!17147 (unfocusZipperList!2303 (toList!11261 z!3530)) lambda!436831)))

(assert (=> d!2230582 (= (generalisedUnion!2747 (unfocusZipperList!2303 (toList!11261 z!3530))) lt!2569931)))

(declare-fun b!7159863 () Bool)

(declare-fun head!14614 (List!69695) Regex!18318)

(assert (=> b!7159863 (= e!4301433 (= lt!2569931 (head!14614 (unfocusZipperList!2303 (toList!11261 z!3530)))))))

(declare-fun b!7159864 () Bool)

(assert (=> b!7159864 (= e!4301435 EmptyLang!18318)))

(declare-fun b!7159865 () Bool)

(assert (=> b!7159865 (= e!4301437 e!4301433)))

(declare-fun c!1334300 () Bool)

(declare-fun tail!14052 (List!69695) List!69695)

(assert (=> b!7159865 (= c!1334300 (isEmpty!40176 (tail!14052 (unfocusZipperList!2303 (toList!11261 z!3530)))))))

(declare-fun b!7159866 () Bool)

(assert (=> b!7159866 (= e!4301434 e!4301435)))

(declare-fun c!1334298 () Bool)

(assert (=> b!7159866 (= c!1334298 (is-Cons!69571 (unfocusZipperList!2303 (toList!11261 z!3530))))))

(declare-fun b!7159867 () Bool)

(assert (=> b!7159867 (= e!4301434 (h!76019 (unfocusZipperList!2303 (toList!11261 z!3530))))))

(assert (= (and d!2230582 res!2919305) b!7159862))

(assert (= (and d!2230582 c!1334297) b!7159867))

(assert (= (and d!2230582 (not c!1334297)) b!7159866))

(assert (= (and b!7159866 c!1334298) b!7159860))

(assert (= (and b!7159866 (not c!1334298)) b!7159864))

(assert (= (and d!2230582 res!2919304) b!7159861))

(assert (= (and b!7159861 c!1334299) b!7159858))

(assert (= (and b!7159861 (not c!1334299)) b!7159865))

(assert (= (and b!7159865 c!1334300) b!7159863))

(assert (= (and b!7159865 (not c!1334300)) b!7159859))

(assert (=> b!7159863 m!7865740))

(declare-fun m!7865844 () Bool)

(assert (=> b!7159863 m!7865844))

(assert (=> b!7159865 m!7865740))

(declare-fun m!7865846 () Bool)

(assert (=> b!7159865 m!7865846))

(assert (=> b!7159865 m!7865846))

(declare-fun m!7865848 () Bool)

(assert (=> b!7159865 m!7865848))

(assert (=> b!7159861 m!7865740))

(declare-fun m!7865850 () Bool)

(assert (=> b!7159861 m!7865850))

(declare-fun m!7865852 () Bool)

(assert (=> b!7159858 m!7865852))

(declare-fun m!7865854 () Bool)

(assert (=> d!2230582 m!7865854))

(assert (=> d!2230582 m!7865740))

(declare-fun m!7865856 () Bool)

(assert (=> d!2230582 m!7865856))

(declare-fun m!7865858 () Bool)

(assert (=> b!7159859 m!7865858))

(declare-fun m!7865860 () Bool)

(assert (=> b!7159862 m!7865860))

(declare-fun m!7865862 () Bool)

(assert (=> b!7159860 m!7865862))

(assert (=> d!2230524 d!2230582))

(declare-fun bs!1890316 () Bool)

(declare-fun d!2230584 () Bool)

(assert (= bs!1890316 (and d!2230584 d!2230528)))

(declare-fun lambda!436834 () Int)

(assert (=> bs!1890316 (= lambda!436834 lambda!436812)))

(declare-fun bs!1890317 () Bool)

(assert (= bs!1890317 (and d!2230584 d!2230554)))

(assert (=> bs!1890317 (not (= lambda!436834 lambda!436821))))

(declare-fun bs!1890318 () Bool)

(assert (= bs!1890318 (and d!2230584 d!2230576)))

(assert (=> bs!1890318 (= lambda!436834 lambda!436828)))

(declare-fun bs!1890319 () Bool)

(assert (= bs!1890319 (and d!2230584 d!2230582)))

(assert (=> bs!1890319 (= lambda!436834 lambda!436831)))

(declare-fun lt!2569934 () List!69695)

(assert (=> d!2230584 (forall!17147 lt!2569934 lambda!436834)))

(declare-fun e!4301440 () List!69695)

(assert (=> d!2230584 (= lt!2569934 e!4301440)))

(declare-fun c!1334303 () Bool)

(assert (=> d!2230584 (= c!1334303 (is-Cons!69572 (toList!11261 z!3530)))))

(assert (=> d!2230584 (= (unfocusZipperList!2303 (toList!11261 z!3530)) lt!2569934)))

(declare-fun b!7159872 () Bool)

(declare-fun generalisedConcat!2447 (List!69695) Regex!18318)

(assert (=> b!7159872 (= e!4301440 (Cons!69571 (generalisedConcat!2447 (exprs!7770 (h!76020 (toList!11261 z!3530)))) (unfocusZipperList!2303 (t!383713 (toList!11261 z!3530)))))))

(declare-fun b!7159873 () Bool)

(assert (=> b!7159873 (= e!4301440 Nil!69571)))

(assert (= (and d!2230584 c!1334303) b!7159872))

(assert (= (and d!2230584 (not c!1334303)) b!7159873))

(declare-fun m!7865864 () Bool)

(assert (=> d!2230584 m!7865864))

(declare-fun m!7865866 () Bool)

(assert (=> b!7159872 m!7865866))

(declare-fun m!7865868 () Bool)

(assert (=> b!7159872 m!7865868))

(assert (=> d!2230524 d!2230584))

(declare-fun d!2230586 () Bool)

(declare-fun nullableFct!3027 (Regex!18318) Bool)

(assert (=> d!2230586 (= (nullable!7755 (h!76019 (exprs!7770 lt!2569904))) (nullableFct!3027 (h!76019 (exprs!7770 lt!2569904))))))

(declare-fun bs!1890320 () Bool)

(assert (= bs!1890320 d!2230586))

(declare-fun m!7865870 () Bool)

(assert (=> bs!1890320 m!7865870))

(assert (=> b!7159738 d!2230586))

(declare-fun d!2230588 () Bool)

(assert (=> d!2230588 true))

(declare-fun setRes!52876 () Bool)

(assert (=> d!2230588 setRes!52876))

(declare-fun condSetEmpty!52876 () Bool)

(declare-fun res!2919308 () (Set Context!14540))

(assert (=> d!2230588 (= condSetEmpty!52876 (= res!2919308 (as set.empty (Set Context!14540))))))

(assert (=> d!2230588 (= (choose!55335 z!3530 lambda!436806) res!2919308)))

(declare-fun setIsEmpty!52876 () Bool)

(assert (=> setIsEmpty!52876 setRes!52876))

(declare-fun setNonEmpty!52876 () Bool)

(declare-fun setElem!52876 () Context!14540)

(declare-fun e!4301443 () Bool)

(declare-fun tp!1980044 () Bool)

(assert (=> setNonEmpty!52876 (= setRes!52876 (and tp!1980044 (inv!88818 setElem!52876) e!4301443))))

(declare-fun setRest!52876 () (Set Context!14540))

(assert (=> setNonEmpty!52876 (= res!2919308 (set.union (set.insert setElem!52876 (as set.empty (Set Context!14540))) setRest!52876))))

(declare-fun b!7159876 () Bool)

(declare-fun tp!1980045 () Bool)

(assert (=> b!7159876 (= e!4301443 tp!1980045)))

(assert (= (and d!2230588 condSetEmpty!52876) setIsEmpty!52876))

(assert (= (and d!2230588 (not condSetEmpty!52876)) setNonEmpty!52876))

(assert (= setNonEmpty!52876 b!7159876))

(declare-fun m!7865872 () Bool)

(assert (=> setNonEmpty!52876 m!7865872))

(assert (=> d!2230550 d!2230588))

(declare-fun d!2230590 () Bool)

(assert (=> d!2230590 (= (flatMap!2650 z!3530 lambda!436818) (choose!55335 z!3530 lambda!436818))))

(declare-fun bs!1890321 () Bool)

(assert (= bs!1890321 d!2230590))

(declare-fun m!7865874 () Bool)

(assert (=> bs!1890321 m!7865874))

(assert (=> d!2230540 d!2230590))

(declare-fun c!1334318 () Bool)

(declare-fun bm!651966 () Bool)

(declare-fun call!651976 () List!69695)

(declare-fun call!651971 () (Set Context!14540))

(assert (=> bm!651966 (= call!651971 (derivationStepZipperDown!2497 (ite c!1334318 (regTwo!37149 (h!76019 (exprs!7770 lt!2569904))) (regOne!37148 (h!76019 (exprs!7770 lt!2569904)))) (ite c!1334318 (Context!14541 (t!383712 (exprs!7770 lt!2569904))) (Context!14541 call!651976)) lt!2569903))))

(declare-fun bm!651967 () Bool)

(declare-fun call!651975 () (Set Context!14540))

(declare-fun call!651972 () (Set Context!14540))

(assert (=> bm!651967 (= call!651975 call!651972)))

(declare-fun d!2230592 () Bool)

(declare-fun c!1334316 () Bool)

(assert (=> d!2230592 (= c!1334316 (and (is-ElementMatch!18318 (h!76019 (exprs!7770 lt!2569904))) (= (c!1334258 (h!76019 (exprs!7770 lt!2569904))) lt!2569903)))))

(declare-fun e!4301460 () (Set Context!14540))

(assert (=> d!2230592 (= (derivationStepZipperDown!2497 (h!76019 (exprs!7770 lt!2569904)) (Context!14541 (t!383712 (exprs!7770 lt!2569904))) lt!2569903) e!4301460)))

(declare-fun b!7159899 () Bool)

(declare-fun e!4301457 () (Set Context!14540))

(assert (=> b!7159899 (= e!4301457 (set.union call!651971 call!651972))))

(declare-fun b!7159900 () Bool)

(declare-fun e!4301461 () (Set Context!14540))

(assert (=> b!7159900 (= e!4301461 (as set.empty (Set Context!14540)))))

(declare-fun b!7159901 () Bool)

(declare-fun c!1334314 () Bool)

(declare-fun e!4301456 () Bool)

(assert (=> b!7159901 (= c!1334314 e!4301456)))

(declare-fun res!2919311 () Bool)

(assert (=> b!7159901 (=> (not res!2919311) (not e!4301456))))

(assert (=> b!7159901 (= res!2919311 (is-Concat!27163 (h!76019 (exprs!7770 lt!2569904))))))

(declare-fun e!4301459 () (Set Context!14540))

(assert (=> b!7159901 (= e!4301459 e!4301457)))

(declare-fun bm!651968 () Bool)

(declare-fun c!1334317 () Bool)

(declare-fun call!651973 () (Set Context!14540))

(declare-fun call!651974 () List!69695)

(assert (=> bm!651968 (= call!651973 (derivationStepZipperDown!2497 (ite c!1334318 (regOne!37149 (h!76019 (exprs!7770 lt!2569904))) (ite c!1334314 (regTwo!37148 (h!76019 (exprs!7770 lt!2569904))) (ite c!1334317 (regOne!37148 (h!76019 (exprs!7770 lt!2569904))) (reg!18647 (h!76019 (exprs!7770 lt!2569904)))))) (ite (or c!1334318 c!1334314) (Context!14541 (t!383712 (exprs!7770 lt!2569904))) (Context!14541 call!651974)) lt!2569903))))

(declare-fun b!7159902 () Bool)

(declare-fun e!4301458 () (Set Context!14540))

(assert (=> b!7159902 (= e!4301457 e!4301458)))

(assert (=> b!7159902 (= c!1334317 (is-Concat!27163 (h!76019 (exprs!7770 lt!2569904))))))

(declare-fun b!7159903 () Bool)

(declare-fun c!1334315 () Bool)

(assert (=> b!7159903 (= c!1334315 (is-Star!18318 (h!76019 (exprs!7770 lt!2569904))))))

(assert (=> b!7159903 (= e!4301458 e!4301461)))

(declare-fun b!7159904 () Bool)

(assert (=> b!7159904 (= e!4301461 call!651975)))

(declare-fun b!7159905 () Bool)

(assert (=> b!7159905 (= e!4301460 e!4301459)))

(assert (=> b!7159905 (= c!1334318 (is-Union!18318 (h!76019 (exprs!7770 lt!2569904))))))

(declare-fun b!7159906 () Bool)

(assert (=> b!7159906 (= e!4301456 (nullable!7755 (regOne!37148 (h!76019 (exprs!7770 lt!2569904)))))))

(declare-fun bm!651969 () Bool)

(declare-fun $colon$colon!2836 (List!69695 Regex!18318) List!69695)

(assert (=> bm!651969 (= call!651976 ($colon$colon!2836 (exprs!7770 (Context!14541 (t!383712 (exprs!7770 lt!2569904)))) (ite (or c!1334314 c!1334317) (regTwo!37148 (h!76019 (exprs!7770 lt!2569904))) (h!76019 (exprs!7770 lt!2569904)))))))

(declare-fun bm!651970 () Bool)

(assert (=> bm!651970 (= call!651974 call!651976)))

(declare-fun b!7159907 () Bool)

(assert (=> b!7159907 (= e!4301460 (set.insert (Context!14541 (t!383712 (exprs!7770 lt!2569904))) (as set.empty (Set Context!14540))))))

(declare-fun bm!651971 () Bool)

(assert (=> bm!651971 (= call!651972 call!651973)))

(declare-fun b!7159908 () Bool)

(assert (=> b!7159908 (= e!4301458 call!651975)))

(declare-fun b!7159909 () Bool)

(assert (=> b!7159909 (= e!4301459 (set.union call!651973 call!651971))))

(assert (= (and d!2230592 c!1334316) b!7159907))

(assert (= (and d!2230592 (not c!1334316)) b!7159905))

(assert (= (and b!7159905 c!1334318) b!7159909))

(assert (= (and b!7159905 (not c!1334318)) b!7159901))

(assert (= (and b!7159901 res!2919311) b!7159906))

(assert (= (and b!7159901 c!1334314) b!7159899))

(assert (= (and b!7159901 (not c!1334314)) b!7159902))

(assert (= (and b!7159902 c!1334317) b!7159908))

(assert (= (and b!7159902 (not c!1334317)) b!7159903))

(assert (= (and b!7159903 c!1334315) b!7159904))

(assert (= (and b!7159903 (not c!1334315)) b!7159900))

(assert (= (or b!7159908 b!7159904) bm!651970))

(assert (= (or b!7159908 b!7159904) bm!651967))

(assert (= (or b!7159899 bm!651967) bm!651971))

(assert (= (or b!7159899 bm!651970) bm!651969))

(assert (= (or b!7159909 b!7159899) bm!651966))

(assert (= (or b!7159909 bm!651971) bm!651968))

(declare-fun m!7865876 () Bool)

(assert (=> bm!651966 m!7865876))

(declare-fun m!7865878 () Bool)

(assert (=> bm!651968 m!7865878))

(declare-fun m!7865880 () Bool)

(assert (=> b!7159906 m!7865880))

(declare-fun m!7865882 () Bool)

(assert (=> bm!651969 m!7865882))

(declare-fun m!7865884 () Bool)

(assert (=> b!7159907 m!7865884))

(assert (=> bm!651940 d!2230592))

(declare-fun d!2230594 () Bool)

(declare-fun c!1334319 () Bool)

(assert (=> d!2230594 (= c!1334319 (is-Nil!69572 lt!2569920))))

(declare-fun e!4301462 () (Set Context!14540))

(assert (=> d!2230594 (= (content!14292 lt!2569920) e!4301462)))

(declare-fun b!7159910 () Bool)

(assert (=> b!7159910 (= e!4301462 (as set.empty (Set Context!14540)))))

(declare-fun b!7159911 () Bool)

(assert (=> b!7159911 (= e!4301462 (set.union (set.insert (h!76020 lt!2569920) (as set.empty (Set Context!14540))) (content!14292 (t!383713 lt!2569920))))))

(assert (= (and d!2230594 c!1334319) b!7159910))

(assert (= (and d!2230594 (not c!1334319)) b!7159911))

(declare-fun m!7865886 () Bool)

(assert (=> b!7159911 m!7865886))

(declare-fun m!7865888 () Bool)

(assert (=> b!7159911 m!7865888))

(assert (=> b!7159722 d!2230594))

(declare-fun d!2230596 () Bool)

(declare-fun res!2919316 () Bool)

(declare-fun e!4301467 () Bool)

(assert (=> d!2230596 (=> res!2919316 e!4301467)))

(assert (=> d!2230596 (= res!2919316 (is-Nil!69572 lt!2569920))))

(assert (=> d!2230596 (= (noDuplicate!2863 lt!2569920) e!4301467)))

(declare-fun b!7159916 () Bool)

(declare-fun e!4301468 () Bool)

(assert (=> b!7159916 (= e!4301467 e!4301468)))

(declare-fun res!2919317 () Bool)

(assert (=> b!7159916 (=> (not res!2919317) (not e!4301468))))

(declare-fun contains!20704 (List!69696 Context!14540) Bool)

(assert (=> b!7159916 (= res!2919317 (not (contains!20704 (t!383713 lt!2569920) (h!76020 lt!2569920))))))

(declare-fun b!7159917 () Bool)

(assert (=> b!7159917 (= e!4301468 (noDuplicate!2863 (t!383713 lt!2569920)))))

(assert (= (and d!2230596 (not res!2919316)) b!7159916))

(assert (= (and b!7159916 res!2919317) b!7159917))

(declare-fun m!7865890 () Bool)

(assert (=> b!7159916 m!7865890))

(declare-fun m!7865892 () Bool)

(assert (=> b!7159917 m!7865892))

(assert (=> d!2230526 d!2230596))

(declare-fun d!2230598 () Bool)

(declare-fun e!4301476 () Bool)

(assert (=> d!2230598 e!4301476))

(declare-fun res!2919323 () Bool)

(assert (=> d!2230598 (=> (not res!2919323) (not e!4301476))))

(declare-fun res!2919322 () List!69696)

(assert (=> d!2230598 (= res!2919323 (noDuplicate!2863 res!2919322))))

(declare-fun e!4301475 () Bool)

(assert (=> d!2230598 e!4301475))

(assert (=> d!2230598 (= (choose!55334 z!3530) res!2919322)))

(declare-fun b!7159925 () Bool)

(declare-fun e!4301477 () Bool)

(declare-fun tp!1980051 () Bool)

(assert (=> b!7159925 (= e!4301477 tp!1980051)))

(declare-fun tp!1980050 () Bool)

(declare-fun b!7159924 () Bool)

(assert (=> b!7159924 (= e!4301475 (and (inv!88818 (h!76020 res!2919322)) e!4301477 tp!1980050))))

(declare-fun b!7159926 () Bool)

(assert (=> b!7159926 (= e!4301476 (= (content!14292 res!2919322) z!3530))))

(assert (= b!7159924 b!7159925))

(assert (= (and d!2230598 (is-Cons!69572 res!2919322)) b!7159924))

(assert (= (and d!2230598 res!2919323) b!7159926))

(declare-fun m!7865894 () Bool)

(assert (=> d!2230598 m!7865894))

(declare-fun m!7865896 () Bool)

(assert (=> b!7159924 m!7865896))

(declare-fun m!7865898 () Bool)

(assert (=> b!7159926 m!7865898))

(assert (=> d!2230526 d!2230598))

(declare-fun d!2230600 () Bool)

(declare-fun lt!2569935 () Regex!18318)

(assert (=> d!2230600 (validRegex!9444 lt!2569935)))

(assert (=> d!2230600 (= lt!2569935 (generalisedUnion!2747 (unfocusZipperList!2303 (toList!11261 (set.insert (Context!14541 (Cons!69571 EmptyExpr!18318 Nil!69571)) (as set.empty (Set Context!14540)))))))))

(assert (=> d!2230600 (= (unfocusZipper!2578 (toList!11261 (set.insert (Context!14541 (Cons!69571 EmptyExpr!18318 Nil!69571)) (as set.empty (Set Context!14540))))) lt!2569935)))

(declare-fun bs!1890322 () Bool)

(assert (= bs!1890322 d!2230600))

(declare-fun m!7865900 () Bool)

(assert (=> bs!1890322 m!7865900))

(assert (=> bs!1890322 m!7865756))

(declare-fun m!7865902 () Bool)

(assert (=> bs!1890322 m!7865902))

(assert (=> bs!1890322 m!7865902))

(declare-fun m!7865904 () Bool)

(assert (=> bs!1890322 m!7865904))

(assert (=> b!7159725 d!2230600))

(declare-fun d!2230602 () Bool)

(declare-fun e!4301478 () Bool)

(assert (=> d!2230602 e!4301478))

(declare-fun res!2919324 () Bool)

(assert (=> d!2230602 (=> (not res!2919324) (not e!4301478))))

(declare-fun lt!2569936 () List!69696)

(assert (=> d!2230602 (= res!2919324 (noDuplicate!2863 lt!2569936))))

(assert (=> d!2230602 (= lt!2569936 (choose!55334 (set.insert (Context!14541 (Cons!69571 EmptyExpr!18318 Nil!69571)) (as set.empty (Set Context!14540)))))))

(assert (=> d!2230602 (= (toList!11261 (set.insert (Context!14541 (Cons!69571 EmptyExpr!18318 Nil!69571)) (as set.empty (Set Context!14540)))) lt!2569936)))

(declare-fun b!7159927 () Bool)

(assert (=> b!7159927 (= e!4301478 (= (content!14292 lt!2569936) (set.insert (Context!14541 (Cons!69571 EmptyExpr!18318 Nil!69571)) (as set.empty (Set Context!14540)))))))

(assert (= (and d!2230602 res!2919324) b!7159927))

(declare-fun m!7865906 () Bool)

(assert (=> d!2230602 m!7865906))

(assert (=> d!2230602 m!7865754))

(declare-fun m!7865908 () Bool)

(assert (=> d!2230602 m!7865908))

(declare-fun m!7865910 () Bool)

(assert (=> b!7159927 m!7865910))

(assert (=> b!7159725 d!2230602))

(declare-fun d!2230604 () Bool)

(assert (=> d!2230604 (= (validRegex!9444 EmptyExpr!18318) true)))

(assert (=> d!2230530 d!2230604))

(declare-fun d!2230606 () Bool)

(declare-fun res!2919325 () Bool)

(declare-fun e!4301479 () Bool)

(assert (=> d!2230606 (=> res!2919325 e!4301479)))

(assert (=> d!2230606 (= res!2919325 (is-Nil!69571 (exprs!7770 setElem!52864)))))

(assert (=> d!2230606 (= (forall!17147 (exprs!7770 setElem!52864) lambda!436812) e!4301479)))

(declare-fun b!7159928 () Bool)

(declare-fun e!4301480 () Bool)

(assert (=> b!7159928 (= e!4301479 e!4301480)))

(declare-fun res!2919326 () Bool)

(assert (=> b!7159928 (=> (not res!2919326) (not e!4301480))))

(assert (=> b!7159928 (= res!2919326 (dynLambda!28327 lambda!436812 (h!76019 (exprs!7770 setElem!52864))))))

(declare-fun b!7159929 () Bool)

(assert (=> b!7159929 (= e!4301480 (forall!17147 (t!383712 (exprs!7770 setElem!52864)) lambda!436812))))

(assert (= (and d!2230606 (not res!2919325)) b!7159928))

(assert (= (and b!7159928 res!2919326) b!7159929))

(declare-fun b_lambda!273413 () Bool)

(assert (=> (not b_lambda!273413) (not b!7159928)))

(declare-fun m!7865912 () Bool)

(assert (=> b!7159928 m!7865912))

(declare-fun m!7865914 () Bool)

(assert (=> b!7159929 m!7865914))

(assert (=> d!2230528 d!2230606))

(declare-fun d!2230608 () Bool)

(declare-fun res!2919327 () Bool)

(declare-fun e!4301481 () Bool)

(assert (=> d!2230608 (=> res!2919327 e!4301481)))

(assert (=> d!2230608 (= res!2919327 (is-Nil!69572 lt!2569924))))

(assert (=> d!2230608 (= (noDuplicate!2863 lt!2569924) e!4301481)))

(declare-fun b!7159930 () Bool)

(declare-fun e!4301482 () Bool)

(assert (=> b!7159930 (= e!4301481 e!4301482)))

(declare-fun res!2919328 () Bool)

(assert (=> b!7159930 (=> (not res!2919328) (not e!4301482))))

(assert (=> b!7159930 (= res!2919328 (not (contains!20704 (t!383713 lt!2569924) (h!76020 lt!2569924))))))

(declare-fun b!7159931 () Bool)

(assert (=> b!7159931 (= e!4301482 (noDuplicate!2863 (t!383713 lt!2569924)))))

(assert (= (and d!2230608 (not res!2919327)) b!7159930))

(assert (= (and b!7159930 res!2919328) b!7159931))

(declare-fun m!7865916 () Bool)

(assert (=> b!7159930 m!7865916))

(declare-fun m!7865918 () Bool)

(assert (=> b!7159931 m!7865918))

(assert (=> d!2230548 d!2230608))

(declare-fun d!2230610 () Bool)

(declare-fun e!4301484 () Bool)

(assert (=> d!2230610 e!4301484))

(declare-fun res!2919330 () Bool)

(assert (=> d!2230610 (=> (not res!2919330) (not e!4301484))))

(declare-fun res!2919329 () List!69696)

(assert (=> d!2230610 (= res!2919330 (noDuplicate!2863 res!2919329))))

(declare-fun e!4301483 () Bool)

(assert (=> d!2230610 e!4301483))

(assert (=> d!2230610 (= (choose!55334 lt!2569905) res!2919329)))

(declare-fun b!7159933 () Bool)

(declare-fun e!4301485 () Bool)

(declare-fun tp!1980053 () Bool)

(assert (=> b!7159933 (= e!4301485 tp!1980053)))

(declare-fun tp!1980052 () Bool)

(declare-fun b!7159932 () Bool)

(assert (=> b!7159932 (= e!4301483 (and (inv!88818 (h!76020 res!2919329)) e!4301485 tp!1980052))))

(declare-fun b!7159934 () Bool)

(assert (=> b!7159934 (= e!4301484 (= (content!14292 res!2919329) lt!2569905))))

(assert (= b!7159932 b!7159933))

(assert (= (and d!2230610 (is-Cons!69572 res!2919329)) b!7159932))

(assert (= (and d!2230610 res!2919330) b!7159934))

(declare-fun m!7865920 () Bool)

(assert (=> d!2230610 m!7865920))

(declare-fun m!7865922 () Bool)

(assert (=> b!7159932 m!7865922))

(declare-fun m!7865924 () Bool)

(assert (=> b!7159934 m!7865924))

(assert (=> d!2230548 d!2230610))

(declare-fun e!4301488 () Bool)

(assert (=> b!7159759 (= tp!1980023 e!4301488)))

(declare-fun b!7159946 () Bool)

(declare-fun tp!1980065 () Bool)

(declare-fun tp!1980064 () Bool)

(assert (=> b!7159946 (= e!4301488 (and tp!1980065 tp!1980064))))

(declare-fun b!7159947 () Bool)

(declare-fun tp!1980068 () Bool)

(assert (=> b!7159947 (= e!4301488 tp!1980068)))

(declare-fun b!7159948 () Bool)

(declare-fun tp!1980067 () Bool)

(declare-fun tp!1980066 () Bool)

(assert (=> b!7159948 (= e!4301488 (and tp!1980067 tp!1980066))))

(declare-fun b!7159945 () Bool)

(assert (=> b!7159945 (= e!4301488 tp_is_empty!46209)))

(assert (= (and b!7159759 (is-ElementMatch!18318 (h!76019 (exprs!7770 setElem!52864)))) b!7159945))

(assert (= (and b!7159759 (is-Concat!27163 (h!76019 (exprs!7770 setElem!52864)))) b!7159946))

(assert (= (and b!7159759 (is-Star!18318 (h!76019 (exprs!7770 setElem!52864)))) b!7159947))

(assert (= (and b!7159759 (is-Union!18318 (h!76019 (exprs!7770 setElem!52864)))) b!7159948))

(declare-fun b!7159949 () Bool)

(declare-fun e!4301489 () Bool)

(declare-fun tp!1980069 () Bool)

(declare-fun tp!1980070 () Bool)

(assert (=> b!7159949 (= e!4301489 (and tp!1980069 tp!1980070))))

(assert (=> b!7159759 (= tp!1980024 e!4301489)))

(assert (= (and b!7159759 (is-Cons!69571 (t!383712 (exprs!7770 setElem!52864)))) b!7159949))

(declare-fun condSetEmpty!52877 () Bool)

(assert (=> setNonEmpty!52870 (= condSetEmpty!52877 (= setRest!52870 (as set.empty (Set Context!14540))))))

(declare-fun setRes!52877 () Bool)

(assert (=> setNonEmpty!52870 (= tp!1980018 setRes!52877)))

(declare-fun setIsEmpty!52877 () Bool)

(assert (=> setIsEmpty!52877 setRes!52877))

(declare-fun e!4301490 () Bool)

(declare-fun setElem!52877 () Context!14540)

(declare-fun setNonEmpty!52877 () Bool)

(declare-fun tp!1980072 () Bool)

(assert (=> setNonEmpty!52877 (= setRes!52877 (and tp!1980072 (inv!88818 setElem!52877) e!4301490))))

(declare-fun setRest!52877 () (Set Context!14540))

(assert (=> setNonEmpty!52877 (= setRest!52870 (set.union (set.insert setElem!52877 (as set.empty (Set Context!14540))) setRest!52877))))

(declare-fun b!7159950 () Bool)

(declare-fun tp!1980071 () Bool)

(assert (=> b!7159950 (= e!4301490 tp!1980071)))

(assert (= (and setNonEmpty!52870 condSetEmpty!52877) setIsEmpty!52877))

(assert (= (and setNonEmpty!52870 (not condSetEmpty!52877)) setNonEmpty!52877))

(assert (= setNonEmpty!52877 b!7159950))

(declare-fun m!7865926 () Bool)

(assert (=> setNonEmpty!52877 m!7865926))

(declare-fun b!7159951 () Bool)

(declare-fun e!4301491 () Bool)

(declare-fun tp!1980073 () Bool)

(assert (=> b!7159951 (= e!4301491 (and tp_is_empty!46209 tp!1980073))))

(assert (=> b!7159748 (= tp!1980012 e!4301491)))

(assert (= (and b!7159748 (is-Cons!69570 (t!383711 (t!383711 s!7967)))) b!7159951))

(declare-fun b!7159952 () Bool)

(declare-fun e!4301492 () Bool)

(declare-fun tp!1980074 () Bool)

(declare-fun tp!1980075 () Bool)

(assert (=> b!7159952 (= e!4301492 (and tp!1980074 tp!1980075))))

(assert (=> b!7159754 (= tp!1980017 e!4301492)))

(assert (= (and b!7159754 (is-Cons!69571 (exprs!7770 setElem!52870))) b!7159952))

(declare-fun b_lambda!273415 () Bool)

(assert (= b_lambda!273411 (or d!2230554 b_lambda!273415)))

(declare-fun bs!1890323 () Bool)

(declare-fun d!2230612 () Bool)

(assert (= bs!1890323 (and d!2230612 d!2230554)))

(assert (=> bs!1890323 (= (dynLambda!28327 lambda!436821 (h!76019 (exprs!7770 lt!2569904))) (nullable!7755 (h!76019 (exprs!7770 lt!2569904))))))

(assert (=> bs!1890323 m!7865762))

(assert (=> b!7159809 d!2230612))

(declare-fun b_lambda!273417 () Bool)

(assert (= b_lambda!273413 (or d!2230528 b_lambda!273417)))

(declare-fun bs!1890324 () Bool)

(declare-fun d!2230614 () Bool)

(assert (= bs!1890324 (and d!2230614 d!2230528)))

(assert (=> bs!1890324 (= (dynLambda!28327 lambda!436812 (h!76019 (exprs!7770 setElem!52864))) (validRegex!9444 (h!76019 (exprs!7770 setElem!52864))))))

(declare-fun m!7865928 () Bool)

(assert (=> bs!1890324 m!7865928))

(assert (=> b!7159928 d!2230614))

(push 1)

(assert (not b!7159862))

(assert (not d!2230600))

(assert (not b!7159947))

(assert (not b!7159949))

(assert (not bm!651944))

(assert (not b!7159906))

(assert (not b!7159934))

(assert (not d!2230590))

(assert (not b!7159929))

(assert (not d!2230582))

(assert (not b!7159861))

(assert (not b!7159860))

(assert (not bs!1890324))

(assert (not bm!651969))

(assert (not d!2230584))

(assert (not bm!651966))

(assert (not b!7159951))

(assert (not b!7159946))

(assert (not d!2230576))

(assert (not b!7159804))

(assert (not b!7159859))

(assert (not b!7159810))

(assert tp_is_empty!46209)

(assert (not b!7159858))

(assert (not b!7159865))

(assert (not b!7159927))

(assert (not d!2230586))

(assert (not b!7159926))

(assert (not b!7159863))

(assert (not b!7159932))

(assert (not b!7159799))

(assert (not b!7159911))

(assert (not b!7159931))

(assert (not b!7159933))

(assert (not setNonEmpty!52876))

(assert (not b!7159802))

(assert (not b!7159925))

(assert (not d!2230610))

(assert (not b!7159948))

(assert (not setNonEmpty!52877))

(assert (not b!7159917))

(assert (not b!7159872))

(assert (not b!7159952))

(assert (not bm!651968))

(assert (not d!2230602))

(assert (not b!7159950))

(assert (not b!7159930))

(assert (not b!7159924))

(assert (not b!7159916))

(assert (not bs!1890323))

(assert (not d!2230598))

(assert (not bm!651951))

(assert (not b_lambda!273417))

(assert (not b!7159876))

(assert (not bm!651953))

(assert (not b_lambda!273415))

(assert (not b!7159836))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

