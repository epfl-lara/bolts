; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734038 () Bool)

(assert start!734038)

(declare-fun b!7620705 () Bool)

(assert (=> b!7620705 true))

(assert (=> b!7620705 true))

(declare-fun b!7620698 () Bool)

(declare-fun res!3051055 () Bool)

(declare-fun e!4531460 () Bool)

(assert (=> b!7620698 (=> (not res!3051055) (not e!4531460))))

(declare-datatypes ((C!40946 0))(
  ( (C!40947 (val!30913 Int)) )
))
(declare-datatypes ((Regex!20310 0))(
  ( (ElementMatch!20310 (c!1404492 C!40946)) (Concat!29155 (regOne!41132 Regex!20310) (regTwo!41132 Regex!20310)) (EmptyExpr!20310) (Star!20310 (reg!20639 Regex!20310)) (EmptyLang!20310) (Union!20310 (regOne!41133 Regex!20310) (regTwo!41133 Regex!20310)) )
))
(declare-fun r!14126 () Regex!20310)

(assert (=> b!7620698 (= res!3051055 (and (not (is-EmptyExpr!20310 r!14126)) (not (is-EmptyLang!20310 r!14126)) (not (is-ElementMatch!20310 r!14126)) (not (is-Union!20310 r!14126)) (is-Star!20310 r!14126)))))

(declare-fun b!7620699 () Bool)

(declare-fun e!4531464 () Bool)

(declare-fun tp_is_empty!50975 () Bool)

(assert (=> b!7620699 (= e!4531464 tp_is_empty!50975)))

(declare-fun res!3051051 () Bool)

(assert (=> start!734038 (=> (not res!3051051) (not e!4531460))))

(declare-fun validRegex!10730 (Regex!20310) Bool)

(assert (=> start!734038 (= res!3051051 (validRegex!10730 r!14126))))

(assert (=> start!734038 e!4531460))

(assert (=> start!734038 e!4531464))

(declare-fun e!4531465 () Bool)

(assert (=> start!734038 e!4531465))

(declare-fun b!7620700 () Bool)

(declare-fun tp!2225142 () Bool)

(declare-fun tp!2225140 () Bool)

(assert (=> b!7620700 (= e!4531464 (and tp!2225142 tp!2225140))))

(declare-fun b!7620701 () Bool)

(declare-fun tp!2225143 () Bool)

(assert (=> b!7620701 (= e!4531464 tp!2225143)))

(declare-fun b!7620702 () Bool)

(declare-fun tp!2225145 () Bool)

(assert (=> b!7620702 (= e!4531465 (and tp_is_empty!50975 tp!2225145))))

(declare-fun b!7620703 () Bool)

(declare-fun e!4531461 () Bool)

(declare-fun lt!2656701 () Bool)

(declare-fun lt!2656702 () Bool)

(assert (=> b!7620703 (= e!4531461 (and lt!2656701 lt!2656702))))

(declare-fun b!7620704 () Bool)

(declare-fun res!3051054 () Bool)

(declare-fun e!4531466 () Bool)

(assert (=> b!7620704 (=> res!3051054 e!4531466)))

(declare-datatypes ((List!73163 0))(
  ( (Nil!73039) (Cons!73039 (h!79487 C!40946) (t!387898 List!73163)) )
))
(declare-datatypes ((tuple2!69182 0))(
  ( (tuple2!69183 (_1!37894 List!73163) (_2!37894 List!73163)) )
))
(declare-fun lt!2656700 () tuple2!69182)

(declare-fun isEmpty!41657 (List!73163) Bool)

(assert (=> b!7620704 (= res!3051054 (isEmpty!41657 (_1!37894 lt!2656700)))))

(declare-fun e!4531459 () Bool)

(assert (=> b!7620705 (= e!4531460 (not e!4531459))))

(declare-fun res!3051057 () Bool)

(assert (=> b!7620705 (=> res!3051057 e!4531459)))

(declare-fun lt!2656703 () Bool)

(assert (=> b!7620705 (= res!3051057 (not lt!2656703))))

(declare-fun lambda!468412 () Int)

(declare-fun Exists!4466 (Int) Bool)

(assert (=> b!7620705 (= lt!2656703 (Exists!4466 lambda!468412))))

(declare-datatypes ((Option!17385 0))(
  ( (None!17384) (Some!17384 (v!54519 tuple2!69182)) )
))
(declare-fun lt!2656692 () Option!17385)

(declare-fun isDefined!14001 (Option!17385) Bool)

(assert (=> b!7620705 (= lt!2656703 (isDefined!14001 lt!2656692))))

(declare-fun s!9605 () List!73163)

(declare-fun findConcatSeparation!3415 (Regex!20310 Regex!20310 List!73163 List!73163 List!73163) Option!17385)

(assert (=> b!7620705 (= lt!2656692 (findConcatSeparation!3415 (reg!20639 r!14126) r!14126 Nil!73039 s!9605 s!9605))))

(declare-datatypes ((Unit!167488 0))(
  ( (Unit!167489) )
))
(declare-fun lt!2656706 () Unit!167488)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3173 (Regex!20310 Regex!20310 List!73163) Unit!167488)

(assert (=> b!7620705 (= lt!2656706 (lemmaFindConcatSeparationEquivalentToExists!3173 (reg!20639 r!14126) r!14126 s!9605))))

(declare-fun b!7620706 () Bool)

(declare-fun e!4531463 () Unit!167488)

(declare-fun Unit!167490 () Unit!167488)

(assert (=> b!7620706 (= e!4531463 Unit!167490)))

(declare-fun lt!2656696 () tuple2!69182)

(declare-fun lt!2656704 () Unit!167488)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!137 (Regex!20310 Regex!20310 List!73163 List!73163 List!73163) Unit!167488)

(assert (=> b!7620706 (= lt!2656704 (lemmaFindSeparationIsDefinedThenConcatMatches!137 (reg!20639 r!14126) r!14126 (_1!37894 lt!2656696) (_2!37894 lt!2656696) s!9605))))

(declare-fun lt!2656693 () List!73163)

(declare-fun ++!17620 (List!73163 List!73163) List!73163)

(assert (=> b!7620706 (= lt!2656693 (++!17620 (_1!37894 lt!2656696) (_2!37894 lt!2656696)))))

(declare-fun matchR!9817 (Regex!20310 List!73163) Bool)

(assert (=> b!7620706 (matchR!9817 (Concat!29155 (reg!20639 r!14126) r!14126) lt!2656693)))

(declare-fun lt!2656707 () Unit!167488)

(declare-fun lemmaStarApp!191 (Regex!20310 List!73163 List!73163) Unit!167488)

(assert (=> b!7620706 (= lt!2656707 (lemmaStarApp!191 (reg!20639 r!14126) (_1!37894 lt!2656696) (_2!37894 lt!2656696)))))

(declare-fun res!3051058 () Bool)

(assert (=> b!7620706 (= res!3051058 (matchR!9817 r!14126 lt!2656693))))

(declare-fun e!4531458 () Bool)

(assert (=> b!7620706 (=> (not res!3051058) (not e!4531458))))

(assert (=> b!7620706 e!4531458))

(declare-fun b!7620707 () Bool)

(declare-fun res!3051056 () Bool)

(assert (=> b!7620707 (=> (not res!3051056) (not e!4531460))))

(assert (=> b!7620707 (= res!3051056 (not (isEmpty!41657 s!9605)))))

(declare-fun b!7620708 () Bool)

(declare-fun e!4531462 () Bool)

(assert (=> b!7620708 (= e!4531459 e!4531462)))

(declare-fun res!3051059 () Bool)

(assert (=> b!7620708 (=> res!3051059 e!4531462)))

(assert (=> b!7620708 (= res!3051059 (not (Exists!4466 lambda!468412)))))

(declare-fun lt!2656698 () Unit!167488)

(assert (=> b!7620708 (= lt!2656698 e!4531463)))

(declare-fun c!1404491 () Bool)

(assert (=> b!7620708 (= c!1404491 (not (matchR!9817 r!14126 s!9605)))))

(declare-fun matchRSpec!4509 (Regex!20310 List!73163) Bool)

(assert (=> b!7620708 (= (matchR!9817 r!14126 (_2!37894 lt!2656696)) (matchRSpec!4509 r!14126 (_2!37894 lt!2656696)))))

(declare-fun lt!2656699 () Unit!167488)

(declare-fun mainMatchTheorem!4503 (Regex!20310 List!73163) Unit!167488)

(assert (=> b!7620708 (= lt!2656699 (mainMatchTheorem!4503 r!14126 (_2!37894 lt!2656696)))))

(assert (=> b!7620708 (= (matchR!9817 (reg!20639 r!14126) (_1!37894 lt!2656696)) (matchRSpec!4509 (reg!20639 r!14126) (_1!37894 lt!2656696)))))

(declare-fun lt!2656697 () Unit!167488)

(assert (=> b!7620708 (= lt!2656697 (mainMatchTheorem!4503 (reg!20639 r!14126) (_1!37894 lt!2656696)))))

(declare-fun get!25777 (Option!17385) tuple2!69182)

(assert (=> b!7620708 (= lt!2656696 (get!25777 lt!2656692))))

(declare-fun b!7620709 () Bool)

(assert (=> b!7620709 (= e!4531466 e!4531461)))

(declare-fun res!3051052 () Bool)

(assert (=> b!7620709 (=> (not res!3051052) (not e!4531461))))

(assert (=> b!7620709 (= res!3051052 (= (++!17620 (_1!37894 lt!2656700) (_2!37894 lt!2656700)) s!9605))))

(declare-fun b!7620710 () Bool)

(declare-fun tp!2225141 () Bool)

(declare-fun tp!2225144 () Bool)

(assert (=> b!7620710 (= e!4531464 (and tp!2225141 tp!2225144))))

(declare-fun b!7620711 () Bool)

(declare-fun Unit!167491 () Unit!167488)

(assert (=> b!7620711 (= e!4531463 Unit!167491)))

(declare-fun b!7620712 () Bool)

(assert (=> b!7620712 (= e!4531462 e!4531466)))

(declare-fun res!3051053 () Bool)

(assert (=> b!7620712 (=> res!3051053 e!4531466)))

(declare-fun nullable!8877 (Regex!20310) Bool)

(assert (=> b!7620712 (= res!3051053 (nullable!8877 (reg!20639 r!14126)))))

(declare-fun lt!2656695 () Bool)

(assert (=> b!7620712 (= lt!2656695 lt!2656702)))

(assert (=> b!7620712 (= lt!2656702 (matchRSpec!4509 r!14126 (_2!37894 lt!2656700)))))

(assert (=> b!7620712 (= lt!2656695 (matchR!9817 r!14126 (_2!37894 lt!2656700)))))

(declare-fun lt!2656694 () Unit!167488)

(assert (=> b!7620712 (= lt!2656694 (mainMatchTheorem!4503 r!14126 (_2!37894 lt!2656700)))))

(declare-fun lt!2656705 () Bool)

(assert (=> b!7620712 (= lt!2656705 lt!2656701)))

(assert (=> b!7620712 (= lt!2656701 (matchRSpec!4509 (reg!20639 r!14126) (_1!37894 lt!2656700)))))

(assert (=> b!7620712 (= lt!2656705 (matchR!9817 (reg!20639 r!14126) (_1!37894 lt!2656700)))))

(declare-fun lt!2656691 () Unit!167488)

(assert (=> b!7620712 (= lt!2656691 (mainMatchTheorem!4503 (reg!20639 r!14126) (_1!37894 lt!2656700)))))

(declare-fun pickWitness!441 (Int) tuple2!69182)

(assert (=> b!7620712 (= lt!2656700 (pickWitness!441 lambda!468412))))

(declare-fun b!7620713 () Bool)

(assert (=> b!7620713 (= e!4531458 false)))

(assert (= (and start!734038 res!3051051) b!7620698))

(assert (= (and b!7620698 res!3051055) b!7620707))

(assert (= (and b!7620707 res!3051056) b!7620705))

(assert (= (and b!7620705 (not res!3051057)) b!7620708))

(assert (= (and b!7620708 c!1404491) b!7620706))

(assert (= (and b!7620708 (not c!1404491)) b!7620711))

(assert (= (and b!7620706 res!3051058) b!7620713))

(assert (= (and b!7620708 (not res!3051059)) b!7620712))

(assert (= (and b!7620712 (not res!3051053)) b!7620704))

(assert (= (and b!7620704 (not res!3051054)) b!7620709))

(assert (= (and b!7620709 res!3051052) b!7620703))

(assert (= (and start!734038 (is-ElementMatch!20310 r!14126)) b!7620699))

(assert (= (and start!734038 (is-Concat!29155 r!14126)) b!7620700))

(assert (= (and start!734038 (is-Star!20310 r!14126)) b!7620701))

(assert (= (and start!734038 (is-Union!20310 r!14126)) b!7620710))

(assert (= (and start!734038 (is-Cons!73039 s!9605)) b!7620702))

(declare-fun m!8152546 () Bool)

(assert (=> b!7620708 m!8152546))

(declare-fun m!8152548 () Bool)

(assert (=> b!7620708 m!8152548))

(declare-fun m!8152550 () Bool)

(assert (=> b!7620708 m!8152550))

(declare-fun m!8152552 () Bool)

(assert (=> b!7620708 m!8152552))

(declare-fun m!8152554 () Bool)

(assert (=> b!7620708 m!8152554))

(declare-fun m!8152556 () Bool)

(assert (=> b!7620708 m!8152556))

(declare-fun m!8152558 () Bool)

(assert (=> b!7620708 m!8152558))

(declare-fun m!8152560 () Bool)

(assert (=> b!7620708 m!8152560))

(declare-fun m!8152562 () Bool)

(assert (=> b!7620708 m!8152562))

(declare-fun m!8152564 () Bool)

(assert (=> b!7620704 m!8152564))

(assert (=> b!7620705 m!8152550))

(declare-fun m!8152566 () Bool)

(assert (=> b!7620705 m!8152566))

(declare-fun m!8152568 () Bool)

(assert (=> b!7620705 m!8152568))

(declare-fun m!8152570 () Bool)

(assert (=> b!7620705 m!8152570))

(declare-fun m!8152572 () Bool)

(assert (=> b!7620706 m!8152572))

(declare-fun m!8152574 () Bool)

(assert (=> b!7620706 m!8152574))

(declare-fun m!8152576 () Bool)

(assert (=> b!7620706 m!8152576))

(declare-fun m!8152578 () Bool)

(assert (=> b!7620706 m!8152578))

(declare-fun m!8152580 () Bool)

(assert (=> b!7620706 m!8152580))

(declare-fun m!8152582 () Bool)

(assert (=> b!7620712 m!8152582))

(declare-fun m!8152584 () Bool)

(assert (=> b!7620712 m!8152584))

(declare-fun m!8152586 () Bool)

(assert (=> b!7620712 m!8152586))

(declare-fun m!8152588 () Bool)

(assert (=> b!7620712 m!8152588))

(declare-fun m!8152590 () Bool)

(assert (=> b!7620712 m!8152590))

(declare-fun m!8152592 () Bool)

(assert (=> b!7620712 m!8152592))

(declare-fun m!8152594 () Bool)

(assert (=> b!7620712 m!8152594))

(declare-fun m!8152596 () Bool)

(assert (=> b!7620712 m!8152596))

(declare-fun m!8152598 () Bool)

(assert (=> b!7620709 m!8152598))

(declare-fun m!8152600 () Bool)

(assert (=> b!7620707 m!8152600))

(declare-fun m!8152602 () Bool)

(assert (=> start!734038 m!8152602))

(push 1)

(assert (not b!7620701))

(assert (not b!7620709))

(assert (not b!7620704))

(assert (not b!7620700))

(assert (not b!7620705))

(assert (not b!7620712))

(assert tp_is_empty!50975)

(assert (not b!7620702))

(assert (not b!7620708))

(assert (not b!7620707))

(assert (not b!7620706))

(assert (not start!734038))

(assert (not b!7620710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2323169 () Bool)

(declare-fun choose!58795 (Int) Bool)

(assert (=> d!2323169 (= (Exists!4466 lambda!468412) (choose!58795 lambda!468412))))

(declare-fun bs!1943290 () Bool)

(assert (= bs!1943290 d!2323169))

(declare-fun m!8152664 () Bool)

(assert (=> bs!1943290 m!8152664))

(assert (=> b!7620705 d!2323169))

(declare-fun d!2323171 () Bool)

(declare-fun isEmpty!41659 (Option!17385) Bool)

(assert (=> d!2323171 (= (isDefined!14001 lt!2656692) (not (isEmpty!41659 lt!2656692)))))

(declare-fun bs!1943291 () Bool)

(assert (= bs!1943291 d!2323171))

(declare-fun m!8152666 () Bool)

(assert (=> bs!1943291 m!8152666))

(assert (=> b!7620705 d!2323171))

(declare-fun d!2323173 () Bool)

(declare-fun e!4531513 () Bool)

(assert (=> d!2323173 e!4531513))

(declare-fun res!3051110 () Bool)

(assert (=> d!2323173 (=> res!3051110 e!4531513)))

(declare-fun e!4531512 () Bool)

(assert (=> d!2323173 (= res!3051110 e!4531512)))

(declare-fun res!3051109 () Bool)

(assert (=> d!2323173 (=> (not res!3051109) (not e!4531512))))

(declare-fun lt!2656768 () Option!17385)

(assert (=> d!2323173 (= res!3051109 (isDefined!14001 lt!2656768))))

(declare-fun e!4531510 () Option!17385)

(assert (=> d!2323173 (= lt!2656768 e!4531510)))

(declare-fun c!1404501 () Bool)

(declare-fun e!4531511 () Bool)

(assert (=> d!2323173 (= c!1404501 e!4531511)))

(declare-fun res!3051113 () Bool)

(assert (=> d!2323173 (=> (not res!3051113) (not e!4531511))))

(assert (=> d!2323173 (= res!3051113 (matchR!9817 (reg!20639 r!14126) Nil!73039))))

(assert (=> d!2323173 (validRegex!10730 (reg!20639 r!14126))))

(assert (=> d!2323173 (= (findConcatSeparation!3415 (reg!20639 r!14126) r!14126 Nil!73039 s!9605 s!9605) lt!2656768)))

(declare-fun b!7620800 () Bool)

(declare-fun e!4531514 () Option!17385)

(assert (=> b!7620800 (= e!4531514 None!17384)))

(declare-fun b!7620801 () Bool)

(assert (=> b!7620801 (= e!4531512 (= (++!17620 (_1!37894 (get!25777 lt!2656768)) (_2!37894 (get!25777 lt!2656768))) s!9605))))

(declare-fun b!7620802 () Bool)

(assert (=> b!7620802 (= e!4531510 e!4531514)))

(declare-fun c!1404502 () Bool)

(assert (=> b!7620802 (= c!1404502 (is-Nil!73039 s!9605))))

(declare-fun b!7620803 () Bool)

(declare-fun res!3051112 () Bool)

(assert (=> b!7620803 (=> (not res!3051112) (not e!4531512))))

(assert (=> b!7620803 (= res!3051112 (matchR!9817 (reg!20639 r!14126) (_1!37894 (get!25777 lt!2656768))))))

(declare-fun b!7620804 () Bool)

(declare-fun lt!2656769 () Unit!167488)

(declare-fun lt!2656770 () Unit!167488)

(assert (=> b!7620804 (= lt!2656769 lt!2656770)))

(assert (=> b!7620804 (= (++!17620 (++!17620 Nil!73039 (Cons!73039 (h!79487 s!9605) Nil!73039)) (t!387898 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3218 (List!73163 C!40946 List!73163 List!73163) Unit!167488)

(assert (=> b!7620804 (= lt!2656770 (lemmaMoveElementToOtherListKeepsConcatEq!3218 Nil!73039 (h!79487 s!9605) (t!387898 s!9605) s!9605))))

(assert (=> b!7620804 (= e!4531514 (findConcatSeparation!3415 (reg!20639 r!14126) r!14126 (++!17620 Nil!73039 (Cons!73039 (h!79487 s!9605) Nil!73039)) (t!387898 s!9605) s!9605))))

(declare-fun b!7620805 () Bool)

(assert (=> b!7620805 (= e!4531513 (not (isDefined!14001 lt!2656768)))))

(declare-fun b!7620806 () Bool)

(declare-fun res!3051111 () Bool)

(assert (=> b!7620806 (=> (not res!3051111) (not e!4531512))))

(assert (=> b!7620806 (= res!3051111 (matchR!9817 r!14126 (_2!37894 (get!25777 lt!2656768))))))

(declare-fun b!7620807 () Bool)

(assert (=> b!7620807 (= e!4531511 (matchR!9817 r!14126 s!9605))))

(declare-fun b!7620808 () Bool)

(assert (=> b!7620808 (= e!4531510 (Some!17384 (tuple2!69183 Nil!73039 s!9605)))))

(assert (= (and d!2323173 res!3051113) b!7620807))

(assert (= (and d!2323173 c!1404501) b!7620808))

(assert (= (and d!2323173 (not c!1404501)) b!7620802))

(assert (= (and b!7620802 c!1404502) b!7620800))

(assert (= (and b!7620802 (not c!1404502)) b!7620804))

(assert (= (and d!2323173 res!3051109) b!7620803))

(assert (= (and b!7620803 res!3051112) b!7620806))

(assert (= (and b!7620806 res!3051111) b!7620801))

(assert (= (and d!2323173 (not res!3051110)) b!7620805))

(assert (=> b!7620807 m!8152552))

(declare-fun m!8152672 () Bool)

(assert (=> b!7620803 m!8152672))

(declare-fun m!8152674 () Bool)

(assert (=> b!7620803 m!8152674))

(assert (=> b!7620801 m!8152672))

(declare-fun m!8152676 () Bool)

(assert (=> b!7620801 m!8152676))

(declare-fun m!8152678 () Bool)

(assert (=> b!7620804 m!8152678))

(assert (=> b!7620804 m!8152678))

(declare-fun m!8152680 () Bool)

(assert (=> b!7620804 m!8152680))

(declare-fun m!8152682 () Bool)

(assert (=> b!7620804 m!8152682))

(assert (=> b!7620804 m!8152678))

(declare-fun m!8152684 () Bool)

(assert (=> b!7620804 m!8152684))

(declare-fun m!8152686 () Bool)

(assert (=> d!2323173 m!8152686))

(declare-fun m!8152688 () Bool)

(assert (=> d!2323173 m!8152688))

(declare-fun m!8152690 () Bool)

(assert (=> d!2323173 m!8152690))

(assert (=> b!7620805 m!8152686))

(assert (=> b!7620806 m!8152672))

(declare-fun m!8152692 () Bool)

(assert (=> b!7620806 m!8152692))

(assert (=> b!7620705 d!2323173))

(declare-fun bs!1943293 () Bool)

(declare-fun d!2323177 () Bool)

(assert (= bs!1943293 (and d!2323177 b!7620705)))

(declare-fun lambda!468422 () Int)

(assert (=> bs!1943293 (= lambda!468422 lambda!468412)))

(assert (=> d!2323177 true))

(assert (=> d!2323177 true))

(assert (=> d!2323177 true))

(assert (=> d!2323177 (= (isDefined!14001 (findConcatSeparation!3415 (reg!20639 r!14126) r!14126 Nil!73039 s!9605 s!9605)) (Exists!4466 lambda!468422))))

(declare-fun lt!2656775 () Unit!167488)

(declare-fun choose!58796 (Regex!20310 Regex!20310 List!73163) Unit!167488)

(assert (=> d!2323177 (= lt!2656775 (choose!58796 (reg!20639 r!14126) r!14126 s!9605))))

(assert (=> d!2323177 (validRegex!10730 (reg!20639 r!14126))))

(assert (=> d!2323177 (= (lemmaFindConcatSeparationEquivalentToExists!3173 (reg!20639 r!14126) r!14126 s!9605) lt!2656775)))

(declare-fun bs!1943294 () Bool)

(assert (= bs!1943294 d!2323177))

(assert (=> bs!1943294 m!8152568))

(declare-fun m!8152694 () Bool)

(assert (=> bs!1943294 m!8152694))

(declare-fun m!8152696 () Bool)

(assert (=> bs!1943294 m!8152696))

(assert (=> bs!1943294 m!8152568))

(declare-fun m!8152698 () Bool)

(assert (=> bs!1943294 m!8152698))

(assert (=> bs!1943294 m!8152690))

(assert (=> b!7620705 d!2323177))

(declare-fun d!2323179 () Bool)

(assert (=> d!2323179 (= (isEmpty!41657 (_1!37894 lt!2656700)) (is-Nil!73039 (_1!37894 lt!2656700)))))

(assert (=> b!7620704 d!2323179))

(declare-fun b!7620849 () Bool)

(declare-fun e!4531536 () List!73163)

(assert (=> b!7620849 (= e!4531536 (_2!37894 lt!2656700))))

(declare-fun b!7620850 () Bool)

(assert (=> b!7620850 (= e!4531536 (Cons!73039 (h!79487 (_1!37894 lt!2656700)) (++!17620 (t!387898 (_1!37894 lt!2656700)) (_2!37894 lt!2656700))))))

(declare-fun b!7620852 () Bool)

(declare-fun e!4531535 () Bool)

(declare-fun lt!2656778 () List!73163)

(assert (=> b!7620852 (= e!4531535 (or (not (= (_2!37894 lt!2656700) Nil!73039)) (= lt!2656778 (_1!37894 lt!2656700))))))

(declare-fun b!7620851 () Bool)

(declare-fun res!3051139 () Bool)

(assert (=> b!7620851 (=> (not res!3051139) (not e!4531535))))

(declare-fun size!42535 (List!73163) Int)

(assert (=> b!7620851 (= res!3051139 (= (size!42535 lt!2656778) (+ (size!42535 (_1!37894 lt!2656700)) (size!42535 (_2!37894 lt!2656700)))))))

(declare-fun d!2323181 () Bool)

(assert (=> d!2323181 e!4531535))

(declare-fun res!3051138 () Bool)

(assert (=> d!2323181 (=> (not res!3051138) (not e!4531535))))

(declare-fun content!15442 (List!73163) (Set C!40946))

(assert (=> d!2323181 (= res!3051138 (= (content!15442 lt!2656778) (set.union (content!15442 (_1!37894 lt!2656700)) (content!15442 (_2!37894 lt!2656700)))))))

(assert (=> d!2323181 (= lt!2656778 e!4531536)))

(declare-fun c!1404511 () Bool)

(assert (=> d!2323181 (= c!1404511 (is-Nil!73039 (_1!37894 lt!2656700)))))

(assert (=> d!2323181 (= (++!17620 (_1!37894 lt!2656700) (_2!37894 lt!2656700)) lt!2656778)))

(assert (= (and d!2323181 c!1404511) b!7620849))

(assert (= (and d!2323181 (not c!1404511)) b!7620850))

(assert (= (and d!2323181 res!3051138) b!7620851))

(assert (= (and b!7620851 res!3051139) b!7620852))

(declare-fun m!8152700 () Bool)

(assert (=> b!7620850 m!8152700))

(declare-fun m!8152702 () Bool)

(assert (=> b!7620851 m!8152702))

(declare-fun m!8152704 () Bool)

(assert (=> b!7620851 m!8152704))

(declare-fun m!8152706 () Bool)

(assert (=> b!7620851 m!8152706))

(declare-fun m!8152708 () Bool)

(assert (=> d!2323181 m!8152708))

(declare-fun m!8152710 () Bool)

(assert (=> d!2323181 m!8152710))

(declare-fun m!8152712 () Bool)

(assert (=> d!2323181 m!8152712))

(assert (=> b!7620709 d!2323181))

(declare-fun b!7620909 () Bool)

(declare-fun res!3051173 () Bool)

(declare-fun e!4531571 () Bool)

(assert (=> b!7620909 (=> (not res!3051173) (not e!4531571))))

(declare-fun call!699907 () Bool)

(assert (=> b!7620909 (= res!3051173 (not call!699907))))

(declare-fun b!7620910 () Bool)

(declare-fun res!3051179 () Bool)

(declare-fun e!4531566 () Bool)

(assert (=> b!7620910 (=> res!3051179 e!4531566)))

(assert (=> b!7620910 (= res!3051179 e!4531571)))

(declare-fun res!3051175 () Bool)

(assert (=> b!7620910 (=> (not res!3051175) (not e!4531571))))

(declare-fun lt!2656783 () Bool)

(assert (=> b!7620910 (= res!3051175 lt!2656783)))

(declare-fun b!7620911 () Bool)

(declare-fun res!3051178 () Bool)

(declare-fun e!4531567 () Bool)

(assert (=> b!7620911 (=> res!3051178 e!4531567)))

(declare-fun tail!15195 (List!73163) List!73163)

(assert (=> b!7620911 (= res!3051178 (not (isEmpty!41657 (tail!15195 s!9605))))))

(declare-fun d!2323183 () Bool)

(declare-fun e!4531568 () Bool)

(assert (=> d!2323183 e!4531568))

(declare-fun c!1404524 () Bool)

(assert (=> d!2323183 (= c!1404524 (is-EmptyExpr!20310 r!14126))))

(declare-fun e!4531569 () Bool)

(assert (=> d!2323183 (= lt!2656783 e!4531569)))

(declare-fun c!1404525 () Bool)

(assert (=> d!2323183 (= c!1404525 (isEmpty!41657 s!9605))))

(assert (=> d!2323183 (validRegex!10730 r!14126)))

(assert (=> d!2323183 (= (matchR!9817 r!14126 s!9605) lt!2656783)))

(declare-fun b!7620912 () Bool)

(declare-fun res!3051174 () Bool)

(assert (=> b!7620912 (=> res!3051174 e!4531566)))

(assert (=> b!7620912 (= res!3051174 (not (is-ElementMatch!20310 r!14126)))))

(declare-fun e!4531570 () Bool)

(assert (=> b!7620912 (= e!4531570 e!4531566)))

(declare-fun b!7620913 () Bool)

(declare-fun res!3051172 () Bool)

(assert (=> b!7620913 (=> (not res!3051172) (not e!4531571))))

(assert (=> b!7620913 (= res!3051172 (isEmpty!41657 (tail!15195 s!9605)))))

(declare-fun b!7620914 () Bool)

(declare-fun head!15655 (List!73163) C!40946)

(assert (=> b!7620914 (= e!4531571 (= (head!15655 s!9605) (c!1404492 r!14126)))))

(declare-fun b!7620915 () Bool)

(assert (=> b!7620915 (= e!4531567 (not (= (head!15655 s!9605) (c!1404492 r!14126))))))

(declare-fun b!7620916 () Bool)

(assert (=> b!7620916 (= e!4531569 (nullable!8877 r!14126))))

(declare-fun b!7620917 () Bool)

(assert (=> b!7620917 (= e!4531568 e!4531570)))

(declare-fun c!1404526 () Bool)

(assert (=> b!7620917 (= c!1404526 (is-EmptyLang!20310 r!14126))))

(declare-fun bm!699902 () Bool)

(assert (=> bm!699902 (= call!699907 (isEmpty!41657 s!9605))))

(declare-fun b!7620918 () Bool)

(declare-fun e!4531565 () Bool)

(assert (=> b!7620918 (= e!4531566 e!4531565)))

(declare-fun res!3051177 () Bool)

(assert (=> b!7620918 (=> (not res!3051177) (not e!4531565))))

(assert (=> b!7620918 (= res!3051177 (not lt!2656783))))

(declare-fun b!7620919 () Bool)

(declare-fun derivativeStep!5855 (Regex!20310 C!40946) Regex!20310)

(assert (=> b!7620919 (= e!4531569 (matchR!9817 (derivativeStep!5855 r!14126 (head!15655 s!9605)) (tail!15195 s!9605)))))

(declare-fun b!7620920 () Bool)

(assert (=> b!7620920 (= e!4531568 (= lt!2656783 call!699907))))

(declare-fun b!7620921 () Bool)

(assert (=> b!7620921 (= e!4531570 (not lt!2656783))))

(declare-fun b!7620922 () Bool)

(assert (=> b!7620922 (= e!4531565 e!4531567)))

(declare-fun res!3051176 () Bool)

(assert (=> b!7620922 (=> res!3051176 e!4531567)))

(assert (=> b!7620922 (= res!3051176 call!699907)))

(assert (= (and d!2323183 c!1404525) b!7620916))

(assert (= (and d!2323183 (not c!1404525)) b!7620919))

(assert (= (and d!2323183 c!1404524) b!7620920))

(assert (= (and d!2323183 (not c!1404524)) b!7620917))

(assert (= (and b!7620917 c!1404526) b!7620921))

(assert (= (and b!7620917 (not c!1404526)) b!7620912))

(assert (= (and b!7620912 (not res!3051174)) b!7620910))

(assert (= (and b!7620910 res!3051175) b!7620909))

(assert (= (and b!7620909 res!3051173) b!7620913))

(assert (= (and b!7620913 res!3051172) b!7620914))

(assert (= (and b!7620910 (not res!3051179)) b!7620918))

(assert (= (and b!7620918 res!3051177) b!7620922))

(assert (= (and b!7620922 (not res!3051176)) b!7620911))

(assert (= (and b!7620911 (not res!3051178)) b!7620915))

(assert (= (or b!7620920 b!7620909 b!7620922) bm!699902))

(declare-fun m!8152738 () Bool)

(assert (=> b!7620916 m!8152738))

(assert (=> bm!699902 m!8152600))

(declare-fun m!8152740 () Bool)

(assert (=> b!7620911 m!8152740))

(assert (=> b!7620911 m!8152740))

(declare-fun m!8152742 () Bool)

(assert (=> b!7620911 m!8152742))

(declare-fun m!8152744 () Bool)

(assert (=> b!7620919 m!8152744))

(assert (=> b!7620919 m!8152744))

(declare-fun m!8152746 () Bool)

(assert (=> b!7620919 m!8152746))

(assert (=> b!7620919 m!8152740))

(assert (=> b!7620919 m!8152746))

(assert (=> b!7620919 m!8152740))

(declare-fun m!8152748 () Bool)

(assert (=> b!7620919 m!8152748))

(assert (=> d!2323183 m!8152600))

(assert (=> d!2323183 m!8152602))

(assert (=> b!7620913 m!8152740))

(assert (=> b!7620913 m!8152740))

(assert (=> b!7620913 m!8152742))

(assert (=> b!7620914 m!8152744))

(assert (=> b!7620915 m!8152744))

(assert (=> b!7620708 d!2323183))

(assert (=> b!7620708 d!2323169))

(declare-fun b!7620923 () Bool)

(declare-fun res!3051181 () Bool)

(declare-fun e!4531578 () Bool)

(assert (=> b!7620923 (=> (not res!3051181) (not e!4531578))))

(declare-fun call!699908 () Bool)

(assert (=> b!7620923 (= res!3051181 (not call!699908))))

(declare-fun b!7620924 () Bool)

(declare-fun res!3051187 () Bool)

(declare-fun e!4531573 () Bool)

(assert (=> b!7620924 (=> res!3051187 e!4531573)))

(assert (=> b!7620924 (= res!3051187 e!4531578)))

(declare-fun res!3051183 () Bool)

(assert (=> b!7620924 (=> (not res!3051183) (not e!4531578))))

(declare-fun lt!2656784 () Bool)

(assert (=> b!7620924 (= res!3051183 lt!2656784)))

(declare-fun b!7620925 () Bool)

(declare-fun res!3051186 () Bool)

(declare-fun e!4531574 () Bool)

(assert (=> b!7620925 (=> res!3051186 e!4531574)))

(assert (=> b!7620925 (= res!3051186 (not (isEmpty!41657 (tail!15195 (_1!37894 lt!2656696)))))))

(declare-fun d!2323189 () Bool)

(declare-fun e!4531575 () Bool)

(assert (=> d!2323189 e!4531575))

(declare-fun c!1404527 () Bool)

(assert (=> d!2323189 (= c!1404527 (is-EmptyExpr!20310 (reg!20639 r!14126)))))

(declare-fun e!4531576 () Bool)

(assert (=> d!2323189 (= lt!2656784 e!4531576)))

(declare-fun c!1404528 () Bool)

(assert (=> d!2323189 (= c!1404528 (isEmpty!41657 (_1!37894 lt!2656696)))))

(assert (=> d!2323189 (validRegex!10730 (reg!20639 r!14126))))

(assert (=> d!2323189 (= (matchR!9817 (reg!20639 r!14126) (_1!37894 lt!2656696)) lt!2656784)))

(declare-fun b!7620926 () Bool)

(declare-fun res!3051182 () Bool)

(assert (=> b!7620926 (=> res!3051182 e!4531573)))

(assert (=> b!7620926 (= res!3051182 (not (is-ElementMatch!20310 (reg!20639 r!14126))))))

(declare-fun e!4531577 () Bool)

(assert (=> b!7620926 (= e!4531577 e!4531573)))

(declare-fun b!7620927 () Bool)

(declare-fun res!3051180 () Bool)

(assert (=> b!7620927 (=> (not res!3051180) (not e!4531578))))

(assert (=> b!7620927 (= res!3051180 (isEmpty!41657 (tail!15195 (_1!37894 lt!2656696))))))

(declare-fun b!7620928 () Bool)

(assert (=> b!7620928 (= e!4531578 (= (head!15655 (_1!37894 lt!2656696)) (c!1404492 (reg!20639 r!14126))))))

(declare-fun b!7620929 () Bool)

(assert (=> b!7620929 (= e!4531574 (not (= (head!15655 (_1!37894 lt!2656696)) (c!1404492 (reg!20639 r!14126)))))))

(declare-fun b!7620930 () Bool)

(assert (=> b!7620930 (= e!4531576 (nullable!8877 (reg!20639 r!14126)))))

(declare-fun b!7620931 () Bool)

(assert (=> b!7620931 (= e!4531575 e!4531577)))

(declare-fun c!1404529 () Bool)

(assert (=> b!7620931 (= c!1404529 (is-EmptyLang!20310 (reg!20639 r!14126)))))

(declare-fun bm!699903 () Bool)

(assert (=> bm!699903 (= call!699908 (isEmpty!41657 (_1!37894 lt!2656696)))))

(declare-fun b!7620932 () Bool)

(declare-fun e!4531572 () Bool)

(assert (=> b!7620932 (= e!4531573 e!4531572)))

(declare-fun res!3051185 () Bool)

(assert (=> b!7620932 (=> (not res!3051185) (not e!4531572))))

(assert (=> b!7620932 (= res!3051185 (not lt!2656784))))

(declare-fun b!7620933 () Bool)

(assert (=> b!7620933 (= e!4531576 (matchR!9817 (derivativeStep!5855 (reg!20639 r!14126) (head!15655 (_1!37894 lt!2656696))) (tail!15195 (_1!37894 lt!2656696))))))

(declare-fun b!7620934 () Bool)

(assert (=> b!7620934 (= e!4531575 (= lt!2656784 call!699908))))

(declare-fun b!7620935 () Bool)

(assert (=> b!7620935 (= e!4531577 (not lt!2656784))))

(declare-fun b!7620936 () Bool)

(assert (=> b!7620936 (= e!4531572 e!4531574)))

(declare-fun res!3051184 () Bool)

(assert (=> b!7620936 (=> res!3051184 e!4531574)))

(assert (=> b!7620936 (= res!3051184 call!699908)))

(assert (= (and d!2323189 c!1404528) b!7620930))

(assert (= (and d!2323189 (not c!1404528)) b!7620933))

(assert (= (and d!2323189 c!1404527) b!7620934))

(assert (= (and d!2323189 (not c!1404527)) b!7620931))

(assert (= (and b!7620931 c!1404529) b!7620935))

(assert (= (and b!7620931 (not c!1404529)) b!7620926))

(assert (= (and b!7620926 (not res!3051182)) b!7620924))

(assert (= (and b!7620924 res!3051183) b!7620923))

(assert (= (and b!7620923 res!3051181) b!7620927))

(assert (= (and b!7620927 res!3051180) b!7620928))

(assert (= (and b!7620924 (not res!3051187)) b!7620932))

(assert (= (and b!7620932 res!3051185) b!7620936))

(assert (= (and b!7620936 (not res!3051184)) b!7620925))

(assert (= (and b!7620925 (not res!3051186)) b!7620929))

(assert (= (or b!7620934 b!7620923 b!7620936) bm!699903))

(assert (=> b!7620930 m!8152582))

(declare-fun m!8152750 () Bool)

(assert (=> bm!699903 m!8152750))

(declare-fun m!8152752 () Bool)

(assert (=> b!7620925 m!8152752))

(assert (=> b!7620925 m!8152752))

(declare-fun m!8152754 () Bool)

(assert (=> b!7620925 m!8152754))

(declare-fun m!8152756 () Bool)

(assert (=> b!7620933 m!8152756))

(assert (=> b!7620933 m!8152756))

(declare-fun m!8152758 () Bool)

(assert (=> b!7620933 m!8152758))

(assert (=> b!7620933 m!8152752))

(assert (=> b!7620933 m!8152758))

(assert (=> b!7620933 m!8152752))

(declare-fun m!8152760 () Bool)

(assert (=> b!7620933 m!8152760))

(assert (=> d!2323189 m!8152750))

(assert (=> d!2323189 m!8152690))

(assert (=> b!7620927 m!8152752))

(assert (=> b!7620927 m!8152752))

(assert (=> b!7620927 m!8152754))

(assert (=> b!7620928 m!8152756))

(assert (=> b!7620929 m!8152756))

(assert (=> b!7620708 d!2323189))

(declare-fun d!2323191 () Bool)

(assert (=> d!2323191 (= (get!25777 lt!2656692) (v!54519 lt!2656692))))

(assert (=> b!7620708 d!2323191))

(declare-fun d!2323193 () Bool)

(assert (=> d!2323193 (= (matchR!9817 r!14126 (_2!37894 lt!2656696)) (matchRSpec!4509 r!14126 (_2!37894 lt!2656696)))))

(declare-fun lt!2656790 () Unit!167488)

(declare-fun choose!58797 (Regex!20310 List!73163) Unit!167488)

(assert (=> d!2323193 (= lt!2656790 (choose!58797 r!14126 (_2!37894 lt!2656696)))))

(assert (=> d!2323193 (validRegex!10730 r!14126)))

(assert (=> d!2323193 (= (mainMatchTheorem!4503 r!14126 (_2!37894 lt!2656696)) lt!2656790)))

(declare-fun bs!1943296 () Bool)

(assert (= bs!1943296 d!2323193))

(assert (=> bs!1943296 m!8152562))

(assert (=> bs!1943296 m!8152548))

(declare-fun m!8152766 () Bool)

(assert (=> bs!1943296 m!8152766))

(assert (=> bs!1943296 m!8152602))

(assert (=> b!7620708 d!2323193))

(declare-fun bs!1943297 () Bool)

(declare-fun b!7621001 () Bool)

(assert (= bs!1943297 (and b!7621001 b!7620705)))

(declare-fun lambda!468427 () Int)

(assert (=> bs!1943297 (not (= lambda!468427 lambda!468412))))

(declare-fun bs!1943298 () Bool)

(assert (= bs!1943298 (and b!7621001 d!2323177)))

(assert (=> bs!1943298 (not (= lambda!468427 lambda!468422))))

(assert (=> b!7621001 true))

(assert (=> b!7621001 true))

(declare-fun bs!1943299 () Bool)

(declare-fun b!7621000 () Bool)

(assert (= bs!1943299 (and b!7621000 b!7620705)))

(declare-fun lambda!468429 () Int)

(assert (=> bs!1943299 (not (= lambda!468429 lambda!468412))))

(declare-fun bs!1943300 () Bool)

(assert (= bs!1943300 (and b!7621000 d!2323177)))

(assert (=> bs!1943300 (not (= lambda!468429 lambda!468422))))

(declare-fun bs!1943301 () Bool)

(assert (= bs!1943301 (and b!7621000 b!7621001)))

(assert (=> bs!1943301 (not (= lambda!468429 lambda!468427))))

(assert (=> b!7621000 true))

(assert (=> b!7621000 true))

(declare-fun b!7620991 () Bool)

(declare-fun e!4531617 () Bool)

(declare-fun e!4531611 () Bool)

(assert (=> b!7620991 (= e!4531617 e!4531611)))

(declare-fun c!1404548 () Bool)

(assert (=> b!7620991 (= c!1404548 (is-Star!20310 (reg!20639 r!14126)))))

(declare-fun b!7620992 () Bool)

(declare-fun res!3051211 () Bool)

(declare-fun e!4531612 () Bool)

(assert (=> b!7620992 (=> res!3051211 e!4531612)))

(declare-fun call!699913 () Bool)

(assert (=> b!7620992 (= res!3051211 call!699913)))

(assert (=> b!7620992 (= e!4531611 e!4531612)))

(declare-fun b!7620993 () Bool)

(declare-fun e!4531615 () Bool)

(assert (=> b!7620993 (= e!4531617 e!4531615)))

(declare-fun res!3051212 () Bool)

(assert (=> b!7620993 (= res!3051212 (matchRSpec!4509 (regOne!41133 (reg!20639 r!14126)) (_1!37894 lt!2656696)))))

(assert (=> b!7620993 (=> res!3051212 e!4531615)))

(declare-fun b!7620994 () Bool)

(declare-fun e!4531613 () Bool)

(assert (=> b!7620994 (= e!4531613 (= (_1!37894 lt!2656696) (Cons!73039 (c!1404492 (reg!20639 r!14126)) Nil!73039)))))

(declare-fun b!7620995 () Bool)

(declare-fun c!1404549 () Bool)

(assert (=> b!7620995 (= c!1404549 (is-ElementMatch!20310 (reg!20639 r!14126)))))

(declare-fun e!4531616 () Bool)

(assert (=> b!7620995 (= e!4531616 e!4531613)))

(declare-fun b!7620996 () Bool)

(assert (=> b!7620996 (= e!4531615 (matchRSpec!4509 (regTwo!41133 (reg!20639 r!14126)) (_1!37894 lt!2656696)))))

(declare-fun b!7620997 () Bool)

(declare-fun c!1404547 () Bool)

(assert (=> b!7620997 (= c!1404547 (is-Union!20310 (reg!20639 r!14126)))))

(assert (=> b!7620997 (= e!4531613 e!4531617)))

(declare-fun d!2323197 () Bool)

(declare-fun c!1404546 () Bool)

(assert (=> d!2323197 (= c!1404546 (is-EmptyExpr!20310 (reg!20639 r!14126)))))

(declare-fun e!4531614 () Bool)

(assert (=> d!2323197 (= (matchRSpec!4509 (reg!20639 r!14126) (_1!37894 lt!2656696)) e!4531614)))

(declare-fun b!7620998 () Bool)

(assert (=> b!7620998 (= e!4531614 call!699913)))

(declare-fun bm!699908 () Bool)

(declare-fun call!699914 () Bool)

(assert (=> bm!699908 (= call!699914 (Exists!4466 (ite c!1404548 lambda!468427 lambda!468429)))))

(declare-fun b!7620999 () Bool)

(assert (=> b!7620999 (= e!4531614 e!4531616)))

(declare-fun res!3051210 () Bool)

(assert (=> b!7620999 (= res!3051210 (not (is-EmptyLang!20310 (reg!20639 r!14126))))))

(assert (=> b!7620999 (=> (not res!3051210) (not e!4531616))))

(declare-fun bm!699909 () Bool)

(assert (=> bm!699909 (= call!699913 (isEmpty!41657 (_1!37894 lt!2656696)))))

(assert (=> b!7621000 (= e!4531611 call!699914)))

(assert (=> b!7621001 (= e!4531612 call!699914)))

(assert (= (and d!2323197 c!1404546) b!7620998))

(assert (= (and d!2323197 (not c!1404546)) b!7620999))

(assert (= (and b!7620999 res!3051210) b!7620995))

(assert (= (and b!7620995 c!1404549) b!7620994))

(assert (= (and b!7620995 (not c!1404549)) b!7620997))

(assert (= (and b!7620997 c!1404547) b!7620993))

(assert (= (and b!7620997 (not c!1404547)) b!7620991))

(assert (= (and b!7620993 (not res!3051212)) b!7620996))

(assert (= (and b!7620991 c!1404548) b!7620992))

(assert (= (and b!7620991 (not c!1404548)) b!7621000))

(assert (= (and b!7620992 (not res!3051211)) b!7621001))

(assert (= (or b!7621001 b!7621000) bm!699908))

(assert (= (or b!7620998 b!7620992) bm!699909))

(declare-fun m!8152768 () Bool)

(assert (=> b!7620993 m!8152768))

(declare-fun m!8152770 () Bool)

(assert (=> b!7620996 m!8152770))

(declare-fun m!8152772 () Bool)

(assert (=> bm!699908 m!8152772))

(assert (=> bm!699909 m!8152750))

(assert (=> b!7620708 d!2323197))

(declare-fun d!2323199 () Bool)

(assert (=> d!2323199 (= (matchR!9817 (reg!20639 r!14126) (_1!37894 lt!2656696)) (matchRSpec!4509 (reg!20639 r!14126) (_1!37894 lt!2656696)))))

(declare-fun lt!2656791 () Unit!167488)

(assert (=> d!2323199 (= lt!2656791 (choose!58797 (reg!20639 r!14126) (_1!37894 lt!2656696)))))

(assert (=> d!2323199 (validRegex!10730 (reg!20639 r!14126))))

(assert (=> d!2323199 (= (mainMatchTheorem!4503 (reg!20639 r!14126) (_1!37894 lt!2656696)) lt!2656791)))

(declare-fun bs!1943302 () Bool)

(assert (= bs!1943302 d!2323199))

(assert (=> bs!1943302 m!8152554))

(assert (=> bs!1943302 m!8152546))

(declare-fun m!8152774 () Bool)

(assert (=> bs!1943302 m!8152774))

(assert (=> bs!1943302 m!8152690))

(assert (=> b!7620708 d!2323199))

(declare-fun b!7621008 () Bool)

(declare-fun res!3051220 () Bool)

(declare-fun e!4531626 () Bool)

(assert (=> b!7621008 (=> (not res!3051220) (not e!4531626))))

(declare-fun call!699915 () Bool)

(assert (=> b!7621008 (= res!3051220 (not call!699915))))

(declare-fun b!7621009 () Bool)

(declare-fun res!3051226 () Bool)

(declare-fun e!4531621 () Bool)

(assert (=> b!7621009 (=> res!3051226 e!4531621)))

(assert (=> b!7621009 (= res!3051226 e!4531626)))

(declare-fun res!3051222 () Bool)

(assert (=> b!7621009 (=> (not res!3051222) (not e!4531626))))

(declare-fun lt!2656792 () Bool)

(assert (=> b!7621009 (= res!3051222 lt!2656792)))

(declare-fun b!7621010 () Bool)

(declare-fun res!3051225 () Bool)

(declare-fun e!4531622 () Bool)

(assert (=> b!7621010 (=> res!3051225 e!4531622)))

(assert (=> b!7621010 (= res!3051225 (not (isEmpty!41657 (tail!15195 (_2!37894 lt!2656696)))))))

(declare-fun d!2323201 () Bool)

(declare-fun e!4531623 () Bool)

(assert (=> d!2323201 e!4531623))

(declare-fun c!1404550 () Bool)

(assert (=> d!2323201 (= c!1404550 (is-EmptyExpr!20310 r!14126))))

(declare-fun e!4531624 () Bool)

(assert (=> d!2323201 (= lt!2656792 e!4531624)))

(declare-fun c!1404551 () Bool)

(assert (=> d!2323201 (= c!1404551 (isEmpty!41657 (_2!37894 lt!2656696)))))

(assert (=> d!2323201 (validRegex!10730 r!14126)))

(assert (=> d!2323201 (= (matchR!9817 r!14126 (_2!37894 lt!2656696)) lt!2656792)))

(declare-fun b!7621011 () Bool)

(declare-fun res!3051221 () Bool)

(assert (=> b!7621011 (=> res!3051221 e!4531621)))

(assert (=> b!7621011 (= res!3051221 (not (is-ElementMatch!20310 r!14126)))))

(declare-fun e!4531625 () Bool)

(assert (=> b!7621011 (= e!4531625 e!4531621)))

(declare-fun b!7621012 () Bool)

(declare-fun res!3051219 () Bool)

(assert (=> b!7621012 (=> (not res!3051219) (not e!4531626))))

(assert (=> b!7621012 (= res!3051219 (isEmpty!41657 (tail!15195 (_2!37894 lt!2656696))))))

(declare-fun b!7621013 () Bool)

(assert (=> b!7621013 (= e!4531626 (= (head!15655 (_2!37894 lt!2656696)) (c!1404492 r!14126)))))

(declare-fun b!7621014 () Bool)

(assert (=> b!7621014 (= e!4531622 (not (= (head!15655 (_2!37894 lt!2656696)) (c!1404492 r!14126))))))

(declare-fun b!7621015 () Bool)

(assert (=> b!7621015 (= e!4531624 (nullable!8877 r!14126))))

(declare-fun b!7621016 () Bool)

(assert (=> b!7621016 (= e!4531623 e!4531625)))

(declare-fun c!1404552 () Bool)

(assert (=> b!7621016 (= c!1404552 (is-EmptyLang!20310 r!14126))))

(declare-fun bm!699910 () Bool)

(assert (=> bm!699910 (= call!699915 (isEmpty!41657 (_2!37894 lt!2656696)))))

(declare-fun b!7621017 () Bool)

(declare-fun e!4531620 () Bool)

(assert (=> b!7621017 (= e!4531621 e!4531620)))

(declare-fun res!3051224 () Bool)

(assert (=> b!7621017 (=> (not res!3051224) (not e!4531620))))

(assert (=> b!7621017 (= res!3051224 (not lt!2656792))))

(declare-fun b!7621018 () Bool)

(assert (=> b!7621018 (= e!4531624 (matchR!9817 (derivativeStep!5855 r!14126 (head!15655 (_2!37894 lt!2656696))) (tail!15195 (_2!37894 lt!2656696))))))

(declare-fun b!7621019 () Bool)

(assert (=> b!7621019 (= e!4531623 (= lt!2656792 call!699915))))

(declare-fun b!7621020 () Bool)

(assert (=> b!7621020 (= e!4531625 (not lt!2656792))))

(declare-fun b!7621021 () Bool)

(assert (=> b!7621021 (= e!4531620 e!4531622)))

(declare-fun res!3051223 () Bool)

(assert (=> b!7621021 (=> res!3051223 e!4531622)))

(assert (=> b!7621021 (= res!3051223 call!699915)))

(assert (= (and d!2323201 c!1404551) b!7621015))

(assert (= (and d!2323201 (not c!1404551)) b!7621018))

(assert (= (and d!2323201 c!1404550) b!7621019))

(assert (= (and d!2323201 (not c!1404550)) b!7621016))

(assert (= (and b!7621016 c!1404552) b!7621020))

(assert (= (and b!7621016 (not c!1404552)) b!7621011))

(assert (= (and b!7621011 (not res!3051221)) b!7621009))

(assert (= (and b!7621009 res!3051222) b!7621008))

(assert (= (and b!7621008 res!3051220) b!7621012))

(assert (= (and b!7621012 res!3051219) b!7621013))

(assert (= (and b!7621009 (not res!3051226)) b!7621017))

(assert (= (and b!7621017 res!3051224) b!7621021))

(assert (= (and b!7621021 (not res!3051223)) b!7621010))

(assert (= (and b!7621010 (not res!3051225)) b!7621014))

(assert (= (or b!7621019 b!7621008 b!7621021) bm!699910))

(assert (=> b!7621015 m!8152738))

(declare-fun m!8152776 () Bool)

(assert (=> bm!699910 m!8152776))

(declare-fun m!8152778 () Bool)

(assert (=> b!7621010 m!8152778))

(assert (=> b!7621010 m!8152778))

(declare-fun m!8152780 () Bool)

(assert (=> b!7621010 m!8152780))

(declare-fun m!8152782 () Bool)

(assert (=> b!7621018 m!8152782))

(assert (=> b!7621018 m!8152782))

(declare-fun m!8152784 () Bool)

(assert (=> b!7621018 m!8152784))

(assert (=> b!7621018 m!8152778))

(assert (=> b!7621018 m!8152784))

(assert (=> b!7621018 m!8152778))

(declare-fun m!8152786 () Bool)

(assert (=> b!7621018 m!8152786))

(assert (=> d!2323201 m!8152776))

(assert (=> d!2323201 m!8152602))

(assert (=> b!7621012 m!8152778))

(assert (=> b!7621012 m!8152778))

(assert (=> b!7621012 m!8152780))

(assert (=> b!7621013 m!8152782))

(assert (=> b!7621014 m!8152782))

(assert (=> b!7620708 d!2323201))

(declare-fun bs!1943303 () Bool)

(declare-fun b!7621032 () Bool)

(assert (= bs!1943303 (and b!7621032 b!7620705)))

(declare-fun lambda!468431 () Int)

(assert (=> bs!1943303 (not (= lambda!468431 lambda!468412))))

(declare-fun bs!1943304 () Bool)

(assert (= bs!1943304 (and b!7621032 d!2323177)))

(assert (=> bs!1943304 (not (= lambda!468431 lambda!468422))))

(declare-fun bs!1943305 () Bool)

(assert (= bs!1943305 (and b!7621032 b!7621001)))

(assert (=> bs!1943305 (= (and (= (_2!37894 lt!2656696) (_1!37894 lt!2656696)) (= (reg!20639 r!14126) (reg!20639 (reg!20639 r!14126))) (= r!14126 (reg!20639 r!14126))) (= lambda!468431 lambda!468427))))

(declare-fun bs!1943306 () Bool)

(assert (= bs!1943306 (and b!7621032 b!7621000)))

(assert (=> bs!1943306 (not (= lambda!468431 lambda!468429))))

(assert (=> b!7621032 true))

(assert (=> b!7621032 true))

(declare-fun bs!1943307 () Bool)

(declare-fun b!7621031 () Bool)

(assert (= bs!1943307 (and b!7621031 b!7621032)))

(declare-fun lambda!468432 () Int)

(assert (=> bs!1943307 (not (= lambda!468432 lambda!468431))))

(declare-fun bs!1943308 () Bool)

(assert (= bs!1943308 (and b!7621031 b!7621000)))

(assert (=> bs!1943308 (= (and (= (_2!37894 lt!2656696) (_1!37894 lt!2656696)) (= (regOne!41132 r!14126) (regOne!41132 (reg!20639 r!14126))) (= (regTwo!41132 r!14126) (regTwo!41132 (reg!20639 r!14126)))) (= lambda!468432 lambda!468429))))

(declare-fun bs!1943309 () Bool)

(assert (= bs!1943309 (and b!7621031 b!7620705)))

(assert (=> bs!1943309 (not (= lambda!468432 lambda!468412))))

(declare-fun bs!1943310 () Bool)

(assert (= bs!1943310 (and b!7621031 b!7621001)))

(assert (=> bs!1943310 (not (= lambda!468432 lambda!468427))))

(declare-fun bs!1943311 () Bool)

(assert (= bs!1943311 (and b!7621031 d!2323177)))

(assert (=> bs!1943311 (not (= lambda!468432 lambda!468422))))

(assert (=> b!7621031 true))

(assert (=> b!7621031 true))

(declare-fun b!7621022 () Bool)

(declare-fun e!4531633 () Bool)

(declare-fun e!4531627 () Bool)

(assert (=> b!7621022 (= e!4531633 e!4531627)))

(declare-fun c!1404555 () Bool)

(assert (=> b!7621022 (= c!1404555 (is-Star!20310 r!14126))))

(declare-fun b!7621023 () Bool)

(declare-fun res!3051228 () Bool)

(declare-fun e!4531628 () Bool)

(assert (=> b!7621023 (=> res!3051228 e!4531628)))

(declare-fun call!699916 () Bool)

(assert (=> b!7621023 (= res!3051228 call!699916)))

(assert (=> b!7621023 (= e!4531627 e!4531628)))

(declare-fun b!7621024 () Bool)

(declare-fun e!4531631 () Bool)

(assert (=> b!7621024 (= e!4531633 e!4531631)))

(declare-fun res!3051229 () Bool)

(assert (=> b!7621024 (= res!3051229 (matchRSpec!4509 (regOne!41133 r!14126) (_2!37894 lt!2656696)))))

(assert (=> b!7621024 (=> res!3051229 e!4531631)))

(declare-fun b!7621025 () Bool)

(declare-fun e!4531629 () Bool)

(assert (=> b!7621025 (= e!4531629 (= (_2!37894 lt!2656696) (Cons!73039 (c!1404492 r!14126) Nil!73039)))))

(declare-fun b!7621026 () Bool)

(declare-fun c!1404556 () Bool)

(assert (=> b!7621026 (= c!1404556 (is-ElementMatch!20310 r!14126))))

(declare-fun e!4531632 () Bool)

(assert (=> b!7621026 (= e!4531632 e!4531629)))

(declare-fun b!7621027 () Bool)

(assert (=> b!7621027 (= e!4531631 (matchRSpec!4509 (regTwo!41133 r!14126) (_2!37894 lt!2656696)))))

(declare-fun b!7621028 () Bool)

(declare-fun c!1404554 () Bool)

(assert (=> b!7621028 (= c!1404554 (is-Union!20310 r!14126))))

(assert (=> b!7621028 (= e!4531629 e!4531633)))

(declare-fun d!2323203 () Bool)

(declare-fun c!1404553 () Bool)

(assert (=> d!2323203 (= c!1404553 (is-EmptyExpr!20310 r!14126))))

(declare-fun e!4531630 () Bool)

(assert (=> d!2323203 (= (matchRSpec!4509 r!14126 (_2!37894 lt!2656696)) e!4531630)))

(declare-fun b!7621029 () Bool)

(assert (=> b!7621029 (= e!4531630 call!699916)))

(declare-fun bm!699911 () Bool)

(declare-fun call!699917 () Bool)

(assert (=> bm!699911 (= call!699917 (Exists!4466 (ite c!1404555 lambda!468431 lambda!468432)))))

(declare-fun b!7621030 () Bool)

(assert (=> b!7621030 (= e!4531630 e!4531632)))

(declare-fun res!3051227 () Bool)

(assert (=> b!7621030 (= res!3051227 (not (is-EmptyLang!20310 r!14126)))))

(assert (=> b!7621030 (=> (not res!3051227) (not e!4531632))))

(declare-fun bm!699912 () Bool)

(assert (=> bm!699912 (= call!699916 (isEmpty!41657 (_2!37894 lt!2656696)))))

(assert (=> b!7621031 (= e!4531627 call!699917)))

(assert (=> b!7621032 (= e!4531628 call!699917)))

(assert (= (and d!2323203 c!1404553) b!7621029))

(assert (= (and d!2323203 (not c!1404553)) b!7621030))

(assert (= (and b!7621030 res!3051227) b!7621026))

(assert (= (and b!7621026 c!1404556) b!7621025))

(assert (= (and b!7621026 (not c!1404556)) b!7621028))

(assert (= (and b!7621028 c!1404554) b!7621024))

(assert (= (and b!7621028 (not c!1404554)) b!7621022))

(assert (= (and b!7621024 (not res!3051229)) b!7621027))

(assert (= (and b!7621022 c!1404555) b!7621023))

(assert (= (and b!7621022 (not c!1404555)) b!7621031))

(assert (= (and b!7621023 (not res!3051228)) b!7621032))

(assert (= (or b!7621032 b!7621031) bm!699911))

(assert (= (or b!7621029 b!7621023) bm!699912))

(declare-fun m!8152788 () Bool)

(assert (=> b!7621024 m!8152788))

(declare-fun m!8152790 () Bool)

(assert (=> b!7621027 m!8152790))

(declare-fun m!8152792 () Bool)

(assert (=> bm!699911 m!8152792))

(assert (=> bm!699912 m!8152776))

(assert (=> b!7620708 d!2323203))

(declare-fun d!2323205 () Bool)

(assert (=> d!2323205 (= (isEmpty!41657 s!9605) (is-Nil!73039 s!9605))))

(assert (=> b!7620707 d!2323205))

(declare-fun b!7621033 () Bool)

(declare-fun res!3051231 () Bool)

(declare-fun e!4531640 () Bool)

(assert (=> b!7621033 (=> (not res!3051231) (not e!4531640))))

(declare-fun call!699918 () Bool)

(assert (=> b!7621033 (= res!3051231 (not call!699918))))

(declare-fun b!7621034 () Bool)

(declare-fun res!3051237 () Bool)

(declare-fun e!4531635 () Bool)

(assert (=> b!7621034 (=> res!3051237 e!4531635)))

(assert (=> b!7621034 (= res!3051237 e!4531640)))

(declare-fun res!3051233 () Bool)

(assert (=> b!7621034 (=> (not res!3051233) (not e!4531640))))

(declare-fun lt!2656793 () Bool)

(assert (=> b!7621034 (= res!3051233 lt!2656793)))

(declare-fun b!7621035 () Bool)

(declare-fun res!3051236 () Bool)

(declare-fun e!4531636 () Bool)

(assert (=> b!7621035 (=> res!3051236 e!4531636)))

(assert (=> b!7621035 (= res!3051236 (not (isEmpty!41657 (tail!15195 (_2!37894 lt!2656700)))))))

(declare-fun d!2323207 () Bool)

(declare-fun e!4531637 () Bool)

(assert (=> d!2323207 e!4531637))

(declare-fun c!1404557 () Bool)

(assert (=> d!2323207 (= c!1404557 (is-EmptyExpr!20310 r!14126))))

(declare-fun e!4531638 () Bool)

(assert (=> d!2323207 (= lt!2656793 e!4531638)))

(declare-fun c!1404558 () Bool)

(assert (=> d!2323207 (= c!1404558 (isEmpty!41657 (_2!37894 lt!2656700)))))

(assert (=> d!2323207 (validRegex!10730 r!14126)))

(assert (=> d!2323207 (= (matchR!9817 r!14126 (_2!37894 lt!2656700)) lt!2656793)))

(declare-fun b!7621036 () Bool)

(declare-fun res!3051232 () Bool)

(assert (=> b!7621036 (=> res!3051232 e!4531635)))

(assert (=> b!7621036 (= res!3051232 (not (is-ElementMatch!20310 r!14126)))))

(declare-fun e!4531639 () Bool)

(assert (=> b!7621036 (= e!4531639 e!4531635)))

(declare-fun b!7621037 () Bool)

(declare-fun res!3051230 () Bool)

(assert (=> b!7621037 (=> (not res!3051230) (not e!4531640))))

(assert (=> b!7621037 (= res!3051230 (isEmpty!41657 (tail!15195 (_2!37894 lt!2656700))))))

(declare-fun b!7621038 () Bool)

(assert (=> b!7621038 (= e!4531640 (= (head!15655 (_2!37894 lt!2656700)) (c!1404492 r!14126)))))

(declare-fun b!7621039 () Bool)

(assert (=> b!7621039 (= e!4531636 (not (= (head!15655 (_2!37894 lt!2656700)) (c!1404492 r!14126))))))

(declare-fun b!7621040 () Bool)

(assert (=> b!7621040 (= e!4531638 (nullable!8877 r!14126))))

(declare-fun b!7621041 () Bool)

(assert (=> b!7621041 (= e!4531637 e!4531639)))

(declare-fun c!1404559 () Bool)

(assert (=> b!7621041 (= c!1404559 (is-EmptyLang!20310 r!14126))))

(declare-fun bm!699913 () Bool)

(assert (=> bm!699913 (= call!699918 (isEmpty!41657 (_2!37894 lt!2656700)))))

(declare-fun b!7621042 () Bool)

(declare-fun e!4531634 () Bool)

(assert (=> b!7621042 (= e!4531635 e!4531634)))

(declare-fun res!3051235 () Bool)

(assert (=> b!7621042 (=> (not res!3051235) (not e!4531634))))

(assert (=> b!7621042 (= res!3051235 (not lt!2656793))))

(declare-fun b!7621043 () Bool)

(assert (=> b!7621043 (= e!4531638 (matchR!9817 (derivativeStep!5855 r!14126 (head!15655 (_2!37894 lt!2656700))) (tail!15195 (_2!37894 lt!2656700))))))

(declare-fun b!7621044 () Bool)

(assert (=> b!7621044 (= e!4531637 (= lt!2656793 call!699918))))

(declare-fun b!7621045 () Bool)

(assert (=> b!7621045 (= e!4531639 (not lt!2656793))))

(declare-fun b!7621046 () Bool)

(assert (=> b!7621046 (= e!4531634 e!4531636)))

(declare-fun res!3051234 () Bool)

(assert (=> b!7621046 (=> res!3051234 e!4531636)))

(assert (=> b!7621046 (= res!3051234 call!699918)))

(assert (= (and d!2323207 c!1404558) b!7621040))

(assert (= (and d!2323207 (not c!1404558)) b!7621043))

(assert (= (and d!2323207 c!1404557) b!7621044))

(assert (= (and d!2323207 (not c!1404557)) b!7621041))

(assert (= (and b!7621041 c!1404559) b!7621045))

(assert (= (and b!7621041 (not c!1404559)) b!7621036))

(assert (= (and b!7621036 (not res!3051232)) b!7621034))

(assert (= (and b!7621034 res!3051233) b!7621033))

(assert (= (and b!7621033 res!3051231) b!7621037))

(assert (= (and b!7621037 res!3051230) b!7621038))

(assert (= (and b!7621034 (not res!3051237)) b!7621042))

(assert (= (and b!7621042 res!3051235) b!7621046))

(assert (= (and b!7621046 (not res!3051234)) b!7621035))

(assert (= (and b!7621035 (not res!3051236)) b!7621039))

(assert (= (or b!7621044 b!7621033 b!7621046) bm!699913))

(assert (=> b!7621040 m!8152738))

(declare-fun m!8152794 () Bool)

(assert (=> bm!699913 m!8152794))

(declare-fun m!8152796 () Bool)

(assert (=> b!7621035 m!8152796))

(assert (=> b!7621035 m!8152796))

(declare-fun m!8152798 () Bool)

(assert (=> b!7621035 m!8152798))

(declare-fun m!8152800 () Bool)

(assert (=> b!7621043 m!8152800))

(assert (=> b!7621043 m!8152800))

(declare-fun m!8152802 () Bool)

(assert (=> b!7621043 m!8152802))

(assert (=> b!7621043 m!8152796))

(assert (=> b!7621043 m!8152802))

(assert (=> b!7621043 m!8152796))

(declare-fun m!8152804 () Bool)

(assert (=> b!7621043 m!8152804))

(assert (=> d!2323207 m!8152794))

(assert (=> d!2323207 m!8152602))

(assert (=> b!7621037 m!8152796))

(assert (=> b!7621037 m!8152796))

(assert (=> b!7621037 m!8152798))

(assert (=> b!7621038 m!8152800))

(assert (=> b!7621039 m!8152800))

(assert (=> b!7620712 d!2323207))

(declare-fun d!2323209 () Bool)

(declare-fun nullableFct!3545 (Regex!20310) Bool)

(assert (=> d!2323209 (= (nullable!8877 (reg!20639 r!14126)) (nullableFct!3545 (reg!20639 r!14126)))))

(declare-fun bs!1943312 () Bool)

(assert (= bs!1943312 d!2323209))

(declare-fun m!8152806 () Bool)

(assert (=> bs!1943312 m!8152806))

(assert (=> b!7620712 d!2323209))

(declare-fun d!2323211 () Bool)

(assert (=> d!2323211 (= (matchR!9817 (reg!20639 r!14126) (_1!37894 lt!2656700)) (matchRSpec!4509 (reg!20639 r!14126) (_1!37894 lt!2656700)))))

(declare-fun lt!2656794 () Unit!167488)

(assert (=> d!2323211 (= lt!2656794 (choose!58797 (reg!20639 r!14126) (_1!37894 lt!2656700)))))

(assert (=> d!2323211 (validRegex!10730 (reg!20639 r!14126))))

(assert (=> d!2323211 (= (mainMatchTheorem!4503 (reg!20639 r!14126) (_1!37894 lt!2656700)) lt!2656794)))

(declare-fun bs!1943313 () Bool)

(assert (= bs!1943313 d!2323211))

(assert (=> bs!1943313 m!8152588))

(assert (=> bs!1943313 m!8152584))

(declare-fun m!8152808 () Bool)

(assert (=> bs!1943313 m!8152808))

(assert (=> bs!1943313 m!8152690))

(assert (=> b!7620712 d!2323211))

(declare-fun bs!1943314 () Bool)

(declare-fun b!7621061 () Bool)

(assert (= bs!1943314 (and b!7621061 b!7621032)))

(declare-fun lambda!468435 () Int)

(assert (=> bs!1943314 (= (and (= (_1!37894 lt!2656700) (_2!37894 lt!2656696)) (= (reg!20639 (reg!20639 r!14126)) (reg!20639 r!14126)) (= (reg!20639 r!14126) r!14126)) (= lambda!468435 lambda!468431))))

(declare-fun bs!1943315 () Bool)

(assert (= bs!1943315 (and b!7621061 b!7621031)))

(assert (=> bs!1943315 (not (= lambda!468435 lambda!468432))))

(declare-fun bs!1943316 () Bool)

(assert (= bs!1943316 (and b!7621061 b!7621000)))

(assert (=> bs!1943316 (not (= lambda!468435 lambda!468429))))

(declare-fun bs!1943317 () Bool)

(assert (= bs!1943317 (and b!7621061 b!7620705)))

(assert (=> bs!1943317 (not (= lambda!468435 lambda!468412))))

(declare-fun bs!1943318 () Bool)

(assert (= bs!1943318 (and b!7621061 b!7621001)))

(assert (=> bs!1943318 (= (= (_1!37894 lt!2656700) (_1!37894 lt!2656696)) (= lambda!468435 lambda!468427))))

(declare-fun bs!1943319 () Bool)

(assert (= bs!1943319 (and b!7621061 d!2323177)))

(assert (=> bs!1943319 (not (= lambda!468435 lambda!468422))))

(assert (=> b!7621061 true))

(assert (=> b!7621061 true))

(declare-fun bs!1943320 () Bool)

(declare-fun b!7621060 () Bool)

(assert (= bs!1943320 (and b!7621060 b!7621032)))

(declare-fun lambda!468436 () Int)

(assert (=> bs!1943320 (not (= lambda!468436 lambda!468431))))

(declare-fun bs!1943321 () Bool)

(assert (= bs!1943321 (and b!7621060 b!7621031)))

(assert (=> bs!1943321 (= (and (= (_1!37894 lt!2656700) (_2!37894 lt!2656696)) (= (regOne!41132 (reg!20639 r!14126)) (regOne!41132 r!14126)) (= (regTwo!41132 (reg!20639 r!14126)) (regTwo!41132 r!14126))) (= lambda!468436 lambda!468432))))

(declare-fun bs!1943322 () Bool)

(assert (= bs!1943322 (and b!7621060 b!7621000)))

(assert (=> bs!1943322 (= (= (_1!37894 lt!2656700) (_1!37894 lt!2656696)) (= lambda!468436 lambda!468429))))

(declare-fun bs!1943323 () Bool)

(assert (= bs!1943323 (and b!7621060 b!7621061)))

(assert (=> bs!1943323 (not (= lambda!468436 lambda!468435))))

(declare-fun bs!1943324 () Bool)

(assert (= bs!1943324 (and b!7621060 b!7620705)))

(assert (=> bs!1943324 (not (= lambda!468436 lambda!468412))))

(declare-fun bs!1943325 () Bool)

(assert (= bs!1943325 (and b!7621060 b!7621001)))

(assert (=> bs!1943325 (not (= lambda!468436 lambda!468427))))

(declare-fun bs!1943326 () Bool)

(assert (= bs!1943326 (and b!7621060 d!2323177)))

(assert (=> bs!1943326 (not (= lambda!468436 lambda!468422))))

(assert (=> b!7621060 true))

(assert (=> b!7621060 true))

(declare-fun b!7621051 () Bool)

(declare-fun e!4531649 () Bool)

(declare-fun e!4531643 () Bool)

(assert (=> b!7621051 (= e!4531649 e!4531643)))

(declare-fun c!1404562 () Bool)

(assert (=> b!7621051 (= c!1404562 (is-Star!20310 (reg!20639 r!14126)))))

(declare-fun b!7621052 () Bool)

(declare-fun res!3051243 () Bool)

(declare-fun e!4531644 () Bool)

(assert (=> b!7621052 (=> res!3051243 e!4531644)))

(declare-fun call!699919 () Bool)

(assert (=> b!7621052 (= res!3051243 call!699919)))

(assert (=> b!7621052 (= e!4531643 e!4531644)))

(declare-fun b!7621053 () Bool)

(declare-fun e!4531647 () Bool)

(assert (=> b!7621053 (= e!4531649 e!4531647)))

(declare-fun res!3051244 () Bool)

(assert (=> b!7621053 (= res!3051244 (matchRSpec!4509 (regOne!41133 (reg!20639 r!14126)) (_1!37894 lt!2656700)))))

(assert (=> b!7621053 (=> res!3051244 e!4531647)))

(declare-fun b!7621054 () Bool)

(declare-fun e!4531645 () Bool)

(assert (=> b!7621054 (= e!4531645 (= (_1!37894 lt!2656700) (Cons!73039 (c!1404492 (reg!20639 r!14126)) Nil!73039)))))

(declare-fun b!7621055 () Bool)

(declare-fun c!1404563 () Bool)

(assert (=> b!7621055 (= c!1404563 (is-ElementMatch!20310 (reg!20639 r!14126)))))

(declare-fun e!4531648 () Bool)

(assert (=> b!7621055 (= e!4531648 e!4531645)))

(declare-fun b!7621056 () Bool)

(assert (=> b!7621056 (= e!4531647 (matchRSpec!4509 (regTwo!41133 (reg!20639 r!14126)) (_1!37894 lt!2656700)))))

(declare-fun b!7621057 () Bool)

(declare-fun c!1404561 () Bool)

(assert (=> b!7621057 (= c!1404561 (is-Union!20310 (reg!20639 r!14126)))))

(assert (=> b!7621057 (= e!4531645 e!4531649)))

(declare-fun d!2323213 () Bool)

(declare-fun c!1404560 () Bool)

(assert (=> d!2323213 (= c!1404560 (is-EmptyExpr!20310 (reg!20639 r!14126)))))

(declare-fun e!4531646 () Bool)

(assert (=> d!2323213 (= (matchRSpec!4509 (reg!20639 r!14126) (_1!37894 lt!2656700)) e!4531646)))

(declare-fun b!7621058 () Bool)

(assert (=> b!7621058 (= e!4531646 call!699919)))

(declare-fun call!699920 () Bool)

(declare-fun bm!699914 () Bool)

(assert (=> bm!699914 (= call!699920 (Exists!4466 (ite c!1404562 lambda!468435 lambda!468436)))))

(declare-fun b!7621059 () Bool)

(assert (=> b!7621059 (= e!4531646 e!4531648)))

(declare-fun res!3051242 () Bool)

(assert (=> b!7621059 (= res!3051242 (not (is-EmptyLang!20310 (reg!20639 r!14126))))))

(assert (=> b!7621059 (=> (not res!3051242) (not e!4531648))))

(declare-fun bm!699915 () Bool)

(assert (=> bm!699915 (= call!699919 (isEmpty!41657 (_1!37894 lt!2656700)))))

(assert (=> b!7621060 (= e!4531643 call!699920)))

(assert (=> b!7621061 (= e!4531644 call!699920)))

(assert (= (and d!2323213 c!1404560) b!7621058))

(assert (= (and d!2323213 (not c!1404560)) b!7621059))

(assert (= (and b!7621059 res!3051242) b!7621055))

(assert (= (and b!7621055 c!1404563) b!7621054))

(assert (= (and b!7621055 (not c!1404563)) b!7621057))

(assert (= (and b!7621057 c!1404561) b!7621053))

(assert (= (and b!7621057 (not c!1404561)) b!7621051))

(assert (= (and b!7621053 (not res!3051244)) b!7621056))

(assert (= (and b!7621051 c!1404562) b!7621052))

(assert (= (and b!7621051 (not c!1404562)) b!7621060))

(assert (= (and b!7621052 (not res!3051243)) b!7621061))

(assert (= (or b!7621061 b!7621060) bm!699914))

(assert (= (or b!7621058 b!7621052) bm!699915))

(declare-fun m!8152810 () Bool)

(assert (=> b!7621053 m!8152810))

(declare-fun m!8152812 () Bool)

(assert (=> b!7621056 m!8152812))

(declare-fun m!8152814 () Bool)

(assert (=> bm!699914 m!8152814))

(assert (=> bm!699915 m!8152564))

(assert (=> b!7620712 d!2323213))

(declare-fun bs!1943327 () Bool)

(declare-fun b!7621072 () Bool)

(assert (= bs!1943327 (and b!7621072 b!7621032)))

(declare-fun lambda!468437 () Int)

(assert (=> bs!1943327 (= (= (_2!37894 lt!2656700) (_2!37894 lt!2656696)) (= lambda!468437 lambda!468431))))

(declare-fun bs!1943328 () Bool)

(assert (= bs!1943328 (and b!7621072 b!7621031)))

(assert (=> bs!1943328 (not (= lambda!468437 lambda!468432))))

(declare-fun bs!1943329 () Bool)

(assert (= bs!1943329 (and b!7621072 b!7621000)))

(assert (=> bs!1943329 (not (= lambda!468437 lambda!468429))))

(declare-fun bs!1943330 () Bool)

(assert (= bs!1943330 (and b!7621072 b!7621061)))

(assert (=> bs!1943330 (= (and (= (_2!37894 lt!2656700) (_1!37894 lt!2656700)) (= (reg!20639 r!14126) (reg!20639 (reg!20639 r!14126))) (= r!14126 (reg!20639 r!14126))) (= lambda!468437 lambda!468435))))

(declare-fun bs!1943331 () Bool)

(assert (= bs!1943331 (and b!7621072 b!7620705)))

(assert (=> bs!1943331 (not (= lambda!468437 lambda!468412))))

(declare-fun bs!1943332 () Bool)

(assert (= bs!1943332 (and b!7621072 b!7621001)))

(assert (=> bs!1943332 (= (and (= (_2!37894 lt!2656700) (_1!37894 lt!2656696)) (= (reg!20639 r!14126) (reg!20639 (reg!20639 r!14126))) (= r!14126 (reg!20639 r!14126))) (= lambda!468437 lambda!468427))))

(declare-fun bs!1943333 () Bool)

(assert (= bs!1943333 (and b!7621072 d!2323177)))

(assert (=> bs!1943333 (not (= lambda!468437 lambda!468422))))

(declare-fun bs!1943334 () Bool)

(assert (= bs!1943334 (and b!7621072 b!7621060)))

(assert (=> bs!1943334 (not (= lambda!468437 lambda!468436))))

(assert (=> b!7621072 true))

(assert (=> b!7621072 true))

(declare-fun bs!1943335 () Bool)

(declare-fun b!7621071 () Bool)

(assert (= bs!1943335 (and b!7621071 b!7621032)))

(declare-fun lambda!468438 () Int)

(assert (=> bs!1943335 (not (= lambda!468438 lambda!468431))))

(declare-fun bs!1943336 () Bool)

(assert (= bs!1943336 (and b!7621071 b!7621031)))

(assert (=> bs!1943336 (= (= (_2!37894 lt!2656700) (_2!37894 lt!2656696)) (= lambda!468438 lambda!468432))))

(declare-fun bs!1943337 () Bool)

(assert (= bs!1943337 (and b!7621071 b!7621000)))

(assert (=> bs!1943337 (= (and (= (_2!37894 lt!2656700) (_1!37894 lt!2656696)) (= (regOne!41132 r!14126) (regOne!41132 (reg!20639 r!14126))) (= (regTwo!41132 r!14126) (regTwo!41132 (reg!20639 r!14126)))) (= lambda!468438 lambda!468429))))

(declare-fun bs!1943338 () Bool)

(assert (= bs!1943338 (and b!7621071 b!7621061)))

(assert (=> bs!1943338 (not (= lambda!468438 lambda!468435))))

(declare-fun bs!1943339 () Bool)

(assert (= bs!1943339 (and b!7621071 b!7620705)))

(assert (=> bs!1943339 (not (= lambda!468438 lambda!468412))))

(declare-fun bs!1943340 () Bool)

(assert (= bs!1943340 (and b!7621071 b!7621072)))

(assert (=> bs!1943340 (not (= lambda!468438 lambda!468437))))

(declare-fun bs!1943341 () Bool)

(assert (= bs!1943341 (and b!7621071 b!7621001)))

(assert (=> bs!1943341 (not (= lambda!468438 lambda!468427))))

(declare-fun bs!1943342 () Bool)

(assert (= bs!1943342 (and b!7621071 d!2323177)))

(assert (=> bs!1943342 (not (= lambda!468438 lambda!468422))))

(declare-fun bs!1943343 () Bool)

(assert (= bs!1943343 (and b!7621071 b!7621060)))

(assert (=> bs!1943343 (= (and (= (_2!37894 lt!2656700) (_1!37894 lt!2656700)) (= (regOne!41132 r!14126) (regOne!41132 (reg!20639 r!14126))) (= (regTwo!41132 r!14126) (regTwo!41132 (reg!20639 r!14126)))) (= lambda!468438 lambda!468436))))

(assert (=> b!7621071 true))

(assert (=> b!7621071 true))

(declare-fun b!7621062 () Bool)

(declare-fun e!4531656 () Bool)

(declare-fun e!4531650 () Bool)

(assert (=> b!7621062 (= e!4531656 e!4531650)))

(declare-fun c!1404566 () Bool)

(assert (=> b!7621062 (= c!1404566 (is-Star!20310 r!14126))))

(declare-fun b!7621063 () Bool)

(declare-fun res!3051246 () Bool)

(declare-fun e!4531651 () Bool)

(assert (=> b!7621063 (=> res!3051246 e!4531651)))

(declare-fun call!699923 () Bool)

(assert (=> b!7621063 (= res!3051246 call!699923)))

(assert (=> b!7621063 (= e!4531650 e!4531651)))

(declare-fun b!7621064 () Bool)

(declare-fun e!4531654 () Bool)

(assert (=> b!7621064 (= e!4531656 e!4531654)))

(declare-fun res!3051247 () Bool)

(assert (=> b!7621064 (= res!3051247 (matchRSpec!4509 (regOne!41133 r!14126) (_2!37894 lt!2656700)))))

(assert (=> b!7621064 (=> res!3051247 e!4531654)))

(declare-fun b!7621065 () Bool)

(declare-fun e!4531652 () Bool)

(assert (=> b!7621065 (= e!4531652 (= (_2!37894 lt!2656700) (Cons!73039 (c!1404492 r!14126) Nil!73039)))))

(declare-fun b!7621066 () Bool)

(declare-fun c!1404567 () Bool)

(assert (=> b!7621066 (= c!1404567 (is-ElementMatch!20310 r!14126))))

(declare-fun e!4531655 () Bool)

(assert (=> b!7621066 (= e!4531655 e!4531652)))

(declare-fun b!7621067 () Bool)

(assert (=> b!7621067 (= e!4531654 (matchRSpec!4509 (regTwo!41133 r!14126) (_2!37894 lt!2656700)))))

(declare-fun b!7621068 () Bool)

(declare-fun c!1404565 () Bool)

(assert (=> b!7621068 (= c!1404565 (is-Union!20310 r!14126))))

(assert (=> b!7621068 (= e!4531652 e!4531656)))

(declare-fun d!2323215 () Bool)

(declare-fun c!1404564 () Bool)

(assert (=> d!2323215 (= c!1404564 (is-EmptyExpr!20310 r!14126))))

(declare-fun e!4531653 () Bool)

(assert (=> d!2323215 (= (matchRSpec!4509 r!14126 (_2!37894 lt!2656700)) e!4531653)))

(declare-fun b!7621069 () Bool)

(assert (=> b!7621069 (= e!4531653 call!699923)))

(declare-fun call!699924 () Bool)

(declare-fun bm!699918 () Bool)

(assert (=> bm!699918 (= call!699924 (Exists!4466 (ite c!1404566 lambda!468437 lambda!468438)))))

(declare-fun b!7621070 () Bool)

(assert (=> b!7621070 (= e!4531653 e!4531655)))

(declare-fun res!3051245 () Bool)

(assert (=> b!7621070 (= res!3051245 (not (is-EmptyLang!20310 r!14126)))))

(assert (=> b!7621070 (=> (not res!3051245) (not e!4531655))))

(declare-fun bm!699919 () Bool)

(assert (=> bm!699919 (= call!699923 (isEmpty!41657 (_2!37894 lt!2656700)))))

(assert (=> b!7621071 (= e!4531650 call!699924)))

(assert (=> b!7621072 (= e!4531651 call!699924)))

(assert (= (and d!2323215 c!1404564) b!7621069))

(assert (= (and d!2323215 (not c!1404564)) b!7621070))

(assert (= (and b!7621070 res!3051245) b!7621066))

(assert (= (and b!7621066 c!1404567) b!7621065))

(assert (= (and b!7621066 (not c!1404567)) b!7621068))

(assert (= (and b!7621068 c!1404565) b!7621064))

(assert (= (and b!7621068 (not c!1404565)) b!7621062))

(assert (= (and b!7621064 (not res!3051247)) b!7621067))

(assert (= (and b!7621062 c!1404566) b!7621063))

(assert (= (and b!7621062 (not c!1404566)) b!7621071))

(assert (= (and b!7621063 (not res!3051246)) b!7621072))

(assert (= (or b!7621072 b!7621071) bm!699918))

(assert (= (or b!7621069 b!7621063) bm!699919))

(declare-fun m!8152816 () Bool)

(assert (=> b!7621064 m!8152816))

(declare-fun m!8152818 () Bool)

(assert (=> b!7621067 m!8152818))

(declare-fun m!8152820 () Bool)

(assert (=> bm!699918 m!8152820))

(assert (=> bm!699919 m!8152794))

(assert (=> b!7620712 d!2323215))

(declare-fun d!2323217 () Bool)

(declare-fun lt!2656797 () tuple2!69182)

(declare-fun dynLambda!29916 (Int tuple2!69182) Bool)

(assert (=> d!2323217 (dynLambda!29916 lambda!468412 lt!2656797)))

(declare-fun choose!58800 (Int) tuple2!69182)

(assert (=> d!2323217 (= lt!2656797 (choose!58800 lambda!468412))))

(assert (=> d!2323217 (Exists!4466 lambda!468412)))

(assert (=> d!2323217 (= (pickWitness!441 lambda!468412) lt!2656797)))

(declare-fun b_lambda!288997 () Bool)

(assert (=> (not b_lambda!288997) (not d!2323217)))

(declare-fun bs!1943344 () Bool)

(assert (= bs!1943344 d!2323217))

(declare-fun m!8152822 () Bool)

(assert (=> bs!1943344 m!8152822))

(declare-fun m!8152824 () Bool)

(assert (=> bs!1943344 m!8152824))

(assert (=> bs!1943344 m!8152550))

(assert (=> b!7620712 d!2323217))

(declare-fun b!7621073 () Bool)

(declare-fun res!3051249 () Bool)

(declare-fun e!4531663 () Bool)

(assert (=> b!7621073 (=> (not res!3051249) (not e!4531663))))

(declare-fun call!699927 () Bool)

(assert (=> b!7621073 (= res!3051249 (not call!699927))))

(declare-fun b!7621074 () Bool)

(declare-fun res!3051255 () Bool)

(declare-fun e!4531658 () Bool)

(assert (=> b!7621074 (=> res!3051255 e!4531658)))

(assert (=> b!7621074 (= res!3051255 e!4531663)))

(declare-fun res!3051251 () Bool)

(assert (=> b!7621074 (=> (not res!3051251) (not e!4531663))))

(declare-fun lt!2656798 () Bool)

(assert (=> b!7621074 (= res!3051251 lt!2656798)))

(declare-fun b!7621075 () Bool)

(declare-fun res!3051254 () Bool)

(declare-fun e!4531659 () Bool)

(assert (=> b!7621075 (=> res!3051254 e!4531659)))

(assert (=> b!7621075 (= res!3051254 (not (isEmpty!41657 (tail!15195 (_1!37894 lt!2656700)))))))

(declare-fun d!2323219 () Bool)

(declare-fun e!4531660 () Bool)

(assert (=> d!2323219 e!4531660))

(declare-fun c!1404568 () Bool)

(assert (=> d!2323219 (= c!1404568 (is-EmptyExpr!20310 (reg!20639 r!14126)))))

(declare-fun e!4531661 () Bool)

(assert (=> d!2323219 (= lt!2656798 e!4531661)))

(declare-fun c!1404569 () Bool)

(assert (=> d!2323219 (= c!1404569 (isEmpty!41657 (_1!37894 lt!2656700)))))

(assert (=> d!2323219 (validRegex!10730 (reg!20639 r!14126))))

(assert (=> d!2323219 (= (matchR!9817 (reg!20639 r!14126) (_1!37894 lt!2656700)) lt!2656798)))

(declare-fun b!7621076 () Bool)

(declare-fun res!3051250 () Bool)

(assert (=> b!7621076 (=> res!3051250 e!4531658)))

(assert (=> b!7621076 (= res!3051250 (not (is-ElementMatch!20310 (reg!20639 r!14126))))))

(declare-fun e!4531662 () Bool)

(assert (=> b!7621076 (= e!4531662 e!4531658)))

(declare-fun b!7621077 () Bool)

(declare-fun res!3051248 () Bool)

(assert (=> b!7621077 (=> (not res!3051248) (not e!4531663))))

(assert (=> b!7621077 (= res!3051248 (isEmpty!41657 (tail!15195 (_1!37894 lt!2656700))))))

(declare-fun b!7621078 () Bool)

(assert (=> b!7621078 (= e!4531663 (= (head!15655 (_1!37894 lt!2656700)) (c!1404492 (reg!20639 r!14126))))))

(declare-fun b!7621079 () Bool)

(assert (=> b!7621079 (= e!4531659 (not (= (head!15655 (_1!37894 lt!2656700)) (c!1404492 (reg!20639 r!14126)))))))

(declare-fun b!7621080 () Bool)

(assert (=> b!7621080 (= e!4531661 (nullable!8877 (reg!20639 r!14126)))))

(declare-fun b!7621081 () Bool)

(assert (=> b!7621081 (= e!4531660 e!4531662)))

(declare-fun c!1404570 () Bool)

(assert (=> b!7621081 (= c!1404570 (is-EmptyLang!20310 (reg!20639 r!14126)))))

(declare-fun bm!699922 () Bool)

(assert (=> bm!699922 (= call!699927 (isEmpty!41657 (_1!37894 lt!2656700)))))

(declare-fun b!7621082 () Bool)

(declare-fun e!4531657 () Bool)

(assert (=> b!7621082 (= e!4531658 e!4531657)))

(declare-fun res!3051253 () Bool)

(assert (=> b!7621082 (=> (not res!3051253) (not e!4531657))))

(assert (=> b!7621082 (= res!3051253 (not lt!2656798))))

(declare-fun b!7621083 () Bool)

(assert (=> b!7621083 (= e!4531661 (matchR!9817 (derivativeStep!5855 (reg!20639 r!14126) (head!15655 (_1!37894 lt!2656700))) (tail!15195 (_1!37894 lt!2656700))))))

(declare-fun b!7621084 () Bool)

(assert (=> b!7621084 (= e!4531660 (= lt!2656798 call!699927))))

(declare-fun b!7621085 () Bool)

(assert (=> b!7621085 (= e!4531662 (not lt!2656798))))

(declare-fun b!7621086 () Bool)

(assert (=> b!7621086 (= e!4531657 e!4531659)))

(declare-fun res!3051252 () Bool)

(assert (=> b!7621086 (=> res!3051252 e!4531659)))

(assert (=> b!7621086 (= res!3051252 call!699927)))

(assert (= (and d!2323219 c!1404569) b!7621080))

(assert (= (and d!2323219 (not c!1404569)) b!7621083))

(assert (= (and d!2323219 c!1404568) b!7621084))

(assert (= (and d!2323219 (not c!1404568)) b!7621081))

(assert (= (and b!7621081 c!1404570) b!7621085))

(assert (= (and b!7621081 (not c!1404570)) b!7621076))

(assert (= (and b!7621076 (not res!3051250)) b!7621074))

(assert (= (and b!7621074 res!3051251) b!7621073))

(assert (= (and b!7621073 res!3051249) b!7621077))

(assert (= (and b!7621077 res!3051248) b!7621078))

(assert (= (and b!7621074 (not res!3051255)) b!7621082))

(assert (= (and b!7621082 res!3051253) b!7621086))

(assert (= (and b!7621086 (not res!3051252)) b!7621075))

(assert (= (and b!7621075 (not res!3051254)) b!7621079))

(assert (= (or b!7621084 b!7621073 b!7621086) bm!699922))

(assert (=> b!7621080 m!8152582))

(assert (=> bm!699922 m!8152564))

(declare-fun m!8152826 () Bool)

(assert (=> b!7621075 m!8152826))

(assert (=> b!7621075 m!8152826))

(declare-fun m!8152828 () Bool)

(assert (=> b!7621075 m!8152828))

(declare-fun m!8152830 () Bool)

(assert (=> b!7621083 m!8152830))

(assert (=> b!7621083 m!8152830))

(declare-fun m!8152832 () Bool)

(assert (=> b!7621083 m!8152832))

(assert (=> b!7621083 m!8152826))

(assert (=> b!7621083 m!8152832))

(assert (=> b!7621083 m!8152826))

(declare-fun m!8152834 () Bool)

(assert (=> b!7621083 m!8152834))

(assert (=> d!2323219 m!8152564))

(assert (=> d!2323219 m!8152690))

(assert (=> b!7621077 m!8152826))

(assert (=> b!7621077 m!8152826))

(assert (=> b!7621077 m!8152828))

(assert (=> b!7621078 m!8152830))

(assert (=> b!7621079 m!8152830))

(assert (=> b!7620712 d!2323219))

(declare-fun d!2323221 () Bool)

(assert (=> d!2323221 (= (matchR!9817 r!14126 (_2!37894 lt!2656700)) (matchRSpec!4509 r!14126 (_2!37894 lt!2656700)))))

(declare-fun lt!2656799 () Unit!167488)

(assert (=> d!2323221 (= lt!2656799 (choose!58797 r!14126 (_2!37894 lt!2656700)))))

(assert (=> d!2323221 (validRegex!10730 r!14126)))

(assert (=> d!2323221 (= (mainMatchTheorem!4503 r!14126 (_2!37894 lt!2656700)) lt!2656799)))

(declare-fun bs!1943345 () Bool)

(assert (= bs!1943345 d!2323221))

(assert (=> bs!1943345 m!8152596))

(assert (=> bs!1943345 m!8152586))

(declare-fun m!8152836 () Bool)

(assert (=> bs!1943345 m!8152836))

(assert (=> bs!1943345 m!8152602))

(assert (=> b!7620712 d!2323221))

(declare-fun b!7621116 () Bool)

(declare-fun e!4531686 () Bool)

(declare-fun e!4531688 () Bool)

(assert (=> b!7621116 (= e!4531686 e!4531688)))

(declare-fun res!3051271 () Bool)

(assert (=> b!7621116 (=> (not res!3051271) (not e!4531688))))

(declare-fun call!699936 () Bool)

(assert (=> b!7621116 (= res!3051271 call!699936)))

(declare-fun bm!699931 () Bool)

(declare-fun call!699938 () Bool)

(declare-fun call!699937 () Bool)

(assert (=> bm!699931 (= call!699938 call!699937)))

(declare-fun b!7621117 () Bool)

(declare-fun res!3051270 () Bool)

(assert (=> b!7621117 (=> res!3051270 e!4531686)))

(assert (=> b!7621117 (= res!3051270 (not (is-Concat!29155 r!14126)))))

(declare-fun e!4531685 () Bool)

(assert (=> b!7621117 (= e!4531685 e!4531686)))

(declare-fun b!7621118 () Bool)

(assert (=> b!7621118 (= e!4531688 call!699938)))

(declare-fun b!7621119 () Bool)

(declare-fun e!4531691 () Bool)

(declare-fun e!4531687 () Bool)

(assert (=> b!7621119 (= e!4531691 e!4531687)))

(declare-fun c!1404579 () Bool)

(assert (=> b!7621119 (= c!1404579 (is-Star!20310 r!14126))))

(declare-fun b!7621120 () Bool)

(declare-fun e!4531689 () Bool)

(assert (=> b!7621120 (= e!4531687 e!4531689)))

(declare-fun res!3051272 () Bool)

(assert (=> b!7621120 (= res!3051272 (not (nullable!8877 (reg!20639 r!14126))))))

(assert (=> b!7621120 (=> (not res!3051272) (not e!4531689))))

(declare-fun bm!699932 () Bool)

(declare-fun c!1404580 () Bool)

(assert (=> bm!699932 (= call!699937 (validRegex!10730 (ite c!1404579 (reg!20639 r!14126) (ite c!1404580 (regTwo!41133 r!14126) (regTwo!41132 r!14126)))))))

(declare-fun b!7621121 () Bool)

(assert (=> b!7621121 (= e!4531689 call!699937)))

(declare-fun b!7621122 () Bool)

(declare-fun res!3051269 () Bool)

(declare-fun e!4531690 () Bool)

(assert (=> b!7621122 (=> (not res!3051269) (not e!4531690))))

(assert (=> b!7621122 (= res!3051269 call!699936)))

(assert (=> b!7621122 (= e!4531685 e!4531690)))

(declare-fun d!2323223 () Bool)

(declare-fun res!3051273 () Bool)

(assert (=> d!2323223 (=> res!3051273 e!4531691)))

(assert (=> d!2323223 (= res!3051273 (is-ElementMatch!20310 r!14126))))

(assert (=> d!2323223 (= (validRegex!10730 r!14126) e!4531691)))

(declare-fun b!7621123 () Bool)

(assert (=> b!7621123 (= e!4531687 e!4531685)))

(assert (=> b!7621123 (= c!1404580 (is-Union!20310 r!14126))))

(declare-fun b!7621124 () Bool)

(assert (=> b!7621124 (= e!4531690 call!699938)))

(declare-fun bm!699933 () Bool)

(assert (=> bm!699933 (= call!699936 (validRegex!10730 (ite c!1404580 (regOne!41133 r!14126) (regOne!41132 r!14126))))))

(assert (= (and d!2323223 (not res!3051273)) b!7621119))

(assert (= (and b!7621119 c!1404579) b!7621120))

(assert (= (and b!7621119 (not c!1404579)) b!7621123))

(assert (= (and b!7621120 res!3051272) b!7621121))

(assert (= (and b!7621123 c!1404580) b!7621122))

(assert (= (and b!7621123 (not c!1404580)) b!7621117))

(assert (= (and b!7621122 res!3051269) b!7621124))

(assert (= (and b!7621117 (not res!3051270)) b!7621116))

(assert (= (and b!7621116 res!3051271) b!7621118))

(assert (= (or b!7621122 b!7621116) bm!699933))

(assert (= (or b!7621124 b!7621118) bm!699931))

(assert (= (or b!7621121 bm!699931) bm!699932))

(assert (=> b!7621120 m!8152582))

(declare-fun m!8152838 () Bool)

(assert (=> bm!699932 m!8152838))

(declare-fun m!8152840 () Bool)

(assert (=> bm!699933 m!8152840))

(assert (=> start!734038 d!2323223))

(declare-fun b!7621125 () Bool)

(declare-fun res!3051275 () Bool)

(declare-fun e!4531698 () Bool)

(assert (=> b!7621125 (=> (not res!3051275) (not e!4531698))))

(declare-fun call!699939 () Bool)

(assert (=> b!7621125 (= res!3051275 (not call!699939))))

(declare-fun b!7621126 () Bool)

(declare-fun res!3051281 () Bool)

(declare-fun e!4531693 () Bool)

(assert (=> b!7621126 (=> res!3051281 e!4531693)))

(assert (=> b!7621126 (= res!3051281 e!4531698)))

(declare-fun res!3051277 () Bool)

(assert (=> b!7621126 (=> (not res!3051277) (not e!4531698))))

(declare-fun lt!2656800 () Bool)

(assert (=> b!7621126 (= res!3051277 lt!2656800)))

(declare-fun b!7621127 () Bool)

(declare-fun res!3051280 () Bool)

(declare-fun e!4531694 () Bool)

(assert (=> b!7621127 (=> res!3051280 e!4531694)))

(assert (=> b!7621127 (= res!3051280 (not (isEmpty!41657 (tail!15195 lt!2656693))))))

(declare-fun d!2323225 () Bool)

(declare-fun e!4531695 () Bool)

(assert (=> d!2323225 e!4531695))

(declare-fun c!1404581 () Bool)

(assert (=> d!2323225 (= c!1404581 (is-EmptyExpr!20310 (Concat!29155 (reg!20639 r!14126) r!14126)))))

(declare-fun e!4531696 () Bool)

(assert (=> d!2323225 (= lt!2656800 e!4531696)))

(declare-fun c!1404582 () Bool)

(assert (=> d!2323225 (= c!1404582 (isEmpty!41657 lt!2656693))))

(assert (=> d!2323225 (validRegex!10730 (Concat!29155 (reg!20639 r!14126) r!14126))))

(assert (=> d!2323225 (= (matchR!9817 (Concat!29155 (reg!20639 r!14126) r!14126) lt!2656693) lt!2656800)))

(declare-fun b!7621128 () Bool)

(declare-fun res!3051276 () Bool)

(assert (=> b!7621128 (=> res!3051276 e!4531693)))

(assert (=> b!7621128 (= res!3051276 (not (is-ElementMatch!20310 (Concat!29155 (reg!20639 r!14126) r!14126))))))

(declare-fun e!4531697 () Bool)

(assert (=> b!7621128 (= e!4531697 e!4531693)))

(declare-fun b!7621129 () Bool)

(declare-fun res!3051274 () Bool)

(assert (=> b!7621129 (=> (not res!3051274) (not e!4531698))))

(assert (=> b!7621129 (= res!3051274 (isEmpty!41657 (tail!15195 lt!2656693)))))

(declare-fun b!7621130 () Bool)

(assert (=> b!7621130 (= e!4531698 (= (head!15655 lt!2656693) (c!1404492 (Concat!29155 (reg!20639 r!14126) r!14126))))))

(declare-fun b!7621131 () Bool)

(assert (=> b!7621131 (= e!4531694 (not (= (head!15655 lt!2656693) (c!1404492 (Concat!29155 (reg!20639 r!14126) r!14126)))))))

(declare-fun b!7621132 () Bool)

(assert (=> b!7621132 (= e!4531696 (nullable!8877 (Concat!29155 (reg!20639 r!14126) r!14126)))))

(declare-fun b!7621133 () Bool)

(assert (=> b!7621133 (= e!4531695 e!4531697)))

(declare-fun c!1404583 () Bool)

(assert (=> b!7621133 (= c!1404583 (is-EmptyLang!20310 (Concat!29155 (reg!20639 r!14126) r!14126)))))

(declare-fun bm!699934 () Bool)

(assert (=> bm!699934 (= call!699939 (isEmpty!41657 lt!2656693))))

(declare-fun b!7621134 () Bool)

(declare-fun e!4531692 () Bool)

(assert (=> b!7621134 (= e!4531693 e!4531692)))

(declare-fun res!3051279 () Bool)

(assert (=> b!7621134 (=> (not res!3051279) (not e!4531692))))

(assert (=> b!7621134 (= res!3051279 (not lt!2656800))))

(declare-fun b!7621135 () Bool)

(assert (=> b!7621135 (= e!4531696 (matchR!9817 (derivativeStep!5855 (Concat!29155 (reg!20639 r!14126) r!14126) (head!15655 lt!2656693)) (tail!15195 lt!2656693)))))

(declare-fun b!7621136 () Bool)

(assert (=> b!7621136 (= e!4531695 (= lt!2656800 call!699939))))

(declare-fun b!7621137 () Bool)

(assert (=> b!7621137 (= e!4531697 (not lt!2656800))))

(declare-fun b!7621138 () Bool)

(assert (=> b!7621138 (= e!4531692 e!4531694)))

(declare-fun res!3051278 () Bool)

(assert (=> b!7621138 (=> res!3051278 e!4531694)))

(assert (=> b!7621138 (= res!3051278 call!699939)))

(assert (= (and d!2323225 c!1404582) b!7621132))

(assert (= (and d!2323225 (not c!1404582)) b!7621135))

(assert (= (and d!2323225 c!1404581) b!7621136))

(assert (= (and d!2323225 (not c!1404581)) b!7621133))

(assert (= (and b!7621133 c!1404583) b!7621137))

(assert (= (and b!7621133 (not c!1404583)) b!7621128))

(assert (= (and b!7621128 (not res!3051276)) b!7621126))

(assert (= (and b!7621126 res!3051277) b!7621125))

(assert (= (and b!7621125 res!3051275) b!7621129))

(assert (= (and b!7621129 res!3051274) b!7621130))

(assert (= (and b!7621126 (not res!3051281)) b!7621134))

(assert (= (and b!7621134 res!3051279) b!7621138))

(assert (= (and b!7621138 (not res!3051278)) b!7621127))

(assert (= (and b!7621127 (not res!3051280)) b!7621131))

(assert (= (or b!7621136 b!7621125 b!7621138) bm!699934))

(declare-fun m!8152848 () Bool)

(assert (=> b!7621132 m!8152848))

(declare-fun m!8152850 () Bool)

(assert (=> bm!699934 m!8152850))

(declare-fun m!8152852 () Bool)

(assert (=> b!7621127 m!8152852))

(assert (=> b!7621127 m!8152852))

(declare-fun m!8152854 () Bool)

(assert (=> b!7621127 m!8152854))

(declare-fun m!8152856 () Bool)

(assert (=> b!7621135 m!8152856))

(assert (=> b!7621135 m!8152856))

(declare-fun m!8152858 () Bool)

(assert (=> b!7621135 m!8152858))

(assert (=> b!7621135 m!8152852))

(assert (=> b!7621135 m!8152858))

(assert (=> b!7621135 m!8152852))

(declare-fun m!8152860 () Bool)

(assert (=> b!7621135 m!8152860))

(assert (=> d!2323225 m!8152850))

(declare-fun m!8152862 () Bool)

(assert (=> d!2323225 m!8152862))

(assert (=> b!7621129 m!8152852))

(assert (=> b!7621129 m!8152852))

(assert (=> b!7621129 m!8152854))

(assert (=> b!7621130 m!8152856))

(assert (=> b!7621131 m!8152856))

(assert (=> b!7620706 d!2323225))

(declare-fun b!7621150 () Bool)

(declare-fun res!3051286 () Bool)

(declare-fun e!4531712 () Bool)

(assert (=> b!7621150 (=> (not res!3051286) (not e!4531712))))

(declare-fun call!699942 () Bool)

(assert (=> b!7621150 (= res!3051286 (not call!699942))))

(declare-fun b!7621151 () Bool)

(declare-fun res!3051292 () Bool)

(declare-fun e!4531707 () Bool)

(assert (=> b!7621151 (=> res!3051292 e!4531707)))

(assert (=> b!7621151 (= res!3051292 e!4531712)))

(declare-fun res!3051288 () Bool)

(assert (=> b!7621151 (=> (not res!3051288) (not e!4531712))))

(declare-fun lt!2656801 () Bool)

(assert (=> b!7621151 (= res!3051288 lt!2656801)))

(declare-fun b!7621152 () Bool)

(declare-fun res!3051291 () Bool)

(declare-fun e!4531708 () Bool)

(assert (=> b!7621152 (=> res!3051291 e!4531708)))

(assert (=> b!7621152 (= res!3051291 (not (isEmpty!41657 (tail!15195 lt!2656693))))))

(declare-fun d!2323229 () Bool)

(declare-fun e!4531709 () Bool)

(assert (=> d!2323229 e!4531709))

(declare-fun c!1404588 () Bool)

(assert (=> d!2323229 (= c!1404588 (is-EmptyExpr!20310 r!14126))))

(declare-fun e!4531710 () Bool)

(assert (=> d!2323229 (= lt!2656801 e!4531710)))

(declare-fun c!1404589 () Bool)

(assert (=> d!2323229 (= c!1404589 (isEmpty!41657 lt!2656693))))

(assert (=> d!2323229 (validRegex!10730 r!14126)))

(assert (=> d!2323229 (= (matchR!9817 r!14126 lt!2656693) lt!2656801)))

(declare-fun b!7621153 () Bool)

(declare-fun res!3051287 () Bool)

(assert (=> b!7621153 (=> res!3051287 e!4531707)))

(assert (=> b!7621153 (= res!3051287 (not (is-ElementMatch!20310 r!14126)))))

(declare-fun e!4531711 () Bool)

(assert (=> b!7621153 (= e!4531711 e!4531707)))

(declare-fun b!7621154 () Bool)

(declare-fun res!3051285 () Bool)

(assert (=> b!7621154 (=> (not res!3051285) (not e!4531712))))

(assert (=> b!7621154 (= res!3051285 (isEmpty!41657 (tail!15195 lt!2656693)))))

(declare-fun b!7621155 () Bool)

(assert (=> b!7621155 (= e!4531712 (= (head!15655 lt!2656693) (c!1404492 r!14126)))))

(declare-fun b!7621156 () Bool)

(assert (=> b!7621156 (= e!4531708 (not (= (head!15655 lt!2656693) (c!1404492 r!14126))))))

(declare-fun b!7621157 () Bool)

(assert (=> b!7621157 (= e!4531710 (nullable!8877 r!14126))))

(declare-fun b!7621158 () Bool)

(assert (=> b!7621158 (= e!4531709 e!4531711)))

(declare-fun c!1404590 () Bool)

(assert (=> b!7621158 (= c!1404590 (is-EmptyLang!20310 r!14126))))

(declare-fun bm!699937 () Bool)

(assert (=> bm!699937 (= call!699942 (isEmpty!41657 lt!2656693))))

(declare-fun b!7621159 () Bool)

(declare-fun e!4531706 () Bool)

(assert (=> b!7621159 (= e!4531707 e!4531706)))

(declare-fun res!3051290 () Bool)

(assert (=> b!7621159 (=> (not res!3051290) (not e!4531706))))

(assert (=> b!7621159 (= res!3051290 (not lt!2656801))))

(declare-fun b!7621160 () Bool)

(assert (=> b!7621160 (= e!4531710 (matchR!9817 (derivativeStep!5855 r!14126 (head!15655 lt!2656693)) (tail!15195 lt!2656693)))))

(declare-fun b!7621161 () Bool)

(assert (=> b!7621161 (= e!4531709 (= lt!2656801 call!699942))))

(declare-fun b!7621162 () Bool)

(assert (=> b!7621162 (= e!4531711 (not lt!2656801))))

(declare-fun b!7621163 () Bool)

(assert (=> b!7621163 (= e!4531706 e!4531708)))

(declare-fun res!3051289 () Bool)

(assert (=> b!7621163 (=> res!3051289 e!4531708)))

(assert (=> b!7621163 (= res!3051289 call!699942)))

(assert (= (and d!2323229 c!1404589) b!7621157))

(assert (= (and d!2323229 (not c!1404589)) b!7621160))

(assert (= (and d!2323229 c!1404588) b!7621161))

(assert (= (and d!2323229 (not c!1404588)) b!7621158))

(assert (= (and b!7621158 c!1404590) b!7621162))

(assert (= (and b!7621158 (not c!1404590)) b!7621153))

(assert (= (and b!7621153 (not res!3051287)) b!7621151))

(assert (= (and b!7621151 res!3051288) b!7621150))

(assert (= (and b!7621150 res!3051286) b!7621154))

(assert (= (and b!7621154 res!3051285) b!7621155))

(assert (= (and b!7621151 (not res!3051292)) b!7621159))

(assert (= (and b!7621159 res!3051290) b!7621163))

(assert (= (and b!7621163 (not res!3051289)) b!7621152))

(assert (= (and b!7621152 (not res!3051291)) b!7621156))

(assert (= (or b!7621161 b!7621150 b!7621163) bm!699937))

(assert (=> b!7621157 m!8152738))

(assert (=> bm!699937 m!8152850))

(assert (=> b!7621152 m!8152852))

(assert (=> b!7621152 m!8152852))

(assert (=> b!7621152 m!8152854))

(assert (=> b!7621160 m!8152856))

(assert (=> b!7621160 m!8152856))

(declare-fun m!8152864 () Bool)

(assert (=> b!7621160 m!8152864))

(assert (=> b!7621160 m!8152852))

(assert (=> b!7621160 m!8152864))

(assert (=> b!7621160 m!8152852))

(declare-fun m!8152866 () Bool)

(assert (=> b!7621160 m!8152866))

(assert (=> d!2323229 m!8152850))

(assert (=> d!2323229 m!8152602))

(assert (=> b!7621154 m!8152852))

(assert (=> b!7621154 m!8152852))

(assert (=> b!7621154 m!8152854))

(assert (=> b!7621155 m!8152856))

(assert (=> b!7621156 m!8152856))

(assert (=> b!7620706 d!2323229))

(declare-fun d!2323231 () Bool)

(assert (=> d!2323231 (matchR!9817 (Concat!29155 (reg!20639 r!14126) r!14126) (++!17620 (_1!37894 lt!2656696) (_2!37894 lt!2656696)))))

(declare-fun lt!2656804 () Unit!167488)

(declare-fun choose!58801 (Regex!20310 Regex!20310 List!73163 List!73163 List!73163) Unit!167488)

(assert (=> d!2323231 (= lt!2656804 (choose!58801 (reg!20639 r!14126) r!14126 (_1!37894 lt!2656696) (_2!37894 lt!2656696) s!9605))))

(assert (=> d!2323231 (validRegex!10730 (reg!20639 r!14126))))

(assert (=> d!2323231 (= (lemmaFindSeparationIsDefinedThenConcatMatches!137 (reg!20639 r!14126) r!14126 (_1!37894 lt!2656696) (_2!37894 lt!2656696) s!9605) lt!2656804)))

(declare-fun bs!1943355 () Bool)

(assert (= bs!1943355 d!2323231))

(assert (=> bs!1943355 m!8152576))

(assert (=> bs!1943355 m!8152576))

(declare-fun m!8152868 () Bool)

(assert (=> bs!1943355 m!8152868))

(declare-fun m!8152870 () Bool)

(assert (=> bs!1943355 m!8152870))

(assert (=> bs!1943355 m!8152690))

(assert (=> b!7620706 d!2323231))

(declare-fun b!7621164 () Bool)

(declare-fun e!4531714 () List!73163)

(assert (=> b!7621164 (= e!4531714 (_2!37894 lt!2656696))))

(declare-fun b!7621165 () Bool)

(assert (=> b!7621165 (= e!4531714 (Cons!73039 (h!79487 (_1!37894 lt!2656696)) (++!17620 (t!387898 (_1!37894 lt!2656696)) (_2!37894 lt!2656696))))))

(declare-fun b!7621167 () Bool)

(declare-fun e!4531713 () Bool)

(declare-fun lt!2656805 () List!73163)

(assert (=> b!7621167 (= e!4531713 (or (not (= (_2!37894 lt!2656696) Nil!73039)) (= lt!2656805 (_1!37894 lt!2656696))))))

(declare-fun b!7621166 () Bool)

(declare-fun res!3051294 () Bool)

(assert (=> b!7621166 (=> (not res!3051294) (not e!4531713))))

(assert (=> b!7621166 (= res!3051294 (= (size!42535 lt!2656805) (+ (size!42535 (_1!37894 lt!2656696)) (size!42535 (_2!37894 lt!2656696)))))))

(declare-fun d!2323233 () Bool)

(assert (=> d!2323233 e!4531713))

(declare-fun res!3051293 () Bool)

(assert (=> d!2323233 (=> (not res!3051293) (not e!4531713))))

(assert (=> d!2323233 (= res!3051293 (= (content!15442 lt!2656805) (set.union (content!15442 (_1!37894 lt!2656696)) (content!15442 (_2!37894 lt!2656696)))))))

(assert (=> d!2323233 (= lt!2656805 e!4531714)))

(declare-fun c!1404591 () Bool)

(assert (=> d!2323233 (= c!1404591 (is-Nil!73039 (_1!37894 lt!2656696)))))

(assert (=> d!2323233 (= (++!17620 (_1!37894 lt!2656696) (_2!37894 lt!2656696)) lt!2656805)))

(assert (= (and d!2323233 c!1404591) b!7621164))

(assert (= (and d!2323233 (not c!1404591)) b!7621165))

(assert (= (and d!2323233 res!3051293) b!7621166))

(assert (= (and b!7621166 res!3051294) b!7621167))

(declare-fun m!8152872 () Bool)

(assert (=> b!7621165 m!8152872))

(declare-fun m!8152874 () Bool)

(assert (=> b!7621166 m!8152874))

(declare-fun m!8152876 () Bool)

(assert (=> b!7621166 m!8152876))

(declare-fun m!8152878 () Bool)

(assert (=> b!7621166 m!8152878))

(declare-fun m!8152880 () Bool)

(assert (=> d!2323233 m!8152880))

(declare-fun m!8152882 () Bool)

(assert (=> d!2323233 m!8152882))

(declare-fun m!8152884 () Bool)

(assert (=> d!2323233 m!8152884))

(assert (=> b!7620706 d!2323233))

(declare-fun d!2323235 () Bool)

(assert (=> d!2323235 (matchR!9817 (Star!20310 (reg!20639 r!14126)) (++!17620 (_1!37894 lt!2656696) (_2!37894 lt!2656696)))))

(declare-fun lt!2656809 () Unit!167488)

(declare-fun choose!58802 (Regex!20310 List!73163 List!73163) Unit!167488)

(assert (=> d!2323235 (= lt!2656809 (choose!58802 (reg!20639 r!14126) (_1!37894 lt!2656696) (_2!37894 lt!2656696)))))

(assert (=> d!2323235 (validRegex!10730 (Star!20310 (reg!20639 r!14126)))))

(assert (=> d!2323235 (= (lemmaStarApp!191 (reg!20639 r!14126) (_1!37894 lt!2656696) (_2!37894 lt!2656696)) lt!2656809)))

(declare-fun bs!1943358 () Bool)

(assert (= bs!1943358 d!2323235))

(assert (=> bs!1943358 m!8152576))

(assert (=> bs!1943358 m!8152576))

(declare-fun m!8152894 () Bool)

(assert (=> bs!1943358 m!8152894))

(declare-fun m!8152896 () Bool)

(assert (=> bs!1943358 m!8152896))

(declare-fun m!8152898 () Bool)

(assert (=> bs!1943358 m!8152898))

(assert (=> b!7620706 d!2323235))

(declare-fun b!7621178 () Bool)

(declare-fun e!4531717 () Bool)

(assert (=> b!7621178 (= e!4531717 tp_is_empty!50975)))

(assert (=> b!7620700 (= tp!2225142 e!4531717)))

(declare-fun b!7621179 () Bool)

(declare-fun tp!2225175 () Bool)

(declare-fun tp!2225177 () Bool)

(assert (=> b!7621179 (= e!4531717 (and tp!2225175 tp!2225177))))

(declare-fun b!7621180 () Bool)

(declare-fun tp!2225178 () Bool)

(assert (=> b!7621180 (= e!4531717 tp!2225178)))

(declare-fun b!7621181 () Bool)

(declare-fun tp!2225174 () Bool)

(declare-fun tp!2225176 () Bool)

(assert (=> b!7621181 (= e!4531717 (and tp!2225174 tp!2225176))))

(assert (= (and b!7620700 (is-ElementMatch!20310 (regOne!41132 r!14126))) b!7621178))

(assert (= (and b!7620700 (is-Concat!29155 (regOne!41132 r!14126))) b!7621179))

(assert (= (and b!7620700 (is-Star!20310 (regOne!41132 r!14126))) b!7621180))

(assert (= (and b!7620700 (is-Union!20310 (regOne!41132 r!14126))) b!7621181))

(declare-fun b!7621182 () Bool)

(declare-fun e!4531718 () Bool)

(assert (=> b!7621182 (= e!4531718 tp_is_empty!50975)))

(assert (=> b!7620700 (= tp!2225140 e!4531718)))

(declare-fun b!7621183 () Bool)

(declare-fun tp!2225180 () Bool)

(declare-fun tp!2225182 () Bool)

(assert (=> b!7621183 (= e!4531718 (and tp!2225180 tp!2225182))))

(declare-fun b!7621184 () Bool)

(declare-fun tp!2225183 () Bool)

(assert (=> b!7621184 (= e!4531718 tp!2225183)))

(declare-fun b!7621185 () Bool)

(declare-fun tp!2225179 () Bool)

(declare-fun tp!2225181 () Bool)

(assert (=> b!7621185 (= e!4531718 (and tp!2225179 tp!2225181))))

(assert (= (and b!7620700 (is-ElementMatch!20310 (regTwo!41132 r!14126))) b!7621182))

(assert (= (and b!7620700 (is-Concat!29155 (regTwo!41132 r!14126))) b!7621183))

(assert (= (and b!7620700 (is-Star!20310 (regTwo!41132 r!14126))) b!7621184))

(assert (= (and b!7620700 (is-Union!20310 (regTwo!41132 r!14126))) b!7621185))

(declare-fun b!7621186 () Bool)

(declare-fun e!4531719 () Bool)

(assert (=> b!7621186 (= e!4531719 tp_is_empty!50975)))

(assert (=> b!7620710 (= tp!2225141 e!4531719)))

(declare-fun b!7621187 () Bool)

(declare-fun tp!2225185 () Bool)

(declare-fun tp!2225187 () Bool)

(assert (=> b!7621187 (= e!4531719 (and tp!2225185 tp!2225187))))

(declare-fun b!7621188 () Bool)

(declare-fun tp!2225188 () Bool)

(assert (=> b!7621188 (= e!4531719 tp!2225188)))

(declare-fun b!7621189 () Bool)

(declare-fun tp!2225184 () Bool)

(declare-fun tp!2225186 () Bool)

(assert (=> b!7621189 (= e!4531719 (and tp!2225184 tp!2225186))))

(assert (= (and b!7620710 (is-ElementMatch!20310 (regOne!41133 r!14126))) b!7621186))

(assert (= (and b!7620710 (is-Concat!29155 (regOne!41133 r!14126))) b!7621187))

(assert (= (and b!7620710 (is-Star!20310 (regOne!41133 r!14126))) b!7621188))

(assert (= (and b!7620710 (is-Union!20310 (regOne!41133 r!14126))) b!7621189))

(declare-fun b!7621190 () Bool)

(declare-fun e!4531720 () Bool)

(assert (=> b!7621190 (= e!4531720 tp_is_empty!50975)))

(assert (=> b!7620710 (= tp!2225144 e!4531720)))

(declare-fun b!7621191 () Bool)

(declare-fun tp!2225190 () Bool)

(declare-fun tp!2225192 () Bool)

(assert (=> b!7621191 (= e!4531720 (and tp!2225190 tp!2225192))))

(declare-fun b!7621192 () Bool)

(declare-fun tp!2225193 () Bool)

(assert (=> b!7621192 (= e!4531720 tp!2225193)))

(declare-fun b!7621193 () Bool)

(declare-fun tp!2225189 () Bool)

(declare-fun tp!2225191 () Bool)

(assert (=> b!7621193 (= e!4531720 (and tp!2225189 tp!2225191))))

(assert (= (and b!7620710 (is-ElementMatch!20310 (regTwo!41133 r!14126))) b!7621190))

(assert (= (and b!7620710 (is-Concat!29155 (regTwo!41133 r!14126))) b!7621191))

(assert (= (and b!7620710 (is-Star!20310 (regTwo!41133 r!14126))) b!7621192))

(assert (= (and b!7620710 (is-Union!20310 (regTwo!41133 r!14126))) b!7621193))

(declare-fun b!7621198 () Bool)

(declare-fun e!4531723 () Bool)

(declare-fun tp!2225196 () Bool)

(assert (=> b!7621198 (= e!4531723 (and tp_is_empty!50975 tp!2225196))))

(assert (=> b!7620702 (= tp!2225145 e!4531723)))

(assert (= (and b!7620702 (is-Cons!73039 (t!387898 s!9605))) b!7621198))

(declare-fun b!7621199 () Bool)

(declare-fun e!4531724 () Bool)

(assert (=> b!7621199 (= e!4531724 tp_is_empty!50975)))

(assert (=> b!7620701 (= tp!2225143 e!4531724)))

(declare-fun b!7621200 () Bool)

(declare-fun tp!2225198 () Bool)

(declare-fun tp!2225200 () Bool)

(assert (=> b!7621200 (= e!4531724 (and tp!2225198 tp!2225200))))

(declare-fun b!7621201 () Bool)

(declare-fun tp!2225201 () Bool)

(assert (=> b!7621201 (= e!4531724 tp!2225201)))

(declare-fun b!7621202 () Bool)

(declare-fun tp!2225197 () Bool)

(declare-fun tp!2225199 () Bool)

(assert (=> b!7621202 (= e!4531724 (and tp!2225197 tp!2225199))))

(assert (= (and b!7620701 (is-ElementMatch!20310 (reg!20639 r!14126))) b!7621199))

(assert (= (and b!7620701 (is-Concat!29155 (reg!20639 r!14126))) b!7621200))

(assert (= (and b!7620701 (is-Star!20310 (reg!20639 r!14126))) b!7621201))

(assert (= (and b!7620701 (is-Union!20310 (reg!20639 r!14126))) b!7621202))

(declare-fun b_lambda!288999 () Bool)

(assert (= b_lambda!288997 (or b!7620705 b_lambda!288999)))

(declare-fun bs!1943359 () Bool)

(declare-fun d!2323241 () Bool)

(assert (= bs!1943359 (and d!2323241 b!7620705)))

(declare-fun res!3051295 () Bool)

(declare-fun e!4531725 () Bool)

(assert (=> bs!1943359 (=> (not res!3051295) (not e!4531725))))

(assert (=> bs!1943359 (= res!3051295 (= (++!17620 (_1!37894 lt!2656797) (_2!37894 lt!2656797)) s!9605))))

(assert (=> bs!1943359 (= (dynLambda!29916 lambda!468412 lt!2656797) e!4531725)))

(declare-fun b!7621203 () Bool)

(declare-fun res!3051296 () Bool)

(assert (=> b!7621203 (=> (not res!3051296) (not e!4531725))))

(assert (=> b!7621203 (= res!3051296 (matchR!9817 (reg!20639 r!14126) (_1!37894 lt!2656797)))))

(declare-fun b!7621204 () Bool)

(assert (=> b!7621204 (= e!4531725 (matchR!9817 r!14126 (_2!37894 lt!2656797)))))

(assert (= (and bs!1943359 res!3051295) b!7621203))

(assert (= (and b!7621203 res!3051296) b!7621204))

(declare-fun m!8152900 () Bool)

(assert (=> bs!1943359 m!8152900))

(declare-fun m!8152902 () Bool)

(assert (=> b!7621203 m!8152902))

(declare-fun m!8152904 () Bool)

(assert (=> b!7621204 m!8152904))

(assert (=> d!2323217 d!2323241))

(push 1)

(assert (not d!2323183))

(assert (not b!7621154))

(assert (not b!7621035))

(assert (not b!7621204))

(assert (not b!7621192))

(assert (not bm!699908))

(assert (not b!7620916))

(assert (not d!2323225))

(assert (not d!2323177))

(assert (not b!7620996))

(assert (not b!7621120))

(assert (not bm!699902))

(assert (not b!7620927))

(assert (not b!7621130))

(assert (not b!7621165))

(assert (not bm!699913))

(assert (not b!7621040))

(assert (not d!2323207))

(assert (not b!7621187))

(assert (not b!7621013))

(assert (not bm!699914))

(assert (not d!2323193))

(assert (not b!7620925))

(assert (not d!2323199))

(assert (not b!7620913))

(assert (not b!7620915))

(assert (not b!7621180))

(assert (not d!2323231))

(assert (not b!7621185))

(assert (not b!7621056))

(assert (not b!7621018))

(assert (not b!7621191))

(assert (not b!7621027))

(assert (not b!7621039))

(assert (not d!2323169))

(assert (not bm!699910))

(assert (not b!7621131))

(assert (not b!7621053))

(assert (not b!7621193))

(assert (not b!7621075))

(assert (not b!7620803))

(assert (not b!7621201))

(assert (not b!7621043))

(assert (not bm!699903))

(assert (not b!7620911))

(assert (not b!7621184))

(assert (not b!7620805))

(assert (not d!2323173))

(assert (not b!7621160))

(assert (not d!2323171))

(assert (not b!7620850))

(assert (not b!7621166))

(assert (not b!7621189))

(assert (not bm!699932))

(assert (not d!2323221))

(assert (not b!7620801))

(assert (not b!7621155))

(assert (not b!7621037))

(assert (not d!2323219))

(assert (not b!7621132))

(assert (not d!2323181))

(assert (not b!7621156))

(assert (not b!7620804))

(assert (not d!2323233))

(assert (not b!7621064))

(assert (not b!7620919))

(assert (not b_lambda!288999))

(assert (not bm!699934))

(assert (not b!7621152))

(assert (not b!7621181))

(assert (not b!7621179))

(assert (not b!7620914))

(assert (not d!2323235))

(assert (not bm!699915))

(assert (not d!2323201))

(assert (not bm!699912))

(assert (not b!7621129))

(assert (not b!7621127))

(assert (not bm!699911))

(assert (not b!7620930))

(assert (not b!7621079))

(assert (not b!7621078))

(assert (not b!7621183))

(assert (not b!7621012))

(assert (not b!7620807))

(assert (not bm!699909))

(assert (not b!7620928))

(assert (not b!7621198))

(assert (not bm!699922))

(assert (not bm!699919))

(assert (not d!2323211))

(assert (not d!2323217))

(assert (not b!7621157))

(assert (not b!7621203))

(assert (not b!7621080))

(assert (not b!7620933))

(assert (not b!7621014))

(assert (not b!7621200))

(assert (not b!7621202))

(assert (not b!7620993))

(assert (not d!2323209))

(assert (not d!2323229))

(assert (not bs!1943359))

(assert (not b!7621015))

(assert (not b!7620851))

(assert (not b!7621188))

(assert (not b!7621083))

(assert (not d!2323189))

(assert (not b!7620929))

(assert (not b!7621024))

(assert (not b!7621038))

(assert tp_is_empty!50975)

(assert (not bm!699937))

(assert (not b!7620806))

(assert (not b!7621135))

(assert (not b!7621077))

(assert (not bm!699918))

(assert (not bm!699933))

(assert (not b!7621010))

(assert (not b!7621067))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

