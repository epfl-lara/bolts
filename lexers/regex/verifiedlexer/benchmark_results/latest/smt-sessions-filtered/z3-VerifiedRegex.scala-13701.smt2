; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733204 () Bool)

(assert start!733204)

(declare-fun b!7606999 () Bool)

(declare-fun e!4524747 () Bool)

(declare-fun tp!2218706 () Bool)

(declare-fun tp!2218709 () Bool)

(assert (=> b!7606999 (= e!4524747 (and tp!2218706 tp!2218709))))

(declare-fun b!7606996 () Bool)

(declare-fun tp_is_empty!50749 () Bool)

(assert (=> b!7606996 (= e!4524747 tp_is_empty!50749)))

(assert (=> start!733204 false))

(assert (=> start!733204 e!4524747))

(declare-fun b!7606998 () Bool)

(declare-fun tp!2218708 () Bool)

(assert (=> b!7606998 (= e!4524747 tp!2218708)))

(declare-fun b!7606997 () Bool)

(declare-fun tp!2218707 () Bool)

(declare-fun tp!2218705 () Bool)

(assert (=> b!7606997 (= e!4524747 (and tp!2218707 tp!2218705))))

(declare-datatypes ((C!40720 0))(
  ( (C!40721 (val!30800 Int)) )
))
(declare-datatypes ((Regex!20197 0))(
  ( (ElementMatch!20197 (c!1402854 C!40720)) (Concat!29042 (regOne!40906 Regex!20197) (regTwo!40906 Regex!20197)) (EmptyExpr!20197) (Star!20197 (reg!20526 Regex!20197)) (EmptyLang!20197) (Union!20197 (regOne!40907 Regex!20197) (regTwo!40907 Regex!20197)) )
))
(declare-fun r!19218 () Regex!20197)

(get-info :version)

(assert (= (and start!733204 ((_ is ElementMatch!20197) r!19218)) b!7606996))

(assert (= (and start!733204 ((_ is Concat!29042) r!19218)) b!7606997))

(assert (= (and start!733204 ((_ is Star!20197) r!19218)) b!7606998))

(assert (= (and start!733204 ((_ is Union!20197) r!19218)) b!7606999))

(check-sat (not b!7606997) (not b!7606999) (not b!7606998) tp_is_empty!50749)
(check-sat)
