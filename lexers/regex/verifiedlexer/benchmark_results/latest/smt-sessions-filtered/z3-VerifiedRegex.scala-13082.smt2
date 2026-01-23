; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!716084 () Bool)

(assert start!716084)

(declare-fun b!7332378 () Bool)

(declare-fun e!4390665 () Bool)

(declare-fun tp!2081733 () Bool)

(assert (=> b!7332378 (= e!4390665 tp!2081733)))

(declare-fun b!7332379 () Bool)

(declare-fun res!2963160 () Bool)

(declare-fun e!4390669 () Bool)

(assert (=> b!7332379 (=> (not res!2963160) (not e!4390669))))

(declare-datatypes ((C!38380 0))(
  ( (C!38381 (val!29550 Int)) )
))
(declare-datatypes ((Regex!19053 0))(
  ( (ElementMatch!19053 (c!1361541 C!38380)) (Concat!27898 (regOne!38618 Regex!19053) (regTwo!38618 Regex!19053)) (EmptyExpr!19053) (Star!19053 (reg!19382 Regex!19053)) (EmptyLang!19053) (Union!19053 (regOne!38619 Regex!19053) (regTwo!38619 Regex!19053)) )
))
(declare-datatypes ((List!71549 0))(
  ( (Nil!71425) (Cons!71425 (h!77873 Regex!19053) (t!385940 List!71549)) )
))
(declare-datatypes ((Context!15986 0))(
  ( (Context!15987 (exprs!8493 List!71549)) )
))
(declare-fun ct1!256 () Context!15986)

(declare-fun isEmpty!40965 (List!71549) Bool)

(assert (=> b!7332379 (= res!2963160 (not (isEmpty!40965 (exprs!8493 ct1!256))))))

(declare-fun b!7332380 () Bool)

(declare-fun e!4390664 () Bool)

(declare-fun tp!2081735 () Bool)

(assert (=> b!7332380 (= e!4390664 tp!2081735)))

(declare-fun b!7332381 () Bool)

(declare-fun res!2963161 () Bool)

(declare-fun e!4390663 () Bool)

(assert (=> b!7332381 (=> (not res!2963161) (not e!4390663))))

(declare-fun lt!2608144 () List!71549)

(assert (=> b!7332381 (= res!2963161 (not (isEmpty!40965 lt!2608144)))))

(declare-fun b!7332382 () Bool)

(declare-fun e!4390668 () Bool)

(declare-fun lt!2608141 () Bool)

(assert (=> b!7332382 (= e!4390668 (not lt!2608141))))

(declare-fun b!7332383 () Bool)

(declare-fun e!4390667 () Bool)

(assert (=> b!7332383 (= e!4390667 e!4390663)))

(declare-fun res!2963162 () Bool)

(assert (=> b!7332383 (=> (not res!2963162) (not e!4390663))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2608142 () (InoxSet Context!15986))

(declare-fun cWitness!35 () Context!15986)

(assert (=> b!7332383 (= res!2963162 (and (or lt!2608141 (select lt!2608142 cWitness!35)) (not (select lt!2608142 cWitness!35))))))

(declare-fun lt!2608145 () (InoxSet Context!15986))

(assert (=> b!7332383 (= lt!2608141 (select lt!2608145 cWitness!35))))

(declare-fun b!7332384 () Bool)

(declare-fun e!4390666 () Bool)

(declare-fun tp!2081734 () Bool)

(assert (=> b!7332384 (= e!4390666 tp!2081734)))

(declare-fun b!7332385 () Bool)

(declare-fun e!4390670 () Bool)

(assert (=> b!7332385 (= e!4390670 e!4390667)))

(declare-fun res!2963158 () Bool)

(assert (=> b!7332385 (=> (not res!2963158) (not e!4390667))))

(declare-fun lt!2608143 () (InoxSet Context!15986))

(assert (=> b!7332385 (= res!2963158 (= lt!2608143 ((_ map or) lt!2608145 lt!2608142)))))

(declare-fun lt!2608140 () Context!15986)

(declare-fun c!10305 () C!38380)

(declare-fun derivationStepZipperUp!2733 (Context!15986 C!38380) (InoxSet Context!15986))

(assert (=> b!7332385 (= lt!2608142 (derivationStepZipperUp!2733 lt!2608140 c!10305))))

(declare-fun b!7332386 () Bool)

(assert (=> b!7332386 (= e!4390669 e!4390670)))

(declare-fun res!2963157 () Bool)

(assert (=> b!7332386 (=> (not res!2963157) (not e!4390670))))

(declare-fun nullable!8154 (Regex!19053) Bool)

(assert (=> b!7332386 (= res!2963157 (nullable!8154 (h!77873 (exprs!8493 ct1!256))))))

(declare-fun derivationStepZipperDown!2880 (Regex!19053 Context!15986 C!38380) (InoxSet Context!15986))

(assert (=> b!7332386 (= lt!2608145 (derivationStepZipperDown!2880 (h!77873 (exprs!8493 ct1!256)) lt!2608140 c!10305))))

(declare-fun tail!14734 (List!71549) List!71549)

(assert (=> b!7332386 (= lt!2608140 (Context!15987 (tail!14734 (exprs!8493 ct1!256))))))

(declare-fun b!7332387 () Bool)

(declare-fun e!4390662 () Bool)

(assert (=> b!7332387 (= e!4390662 e!4390669)))

(declare-fun res!2963163 () Bool)

(assert (=> b!7332387 (=> (not res!2963163) (not e!4390669))))

(get-info :version)

(assert (=> b!7332387 (= res!2963163 ((_ is Cons!71425) (exprs!8493 ct1!256)))))

(declare-fun ct2!352 () Context!15986)

(declare-fun ++!16875 (List!71549 List!71549) List!71549)

(assert (=> b!7332387 (= lt!2608144 (++!16875 (exprs!8493 ct1!256) (exprs!8493 ct2!352)))))

(declare-fun lambda!454781 () Int)

(declare-datatypes ((Unit!165067 0))(
  ( (Unit!165068) )
))
(declare-fun lt!2608146 () Unit!165067)

(declare-fun lemmaConcatPreservesForall!1732 (List!71549 List!71549 Int) Unit!165067)

(assert (=> b!7332387 (= lt!2608146 (lemmaConcatPreservesForall!1732 (exprs!8493 ct1!256) (exprs!8493 ct2!352) lambda!454781))))

(declare-fun res!2963159 () Bool)

(assert (=> start!716084 (=> (not res!2963159) (not e!4390662))))

(assert (=> start!716084 (= res!2963159 (select lt!2608143 cWitness!35))))

(assert (=> start!716084 (= lt!2608143 (derivationStepZipperUp!2733 ct1!256 c!10305))))

(assert (=> start!716084 e!4390662))

(declare-fun tp_is_empty!48351 () Bool)

(assert (=> start!716084 tp_is_empty!48351))

(declare-fun inv!90972 (Context!15986) Bool)

(assert (=> start!716084 (and (inv!90972 cWitness!35) e!4390664)))

(assert (=> start!716084 (and (inv!90972 ct1!256) e!4390666)))

(assert (=> start!716084 (and (inv!90972 ct2!352) e!4390665)))

(declare-fun b!7332377 () Bool)

(assert (=> b!7332377 (= e!4390663 e!4390668)))

(declare-fun res!2963164 () Bool)

(assert (=> b!7332377 (=> (not res!2963164) (not e!4390668))))

(declare-fun validRegex!9657 (Regex!19053) Bool)

(assert (=> b!7332377 (= res!2963164 (validRegex!9657 (h!77873 (exprs!8493 ct1!256))))))

(declare-fun lt!2608147 () (InoxSet Context!15986))

(assert (=> b!7332377 (= lt!2608147 (derivationStepZipperDown!2880 (h!77873 (exprs!8493 ct1!256)) (Context!15987 (tail!14734 lt!2608144)) c!10305))))

(assert (= (and start!716084 res!2963159) b!7332387))

(assert (= (and b!7332387 res!2963163) b!7332379))

(assert (= (and b!7332379 res!2963160) b!7332386))

(assert (= (and b!7332386 res!2963157) b!7332385))

(assert (= (and b!7332385 res!2963158) b!7332383))

(assert (= (and b!7332383 res!2963162) b!7332381))

(assert (= (and b!7332381 res!2963161) b!7332377))

(assert (= (and b!7332377 res!2963164) b!7332382))

(assert (= start!716084 b!7332380))

(assert (= start!716084 b!7332384))

(assert (= start!716084 b!7332378))

(declare-fun m!7998250 () Bool)

(assert (=> b!7332386 m!7998250))

(declare-fun m!7998252 () Bool)

(assert (=> b!7332386 m!7998252))

(declare-fun m!7998254 () Bool)

(assert (=> b!7332386 m!7998254))

(declare-fun m!7998256 () Bool)

(assert (=> b!7332377 m!7998256))

(declare-fun m!7998258 () Bool)

(assert (=> b!7332377 m!7998258))

(declare-fun m!7998260 () Bool)

(assert (=> b!7332377 m!7998260))

(declare-fun m!7998262 () Bool)

(assert (=> b!7332385 m!7998262))

(declare-fun m!7998264 () Bool)

(assert (=> b!7332383 m!7998264))

(declare-fun m!7998266 () Bool)

(assert (=> b!7332383 m!7998266))

(declare-fun m!7998268 () Bool)

(assert (=> b!7332381 m!7998268))

(declare-fun m!7998270 () Bool)

(assert (=> start!716084 m!7998270))

(declare-fun m!7998272 () Bool)

(assert (=> start!716084 m!7998272))

(declare-fun m!7998274 () Bool)

(assert (=> start!716084 m!7998274))

(declare-fun m!7998276 () Bool)

(assert (=> start!716084 m!7998276))

(declare-fun m!7998278 () Bool)

(assert (=> start!716084 m!7998278))

(declare-fun m!7998280 () Bool)

(assert (=> b!7332387 m!7998280))

(declare-fun m!7998282 () Bool)

(assert (=> b!7332387 m!7998282))

(declare-fun m!7998284 () Bool)

(assert (=> b!7332379 m!7998284))

(check-sat (not b!7332378) (not b!7332381) tp_is_empty!48351 (not b!7332387) (not b!7332386) (not b!7332379) (not b!7332384) (not b!7332385) (not b!7332380) (not start!716084) (not b!7332377))
(check-sat)
