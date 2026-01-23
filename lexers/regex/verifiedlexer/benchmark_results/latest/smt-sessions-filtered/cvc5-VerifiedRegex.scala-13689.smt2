; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732934 () Bool)

(assert start!732934)

(declare-fun b!7602547 () Bool)

(assert (=> b!7602547 true))

(assert (=> b!7602547 true))

(assert (=> b!7602547 true))

(declare-fun b!7602544 () Bool)

(declare-fun e!4522676 () Bool)

(declare-fun tp!2216979 () Bool)

(declare-fun tp!2216978 () Bool)

(assert (=> b!7602544 (= e!4522676 (and tp!2216979 tp!2216978))))

(declare-fun b!7602545 () Bool)

(declare-fun e!4522677 () Bool)

(declare-fun tp!2216976 () Bool)

(assert (=> b!7602545 (= e!4522677 tp!2216976)))

(declare-fun b!7602546 () Bool)

(declare-fun res!3044175 () Bool)

(declare-fun e!4522679 () Bool)

(assert (=> b!7602546 (=> (not res!3044175) (not e!4522679))))

(declare-datatypes ((C!40670 0))(
  ( (C!40671 (val!30775 Int)) )
))
(declare-datatypes ((Regex!20172 0))(
  ( (ElementMatch!20172 (c!1402261 C!40670)) (Concat!29017 (regOne!40856 Regex!20172) (regTwo!40856 Regex!20172)) (EmptyExpr!20172) (Star!20172 (reg!20501 Regex!20172)) (EmptyLang!20172) (Union!20172 (regOne!40857 Regex!20172) (regTwo!40857 Regex!20172)) )
))
(declare-fun r2!3249 () Regex!20172)

(declare-fun validRegex!10600 (Regex!20172) Bool)

(assert (=> b!7602546 (= res!3044175 (validRegex!10600 r2!3249))))

(declare-fun res!3044174 () Bool)

(assert (=> b!7602547 (=> (not res!3044174) (not e!4522679))))

(declare-fun lambda!467832 () Int)

(declare-fun Exists!4400 (Int) Bool)

(assert (=> b!7602547 (= res!3044174 (Exists!4400 lambda!467832))))

(declare-fun b!7602548 () Bool)

(declare-datatypes ((List!73055 0))(
  ( (Nil!72931) (Cons!72931 (h!79379 C!40670) (t!387790 List!73055)) )
))
(declare-datatypes ((tuple2!69058 0))(
  ( (tuple2!69059 (_1!37832 List!73055) (_2!37832 List!73055)) )
))
(declare-fun lt!2654501 () tuple2!69058)

(declare-fun s!10235 () List!73055)

(declare-fun ++!17572 (List!73055 List!73055) List!73055)

(assert (=> b!7602548 (= e!4522679 (not (= (++!17572 (_1!37832 lt!2654501) (_2!37832 lt!2654501)) s!10235)))))

(declare-fun pickWitness!417 (Int) tuple2!69058)

(assert (=> b!7602548 (= lt!2654501 (pickWitness!417 lambda!467832))))

(declare-fun b!7602549 () Bool)

(declare-fun tp!2216980 () Bool)

(declare-fun tp!2216975 () Bool)

(assert (=> b!7602549 (= e!4522677 (and tp!2216980 tp!2216975))))

(declare-fun res!3044173 () Bool)

(assert (=> start!732934 (=> (not res!3044173) (not e!4522679))))

(declare-fun r1!3349 () Regex!20172)

(assert (=> start!732934 (= res!3044173 (validRegex!10600 r1!3349))))

(assert (=> start!732934 e!4522679))

(assert (=> start!732934 e!4522676))

(assert (=> start!732934 e!4522677))

(declare-fun e!4522678 () Bool)

(assert (=> start!732934 e!4522678))

(declare-fun b!7602550 () Bool)

(declare-fun tp_is_empty!50699 () Bool)

(assert (=> b!7602550 (= e!4522677 tp_is_empty!50699)))

(declare-fun b!7602551 () Bool)

(declare-fun tp!2216983 () Bool)

(assert (=> b!7602551 (= e!4522676 tp!2216983)))

(declare-fun b!7602552 () Bool)

(declare-fun tp!2216982 () Bool)

(declare-fun tp!2216984 () Bool)

(assert (=> b!7602552 (= e!4522677 (and tp!2216982 tp!2216984))))

(declare-fun b!7602553 () Bool)

(assert (=> b!7602553 (= e!4522676 tp_is_empty!50699)))

(declare-fun b!7602554 () Bool)

(declare-fun tp!2216974 () Bool)

(declare-fun tp!2216977 () Bool)

(assert (=> b!7602554 (= e!4522676 (and tp!2216974 tp!2216977))))

(declare-fun b!7602555 () Bool)

(declare-fun tp!2216981 () Bool)

(assert (=> b!7602555 (= e!4522678 (and tp_is_empty!50699 tp!2216981))))

(assert (= (and start!732934 res!3044173) b!7602546))

(assert (= (and b!7602546 res!3044175) b!7602547))

(assert (= (and b!7602547 res!3044174) b!7602548))

(assert (= (and start!732934 (is-ElementMatch!20172 r1!3349)) b!7602553))

(assert (= (and start!732934 (is-Concat!29017 r1!3349)) b!7602544))

(assert (= (and start!732934 (is-Star!20172 r1!3349)) b!7602551))

(assert (= (and start!732934 (is-Union!20172 r1!3349)) b!7602554))

(assert (= (and start!732934 (is-ElementMatch!20172 r2!3249)) b!7602550))

(assert (= (and start!732934 (is-Concat!29017 r2!3249)) b!7602549))

(assert (= (and start!732934 (is-Star!20172 r2!3249)) b!7602545))

(assert (= (and start!732934 (is-Union!20172 r2!3249)) b!7602552))

(assert (= (and start!732934 (is-Cons!72931 s!10235)) b!7602555))

(declare-fun m!8145454 () Bool)

(assert (=> b!7602546 m!8145454))

(declare-fun m!8145456 () Bool)

(assert (=> b!7602547 m!8145456))

(declare-fun m!8145458 () Bool)

(assert (=> b!7602548 m!8145458))

(declare-fun m!8145460 () Bool)

(assert (=> b!7602548 m!8145460))

(declare-fun m!8145462 () Bool)

(assert (=> start!732934 m!8145462))

(push 1)

(assert (not b!7602544))

(assert (not b!7602546))

(assert (not b!7602545))

(assert (not b!7602547))

(assert (not start!732934))

(assert tp_is_empty!50699)

(assert (not b!7602549))

(assert (not b!7602551))

(assert (not b!7602552))

(assert (not b!7602555))

(assert (not b!7602548))

(assert (not b!7602554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7602618 () Bool)

(declare-fun res!3044197 () Bool)

(declare-fun e!4522700 () Bool)

(assert (=> b!7602618 (=> (not res!3044197) (not e!4522700))))

(declare-fun lt!2654507 () List!73055)

(declare-fun size!42509 (List!73055) Int)

(assert (=> b!7602618 (= res!3044197 (= (size!42509 lt!2654507) (+ (size!42509 (_1!37832 lt!2654501)) (size!42509 (_2!37832 lt!2654501)))))))

(declare-fun b!7602616 () Bool)

(declare-fun e!4522701 () List!73055)

(assert (=> b!7602616 (= e!4522701 (_2!37832 lt!2654501))))

(declare-fun b!7602617 () Bool)

(assert (=> b!7602617 (= e!4522701 (Cons!72931 (h!79379 (_1!37832 lt!2654501)) (++!17572 (t!387790 (_1!37832 lt!2654501)) (_2!37832 lt!2654501))))))

(declare-fun d!2321510 () Bool)

(assert (=> d!2321510 e!4522700))

(declare-fun res!3044198 () Bool)

(assert (=> d!2321510 (=> (not res!3044198) (not e!4522700))))

(declare-fun content!15416 (List!73055) (Set C!40670))

(assert (=> d!2321510 (= res!3044198 (= (content!15416 lt!2654507) (set.union (content!15416 (_1!37832 lt!2654501)) (content!15416 (_2!37832 lt!2654501)))))))

(assert (=> d!2321510 (= lt!2654507 e!4522701)))

(declare-fun c!1402265 () Bool)

(assert (=> d!2321510 (= c!1402265 (is-Nil!72931 (_1!37832 lt!2654501)))))

(assert (=> d!2321510 (= (++!17572 (_1!37832 lt!2654501) (_2!37832 lt!2654501)) lt!2654507)))

(declare-fun b!7602619 () Bool)

(assert (=> b!7602619 (= e!4522700 (or (not (= (_2!37832 lt!2654501) Nil!72931)) (= lt!2654507 (_1!37832 lt!2654501))))))

(assert (= (and d!2321510 c!1402265) b!7602616))

(assert (= (and d!2321510 (not c!1402265)) b!7602617))

(assert (= (and d!2321510 res!3044198) b!7602618))

(assert (= (and b!7602618 res!3044197) b!7602619))

(declare-fun m!8145474 () Bool)

(assert (=> b!7602618 m!8145474))

(declare-fun m!8145476 () Bool)

(assert (=> b!7602618 m!8145476))

(declare-fun m!8145478 () Bool)

(assert (=> b!7602618 m!8145478))

(declare-fun m!8145480 () Bool)

(assert (=> b!7602617 m!8145480))

(declare-fun m!8145482 () Bool)

(assert (=> d!2321510 m!8145482))

(declare-fun m!8145484 () Bool)

(assert (=> d!2321510 m!8145484))

(declare-fun m!8145486 () Bool)

(assert (=> d!2321510 m!8145486))

(assert (=> b!7602548 d!2321510))

(declare-fun d!2321512 () Bool)

(declare-fun lt!2654510 () tuple2!69058)

(declare-fun dynLambda!29897 (Int tuple2!69058) Bool)

(assert (=> d!2321512 (dynLambda!29897 lambda!467832 lt!2654510)))

(declare-fun choose!58689 (Int) tuple2!69058)

(assert (=> d!2321512 (= lt!2654510 (choose!58689 lambda!467832))))

(assert (=> d!2321512 (Exists!4400 lambda!467832)))

(assert (=> d!2321512 (= (pickWitness!417 lambda!467832) lt!2654510)))

(declare-fun b_lambda!288907 () Bool)

(assert (=> (not b_lambda!288907) (not d!2321512)))

(declare-fun bs!1942453 () Bool)

(assert (= bs!1942453 d!2321512))

(declare-fun m!8145488 () Bool)

(assert (=> bs!1942453 m!8145488))

(declare-fun m!8145490 () Bool)

(assert (=> bs!1942453 m!8145490))

(assert (=> bs!1942453 m!8145456))

(assert (=> b!7602548 d!2321512))

(declare-fun b!7602638 () Bool)

(declare-fun e!4522716 () Bool)

(declare-fun e!4522722 () Bool)

(assert (=> b!7602638 (= e!4522716 e!4522722)))

(declare-fun c!1402270 () Bool)

(assert (=> b!7602638 (= c!1402270 (is-Star!20172 r2!3249))))

(declare-fun b!7602639 () Bool)

(declare-fun e!4522721 () Bool)

(declare-fun e!4522720 () Bool)

(assert (=> b!7602639 (= e!4522721 e!4522720)))

(declare-fun res!3044210 () Bool)

(assert (=> b!7602639 (=> (not res!3044210) (not e!4522720))))

(declare-fun call!698051 () Bool)

(assert (=> b!7602639 (= res!3044210 call!698051)))

(declare-fun b!7602640 () Bool)

(declare-fun call!698053 () Bool)

(assert (=> b!7602640 (= e!4522720 call!698053)))

(declare-fun b!7602641 () Bool)

(declare-fun e!4522718 () Bool)

(assert (=> b!7602641 (= e!4522722 e!4522718)))

(declare-fun res!3044211 () Bool)

(declare-fun nullable!8803 (Regex!20172) Bool)

(assert (=> b!7602641 (= res!3044211 (not (nullable!8803 (reg!20501 r2!3249))))))

(assert (=> b!7602641 (=> (not res!3044211) (not e!4522718))))

(declare-fun bm!698046 () Bool)

(declare-fun call!698052 () Bool)

(assert (=> bm!698046 (= call!698051 call!698052)))

(declare-fun b!7602642 () Bool)

(declare-fun e!4522719 () Bool)

(assert (=> b!7602642 (= e!4522722 e!4522719)))

(declare-fun c!1402271 () Bool)

(assert (=> b!7602642 (= c!1402271 (is-Union!20172 r2!3249))))

(declare-fun b!7602643 () Bool)

(declare-fun res!3044212 () Bool)

(assert (=> b!7602643 (=> res!3044212 e!4522721)))

(assert (=> b!7602643 (= res!3044212 (not (is-Concat!29017 r2!3249)))))

(assert (=> b!7602643 (= e!4522719 e!4522721)))

(declare-fun b!7602644 () Bool)

(declare-fun res!3044209 () Bool)

(declare-fun e!4522717 () Bool)

(assert (=> b!7602644 (=> (not res!3044209) (not e!4522717))))

(assert (=> b!7602644 (= res!3044209 call!698053)))

(assert (=> b!7602644 (= e!4522719 e!4522717)))

(declare-fun b!7602645 () Bool)

(assert (=> b!7602645 (= e!4522718 call!698052)))

(declare-fun bm!698047 () Bool)

(assert (=> bm!698047 (= call!698053 (validRegex!10600 (ite c!1402271 (regOne!40857 r2!3249) (regTwo!40856 r2!3249))))))

(declare-fun d!2321514 () Bool)

(declare-fun res!3044213 () Bool)

(assert (=> d!2321514 (=> res!3044213 e!4522716)))

(assert (=> d!2321514 (= res!3044213 (is-ElementMatch!20172 r2!3249))))

(assert (=> d!2321514 (= (validRegex!10600 r2!3249) e!4522716)))

(declare-fun bm!698048 () Bool)

(assert (=> bm!698048 (= call!698052 (validRegex!10600 (ite c!1402270 (reg!20501 r2!3249) (ite c!1402271 (regTwo!40857 r2!3249) (regOne!40856 r2!3249)))))))

(declare-fun b!7602646 () Bool)

(assert (=> b!7602646 (= e!4522717 call!698051)))

(assert (= (and d!2321514 (not res!3044213)) b!7602638))

(assert (= (and b!7602638 c!1402270) b!7602641))

(assert (= (and b!7602638 (not c!1402270)) b!7602642))

(assert (= (and b!7602641 res!3044211) b!7602645))

(assert (= (and b!7602642 c!1402271) b!7602644))

(assert (= (and b!7602642 (not c!1402271)) b!7602643))

(assert (= (and b!7602644 res!3044209) b!7602646))

(assert (= (and b!7602643 (not res!3044212)) b!7602639))

(assert (= (and b!7602639 res!3044210) b!7602640))

(assert (= (or b!7602646 b!7602639) bm!698046))

(assert (= (or b!7602644 b!7602640) bm!698047))

(assert (= (or b!7602645 bm!698046) bm!698048))

(declare-fun m!8145492 () Bool)

(assert (=> b!7602641 m!8145492))

(declare-fun m!8145494 () Bool)

(assert (=> bm!698047 m!8145494))

(declare-fun m!8145496 () Bool)

(assert (=> bm!698048 m!8145496))

(assert (=> b!7602546 d!2321514))

(declare-fun d!2321518 () Bool)

(declare-fun choose!58690 (Int) Bool)

(assert (=> d!2321518 (= (Exists!4400 lambda!467832) (choose!58690 lambda!467832))))

(declare-fun bs!1942454 () Bool)

(assert (= bs!1942454 d!2321518))

(declare-fun m!8145498 () Bool)

(assert (=> bs!1942454 m!8145498))

(assert (=> b!7602547 d!2321518))

(declare-fun b!7602647 () Bool)

(declare-fun e!4522723 () Bool)

(declare-fun e!4522729 () Bool)

(assert (=> b!7602647 (= e!4522723 e!4522729)))

(declare-fun c!1402272 () Bool)

(assert (=> b!7602647 (= c!1402272 (is-Star!20172 r1!3349))))

(declare-fun b!7602648 () Bool)

(declare-fun e!4522728 () Bool)

(declare-fun e!4522727 () Bool)

(assert (=> b!7602648 (= e!4522728 e!4522727)))

(declare-fun res!3044215 () Bool)

(assert (=> b!7602648 (=> (not res!3044215) (not e!4522727))))

(declare-fun call!698054 () Bool)

(assert (=> b!7602648 (= res!3044215 call!698054)))

(declare-fun b!7602649 () Bool)

(declare-fun call!698056 () Bool)

(assert (=> b!7602649 (= e!4522727 call!698056)))

(declare-fun b!7602650 () Bool)

(declare-fun e!4522725 () Bool)

(assert (=> b!7602650 (= e!4522729 e!4522725)))

(declare-fun res!3044216 () Bool)

(assert (=> b!7602650 (= res!3044216 (not (nullable!8803 (reg!20501 r1!3349))))))

(assert (=> b!7602650 (=> (not res!3044216) (not e!4522725))))

(declare-fun bm!698049 () Bool)

(declare-fun call!698055 () Bool)

(assert (=> bm!698049 (= call!698054 call!698055)))

(declare-fun b!7602651 () Bool)

(declare-fun e!4522726 () Bool)

(assert (=> b!7602651 (= e!4522729 e!4522726)))

(declare-fun c!1402273 () Bool)

(assert (=> b!7602651 (= c!1402273 (is-Union!20172 r1!3349))))

(declare-fun b!7602652 () Bool)

(declare-fun res!3044217 () Bool)

(assert (=> b!7602652 (=> res!3044217 e!4522728)))

(assert (=> b!7602652 (= res!3044217 (not (is-Concat!29017 r1!3349)))))

(assert (=> b!7602652 (= e!4522726 e!4522728)))

(declare-fun b!7602653 () Bool)

(declare-fun res!3044214 () Bool)

(declare-fun e!4522724 () Bool)

(assert (=> b!7602653 (=> (not res!3044214) (not e!4522724))))

(assert (=> b!7602653 (= res!3044214 call!698056)))

(assert (=> b!7602653 (= e!4522726 e!4522724)))

(declare-fun b!7602654 () Bool)

(assert (=> b!7602654 (= e!4522725 call!698055)))

(declare-fun bm!698050 () Bool)

(assert (=> bm!698050 (= call!698056 (validRegex!10600 (ite c!1402273 (regOne!40857 r1!3349) (regTwo!40856 r1!3349))))))

(declare-fun d!2321520 () Bool)

(declare-fun res!3044218 () Bool)

(assert (=> d!2321520 (=> res!3044218 e!4522723)))

(assert (=> d!2321520 (= res!3044218 (is-ElementMatch!20172 r1!3349))))

(assert (=> d!2321520 (= (validRegex!10600 r1!3349) e!4522723)))

(declare-fun bm!698051 () Bool)

(assert (=> bm!698051 (= call!698055 (validRegex!10600 (ite c!1402272 (reg!20501 r1!3349) (ite c!1402273 (regTwo!40857 r1!3349) (regOne!40856 r1!3349)))))))

(declare-fun b!7602655 () Bool)

(assert (=> b!7602655 (= e!4522724 call!698054)))

(assert (= (and d!2321520 (not res!3044218)) b!7602647))

(assert (= (and b!7602647 c!1402272) b!7602650))

(assert (= (and b!7602647 (not c!1402272)) b!7602651))

(assert (= (and b!7602650 res!3044216) b!7602654))

(assert (= (and b!7602651 c!1402273) b!7602653))

(assert (= (and b!7602651 (not c!1402273)) b!7602652))

(assert (= (and b!7602653 res!3044214) b!7602655))

(assert (= (and b!7602652 (not res!3044217)) b!7602648))

(assert (= (and b!7602648 res!3044215) b!7602649))

(assert (= (or b!7602655 b!7602648) bm!698049))

(assert (= (or b!7602653 b!7602649) bm!698050))

(assert (= (or b!7602654 bm!698049) bm!698051))

(declare-fun m!8145500 () Bool)

(assert (=> b!7602650 m!8145500))

(declare-fun m!8145502 () Bool)

(assert (=> bm!698050 m!8145502))

(declare-fun m!8145504 () Bool)

(assert (=> bm!698051 m!8145504))

(assert (=> start!732934 d!2321520))

(declare-fun b!7602666 () Bool)

(declare-fun e!4522732 () Bool)

(assert (=> b!7602666 (= e!4522732 tp_is_empty!50699)))

(declare-fun b!7602667 () Bool)

(declare-fun tp!2217030 () Bool)

(declare-fun tp!2217029 () Bool)

(assert (=> b!7602667 (= e!4522732 (and tp!2217030 tp!2217029))))

(declare-fun b!7602668 () Bool)

(declare-fun tp!2217031 () Bool)

(assert (=> b!7602668 (= e!4522732 tp!2217031)))

(declare-fun b!7602669 () Bool)

(declare-fun tp!2217028 () Bool)

(declare-fun tp!2217032 () Bool)

(assert (=> b!7602669 (= e!4522732 (and tp!2217028 tp!2217032))))

(assert (=> b!7602552 (= tp!2216982 e!4522732)))

(assert (= (and b!7602552 (is-ElementMatch!20172 (regOne!40857 r2!3249))) b!7602666))

(assert (= (and b!7602552 (is-Concat!29017 (regOne!40857 r2!3249))) b!7602667))

(assert (= (and b!7602552 (is-Star!20172 (regOne!40857 r2!3249))) b!7602668))

(assert (= (and b!7602552 (is-Union!20172 (regOne!40857 r2!3249))) b!7602669))

(declare-fun b!7602670 () Bool)

(declare-fun e!4522733 () Bool)

(assert (=> b!7602670 (= e!4522733 tp_is_empty!50699)))

(declare-fun b!7602671 () Bool)

(declare-fun tp!2217035 () Bool)

(declare-fun tp!2217034 () Bool)

(assert (=> b!7602671 (= e!4522733 (and tp!2217035 tp!2217034))))

(declare-fun b!7602672 () Bool)

(declare-fun tp!2217036 () Bool)

(assert (=> b!7602672 (= e!4522733 tp!2217036)))

(declare-fun b!7602673 () Bool)

(declare-fun tp!2217033 () Bool)

(declare-fun tp!2217037 () Bool)

(assert (=> b!7602673 (= e!4522733 (and tp!2217033 tp!2217037))))

(assert (=> b!7602552 (= tp!2216984 e!4522733)))

(assert (= (and b!7602552 (is-ElementMatch!20172 (regTwo!40857 r2!3249))) b!7602670))

(assert (= (and b!7602552 (is-Concat!29017 (regTwo!40857 r2!3249))) b!7602671))

(assert (= (and b!7602552 (is-Star!20172 (regTwo!40857 r2!3249))) b!7602672))

(assert (= (and b!7602552 (is-Union!20172 (regTwo!40857 r2!3249))) b!7602673))

(declare-fun b!7602676 () Bool)

(declare-fun e!4522734 () Bool)

(assert (=> b!7602676 (= e!4522734 tp_is_empty!50699)))

(declare-fun b!7602677 () Bool)

(declare-fun tp!2217040 () Bool)

(declare-fun tp!2217039 () Bool)

(assert (=> b!7602677 (= e!4522734 (and tp!2217040 tp!2217039))))

(declare-fun b!7602678 () Bool)

(declare-fun tp!2217041 () Bool)

(assert (=> b!7602678 (= e!4522734 tp!2217041)))

(declare-fun b!7602679 () Bool)

(declare-fun tp!2217038 () Bool)

(declare-fun tp!2217042 () Bool)

(assert (=> b!7602679 (= e!4522734 (and tp!2217038 tp!2217042))))

(assert (=> b!7602545 (= tp!2216976 e!4522734)))

(assert (= (and b!7602545 (is-ElementMatch!20172 (reg!20501 r2!3249))) b!7602676))

(assert (= (and b!7602545 (is-Concat!29017 (reg!20501 r2!3249))) b!7602677))

(assert (= (and b!7602545 (is-Star!20172 (reg!20501 r2!3249))) b!7602678))

(assert (= (and b!7602545 (is-Union!20172 (reg!20501 r2!3249))) b!7602679))

(declare-fun b!7602682 () Bool)

(declare-fun e!4522737 () Bool)

(assert (=> b!7602682 (= e!4522737 tp_is_empty!50699)))

(declare-fun b!7602683 () Bool)

(declare-fun tp!2217045 () Bool)

(declare-fun tp!2217044 () Bool)

(assert (=> b!7602683 (= e!4522737 (and tp!2217045 tp!2217044))))

(declare-fun b!7602684 () Bool)

(declare-fun tp!2217046 () Bool)

(assert (=> b!7602684 (= e!4522737 tp!2217046)))

(declare-fun b!7602685 () Bool)

(declare-fun tp!2217043 () Bool)

(declare-fun tp!2217047 () Bool)

(assert (=> b!7602685 (= e!4522737 (and tp!2217043 tp!2217047))))

(assert (=> b!7602551 (= tp!2216983 e!4522737)))

(assert (= (and b!7602551 (is-ElementMatch!20172 (reg!20501 r1!3349))) b!7602682))

(assert (= (and b!7602551 (is-Concat!29017 (reg!20501 r1!3349))) b!7602683))

(assert (= (and b!7602551 (is-Star!20172 (reg!20501 r1!3349))) b!7602684))

(assert (= (and b!7602551 (is-Union!20172 (reg!20501 r1!3349))) b!7602685))

(declare-fun b!7602686 () Bool)

(declare-fun e!4522738 () Bool)

(assert (=> b!7602686 (= e!4522738 tp_is_empty!50699)))

(declare-fun b!7602687 () Bool)

(declare-fun tp!2217050 () Bool)

(declare-fun tp!2217049 () Bool)

(assert (=> b!7602687 (= e!4522738 (and tp!2217050 tp!2217049))))

(declare-fun b!7602688 () Bool)

(declare-fun tp!2217051 () Bool)

(assert (=> b!7602688 (= e!4522738 tp!2217051)))

(declare-fun b!7602689 () Bool)

(declare-fun tp!2217048 () Bool)

(declare-fun tp!2217052 () Bool)

(assert (=> b!7602689 (= e!4522738 (and tp!2217048 tp!2217052))))

(assert (=> b!7602549 (= tp!2216980 e!4522738)))

(assert (= (and b!7602549 (is-ElementMatch!20172 (regOne!40856 r2!3249))) b!7602686))

(assert (= (and b!7602549 (is-Concat!29017 (regOne!40856 r2!3249))) b!7602687))

(assert (= (and b!7602549 (is-Star!20172 (regOne!40856 r2!3249))) b!7602688))

(assert (= (and b!7602549 (is-Union!20172 (regOne!40856 r2!3249))) b!7602689))

(declare-fun b!7602690 () Bool)

(declare-fun e!4522739 () Bool)

(assert (=> b!7602690 (= e!4522739 tp_is_empty!50699)))

(declare-fun b!7602691 () Bool)

(declare-fun tp!2217055 () Bool)

(declare-fun tp!2217054 () Bool)

(assert (=> b!7602691 (= e!4522739 (and tp!2217055 tp!2217054))))

(declare-fun b!7602692 () Bool)

(declare-fun tp!2217056 () Bool)

(assert (=> b!7602692 (= e!4522739 tp!2217056)))

(declare-fun b!7602693 () Bool)

(declare-fun tp!2217053 () Bool)

(declare-fun tp!2217057 () Bool)

(assert (=> b!7602693 (= e!4522739 (and tp!2217053 tp!2217057))))

(assert (=> b!7602549 (= tp!2216975 e!4522739)))

(assert (= (and b!7602549 (is-ElementMatch!20172 (regTwo!40856 r2!3249))) b!7602690))

(assert (= (and b!7602549 (is-Concat!29017 (regTwo!40856 r2!3249))) b!7602691))

(assert (= (and b!7602549 (is-Star!20172 (regTwo!40856 r2!3249))) b!7602692))

(assert (= (and b!7602549 (is-Union!20172 (regTwo!40856 r2!3249))) b!7602693))

(declare-fun b!7602694 () Bool)

(declare-fun e!4522740 () Bool)

(assert (=> b!7602694 (= e!4522740 tp_is_empty!50699)))

(declare-fun b!7602695 () Bool)

(declare-fun tp!2217060 () Bool)

(declare-fun tp!2217059 () Bool)

(assert (=> b!7602695 (= e!4522740 (and tp!2217060 tp!2217059))))

(declare-fun b!7602696 () Bool)

(declare-fun tp!2217061 () Bool)

(assert (=> b!7602696 (= e!4522740 tp!2217061)))

(declare-fun b!7602697 () Bool)

(declare-fun tp!2217058 () Bool)

(declare-fun tp!2217062 () Bool)

(assert (=> b!7602697 (= e!4522740 (and tp!2217058 tp!2217062))))

(assert (=> b!7602554 (= tp!2216974 e!4522740)))

(assert (= (and b!7602554 (is-ElementMatch!20172 (regOne!40857 r1!3349))) b!7602694))

(assert (= (and b!7602554 (is-Concat!29017 (regOne!40857 r1!3349))) b!7602695))

(assert (= (and b!7602554 (is-Star!20172 (regOne!40857 r1!3349))) b!7602696))

(assert (= (and b!7602554 (is-Union!20172 (regOne!40857 r1!3349))) b!7602697))

(declare-fun b!7602698 () Bool)

(declare-fun e!4522741 () Bool)

(assert (=> b!7602698 (= e!4522741 tp_is_empty!50699)))

(declare-fun b!7602699 () Bool)

(declare-fun tp!2217065 () Bool)

(declare-fun tp!2217064 () Bool)

(assert (=> b!7602699 (= e!4522741 (and tp!2217065 tp!2217064))))

(declare-fun b!7602700 () Bool)

(declare-fun tp!2217066 () Bool)

(assert (=> b!7602700 (= e!4522741 tp!2217066)))

(declare-fun b!7602701 () Bool)

(declare-fun tp!2217063 () Bool)

(declare-fun tp!2217067 () Bool)

(assert (=> b!7602701 (= e!4522741 (and tp!2217063 tp!2217067))))

(assert (=> b!7602554 (= tp!2216977 e!4522741)))

(assert (= (and b!7602554 (is-ElementMatch!20172 (regTwo!40857 r1!3349))) b!7602698))

(assert (= (and b!7602554 (is-Concat!29017 (regTwo!40857 r1!3349))) b!7602699))

(assert (= (and b!7602554 (is-Star!20172 (regTwo!40857 r1!3349))) b!7602700))

(assert (= (and b!7602554 (is-Union!20172 (regTwo!40857 r1!3349))) b!7602701))

(declare-fun b!7602710 () Bool)

(declare-fun e!4522746 () Bool)

(declare-fun tp!2217070 () Bool)

(assert (=> b!7602710 (= e!4522746 (and tp_is_empty!50699 tp!2217070))))

(assert (=> b!7602555 (= tp!2216981 e!4522746)))

(assert (= (and b!7602555 (is-Cons!72931 (t!387790 s!10235))) b!7602710))

(declare-fun b!7602711 () Bool)

(declare-fun e!4522747 () Bool)

(assert (=> b!7602711 (= e!4522747 tp_is_empty!50699)))

(declare-fun b!7602712 () Bool)

(declare-fun tp!2217073 () Bool)

(declare-fun tp!2217072 () Bool)

(assert (=> b!7602712 (= e!4522747 (and tp!2217073 tp!2217072))))

(declare-fun b!7602713 () Bool)

(declare-fun tp!2217074 () Bool)

(assert (=> b!7602713 (= e!4522747 tp!2217074)))

(declare-fun b!7602714 () Bool)

(declare-fun tp!2217071 () Bool)

(declare-fun tp!2217075 () Bool)

(assert (=> b!7602714 (= e!4522747 (and tp!2217071 tp!2217075))))

(assert (=> b!7602544 (= tp!2216979 e!4522747)))

(assert (= (and b!7602544 (is-ElementMatch!20172 (regOne!40856 r1!3349))) b!7602711))

(assert (= (and b!7602544 (is-Concat!29017 (regOne!40856 r1!3349))) b!7602712))

(assert (= (and b!7602544 (is-Star!20172 (regOne!40856 r1!3349))) b!7602713))

(assert (= (and b!7602544 (is-Union!20172 (regOne!40856 r1!3349))) b!7602714))

(declare-fun b!7602715 () Bool)

(declare-fun e!4522748 () Bool)

(assert (=> b!7602715 (= e!4522748 tp_is_empty!50699)))

(declare-fun b!7602716 () Bool)

(declare-fun tp!2217078 () Bool)

(declare-fun tp!2217077 () Bool)

(assert (=> b!7602716 (= e!4522748 (and tp!2217078 tp!2217077))))

(declare-fun b!7602717 () Bool)

(declare-fun tp!2217079 () Bool)

(assert (=> b!7602717 (= e!4522748 tp!2217079)))

(declare-fun b!7602718 () Bool)

(declare-fun tp!2217076 () Bool)

(declare-fun tp!2217080 () Bool)

(assert (=> b!7602718 (= e!4522748 (and tp!2217076 tp!2217080))))

(assert (=> b!7602544 (= tp!2216978 e!4522748)))

(assert (= (and b!7602544 (is-ElementMatch!20172 (regTwo!40856 r1!3349))) b!7602715))

(assert (= (and b!7602544 (is-Concat!29017 (regTwo!40856 r1!3349))) b!7602716))

(assert (= (and b!7602544 (is-Star!20172 (regTwo!40856 r1!3349))) b!7602717))

(assert (= (and b!7602544 (is-Union!20172 (regTwo!40856 r1!3349))) b!7602718))

(declare-fun b_lambda!288909 () Bool)

(assert (= b_lambda!288907 (or b!7602547 b_lambda!288909)))

(declare-fun bs!1942455 () Bool)

(declare-fun d!2321522 () Bool)

(assert (= bs!1942455 (and d!2321522 b!7602547)))

(declare-fun res!3044223 () Bool)

(declare-fun e!4522749 () Bool)

(assert (=> bs!1942455 (=> (not res!3044223) (not e!4522749))))

(assert (=> bs!1942455 (= res!3044223 (= (++!17572 (_1!37832 lt!2654510) (_2!37832 lt!2654510)) s!10235))))

(assert (=> bs!1942455 (= (dynLambda!29897 lambda!467832 lt!2654510) e!4522749)))

(declare-fun b!7602719 () Bool)

(declare-fun res!3044224 () Bool)

(assert (=> b!7602719 (=> (not res!3044224) (not e!4522749))))

(declare-fun matchR!9738 (Regex!20172 List!73055) Bool)

(assert (=> b!7602719 (= res!3044224 (matchR!9738 r1!3349 (_1!37832 lt!2654510)))))

(declare-fun b!7602720 () Bool)

(assert (=> b!7602720 (= e!4522749 (matchR!9738 r2!3249 (_2!37832 lt!2654510)))))

(assert (= (and bs!1942455 res!3044223) b!7602719))

(assert (= (and b!7602719 res!3044224) b!7602720))

(declare-fun m!8145506 () Bool)

(assert (=> bs!1942455 m!8145506))

(declare-fun m!8145508 () Bool)

(assert (=> b!7602719 m!8145508))

(declare-fun m!8145510 () Bool)

(assert (=> b!7602720 m!8145510))

(assert (=> d!2321512 d!2321522))

(push 1)

(assert (not b!7602678))

(assert (not b!7602717))

(assert (not b!7602668))

(assert (not b!7602641))

(assert (not b!7602695))

(assert (not b!7602692))

(assert (not b!7602719))

(assert (not b!7602716))

(assert (not b!7602684))

(assert (not b!7602617))

(assert (not b!7602650))

(assert (not b!7602697))

(assert (not b!7602677))

(assert (not bm!698051))

(assert (not b!7602713))

(assert (not bm!698047))

(assert (not b!7602671))

(assert (not b!7602679))

(assert (not b!7602710))

(assert (not b!7602683))

(assert (not b!7602673))

(assert (not b!7602712))

(assert (not b!7602714))

(assert (not b!7602672))

(assert (not b!7602689))

(assert (not b!7602669))

(assert (not b!7602700))

(assert (not d!2321510))

(assert (not bm!698048))

(assert (not b_lambda!288909))

(assert (not d!2321518))

(assert (not b!7602618))

(assert (not d!2321512))

(assert (not b!7602696))

(assert (not bs!1942455))

(assert (not b!7602718))

(assert (not b!7602691))

(assert (not b!7602701))

(assert tp_is_empty!50699)

(assert (not b!7602688))

(assert (not b!7602699))

(assert (not b!7602667))

(assert (not b!7602693))

(assert (not b!7602720))

(assert (not b!7602685))

(assert (not bm!698050))

(assert (not b!7602687))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

