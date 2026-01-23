; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85542 () Bool)

(assert start!85542)

(declare-fun b!960403 () Bool)

(assert (=> b!960403 true))

(assert (=> b!960403 true))

(declare-fun lambda!33400 () Int)

(declare-fun lambda!33399 () Int)

(assert (=> b!960403 (not (= lambda!33400 lambda!33399))))

(assert (=> b!960403 true))

(assert (=> b!960403 true))

(declare-fun b!960395 () Bool)

(declare-fun e!620414 () Bool)

(declare-fun tp!295300 () Bool)

(declare-fun tp!295298 () Bool)

(assert (=> b!960395 (= e!620414 (and tp!295300 tp!295298))))

(declare-fun b!960396 () Bool)

(declare-fun res!436463 () Bool)

(declare-fun e!620415 () Bool)

(assert (=> b!960396 (=> res!436463 e!620415)))

(declare-datatypes ((C!5892 0))(
  ( (C!5893 (val!3194 Int)) )
))
(declare-datatypes ((List!9891 0))(
  ( (Nil!9875) (Cons!9875 (h!15276 C!5892) (t!100937 List!9891)) )
))
(declare-datatypes ((tuple2!11208 0))(
  ( (tuple2!11209 (_1!6430 List!9891) (_2!6430 List!9891)) )
))
(declare-datatypes ((Option!2246 0))(
  ( (None!2245) (Some!2245 (v!19662 tuple2!11208)) )
))
(declare-fun lt!346507 () Option!2246)

(declare-fun isEmpty!6166 (Option!2246) Bool)

(assert (=> b!960396 (= res!436463 (not (isEmpty!6166 lt!346507)))))

(declare-fun res!436462 () Bool)

(declare-fun e!620411 () Bool)

(assert (=> start!85542 (=> (not res!436462) (not e!620411))))

(declare-datatypes ((Regex!2661 0))(
  ( (ElementMatch!2661 (c!156440 C!5892)) (Concat!4494 (regOne!5834 Regex!2661) (regTwo!5834 Regex!2661)) (EmptyExpr!2661) (Star!2661 (reg!2990 Regex!2661)) (EmptyLang!2661) (Union!2661 (regOne!5835 Regex!2661) (regTwo!5835 Regex!2661)) )
))
(declare-fun r!15766 () Regex!2661)

(declare-fun validRegex!1130 (Regex!2661) Bool)

(assert (=> start!85542 (= res!436462 (validRegex!1130 r!15766))))

(assert (=> start!85542 e!620411))

(assert (=> start!85542 e!620414))

(declare-fun e!620413 () Bool)

(assert (=> start!85542 e!620413))

(declare-fun b!960397 () Bool)

(declare-fun tp_is_empty!4965 () Bool)

(assert (=> b!960397 (= e!620414 tp_is_empty!4965)))

(declare-fun b!960398 () Bool)

(declare-fun tp!295297 () Bool)

(assert (=> b!960398 (= e!620413 (and tp_is_empty!4965 tp!295297))))

(declare-fun b!960399 () Bool)

(declare-fun tp!295296 () Bool)

(declare-fun tp!295295 () Bool)

(assert (=> b!960399 (= e!620414 (and tp!295296 tp!295295))))

(declare-fun b!960400 () Bool)

(declare-fun lt!346515 () Bool)

(declare-fun lt!346512 () Bool)

(assert (=> b!960400 (= e!620415 (or (not lt!346515) lt!346512))))

(assert (=> b!960400 (= lt!346512 lt!346515)))

(declare-fun lt!346508 () Regex!2661)

(declare-fun s!10566 () List!9891)

(declare-fun matchR!1199 (Regex!2661 List!9891) Bool)

(assert (=> b!960400 (= lt!346515 (matchR!1199 lt!346508 s!10566))))

(assert (=> b!960400 (= lt!346512 (matchR!1199 (regTwo!5834 r!15766) s!10566))))

(declare-fun removeUselessConcat!310 (Regex!2661) Regex!2661)

(assert (=> b!960400 (= lt!346508 (removeUselessConcat!310 (regTwo!5834 r!15766)))))

(declare-datatypes ((Unit!14977 0))(
  ( (Unit!14978) )
))
(declare-fun lt!346514 () Unit!14977)

(declare-fun lemmaRemoveUselessConcatSound!170 (Regex!2661 List!9891) Unit!14977)

(assert (=> b!960400 (= lt!346514 (lemmaRemoveUselessConcatSound!170 (regTwo!5834 r!15766) s!10566))))

(declare-fun b!960401 () Bool)

(declare-fun tp!295299 () Bool)

(assert (=> b!960401 (= e!620414 tp!295299)))

(declare-fun b!960402 () Bool)

(declare-fun e!620412 () Bool)

(assert (=> b!960402 (= e!620411 (not e!620412))))

(declare-fun res!436464 () Bool)

(assert (=> b!960402 (=> res!436464 e!620412)))

(declare-fun lt!346509 () Bool)

(get-info :version)

(assert (=> b!960402 (= res!436464 (or lt!346509 (not ((_ is Concat!4494) r!15766)) (not ((_ is EmptyExpr!2661) (regOne!5834 r!15766)))))))

(declare-fun matchRSpec!462 (Regex!2661 List!9891) Bool)

(assert (=> b!960402 (= lt!346509 (matchRSpec!462 r!15766 s!10566))))

(assert (=> b!960402 (= lt!346509 (matchR!1199 r!15766 s!10566))))

(declare-fun lt!346511 () Unit!14977)

(declare-fun mainMatchTheorem!462 (Regex!2661 List!9891) Unit!14977)

(assert (=> b!960402 (= lt!346511 (mainMatchTheorem!462 r!15766 s!10566))))

(assert (=> b!960403 (= e!620412 e!620415)))

(declare-fun res!436461 () Bool)

(assert (=> b!960403 (=> res!436461 e!620415)))

(declare-fun isEmpty!6167 (List!9891) Bool)

(assert (=> b!960403 (= res!436461 (isEmpty!6167 s!10566))))

(declare-fun Exists!408 (Int) Bool)

(assert (=> b!960403 (= (Exists!408 lambda!33399) (Exists!408 lambda!33400))))

(declare-fun lt!346513 () Unit!14977)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!204 (Regex!2661 Regex!2661 List!9891) Unit!14977)

(assert (=> b!960403 (= lt!346513 (lemmaExistCutMatchRandMatchRSpecEquivalent!204 EmptyExpr!2661 (regTwo!5834 r!15766) s!10566))))

(declare-fun isDefined!1888 (Option!2246) Bool)

(assert (=> b!960403 (= (isDefined!1888 lt!346507) (Exists!408 lambda!33399))))

(declare-fun findConcatSeparation!352 (Regex!2661 Regex!2661 List!9891 List!9891 List!9891) Option!2246)

(assert (=> b!960403 (= lt!346507 (findConcatSeparation!352 EmptyExpr!2661 (regTwo!5834 r!15766) Nil!9875 s!10566 s!10566))))

(declare-fun lt!346510 () Unit!14977)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!352 (Regex!2661 Regex!2661 List!9891) Unit!14977)

(assert (=> b!960403 (= lt!346510 (lemmaFindConcatSeparationEquivalentToExists!352 EmptyExpr!2661 (regTwo!5834 r!15766) s!10566))))

(assert (= (and start!85542 res!436462) b!960402))

(assert (= (and b!960402 (not res!436464)) b!960403))

(assert (= (and b!960403 (not res!436461)) b!960396))

(assert (= (and b!960396 (not res!436463)) b!960400))

(assert (= (and start!85542 ((_ is ElementMatch!2661) r!15766)) b!960397))

(assert (= (and start!85542 ((_ is Concat!4494) r!15766)) b!960399))

(assert (= (and start!85542 ((_ is Star!2661) r!15766)) b!960401))

(assert (= (and start!85542 ((_ is Union!2661) r!15766)) b!960395))

(assert (= (and start!85542 ((_ is Cons!9875) s!10566)) b!960398))

(declare-fun m!1168829 () Bool)

(assert (=> b!960400 m!1168829))

(declare-fun m!1168831 () Bool)

(assert (=> b!960400 m!1168831))

(declare-fun m!1168833 () Bool)

(assert (=> b!960400 m!1168833))

(declare-fun m!1168835 () Bool)

(assert (=> b!960400 m!1168835))

(declare-fun m!1168837 () Bool)

(assert (=> start!85542 m!1168837))

(declare-fun m!1168839 () Bool)

(assert (=> b!960403 m!1168839))

(declare-fun m!1168841 () Bool)

(assert (=> b!960403 m!1168841))

(declare-fun m!1168843 () Bool)

(assert (=> b!960403 m!1168843))

(declare-fun m!1168845 () Bool)

(assert (=> b!960403 m!1168845))

(declare-fun m!1168847 () Bool)

(assert (=> b!960403 m!1168847))

(declare-fun m!1168849 () Bool)

(assert (=> b!960403 m!1168849))

(assert (=> b!960403 m!1168849))

(declare-fun m!1168851 () Bool)

(assert (=> b!960403 m!1168851))

(declare-fun m!1168853 () Bool)

(assert (=> b!960396 m!1168853))

(declare-fun m!1168855 () Bool)

(assert (=> b!960402 m!1168855))

(declare-fun m!1168857 () Bool)

(assert (=> b!960402 m!1168857))

(declare-fun m!1168859 () Bool)

(assert (=> b!960402 m!1168859))

(check-sat (not b!960403) (not start!85542) (not b!960395) (not b!960396) (not b!960400) (not b!960399) (not b!960401) (not b!960402) (not b!960398) tp_is_empty!4965)
(check-sat)
