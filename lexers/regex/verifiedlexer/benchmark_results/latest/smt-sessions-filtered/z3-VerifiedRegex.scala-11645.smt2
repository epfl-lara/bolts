; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!651128 () Bool)

(assert start!651128)

(declare-fun b!6713839 () Bool)

(assert (=> b!6713839 true))

(assert (=> b!6713839 true))

(declare-fun lambda!376386 () Int)

(declare-fun lambda!376385 () Int)

(assert (=> b!6713839 (not (= lambda!376386 lambda!376385))))

(assert (=> b!6713839 true))

(assert (=> b!6713839 true))

(declare-fun lambda!376387 () Int)

(assert (=> b!6713839 (not (= lambda!376387 lambda!376385))))

(assert (=> b!6713839 (not (= lambda!376387 lambda!376386))))

(assert (=> b!6713839 true))

(assert (=> b!6713839 true))

(declare-fun b!6713838 () Bool)

(declare-fun res!2747477 () Bool)

(declare-fun e!4057378 () Bool)

(assert (=> b!6713838 (=> (not res!2747477) (not e!4057378))))

(declare-datatypes ((C!33344 0))(
  ( (C!33345 (val!26374 Int)) )
))
(declare-datatypes ((Regex!16537 0))(
  ( (ElementMatch!16537 (c!1244843 C!33344)) (Concat!25382 (regOne!33586 Regex!16537) (regTwo!33586 Regex!16537)) (EmptyExpr!16537) (Star!16537 (reg!16866 Regex!16537)) (EmptyLang!16537) (Union!16537 (regOne!33587 Regex!16537) (regTwo!33587 Regex!16537)) )
))
(declare-fun r!7292 () Regex!16537)

(declare-datatypes ((List!65910 0))(
  ( (Nil!65786) (Cons!65786 (h!72234 Regex!16537) (t!379587 List!65910)) )
))
(declare-datatypes ((Context!11842 0))(
  ( (Context!11843 (exprs!6421 List!65910)) )
))
(declare-datatypes ((List!65911 0))(
  ( (Nil!65787) (Cons!65787 (h!72235 Context!11842) (t!379588 List!65911)) )
))
(declare-fun zl!343 () List!65911)

(declare-fun unfocusZipper!2279 (List!65911) Regex!16537)

(assert (=> b!6713838 (= res!2747477 (= r!7292 (unfocusZipper!2279 zl!343)))))

(declare-fun e!4057381 () Bool)

(declare-fun e!4057374 () Bool)

(assert (=> b!6713839 (= e!4057381 e!4057374)))

(declare-fun res!2747470 () Bool)

(assert (=> b!6713839 (=> res!2747470 e!4057374)))

(declare-fun lt!2435985 () Bool)

(declare-fun e!4057380 () Bool)

(assert (=> b!6713839 (= res!2747470 (not (= lt!2435985 e!4057380)))))

(declare-fun res!2747472 () Bool)

(assert (=> b!6713839 (=> res!2747472 e!4057380)))

(declare-datatypes ((List!65912 0))(
  ( (Nil!65788) (Cons!65788 (h!72236 C!33344) (t!379589 List!65912)) )
))
(declare-fun s!2326 () List!65912)

(declare-fun isEmpty!38105 (List!65912) Bool)

(assert (=> b!6713839 (= res!2747472 (isEmpty!38105 s!2326))))

(declare-fun Exists!3605 (Int) Bool)

(assert (=> b!6713839 (= (Exists!3605 lambda!376385) (Exists!3605 lambda!376387))))

(declare-datatypes ((Unit!159765 0))(
  ( (Unit!159766) )
))
(declare-fun lt!2435986 () Unit!159765)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2132 (Regex!16537 Regex!16537 List!65912) Unit!159765)

(assert (=> b!6713839 (= lt!2435986 (lemmaExistCutMatchRandMatchRSpecEquivalent!2132 (reg!16866 r!7292) r!7292 s!2326))))

(assert (=> b!6713839 (= (Exists!3605 lambda!376385) (Exists!3605 lambda!376386))))

(declare-fun lt!2435988 () Unit!159765)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!696 (Regex!16537 List!65912) Unit!159765)

(assert (=> b!6713839 (= lt!2435988 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!696 (reg!16866 r!7292) s!2326))))

(declare-fun lt!2435990 () Bool)

(assert (=> b!6713839 (= lt!2435990 (Exists!3605 lambda!376385))))

(declare-datatypes ((tuple2!67024 0))(
  ( (tuple2!67025 (_1!36815 List!65912) (_2!36815 List!65912)) )
))
(declare-datatypes ((Option!16424 0))(
  ( (None!16423) (Some!16423 (v!52621 tuple2!67024)) )
))
(declare-fun isDefined!13127 (Option!16424) Bool)

(declare-fun findConcatSeparation!2838 (Regex!16537 Regex!16537 List!65912 List!65912 List!65912) Option!16424)

(assert (=> b!6713839 (= lt!2435990 (isDefined!13127 (findConcatSeparation!2838 (reg!16866 r!7292) r!7292 Nil!65788 s!2326 s!2326)))))

(declare-fun lt!2435987 () Unit!159765)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2602 (Regex!16537 Regex!16537 List!65912) Unit!159765)

(assert (=> b!6713839 (= lt!2435987 (lemmaFindConcatSeparationEquivalentToExists!2602 (reg!16866 r!7292) r!7292 s!2326))))

(declare-fun b!6713840 () Bool)

(declare-fun res!2747474 () Bool)

(assert (=> b!6713840 (=> res!2747474 e!4057381)))

(get-info :version)

(assert (=> b!6713840 (= res!2747474 (or ((_ is EmptyExpr!16537) r!7292) ((_ is EmptyLang!16537) r!7292) ((_ is ElementMatch!16537) r!7292) ((_ is Union!16537) r!7292) ((_ is Concat!25382) r!7292)))))

(declare-fun b!6713841 () Bool)

(declare-fun res!2747476 () Bool)

(assert (=> b!6713841 (=> res!2747476 e!4057381)))

(assert (=> b!6713841 (= res!2747476 (not ((_ is Cons!65786) (exprs!6421 (h!72235 zl!343)))))))

(declare-fun b!6713842 () Bool)

(declare-fun e!4057382 () Bool)

(declare-fun tp!1839976 () Bool)

(assert (=> b!6713842 (= e!4057382 tp!1839976)))

(declare-fun res!2747467 () Bool)

(declare-fun e!4057377 () Bool)

(assert (=> start!651128 (=> (not res!2747467) (not e!4057377))))

(declare-fun validRegex!8273 (Regex!16537) Bool)

(assert (=> start!651128 (= res!2747467 (validRegex!8273 r!7292))))

(assert (=> start!651128 e!4057377))

(declare-fun e!4057376 () Bool)

(assert (=> start!651128 e!4057376))

(declare-fun e!4057379 () Bool)

(assert (=> start!651128 e!4057379))

(declare-fun condSetEmpty!45747 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11842))

(assert (=> start!651128 (= condSetEmpty!45747 (= z!1189 ((as const (Array Context!11842 Bool)) false)))))

(declare-fun setRes!45747 () Bool)

(assert (=> start!651128 setRes!45747))

(declare-fun e!4057375 () Bool)

(assert (=> start!651128 e!4057375))

(declare-fun b!6713843 () Bool)

(assert (=> b!6713843 (= e!4057380 lt!2435990)))

(declare-fun b!6713844 () Bool)

(declare-fun e!4057373 () Bool)

(declare-fun tp!1839972 () Bool)

(assert (=> b!6713844 (= e!4057373 tp!1839972)))

(declare-fun setIsEmpty!45747 () Bool)

(assert (=> setIsEmpty!45747 setRes!45747))

(declare-fun b!6713845 () Bool)

(declare-fun res!2747475 () Bool)

(assert (=> b!6713845 (=> res!2747475 e!4057381)))

(declare-fun generalisedUnion!2381 (List!65910) Regex!16537)

(declare-fun unfocusZipperList!1958 (List!65911) List!65910)

(assert (=> b!6713845 (= res!2747475 (not (= r!7292 (generalisedUnion!2381 (unfocusZipperList!1958 zl!343)))))))

(declare-fun b!6713846 () Bool)

(declare-fun tp!1839981 () Bool)

(declare-fun tp!1839973 () Bool)

(assert (=> b!6713846 (= e!4057376 (and tp!1839981 tp!1839973))))

(declare-fun b!6713847 () Bool)

(declare-fun tp_is_empty!42327 () Bool)

(declare-fun tp!1839979 () Bool)

(assert (=> b!6713847 (= e!4057379 (and tp_is_empty!42327 tp!1839979))))

(declare-fun b!6713848 () Bool)

(declare-fun res!2747473 () Bool)

(assert (=> b!6713848 (=> res!2747473 e!4057381)))

(declare-fun isEmpty!38106 (List!65911) Bool)

(assert (=> b!6713848 (= res!2747473 (not (isEmpty!38106 (t!379588 zl!343))))))

(declare-fun b!6713849 () Bool)

(declare-fun res!2747469 () Bool)

(assert (=> b!6713849 (=> res!2747469 e!4057381)))

(declare-fun generalisedConcat!2134 (List!65910) Regex!16537)

(assert (=> b!6713849 (= res!2747469 (not (= r!7292 (generalisedConcat!2134 (exprs!6421 (h!72235 zl!343))))))))

(declare-fun b!6713850 () Bool)

(declare-fun tp!1839977 () Bool)

(assert (=> b!6713850 (= e!4057376 tp!1839977)))

(declare-fun b!6713851 () Bool)

(declare-fun lt!2435989 () List!65911)

(assert (=> b!6713851 (= e!4057374 (= r!7292 (unfocusZipper!2279 lt!2435989)))))

(declare-fun b!6713852 () Bool)

(declare-fun tp!1839974 () Bool)

(declare-fun tp!1839978 () Bool)

(assert (=> b!6713852 (= e!4057376 (and tp!1839974 tp!1839978))))

(declare-fun b!6713853 () Bool)

(declare-fun tp!1839980 () Bool)

(declare-fun inv!84589 (Context!11842) Bool)

(assert (=> b!6713853 (= e!4057375 (and (inv!84589 (h!72235 zl!343)) e!4057382 tp!1839980))))

(declare-fun b!6713854 () Bool)

(declare-fun res!2747468 () Bool)

(assert (=> b!6713854 (=> res!2747468 e!4057374)))

(assert (=> b!6713854 (= res!2747468 (not ((_ is Nil!65788) s!2326)))))

(declare-fun b!6713855 () Bool)

(assert (=> b!6713855 (= e!4057376 tp_is_empty!42327)))

(declare-fun b!6713856 () Bool)

(assert (=> b!6713856 (= e!4057378 (not e!4057381))))

(declare-fun res!2747478 () Bool)

(assert (=> b!6713856 (=> res!2747478 e!4057381)))

(assert (=> b!6713856 (= res!2747478 (not ((_ is Cons!65787) zl!343)))))

(declare-fun matchRSpec!3638 (Regex!16537 List!65912) Bool)

(assert (=> b!6713856 (= lt!2435985 (matchRSpec!3638 r!7292 s!2326))))

(declare-fun matchR!8720 (Regex!16537 List!65912) Bool)

(assert (=> b!6713856 (= lt!2435985 (matchR!8720 r!7292 s!2326))))

(declare-fun lt!2435984 () Unit!159765)

(declare-fun mainMatchTheorem!3638 (Regex!16537 List!65912) Unit!159765)

(assert (=> b!6713856 (= lt!2435984 (mainMatchTheorem!3638 r!7292 s!2326))))

(declare-fun tp!1839975 () Bool)

(declare-fun setElem!45747 () Context!11842)

(declare-fun setNonEmpty!45747 () Bool)

(assert (=> setNonEmpty!45747 (= setRes!45747 (and tp!1839975 (inv!84589 setElem!45747) e!4057373))))

(declare-fun setRest!45747 () (InoxSet Context!11842))

(assert (=> setNonEmpty!45747 (= z!1189 ((_ map or) (store ((as const (Array Context!11842 Bool)) false) setElem!45747 true) setRest!45747))))

(declare-fun b!6713857 () Bool)

(assert (=> b!6713857 (= e!4057377 e!4057378)))

(declare-fun res!2747471 () Bool)

(assert (=> b!6713857 (=> (not res!2747471) (not e!4057378))))

(assert (=> b!6713857 (= res!2747471 (= lt!2435989 zl!343))))

(declare-fun toList!10321 ((InoxSet Context!11842)) List!65911)

(assert (=> b!6713857 (= lt!2435989 (toList!10321 z!1189))))

(assert (= (and start!651128 res!2747467) b!6713857))

(assert (= (and b!6713857 res!2747471) b!6713838))

(assert (= (and b!6713838 res!2747477) b!6713856))

(assert (= (and b!6713856 (not res!2747478)) b!6713848))

(assert (= (and b!6713848 (not res!2747473)) b!6713849))

(assert (= (and b!6713849 (not res!2747469)) b!6713841))

(assert (= (and b!6713841 (not res!2747476)) b!6713845))

(assert (= (and b!6713845 (not res!2747475)) b!6713840))

(assert (= (and b!6713840 (not res!2747474)) b!6713839))

(assert (= (and b!6713839 (not res!2747472)) b!6713843))

(assert (= (and b!6713839 (not res!2747470)) b!6713854))

(assert (= (and b!6713854 (not res!2747468)) b!6713851))

(assert (= (and start!651128 ((_ is ElementMatch!16537) r!7292)) b!6713855))

(assert (= (and start!651128 ((_ is Concat!25382) r!7292)) b!6713852))

(assert (= (and start!651128 ((_ is Star!16537) r!7292)) b!6713850))

(assert (= (and start!651128 ((_ is Union!16537) r!7292)) b!6713846))

(assert (= (and start!651128 ((_ is Cons!65788) s!2326)) b!6713847))

(assert (= (and start!651128 condSetEmpty!45747) setIsEmpty!45747))

(assert (= (and start!651128 (not condSetEmpty!45747)) setNonEmpty!45747))

(assert (= setNonEmpty!45747 b!6713844))

(assert (= b!6713853 b!6713842))

(assert (= (and start!651128 ((_ is Cons!65787) zl!343)) b!6713853))

(declare-fun m!7478412 () Bool)

(assert (=> b!6713853 m!7478412))

(declare-fun m!7478414 () Bool)

(assert (=> start!651128 m!7478414))

(declare-fun m!7478416 () Bool)

(assert (=> b!6713839 m!7478416))

(declare-fun m!7478418 () Bool)

(assert (=> b!6713839 m!7478418))

(declare-fun m!7478420 () Bool)

(assert (=> b!6713839 m!7478420))

(assert (=> b!6713839 m!7478420))

(assert (=> b!6713839 m!7478420))

(declare-fun m!7478422 () Bool)

(assert (=> b!6713839 m!7478422))

(declare-fun m!7478424 () Bool)

(assert (=> b!6713839 m!7478424))

(declare-fun m!7478426 () Bool)

(assert (=> b!6713839 m!7478426))

(assert (=> b!6713839 m!7478426))

(declare-fun m!7478428 () Bool)

(assert (=> b!6713839 m!7478428))

(declare-fun m!7478430 () Bool)

(assert (=> b!6713839 m!7478430))

(declare-fun m!7478432 () Bool)

(assert (=> b!6713839 m!7478432))

(declare-fun m!7478434 () Bool)

(assert (=> b!6713856 m!7478434))

(declare-fun m!7478436 () Bool)

(assert (=> b!6713856 m!7478436))

(declare-fun m!7478438 () Bool)

(assert (=> b!6713856 m!7478438))

(declare-fun m!7478440 () Bool)

(assert (=> b!6713857 m!7478440))

(declare-fun m!7478442 () Bool)

(assert (=> b!6713849 m!7478442))

(declare-fun m!7478444 () Bool)

(assert (=> setNonEmpty!45747 m!7478444))

(declare-fun m!7478446 () Bool)

(assert (=> b!6713848 m!7478446))

(declare-fun m!7478448 () Bool)

(assert (=> b!6713845 m!7478448))

(assert (=> b!6713845 m!7478448))

(declare-fun m!7478450 () Bool)

(assert (=> b!6713845 m!7478450))

(declare-fun m!7478452 () Bool)

(assert (=> b!6713851 m!7478452))

(declare-fun m!7478454 () Bool)

(assert (=> b!6713838 m!7478454))

(check-sat (not b!6713846) (not b!6713853) (not start!651128) (not b!6713850) (not setNonEmpty!45747) (not b!6713849) (not b!6713856) (not b!6713845) (not b!6713857) (not b!6713838) (not b!6713848) tp_is_empty!42327 (not b!6713851) (not b!6713839) (not b!6713847) (not b!6713844) (not b!6713842) (not b!6713852))
(check-sat)
