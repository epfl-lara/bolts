; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289860 () Bool)

(assert start!289860)

(declare-fun b!3008866 () Bool)

(assert (=> b!3008866 true))

(assert (=> b!3008866 true))

(assert (=> b!3008866 true))

(declare-fun lambda!112572 () Int)

(declare-fun lambda!112571 () Int)

(assert (=> b!3008866 (not (= lambda!112572 lambda!112571))))

(assert (=> b!3008866 true))

(assert (=> b!3008866 true))

(assert (=> b!3008866 true))

(declare-fun b!3008865 () Bool)

(declare-fun e!1889409 () Bool)

(declare-fun e!1889406 () Bool)

(assert (=> b!3008865 (= e!1889409 e!1889406)))

(declare-fun res!1240050 () Bool)

(assert (=> b!3008865 (=> res!1240050 e!1889406)))

(declare-datatypes ((C!18968 0))(
  ( (C!18969 (val!11520 Int)) )
))
(declare-datatypes ((Regex!9391 0))(
  ( (ElementMatch!9391 (c!495517 C!18968)) (Concat!14712 (regOne!19294 Regex!9391) (regTwo!19294 Regex!9391)) (EmptyExpr!9391) (Star!9391 (reg!9720 Regex!9391)) (EmptyLang!9391) (Union!9391 (regOne!19295 Regex!9391) (regTwo!19295 Regex!9391)) )
))
(declare-fun lt!1043586 () Regex!9391)

(declare-fun isEmptyLang!481 (Regex!9391) Bool)

(assert (=> b!3008865 (= res!1240050 (isEmptyLang!481 lt!1043586))))

(declare-fun r!17423 () Regex!9391)

(declare-fun simplify!382 (Regex!9391) Regex!9391)

(assert (=> b!3008865 (= lt!1043586 (simplify!382 (reg!9720 r!17423)))))

(declare-fun e!1889408 () Bool)

(declare-fun e!1889401 () Bool)

(assert (=> b!3008866 (= e!1889408 e!1889401)))

(declare-fun res!1240044 () Bool)

(assert (=> b!3008866 (=> res!1240044 e!1889401)))

(declare-fun lt!1043589 () Bool)

(assert (=> b!3008866 (= res!1240044 (not lt!1043589))))

(declare-fun Exists!1660 (Int) Bool)

(assert (=> b!3008866 (= (Exists!1660 lambda!112571) (Exists!1660 lambda!112572))))

(declare-datatypes ((Unit!49199 0))(
  ( (Unit!49200) )
))
(declare-fun lt!1043585 () Unit!49199)

(declare-datatypes ((List!35256 0))(
  ( (Nil!35132) (Cons!35132 (h!40552 C!18968) (t!234321 List!35256)) )
))
(declare-fun s!11993 () List!35256)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!326 (Regex!9391 List!35256) Unit!49199)

(assert (=> b!3008866 (= lt!1043585 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!326 lt!1043586 s!11993))))

(assert (=> b!3008866 (= lt!1043589 (Exists!1660 lambda!112571))))

(declare-datatypes ((tuple2!34076 0))(
  ( (tuple2!34077 (_1!20170 List!35256) (_2!20170 List!35256)) )
))
(declare-datatypes ((Option!6770 0))(
  ( (None!6769) (Some!6769 (v!34903 tuple2!34076)) )
))
(declare-fun lt!1043580 () Option!6770)

(declare-fun isDefined!5321 (Option!6770) Bool)

(assert (=> b!3008866 (= lt!1043589 (isDefined!5321 lt!1043580))))

(declare-fun lt!1043594 () Regex!9391)

(declare-fun findConcatSeparation!1164 (Regex!9391 Regex!9391 List!35256 List!35256 List!35256) Option!6770)

(assert (=> b!3008866 (= lt!1043580 (findConcatSeparation!1164 lt!1043586 lt!1043594 Nil!35132 s!11993 s!11993))))

(declare-fun lt!1043581 () Unit!49199)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!942 (Regex!9391 Regex!9391 List!35256) Unit!49199)

(assert (=> b!3008866 (= lt!1043581 (lemmaFindConcatSeparationEquivalentToExists!942 lt!1043586 lt!1043594 s!11993))))

(declare-fun res!1240045 () Bool)

(declare-fun e!1889403 () Bool)

(assert (=> start!289860 (=> (not res!1240045) (not e!1889403))))

(declare-fun validRegex!4124 (Regex!9391) Bool)

(assert (=> start!289860 (= res!1240045 (validRegex!4124 r!17423))))

(assert (=> start!289860 e!1889403))

(declare-fun e!1889400 () Bool)

(assert (=> start!289860 e!1889400))

(declare-fun e!1889407 () Bool)

(assert (=> start!289860 e!1889407))

(declare-fun b!3008867 () Bool)

(declare-fun e!1889404 () Bool)

(assert (=> b!3008867 (= e!1889401 e!1889404)))

(declare-fun res!1240049 () Bool)

(assert (=> b!3008867 (=> res!1240049 e!1889404)))

(declare-fun lt!1043592 () tuple2!34076)

(declare-fun matchR!4273 (Regex!9391 List!35256) Bool)

(assert (=> b!3008867 (= res!1240049 (not (matchR!4273 lt!1043586 (_1!20170 lt!1043592))))))

(declare-fun get!10933 (Option!6770) tuple2!34076)

(assert (=> b!3008867 (= lt!1043592 (get!10933 lt!1043580))))

(declare-fun b!3008868 () Bool)

(assert (=> b!3008868 (= e!1889403 (not e!1889409))))

(declare-fun res!1240046 () Bool)

(assert (=> b!3008868 (=> res!1240046 e!1889409)))

(declare-fun lt!1043591 () Bool)

(get-info :version)

(assert (=> b!3008868 (= res!1240046 (or lt!1043591 ((_ is Concat!14712) r!17423) ((_ is Union!9391) r!17423) (not ((_ is Star!9391) r!17423))))))

(declare-fun matchRSpec!1528 (Regex!9391 List!35256) Bool)

(assert (=> b!3008868 (= lt!1043591 (matchRSpec!1528 r!17423 s!11993))))

(assert (=> b!3008868 (= lt!1043591 (matchR!4273 r!17423 s!11993))))

(declare-fun lt!1043588 () Unit!49199)

(declare-fun mainMatchTheorem!1528 (Regex!9391 List!35256) Unit!49199)

(assert (=> b!3008868 (= lt!1043588 (mainMatchTheorem!1528 r!17423 s!11993))))

(declare-fun b!3008869 () Bool)

(declare-fun res!1240047 () Bool)

(assert (=> b!3008869 (=> res!1240047 e!1889404)))

(assert (=> b!3008869 (= res!1240047 (not (matchR!4273 lt!1043594 (_2!20170 lt!1043592))))))

(declare-fun b!3008870 () Bool)

(declare-fun e!1889405 () Bool)

(assert (=> b!3008870 (= e!1889405 e!1889408)))

(declare-fun res!1240043 () Bool)

(assert (=> b!3008870 (=> res!1240043 e!1889408)))

(declare-fun isEmpty!19417 (List!35256) Bool)

(assert (=> b!3008870 (= res!1240043 (isEmpty!19417 s!11993))))

(assert (=> b!3008870 (matchRSpec!1528 lt!1043594 s!11993)))

(declare-fun lt!1043590 () Unit!49199)

(assert (=> b!3008870 (= lt!1043590 (mainMatchTheorem!1528 lt!1043594 s!11993))))

(declare-fun b!3008871 () Bool)

(declare-fun tp!955228 () Bool)

(assert (=> b!3008871 (= e!1889400 tp!955228)))

(declare-fun b!3008872 () Bool)

(declare-fun tp_is_empty!16345 () Bool)

(declare-fun tp!955232 () Bool)

(assert (=> b!3008872 (= e!1889407 (and tp_is_empty!16345 tp!955232))))

(declare-fun b!3008873 () Bool)

(declare-fun tp!955233 () Bool)

(declare-fun tp!955230 () Bool)

(assert (=> b!3008873 (= e!1889400 (and tp!955233 tp!955230))))

(declare-fun b!3008874 () Bool)

(assert (=> b!3008874 (= e!1889404 true)))

(declare-fun lt!1043587 () Regex!9391)

(assert (=> b!3008874 (= (matchR!4273 lt!1043587 (_2!20170 lt!1043592)) (matchR!4273 (simplify!382 lt!1043587) (_2!20170 lt!1043592)))))

(declare-fun lt!1043583 () Unit!49199)

(declare-fun lemmaSimplifySound!232 (Regex!9391 List!35256) Unit!49199)

(assert (=> b!3008874 (= lt!1043583 (lemmaSimplifySound!232 lt!1043587 (_2!20170 lt!1043592)))))

(assert (=> b!3008874 (= lt!1043587 (Star!9391 (reg!9720 r!17423)))))

(declare-fun lt!1043593 () Unit!49199)

(declare-fun e!1889402 () Unit!49199)

(assert (=> b!3008874 (= lt!1043593 e!1889402)))

(declare-fun c!495516 () Bool)

(declare-fun size!26521 (List!35256) Int)

(assert (=> b!3008874 (= c!495516 (= (size!26521 (_2!20170 lt!1043592)) (size!26521 s!11993)))))

(assert (=> b!3008874 (matchR!4273 (reg!9720 r!17423) (_1!20170 lt!1043592))))

(declare-fun lt!1043584 () Unit!49199)

(assert (=> b!3008874 (= lt!1043584 (lemmaSimplifySound!232 (reg!9720 r!17423) (_1!20170 lt!1043592)))))

(declare-fun b!3008875 () Bool)

(declare-fun tp!955229 () Bool)

(declare-fun tp!955231 () Bool)

(assert (=> b!3008875 (= e!1889400 (and tp!955229 tp!955231))))

(declare-fun b!3008876 () Bool)

(assert (=> b!3008876 (= e!1889406 e!1889405)))

(declare-fun res!1240048 () Bool)

(assert (=> b!3008876 (=> res!1240048 e!1889405)))

(assert (=> b!3008876 (= res!1240048 (not (matchR!4273 lt!1043594 s!11993)))))

(assert (=> b!3008876 (= lt!1043594 (Star!9391 lt!1043586))))

(declare-fun b!3008877 () Bool)

(declare-fun Unit!49201 () Unit!49199)

(assert (=> b!3008877 (= e!1889402 Unit!49201)))

(declare-fun lt!1043582 () Unit!49199)

(assert (=> b!3008877 (= lt!1043582 (mainMatchTheorem!1528 (reg!9720 r!17423) (_1!20170 lt!1043592)))))

(assert (=> b!3008877 false))

(declare-fun b!3008878 () Bool)

(assert (=> b!3008878 (= e!1889400 tp_is_empty!16345)))

(declare-fun b!3008879 () Bool)

(declare-fun Unit!49202 () Unit!49199)

(assert (=> b!3008879 (= e!1889402 Unit!49202)))

(assert (= (and start!289860 res!1240045) b!3008868))

(assert (= (and b!3008868 (not res!1240046)) b!3008865))

(assert (= (and b!3008865 (not res!1240050)) b!3008876))

(assert (= (and b!3008876 (not res!1240048)) b!3008870))

(assert (= (and b!3008870 (not res!1240043)) b!3008866))

(assert (= (and b!3008866 (not res!1240044)) b!3008867))

(assert (= (and b!3008867 (not res!1240049)) b!3008869))

(assert (= (and b!3008869 (not res!1240047)) b!3008874))

(assert (= (and b!3008874 c!495516) b!3008877))

(assert (= (and b!3008874 (not c!495516)) b!3008879))

(assert (= (and start!289860 ((_ is ElementMatch!9391) r!17423)) b!3008878))

(assert (= (and start!289860 ((_ is Concat!14712) r!17423)) b!3008875))

(assert (= (and start!289860 ((_ is Star!9391) r!17423)) b!3008871))

(assert (= (and start!289860 ((_ is Union!9391) r!17423)) b!3008873))

(assert (= (and start!289860 ((_ is Cons!35132) s!11993)) b!3008872))

(declare-fun m!3356241 () Bool)

(assert (=> b!3008877 m!3356241))

(declare-fun m!3356243 () Bool)

(assert (=> b!3008876 m!3356243))

(declare-fun m!3356245 () Bool)

(assert (=> b!3008868 m!3356245))

(declare-fun m!3356247 () Bool)

(assert (=> b!3008868 m!3356247))

(declare-fun m!3356249 () Bool)

(assert (=> b!3008868 m!3356249))

(declare-fun m!3356251 () Bool)

(assert (=> b!3008867 m!3356251))

(declare-fun m!3356253 () Bool)

(assert (=> b!3008867 m!3356253))

(declare-fun m!3356255 () Bool)

(assert (=> b!3008869 m!3356255))

(declare-fun m!3356257 () Bool)

(assert (=> b!3008870 m!3356257))

(declare-fun m!3356259 () Bool)

(assert (=> b!3008870 m!3356259))

(declare-fun m!3356261 () Bool)

(assert (=> b!3008870 m!3356261))

(declare-fun m!3356263 () Bool)

(assert (=> b!3008866 m!3356263))

(declare-fun m!3356265 () Bool)

(assert (=> b!3008866 m!3356265))

(assert (=> b!3008866 m!3356265))

(declare-fun m!3356267 () Bool)

(assert (=> b!3008866 m!3356267))

(declare-fun m!3356269 () Bool)

(assert (=> b!3008866 m!3356269))

(declare-fun m!3356271 () Bool)

(assert (=> b!3008866 m!3356271))

(declare-fun m!3356273 () Bool)

(assert (=> b!3008866 m!3356273))

(declare-fun m!3356275 () Bool)

(assert (=> start!289860 m!3356275))

(declare-fun m!3356277 () Bool)

(assert (=> b!3008874 m!3356277))

(declare-fun m!3356279 () Bool)

(assert (=> b!3008874 m!3356279))

(declare-fun m!3356281 () Bool)

(assert (=> b!3008874 m!3356281))

(declare-fun m!3356283 () Bool)

(assert (=> b!3008874 m!3356283))

(declare-fun m!3356285 () Bool)

(assert (=> b!3008874 m!3356285))

(declare-fun m!3356287 () Bool)

(assert (=> b!3008874 m!3356287))

(declare-fun m!3356289 () Bool)

(assert (=> b!3008874 m!3356289))

(assert (=> b!3008874 m!3356279))

(declare-fun m!3356291 () Bool)

(assert (=> b!3008874 m!3356291))

(declare-fun m!3356293 () Bool)

(assert (=> b!3008865 m!3356293))

(declare-fun m!3356295 () Bool)

(assert (=> b!3008865 m!3356295))

(check-sat (not b!3008866) (not b!3008871) (not start!289860) (not b!3008868) (not b!3008869) (not b!3008874) (not b!3008867) (not b!3008872) (not b!3008870) (not b!3008876) (not b!3008865) (not b!3008873) (not b!3008875) tp_is_empty!16345 (not b!3008877))
(check-sat)
