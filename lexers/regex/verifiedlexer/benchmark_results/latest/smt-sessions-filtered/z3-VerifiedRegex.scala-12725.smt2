; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!703694 () Bool)

(assert start!703694)

(declare-fun b!7241627 () Bool)

(declare-fun res!2937646 () Bool)

(declare-fun e!4341738 () Bool)

(assert (=> b!7241627 (=> (not res!2937646) (not e!4341738))))

(declare-datatypes ((C!37392 0))(
  ( (C!37393 (val!28644 Int)) )
))
(declare-datatypes ((Regex!18559 0))(
  ( (ElementMatch!18559 (c!1344875 C!37392)) (Concat!27404 (regOne!37630 Regex!18559) (regTwo!37630 Regex!18559)) (EmptyExpr!18559) (Star!18559 (reg!18888 Regex!18559)) (EmptyLang!18559) (Union!18559 (regOne!37631 Regex!18559) (regTwo!37631 Regex!18559)) )
))
(declare-datatypes ((List!70283 0))(
  ( (Nil!70159) (Cons!70159 (h!76607 Regex!18559) (t!384334 List!70283)) )
))
(declare-datatypes ((Context!14998 0))(
  ( (Context!14999 (exprs!7999 List!70283)) )
))
(declare-fun ct2!328 () Context!14998)

(declare-datatypes ((List!70284 0))(
  ( (Nil!70160) (Cons!70160 (h!76608 C!37392) (t!384335 List!70284)) )
))
(declare-fun s2!1849 () List!70284)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3469 ((InoxSet Context!14998) List!70284) Bool)

(assert (=> b!7241627 (= res!2937646 (matchZipper!3469 (store ((as const (Array Context!14998 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun res!2937647 () Bool)

(assert (=> start!703694 (=> (not res!2937647) (not e!4341738))))

(declare-fun lt!2580205 () (InoxSet Context!14998))

(declare-fun s1!1971 () List!70284)

(assert (=> start!703694 (= res!2937647 (matchZipper!3469 lt!2580205 s1!1971))))

(declare-fun ct1!232 () Context!14998)

(assert (=> start!703694 (= lt!2580205 (store ((as const (Array Context!14998 Bool)) false) ct1!232 true))))

(assert (=> start!703694 e!4341738))

(declare-fun e!4341740 () Bool)

(declare-fun inv!89407 (Context!14998) Bool)

(assert (=> start!703694 (and (inv!89407 ct1!232) e!4341740)))

(declare-fun e!4341739 () Bool)

(assert (=> start!703694 e!4341739))

(declare-fun e!4341737 () Bool)

(assert (=> start!703694 e!4341737))

(declare-fun e!4341741 () Bool)

(assert (=> start!703694 (and (inv!89407 ct2!328) e!4341741)))

(declare-fun b!7241628 () Bool)

(declare-fun e!4341736 () Bool)

(assert (=> b!7241628 (= e!4341738 e!4341736)))

(declare-fun res!2937648 () Bool)

(assert (=> b!7241628 (=> (not res!2937648) (not e!4341736))))

(get-info :version)

(assert (=> b!7241628 (= res!2937648 (and (not ((_ is Nil!70159) (exprs!7999 ct1!232))) (not ((_ is Cons!70160) s1!1971))))))

(declare-fun lt!2580206 () List!70283)

(declare-fun ++!16415 (List!70283 List!70283) List!70283)

(assert (=> b!7241628 (= lt!2580206 (++!16415 (exprs!7999 ct1!232) (exprs!7999 ct2!328)))))

(declare-fun lambda!442047 () Int)

(declare-datatypes ((Unit!163704 0))(
  ( (Unit!163705) )
))
(declare-fun lt!2580208 () Unit!163704)

(declare-fun lemmaConcatPreservesForall!1368 (List!70283 List!70283 Int) Unit!163704)

(assert (=> b!7241628 (= lt!2580208 (lemmaConcatPreservesForall!1368 (exprs!7999 ct1!232) (exprs!7999 ct2!328) lambda!442047))))

(declare-fun b!7241629 () Bool)

(declare-fun tp!2035344 () Bool)

(assert (=> b!7241629 (= e!4341741 tp!2035344)))

(declare-fun b!7241630 () Bool)

(declare-fun res!2937645 () Bool)

(assert (=> b!7241630 (=> (not res!2937645) (not e!4341736))))

(declare-fun lambda!442048 () Int)

(declare-fun getWitness!2109 ((InoxSet Context!14998) Int) Context!14998)

(assert (=> b!7241630 (= res!2937645 (= ct1!232 (getWitness!2109 lt!2580205 lambda!442048)))))

(declare-fun b!7241631 () Bool)

(declare-fun tp!2035342 () Bool)

(assert (=> b!7241631 (= e!4341740 tp!2035342)))

(declare-fun b!7241632 () Bool)

(assert (=> b!7241632 (= e!4341736 false)))

(declare-fun lt!2580207 () Bool)

(declare-fun nullableContext!214 (Context!14998) Bool)

(assert (=> b!7241632 (= lt!2580207 (nullableContext!214 ct1!232))))

(declare-fun b!7241633 () Bool)

(declare-fun tp_is_empty!46583 () Bool)

(declare-fun tp!2035341 () Bool)

(assert (=> b!7241633 (= e!4341737 (and tp_is_empty!46583 tp!2035341))))

(declare-fun b!7241634 () Bool)

(declare-fun tp!2035343 () Bool)

(assert (=> b!7241634 (= e!4341739 (and tp_is_empty!46583 tp!2035343))))

(declare-fun b!7241635 () Bool)

(declare-fun res!2937644 () Bool)

(assert (=> b!7241635 (=> (not res!2937644) (not e!4341736))))

(declare-fun nullableZipper!2853 ((InoxSet Context!14998)) Bool)

(assert (=> b!7241635 (= res!2937644 (nullableZipper!2853 lt!2580205))))

(assert (= (and start!703694 res!2937647) b!7241627))

(assert (= (and b!7241627 res!2937646) b!7241628))

(assert (= (and b!7241628 res!2937648) b!7241635))

(assert (= (and b!7241635 res!2937644) b!7241630))

(assert (= (and b!7241630 res!2937645) b!7241632))

(assert (= start!703694 b!7241631))

(assert (= (and start!703694 ((_ is Cons!70160) s1!1971)) b!7241634))

(assert (= (and start!703694 ((_ is Cons!70160) s2!1849)) b!7241633))

(assert (= start!703694 b!7241629))

(declare-fun m!7916182 () Bool)

(assert (=> start!703694 m!7916182))

(declare-fun m!7916184 () Bool)

(assert (=> start!703694 m!7916184))

(declare-fun m!7916186 () Bool)

(assert (=> start!703694 m!7916186))

(declare-fun m!7916188 () Bool)

(assert (=> start!703694 m!7916188))

(declare-fun m!7916190 () Bool)

(assert (=> b!7241635 m!7916190))

(declare-fun m!7916192 () Bool)

(assert (=> b!7241632 m!7916192))

(declare-fun m!7916194 () Bool)

(assert (=> b!7241628 m!7916194))

(declare-fun m!7916196 () Bool)

(assert (=> b!7241628 m!7916196))

(declare-fun m!7916198 () Bool)

(assert (=> b!7241627 m!7916198))

(assert (=> b!7241627 m!7916198))

(declare-fun m!7916200 () Bool)

(assert (=> b!7241627 m!7916200))

(declare-fun m!7916202 () Bool)

(assert (=> b!7241630 m!7916202))

(check-sat (not b!7241632) (not b!7241630) (not start!703694) (not b!7241629) (not b!7241627) tp_is_empty!46583 (not b!7241634) (not b!7241628) (not b!7241631) (not b!7241633) (not b!7241635))
(check-sat)
