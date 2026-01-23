; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697030 () Bool)

(assert start!697030)

(declare-fun bs!1889406 () Bool)

(declare-fun b!7148710 () Bool)

(assert (= bs!1889406 (and b!7148710 start!697030)))

(declare-fun lambda!436002 () Int)

(declare-fun lambda!436001 () Int)

(assert (=> bs!1889406 (not (= lambda!436002 lambda!436001))))

(declare-fun b!7148704 () Bool)

(declare-fun e!4295625 () Bool)

(declare-fun tp!1973322 () Bool)

(assert (=> b!7148704 (= e!4295625 tp!1973322)))

(declare-fun b!7148705 () Bool)

(declare-fun tp_is_empty!46101 () Bool)

(assert (=> b!7148705 (= e!4295625 tp_is_empty!46101)))

(declare-fun b!7148706 () Bool)

(declare-fun res!2916202 () Bool)

(declare-fun e!4295623 () Bool)

(assert (=> b!7148706 (=> (not res!2916202) (not e!4295623))))

(declare-datatypes ((C!36738 0))(
  ( (C!36739 (val!28317 Int)) )
))
(declare-datatypes ((Regex!18232 0))(
  ( (ElementMatch!18232 (c!1332913 C!36738)) (Concat!27077 (regOne!36976 Regex!18232) (regTwo!36976 Regex!18232)) (EmptyExpr!18232) (Star!18232 (reg!18561 Regex!18232)) (EmptyLang!18232) (Union!18232 (regOne!36977 Regex!18232) (regTwo!36977 Regex!18232)) )
))
(declare-datatypes ((List!69536 0))(
  ( (Nil!69412) (Cons!69412 (h!75860 Regex!18232) (t!383553 List!69536)) )
))
(declare-fun l!9154 () List!69536)

(assert (=> b!7148706 (= res!2916202 (is-Cons!69412 l!9154))))

(declare-fun b!7148707 () Bool)

(declare-fun e!4295624 () Bool)

(declare-fun tp!1973318 () Bool)

(declare-fun tp!1973321 () Bool)

(assert (=> b!7148707 (= e!4295624 (and tp!1973318 tp!1973321))))

(declare-fun b!7148708 () Bool)

(declare-fun tp!1973320 () Bool)

(declare-fun tp!1973317 () Bool)

(assert (=> b!7148708 (= e!4295625 (and tp!1973320 tp!1973317))))

(declare-fun b!7148709 () Bool)

(declare-fun res!2916205 () Bool)

(assert (=> b!7148709 (=> (not res!2916205) (not e!4295623))))

(declare-fun isEmpty!40102 (List!69536) Bool)

(assert (=> b!7148709 (= res!2916205 (isEmpty!40102 (t!383553 l!9154)))))

(declare-fun res!2916204 () Bool)

(assert (=> start!697030 (=> (not res!2916204) (not e!4295623))))

(declare-fun forall!17072 (List!69536 Int) Bool)

(assert (=> start!697030 (= res!2916204 (forall!17072 l!9154 lambda!436001))))

(assert (=> start!697030 e!4295623))

(assert (=> start!697030 e!4295624))

(assert (=> start!697030 e!4295625))

(declare-fun r!13911 () Regex!18232)

(declare-fun nullable!7727 (Regex!18232) Bool)

(assert (=> b!7148710 (= e!4295623 (not (= (nullable!7727 r!13911) (forall!17072 l!9154 lambda!436002))))))

(declare-fun b!7148711 () Bool)

(declare-fun res!2916203 () Bool)

(assert (=> b!7148711 (=> (not res!2916203) (not e!4295623))))

(declare-fun generalisedConcat!2407 (List!69536) Regex!18232)

(assert (=> b!7148711 (= res!2916203 (= r!13911 (generalisedConcat!2407 l!9154)))))

(declare-fun b!7148712 () Bool)

(declare-fun tp!1973316 () Bool)

(declare-fun tp!1973319 () Bool)

(assert (=> b!7148712 (= e!4295625 (and tp!1973316 tp!1973319))))

(assert (= (and start!697030 res!2916204) b!7148711))

(assert (= (and b!7148711 res!2916203) b!7148706))

(assert (= (and b!7148706 res!2916202) b!7148709))

(assert (= (and b!7148709 res!2916205) b!7148710))

(assert (= (and start!697030 (is-Cons!69412 l!9154)) b!7148707))

(assert (= (and start!697030 (is-ElementMatch!18232 r!13911)) b!7148705))

(assert (= (and start!697030 (is-Concat!27077 r!13911)) b!7148712))

(assert (= (and start!697030 (is-Star!18232 r!13911)) b!7148704))

(assert (= (and start!697030 (is-Union!18232 r!13911)) b!7148708))

(declare-fun m!7860356 () Bool)

(assert (=> b!7148709 m!7860356))

(declare-fun m!7860358 () Bool)

(assert (=> start!697030 m!7860358))

(declare-fun m!7860360 () Bool)

(assert (=> b!7148710 m!7860360))

(declare-fun m!7860362 () Bool)

(assert (=> b!7148710 m!7860362))

(declare-fun m!7860364 () Bool)

(assert (=> b!7148711 m!7860364))

(push 1)

(assert (not b!7148710))

(assert (not b!7148707))

(assert (not b!7148709))

(assert (not b!7148712))

(assert (not b!7148711))

(assert tp_is_empty!46101)

(assert (not start!697030))

(assert (not b!7148704))

(assert (not b!7148708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228517 () Bool)

(declare-fun res!2916222 () Bool)

(declare-fun e!4295639 () Bool)

(assert (=> d!2228517 (=> res!2916222 e!4295639)))

(assert (=> d!2228517 (= res!2916222 (is-Nil!69412 l!9154))))

(assert (=> d!2228517 (= (forall!17072 l!9154 lambda!436001) e!4295639)))

(declare-fun b!7148744 () Bool)

(declare-fun e!4295640 () Bool)

(assert (=> b!7148744 (= e!4295639 e!4295640)))

(declare-fun res!2916223 () Bool)

(assert (=> b!7148744 (=> (not res!2916223) (not e!4295640))))

(declare-fun dynLambda!28274 (Int Regex!18232) Bool)

(assert (=> b!7148744 (= res!2916223 (dynLambda!28274 lambda!436001 (h!75860 l!9154)))))

(declare-fun b!7148745 () Bool)

(assert (=> b!7148745 (= e!4295640 (forall!17072 (t!383553 l!9154) lambda!436001))))

(assert (= (and d!2228517 (not res!2916222)) b!7148744))

(assert (= (and b!7148744 res!2916223) b!7148745))

(declare-fun b_lambda!272867 () Bool)

(assert (=> (not b_lambda!272867) (not b!7148744)))

(declare-fun m!7860376 () Bool)

(assert (=> b!7148744 m!7860376))

(declare-fun m!7860378 () Bool)

(assert (=> b!7148745 m!7860378))

(assert (=> start!697030 d!2228517))

(declare-fun d!2228519 () Bool)

(assert (=> d!2228519 (= (isEmpty!40102 (t!383553 l!9154)) (is-Nil!69412 (t!383553 l!9154)))))

(assert (=> b!7148709 d!2228519))

(declare-fun d!2228521 () Bool)

(declare-fun nullableFct!3005 (Regex!18232) Bool)

(assert (=> d!2228521 (= (nullable!7727 r!13911) (nullableFct!3005 r!13911))))

(declare-fun bs!1889408 () Bool)

(assert (= bs!1889408 d!2228521))

(declare-fun m!7860380 () Bool)

(assert (=> bs!1889408 m!7860380))

(assert (=> b!7148710 d!2228521))

(declare-fun d!2228523 () Bool)

(declare-fun res!2916224 () Bool)

(declare-fun e!4295641 () Bool)

(assert (=> d!2228523 (=> res!2916224 e!4295641)))

(assert (=> d!2228523 (= res!2916224 (is-Nil!69412 l!9154))))

(assert (=> d!2228523 (= (forall!17072 l!9154 lambda!436002) e!4295641)))

(declare-fun b!7148746 () Bool)

(declare-fun e!4295642 () Bool)

(assert (=> b!7148746 (= e!4295641 e!4295642)))

(declare-fun res!2916225 () Bool)

(assert (=> b!7148746 (=> (not res!2916225) (not e!4295642))))

(assert (=> b!7148746 (= res!2916225 (dynLambda!28274 lambda!436002 (h!75860 l!9154)))))

(declare-fun b!7148747 () Bool)

(assert (=> b!7148747 (= e!4295642 (forall!17072 (t!383553 l!9154) lambda!436002))))

(assert (= (and d!2228523 (not res!2916224)) b!7148746))

(assert (= (and b!7148746 res!2916225) b!7148747))

(declare-fun b_lambda!272869 () Bool)

(assert (=> (not b_lambda!272869) (not b!7148746)))

(declare-fun m!7860382 () Bool)

(assert (=> b!7148746 m!7860382))

(declare-fun m!7860384 () Bool)

(assert (=> b!7148747 m!7860384))

(assert (=> b!7148710 d!2228523))

(declare-fun bs!1889409 () Bool)

(declare-fun d!2228525 () Bool)

(assert (= bs!1889409 (and d!2228525 start!697030)))

(declare-fun lambda!436011 () Int)

(assert (=> bs!1889409 (= lambda!436011 lambda!436001)))

(declare-fun bs!1889410 () Bool)

(assert (= bs!1889410 (and d!2228525 b!7148710)))

(assert (=> bs!1889410 (not (= lambda!436011 lambda!436002))))

(declare-fun b!7148772 () Bool)

(declare-fun e!4295660 () Regex!18232)

(declare-fun e!4295662 () Regex!18232)

(assert (=> b!7148772 (= e!4295660 e!4295662)))

(declare-fun c!1332924 () Bool)

(assert (=> b!7148772 (= c!1332924 (is-Cons!69412 l!9154))))

(declare-fun b!7148773 () Bool)

(declare-fun e!4295664 () Bool)

(declare-fun lt!2569031 () Regex!18232)

(declare-fun isEmptyExpr!2059 (Regex!18232) Bool)

(assert (=> b!7148773 (= e!4295664 (isEmptyExpr!2059 lt!2569031))))

(declare-fun b!7148774 () Bool)

(declare-fun e!4295659 () Bool)

(assert (=> b!7148774 (= e!4295664 e!4295659)))

(declare-fun c!1332925 () Bool)

(declare-fun tail!14009 (List!69536) List!69536)

(assert (=> b!7148774 (= c!1332925 (isEmpty!40102 (tail!14009 l!9154)))))

(declare-fun b!7148775 () Bool)

(declare-fun e!4295663 () Bool)

(assert (=> b!7148775 (= e!4295663 (isEmpty!40102 (t!383553 l!9154)))))

(declare-fun b!7148776 () Bool)

(assert (=> b!7148776 (= e!4295662 (Concat!27077 (h!75860 l!9154) (generalisedConcat!2407 (t!383553 l!9154))))))

(declare-fun e!4295661 () Bool)

(assert (=> d!2228525 e!4295661))

(declare-fun res!2916235 () Bool)

(assert (=> d!2228525 (=> (not res!2916235) (not e!4295661))))

(declare-fun validRegex!9388 (Regex!18232) Bool)

(assert (=> d!2228525 (= res!2916235 (validRegex!9388 lt!2569031))))

(assert (=> d!2228525 (= lt!2569031 e!4295660)))

(declare-fun c!1332926 () Bool)

(assert (=> d!2228525 (= c!1332926 e!4295663)))

(declare-fun res!2916234 () Bool)

(assert (=> d!2228525 (=> (not res!2916234) (not e!4295663))))

(assert (=> d!2228525 (= res!2916234 (is-Cons!69412 l!9154))))

(assert (=> d!2228525 (forall!17072 l!9154 lambda!436011)))

(assert (=> d!2228525 (= (generalisedConcat!2407 l!9154) lt!2569031)))

(declare-fun b!7148777 () Bool)

(assert (=> b!7148777 (= e!4295661 e!4295664)))

(declare-fun c!1332923 () Bool)

(assert (=> b!7148777 (= c!1332923 (isEmpty!40102 l!9154))))

(declare-fun b!7148778 () Bool)

(declare-fun head!14539 (List!69536) Regex!18232)

(assert (=> b!7148778 (= e!4295659 (= lt!2569031 (head!14539 l!9154)))))

(declare-fun b!7148779 () Bool)

(assert (=> b!7148779 (= e!4295662 EmptyExpr!18232)))

(declare-fun b!7148780 () Bool)

(assert (=> b!7148780 (= e!4295660 (h!75860 l!9154))))

(declare-fun b!7148781 () Bool)

(declare-fun isConcat!1581 (Regex!18232) Bool)

(assert (=> b!7148781 (= e!4295659 (isConcat!1581 lt!2569031))))

(assert (= (and d!2228525 res!2916234) b!7148775))

(assert (= (and d!2228525 c!1332926) b!7148780))

(assert (= (and d!2228525 (not c!1332926)) b!7148772))

(assert (= (and b!7148772 c!1332924) b!7148776))

(assert (= (and b!7148772 (not c!1332924)) b!7148779))

(assert (= (and d!2228525 res!2916235) b!7148777))

(assert (= (and b!7148777 c!1332923) b!7148773))

(assert (= (and b!7148777 (not c!1332923)) b!7148774))

(assert (= (and b!7148774 c!1332925) b!7148778))

(assert (= (and b!7148774 (not c!1332925)) b!7148781))

(declare-fun m!7860386 () Bool)

(assert (=> b!7148774 m!7860386))

(assert (=> b!7148774 m!7860386))

(declare-fun m!7860388 () Bool)

(assert (=> b!7148774 m!7860388))

(assert (=> b!7148775 m!7860356))

(declare-fun m!7860390 () Bool)

(assert (=> b!7148776 m!7860390))

(declare-fun m!7860392 () Bool)

(assert (=> b!7148773 m!7860392))

(declare-fun m!7860394 () Bool)

(assert (=> b!7148777 m!7860394))

(declare-fun m!7860396 () Bool)

(assert (=> b!7148778 m!7860396))

(declare-fun m!7860398 () Bool)

(assert (=> d!2228525 m!7860398))

(declare-fun m!7860400 () Bool)

(assert (=> d!2228525 m!7860400))

(declare-fun m!7860402 () Bool)

(assert (=> b!7148781 m!7860402))

(assert (=> b!7148711 d!2228525))

(declare-fun e!4295669 () Bool)

(assert (=> b!7148708 (= tp!1973320 e!4295669)))

(declare-fun b!7148795 () Bool)

(declare-fun tp!1973354 () Bool)

(declare-fun tp!1973357 () Bool)

(assert (=> b!7148795 (= e!4295669 (and tp!1973354 tp!1973357))))

(declare-fun b!7148793 () Bool)

(assert (=> b!7148793 (= e!4295669 tp_is_empty!46101)))

(declare-fun b!7148797 () Bool)

(declare-fun tp!1973358 () Bool)

(declare-fun tp!1973355 () Bool)

(assert (=> b!7148797 (= e!4295669 (and tp!1973358 tp!1973355))))

(declare-fun b!7148796 () Bool)

(declare-fun tp!1973356 () Bool)

(assert (=> b!7148796 (= e!4295669 tp!1973356)))

(assert (= (and b!7148708 (is-ElementMatch!18232 (regOne!36977 r!13911))) b!7148793))

(assert (= (and b!7148708 (is-Concat!27077 (regOne!36977 r!13911))) b!7148795))

(assert (= (and b!7148708 (is-Star!18232 (regOne!36977 r!13911))) b!7148796))

(assert (= (and b!7148708 (is-Union!18232 (regOne!36977 r!13911))) b!7148797))

(declare-fun e!4295670 () Bool)

(assert (=> b!7148708 (= tp!1973317 e!4295670)))

(declare-fun b!7148799 () Bool)

(declare-fun tp!1973359 () Bool)

(declare-fun tp!1973362 () Bool)

(assert (=> b!7148799 (= e!4295670 (and tp!1973359 tp!1973362))))

(declare-fun b!7148798 () Bool)

(assert (=> b!7148798 (= e!4295670 tp_is_empty!46101)))

(declare-fun b!7148801 () Bool)

(declare-fun tp!1973363 () Bool)

(declare-fun tp!1973360 () Bool)

(assert (=> b!7148801 (= e!4295670 (and tp!1973363 tp!1973360))))

(declare-fun b!7148800 () Bool)

(declare-fun tp!1973361 () Bool)

(assert (=> b!7148800 (= e!4295670 tp!1973361)))

(assert (= (and b!7148708 (is-ElementMatch!18232 (regTwo!36977 r!13911))) b!7148798))

(assert (= (and b!7148708 (is-Concat!27077 (regTwo!36977 r!13911))) b!7148799))

(assert (= (and b!7148708 (is-Star!18232 (regTwo!36977 r!13911))) b!7148800))

(assert (= (and b!7148708 (is-Union!18232 (regTwo!36977 r!13911))) b!7148801))

(declare-fun e!4295671 () Bool)

(assert (=> b!7148704 (= tp!1973322 e!4295671)))

(declare-fun b!7148803 () Bool)

(declare-fun tp!1973364 () Bool)

(declare-fun tp!1973367 () Bool)

(assert (=> b!7148803 (= e!4295671 (and tp!1973364 tp!1973367))))

(declare-fun b!7148802 () Bool)

(assert (=> b!7148802 (= e!4295671 tp_is_empty!46101)))

(declare-fun b!7148805 () Bool)

(declare-fun tp!1973368 () Bool)

(declare-fun tp!1973365 () Bool)

(assert (=> b!7148805 (= e!4295671 (and tp!1973368 tp!1973365))))

(declare-fun b!7148804 () Bool)

(declare-fun tp!1973366 () Bool)

(assert (=> b!7148804 (= e!4295671 tp!1973366)))

(assert (= (and b!7148704 (is-ElementMatch!18232 (reg!18561 r!13911))) b!7148802))

(assert (= (and b!7148704 (is-Concat!27077 (reg!18561 r!13911))) b!7148803))

(assert (= (and b!7148704 (is-Star!18232 (reg!18561 r!13911))) b!7148804))

(assert (= (and b!7148704 (is-Union!18232 (reg!18561 r!13911))) b!7148805))

(declare-fun e!4295672 () Bool)

(assert (=> b!7148712 (= tp!1973316 e!4295672)))

(declare-fun b!7148807 () Bool)

(declare-fun tp!1973369 () Bool)

(declare-fun tp!1973372 () Bool)

(assert (=> b!7148807 (= e!4295672 (and tp!1973369 tp!1973372))))

(declare-fun b!7148806 () Bool)

(assert (=> b!7148806 (= e!4295672 tp_is_empty!46101)))

(declare-fun b!7148809 () Bool)

(declare-fun tp!1973373 () Bool)

(declare-fun tp!1973370 () Bool)

(assert (=> b!7148809 (= e!4295672 (and tp!1973373 tp!1973370))))

(declare-fun b!7148808 () Bool)

(declare-fun tp!1973371 () Bool)

(assert (=> b!7148808 (= e!4295672 tp!1973371)))

(assert (= (and b!7148712 (is-ElementMatch!18232 (regOne!36976 r!13911))) b!7148806))

(assert (= (and b!7148712 (is-Concat!27077 (regOne!36976 r!13911))) b!7148807))

(assert (= (and b!7148712 (is-Star!18232 (regOne!36976 r!13911))) b!7148808))

(assert (= (and b!7148712 (is-Union!18232 (regOne!36976 r!13911))) b!7148809))

(declare-fun e!4295673 () Bool)

(assert (=> b!7148712 (= tp!1973319 e!4295673)))

(declare-fun b!7148811 () Bool)

(declare-fun tp!1973374 () Bool)

(declare-fun tp!1973377 () Bool)

(assert (=> b!7148811 (= e!4295673 (and tp!1973374 tp!1973377))))

(declare-fun b!7148810 () Bool)

(assert (=> b!7148810 (= e!4295673 tp_is_empty!46101)))

(declare-fun b!7148813 () Bool)

(declare-fun tp!1973378 () Bool)

(declare-fun tp!1973375 () Bool)

(assert (=> b!7148813 (= e!4295673 (and tp!1973378 tp!1973375))))

(declare-fun b!7148812 () Bool)

(declare-fun tp!1973376 () Bool)

(assert (=> b!7148812 (= e!4295673 tp!1973376)))

(assert (= (and b!7148712 (is-ElementMatch!18232 (regTwo!36976 r!13911))) b!7148810))

(assert (= (and b!7148712 (is-Concat!27077 (regTwo!36976 r!13911))) b!7148811))

(assert (= (and b!7148712 (is-Star!18232 (regTwo!36976 r!13911))) b!7148812))

(assert (= (and b!7148712 (is-Union!18232 (regTwo!36976 r!13911))) b!7148813))

(declare-fun e!4295674 () Bool)

(assert (=> b!7148707 (= tp!1973318 e!4295674)))

(declare-fun b!7148815 () Bool)

(declare-fun tp!1973379 () Bool)

(declare-fun tp!1973382 () Bool)

(assert (=> b!7148815 (= e!4295674 (and tp!1973379 tp!1973382))))

(declare-fun b!7148814 () Bool)

(assert (=> b!7148814 (= e!4295674 tp_is_empty!46101)))

(declare-fun b!7148817 () Bool)

(declare-fun tp!1973383 () Bool)

(declare-fun tp!1973380 () Bool)

(assert (=> b!7148817 (= e!4295674 (and tp!1973383 tp!1973380))))

(declare-fun b!7148816 () Bool)

(declare-fun tp!1973381 () Bool)

(assert (=> b!7148816 (= e!4295674 tp!1973381)))

(assert (= (and b!7148707 (is-ElementMatch!18232 (h!75860 l!9154))) b!7148814))

(assert (= (and b!7148707 (is-Concat!27077 (h!75860 l!9154))) b!7148815))

(assert (= (and b!7148707 (is-Star!18232 (h!75860 l!9154))) b!7148816))

(assert (= (and b!7148707 (is-Union!18232 (h!75860 l!9154))) b!7148817))

(declare-fun b!7148822 () Bool)

(declare-fun e!4295677 () Bool)

(declare-fun tp!1973388 () Bool)

(declare-fun tp!1973389 () Bool)

(assert (=> b!7148822 (= e!4295677 (and tp!1973388 tp!1973389))))

(assert (=> b!7148707 (= tp!1973321 e!4295677)))

(assert (= (and b!7148707 (is-Cons!69412 (t!383553 l!9154))) b!7148822))

(declare-fun b_lambda!272873 () Bool)

(assert (= b_lambda!272869 (or b!7148710 b_lambda!272873)))

(declare-fun bs!1889411 () Bool)

(declare-fun d!2228531 () Bool)

(assert (= bs!1889411 (and d!2228531 b!7148710)))

(assert (=> bs!1889411 (= (dynLambda!28274 lambda!436002 (h!75860 l!9154)) (nullable!7727 (h!75860 l!9154)))))

(declare-fun m!7860408 () Bool)

(assert (=> bs!1889411 m!7860408))

(assert (=> b!7148746 d!2228531))

(declare-fun b_lambda!272875 () Bool)

(assert (= b_lambda!272867 (or start!697030 b_lambda!272875)))

(declare-fun bs!1889412 () Bool)

(declare-fun d!2228533 () Bool)

(assert (= bs!1889412 (and d!2228533 start!697030)))

(assert (=> bs!1889412 (= (dynLambda!28274 lambda!436001 (h!75860 l!9154)) (validRegex!9388 (h!75860 l!9154)))))

(declare-fun m!7860410 () Bool)

(assert (=> bs!1889412 m!7860410))

(assert (=> b!7148744 d!2228533))

(push 1)

(assert (not b!7148809))

(assert (not b!7148796))

(assert (not b!7148815))

(assert (not b!7148795))

(assert (not b!7148747))

(assert (not b!7148803))

(assert (not d!2228525))

(assert (not b!7148804))

(assert (not b!7148799))

(assert (not b!7148773))

(assert (not b!7148801))

(assert (not b!7148775))

(assert (not b!7148781))

(assert (not b!7148807))

(assert (not b!7148777))

(assert (not b!7148805))

(assert (not b!7148774))

(assert (not b!7148811))

(assert (not b!7148822))

(assert (not bs!1889411))

(assert tp_is_empty!46101)

(assert (not b!7148808))

(assert (not b!7148797))

(assert (not b!7148816))

(assert (not b_lambda!272873))

(assert (not bs!1889412))

(assert (not b!7148800))

(assert (not b!7148745))

(assert (not b!7148813))

(assert (not b!7148778))

(assert (not b!7148812))

(assert (not b_lambda!272875))

(assert (not d!2228521))

(assert (not b!7148776))

(assert (not b!7148817))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228545 () Bool)

(assert (=> d!2228545 (= (head!14539 l!9154) (h!75860 l!9154))))

(assert (=> b!7148778 d!2228545))

(declare-fun d!2228547 () Bool)

(assert (=> d!2228547 (= (nullable!7727 (h!75860 l!9154)) (nullableFct!3005 (h!75860 l!9154)))))

(declare-fun bs!1889418 () Bool)

(assert (= bs!1889418 d!2228547))

(declare-fun m!7860440 () Bool)

(assert (=> bs!1889418 m!7860440))

(assert (=> bs!1889411 d!2228547))

(declare-fun d!2228549 () Bool)

(assert (=> d!2228549 (= (isEmpty!40102 l!9154) (is-Nil!69412 l!9154))))

(assert (=> b!7148777 d!2228549))

(declare-fun d!2228551 () Bool)

(declare-fun res!2916246 () Bool)

(declare-fun e!4295709 () Bool)

(assert (=> d!2228551 (=> res!2916246 e!4295709)))

(assert (=> d!2228551 (= res!2916246 (is-Nil!69412 (t!383553 l!9154)))))

(assert (=> d!2228551 (= (forall!17072 (t!383553 l!9154) lambda!436002) e!4295709)))

(declare-fun b!7148894 () Bool)

(declare-fun e!4295710 () Bool)

(assert (=> b!7148894 (= e!4295709 e!4295710)))

(declare-fun res!2916247 () Bool)

(assert (=> b!7148894 (=> (not res!2916247) (not e!4295710))))

(assert (=> b!7148894 (= res!2916247 (dynLambda!28274 lambda!436002 (h!75860 (t!383553 l!9154))))))

(declare-fun b!7148895 () Bool)

(assert (=> b!7148895 (= e!4295710 (forall!17072 (t!383553 (t!383553 l!9154)) lambda!436002))))

(assert (= (and d!2228551 (not res!2916246)) b!7148894))

(assert (= (and b!7148894 res!2916247) b!7148895))

(declare-fun b_lambda!272883 () Bool)

(assert (=> (not b_lambda!272883) (not b!7148894)))

(declare-fun m!7860442 () Bool)

(assert (=> b!7148894 m!7860442))

(declare-fun m!7860444 () Bool)

(assert (=> b!7148895 m!7860444))

(assert (=> b!7148747 d!2228551))

(declare-fun d!2228553 () Bool)

(assert (=> d!2228553 (= (isConcat!1581 lt!2569031) (is-Concat!27077 lt!2569031))))

(assert (=> b!7148781 d!2228553))

(declare-fun d!2228555 () Bool)

(declare-fun res!2916248 () Bool)

(declare-fun e!4295711 () Bool)

(assert (=> d!2228555 (=> res!2916248 e!4295711)))

(assert (=> d!2228555 (= res!2916248 (is-Nil!69412 (t!383553 l!9154)))))

(assert (=> d!2228555 (= (forall!17072 (t!383553 l!9154) lambda!436001) e!4295711)))

(declare-fun b!7148896 () Bool)

(declare-fun e!4295712 () Bool)

(assert (=> b!7148896 (= e!4295711 e!4295712)))

(declare-fun res!2916249 () Bool)

(assert (=> b!7148896 (=> (not res!2916249) (not e!4295712))))

(assert (=> b!7148896 (= res!2916249 (dynLambda!28274 lambda!436001 (h!75860 (t!383553 l!9154))))))

(declare-fun b!7148897 () Bool)

(assert (=> b!7148897 (= e!4295712 (forall!17072 (t!383553 (t!383553 l!9154)) lambda!436001))))

(assert (= (and d!2228555 (not res!2916248)) b!7148896))

(assert (= (and b!7148896 res!2916249) b!7148897))

(declare-fun b_lambda!272885 () Bool)

(assert (=> (not b_lambda!272885) (not b!7148896)))

(declare-fun m!7860446 () Bool)

(assert (=> b!7148896 m!7860446))

(declare-fun m!7860448 () Bool)

(assert (=> b!7148897 m!7860448))

(assert (=> b!7148745 d!2228555))

(declare-fun b!7148912 () Bool)

(declare-fun e!4295726 () Bool)

(declare-fun e!4295730 () Bool)

(assert (=> b!7148912 (= e!4295726 e!4295730)))

(declare-fun c!1332941 () Bool)

(assert (=> b!7148912 (= c!1332941 (is-Union!18232 r!13911))))

(declare-fun b!7148913 () Bool)

(declare-fun e!4295728 () Bool)

(assert (=> b!7148913 (= e!4295728 e!4295726)))

(declare-fun res!2916264 () Bool)

(assert (=> b!7148913 (=> res!2916264 e!4295726)))

(assert (=> b!7148913 (= res!2916264 (is-Star!18232 r!13911))))

(declare-fun b!7148914 () Bool)

(declare-fun e!4295727 () Bool)

(assert (=> b!7148914 (= e!4295730 e!4295727)))

(declare-fun res!2916261 () Bool)

(declare-fun call!651453 () Bool)

(assert (=> b!7148914 (= res!2916261 call!651453)))

(assert (=> b!7148914 (=> res!2916261 e!4295727)))

(declare-fun b!7148915 () Bool)

(declare-fun e!4295729 () Bool)

(assert (=> b!7148915 (= e!4295730 e!4295729)))

(declare-fun res!2916260 () Bool)

(declare-fun call!651454 () Bool)

(assert (=> b!7148915 (= res!2916260 call!651454)))

(assert (=> b!7148915 (=> (not res!2916260) (not e!4295729))))

(declare-fun bm!651448 () Bool)

(assert (=> bm!651448 (= call!651453 (nullable!7727 (ite c!1332941 (regOne!36977 r!13911) (regTwo!36976 r!13911))))))

(declare-fun b!7148916 () Bool)

(assert (=> b!7148916 (= e!4295727 call!651454)))

(declare-fun bm!651449 () Bool)

(assert (=> bm!651449 (= call!651454 (nullable!7727 (ite c!1332941 (regTwo!36977 r!13911) (regOne!36976 r!13911))))))

(declare-fun b!7148917 () Bool)

(assert (=> b!7148917 (= e!4295729 call!651453)))

(declare-fun d!2228557 () Bool)

(declare-fun res!2916263 () Bool)

(declare-fun e!4295725 () Bool)

(assert (=> d!2228557 (=> res!2916263 e!4295725)))

(assert (=> d!2228557 (= res!2916263 (is-EmptyExpr!18232 r!13911))))

(assert (=> d!2228557 (= (nullableFct!3005 r!13911) e!4295725)))

(declare-fun b!7148918 () Bool)

(assert (=> b!7148918 (= e!4295725 e!4295728)))

(declare-fun res!2916262 () Bool)

(assert (=> b!7148918 (=> (not res!2916262) (not e!4295728))))

(assert (=> b!7148918 (= res!2916262 (and (not (is-EmptyLang!18232 r!13911)) (not (is-ElementMatch!18232 r!13911))))))

(assert (= (and d!2228557 (not res!2916263)) b!7148918))

(assert (= (and b!7148918 res!2916262) b!7148913))

(assert (= (and b!7148913 (not res!2916264)) b!7148912))

(assert (= (and b!7148912 c!1332941) b!7148914))

(assert (= (and b!7148912 (not c!1332941)) b!7148915))

(assert (= (and b!7148914 (not res!2916261)) b!7148916))

(assert (= (and b!7148915 res!2916260) b!7148917))

(assert (= (or b!7148916 b!7148915) bm!651449))

(assert (= (or b!7148914 b!7148917) bm!651448))

(declare-fun m!7860450 () Bool)

(assert (=> bm!651448 m!7860450))

(declare-fun m!7860452 () Bool)

(assert (=> bm!651449 m!7860452))

(assert (=> d!2228521 d!2228557))

(declare-fun d!2228559 () Bool)

(declare-fun res!2916278 () Bool)

(declare-fun e!4295749 () Bool)

(assert (=> d!2228559 (=> res!2916278 e!4295749)))

(assert (=> d!2228559 (= res!2916278 (is-ElementMatch!18232 lt!2569031))))

(assert (=> d!2228559 (= (validRegex!9388 lt!2569031) e!4295749)))

(declare-fun b!7148937 () Bool)

(declare-fun e!4295751 () Bool)

(declare-fun e!4295747 () Bool)

(assert (=> b!7148937 (= e!4295751 e!4295747)))

(declare-fun res!2916279 () Bool)

(assert (=> b!7148937 (=> (not res!2916279) (not e!4295747))))

(declare-fun call!651463 () Bool)

(assert (=> b!7148937 (= res!2916279 call!651463)))

(declare-fun b!7148938 () Bool)

(declare-fun e!4295750 () Bool)

(declare-fun e!4295745 () Bool)

(assert (=> b!7148938 (= e!4295750 e!4295745)))

(declare-fun c!1332946 () Bool)

(assert (=> b!7148938 (= c!1332946 (is-Union!18232 lt!2569031))))

(declare-fun b!7148939 () Bool)

(declare-fun call!651461 () Bool)

(assert (=> b!7148939 (= e!4295747 call!651461)))

(declare-fun b!7148940 () Bool)

(declare-fun res!2916275 () Bool)

(assert (=> b!7148940 (=> res!2916275 e!4295751)))

(assert (=> b!7148940 (= res!2916275 (not (is-Concat!27077 lt!2569031)))))

(assert (=> b!7148940 (= e!4295745 e!4295751)))

(declare-fun b!7148941 () Bool)

(declare-fun res!2916277 () Bool)

(declare-fun e!4295748 () Bool)

(assert (=> b!7148941 (=> (not res!2916277) (not e!4295748))))

(assert (=> b!7148941 (= res!2916277 call!651463)))

(assert (=> b!7148941 (= e!4295745 e!4295748)))

(declare-fun b!7148942 () Bool)

(declare-fun e!4295746 () Bool)

(declare-fun call!651462 () Bool)

(assert (=> b!7148942 (= e!4295746 call!651462)))

(declare-fun b!7148943 () Bool)

(assert (=> b!7148943 (= e!4295749 e!4295750)))

(declare-fun c!1332947 () Bool)

(assert (=> b!7148943 (= c!1332947 (is-Star!18232 lt!2569031))))

(declare-fun bm!651456 () Bool)

(assert (=> bm!651456 (= call!651463 call!651462)))

(declare-fun bm!651457 () Bool)

(assert (=> bm!651457 (= call!651461 (validRegex!9388 (ite c!1332946 (regTwo!36977 lt!2569031) (regTwo!36976 lt!2569031))))))

(declare-fun b!7148944 () Bool)

(assert (=> b!7148944 (= e!4295750 e!4295746)))

(declare-fun res!2916276 () Bool)

(assert (=> b!7148944 (= res!2916276 (not (nullable!7727 (reg!18561 lt!2569031))))))

(assert (=> b!7148944 (=> (not res!2916276) (not e!4295746))))

(declare-fun b!7148945 () Bool)

(assert (=> b!7148945 (= e!4295748 call!651461)))

(declare-fun bm!651458 () Bool)

(assert (=> bm!651458 (= call!651462 (validRegex!9388 (ite c!1332947 (reg!18561 lt!2569031) (ite c!1332946 (regOne!36977 lt!2569031) (regOne!36976 lt!2569031)))))))

(assert (= (and d!2228559 (not res!2916278)) b!7148943))

(assert (= (and b!7148943 c!1332947) b!7148944))

(assert (= (and b!7148943 (not c!1332947)) b!7148938))

(assert (= (and b!7148944 res!2916276) b!7148942))

(assert (= (and b!7148938 c!1332946) b!7148941))

(assert (= (and b!7148938 (not c!1332946)) b!7148940))

(assert (= (and b!7148941 res!2916277) b!7148945))

(assert (= (and b!7148940 (not res!2916275)) b!7148937))

(assert (= (and b!7148937 res!2916279) b!7148939))

(assert (= (or b!7148945 b!7148939) bm!651457))

(assert (= (or b!7148941 b!7148937) bm!651456))

(assert (= (or b!7148942 bm!651456) bm!651458))

(declare-fun m!7860454 () Bool)

(assert (=> bm!651457 m!7860454))

(declare-fun m!7860456 () Bool)

(assert (=> b!7148944 m!7860456))

(declare-fun m!7860458 () Bool)

(assert (=> bm!651458 m!7860458))

(assert (=> d!2228525 d!2228559))

(declare-fun d!2228561 () Bool)

(declare-fun res!2916280 () Bool)

(declare-fun e!4295752 () Bool)

(assert (=> d!2228561 (=> res!2916280 e!4295752)))

(assert (=> d!2228561 (= res!2916280 (is-Nil!69412 l!9154))))

(assert (=> d!2228561 (= (forall!17072 l!9154 lambda!436011) e!4295752)))

(declare-fun b!7148946 () Bool)

(declare-fun e!4295753 () Bool)

(assert (=> b!7148946 (= e!4295752 e!4295753)))

(declare-fun res!2916281 () Bool)

(assert (=> b!7148946 (=> (not res!2916281) (not e!4295753))))

(assert (=> b!7148946 (= res!2916281 (dynLambda!28274 lambda!436011 (h!75860 l!9154)))))

(declare-fun b!7148947 () Bool)

(assert (=> b!7148947 (= e!4295753 (forall!17072 (t!383553 l!9154) lambda!436011))))

(assert (= (and d!2228561 (not res!2916280)) b!7148946))

(assert (= (and b!7148946 res!2916281) b!7148947))

(declare-fun b_lambda!272887 () Bool)

(assert (=> (not b_lambda!272887) (not b!7148946)))

(declare-fun m!7860460 () Bool)

(assert (=> b!7148946 m!7860460))

(declare-fun m!7860462 () Bool)

(assert (=> b!7148947 m!7860462))

(assert (=> d!2228525 d!2228561))

(assert (=> b!7148775 d!2228519))

(declare-fun bs!1889419 () Bool)

(declare-fun d!2228563 () Bool)

(assert (= bs!1889419 (and d!2228563 start!697030)))

(declare-fun lambda!436015 () Int)

(assert (=> bs!1889419 (= lambda!436015 lambda!436001)))

(declare-fun bs!1889420 () Bool)

(assert (= bs!1889420 (and d!2228563 b!7148710)))

(assert (=> bs!1889420 (not (= lambda!436015 lambda!436002))))

(declare-fun bs!1889421 () Bool)

(assert (= bs!1889421 (and d!2228563 d!2228525)))

(assert (=> bs!1889421 (= lambda!436015 lambda!436011)))

(declare-fun b!7148948 () Bool)

(declare-fun e!4295755 () Regex!18232)

(declare-fun e!4295757 () Regex!18232)

(assert (=> b!7148948 (= e!4295755 e!4295757)))

(declare-fun c!1332949 () Bool)

(assert (=> b!7148948 (= c!1332949 (is-Cons!69412 (t!383553 l!9154)))))

(declare-fun b!7148949 () Bool)

(declare-fun e!4295759 () Bool)

(declare-fun lt!2569035 () Regex!18232)

(assert (=> b!7148949 (= e!4295759 (isEmptyExpr!2059 lt!2569035))))

(declare-fun b!7148950 () Bool)

(declare-fun e!4295754 () Bool)

(assert (=> b!7148950 (= e!4295759 e!4295754)))

(declare-fun c!1332950 () Bool)

(assert (=> b!7148950 (= c!1332950 (isEmpty!40102 (tail!14009 (t!383553 l!9154))))))

(declare-fun b!7148951 () Bool)

(declare-fun e!4295758 () Bool)

(assert (=> b!7148951 (= e!4295758 (isEmpty!40102 (t!383553 (t!383553 l!9154))))))

(declare-fun b!7148952 () Bool)

(assert (=> b!7148952 (= e!4295757 (Concat!27077 (h!75860 (t!383553 l!9154)) (generalisedConcat!2407 (t!383553 (t!383553 l!9154)))))))

(declare-fun e!4295756 () Bool)

(assert (=> d!2228563 e!4295756))

(declare-fun res!2916283 () Bool)

(assert (=> d!2228563 (=> (not res!2916283) (not e!4295756))))

(assert (=> d!2228563 (= res!2916283 (validRegex!9388 lt!2569035))))

(assert (=> d!2228563 (= lt!2569035 e!4295755)))

(declare-fun c!1332951 () Bool)

(assert (=> d!2228563 (= c!1332951 e!4295758)))

(declare-fun res!2916282 () Bool)

(assert (=> d!2228563 (=> (not res!2916282) (not e!4295758))))

(assert (=> d!2228563 (= res!2916282 (is-Cons!69412 (t!383553 l!9154)))))

(assert (=> d!2228563 (forall!17072 (t!383553 l!9154) lambda!436015)))

(assert (=> d!2228563 (= (generalisedConcat!2407 (t!383553 l!9154)) lt!2569035)))

(declare-fun b!7148953 () Bool)

(assert (=> b!7148953 (= e!4295756 e!4295759)))

(declare-fun c!1332948 () Bool)

(assert (=> b!7148953 (= c!1332948 (isEmpty!40102 (t!383553 l!9154)))))

(declare-fun b!7148954 () Bool)

(assert (=> b!7148954 (= e!4295754 (= lt!2569035 (head!14539 (t!383553 l!9154))))))

(declare-fun b!7148955 () Bool)

(assert (=> b!7148955 (= e!4295757 EmptyExpr!18232)))

(declare-fun b!7148956 () Bool)

(assert (=> b!7148956 (= e!4295755 (h!75860 (t!383553 l!9154)))))

(declare-fun b!7148957 () Bool)

(assert (=> b!7148957 (= e!4295754 (isConcat!1581 lt!2569035))))

(assert (= (and d!2228563 res!2916282) b!7148951))

(assert (= (and d!2228563 c!1332951) b!7148956))

(assert (= (and d!2228563 (not c!1332951)) b!7148948))

(assert (= (and b!7148948 c!1332949) b!7148952))

(assert (= (and b!7148948 (not c!1332949)) b!7148955))

(assert (= (and d!2228563 res!2916283) b!7148953))

(assert (= (and b!7148953 c!1332948) b!7148949))

(assert (= (and b!7148953 (not c!1332948)) b!7148950))

(assert (= (and b!7148950 c!1332950) b!7148954))

(assert (= (and b!7148950 (not c!1332950)) b!7148957))

(declare-fun m!7860464 () Bool)

(assert (=> b!7148950 m!7860464))

(assert (=> b!7148950 m!7860464))

(declare-fun m!7860466 () Bool)

(assert (=> b!7148950 m!7860466))

(declare-fun m!7860468 () Bool)

(assert (=> b!7148951 m!7860468))

(declare-fun m!7860470 () Bool)

(assert (=> b!7148952 m!7860470))

(declare-fun m!7860472 () Bool)

(assert (=> b!7148949 m!7860472))

(assert (=> b!7148953 m!7860356))

(declare-fun m!7860474 () Bool)

(assert (=> b!7148954 m!7860474))

(declare-fun m!7860476 () Bool)

(assert (=> d!2228563 m!7860476))

(declare-fun m!7860478 () Bool)

(assert (=> d!2228563 m!7860478))

(declare-fun m!7860480 () Bool)

(assert (=> b!7148957 m!7860480))

(assert (=> b!7148776 d!2228563))

(declare-fun d!2228565 () Bool)

(declare-fun res!2916287 () Bool)

(declare-fun e!4295764 () Bool)

(assert (=> d!2228565 (=> res!2916287 e!4295764)))

(assert (=> d!2228565 (= res!2916287 (is-ElementMatch!18232 (h!75860 l!9154)))))

(assert (=> d!2228565 (= (validRegex!9388 (h!75860 l!9154)) e!4295764)))

(declare-fun b!7148958 () Bool)

(declare-fun e!4295766 () Bool)

(declare-fun e!4295762 () Bool)

(assert (=> b!7148958 (= e!4295766 e!4295762)))

(declare-fun res!2916288 () Bool)

(assert (=> b!7148958 (=> (not res!2916288) (not e!4295762))))

(declare-fun call!651466 () Bool)

(assert (=> b!7148958 (= res!2916288 call!651466)))

(declare-fun b!7148959 () Bool)

(declare-fun e!4295765 () Bool)

(declare-fun e!4295760 () Bool)

(assert (=> b!7148959 (= e!4295765 e!4295760)))

(declare-fun c!1332952 () Bool)

(assert (=> b!7148959 (= c!1332952 (is-Union!18232 (h!75860 l!9154)))))

(declare-fun b!7148960 () Bool)

(declare-fun call!651464 () Bool)

(assert (=> b!7148960 (= e!4295762 call!651464)))

(declare-fun b!7148961 () Bool)

(declare-fun res!2916284 () Bool)

(assert (=> b!7148961 (=> res!2916284 e!4295766)))

(assert (=> b!7148961 (= res!2916284 (not (is-Concat!27077 (h!75860 l!9154))))))

(assert (=> b!7148961 (= e!4295760 e!4295766)))

(declare-fun b!7148962 () Bool)

(declare-fun res!2916286 () Bool)

(declare-fun e!4295763 () Bool)

(assert (=> b!7148962 (=> (not res!2916286) (not e!4295763))))

(assert (=> b!7148962 (= res!2916286 call!651466)))

(assert (=> b!7148962 (= e!4295760 e!4295763)))

(declare-fun b!7148963 () Bool)

(declare-fun e!4295761 () Bool)

(declare-fun call!651465 () Bool)

(assert (=> b!7148963 (= e!4295761 call!651465)))

(declare-fun b!7148964 () Bool)

(assert (=> b!7148964 (= e!4295764 e!4295765)))

(declare-fun c!1332953 () Bool)

(assert (=> b!7148964 (= c!1332953 (is-Star!18232 (h!75860 l!9154)))))

(declare-fun bm!651459 () Bool)

(assert (=> bm!651459 (= call!651466 call!651465)))

(declare-fun bm!651460 () Bool)

(assert (=> bm!651460 (= call!651464 (validRegex!9388 (ite c!1332952 (regTwo!36977 (h!75860 l!9154)) (regTwo!36976 (h!75860 l!9154)))))))

(declare-fun b!7148965 () Bool)

(assert (=> b!7148965 (= e!4295765 e!4295761)))

(declare-fun res!2916285 () Bool)

(assert (=> b!7148965 (= res!2916285 (not (nullable!7727 (reg!18561 (h!75860 l!9154)))))))

(assert (=> b!7148965 (=> (not res!2916285) (not e!4295761))))

(declare-fun b!7148966 () Bool)

(assert (=> b!7148966 (= e!4295763 call!651464)))

(declare-fun bm!651461 () Bool)

(assert (=> bm!651461 (= call!651465 (validRegex!9388 (ite c!1332953 (reg!18561 (h!75860 l!9154)) (ite c!1332952 (regOne!36977 (h!75860 l!9154)) (regOne!36976 (h!75860 l!9154))))))))

(assert (= (and d!2228565 (not res!2916287)) b!7148964))

(assert (= (and b!7148964 c!1332953) b!7148965))

(assert (= (and b!7148964 (not c!1332953)) b!7148959))

(assert (= (and b!7148965 res!2916285) b!7148963))

(assert (= (and b!7148959 c!1332952) b!7148962))

(assert (= (and b!7148959 (not c!1332952)) b!7148961))

(assert (= (and b!7148962 res!2916286) b!7148966))

(assert (= (and b!7148961 (not res!2916284)) b!7148958))

(assert (= (and b!7148958 res!2916288) b!7148960))

(assert (= (or b!7148966 b!7148960) bm!651460))

(assert (= (or b!7148962 b!7148958) bm!651459))

(assert (= (or b!7148963 bm!651459) bm!651461))

(declare-fun m!7860482 () Bool)

(assert (=> bm!651460 m!7860482))

(declare-fun m!7860484 () Bool)

(assert (=> b!7148965 m!7860484))

(declare-fun m!7860486 () Bool)

(assert (=> bm!651461 m!7860486))

(assert (=> bs!1889412 d!2228565))

(declare-fun d!2228567 () Bool)

(assert (=> d!2228567 (= (isEmptyExpr!2059 lt!2569031) (is-EmptyExpr!18232 lt!2569031))))

(assert (=> b!7148773 d!2228567))

(declare-fun d!2228569 () Bool)

(assert (=> d!2228569 (= (isEmpty!40102 (tail!14009 l!9154)) (is-Nil!69412 (tail!14009 l!9154)))))

(assert (=> b!7148774 d!2228569))

(declare-fun d!2228571 () Bool)

(assert (=> d!2228571 (= (tail!14009 l!9154) (t!383553 l!9154))))

(assert (=> b!7148774 d!2228571))

(declare-fun e!4295767 () Bool)

(assert (=> b!7148813 (= tp!1973378 e!4295767)))

(declare-fun b!7148968 () Bool)

(declare-fun tp!1973436 () Bool)

(declare-fun tp!1973439 () Bool)

(assert (=> b!7148968 (= e!4295767 (and tp!1973436 tp!1973439))))

(declare-fun b!7148967 () Bool)

(assert (=> b!7148967 (= e!4295767 tp_is_empty!46101)))

(declare-fun b!7148970 () Bool)

(declare-fun tp!1973440 () Bool)

(declare-fun tp!1973437 () Bool)

(assert (=> b!7148970 (= e!4295767 (and tp!1973440 tp!1973437))))

(declare-fun b!7148969 () Bool)

(declare-fun tp!1973438 () Bool)

(assert (=> b!7148969 (= e!4295767 tp!1973438)))

(assert (= (and b!7148813 (is-ElementMatch!18232 (regOne!36977 (regTwo!36976 r!13911)))) b!7148967))

(assert (= (and b!7148813 (is-Concat!27077 (regOne!36977 (regTwo!36976 r!13911)))) b!7148968))

(assert (= (and b!7148813 (is-Star!18232 (regOne!36977 (regTwo!36976 r!13911)))) b!7148969))

(assert (= (and b!7148813 (is-Union!18232 (regOne!36977 (regTwo!36976 r!13911)))) b!7148970))

(declare-fun e!4295768 () Bool)

(assert (=> b!7148813 (= tp!1973375 e!4295768)))

(declare-fun b!7148972 () Bool)

(declare-fun tp!1973441 () Bool)

(declare-fun tp!1973444 () Bool)

(assert (=> b!7148972 (= e!4295768 (and tp!1973441 tp!1973444))))

(declare-fun b!7148971 () Bool)

(assert (=> b!7148971 (= e!4295768 tp_is_empty!46101)))

(declare-fun b!7148974 () Bool)

(declare-fun tp!1973445 () Bool)

(declare-fun tp!1973442 () Bool)

(assert (=> b!7148974 (= e!4295768 (and tp!1973445 tp!1973442))))

(declare-fun b!7148973 () Bool)

(declare-fun tp!1973443 () Bool)

(assert (=> b!7148973 (= e!4295768 tp!1973443)))

(assert (= (and b!7148813 (is-ElementMatch!18232 (regTwo!36977 (regTwo!36976 r!13911)))) b!7148971))

(assert (= (and b!7148813 (is-Concat!27077 (regTwo!36977 (regTwo!36976 r!13911)))) b!7148972))

(assert (= (and b!7148813 (is-Star!18232 (regTwo!36977 (regTwo!36976 r!13911)))) b!7148973))

(assert (= (and b!7148813 (is-Union!18232 (regTwo!36977 (regTwo!36976 r!13911)))) b!7148974))

(declare-fun e!4295769 () Bool)

(assert (=> b!7148801 (= tp!1973363 e!4295769)))

(declare-fun b!7148976 () Bool)

(declare-fun tp!1973446 () Bool)

(declare-fun tp!1973449 () Bool)

(assert (=> b!7148976 (= e!4295769 (and tp!1973446 tp!1973449))))

(declare-fun b!7148975 () Bool)

(assert (=> b!7148975 (= e!4295769 tp_is_empty!46101)))

(declare-fun b!7148978 () Bool)

(declare-fun tp!1973450 () Bool)

(declare-fun tp!1973447 () Bool)

(assert (=> b!7148978 (= e!4295769 (and tp!1973450 tp!1973447))))

(declare-fun b!7148977 () Bool)

(declare-fun tp!1973448 () Bool)

(assert (=> b!7148977 (= e!4295769 tp!1973448)))

(assert (= (and b!7148801 (is-ElementMatch!18232 (regOne!36977 (regTwo!36977 r!13911)))) b!7148975))

(assert (= (and b!7148801 (is-Concat!27077 (regOne!36977 (regTwo!36977 r!13911)))) b!7148976))

(assert (= (and b!7148801 (is-Star!18232 (regOne!36977 (regTwo!36977 r!13911)))) b!7148977))

(assert (= (and b!7148801 (is-Union!18232 (regOne!36977 (regTwo!36977 r!13911)))) b!7148978))

(declare-fun e!4295770 () Bool)

(assert (=> b!7148801 (= tp!1973360 e!4295770)))

(declare-fun b!7148980 () Bool)

(declare-fun tp!1973451 () Bool)

(declare-fun tp!1973454 () Bool)

(assert (=> b!7148980 (= e!4295770 (and tp!1973451 tp!1973454))))

(declare-fun b!7148979 () Bool)

(assert (=> b!7148979 (= e!4295770 tp_is_empty!46101)))

(declare-fun b!7148982 () Bool)

(declare-fun tp!1973455 () Bool)

(declare-fun tp!1973452 () Bool)

(assert (=> b!7148982 (= e!4295770 (and tp!1973455 tp!1973452))))

(declare-fun b!7148981 () Bool)

(declare-fun tp!1973453 () Bool)

(assert (=> b!7148981 (= e!4295770 tp!1973453)))

(assert (= (and b!7148801 (is-ElementMatch!18232 (regTwo!36977 (regTwo!36977 r!13911)))) b!7148979))

(assert (= (and b!7148801 (is-Concat!27077 (regTwo!36977 (regTwo!36977 r!13911)))) b!7148980))

(assert (= (and b!7148801 (is-Star!18232 (regTwo!36977 (regTwo!36977 r!13911)))) b!7148981))

(assert (= (and b!7148801 (is-Union!18232 (regTwo!36977 (regTwo!36977 r!13911)))) b!7148982))

(declare-fun e!4295771 () Bool)

(assert (=> b!7148796 (= tp!1973356 e!4295771)))

(declare-fun b!7148984 () Bool)

(declare-fun tp!1973456 () Bool)

(declare-fun tp!1973459 () Bool)

(assert (=> b!7148984 (= e!4295771 (and tp!1973456 tp!1973459))))

(declare-fun b!7148983 () Bool)

(assert (=> b!7148983 (= e!4295771 tp_is_empty!46101)))

(declare-fun b!7148986 () Bool)

(declare-fun tp!1973460 () Bool)

(declare-fun tp!1973457 () Bool)

(assert (=> b!7148986 (= e!4295771 (and tp!1973460 tp!1973457))))

(declare-fun b!7148985 () Bool)

(declare-fun tp!1973458 () Bool)

(assert (=> b!7148985 (= e!4295771 tp!1973458)))

(assert (= (and b!7148796 (is-ElementMatch!18232 (reg!18561 (regOne!36977 r!13911)))) b!7148983))

(assert (= (and b!7148796 (is-Concat!27077 (reg!18561 (regOne!36977 r!13911)))) b!7148984))

(assert (= (and b!7148796 (is-Star!18232 (reg!18561 (regOne!36977 r!13911)))) b!7148985))

(assert (= (and b!7148796 (is-Union!18232 (reg!18561 (regOne!36977 r!13911)))) b!7148986))

(declare-fun e!4295772 () Bool)

(assert (=> b!7148805 (= tp!1973368 e!4295772)))

(declare-fun b!7148988 () Bool)

(declare-fun tp!1973461 () Bool)

(declare-fun tp!1973464 () Bool)

(assert (=> b!7148988 (= e!4295772 (and tp!1973461 tp!1973464))))

(declare-fun b!7148987 () Bool)

(assert (=> b!7148987 (= e!4295772 tp_is_empty!46101)))

(declare-fun b!7148990 () Bool)

(declare-fun tp!1973465 () Bool)

(declare-fun tp!1973462 () Bool)

(assert (=> b!7148990 (= e!4295772 (and tp!1973465 tp!1973462))))

(declare-fun b!7148989 () Bool)

(declare-fun tp!1973463 () Bool)

(assert (=> b!7148989 (= e!4295772 tp!1973463)))

(assert (= (and b!7148805 (is-ElementMatch!18232 (regOne!36977 (reg!18561 r!13911)))) b!7148987))

(assert (= (and b!7148805 (is-Concat!27077 (regOne!36977 (reg!18561 r!13911)))) b!7148988))

(assert (= (and b!7148805 (is-Star!18232 (regOne!36977 (reg!18561 r!13911)))) b!7148989))

(assert (= (and b!7148805 (is-Union!18232 (regOne!36977 (reg!18561 r!13911)))) b!7148990))

(declare-fun e!4295773 () Bool)

(assert (=> b!7148805 (= tp!1973365 e!4295773)))

(declare-fun b!7148992 () Bool)

(declare-fun tp!1973466 () Bool)

(declare-fun tp!1973469 () Bool)

(assert (=> b!7148992 (= e!4295773 (and tp!1973466 tp!1973469))))

(declare-fun b!7148991 () Bool)

(assert (=> b!7148991 (= e!4295773 tp_is_empty!46101)))

(declare-fun b!7148994 () Bool)

(declare-fun tp!1973470 () Bool)

(declare-fun tp!1973467 () Bool)

(assert (=> b!7148994 (= e!4295773 (and tp!1973470 tp!1973467))))

(declare-fun b!7148993 () Bool)

(declare-fun tp!1973468 () Bool)

(assert (=> b!7148993 (= e!4295773 tp!1973468)))

(assert (= (and b!7148805 (is-ElementMatch!18232 (regTwo!36977 (reg!18561 r!13911)))) b!7148991))

(assert (= (and b!7148805 (is-Concat!27077 (regTwo!36977 (reg!18561 r!13911)))) b!7148992))

(assert (= (and b!7148805 (is-Star!18232 (regTwo!36977 (reg!18561 r!13911)))) b!7148993))

(assert (= (and b!7148805 (is-Union!18232 (regTwo!36977 (reg!18561 r!13911)))) b!7148994))

(declare-fun e!4295774 () Bool)

(assert (=> b!7148812 (= tp!1973376 e!4295774)))

(declare-fun b!7148996 () Bool)

(declare-fun tp!1973471 () Bool)

(declare-fun tp!1973474 () Bool)

(assert (=> b!7148996 (= e!4295774 (and tp!1973471 tp!1973474))))

(declare-fun b!7148995 () Bool)

(assert (=> b!7148995 (= e!4295774 tp_is_empty!46101)))

(declare-fun b!7148998 () Bool)

(declare-fun tp!1973475 () Bool)

(declare-fun tp!1973472 () Bool)

(assert (=> b!7148998 (= e!4295774 (and tp!1973475 tp!1973472))))

(declare-fun b!7148997 () Bool)

(declare-fun tp!1973473 () Bool)

(assert (=> b!7148997 (= e!4295774 tp!1973473)))

(assert (= (and b!7148812 (is-ElementMatch!18232 (reg!18561 (regTwo!36976 r!13911)))) b!7148995))

(assert (= (and b!7148812 (is-Concat!27077 (reg!18561 (regTwo!36976 r!13911)))) b!7148996))

(assert (= (and b!7148812 (is-Star!18232 (reg!18561 (regTwo!36976 r!13911)))) b!7148997))

(assert (= (and b!7148812 (is-Union!18232 (reg!18561 (regTwo!36976 r!13911)))) b!7148998))

(declare-fun e!4295775 () Bool)

(assert (=> b!7148800 (= tp!1973361 e!4295775)))

(declare-fun b!7149000 () Bool)

(declare-fun tp!1973476 () Bool)

(declare-fun tp!1973479 () Bool)

(assert (=> b!7149000 (= e!4295775 (and tp!1973476 tp!1973479))))

(declare-fun b!7148999 () Bool)

(assert (=> b!7148999 (= e!4295775 tp_is_empty!46101)))

(declare-fun b!7149002 () Bool)

(declare-fun tp!1973480 () Bool)

(declare-fun tp!1973477 () Bool)

(assert (=> b!7149002 (= e!4295775 (and tp!1973480 tp!1973477))))

(declare-fun b!7149001 () Bool)

(declare-fun tp!1973478 () Bool)

(assert (=> b!7149001 (= e!4295775 tp!1973478)))

(assert (= (and b!7148800 (is-ElementMatch!18232 (reg!18561 (regTwo!36977 r!13911)))) b!7148999))

(assert (= (and b!7148800 (is-Concat!27077 (reg!18561 (regTwo!36977 r!13911)))) b!7149000))

(assert (= (and b!7148800 (is-Star!18232 (reg!18561 (regTwo!36977 r!13911)))) b!7149001))

(assert (= (and b!7148800 (is-Union!18232 (reg!18561 (regTwo!36977 r!13911)))) b!7149002))

(declare-fun e!4295776 () Bool)

(assert (=> b!7148795 (= tp!1973354 e!4295776)))

(declare-fun b!7149004 () Bool)

(declare-fun tp!1973481 () Bool)

(declare-fun tp!1973484 () Bool)

(assert (=> b!7149004 (= e!4295776 (and tp!1973481 tp!1973484))))

(declare-fun b!7149003 () Bool)

(assert (=> b!7149003 (= e!4295776 tp_is_empty!46101)))

(declare-fun b!7149006 () Bool)

(declare-fun tp!1973485 () Bool)

(declare-fun tp!1973482 () Bool)

(assert (=> b!7149006 (= e!4295776 (and tp!1973485 tp!1973482))))

(declare-fun b!7149005 () Bool)

(declare-fun tp!1973483 () Bool)

(assert (=> b!7149005 (= e!4295776 tp!1973483)))

(assert (= (and b!7148795 (is-ElementMatch!18232 (regOne!36976 (regOne!36977 r!13911)))) b!7149003))

(assert (= (and b!7148795 (is-Concat!27077 (regOne!36976 (regOne!36977 r!13911)))) b!7149004))

(assert (= (and b!7148795 (is-Star!18232 (regOne!36976 (regOne!36977 r!13911)))) b!7149005))

(assert (= (and b!7148795 (is-Union!18232 (regOne!36976 (regOne!36977 r!13911)))) b!7149006))

(declare-fun e!4295777 () Bool)

(assert (=> b!7148795 (= tp!1973357 e!4295777)))

(declare-fun b!7149008 () Bool)

(declare-fun tp!1973486 () Bool)

(declare-fun tp!1973489 () Bool)

(assert (=> b!7149008 (= e!4295777 (and tp!1973486 tp!1973489))))

(declare-fun b!7149007 () Bool)

(assert (=> b!7149007 (= e!4295777 tp_is_empty!46101)))

(declare-fun b!7149010 () Bool)

(declare-fun tp!1973490 () Bool)

(declare-fun tp!1973487 () Bool)

(assert (=> b!7149010 (= e!4295777 (and tp!1973490 tp!1973487))))

(declare-fun b!7149009 () Bool)

(declare-fun tp!1973488 () Bool)

(assert (=> b!7149009 (= e!4295777 tp!1973488)))

(assert (= (and b!7148795 (is-ElementMatch!18232 (regTwo!36976 (regOne!36977 r!13911)))) b!7149007))

(assert (= (and b!7148795 (is-Concat!27077 (regTwo!36976 (regOne!36977 r!13911)))) b!7149008))

(assert (= (and b!7148795 (is-Star!18232 (regTwo!36976 (regOne!36977 r!13911)))) b!7149009))

(assert (= (and b!7148795 (is-Union!18232 (regTwo!36976 (regOne!36977 r!13911)))) b!7149010))

(declare-fun e!4295778 () Bool)

(assert (=> b!7148809 (= tp!1973373 e!4295778)))

(declare-fun b!7149012 () Bool)

(declare-fun tp!1973491 () Bool)

(declare-fun tp!1973494 () Bool)

(assert (=> b!7149012 (= e!4295778 (and tp!1973491 tp!1973494))))

(declare-fun b!7149011 () Bool)

(assert (=> b!7149011 (= e!4295778 tp_is_empty!46101)))

(declare-fun b!7149014 () Bool)

(declare-fun tp!1973495 () Bool)

(declare-fun tp!1973492 () Bool)

(assert (=> b!7149014 (= e!4295778 (and tp!1973495 tp!1973492))))

(declare-fun b!7149013 () Bool)

(declare-fun tp!1973493 () Bool)

(assert (=> b!7149013 (= e!4295778 tp!1973493)))

(assert (= (and b!7148809 (is-ElementMatch!18232 (regOne!36977 (regOne!36976 r!13911)))) b!7149011))

(assert (= (and b!7148809 (is-Concat!27077 (regOne!36977 (regOne!36976 r!13911)))) b!7149012))

(assert (= (and b!7148809 (is-Star!18232 (regOne!36977 (regOne!36976 r!13911)))) b!7149013))

(assert (= (and b!7148809 (is-Union!18232 (regOne!36977 (regOne!36976 r!13911)))) b!7149014))

(declare-fun e!4295779 () Bool)

(assert (=> b!7148809 (= tp!1973370 e!4295779)))

(declare-fun b!7149016 () Bool)

(declare-fun tp!1973496 () Bool)

(declare-fun tp!1973499 () Bool)

(assert (=> b!7149016 (= e!4295779 (and tp!1973496 tp!1973499))))

(declare-fun b!7149015 () Bool)

(assert (=> b!7149015 (= e!4295779 tp_is_empty!46101)))

(declare-fun b!7149018 () Bool)

(declare-fun tp!1973500 () Bool)

(declare-fun tp!1973497 () Bool)

(assert (=> b!7149018 (= e!4295779 (and tp!1973500 tp!1973497))))

(declare-fun b!7149017 () Bool)

(declare-fun tp!1973498 () Bool)

(assert (=> b!7149017 (= e!4295779 tp!1973498)))

(assert (= (and b!7148809 (is-ElementMatch!18232 (regTwo!36977 (regOne!36976 r!13911)))) b!7149015))

(assert (= (and b!7148809 (is-Concat!27077 (regTwo!36977 (regOne!36976 r!13911)))) b!7149016))

(assert (= (and b!7148809 (is-Star!18232 (regTwo!36977 (regOne!36976 r!13911)))) b!7149017))

(assert (= (and b!7148809 (is-Union!18232 (regTwo!36977 (regOne!36976 r!13911)))) b!7149018))

(declare-fun e!4295780 () Bool)

(assert (=> b!7148804 (= tp!1973366 e!4295780)))

(declare-fun b!7149020 () Bool)

(declare-fun tp!1973501 () Bool)

(declare-fun tp!1973504 () Bool)

(assert (=> b!7149020 (= e!4295780 (and tp!1973501 tp!1973504))))

(declare-fun b!7149019 () Bool)

(assert (=> b!7149019 (= e!4295780 tp_is_empty!46101)))

(declare-fun b!7149022 () Bool)

(declare-fun tp!1973505 () Bool)

(declare-fun tp!1973502 () Bool)

(assert (=> b!7149022 (= e!4295780 (and tp!1973505 tp!1973502))))

(declare-fun b!7149021 () Bool)

(declare-fun tp!1973503 () Bool)

(assert (=> b!7149021 (= e!4295780 tp!1973503)))

(assert (= (and b!7148804 (is-ElementMatch!18232 (reg!18561 (reg!18561 r!13911)))) b!7149019))

(assert (= (and b!7148804 (is-Concat!27077 (reg!18561 (reg!18561 r!13911)))) b!7149020))

(assert (= (and b!7148804 (is-Star!18232 (reg!18561 (reg!18561 r!13911)))) b!7149021))

(assert (= (and b!7148804 (is-Union!18232 (reg!18561 (reg!18561 r!13911)))) b!7149022))

(declare-fun e!4295781 () Bool)

(assert (=> b!7148811 (= tp!1973374 e!4295781)))

(declare-fun b!7149024 () Bool)

(declare-fun tp!1973506 () Bool)

(declare-fun tp!1973509 () Bool)

(assert (=> b!7149024 (= e!4295781 (and tp!1973506 tp!1973509))))

(declare-fun b!7149023 () Bool)

(assert (=> b!7149023 (= e!4295781 tp_is_empty!46101)))

(declare-fun b!7149026 () Bool)

(declare-fun tp!1973510 () Bool)

(declare-fun tp!1973507 () Bool)

(assert (=> b!7149026 (= e!4295781 (and tp!1973510 tp!1973507))))

(declare-fun b!7149025 () Bool)

(declare-fun tp!1973508 () Bool)

(assert (=> b!7149025 (= e!4295781 tp!1973508)))

(assert (= (and b!7148811 (is-ElementMatch!18232 (regOne!36976 (regTwo!36976 r!13911)))) b!7149023))

(assert (= (and b!7148811 (is-Concat!27077 (regOne!36976 (regTwo!36976 r!13911)))) b!7149024))

(assert (= (and b!7148811 (is-Star!18232 (regOne!36976 (regTwo!36976 r!13911)))) b!7149025))

(assert (= (and b!7148811 (is-Union!18232 (regOne!36976 (regTwo!36976 r!13911)))) b!7149026))

(declare-fun e!4295782 () Bool)

(assert (=> b!7148811 (= tp!1973377 e!4295782)))

(declare-fun b!7149028 () Bool)

(declare-fun tp!1973511 () Bool)

(declare-fun tp!1973514 () Bool)

(assert (=> b!7149028 (= e!4295782 (and tp!1973511 tp!1973514))))

(declare-fun b!7149027 () Bool)

(assert (=> b!7149027 (= e!4295782 tp_is_empty!46101)))

(declare-fun b!7149030 () Bool)

(declare-fun tp!1973515 () Bool)

(declare-fun tp!1973512 () Bool)

(assert (=> b!7149030 (= e!4295782 (and tp!1973515 tp!1973512))))

(declare-fun b!7149029 () Bool)

(declare-fun tp!1973513 () Bool)

(assert (=> b!7149029 (= e!4295782 tp!1973513)))

(assert (= (and b!7148811 (is-ElementMatch!18232 (regTwo!36976 (regTwo!36976 r!13911)))) b!7149027))

(assert (= (and b!7148811 (is-Concat!27077 (regTwo!36976 (regTwo!36976 r!13911)))) b!7149028))

(assert (= (and b!7148811 (is-Star!18232 (regTwo!36976 (regTwo!36976 r!13911)))) b!7149029))

(assert (= (and b!7148811 (is-Union!18232 (regTwo!36976 (regTwo!36976 r!13911)))) b!7149030))

(declare-fun e!4295783 () Bool)

(assert (=> b!7148799 (= tp!1973359 e!4295783)))

(declare-fun b!7149032 () Bool)

(declare-fun tp!1973516 () Bool)

(declare-fun tp!1973519 () Bool)

(assert (=> b!7149032 (= e!4295783 (and tp!1973516 tp!1973519))))

(declare-fun b!7149031 () Bool)

(assert (=> b!7149031 (= e!4295783 tp_is_empty!46101)))

(declare-fun b!7149034 () Bool)

(declare-fun tp!1973520 () Bool)

(declare-fun tp!1973517 () Bool)

(assert (=> b!7149034 (= e!4295783 (and tp!1973520 tp!1973517))))

(declare-fun b!7149033 () Bool)

(declare-fun tp!1973518 () Bool)

(assert (=> b!7149033 (= e!4295783 tp!1973518)))

(assert (= (and b!7148799 (is-ElementMatch!18232 (regOne!36976 (regTwo!36977 r!13911)))) b!7149031))

(assert (= (and b!7148799 (is-Concat!27077 (regOne!36976 (regTwo!36977 r!13911)))) b!7149032))

(assert (= (and b!7148799 (is-Star!18232 (regOne!36976 (regTwo!36977 r!13911)))) b!7149033))

(assert (= (and b!7148799 (is-Union!18232 (regOne!36976 (regTwo!36977 r!13911)))) b!7149034))

(declare-fun e!4295784 () Bool)

(assert (=> b!7148799 (= tp!1973362 e!4295784)))

(declare-fun b!7149036 () Bool)

(declare-fun tp!1973521 () Bool)

(declare-fun tp!1973524 () Bool)

(assert (=> b!7149036 (= e!4295784 (and tp!1973521 tp!1973524))))

(declare-fun b!7149035 () Bool)

(assert (=> b!7149035 (= e!4295784 tp_is_empty!46101)))

(declare-fun b!7149038 () Bool)

(declare-fun tp!1973525 () Bool)

(declare-fun tp!1973522 () Bool)

(assert (=> b!7149038 (= e!4295784 (and tp!1973525 tp!1973522))))

(declare-fun b!7149037 () Bool)

(declare-fun tp!1973523 () Bool)

(assert (=> b!7149037 (= e!4295784 tp!1973523)))

(assert (= (and b!7148799 (is-ElementMatch!18232 (regTwo!36976 (regTwo!36977 r!13911)))) b!7149035))

(assert (= (and b!7148799 (is-Concat!27077 (regTwo!36976 (regTwo!36977 r!13911)))) b!7149036))

(assert (= (and b!7148799 (is-Star!18232 (regTwo!36976 (regTwo!36977 r!13911)))) b!7149037))

(assert (= (and b!7148799 (is-Union!18232 (regTwo!36976 (regTwo!36977 r!13911)))) b!7149038))

(declare-fun e!4295785 () Bool)

(assert (=> b!7148808 (= tp!1973371 e!4295785)))

(declare-fun b!7149040 () Bool)

(declare-fun tp!1973526 () Bool)

(declare-fun tp!1973529 () Bool)

(assert (=> b!7149040 (= e!4295785 (and tp!1973526 tp!1973529))))

(declare-fun b!7149039 () Bool)

(assert (=> b!7149039 (= e!4295785 tp_is_empty!46101)))

(declare-fun b!7149042 () Bool)

(declare-fun tp!1973530 () Bool)

(declare-fun tp!1973527 () Bool)

(assert (=> b!7149042 (= e!4295785 (and tp!1973530 tp!1973527))))

(declare-fun b!7149041 () Bool)

(declare-fun tp!1973528 () Bool)

(assert (=> b!7149041 (= e!4295785 tp!1973528)))

(assert (= (and b!7148808 (is-ElementMatch!18232 (reg!18561 (regOne!36976 r!13911)))) b!7149039))

(assert (= (and b!7148808 (is-Concat!27077 (reg!18561 (regOne!36976 r!13911)))) b!7149040))

(assert (= (and b!7148808 (is-Star!18232 (reg!18561 (regOne!36976 r!13911)))) b!7149041))

(assert (= (and b!7148808 (is-Union!18232 (reg!18561 (regOne!36976 r!13911)))) b!7149042))

(declare-fun e!4295786 () Bool)

(assert (=> b!7148816 (= tp!1973381 e!4295786)))

(declare-fun b!7149044 () Bool)

(declare-fun tp!1973531 () Bool)

(declare-fun tp!1973534 () Bool)

(assert (=> b!7149044 (= e!4295786 (and tp!1973531 tp!1973534))))

(declare-fun b!7149043 () Bool)

(assert (=> b!7149043 (= e!4295786 tp_is_empty!46101)))

(declare-fun b!7149046 () Bool)

(declare-fun tp!1973535 () Bool)

(declare-fun tp!1973532 () Bool)

(assert (=> b!7149046 (= e!4295786 (and tp!1973535 tp!1973532))))

(declare-fun b!7149045 () Bool)

(declare-fun tp!1973533 () Bool)

(assert (=> b!7149045 (= e!4295786 tp!1973533)))

(assert (= (and b!7148816 (is-ElementMatch!18232 (reg!18561 (h!75860 l!9154)))) b!7149043))

(assert (= (and b!7148816 (is-Concat!27077 (reg!18561 (h!75860 l!9154)))) b!7149044))

(assert (= (and b!7148816 (is-Star!18232 (reg!18561 (h!75860 l!9154)))) b!7149045))

(assert (= (and b!7148816 (is-Union!18232 (reg!18561 (h!75860 l!9154)))) b!7149046))

(declare-fun e!4295787 () Bool)

(assert (=> b!7148822 (= tp!1973388 e!4295787)))

(declare-fun b!7149048 () Bool)

(declare-fun tp!1973536 () Bool)

(declare-fun tp!1973539 () Bool)

(assert (=> b!7149048 (= e!4295787 (and tp!1973536 tp!1973539))))

(declare-fun b!7149047 () Bool)

(assert (=> b!7149047 (= e!4295787 tp_is_empty!46101)))

(declare-fun b!7149050 () Bool)

(declare-fun tp!1973540 () Bool)

(declare-fun tp!1973537 () Bool)

(assert (=> b!7149050 (= e!4295787 (and tp!1973540 tp!1973537))))

(declare-fun b!7149049 () Bool)

(declare-fun tp!1973538 () Bool)

(assert (=> b!7149049 (= e!4295787 tp!1973538)))

(assert (= (and b!7148822 (is-ElementMatch!18232 (h!75860 (t!383553 l!9154)))) b!7149047))

(assert (= (and b!7148822 (is-Concat!27077 (h!75860 (t!383553 l!9154)))) b!7149048))

(assert (= (and b!7148822 (is-Star!18232 (h!75860 (t!383553 l!9154)))) b!7149049))

(assert (= (and b!7148822 (is-Union!18232 (h!75860 (t!383553 l!9154)))) b!7149050))

(declare-fun b!7149051 () Bool)

(declare-fun e!4295788 () Bool)

(declare-fun tp!1973541 () Bool)

(declare-fun tp!1973542 () Bool)

(assert (=> b!7149051 (= e!4295788 (and tp!1973541 tp!1973542))))

(assert (=> b!7148822 (= tp!1973389 e!4295788)))

(assert (= (and b!7148822 (is-Cons!69412 (t!383553 (t!383553 l!9154)))) b!7149051))

(declare-fun e!4295789 () Bool)

(assert (=> b!7148815 (= tp!1973379 e!4295789)))

(declare-fun b!7149053 () Bool)

(declare-fun tp!1973543 () Bool)

(declare-fun tp!1973546 () Bool)

(assert (=> b!7149053 (= e!4295789 (and tp!1973543 tp!1973546))))

(declare-fun b!7149052 () Bool)

(assert (=> b!7149052 (= e!4295789 tp_is_empty!46101)))

(declare-fun b!7149055 () Bool)

(declare-fun tp!1973547 () Bool)

(declare-fun tp!1973544 () Bool)

(assert (=> b!7149055 (= e!4295789 (and tp!1973547 tp!1973544))))

(declare-fun b!7149054 () Bool)

(declare-fun tp!1973545 () Bool)

(assert (=> b!7149054 (= e!4295789 tp!1973545)))

(assert (= (and b!7148815 (is-ElementMatch!18232 (regOne!36976 (h!75860 l!9154)))) b!7149052))

(assert (= (and b!7148815 (is-Concat!27077 (regOne!36976 (h!75860 l!9154)))) b!7149053))

(assert (= (and b!7148815 (is-Star!18232 (regOne!36976 (h!75860 l!9154)))) b!7149054))

(assert (= (and b!7148815 (is-Union!18232 (regOne!36976 (h!75860 l!9154)))) b!7149055))

(declare-fun e!4295790 () Bool)

(assert (=> b!7148815 (= tp!1973382 e!4295790)))

(declare-fun b!7149057 () Bool)

(declare-fun tp!1973548 () Bool)

(declare-fun tp!1973551 () Bool)

(assert (=> b!7149057 (= e!4295790 (and tp!1973548 tp!1973551))))

(declare-fun b!7149056 () Bool)

(assert (=> b!7149056 (= e!4295790 tp_is_empty!46101)))

(declare-fun b!7149059 () Bool)

(declare-fun tp!1973552 () Bool)

(declare-fun tp!1973549 () Bool)

(assert (=> b!7149059 (= e!4295790 (and tp!1973552 tp!1973549))))

(declare-fun b!7149058 () Bool)

(declare-fun tp!1973550 () Bool)

(assert (=> b!7149058 (= e!4295790 tp!1973550)))

(assert (= (and b!7148815 (is-ElementMatch!18232 (regTwo!36976 (h!75860 l!9154)))) b!7149056))

(assert (= (and b!7148815 (is-Concat!27077 (regTwo!36976 (h!75860 l!9154)))) b!7149057))

(assert (= (and b!7148815 (is-Star!18232 (regTwo!36976 (h!75860 l!9154)))) b!7149058))

(assert (= (and b!7148815 (is-Union!18232 (regTwo!36976 (h!75860 l!9154)))) b!7149059))

(declare-fun e!4295791 () Bool)

(assert (=> b!7148797 (= tp!1973358 e!4295791)))

(declare-fun b!7149061 () Bool)

(declare-fun tp!1973553 () Bool)

(declare-fun tp!1973556 () Bool)

(assert (=> b!7149061 (= e!4295791 (and tp!1973553 tp!1973556))))

(declare-fun b!7149060 () Bool)

(assert (=> b!7149060 (= e!4295791 tp_is_empty!46101)))

(declare-fun b!7149063 () Bool)

(declare-fun tp!1973557 () Bool)

(declare-fun tp!1973554 () Bool)

(assert (=> b!7149063 (= e!4295791 (and tp!1973557 tp!1973554))))

(declare-fun b!7149062 () Bool)

(declare-fun tp!1973555 () Bool)

(assert (=> b!7149062 (= e!4295791 tp!1973555)))

(assert (= (and b!7148797 (is-ElementMatch!18232 (regOne!36977 (regOne!36977 r!13911)))) b!7149060))

(assert (= (and b!7148797 (is-Concat!27077 (regOne!36977 (regOne!36977 r!13911)))) b!7149061))

(assert (= (and b!7148797 (is-Star!18232 (regOne!36977 (regOne!36977 r!13911)))) b!7149062))

(assert (= (and b!7148797 (is-Union!18232 (regOne!36977 (regOne!36977 r!13911)))) b!7149063))

(declare-fun e!4295792 () Bool)

(assert (=> b!7148797 (= tp!1973355 e!4295792)))

(declare-fun b!7149065 () Bool)

(declare-fun tp!1973558 () Bool)

(declare-fun tp!1973561 () Bool)

(assert (=> b!7149065 (= e!4295792 (and tp!1973558 tp!1973561))))

(declare-fun b!7149064 () Bool)

(assert (=> b!7149064 (= e!4295792 tp_is_empty!46101)))

(declare-fun b!7149067 () Bool)

(declare-fun tp!1973562 () Bool)

(declare-fun tp!1973559 () Bool)

(assert (=> b!7149067 (= e!4295792 (and tp!1973562 tp!1973559))))

(declare-fun b!7149066 () Bool)

(declare-fun tp!1973560 () Bool)

(assert (=> b!7149066 (= e!4295792 tp!1973560)))

(assert (= (and b!7148797 (is-ElementMatch!18232 (regTwo!36977 (regOne!36977 r!13911)))) b!7149064))

(assert (= (and b!7148797 (is-Concat!27077 (regTwo!36977 (regOne!36977 r!13911)))) b!7149065))

(assert (= (and b!7148797 (is-Star!18232 (regTwo!36977 (regOne!36977 r!13911)))) b!7149066))

(assert (= (and b!7148797 (is-Union!18232 (regTwo!36977 (regOne!36977 r!13911)))) b!7149067))

(declare-fun e!4295793 () Bool)

(assert (=> b!7148817 (= tp!1973383 e!4295793)))

(declare-fun b!7149069 () Bool)

(declare-fun tp!1973563 () Bool)

(declare-fun tp!1973566 () Bool)

(assert (=> b!7149069 (= e!4295793 (and tp!1973563 tp!1973566))))

(declare-fun b!7149068 () Bool)

(assert (=> b!7149068 (= e!4295793 tp_is_empty!46101)))

(declare-fun b!7149071 () Bool)

(declare-fun tp!1973567 () Bool)

(declare-fun tp!1973564 () Bool)

(assert (=> b!7149071 (= e!4295793 (and tp!1973567 tp!1973564))))

(declare-fun b!7149070 () Bool)

(declare-fun tp!1973565 () Bool)

(assert (=> b!7149070 (= e!4295793 tp!1973565)))

(assert (= (and b!7148817 (is-ElementMatch!18232 (regOne!36977 (h!75860 l!9154)))) b!7149068))

(assert (= (and b!7148817 (is-Concat!27077 (regOne!36977 (h!75860 l!9154)))) b!7149069))

(assert (= (and b!7148817 (is-Star!18232 (regOne!36977 (h!75860 l!9154)))) b!7149070))

(assert (= (and b!7148817 (is-Union!18232 (regOne!36977 (h!75860 l!9154)))) b!7149071))

(declare-fun e!4295794 () Bool)

(assert (=> b!7148817 (= tp!1973380 e!4295794)))

(declare-fun b!7149073 () Bool)

(declare-fun tp!1973568 () Bool)

(declare-fun tp!1973571 () Bool)

(assert (=> b!7149073 (= e!4295794 (and tp!1973568 tp!1973571))))

(declare-fun b!7149072 () Bool)

(assert (=> b!7149072 (= e!4295794 tp_is_empty!46101)))

(declare-fun b!7149075 () Bool)

(declare-fun tp!1973572 () Bool)

(declare-fun tp!1973569 () Bool)

(assert (=> b!7149075 (= e!4295794 (and tp!1973572 tp!1973569))))

(declare-fun b!7149074 () Bool)

(declare-fun tp!1973570 () Bool)

(assert (=> b!7149074 (= e!4295794 tp!1973570)))

(assert (= (and b!7148817 (is-ElementMatch!18232 (regTwo!36977 (h!75860 l!9154)))) b!7149072))

(assert (= (and b!7148817 (is-Concat!27077 (regTwo!36977 (h!75860 l!9154)))) b!7149073))

(assert (= (and b!7148817 (is-Star!18232 (regTwo!36977 (h!75860 l!9154)))) b!7149074))

(assert (= (and b!7148817 (is-Union!18232 (regTwo!36977 (h!75860 l!9154)))) b!7149075))

(declare-fun e!4295795 () Bool)

(assert (=> b!7148803 (= tp!1973364 e!4295795)))

(declare-fun b!7149077 () Bool)

(declare-fun tp!1973573 () Bool)

(declare-fun tp!1973576 () Bool)

(assert (=> b!7149077 (= e!4295795 (and tp!1973573 tp!1973576))))

(declare-fun b!7149076 () Bool)

(assert (=> b!7149076 (= e!4295795 tp_is_empty!46101)))

(declare-fun b!7149079 () Bool)

(declare-fun tp!1973577 () Bool)

(declare-fun tp!1973574 () Bool)

(assert (=> b!7149079 (= e!4295795 (and tp!1973577 tp!1973574))))

(declare-fun b!7149078 () Bool)

(declare-fun tp!1973575 () Bool)

(assert (=> b!7149078 (= e!4295795 tp!1973575)))

(assert (= (and b!7148803 (is-ElementMatch!18232 (regOne!36976 (reg!18561 r!13911)))) b!7149076))

(assert (= (and b!7148803 (is-Concat!27077 (regOne!36976 (reg!18561 r!13911)))) b!7149077))

(assert (= (and b!7148803 (is-Star!18232 (regOne!36976 (reg!18561 r!13911)))) b!7149078))

(assert (= (and b!7148803 (is-Union!18232 (regOne!36976 (reg!18561 r!13911)))) b!7149079))

(declare-fun e!4295796 () Bool)

(assert (=> b!7148803 (= tp!1973367 e!4295796)))

(declare-fun b!7149081 () Bool)

(declare-fun tp!1973578 () Bool)

(declare-fun tp!1973581 () Bool)

(assert (=> b!7149081 (= e!4295796 (and tp!1973578 tp!1973581))))

(declare-fun b!7149080 () Bool)

(assert (=> b!7149080 (= e!4295796 tp_is_empty!46101)))

(declare-fun b!7149083 () Bool)

(declare-fun tp!1973582 () Bool)

(declare-fun tp!1973579 () Bool)

(assert (=> b!7149083 (= e!4295796 (and tp!1973582 tp!1973579))))

(declare-fun b!7149082 () Bool)

(declare-fun tp!1973580 () Bool)

(assert (=> b!7149082 (= e!4295796 tp!1973580)))

(assert (= (and b!7148803 (is-ElementMatch!18232 (regTwo!36976 (reg!18561 r!13911)))) b!7149080))

(assert (= (and b!7148803 (is-Concat!27077 (regTwo!36976 (reg!18561 r!13911)))) b!7149081))

(assert (= (and b!7148803 (is-Star!18232 (regTwo!36976 (reg!18561 r!13911)))) b!7149082))

(assert (= (and b!7148803 (is-Union!18232 (regTwo!36976 (reg!18561 r!13911)))) b!7149083))

(declare-fun e!4295797 () Bool)

(assert (=> b!7148807 (= tp!1973369 e!4295797)))

(declare-fun b!7149085 () Bool)

(declare-fun tp!1973583 () Bool)

(declare-fun tp!1973586 () Bool)

(assert (=> b!7149085 (= e!4295797 (and tp!1973583 tp!1973586))))

(declare-fun b!7149084 () Bool)

(assert (=> b!7149084 (= e!4295797 tp_is_empty!46101)))

(declare-fun b!7149087 () Bool)

(declare-fun tp!1973587 () Bool)

(declare-fun tp!1973584 () Bool)

(assert (=> b!7149087 (= e!4295797 (and tp!1973587 tp!1973584))))

(declare-fun b!7149086 () Bool)

(declare-fun tp!1973585 () Bool)

(assert (=> b!7149086 (= e!4295797 tp!1973585)))

(assert (= (and b!7148807 (is-ElementMatch!18232 (regOne!36976 (regOne!36976 r!13911)))) b!7149084))

(assert (= (and b!7148807 (is-Concat!27077 (regOne!36976 (regOne!36976 r!13911)))) b!7149085))

(assert (= (and b!7148807 (is-Star!18232 (regOne!36976 (regOne!36976 r!13911)))) b!7149086))

(assert (= (and b!7148807 (is-Union!18232 (regOne!36976 (regOne!36976 r!13911)))) b!7149087))

(declare-fun e!4295798 () Bool)

(assert (=> b!7148807 (= tp!1973372 e!4295798)))

(declare-fun b!7149089 () Bool)

(declare-fun tp!1973588 () Bool)

(declare-fun tp!1973591 () Bool)

(assert (=> b!7149089 (= e!4295798 (and tp!1973588 tp!1973591))))

(declare-fun b!7149088 () Bool)

(assert (=> b!7149088 (= e!4295798 tp_is_empty!46101)))

(declare-fun b!7149091 () Bool)

(declare-fun tp!1973592 () Bool)

(declare-fun tp!1973589 () Bool)

(assert (=> b!7149091 (= e!4295798 (and tp!1973592 tp!1973589))))

(declare-fun b!7149090 () Bool)

(declare-fun tp!1973590 () Bool)

(assert (=> b!7149090 (= e!4295798 tp!1973590)))

(assert (= (and b!7148807 (is-ElementMatch!18232 (regTwo!36976 (regOne!36976 r!13911)))) b!7149088))

(assert (= (and b!7148807 (is-Concat!27077 (regTwo!36976 (regOne!36976 r!13911)))) b!7149089))

(assert (= (and b!7148807 (is-Star!18232 (regTwo!36976 (regOne!36976 r!13911)))) b!7149090))

(assert (= (and b!7148807 (is-Union!18232 (regTwo!36976 (regOne!36976 r!13911)))) b!7149091))

(declare-fun b_lambda!272889 () Bool)

(assert (= b_lambda!272887 (or d!2228525 b_lambda!272889)))

(declare-fun bs!1889422 () Bool)

(declare-fun d!2228573 () Bool)

(assert (= bs!1889422 (and d!2228573 d!2228525)))

(assert (=> bs!1889422 (= (dynLambda!28274 lambda!436011 (h!75860 l!9154)) (validRegex!9388 (h!75860 l!9154)))))

(assert (=> bs!1889422 m!7860410))

(assert (=> b!7148946 d!2228573))

(declare-fun b_lambda!272891 () Bool)

(assert (= b_lambda!272885 (or start!697030 b_lambda!272891)))

(declare-fun bs!1889423 () Bool)

(declare-fun d!2228575 () Bool)

(assert (= bs!1889423 (and d!2228575 start!697030)))

(assert (=> bs!1889423 (= (dynLambda!28274 lambda!436001 (h!75860 (t!383553 l!9154))) (validRegex!9388 (h!75860 (t!383553 l!9154))))))

(declare-fun m!7860488 () Bool)

(assert (=> bs!1889423 m!7860488))

(assert (=> b!7148896 d!2228575))

(declare-fun b_lambda!272893 () Bool)

(assert (= b_lambda!272883 (or b!7148710 b_lambda!272893)))

(declare-fun bs!1889424 () Bool)

(declare-fun d!2228577 () Bool)

(assert (= bs!1889424 (and d!2228577 b!7148710)))

(assert (=> bs!1889424 (= (dynLambda!28274 lambda!436002 (h!75860 (t!383553 l!9154))) (nullable!7727 (h!75860 (t!383553 l!9154))))))

(declare-fun m!7860490 () Bool)

(assert (=> bs!1889424 m!7860490))

(assert (=> b!7148894 d!2228577))

(push 1)

(assert (not b!7148996))

(assert (not b_lambda!272873))

(assert (not b!7149045))

(assert (not b!7148992))

(assert (not b!7149090))

(assert (not b!7149008))

(assert (not b!7149069))

(assert (not b!7148952))

(assert (not b!7149053))

(assert (not b!7149034))

(assert (not b!7149029))

(assert (not bm!651461))

(assert (not bm!651457))

(assert (not b!7148954))

(assert (not b!7148965))

(assert (not b!7148897))

(assert (not b!7149074))

(assert (not b!7148949))

(assert (not b!7149042))

(assert (not b!7149079))

(assert (not b_lambda!272891))

(assert (not b!7149049))

(assert (not b!7148973))

(assert (not b!7148968))

(assert (not bm!651460))

(assert (not b!7148990))

(assert (not b!7149062))

(assert (not b!7149038))

(assert (not b!7149091))

(assert (not b!7149022))

(assert (not b!7149009))

(assert (not b!7148944))

(assert (not b!7149020))

(assert (not b!7149055))

(assert (not b!7149075))

(assert (not b!7148998))

(assert (not b!7149028))

(assert (not b!7149065))

(assert (not b!7148970))

(assert (not b!7149077))

(assert (not b!7149071))

(assert (not b!7149036))

(assert (not b!7149057))

(assert (not b!7149048))

(assert (not b!7149073))

(assert (not b!7149083))

(assert (not b!7148976))

(assert tp_is_empty!46101)

(assert (not bs!1889422))

(assert (not b!7149017))

(assert (not b!7148988))

(assert (not d!2228563))

(assert (not b!7149061))

(assert (not b!7149089))

(assert (not b!7148974))

(assert (not b!7149044))

(assert (not b!7149087))

(assert (not b!7149002))

(assert (not b!7149013))

(assert (not b!7149004))

(assert (not b!7149081))

(assert (not b!7149026))

(assert (not b!7148982))

(assert (not b!7149000))

(assert (not b!7149033))

(assert (not b!7148984))

(assert (not b!7148895))

(assert (not b!7149070))

(assert (not b!7149063))

(assert (not b_lambda!272893))

(assert (not b!7149021))

(assert (not b!7148977))

(assert (not d!2228547))

(assert (not b!7148980))

(assert (not b_lambda!272889))

(assert (not b!7149010))

(assert (not b!7149040))

(assert (not b!7149050))

(assert (not b!7149082))

(assert (not b!7148953))

(assert (not b!7149018))

(assert (not b!7148950))

(assert (not b!7149030))

(assert (not b!7148947))

(assert (not b!7149078))

(assert (not b!7149059))

(assert (not b!7148997))

(assert (not b!7149086))

(assert (not b!7149051))

(assert (not b!7149085))

(assert (not b!7149067))

(assert (not b!7149054))

(assert (not b!7149024))

(assert (not b!7148951))

(assert (not b!7149012))

(assert (not bm!651448))

(assert (not b!7149014))

(assert (not b!7148994))

(assert (not b!7149005))

(assert (not b!7149025))

(assert (not b_lambda!272875))

(assert (not b!7149006))

(assert (not b!7148986))

(assert (not b!7148972))

(assert (not b!7148989))

(assert (not b!7149037))

(assert (not b!7149058))

(assert (not b!7148993))

(assert (not b!7149001))

(assert (not b!7148969))

(assert (not b!7148978))

(assert (not b!7149016))

(assert (not b!7148957))

(assert (not bs!1889424))

(assert (not bm!651449))

(assert (not b!7148981))

(assert (not b!7149032))

(assert (not b!7149046))

(assert (not b!7149066))

(assert (not b!7148985))

(assert (not b!7149041))

(assert (not bm!651458))

(assert (not bs!1889423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

