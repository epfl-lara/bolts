; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288244 () Bool)

(assert start!288244)

(declare-fun b!2983075 () Bool)

(assert (=> b!2983075 true))

(assert (=> b!2983075 true))

(assert (=> b!2983075 true))

(declare-fun lambda!111316 () Int)

(declare-fun lambda!111315 () Int)

(assert (=> b!2983075 (not (= lambda!111316 lambda!111315))))

(assert (=> b!2983075 true))

(assert (=> b!2983075 true))

(assert (=> b!2983075 true))

(declare-fun b!2983073 () Bool)

(declare-datatypes ((Unit!49019 0))(
  ( (Unit!49020) )
))
(declare-fun e!1875960 () Unit!49019)

(declare-fun Unit!49021 () Unit!49019)

(assert (=> b!2983073 (= e!1875960 Unit!49021)))

(declare-fun b!2983074 () Bool)

(declare-fun e!1875955 () Bool)

(assert (=> b!2983074 (= e!1875955 true)))

(declare-datatypes ((C!18812 0))(
  ( (C!18813 (val!11442 Int)) )
))
(declare-datatypes ((Regex!9313 0))(
  ( (ElementMatch!9313 (c!490027 C!18812)) (Concat!14634 (regOne!19138 Regex!9313) (regTwo!19138 Regex!9313)) (EmptyExpr!9313) (Star!9313 (reg!9642 Regex!9313)) (EmptyLang!9313) (Union!9313 (regOne!19139 Regex!9313) (regTwo!19139 Regex!9313)) )
))
(declare-fun lt!1038723 () Regex!9313)

(declare-datatypes ((List!35178 0))(
  ( (Nil!35054) (Cons!35054 (h!40474 C!18812) (t!234243 List!35178)) )
))
(declare-datatypes ((tuple2!33964 0))(
  ( (tuple2!33965 (_1!20114 List!35178) (_2!20114 List!35178)) )
))
(declare-fun lt!1038718 () tuple2!33964)

(declare-fun matchR!4195 (Regex!9313 List!35178) Bool)

(declare-fun simplify!314 (Regex!9313) Regex!9313)

(assert (=> b!2983074 (= (matchR!4195 lt!1038723 (_2!20114 lt!1038718)) (matchR!4195 (simplify!314 lt!1038723) (_2!20114 lt!1038718)))))

(declare-fun lt!1038724 () Unit!49019)

(declare-fun lemmaSimplifySound!178 (Regex!9313 List!35178) Unit!49019)

(assert (=> b!2983074 (= lt!1038724 (lemmaSimplifySound!178 lt!1038723 (_2!20114 lt!1038718)))))

(declare-fun r!17423 () Regex!9313)

(assert (=> b!2983074 (= lt!1038723 (Star!9313 (reg!9642 r!17423)))))

(declare-fun lt!1038719 () Unit!49019)

(assert (=> b!2983074 (= lt!1038719 e!1875960)))

(declare-fun c!490026 () Bool)

(declare-fun s!11993 () List!35178)

(declare-fun size!26485 (List!35178) Int)

(assert (=> b!2983074 (= c!490026 (= (size!26485 (_2!20114 lt!1038718)) (size!26485 s!11993)))))

(assert (=> b!2983074 (matchR!4195 (reg!9642 r!17423) (_1!20114 lt!1038718))))

(declare-fun lt!1038713 () Unit!49019)

(assert (=> b!2983074 (= lt!1038713 (lemmaSimplifySound!178 (reg!9642 r!17423) (_1!20114 lt!1038718)))))

(declare-fun e!1875963 () Bool)

(declare-fun e!1875957 () Bool)

(assert (=> b!2983075 (= e!1875963 e!1875957)))

(declare-fun res!1230252 () Bool)

(assert (=> b!2983075 (=> res!1230252 e!1875957)))

(declare-fun lt!1038721 () Bool)

(assert (=> b!2983075 (= res!1230252 (not lt!1038721))))

(declare-fun Exists!1593 (Int) Bool)

(assert (=> b!2983075 (= (Exists!1593 lambda!111315) (Exists!1593 lambda!111316))))

(declare-fun lt!1038716 () Unit!49019)

(declare-fun lt!1038720 () Regex!9313)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!278 (Regex!9313 List!35178) Unit!49019)

(assert (=> b!2983075 (= lt!1038716 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!278 lt!1038720 s!11993))))

(assert (=> b!2983075 (= lt!1038721 (Exists!1593 lambda!111315))))

(declare-datatypes ((Option!6714 0))(
  ( (None!6713) (Some!6713 (v!34847 tuple2!33964)) )
))
(declare-fun lt!1038722 () Option!6714)

(declare-fun isDefined!5265 (Option!6714) Bool)

(assert (=> b!2983075 (= lt!1038721 (isDefined!5265 lt!1038722))))

(declare-fun lt!1038715 () Regex!9313)

(declare-fun findConcatSeparation!1108 (Regex!9313 Regex!9313 List!35178 List!35178 List!35178) Option!6714)

(assert (=> b!2983075 (= lt!1038722 (findConcatSeparation!1108 lt!1038720 lt!1038715 Nil!35054 s!11993 s!11993))))

(declare-fun lt!1038726 () Unit!49019)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!886 (Regex!9313 Regex!9313 List!35178) Unit!49019)

(assert (=> b!2983075 (= lt!1038726 (lemmaFindConcatSeparationEquivalentToExists!886 lt!1038720 lt!1038715 s!11993))))

(declare-fun b!2983076 () Bool)

(declare-fun e!1875958 () Bool)

(declare-fun tp_is_empty!16189 () Bool)

(declare-fun tp!949417 () Bool)

(assert (=> b!2983076 (= e!1875958 (and tp_is_empty!16189 tp!949417))))

(declare-fun b!2983077 () Bool)

(declare-fun e!1875961 () Bool)

(assert (=> b!2983077 (= e!1875961 e!1875963)))

(declare-fun res!1230251 () Bool)

(assert (=> b!2983077 (=> res!1230251 e!1875963)))

(declare-fun isEmpty!19315 (List!35178) Bool)

(assert (=> b!2983077 (= res!1230251 (isEmpty!19315 s!11993))))

(declare-fun matchRSpec!1450 (Regex!9313 List!35178) Bool)

(assert (=> b!2983077 (matchRSpec!1450 lt!1038715 s!11993)))

(declare-fun lt!1038712 () Unit!49019)

(declare-fun mainMatchTheorem!1450 (Regex!9313 List!35178) Unit!49019)

(assert (=> b!2983077 (= lt!1038712 (mainMatchTheorem!1450 lt!1038715 s!11993))))

(declare-fun b!2983078 () Bool)

(declare-fun e!1875954 () Bool)

(declare-fun e!1875962 () Bool)

(assert (=> b!2983078 (= e!1875954 e!1875962)))

(declare-fun res!1230253 () Bool)

(assert (=> b!2983078 (=> res!1230253 e!1875962)))

(declare-fun isEmptyLang!427 (Regex!9313) Bool)

(assert (=> b!2983078 (= res!1230253 (isEmptyLang!427 lt!1038720))))

(assert (=> b!2983078 (= lt!1038720 (simplify!314 (reg!9642 r!17423)))))

(declare-fun b!2983079 () Bool)

(declare-fun e!1875959 () Bool)

(assert (=> b!2983079 (= e!1875959 (not e!1875954))))

(declare-fun res!1230255 () Bool)

(assert (=> b!2983079 (=> res!1230255 e!1875954)))

(declare-fun lt!1038717 () Bool)

(get-info :version)

(assert (=> b!2983079 (= res!1230255 (or lt!1038717 ((_ is Concat!14634) r!17423) ((_ is Union!9313) r!17423) (not ((_ is Star!9313) r!17423))))))

(assert (=> b!2983079 (= lt!1038717 (matchRSpec!1450 r!17423 s!11993))))

(assert (=> b!2983079 (= lt!1038717 (matchR!4195 r!17423 s!11993))))

(declare-fun lt!1038714 () Unit!49019)

(assert (=> b!2983079 (= lt!1038714 (mainMatchTheorem!1450 r!17423 s!11993))))

(declare-fun b!2983080 () Bool)

(declare-fun e!1875956 () Bool)

(assert (=> b!2983080 (= e!1875956 tp_is_empty!16189)))

(declare-fun b!2983081 () Bool)

(assert (=> b!2983081 (= e!1875957 e!1875955)))

(declare-fun res!1230249 () Bool)

(assert (=> b!2983081 (=> res!1230249 e!1875955)))

(assert (=> b!2983081 (= res!1230249 (not (matchR!4195 lt!1038720 (_1!20114 lt!1038718))))))

(declare-fun get!10838 (Option!6714) tuple2!33964)

(assert (=> b!2983081 (= lt!1038718 (get!10838 lt!1038722))))

(declare-fun b!2983083 () Bool)

(declare-fun tp!949412 () Bool)

(declare-fun tp!949416 () Bool)

(assert (=> b!2983083 (= e!1875956 (and tp!949412 tp!949416))))

(declare-fun b!2983084 () Bool)

(declare-fun tp!949414 () Bool)

(declare-fun tp!949413 () Bool)

(assert (=> b!2983084 (= e!1875956 (and tp!949414 tp!949413))))

(declare-fun b!2983085 () Bool)

(declare-fun tp!949415 () Bool)

(assert (=> b!2983085 (= e!1875956 tp!949415)))

(declare-fun b!2983086 () Bool)

(declare-fun res!1230254 () Bool)

(assert (=> b!2983086 (=> res!1230254 e!1875955)))

(assert (=> b!2983086 (= res!1230254 (not (matchR!4195 lt!1038715 (_2!20114 lt!1038718))))))

(declare-fun b!2983087 () Bool)

(assert (=> b!2983087 (= e!1875962 e!1875961)))

(declare-fun res!1230250 () Bool)

(assert (=> b!2983087 (=> res!1230250 e!1875961)))

(assert (=> b!2983087 (= res!1230250 (not (matchR!4195 lt!1038715 s!11993)))))

(assert (=> b!2983087 (= lt!1038715 (Star!9313 lt!1038720))))

(declare-fun res!1230256 () Bool)

(assert (=> start!288244 (=> (not res!1230256) (not e!1875959))))

(declare-fun validRegex!4046 (Regex!9313) Bool)

(assert (=> start!288244 (= res!1230256 (validRegex!4046 r!17423))))

(assert (=> start!288244 e!1875959))

(assert (=> start!288244 e!1875956))

(assert (=> start!288244 e!1875958))

(declare-fun b!2983082 () Bool)

(declare-fun Unit!49022 () Unit!49019)

(assert (=> b!2983082 (= e!1875960 Unit!49022)))

(declare-fun lt!1038725 () Unit!49019)

(assert (=> b!2983082 (= lt!1038725 (mainMatchTheorem!1450 (reg!9642 r!17423) (_1!20114 lt!1038718)))))

(assert (=> b!2983082 false))

(assert (= (and start!288244 res!1230256) b!2983079))

(assert (= (and b!2983079 (not res!1230255)) b!2983078))

(assert (= (and b!2983078 (not res!1230253)) b!2983087))

(assert (= (and b!2983087 (not res!1230250)) b!2983077))

(assert (= (and b!2983077 (not res!1230251)) b!2983075))

(assert (= (and b!2983075 (not res!1230252)) b!2983081))

(assert (= (and b!2983081 (not res!1230249)) b!2983086))

(assert (= (and b!2983086 (not res!1230254)) b!2983074))

(assert (= (and b!2983074 c!490026) b!2983082))

(assert (= (and b!2983074 (not c!490026)) b!2983073))

(assert (= (and start!288244 ((_ is ElementMatch!9313) r!17423)) b!2983080))

(assert (= (and start!288244 ((_ is Concat!14634) r!17423)) b!2983083))

(assert (= (and start!288244 ((_ is Star!9313) r!17423)) b!2983085))

(assert (= (and start!288244 ((_ is Union!9313) r!17423)) b!2983084))

(assert (= (and start!288244 ((_ is Cons!35054) s!11993)) b!2983076))

(declare-fun m!3343365 () Bool)

(assert (=> b!2983074 m!3343365))

(declare-fun m!3343367 () Bool)

(assert (=> b!2983074 m!3343367))

(declare-fun m!3343369 () Bool)

(assert (=> b!2983074 m!3343369))

(declare-fun m!3343371 () Bool)

(assert (=> b!2983074 m!3343371))

(declare-fun m!3343373 () Bool)

(assert (=> b!2983074 m!3343373))

(declare-fun m!3343375 () Bool)

(assert (=> b!2983074 m!3343375))

(declare-fun m!3343377 () Bool)

(assert (=> b!2983074 m!3343377))

(declare-fun m!3343379 () Bool)

(assert (=> b!2983074 m!3343379))

(assert (=> b!2983074 m!3343369))

(declare-fun m!3343381 () Bool)

(assert (=> b!2983087 m!3343381))

(declare-fun m!3343383 () Bool)

(assert (=> b!2983078 m!3343383))

(declare-fun m!3343385 () Bool)

(assert (=> b!2983078 m!3343385))

(declare-fun m!3343387 () Bool)

(assert (=> b!2983081 m!3343387))

(declare-fun m!3343389 () Bool)

(assert (=> b!2983081 m!3343389))

(declare-fun m!3343391 () Bool)

(assert (=> b!2983082 m!3343391))

(declare-fun m!3343393 () Bool)

(assert (=> b!2983077 m!3343393))

(declare-fun m!3343395 () Bool)

(assert (=> b!2983077 m!3343395))

(declare-fun m!3343397 () Bool)

(assert (=> b!2983077 m!3343397))

(declare-fun m!3343399 () Bool)

(assert (=> b!2983075 m!3343399))

(declare-fun m!3343401 () Bool)

(assert (=> b!2983075 m!3343401))

(declare-fun m!3343403 () Bool)

(assert (=> b!2983075 m!3343403))

(declare-fun m!3343405 () Bool)

(assert (=> b!2983075 m!3343405))

(declare-fun m!3343407 () Bool)

(assert (=> b!2983075 m!3343407))

(assert (=> b!2983075 m!3343407))

(declare-fun m!3343409 () Bool)

(assert (=> b!2983075 m!3343409))

(declare-fun m!3343411 () Bool)

(assert (=> b!2983086 m!3343411))

(declare-fun m!3343413 () Bool)

(assert (=> start!288244 m!3343413))

(declare-fun m!3343415 () Bool)

(assert (=> b!2983079 m!3343415))

(declare-fun m!3343417 () Bool)

(assert (=> b!2983079 m!3343417))

(declare-fun m!3343419 () Bool)

(assert (=> b!2983079 m!3343419))

(check-sat (not b!2983077) (not b!2983083) (not b!2983087) (not b!2983086) (not b!2983075) tp_is_empty!16189 (not start!288244) (not b!2983078) (not b!2983085) (not b!2983074) (not b!2983081) (not b!2983084) (not b!2983079) (not b!2983076) (not b!2983082))
(check-sat)
