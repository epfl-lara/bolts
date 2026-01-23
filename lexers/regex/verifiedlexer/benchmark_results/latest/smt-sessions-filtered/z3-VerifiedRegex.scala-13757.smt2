; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734036 () Bool)

(assert start!734036)

(declare-fun b!7620645 () Bool)

(assert (=> b!7620645 true))

(assert (=> b!7620645 true))

(declare-fun b!7620630 () Bool)

(declare-fun res!3051015 () Bool)

(declare-fun e!4531426 () Bool)

(assert (=> b!7620630 (=> (not res!3051015) (not e!4531426))))

(declare-datatypes ((C!40944 0))(
  ( (C!40945 (val!30912 Int)) )
))
(declare-datatypes ((List!73162 0))(
  ( (Nil!73038) (Cons!73038 (h!79486 C!40944) (t!387897 List!73162)) )
))
(declare-fun s!9605 () List!73162)

(declare-fun isEmpty!41656 (List!73162) Bool)

(assert (=> b!7620630 (= res!3051015 (not (isEmpty!41656 s!9605)))))

(declare-fun b!7620631 () Bool)

(declare-fun e!4531431 () Bool)

(declare-fun e!4531433 () Bool)

(assert (=> b!7620631 (= e!4531431 e!4531433)))

(declare-fun res!3051011 () Bool)

(assert (=> b!7620631 (=> res!3051011 e!4531433)))

(declare-datatypes ((Regex!20309 0))(
  ( (ElementMatch!20309 (c!1404488 C!40944)) (Concat!29154 (regOne!41130 Regex!20309) (regTwo!41130 Regex!20309)) (EmptyExpr!20309) (Star!20309 (reg!20638 Regex!20309)) (EmptyLang!20309) (Union!20309 (regOne!41131 Regex!20309) (regTwo!41131 Regex!20309)) )
))
(declare-fun r!14126 () Regex!20309)

(declare-fun nullable!8876 (Regex!20309) Bool)

(assert (=> b!7620631 (= res!3051011 (nullable!8876 (reg!20638 r!14126)))))

(declare-datatypes ((tuple2!69180 0))(
  ( (tuple2!69181 (_1!37893 List!73162) (_2!37893 List!73162)) )
))
(declare-fun lt!2656654 () tuple2!69180)

(declare-fun matchR!9816 (Regex!20309 List!73162) Bool)

(declare-fun matchRSpec!4508 (Regex!20309 List!73162) Bool)

(assert (=> b!7620631 (= (matchR!9816 r!14126 (_2!37893 lt!2656654)) (matchRSpec!4508 r!14126 (_2!37893 lt!2656654)))))

(declare-datatypes ((Unit!167484 0))(
  ( (Unit!167485) )
))
(declare-fun lt!2656649 () Unit!167484)

(declare-fun mainMatchTheorem!4502 (Regex!20309 List!73162) Unit!167484)

(assert (=> b!7620631 (= lt!2656649 (mainMatchTheorem!4502 r!14126 (_2!37893 lt!2656654)))))

(assert (=> b!7620631 (= (matchR!9816 (reg!20638 r!14126) (_1!37893 lt!2656654)) (matchRSpec!4508 (reg!20638 r!14126) (_1!37893 lt!2656654)))))

(declare-fun lt!2656653 () Unit!167484)

(assert (=> b!7620631 (= lt!2656653 (mainMatchTheorem!4502 (reg!20638 r!14126) (_1!37893 lt!2656654)))))

(declare-fun lambda!468405 () Int)

(declare-fun pickWitness!440 (Int) tuple2!69180)

(assert (=> b!7620631 (= lt!2656654 (pickWitness!440 lambda!468405))))

(declare-fun b!7620632 () Bool)

(declare-fun res!3051018 () Bool)

(assert (=> b!7620632 (=> res!3051018 e!4531433)))

(declare-fun cut!8 () tuple2!69180)

(assert (=> b!7620632 (= res!3051018 (not (matchRSpec!4508 (reg!20638 r!14126) (_1!37893 cut!8))))))

(declare-fun b!7620633 () Bool)

(declare-fun e!4531430 () Unit!167484)

(declare-fun Unit!167486 () Unit!167484)

(assert (=> b!7620633 (= e!4531430 Unit!167486)))

(declare-fun b!7620634 () Bool)

(declare-fun e!4531429 () Bool)

(declare-fun tp_is_empty!50973 () Bool)

(declare-fun tp!2225124 () Bool)

(assert (=> b!7620634 (= e!4531429 (and tp_is_empty!50973 tp!2225124))))

(declare-fun b!7620635 () Bool)

(declare-fun res!3051016 () Bool)

(assert (=> b!7620635 (=> res!3051016 e!4531433)))

(assert (=> b!7620635 (= res!3051016 (isEmpty!41656 (_1!37893 lt!2656654)))))

(declare-fun b!7620636 () Bool)

(declare-fun res!3051019 () Bool)

(assert (=> b!7620636 (=> res!3051019 e!4531433)))

(assert (=> b!7620636 (= res!3051019 (isEmpty!41656 (_1!37893 cut!8)))))

(declare-fun b!7620637 () Bool)

(declare-fun e!4531424 () Bool)

(declare-fun tp!2225127 () Bool)

(declare-fun tp!2225126 () Bool)

(assert (=> b!7620637 (= e!4531424 (and tp!2225127 tp!2225126))))

(declare-fun b!7620639 () Bool)

(declare-fun Unit!167487 () Unit!167484)

(assert (=> b!7620639 (= e!4531430 Unit!167487)))

(declare-fun lt!2656648 () Unit!167484)

(declare-fun lt!2656646 () tuple2!69180)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!136 (Regex!20309 Regex!20309 List!73162 List!73162 List!73162) Unit!167484)

(assert (=> b!7620639 (= lt!2656648 (lemmaFindSeparationIsDefinedThenConcatMatches!136 (reg!20638 r!14126) r!14126 (_1!37893 lt!2656646) (_2!37893 lt!2656646) s!9605))))

(declare-fun lt!2656650 () List!73162)

(declare-fun ++!17619 (List!73162 List!73162) List!73162)

(assert (=> b!7620639 (= lt!2656650 (++!17619 (_1!37893 lt!2656646) (_2!37893 lt!2656646)))))

(assert (=> b!7620639 (matchR!9816 (Concat!29154 (reg!20638 r!14126) r!14126) lt!2656650)))

(declare-fun lt!2656656 () Unit!167484)

(declare-fun lemmaStarApp!190 (Regex!20309 List!73162 List!73162) Unit!167484)

(assert (=> b!7620639 (= lt!2656656 (lemmaStarApp!190 (reg!20638 r!14126) (_1!37893 lt!2656646) (_2!37893 lt!2656646)))))

(declare-fun res!3051014 () Bool)

(assert (=> b!7620639 (= res!3051014 (matchR!9816 r!14126 lt!2656650))))

(declare-fun e!4531427 () Bool)

(assert (=> b!7620639 (=> (not res!3051014) (not e!4531427))))

(assert (=> b!7620639 e!4531427))

(declare-fun b!7620640 () Bool)

(declare-fun tp!2225123 () Bool)

(declare-fun tp!2225121 () Bool)

(assert (=> b!7620640 (= e!4531424 (and tp!2225123 tp!2225121))))

(declare-fun b!7620641 () Bool)

(assert (=> b!7620641 (= e!4531427 false)))

(declare-fun b!7620642 () Bool)

(declare-fun e!4531428 () Bool)

(assert (=> b!7620642 (= e!4531428 e!4531431)))

(declare-fun res!3051012 () Bool)

(assert (=> b!7620642 (=> res!3051012 e!4531431)))

(declare-fun Exists!4465 (Int) Bool)

(assert (=> b!7620642 (= res!3051012 (not (Exists!4465 lambda!468405)))))

(declare-fun lt!2656655 () Unit!167484)

(assert (=> b!7620642 (= lt!2656655 e!4531430)))

(declare-fun c!1404487 () Bool)

(assert (=> b!7620642 (= c!1404487 (not (matchR!9816 r!14126 s!9605)))))

(assert (=> b!7620642 (= (matchR!9816 r!14126 (_2!37893 lt!2656646)) (matchRSpec!4508 r!14126 (_2!37893 lt!2656646)))))

(declare-fun lt!2656644 () Unit!167484)

(assert (=> b!7620642 (= lt!2656644 (mainMatchTheorem!4502 r!14126 (_2!37893 lt!2656646)))))

(assert (=> b!7620642 (= (matchR!9816 (reg!20638 r!14126) (_1!37893 lt!2656646)) (matchRSpec!4508 (reg!20638 r!14126) (_1!37893 lt!2656646)))))

(declare-fun lt!2656651 () Unit!167484)

(assert (=> b!7620642 (= lt!2656651 (mainMatchTheorem!4502 (reg!20638 r!14126) (_1!37893 lt!2656646)))))

(declare-datatypes ((Option!17384 0))(
  ( (None!17383) (Some!17383 (v!54518 tuple2!69180)) )
))
(declare-fun lt!2656645 () Option!17384)

(declare-fun get!25775 (Option!17384) tuple2!69180)

(assert (=> b!7620642 (= lt!2656646 (get!25775 lt!2656645))))

(declare-fun b!7620643 () Bool)

(declare-fun e!4531432 () Bool)

(declare-fun tp!2225125 () Bool)

(assert (=> b!7620643 (= e!4531432 (and tp_is_empty!50973 tp!2225125))))

(declare-fun b!7620644 () Bool)

(declare-fun res!3051013 () Bool)

(assert (=> b!7620644 (=> (not res!3051013) (not e!4531426))))

(get-info :version)

(assert (=> b!7620644 (= res!3051013 (and (not ((_ is EmptyExpr!20309) r!14126)) (not ((_ is EmptyLang!20309) r!14126)) (not ((_ is ElementMatch!20309) r!14126)) (not ((_ is Union!20309) r!14126)) ((_ is Star!20309) r!14126)))))

(assert (=> b!7620645 (= e!4531426 (not e!4531428))))

(declare-fun res!3051020 () Bool)

(assert (=> b!7620645 (=> res!3051020 e!4531428)))

(declare-fun lt!2656647 () Bool)

(assert (=> b!7620645 (= res!3051020 (not lt!2656647))))

(assert (=> b!7620645 (= lt!2656647 (Exists!4465 lambda!468405))))

(declare-fun isDefined!14000 (Option!17384) Bool)

(assert (=> b!7620645 (= lt!2656647 (isDefined!14000 lt!2656645))))

(declare-fun findConcatSeparation!3414 (Regex!20309 Regex!20309 List!73162 List!73162 List!73162) Option!17384)

(assert (=> b!7620645 (= lt!2656645 (findConcatSeparation!3414 (reg!20638 r!14126) r!14126 Nil!73038 s!9605 s!9605))))

(declare-fun lt!2656652 () Unit!167484)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3172 (Regex!20309 Regex!20309 List!73162) Unit!167484)

(assert (=> b!7620645 (= lt!2656652 (lemmaFindConcatSeparationEquivalentToExists!3172 (reg!20638 r!14126) r!14126 s!9605))))

(declare-fun b!7620646 () Bool)

(declare-fun res!3051017 () Bool)

(assert (=> b!7620646 (=> res!3051017 e!4531433)))

(assert (=> b!7620646 (= res!3051017 (not (= (++!17619 (_1!37893 cut!8) (_2!37893 cut!8)) s!9605)))))

(declare-fun b!7620647 () Bool)

(assert (=> b!7620647 (= e!4531424 tp_is_empty!50973)))

(declare-fun res!3051010 () Bool)

(assert (=> start!734036 (=> (not res!3051010) (not e!4531426))))

(declare-fun validRegex!10729 (Regex!20309) Bool)

(assert (=> start!734036 (= res!3051010 (validRegex!10729 r!14126))))

(assert (=> start!734036 e!4531426))

(assert (=> start!734036 e!4531424))

(declare-fun e!4531425 () Bool)

(assert (=> start!734036 e!4531425))

(assert (=> start!734036 (and e!4531429 e!4531432)))

(declare-fun b!7620638 () Bool)

(assert (=> b!7620638 (= e!4531433 (validRegex!10729 r!14126))))

(declare-fun b!7620648 () Bool)

(declare-fun tp!2225120 () Bool)

(assert (=> b!7620648 (= e!4531424 tp!2225120)))

(declare-fun b!7620649 () Bool)

(declare-fun tp!2225122 () Bool)

(assert (=> b!7620649 (= e!4531425 (and tp_is_empty!50973 tp!2225122))))

(assert (= (and start!734036 res!3051010) b!7620644))

(assert (= (and b!7620644 res!3051013) b!7620630))

(assert (= (and b!7620630 res!3051015) b!7620645))

(assert (= (and b!7620645 (not res!3051020)) b!7620642))

(assert (= (and b!7620642 c!1404487) b!7620639))

(assert (= (and b!7620642 (not c!1404487)) b!7620633))

(assert (= (and b!7620639 res!3051014) b!7620641))

(assert (= (and b!7620642 (not res!3051012)) b!7620631))

(assert (= (and b!7620631 (not res!3051011)) b!7620635))

(assert (= (and b!7620635 (not res!3051016)) b!7620646))

(assert (= (and b!7620646 (not res!3051017)) b!7620636))

(assert (= (and b!7620636 (not res!3051019)) b!7620632))

(assert (= (and b!7620632 (not res!3051018)) b!7620638))

(assert (= (and start!734036 ((_ is ElementMatch!20309) r!14126)) b!7620647))

(assert (= (and start!734036 ((_ is Concat!29154) r!14126)) b!7620640))

(assert (= (and start!734036 ((_ is Star!20309) r!14126)) b!7620648))

(assert (= (and start!734036 ((_ is Union!20309) r!14126)) b!7620637))

(assert (= (and start!734036 ((_ is Cons!73038) s!9605)) b!7620649))

(assert (= (and start!734036 ((_ is Cons!73038) (_1!37893 cut!8))) b!7620634))

(assert (= (and start!734036 ((_ is Cons!73038) (_2!37893 cut!8))) b!7620643))

(declare-fun m!8152484 () Bool)

(assert (=> b!7620646 m!8152484))

(declare-fun m!8152486 () Bool)

(assert (=> b!7620639 m!8152486))

(declare-fun m!8152488 () Bool)

(assert (=> b!7620639 m!8152488))

(declare-fun m!8152490 () Bool)

(assert (=> b!7620639 m!8152490))

(declare-fun m!8152492 () Bool)

(assert (=> b!7620639 m!8152492))

(declare-fun m!8152494 () Bool)

(assert (=> b!7620639 m!8152494))

(declare-fun m!8152496 () Bool)

(assert (=> b!7620632 m!8152496))

(declare-fun m!8152498 () Bool)

(assert (=> start!734036 m!8152498))

(declare-fun m!8152500 () Bool)

(assert (=> b!7620630 m!8152500))

(declare-fun m!8152502 () Bool)

(assert (=> b!7620645 m!8152502))

(declare-fun m!8152504 () Bool)

(assert (=> b!7620645 m!8152504))

(declare-fun m!8152506 () Bool)

(assert (=> b!7620645 m!8152506))

(declare-fun m!8152508 () Bool)

(assert (=> b!7620645 m!8152508))

(assert (=> b!7620638 m!8152498))

(declare-fun m!8152510 () Bool)

(assert (=> b!7620631 m!8152510))

(declare-fun m!8152512 () Bool)

(assert (=> b!7620631 m!8152512))

(declare-fun m!8152514 () Bool)

(assert (=> b!7620631 m!8152514))

(declare-fun m!8152516 () Bool)

(assert (=> b!7620631 m!8152516))

(declare-fun m!8152518 () Bool)

(assert (=> b!7620631 m!8152518))

(declare-fun m!8152520 () Bool)

(assert (=> b!7620631 m!8152520))

(declare-fun m!8152522 () Bool)

(assert (=> b!7620631 m!8152522))

(declare-fun m!8152524 () Bool)

(assert (=> b!7620631 m!8152524))

(declare-fun m!8152526 () Bool)

(assert (=> b!7620642 m!8152526))

(declare-fun m!8152528 () Bool)

(assert (=> b!7620642 m!8152528))

(declare-fun m!8152530 () Bool)

(assert (=> b!7620642 m!8152530))

(declare-fun m!8152532 () Bool)

(assert (=> b!7620642 m!8152532))

(declare-fun m!8152534 () Bool)

(assert (=> b!7620642 m!8152534))

(declare-fun m!8152536 () Bool)

(assert (=> b!7620642 m!8152536))

(assert (=> b!7620642 m!8152502))

(declare-fun m!8152538 () Bool)

(assert (=> b!7620642 m!8152538))

(declare-fun m!8152540 () Bool)

(assert (=> b!7620642 m!8152540))

(declare-fun m!8152542 () Bool)

(assert (=> b!7620636 m!8152542))

(declare-fun m!8152544 () Bool)

(assert (=> b!7620635 m!8152544))

(check-sat (not b!7620649) (not b!7620638) (not b!7620636) (not b!7620639) (not b!7620635) (not b!7620642) (not b!7620643) (not b!7620648) (not start!734036) (not b!7620632) (not b!7620640) (not b!7620637) (not b!7620634) (not b!7620630) (not b!7620631) tp_is_empty!50973 (not b!7620646) (not b!7620645))
(check-sat)
