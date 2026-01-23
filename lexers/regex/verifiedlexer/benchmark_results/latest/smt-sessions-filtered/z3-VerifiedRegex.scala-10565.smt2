; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544040 () Bool)

(assert start!544040)

(declare-fun res!2188288 () Bool)

(declare-fun e!3204718 () Bool)

(assert (=> start!544040 (=> (not res!2188288) (not e!3204718))))

(declare-datatypes ((C!29108 0))(
  ( (C!29109 (val!24206 Int)) )
))
(declare-datatypes ((Regex!14421 0))(
  ( (ElementMatch!14421 (c!884691 C!29108)) (Concat!23266 (regOne!29354 Regex!14421) (regTwo!29354 Regex!14421)) (EmptyExpr!14421) (Star!14421 (reg!14750 Regex!14421)) (EmptyLang!14421) (Union!14421 (regOne!29355 Regex!14421) (regTwo!29355 Regex!14421)) )
))
(declare-datatypes ((List!59783 0))(
  ( (Nil!59659) (Cons!59659 (h!66107 Regex!14421) (t!372814 List!59783)) )
))
(declare-datatypes ((Context!7610 0))(
  ( (Context!7611 (exprs!4305 List!59783)) )
))
(declare-fun ctx!74 () Context!7610)

(declare-fun lostCause!1395 (Context!7610) Bool)

(assert (=> start!544040 (= res!2188288 (lostCause!1395 ctx!74))))

(assert (=> start!544040 e!3204718))

(declare-fun e!3204719 () Bool)

(declare-fun inv!79233 (Context!7610) Bool)

(assert (=> start!544040 (and (inv!79233 ctx!74) e!3204719)))

(declare-fun b!5137838 () Bool)

(assert (=> b!5137838 (= e!3204718 false)))

(declare-fun b!5137839 () Bool)

(declare-fun tp!1432827 () Bool)

(assert (=> b!5137839 (= e!3204719 tp!1432827)))

(assert (= (and start!544040 res!2188288) b!5137838))

(assert (= start!544040 b!5137839))

(declare-fun m!6202948 () Bool)

(assert (=> start!544040 m!6202948))

(declare-fun m!6202950 () Bool)

(assert (=> start!544040 m!6202950))

(check-sat (not start!544040) (not b!5137839))
(check-sat)
