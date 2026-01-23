; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!701360 () Bool)

(assert start!701360)

(declare-fun b!7230380 () Bool)

(declare-fun e!4334414 () Bool)

(declare-fun e!4334412 () Bool)

(assert (=> b!7230380 (= e!4334414 e!4334412)))

(declare-fun res!2933519 () Bool)

(assert (=> b!7230380 (=> (not res!2933519) (not e!4334412))))

(declare-datatypes ((C!37236 0))(
  ( (C!37237 (val!28566 Int)) )
))
(declare-datatypes ((Regex!18481 0))(
  ( (ElementMatch!18481 (c!1341355 C!37236)) (Concat!27326 (regOne!37474 Regex!18481) (regTwo!37474 Regex!18481)) (EmptyExpr!18481) (Star!18481 (reg!18810 Regex!18481)) (EmptyLang!18481) (Union!18481 (regOne!37475 Regex!18481) (regTwo!37475 Regex!18481)) )
))
(declare-datatypes ((List!70051 0))(
  ( (Nil!69927) (Cons!69927 (h!76375 Regex!18481) (t!384100 List!70051)) )
))
(declare-datatypes ((Context!14842 0))(
  ( (Context!14843 (exprs!7921 List!70051)) )
))
(declare-fun ct1!232 () Context!14842)

(declare-datatypes ((List!70052 0))(
  ( (Nil!69928) (Cons!69928 (h!76376 C!37236) (t!384101 List!70052)) )
))
(declare-fun s1!1971 () List!70052)

(get-info :version)

(assert (=> b!7230380 (= res!2933519 (and (not ((_ is Nil!69927) (exprs!7921 ct1!232))) ((_ is Cons!69928) s1!1971)))))

(declare-fun lt!2572898 () List!70051)

(declare-fun ct2!328 () Context!14842)

(declare-fun ++!16267 (List!70051 List!70051) List!70051)

(assert (=> b!7230380 (= lt!2572898 (++!16267 (exprs!7921 ct1!232) (exprs!7921 ct2!328)))))

(declare-fun lambda!439073 () Int)

(declare-datatypes ((Unit!163497 0))(
  ( (Unit!163498) )
))
(declare-fun lt!2572897 () Unit!163497)

(declare-fun lemmaConcatPreservesForall!1290 (List!70051 List!70051 Int) Unit!163497)

(assert (=> b!7230380 (= lt!2572897 (lemmaConcatPreservesForall!1290 (exprs!7921 ct1!232) (exprs!7921 ct2!328) lambda!439073))))

(declare-fun b!7230381 () Bool)

(declare-fun e!4334416 () Bool)

(declare-fun tp!2033631 () Bool)

(assert (=> b!7230381 (= e!4334416 tp!2033631)))

(declare-fun b!7230382 () Bool)

(declare-fun res!2933518 () Bool)

(assert (=> b!7230382 (=> (not res!2933518) (not e!4334414))))

(declare-fun s2!1849 () List!70052)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3391 ((InoxSet Context!14842) List!70052) Bool)

(assert (=> b!7230382 (= res!2933518 (matchZipper!3391 (store ((as const (Array Context!14842 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7230383 () Bool)

(declare-fun e!4334418 () Bool)

(assert (=> b!7230383 (= e!4334418 false)))

(declare-fun lt!2572901 () Bool)

(declare-fun lt!2572899 () (InoxSet Context!14842))

(declare-datatypes ((List!70053 0))(
  ( (Nil!69929) (Cons!69929 (h!76377 Context!14842) (t!384102 List!70053)) )
))
(declare-fun content!14360 (List!70053) (InoxSet Context!14842))

(declare-fun toList!11338 ((InoxSet Context!14842)) List!70053)

(assert (=> b!7230383 (= lt!2572901 (matchZipper!3391 (content!14360 (toList!11338 lt!2572899)) (t!384101 s1!1971)))))

(declare-fun res!2933517 () Bool)

(assert (=> start!701360 (=> (not res!2933517) (not e!4334414))))

(declare-fun lt!2572900 () (InoxSet Context!14842))

(assert (=> start!701360 (= res!2933517 (matchZipper!3391 lt!2572900 s1!1971))))

(assert (=> start!701360 (= lt!2572900 (store ((as const (Array Context!14842 Bool)) false) ct1!232 true))))

(assert (=> start!701360 e!4334414))

(declare-fun inv!89212 (Context!14842) Bool)

(assert (=> start!701360 (and (inv!89212 ct1!232) e!4334416)))

(declare-fun e!4334413 () Bool)

(assert (=> start!701360 e!4334413))

(declare-fun e!4334417 () Bool)

(assert (=> start!701360 e!4334417))

(declare-fun e!4334415 () Bool)

(assert (=> start!701360 (and (inv!89212 ct2!328) e!4334415)))

(declare-fun b!7230384 () Bool)

(declare-fun tp_is_empty!46427 () Bool)

(declare-fun tp!2033630 () Bool)

(assert (=> b!7230384 (= e!4334413 (and tp_is_empty!46427 tp!2033630))))

(declare-fun b!7230385 () Bool)

(declare-fun tp!2033629 () Bool)

(assert (=> b!7230385 (= e!4334415 tp!2033629)))

(declare-fun b!7230386 () Bool)

(assert (=> b!7230386 (= e!4334412 e!4334418)))

(declare-fun res!2933520 () Bool)

(assert (=> b!7230386 (=> (not res!2933520) (not e!4334418))))

(assert (=> b!7230386 (= res!2933520 (matchZipper!3391 lt!2572899 (t!384101 s1!1971)))))

(declare-fun derivationStepZipper!3273 ((InoxSet Context!14842) C!37236) (InoxSet Context!14842))

(assert (=> b!7230386 (= lt!2572899 (derivationStepZipper!3273 lt!2572900 (h!76376 s1!1971)))))

(declare-fun b!7230387 () Bool)

(declare-fun tp!2033632 () Bool)

(assert (=> b!7230387 (= e!4334417 (and tp_is_empty!46427 tp!2033632))))

(assert (= (and start!701360 res!2933517) b!7230382))

(assert (= (and b!7230382 res!2933518) b!7230380))

(assert (= (and b!7230380 res!2933519) b!7230386))

(assert (= (and b!7230386 res!2933520) b!7230383))

(assert (= start!701360 b!7230381))

(assert (= (and start!701360 ((_ is Cons!69928) s1!1971)) b!7230384))

(assert (= (and start!701360 ((_ is Cons!69928) s2!1849)) b!7230387))

(assert (= start!701360 b!7230385))

(declare-fun m!7898648 () Bool)

(assert (=> b!7230380 m!7898648))

(declare-fun m!7898650 () Bool)

(assert (=> b!7230380 m!7898650))

(declare-fun m!7898652 () Bool)

(assert (=> b!7230386 m!7898652))

(declare-fun m!7898654 () Bool)

(assert (=> b!7230386 m!7898654))

(declare-fun m!7898656 () Bool)

(assert (=> b!7230382 m!7898656))

(assert (=> b!7230382 m!7898656))

(declare-fun m!7898658 () Bool)

(assert (=> b!7230382 m!7898658))

(declare-fun m!7898660 () Bool)

(assert (=> start!701360 m!7898660))

(declare-fun m!7898662 () Bool)

(assert (=> start!701360 m!7898662))

(declare-fun m!7898664 () Bool)

(assert (=> start!701360 m!7898664))

(declare-fun m!7898666 () Bool)

(assert (=> start!701360 m!7898666))

(declare-fun m!7898668 () Bool)

(assert (=> b!7230383 m!7898668))

(assert (=> b!7230383 m!7898668))

(declare-fun m!7898670 () Bool)

(assert (=> b!7230383 m!7898670))

(assert (=> b!7230383 m!7898670))

(declare-fun m!7898672 () Bool)

(assert (=> b!7230383 m!7898672))

(check-sat (not b!7230384) tp_is_empty!46427 (not b!7230383) (not b!7230381) (not b!7230386) (not start!701360) (not b!7230382) (not b!7230387) (not b!7230385) (not b!7230380))
(check-sat)
