; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732864 () Bool)

(assert start!732864)

(declare-fun b!7600326 () Bool)

(assert (=> b!7600326 true))

(assert (=> b!7600326 true))

(assert (=> b!7600326 true))

(declare-fun bs!1942390 () Bool)

(declare-fun b!7600327 () Bool)

(assert (= bs!1942390 (and b!7600327 b!7600326)))

(declare-fun lambda!467555 () Int)

(declare-fun lambda!467554 () Int)

(assert (=> bs!1942390 (not (= lambda!467555 lambda!467554))))

(assert (=> b!7600327 true))

(assert (=> b!7600327 true))

(assert (=> b!7600327 true))

(declare-fun b!7600317 () Bool)

(declare-fun e!4521861 () Bool)

(declare-fun tp!2215681 () Bool)

(declare-fun tp!2215679 () Bool)

(assert (=> b!7600317 (= e!4521861 (and tp!2215681 tp!2215679))))

(declare-fun b!7600318 () Bool)

(declare-fun e!4521859 () Bool)

(declare-fun e!4521863 () Bool)

(assert (=> b!7600318 (= e!4521859 (not e!4521863))))

(declare-fun res!3043179 () Bool)

(assert (=> b!7600318 (=> res!3043179 e!4521863)))

(declare-fun lt!2654276 () Bool)

(declare-fun lt!2654270 () Bool)

(assert (=> b!7600318 (= res!3043179 (or (not lt!2654276) (not lt!2654270)))))

(declare-datatypes ((C!40600 0))(
  ( (C!40601 (val!30740 Int)) )
))
(declare-datatypes ((Regex!20137 0))(
  ( (ElementMatch!20137 (c!1402226 C!40600)) (Concat!28982 (regOne!40786 Regex!20137) (regTwo!40786 Regex!20137)) (EmptyExpr!20137) (Star!20137 (reg!20466 Regex!20137)) (EmptyLang!20137) (Union!20137 (regOne!40787 Regex!20137) (regTwo!40787 Regex!20137)) )
))
(declare-fun r2!3249 () Regex!20137)

(declare-datatypes ((List!73020 0))(
  ( (Nil!72896) (Cons!72896 (h!79344 C!40600) (t!387755 List!73020)) )
))
(declare-datatypes ((tuple2!68992 0))(
  ( (tuple2!68993 (_1!37799 List!73020) (_2!37799 List!73020)) )
))
(declare-fun lt!2654274 () tuple2!68992)

(declare-fun matchRSpec!4438 (Regex!20137 List!73020) Bool)

(assert (=> b!7600318 (= lt!2654270 (matchRSpec!4438 r2!3249 (_2!37799 lt!2654274)))))

(declare-fun matchR!9721 (Regex!20137 List!73020) Bool)

(assert (=> b!7600318 (= lt!2654270 (matchR!9721 r2!3249 (_2!37799 lt!2654274)))))

(declare-datatypes ((Unit!167206 0))(
  ( (Unit!167207) )
))
(declare-fun lt!2654275 () Unit!167206)

(declare-fun mainMatchTheorem!4432 (Regex!20137 List!73020) Unit!167206)

(assert (=> b!7600318 (= lt!2654275 (mainMatchTheorem!4432 r2!3249 (_2!37799 lt!2654274)))))

(declare-fun r1!3349 () Regex!20137)

(assert (=> b!7600318 (= lt!2654276 (matchRSpec!4438 r1!3349 (_1!37799 lt!2654274)))))

(assert (=> b!7600318 (= lt!2654276 (matchR!9721 r1!3349 (_1!37799 lt!2654274)))))

(declare-fun lt!2654272 () Unit!167206)

(assert (=> b!7600318 (= lt!2654272 (mainMatchTheorem!4432 r1!3349 (_1!37799 lt!2654274)))))

(declare-fun b!7600319 () Bool)

(declare-fun tp!2215678 () Bool)

(assert (=> b!7600319 (= e!4521861 tp!2215678)))

(declare-fun b!7600320 () Bool)

(declare-fun e!4521857 () Bool)

(assert (=> b!7600320 (= e!4521857 e!4521859)))

(declare-fun res!3043180 () Bool)

(assert (=> b!7600320 (=> (not res!3043180) (not e!4521859))))

(declare-fun s!10235 () List!73020)

(declare-fun ++!17543 (List!73020 List!73020) List!73020)

(assert (=> b!7600320 (= res!3043180 (= (++!17543 (_1!37799 lt!2654274) (_2!37799 lt!2654274)) s!10235))))

(declare-fun pickWitness!402 (Int) tuple2!68992)

(assert (=> b!7600320 (= lt!2654274 (pickWitness!402 lambda!467554))))

(declare-fun res!3043182 () Bool)

(assert (=> start!732864 (=> (not res!3043182) (not e!4521857))))

(declare-fun validRegex!10565 (Regex!20137) Bool)

(assert (=> start!732864 (= res!3043182 (validRegex!10565 r1!3349))))

(assert (=> start!732864 e!4521857))

(assert (=> start!732864 e!4521861))

(declare-fun e!4521855 () Bool)

(assert (=> start!732864 e!4521855))

(declare-fun e!4521858 () Bool)

(assert (=> start!732864 e!4521858))

(declare-fun e!4521856 () Bool)

(declare-fun e!4521862 () Bool)

(assert (=> start!732864 (and e!4521856 e!4521862)))

(declare-fun b!7600321 () Bool)

(declare-fun tp!2215680 () Bool)

(declare-fun tp!2215677 () Bool)

(assert (=> b!7600321 (= e!4521855 (and tp!2215680 tp!2215677))))

(declare-fun b!7600322 () Bool)

(declare-fun tp_is_empty!50629 () Bool)

(assert (=> b!7600322 (= e!4521855 tp_is_empty!50629)))

(declare-fun b!7600323 () Bool)

(declare-fun tp!2215685 () Bool)

(declare-fun tp!2215673 () Bool)

(assert (=> b!7600323 (= e!4521861 (and tp!2215685 tp!2215673))))

(declare-fun b!7600324 () Bool)

(declare-fun tp!2215674 () Bool)

(declare-fun tp!2215682 () Bool)

(assert (=> b!7600324 (= e!4521855 (and tp!2215674 tp!2215682))))

(declare-fun b!7600325 () Bool)

(declare-fun tp!2215676 () Bool)

(assert (=> b!7600325 (= e!4521862 (and tp_is_empty!50629 tp!2215676))))

(declare-fun res!3043178 () Bool)

(assert (=> b!7600326 (=> (not res!3043178) (not e!4521857))))

(declare-fun Exists!4365 (Int) Bool)

(assert (=> b!7600326 (= res!3043178 (Exists!4365 lambda!467554))))

(declare-fun e!4521860 () Bool)

(assert (=> b!7600327 (= e!4521863 e!4521860)))

(declare-fun res!3043177 () Bool)

(assert (=> b!7600327 (=> res!3043177 e!4521860)))

(declare-fun cut!28 () tuple2!68992)

(assert (=> b!7600327 (= res!3043177 (not (= (++!17543 (_1!37799 cut!28) (_2!37799 cut!28)) s!10235)))))

(declare-fun lt!2654273 () Unit!167206)

(declare-fun ExistsThe!32 (tuple2!68992 Int) Unit!167206)

(assert (=> b!7600327 (= lt!2654273 (ExistsThe!32 lt!2654274 lambda!467555))))

(declare-fun b!7600328 () Bool)

(declare-fun tp!2215684 () Bool)

(assert (=> b!7600328 (= e!4521856 (and tp_is_empty!50629 tp!2215684))))

(declare-fun b!7600329 () Bool)

(assert (=> b!7600329 (= e!4521860 true)))

(declare-fun lt!2654271 () Bool)

(assert (=> b!7600329 (= lt!2654271 (matchR!9721 r1!3349 (_1!37799 cut!28)))))

(declare-fun b!7600330 () Bool)

(declare-fun res!3043181 () Bool)

(assert (=> b!7600330 (=> (not res!3043181) (not e!4521857))))

(assert (=> b!7600330 (= res!3043181 (validRegex!10565 r2!3249))))

(declare-fun b!7600331 () Bool)

(assert (=> b!7600331 (= e!4521861 tp_is_empty!50629)))

(declare-fun b!7600332 () Bool)

(declare-fun tp!2215683 () Bool)

(assert (=> b!7600332 (= e!4521855 tp!2215683)))

(declare-fun b!7600333 () Bool)

(declare-fun tp!2215675 () Bool)

(assert (=> b!7600333 (= e!4521858 (and tp_is_empty!50629 tp!2215675))))

(assert (= (and start!732864 res!3043182) b!7600330))

(assert (= (and b!7600330 res!3043181) b!7600326))

(assert (= (and b!7600326 res!3043178) b!7600320))

(assert (= (and b!7600320 res!3043180) b!7600318))

(assert (= (and b!7600318 (not res!3043179)) b!7600327))

(assert (= (and b!7600327 (not res!3043177)) b!7600329))

(get-info :version)

(assert (= (and start!732864 ((_ is ElementMatch!20137) r1!3349)) b!7600331))

(assert (= (and start!732864 ((_ is Concat!28982) r1!3349)) b!7600323))

(assert (= (and start!732864 ((_ is Star!20137) r1!3349)) b!7600319))

(assert (= (and start!732864 ((_ is Union!20137) r1!3349)) b!7600317))

(assert (= (and start!732864 ((_ is ElementMatch!20137) r2!3249)) b!7600322))

(assert (= (and start!732864 ((_ is Concat!28982) r2!3249)) b!7600324))

(assert (= (and start!732864 ((_ is Star!20137) r2!3249)) b!7600332))

(assert (= (and start!732864 ((_ is Union!20137) r2!3249)) b!7600321))

(assert (= (and start!732864 ((_ is Cons!72896) s!10235)) b!7600333))

(assert (= (and start!732864 ((_ is Cons!72896) (_1!37799 cut!28))) b!7600328))

(assert (= (and start!732864 ((_ is Cons!72896) (_2!37799 cut!28))) b!7600325))

(declare-fun m!8144926 () Bool)

(assert (=> b!7600320 m!8144926))

(declare-fun m!8144928 () Bool)

(assert (=> b!7600320 m!8144928))

(declare-fun m!8144930 () Bool)

(assert (=> b!7600318 m!8144930))

(declare-fun m!8144932 () Bool)

(assert (=> b!7600318 m!8144932))

(declare-fun m!8144934 () Bool)

(assert (=> b!7600318 m!8144934))

(declare-fun m!8144936 () Bool)

(assert (=> b!7600318 m!8144936))

(declare-fun m!8144938 () Bool)

(assert (=> b!7600318 m!8144938))

(declare-fun m!8144940 () Bool)

(assert (=> b!7600318 m!8144940))

(declare-fun m!8144942 () Bool)

(assert (=> b!7600327 m!8144942))

(declare-fun m!8144944 () Bool)

(assert (=> b!7600327 m!8144944))

(declare-fun m!8144946 () Bool)

(assert (=> b!7600330 m!8144946))

(declare-fun m!8144948 () Bool)

(assert (=> b!7600326 m!8144948))

(declare-fun m!8144950 () Bool)

(assert (=> b!7600329 m!8144950))

(declare-fun m!8144952 () Bool)

(assert (=> start!732864 m!8144952))

(check-sat (not start!732864) (not b!7600317) (not b!7600326) (not b!7600321) (not b!7600327) (not b!7600319) (not b!7600329) (not b!7600332) (not b!7600328) (not b!7600320) (not b!7600324) (not b!7600318) (not b!7600323) (not b!7600333) (not b!7600330) (not b!7600325) tp_is_empty!50629)
(check-sat)
