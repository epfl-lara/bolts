; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82348 () Bool)

(assert start!82348)

(declare-fun b!916094 () Bool)

(assert (=> b!916094 true))

(assert (=> b!916094 true))

(declare-fun lambda!29492 () Int)

(declare-fun lambda!29491 () Int)

(assert (=> b!916094 (not (= lambda!29492 lambda!29491))))

(assert (=> b!916094 true))

(assert (=> b!916094 true))

(declare-fun b!916090 () Bool)

(declare-fun e!596989 () Bool)

(declare-fun tp_is_empty!4559 () Bool)

(assert (=> b!916090 (= e!596989 tp_is_empty!4559)))

(declare-fun b!916091 () Bool)

(declare-fun e!596986 () Bool)

(declare-datatypes ((C!5486 0))(
  ( (C!5487 (val!2991 Int)) )
))
(declare-datatypes ((Regex!2458 0))(
  ( (ElementMatch!2458 (c!148465 C!5486)) (Concat!4291 (regOne!5428 Regex!2458) (regTwo!5428 Regex!2458)) (EmptyExpr!2458) (Star!2458 (reg!2787 Regex!2458)) (EmptyLang!2458) (Union!2458 (regOne!5429 Regex!2458) (regTwo!5429 Regex!2458)) )
))
(declare-fun r!15766 () Regex!2458)

(declare-fun validRegex!927 (Regex!2458) Bool)

(assert (=> b!916091 (= e!596986 (validRegex!927 (regOne!5428 r!15766)))))

(declare-fun lt!337514 () Regex!2458)

(declare-datatypes ((List!9688 0))(
  ( (Nil!9672) (Cons!9672 (h!15073 C!5486) (t!100734 List!9688)) )
))
(declare-fun s!10566 () List!9688)

(declare-fun matchRSpec!259 (Regex!2458 List!9688) Bool)

(assert (=> b!916091 (matchRSpec!259 lt!337514 s!10566)))

(declare-datatypes ((Unit!14535 0))(
  ( (Unit!14536) )
))
(declare-fun lt!337513 () Unit!14535)

(declare-fun mainMatchTheorem!259 (Regex!2458 List!9688) Unit!14535)

(assert (=> b!916091 (= lt!337513 (mainMatchTheorem!259 lt!337514 s!10566))))

(declare-fun b!916092 () Bool)

(declare-fun e!596988 () Bool)

(assert (=> b!916092 (= e!596988 e!596986)))

(declare-fun res!416526 () Bool)

(assert (=> b!916092 (=> res!416526 e!596986)))

(declare-fun matchR!996 (Regex!2458 List!9688) Bool)

(assert (=> b!916092 (= res!416526 (not (matchR!996 lt!337514 s!10566)))))

(declare-fun removeUselessConcat!135 (Regex!2458) Regex!2458)

(assert (=> b!916092 (= lt!337514 (Concat!4291 (removeUselessConcat!135 (regOne!5428 r!15766)) (removeUselessConcat!135 (regTwo!5428 r!15766))))))

(declare-fun res!416523 () Bool)

(declare-fun e!596987 () Bool)

(assert (=> start!82348 (=> (not res!416523) (not e!596987))))

(assert (=> start!82348 (= res!416523 (validRegex!927 r!15766))))

(assert (=> start!82348 e!596987))

(assert (=> start!82348 e!596989))

(declare-fun e!596984 () Bool)

(assert (=> start!82348 e!596984))

(declare-fun b!916093 () Bool)

(declare-fun tp!286023 () Bool)

(declare-fun tp!286022 () Bool)

(assert (=> b!916093 (= e!596989 (and tp!286023 tp!286022))))

(declare-fun e!596985 () Bool)

(assert (=> b!916094 (= e!596985 e!596988)))

(declare-fun res!416525 () Bool)

(assert (=> b!916094 (=> res!416525 e!596988)))

(declare-fun isEmpty!5902 (List!9688) Bool)

(assert (=> b!916094 (= res!416525 (isEmpty!5902 s!10566))))

(declare-fun Exists!229 (Int) Bool)

(assert (=> b!916094 (= (Exists!229 lambda!29491) (Exists!229 lambda!29492))))

(declare-fun lt!337512 () Unit!14535)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!141 (Regex!2458 Regex!2458 List!9688) Unit!14535)

(assert (=> b!916094 (= lt!337512 (lemmaExistCutMatchRandMatchRSpecEquivalent!141 (regOne!5428 r!15766) (regTwo!5428 r!15766) s!10566))))

(declare-datatypes ((tuple2!10902 0))(
  ( (tuple2!10903 (_1!6277 List!9688) (_2!6277 List!9688)) )
))
(declare-datatypes ((Option!2093 0))(
  ( (None!2092) (Some!2092 (v!19509 tuple2!10902)) )
))
(declare-fun isDefined!1735 (Option!2093) Bool)

(declare-fun findConcatSeparation!199 (Regex!2458 Regex!2458 List!9688 List!9688 List!9688) Option!2093)

(assert (=> b!916094 (= (isDefined!1735 (findConcatSeparation!199 (regOne!5428 r!15766) (regTwo!5428 r!15766) Nil!9672 s!10566 s!10566)) (Exists!229 lambda!29491))))

(declare-fun lt!337515 () Unit!14535)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!199 (Regex!2458 Regex!2458 List!9688) Unit!14535)

(assert (=> b!916094 (= lt!337515 (lemmaFindConcatSeparationEquivalentToExists!199 (regOne!5428 r!15766) (regTwo!5428 r!15766) s!10566))))

(declare-fun b!916095 () Bool)

(declare-fun tp!286026 () Bool)

(assert (=> b!916095 (= e!596984 (and tp_is_empty!4559 tp!286026))))

(declare-fun b!916096 () Bool)

(declare-fun tp!286025 () Bool)

(assert (=> b!916096 (= e!596989 tp!286025)))

(declare-fun b!916097 () Bool)

(declare-fun tp!286021 () Bool)

(declare-fun tp!286024 () Bool)

(assert (=> b!916097 (= e!596989 (and tp!286021 tp!286024))))

(declare-fun b!916098 () Bool)

(assert (=> b!916098 (= e!596987 (not e!596985))))

(declare-fun res!416524 () Bool)

(assert (=> b!916098 (=> res!416524 e!596985)))

(declare-fun lt!337511 () Bool)

(assert (=> b!916098 (= res!416524 (or lt!337511 (and (is-Concat!4291 r!15766) (is-EmptyExpr!2458 (regOne!5428 r!15766))) (and (is-Concat!4291 r!15766) (is-EmptyExpr!2458 (regTwo!5428 r!15766))) (not (is-Concat!4291 r!15766))))))

(assert (=> b!916098 (= lt!337511 (matchRSpec!259 r!15766 s!10566))))

(assert (=> b!916098 (= lt!337511 (matchR!996 r!15766 s!10566))))

(declare-fun lt!337510 () Unit!14535)

(assert (=> b!916098 (= lt!337510 (mainMatchTheorem!259 r!15766 s!10566))))

(assert (= (and start!82348 res!416523) b!916098))

(assert (= (and b!916098 (not res!416524)) b!916094))

(assert (= (and b!916094 (not res!416525)) b!916092))

(assert (= (and b!916092 (not res!416526)) b!916091))

(assert (= (and start!82348 (is-ElementMatch!2458 r!15766)) b!916090))

(assert (= (and start!82348 (is-Concat!4291 r!15766)) b!916097))

(assert (= (and start!82348 (is-Star!2458 r!15766)) b!916096))

(assert (= (and start!82348 (is-Union!2458 r!15766)) b!916093))

(assert (= (and start!82348 (is-Cons!9672 s!10566)) b!916095))

(declare-fun m!1145537 () Bool)

(assert (=> b!916091 m!1145537))

(declare-fun m!1145539 () Bool)

(assert (=> b!916091 m!1145539))

(declare-fun m!1145541 () Bool)

(assert (=> b!916091 m!1145541))

(declare-fun m!1145543 () Bool)

(assert (=> start!82348 m!1145543))

(declare-fun m!1145545 () Bool)

(assert (=> b!916092 m!1145545))

(declare-fun m!1145547 () Bool)

(assert (=> b!916092 m!1145547))

(declare-fun m!1145549 () Bool)

(assert (=> b!916092 m!1145549))

(declare-fun m!1145551 () Bool)

(assert (=> b!916094 m!1145551))

(declare-fun m!1145553 () Bool)

(assert (=> b!916094 m!1145553))

(declare-fun m!1145555 () Bool)

(assert (=> b!916094 m!1145555))

(declare-fun m!1145557 () Bool)

(assert (=> b!916094 m!1145557))

(declare-fun m!1145559 () Bool)

(assert (=> b!916094 m!1145559))

(declare-fun m!1145561 () Bool)

(assert (=> b!916094 m!1145561))

(declare-fun m!1145563 () Bool)

(assert (=> b!916094 m!1145563))

(assert (=> b!916094 m!1145555))

(assert (=> b!916094 m!1145551))

(declare-fun m!1145565 () Bool)

(assert (=> b!916098 m!1145565))

(declare-fun m!1145567 () Bool)

(assert (=> b!916098 m!1145567))

(declare-fun m!1145569 () Bool)

(assert (=> b!916098 m!1145569))

(push 1)

(assert (not b!916093))

(assert tp_is_empty!4559)

(assert (not b!916094))

(assert (not b!916098))

(assert (not b!916096))

(assert (not start!82348))

(assert (not b!916097))

(assert (not b!916091))

(assert (not b!916092))

(assert (not b!916095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!279801 () Bool)

(declare-fun isEmpty!5904 (Option!2093) Bool)

(assert (=> d!279801 (= (isDefined!1735 (findConcatSeparation!199 (regOne!5428 r!15766) (regTwo!5428 r!15766) Nil!9672 s!10566 s!10566)) (not (isEmpty!5904 (findConcatSeparation!199 (regOne!5428 r!15766) (regTwo!5428 r!15766) Nil!9672 s!10566 s!10566))))))

(declare-fun bs!236062 () Bool)

(assert (= bs!236062 d!279801))

(assert (=> bs!236062 m!1145551))

(declare-fun m!1145605 () Bool)

(assert (=> bs!236062 m!1145605))

(assert (=> b!916094 d!279801))

(declare-fun bs!236063 () Bool)

(declare-fun d!279803 () Bool)

(assert (= bs!236063 (and d!279803 b!916094)))

(declare-fun lambda!29503 () Int)

(assert (=> bs!236063 (= lambda!29503 lambda!29491)))

(assert (=> bs!236063 (not (= lambda!29503 lambda!29492))))

(assert (=> d!279803 true))

(assert (=> d!279803 true))

(assert (=> d!279803 true))

(assert (=> d!279803 (= (isDefined!1735 (findConcatSeparation!199 (regOne!5428 r!15766) (regTwo!5428 r!15766) Nil!9672 s!10566 s!10566)) (Exists!229 lambda!29503))))

(declare-fun lt!337536 () Unit!14535)

(declare-fun choose!5588 (Regex!2458 Regex!2458 List!9688) Unit!14535)

(assert (=> d!279803 (= lt!337536 (choose!5588 (regOne!5428 r!15766) (regTwo!5428 r!15766) s!10566))))

(assert (=> d!279803 (validRegex!927 (regOne!5428 r!15766))))

(assert (=> d!279803 (= (lemmaFindConcatSeparationEquivalentToExists!199 (regOne!5428 r!15766) (regTwo!5428 r!15766) s!10566) lt!337536)))

(declare-fun bs!236064 () Bool)

(assert (= bs!236064 d!279803))

(assert (=> bs!236064 m!1145551))

(assert (=> bs!236064 m!1145553))

(declare-fun m!1145607 () Bool)

(assert (=> bs!236064 m!1145607))

(assert (=> bs!236064 m!1145537))

(assert (=> bs!236064 m!1145551))

(declare-fun m!1145609 () Bool)

(assert (=> bs!236064 m!1145609))

(assert (=> b!916094 d!279803))

(declare-fun b!916204 () Bool)

(declare-fun e!597056 () Option!2093)

(assert (=> b!916204 (= e!597056 None!2092)))

(declare-fun b!916205 () Bool)

(declare-fun e!597057 () Option!2093)

(assert (=> b!916205 (= e!597057 e!597056)))

(declare-fun c!148479 () Bool)

(assert (=> b!916205 (= c!148479 (is-Nil!9672 s!10566))))

(declare-fun b!916206 () Bool)

(assert (=> b!916206 (= e!597057 (Some!2092 (tuple2!10903 Nil!9672 s!10566)))))

(declare-fun b!916207 () Bool)

(declare-fun lt!337544 () Unit!14535)

(declare-fun lt!337545 () Unit!14535)

(assert (=> b!916207 (= lt!337544 lt!337545)))

(declare-fun ++!2551 (List!9688 List!9688) List!9688)

(assert (=> b!916207 (= (++!2551 (++!2551 Nil!9672 (Cons!9672 (h!15073 s!10566) Nil!9672)) (t!100734 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!166 (List!9688 C!5486 List!9688 List!9688) Unit!14535)

(assert (=> b!916207 (= lt!337545 (lemmaMoveElementToOtherListKeepsConcatEq!166 Nil!9672 (h!15073 s!10566) (t!100734 s!10566) s!10566))))

(assert (=> b!916207 (= e!597056 (findConcatSeparation!199 (regOne!5428 r!15766) (regTwo!5428 r!15766) (++!2551 Nil!9672 (Cons!9672 (h!15073 s!10566) Nil!9672)) (t!100734 s!10566) s!10566))))

(declare-fun d!279807 () Bool)

(declare-fun e!597054 () Bool)

(assert (=> d!279807 e!597054))

(declare-fun res!416589 () Bool)

(assert (=> d!279807 (=> res!416589 e!597054)))

(declare-fun e!597055 () Bool)

(assert (=> d!279807 (= res!416589 e!597055)))

(declare-fun res!416587 () Bool)

(assert (=> d!279807 (=> (not res!416587) (not e!597055))))

(declare-fun lt!337543 () Option!2093)

(assert (=> d!279807 (= res!416587 (isDefined!1735 lt!337543))))

(assert (=> d!279807 (= lt!337543 e!597057)))

(declare-fun c!148480 () Bool)

(declare-fun e!597058 () Bool)

(assert (=> d!279807 (= c!148480 e!597058)))

(declare-fun res!416588 () Bool)

(assert (=> d!279807 (=> (not res!416588) (not e!597058))))

(assert (=> d!279807 (= res!416588 (matchR!996 (regOne!5428 r!15766) Nil!9672))))

(assert (=> d!279807 (validRegex!927 (regOne!5428 r!15766))))

(assert (=> d!279807 (= (findConcatSeparation!199 (regOne!5428 r!15766) (regTwo!5428 r!15766) Nil!9672 s!10566 s!10566) lt!337543)))

(declare-fun b!916208 () Bool)

(assert (=> b!916208 (= e!597054 (not (isDefined!1735 lt!337543)))))

(declare-fun b!916209 () Bool)

(declare-fun res!416586 () Bool)

(assert (=> b!916209 (=> (not res!416586) (not e!597055))))

(declare-fun get!3136 (Option!2093) tuple2!10902)

(assert (=> b!916209 (= res!416586 (matchR!996 (regTwo!5428 r!15766) (_2!6277 (get!3136 lt!337543))))))

(declare-fun b!916210 () Bool)

(assert (=> b!916210 (= e!597058 (matchR!996 (regTwo!5428 r!15766) s!10566))))

(declare-fun b!916211 () Bool)

(declare-fun res!416585 () Bool)

(assert (=> b!916211 (=> (not res!416585) (not e!597055))))

(assert (=> b!916211 (= res!416585 (matchR!996 (regOne!5428 r!15766) (_1!6277 (get!3136 lt!337543))))))

(declare-fun b!916212 () Bool)

(assert (=> b!916212 (= e!597055 (= (++!2551 (_1!6277 (get!3136 lt!337543)) (_2!6277 (get!3136 lt!337543))) s!10566))))

(assert (= (and d!279807 res!416588) b!916210))

(assert (= (and d!279807 c!148480) b!916206))

(assert (= (and d!279807 (not c!148480)) b!916205))

(assert (= (and b!916205 c!148479) b!916204))

(assert (= (and b!916205 (not c!148479)) b!916207))

(assert (= (and d!279807 res!416587) b!916211))

(assert (= (and b!916211 res!416585) b!916209))

(assert (= (and b!916209 res!416586) b!916212))

(assert (= (and d!279807 (not res!416589)) b!916208))

(declare-fun m!1145623 () Bool)

(assert (=> d!279807 m!1145623))

(declare-fun m!1145625 () Bool)

(assert (=> d!279807 m!1145625))

(assert (=> d!279807 m!1145537))

(declare-fun m!1145627 () Bool)

(assert (=> b!916212 m!1145627))

(declare-fun m!1145629 () Bool)

(assert (=> b!916212 m!1145629))

(declare-fun m!1145631 () Bool)

(assert (=> b!916207 m!1145631))

(assert (=> b!916207 m!1145631))

(declare-fun m!1145633 () Bool)

(assert (=> b!916207 m!1145633))

(declare-fun m!1145635 () Bool)

(assert (=> b!916207 m!1145635))

(assert (=> b!916207 m!1145631))

(declare-fun m!1145637 () Bool)

(assert (=> b!916207 m!1145637))

(assert (=> b!916209 m!1145627))

(declare-fun m!1145639 () Bool)

(assert (=> b!916209 m!1145639))

(assert (=> b!916211 m!1145627))

(declare-fun m!1145641 () Bool)

(assert (=> b!916211 m!1145641))

(assert (=> b!916208 m!1145623))

(declare-fun m!1145643 () Bool)

(assert (=> b!916210 m!1145643))

(assert (=> b!916094 d!279807))

(declare-fun d!279813 () Bool)

(declare-fun choose!5589 (Int) Bool)

(assert (=> d!279813 (= (Exists!229 lambda!29491) (choose!5589 lambda!29491))))

(declare-fun bs!236065 () Bool)

(assert (= bs!236065 d!279813))

(declare-fun m!1145645 () Bool)

(assert (=> bs!236065 m!1145645))

(assert (=> b!916094 d!279813))

(declare-fun bs!236066 () Bool)

(declare-fun d!279815 () Bool)

(assert (= bs!236066 (and d!279815 b!916094)))

(declare-fun lambda!29508 () Int)

(assert (=> bs!236066 (= lambda!29508 lambda!29491)))

(assert (=> bs!236066 (not (= lambda!29508 lambda!29492))))

(declare-fun bs!236067 () Bool)

(assert (= bs!236067 (and d!279815 d!279803)))

(assert (=> bs!236067 (= lambda!29508 lambda!29503)))

(assert (=> d!279815 true))

(assert (=> d!279815 true))

(assert (=> d!279815 true))

(declare-fun lambda!29509 () Int)

(assert (=> bs!236066 (not (= lambda!29509 lambda!29491))))

(assert (=> bs!236066 (= lambda!29509 lambda!29492)))

(assert (=> bs!236067 (not (= lambda!29509 lambda!29503))))

(declare-fun bs!236068 () Bool)

(assert (= bs!236068 d!279815))

(assert (=> bs!236068 (not (= lambda!29509 lambda!29508))))

(assert (=> d!279815 true))

(assert (=> d!279815 true))

(assert (=> d!279815 true))

(assert (=> d!279815 (= (Exists!229 lambda!29508) (Exists!229 lambda!29509))))

(declare-fun lt!337548 () Unit!14535)

(declare-fun choose!5590 (Regex!2458 Regex!2458 List!9688) Unit!14535)

(assert (=> d!279815 (= lt!337548 (choose!5590 (regOne!5428 r!15766) (regTwo!5428 r!15766) s!10566))))

(assert (=> d!279815 (validRegex!927 (regOne!5428 r!15766))))

(assert (=> d!279815 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!141 (regOne!5428 r!15766) (regTwo!5428 r!15766) s!10566) lt!337548)))

(declare-fun m!1145647 () Bool)

(assert (=> bs!236068 m!1145647))

(declare-fun m!1145649 () Bool)

(assert (=> bs!236068 m!1145649))

(declare-fun m!1145651 () Bool)

(assert (=> bs!236068 m!1145651))

(assert (=> bs!236068 m!1145537))

(assert (=> b!916094 d!279815))

(declare-fun d!279817 () Bool)

(assert (=> d!279817 (= (isEmpty!5902 s!10566) (is-Nil!9672 s!10566))))

(assert (=> b!916094 d!279817))

(declare-fun d!279819 () Bool)

(assert (=> d!279819 (= (Exists!229 lambda!29492) (choose!5589 lambda!29492))))

(declare-fun bs!236069 () Bool)

(assert (= bs!236069 d!279819))

(declare-fun m!1145653 () Bool)

(assert (=> bs!236069 m!1145653))

(assert (=> b!916094 d!279819))

(declare-fun d!279821 () Bool)

(declare-fun res!416623 () Bool)

(declare-fun e!597095 () Bool)

(assert (=> d!279821 (=> res!416623 e!597095)))

(assert (=> d!279821 (= res!416623 (is-ElementMatch!2458 r!15766))))

(assert (=> d!279821 (= (validRegex!927 r!15766) e!597095)))

(declare-fun b!916267 () Bool)

(declare-fun e!597098 () Bool)

(assert (=> b!916267 (= e!597095 e!597098)))

(declare-fun c!148493 () Bool)

(assert (=> b!916267 (= c!148493 (is-Star!2458 r!15766))))

(declare-fun b!916268 () Bool)

(declare-fun e!597099 () Bool)

(declare-fun call!55382 () Bool)

(assert (=> b!916268 (= e!597099 call!55382)))

(declare-fun bm!55375 () Bool)

(declare-fun call!55381 () Bool)

(declare-fun c!148494 () Bool)

(assert (=> bm!55375 (= call!55381 (validRegex!927 (ite c!148493 (reg!2787 r!15766) (ite c!148494 (regTwo!5429 r!15766) (regTwo!5428 r!15766)))))))

(declare-fun b!916269 () Bool)

(declare-fun e!597097 () Bool)

(assert (=> b!916269 (= e!597098 e!597097)))

(assert (=> b!916269 (= c!148494 (is-Union!2458 r!15766))))

(declare-fun b!916270 () Bool)

(declare-fun e!597094 () Bool)

(assert (=> b!916270 (= e!597094 call!55382)))

(declare-fun b!916271 () Bool)

(declare-fun res!416622 () Bool)

(declare-fun e!597096 () Bool)

(assert (=> b!916271 (=> res!416622 e!597096)))

(assert (=> b!916271 (= res!416622 (not (is-Concat!4291 r!15766)))))

(assert (=> b!916271 (= e!597097 e!597096)))

(declare-fun bm!55376 () Bool)

(assert (=> bm!55376 (= call!55382 call!55381)))

(declare-fun b!916272 () Bool)

(declare-fun e!597093 () Bool)

(assert (=> b!916272 (= e!597098 e!597093)))

(declare-fun res!416624 () Bool)

(declare-fun nullable!674 (Regex!2458) Bool)

(assert (=> b!916272 (= res!416624 (not (nullable!674 (reg!2787 r!15766))))))

(assert (=> b!916272 (=> (not res!416624) (not e!597093))))

(declare-fun bm!55377 () Bool)

(declare-fun call!55380 () Bool)

(assert (=> bm!55377 (= call!55380 (validRegex!927 (ite c!148494 (regOne!5429 r!15766) (regOne!5428 r!15766))))))

(declare-fun b!916273 () Bool)

(declare-fun res!416621 () Bool)

(assert (=> b!916273 (=> (not res!416621) (not e!597094))))

(assert (=> b!916273 (= res!416621 call!55380)))

(assert (=> b!916273 (= e!597097 e!597094)))

(declare-fun b!916274 () Bool)

(assert (=> b!916274 (= e!597093 call!55381)))

(declare-fun b!916275 () Bool)

(assert (=> b!916275 (= e!597096 e!597099)))

(declare-fun res!416620 () Bool)

(assert (=> b!916275 (=> (not res!416620) (not e!597099))))

(assert (=> b!916275 (= res!416620 call!55380)))

(assert (= (and d!279821 (not res!416623)) b!916267))

(assert (= (and b!916267 c!148493) b!916272))

(assert (= (and b!916267 (not c!148493)) b!916269))

(assert (= (and b!916272 res!416624) b!916274))

(assert (= (and b!916269 c!148494) b!916273))

(assert (= (and b!916269 (not c!148494)) b!916271))

(assert (= (and b!916273 res!416621) b!916270))

(assert (= (and b!916271 (not res!416622)) b!916275))

(assert (= (and b!916275 res!416620) b!916268))

(assert (= (or b!916270 b!916268) bm!55376))

(assert (= (or b!916273 b!916275) bm!55377))

(assert (= (or b!916274 bm!55376) bm!55375))

(declare-fun m!1145655 () Bool)

(assert (=> bm!55375 m!1145655))

(declare-fun m!1145657 () Bool)

(assert (=> b!916272 m!1145657))

(declare-fun m!1145659 () Bool)

(assert (=> bm!55377 m!1145659))

(assert (=> start!82348 d!279821))

(declare-fun b!916308 () Bool)

(declare-fun e!597117 () Bool)

(declare-fun head!1637 (List!9688) C!5486)

(assert (=> b!916308 (= e!597117 (= (head!1637 s!10566) (c!148465 lt!337514)))))

(declare-fun b!916309 () Bool)

(declare-fun e!597122 () Bool)

(declare-fun e!597116 () Bool)

(assert (=> b!916309 (= e!597122 e!597116)))

(declare-fun res!416648 () Bool)

(assert (=> b!916309 (=> res!416648 e!597116)))

(declare-fun call!55389 () Bool)

(assert (=> b!916309 (= res!416648 call!55389)))

(declare-fun b!916310 () Bool)

(declare-fun res!416646 () Bool)

(declare-fun e!597121 () Bool)

(assert (=> b!916310 (=> res!416646 e!597121)))

(assert (=> b!916310 (= res!416646 (not (is-ElementMatch!2458 lt!337514)))))

(declare-fun e!597118 () Bool)

(assert (=> b!916310 (= e!597118 e!597121)))

(declare-fun b!916311 () Bool)

(assert (=> b!916311 (= e!597121 e!597122)))

(declare-fun res!416647 () Bool)

(assert (=> b!916311 (=> (not res!416647) (not e!597122))))

(declare-fun lt!337551 () Bool)

(assert (=> b!916311 (= res!416647 (not lt!337551))))

(declare-fun b!916312 () Bool)

(assert (=> b!916312 (= e!597116 (not (= (head!1637 s!10566) (c!148465 lt!337514))))))

(declare-fun b!916313 () Bool)

(declare-fun res!416649 () Bool)

(assert (=> b!916313 (=> (not res!416649) (not e!597117))))

(assert (=> b!916313 (= res!416649 (not call!55389))))

(declare-fun b!916314 () Bool)

(declare-fun res!416652 () Bool)

(assert (=> b!916314 (=> res!416652 e!597116)))

(declare-fun tail!1199 (List!9688) List!9688)

(assert (=> b!916314 (= res!416652 (not (isEmpty!5902 (tail!1199 s!10566))))))

(declare-fun b!916315 () Bool)

(declare-fun e!597120 () Bool)

(assert (=> b!916315 (= e!597120 e!597118)))

(declare-fun c!148502 () Bool)

(assert (=> b!916315 (= c!148502 (is-EmptyLang!2458 lt!337514))))

(declare-fun d!279823 () Bool)

(assert (=> d!279823 e!597120))

(declare-fun c!148501 () Bool)

(assert (=> d!279823 (= c!148501 (is-EmptyExpr!2458 lt!337514))))

(declare-fun e!597119 () Bool)

(assert (=> d!279823 (= lt!337551 e!597119)))

(declare-fun c!148503 () Bool)

(assert (=> d!279823 (= c!148503 (isEmpty!5902 s!10566))))

(assert (=> d!279823 (validRegex!927 lt!337514)))

(assert (=> d!279823 (= (matchR!996 lt!337514 s!10566) lt!337551)))

(declare-fun b!916316 () Bool)

(assert (=> b!916316 (= e!597119 (nullable!674 lt!337514))))

(declare-fun b!916317 () Bool)

(declare-fun derivativeStep!484 (Regex!2458 C!5486) Regex!2458)

(assert (=> b!916317 (= e!597119 (matchR!996 (derivativeStep!484 lt!337514 (head!1637 s!10566)) (tail!1199 s!10566)))))

(declare-fun bm!55384 () Bool)

(assert (=> bm!55384 (= call!55389 (isEmpty!5902 s!10566))))

(declare-fun b!916318 () Bool)

(assert (=> b!916318 (= e!597118 (not lt!337551))))

(declare-fun b!916319 () Bool)

(declare-fun res!416645 () Bool)

(assert (=> b!916319 (=> res!416645 e!597121)))

(assert (=> b!916319 (= res!416645 e!597117)))

(declare-fun res!416650 () Bool)

(assert (=> b!916319 (=> (not res!416650) (not e!597117))))

(assert (=> b!916319 (= res!416650 lt!337551)))

(declare-fun b!916320 () Bool)

(declare-fun res!416651 () Bool)

(assert (=> b!916320 (=> (not res!416651) (not e!597117))))

(assert (=> b!916320 (= res!416651 (isEmpty!5902 (tail!1199 s!10566)))))

(declare-fun b!916321 () Bool)

(assert (=> b!916321 (= e!597120 (= lt!337551 call!55389))))

(assert (= (and d!279823 c!148503) b!916316))

(assert (= (and d!279823 (not c!148503)) b!916317))

(assert (= (and d!279823 c!148501) b!916321))

(assert (= (and d!279823 (not c!148501)) b!916315))

(assert (= (and b!916315 c!148502) b!916318))

(assert (= (and b!916315 (not c!148502)) b!916310))

(assert (= (and b!916310 (not res!416646)) b!916319))

(assert (= (and b!916319 res!416650) b!916313))

(assert (= (and b!916313 res!416649) b!916320))

(assert (= (and b!916320 res!416651) b!916308))

(assert (= (and b!916319 (not res!416645)) b!916311))

(assert (= (and b!916311 res!416647) b!916309))

(assert (= (and b!916309 (not res!416648)) b!916314))

(assert (= (and b!916314 (not res!416652)) b!916312))

(assert (= (or b!916321 b!916309 b!916313) bm!55384))

(declare-fun m!1145661 () Bool)

(assert (=> b!916320 m!1145661))

(assert (=> b!916320 m!1145661))

(declare-fun m!1145663 () Bool)

(assert (=> b!916320 m!1145663))

(declare-fun m!1145665 () Bool)

(assert (=> b!916308 m!1145665))

(assert (=> bm!55384 m!1145557))

(declare-fun m!1145667 () Bool)

(assert (=> b!916316 m!1145667))

(assert (=> b!916314 m!1145661))

(assert (=> b!916314 m!1145661))

(assert (=> b!916314 m!1145663))

(assert (=> d!279823 m!1145557))

(declare-fun m!1145669 () Bool)

(assert (=> d!279823 m!1145669))

(assert (=> b!916312 m!1145665))

(assert (=> b!916317 m!1145665))

(assert (=> b!916317 m!1145665))

(declare-fun m!1145671 () Bool)

(assert (=> b!916317 m!1145671))

(assert (=> b!916317 m!1145661))

(assert (=> b!916317 m!1145671))

(assert (=> b!916317 m!1145661))

(declare-fun m!1145673 () Bool)

(assert (=> b!916317 m!1145673))

(assert (=> b!916092 d!279823))

(declare-fun b!916355 () Bool)

(declare-fun e!597142 () Regex!2458)

(declare-fun call!55405 () Regex!2458)

(assert (=> b!916355 (= e!597142 call!55405)))

(declare-fun bm!55397 () Bool)

(declare-fun call!55404 () Regex!2458)

(declare-fun call!55406 () Regex!2458)

(assert (=> bm!55397 (= call!55404 call!55406)))

(declare-fun b!916356 () Bool)

(declare-fun c!148521 () Bool)

(assert (=> b!916356 (= c!148521 (is-Concat!4291 (regOne!5428 r!15766)))))

(declare-fun e!597147 () Regex!2458)

(assert (=> b!916356 (= e!597142 e!597147)))

(declare-fun b!916357 () Bool)

(declare-fun e!597144 () Regex!2458)

(declare-fun call!55403 () Regex!2458)

(assert (=> b!916357 (= e!597144 call!55403)))

(declare-fun d!279825 () Bool)

(declare-fun e!597143 () Bool)

(assert (=> d!279825 e!597143))

(declare-fun res!416658 () Bool)

(assert (=> d!279825 (=> (not res!416658) (not e!597143))))

(declare-fun lt!337554 () Regex!2458)

(assert (=> d!279825 (= res!416658 (validRegex!927 lt!337554))))

(assert (=> d!279825 (= lt!337554 e!597144)))

(declare-fun c!148520 () Bool)

(assert (=> d!279825 (= c!148520 (and (is-Concat!4291 (regOne!5428 r!15766)) (is-EmptyExpr!2458 (regOne!5428 (regOne!5428 r!15766)))))))

(assert (=> d!279825 (validRegex!927 (regOne!5428 r!15766))))

(assert (=> d!279825 (= (removeUselessConcat!135 (regOne!5428 r!15766)) lt!337554)))

(declare-fun b!916358 () Bool)

(declare-fun e!597146 () Regex!2458)

(declare-fun call!55402 () Regex!2458)

(assert (=> b!916358 (= e!597146 (Union!2458 call!55402 call!55404))))

(declare-fun bm!55398 () Bool)

(assert (=> bm!55398 (= call!55405 call!55403)))

(declare-fun bm!55399 () Bool)

(declare-fun c!148518 () Bool)

(declare-fun c!148522 () Bool)

(assert (=> bm!55399 (= call!55403 (removeUselessConcat!135 (ite c!148520 (regTwo!5428 (regOne!5428 r!15766)) (ite c!148522 (regOne!5428 (regOne!5428 r!15766)) (ite c!148521 (regTwo!5428 (regOne!5428 r!15766)) (ite c!148518 (regTwo!5429 (regOne!5428 r!15766)) (reg!2787 (regOne!5428 r!15766))))))))))

(declare-fun b!916359 () Bool)

(declare-fun c!148519 () Bool)

(assert (=> b!916359 (= c!148519 (is-Star!2458 (regOne!5428 r!15766)))))

(declare-fun e!597145 () Regex!2458)

(assert (=> b!916359 (= e!597146 e!597145)))

(declare-fun bm!55400 () Bool)

(assert (=> bm!55400 (= call!55406 call!55405)))

(declare-fun b!916360 () Bool)

(assert (=> b!916360 (= e!597147 e!597146)))

(assert (=> b!916360 (= c!148518 (is-Union!2458 (regOne!5428 r!15766)))))

(declare-fun b!916361 () Bool)

(assert (=> b!916361 (= e!597147 (Concat!4291 call!55402 call!55406))))

(declare-fun b!916362 () Bool)

(assert (=> b!916362 (= e!597145 (Star!2458 call!55404))))

(declare-fun bm!55401 () Bool)

(assert (=> bm!55401 (= call!55402 (removeUselessConcat!135 (ite c!148521 (regOne!5428 (regOne!5428 r!15766)) (regOne!5429 (regOne!5428 r!15766)))))))

(declare-fun b!916363 () Bool)

(assert (=> b!916363 (= e!597144 e!597142)))

(assert (=> b!916363 (= c!148522 (and (is-Concat!4291 (regOne!5428 r!15766)) (is-EmptyExpr!2458 (regTwo!5428 (regOne!5428 r!15766)))))))

(declare-fun b!916364 () Bool)

(assert (=> b!916364 (= e!597145 (regOne!5428 r!15766))))

(declare-fun b!916365 () Bool)

(assert (=> b!916365 (= e!597143 (= (nullable!674 lt!337554) (nullable!674 (regOne!5428 r!15766))))))

(assert (= (and d!279825 c!148520) b!916357))

(assert (= (and d!279825 (not c!148520)) b!916363))

(assert (= (and b!916363 c!148522) b!916355))

(assert (= (and b!916363 (not c!148522)) b!916356))

(assert (= (and b!916356 c!148521) b!916361))

(assert (= (and b!916356 (not c!148521)) b!916360))

(assert (= (and b!916360 c!148518) b!916358))

(assert (= (and b!916360 (not c!148518)) b!916359))

(assert (= (and b!916359 c!148519) b!916362))

(assert (= (and b!916359 (not c!148519)) b!916364))

(assert (= (or b!916358 b!916362) bm!55397))

(assert (= (or b!916361 bm!55397) bm!55400))

(assert (= (or b!916361 b!916358) bm!55401))

(assert (= (or b!916355 bm!55400) bm!55398))

(assert (= (or b!916357 bm!55398) bm!55399))

(assert (= (and d!279825 res!416658) b!916365))

(declare-fun m!1145681 () Bool)

(assert (=> d!279825 m!1145681))

(assert (=> d!279825 m!1145537))

(declare-fun m!1145683 () Bool)

(assert (=> bm!55399 m!1145683))

(declare-fun m!1145685 () Bool)

(assert (=> bm!55401 m!1145685))

(declare-fun m!1145687 () Bool)

(assert (=> b!916365 m!1145687))

(declare-fun m!1145689 () Bool)

(assert (=> b!916365 m!1145689))

(assert (=> b!916092 d!279825))

(declare-fun b!916366 () Bool)

(declare-fun e!597148 () Regex!2458)

(declare-fun call!55410 () Regex!2458)

(assert (=> b!916366 (= e!597148 call!55410)))

(declare-fun bm!55402 () Bool)

(declare-fun call!55409 () Regex!2458)

(declare-fun call!55411 () Regex!2458)

(assert (=> bm!55402 (= call!55409 call!55411)))

(declare-fun b!916367 () Bool)

(declare-fun c!148526 () Bool)

(assert (=> b!916367 (= c!148526 (is-Concat!4291 (regTwo!5428 r!15766)))))

(declare-fun e!597153 () Regex!2458)

(assert (=> b!916367 (= e!597148 e!597153)))

(declare-fun b!916368 () Bool)

(declare-fun e!597150 () Regex!2458)

(declare-fun call!55408 () Regex!2458)

(assert (=> b!916368 (= e!597150 call!55408)))

(declare-fun d!279829 () Bool)

(declare-fun e!597149 () Bool)

(assert (=> d!279829 e!597149))

(declare-fun res!416659 () Bool)

(assert (=> d!279829 (=> (not res!416659) (not e!597149))))

(declare-fun lt!337555 () Regex!2458)

(assert (=> d!279829 (= res!416659 (validRegex!927 lt!337555))))

(assert (=> d!279829 (= lt!337555 e!597150)))

(declare-fun c!148525 () Bool)

(assert (=> d!279829 (= c!148525 (and (is-Concat!4291 (regTwo!5428 r!15766)) (is-EmptyExpr!2458 (regOne!5428 (regTwo!5428 r!15766)))))))

(assert (=> d!279829 (validRegex!927 (regTwo!5428 r!15766))))

(assert (=> d!279829 (= (removeUselessConcat!135 (regTwo!5428 r!15766)) lt!337555)))

(declare-fun b!916369 () Bool)

(declare-fun e!597152 () Regex!2458)

(declare-fun call!55407 () Regex!2458)

(assert (=> b!916369 (= e!597152 (Union!2458 call!55407 call!55409))))

(declare-fun bm!55403 () Bool)

(assert (=> bm!55403 (= call!55410 call!55408)))

(declare-fun c!148527 () Bool)

(declare-fun bm!55404 () Bool)

(declare-fun c!148523 () Bool)

(assert (=> bm!55404 (= call!55408 (removeUselessConcat!135 (ite c!148525 (regTwo!5428 (regTwo!5428 r!15766)) (ite c!148527 (regOne!5428 (regTwo!5428 r!15766)) (ite c!148526 (regTwo!5428 (regTwo!5428 r!15766)) (ite c!148523 (regTwo!5429 (regTwo!5428 r!15766)) (reg!2787 (regTwo!5428 r!15766))))))))))

(declare-fun b!916370 () Bool)

(declare-fun c!148524 () Bool)

(assert (=> b!916370 (= c!148524 (is-Star!2458 (regTwo!5428 r!15766)))))

(declare-fun e!597151 () Regex!2458)

(assert (=> b!916370 (= e!597152 e!597151)))

(declare-fun bm!55405 () Bool)

(assert (=> bm!55405 (= call!55411 call!55410)))

(declare-fun b!916371 () Bool)

(assert (=> b!916371 (= e!597153 e!597152)))

(assert (=> b!916371 (= c!148523 (is-Union!2458 (regTwo!5428 r!15766)))))

(declare-fun b!916372 () Bool)

(assert (=> b!916372 (= e!597153 (Concat!4291 call!55407 call!55411))))

(declare-fun b!916373 () Bool)

(assert (=> b!916373 (= e!597151 (Star!2458 call!55409))))

(declare-fun bm!55406 () Bool)

(assert (=> bm!55406 (= call!55407 (removeUselessConcat!135 (ite c!148526 (regOne!5428 (regTwo!5428 r!15766)) (regOne!5429 (regTwo!5428 r!15766)))))))

(declare-fun b!916374 () Bool)

(assert (=> b!916374 (= e!597150 e!597148)))

(assert (=> b!916374 (= c!148527 (and (is-Concat!4291 (regTwo!5428 r!15766)) (is-EmptyExpr!2458 (regTwo!5428 (regTwo!5428 r!15766)))))))

(declare-fun b!916375 () Bool)

(assert (=> b!916375 (= e!597151 (regTwo!5428 r!15766))))

(declare-fun b!916376 () Bool)

(assert (=> b!916376 (= e!597149 (= (nullable!674 lt!337555) (nullable!674 (regTwo!5428 r!15766))))))

(assert (= (and d!279829 c!148525) b!916368))

(assert (= (and d!279829 (not c!148525)) b!916374))

(assert (= (and b!916374 c!148527) b!916366))

(assert (= (and b!916374 (not c!148527)) b!916367))

(assert (= (and b!916367 c!148526) b!916372))

(assert (= (and b!916367 (not c!148526)) b!916371))

(assert (= (and b!916371 c!148523) b!916369))

(assert (= (and b!916371 (not c!148523)) b!916370))

(assert (= (and b!916370 c!148524) b!916373))

(assert (= (and b!916370 (not c!148524)) b!916375))

(assert (= (or b!916369 b!916373) bm!55402))

(assert (= (or b!916372 bm!55402) bm!55405))

(assert (= (or b!916372 b!916369) bm!55406))

(assert (= (or b!916366 bm!55405) bm!55403))

(assert (= (or b!916368 bm!55403) bm!55404))

(assert (= (and d!279829 res!416659) b!916376))

(declare-fun m!1145691 () Bool)

(assert (=> d!279829 m!1145691))

(declare-fun m!1145693 () Bool)

(assert (=> d!279829 m!1145693))

(declare-fun m!1145695 () Bool)

(assert (=> bm!55404 m!1145695))

(declare-fun m!1145697 () Bool)

(assert (=> bm!55406 m!1145697))

(declare-fun m!1145699 () Bool)

(assert (=> b!916376 m!1145699))

(declare-fun m!1145701 () Bool)

(assert (=> b!916376 m!1145701))

(assert (=> b!916092 d!279829))

(declare-fun bs!236074 () Bool)

(declare-fun b!916416 () Bool)

(assert (= bs!236074 (and b!916416 d!279815)))

(declare-fun lambda!29520 () Int)

(assert (=> bs!236074 (not (= lambda!29520 lambda!29508))))

(assert (=> bs!236074 (not (= lambda!29520 lambda!29509))))

(declare-fun bs!236075 () Bool)

(assert (= bs!236075 (and b!916416 d!279803)))

(assert (=> bs!236075 (not (= lambda!29520 lambda!29503))))

(declare-fun bs!236076 () Bool)

(assert (= bs!236076 (and b!916416 b!916094)))

(assert (=> bs!236076 (not (= lambda!29520 lambda!29491))))

(assert (=> bs!236076 (not (= lambda!29520 lambda!29492))))

(assert (=> b!916416 true))

(assert (=> b!916416 true))

(declare-fun bs!236077 () Bool)

(declare-fun b!916418 () Bool)

(assert (= bs!236077 (and b!916418 d!279815)))

(declare-fun lambda!29521 () Int)

(assert (=> bs!236077 (not (= lambda!29521 lambda!29508))))

(assert (=> bs!236077 (= lambda!29521 lambda!29509)))

(declare-fun bs!236078 () Bool)

(assert (= bs!236078 (and b!916418 d!279803)))

(assert (=> bs!236078 (not (= lambda!29521 lambda!29503))))

(declare-fun bs!236079 () Bool)

(assert (= bs!236079 (and b!916418 b!916416)))

(assert (=> bs!236079 (not (= lambda!29521 lambda!29520))))

(declare-fun bs!236080 () Bool)

(assert (= bs!236080 (and b!916418 b!916094)))

(assert (=> bs!236080 (not (= lambda!29521 lambda!29491))))

(assert (=> bs!236080 (= lambda!29521 lambda!29492)))

(assert (=> b!916418 true))

(assert (=> b!916418 true))

(declare-fun b!916409 () Bool)

(declare-fun e!597174 () Bool)

(declare-fun call!55417 () Bool)

(assert (=> b!916409 (= e!597174 call!55417)))

(declare-fun d!279831 () Bool)

(declare-fun c!148538 () Bool)

(assert (=> d!279831 (= c!148538 (is-EmptyExpr!2458 r!15766))))

(assert (=> d!279831 (= (matchRSpec!259 r!15766 s!10566) e!597174)))

(declare-fun b!916410 () Bool)

(declare-fun e!597177 () Bool)

(declare-fun e!597176 () Bool)

(assert (=> b!916410 (= e!597177 e!597176)))

(declare-fun c!148536 () Bool)

(assert (=> b!916410 (= c!148536 (is-Star!2458 r!15766))))

(declare-fun b!916411 () Bool)

(declare-fun c!148539 () Bool)

(assert (=> b!916411 (= c!148539 (is-Union!2458 r!15766))))

(declare-fun e!597173 () Bool)

(assert (=> b!916411 (= e!597173 e!597177)))

(declare-fun b!916412 () Bool)

(declare-fun c!148537 () Bool)

(assert (=> b!916412 (= c!148537 (is-ElementMatch!2458 r!15766))))

(declare-fun e!597175 () Bool)

(assert (=> b!916412 (= e!597175 e!597173)))

(declare-fun b!916413 () Bool)

(declare-fun e!597172 () Bool)

(assert (=> b!916413 (= e!597177 e!597172)))

(declare-fun res!416676 () Bool)

(assert (=> b!916413 (= res!416676 (matchRSpec!259 (regOne!5429 r!15766) s!10566))))

(assert (=> b!916413 (=> res!416676 e!597172)))

(declare-fun call!55416 () Bool)

(declare-fun bm!55411 () Bool)

(assert (=> bm!55411 (= call!55416 (Exists!229 (ite c!148536 lambda!29520 lambda!29521)))))

(declare-fun b!916414 () Bool)

(declare-fun res!416677 () Bool)

(declare-fun e!597178 () Bool)

(assert (=> b!916414 (=> res!416677 e!597178)))

(assert (=> b!916414 (= res!416677 call!55417)))

(assert (=> b!916414 (= e!597176 e!597178)))

(declare-fun b!916415 () Bool)

(assert (=> b!916415 (= e!597172 (matchRSpec!259 (regTwo!5429 r!15766) s!10566))))

(declare-fun bm!55412 () Bool)

(assert (=> bm!55412 (= call!55417 (isEmpty!5902 s!10566))))

(assert (=> b!916416 (= e!597178 call!55416)))

(declare-fun b!916417 () Bool)

(assert (=> b!916417 (= e!597174 e!597175)))

(declare-fun res!416678 () Bool)

(assert (=> b!916417 (= res!416678 (not (is-EmptyLang!2458 r!15766)))))

(assert (=> b!916417 (=> (not res!416678) (not e!597175))))

(assert (=> b!916418 (= e!597176 call!55416)))

(declare-fun b!916419 () Bool)

(assert (=> b!916419 (= e!597173 (= s!10566 (Cons!9672 (c!148465 r!15766) Nil!9672)))))

(assert (= (and d!279831 c!148538) b!916409))

(assert (= (and d!279831 (not c!148538)) b!916417))

(assert (= (and b!916417 res!416678) b!916412))

(assert (= (and b!916412 c!148537) b!916419))

(assert (= (and b!916412 (not c!148537)) b!916411))

(assert (= (and b!916411 c!148539) b!916413))

(assert (= (and b!916411 (not c!148539)) b!916410))

(assert (= (and b!916413 (not res!416676)) b!916415))

(assert (= (and b!916410 c!148536) b!916414))

(assert (= (and b!916410 (not c!148536)) b!916418))

(assert (= (and b!916414 (not res!416677)) b!916416))

(assert (= (or b!916416 b!916418) bm!55411))

(assert (= (or b!916409 b!916414) bm!55412))

(declare-fun m!1145707 () Bool)

(assert (=> b!916413 m!1145707))

(declare-fun m!1145709 () Bool)

(assert (=> bm!55411 m!1145709))

(declare-fun m!1145711 () Bool)

(assert (=> b!916415 m!1145711))

(assert (=> bm!55412 m!1145557))

(assert (=> b!916098 d!279831))

(declare-fun b!916420 () Bool)

(declare-fun e!597180 () Bool)

(assert (=> b!916420 (= e!597180 (= (head!1637 s!10566) (c!148465 r!15766)))))

(declare-fun b!916421 () Bool)

(declare-fun e!597185 () Bool)

(declare-fun e!597179 () Bool)

(assert (=> b!916421 (= e!597185 e!597179)))

(declare-fun res!416682 () Bool)

(assert (=> b!916421 (=> res!416682 e!597179)))

(declare-fun call!55418 () Bool)

(assert (=> b!916421 (= res!416682 call!55418)))

(declare-fun b!916422 () Bool)

(declare-fun res!416680 () Bool)

(declare-fun e!597184 () Bool)

(assert (=> b!916422 (=> res!416680 e!597184)))

(assert (=> b!916422 (= res!416680 (not (is-ElementMatch!2458 r!15766)))))

(declare-fun e!597181 () Bool)

(assert (=> b!916422 (= e!597181 e!597184)))

(declare-fun b!916423 () Bool)

(assert (=> b!916423 (= e!597184 e!597185)))

(declare-fun res!416681 () Bool)

(assert (=> b!916423 (=> (not res!416681) (not e!597185))))

(declare-fun lt!337559 () Bool)

(assert (=> b!916423 (= res!416681 (not lt!337559))))

(declare-fun b!916424 () Bool)

(assert (=> b!916424 (= e!597179 (not (= (head!1637 s!10566) (c!148465 r!15766))))))

(declare-fun b!916425 () Bool)

(declare-fun res!416683 () Bool)

(assert (=> b!916425 (=> (not res!416683) (not e!597180))))

(assert (=> b!916425 (= res!416683 (not call!55418))))

(declare-fun b!916426 () Bool)

(declare-fun res!416686 () Bool)

(assert (=> b!916426 (=> res!416686 e!597179)))

(assert (=> b!916426 (= res!416686 (not (isEmpty!5902 (tail!1199 s!10566))))))

(declare-fun b!916427 () Bool)

(declare-fun e!597183 () Bool)

(assert (=> b!916427 (= e!597183 e!597181)))

(declare-fun c!148541 () Bool)

(assert (=> b!916427 (= c!148541 (is-EmptyLang!2458 r!15766))))

(declare-fun d!279835 () Bool)

(assert (=> d!279835 e!597183))

(declare-fun c!148540 () Bool)

(assert (=> d!279835 (= c!148540 (is-EmptyExpr!2458 r!15766))))

(declare-fun e!597182 () Bool)

(assert (=> d!279835 (= lt!337559 e!597182)))

(declare-fun c!148542 () Bool)

(assert (=> d!279835 (= c!148542 (isEmpty!5902 s!10566))))

(assert (=> d!279835 (validRegex!927 r!15766)))

(assert (=> d!279835 (= (matchR!996 r!15766 s!10566) lt!337559)))

(declare-fun b!916428 () Bool)

(assert (=> b!916428 (= e!597182 (nullable!674 r!15766))))

(declare-fun b!916429 () Bool)

(assert (=> b!916429 (= e!597182 (matchR!996 (derivativeStep!484 r!15766 (head!1637 s!10566)) (tail!1199 s!10566)))))

(declare-fun bm!55413 () Bool)

(assert (=> bm!55413 (= call!55418 (isEmpty!5902 s!10566))))

(declare-fun b!916430 () Bool)

(assert (=> b!916430 (= e!597181 (not lt!337559))))

(declare-fun b!916431 () Bool)

(declare-fun res!416679 () Bool)

(assert (=> b!916431 (=> res!416679 e!597184)))

(assert (=> b!916431 (= res!416679 e!597180)))

(declare-fun res!416684 () Bool)

(assert (=> b!916431 (=> (not res!416684) (not e!597180))))

(assert (=> b!916431 (= res!416684 lt!337559)))

(declare-fun b!916432 () Bool)

(declare-fun res!416685 () Bool)

(assert (=> b!916432 (=> (not res!416685) (not e!597180))))

(assert (=> b!916432 (= res!416685 (isEmpty!5902 (tail!1199 s!10566)))))

(declare-fun b!916433 () Bool)

(assert (=> b!916433 (= e!597183 (= lt!337559 call!55418))))

(assert (= (and d!279835 c!148542) b!916428))

(assert (= (and d!279835 (not c!148542)) b!916429))

(assert (= (and d!279835 c!148540) b!916433))

(assert (= (and d!279835 (not c!148540)) b!916427))

(assert (= (and b!916427 c!148541) b!916430))

(assert (= (and b!916427 (not c!148541)) b!916422))

(assert (= (and b!916422 (not res!416680)) b!916431))

(assert (= (and b!916431 res!416684) b!916425))

(assert (= (and b!916425 res!416683) b!916432))

(assert (= (and b!916432 res!416685) b!916420))

(assert (= (and b!916431 (not res!416679)) b!916423))

(assert (= (and b!916423 res!416681) b!916421))

(assert (= (and b!916421 (not res!416682)) b!916426))

(assert (= (and b!916426 (not res!416686)) b!916424))

(assert (= (or b!916433 b!916421 b!916425) bm!55413))

(assert (=> b!916432 m!1145661))

(assert (=> b!916432 m!1145661))

(assert (=> b!916432 m!1145663))

(assert (=> b!916420 m!1145665))

(assert (=> bm!55413 m!1145557))

(declare-fun m!1145713 () Bool)

(assert (=> b!916428 m!1145713))

(assert (=> b!916426 m!1145661))

(assert (=> b!916426 m!1145661))

(assert (=> b!916426 m!1145663))

(assert (=> d!279835 m!1145557))

(assert (=> d!279835 m!1145543))

(assert (=> b!916424 m!1145665))

(assert (=> b!916429 m!1145665))

(assert (=> b!916429 m!1145665))

(declare-fun m!1145715 () Bool)

(assert (=> b!916429 m!1145715))

(assert (=> b!916429 m!1145661))

(assert (=> b!916429 m!1145715))

(assert (=> b!916429 m!1145661))

(declare-fun m!1145717 () Bool)

(assert (=> b!916429 m!1145717))

(assert (=> b!916098 d!279835))

(declare-fun d!279837 () Bool)

(assert (=> d!279837 (= (matchR!996 r!15766 s!10566) (matchRSpec!259 r!15766 s!10566))))

(declare-fun lt!337564 () Unit!14535)

(declare-fun choose!5591 (Regex!2458 List!9688) Unit!14535)

(assert (=> d!279837 (= lt!337564 (choose!5591 r!15766 s!10566))))

(assert (=> d!279837 (validRegex!927 r!15766)))

(assert (=> d!279837 (= (mainMatchTheorem!259 r!15766 s!10566) lt!337564)))

(declare-fun bs!236081 () Bool)

(assert (= bs!236081 d!279837))

(assert (=> bs!236081 m!1145567))

(assert (=> bs!236081 m!1145565))

(declare-fun m!1145719 () Bool)

(assert (=> bs!236081 m!1145719))

(assert (=> bs!236081 m!1145543))

(assert (=> b!916098 d!279837))

(declare-fun d!279839 () Bool)

(declare-fun res!416706 () Bool)

(declare-fun e!597202 () Bool)

(assert (=> d!279839 (=> res!416706 e!597202)))

(assert (=> d!279839 (= res!416706 (is-ElementMatch!2458 (regOne!5428 r!15766)))))

(assert (=> d!279839 (= (validRegex!927 (regOne!5428 r!15766)) e!597202)))

(declare-fun b!916462 () Bool)

(declare-fun e!597205 () Bool)

(assert (=> b!916462 (= e!597202 e!597205)))

(declare-fun c!148549 () Bool)

(assert (=> b!916462 (= c!148549 (is-Star!2458 (regOne!5428 r!15766)))))

(declare-fun b!916463 () Bool)

(declare-fun e!597206 () Bool)

(declare-fun call!55421 () Bool)

(assert (=> b!916463 (= e!597206 call!55421)))

(declare-fun bm!55414 () Bool)

(declare-fun c!148550 () Bool)

(declare-fun call!55420 () Bool)

(assert (=> bm!55414 (= call!55420 (validRegex!927 (ite c!148549 (reg!2787 (regOne!5428 r!15766)) (ite c!148550 (regTwo!5429 (regOne!5428 r!15766)) (regTwo!5428 (regOne!5428 r!15766))))))))

(declare-fun b!916464 () Bool)

(declare-fun e!597204 () Bool)

(assert (=> b!916464 (= e!597205 e!597204)))

(assert (=> b!916464 (= c!148550 (is-Union!2458 (regOne!5428 r!15766)))))

(declare-fun b!916465 () Bool)

(declare-fun e!597201 () Bool)

(assert (=> b!916465 (= e!597201 call!55421)))

(declare-fun b!916466 () Bool)

(declare-fun res!416705 () Bool)

(declare-fun e!597203 () Bool)

(assert (=> b!916466 (=> res!416705 e!597203)))

(assert (=> b!916466 (= res!416705 (not (is-Concat!4291 (regOne!5428 r!15766))))))

(assert (=> b!916466 (= e!597204 e!597203)))

(declare-fun bm!55415 () Bool)

(assert (=> bm!55415 (= call!55421 call!55420)))

(declare-fun b!916467 () Bool)

(declare-fun e!597200 () Bool)

(assert (=> b!916467 (= e!597205 e!597200)))

(declare-fun res!416707 () Bool)

(assert (=> b!916467 (= res!416707 (not (nullable!674 (reg!2787 (regOne!5428 r!15766)))))))

(assert (=> b!916467 (=> (not res!416707) (not e!597200))))

(declare-fun bm!55416 () Bool)

(declare-fun call!55419 () Bool)

(assert (=> bm!55416 (= call!55419 (validRegex!927 (ite c!148550 (regOne!5429 (regOne!5428 r!15766)) (regOne!5428 (regOne!5428 r!15766)))))))

(declare-fun b!916468 () Bool)

(declare-fun res!416704 () Bool)

(assert (=> b!916468 (=> (not res!416704) (not e!597201))))

(assert (=> b!916468 (= res!416704 call!55419)))

(assert (=> b!916468 (= e!597204 e!597201)))

(declare-fun b!916469 () Bool)

(assert (=> b!916469 (= e!597200 call!55420)))

(declare-fun b!916470 () Bool)

(assert (=> b!916470 (= e!597203 e!597206)))

(declare-fun res!416703 () Bool)

(assert (=> b!916470 (=> (not res!416703) (not e!597206))))

(assert (=> b!916470 (= res!416703 call!55419)))

(assert (= (and d!279839 (not res!416706)) b!916462))

(assert (= (and b!916462 c!148549) b!916467))

(assert (= (and b!916462 (not c!148549)) b!916464))

(assert (= (and b!916467 res!416707) b!916469))

(assert (= (and b!916464 c!148550) b!916468))

(assert (= (and b!916464 (not c!148550)) b!916466))

(assert (= (and b!916468 res!416704) b!916465))

(assert (= (and b!916466 (not res!416705)) b!916470))

(assert (= (and b!916470 res!416703) b!916463))

(assert (= (or b!916465 b!916463) bm!55415))

(assert (= (or b!916468 b!916470) bm!55416))

(assert (= (or b!916469 bm!55415) bm!55414))

(declare-fun m!1145721 () Bool)

(assert (=> bm!55414 m!1145721))

(declare-fun m!1145723 () Bool)

(assert (=> b!916467 m!1145723))

(declare-fun m!1145725 () Bool)

(assert (=> bm!55416 m!1145725))

(assert (=> b!916091 d!279839))

(declare-fun bs!236082 () Bool)

(declare-fun b!916478 () Bool)

(assert (= bs!236082 (and b!916478 d!279815)))

(declare-fun lambda!29522 () Int)

(assert (=> bs!236082 (not (= lambda!29522 lambda!29508))))

(declare-fun bs!236083 () Bool)

(assert (= bs!236083 (and b!916478 d!279803)))

(assert (=> bs!236083 (not (= lambda!29522 lambda!29503))))

(declare-fun bs!236084 () Bool)

(assert (= bs!236084 (and b!916478 b!916416)))

(assert (=> bs!236084 (= (and (= (reg!2787 lt!337514) (reg!2787 r!15766)) (= lt!337514 r!15766)) (= lambda!29522 lambda!29520))))

(declare-fun bs!236085 () Bool)

(assert (= bs!236085 (and b!916478 b!916094)))

(assert (=> bs!236085 (not (= lambda!29522 lambda!29491))))

(assert (=> bs!236085 (not (= lambda!29522 lambda!29492))))

(declare-fun bs!236086 () Bool)

(assert (= bs!236086 (and b!916478 b!916418)))

(assert (=> bs!236086 (not (= lambda!29522 lambda!29521))))

(assert (=> bs!236082 (not (= lambda!29522 lambda!29509))))

(assert (=> b!916478 true))

(assert (=> b!916478 true))

(declare-fun bs!236087 () Bool)

(declare-fun b!916480 () Bool)

(assert (= bs!236087 (and b!916480 d!279815)))

(declare-fun lambda!29523 () Int)

(assert (=> bs!236087 (not (= lambda!29523 lambda!29508))))

(declare-fun bs!236088 () Bool)

(assert (= bs!236088 (and b!916480 b!916478)))

(assert (=> bs!236088 (not (= lambda!29523 lambda!29522))))

(declare-fun bs!236089 () Bool)

(assert (= bs!236089 (and b!916480 d!279803)))

(assert (=> bs!236089 (not (= lambda!29523 lambda!29503))))

(declare-fun bs!236090 () Bool)

(assert (= bs!236090 (and b!916480 b!916416)))

(assert (=> bs!236090 (not (= lambda!29523 lambda!29520))))

(declare-fun bs!236091 () Bool)

(assert (= bs!236091 (and b!916480 b!916094)))

(assert (=> bs!236091 (not (= lambda!29523 lambda!29491))))

(assert (=> bs!236091 (= (and (= (regOne!5428 lt!337514) (regOne!5428 r!15766)) (= (regTwo!5428 lt!337514) (regTwo!5428 r!15766))) (= lambda!29523 lambda!29492))))

(declare-fun bs!236092 () Bool)

(assert (= bs!236092 (and b!916480 b!916418)))

(assert (=> bs!236092 (= (and (= (regOne!5428 lt!337514) (regOne!5428 r!15766)) (= (regTwo!5428 lt!337514) (regTwo!5428 r!15766))) (= lambda!29523 lambda!29521))))

(assert (=> bs!236087 (= (and (= (regOne!5428 lt!337514) (regOne!5428 r!15766)) (= (regTwo!5428 lt!337514) (regTwo!5428 r!15766))) (= lambda!29523 lambda!29509))))

(assert (=> b!916480 true))

(assert (=> b!916480 true))

(declare-fun b!916471 () Bool)

(declare-fun e!597209 () Bool)

(declare-fun call!55423 () Bool)

(assert (=> b!916471 (= e!597209 call!55423)))

(declare-fun d!279841 () Bool)

(declare-fun c!148553 () Bool)

(assert (=> d!279841 (= c!148553 (is-EmptyExpr!2458 lt!337514))))

(assert (=> d!279841 (= (matchRSpec!259 lt!337514 s!10566) e!597209)))

(declare-fun b!916472 () Bool)

(declare-fun e!597212 () Bool)

(declare-fun e!597211 () Bool)

(assert (=> b!916472 (= e!597212 e!597211)))

(declare-fun c!148551 () Bool)

(assert (=> b!916472 (= c!148551 (is-Star!2458 lt!337514))))

(declare-fun b!916473 () Bool)

(declare-fun c!148554 () Bool)

(assert (=> b!916473 (= c!148554 (is-Union!2458 lt!337514))))

(declare-fun e!597208 () Bool)

(assert (=> b!916473 (= e!597208 e!597212)))

(declare-fun b!916474 () Bool)

(declare-fun c!148552 () Bool)

(assert (=> b!916474 (= c!148552 (is-ElementMatch!2458 lt!337514))))

(declare-fun e!597210 () Bool)

(assert (=> b!916474 (= e!597210 e!597208)))

(declare-fun b!916475 () Bool)

(declare-fun e!597207 () Bool)

(assert (=> b!916475 (= e!597212 e!597207)))

(declare-fun res!416708 () Bool)

(assert (=> b!916475 (= res!416708 (matchRSpec!259 (regOne!5429 lt!337514) s!10566))))

(assert (=> b!916475 (=> res!416708 e!597207)))

(declare-fun call!55422 () Bool)

(declare-fun bm!55417 () Bool)

(assert (=> bm!55417 (= call!55422 (Exists!229 (ite c!148551 lambda!29522 lambda!29523)))))

(declare-fun b!916476 () Bool)

(declare-fun res!416709 () Bool)

(declare-fun e!597213 () Bool)

(assert (=> b!916476 (=> res!416709 e!597213)))

(assert (=> b!916476 (= res!416709 call!55423)))

(assert (=> b!916476 (= e!597211 e!597213)))

(declare-fun b!916477 () Bool)

(assert (=> b!916477 (= e!597207 (matchRSpec!259 (regTwo!5429 lt!337514) s!10566))))

(declare-fun bm!55418 () Bool)

(assert (=> bm!55418 (= call!55423 (isEmpty!5902 s!10566))))

(assert (=> b!916478 (= e!597213 call!55422)))

(declare-fun b!916479 () Bool)

(assert (=> b!916479 (= e!597209 e!597210)))

(declare-fun res!416710 () Bool)

(assert (=> b!916479 (= res!416710 (not (is-EmptyLang!2458 lt!337514)))))

(assert (=> b!916479 (=> (not res!416710) (not e!597210))))

(assert (=> b!916480 (= e!597211 call!55422)))

(declare-fun b!916481 () Bool)

(assert (=> b!916481 (= e!597208 (= s!10566 (Cons!9672 (c!148465 lt!337514) Nil!9672)))))

(assert (= (and d!279841 c!148553) b!916471))

(assert (= (and d!279841 (not c!148553)) b!916479))

(assert (= (and b!916479 res!416710) b!916474))

(assert (= (and b!916474 c!148552) b!916481))

(assert (= (and b!916474 (not c!148552)) b!916473))

(assert (= (and b!916473 c!148554) b!916475))

(assert (= (and b!916473 (not c!148554)) b!916472))

(assert (= (and b!916475 (not res!416708)) b!916477))

(assert (= (and b!916472 c!148551) b!916476))

(assert (= (and b!916472 (not c!148551)) b!916480))

(assert (= (and b!916476 (not res!416709)) b!916478))

(assert (= (or b!916478 b!916480) bm!55417))

(assert (= (or b!916471 b!916476) bm!55418))

(declare-fun m!1145727 () Bool)

(assert (=> b!916475 m!1145727))

(declare-fun m!1145729 () Bool)

(assert (=> bm!55417 m!1145729))

(declare-fun m!1145731 () Bool)

(assert (=> b!916477 m!1145731))

(assert (=> bm!55418 m!1145557))

(assert (=> b!916091 d!279841))

(declare-fun d!279843 () Bool)

(assert (=> d!279843 (= (matchR!996 lt!337514 s!10566) (matchRSpec!259 lt!337514 s!10566))))

(declare-fun lt!337565 () Unit!14535)

(assert (=> d!279843 (= lt!337565 (choose!5591 lt!337514 s!10566))))

(assert (=> d!279843 (validRegex!927 lt!337514)))

(assert (=> d!279843 (= (mainMatchTheorem!259 lt!337514 s!10566) lt!337565)))

(declare-fun bs!236093 () Bool)

(assert (= bs!236093 d!279843))

(assert (=> bs!236093 m!1145545))

(assert (=> bs!236093 m!1145539))

(declare-fun m!1145733 () Bool)

(assert (=> bs!236093 m!1145733))

(assert (=> bs!236093 m!1145669))

(assert (=> b!916091 d!279843))

(declare-fun b!916495 () Bool)

(declare-fun e!597216 () Bool)

(declare-fun tp!286057 () Bool)

(declare-fun tp!286055 () Bool)

(assert (=> b!916495 (= e!597216 (and tp!286057 tp!286055))))

(declare-fun b!916492 () Bool)

(assert (=> b!916492 (= e!597216 tp_is_empty!4559)))

(declare-fun b!916494 () Bool)

(declare-fun tp!286058 () Bool)

(assert (=> b!916494 (= e!597216 tp!286058)))

(assert (=> b!916093 (= tp!286023 e!597216)))

(declare-fun b!916493 () Bool)

(declare-fun tp!286056 () Bool)

(declare-fun tp!286059 () Bool)

(assert (=> b!916493 (= e!597216 (and tp!286056 tp!286059))))

(assert (= (and b!916093 (is-ElementMatch!2458 (regOne!5429 r!15766))) b!916492))

(assert (= (and b!916093 (is-Concat!4291 (regOne!5429 r!15766))) b!916493))

(assert (= (and b!916093 (is-Star!2458 (regOne!5429 r!15766))) b!916494))

(assert (= (and b!916093 (is-Union!2458 (regOne!5429 r!15766))) b!916495))

(declare-fun b!916499 () Bool)

(declare-fun e!597217 () Bool)

(declare-fun tp!286062 () Bool)

(declare-fun tp!286060 () Bool)

(assert (=> b!916499 (= e!597217 (and tp!286062 tp!286060))))

(declare-fun b!916496 () Bool)

(assert (=> b!916496 (= e!597217 tp_is_empty!4559)))

(declare-fun b!916498 () Bool)

(declare-fun tp!286063 () Bool)

(assert (=> b!916498 (= e!597217 tp!286063)))

(assert (=> b!916093 (= tp!286022 e!597217)))

(declare-fun b!916497 () Bool)

(declare-fun tp!286061 () Bool)

(declare-fun tp!286064 () Bool)

(assert (=> b!916497 (= e!597217 (and tp!286061 tp!286064))))

(assert (= (and b!916093 (is-ElementMatch!2458 (regTwo!5429 r!15766))) b!916496))

(assert (= (and b!916093 (is-Concat!4291 (regTwo!5429 r!15766))) b!916497))

(assert (= (and b!916093 (is-Star!2458 (regTwo!5429 r!15766))) b!916498))

(assert (= (and b!916093 (is-Union!2458 (regTwo!5429 r!15766))) b!916499))

(declare-fun b!916503 () Bool)

(declare-fun e!597218 () Bool)

(declare-fun tp!286067 () Bool)

(declare-fun tp!286065 () Bool)

(assert (=> b!916503 (= e!597218 (and tp!286067 tp!286065))))

(declare-fun b!916500 () Bool)

(assert (=> b!916500 (= e!597218 tp_is_empty!4559)))

(declare-fun b!916502 () Bool)

(declare-fun tp!286068 () Bool)

(assert (=> b!916502 (= e!597218 tp!286068)))

(assert (=> b!916097 (= tp!286021 e!597218)))

(declare-fun b!916501 () Bool)

(declare-fun tp!286066 () Bool)

(declare-fun tp!286069 () Bool)

(assert (=> b!916501 (= e!597218 (and tp!286066 tp!286069))))

(assert (= (and b!916097 (is-ElementMatch!2458 (regOne!5428 r!15766))) b!916500))

(assert (= (and b!916097 (is-Concat!4291 (regOne!5428 r!15766))) b!916501))

(assert (= (and b!916097 (is-Star!2458 (regOne!5428 r!15766))) b!916502))

(assert (= (and b!916097 (is-Union!2458 (regOne!5428 r!15766))) b!916503))

(declare-fun b!916507 () Bool)

(declare-fun e!597219 () Bool)

(declare-fun tp!286072 () Bool)

(declare-fun tp!286070 () Bool)

(assert (=> b!916507 (= e!597219 (and tp!286072 tp!286070))))

(declare-fun b!916504 () Bool)

(assert (=> b!916504 (= e!597219 tp_is_empty!4559)))

(declare-fun b!916506 () Bool)

(declare-fun tp!286073 () Bool)

(assert (=> b!916506 (= e!597219 tp!286073)))

(assert (=> b!916097 (= tp!286024 e!597219)))

(declare-fun b!916505 () Bool)

(declare-fun tp!286071 () Bool)

(declare-fun tp!286074 () Bool)

(assert (=> b!916505 (= e!597219 (and tp!286071 tp!286074))))

(assert (= (and b!916097 (is-ElementMatch!2458 (regTwo!5428 r!15766))) b!916504))

(assert (= (and b!916097 (is-Concat!4291 (regTwo!5428 r!15766))) b!916505))

(assert (= (and b!916097 (is-Star!2458 (regTwo!5428 r!15766))) b!916506))

(assert (= (and b!916097 (is-Union!2458 (regTwo!5428 r!15766))) b!916507))

(declare-fun b!916511 () Bool)

(declare-fun e!597220 () Bool)

(declare-fun tp!286077 () Bool)

(declare-fun tp!286075 () Bool)

(assert (=> b!916511 (= e!597220 (and tp!286077 tp!286075))))

(declare-fun b!916508 () Bool)

(assert (=> b!916508 (= e!597220 tp_is_empty!4559)))

(declare-fun b!916510 () Bool)

(declare-fun tp!286078 () Bool)

(assert (=> b!916510 (= e!597220 tp!286078)))

(assert (=> b!916096 (= tp!286025 e!597220)))

(declare-fun b!916509 () Bool)

(declare-fun tp!286076 () Bool)

(declare-fun tp!286079 () Bool)

(assert (=> b!916509 (= e!597220 (and tp!286076 tp!286079))))

(assert (= (and b!916096 (is-ElementMatch!2458 (reg!2787 r!15766))) b!916508))

(assert (= (and b!916096 (is-Concat!4291 (reg!2787 r!15766))) b!916509))

(assert (= (and b!916096 (is-Star!2458 (reg!2787 r!15766))) b!916510))

(assert (= (and b!916096 (is-Union!2458 (reg!2787 r!15766))) b!916511))

(declare-fun b!916516 () Bool)

(declare-fun e!597223 () Bool)

(declare-fun tp!286082 () Bool)

(assert (=> b!916516 (= e!597223 (and tp_is_empty!4559 tp!286082))))

(assert (=> b!916095 (= tp!286026 e!597223)))

(assert (= (and b!916095 (is-Cons!9672 (t!100734 s!10566))) b!916516))

(push 1)

(assert (not b!916316))

(assert (not bm!55417))

(assert (not d!279823))

(assert (not b!916207))

(assert (not b!916511))

(assert (not b!916505))

(assert (not b!916507))

(assert (not b!916272))

(assert (not bm!55399))

(assert (not b!916432))

(assert (not bm!55375))

(assert (not b!916467))

(assert (not bm!55401))

(assert (not b!916477))

(assert (not b!916506))

(assert (not b!916495))

(assert (not bm!55416))

(assert (not b!916415))

(assert (not b!916497))

(assert (not b!916420))

(assert (not bm!55404))

(assert (not b!916498))

(assert (not b!916212))

(assert (not bm!55411))

(assert (not d!279803))

(assert (not bm!55414))

(assert (not b!916429))

(assert (not bm!55377))

(assert (not bm!55413))

(assert (not b!916509))

(assert tp_is_empty!4559)

(assert (not b!916314))

(assert (not bm!55384))

(assert (not b!916502))

(assert (not b!916365))

(assert (not b!916208))

(assert (not b!916503))

(assert (not bm!55412))

(assert (not b!916424))

(assert (not b!916475))

(assert (not d!279829))

(assert (not bm!55406))

(assert (not b!916317))

(assert (not d!279801))

(assert (not d!279843))

(assert (not b!916510))

(assert (not b!916312))

(assert (not b!916493))

(assert (not b!916494))

(assert (not d!279819))

(assert (not b!916320))

(assert (not b!916516))

(assert (not d!279815))

(assert (not d!279825))

(assert (not b!916376))

(assert (not b!916428))

(assert (not d!279807))

(assert (not b!916211))

(assert (not b!916209))

(assert (not b!916308))

(assert (not b!916413))

(assert (not d!279835))

(assert (not b!916501))

(assert (not b!916426))

(assert (not d!279813))

(assert (not d!279837))

(assert (not bm!55418))

(assert (not b!916499))

(assert (not b!916210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

