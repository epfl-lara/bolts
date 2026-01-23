; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734280 () Bool)

(assert start!734280)

(declare-fun b!7623814 () Bool)

(assert (=> b!7623814 true))

(assert (=> b!7623814 true))

(declare-fun b!7623807 () Bool)

(declare-fun res!3052575 () Bool)

(declare-fun e!4533053 () Bool)

(assert (=> b!7623807 (=> res!3052575 e!4533053)))

(declare-datatypes ((C!40984 0))(
  ( (C!40985 (val!30932 Int)) )
))
(declare-datatypes ((Regex!20329 0))(
  ( (ElementMatch!20329 (c!1404944 C!40984)) (Concat!29174 (regOne!41170 Regex!20329) (regTwo!41170 Regex!20329)) (EmptyExpr!20329) (Star!20329 (reg!20658 Regex!20329)) (EmptyLang!20329) (Union!20329 (regOne!41171 Regex!20329) (regTwo!41171 Regex!20329)) )
))
(declare-fun r!14126 () Regex!20329)

(declare-datatypes ((List!73182 0))(
  ( (Nil!73058) (Cons!73058 (h!79506 C!40984) (t!387917 List!73182)) )
))
(declare-datatypes ((tuple2!69220 0))(
  ( (tuple2!69221 (_1!37913 List!73182) (_2!37913 List!73182)) )
))
(declare-fun cut!10 () tuple2!69220)

(declare-fun matchRSpec!4518 (Regex!20329 List!73182) Bool)

(assert (=> b!7623807 (= res!3052575 (not (matchRSpec!4518 (reg!20658 r!14126) (_1!37913 cut!10))))))

(declare-fun b!7623808 () Bool)

(declare-fun res!3052571 () Bool)

(assert (=> b!7623808 (=> res!3052571 e!4533053)))

(declare-fun isEmpty!41684 (List!73182) Bool)

(assert (=> b!7623808 (= res!3052571 (isEmpty!41684 (_1!37913 cut!10)))))

(declare-fun b!7623809 () Bool)

(declare-fun e!4533054 () Bool)

(declare-fun tp!2225872 () Bool)

(declare-fun tp!2225869 () Bool)

(assert (=> b!7623809 (= e!4533054 (and tp!2225872 tp!2225869))))

(declare-fun res!3052573 () Bool)

(declare-fun e!4533058 () Bool)

(assert (=> start!734280 (=> (not res!3052573) (not e!4533058))))

(declare-fun validRegex!10749 (Regex!20329) Bool)

(assert (=> start!734280 (= res!3052573 (validRegex!10749 r!14126))))

(assert (=> start!734280 e!4533058))

(assert (=> start!734280 e!4533054))

(declare-fun e!4533055 () Bool)

(assert (=> start!734280 e!4533055))

(declare-fun e!4533059 () Bool)

(declare-fun e!4533057 () Bool)

(assert (=> start!734280 (and e!4533059 e!4533057)))

(declare-fun b!7623810 () Bool)

(declare-fun tp!2225875 () Bool)

(declare-fun tp!2225873 () Bool)

(assert (=> b!7623810 (= e!4533054 (and tp!2225875 tp!2225873))))

(declare-fun b!7623811 () Bool)

(declare-fun res!3052577 () Bool)

(assert (=> b!7623811 (=> (not res!3052577) (not e!4533058))))

(declare-fun s!9605 () List!73182)

(assert (=> b!7623811 (= res!3052577 (not (isEmpty!41684 s!9605)))))

(declare-fun b!7623812 () Bool)

(declare-fun res!3052578 () Bool)

(assert (=> b!7623812 (=> (not res!3052578) (not e!4533058))))

(get-info :version)

(assert (=> b!7623812 (= res!3052578 (and (not ((_ is EmptyExpr!20329) r!14126)) (not ((_ is EmptyLang!20329) r!14126)) (not ((_ is ElementMatch!20329) r!14126)) (not ((_ is Union!20329) r!14126)) ((_ is Star!20329) r!14126)))))

(declare-fun b!7623813 () Bool)

(declare-fun res!3052576 () Bool)

(assert (=> b!7623813 (=> res!3052576 e!4533053)))

(declare-fun ++!17635 (List!73182 List!73182) List!73182)

(assert (=> b!7623813 (= res!3052576 (not (= (++!17635 (_1!37913 cut!10) (_2!37913 cut!10)) s!9605)))))

(declare-fun e!4533056 () Bool)

(assert (=> b!7623814 (= e!4533058 (not e!4533056))))

(declare-fun res!3052572 () Bool)

(assert (=> b!7623814 (=> res!3052572 e!4533056)))

(declare-fun lt!2657429 () Bool)

(assert (=> b!7623814 (= res!3052572 lt!2657429)))

(declare-fun lambda!468595 () Int)

(declare-fun Exists!4485 (Int) Bool)

(assert (=> b!7623814 (= lt!2657429 (Exists!4485 lambda!468595))))

(declare-datatypes ((Option!17404 0))(
  ( (None!17403) (Some!17403 (v!54538 tuple2!69220)) )
))
(declare-fun isDefined!14020 (Option!17404) Bool)

(declare-fun findConcatSeparation!3434 (Regex!20329 Regex!20329 List!73182 List!73182 List!73182) Option!17404)

(assert (=> b!7623814 (= lt!2657429 (isDefined!14020 (findConcatSeparation!3434 (reg!20658 r!14126) r!14126 Nil!73058 s!9605 s!9605)))))

(declare-datatypes ((Unit!167556 0))(
  ( (Unit!167557) )
))
(declare-fun lt!2657430 () Unit!167556)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3192 (Regex!20329 Regex!20329 List!73182) Unit!167556)

(assert (=> b!7623814 (= lt!2657430 (lemmaFindConcatSeparationEquivalentToExists!3192 (reg!20658 r!14126) r!14126 s!9605))))

(declare-fun b!7623815 () Bool)

(assert (=> b!7623815 (= e!4533053 (validRegex!10749 r!14126))))

(declare-fun b!7623816 () Bool)

(assert (=> b!7623816 (= e!4533056 e!4533053)))

(declare-fun res!3052574 () Bool)

(assert (=> b!7623816 (=> res!3052574 e!4533053)))

(assert (=> b!7623816 (= res!3052574 (Exists!4485 lambda!468595))))

(declare-fun lt!2657428 () Unit!167556)

(declare-fun e!4533052 () Unit!167556)

(assert (=> b!7623816 (= lt!2657428 e!4533052)))

(declare-fun c!1404943 () Bool)

(declare-fun matchR!9836 (Regex!20329 List!73182) Bool)

(assert (=> b!7623816 (= c!1404943 (matchR!9836 r!14126 s!9605))))

(declare-fun b!7623817 () Bool)

(declare-fun tp_is_empty!51013 () Bool)

(declare-fun tp!2225871 () Bool)

(assert (=> b!7623817 (= e!4533057 (and tp_is_empty!51013 tp!2225871))))

(declare-fun b!7623818 () Bool)

(declare-fun Unit!167558 () Unit!167556)

(assert (=> b!7623818 (= e!4533052 Unit!167558)))

(declare-fun lt!2657431 () Unit!167556)

(declare-fun lemmaStarAppConcat!10 (Regex!20329 List!73182) Unit!167556)

(assert (=> b!7623818 (= lt!2657431 (lemmaStarAppConcat!10 (reg!20658 r!14126) s!9605))))

(assert (=> b!7623818 (matchR!9836 (Concat!29174 (reg!20658 r!14126) r!14126) s!9605)))

(declare-fun lt!2657432 () Unit!167556)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!242 (Regex!20329 Regex!20329 List!73182) Unit!167556)

(assert (=> b!7623818 (= lt!2657432 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!242 (reg!20658 r!14126) r!14126 s!9605))))

(assert (=> b!7623818 false))

(declare-fun b!7623819 () Bool)

(declare-fun tp!2225874 () Bool)

(assert (=> b!7623819 (= e!4533059 (and tp_is_empty!51013 tp!2225874))))

(declare-fun b!7623820 () Bool)

(declare-fun tp!2225870 () Bool)

(assert (=> b!7623820 (= e!4533054 tp!2225870)))

(declare-fun b!7623821 () Bool)

(declare-fun tp!2225868 () Bool)

(assert (=> b!7623821 (= e!4533055 (and tp_is_empty!51013 tp!2225868))))

(declare-fun b!7623822 () Bool)

(declare-fun Unit!167559 () Unit!167556)

(assert (=> b!7623822 (= e!4533052 Unit!167559)))

(declare-fun b!7623823 () Bool)

(assert (=> b!7623823 (= e!4533054 tp_is_empty!51013)))

(assert (= (and start!734280 res!3052573) b!7623812))

(assert (= (and b!7623812 res!3052578) b!7623811))

(assert (= (and b!7623811 res!3052577) b!7623814))

(assert (= (and b!7623814 (not res!3052572)) b!7623816))

(assert (= (and b!7623816 c!1404943) b!7623818))

(assert (= (and b!7623816 (not c!1404943)) b!7623822))

(assert (= (and b!7623816 (not res!3052574)) b!7623813))

(assert (= (and b!7623813 (not res!3052576)) b!7623808))

(assert (= (and b!7623808 (not res!3052571)) b!7623807))

(assert (= (and b!7623807 (not res!3052575)) b!7623815))

(assert (= (and start!734280 ((_ is ElementMatch!20329) r!14126)) b!7623823))

(assert (= (and start!734280 ((_ is Concat!29174) r!14126)) b!7623810))

(assert (= (and start!734280 ((_ is Star!20329) r!14126)) b!7623820))

(assert (= (and start!734280 ((_ is Union!20329) r!14126)) b!7623809))

(assert (= (and start!734280 ((_ is Cons!73058) s!9605)) b!7623821))

(assert (= (and start!734280 ((_ is Cons!73058) (_1!37913 cut!10))) b!7623819))

(assert (= (and start!734280 ((_ is Cons!73058) (_2!37913 cut!10))) b!7623817))

(declare-fun m!8154408 () Bool)

(assert (=> start!734280 m!8154408))

(declare-fun m!8154410 () Bool)

(assert (=> b!7623816 m!8154410))

(declare-fun m!8154412 () Bool)

(assert (=> b!7623816 m!8154412))

(declare-fun m!8154414 () Bool)

(assert (=> b!7623811 m!8154414))

(declare-fun m!8154416 () Bool)

(assert (=> b!7623807 m!8154416))

(declare-fun m!8154418 () Bool)

(assert (=> b!7623813 m!8154418))

(assert (=> b!7623815 m!8154408))

(declare-fun m!8154420 () Bool)

(assert (=> b!7623808 m!8154420))

(declare-fun m!8154422 () Bool)

(assert (=> b!7623818 m!8154422))

(declare-fun m!8154424 () Bool)

(assert (=> b!7623818 m!8154424))

(declare-fun m!8154426 () Bool)

(assert (=> b!7623818 m!8154426))

(assert (=> b!7623814 m!8154410))

(declare-fun m!8154428 () Bool)

(assert (=> b!7623814 m!8154428))

(assert (=> b!7623814 m!8154428))

(declare-fun m!8154430 () Bool)

(assert (=> b!7623814 m!8154430))

(declare-fun m!8154432 () Bool)

(assert (=> b!7623814 m!8154432))

(check-sat (not b!7623820) (not b!7623821) (not b!7623816) (not b!7623814) (not b!7623807) (not b!7623808) (not b!7623818) (not b!7623815) (not b!7623809) (not b!7623813) (not b!7623817) tp_is_empty!51013 (not b!7623819) (not start!734280) (not b!7623811) (not b!7623810))
(check-sat)
