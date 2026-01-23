; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724350 () Bool)

(assert start!724350)

(declare-fun b!7472905 () Bool)

(assert (=> b!7472905 true))

(assert (=> b!7472905 true))

(assert (=> b!7472905 true))

(declare-fun lambda!462929 () Int)

(declare-fun lambda!462928 () Int)

(assert (=> b!7472905 (not (= lambda!462929 lambda!462928))))

(assert (=> b!7472905 true))

(assert (=> b!7472905 true))

(assert (=> b!7472905 true))

(declare-fun bs!1931605 () Bool)

(declare-fun b!7472894 () Bool)

(assert (= bs!1931605 (and b!7472894 b!7472905)))

(declare-fun lambda!462930 () Int)

(declare-datatypes ((C!39456 0))(
  ( (C!39457 (val!30126 Int)) )
))
(declare-datatypes ((Regex!19591 0))(
  ( (ElementMatch!19591 (c!1380614 C!39456)) (Concat!28436 (regOne!39694 Regex!19591) (regTwo!39694 Regex!19591)) (EmptyExpr!19591) (Star!19591 (reg!19920 Regex!19591)) (EmptyLang!19591) (Union!19591 (regOne!39695 Regex!19591) (regTwo!39695 Regex!19591)) )
))
(declare-fun r2!5783 () Regex!19591)

(declare-fun lt!2626649 () Regex!19591)

(assert (=> bs!1931605 (= (= r2!5783 lt!2626649) (= lambda!462930 lambda!462928))))

(assert (=> bs!1931605 (not (= lambda!462930 lambda!462929))))

(assert (=> b!7472894 true))

(assert (=> b!7472894 true))

(assert (=> b!7472894 true))

(declare-fun lambda!462931 () Int)

(assert (=> bs!1931605 (not (= lambda!462931 lambda!462928))))

(assert (=> bs!1931605 (= (= r2!5783 lt!2626649) (= lambda!462931 lambda!462929))))

(assert (=> b!7472894 (not (= lambda!462931 lambda!462930))))

(assert (=> b!7472894 true))

(assert (=> b!7472894 true))

(assert (=> b!7472894 true))

(declare-fun b!7472884 () Bool)

(declare-fun res!2998050 () Bool)

(declare-fun e!4458296 () Bool)

(assert (=> b!7472884 (=> (not res!2998050) (not e!4458296))))

(declare-fun rTail!78 () Regex!19591)

(declare-fun validRegex!10105 (Regex!19591) Bool)

(assert (=> b!7472884 (= res!2998050 (validRegex!10105 rTail!78))))

(declare-fun b!7472885 () Bool)

(declare-fun e!4458298 () Bool)

(declare-fun tp!2167029 () Bool)

(declare-fun tp!2167021 () Bool)

(assert (=> b!7472885 (= e!4458298 (and tp!2167029 tp!2167021))))

(declare-fun b!7472886 () Bool)

(declare-fun e!4458293 () Bool)

(assert (=> b!7472886 (= e!4458296 (not e!4458293))))

(declare-fun res!2998052 () Bool)

(assert (=> b!7472886 (=> res!2998052 e!4458293)))

(declare-fun lt!2626629 () Bool)

(assert (=> b!7472886 (= res!2998052 lt!2626629)))

(declare-fun lt!2626641 () Bool)

(declare-fun lt!2626640 () Regex!19591)

(declare-datatypes ((List!72307 0))(
  ( (Nil!72183) (Cons!72183 (h!78631 C!39456) (t!386876 List!72307)) )
))
(declare-fun s!13591 () List!72307)

(declare-fun matchRSpec!4270 (Regex!19591 List!72307) Bool)

(assert (=> b!7472886 (= lt!2626641 (matchRSpec!4270 lt!2626640 s!13591))))

(declare-fun matchR!9355 (Regex!19591 List!72307) Bool)

(assert (=> b!7472886 (= lt!2626641 (matchR!9355 lt!2626640 s!13591))))

(declare-datatypes ((Unit!166017 0))(
  ( (Unit!166018) )
))
(declare-fun lt!2626645 () Unit!166017)

(declare-fun mainMatchTheorem!4264 (Regex!19591 List!72307) Unit!166017)

(assert (=> b!7472886 (= lt!2626645 (mainMatchTheorem!4264 lt!2626640 s!13591))))

(declare-fun lt!2626643 () Regex!19591)

(assert (=> b!7472886 (= lt!2626629 (matchRSpec!4270 lt!2626643 s!13591))))

(assert (=> b!7472886 (= lt!2626629 (matchR!9355 lt!2626643 s!13591))))

(declare-fun lt!2626648 () Unit!166017)

(assert (=> b!7472886 (= lt!2626648 (mainMatchTheorem!4264 lt!2626643 s!13591))))

(declare-fun lt!2626642 () Regex!19591)

(declare-fun lt!2626634 () Regex!19591)

(assert (=> b!7472886 (= lt!2626640 (Union!19591 lt!2626642 lt!2626634))))

(assert (=> b!7472886 (= lt!2626634 (Concat!28436 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19591)

(assert (=> b!7472886 (= lt!2626642 (Concat!28436 r1!5845 rTail!78))))

(assert (=> b!7472886 (= lt!2626643 (Concat!28436 lt!2626649 rTail!78))))

(assert (=> b!7472886 (= lt!2626649 (Union!19591 r1!5845 r2!5783))))

(declare-fun b!7472887 () Bool)

(declare-fun e!4458290 () Bool)

(declare-fun tp_is_empty!49471 () Bool)

(declare-fun tp!2167034 () Bool)

(assert (=> b!7472887 (= e!4458290 (and tp_is_empty!49471 tp!2167034))))

(declare-fun b!7472888 () Bool)

(declare-fun e!4458291 () Bool)

(assert (=> b!7472888 (= e!4458291 tp_is_empty!49471)))

(declare-fun b!7472889 () Bool)

(declare-fun tp!2167020 () Bool)

(declare-fun tp!2167024 () Bool)

(assert (=> b!7472889 (= e!4458298 (and tp!2167020 tp!2167024))))

(declare-fun b!7472890 () Bool)

(declare-fun tp!2167028 () Bool)

(declare-fun tp!2167035 () Bool)

(assert (=> b!7472890 (= e!4458291 (and tp!2167028 tp!2167035))))

(declare-fun b!7472892 () Bool)

(declare-fun res!2998051 () Bool)

(declare-fun e!4458297 () Bool)

(assert (=> b!7472892 (=> res!2998051 e!4458297)))

(declare-datatypes ((tuple2!68632 0))(
  ( (tuple2!68633 (_1!37619 List!72307) (_2!37619 List!72307)) )
))
(declare-fun lt!2626644 () tuple2!68632)

(assert (=> b!7472892 (= res!2998051 (not (matchR!9355 rTail!78 (_2!37619 lt!2626644))))))

(declare-fun b!7472893 () Bool)

(declare-fun e!4458294 () Bool)

(declare-fun tp!2167032 () Bool)

(declare-fun tp!2167026 () Bool)

(assert (=> b!7472893 (= e!4458294 (and tp!2167032 tp!2167026))))

(declare-fun e!4458289 () Bool)

(assert (=> b!7472894 (= e!4458289 e!4458297)))

(declare-fun res!2998047 () Bool)

(assert (=> b!7472894 (=> res!2998047 e!4458297)))

(assert (=> b!7472894 (= res!2998047 (not (matchR!9355 r2!5783 (_1!37619 lt!2626644))))))

(declare-datatypes ((Option!17148 0))(
  ( (None!17147) (Some!17147 (v!54276 tuple2!68632)) )
))
(declare-fun lt!2626632 () Option!17148)

(declare-fun get!25250 (Option!17148) tuple2!68632)

(assert (=> b!7472894 (= lt!2626644 (get!25250 lt!2626632))))

(declare-fun Exists!4210 (Int) Bool)

(assert (=> b!7472894 (= (Exists!4210 lambda!462930) (Exists!4210 lambda!462931))))

(declare-fun lt!2626627 () Unit!166017)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2544 (Regex!19591 Regex!19591 List!72307) Unit!166017)

(assert (=> b!7472894 (= lt!2626627 (lemmaExistCutMatchRandMatchRSpecEquivalent!2544 r2!5783 rTail!78 s!13591))))

(declare-fun isDefined!13837 (Option!17148) Bool)

(assert (=> b!7472894 (= (isDefined!13837 lt!2626632) (Exists!4210 lambda!462930))))

(declare-fun findConcatSeparation!3270 (Regex!19591 Regex!19591 List!72307 List!72307 List!72307) Option!17148)

(assert (=> b!7472894 (= lt!2626632 (findConcatSeparation!3270 r2!5783 rTail!78 Nil!72183 s!13591 s!13591))))

(declare-fun lt!2626631 () Unit!166017)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3028 (Regex!19591 Regex!19591 List!72307) Unit!166017)

(assert (=> b!7472894 (= lt!2626631 (lemmaFindConcatSeparationEquivalentToExists!3028 r2!5783 rTail!78 s!13591))))

(declare-fun b!7472895 () Bool)

(declare-fun tp!2167025 () Bool)

(assert (=> b!7472895 (= e!4458294 tp!2167025)))

(declare-fun b!7472896 () Bool)

(assert (=> b!7472896 (= e!4458298 tp_is_empty!49471)))

(declare-fun b!7472897 () Bool)

(declare-fun e!4458295 () Bool)

(assert (=> b!7472897 (= e!4458297 e!4458295)))

(declare-fun res!2998048 () Bool)

(assert (=> b!7472897 (=> res!2998048 e!4458295)))

(declare-fun lt!2626651 () Bool)

(assert (=> b!7472897 (= res!2998048 (not lt!2626651))))

(assert (=> b!7472897 (matchRSpec!4270 r2!5783 (_1!37619 lt!2626644))))

(declare-fun lt!2626635 () Unit!166017)

(assert (=> b!7472897 (= lt!2626635 (mainMatchTheorem!4264 r2!5783 (_1!37619 lt!2626644)))))

(assert (=> b!7472897 (= (matchR!9355 r1!5845 (_1!37619 lt!2626644)) (matchRSpec!4270 r1!5845 (_1!37619 lt!2626644)))))

(declare-fun lt!2626650 () Unit!166017)

(assert (=> b!7472897 (= lt!2626650 (mainMatchTheorem!4264 r1!5845 (_1!37619 lt!2626644)))))

(assert (=> b!7472897 (= lt!2626651 (matchRSpec!4270 lt!2626649 (_1!37619 lt!2626644)))))

(assert (=> b!7472897 (= lt!2626651 (matchR!9355 lt!2626649 (_1!37619 lt!2626644)))))

(declare-fun lt!2626636 () Unit!166017)

(assert (=> b!7472897 (= lt!2626636 (mainMatchTheorem!4264 lt!2626649 (_1!37619 lt!2626644)))))

(declare-fun b!7472898 () Bool)

(declare-fun tp!2167030 () Bool)

(assert (=> b!7472898 (= e!4458291 tp!2167030)))

(declare-fun b!7472899 () Bool)

(assert (=> b!7472899 (= e!4458295 true)))

(declare-fun ++!17205 (List!72307 List!72307) List!72307)

(assert (=> b!7472899 (matchR!9355 lt!2626643 (++!17205 (_1!37619 lt!2626644) (_2!37619 lt!2626644)))))

(declare-fun lt!2626647 () Unit!166017)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!402 (Regex!19591 Regex!19591 List!72307 List!72307) Unit!166017)

(assert (=> b!7472899 (= lt!2626647 (lemmaTwoRegexMatchThenConcatMatchesConcatString!402 lt!2626649 rTail!78 (_1!37619 lt!2626644) (_2!37619 lt!2626644)))))

(declare-fun b!7472900 () Bool)

(declare-fun e!4458292 () Bool)

(assert (=> b!7472900 (= e!4458292 e!4458289)))

(declare-fun res!2998046 () Bool)

(assert (=> b!7472900 (=> res!2998046 e!4458289)))

(declare-fun lt!2626646 () Bool)

(declare-fun lt!2626628 () Bool)

(assert (=> b!7472900 (= res!2998046 (or (and (not lt!2626646) (not lt!2626628)) lt!2626646))))

(assert (=> b!7472900 (= lt!2626628 (matchRSpec!4270 lt!2626634 s!13591))))

(assert (=> b!7472900 (= lt!2626628 (matchR!9355 lt!2626634 s!13591))))

(declare-fun lt!2626633 () Unit!166017)

(assert (=> b!7472900 (= lt!2626633 (mainMatchTheorem!4264 lt!2626634 s!13591))))

(assert (=> b!7472900 (= lt!2626646 (matchRSpec!4270 lt!2626642 s!13591))))

(assert (=> b!7472900 (= lt!2626646 (matchR!9355 lt!2626642 s!13591))))

(declare-fun lt!2626639 () Unit!166017)

(assert (=> b!7472900 (= lt!2626639 (mainMatchTheorem!4264 lt!2626642 s!13591))))

(declare-fun b!7472901 () Bool)

(declare-fun res!2998054 () Bool)

(assert (=> b!7472901 (=> (not res!2998054) (not e!4458296))))

(assert (=> b!7472901 (= res!2998054 (validRegex!10105 r2!5783))))

(declare-fun b!7472902 () Bool)

(declare-fun tp!2167033 () Bool)

(assert (=> b!7472902 (= e!4458298 tp!2167033)))

(declare-fun b!7472891 () Bool)

(declare-fun tp!2167022 () Bool)

(declare-fun tp!2167031 () Bool)

(assert (=> b!7472891 (= e!4458294 (and tp!2167022 tp!2167031))))

(declare-fun res!2998053 () Bool)

(assert (=> start!724350 (=> (not res!2998053) (not e!4458296))))

(assert (=> start!724350 (= res!2998053 (validRegex!10105 r1!5845))))

(assert (=> start!724350 e!4458296))

(assert (=> start!724350 e!4458291))

(assert (=> start!724350 e!4458298))

(assert (=> start!724350 e!4458294))

(assert (=> start!724350 e!4458290))

(declare-fun b!7472903 () Bool)

(assert (=> b!7472903 (= e!4458294 tp_is_empty!49471)))

(declare-fun b!7472904 () Bool)

(declare-fun tp!2167023 () Bool)

(declare-fun tp!2167027 () Bool)

(assert (=> b!7472904 (= e!4458291 (and tp!2167023 tp!2167027))))

(assert (=> b!7472905 (= e!4458293 e!4458292)))

(declare-fun res!2998049 () Bool)

(assert (=> b!7472905 (=> res!2998049 e!4458292)))

(declare-fun lt!2626630 () Bool)

(assert (=> b!7472905 (= res!2998049 (or lt!2626630 (not lt!2626641)))))

(assert (=> b!7472905 (= (Exists!4210 lambda!462928) (Exists!4210 lambda!462929))))

(declare-fun lt!2626637 () Unit!166017)

(assert (=> b!7472905 (= lt!2626637 (lemmaExistCutMatchRandMatchRSpecEquivalent!2544 lt!2626649 rTail!78 s!13591))))

(assert (=> b!7472905 (= lt!2626630 (Exists!4210 lambda!462928))))

(assert (=> b!7472905 (= lt!2626630 (isDefined!13837 (findConcatSeparation!3270 lt!2626649 rTail!78 Nil!72183 s!13591 s!13591)))))

(declare-fun lt!2626638 () Unit!166017)

(assert (=> b!7472905 (= lt!2626638 (lemmaFindConcatSeparationEquivalentToExists!3028 lt!2626649 rTail!78 s!13591))))

(assert (= (and start!724350 res!2998053) b!7472901))

(assert (= (and b!7472901 res!2998054) b!7472884))

(assert (= (and b!7472884 res!2998050) b!7472886))

(assert (= (and b!7472886 (not res!2998052)) b!7472905))

(assert (= (and b!7472905 (not res!2998049)) b!7472900))

(assert (= (and b!7472900 (not res!2998046)) b!7472894))

(assert (= (and b!7472894 (not res!2998047)) b!7472892))

(assert (= (and b!7472892 (not res!2998051)) b!7472897))

(assert (= (and b!7472897 (not res!2998048)) b!7472899))

(get-info :version)

(assert (= (and start!724350 ((_ is ElementMatch!19591) r1!5845)) b!7472888))

(assert (= (and start!724350 ((_ is Concat!28436) r1!5845)) b!7472890))

(assert (= (and start!724350 ((_ is Star!19591) r1!5845)) b!7472898))

(assert (= (and start!724350 ((_ is Union!19591) r1!5845)) b!7472904))

(assert (= (and start!724350 ((_ is ElementMatch!19591) r2!5783)) b!7472896))

(assert (= (and start!724350 ((_ is Concat!28436) r2!5783)) b!7472889))

(assert (= (and start!724350 ((_ is Star!19591) r2!5783)) b!7472902))

(assert (= (and start!724350 ((_ is Union!19591) r2!5783)) b!7472885))

(assert (= (and start!724350 ((_ is ElementMatch!19591) rTail!78)) b!7472903))

(assert (= (and start!724350 ((_ is Concat!28436) rTail!78)) b!7472891))

(assert (= (and start!724350 ((_ is Star!19591) rTail!78)) b!7472895))

(assert (= (and start!724350 ((_ is Union!19591) rTail!78)) b!7472893))

(assert (= (and start!724350 ((_ is Cons!72183) s!13591)) b!7472887))

(declare-fun m!8069194 () Bool)

(assert (=> start!724350 m!8069194))

(declare-fun m!8069196 () Bool)

(assert (=> b!7472892 m!8069196))

(declare-fun m!8069198 () Bool)

(assert (=> b!7472886 m!8069198))

(declare-fun m!8069200 () Bool)

(assert (=> b!7472886 m!8069200))

(declare-fun m!8069202 () Bool)

(assert (=> b!7472886 m!8069202))

(declare-fun m!8069204 () Bool)

(assert (=> b!7472886 m!8069204))

(declare-fun m!8069206 () Bool)

(assert (=> b!7472886 m!8069206))

(declare-fun m!8069208 () Bool)

(assert (=> b!7472886 m!8069208))

(declare-fun m!8069210 () Bool)

(assert (=> b!7472901 m!8069210))

(declare-fun m!8069212 () Bool)

(assert (=> b!7472884 m!8069212))

(declare-fun m!8069214 () Bool)

(assert (=> b!7472899 m!8069214))

(assert (=> b!7472899 m!8069214))

(declare-fun m!8069216 () Bool)

(assert (=> b!7472899 m!8069216))

(declare-fun m!8069218 () Bool)

(assert (=> b!7472899 m!8069218))

(declare-fun m!8069220 () Bool)

(assert (=> b!7472900 m!8069220))

(declare-fun m!8069222 () Bool)

(assert (=> b!7472900 m!8069222))

(declare-fun m!8069224 () Bool)

(assert (=> b!7472900 m!8069224))

(declare-fun m!8069226 () Bool)

(assert (=> b!7472900 m!8069226))

(declare-fun m!8069228 () Bool)

(assert (=> b!7472900 m!8069228))

(declare-fun m!8069230 () Bool)

(assert (=> b!7472900 m!8069230))

(declare-fun m!8069232 () Bool)

(assert (=> b!7472897 m!8069232))

(declare-fun m!8069234 () Bool)

(assert (=> b!7472897 m!8069234))

(declare-fun m!8069236 () Bool)

(assert (=> b!7472897 m!8069236))

(declare-fun m!8069238 () Bool)

(assert (=> b!7472897 m!8069238))

(declare-fun m!8069240 () Bool)

(assert (=> b!7472897 m!8069240))

(declare-fun m!8069242 () Bool)

(assert (=> b!7472897 m!8069242))

(declare-fun m!8069244 () Bool)

(assert (=> b!7472897 m!8069244))

(declare-fun m!8069246 () Bool)

(assert (=> b!7472897 m!8069246))

(declare-fun m!8069248 () Bool)

(assert (=> b!7472905 m!8069248))

(declare-fun m!8069250 () Bool)

(assert (=> b!7472905 m!8069250))

(assert (=> b!7472905 m!8069248))

(declare-fun m!8069252 () Bool)

(assert (=> b!7472905 m!8069252))

(declare-fun m!8069254 () Bool)

(assert (=> b!7472905 m!8069254))

(declare-fun m!8069256 () Bool)

(assert (=> b!7472905 m!8069256))

(declare-fun m!8069258 () Bool)

(assert (=> b!7472905 m!8069258))

(assert (=> b!7472905 m!8069250))

(declare-fun m!8069260 () Bool)

(assert (=> b!7472894 m!8069260))

(declare-fun m!8069262 () Bool)

(assert (=> b!7472894 m!8069262))

(declare-fun m!8069264 () Bool)

(assert (=> b!7472894 m!8069264))

(declare-fun m!8069266 () Bool)

(assert (=> b!7472894 m!8069266))

(declare-fun m!8069268 () Bool)

(assert (=> b!7472894 m!8069268))

(declare-fun m!8069270 () Bool)

(assert (=> b!7472894 m!8069270))

(declare-fun m!8069272 () Bool)

(assert (=> b!7472894 m!8069272))

(assert (=> b!7472894 m!8069262))

(declare-fun m!8069274 () Bool)

(assert (=> b!7472894 m!8069274))

(check-sat (not b!7472905) (not b!7472889) (not b!7472887) (not b!7472885) (not start!724350) tp_is_empty!49471 (not b!7472895) (not b!7472901) (not b!7472893) (not b!7472899) (not b!7472886) (not b!7472891) (not b!7472900) (not b!7472898) (not b!7472892) (not b!7472884) (not b!7472897) (not b!7472904) (not b!7472890) (not b!7472902) (not b!7472894))
(check-sat)
