; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79304 () Bool)

(assert start!79304)

(declare-fun b!877455 () Bool)

(assert (=> b!877455 true))

(assert (=> b!877455 true))

(declare-fun b!877448 () Bool)

(declare-fun e!576510 () Bool)

(declare-fun tp!277398 () Bool)

(declare-fun tp!277396 () Bool)

(assert (=> b!877448 (= e!576510 (and tp!277398 tp!277396))))

(declare-fun b!877449 () Bool)

(declare-fun e!576513 () Bool)

(declare-fun e!576511 () Bool)

(assert (=> b!877449 (= e!576513 (not e!576511))))

(declare-fun res!398957 () Bool)

(assert (=> b!877449 (=> res!398957 e!576511)))

(declare-fun lt!330019 () Bool)

(declare-datatypes ((C!5034 0))(
  ( (C!5035 (val!2765 Int)) )
))
(declare-datatypes ((Regex!2232 0))(
  ( (ElementMatch!2232 (c!141897 C!5034)) (Concat!4065 (regOne!4976 Regex!2232) (regTwo!4976 Regex!2232)) (EmptyExpr!2232) (Star!2232 (reg!2561 Regex!2232)) (EmptyLang!2232) (Union!2232 (regOne!4977 Regex!2232) (regTwo!4977 Regex!2232)) )
))
(declare-fun r!15766 () Regex!2232)

(assert (=> b!877449 (= res!398957 (or (not lt!330019) (and (is-Concat!4065 r!15766) (is-EmptyExpr!2232 (regOne!4976 r!15766))) (not (is-Concat!4065 r!15766)) (not (is-EmptyExpr!2232 (regTwo!4976 r!15766)))))))

(declare-datatypes ((List!9462 0))(
  ( (Nil!9446) (Cons!9446 (h!14847 C!5034) (t!100508 List!9462)) )
))
(declare-fun s!10566 () List!9462)

(declare-fun matchRSpec!33 (Regex!2232 List!9462) Bool)

(assert (=> b!877449 (= lt!330019 (matchRSpec!33 r!15766 s!10566))))

(declare-fun matchR!770 (Regex!2232 List!9462) Bool)

(assert (=> b!877449 (= lt!330019 (matchR!770 r!15766 s!10566))))

(declare-datatypes ((Unit!14043 0))(
  ( (Unit!14044) )
))
(declare-fun lt!330020 () Unit!14043)

(declare-fun mainMatchTheorem!33 (Regex!2232 List!9462) Unit!14043)

(assert (=> b!877449 (= lt!330020 (mainMatchTheorem!33 r!15766 s!10566))))

(declare-fun b!877450 () Bool)

(declare-fun tp!277394 () Bool)

(assert (=> b!877450 (= e!576510 tp!277394)))

(declare-fun b!877451 () Bool)

(declare-fun e!576512 () Bool)

(declare-fun tp_is_empty!4107 () Bool)

(declare-fun tp!277397 () Bool)

(assert (=> b!877451 (= e!576512 (and tp_is_empty!4107 tp!277397))))

(declare-fun res!398956 () Bool)

(assert (=> start!79304 (=> (not res!398956) (not e!576513))))

(declare-fun validRegex!701 (Regex!2232) Bool)

(assert (=> start!79304 (= res!398956 (validRegex!701 r!15766))))

(assert (=> start!79304 e!576513))

(assert (=> start!79304 e!576510))

(assert (=> start!79304 e!576512))

(declare-fun b!877452 () Bool)

(assert (=> b!877452 (= e!576510 tp_is_empty!4107)))

(declare-fun b!877453 () Bool)

(declare-fun tp!277393 () Bool)

(declare-fun tp!277395 () Bool)

(assert (=> b!877453 (= e!576510 (and tp!277393 tp!277395))))

(declare-fun b!877454 () Bool)

(declare-fun res!398955 () Bool)

(assert (=> b!877454 (=> res!398955 e!576511)))

(declare-fun isEmpty!5635 (List!9462) Bool)

(assert (=> b!877454 (= res!398955 (isEmpty!5635 s!10566))))

(assert (=> b!877455 (= e!576511 true)))

(declare-fun lambda!26585 () Int)

(declare-datatypes ((tuple2!10554 0))(
  ( (tuple2!10555 (_1!6103 List!9462) (_2!6103 List!9462)) )
))
(declare-datatypes ((Option!1919 0))(
  ( (None!1918) (Some!1918 (v!19335 tuple2!10554)) )
))
(declare-fun isDefined!1561 (Option!1919) Bool)

(declare-fun findConcatSeparation!25 (Regex!2232 Regex!2232 List!9462 List!9462 List!9462) Option!1919)

(declare-fun Exists!29 (Int) Bool)

(assert (=> b!877455 (= (isDefined!1561 (findConcatSeparation!25 (regOne!4976 r!15766) EmptyExpr!2232 Nil!9446 s!10566 s!10566)) (Exists!29 lambda!26585))))

(declare-fun lt!330018 () Unit!14043)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!25 (Regex!2232 Regex!2232 List!9462) Unit!14043)

(assert (=> b!877455 (= lt!330018 (lemmaFindConcatSeparationEquivalentToExists!25 (regOne!4976 r!15766) EmptyExpr!2232 s!10566))))

(assert (= (and start!79304 res!398956) b!877449))

(assert (= (and b!877449 (not res!398957)) b!877454))

(assert (= (and b!877454 (not res!398955)) b!877455))

(assert (= (and start!79304 (is-ElementMatch!2232 r!15766)) b!877452))

(assert (= (and start!79304 (is-Concat!4065 r!15766)) b!877448))

(assert (= (and start!79304 (is-Star!2232 r!15766)) b!877450))

(assert (= (and start!79304 (is-Union!2232 r!15766)) b!877453))

(assert (= (and start!79304 (is-Cons!9446 s!10566)) b!877451))

(declare-fun m!1127685 () Bool)

(assert (=> b!877449 m!1127685))

(declare-fun m!1127687 () Bool)

(assert (=> b!877449 m!1127687))

(declare-fun m!1127689 () Bool)

(assert (=> b!877449 m!1127689))

(declare-fun m!1127691 () Bool)

(assert (=> start!79304 m!1127691))

(declare-fun m!1127693 () Bool)

(assert (=> b!877454 m!1127693))

(declare-fun m!1127695 () Bool)

(assert (=> b!877455 m!1127695))

(assert (=> b!877455 m!1127695))

(declare-fun m!1127697 () Bool)

(assert (=> b!877455 m!1127697))

(declare-fun m!1127699 () Bool)

(assert (=> b!877455 m!1127699))

(declare-fun m!1127701 () Bool)

(assert (=> b!877455 m!1127701))

(push 1)

(assert tp_is_empty!4107)

(assert (not b!877449))

(assert (not b!877451))

(assert (not b!877455))

(assert (not b!877448))

(assert (not b!877453))

(assert (not start!79304))

(assert (not b!877454))

(assert (not b!877450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

