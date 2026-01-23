; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733196 () Bool)

(assert start!733196)

(assert (=> start!733196 false))

(declare-fun e!4524735 () Bool)

(assert (=> start!733196 e!4524735))

(declare-fun b!7606948 () Bool)

(declare-fun tp_is_empty!50741 () Bool)

(assert (=> b!7606948 (= e!4524735 tp_is_empty!50741)))

(declare-fun b!7606951 () Bool)

(declare-fun tp!2218645 () Bool)

(declare-fun tp!2218648 () Bool)

(assert (=> b!7606951 (= e!4524735 (and tp!2218645 tp!2218648))))

(declare-fun b!7606949 () Bool)

(declare-fun tp!2218649 () Bool)

(declare-fun tp!2218646 () Bool)

(assert (=> b!7606949 (= e!4524735 (and tp!2218649 tp!2218646))))

(declare-fun b!7606950 () Bool)

(declare-fun tp!2218647 () Bool)

(assert (=> b!7606950 (= e!4524735 tp!2218647)))

(declare-datatypes ((C!40712 0))(
  ( (C!40713 (val!30796 Int)) )
))
(declare-datatypes ((Regex!20193 0))(
  ( (ElementMatch!20193 (c!1402850 C!40712)) (Concat!29038 (regOne!40898 Regex!20193) (regTwo!40898 Regex!20193)) (EmptyExpr!20193) (Star!20193 (reg!20522 Regex!20193)) (EmptyLang!20193) (Union!20193 (regOne!40899 Regex!20193) (regTwo!40899 Regex!20193)) )
))
(declare-fun r!19218 () Regex!20193)

(get-info :version)

(assert (= (and start!733196 ((_ is ElementMatch!20193) r!19218)) b!7606948))

(assert (= (and start!733196 ((_ is Concat!29038) r!19218)) b!7606949))

(assert (= (and start!733196 ((_ is Star!20193) r!19218)) b!7606950))

(assert (= (and start!733196 ((_ is Union!20193) r!19218)) b!7606951))

(check-sat (not b!7606950) (not b!7606949) (not b!7606951) tp_is_empty!50741)
(check-sat)
