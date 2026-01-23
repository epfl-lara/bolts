; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724190 () Bool)

(assert start!724190)

(declare-fun b!7468742 () Bool)

(assert (=> b!7468742 true))

(assert (=> b!7468742 true))

(assert (=> b!7468742 true))

(declare-fun lambda!462422 () Int)

(declare-fun lambda!462421 () Int)

(assert (=> b!7468742 (not (= lambda!462422 lambda!462421))))

(assert (=> b!7468742 true))

(assert (=> b!7468742 true))

(assert (=> b!7468742 true))

(declare-fun bs!1930733 () Bool)

(declare-fun b!7468751 () Bool)

(assert (= bs!1930733 (and b!7468751 b!7468742)))

(declare-datatypes ((C!39412 0))(
  ( (C!39413 (val!30104 Int)) )
))
(declare-datatypes ((Regex!19569 0))(
  ( (ElementMatch!19569 (c!1380174 C!39412)) (Concat!28414 (regOne!39650 Regex!19569) (regTwo!39650 Regex!19569)) (EmptyExpr!19569) (Star!19569 (reg!19898 Regex!19569)) (EmptyLang!19569) (Union!19569 (regOne!39651 Regex!19569) (regTwo!39651 Regex!19569)) )
))
(declare-fun r2!5783 () Regex!19569)

(declare-fun lambda!462423 () Int)

(declare-fun lt!2625038 () Regex!19569)

(assert (=> bs!1930733 (= (= r2!5783 lt!2625038) (= lambda!462423 lambda!462421))))

(assert (=> bs!1930733 (not (= lambda!462423 lambda!462422))))

(assert (=> b!7468751 true))

(assert (=> b!7468751 true))

(assert (=> b!7468751 true))

(declare-fun b!7468739 () Bool)

(declare-fun e!4456316 () Bool)

(declare-fun tp_is_empty!49427 () Bool)

(assert (=> b!7468739 (= e!4456316 tp_is_empty!49427)))

(declare-fun b!7468740 () Bool)

(declare-fun e!4456313 () Bool)

(declare-fun e!4456317 () Bool)

(assert (=> b!7468740 (= e!4456313 e!4456317)))

(declare-fun res!2996138 () Bool)

(assert (=> b!7468740 (=> res!2996138 e!4456317)))

(declare-fun lt!2625033 () Bool)

(declare-fun lt!2625040 () Bool)

(assert (=> b!7468740 (= res!2996138 (or (and (not lt!2625033) (not lt!2625040)) lt!2625033))))

(declare-fun lt!2625037 () Regex!19569)

(declare-datatypes ((List!72285 0))(
  ( (Nil!72161) (Cons!72161 (h!78609 C!39412) (t!386854 List!72285)) )
))
(declare-fun s!13591 () List!72285)

(declare-fun matchRSpec!4248 (Regex!19569 List!72285) Bool)

(assert (=> b!7468740 (= lt!2625040 (matchRSpec!4248 lt!2625037 s!13591))))

(declare-fun matchR!9333 (Regex!19569 List!72285) Bool)

(assert (=> b!7468740 (= lt!2625040 (matchR!9333 lt!2625037 s!13591))))

(declare-datatypes ((Unit!165973 0))(
  ( (Unit!165974) )
))
(declare-fun lt!2625036 () Unit!165973)

(declare-fun mainMatchTheorem!4242 (Regex!19569 List!72285) Unit!165973)

(assert (=> b!7468740 (= lt!2625036 (mainMatchTheorem!4242 lt!2625037 s!13591))))

(declare-fun lt!2625034 () Regex!19569)

(assert (=> b!7468740 (= lt!2625033 (matchRSpec!4248 lt!2625034 s!13591))))

(assert (=> b!7468740 (= lt!2625033 (matchR!9333 lt!2625034 s!13591))))

(declare-fun lt!2625035 () Unit!165973)

(assert (=> b!7468740 (= lt!2625035 (mainMatchTheorem!4242 lt!2625034 s!13591))))

(declare-fun b!7468741 () Bool)

(declare-fun e!4456318 () Bool)

(declare-fun tp!2165437 () Bool)

(assert (=> b!7468741 (= e!4456318 tp!2165437)))

(declare-fun e!4456320 () Bool)

(assert (=> b!7468742 (= e!4456320 e!4456313)))

(declare-fun res!2996133 () Bool)

(assert (=> b!7468742 (=> res!2996133 e!4456313)))

(declare-fun lt!2625043 () Bool)

(declare-fun lt!2625031 () Bool)

(assert (=> b!7468742 (= res!2996133 (or lt!2625043 (not lt!2625031)))))

(declare-fun Exists!4188 (Int) Bool)

(assert (=> b!7468742 (= (Exists!4188 lambda!462421) (Exists!4188 lambda!462422))))

(declare-fun rTail!78 () Regex!19569)

(declare-fun lt!2625042 () Unit!165973)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2522 (Regex!19569 Regex!19569 List!72285) Unit!165973)

(assert (=> b!7468742 (= lt!2625042 (lemmaExistCutMatchRandMatchRSpecEquivalent!2522 lt!2625038 rTail!78 s!13591))))

(assert (=> b!7468742 (= lt!2625043 (Exists!4188 lambda!462421))))

(declare-datatypes ((tuple2!68588 0))(
  ( (tuple2!68589 (_1!37597 List!72285) (_2!37597 List!72285)) )
))
(declare-datatypes ((Option!17126 0))(
  ( (None!17125) (Some!17125 (v!54254 tuple2!68588)) )
))
(declare-fun isDefined!13815 (Option!17126) Bool)

(declare-fun findConcatSeparation!3248 (Regex!19569 Regex!19569 List!72285 List!72285 List!72285) Option!17126)

(assert (=> b!7468742 (= lt!2625043 (isDefined!13815 (findConcatSeparation!3248 lt!2625038 rTail!78 Nil!72161 s!13591 s!13591)))))

(declare-fun lt!2625032 () Unit!165973)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3006 (Regex!19569 Regex!19569 List!72285) Unit!165973)

(assert (=> b!7468742 (= lt!2625032 (lemmaFindConcatSeparationEquivalentToExists!3006 lt!2625038 rTail!78 s!13591))))

(declare-fun b!7468743 () Bool)

(declare-fun tp!2165443 () Bool)

(declare-fun tp!2165444 () Bool)

(assert (=> b!7468743 (= e!4456318 (and tp!2165443 tp!2165444))))

(declare-fun b!7468744 () Bool)

(declare-fun e!4456314 () Bool)

(declare-fun tp!2165450 () Bool)

(assert (=> b!7468744 (= e!4456314 (and tp_is_empty!49427 tp!2165450))))

(declare-fun b!7468745 () Bool)

(declare-fun e!4456319 () Bool)

(assert (=> b!7468745 (= e!4456319 tp_is_empty!49427)))

(declare-fun b!7468746 () Bool)

(assert (=> b!7468746 (= e!4456318 tp_is_empty!49427)))

(declare-fun b!7468748 () Bool)

(declare-fun res!2996135 () Bool)

(declare-fun e!4456315 () Bool)

(assert (=> b!7468748 (=> (not res!2996135) (not e!4456315))))

(declare-fun validRegex!10083 (Regex!19569) Bool)

(assert (=> b!7468748 (= res!2996135 (validRegex!10083 r2!5783))))

(declare-fun b!7468749 () Bool)

(declare-fun res!2996134 () Bool)

(assert (=> b!7468749 (=> (not res!2996134) (not e!4456315))))

(assert (=> b!7468749 (= res!2996134 (validRegex!10083 rTail!78))))

(declare-fun b!7468750 () Bool)

(declare-fun tp!2165448 () Bool)

(assert (=> b!7468750 (= e!4456316 tp!2165448)))

(assert (=> b!7468751 (= e!4456317 true)))

(assert (=> b!7468751 (= (isDefined!13815 (findConcatSeparation!3248 r2!5783 rTail!78 Nil!72161 s!13591 s!13591)) (Exists!4188 lambda!462423))))

(declare-fun lt!2625041 () Unit!165973)

(assert (=> b!7468751 (= lt!2625041 (lemmaFindConcatSeparationEquivalentToExists!3006 r2!5783 rTail!78 s!13591))))

(declare-fun res!2996136 () Bool)

(assert (=> start!724190 (=> (not res!2996136) (not e!4456315))))

(declare-fun r1!5845 () Regex!19569)

(assert (=> start!724190 (= res!2996136 (validRegex!10083 r1!5845))))

(assert (=> start!724190 e!4456315))

(assert (=> start!724190 e!4456318))

(assert (=> start!724190 e!4456316))

(assert (=> start!724190 e!4456319))

(assert (=> start!724190 e!4456314))

(declare-fun b!7468747 () Bool)

(declare-fun tp!2165439 () Bool)

(declare-fun tp!2165441 () Bool)

(assert (=> b!7468747 (= e!4456318 (and tp!2165439 tp!2165441))))

(declare-fun b!7468752 () Bool)

(declare-fun tp!2165446 () Bool)

(declare-fun tp!2165449 () Bool)

(assert (=> b!7468752 (= e!4456319 (and tp!2165446 tp!2165449))))

(declare-fun b!7468753 () Bool)

(assert (=> b!7468753 (= e!4456315 (not e!4456320))))

(declare-fun res!2996137 () Bool)

(assert (=> b!7468753 (=> res!2996137 e!4456320)))

(declare-fun lt!2625045 () Bool)

(assert (=> b!7468753 (= res!2996137 lt!2625045)))

(declare-fun lt!2625046 () Regex!19569)

(assert (=> b!7468753 (= lt!2625031 (matchRSpec!4248 lt!2625046 s!13591))))

(assert (=> b!7468753 (= lt!2625031 (matchR!9333 lt!2625046 s!13591))))

(declare-fun lt!2625039 () Unit!165973)

(assert (=> b!7468753 (= lt!2625039 (mainMatchTheorem!4242 lt!2625046 s!13591))))

(declare-fun lt!2625044 () Regex!19569)

(assert (=> b!7468753 (= lt!2625045 (matchRSpec!4248 lt!2625044 s!13591))))

(assert (=> b!7468753 (= lt!2625045 (matchR!9333 lt!2625044 s!13591))))

(declare-fun lt!2625047 () Unit!165973)

(assert (=> b!7468753 (= lt!2625047 (mainMatchTheorem!4242 lt!2625044 s!13591))))

(assert (=> b!7468753 (= lt!2625046 (Union!19569 lt!2625034 lt!2625037))))

(assert (=> b!7468753 (= lt!2625037 (Concat!28414 r2!5783 rTail!78))))

(assert (=> b!7468753 (= lt!2625034 (Concat!28414 r1!5845 rTail!78))))

(assert (=> b!7468753 (= lt!2625044 (Concat!28414 lt!2625038 rTail!78))))

(assert (=> b!7468753 (= lt!2625038 (Union!19569 r1!5845 r2!5783))))

(declare-fun b!7468754 () Bool)

(declare-fun tp!2165440 () Bool)

(declare-fun tp!2165438 () Bool)

(assert (=> b!7468754 (= e!4456316 (and tp!2165440 tp!2165438))))

(declare-fun b!7468755 () Bool)

(declare-fun tp!2165451 () Bool)

(declare-fun tp!2165436 () Bool)

(assert (=> b!7468755 (= e!4456316 (and tp!2165451 tp!2165436))))

(declare-fun b!7468756 () Bool)

(declare-fun tp!2165447 () Bool)

(declare-fun tp!2165442 () Bool)

(assert (=> b!7468756 (= e!4456319 (and tp!2165447 tp!2165442))))

(declare-fun b!7468757 () Bool)

(declare-fun tp!2165445 () Bool)

(assert (=> b!7468757 (= e!4456319 tp!2165445)))

(assert (= (and start!724190 res!2996136) b!7468748))

(assert (= (and b!7468748 res!2996135) b!7468749))

(assert (= (and b!7468749 res!2996134) b!7468753))

(assert (= (and b!7468753 (not res!2996137)) b!7468742))

(assert (= (and b!7468742 (not res!2996133)) b!7468740))

(assert (= (and b!7468740 (not res!2996138)) b!7468751))

(get-info :version)

(assert (= (and start!724190 ((_ is ElementMatch!19569) r1!5845)) b!7468746))

(assert (= (and start!724190 ((_ is Concat!28414) r1!5845)) b!7468743))

(assert (= (and start!724190 ((_ is Star!19569) r1!5845)) b!7468741))

(assert (= (and start!724190 ((_ is Union!19569) r1!5845)) b!7468747))

(assert (= (and start!724190 ((_ is ElementMatch!19569) r2!5783)) b!7468739))

(assert (= (and start!724190 ((_ is Concat!28414) r2!5783)) b!7468755))

(assert (= (and start!724190 ((_ is Star!19569) r2!5783)) b!7468750))

(assert (= (and start!724190 ((_ is Union!19569) r2!5783)) b!7468754))

(assert (= (and start!724190 ((_ is ElementMatch!19569) rTail!78)) b!7468745))

(assert (= (and start!724190 ((_ is Concat!28414) rTail!78)) b!7468756))

(assert (= (and start!724190 ((_ is Star!19569) rTail!78)) b!7468757))

(assert (= (and start!724190 ((_ is Union!19569) rTail!78)) b!7468752))

(assert (= (and start!724190 ((_ is Cons!72161) s!13591)) b!7468744))

(declare-fun m!8066634 () Bool)

(assert (=> b!7468742 m!8066634))

(declare-fun m!8066636 () Bool)

(assert (=> b!7468742 m!8066636))

(declare-fun m!8066638 () Bool)

(assert (=> b!7468742 m!8066638))

(assert (=> b!7468742 m!8066636))

(declare-fun m!8066640 () Bool)

(assert (=> b!7468742 m!8066640))

(declare-fun m!8066642 () Bool)

(assert (=> b!7468742 m!8066642))

(assert (=> b!7468742 m!8066638))

(declare-fun m!8066644 () Bool)

(assert (=> b!7468742 m!8066644))

(declare-fun m!8066646 () Bool)

(assert (=> b!7468748 m!8066646))

(declare-fun m!8066648 () Bool)

(assert (=> b!7468740 m!8066648))

(declare-fun m!8066650 () Bool)

(assert (=> b!7468740 m!8066650))

(declare-fun m!8066652 () Bool)

(assert (=> b!7468740 m!8066652))

(declare-fun m!8066654 () Bool)

(assert (=> b!7468740 m!8066654))

(declare-fun m!8066656 () Bool)

(assert (=> b!7468740 m!8066656))

(declare-fun m!8066658 () Bool)

(assert (=> b!7468740 m!8066658))

(declare-fun m!8066660 () Bool)

(assert (=> start!724190 m!8066660))

(declare-fun m!8066662 () Bool)

(assert (=> b!7468751 m!8066662))

(assert (=> b!7468751 m!8066662))

(declare-fun m!8066664 () Bool)

(assert (=> b!7468751 m!8066664))

(declare-fun m!8066666 () Bool)

(assert (=> b!7468751 m!8066666))

(declare-fun m!8066668 () Bool)

(assert (=> b!7468751 m!8066668))

(declare-fun m!8066670 () Bool)

(assert (=> b!7468749 m!8066670))

(declare-fun m!8066672 () Bool)

(assert (=> b!7468753 m!8066672))

(declare-fun m!8066674 () Bool)

(assert (=> b!7468753 m!8066674))

(declare-fun m!8066676 () Bool)

(assert (=> b!7468753 m!8066676))

(declare-fun m!8066678 () Bool)

(assert (=> b!7468753 m!8066678))

(declare-fun m!8066680 () Bool)

(assert (=> b!7468753 m!8066680))

(declare-fun m!8066682 () Bool)

(assert (=> b!7468753 m!8066682))

(check-sat (not b!7468757) (not b!7468744) (not b!7468741) (not b!7468749) (not b!7468751) (not b!7468740) tp_is_empty!49427 (not b!7468753) (not start!724190) (not b!7468750) (not b!7468754) (not b!7468755) (not b!7468747) (not b!7468748) (not b!7468752) (not b!7468756) (not b!7468743) (not b!7468742))
(check-sat)
