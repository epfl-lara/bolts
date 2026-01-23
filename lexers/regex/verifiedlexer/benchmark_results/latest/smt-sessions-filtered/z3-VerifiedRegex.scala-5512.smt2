; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!278006 () Bool)

(assert start!278006)

(declare-fun b!2855998 () Bool)

(declare-fun res!1186511 () Bool)

(declare-fun e!1808842 () Bool)

(assert (=> b!2855998 (=> (not res!1186511) (not e!1808842))))

(declare-datatypes ((C!17340 0))(
  ( (C!17341 (val!10704 Int)) )
))
(declare-datatypes ((List!34176 0))(
  ( (Nil!34052) (Cons!34052 (h!39472 C!17340) (t!233207 List!34176)) )
))
(declare-fun prefix!1470 () List!34176)

(get-info :version)

(assert (=> b!2855998 (= res!1186511 (not ((_ is Nil!34052) prefix!1470)))))

(declare-fun b!2855999 () Bool)

(declare-fun e!1808843 () Bool)

(declare-fun tp_is_empty!14895 () Bool)

(assert (=> b!2855999 (= e!1808843 tp_is_empty!14895)))

(declare-fun b!2856000 () Bool)

(declare-fun res!1186512 () Bool)

(assert (=> b!2856000 (=> (not res!1186512) (not e!1808842))))

(declare-datatypes ((Regex!8579 0))(
  ( (ElementMatch!8579 (c!460236 C!17340)) (Concat!13900 (regOne!17670 Regex!8579) (regTwo!17670 Regex!8579)) (EmptyExpr!8579) (Star!8579 (reg!8908 Regex!8579)) (EmptyLang!8579) (Union!8579 (regOne!17671 Regex!8579) (regTwo!17671 Regex!8579)) )
))
(declare-fun r!23423 () Regex!8579)

(declare-fun prefixMatch!887 (Regex!8579 List!34176) Bool)

(assert (=> b!2856000 (= res!1186512 (prefixMatch!887 r!23423 prefix!1470))))

(declare-fun res!1186513 () Bool)

(assert (=> start!278006 (=> (not res!1186513) (not e!1808842))))

(declare-fun validRegex!3449 (Regex!8579) Bool)

(assert (=> start!278006 (= res!1186513 (validRegex!3449 r!23423))))

(assert (=> start!278006 e!1808842))

(assert (=> start!278006 e!1808843))

(declare-fun e!1808841 () Bool)

(assert (=> start!278006 e!1808841))

(declare-fun b!2856001 () Bool)

(declare-fun tp!919095 () Bool)

(declare-fun tp!919100 () Bool)

(assert (=> b!2856001 (= e!1808843 (and tp!919095 tp!919100))))

(declare-fun b!2856002 () Bool)

(declare-fun e!1808844 () Bool)

(assert (=> b!2856002 (= e!1808842 e!1808844)))

(declare-fun res!1186514 () Bool)

(assert (=> b!2856002 (=> (not res!1186514) (not e!1808844))))

(declare-fun lt!1013963 () Regex!8579)

(assert (=> b!2856002 (= res!1186514 (validRegex!3449 lt!1013963))))

(declare-fun derivativeStep!2268 (Regex!8579 C!17340) Regex!8579)

(assert (=> b!2856002 (= lt!1013963 (derivativeStep!2268 r!23423 (h!39472 prefix!1470)))))

(declare-fun b!2856003 () Bool)

(declare-fun tp!919098 () Bool)

(assert (=> b!2856003 (= e!1808843 tp!919098)))

(declare-fun b!2856004 () Bool)

(declare-fun tp!919099 () Bool)

(declare-fun tp!919096 () Bool)

(assert (=> b!2856004 (= e!1808843 (and tp!919099 tp!919096))))

(declare-fun b!2856005 () Bool)

(declare-fun tp!919097 () Bool)

(assert (=> b!2856005 (= e!1808841 (and tp_is_empty!14895 tp!919097))))

(declare-fun b!2856006 () Bool)

(assert (=> b!2856006 (= e!1808844 false)))

(declare-fun lt!1013962 () Bool)

(assert (=> b!2856006 (= lt!1013962 (prefixMatch!887 lt!1013963 (t!233207 prefix!1470)))))

(assert (= (and start!278006 res!1186513) b!2856000))

(assert (= (and b!2856000 res!1186512) b!2855998))

(assert (= (and b!2855998 res!1186511) b!2856002))

(assert (= (and b!2856002 res!1186514) b!2856006))

(assert (= (and start!278006 ((_ is ElementMatch!8579) r!23423)) b!2855999))

(assert (= (and start!278006 ((_ is Concat!13900) r!23423)) b!2856001))

(assert (= (and start!278006 ((_ is Star!8579) r!23423)) b!2856003))

(assert (= (and start!278006 ((_ is Union!8579) r!23423)) b!2856004))

(assert (= (and start!278006 ((_ is Cons!34052) prefix!1470)) b!2856005))

(declare-fun m!3278743 () Bool)

(assert (=> b!2856000 m!3278743))

(declare-fun m!3278745 () Bool)

(assert (=> start!278006 m!3278745))

(declare-fun m!3278747 () Bool)

(assert (=> b!2856002 m!3278747))

(declare-fun m!3278749 () Bool)

(assert (=> b!2856002 m!3278749))

(declare-fun m!3278751 () Bool)

(assert (=> b!2856006 m!3278751))

(check-sat (not start!278006) (not b!2856005) (not b!2856006) (not b!2856003) (not b!2856004) (not b!2856002) (not b!2856001) (not b!2856000) tp_is_empty!14895)
(check-sat)
