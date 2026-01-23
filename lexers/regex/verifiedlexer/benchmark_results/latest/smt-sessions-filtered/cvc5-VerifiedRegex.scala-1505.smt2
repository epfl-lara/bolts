; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79804 () Bool)

(assert start!79804)

(declare-fun b!883118 () Bool)

(assert (=> b!883118 true))

(assert (=> b!883118 true))

(declare-fun lambda!27146 () Int)

(declare-fun lambda!27145 () Int)

(assert (=> b!883118 (not (= lambda!27146 lambda!27145))))

(assert (=> b!883118 true))

(assert (=> b!883118 true))

(declare-fun b!883110 () Bool)

(declare-fun res!401630 () Bool)

(declare-fun e!579478 () Bool)

(assert (=> b!883110 (=> res!401630 e!579478)))

(declare-datatypes ((C!5106 0))(
  ( (C!5107 (val!2801 Int)) )
))
(declare-datatypes ((Regex!2268 0))(
  ( (ElementMatch!2268 (c!142739 C!5106)) (Concat!4101 (regOne!5048 Regex!2268) (regTwo!5048 Regex!2268)) (EmptyExpr!2268) (Star!2268 (reg!2597 Regex!2268)) (EmptyLang!2268) (Union!2268 (regOne!5049 Regex!2268) (regTwo!5049 Regex!2268)) )
))
(declare-fun r!15766 () Regex!2268)

(declare-datatypes ((List!9498 0))(
  ( (Nil!9482) (Cons!9482 (h!14883 C!5106) (t!100544 List!9498)) )
))
(declare-datatypes ((tuple2!10622 0))(
  ( (tuple2!10623 (_1!6137 List!9498) (_2!6137 List!9498)) )
))
(declare-datatypes ((Option!1953 0))(
  ( (None!1952) (Some!1952 (v!19369 tuple2!10622)) )
))
(declare-fun lt!330980 () Option!1953)

(declare-fun matchR!806 (Regex!2268 List!9498) Bool)

(declare-fun get!2952 (Option!1953) tuple2!10622)

(assert (=> b!883110 (= res!401630 (not (matchR!806 (regOne!5048 r!15766) (_1!6137 (get!2952 lt!330980)))))))

(declare-fun b!883111 () Bool)

(declare-fun e!579482 () Bool)

(declare-fun tp_is_empty!4179 () Bool)

(assert (=> b!883111 (= e!579482 tp_is_empty!4179)))

(declare-fun res!401632 () Bool)

(declare-fun e!579480 () Bool)

(assert (=> start!79804 (=> (not res!401632) (not e!579480))))

(declare-fun validRegex!737 (Regex!2268) Bool)

(assert (=> start!79804 (= res!401632 (validRegex!737 r!15766))))

(assert (=> start!79804 e!579480))

(assert (=> start!79804 e!579482))

(declare-fun e!579481 () Bool)

(assert (=> start!79804 e!579481))

(declare-fun b!883112 () Bool)

(declare-fun tp!278802 () Bool)

(assert (=> b!883112 (= e!579481 (and tp_is_empty!4179 tp!278802))))

(declare-fun b!883113 () Bool)

(declare-fun e!579479 () Bool)

(assert (=> b!883113 (= e!579480 (not e!579479))))

(declare-fun res!401629 () Bool)

(assert (=> b!883113 (=> res!401629 e!579479)))

(declare-fun lt!330982 () Bool)

(assert (=> b!883113 (= res!401629 (or (not lt!330982) (and (is-Concat!4101 r!15766) (is-EmptyExpr!2268 (regOne!5048 r!15766))) (and (is-Concat!4101 r!15766) (is-EmptyExpr!2268 (regTwo!5048 r!15766))) (not (is-Concat!4101 r!15766))))))

(declare-fun s!10566 () List!9498)

(declare-fun matchRSpec!69 (Regex!2268 List!9498) Bool)

(assert (=> b!883113 (= lt!330982 (matchRSpec!69 r!15766 s!10566))))

(assert (=> b!883113 (= lt!330982 (matchR!806 r!15766 s!10566))))

(declare-datatypes ((Unit!14115 0))(
  ( (Unit!14116) )
))
(declare-fun lt!330981 () Unit!14115)

(declare-fun mainMatchTheorem!69 (Regex!2268 List!9498) Unit!14115)

(assert (=> b!883113 (= lt!330981 (mainMatchTheorem!69 r!15766 s!10566))))

(declare-fun b!883114 () Bool)

(declare-fun tp!278806 () Bool)

(declare-fun tp!278805 () Bool)

(assert (=> b!883114 (= e!579482 (and tp!278806 tp!278805))))

(declare-fun b!883115 () Bool)

(assert (=> b!883115 (= e!579478 (validRegex!737 (regTwo!5048 r!15766)))))

(declare-fun b!883116 () Bool)

(declare-fun tp!278801 () Bool)

(assert (=> b!883116 (= e!579482 tp!278801)))

(declare-fun b!883117 () Bool)

(declare-fun tp!278803 () Bool)

(declare-fun tp!278804 () Bool)

(assert (=> b!883117 (= e!579482 (and tp!278803 tp!278804))))

(assert (=> b!883118 (= e!579479 e!579478)))

(declare-fun res!401631 () Bool)

(assert (=> b!883118 (=> res!401631 e!579478)))

(declare-fun isEmpty!5681 (List!9498) Bool)

(assert (=> b!883118 (= res!401631 (isEmpty!5681 s!10566))))

(declare-fun Exists!63 (Int) Bool)

(assert (=> b!883118 (= (Exists!63 lambda!27145) (Exists!63 lambda!27146))))

(declare-fun lt!330978 () Unit!14115)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!53 (Regex!2268 Regex!2268 List!9498) Unit!14115)

(assert (=> b!883118 (= lt!330978 (lemmaExistCutMatchRandMatchRSpecEquivalent!53 (regOne!5048 r!15766) (regTwo!5048 r!15766) s!10566))))

(declare-fun isDefined!1595 (Option!1953) Bool)

(assert (=> b!883118 (= (isDefined!1595 lt!330980) (Exists!63 lambda!27145))))

(declare-fun findConcatSeparation!59 (Regex!2268 Regex!2268 List!9498 List!9498 List!9498) Option!1953)

(assert (=> b!883118 (= lt!330980 (findConcatSeparation!59 (regOne!5048 r!15766) (regTwo!5048 r!15766) Nil!9482 s!10566 s!10566))))

(declare-fun lt!330979 () Unit!14115)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!59 (Regex!2268 Regex!2268 List!9498) Unit!14115)

(assert (=> b!883118 (= lt!330979 (lemmaFindConcatSeparationEquivalentToExists!59 (regOne!5048 r!15766) (regTwo!5048 r!15766) s!10566))))

(assert (= (and start!79804 res!401632) b!883113))

(assert (= (and b!883113 (not res!401629)) b!883118))

(assert (= (and b!883118 (not res!401631)) b!883110))

(assert (= (and b!883110 (not res!401630)) b!883115))

(assert (= (and start!79804 (is-ElementMatch!2268 r!15766)) b!883111))

(assert (= (and start!79804 (is-Concat!4101 r!15766)) b!883114))

(assert (= (and start!79804 (is-Star!2268 r!15766)) b!883116))

(assert (= (and start!79804 (is-Union!2268 r!15766)) b!883117))

(assert (= (and start!79804 (is-Cons!9482 s!10566)) b!883112))

(declare-fun m!1130189 () Bool)

(assert (=> b!883113 m!1130189))

(declare-fun m!1130191 () Bool)

(assert (=> b!883113 m!1130191))

(declare-fun m!1130193 () Bool)

(assert (=> b!883113 m!1130193))

(declare-fun m!1130195 () Bool)

(assert (=> b!883110 m!1130195))

(declare-fun m!1130197 () Bool)

(assert (=> b!883110 m!1130197))

(declare-fun m!1130199 () Bool)

(assert (=> b!883118 m!1130199))

(declare-fun m!1130201 () Bool)

(assert (=> b!883118 m!1130201))

(declare-fun m!1130203 () Bool)

(assert (=> b!883118 m!1130203))

(assert (=> b!883118 m!1130199))

(declare-fun m!1130205 () Bool)

(assert (=> b!883118 m!1130205))

(declare-fun m!1130207 () Bool)

(assert (=> b!883118 m!1130207))

(declare-fun m!1130209 () Bool)

(assert (=> b!883118 m!1130209))

(declare-fun m!1130211 () Bool)

(assert (=> b!883118 m!1130211))

(declare-fun m!1130213 () Bool)

(assert (=> start!79804 m!1130213))

(declare-fun m!1130215 () Bool)

(assert (=> b!883115 m!1130215))

(push 1)

(assert (not b!883117))

(assert (not b!883118))

(assert (not b!883113))

(assert (not b!883112))

(assert tp_is_empty!4179)

(assert (not b!883110))

(assert (not b!883114))

(assert (not b!883116))

(assert (not b!883115))

(assert (not start!79804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!883194 () Bool)

(declare-fun e!579524 () Bool)

(declare-fun lt!331000 () Bool)

(declare-fun call!51618 () Bool)

(assert (=> b!883194 (= e!579524 (= lt!331000 call!51618))))

(declare-fun b!883195 () Bool)

(declare-fun e!579520 () Bool)

(declare-fun head!1543 (List!9498) C!5106)

(assert (=> b!883195 (= e!579520 (not (= (head!1543 (_1!6137 (get!2952 lt!330980))) (c!142739 (regOne!5048 r!15766)))))))

(declare-fun b!883196 () Bool)

(declare-fun e!579518 () Bool)

(assert (=> b!883196 (= e!579524 e!579518)))

(declare-fun c!142748 () Bool)

(assert (=> b!883196 (= c!142748 (is-EmptyLang!2268 (regOne!5048 r!15766)))))

(declare-fun b!883197 () Bool)

(declare-fun e!579519 () Bool)

(declare-fun e!579523 () Bool)

(assert (=> b!883197 (= e!579519 e!579523)))

(declare-fun res!401679 () Bool)

(assert (=> b!883197 (=> (not res!401679) (not e!579523))))

(assert (=> b!883197 (= res!401679 (not lt!331000))))

(declare-fun b!883198 () Bool)

(declare-fun res!401675 () Bool)

(declare-fun e!579522 () Bool)

(assert (=> b!883198 (=> (not res!401675) (not e!579522))))

(assert (=> b!883198 (= res!401675 (not call!51618))))

(declare-fun b!883199 () Bool)

(assert (=> b!883199 (= e!579522 (= (head!1543 (_1!6137 (get!2952 lt!330980))) (c!142739 (regOne!5048 r!15766))))))

(declare-fun bm!51613 () Bool)

(assert (=> bm!51613 (= call!51618 (isEmpty!5681 (_1!6137 (get!2952 lt!330980))))))

(declare-fun b!883200 () Bool)

(declare-fun e!579521 () Bool)

(declare-fun derivativeStep!390 (Regex!2268 C!5106) Regex!2268)

(declare-fun tail!1105 (List!9498) List!9498)

(assert (=> b!883200 (= e!579521 (matchR!806 (derivativeStep!390 (regOne!5048 r!15766) (head!1543 (_1!6137 (get!2952 lt!330980)))) (tail!1105 (_1!6137 (get!2952 lt!330980)))))))

(declare-fun b!883201 () Bool)

(declare-fun res!401677 () Bool)

(assert (=> b!883201 (=> res!401677 e!579520)))

(assert (=> b!883201 (= res!401677 (not (isEmpty!5681 (tail!1105 (_1!6137 (get!2952 lt!330980))))))))

(declare-fun b!883203 () Bool)

(declare-fun res!401680 () Bool)

(assert (=> b!883203 (=> res!401680 e!579519)))

(assert (=> b!883203 (= res!401680 (not (is-ElementMatch!2268 (regOne!5048 r!15766))))))

(assert (=> b!883203 (= e!579518 e!579519)))

(declare-fun b!883204 () Bool)

(assert (=> b!883204 (= e!579523 e!579520)))

(declare-fun res!401678 () Bool)

(assert (=> b!883204 (=> res!401678 e!579520)))

(assert (=> b!883204 (= res!401678 call!51618)))

(declare-fun b!883205 () Bool)

(declare-fun res!401676 () Bool)

(assert (=> b!883205 (=> (not res!401676) (not e!579522))))

(assert (=> b!883205 (= res!401676 (isEmpty!5681 (tail!1105 (_1!6137 (get!2952 lt!330980)))))))

(declare-fun b!883206 () Bool)

(assert (=> b!883206 (= e!579518 (not lt!331000))))

(declare-fun b!883207 () Bool)

(declare-fun res!401674 () Bool)

(assert (=> b!883207 (=> res!401674 e!579519)))

(assert (=> b!883207 (= res!401674 e!579522)))

(declare-fun res!401673 () Bool)

(assert (=> b!883207 (=> (not res!401673) (not e!579522))))

(assert (=> b!883207 (= res!401673 lt!331000)))

(declare-fun b!883202 () Bool)

(declare-fun nullable!578 (Regex!2268) Bool)

(assert (=> b!883202 (= e!579521 (nullable!578 (regOne!5048 r!15766)))))

(declare-fun d!276566 () Bool)

(assert (=> d!276566 e!579524))

(declare-fun c!142749 () Bool)

(assert (=> d!276566 (= c!142749 (is-EmptyExpr!2268 (regOne!5048 r!15766)))))

(assert (=> d!276566 (= lt!331000 e!579521)))

(declare-fun c!142747 () Bool)

(assert (=> d!276566 (= c!142747 (isEmpty!5681 (_1!6137 (get!2952 lt!330980))))))

(assert (=> d!276566 (validRegex!737 (regOne!5048 r!15766))))

(assert (=> d!276566 (= (matchR!806 (regOne!5048 r!15766) (_1!6137 (get!2952 lt!330980))) lt!331000)))

(assert (= (and d!276566 c!142747) b!883202))

(assert (= (and d!276566 (not c!142747)) b!883200))

(assert (= (and d!276566 c!142749) b!883194))

(assert (= (and d!276566 (not c!142749)) b!883196))

(assert (= (and b!883196 c!142748) b!883206))

(assert (= (and b!883196 (not c!142748)) b!883203))

(assert (= (and b!883203 (not res!401680)) b!883207))

(assert (= (and b!883207 res!401673) b!883198))

(assert (= (and b!883198 res!401675) b!883205))

(assert (= (and b!883205 res!401676) b!883199))

(assert (= (and b!883207 (not res!401674)) b!883197))

(assert (= (and b!883197 res!401679) b!883204))

(assert (= (and b!883204 (not res!401678)) b!883201))

(assert (= (and b!883201 (not res!401677)) b!883195))

(assert (= (or b!883194 b!883198 b!883204) bm!51613))

(declare-fun m!1130245 () Bool)

(assert (=> b!883201 m!1130245))

(assert (=> b!883201 m!1130245))

(declare-fun m!1130247 () Bool)

(assert (=> b!883201 m!1130247))

(declare-fun m!1130249 () Bool)

(assert (=> d!276566 m!1130249))

(declare-fun m!1130251 () Bool)

(assert (=> d!276566 m!1130251))

(declare-fun m!1130253 () Bool)

(assert (=> b!883199 m!1130253))

(assert (=> b!883200 m!1130253))

(assert (=> b!883200 m!1130253))

(declare-fun m!1130255 () Bool)

(assert (=> b!883200 m!1130255))

(assert (=> b!883200 m!1130245))

(assert (=> b!883200 m!1130255))

(assert (=> b!883200 m!1130245))

(declare-fun m!1130257 () Bool)

(assert (=> b!883200 m!1130257))

(assert (=> b!883205 m!1130245))

(assert (=> b!883205 m!1130245))

(assert (=> b!883205 m!1130247))

(declare-fun m!1130259 () Bool)

(assert (=> b!883202 m!1130259))

(assert (=> b!883195 m!1130253))

(assert (=> bm!51613 m!1130249))

(assert (=> b!883110 d!276566))

(declare-fun d!276568 () Bool)

(assert (=> d!276568 (= (get!2952 lt!330980) (v!19369 lt!330980))))

(assert (=> b!883110 d!276568))

(declare-fun b!883226 () Bool)

(declare-fun e!579539 () Bool)

(declare-fun e!579544 () Bool)

(assert (=> b!883226 (= e!579539 e!579544)))

(declare-fun res!401692 () Bool)

(assert (=> b!883226 (=> (not res!401692) (not e!579544))))

(declare-fun call!51626 () Bool)

(assert (=> b!883226 (= res!401692 call!51626)))

(declare-fun bm!51620 () Bool)

(declare-fun call!51627 () Bool)

(declare-fun call!51625 () Bool)

(assert (=> bm!51620 (= call!51627 call!51625)))

(declare-fun d!276570 () Bool)

(declare-fun res!401693 () Bool)

(declare-fun e!579543 () Bool)

(assert (=> d!276570 (=> res!401693 e!579543)))

(assert (=> d!276570 (= res!401693 (is-ElementMatch!2268 r!15766))))

(assert (=> d!276570 (= (validRegex!737 r!15766) e!579543)))

(declare-fun b!883227 () Bool)

(declare-fun res!401691 () Bool)

(assert (=> b!883227 (=> res!401691 e!579539)))

(assert (=> b!883227 (= res!401691 (not (is-Concat!4101 r!15766)))))

(declare-fun e!579541 () Bool)

(assert (=> b!883227 (= e!579541 e!579539)))

(declare-fun b!883228 () Bool)

(declare-fun res!401695 () Bool)

(declare-fun e!579540 () Bool)

(assert (=> b!883228 (=> (not res!401695) (not e!579540))))

(assert (=> b!883228 (= res!401695 call!51626)))

(assert (=> b!883228 (= e!579541 e!579540)))

(declare-fun b!883229 () Bool)

(declare-fun e!579542 () Bool)

(assert (=> b!883229 (= e!579543 e!579542)))

(declare-fun c!142754 () Bool)

(assert (=> b!883229 (= c!142754 (is-Star!2268 r!15766))))

(declare-fun b!883230 () Bool)

(declare-fun e!579545 () Bool)

(assert (=> b!883230 (= e!579545 call!51625)))

(declare-fun b!883231 () Bool)

(assert (=> b!883231 (= e!579542 e!579541)))

(declare-fun c!142755 () Bool)

(assert (=> b!883231 (= c!142755 (is-Union!2268 r!15766))))

(declare-fun bm!51621 () Bool)

(assert (=> bm!51621 (= call!51625 (validRegex!737 (ite c!142754 (reg!2597 r!15766) (ite c!142755 (regTwo!5049 r!15766) (regTwo!5048 r!15766)))))))

(declare-fun bm!51622 () Bool)

(assert (=> bm!51622 (= call!51626 (validRegex!737 (ite c!142755 (regOne!5049 r!15766) (regOne!5048 r!15766))))))

(declare-fun b!883232 () Bool)

(assert (=> b!883232 (= e!579544 call!51627)))

(declare-fun b!883233 () Bool)

(assert (=> b!883233 (= e!579540 call!51627)))

(declare-fun b!883234 () Bool)

(assert (=> b!883234 (= e!579542 e!579545)))

(declare-fun res!401694 () Bool)

(assert (=> b!883234 (= res!401694 (not (nullable!578 (reg!2597 r!15766))))))

(assert (=> b!883234 (=> (not res!401694) (not e!579545))))

(assert (= (and d!276570 (not res!401693)) b!883229))

(assert (= (and b!883229 c!142754) b!883234))

(assert (= (and b!883229 (not c!142754)) b!883231))

(assert (= (and b!883234 res!401694) b!883230))

(assert (= (and b!883231 c!142755) b!883228))

(assert (= (and b!883231 (not c!142755)) b!883227))

(assert (= (and b!883228 res!401695) b!883233))

(assert (= (and b!883227 (not res!401691)) b!883226))

(assert (= (and b!883226 res!401692) b!883232))

(assert (= (or b!883233 b!883232) bm!51620))

(assert (= (or b!883228 b!883226) bm!51622))

(assert (= (or b!883230 bm!51620) bm!51621))

(declare-fun m!1130263 () Bool)

(assert (=> bm!51621 m!1130263))

(declare-fun m!1130265 () Bool)

(assert (=> bm!51622 m!1130265))

(declare-fun m!1130267 () Bool)

(assert (=> b!883234 m!1130267))

(assert (=> start!79804 d!276570))

(declare-fun d!276578 () Bool)

(declare-fun isEmpty!5683 (Option!1953) Bool)

(assert (=> d!276578 (= (isDefined!1595 lt!330980) (not (isEmpty!5683 lt!330980)))))

(declare-fun bs!234548 () Bool)

(assert (= bs!234548 d!276578))

(declare-fun m!1130269 () Bool)

(assert (=> bs!234548 m!1130269))

(assert (=> b!883118 d!276578))

(declare-fun d!276580 () Bool)

(declare-fun choose!5236 (Int) Bool)

(assert (=> d!276580 (= (Exists!63 lambda!27145) (choose!5236 lambda!27145))))

(declare-fun bs!234549 () Bool)

(assert (= bs!234549 d!276580))

(declare-fun m!1130271 () Bool)

(assert (=> bs!234549 m!1130271))

(assert (=> b!883118 d!276580))

(declare-fun d!276582 () Bool)

(assert (=> d!276582 (= (isEmpty!5681 s!10566) (is-Nil!9482 s!10566))))

(assert (=> b!883118 d!276582))

(declare-fun d!276584 () Bool)

(assert (=> d!276584 (= (Exists!63 lambda!27146) (choose!5236 lambda!27146))))

(declare-fun bs!234550 () Bool)

(assert (= bs!234550 d!276584))

(declare-fun m!1130273 () Bool)

(assert (=> bs!234550 m!1130273))

(assert (=> b!883118 d!276584))

(declare-fun bs!234551 () Bool)

(declare-fun d!276586 () Bool)

(assert (= bs!234551 (and d!276586 b!883118)))

(declare-fun lambda!27157 () Int)

(assert (=> bs!234551 (= lambda!27157 lambda!27145)))

(assert (=> bs!234551 (not (= lambda!27157 lambda!27146))))

(assert (=> d!276586 true))

(assert (=> d!276586 true))

(assert (=> d!276586 true))

(assert (=> d!276586 (= (isDefined!1595 (findConcatSeparation!59 (regOne!5048 r!15766) (regTwo!5048 r!15766) Nil!9482 s!10566 s!10566)) (Exists!63 lambda!27157))))

(declare-fun lt!331003 () Unit!14115)

(declare-fun choose!5237 (Regex!2268 Regex!2268 List!9498) Unit!14115)

(assert (=> d!276586 (= lt!331003 (choose!5237 (regOne!5048 r!15766) (regTwo!5048 r!15766) s!10566))))

(assert (=> d!276586 (validRegex!737 (regOne!5048 r!15766))))

(assert (=> d!276586 (= (lemmaFindConcatSeparationEquivalentToExists!59 (regOne!5048 r!15766) (regTwo!5048 r!15766) s!10566) lt!331003)))

(declare-fun bs!234552 () Bool)

(assert (= bs!234552 d!276586))

(assert (=> bs!234552 m!1130211))

(declare-fun m!1130275 () Bool)

(assert (=> bs!234552 m!1130275))

(assert (=> bs!234552 m!1130211))

(declare-fun m!1130277 () Bool)

(assert (=> bs!234552 m!1130277))

(assert (=> bs!234552 m!1130251))

(declare-fun m!1130279 () Bool)

(assert (=> bs!234552 m!1130279))

(assert (=> b!883118 d!276586))

(declare-fun b!883261 () Bool)

(declare-fun e!579564 () Option!1953)

(declare-fun e!579561 () Option!1953)

(assert (=> b!883261 (= e!579564 e!579561)))

(declare-fun c!142760 () Bool)

(assert (=> b!883261 (= c!142760 (is-Nil!9482 s!10566))))

(declare-fun b!883262 () Bool)

(declare-fun lt!331014 () Unit!14115)

(declare-fun lt!331013 () Unit!14115)

(assert (=> b!883262 (= lt!331014 lt!331013)))

(declare-fun ++!2474 (List!9498 List!9498) List!9498)

(assert (=> b!883262 (= (++!2474 (++!2474 Nil!9482 (Cons!9482 (h!14883 s!10566) Nil!9482)) (t!100544 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!102 (List!9498 C!5106 List!9498 List!9498) Unit!14115)

(assert (=> b!883262 (= lt!331013 (lemmaMoveElementToOtherListKeepsConcatEq!102 Nil!9482 (h!14883 s!10566) (t!100544 s!10566) s!10566))))

(assert (=> b!883262 (= e!579561 (findConcatSeparation!59 (regOne!5048 r!15766) (regTwo!5048 r!15766) (++!2474 Nil!9482 (Cons!9482 (h!14883 s!10566) Nil!9482)) (t!100544 s!10566) s!10566))))

(declare-fun b!883263 () Bool)

(declare-fun e!579562 () Bool)

(declare-fun lt!331015 () Option!1953)

(assert (=> b!883263 (= e!579562 (not (isDefined!1595 lt!331015)))))

(declare-fun b!883264 () Bool)

(assert (=> b!883264 (= e!579561 None!1952)))

(declare-fun b!883265 () Bool)

(declare-fun e!579560 () Bool)

(assert (=> b!883265 (= e!579560 (= (++!2474 (_1!6137 (get!2952 lt!331015)) (_2!6137 (get!2952 lt!331015))) s!10566))))

(declare-fun b!883266 () Bool)

(declare-fun e!579563 () Bool)

(assert (=> b!883266 (= e!579563 (matchR!806 (regTwo!5048 r!15766) s!10566))))

(declare-fun b!883267 () Bool)

(assert (=> b!883267 (= e!579564 (Some!1952 (tuple2!10623 Nil!9482 s!10566)))))

(declare-fun d!276588 () Bool)

(assert (=> d!276588 e!579562))

(declare-fun res!401717 () Bool)

(assert (=> d!276588 (=> res!401717 e!579562)))

(assert (=> d!276588 (= res!401717 e!579560)))

(declare-fun res!401714 () Bool)

(assert (=> d!276588 (=> (not res!401714) (not e!579560))))

(assert (=> d!276588 (= res!401714 (isDefined!1595 lt!331015))))

(assert (=> d!276588 (= lt!331015 e!579564)))

(declare-fun c!142761 () Bool)

(assert (=> d!276588 (= c!142761 e!579563)))

(declare-fun res!401718 () Bool)

(assert (=> d!276588 (=> (not res!401718) (not e!579563))))

(assert (=> d!276588 (= res!401718 (matchR!806 (regOne!5048 r!15766) Nil!9482))))

(assert (=> d!276588 (validRegex!737 (regOne!5048 r!15766))))

(assert (=> d!276588 (= (findConcatSeparation!59 (regOne!5048 r!15766) (regTwo!5048 r!15766) Nil!9482 s!10566 s!10566) lt!331015)))

(declare-fun b!883268 () Bool)

(declare-fun res!401716 () Bool)

(assert (=> b!883268 (=> (not res!401716) (not e!579560))))

(assert (=> b!883268 (= res!401716 (matchR!806 (regOne!5048 r!15766) (_1!6137 (get!2952 lt!331015))))))

(declare-fun b!883269 () Bool)

(declare-fun res!401715 () Bool)

(assert (=> b!883269 (=> (not res!401715) (not e!579560))))

(assert (=> b!883269 (= res!401715 (matchR!806 (regTwo!5048 r!15766) (_2!6137 (get!2952 lt!331015))))))

(assert (= (and d!276588 res!401718) b!883266))

(assert (= (and d!276588 c!142761) b!883267))

(assert (= (and d!276588 (not c!142761)) b!883261))

(assert (= (and b!883261 c!142760) b!883264))

(assert (= (and b!883261 (not c!142760)) b!883262))

(assert (= (and d!276588 res!401714) b!883268))

(assert (= (and b!883268 res!401716) b!883269))

(assert (= (and b!883269 res!401715) b!883265))

(assert (= (and d!276588 (not res!401717)) b!883263))

(declare-fun m!1130291 () Bool)

(assert (=> b!883262 m!1130291))

(assert (=> b!883262 m!1130291))

(declare-fun m!1130293 () Bool)

(assert (=> b!883262 m!1130293))

(declare-fun m!1130295 () Bool)

(assert (=> b!883262 m!1130295))

(assert (=> b!883262 m!1130291))

(declare-fun m!1130297 () Bool)

(assert (=> b!883262 m!1130297))

(declare-fun m!1130299 () Bool)

(assert (=> b!883265 m!1130299))

(declare-fun m!1130301 () Bool)

(assert (=> b!883265 m!1130301))

(assert (=> b!883268 m!1130299))

(declare-fun m!1130303 () Bool)

(assert (=> b!883268 m!1130303))

(declare-fun m!1130305 () Bool)

(assert (=> b!883263 m!1130305))

(assert (=> b!883269 m!1130299))

(declare-fun m!1130307 () Bool)

(assert (=> b!883269 m!1130307))

(declare-fun m!1130309 () Bool)

(assert (=> b!883266 m!1130309))

(assert (=> d!276588 m!1130305))

(declare-fun m!1130311 () Bool)

(assert (=> d!276588 m!1130311))

(assert (=> d!276588 m!1130251))

(assert (=> b!883118 d!276588))

(declare-fun bs!234556 () Bool)

(declare-fun d!276594 () Bool)

(assert (= bs!234556 (and d!276594 b!883118)))

(declare-fun lambda!27165 () Int)

(assert (=> bs!234556 (= lambda!27165 lambda!27145)))

(assert (=> bs!234556 (not (= lambda!27165 lambda!27146))))

(declare-fun bs!234557 () Bool)

(assert (= bs!234557 (and d!276594 d!276586)))

(assert (=> bs!234557 (= lambda!27165 lambda!27157)))

(assert (=> d!276594 true))

(assert (=> d!276594 true))

(assert (=> d!276594 true))

(declare-fun lambda!27166 () Int)

(assert (=> bs!234556 (not (= lambda!27166 lambda!27145))))

(assert (=> bs!234556 (= lambda!27166 lambda!27146)))

(assert (=> bs!234557 (not (= lambda!27166 lambda!27157))))

(declare-fun bs!234558 () Bool)

(assert (= bs!234558 d!276594))

(assert (=> bs!234558 (not (= lambda!27166 lambda!27165))))

(assert (=> d!276594 true))

(assert (=> d!276594 true))

(assert (=> d!276594 true))

(assert (=> d!276594 (= (Exists!63 lambda!27165) (Exists!63 lambda!27166))))

(declare-fun lt!331018 () Unit!14115)

(declare-fun choose!5238 (Regex!2268 Regex!2268 List!9498) Unit!14115)

(assert (=> d!276594 (= lt!331018 (choose!5238 (regOne!5048 r!15766) (regTwo!5048 r!15766) s!10566))))

(assert (=> d!276594 (validRegex!737 (regOne!5048 r!15766))))

(assert (=> d!276594 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!53 (regOne!5048 r!15766) (regTwo!5048 r!15766) s!10566) lt!331018)))

(declare-fun m!1130313 () Bool)

(assert (=> bs!234558 m!1130313))

(declare-fun m!1130315 () Bool)

(assert (=> bs!234558 m!1130315))

(declare-fun m!1130317 () Bool)

(assert (=> bs!234558 m!1130317))

(assert (=> bs!234558 m!1130251))

(assert (=> b!883118 d!276594))

(declare-fun bs!234559 () Bool)

(declare-fun b!883328 () Bool)

(assert (= bs!234559 (and b!883328 d!276594)))

(declare-fun lambda!27171 () Int)

(assert (=> bs!234559 (not (= lambda!27171 lambda!27165))))

(declare-fun bs!234560 () Bool)

(assert (= bs!234560 (and b!883328 d!276586)))

(assert (=> bs!234560 (not (= lambda!27171 lambda!27157))))

(declare-fun bs!234561 () Bool)

(assert (= bs!234561 (and b!883328 b!883118)))

(assert (=> bs!234561 (not (= lambda!27171 lambda!27145))))

(assert (=> bs!234559 (not (= lambda!27171 lambda!27166))))

(assert (=> bs!234561 (not (= lambda!27171 lambda!27146))))

(assert (=> b!883328 true))

(assert (=> b!883328 true))

(declare-fun bs!234562 () Bool)

(declare-fun b!883337 () Bool)

(assert (= bs!234562 (and b!883337 d!276594)))

(declare-fun lambda!27172 () Int)

(assert (=> bs!234562 (not (= lambda!27172 lambda!27165))))

(declare-fun bs!234563 () Bool)

(assert (= bs!234563 (and b!883337 d!276586)))

(assert (=> bs!234563 (not (= lambda!27172 lambda!27157))))

(declare-fun bs!234564 () Bool)

(assert (= bs!234564 (and b!883337 b!883118)))

(assert (=> bs!234564 (not (= lambda!27172 lambda!27145))))

(assert (=> bs!234562 (= lambda!27172 lambda!27166)))

(declare-fun bs!234565 () Bool)

(assert (= bs!234565 (and b!883337 b!883328)))

(assert (=> bs!234565 (not (= lambda!27172 lambda!27171))))

(assert (=> bs!234564 (= lambda!27172 lambda!27146)))

(assert (=> b!883337 true))

(assert (=> b!883337 true))

(declare-fun e!579599 () Bool)

(declare-fun call!51632 () Bool)

(assert (=> b!883328 (= e!579599 call!51632)))

(declare-fun b!883329 () Bool)

(declare-fun res!401755 () Bool)

(assert (=> b!883329 (=> res!401755 e!579599)))

(declare-fun call!51633 () Bool)

(assert (=> b!883329 (= res!401755 call!51633)))

(declare-fun e!579598 () Bool)

(assert (=> b!883329 (= e!579598 e!579599)))

(declare-fun c!142774 () Bool)

(declare-fun bm!51627 () Bool)

(assert (=> bm!51627 (= call!51632 (Exists!63 (ite c!142774 lambda!27171 lambda!27172)))))

(declare-fun d!276596 () Bool)

(declare-fun c!142775 () Bool)

(assert (=> d!276596 (= c!142775 (is-EmptyExpr!2268 r!15766))))

(declare-fun e!579597 () Bool)

(assert (=> d!276596 (= (matchRSpec!69 r!15766 s!10566) e!579597)))

(declare-fun bm!51628 () Bool)

(assert (=> bm!51628 (= call!51633 (isEmpty!5681 s!10566))))

(declare-fun b!883330 () Bool)

(declare-fun e!579603 () Bool)

(declare-fun e!579600 () Bool)

(assert (=> b!883330 (= e!579603 e!579600)))

(declare-fun res!401754 () Bool)

(assert (=> b!883330 (= res!401754 (matchRSpec!69 (regOne!5049 r!15766) s!10566))))

(assert (=> b!883330 (=> res!401754 e!579600)))

(declare-fun b!883331 () Bool)

(declare-fun e!579601 () Bool)

(assert (=> b!883331 (= e!579601 (= s!10566 (Cons!9482 (c!142739 r!15766) Nil!9482)))))

(declare-fun b!883332 () Bool)

(declare-fun e!579602 () Bool)

(assert (=> b!883332 (= e!579597 e!579602)))

(declare-fun res!401753 () Bool)

(assert (=> b!883332 (= res!401753 (not (is-EmptyLang!2268 r!15766)))))

(assert (=> b!883332 (=> (not res!401753) (not e!579602))))

(declare-fun b!883333 () Bool)

(declare-fun c!142777 () Bool)

(assert (=> b!883333 (= c!142777 (is-ElementMatch!2268 r!15766))))

(assert (=> b!883333 (= e!579602 e!579601)))

(declare-fun b!883334 () Bool)

(declare-fun c!142776 () Bool)

(assert (=> b!883334 (= c!142776 (is-Union!2268 r!15766))))

(assert (=> b!883334 (= e!579601 e!579603)))

(declare-fun b!883335 () Bool)

(assert (=> b!883335 (= e!579603 e!579598)))

(assert (=> b!883335 (= c!142774 (is-Star!2268 r!15766))))

(declare-fun b!883336 () Bool)

(assert (=> b!883336 (= e!579600 (matchRSpec!69 (regTwo!5049 r!15766) s!10566))))

(assert (=> b!883337 (= e!579598 call!51632)))

(declare-fun b!883338 () Bool)

(assert (=> b!883338 (= e!579597 call!51633)))

(assert (= (and d!276596 c!142775) b!883338))

(assert (= (and d!276596 (not c!142775)) b!883332))

(assert (= (and b!883332 res!401753) b!883333))

(assert (= (and b!883333 c!142777) b!883331))

(assert (= (and b!883333 (not c!142777)) b!883334))

(assert (= (and b!883334 c!142776) b!883330))

(assert (= (and b!883334 (not c!142776)) b!883335))

(assert (= (and b!883330 (not res!401754)) b!883336))

(assert (= (and b!883335 c!142774) b!883329))

(assert (= (and b!883335 (not c!142774)) b!883337))

(assert (= (and b!883329 (not res!401755)) b!883328))

(assert (= (or b!883328 b!883337) bm!51627))

(assert (= (or b!883338 b!883329) bm!51628))

(declare-fun m!1130319 () Bool)

(assert (=> bm!51627 m!1130319))

(assert (=> bm!51628 m!1130203))

(declare-fun m!1130321 () Bool)

(assert (=> b!883330 m!1130321))

(declare-fun m!1130323 () Bool)

(assert (=> b!883336 m!1130323))

(assert (=> b!883113 d!276596))

(declare-fun b!883348 () Bool)

(declare-fun e!579615 () Bool)

(declare-fun lt!331028 () Bool)

(declare-fun call!51634 () Bool)

(assert (=> b!883348 (= e!579615 (= lt!331028 call!51634))))

(declare-fun b!883349 () Bool)

(declare-fun e!579611 () Bool)

(assert (=> b!883349 (= e!579611 (not (= (head!1543 s!10566) (c!142739 r!15766))))))

(declare-fun b!883350 () Bool)

(declare-fun e!579609 () Bool)

(assert (=> b!883350 (= e!579615 e!579609)))

(declare-fun c!142781 () Bool)

(assert (=> b!883350 (= c!142781 (is-EmptyLang!2268 r!15766))))

(declare-fun b!883351 () Bool)

(declare-fun e!579610 () Bool)

(declare-fun e!579614 () Bool)

(assert (=> b!883351 (= e!579610 e!579614)))

(declare-fun res!401767 () Bool)

(assert (=> b!883351 (=> (not res!401767) (not e!579614))))

(assert (=> b!883351 (= res!401767 (not lt!331028))))

(declare-fun b!883352 () Bool)

(declare-fun res!401763 () Bool)

(declare-fun e!579613 () Bool)

(assert (=> b!883352 (=> (not res!401763) (not e!579613))))

(assert (=> b!883352 (= res!401763 (not call!51634))))

(declare-fun b!883353 () Bool)

(assert (=> b!883353 (= e!579613 (= (head!1543 s!10566) (c!142739 r!15766)))))

(declare-fun bm!51629 () Bool)

(assert (=> bm!51629 (= call!51634 (isEmpty!5681 s!10566))))

(declare-fun b!883354 () Bool)

(declare-fun e!579612 () Bool)

(assert (=> b!883354 (= e!579612 (matchR!806 (derivativeStep!390 r!15766 (head!1543 s!10566)) (tail!1105 s!10566)))))

(declare-fun b!883355 () Bool)

(declare-fun res!401765 () Bool)

(assert (=> b!883355 (=> res!401765 e!579611)))

(assert (=> b!883355 (= res!401765 (not (isEmpty!5681 (tail!1105 s!10566))))))

(declare-fun b!883357 () Bool)

(declare-fun res!401768 () Bool)

(assert (=> b!883357 (=> res!401768 e!579610)))

(assert (=> b!883357 (= res!401768 (not (is-ElementMatch!2268 r!15766)))))

(assert (=> b!883357 (= e!579609 e!579610)))

(declare-fun b!883358 () Bool)

(assert (=> b!883358 (= e!579614 e!579611)))

(declare-fun res!401766 () Bool)

(assert (=> b!883358 (=> res!401766 e!579611)))

(assert (=> b!883358 (= res!401766 call!51634)))

(declare-fun b!883359 () Bool)

(declare-fun res!401764 () Bool)

(assert (=> b!883359 (=> (not res!401764) (not e!579613))))

(assert (=> b!883359 (= res!401764 (isEmpty!5681 (tail!1105 s!10566)))))

(declare-fun b!883360 () Bool)

(assert (=> b!883360 (= e!579609 (not lt!331028))))

(declare-fun b!883361 () Bool)

(declare-fun res!401762 () Bool)

(assert (=> b!883361 (=> res!401762 e!579610)))

(assert (=> b!883361 (= res!401762 e!579613)))

(declare-fun res!401761 () Bool)

(assert (=> b!883361 (=> (not res!401761) (not e!579613))))

(assert (=> b!883361 (= res!401761 lt!331028)))

(declare-fun b!883356 () Bool)

(assert (=> b!883356 (= e!579612 (nullable!578 r!15766))))

(declare-fun d!276598 () Bool)

(assert (=> d!276598 e!579615))

(declare-fun c!142782 () Bool)

(assert (=> d!276598 (= c!142782 (is-EmptyExpr!2268 r!15766))))

(assert (=> d!276598 (= lt!331028 e!579612)))

(declare-fun c!142780 () Bool)

(assert (=> d!276598 (= c!142780 (isEmpty!5681 s!10566))))

(assert (=> d!276598 (validRegex!737 r!15766)))

(assert (=> d!276598 (= (matchR!806 r!15766 s!10566) lt!331028)))

(assert (= (and d!276598 c!142780) b!883356))

(assert (= (and d!276598 (not c!142780)) b!883354))

(assert (= (and d!276598 c!142782) b!883348))

(assert (= (and d!276598 (not c!142782)) b!883350))

(assert (= (and b!883350 c!142781) b!883360))

(assert (= (and b!883350 (not c!142781)) b!883357))

(assert (= (and b!883357 (not res!401768)) b!883361))

(assert (= (and b!883361 res!401761) b!883352))

(assert (= (and b!883352 res!401763) b!883359))

(assert (= (and b!883359 res!401764) b!883353))

(assert (= (and b!883361 (not res!401762)) b!883351))

(assert (= (and b!883351 res!401767) b!883358))

(assert (= (and b!883358 (not res!401766)) b!883355))

(assert (= (and b!883355 (not res!401765)) b!883349))

(assert (= (or b!883348 b!883352 b!883358) bm!51629))

(declare-fun m!1130325 () Bool)

(assert (=> b!883355 m!1130325))

(assert (=> b!883355 m!1130325))

(declare-fun m!1130327 () Bool)

(assert (=> b!883355 m!1130327))

(assert (=> d!276598 m!1130203))

(assert (=> d!276598 m!1130213))

(declare-fun m!1130329 () Bool)

(assert (=> b!883353 m!1130329))

(assert (=> b!883354 m!1130329))

(assert (=> b!883354 m!1130329))

(declare-fun m!1130331 () Bool)

(assert (=> b!883354 m!1130331))

(assert (=> b!883354 m!1130325))

(assert (=> b!883354 m!1130331))

(assert (=> b!883354 m!1130325))

(declare-fun m!1130333 () Bool)

(assert (=> b!883354 m!1130333))

(assert (=> b!883359 m!1130325))

(assert (=> b!883359 m!1130325))

(assert (=> b!883359 m!1130327))

(declare-fun m!1130335 () Bool)

(assert (=> b!883356 m!1130335))

(assert (=> b!883349 m!1130329))

(assert (=> bm!51629 m!1130203))

(assert (=> b!883113 d!276598))

(declare-fun d!276600 () Bool)

(assert (=> d!276600 (= (matchR!806 r!15766 s!10566) (matchRSpec!69 r!15766 s!10566))))

(declare-fun lt!331031 () Unit!14115)

(declare-fun choose!5239 (Regex!2268 List!9498) Unit!14115)

(assert (=> d!276600 (= lt!331031 (choose!5239 r!15766 s!10566))))

(assert (=> d!276600 (validRegex!737 r!15766)))

(assert (=> d!276600 (= (mainMatchTheorem!69 r!15766 s!10566) lt!331031)))

(declare-fun bs!234567 () Bool)

(assert (= bs!234567 d!276600))

(assert (=> bs!234567 m!1130191))

(assert (=> bs!234567 m!1130189))

(declare-fun m!1130361 () Bool)

(assert (=> bs!234567 m!1130361))

(assert (=> bs!234567 m!1130213))

(assert (=> b!883113 d!276600))

(declare-fun b!883362 () Bool)

(declare-fun e!579616 () Bool)

(declare-fun e!579621 () Bool)

(assert (=> b!883362 (= e!579616 e!579621)))

(declare-fun res!401770 () Bool)

(assert (=> b!883362 (=> (not res!401770) (not e!579621))))

(declare-fun call!51636 () Bool)

(assert (=> b!883362 (= res!401770 call!51636)))

(declare-fun bm!51630 () Bool)

(declare-fun call!51637 () Bool)

(declare-fun call!51635 () Bool)

(assert (=> bm!51630 (= call!51637 call!51635)))

(declare-fun d!276606 () Bool)

(declare-fun res!401771 () Bool)

(declare-fun e!579620 () Bool)

(assert (=> d!276606 (=> res!401771 e!579620)))

(assert (=> d!276606 (= res!401771 (is-ElementMatch!2268 (regTwo!5048 r!15766)))))

(assert (=> d!276606 (= (validRegex!737 (regTwo!5048 r!15766)) e!579620)))

(declare-fun b!883363 () Bool)

(declare-fun res!401769 () Bool)

(assert (=> b!883363 (=> res!401769 e!579616)))

(assert (=> b!883363 (= res!401769 (not (is-Concat!4101 (regTwo!5048 r!15766))))))

(declare-fun e!579618 () Bool)

(assert (=> b!883363 (= e!579618 e!579616)))

(declare-fun b!883364 () Bool)

(declare-fun res!401773 () Bool)

(declare-fun e!579617 () Bool)

(assert (=> b!883364 (=> (not res!401773) (not e!579617))))

(assert (=> b!883364 (= res!401773 call!51636)))

(assert (=> b!883364 (= e!579618 e!579617)))

(declare-fun b!883365 () Bool)

(declare-fun e!579619 () Bool)

(assert (=> b!883365 (= e!579620 e!579619)))

(declare-fun c!142783 () Bool)

(assert (=> b!883365 (= c!142783 (is-Star!2268 (regTwo!5048 r!15766)))))

(declare-fun b!883366 () Bool)

(declare-fun e!579622 () Bool)

(assert (=> b!883366 (= e!579622 call!51635)))

(declare-fun b!883367 () Bool)

(assert (=> b!883367 (= e!579619 e!579618)))

(declare-fun c!142784 () Bool)

(assert (=> b!883367 (= c!142784 (is-Union!2268 (regTwo!5048 r!15766)))))

(declare-fun bm!51631 () Bool)

(assert (=> bm!51631 (= call!51635 (validRegex!737 (ite c!142783 (reg!2597 (regTwo!5048 r!15766)) (ite c!142784 (regTwo!5049 (regTwo!5048 r!15766)) (regTwo!5048 (regTwo!5048 r!15766))))))))

(declare-fun bm!51632 () Bool)

(assert (=> bm!51632 (= call!51636 (validRegex!737 (ite c!142784 (regOne!5049 (regTwo!5048 r!15766)) (regOne!5048 (regTwo!5048 r!15766)))))))

(declare-fun b!883368 () Bool)

(assert (=> b!883368 (= e!579621 call!51637)))

(declare-fun b!883369 () Bool)

(assert (=> b!883369 (= e!579617 call!51637)))

(declare-fun b!883370 () Bool)

(assert (=> b!883370 (= e!579619 e!579622)))

(declare-fun res!401772 () Bool)

(assert (=> b!883370 (= res!401772 (not (nullable!578 (reg!2597 (regTwo!5048 r!15766)))))))

(assert (=> b!883370 (=> (not res!401772) (not e!579622))))

(assert (= (and d!276606 (not res!401771)) b!883365))

(assert (= (and b!883365 c!142783) b!883370))

(assert (= (and b!883365 (not c!142783)) b!883367))

(assert (= (and b!883370 res!401772) b!883366))

(assert (= (and b!883367 c!142784) b!883364))

(assert (= (and b!883367 (not c!142784)) b!883363))

(assert (= (and b!883364 res!401773) b!883369))

(assert (= (and b!883363 (not res!401769)) b!883362))

(assert (= (and b!883362 res!401770) b!883368))

(assert (= (or b!883369 b!883368) bm!51630))

(assert (= (or b!883364 b!883362) bm!51632))

(assert (= (or b!883366 bm!51630) bm!51631))

(declare-fun m!1130363 () Bool)

(assert (=> bm!51631 m!1130363))

(declare-fun m!1130365 () Bool)

(assert (=> bm!51632 m!1130365))

(declare-fun m!1130367 () Bool)

(assert (=> b!883370 m!1130367))

(assert (=> b!883115 d!276606))

(declare-fun e!579625 () Bool)

(assert (=> b!883116 (= tp!278801 e!579625)))

(declare-fun b!883384 () Bool)

(declare-fun tp!278837 () Bool)

(declare-fun tp!278839 () Bool)

(assert (=> b!883384 (= e!579625 (and tp!278837 tp!278839))))

(declare-fun b!883383 () Bool)

(declare-fun tp!278836 () Bool)

(assert (=> b!883383 (= e!579625 tp!278836)))

(declare-fun b!883382 () Bool)

(declare-fun tp!278838 () Bool)

(declare-fun tp!278835 () Bool)

(assert (=> b!883382 (= e!579625 (and tp!278838 tp!278835))))

(declare-fun b!883381 () Bool)

(assert (=> b!883381 (= e!579625 tp_is_empty!4179)))

(assert (= (and b!883116 (is-ElementMatch!2268 (reg!2597 r!15766))) b!883381))

(assert (= (and b!883116 (is-Concat!4101 (reg!2597 r!15766))) b!883382))

(assert (= (and b!883116 (is-Star!2268 (reg!2597 r!15766))) b!883383))

(assert (= (and b!883116 (is-Union!2268 (reg!2597 r!15766))) b!883384))

(declare-fun b!883389 () Bool)

(declare-fun e!579628 () Bool)

(declare-fun tp!278842 () Bool)

(assert (=> b!883389 (= e!579628 (and tp_is_empty!4179 tp!278842))))

(assert (=> b!883112 (= tp!278802 e!579628)))

(assert (= (and b!883112 (is-Cons!9482 (t!100544 s!10566))) b!883389))

(declare-fun e!579629 () Bool)

(assert (=> b!883117 (= tp!278803 e!579629)))

(declare-fun b!883393 () Bool)

(declare-fun tp!278845 () Bool)

(declare-fun tp!278847 () Bool)

(assert (=> b!883393 (= e!579629 (and tp!278845 tp!278847))))

(declare-fun b!883392 () Bool)

(declare-fun tp!278844 () Bool)

(assert (=> b!883392 (= e!579629 tp!278844)))

(declare-fun b!883391 () Bool)

(declare-fun tp!278846 () Bool)

(declare-fun tp!278843 () Bool)

(assert (=> b!883391 (= e!579629 (and tp!278846 tp!278843))))

(declare-fun b!883390 () Bool)

(assert (=> b!883390 (= e!579629 tp_is_empty!4179)))

(assert (= (and b!883117 (is-ElementMatch!2268 (regOne!5049 r!15766))) b!883390))

(assert (= (and b!883117 (is-Concat!4101 (regOne!5049 r!15766))) b!883391))

(assert (= (and b!883117 (is-Star!2268 (regOne!5049 r!15766))) b!883392))

(assert (= (and b!883117 (is-Union!2268 (regOne!5049 r!15766))) b!883393))

(declare-fun e!579630 () Bool)

(assert (=> b!883117 (= tp!278804 e!579630)))

(declare-fun b!883397 () Bool)

(declare-fun tp!278850 () Bool)

(declare-fun tp!278852 () Bool)

(assert (=> b!883397 (= e!579630 (and tp!278850 tp!278852))))

(declare-fun b!883396 () Bool)

(declare-fun tp!278849 () Bool)

(assert (=> b!883396 (= e!579630 tp!278849)))

(declare-fun b!883395 () Bool)

(declare-fun tp!278851 () Bool)

(declare-fun tp!278848 () Bool)

(assert (=> b!883395 (= e!579630 (and tp!278851 tp!278848))))

(declare-fun b!883394 () Bool)

(assert (=> b!883394 (= e!579630 tp_is_empty!4179)))

(assert (= (and b!883117 (is-ElementMatch!2268 (regTwo!5049 r!15766))) b!883394))

(assert (= (and b!883117 (is-Concat!4101 (regTwo!5049 r!15766))) b!883395))

(assert (= (and b!883117 (is-Star!2268 (regTwo!5049 r!15766))) b!883396))

(assert (= (and b!883117 (is-Union!2268 (regTwo!5049 r!15766))) b!883397))

(declare-fun e!579631 () Bool)

(assert (=> b!883114 (= tp!278806 e!579631)))

(declare-fun b!883401 () Bool)

(declare-fun tp!278855 () Bool)

(declare-fun tp!278857 () Bool)

(assert (=> b!883401 (= e!579631 (and tp!278855 tp!278857))))

(declare-fun b!883400 () Bool)

(declare-fun tp!278854 () Bool)

(assert (=> b!883400 (= e!579631 tp!278854)))

(declare-fun b!883399 () Bool)

(declare-fun tp!278856 () Bool)

(declare-fun tp!278853 () Bool)

(assert (=> b!883399 (= e!579631 (and tp!278856 tp!278853))))

(declare-fun b!883398 () Bool)

(assert (=> b!883398 (= e!579631 tp_is_empty!4179)))

(assert (= (and b!883114 (is-ElementMatch!2268 (regOne!5048 r!15766))) b!883398))

(assert (= (and b!883114 (is-Concat!4101 (regOne!5048 r!15766))) b!883399))

(assert (= (and b!883114 (is-Star!2268 (regOne!5048 r!15766))) b!883400))

(assert (= (and b!883114 (is-Union!2268 (regOne!5048 r!15766))) b!883401))

(declare-fun e!579632 () Bool)

(assert (=> b!883114 (= tp!278805 e!579632)))

(declare-fun b!883405 () Bool)

(declare-fun tp!278860 () Bool)

(declare-fun tp!278862 () Bool)

(assert (=> b!883405 (= e!579632 (and tp!278860 tp!278862))))

(declare-fun b!883404 () Bool)

(declare-fun tp!278859 () Bool)

(assert (=> b!883404 (= e!579632 tp!278859)))

(declare-fun b!883403 () Bool)

(declare-fun tp!278861 () Bool)

(declare-fun tp!278858 () Bool)

(assert (=> b!883403 (= e!579632 (and tp!278861 tp!278858))))

(declare-fun b!883402 () Bool)

(assert (=> b!883402 (= e!579632 tp_is_empty!4179)))

(assert (= (and b!883114 (is-ElementMatch!2268 (regTwo!5048 r!15766))) b!883402))

(assert (= (and b!883114 (is-Concat!4101 (regTwo!5048 r!15766))) b!883403))

(assert (= (and b!883114 (is-Star!2268 (regTwo!5048 r!15766))) b!883404))

(assert (= (and b!883114 (is-Union!2268 (regTwo!5048 r!15766))) b!883405))

(push 1)

(assert (not b!883370))

(assert (not b!883359))

(assert (not b!883200))

(assert tp_is_empty!4179)

(assert (not b!883400))

(assert (not b!883234))

(assert (not b!883205))

(assert (not d!276578))

(assert (not b!883393))

(assert (not b!883349))

(assert (not bm!51622))

(assert (not b!883266))

(assert (not b!883201))

(assert (not b!883389))

(assert (not b!883391))

(assert (not b!883269))

(assert (not d!276584))

(assert (not b!883399))

(assert (not bm!51631))

(assert (not b!883265))

(assert (not bm!51621))

(assert (not b!883401))

(assert (not b!883405))

(assert (not b!883268))

(assert (not b!883262))

(assert (not b!883330))

(assert (not b!883392))

(assert (not bm!51629))

(assert (not b!883384))

(assert (not bm!51613))

(assert (not b!883403))

(assert (not d!276594))

(assert (not b!883354))

(assert (not b!883202))

(assert (not d!276586))

(assert (not bm!51627))

(assert (not b!883356))

(assert (not b!883382))

(assert (not d!276598))

(assert (not bm!51628))

(assert (not b!883355))

(assert (not d!276600))

(assert (not b!883195))

(assert (not b!883395))

(assert (not d!276588))

(assert (not b!883404))

(assert (not b!883336))

(assert (not b!883383))

(assert (not b!883263))

(assert (not bm!51632))

(assert (not b!883396))

(assert (not d!276566))

(assert (not b!883353))

(assert (not b!883397))

(assert (not b!883199))

(assert (not d!276580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

