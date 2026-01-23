; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46408 () Bool)

(assert start!46408)

(assert (=> start!46408 false))

(declare-fun e!306135 () Bool)

(assert (=> start!46408 e!306135))

(declare-fun b!512369 () Bool)

(declare-fun tp!159260 () Bool)

(declare-fun tp!159263 () Bool)

(assert (=> b!512369 (= e!306135 (and tp!159260 tp!159263))))

(declare-fun b!512366 () Bool)

(declare-fun tp_is_empty!2475 () Bool)

(assert (=> b!512366 (= e!306135 tp_is_empty!2475)))

(declare-fun b!512367 () Bool)

(declare-fun tp!159262 () Bool)

(declare-fun tp!159259 () Bool)

(assert (=> b!512367 (= e!306135 (and tp!159262 tp!159259))))

(declare-fun b!512368 () Bool)

(declare-fun tp!159261 () Bool)

(assert (=> b!512368 (= e!306135 tp!159261)))

(declare-datatypes ((C!3300 0))(
  ( (C!3301 (val!1686 Int)) )
))
(declare-datatypes ((Regex!1189 0))(
  ( (ElementMatch!1189 (c!99577 C!3300)) (Concat!2089 (regOne!2890 Regex!1189) (regTwo!2890 Regex!1189)) (EmptyExpr!1189) (Star!1189 (reg!1518 Regex!1189)) (EmptyLang!1189) (Union!1189 (regOne!2891 Regex!1189) (regTwo!2891 Regex!1189)) )
))
(declare-fun r!24842 () Regex!1189)

(get-info :version)

(assert (= (and start!46408 ((_ is ElementMatch!1189) r!24842)) b!512366))

(assert (= (and start!46408 ((_ is Concat!2089) r!24842)) b!512367))

(assert (= (and start!46408 ((_ is Star!1189) r!24842)) b!512368))

(assert (= (and start!46408 ((_ is Union!1189) r!24842)) b!512369))

(check-sat (not b!512369) (not b!512368) (not b!512367) tp_is_empty!2475)
(check-sat)
