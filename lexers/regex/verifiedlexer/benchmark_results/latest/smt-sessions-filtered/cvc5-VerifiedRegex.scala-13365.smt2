; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!724352 () Bool)

(assert start!724352)

(declare-fun b!7472973 () Bool)

(assert (=> b!7472973 true))

(assert (=> b!7472973 true))

(assert (=> b!7472973 true))

(declare-fun lambda!462939 () Int)

(declare-fun lambda!462938 () Int)

(assert (=> b!7472973 (not (= lambda!462939 lambda!462938))))

(assert (=> b!7472973 true))

(assert (=> b!7472973 true))

(assert (=> b!7472973 true))

(declare-fun b!7472958 () Bool)

(declare-fun e!4458325 () Bool)

(declare-fun tp!2167080 () Bool)

(declare-fun tp!2167078 () Bool)

(assert (=> b!7472958 (= e!4458325 (and tp!2167080 tp!2167078))))

(declare-fun b!7472959 () Bool)

(declare-fun e!4458323 () Bool)

(declare-fun tp!2167072 () Bool)

(declare-fun tp!2167074 () Bool)

(assert (=> b!7472959 (= e!4458323 (and tp!2167072 tp!2167074))))

(declare-fun b!7472960 () Bool)

(declare-fun tp!2167070 () Bool)

(assert (=> b!7472960 (= e!4458325 tp!2167070)))

(declare-fun res!2998081 () Bool)

(declare-fun e!4458322 () Bool)

(assert (=> start!724352 (=> (not res!2998081) (not e!4458322))))

(declare-datatypes ((C!39458 0))(
  ( (C!39459 (val!30127 Int)) )
))
(declare-datatypes ((Regex!19592 0))(
  ( (ElementMatch!19592 (c!1380615 C!39458)) (Concat!28437 (regOne!39696 Regex!19592) (regTwo!39696 Regex!19592)) (EmptyExpr!19592) (Star!19592 (reg!19921 Regex!19592)) (EmptyLang!19592) (Union!19592 (regOne!39697 Regex!19592) (regTwo!39697 Regex!19592)) )
))
(declare-fun r1!5845 () Regex!19592)

(declare-fun validRegex!10106 (Regex!19592) Bool)

(assert (=> start!724352 (= res!2998081 (validRegex!10106 r1!5845))))

(assert (=> start!724352 e!4458322))

(declare-fun e!4458320 () Bool)

(assert (=> start!724352 e!4458320))

(assert (=> start!724352 e!4458323))

(assert (=> start!724352 e!4458325))

(declare-fun e!4458321 () Bool)

(assert (=> start!724352 e!4458321))

(declare-fun b!7472961 () Bool)

(declare-fun e!4458319 () Bool)

(declare-fun lt!2626675 () Regex!19592)

(assert (=> b!7472961 (= e!4458319 (validRegex!10106 lt!2626675))))

(declare-fun b!7472962 () Bool)

(declare-fun tp!2167075 () Bool)

(declare-fun tp!2167076 () Bool)

(assert (=> b!7472962 (= e!4458323 (and tp!2167075 tp!2167076))))

(declare-fun b!7472963 () Bool)

(declare-fun tp!2167082 () Bool)

(declare-fun tp!2167079 () Bool)

(assert (=> b!7472963 (= e!4458325 (and tp!2167082 tp!2167079))))

(declare-fun b!7472964 () Bool)

(declare-fun tp!2167068 () Bool)

(declare-fun tp!2167081 () Bool)

(assert (=> b!7472964 (= e!4458320 (and tp!2167068 tp!2167081))))

(declare-fun b!7472965 () Bool)

(declare-fun tp!2167073 () Bool)

(assert (=> b!7472965 (= e!4458323 tp!2167073)))

(declare-fun b!7472966 () Bool)

(declare-fun tp_is_empty!49473 () Bool)

(assert (=> b!7472966 (= e!4458320 tp_is_empty!49473)))

(declare-fun b!7472967 () Bool)

(assert (=> b!7472967 (= e!4458325 tp_is_empty!49473)))

(declare-fun b!7472968 () Bool)

(declare-fun res!2998079 () Bool)

(assert (=> b!7472968 (=> (not res!2998079) (not e!4458322))))

(declare-fun r2!5783 () Regex!19592)

(assert (=> b!7472968 (= res!2998079 (validRegex!10106 r2!5783))))

(declare-fun b!7472969 () Bool)

(declare-fun e!4458324 () Bool)

(assert (=> b!7472969 (= e!4458322 (not e!4458324))))

(declare-fun res!2998078 () Bool)

(assert (=> b!7472969 (=> res!2998078 e!4458324)))

(declare-fun lt!2626681 () Bool)

(assert (=> b!7472969 (= res!2998078 lt!2626681)))

(declare-fun lt!2626672 () Bool)

(declare-fun lt!2626674 () Regex!19592)

(declare-datatypes ((List!72308 0))(
  ( (Nil!72184) (Cons!72184 (h!78632 C!39458) (t!386877 List!72308)) )
))
(declare-fun s!13591 () List!72308)

(declare-fun matchRSpec!4271 (Regex!19592 List!72308) Bool)

(assert (=> b!7472969 (= lt!2626672 (matchRSpec!4271 lt!2626674 s!13591))))

(declare-fun matchR!9356 (Regex!19592 List!72308) Bool)

(assert (=> b!7472969 (= lt!2626672 (matchR!9356 lt!2626674 s!13591))))

(declare-datatypes ((Unit!166019 0))(
  ( (Unit!166020) )
))
(declare-fun lt!2626679 () Unit!166019)

(declare-fun mainMatchTheorem!4265 (Regex!19592 List!72308) Unit!166019)

(assert (=> b!7472969 (= lt!2626679 (mainMatchTheorem!4265 lt!2626674 s!13591))))

(assert (=> b!7472969 (= lt!2626681 (matchRSpec!4271 lt!2626675 s!13591))))

(assert (=> b!7472969 (= lt!2626681 (matchR!9356 lt!2626675 s!13591))))

(declare-fun lt!2626673 () Unit!166019)

(assert (=> b!7472969 (= lt!2626673 (mainMatchTheorem!4265 lt!2626675 s!13591))))

(declare-fun rTail!78 () Regex!19592)

(assert (=> b!7472969 (= lt!2626674 (Union!19592 (Concat!28437 r1!5845 rTail!78) (Concat!28437 r2!5783 rTail!78)))))

(declare-fun lt!2626676 () Regex!19592)

(assert (=> b!7472969 (= lt!2626675 (Concat!28437 lt!2626676 rTail!78))))

(assert (=> b!7472969 (= lt!2626676 (Union!19592 r1!5845 r2!5783))))

(declare-fun b!7472970 () Bool)

(assert (=> b!7472970 (= e!4458323 tp_is_empty!49473)))

(declare-fun b!7472971 () Bool)

(declare-fun tp!2167069 () Bool)

(assert (=> b!7472971 (= e!4458320 tp!2167069)))

(declare-fun b!7472972 () Bool)

(declare-fun tp!2167077 () Bool)

(declare-fun tp!2167083 () Bool)

(assert (=> b!7472972 (= e!4458320 (and tp!2167077 tp!2167083))))

(assert (=> b!7472973 (= e!4458324 e!4458319)))

(declare-fun res!2998077 () Bool)

(assert (=> b!7472973 (=> res!2998077 e!4458319)))

(declare-fun lt!2626678 () Bool)

(assert (=> b!7472973 (= res!2998077 (or lt!2626678 lt!2626672))))

(declare-fun Exists!4211 (Int) Bool)

(assert (=> b!7472973 (= (Exists!4211 lambda!462938) (Exists!4211 lambda!462939))))

(declare-fun lt!2626680 () Unit!166019)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2545 (Regex!19592 Regex!19592 List!72308) Unit!166019)

(assert (=> b!7472973 (= lt!2626680 (lemmaExistCutMatchRandMatchRSpecEquivalent!2545 lt!2626676 rTail!78 s!13591))))

(assert (=> b!7472973 (= lt!2626678 (Exists!4211 lambda!462938))))

(declare-datatypes ((tuple2!68634 0))(
  ( (tuple2!68635 (_1!37620 List!72308) (_2!37620 List!72308)) )
))
(declare-datatypes ((Option!17149 0))(
  ( (None!17148) (Some!17148 (v!54277 tuple2!68634)) )
))
(declare-fun isDefined!13838 (Option!17149) Bool)

(declare-fun findConcatSeparation!3271 (Regex!19592 Regex!19592 List!72308 List!72308 List!72308) Option!17149)

(assert (=> b!7472973 (= lt!2626678 (isDefined!13838 (findConcatSeparation!3271 lt!2626676 rTail!78 Nil!72184 s!13591 s!13591)))))

(declare-fun lt!2626677 () Unit!166019)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3029 (Regex!19592 Regex!19592 List!72308) Unit!166019)

(assert (=> b!7472973 (= lt!2626677 (lemmaFindConcatSeparationEquivalentToExists!3029 lt!2626676 rTail!78 s!13591))))

(declare-fun b!7472974 () Bool)

(declare-fun tp!2167071 () Bool)

(assert (=> b!7472974 (= e!4458321 (and tp_is_empty!49473 tp!2167071))))

(declare-fun b!7472975 () Bool)

(declare-fun res!2998080 () Bool)

(assert (=> b!7472975 (=> (not res!2998080) (not e!4458322))))

(assert (=> b!7472975 (= res!2998080 (validRegex!10106 rTail!78))))

(assert (= (and start!724352 res!2998081) b!7472968))

(assert (= (and b!7472968 res!2998079) b!7472975))

(assert (= (and b!7472975 res!2998080) b!7472969))

(assert (= (and b!7472969 (not res!2998078)) b!7472973))

(assert (= (and b!7472973 (not res!2998077)) b!7472961))

(assert (= (and start!724352 (is-ElementMatch!19592 r1!5845)) b!7472966))

(assert (= (and start!724352 (is-Concat!28437 r1!5845)) b!7472964))

(assert (= (and start!724352 (is-Star!19592 r1!5845)) b!7472971))

(assert (= (and start!724352 (is-Union!19592 r1!5845)) b!7472972))

(assert (= (and start!724352 (is-ElementMatch!19592 r2!5783)) b!7472970))

(assert (= (and start!724352 (is-Concat!28437 r2!5783)) b!7472962))

(assert (= (and start!724352 (is-Star!19592 r2!5783)) b!7472965))

(assert (= (and start!724352 (is-Union!19592 r2!5783)) b!7472959))

(assert (= (and start!724352 (is-ElementMatch!19592 rTail!78)) b!7472967))

(assert (= (and start!724352 (is-Concat!28437 rTail!78)) b!7472963))

(assert (= (and start!724352 (is-Star!19592 rTail!78)) b!7472960))

(assert (= (and start!724352 (is-Union!19592 rTail!78)) b!7472958))

(assert (= (and start!724352 (is-Cons!72184 s!13591)) b!7472974))

(declare-fun m!8069276 () Bool)

(assert (=> b!7472969 m!8069276))

(declare-fun m!8069278 () Bool)

(assert (=> b!7472969 m!8069278))

(declare-fun m!8069280 () Bool)

(assert (=> b!7472969 m!8069280))

(declare-fun m!8069282 () Bool)

(assert (=> b!7472969 m!8069282))

(declare-fun m!8069284 () Bool)

(assert (=> b!7472969 m!8069284))

(declare-fun m!8069286 () Bool)

(assert (=> b!7472969 m!8069286))

(declare-fun m!8069288 () Bool)

(assert (=> b!7472961 m!8069288))

(declare-fun m!8069290 () Bool)

(assert (=> b!7472968 m!8069290))

(declare-fun m!8069292 () Bool)

(assert (=> b!7472973 m!8069292))

(declare-fun m!8069294 () Bool)

(assert (=> b!7472973 m!8069294))

(declare-fun m!8069296 () Bool)

(assert (=> b!7472973 m!8069296))

(declare-fun m!8069298 () Bool)

(assert (=> b!7472973 m!8069298))

(assert (=> b!7472973 m!8069298))

(declare-fun m!8069300 () Bool)

(assert (=> b!7472973 m!8069300))

(assert (=> b!7472973 m!8069294))

(declare-fun m!8069302 () Bool)

(assert (=> b!7472973 m!8069302))

(declare-fun m!8069304 () Bool)

(assert (=> start!724352 m!8069304))

(declare-fun m!8069306 () Bool)

(assert (=> b!7472975 m!8069306))

(push 1)

(assert (not b!7472969))

(assert (not b!7472972))

(assert (not b!7472960))

(assert (not b!7472961))

(assert (not b!7472965))

(assert (not b!7472968))

(assert (not start!724352))

(assert (not b!7472962))

(assert (not b!7472975))

(assert (not b!7472974))

(assert (not b!7472959))

(assert (not b!7472971))

(assert (not b!7472958))

(assert (not b!7472973))

(assert (not b!7472963))

(assert tp_is_empty!49473)

(assert (not b!7472964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2299194 () Bool)

(declare-fun res!2998120 () Bool)

(declare-fun e!4458369 () Bool)

(assert (=> d!2299194 (=> res!2998120 e!4458369)))

(assert (=> d!2299194 (= res!2998120 (is-ElementMatch!19592 lt!2626675))))

(assert (=> d!2299194 (= (validRegex!10106 lt!2626675) e!4458369)))

(declare-fun b!7473068 () Bool)

(declare-fun e!4458373 () Bool)

(declare-fun e!4458370 () Bool)

(assert (=> b!7473068 (= e!4458373 e!4458370)))

(declare-fun res!2998122 () Bool)

(assert (=> b!7473068 (=> (not res!2998122) (not e!4458370))))

(declare-fun call!686117 () Bool)

(assert (=> b!7473068 (= res!2998122 call!686117)))

(declare-fun b!7473069 () Bool)

(declare-fun e!4458368 () Bool)

(assert (=> b!7473069 (= e!4458369 e!4458368)))

(declare-fun c!1380621 () Bool)

(assert (=> b!7473069 (= c!1380621 (is-Star!19592 lt!2626675))))

(declare-fun b!7473070 () Bool)

(declare-fun res!2998123 () Bool)

(assert (=> b!7473070 (=> res!2998123 e!4458373)))

(assert (=> b!7473070 (= res!2998123 (not (is-Concat!28437 lt!2626675)))))

(declare-fun e!4458372 () Bool)

(assert (=> b!7473070 (= e!4458372 e!4458373)))

(declare-fun b!7473071 () Bool)

(declare-fun e!4458367 () Bool)

(declare-fun call!686116 () Bool)

(assert (=> b!7473071 (= e!4458367 call!686116)))

(declare-fun b!7473072 () Bool)

(declare-fun e!4458371 () Bool)

(declare-fun call!686115 () Bool)

(assert (=> b!7473072 (= e!4458371 call!686115)))

(declare-fun bm!686110 () Bool)

(assert (=> bm!686110 (= call!686116 call!686115)))

(declare-fun b!7473073 () Bool)

(assert (=> b!7473073 (= e!4458368 e!4458371)))

(declare-fun res!2998121 () Bool)

(declare-fun nullable!8530 (Regex!19592) Bool)

(assert (=> b!7473073 (= res!2998121 (not (nullable!8530 (reg!19921 lt!2626675))))))

(assert (=> b!7473073 (=> (not res!2998121) (not e!4458371))))

(declare-fun b!7473074 () Bool)

(assert (=> b!7473074 (= e!4458370 call!686116)))

(declare-fun c!1380622 () Bool)

(declare-fun bm!686111 () Bool)

(assert (=> bm!686111 (= call!686115 (validRegex!10106 (ite c!1380621 (reg!19921 lt!2626675) (ite c!1380622 (regTwo!39697 lt!2626675) (regTwo!39696 lt!2626675)))))))

(declare-fun bm!686112 () Bool)

(assert (=> bm!686112 (= call!686117 (validRegex!10106 (ite c!1380622 (regOne!39697 lt!2626675) (regOne!39696 lt!2626675))))))

(declare-fun b!7473075 () Bool)

(declare-fun res!2998119 () Bool)

(assert (=> b!7473075 (=> (not res!2998119) (not e!4458367))))

(assert (=> b!7473075 (= res!2998119 call!686117)))

(assert (=> b!7473075 (= e!4458372 e!4458367)))

(declare-fun b!7473076 () Bool)

(assert (=> b!7473076 (= e!4458368 e!4458372)))

(assert (=> b!7473076 (= c!1380622 (is-Union!19592 lt!2626675))))

(assert (= (and d!2299194 (not res!2998120)) b!7473069))

(assert (= (and b!7473069 c!1380621) b!7473073))

(assert (= (and b!7473069 (not c!1380621)) b!7473076))

(assert (= (and b!7473073 res!2998121) b!7473072))

(assert (= (and b!7473076 c!1380622) b!7473075))

(assert (= (and b!7473076 (not c!1380622)) b!7473070))

(assert (= (and b!7473075 res!2998119) b!7473071))

(assert (= (and b!7473070 (not res!2998123)) b!7473068))

(assert (= (and b!7473068 res!2998122) b!7473074))

(assert (= (or b!7473071 b!7473074) bm!686110))

(assert (= (or b!7473075 b!7473068) bm!686112))

(assert (= (or b!7473072 bm!686110) bm!686111))

(declare-fun m!8069344 () Bool)

(assert (=> b!7473073 m!8069344))

(declare-fun m!8069346 () Bool)

(assert (=> bm!686111 m!8069346))

(declare-fun m!8069348 () Bool)

(assert (=> bm!686112 m!8069348))

(assert (=> b!7472961 d!2299194))

(declare-fun d!2299202 () Bool)

(declare-fun res!2998125 () Bool)

(declare-fun e!4458376 () Bool)

(assert (=> d!2299202 (=> res!2998125 e!4458376)))

(assert (=> d!2299202 (= res!2998125 (is-ElementMatch!19592 rTail!78))))

(assert (=> d!2299202 (= (validRegex!10106 rTail!78) e!4458376)))

(declare-fun b!7473077 () Bool)

(declare-fun e!4458380 () Bool)

(declare-fun e!4458377 () Bool)

(assert (=> b!7473077 (= e!4458380 e!4458377)))

(declare-fun res!2998127 () Bool)

(assert (=> b!7473077 (=> (not res!2998127) (not e!4458377))))

(declare-fun call!686120 () Bool)

(assert (=> b!7473077 (= res!2998127 call!686120)))

(declare-fun b!7473078 () Bool)

(declare-fun e!4458375 () Bool)

(assert (=> b!7473078 (= e!4458376 e!4458375)))

(declare-fun c!1380623 () Bool)

(assert (=> b!7473078 (= c!1380623 (is-Star!19592 rTail!78))))

(declare-fun b!7473079 () Bool)

(declare-fun res!2998128 () Bool)

(assert (=> b!7473079 (=> res!2998128 e!4458380)))

(assert (=> b!7473079 (= res!2998128 (not (is-Concat!28437 rTail!78)))))

(declare-fun e!4458379 () Bool)

(assert (=> b!7473079 (= e!4458379 e!4458380)))

(declare-fun b!7473080 () Bool)

(declare-fun e!4458374 () Bool)

(declare-fun call!686119 () Bool)

(assert (=> b!7473080 (= e!4458374 call!686119)))

(declare-fun b!7473081 () Bool)

(declare-fun e!4458378 () Bool)

(declare-fun call!686118 () Bool)

(assert (=> b!7473081 (= e!4458378 call!686118)))

(declare-fun bm!686113 () Bool)

(assert (=> bm!686113 (= call!686119 call!686118)))

(declare-fun b!7473082 () Bool)

(assert (=> b!7473082 (= e!4458375 e!4458378)))

(declare-fun res!2998126 () Bool)

(assert (=> b!7473082 (= res!2998126 (not (nullable!8530 (reg!19921 rTail!78))))))

(assert (=> b!7473082 (=> (not res!2998126) (not e!4458378))))

(declare-fun b!7473083 () Bool)

(assert (=> b!7473083 (= e!4458377 call!686119)))

(declare-fun bm!686114 () Bool)

(declare-fun c!1380624 () Bool)

(assert (=> bm!686114 (= call!686118 (validRegex!10106 (ite c!1380623 (reg!19921 rTail!78) (ite c!1380624 (regTwo!39697 rTail!78) (regTwo!39696 rTail!78)))))))

(declare-fun bm!686115 () Bool)

(assert (=> bm!686115 (= call!686120 (validRegex!10106 (ite c!1380624 (regOne!39697 rTail!78) (regOne!39696 rTail!78))))))

(declare-fun b!7473084 () Bool)

(declare-fun res!2998124 () Bool)

(assert (=> b!7473084 (=> (not res!2998124) (not e!4458374))))

(assert (=> b!7473084 (= res!2998124 call!686120)))

(assert (=> b!7473084 (= e!4458379 e!4458374)))

(declare-fun b!7473085 () Bool)

(assert (=> b!7473085 (= e!4458375 e!4458379)))

(assert (=> b!7473085 (= c!1380624 (is-Union!19592 rTail!78))))

(assert (= (and d!2299202 (not res!2998125)) b!7473078))

(assert (= (and b!7473078 c!1380623) b!7473082))

(assert (= (and b!7473078 (not c!1380623)) b!7473085))

(assert (= (and b!7473082 res!2998126) b!7473081))

(assert (= (and b!7473085 c!1380624) b!7473084))

(assert (= (and b!7473085 (not c!1380624)) b!7473079))

(assert (= (and b!7473084 res!2998124) b!7473080))

(assert (= (and b!7473079 (not res!2998128)) b!7473077))

(assert (= (and b!7473077 res!2998127) b!7473083))

(assert (= (or b!7473080 b!7473083) bm!686113))

(assert (= (or b!7473084 b!7473077) bm!686115))

(assert (= (or b!7473081 bm!686113) bm!686114))

(declare-fun m!8069350 () Bool)

(assert (=> b!7473082 m!8069350))

(declare-fun m!8069352 () Bool)

(assert (=> bm!686114 m!8069352))

(declare-fun m!8069354 () Bool)

(assert (=> bm!686115 m!8069354))

(assert (=> b!7472975 d!2299202))

(declare-fun d!2299204 () Bool)

(declare-fun res!2998130 () Bool)

(declare-fun e!4458383 () Bool)

(assert (=> d!2299204 (=> res!2998130 e!4458383)))

(assert (=> d!2299204 (= res!2998130 (is-ElementMatch!19592 r1!5845))))

(assert (=> d!2299204 (= (validRegex!10106 r1!5845) e!4458383)))

(declare-fun b!7473086 () Bool)

(declare-fun e!4458387 () Bool)

(declare-fun e!4458384 () Bool)

(assert (=> b!7473086 (= e!4458387 e!4458384)))

(declare-fun res!2998132 () Bool)

(assert (=> b!7473086 (=> (not res!2998132) (not e!4458384))))

(declare-fun call!686123 () Bool)

(assert (=> b!7473086 (= res!2998132 call!686123)))

(declare-fun b!7473087 () Bool)

(declare-fun e!4458382 () Bool)

(assert (=> b!7473087 (= e!4458383 e!4458382)))

(declare-fun c!1380625 () Bool)

(assert (=> b!7473087 (= c!1380625 (is-Star!19592 r1!5845))))

(declare-fun b!7473088 () Bool)

(declare-fun res!2998133 () Bool)

(assert (=> b!7473088 (=> res!2998133 e!4458387)))

(assert (=> b!7473088 (= res!2998133 (not (is-Concat!28437 r1!5845)))))

(declare-fun e!4458386 () Bool)

(assert (=> b!7473088 (= e!4458386 e!4458387)))

(declare-fun b!7473089 () Bool)

(declare-fun e!4458381 () Bool)

(declare-fun call!686122 () Bool)

(assert (=> b!7473089 (= e!4458381 call!686122)))

(declare-fun b!7473090 () Bool)

(declare-fun e!4458385 () Bool)

(declare-fun call!686121 () Bool)

(assert (=> b!7473090 (= e!4458385 call!686121)))

(declare-fun bm!686116 () Bool)

(assert (=> bm!686116 (= call!686122 call!686121)))

(declare-fun b!7473091 () Bool)

(assert (=> b!7473091 (= e!4458382 e!4458385)))

(declare-fun res!2998131 () Bool)

(assert (=> b!7473091 (= res!2998131 (not (nullable!8530 (reg!19921 r1!5845))))))

(assert (=> b!7473091 (=> (not res!2998131) (not e!4458385))))

(declare-fun b!7473092 () Bool)

(assert (=> b!7473092 (= e!4458384 call!686122)))

(declare-fun c!1380626 () Bool)

(declare-fun bm!686117 () Bool)

(assert (=> bm!686117 (= call!686121 (validRegex!10106 (ite c!1380625 (reg!19921 r1!5845) (ite c!1380626 (regTwo!39697 r1!5845) (regTwo!39696 r1!5845)))))))

(declare-fun bm!686118 () Bool)

(assert (=> bm!686118 (= call!686123 (validRegex!10106 (ite c!1380626 (regOne!39697 r1!5845) (regOne!39696 r1!5845))))))

(declare-fun b!7473093 () Bool)

(declare-fun res!2998129 () Bool)

(assert (=> b!7473093 (=> (not res!2998129) (not e!4458381))))

(assert (=> b!7473093 (= res!2998129 call!686123)))

(assert (=> b!7473093 (= e!4458386 e!4458381)))

(declare-fun b!7473094 () Bool)

(assert (=> b!7473094 (= e!4458382 e!4458386)))

(assert (=> b!7473094 (= c!1380626 (is-Union!19592 r1!5845))))

(assert (= (and d!2299204 (not res!2998130)) b!7473087))

(assert (= (and b!7473087 c!1380625) b!7473091))

(assert (= (and b!7473087 (not c!1380625)) b!7473094))

(assert (= (and b!7473091 res!2998131) b!7473090))

(assert (= (and b!7473094 c!1380626) b!7473093))

(assert (= (and b!7473094 (not c!1380626)) b!7473088))

(assert (= (and b!7473093 res!2998129) b!7473089))

(assert (= (and b!7473088 (not res!2998133)) b!7473086))

(assert (= (and b!7473086 res!2998132) b!7473092))

(assert (= (or b!7473089 b!7473092) bm!686116))

(assert (= (or b!7473093 b!7473086) bm!686118))

(assert (= (or b!7473090 bm!686116) bm!686117))

(declare-fun m!8069356 () Bool)

(assert (=> b!7473091 m!8069356))

(declare-fun m!8069358 () Bool)

(assert (=> bm!686117 m!8069358))

(declare-fun m!8069360 () Bool)

(assert (=> bm!686118 m!8069360))

(assert (=> start!724352 d!2299204))

(declare-fun b!7473123 () Bool)

(declare-fun res!2998151 () Bool)

(declare-fun e!4458405 () Bool)

(assert (=> b!7473123 (=> (not res!2998151) (not e!4458405))))

(declare-fun call!686126 () Bool)

(assert (=> b!7473123 (= res!2998151 (not call!686126))))

(declare-fun b!7473124 () Bool)

(declare-fun e!4458408 () Bool)

(declare-fun e!4458404 () Bool)

(assert (=> b!7473124 (= e!4458408 e!4458404)))

(declare-fun res!2998153 () Bool)

(assert (=> b!7473124 (=> (not res!2998153) (not e!4458404))))

(declare-fun lt!2626714 () Bool)

(assert (=> b!7473124 (= res!2998153 (not lt!2626714))))

(declare-fun b!7473125 () Bool)

(declare-fun e!4458407 () Bool)

(declare-fun derivativeStep!5589 (Regex!19592 C!39458) Regex!19592)

(declare-fun head!15329 (List!72308) C!39458)

(declare-fun tail!14898 (List!72308) List!72308)

(assert (=> b!7473125 (= e!4458407 (matchR!9356 (derivativeStep!5589 lt!2626674 (head!15329 s!13591)) (tail!14898 s!13591)))))

(declare-fun b!7473127 () Bool)

(declare-fun e!4458403 () Bool)

(assert (=> b!7473127 (= e!4458403 (not (= (head!15329 s!13591) (c!1380615 lt!2626674))))))

(declare-fun b!7473128 () Bool)

(assert (=> b!7473128 (= e!4458404 e!4458403)))

(declare-fun res!2998156 () Bool)

(assert (=> b!7473128 (=> res!2998156 e!4458403)))

(assert (=> b!7473128 (= res!2998156 call!686126)))

(declare-fun b!7473129 () Bool)

(assert (=> b!7473129 (= e!4458405 (= (head!15329 s!13591) (c!1380615 lt!2626674)))))

(declare-fun b!7473130 () Bool)

(declare-fun res!2998154 () Bool)

(assert (=> b!7473130 (=> res!2998154 e!4458403)))

(declare-fun isEmpty!41175 (List!72308) Bool)

(assert (=> b!7473130 (= res!2998154 (not (isEmpty!41175 (tail!14898 s!13591))))))

(declare-fun b!7473126 () Bool)

(declare-fun e!4458402 () Bool)

(declare-fun e!4458406 () Bool)

(assert (=> b!7473126 (= e!4458402 e!4458406)))

(declare-fun c!1380633 () Bool)

(assert (=> b!7473126 (= c!1380633 (is-EmptyLang!19592 lt!2626674))))

(declare-fun d!2299206 () Bool)

(assert (=> d!2299206 e!4458402))

(declare-fun c!1380634 () Bool)

(assert (=> d!2299206 (= c!1380634 (is-EmptyExpr!19592 lt!2626674))))

(assert (=> d!2299206 (= lt!2626714 e!4458407)))

(declare-fun c!1380635 () Bool)

(assert (=> d!2299206 (= c!1380635 (isEmpty!41175 s!13591))))

(assert (=> d!2299206 (validRegex!10106 lt!2626674)))

(assert (=> d!2299206 (= (matchR!9356 lt!2626674 s!13591) lt!2626714)))

(declare-fun b!7473131 () Bool)

(assert (=> b!7473131 (= e!4458407 (nullable!8530 lt!2626674))))

(declare-fun b!7473132 () Bool)

(assert (=> b!7473132 (= e!4458406 (not lt!2626714))))

(declare-fun b!7473133 () Bool)

(assert (=> b!7473133 (= e!4458402 (= lt!2626714 call!686126))))

(declare-fun b!7473134 () Bool)

(declare-fun res!2998157 () Bool)

(assert (=> b!7473134 (=> res!2998157 e!4458408)))

(assert (=> b!7473134 (= res!2998157 (not (is-ElementMatch!19592 lt!2626674)))))

(assert (=> b!7473134 (= e!4458406 e!4458408)))

(declare-fun b!7473135 () Bool)

(declare-fun res!2998155 () Bool)

(assert (=> b!7473135 (=> (not res!2998155) (not e!4458405))))

(assert (=> b!7473135 (= res!2998155 (isEmpty!41175 (tail!14898 s!13591)))))

(declare-fun b!7473136 () Bool)

(declare-fun res!2998150 () Bool)

(assert (=> b!7473136 (=> res!2998150 e!4458408)))

(assert (=> b!7473136 (= res!2998150 e!4458405)))

(declare-fun res!2998152 () Bool)

(assert (=> b!7473136 (=> (not res!2998152) (not e!4458405))))

(assert (=> b!7473136 (= res!2998152 lt!2626714)))

(declare-fun bm!686121 () Bool)

(assert (=> bm!686121 (= call!686126 (isEmpty!41175 s!13591))))

(assert (= (and d!2299206 c!1380635) b!7473131))

(assert (= (and d!2299206 (not c!1380635)) b!7473125))

(assert (= (and d!2299206 c!1380634) b!7473133))

(assert (= (and d!2299206 (not c!1380634)) b!7473126))

(assert (= (and b!7473126 c!1380633) b!7473132))

(assert (= (and b!7473126 (not c!1380633)) b!7473134))

(assert (= (and b!7473134 (not res!2998157)) b!7473136))

(assert (= (and b!7473136 res!2998152) b!7473123))

(assert (= (and b!7473123 res!2998151) b!7473135))

(assert (= (and b!7473135 res!2998155) b!7473129))

(assert (= (and b!7473136 (not res!2998150)) b!7473124))

(assert (= (and b!7473124 res!2998153) b!7473128))

(assert (= (and b!7473128 (not res!2998156)) b!7473130))

(assert (= (and b!7473130 (not res!2998154)) b!7473127))

(assert (= (or b!7473133 b!7473123 b!7473128) bm!686121))

(declare-fun m!8069362 () Bool)

(assert (=> d!2299206 m!8069362))

(declare-fun m!8069364 () Bool)

(assert (=> d!2299206 m!8069364))

(declare-fun m!8069366 () Bool)

(assert (=> b!7473130 m!8069366))

(assert (=> b!7473130 m!8069366))

(declare-fun m!8069368 () Bool)

(assert (=> b!7473130 m!8069368))

(assert (=> bm!686121 m!8069362))

(declare-fun m!8069370 () Bool)

(assert (=> b!7473125 m!8069370))

(assert (=> b!7473125 m!8069370))

(declare-fun m!8069372 () Bool)

(assert (=> b!7473125 m!8069372))

(assert (=> b!7473125 m!8069366))

(assert (=> b!7473125 m!8069372))

(assert (=> b!7473125 m!8069366))

(declare-fun m!8069374 () Bool)

(assert (=> b!7473125 m!8069374))

(declare-fun m!8069376 () Bool)

(assert (=> b!7473131 m!8069376))

(assert (=> b!7473127 m!8069370))

(assert (=> b!7473129 m!8069370))

(assert (=> b!7473135 m!8069366))

(assert (=> b!7473135 m!8069366))

(assert (=> b!7473135 m!8069368))

(assert (=> b!7472969 d!2299206))

(declare-fun d!2299208 () Bool)

(assert (=> d!2299208 (= (matchR!9356 lt!2626675 s!13591) (matchRSpec!4271 lt!2626675 s!13591))))

(declare-fun lt!2626717 () Unit!166019)

(declare-fun choose!57754 (Regex!19592 List!72308) Unit!166019)

(assert (=> d!2299208 (= lt!2626717 (choose!57754 lt!2626675 s!13591))))

(assert (=> d!2299208 (validRegex!10106 lt!2626675)))

(assert (=> d!2299208 (= (mainMatchTheorem!4265 lt!2626675 s!13591) lt!2626717)))

(declare-fun bs!1931610 () Bool)

(assert (= bs!1931610 d!2299208))

(assert (=> bs!1931610 m!8069280))

(assert (=> bs!1931610 m!8069276))

(declare-fun m!8069378 () Bool)

(assert (=> bs!1931610 m!8069378))

(assert (=> bs!1931610 m!8069288))

(assert (=> b!7472969 d!2299208))

(declare-fun bs!1931611 () Bool)

(declare-fun b!7473197 () Bool)

(assert (= bs!1931611 (and b!7473197 b!7472973)))

(declare-fun lambda!462952 () Int)

(assert (=> bs!1931611 (not (= lambda!462952 lambda!462938))))

(assert (=> bs!1931611 (not (= lambda!462952 lambda!462939))))

(assert (=> b!7473197 true))

(assert (=> b!7473197 true))

(declare-fun bs!1931612 () Bool)

(declare-fun b!7473190 () Bool)

(assert (= bs!1931612 (and b!7473190 b!7472973)))

(declare-fun lambda!462953 () Int)

(assert (=> bs!1931612 (not (= lambda!462953 lambda!462938))))

(assert (=> bs!1931612 (= (and (= (regOne!39696 lt!2626675) lt!2626676) (= (regTwo!39696 lt!2626675) rTail!78)) (= lambda!462953 lambda!462939))))

(declare-fun bs!1931613 () Bool)

(assert (= bs!1931613 (and b!7473190 b!7473197)))

(assert (=> bs!1931613 (not (= lambda!462953 lambda!462952))))

(assert (=> b!7473190 true))

(assert (=> b!7473190 true))

(declare-fun b!7473187 () Bool)

(declare-fun e!4458442 () Bool)

(declare-fun e!4458441 () Bool)

(assert (=> b!7473187 (= e!4458442 e!4458441)))

(declare-fun res!2998185 () Bool)

(assert (=> b!7473187 (= res!2998185 (not (is-EmptyLang!19592 lt!2626675)))))

(assert (=> b!7473187 (=> (not res!2998185) (not e!4458441))))

(declare-fun b!7473188 () Bool)

(declare-fun e!4458440 () Bool)

(declare-fun e!4458439 () Bool)

(assert (=> b!7473188 (= e!4458440 e!4458439)))

(declare-fun res!2998186 () Bool)

(assert (=> b!7473188 (= res!2998186 (matchRSpec!4271 (regOne!39697 lt!2626675) s!13591))))

(assert (=> b!7473188 (=> res!2998186 e!4458439)))

(declare-fun d!2299210 () Bool)

(declare-fun c!1380650 () Bool)

(assert (=> d!2299210 (= c!1380650 (is-EmptyExpr!19592 lt!2626675))))

(assert (=> d!2299210 (= (matchRSpec!4271 lt!2626675 s!13591) e!4458442)))

(declare-fun b!7473189 () Bool)

(declare-fun c!1380649 () Bool)

(assert (=> b!7473189 (= c!1380649 (is-ElementMatch!19592 lt!2626675))))

(declare-fun e!4458438 () Bool)

(assert (=> b!7473189 (= e!4458441 e!4458438)))

(declare-fun e!4458437 () Bool)

(declare-fun call!686131 () Bool)

(assert (=> b!7473190 (= e!4458437 call!686131)))

(declare-fun b!7473191 () Bool)

(declare-fun res!2998184 () Bool)

(declare-fun e!4458443 () Bool)

(assert (=> b!7473191 (=> res!2998184 e!4458443)))

(declare-fun call!686132 () Bool)

(assert (=> b!7473191 (= res!2998184 call!686132)))

(assert (=> b!7473191 (= e!4458437 e!4458443)))

(declare-fun b!7473192 () Bool)

(assert (=> b!7473192 (= e!4458442 call!686132)))

(declare-fun bm!686126 () Bool)

(assert (=> bm!686126 (= call!686132 (isEmpty!41175 s!13591))))

(declare-fun b!7473193 () Bool)

(assert (=> b!7473193 (= e!4458439 (matchRSpec!4271 (regTwo!39697 lt!2626675) s!13591))))

(declare-fun b!7473194 () Bool)

(assert (=> b!7473194 (= e!4458438 (= s!13591 (Cons!72184 (c!1380615 lt!2626675) Nil!72184)))))

(declare-fun b!7473195 () Bool)

(assert (=> b!7473195 (= e!4458440 e!4458437)))

(declare-fun c!1380651 () Bool)

(assert (=> b!7473195 (= c!1380651 (is-Star!19592 lt!2626675))))

(declare-fun b!7473196 () Bool)

(declare-fun c!1380648 () Bool)

(assert (=> b!7473196 (= c!1380648 (is-Union!19592 lt!2626675))))

(assert (=> b!7473196 (= e!4458438 e!4458440)))

(assert (=> b!7473197 (= e!4458443 call!686131)))

(declare-fun bm!686127 () Bool)

(assert (=> bm!686127 (= call!686131 (Exists!4211 (ite c!1380651 lambda!462952 lambda!462953)))))

(assert (= (and d!2299210 c!1380650) b!7473192))

(assert (= (and d!2299210 (not c!1380650)) b!7473187))

(assert (= (and b!7473187 res!2998185) b!7473189))

(assert (= (and b!7473189 c!1380649) b!7473194))

(assert (= (and b!7473189 (not c!1380649)) b!7473196))

(assert (= (and b!7473196 c!1380648) b!7473188))

(assert (= (and b!7473196 (not c!1380648)) b!7473195))

(assert (= (and b!7473188 (not res!2998186)) b!7473193))

(assert (= (and b!7473195 c!1380651) b!7473191))

(assert (= (and b!7473195 (not c!1380651)) b!7473190))

(assert (= (and b!7473191 (not res!2998184)) b!7473197))

(assert (= (or b!7473197 b!7473190) bm!686127))

(assert (= (or b!7473192 b!7473191) bm!686126))

(declare-fun m!8069380 () Bool)

(assert (=> b!7473188 m!8069380))

(assert (=> bm!686126 m!8069362))

(declare-fun m!8069382 () Bool)

(assert (=> b!7473193 m!8069382))

(declare-fun m!8069384 () Bool)

(assert (=> bm!686127 m!8069384))

(assert (=> b!7472969 d!2299210))

(declare-fun b!7473207 () Bool)

(declare-fun res!2998193 () Bool)

(declare-fun e!4458452 () Bool)

(assert (=> b!7473207 (=> (not res!2998193) (not e!4458452))))

(declare-fun call!686133 () Bool)

(assert (=> b!7473207 (= res!2998193 (not call!686133))))

(declare-fun b!7473208 () Bool)

(declare-fun e!4458455 () Bool)

(declare-fun e!4458451 () Bool)

(assert (=> b!7473208 (= e!4458455 e!4458451)))

(declare-fun res!2998195 () Bool)

(assert (=> b!7473208 (=> (not res!2998195) (not e!4458451))))

(declare-fun lt!2626727 () Bool)

(assert (=> b!7473208 (= res!2998195 (not lt!2626727))))

(declare-fun b!7473209 () Bool)

(declare-fun e!4458454 () Bool)

(assert (=> b!7473209 (= e!4458454 (matchR!9356 (derivativeStep!5589 lt!2626675 (head!15329 s!13591)) (tail!14898 s!13591)))))

(declare-fun b!7473211 () Bool)

(declare-fun e!4458450 () Bool)

(assert (=> b!7473211 (= e!4458450 (not (= (head!15329 s!13591) (c!1380615 lt!2626675))))))

(declare-fun b!7473212 () Bool)

(assert (=> b!7473212 (= e!4458451 e!4458450)))

(declare-fun res!2998198 () Bool)

(assert (=> b!7473212 (=> res!2998198 e!4458450)))

(assert (=> b!7473212 (= res!2998198 call!686133)))

(declare-fun b!7473213 () Bool)

(assert (=> b!7473213 (= e!4458452 (= (head!15329 s!13591) (c!1380615 lt!2626675)))))

(declare-fun b!7473214 () Bool)

(declare-fun res!2998196 () Bool)

(assert (=> b!7473214 (=> res!2998196 e!4458450)))

(assert (=> b!7473214 (= res!2998196 (not (isEmpty!41175 (tail!14898 s!13591))))))

(declare-fun b!7473210 () Bool)

(declare-fun e!4458449 () Bool)

(declare-fun e!4458453 () Bool)

(assert (=> b!7473210 (= e!4458449 e!4458453)))

(declare-fun c!1380654 () Bool)

(assert (=> b!7473210 (= c!1380654 (is-EmptyLang!19592 lt!2626675))))

(declare-fun d!2299212 () Bool)

(assert (=> d!2299212 e!4458449))

(declare-fun c!1380655 () Bool)

(assert (=> d!2299212 (= c!1380655 (is-EmptyExpr!19592 lt!2626675))))

(assert (=> d!2299212 (= lt!2626727 e!4458454)))

(declare-fun c!1380656 () Bool)

(assert (=> d!2299212 (= c!1380656 (isEmpty!41175 s!13591))))

(assert (=> d!2299212 (validRegex!10106 lt!2626675)))

(assert (=> d!2299212 (= (matchR!9356 lt!2626675 s!13591) lt!2626727)))

(declare-fun b!7473215 () Bool)

(assert (=> b!7473215 (= e!4458454 (nullable!8530 lt!2626675))))

(declare-fun b!7473216 () Bool)

(assert (=> b!7473216 (= e!4458453 (not lt!2626727))))

(declare-fun b!7473217 () Bool)

(assert (=> b!7473217 (= e!4458449 (= lt!2626727 call!686133))))

(declare-fun b!7473218 () Bool)

(declare-fun res!2998199 () Bool)

(assert (=> b!7473218 (=> res!2998199 e!4458455)))

(assert (=> b!7473218 (= res!2998199 (not (is-ElementMatch!19592 lt!2626675)))))

(assert (=> b!7473218 (= e!4458453 e!4458455)))

(declare-fun b!7473219 () Bool)

(declare-fun res!2998197 () Bool)

(assert (=> b!7473219 (=> (not res!2998197) (not e!4458452))))

(assert (=> b!7473219 (= res!2998197 (isEmpty!41175 (tail!14898 s!13591)))))

(declare-fun b!7473220 () Bool)

(declare-fun res!2998192 () Bool)

(assert (=> b!7473220 (=> res!2998192 e!4458455)))

(assert (=> b!7473220 (= res!2998192 e!4458452)))

(declare-fun res!2998194 () Bool)

(assert (=> b!7473220 (=> (not res!2998194) (not e!4458452))))

(assert (=> b!7473220 (= res!2998194 lt!2626727)))

(declare-fun bm!686128 () Bool)

(assert (=> bm!686128 (= call!686133 (isEmpty!41175 s!13591))))

(assert (= (and d!2299212 c!1380656) b!7473215))

(assert (= (and d!2299212 (not c!1380656)) b!7473209))

(assert (= (and d!2299212 c!1380655) b!7473217))

(assert (= (and d!2299212 (not c!1380655)) b!7473210))

(assert (= (and b!7473210 c!1380654) b!7473216))

(assert (= (and b!7473210 (not c!1380654)) b!7473218))

(assert (= (and b!7473218 (not res!2998199)) b!7473220))

(assert (= (and b!7473220 res!2998194) b!7473207))

(assert (= (and b!7473207 res!2998193) b!7473219))

(assert (= (and b!7473219 res!2998197) b!7473213))

(assert (= (and b!7473220 (not res!2998192)) b!7473208))

(assert (= (and b!7473208 res!2998195) b!7473212))

(assert (= (and b!7473212 (not res!2998198)) b!7473214))

(assert (= (and b!7473214 (not res!2998196)) b!7473211))

(assert (= (or b!7473217 b!7473207 b!7473212) bm!686128))

(assert (=> d!2299212 m!8069362))

(assert (=> d!2299212 m!8069288))

(assert (=> b!7473214 m!8069366))

(assert (=> b!7473214 m!8069366))

(assert (=> b!7473214 m!8069368))

(assert (=> bm!686128 m!8069362))

(assert (=> b!7473209 m!8069370))

(assert (=> b!7473209 m!8069370))

(declare-fun m!8069386 () Bool)

(assert (=> b!7473209 m!8069386))

(assert (=> b!7473209 m!8069366))

(assert (=> b!7473209 m!8069386))

(assert (=> b!7473209 m!8069366))

(declare-fun m!8069388 () Bool)

(assert (=> b!7473209 m!8069388))

(declare-fun m!8069390 () Bool)

(assert (=> b!7473215 m!8069390))

(assert (=> b!7473211 m!8069370))

(assert (=> b!7473213 m!8069370))

(assert (=> b!7473219 m!8069366))

(assert (=> b!7473219 m!8069366))

(assert (=> b!7473219 m!8069368))

(assert (=> b!7472969 d!2299212))

(declare-fun bs!1931614 () Bool)

(declare-fun b!7473231 () Bool)

(assert (= bs!1931614 (and b!7473231 b!7472973)))

(declare-fun lambda!462954 () Int)

(assert (=> bs!1931614 (not (= lambda!462954 lambda!462938))))

(assert (=> bs!1931614 (not (= lambda!462954 lambda!462939))))

(declare-fun bs!1931615 () Bool)

(assert (= bs!1931615 (and b!7473231 b!7473197)))

(assert (=> bs!1931615 (= (and (= (reg!19921 lt!2626674) (reg!19921 lt!2626675)) (= lt!2626674 lt!2626675)) (= lambda!462954 lambda!462952))))

(declare-fun bs!1931616 () Bool)

(assert (= bs!1931616 (and b!7473231 b!7473190)))

(assert (=> bs!1931616 (not (= lambda!462954 lambda!462953))))

(assert (=> b!7473231 true))

(assert (=> b!7473231 true))

(declare-fun bs!1931617 () Bool)

(declare-fun b!7473224 () Bool)

(assert (= bs!1931617 (and b!7473224 b!7472973)))

(declare-fun lambda!462955 () Int)

(assert (=> bs!1931617 (not (= lambda!462955 lambda!462938))))

(declare-fun bs!1931618 () Bool)

(assert (= bs!1931618 (and b!7473224 b!7473197)))

(assert (=> bs!1931618 (not (= lambda!462955 lambda!462952))))

(assert (=> bs!1931617 (= (and (= (regOne!39696 lt!2626674) lt!2626676) (= (regTwo!39696 lt!2626674) rTail!78)) (= lambda!462955 lambda!462939))))

(declare-fun bs!1931619 () Bool)

(assert (= bs!1931619 (and b!7473224 b!7473190)))

(assert (=> bs!1931619 (= (and (= (regOne!39696 lt!2626674) (regOne!39696 lt!2626675)) (= (regTwo!39696 lt!2626674) (regTwo!39696 lt!2626675))) (= lambda!462955 lambda!462953))))

(declare-fun bs!1931620 () Bool)

(assert (= bs!1931620 (and b!7473224 b!7473231)))

(assert (=> bs!1931620 (not (= lambda!462955 lambda!462954))))

(assert (=> b!7473224 true))

(assert (=> b!7473224 true))

(declare-fun b!7473221 () Bool)

(declare-fun e!4458461 () Bool)

(declare-fun e!4458460 () Bool)

(assert (=> b!7473221 (= e!4458461 e!4458460)))

(declare-fun res!2998201 () Bool)

(assert (=> b!7473221 (= res!2998201 (not (is-EmptyLang!19592 lt!2626674)))))

(assert (=> b!7473221 (=> (not res!2998201) (not e!4458460))))

(declare-fun b!7473222 () Bool)

(declare-fun e!4458459 () Bool)

(declare-fun e!4458458 () Bool)

(assert (=> b!7473222 (= e!4458459 e!4458458)))

(declare-fun res!2998202 () Bool)

(assert (=> b!7473222 (= res!2998202 (matchRSpec!4271 (regOne!39697 lt!2626674) s!13591))))

(assert (=> b!7473222 (=> res!2998202 e!4458458)))

(declare-fun d!2299214 () Bool)

(declare-fun c!1380659 () Bool)

(assert (=> d!2299214 (= c!1380659 (is-EmptyExpr!19592 lt!2626674))))

(assert (=> d!2299214 (= (matchRSpec!4271 lt!2626674 s!13591) e!4458461)))

(declare-fun b!7473223 () Bool)

(declare-fun c!1380658 () Bool)

(assert (=> b!7473223 (= c!1380658 (is-ElementMatch!19592 lt!2626674))))

(declare-fun e!4458457 () Bool)

(assert (=> b!7473223 (= e!4458460 e!4458457)))

(declare-fun e!4458456 () Bool)

(declare-fun call!686134 () Bool)

(assert (=> b!7473224 (= e!4458456 call!686134)))

(declare-fun b!7473225 () Bool)

(declare-fun res!2998200 () Bool)

(declare-fun e!4458462 () Bool)

(assert (=> b!7473225 (=> res!2998200 e!4458462)))

(declare-fun call!686135 () Bool)

(assert (=> b!7473225 (= res!2998200 call!686135)))

(assert (=> b!7473225 (= e!4458456 e!4458462)))

(declare-fun b!7473226 () Bool)

(assert (=> b!7473226 (= e!4458461 call!686135)))

(declare-fun bm!686129 () Bool)

(assert (=> bm!686129 (= call!686135 (isEmpty!41175 s!13591))))

(declare-fun b!7473227 () Bool)

(assert (=> b!7473227 (= e!4458458 (matchRSpec!4271 (regTwo!39697 lt!2626674) s!13591))))

(declare-fun b!7473228 () Bool)

(assert (=> b!7473228 (= e!4458457 (= s!13591 (Cons!72184 (c!1380615 lt!2626674) Nil!72184)))))

(declare-fun b!7473229 () Bool)

(assert (=> b!7473229 (= e!4458459 e!4458456)))

(declare-fun c!1380660 () Bool)

(assert (=> b!7473229 (= c!1380660 (is-Star!19592 lt!2626674))))

(declare-fun b!7473230 () Bool)

(declare-fun c!1380657 () Bool)

(assert (=> b!7473230 (= c!1380657 (is-Union!19592 lt!2626674))))

(assert (=> b!7473230 (= e!4458457 e!4458459)))

(assert (=> b!7473231 (= e!4458462 call!686134)))

(declare-fun bm!686130 () Bool)

(assert (=> bm!686130 (= call!686134 (Exists!4211 (ite c!1380660 lambda!462954 lambda!462955)))))

(assert (= (and d!2299214 c!1380659) b!7473226))

(assert (= (and d!2299214 (not c!1380659)) b!7473221))

(assert (= (and b!7473221 res!2998201) b!7473223))

(assert (= (and b!7473223 c!1380658) b!7473228))

(assert (= (and b!7473223 (not c!1380658)) b!7473230))

(assert (= (and b!7473230 c!1380657) b!7473222))

(assert (= (and b!7473230 (not c!1380657)) b!7473229))

(assert (= (and b!7473222 (not res!2998202)) b!7473227))

(assert (= (and b!7473229 c!1380660) b!7473225))

(assert (= (and b!7473229 (not c!1380660)) b!7473224))

(assert (= (and b!7473225 (not res!2998200)) b!7473231))

(assert (= (or b!7473231 b!7473224) bm!686130))

(assert (= (or b!7473226 b!7473225) bm!686129))

(declare-fun m!8069416 () Bool)

(assert (=> b!7473222 m!8069416))

(assert (=> bm!686129 m!8069362))

(declare-fun m!8069418 () Bool)

(assert (=> b!7473227 m!8069418))

(declare-fun m!8069420 () Bool)

(assert (=> bm!686130 m!8069420))

(assert (=> b!7472969 d!2299214))

(declare-fun d!2299218 () Bool)

(assert (=> d!2299218 (= (matchR!9356 lt!2626674 s!13591) (matchRSpec!4271 lt!2626674 s!13591))))

(declare-fun lt!2626728 () Unit!166019)

(assert (=> d!2299218 (= lt!2626728 (choose!57754 lt!2626674 s!13591))))

(assert (=> d!2299218 (validRegex!10106 lt!2626674)))

(assert (=> d!2299218 (= (mainMatchTheorem!4265 lt!2626674 s!13591) lt!2626728)))

(declare-fun bs!1931621 () Bool)

(assert (= bs!1931621 d!2299218))

(assert (=> bs!1931621 m!8069278))

(assert (=> bs!1931621 m!8069286))

(declare-fun m!8069422 () Bool)

(assert (=> bs!1931621 m!8069422))

(assert (=> bs!1931621 m!8069364))

(assert (=> b!7472969 d!2299218))

(declare-fun d!2299220 () Bool)

(declare-fun res!2998204 () Bool)

(declare-fun e!4458465 () Bool)

(assert (=> d!2299220 (=> res!2998204 e!4458465)))

(assert (=> d!2299220 (= res!2998204 (is-ElementMatch!19592 r2!5783))))

(assert (=> d!2299220 (= (validRegex!10106 r2!5783) e!4458465)))

(declare-fun b!7473232 () Bool)

(declare-fun e!4458469 () Bool)

(declare-fun e!4458466 () Bool)

(assert (=> b!7473232 (= e!4458469 e!4458466)))

(declare-fun res!2998206 () Bool)

(assert (=> b!7473232 (=> (not res!2998206) (not e!4458466))))

(declare-fun call!686138 () Bool)

(assert (=> b!7473232 (= res!2998206 call!686138)))

(declare-fun b!7473233 () Bool)

(declare-fun e!4458464 () Bool)

(assert (=> b!7473233 (= e!4458465 e!4458464)))

(declare-fun c!1380661 () Bool)

(assert (=> b!7473233 (= c!1380661 (is-Star!19592 r2!5783))))

(declare-fun b!7473234 () Bool)

(declare-fun res!2998207 () Bool)

(assert (=> b!7473234 (=> res!2998207 e!4458469)))

(assert (=> b!7473234 (= res!2998207 (not (is-Concat!28437 r2!5783)))))

(declare-fun e!4458468 () Bool)

(assert (=> b!7473234 (= e!4458468 e!4458469)))

(declare-fun b!7473235 () Bool)

(declare-fun e!4458463 () Bool)

(declare-fun call!686137 () Bool)

(assert (=> b!7473235 (= e!4458463 call!686137)))

(declare-fun b!7473236 () Bool)

(declare-fun e!4458467 () Bool)

(declare-fun call!686136 () Bool)

(assert (=> b!7473236 (= e!4458467 call!686136)))

(declare-fun bm!686131 () Bool)

(assert (=> bm!686131 (= call!686137 call!686136)))

(declare-fun b!7473237 () Bool)

(assert (=> b!7473237 (= e!4458464 e!4458467)))

(declare-fun res!2998205 () Bool)

(assert (=> b!7473237 (= res!2998205 (not (nullable!8530 (reg!19921 r2!5783))))))

(assert (=> b!7473237 (=> (not res!2998205) (not e!4458467))))

(declare-fun b!7473238 () Bool)

(assert (=> b!7473238 (= e!4458466 call!686137)))

(declare-fun bm!686132 () Bool)

(declare-fun c!1380662 () Bool)

(assert (=> bm!686132 (= call!686136 (validRegex!10106 (ite c!1380661 (reg!19921 r2!5783) (ite c!1380662 (regTwo!39697 r2!5783) (regTwo!39696 r2!5783)))))))

(declare-fun bm!686133 () Bool)

(assert (=> bm!686133 (= call!686138 (validRegex!10106 (ite c!1380662 (regOne!39697 r2!5783) (regOne!39696 r2!5783))))))

(declare-fun b!7473239 () Bool)

(declare-fun res!2998203 () Bool)

(assert (=> b!7473239 (=> (not res!2998203) (not e!4458463))))

(assert (=> b!7473239 (= res!2998203 call!686138)))

(assert (=> b!7473239 (= e!4458468 e!4458463)))

(declare-fun b!7473240 () Bool)

(assert (=> b!7473240 (= e!4458464 e!4458468)))

(assert (=> b!7473240 (= c!1380662 (is-Union!19592 r2!5783))))

(assert (= (and d!2299220 (not res!2998204)) b!7473233))

(assert (= (and b!7473233 c!1380661) b!7473237))

(assert (= (and b!7473233 (not c!1380661)) b!7473240))

(assert (= (and b!7473237 res!2998205) b!7473236))

(assert (= (and b!7473240 c!1380662) b!7473239))

(assert (= (and b!7473240 (not c!1380662)) b!7473234))

(assert (= (and b!7473239 res!2998203) b!7473235))

(assert (= (and b!7473234 (not res!2998207)) b!7473232))

(assert (= (and b!7473232 res!2998206) b!7473238))

(assert (= (or b!7473235 b!7473238) bm!686131))

(assert (= (or b!7473239 b!7473232) bm!686133))

(assert (= (or b!7473236 bm!686131) bm!686132))

(declare-fun m!8069424 () Bool)

(assert (=> b!7473237 m!8069424))

(declare-fun m!8069426 () Bool)

(assert (=> bm!686132 m!8069426))

(declare-fun m!8069428 () Bool)

(assert (=> bm!686133 m!8069428))

(assert (=> b!7472968 d!2299220))

(declare-fun d!2299222 () Bool)

(declare-fun choose!57755 (Int) Bool)

(assert (=> d!2299222 (= (Exists!4211 lambda!462939) (choose!57755 lambda!462939))))

(declare-fun bs!1931622 () Bool)

(assert (= bs!1931622 d!2299222))

(declare-fun m!8069430 () Bool)

(assert (=> bs!1931622 m!8069430))

(assert (=> b!7472973 d!2299222))

(declare-fun bs!1931623 () Bool)

(declare-fun d!2299224 () Bool)

(assert (= bs!1931623 (and d!2299224 b!7472973)))

(declare-fun lambda!462960 () Int)

(assert (=> bs!1931623 (= lambda!462960 lambda!462938)))

(declare-fun bs!1931624 () Bool)

(assert (= bs!1931624 (and d!2299224 b!7473197)))

(assert (=> bs!1931624 (not (= lambda!462960 lambda!462952))))

(assert (=> bs!1931623 (not (= lambda!462960 lambda!462939))))

(declare-fun bs!1931625 () Bool)

(assert (= bs!1931625 (and d!2299224 b!7473190)))

(assert (=> bs!1931625 (not (= lambda!462960 lambda!462953))))

(declare-fun bs!1931626 () Bool)

(assert (= bs!1931626 (and d!2299224 b!7473231)))

(assert (=> bs!1931626 (not (= lambda!462960 lambda!462954))))

(declare-fun bs!1931627 () Bool)

(assert (= bs!1931627 (and d!2299224 b!7473224)))

(assert (=> bs!1931627 (not (= lambda!462960 lambda!462955))))

(assert (=> d!2299224 true))

(assert (=> d!2299224 true))

(assert (=> d!2299224 true))

(declare-fun lambda!462962 () Int)

(assert (=> bs!1931623 (not (= lambda!462962 lambda!462938))))

(declare-fun bs!1931628 () Bool)

(assert (= bs!1931628 d!2299224))

(assert (=> bs!1931628 (not (= lambda!462962 lambda!462960))))

(assert (=> bs!1931624 (not (= lambda!462962 lambda!462952))))

(assert (=> bs!1931623 (= lambda!462962 lambda!462939)))

(assert (=> bs!1931625 (= (and (= lt!2626676 (regOne!39696 lt!2626675)) (= rTail!78 (regTwo!39696 lt!2626675))) (= lambda!462962 lambda!462953))))

(assert (=> bs!1931626 (not (= lambda!462962 lambda!462954))))

(assert (=> bs!1931627 (= (and (= lt!2626676 (regOne!39696 lt!2626674)) (= rTail!78 (regTwo!39696 lt!2626674))) (= lambda!462962 lambda!462955))))

(assert (=> d!2299224 true))

(assert (=> d!2299224 true))

(assert (=> d!2299224 true))

(assert (=> d!2299224 (= (Exists!4211 lambda!462960) (Exists!4211 lambda!462962))))

(declare-fun lt!2626733 () Unit!166019)

(declare-fun choose!57757 (Regex!19592 Regex!19592 List!72308) Unit!166019)

(assert (=> d!2299224 (= lt!2626733 (choose!57757 lt!2626676 rTail!78 s!13591))))

(assert (=> d!2299224 (validRegex!10106 lt!2626676)))

(assert (=> d!2299224 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2545 lt!2626676 rTail!78 s!13591) lt!2626733)))

(declare-fun m!8069432 () Bool)

(assert (=> bs!1931628 m!8069432))

(declare-fun m!8069434 () Bool)

(assert (=> bs!1931628 m!8069434))

(declare-fun m!8069436 () Bool)

(assert (=> bs!1931628 m!8069436))

(declare-fun m!8069438 () Bool)

(assert (=> bs!1931628 m!8069438))

(assert (=> b!7472973 d!2299224))

(declare-fun bs!1931632 () Bool)

(declare-fun d!2299226 () Bool)

(assert (= bs!1931632 (and d!2299226 b!7472973)))

(declare-fun lambda!462967 () Int)

(assert (=> bs!1931632 (= lambda!462967 lambda!462938)))

(declare-fun bs!1931633 () Bool)

(assert (= bs!1931633 (and d!2299226 d!2299224)))

(assert (=> bs!1931633 (= lambda!462967 lambda!462960)))

(declare-fun bs!1931634 () Bool)

(assert (= bs!1931634 (and d!2299226 b!7473197)))

(assert (=> bs!1931634 (not (= lambda!462967 lambda!462952))))

(assert (=> bs!1931632 (not (= lambda!462967 lambda!462939))))

(declare-fun bs!1931635 () Bool)

(assert (= bs!1931635 (and d!2299226 b!7473190)))

(assert (=> bs!1931635 (not (= lambda!462967 lambda!462953))))

(assert (=> bs!1931633 (not (= lambda!462967 lambda!462962))))

(declare-fun bs!1931636 () Bool)

(assert (= bs!1931636 (and d!2299226 b!7473231)))

(assert (=> bs!1931636 (not (= lambda!462967 lambda!462954))))

(declare-fun bs!1931637 () Bool)

(assert (= bs!1931637 (and d!2299226 b!7473224)))

(assert (=> bs!1931637 (not (= lambda!462967 lambda!462955))))

(assert (=> d!2299226 true))

(assert (=> d!2299226 true))

(assert (=> d!2299226 true))

(assert (=> d!2299226 (= (isDefined!13838 (findConcatSeparation!3271 lt!2626676 rTail!78 Nil!72184 s!13591 s!13591)) (Exists!4211 lambda!462967))))

(declare-fun lt!2626737 () Unit!166019)

(declare-fun choose!57758 (Regex!19592 Regex!19592 List!72308) Unit!166019)

(assert (=> d!2299226 (= lt!2626737 (choose!57758 lt!2626676 rTail!78 s!13591))))

(assert (=> d!2299226 (validRegex!10106 lt!2626676)))

(assert (=> d!2299226 (= (lemmaFindConcatSeparationEquivalentToExists!3029 lt!2626676 rTail!78 s!13591) lt!2626737)))

(declare-fun bs!1931638 () Bool)

(assert (= bs!1931638 d!2299226))

(assert (=> bs!1931638 m!8069294))

(assert (=> bs!1931638 m!8069302))

(assert (=> bs!1931638 m!8069294))

(assert (=> bs!1931638 m!8069438))

(declare-fun m!8069446 () Bool)

(assert (=> bs!1931638 m!8069446))

(declare-fun m!8069448 () Bool)

(assert (=> bs!1931638 m!8069448))

(assert (=> b!7472973 d!2299226))

(declare-fun d!2299232 () Bool)

(declare-fun isEmpty!41176 (Option!17149) Bool)

(assert (=> d!2299232 (= (isDefined!13838 (findConcatSeparation!3271 lt!2626676 rTail!78 Nil!72184 s!13591 s!13591)) (not (isEmpty!41176 (findConcatSeparation!3271 lt!2626676 rTail!78 Nil!72184 s!13591 s!13591))))))

(declare-fun bs!1931639 () Bool)

(assert (= bs!1931639 d!2299232))

(assert (=> bs!1931639 m!8069294))

(declare-fun m!8069450 () Bool)

(assert (=> bs!1931639 m!8069450))

(assert (=> b!7472973 d!2299232))

(declare-fun d!2299234 () Bool)

(assert (=> d!2299234 (= (Exists!4211 lambda!462938) (choose!57755 lambda!462938))))

(declare-fun bs!1931640 () Bool)

(assert (= bs!1931640 d!2299234))

(declare-fun m!8069452 () Bool)

(assert (=> bs!1931640 m!8069452))

(assert (=> b!7472973 d!2299234))

(declare-fun b!7473279 () Bool)

(declare-fun lt!2626746 () Unit!166019)

(declare-fun lt!2626747 () Unit!166019)

(assert (=> b!7473279 (= lt!2626746 lt!2626747)))

(declare-fun ++!17207 (List!72308 List!72308) List!72308)

(assert (=> b!7473279 (= (++!17207 (++!17207 Nil!72184 (Cons!72184 (h!78632 s!13591) Nil!72184)) (t!386877 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3083 (List!72308 C!39458 List!72308 List!72308) Unit!166019)

(assert (=> b!7473279 (= lt!2626747 (lemmaMoveElementToOtherListKeepsConcatEq!3083 Nil!72184 (h!78632 s!13591) (t!386877 s!13591) s!13591))))

(declare-fun e!4458492 () Option!17149)

(assert (=> b!7473279 (= e!4458492 (findConcatSeparation!3271 lt!2626676 rTail!78 (++!17207 Nil!72184 (Cons!72184 (h!78632 s!13591) Nil!72184)) (t!386877 s!13591) s!13591))))

(declare-fun b!7473280 () Bool)

(declare-fun e!4458491 () Bool)

(declare-fun lt!2626748 () Option!17149)

(assert (=> b!7473280 (= e!4458491 (not (isDefined!13838 lt!2626748)))))

(declare-fun b!7473281 () Bool)

(declare-fun res!2998238 () Bool)

(declare-fun e!4458490 () Bool)

(assert (=> b!7473281 (=> (not res!2998238) (not e!4458490))))

(declare-fun get!25253 (Option!17149) tuple2!68634)

(assert (=> b!7473281 (= res!2998238 (matchR!9356 lt!2626676 (_1!37620 (get!25253 lt!2626748))))))

(declare-fun b!7473283 () Bool)

(assert (=> b!7473283 (= e!4458492 None!17148)))

(declare-fun b!7473284 () Bool)

(assert (=> b!7473284 (= e!4458490 (= (++!17207 (_1!37620 (get!25253 lt!2626748)) (_2!37620 (get!25253 lt!2626748))) s!13591))))

(declare-fun d!2299236 () Bool)

(assert (=> d!2299236 e!4458491))

(declare-fun res!2998240 () Bool)

(assert (=> d!2299236 (=> res!2998240 e!4458491)))

(assert (=> d!2299236 (= res!2998240 e!4458490)))

(declare-fun res!2998241 () Bool)

(assert (=> d!2299236 (=> (not res!2998241) (not e!4458490))))

(assert (=> d!2299236 (= res!2998241 (isDefined!13838 lt!2626748))))

(declare-fun e!4458493 () Option!17149)

(assert (=> d!2299236 (= lt!2626748 e!4458493)))

(declare-fun c!1380668 () Bool)

(declare-fun e!4458494 () Bool)

(assert (=> d!2299236 (= c!1380668 e!4458494)))

(declare-fun res!2998239 () Bool)

(assert (=> d!2299236 (=> (not res!2998239) (not e!4458494))))

(assert (=> d!2299236 (= res!2998239 (matchR!9356 lt!2626676 Nil!72184))))

(assert (=> d!2299236 (validRegex!10106 lt!2626676)))

(assert (=> d!2299236 (= (findConcatSeparation!3271 lt!2626676 rTail!78 Nil!72184 s!13591 s!13591) lt!2626748)))

(declare-fun b!7473282 () Bool)

(assert (=> b!7473282 (= e!4458493 (Some!17148 (tuple2!68635 Nil!72184 s!13591)))))

(declare-fun b!7473285 () Bool)

(assert (=> b!7473285 (= e!4458494 (matchR!9356 rTail!78 s!13591))))

(declare-fun b!7473286 () Bool)

(assert (=> b!7473286 (= e!4458493 e!4458492)))

(declare-fun c!1380667 () Bool)

(assert (=> b!7473286 (= c!1380667 (is-Nil!72184 s!13591))))

(declare-fun b!7473287 () Bool)

(declare-fun res!2998242 () Bool)

(assert (=> b!7473287 (=> (not res!2998242) (not e!4458490))))

(assert (=> b!7473287 (= res!2998242 (matchR!9356 rTail!78 (_2!37620 (get!25253 lt!2626748))))))

(assert (= (and d!2299236 res!2998239) b!7473285))

(assert (= (and d!2299236 c!1380668) b!7473282))

(assert (= (and d!2299236 (not c!1380668)) b!7473286))

(assert (= (and b!7473286 c!1380667) b!7473283))

(assert (= (and b!7473286 (not c!1380667)) b!7473279))

(assert (= (and d!2299236 res!2998241) b!7473281))

(assert (= (and b!7473281 res!2998238) b!7473287))

(assert (= (and b!7473287 res!2998242) b!7473284))

(assert (= (and d!2299236 (not res!2998240)) b!7473280))

(declare-fun m!8069454 () Bool)

(assert (=> b!7473281 m!8069454))

(declare-fun m!8069456 () Bool)

(assert (=> b!7473281 m!8069456))

(declare-fun m!8069458 () Bool)

(assert (=> d!2299236 m!8069458))

(declare-fun m!8069460 () Bool)

(assert (=> d!2299236 m!8069460))

(assert (=> d!2299236 m!8069438))

(assert (=> b!7473284 m!8069454))

(declare-fun m!8069462 () Bool)

(assert (=> b!7473284 m!8069462))

(assert (=> b!7473287 m!8069454))

(declare-fun m!8069464 () Bool)

(assert (=> b!7473287 m!8069464))

(declare-fun m!8069466 () Bool)

(assert (=> b!7473285 m!8069466))

(declare-fun m!8069468 () Bool)

(assert (=> b!7473279 m!8069468))

(assert (=> b!7473279 m!8069468))

(declare-fun m!8069470 () Bool)

(assert (=> b!7473279 m!8069470))

(declare-fun m!8069472 () Bool)

(assert (=> b!7473279 m!8069472))

(assert (=> b!7473279 m!8069468))

(declare-fun m!8069474 () Bool)

(assert (=> b!7473279 m!8069474))

(assert (=> b!7473280 m!8069458))

(assert (=> b!7472973 d!2299236))

(declare-fun b!7473302 () Bool)

(declare-fun e!4458499 () Bool)

(assert (=> b!7473302 (= e!4458499 tp_is_empty!49473)))

(assert (=> b!7472972 (= tp!2167077 e!4458499)))

(declare-fun b!7473303 () Bool)

(declare-fun tp!2167146 () Bool)

(declare-fun tp!2167145 () Bool)

(assert (=> b!7473303 (= e!4458499 (and tp!2167146 tp!2167145))))

(declare-fun b!7473304 () Bool)

(declare-fun tp!2167143 () Bool)

(assert (=> b!7473304 (= e!4458499 tp!2167143)))

(declare-fun b!7473305 () Bool)

(declare-fun tp!2167144 () Bool)

(declare-fun tp!2167142 () Bool)

(assert (=> b!7473305 (= e!4458499 (and tp!2167144 tp!2167142))))

(assert (= (and b!7472972 (is-ElementMatch!19592 (regOne!39697 r1!5845))) b!7473302))

(assert (= (and b!7472972 (is-Concat!28437 (regOne!39697 r1!5845))) b!7473303))

(assert (= (and b!7472972 (is-Star!19592 (regOne!39697 r1!5845))) b!7473304))

(assert (= (and b!7472972 (is-Union!19592 (regOne!39697 r1!5845))) b!7473305))

(declare-fun b!7473306 () Bool)

(declare-fun e!4458500 () Bool)

(assert (=> b!7473306 (= e!4458500 tp_is_empty!49473)))

(assert (=> b!7472972 (= tp!2167083 e!4458500)))

(declare-fun b!7473307 () Bool)

(declare-fun tp!2167151 () Bool)

(declare-fun tp!2167150 () Bool)

(assert (=> b!7473307 (= e!4458500 (and tp!2167151 tp!2167150))))

(declare-fun b!7473308 () Bool)

(declare-fun tp!2167148 () Bool)

(assert (=> b!7473308 (= e!4458500 tp!2167148)))

(declare-fun b!7473309 () Bool)

(declare-fun tp!2167149 () Bool)

(declare-fun tp!2167147 () Bool)

(assert (=> b!7473309 (= e!4458500 (and tp!2167149 tp!2167147))))

(assert (= (and b!7472972 (is-ElementMatch!19592 (regTwo!39697 r1!5845))) b!7473306))

(assert (= (and b!7472972 (is-Concat!28437 (regTwo!39697 r1!5845))) b!7473307))

(assert (= (and b!7472972 (is-Star!19592 (regTwo!39697 r1!5845))) b!7473308))

(assert (= (and b!7472972 (is-Union!19592 (regTwo!39697 r1!5845))) b!7473309))

(declare-fun b!7473310 () Bool)

(declare-fun e!4458501 () Bool)

(assert (=> b!7473310 (= e!4458501 tp_is_empty!49473)))

(assert (=> b!7472960 (= tp!2167070 e!4458501)))

(declare-fun b!7473311 () Bool)

(declare-fun tp!2167156 () Bool)

(declare-fun tp!2167155 () Bool)

(assert (=> b!7473311 (= e!4458501 (and tp!2167156 tp!2167155))))

(declare-fun b!7473312 () Bool)

(declare-fun tp!2167153 () Bool)

(assert (=> b!7473312 (= e!4458501 tp!2167153)))

(declare-fun b!7473313 () Bool)

(declare-fun tp!2167154 () Bool)

(declare-fun tp!2167152 () Bool)

(assert (=> b!7473313 (= e!4458501 (and tp!2167154 tp!2167152))))

(assert (= (and b!7472960 (is-ElementMatch!19592 (reg!19921 rTail!78))) b!7473310))

(assert (= (and b!7472960 (is-Concat!28437 (reg!19921 rTail!78))) b!7473311))

(assert (= (and b!7472960 (is-Star!19592 (reg!19921 rTail!78))) b!7473312))

(assert (= (and b!7472960 (is-Union!19592 (reg!19921 rTail!78))) b!7473313))

(declare-fun b!7473314 () Bool)

(declare-fun e!4458502 () Bool)

(assert (=> b!7473314 (= e!4458502 tp_is_empty!49473)))

(assert (=> b!7472971 (= tp!2167069 e!4458502)))

(declare-fun b!7473315 () Bool)

(declare-fun tp!2167161 () Bool)

(declare-fun tp!2167160 () Bool)

(assert (=> b!7473315 (= e!4458502 (and tp!2167161 tp!2167160))))

(declare-fun b!7473316 () Bool)

(declare-fun tp!2167158 () Bool)

(assert (=> b!7473316 (= e!4458502 tp!2167158)))

(declare-fun b!7473317 () Bool)

(declare-fun tp!2167159 () Bool)

(declare-fun tp!2167157 () Bool)

(assert (=> b!7473317 (= e!4458502 (and tp!2167159 tp!2167157))))

(assert (= (and b!7472971 (is-ElementMatch!19592 (reg!19921 r1!5845))) b!7473314))

(assert (= (and b!7472971 (is-Concat!28437 (reg!19921 r1!5845))) b!7473315))

(assert (= (and b!7472971 (is-Star!19592 (reg!19921 r1!5845))) b!7473316))

(assert (= (and b!7472971 (is-Union!19592 (reg!19921 r1!5845))) b!7473317))

(declare-fun b!7473318 () Bool)

(declare-fun e!4458503 () Bool)

(assert (=> b!7473318 (= e!4458503 tp_is_empty!49473)))

(assert (=> b!7472965 (= tp!2167073 e!4458503)))

(declare-fun b!7473319 () Bool)

(declare-fun tp!2167166 () Bool)

(declare-fun tp!2167165 () Bool)

(assert (=> b!7473319 (= e!4458503 (and tp!2167166 tp!2167165))))

(declare-fun b!7473320 () Bool)

(declare-fun tp!2167163 () Bool)

(assert (=> b!7473320 (= e!4458503 tp!2167163)))

(declare-fun b!7473321 () Bool)

(declare-fun tp!2167164 () Bool)

(declare-fun tp!2167162 () Bool)

(assert (=> b!7473321 (= e!4458503 (and tp!2167164 tp!2167162))))

(assert (= (and b!7472965 (is-ElementMatch!19592 (reg!19921 r2!5783))) b!7473318))

(assert (= (and b!7472965 (is-Concat!28437 (reg!19921 r2!5783))) b!7473319))

(assert (= (and b!7472965 (is-Star!19592 (reg!19921 r2!5783))) b!7473320))

(assert (= (and b!7472965 (is-Union!19592 (reg!19921 r2!5783))) b!7473321))

(declare-fun b!7473322 () Bool)

(declare-fun e!4458504 () Bool)

(assert (=> b!7473322 (= e!4458504 tp_is_empty!49473)))

(assert (=> b!7472964 (= tp!2167068 e!4458504)))

(declare-fun b!7473323 () Bool)

(declare-fun tp!2167171 () Bool)

(declare-fun tp!2167170 () Bool)

(assert (=> b!7473323 (= e!4458504 (and tp!2167171 tp!2167170))))

(declare-fun b!7473324 () Bool)

(declare-fun tp!2167168 () Bool)

(assert (=> b!7473324 (= e!4458504 tp!2167168)))

(declare-fun b!7473325 () Bool)

(declare-fun tp!2167169 () Bool)

(declare-fun tp!2167167 () Bool)

(assert (=> b!7473325 (= e!4458504 (and tp!2167169 tp!2167167))))

(assert (= (and b!7472964 (is-ElementMatch!19592 (regOne!39696 r1!5845))) b!7473322))

(assert (= (and b!7472964 (is-Concat!28437 (regOne!39696 r1!5845))) b!7473323))

(assert (= (and b!7472964 (is-Star!19592 (regOne!39696 r1!5845))) b!7473324))

(assert (= (and b!7472964 (is-Union!19592 (regOne!39696 r1!5845))) b!7473325))

(declare-fun b!7473326 () Bool)

(declare-fun e!4458505 () Bool)

(assert (=> b!7473326 (= e!4458505 tp_is_empty!49473)))

(assert (=> b!7472964 (= tp!2167081 e!4458505)))

(declare-fun b!7473327 () Bool)

(declare-fun tp!2167176 () Bool)

(declare-fun tp!2167175 () Bool)

(assert (=> b!7473327 (= e!4458505 (and tp!2167176 tp!2167175))))

(declare-fun b!7473328 () Bool)

(declare-fun tp!2167173 () Bool)

(assert (=> b!7473328 (= e!4458505 tp!2167173)))

(declare-fun b!7473329 () Bool)

(declare-fun tp!2167174 () Bool)

(declare-fun tp!2167172 () Bool)

(assert (=> b!7473329 (= e!4458505 (and tp!2167174 tp!2167172))))

(assert (= (and b!7472964 (is-ElementMatch!19592 (regTwo!39696 r1!5845))) b!7473326))

(assert (= (and b!7472964 (is-Concat!28437 (regTwo!39696 r1!5845))) b!7473327))

(assert (= (and b!7472964 (is-Star!19592 (regTwo!39696 r1!5845))) b!7473328))

(assert (= (and b!7472964 (is-Union!19592 (regTwo!39696 r1!5845))) b!7473329))

(declare-fun b!7473330 () Bool)

(declare-fun e!4458506 () Bool)

(assert (=> b!7473330 (= e!4458506 tp_is_empty!49473)))

(assert (=> b!7472959 (= tp!2167072 e!4458506)))

(declare-fun b!7473331 () Bool)

(declare-fun tp!2167181 () Bool)

(declare-fun tp!2167180 () Bool)

(assert (=> b!7473331 (= e!4458506 (and tp!2167181 tp!2167180))))

(declare-fun b!7473332 () Bool)

(declare-fun tp!2167178 () Bool)

(assert (=> b!7473332 (= e!4458506 tp!2167178)))

(declare-fun b!7473333 () Bool)

(declare-fun tp!2167179 () Bool)

(declare-fun tp!2167177 () Bool)

(assert (=> b!7473333 (= e!4458506 (and tp!2167179 tp!2167177))))

(assert (= (and b!7472959 (is-ElementMatch!19592 (regOne!39697 r2!5783))) b!7473330))

(assert (= (and b!7472959 (is-Concat!28437 (regOne!39697 r2!5783))) b!7473331))

(assert (= (and b!7472959 (is-Star!19592 (regOne!39697 r2!5783))) b!7473332))

(assert (= (and b!7472959 (is-Union!19592 (regOne!39697 r2!5783))) b!7473333))

(declare-fun b!7473334 () Bool)

(declare-fun e!4458507 () Bool)

(assert (=> b!7473334 (= e!4458507 tp_is_empty!49473)))

(assert (=> b!7472959 (= tp!2167074 e!4458507)))

(declare-fun b!7473335 () Bool)

(declare-fun tp!2167186 () Bool)

(declare-fun tp!2167185 () Bool)

(assert (=> b!7473335 (= e!4458507 (and tp!2167186 tp!2167185))))

(declare-fun b!7473336 () Bool)

(declare-fun tp!2167183 () Bool)

(assert (=> b!7473336 (= e!4458507 tp!2167183)))

(declare-fun b!7473337 () Bool)

(declare-fun tp!2167184 () Bool)

(declare-fun tp!2167182 () Bool)

(assert (=> b!7473337 (= e!4458507 (and tp!2167184 tp!2167182))))

(assert (= (and b!7472959 (is-ElementMatch!19592 (regTwo!39697 r2!5783))) b!7473334))

(assert (= (and b!7472959 (is-Concat!28437 (regTwo!39697 r2!5783))) b!7473335))

(assert (= (and b!7472959 (is-Star!19592 (regTwo!39697 r2!5783))) b!7473336))

(assert (= (and b!7472959 (is-Union!19592 (regTwo!39697 r2!5783))) b!7473337))

(declare-fun b!7473338 () Bool)

(declare-fun e!4458508 () Bool)

(assert (=> b!7473338 (= e!4458508 tp_is_empty!49473)))

(assert (=> b!7472958 (= tp!2167080 e!4458508)))

(declare-fun b!7473339 () Bool)

(declare-fun tp!2167191 () Bool)

(declare-fun tp!2167190 () Bool)

(assert (=> b!7473339 (= e!4458508 (and tp!2167191 tp!2167190))))

(declare-fun b!7473340 () Bool)

(declare-fun tp!2167188 () Bool)

(assert (=> b!7473340 (= e!4458508 tp!2167188)))

(declare-fun b!7473341 () Bool)

(declare-fun tp!2167189 () Bool)

(declare-fun tp!2167187 () Bool)

(assert (=> b!7473341 (= e!4458508 (and tp!2167189 tp!2167187))))

(assert (= (and b!7472958 (is-ElementMatch!19592 (regOne!39697 rTail!78))) b!7473338))

(assert (= (and b!7472958 (is-Concat!28437 (regOne!39697 rTail!78))) b!7473339))

(assert (= (and b!7472958 (is-Star!19592 (regOne!39697 rTail!78))) b!7473340))

(assert (= (and b!7472958 (is-Union!19592 (regOne!39697 rTail!78))) b!7473341))

(declare-fun b!7473342 () Bool)

(declare-fun e!4458509 () Bool)

(assert (=> b!7473342 (= e!4458509 tp_is_empty!49473)))

(assert (=> b!7472958 (= tp!2167078 e!4458509)))

(declare-fun b!7473343 () Bool)

(declare-fun tp!2167196 () Bool)

(declare-fun tp!2167195 () Bool)

(assert (=> b!7473343 (= e!4458509 (and tp!2167196 tp!2167195))))

(declare-fun b!7473344 () Bool)

(declare-fun tp!2167193 () Bool)

(assert (=> b!7473344 (= e!4458509 tp!2167193)))

(declare-fun b!7473345 () Bool)

(declare-fun tp!2167194 () Bool)

(declare-fun tp!2167192 () Bool)

(assert (=> b!7473345 (= e!4458509 (and tp!2167194 tp!2167192))))

(assert (= (and b!7472958 (is-ElementMatch!19592 (regTwo!39697 rTail!78))) b!7473342))

(assert (= (and b!7472958 (is-Concat!28437 (regTwo!39697 rTail!78))) b!7473343))

(assert (= (and b!7472958 (is-Star!19592 (regTwo!39697 rTail!78))) b!7473344))

(assert (= (and b!7472958 (is-Union!19592 (regTwo!39697 rTail!78))) b!7473345))

(declare-fun b!7473350 () Bool)

(declare-fun e!4458512 () Bool)

(declare-fun tp!2167199 () Bool)

(assert (=> b!7473350 (= e!4458512 (and tp_is_empty!49473 tp!2167199))))

(assert (=> b!7472974 (= tp!2167071 e!4458512)))

(assert (= (and b!7472974 (is-Cons!72184 (t!386877 s!13591))) b!7473350))

(declare-fun b!7473351 () Bool)

(declare-fun e!4458513 () Bool)

(assert (=> b!7473351 (= e!4458513 tp_is_empty!49473)))

(assert (=> b!7472963 (= tp!2167082 e!4458513)))

(declare-fun b!7473352 () Bool)

(declare-fun tp!2167204 () Bool)

(declare-fun tp!2167203 () Bool)

(assert (=> b!7473352 (= e!4458513 (and tp!2167204 tp!2167203))))

(declare-fun b!7473353 () Bool)

(declare-fun tp!2167201 () Bool)

(assert (=> b!7473353 (= e!4458513 tp!2167201)))

(declare-fun b!7473354 () Bool)

(declare-fun tp!2167202 () Bool)

(declare-fun tp!2167200 () Bool)

(assert (=> b!7473354 (= e!4458513 (and tp!2167202 tp!2167200))))

(assert (= (and b!7472963 (is-ElementMatch!19592 (regOne!39696 rTail!78))) b!7473351))

(assert (= (and b!7472963 (is-Concat!28437 (regOne!39696 rTail!78))) b!7473352))

(assert (= (and b!7472963 (is-Star!19592 (regOne!39696 rTail!78))) b!7473353))

(assert (= (and b!7472963 (is-Union!19592 (regOne!39696 rTail!78))) b!7473354))

(declare-fun b!7473355 () Bool)

(declare-fun e!4458514 () Bool)

(assert (=> b!7473355 (= e!4458514 tp_is_empty!49473)))

(assert (=> b!7472963 (= tp!2167079 e!4458514)))

(declare-fun b!7473356 () Bool)

(declare-fun tp!2167209 () Bool)

(declare-fun tp!2167208 () Bool)

(assert (=> b!7473356 (= e!4458514 (and tp!2167209 tp!2167208))))

(declare-fun b!7473357 () Bool)

(declare-fun tp!2167206 () Bool)

(assert (=> b!7473357 (= e!4458514 tp!2167206)))

(declare-fun b!7473358 () Bool)

(declare-fun tp!2167207 () Bool)

(declare-fun tp!2167205 () Bool)

(assert (=> b!7473358 (= e!4458514 (and tp!2167207 tp!2167205))))

(assert (= (and b!7472963 (is-ElementMatch!19592 (regTwo!39696 rTail!78))) b!7473355))

(assert (= (and b!7472963 (is-Concat!28437 (regTwo!39696 rTail!78))) b!7473356))

(assert (= (and b!7472963 (is-Star!19592 (regTwo!39696 rTail!78))) b!7473357))

(assert (= (and b!7472963 (is-Union!19592 (regTwo!39696 rTail!78))) b!7473358))

(declare-fun b!7473359 () Bool)

(declare-fun e!4458515 () Bool)

(assert (=> b!7473359 (= e!4458515 tp_is_empty!49473)))

(assert (=> b!7472962 (= tp!2167075 e!4458515)))

(declare-fun b!7473360 () Bool)

(declare-fun tp!2167214 () Bool)

(declare-fun tp!2167213 () Bool)

(assert (=> b!7473360 (= e!4458515 (and tp!2167214 tp!2167213))))

(declare-fun b!7473361 () Bool)

(declare-fun tp!2167211 () Bool)

(assert (=> b!7473361 (= e!4458515 tp!2167211)))

(declare-fun b!7473362 () Bool)

(declare-fun tp!2167212 () Bool)

(declare-fun tp!2167210 () Bool)

(assert (=> b!7473362 (= e!4458515 (and tp!2167212 tp!2167210))))

(assert (= (and b!7472962 (is-ElementMatch!19592 (regOne!39696 r2!5783))) b!7473359))

(assert (= (and b!7472962 (is-Concat!28437 (regOne!39696 r2!5783))) b!7473360))

(assert (= (and b!7472962 (is-Star!19592 (regOne!39696 r2!5783))) b!7473361))

(assert (= (and b!7472962 (is-Union!19592 (regOne!39696 r2!5783))) b!7473362))

(declare-fun b!7473363 () Bool)

(declare-fun e!4458516 () Bool)

(assert (=> b!7473363 (= e!4458516 tp_is_empty!49473)))

(assert (=> b!7472962 (= tp!2167076 e!4458516)))

(declare-fun b!7473364 () Bool)

(declare-fun tp!2167219 () Bool)

(declare-fun tp!2167218 () Bool)

(assert (=> b!7473364 (= e!4458516 (and tp!2167219 tp!2167218))))

(declare-fun b!7473365 () Bool)

(declare-fun tp!2167216 () Bool)

(assert (=> b!7473365 (= e!4458516 tp!2167216)))

(declare-fun b!7473366 () Bool)

(declare-fun tp!2167217 () Bool)

(declare-fun tp!2167215 () Bool)

(assert (=> b!7473366 (= e!4458516 (and tp!2167217 tp!2167215))))

(assert (= (and b!7472962 (is-ElementMatch!19592 (regTwo!39696 r2!5783))) b!7473363))

(assert (= (and b!7472962 (is-Concat!28437 (regTwo!39696 r2!5783))) b!7473364))

(assert (= (and b!7472962 (is-Star!19592 (regTwo!39696 r2!5783))) b!7473365))

(assert (= (and b!7472962 (is-Union!19592 (regTwo!39696 r2!5783))) b!7473366))

(push 1)

(assert (not b!7473308))

(assert (not b!7473332))

(assert (not b!7473337))

(assert (not bm!686133))

(assert (not b!7473352))

(assert (not b!7473365))

(assert (not b!7473317))

(assert (not b!7473356))

(assert (not b!7473135))

(assert (not b!7473309))

(assert (not b!7473324))

(assert (not b!7473193))

(assert (not bm!686112))

(assert (not d!2299232))

(assert (not b!7473328))

(assert (not b!7473227))

(assert (not b!7473214))

(assert (not bm!686118))

(assert (not b!7473340))

(assert (not b!7473354))

(assert (not bm!686114))

(assert (not b!7473333))

(assert (not b!7473307))

(assert (not b!7473311))

(assert (not b!7473304))

(assert (not b!7473353))

(assert (not d!2299226))

(assert (not b!7473129))

(assert (not b!7473357))

(assert (not b!7473343))

(assert (not d!2299212))

(assert (not bm!686129))

(assert (not b!7473341))

(assert (not b!7473222))

(assert (not b!7473213))

(assert (not b!7473358))

(assert (not d!2299206))

(assert (not b!7473125))

(assert (not b!7473327))

(assert (not b!7473364))

(assert (not b!7473188))

(assert (not b!7473280))

(assert (not b!7473331))

(assert (not b!7473350))

(assert (not b!7473362))

(assert (not b!7473321))

(assert (not b!7473279))

(assert (not b!7473127))

(assert (not b!7473215))

(assert (not b!7473345))

(assert (not b!7473316))

(assert (not b!7473336))

(assert (not b!7473073))

(assert (not b!7473361))

(assert (not b!7473315))

(assert (not bm!686115))

(assert (not d!2299218))

(assert (not b!7473344))

(assert (not b!7473219))

(assert (not b!7473339))

(assert (not d!2299236))

(assert (not b!7473325))

(assert (not b!7473335))

(assert (not b!7473323))

(assert (not b!7473285))

(assert (not b!7473366))

(assert (not b!7473130))

(assert (not bm!686126))

(assert (not b!7473211))

(assert (not b!7473360))

(assert (not d!2299234))

(assert (not b!7473313))

(assert (not bm!686132))

(assert (not b!7473281))

(assert (not bm!686117))

(assert (not b!7473237))

(assert (not bm!686128))

(assert (not b!7473320))

(assert (not d!2299224))

(assert (not b!7473303))

(assert (not b!7473312))

(assert (not bm!686130))

(assert (not b!7473319))

(assert (not b!7473131))

(assert tp_is_empty!49473)

(assert (not b!7473329))

(assert (not b!7473305))

(assert (not b!7473209))

(assert (not b!7473287))

(assert (not b!7473082))

(assert (not b!7473091))

(assert (not d!2299208))

(assert (not b!7473284))

(assert (not bm!686121))

(assert (not d!2299222))

(assert (not bm!686111))

(assert (not bm!686127))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

