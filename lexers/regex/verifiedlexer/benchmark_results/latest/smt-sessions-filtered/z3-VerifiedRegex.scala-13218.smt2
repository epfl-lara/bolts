; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720052 () Bool)

(assert start!720052)

(declare-fun b!7380968 () Bool)

(declare-fun e!4418159 () Bool)

(declare-fun e!4418152 () Bool)

(assert (=> b!7380968 (= e!4418159 e!4418152)))

(declare-fun res!2977021 () Bool)

(assert (=> b!7380968 (=> (not res!2977021) (not e!4418152))))

(declare-datatypes ((C!38924 0))(
  ( (C!38925 (val!29822 Int)) )
))
(declare-datatypes ((Regex!19325 0))(
  ( (ElementMatch!19325 (c!1371881 C!38924)) (Concat!28170 (regOne!39162 Regex!19325) (regTwo!39162 Regex!19325)) (EmptyExpr!19325) (Star!19325 (reg!19654 Regex!19325)) (EmptyLang!19325) (Union!19325 (regOne!39163 Regex!19325) (regTwo!39163 Regex!19325)) )
))
(declare-fun lt!2616909 () Regex!19325)

(declare-fun validRegex!9921 (Regex!19325) Bool)

(assert (=> b!7380968 (= res!2977021 (validRegex!9921 lt!2616909))))

(declare-fun r1!2370 () Regex!19325)

(assert (=> b!7380968 (= lt!2616909 (Star!19325 (reg!19654 r1!2370)))))

(declare-fun b!7380969 () Bool)

(declare-fun e!4418156 () Bool)

(declare-fun tp!2099493 () Bool)

(assert (=> b!7380969 (= e!4418156 tp!2099493)))

(declare-fun b!7380970 () Bool)

(declare-fun e!4418154 () Bool)

(declare-fun tp!2099487 () Bool)

(declare-fun tp!2099489 () Bool)

(assert (=> b!7380970 (= e!4418154 (and tp!2099487 tp!2099489))))

(declare-fun b!7380971 () Bool)

(declare-fun e!4418160 () Bool)

(declare-fun e!4418157 () Bool)

(assert (=> b!7380971 (= e!4418160 e!4418157)))

(declare-fun res!2977020 () Bool)

(assert (=> b!7380971 (=> (not res!2977020) (not e!4418157))))

(declare-datatypes ((List!71821 0))(
  ( (Nil!71697) (Cons!71697 (h!78145 Regex!19325) (t!386312 List!71821)) )
))
(declare-datatypes ((Context!16530 0))(
  ( (Context!16531 (exprs!8765 List!71821)) )
))
(declare-fun cWitness!61 () Context!16530)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2616910 () (InoxSet Context!16530))

(assert (=> b!7380971 (= res!2977020 (select lt!2616910 cWitness!61))))

(declare-fun c!10362 () C!38924)

(declare-fun ct1!282 () Context!16530)

(declare-fun derivationStepZipperDown!3151 (Regex!19325 Context!16530 C!38924) (InoxSet Context!16530))

(assert (=> b!7380971 (= lt!2616910 (derivationStepZipperDown!3151 r1!2370 ct1!282 c!10362))))

(declare-fun b!7380972 () Bool)

(declare-fun tp!2099490 () Bool)

(assert (=> b!7380972 (= e!4418154 tp!2099490)))

(declare-fun res!2977018 () Bool)

(assert (=> start!720052 (=> (not res!2977018) (not e!4418160))))

(assert (=> start!720052 (= res!2977018 (validRegex!9921 r1!2370))))

(assert (=> start!720052 e!4418160))

(declare-fun tp_is_empty!48895 () Bool)

(assert (=> start!720052 tp_is_empty!48895))

(declare-fun e!4418153 () Bool)

(declare-fun inv!91652 (Context!16530) Bool)

(assert (=> start!720052 (and (inv!91652 cWitness!61) e!4418153)))

(declare-fun e!4418158 () Bool)

(assert (=> start!720052 (and (inv!91652 ct1!282) e!4418158)))

(assert (=> start!720052 e!4418154))

(declare-fun ct2!378 () Context!16530)

(assert (=> start!720052 (and (inv!91652 ct2!378) e!4418156)))

(declare-fun b!7380973 () Bool)

(declare-fun res!2977019 () Bool)

(assert (=> b!7380973 (=> (not res!2977019) (not e!4418159))))

(get-info :version)

(assert (=> b!7380973 (= res!2977019 (and (not ((_ is Concat!28170) r1!2370)) ((_ is Star!19325) r1!2370)))))

(declare-fun b!7380974 () Bool)

(assert (=> b!7380974 (= e!4418157 e!4418159)))

(declare-fun res!2977024 () Bool)

(assert (=> b!7380974 (=> (not res!2977024) (not e!4418159))))

(assert (=> b!7380974 (= res!2977024 (and (or (not ((_ is ElementMatch!19325) r1!2370)) (not (= c!10362 (c!1371881 r1!2370)))) (not ((_ is Union!19325) r1!2370))))))

(declare-fun lt!2616911 () (InoxSet Context!16530))

(declare-fun ++!17141 (List!71821 List!71821) List!71821)

(assert (=> b!7380974 (= lt!2616911 (derivationStepZipperDown!3151 r1!2370 (Context!16531 (++!17141 (exprs!8765 ct1!282) (exprs!8765 ct2!378))) c!10362))))

(declare-fun lambda!458541 () Int)

(declare-datatypes ((Unit!165599 0))(
  ( (Unit!165600) )
))
(declare-fun lt!2616913 () Unit!165599)

(declare-fun lemmaConcatPreservesForall!1998 (List!71821 List!71821 Int) Unit!165599)

(assert (=> b!7380974 (= lt!2616913 (lemmaConcatPreservesForall!1998 (exprs!8765 ct1!282) (exprs!8765 ct2!378) lambda!458541))))

(declare-fun b!7380975 () Bool)

(declare-fun e!4418151 () Bool)

(declare-fun nullable!8399 (Regex!19325) Bool)

(assert (=> b!7380975 (= e!4418151 (not (nullable!8399 (regOne!39162 r1!2370))))))

(declare-fun b!7380976 () Bool)

(declare-fun e!4418155 () Bool)

(assert (=> b!7380976 (= e!4418152 e!4418155)))

(declare-fun res!2977022 () Bool)

(assert (=> b!7380976 (=> (not res!2977022) (not e!4418155))))

(declare-fun lt!2616912 () (InoxSet Context!16530))

(assert (=> b!7380976 (= res!2977022 (= lt!2616910 lt!2616912))))

(declare-fun $colon$colon!3303 (List!71821 Regex!19325) List!71821)

(assert (=> b!7380976 (= lt!2616912 (derivationStepZipperDown!3151 (reg!19654 r1!2370) (Context!16531 ($colon$colon!3303 (exprs!8765 ct1!282) lt!2616909)) c!10362))))

(declare-fun b!7380977 () Bool)

(declare-fun res!2977023 () Bool)

(assert (=> b!7380977 (=> (not res!2977023) (not e!4418159))))

(assert (=> b!7380977 (= res!2977023 e!4418151)))

(declare-fun res!2977025 () Bool)

(assert (=> b!7380977 (=> res!2977025 e!4418151)))

(assert (=> b!7380977 (= res!2977025 (not ((_ is Concat!28170) r1!2370)))))

(declare-fun b!7380978 () Bool)

(declare-fun tp!2099486 () Bool)

(declare-fun tp!2099491 () Bool)

(assert (=> b!7380978 (= e!4418154 (and tp!2099486 tp!2099491))))

(declare-fun b!7380979 () Bool)

(declare-fun tp!2099492 () Bool)

(assert (=> b!7380979 (= e!4418158 tp!2099492)))

(declare-fun b!7380980 () Bool)

(declare-fun res!2977026 () Bool)

(assert (=> b!7380980 (=> (not res!2977026) (not e!4418155))))

(assert (=> b!7380980 (= res!2977026 (validRegex!9921 (reg!19654 r1!2370)))))

(declare-fun b!7380981 () Bool)

(declare-fun tp!2099488 () Bool)

(assert (=> b!7380981 (= e!4418153 tp!2099488)))

(declare-fun b!7380982 () Bool)

(assert (=> b!7380982 (= e!4418155 (not (select lt!2616912 cWitness!61)))))

(declare-fun b!7380983 () Bool)

(assert (=> b!7380983 (= e!4418154 tp_is_empty!48895)))

(assert (= (and start!720052 res!2977018) b!7380971))

(assert (= (and b!7380971 res!2977020) b!7380974))

(assert (= (and b!7380974 res!2977024) b!7380977))

(assert (= (and b!7380977 (not res!2977025)) b!7380975))

(assert (= (and b!7380977 res!2977023) b!7380973))

(assert (= (and b!7380973 res!2977019) b!7380968))

(assert (= (and b!7380968 res!2977021) b!7380976))

(assert (= (and b!7380976 res!2977022) b!7380980))

(assert (= (and b!7380980 res!2977026) b!7380982))

(assert (= start!720052 b!7380981))

(assert (= start!720052 b!7380979))

(assert (= (and start!720052 ((_ is ElementMatch!19325) r1!2370)) b!7380983))

(assert (= (and start!720052 ((_ is Concat!28170) r1!2370)) b!7380978))

(assert (= (and start!720052 ((_ is Star!19325) r1!2370)) b!7380972))

(assert (= (and start!720052 ((_ is Union!19325) r1!2370)) b!7380970))

(assert (= start!720052 b!7380969))

(declare-fun m!8030940 () Bool)

(assert (=> b!7380971 m!8030940))

(declare-fun m!8030942 () Bool)

(assert (=> b!7380971 m!8030942))

(declare-fun m!8030944 () Bool)

(assert (=> b!7380980 m!8030944))

(declare-fun m!8030946 () Bool)

(assert (=> b!7380976 m!8030946))

(declare-fun m!8030948 () Bool)

(assert (=> b!7380976 m!8030948))

(declare-fun m!8030950 () Bool)

(assert (=> b!7380968 m!8030950))

(declare-fun m!8030952 () Bool)

(assert (=> b!7380974 m!8030952))

(declare-fun m!8030954 () Bool)

(assert (=> b!7380974 m!8030954))

(declare-fun m!8030956 () Bool)

(assert (=> b!7380974 m!8030956))

(declare-fun m!8030958 () Bool)

(assert (=> b!7380982 m!8030958))

(declare-fun m!8030960 () Bool)

(assert (=> start!720052 m!8030960))

(declare-fun m!8030962 () Bool)

(assert (=> start!720052 m!8030962))

(declare-fun m!8030964 () Bool)

(assert (=> start!720052 m!8030964))

(declare-fun m!8030966 () Bool)

(assert (=> start!720052 m!8030966))

(declare-fun m!8030968 () Bool)

(assert (=> b!7380975 m!8030968))

(check-sat tp_is_empty!48895 (not b!7380969) (not b!7380979) (not b!7380976) (not b!7380974) (not b!7380968) (not b!7380972) (not b!7380981) (not b!7380975) (not b!7380970) (not b!7380980) (not start!720052) (not b!7380971) (not b!7380978))
(check-sat)
