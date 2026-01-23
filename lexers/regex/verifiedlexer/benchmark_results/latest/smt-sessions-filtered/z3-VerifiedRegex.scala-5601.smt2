; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281374 () Bool)

(assert start!281374)

(declare-fun res!1194101 () Bool)

(declare-fun e!1823206 () Bool)

(assert (=> start!281374 (=> (not res!1194101) (not e!1823206))))

(declare-datatypes ((C!17696 0))(
  ( (C!17697 (val!10882 Int)) )
))
(declare-datatypes ((Regex!8757 0))(
  ( (ElementMatch!8757 (c!468210 C!17696)) (Concat!14078 (regOne!18026 Regex!8757) (regTwo!18026 Regex!8757)) (EmptyExpr!8757) (Star!8757 (reg!9086 Regex!8757)) (EmptyLang!8757) (Union!8757 (regOne!18027 Regex!8757) (regTwo!18027 Regex!8757)) )
))
(declare-datatypes ((List!34556 0))(
  ( (Nil!34432) (Cons!34432 (h!39852 Regex!8757) (t!233599 List!34556)) )
))
(declare-datatypes ((Context!5434 0))(
  ( (Context!5435 (exprs!3217 List!34556)) )
))
(declare-fun c!7184 () Context!5434)

(declare-fun lostCause!849 (Context!5434) Bool)

(assert (=> start!281374 (= res!1194101 (not (lostCause!849 c!7184)))))

(assert (=> start!281374 e!1823206))

(declare-fun e!1823207 () Bool)

(declare-fun inv!46479 (Context!5434) Bool)

(assert (=> start!281374 (and (inv!46479 c!7184) e!1823207)))

(declare-fun b!2882019 () Bool)

(get-info :version)

(define-sort InoxSet (T) (Array T Bool))

(assert (=> b!2882019 (= e!1823206 (and (not ((_ is Cons!34432) (exprs!3217 c!7184))) (not (= (store ((as const (Array Context!5434 Bool)) false) c!7184 true) (store ((as const (Array Context!5434 Bool)) false) (Context!5435 Nil!34432) true)))))))

(declare-fun b!2882020 () Bool)

(declare-fun tp!924251 () Bool)

(assert (=> b!2882020 (= e!1823207 tp!924251)))

(assert (= (and start!281374 res!1194101) b!2882019))

(assert (= start!281374 b!2882020))

(declare-fun m!3299173 () Bool)

(assert (=> start!281374 m!3299173))

(declare-fun m!3299175 () Bool)

(assert (=> start!281374 m!3299175))

(declare-fun m!3299177 () Bool)

(assert (=> b!2882019 m!3299177))

(check-sat (not start!281374) (not b!2882020))
(check-sat)
