; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185358 () Bool)

(assert start!185358)

(declare-fun b!1856534 () Bool)

(declare-fun e!1185970 () Bool)

(declare-fun tp!528201 () Bool)

(declare-fun tp!528199 () Bool)

(assert (=> b!1856534 (= e!1185970 (and tp!528201 tp!528199))))

(declare-fun b!1856536 () Bool)

(declare-fun tp!528198 () Bool)

(declare-fun tp!528200 () Bool)

(assert (=> b!1856536 (= e!1185970 (and tp!528198 tp!528200))))

(assert (=> start!185358 false))

(assert (=> start!185358 e!1185970))

(declare-fun b!1856533 () Bool)

(declare-fun tp_is_empty!8555 () Bool)

(assert (=> b!1856533 (= e!1185970 tp_is_empty!8555)))

(declare-fun b!1856535 () Bool)

(declare-fun tp!528202 () Bool)

(assert (=> b!1856535 (= e!1185970 tp!528202)))

(declare-datatypes ((C!10264 0))(
  ( (C!10265 (val!5878 Int)) )
))
(declare-datatypes ((Regex!5057 0))(
  ( (ElementMatch!5057 (c!302451 C!10264)) (Concat!8856 (regOne!10626 Regex!5057) (regTwo!10626 Regex!5057)) (EmptyExpr!5057) (Star!5057 (reg!5386 Regex!5057)) (EmptyLang!5057) (Union!5057 (regOne!10627 Regex!5057) (regTwo!10627 Regex!5057)) )
))
(declare-fun r!25886 () Regex!5057)

(get-info :version)

(assert (= (and start!185358 ((_ is ElementMatch!5057) r!25886)) b!1856533))

(assert (= (and start!185358 ((_ is Concat!8856) r!25886)) b!1856534))

(assert (= (and start!185358 ((_ is Star!5057) r!25886)) b!1856535))

(assert (= (and start!185358 ((_ is Union!5057) r!25886)) b!1856536))

(check-sat (not b!1856534) (not b!1856535) (not b!1856536) tp_is_empty!8555)
(check-sat)
