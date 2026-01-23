; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715640 () Bool)

(assert start!715640)

(declare-fun b!7329478 () Bool)

(declare-fun e!4388804 () Bool)

(declare-fun tp!2081096 () Bool)

(assert (=> b!7329478 (= e!4388804 tp!2081096)))

(declare-fun res!2962270 () Bool)

(declare-fun e!4388803 () Bool)

(assert (=> start!715640 (=> (not res!2962270) (not e!4388803))))

(declare-datatypes ((C!38326 0))(
  ( (C!38327 (val!29523 Int)) )
))
(declare-datatypes ((Regex!19026 0))(
  ( (ElementMatch!19026 (c!1360769 C!38326)) (Concat!27871 (regOne!38564 Regex!19026) (regTwo!38564 Regex!19026)) (EmptyExpr!19026) (Star!19026 (reg!19355 Regex!19026)) (EmptyLang!19026) (Union!19026 (regOne!38565 Regex!19026) (regTwo!38565 Regex!19026)) )
))
(declare-datatypes ((List!71522 0))(
  ( (Nil!71398) (Cons!71398 (h!77846 Regex!19026) (t!385909 List!71522)) )
))
(declare-datatypes ((Context!15932 0))(
  ( (Context!15933 (exprs!8466 List!71522)) )
))
(declare-fun cWitness!35 () Context!15932)

(declare-fun lt!2607296 () (Set Context!15932))

(assert (=> start!715640 (= res!2962270 (set.member cWitness!35 lt!2607296))))

(declare-fun ct1!256 () Context!15932)

(declare-fun c!10305 () C!38326)

(declare-fun derivationStepZipperUp!2706 (Context!15932 C!38326) (Set Context!15932))

(assert (=> start!715640 (= lt!2607296 (derivationStepZipperUp!2706 ct1!256 c!10305))))

(assert (=> start!715640 e!4388803))

(declare-fun tp_is_empty!48297 () Bool)

(assert (=> start!715640 tp_is_empty!48297))

(declare-fun inv!90906 (Context!15932) Bool)

(assert (=> start!715640 (and (inv!90906 cWitness!35) e!4388804)))

(declare-fun e!4388802 () Bool)

(assert (=> start!715640 (and (inv!90906 ct1!256) e!4388802)))

(declare-fun ct2!352 () Context!15932)

(declare-fun e!4388805 () Bool)

(assert (=> start!715640 (and (inv!90906 ct2!352) e!4388805)))

(declare-fun b!7329479 () Bool)

(declare-fun e!4388807 () Bool)

(declare-fun e!4388806 () Bool)

(assert (=> b!7329479 (= e!4388807 e!4388806)))

(declare-fun res!2962272 () Bool)

(assert (=> b!7329479 (=> (not res!2962272) (not e!4388806))))

(declare-fun nullable!8128 (Regex!19026) Bool)

(assert (=> b!7329479 (= res!2962272 (not (nullable!8128 (h!77846 (exprs!8466 ct1!256)))))))

(declare-fun lt!2607297 () (Set Context!15932))

(declare-fun derivationStepZipperDown!2855 (Regex!19026 Context!15932 C!38326) (Set Context!15932))

(declare-fun tail!14713 (List!71522) List!71522)

(assert (=> b!7329479 (= lt!2607297 (derivationStepZipperDown!2855 (h!77846 (exprs!8466 ct1!256)) (Context!15933 (tail!14713 (exprs!8466 ct1!256))) c!10305))))

(declare-fun b!7329480 () Bool)

(declare-fun tp!2081095 () Bool)

(assert (=> b!7329480 (= e!4388802 tp!2081095)))

(declare-fun b!7329481 () Bool)

(assert (=> b!7329481 (= e!4388803 e!4388807)))

(declare-fun res!2962269 () Bool)

(assert (=> b!7329481 (=> (not res!2962269) (not e!4388807))))

(assert (=> b!7329481 (= res!2962269 (is-Cons!71398 (exprs!8466 ct1!256)))))

(declare-fun lt!2607298 () List!71522)

(declare-fun ++!16850 (List!71522 List!71522) List!71522)

(assert (=> b!7329481 (= lt!2607298 (++!16850 (exprs!8466 ct1!256) (exprs!8466 ct2!352)))))

(declare-fun lambda!454495 () Int)

(declare-datatypes ((Unit!165017 0))(
  ( (Unit!165018) )
))
(declare-fun lt!2607295 () Unit!165017)

(declare-fun lemmaConcatPreservesForall!1707 (List!71522 List!71522 Int) Unit!165017)

(assert (=> b!7329481 (= lt!2607295 (lemmaConcatPreservesForall!1707 (exprs!8466 ct1!256) (exprs!8466 ct2!352) lambda!454495))))

(declare-fun b!7329482 () Bool)

(declare-fun tp!2081094 () Bool)

(assert (=> b!7329482 (= e!4388805 tp!2081094)))

(declare-fun b!7329483 () Bool)

(declare-fun res!2962271 () Bool)

(assert (=> b!7329483 (=> (not res!2962271) (not e!4388807))))

(declare-fun isEmpty!40942 (List!71522) Bool)

(assert (=> b!7329483 (= res!2962271 (not (isEmpty!40942 (exprs!8466 ct1!256))))))

(declare-fun b!7329484 () Bool)

(assert (=> b!7329484 (= e!4388806 (and (= lt!2607296 lt!2607297) (not (set.member cWitness!35 lt!2607297))))))

(assert (= (and start!715640 res!2962270) b!7329481))

(assert (= (and b!7329481 res!2962269) b!7329483))

(assert (= (and b!7329483 res!2962271) b!7329479))

(assert (= (and b!7329479 res!2962272) b!7329484))

(assert (= start!715640 b!7329478))

(assert (= start!715640 b!7329480))

(assert (= start!715640 b!7329482))

(declare-fun m!7995484 () Bool)

(assert (=> b!7329484 m!7995484))

(declare-fun m!7995486 () Bool)

(assert (=> b!7329483 m!7995486))

(declare-fun m!7995488 () Bool)

(assert (=> b!7329479 m!7995488))

(declare-fun m!7995490 () Bool)

(assert (=> b!7329479 m!7995490))

(declare-fun m!7995492 () Bool)

(assert (=> b!7329479 m!7995492))

(declare-fun m!7995494 () Bool)

(assert (=> b!7329481 m!7995494))

(declare-fun m!7995496 () Bool)

(assert (=> b!7329481 m!7995496))

(declare-fun m!7995498 () Bool)

(assert (=> start!715640 m!7995498))

(declare-fun m!7995500 () Bool)

(assert (=> start!715640 m!7995500))

(declare-fun m!7995502 () Bool)

(assert (=> start!715640 m!7995502))

(declare-fun m!7995504 () Bool)

(assert (=> start!715640 m!7995504))

(declare-fun m!7995506 () Bool)

(assert (=> start!715640 m!7995506))

(push 1)

(assert (not b!7329481))

(assert (not b!7329480))

(assert tp_is_empty!48297)

(assert (not b!7329479))

(assert (not b!7329478))

(assert (not start!715640))

(assert (not b!7329483))

(assert (not b!7329482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

