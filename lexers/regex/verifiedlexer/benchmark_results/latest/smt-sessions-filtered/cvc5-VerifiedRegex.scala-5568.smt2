; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279584 () Bool)

(assert start!279584)

(declare-fun res!1189693 () Bool)

(declare-fun e!1814208 () Bool)

(assert (=> start!279584 (=> (not res!1189693) (not e!1814208))))

(declare-datatypes ((C!17562 0))(
  ( (C!17563 (val!10815 Int)) )
))
(declare-datatypes ((Regex!8690 0))(
  ( (ElementMatch!8690 (c!462663 C!17562)) (Concat!14011 (regOne!17892 Regex!8690) (regTwo!17892 Regex!8690)) (EmptyExpr!8690) (Star!8690 (reg!9019 Regex!8690)) (EmptyLang!8690) (Union!8690 (regOne!17893 Regex!8690) (regTwo!17893 Regex!8690)) )
))
(declare-datatypes ((List!34401 0))(
  ( (Nil!34277) (Cons!34277 (h!39697 Regex!8690) (t!233444 List!34401)) )
))
(declare-datatypes ((Context!5300 0))(
  ( (Context!5301 (exprs!3150 List!34401)) )
))
(declare-fun c!7184 () Context!5300)

(declare-fun lostCause!782 (Context!5300) Bool)

(assert (=> start!279584 (= res!1189693 (not (lostCause!782 c!7184)))))

(assert (=> start!279584 e!1814208))

(declare-fun e!1814207 () Bool)

(declare-fun inv!46313 (Context!5300) Bool)

(assert (=> start!279584 (and (inv!46313 c!7184) e!1814207)))

(declare-fun b!2865696 () Bool)

(assert (=> b!2865696 (= e!1814208 false)))

(declare-fun b!2865697 () Bool)

(declare-fun tp!922881 () Bool)

(assert (=> b!2865697 (= e!1814207 tp!922881)))

(declare-fun b!2865698 () Bool)

(declare-fun res!1189694 () Bool)

(assert (=> b!2865698 (=> (not res!1189694) (not e!1814208))))

(declare-datatypes ((List!34402 0))(
  ( (Nil!34278) (Cons!34278 (h!39698 C!17562) (t!233445 List!34402)) )
))
(declare-datatypes ((Option!6369 0))(
  ( (None!6368) (Some!6368 (v!34490 List!34402)) )
))
(declare-fun getLanguageWitness!344 (Context!5300) Option!6369)

(assert (=> b!2865698 (= res!1189694 (is-Some!6368 (getLanguageWitness!344 (Context!5301 (t!233444 (exprs!3150 c!7184))))))))

(declare-fun b!2865699 () Bool)

(declare-fun res!1189692 () Bool)

(assert (=> b!2865699 (=> (not res!1189692) (not e!1814208))))

(declare-fun getLanguageWitness!345 (Regex!8690) Option!6369)

(assert (=> b!2865699 (= res!1189692 (is-Some!6368 (getLanguageWitness!345 (h!39697 (exprs!3150 c!7184)))))))

(declare-fun b!2865700 () Bool)

(declare-fun res!1189695 () Bool)

(assert (=> b!2865700 (=> (not res!1189695) (not e!1814208))))

(assert (=> b!2865700 (= res!1189695 (is-Cons!34277 (exprs!3150 c!7184)))))

(assert (= (and start!279584 res!1189693) b!2865700))

(assert (= (and b!2865700 res!1189695) b!2865699))

(assert (= (and b!2865699 res!1189692) b!2865698))

(assert (= (and b!2865698 res!1189694) b!2865696))

(assert (= start!279584 b!2865697))

(declare-fun m!3286109 () Bool)

(assert (=> start!279584 m!3286109))

(declare-fun m!3286111 () Bool)

(assert (=> start!279584 m!3286111))

(declare-fun m!3286113 () Bool)

(assert (=> b!2865698 m!3286113))

(declare-fun m!3286115 () Bool)

(assert (=> b!2865699 m!3286115))

(push 1)

(assert (not b!2865698))

(assert (not b!2865699))

(assert (not start!279584))

(assert (not b!2865697))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

