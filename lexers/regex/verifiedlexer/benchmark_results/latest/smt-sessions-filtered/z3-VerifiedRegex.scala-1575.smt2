; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81654 () Bool)

(assert start!81654)

(declare-fun b!907986 () Bool)

(declare-fun e!592713 () Bool)

(declare-fun tp!284153 () Bool)

(declare-fun tp!284156 () Bool)

(assert (=> b!907986 (= e!592713 (and tp!284153 tp!284156))))

(declare-fun b!907987 () Bool)

(declare-fun tp!284151 () Bool)

(declare-fun tp!284152 () Bool)

(assert (=> b!907987 (= e!592713 (and tp!284151 tp!284152))))

(declare-fun b!907988 () Bool)

(declare-fun tp!284155 () Bool)

(assert (=> b!907988 (= e!592713 tp!284155)))

(declare-fun b!907989 () Bool)

(declare-fun e!592712 () Bool)

(assert (=> b!907989 (= e!592712 (not true))))

(declare-datatypes ((C!5388 0))(
  ( (C!5389 (val!2942 Int)) )
))
(declare-datatypes ((Regex!2409 0))(
  ( (ElementMatch!2409 (c!147100 C!5388)) (Concat!4242 (regOne!5330 Regex!2409) (regTwo!5330 Regex!2409)) (EmptyExpr!2409) (Star!2409 (reg!2738 Regex!2409)) (EmptyLang!2409) (Union!2409 (regOne!5331 Regex!2409) (regTwo!5331 Regex!2409)) )
))
(declare-fun r!15766 () Regex!2409)

(declare-datatypes ((List!9639 0))(
  ( (Nil!9623) (Cons!9623 (h!15024 C!5388) (t!100685 List!9639)) )
))
(declare-fun s!10566 () List!9639)

(declare-fun matchR!947 (Regex!2409 List!9639) Bool)

(declare-fun matchRSpec!210 (Regex!2409 List!9639) Bool)

(assert (=> b!907989 (= (matchR!947 r!15766 s!10566) (matchRSpec!210 r!15766 s!10566))))

(declare-datatypes ((Unit!14437 0))(
  ( (Unit!14438) )
))
(declare-fun lt!336101 () Unit!14437)

(declare-fun mainMatchTheorem!210 (Regex!2409 List!9639) Unit!14437)

(assert (=> b!907989 (= lt!336101 (mainMatchTheorem!210 r!15766 s!10566))))

(declare-fun b!907990 () Bool)

(declare-fun e!592711 () Bool)

(declare-fun tp_is_empty!4461 () Bool)

(declare-fun tp!284154 () Bool)

(assert (=> b!907990 (= e!592711 (and tp_is_empty!4461 tp!284154))))

(declare-fun b!907991 () Bool)

(assert (=> b!907991 (= e!592713 tp_is_empty!4461)))

(declare-fun res!412880 () Bool)

(assert (=> start!81654 (=> (not res!412880) (not e!592712))))

(declare-fun validRegex!878 (Regex!2409) Bool)

(assert (=> start!81654 (= res!412880 (validRegex!878 r!15766))))

(assert (=> start!81654 e!592712))

(assert (=> start!81654 e!592713))

(assert (=> start!81654 e!592711))

(assert (= (and start!81654 res!412880) b!907989))

(get-info :version)

(assert (= (and start!81654 ((_ is ElementMatch!2409) r!15766)) b!907991))

(assert (= (and start!81654 ((_ is Concat!4242) r!15766)) b!907986))

(assert (= (and start!81654 ((_ is Star!2409) r!15766)) b!907988))

(assert (= (and start!81654 ((_ is Union!2409) r!15766)) b!907987))

(assert (= (and start!81654 ((_ is Cons!9623) s!10566)) b!907990))

(declare-fun m!1141957 () Bool)

(assert (=> b!907989 m!1141957))

(declare-fun m!1141959 () Bool)

(assert (=> b!907989 m!1141959))

(declare-fun m!1141961 () Bool)

(assert (=> b!907989 m!1141961))

(declare-fun m!1141963 () Bool)

(assert (=> start!81654 m!1141963))

(check-sat (not start!81654) (not b!907986) (not b!907988) tp_is_empty!4461 (not b!907989) (not b!907990) (not b!907987))
(check-sat)
