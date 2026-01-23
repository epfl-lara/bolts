; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727768 () Bool)

(assert start!727768)

(declare-fun res!3013708 () Bool)

(declare-fun e!4481059 () Bool)

(assert (=> start!727768 (=> (not res!3013708) (not e!4481059))))

(declare-datatypes ((C!39834 0))(
  ( (C!39835 (val!30337 Int)) )
))
(declare-datatypes ((Regex!19754 0))(
  ( (ElementMatch!19754 (c!1388668 C!39834)) (Concat!28599 (regOne!40020 Regex!19754) (regTwo!40020 Regex!19754)) (EmptyExpr!19754) (Star!19754 (reg!20083 Regex!19754)) (EmptyLang!19754) (Union!19754 (regOne!40021 Regex!19754) (regTwo!40021 Regex!19754)) )
))
(declare-datatypes ((List!72639 0))(
  ( (Nil!72515) (Cons!72515 (h!78963 Regex!19754) (t!387276 List!72639)) )
))
(declare-datatypes ((Context!17012 0))(
  ( (Context!17013 (exprs!9006 List!72639)) )
))
(declare-fun c!7091 () Context!17012)

(assert (=> start!727768 (= res!3013708 (is-Cons!72515 (exprs!9006 c!7091)))))

(assert (=> start!727768 e!4481059))

(declare-fun e!4481060 () Bool)

(declare-fun inv!92649 (Context!17012) Bool)

(assert (=> start!727768 (and (inv!92649 c!7091) e!4481060)))

(declare-fun b!7516132 () Bool)

(declare-fun res!3013709 () Bool)

(assert (=> b!7516132 (=> (not res!3013709) (not e!4481059))))

(declare-datatypes ((List!72640 0))(
  ( (Nil!72516) (Cons!72516 (h!78964 C!39834) (t!387277 List!72640)) )
))
(declare-datatypes ((Option!17251 0))(
  ( (None!17250) (Some!17250 (v!54385 List!72640)) )
))
(declare-fun getLanguageWitness!1092 (Regex!19754) Option!17251)

(assert (=> b!7516132 (= res!3013709 (is-Some!17250 (getLanguageWitness!1092 (h!78963 (exprs!9006 c!7091)))))))

(declare-fun b!7516133 () Bool)

(assert (=> b!7516133 (= e!4481059 false)))

(declare-fun lt!2638209 () Option!17251)

(declare-fun getLanguageWitness!1093 (Context!17012) Option!17251)

(assert (=> b!7516133 (= lt!2638209 (getLanguageWitness!1093 (Context!17013 (t!387276 (exprs!9006 c!7091)))))))

(declare-fun b!7516134 () Bool)

(declare-fun tp!2182087 () Bool)

(assert (=> b!7516134 (= e!4481060 tp!2182087)))

(assert (= (and start!727768 res!3013708) b!7516132))

(assert (= (and b!7516132 res!3013709) b!7516133))

(assert (= start!727768 b!7516134))

(declare-fun m!8097912 () Bool)

(assert (=> start!727768 m!8097912))

(declare-fun m!8097914 () Bool)

(assert (=> b!7516132 m!8097914))

(declare-fun m!8097916 () Bool)

(assert (=> b!7516133 m!8097916))

(push 1)

(assert (not b!7516133))

(assert (not b!7516132))

(assert (not start!727768))

(assert (not b!7516134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

