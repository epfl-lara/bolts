; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82048 () Bool)

(assert start!82048)

(declare-fun b!912535 () Bool)

(declare-fun e!595093 () Bool)

(declare-fun tp_is_empty!4519 () Bool)

(assert (=> b!912535 (= e!595093 tp_is_empty!4519)))

(declare-fun b!912536 () Bool)

(declare-fun e!595092 () Bool)

(assert (=> b!912536 (= e!595092 (not true))))

(declare-datatypes ((C!5446 0))(
  ( (C!5447 (val!2971 Int)) )
))
(declare-datatypes ((Regex!2438 0))(
  ( (ElementMatch!2438 (c!147833 C!5446)) (Concat!4271 (regOne!5388 Regex!2438) (regTwo!5388 Regex!2438)) (EmptyExpr!2438) (Star!2438 (reg!2767 Regex!2438)) (EmptyLang!2438) (Union!2438 (regOne!5389 Regex!2438) (regTwo!5389 Regex!2438)) )
))
(declare-fun r!15766 () Regex!2438)

(declare-datatypes ((List!9668 0))(
  ( (Nil!9652) (Cons!9652 (h!15053 C!5446) (t!100714 List!9668)) )
))
(declare-fun s!10566 () List!9668)

(declare-fun matchR!976 (Regex!2438 List!9668) Bool)

(declare-fun matchRSpec!239 (Regex!2438 List!9668) Bool)

(assert (=> b!912536 (= (matchR!976 r!15766 s!10566) (matchRSpec!239 r!15766 s!10566))))

(declare-datatypes ((Unit!14495 0))(
  ( (Unit!14496) )
))
(declare-fun lt!336986 () Unit!14495)

(declare-fun mainMatchTheorem!239 (Regex!2438 List!9668) Unit!14495)

(assert (=> b!912536 (= lt!336986 (mainMatchTheorem!239 r!15766 s!10566))))

(declare-fun b!912537 () Bool)

(declare-fun e!595094 () Bool)

(declare-fun tp!285210 () Bool)

(assert (=> b!912537 (= e!595094 (and tp_is_empty!4519 tp!285210))))

(declare-fun b!912538 () Bool)

(declare-fun tp!285205 () Bool)

(assert (=> b!912538 (= e!595093 tp!285205)))

(declare-fun b!912539 () Bool)

(declare-fun tp!285207 () Bool)

(declare-fun tp!285208 () Bool)

(assert (=> b!912539 (= e!595093 (and tp!285207 tp!285208))))

(declare-fun b!912534 () Bool)

(declare-fun tp!285209 () Bool)

(declare-fun tp!285206 () Bool)

(assert (=> b!912534 (= e!595093 (and tp!285209 tp!285206))))

(declare-fun res!414983 () Bool)

(assert (=> start!82048 (=> (not res!414983) (not e!595092))))

(declare-fun validRegex!907 (Regex!2438) Bool)

(assert (=> start!82048 (= res!414983 (validRegex!907 r!15766))))

(assert (=> start!82048 e!595092))

(assert (=> start!82048 e!595093))

(assert (=> start!82048 e!595094))

(assert (= (and start!82048 res!414983) b!912536))

(assert (= (and start!82048 (is-ElementMatch!2438 r!15766)) b!912535))

(assert (= (and start!82048 (is-Concat!4271 r!15766)) b!912539))

(assert (= (and start!82048 (is-Star!2438 r!15766)) b!912538))

(assert (= (and start!82048 (is-Union!2438 r!15766)) b!912534))

(assert (= (and start!82048 (is-Cons!9652 s!10566)) b!912537))

(declare-fun m!1144013 () Bool)

(assert (=> b!912536 m!1144013))

(declare-fun m!1144015 () Bool)

(assert (=> b!912536 m!1144015))

(declare-fun m!1144017 () Bool)

(assert (=> b!912536 m!1144017))

(declare-fun m!1144019 () Bool)

(assert (=> start!82048 m!1144019))

(push 1)

(assert (not b!912538))

(assert (not b!912536))

(assert (not b!912534))

(assert (not b!912539))

(assert (not b!912537))

(assert tp_is_empty!4519)

(assert (not start!82048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

