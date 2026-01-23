; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!719556 () Bool)

(assert start!719556)

(declare-fun b!7373235 () Bool)

(declare-fun e!4413978 () Bool)

(assert (=> b!7373235 (= e!4413978 true)))

(declare-datatypes ((C!38852 0))(
  ( (C!38853 (val!29786 Int)) )
))
(declare-datatypes ((Regex!19289 0))(
  ( (ElementMatch!19289 (c!1370429 C!38852)) (Concat!28134 (regOne!39090 Regex!19289) (regTwo!39090 Regex!19289)) (EmptyExpr!19289) (Star!19289 (reg!19618 Regex!19289)) (EmptyLang!19289) (Union!19289 (regOne!39091 Regex!19289) (regTwo!39091 Regex!19289)) )
))
(declare-datatypes ((List!71785 0))(
  ( (Nil!71661) (Cons!71661 (h!78109 Regex!19289) (t!386256 List!71785)) )
))
(declare-datatypes ((Context!16458 0))(
  ( (Context!16459 (exprs!8729 List!71785)) )
))
(declare-fun ct2!378 () Context!16458)

(declare-datatypes ((Unit!165527 0))(
  ( (Unit!165528) )
))
(declare-fun lt!2616056 () Unit!165527)

(declare-fun ct1!282 () Context!16458)

(declare-fun lambda!458207 () Int)

(declare-fun lemmaConcatPreservesForall!1962 (List!71785 List!71785 Int) Unit!165527)

(assert (=> b!7373235 (= lt!2616056 (lemmaConcatPreservesForall!1962 (exprs!8729 ct1!282) (exprs!8729 ct2!378) lambda!458207))))

(declare-fun lt!2616051 () Unit!165527)

(declare-fun cWitness!61 () Context!16458)

(assert (=> b!7373235 (= lt!2616051 (lemmaConcatPreservesForall!1962 (exprs!8729 cWitness!61) (exprs!8729 ct2!378) lambda!458207))))

(declare-fun b!7373236 () Bool)

(declare-fun res!2974821 () Bool)

(declare-fun e!4413980 () Bool)

(assert (=> b!7373236 (=> (not res!2974821) (not e!4413980))))

(declare-fun r1!2370 () Regex!19289)

(declare-fun validRegex!9885 (Regex!19289) Bool)

(assert (=> b!7373236 (= res!2974821 (validRegex!9885 (regTwo!39090 r1!2370)))))

(declare-fun res!2974828 () Bool)

(declare-fun e!4413981 () Bool)

(assert (=> start!719556 (=> (not res!2974828) (not e!4413981))))

(assert (=> start!719556 (= res!2974828 (validRegex!9885 r1!2370))))

(assert (=> start!719556 e!4413981))

(declare-fun tp_is_empty!48823 () Bool)

(assert (=> start!719556 tp_is_empty!48823))

(declare-fun e!4413977 () Bool)

(declare-fun inv!91562 (Context!16458) Bool)

(assert (=> start!719556 (and (inv!91562 cWitness!61) e!4413977)))

(declare-fun e!4413976 () Bool)

(assert (=> start!719556 (and (inv!91562 ct1!282) e!4413976)))

(declare-fun e!4413984 () Bool)

(assert (=> start!719556 e!4413984))

(declare-fun e!4413979 () Bool)

(assert (=> start!719556 (and (inv!91562 ct2!378) e!4413979)))

(declare-fun b!7373237 () Bool)

(declare-fun e!4413982 () Bool)

(assert (=> b!7373237 (= e!4413982 (not e!4413978))))

(declare-fun res!2974823 () Bool)

(assert (=> b!7373237 (=> res!2974823 e!4413978)))

(declare-fun lt!2616050 () Context!16458)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2616055 () (InoxSet Context!16458))

(assert (=> b!7373237 (= res!2974823 (not (select lt!2616055 lt!2616050)))))

(declare-fun lt!2616052 () Unit!165527)

(assert (=> b!7373237 (= lt!2616052 (lemmaConcatPreservesForall!1962 (exprs!8729 cWitness!61) (exprs!8729 ct2!378) lambda!458207))))

(declare-fun c!10362 () C!38852)

(declare-fun lt!2616049 () Context!16458)

(declare-fun derivationStepZipperDown!3115 (Regex!19289 Context!16458 C!38852) (InoxSet Context!16458))

(assert (=> b!7373237 (select (derivationStepZipperDown!3115 (regTwo!39090 r1!2370) lt!2616049 c!10362) lt!2616050)))

(declare-fun ++!17105 (List!71785 List!71785) List!71785)

(assert (=> b!7373237 (= lt!2616050 (Context!16459 (++!17105 (exprs!8729 cWitness!61) (exprs!8729 ct2!378))))))

(declare-fun lt!2616058 () Unit!165527)

(assert (=> b!7373237 (= lt!2616058 (lemmaConcatPreservesForall!1962 (exprs!8729 ct1!282) (exprs!8729 ct2!378) lambda!458207))))

(declare-fun lt!2616059 () Unit!165527)

(assert (=> b!7373237 (= lt!2616059 (lemmaConcatPreservesForall!1962 (exprs!8729 cWitness!61) (exprs!8729 ct2!378) lambda!458207))))

(declare-fun lt!2616048 () Unit!165527)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!144 (Regex!19289 Context!16458 Context!16458 Context!16458 C!38852) Unit!165527)

(assert (=> b!7373237 (= lt!2616048 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!144 (regTwo!39090 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7373238 () Bool)

(declare-fun res!2974825 () Bool)

(assert (=> b!7373238 (=> (not res!2974825) (not e!4413982))))

(declare-fun lt!2616054 () (InoxSet Context!16458))

(assert (=> b!7373238 (= res!2974825 (not (select lt!2616054 cWitness!61)))))

(declare-fun b!7373239 () Bool)

(assert (=> b!7373239 (= e!4413984 tp_is_empty!48823)))

(declare-fun b!7373240 () Bool)

(declare-fun tp!2096179 () Bool)

(declare-fun tp!2096174 () Bool)

(assert (=> b!7373240 (= e!4413984 (and tp!2096179 tp!2096174))))

(declare-fun b!7373241 () Bool)

(declare-fun res!2974827 () Bool)

(assert (=> b!7373241 (=> (not res!2974827) (not e!4413980))))

(declare-fun nullable!8365 (Regex!19289) Bool)

(assert (=> b!7373241 (= res!2974827 (nullable!8365 (regOne!39090 r1!2370)))))

(declare-fun b!7373242 () Bool)

(assert (=> b!7373242 (= e!4413980 e!4413982)))

(declare-fun res!2974826 () Bool)

(assert (=> b!7373242 (=> (not res!2974826) (not e!4413982))))

(declare-fun lt!2616057 () (InoxSet Context!16458))

(assert (=> b!7373242 (= res!2974826 (= lt!2616057 ((_ map or) lt!2616054 (derivationStepZipperDown!3115 (regTwo!39090 r1!2370) ct1!282 c!10362))))))

(declare-fun $colon$colon!3271 (List!71785 Regex!19289) List!71785)

(assert (=> b!7373242 (= lt!2616054 (derivationStepZipperDown!3115 (regOne!39090 r1!2370) (Context!16459 ($colon$colon!3271 (exprs!8729 ct1!282) (regTwo!39090 r1!2370))) c!10362))))

(declare-fun b!7373243 () Bool)

(declare-fun tp!2096175 () Bool)

(assert (=> b!7373243 (= e!4413979 tp!2096175)))

(declare-fun b!7373244 () Bool)

(declare-fun tp!2096177 () Bool)

(assert (=> b!7373244 (= e!4413976 tp!2096177)))

(declare-fun b!7373245 () Bool)

(declare-fun tp!2096173 () Bool)

(assert (=> b!7373245 (= e!4413984 tp!2096173)))

(declare-fun b!7373246 () Bool)

(declare-fun tp!2096176 () Bool)

(declare-fun tp!2096172 () Bool)

(assert (=> b!7373246 (= e!4413984 (and tp!2096176 tp!2096172))))

(declare-fun b!7373247 () Bool)

(declare-fun tp!2096178 () Bool)

(assert (=> b!7373247 (= e!4413977 tp!2096178)))

(declare-fun b!7373248 () Bool)

(declare-fun e!4413983 () Bool)

(assert (=> b!7373248 (= e!4413981 e!4413983)))

(declare-fun res!2974822 () Bool)

(assert (=> b!7373248 (=> (not res!2974822) (not e!4413983))))

(assert (=> b!7373248 (= res!2974822 (select lt!2616057 cWitness!61))))

(assert (=> b!7373248 (= lt!2616057 (derivationStepZipperDown!3115 r1!2370 ct1!282 c!10362))))

(declare-fun b!7373249 () Bool)

(assert (=> b!7373249 (= e!4413983 e!4413980)))

(declare-fun res!2974824 () Bool)

(assert (=> b!7373249 (=> (not res!2974824) (not e!4413980))))

(get-info :version)

(assert (=> b!7373249 (= res!2974824 (and (or (not ((_ is ElementMatch!19289) r1!2370)) (not (= c!10362 (c!1370429 r1!2370)))) (not ((_ is Union!19289) r1!2370)) ((_ is Concat!28134) r1!2370)))))

(assert (=> b!7373249 (= lt!2616055 (derivationStepZipperDown!3115 r1!2370 lt!2616049 c!10362))))

(assert (=> b!7373249 (= lt!2616049 (Context!16459 (++!17105 (exprs!8729 ct1!282) (exprs!8729 ct2!378))))))

(declare-fun lt!2616053 () Unit!165527)

(assert (=> b!7373249 (= lt!2616053 (lemmaConcatPreservesForall!1962 (exprs!8729 ct1!282) (exprs!8729 ct2!378) lambda!458207))))

(assert (= (and start!719556 res!2974828) b!7373248))

(assert (= (and b!7373248 res!2974822) b!7373249))

(assert (= (and b!7373249 res!2974824) b!7373241))

(assert (= (and b!7373241 res!2974827) b!7373236))

(assert (= (and b!7373236 res!2974821) b!7373242))

(assert (= (and b!7373242 res!2974826) b!7373238))

(assert (= (and b!7373238 res!2974825) b!7373237))

(assert (= (and b!7373237 (not res!2974823)) b!7373235))

(assert (= start!719556 b!7373247))

(assert (= start!719556 b!7373244))

(assert (= (and start!719556 ((_ is ElementMatch!19289) r1!2370)) b!7373239))

(assert (= (and start!719556 ((_ is Concat!28134) r1!2370)) b!7373240))

(assert (= (and start!719556 ((_ is Star!19289) r1!2370)) b!7373245))

(assert (= (and start!719556 ((_ is Union!19289) r1!2370)) b!7373246))

(assert (= start!719556 b!7373243))

(declare-fun m!8026372 () Bool)

(assert (=> b!7373238 m!8026372))

(declare-fun m!8026374 () Bool)

(assert (=> start!719556 m!8026374))

(declare-fun m!8026376 () Bool)

(assert (=> start!719556 m!8026376))

(declare-fun m!8026378 () Bool)

(assert (=> start!719556 m!8026378))

(declare-fun m!8026380 () Bool)

(assert (=> start!719556 m!8026380))

(declare-fun m!8026382 () Bool)

(assert (=> b!7373249 m!8026382))

(declare-fun m!8026384 () Bool)

(assert (=> b!7373249 m!8026384))

(declare-fun m!8026386 () Bool)

(assert (=> b!7373249 m!8026386))

(declare-fun m!8026388 () Bool)

(assert (=> b!7373241 m!8026388))

(declare-fun m!8026390 () Bool)

(assert (=> b!7373248 m!8026390))

(declare-fun m!8026392 () Bool)

(assert (=> b!7373248 m!8026392))

(declare-fun m!8026394 () Bool)

(assert (=> b!7373237 m!8026394))

(assert (=> b!7373237 m!8026386))

(declare-fun m!8026396 () Bool)

(assert (=> b!7373237 m!8026396))

(declare-fun m!8026398 () Bool)

(assert (=> b!7373237 m!8026398))

(assert (=> b!7373237 m!8026394))

(declare-fun m!8026400 () Bool)

(assert (=> b!7373237 m!8026400))

(declare-fun m!8026402 () Bool)

(assert (=> b!7373237 m!8026402))

(declare-fun m!8026404 () Bool)

(assert (=> b!7373237 m!8026404))

(declare-fun m!8026406 () Bool)

(assert (=> b!7373242 m!8026406))

(declare-fun m!8026408 () Bool)

(assert (=> b!7373242 m!8026408))

(declare-fun m!8026410 () Bool)

(assert (=> b!7373242 m!8026410))

(declare-fun m!8026412 () Bool)

(assert (=> b!7373236 m!8026412))

(assert (=> b!7373235 m!8026386))

(assert (=> b!7373235 m!8026394))

(check-sat (not b!7373242) (not start!719556) (not b!7373243) (not b!7373244) (not b!7373241) (not b!7373235) (not b!7373246) (not b!7373248) tp_is_empty!48823 (not b!7373245) (not b!7373236) (not b!7373247) (not b!7373240) (not b!7373237) (not b!7373249))
(check-sat)
