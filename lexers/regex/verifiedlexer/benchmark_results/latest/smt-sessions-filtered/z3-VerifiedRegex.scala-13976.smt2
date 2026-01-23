; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739908 () Bool)

(assert start!739908)

(declare-fun b!7768430 () Bool)

(declare-fun e!4603109 () Bool)

(declare-fun tp!2282100 () Bool)

(assert (=> b!7768430 (= e!4603109 tp!2282100)))

(declare-fun b!7768431 () Bool)

(declare-fun res!3096906 () Bool)

(declare-fun e!4603107 () Bool)

(assert (=> b!7768431 (=> (not res!3096906) (not e!4603107))))

(declare-datatypes ((C!41820 0))(
  ( (C!41821 (val!31350 Int)) )
))
(declare-datatypes ((List!73588 0))(
  ( (Nil!73464) (Cons!73464 (h!79912 C!41820) (t!388323 List!73588)) )
))
(declare-fun s!14904 () List!73588)

(get-info :version)

(assert (=> b!7768431 (= res!3096906 ((_ is Cons!73464) s!14904))))

(declare-fun b!7768432 () Bool)

(declare-fun tp!2282096 () Bool)

(declare-fun tp!2282098 () Bool)

(assert (=> b!7768432 (= e!4603109 (and tp!2282096 tp!2282098))))

(declare-fun b!7768434 () Bool)

(declare-fun tp_is_empty!51849 () Bool)

(assert (=> b!7768434 (= e!4603109 tp_is_empty!51849)))

(declare-fun b!7768435 () Bool)

(declare-fun res!3096907 () Bool)

(assert (=> b!7768435 (=> (not res!3096907) (not e!4603107))))

(declare-datatypes ((Regex!20747 0))(
  ( (ElementMatch!20747 (c!1431766 C!41820)) (Concat!29592 (regOne!42006 Regex!20747) (regTwo!42006 Regex!20747)) (EmptyExpr!20747) (Star!20747 (reg!21076 Regex!20747)) (EmptyLang!20747) (Union!20747 (regOne!42007 Regex!20747) (regTwo!42007 Regex!20747)) )
))
(declare-fun lt!2671212 () Regex!20747)

(declare-fun matchR!10209 (Regex!20747 List!73588) Bool)

(assert (=> b!7768435 (= res!3096907 (matchR!10209 lt!2671212 s!14904))))

(declare-fun b!7768436 () Bool)

(declare-fun tp!2282101 () Bool)

(declare-fun tp!2282097 () Bool)

(assert (=> b!7768436 (= e!4603109 (and tp!2282101 tp!2282097))))

(declare-fun b!7768437 () Bool)

(declare-fun e!4603108 () Bool)

(declare-fun tp!2282099 () Bool)

(assert (=> b!7768437 (= e!4603108 (and tp_is_empty!51849 tp!2282099))))

(declare-fun b!7768433 () Bool)

(assert (=> b!7768433 (= e!4603107 false)))

(declare-fun lt!2671213 () Regex!20747)

(declare-fun derivativeStep!6092 (Regex!20747 C!41820) Regex!20747)

(assert (=> b!7768433 (= lt!2671213 (derivativeStep!6092 lt!2671212 (h!79912 s!14904)))))

(declare-fun lt!2671214 () Regex!20747)

(declare-fun r!25924 () Regex!20747)

(assert (=> b!7768433 (= lt!2671214 (derivativeStep!6092 r!25924 (h!79912 s!14904)))))

(declare-fun res!3096908 () Bool)

(assert (=> start!739908 (=> (not res!3096908) (not e!4603107))))

(declare-fun validRegex!11161 (Regex!20747) Bool)

(assert (=> start!739908 (= res!3096908 (validRegex!11161 lt!2671212))))

(assert (=> start!739908 (= lt!2671212 (Star!20747 r!25924))))

(assert (=> start!739908 e!4603107))

(assert (=> start!739908 e!4603109))

(assert (=> start!739908 e!4603108))

(assert (= (and start!739908 res!3096908) b!7768435))

(assert (= (and b!7768435 res!3096907) b!7768431))

(assert (= (and b!7768431 res!3096906) b!7768433))

(assert (= (and start!739908 ((_ is ElementMatch!20747) r!25924)) b!7768434))

(assert (= (and start!739908 ((_ is Concat!29592) r!25924)) b!7768436))

(assert (= (and start!739908 ((_ is Star!20747) r!25924)) b!7768430))

(assert (= (and start!739908 ((_ is Union!20747) r!25924)) b!7768432))

(assert (= (and start!739908 ((_ is Cons!73464) s!14904)) b!7768437))

(declare-fun m!8223686 () Bool)

(assert (=> b!7768435 m!8223686))

(declare-fun m!8223688 () Bool)

(assert (=> b!7768433 m!8223688))

(declare-fun m!8223690 () Bool)

(assert (=> b!7768433 m!8223690))

(declare-fun m!8223692 () Bool)

(assert (=> start!739908 m!8223692))

(check-sat (not b!7768435) (not b!7768436) (not b!7768437) (not b!7768432) tp_is_empty!51849 (not start!739908) (not b!7768430) (not b!7768433))
(check-sat)
