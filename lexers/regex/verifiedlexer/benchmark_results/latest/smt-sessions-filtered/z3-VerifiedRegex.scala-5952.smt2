; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291460 () Bool)

(assert start!291460)

(declare-fun b!3045314 () Bool)

(assert (=> b!3045314 true))

(assert (=> b!3045314 true))

(assert (=> b!3045314 true))

(declare-fun lambda!113538 () Int)

(declare-fun lambda!113537 () Int)

(assert (=> b!3045314 (not (= lambda!113538 lambda!113537))))

(assert (=> b!3045314 true))

(assert (=> b!3045314 true))

(assert (=> b!3045314 true))

(declare-fun b!3045303 () Bool)

(declare-datatypes ((Unit!49335 0))(
  ( (Unit!49336) )
))
(declare-fun e!1908494 () Unit!49335)

(declare-fun Unit!49337 () Unit!49335)

(assert (=> b!3045303 (= e!1908494 Unit!49337)))

(declare-fun lt!1047716 () Unit!49335)

(declare-datatypes ((C!19096 0))(
  ( (C!19097 (val!11584 Int)) )
))
(declare-datatypes ((Regex!9455 0))(
  ( (ElementMatch!9455 (c!504111 C!19096)) (Concat!14776 (regOne!19422 Regex!9455) (regTwo!19422 Regex!9455)) (EmptyExpr!9455) (Star!9455 (reg!9784 Regex!9455)) (EmptyLang!9455) (Union!9455 (regOne!19423 Regex!9455) (regTwo!19423 Regex!9455)) )
))
(declare-fun r!17423 () Regex!9455)

(declare-datatypes ((List!35320 0))(
  ( (Nil!35196) (Cons!35196 (h!40616 C!19096) (t!234385 List!35320)) )
))
(declare-datatypes ((tuple2!34136 0))(
  ( (tuple2!34137 (_1!20200 List!35320) (_2!20200 List!35320)) )
))
(declare-fun lt!1047720 () tuple2!34136)

(declare-fun mainMatchTheorem!1592 (Regex!9455 List!35320) Unit!49335)

(assert (=> b!3045303 (= lt!1047716 (mainMatchTheorem!1592 (reg!9784 r!17423) (_1!20200 lt!1047720)))))

(assert (=> b!3045303 false))

(declare-fun b!3045304 () Bool)

(declare-fun e!1908495 () Bool)

(declare-fun tp!964104 () Bool)

(declare-fun tp!964109 () Bool)

(assert (=> b!3045304 (= e!1908495 (and tp!964104 tp!964109))))

(declare-fun b!3045305 () Bool)

(declare-fun res!1251831 () Bool)

(declare-fun e!1908490 () Bool)

(assert (=> b!3045305 (=> res!1251831 e!1908490)))

(declare-fun lt!1047724 () Regex!9455)

(declare-fun matchR!4337 (Regex!9455 List!35320) Bool)

(assert (=> b!3045305 (= res!1251831 (not (matchR!4337 lt!1047724 (_2!20200 lt!1047720))))))

(declare-fun b!3045306 () Bool)

(declare-fun tp!964105 () Bool)

(declare-fun tp!964107 () Bool)

(assert (=> b!3045306 (= e!1908495 (and tp!964105 tp!964107))))

(declare-fun res!1251829 () Bool)

(declare-fun e!1908491 () Bool)

(assert (=> start!291460 (=> (not res!1251829) (not e!1908491))))

(declare-fun validRegex!4188 (Regex!9455) Bool)

(assert (=> start!291460 (= res!1251829 (validRegex!4188 r!17423))))

(assert (=> start!291460 e!1908491))

(assert (=> start!291460 e!1908495))

(declare-fun e!1908492 () Bool)

(assert (=> start!291460 e!1908492))

(declare-fun b!3045307 () Bool)

(declare-fun e!1908489 () Bool)

(assert (=> b!3045307 (= e!1908489 e!1908490)))

(declare-fun res!1251830 () Bool)

(assert (=> b!3045307 (=> res!1251830 e!1908490)))

(assert (=> b!3045307 (= res!1251830 (not (matchR!4337 (reg!9784 r!17423) (_1!20200 lt!1047720))))))

(declare-datatypes ((Option!6800 0))(
  ( (None!6799) (Some!6799 (v!34933 tuple2!34136)) )
))
(declare-fun lt!1047715 () Option!6800)

(declare-fun get!10994 (Option!6800) tuple2!34136)

(assert (=> b!3045307 (= lt!1047720 (get!10994 lt!1047715))))

(declare-fun b!3045308 () Bool)

(declare-fun tp!964106 () Bool)

(assert (=> b!3045308 (= e!1908495 tp!964106)))

(declare-fun b!3045309 () Bool)

(declare-fun res!1251833 () Bool)

(declare-fun e!1908493 () Bool)

(assert (=> b!3045309 (=> res!1251833 e!1908493)))

(declare-fun s!11993 () List!35320)

(declare-fun isEmpty!19505 (List!35320) Bool)

(assert (=> b!3045309 (= res!1251833 (isEmpty!19505 s!11993))))

(declare-fun b!3045310 () Bool)

(declare-fun Unit!49338 () Unit!49335)

(assert (=> b!3045310 (= e!1908494 Unit!49338)))

(declare-fun b!3045311 () Bool)

(declare-fun tp_is_empty!16473 () Bool)

(declare-fun tp!964108 () Bool)

(assert (=> b!3045311 (= e!1908492 (and tp_is_empty!16473 tp!964108))))

(declare-fun b!3045312 () Bool)

(assert (=> b!3045312 (= e!1908495 tp_is_empty!16473)))

(declare-fun b!3045313 () Bool)

(assert (=> b!3045313 (= e!1908490 (validRegex!4188 lt!1047724))))

(declare-fun lt!1047718 () Unit!49335)

(assert (=> b!3045313 (= lt!1047718 e!1908494)))

(declare-fun c!504110 () Bool)

(declare-fun size!26539 (List!35320) Int)

(assert (=> b!3045313 (= c!504110 (= (size!26539 (_2!20200 lt!1047720)) (size!26539 s!11993)))))

(declare-fun simplify!410 (Regex!9455) Regex!9455)

(assert (=> b!3045313 (matchR!4337 (simplify!410 (reg!9784 r!17423)) (_1!20200 lt!1047720))))

(declare-fun lt!1047714 () Unit!49335)

(declare-fun lemmaSimplifySound!256 (Regex!9455 List!35320) Unit!49335)

(assert (=> b!3045313 (= lt!1047714 (lemmaSimplifySound!256 (reg!9784 r!17423) (_1!20200 lt!1047720)))))

(assert (=> b!3045314 (= e!1908493 e!1908489)))

(declare-fun res!1251832 () Bool)

(assert (=> b!3045314 (=> res!1251832 e!1908489)))

(declare-fun lt!1047719 () Bool)

(assert (=> b!3045314 (= res!1251832 (not lt!1047719))))

(declare-fun Exists!1719 (Int) Bool)

(assert (=> b!3045314 (= (Exists!1719 lambda!113537) (Exists!1719 lambda!113538))))

(declare-fun lt!1047717 () Unit!49335)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!336 (Regex!9455 List!35320) Unit!49335)

(assert (=> b!3045314 (= lt!1047717 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!336 (reg!9784 r!17423) s!11993))))

(assert (=> b!3045314 (= lt!1047719 (Exists!1719 lambda!113537))))

(declare-fun isDefined!5351 (Option!6800) Bool)

(assert (=> b!3045314 (= lt!1047719 (isDefined!5351 lt!1047715))))

(declare-fun findConcatSeparation!1194 (Regex!9455 Regex!9455 List!35320 List!35320 List!35320) Option!6800)

(assert (=> b!3045314 (= lt!1047715 (findConcatSeparation!1194 (reg!9784 r!17423) lt!1047724 Nil!35196 s!11993 s!11993))))

(declare-fun lt!1047721 () Unit!49335)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!972 (Regex!9455 Regex!9455 List!35320) Unit!49335)

(assert (=> b!3045314 (= lt!1047721 (lemmaFindConcatSeparationEquivalentToExists!972 (reg!9784 r!17423) lt!1047724 s!11993))))

(assert (=> b!3045314 (= lt!1047724 (Star!9455 (reg!9784 r!17423)))))

(declare-fun b!3045315 () Bool)

(assert (=> b!3045315 (= e!1908491 (not e!1908493))))

(declare-fun res!1251834 () Bool)

(assert (=> b!3045315 (=> res!1251834 e!1908493)))

(declare-fun lt!1047722 () Bool)

(get-info :version)

(assert (=> b!3045315 (= res!1251834 (or (not lt!1047722) ((_ is Concat!14776) r!17423) ((_ is Union!9455) r!17423) (not ((_ is Star!9455) r!17423))))))

(declare-fun matchRSpec!1592 (Regex!9455 List!35320) Bool)

(assert (=> b!3045315 (= lt!1047722 (matchRSpec!1592 r!17423 s!11993))))

(assert (=> b!3045315 (= lt!1047722 (matchR!4337 r!17423 s!11993))))

(declare-fun lt!1047723 () Unit!49335)

(assert (=> b!3045315 (= lt!1047723 (mainMatchTheorem!1592 r!17423 s!11993))))

(assert (= (and start!291460 res!1251829) b!3045315))

(assert (= (and b!3045315 (not res!1251834)) b!3045309))

(assert (= (and b!3045309 (not res!1251833)) b!3045314))

(assert (= (and b!3045314 (not res!1251832)) b!3045307))

(assert (= (and b!3045307 (not res!1251830)) b!3045305))

(assert (= (and b!3045305 (not res!1251831)) b!3045313))

(assert (= (and b!3045313 c!504110) b!3045303))

(assert (= (and b!3045313 (not c!504110)) b!3045310))

(assert (= (and start!291460 ((_ is ElementMatch!9455) r!17423)) b!3045312))

(assert (= (and start!291460 ((_ is Concat!14776) r!17423)) b!3045306))

(assert (= (and start!291460 ((_ is Star!9455) r!17423)) b!3045308))

(assert (= (and start!291460 ((_ is Union!9455) r!17423)) b!3045304))

(assert (= (and start!291460 ((_ is Cons!35196) s!11993)) b!3045311))

(declare-fun m!3374555 () Bool)

(assert (=> b!3045309 m!3374555))

(declare-fun m!3374557 () Bool)

(assert (=> b!3045303 m!3374557))

(declare-fun m!3374559 () Bool)

(assert (=> start!291460 m!3374559))

(declare-fun m!3374561 () Bool)

(assert (=> b!3045307 m!3374561))

(declare-fun m!3374563 () Bool)

(assert (=> b!3045307 m!3374563))

(declare-fun m!3374565 () Bool)

(assert (=> b!3045315 m!3374565))

(declare-fun m!3374567 () Bool)

(assert (=> b!3045315 m!3374567))

(declare-fun m!3374569 () Bool)

(assert (=> b!3045315 m!3374569))

(declare-fun m!3374571 () Bool)

(assert (=> b!3045313 m!3374571))

(declare-fun m!3374573 () Bool)

(assert (=> b!3045313 m!3374573))

(declare-fun m!3374575 () Bool)

(assert (=> b!3045313 m!3374575))

(declare-fun m!3374577 () Bool)

(assert (=> b!3045313 m!3374577))

(declare-fun m!3374579 () Bool)

(assert (=> b!3045313 m!3374579))

(assert (=> b!3045313 m!3374573))

(declare-fun m!3374581 () Bool)

(assert (=> b!3045313 m!3374581))

(declare-fun m!3374583 () Bool)

(assert (=> b!3045305 m!3374583))

(declare-fun m!3374585 () Bool)

(assert (=> b!3045314 m!3374585))

(declare-fun m!3374587 () Bool)

(assert (=> b!3045314 m!3374587))

(declare-fun m!3374589 () Bool)

(assert (=> b!3045314 m!3374589))

(declare-fun m!3374591 () Bool)

(assert (=> b!3045314 m!3374591))

(assert (=> b!3045314 m!3374589))

(declare-fun m!3374593 () Bool)

(assert (=> b!3045314 m!3374593))

(declare-fun m!3374595 () Bool)

(assert (=> b!3045314 m!3374595))

(check-sat (not b!3045303) tp_is_empty!16473 (not b!3045306) (not b!3045309) (not start!291460) (not b!3045314) (not b!3045304) (not b!3045315) (not b!3045305) (not b!3045311) (not b!3045307) (not b!3045313) (not b!3045308))
(check-sat)
