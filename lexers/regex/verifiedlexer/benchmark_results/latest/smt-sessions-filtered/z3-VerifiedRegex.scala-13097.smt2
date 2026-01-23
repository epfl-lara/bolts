; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!716628 () Bool)

(assert start!716628)

(declare-fun res!2964315 () Bool)

(declare-fun e!4393026 () Bool)

(assert (=> start!716628 (=> (not res!2964315) (not e!4393026))))

(declare-datatypes ((C!38440 0))(
  ( (C!38441 (val!29580 Int)) )
))
(declare-datatypes ((Regex!19083 0))(
  ( (ElementMatch!19083 (c!1362607 C!38440)) (Concat!27928 (regOne!38678 Regex!19083) (regTwo!38678 Regex!19083)) (EmptyExpr!19083) (Star!19083 (reg!19412 Regex!19083)) (EmptyLang!19083) (Union!19083 (regOne!38679 Regex!19083) (regTwo!38679 Regex!19083)) )
))
(declare-fun r1!2370 () Regex!19083)

(declare-fun validRegex!9679 (Regex!19083) Bool)

(assert (=> start!716628 (= res!2964315 (validRegex!9679 r1!2370))))

(assert (=> start!716628 e!4393026))

(declare-fun tp_is_empty!48411 () Bool)

(assert (=> start!716628 tp_is_empty!48411))

(declare-datatypes ((List!71579 0))(
  ( (Nil!71455) (Cons!71455 (h!77903 Regex!19083) (t!385974 List!71579)) )
))
(declare-datatypes ((Context!16046 0))(
  ( (Context!16047 (exprs!8523 List!71579)) )
))
(declare-fun cWitness!61 () Context!16046)

(declare-fun e!4393028 () Bool)

(declare-fun inv!91047 (Context!16046) Bool)

(assert (=> start!716628 (and (inv!91047 cWitness!61) e!4393028)))

(declare-fun ct1!282 () Context!16046)

(declare-fun e!4393024 () Bool)

(assert (=> start!716628 (and (inv!91047 ct1!282) e!4393024)))

(declare-fun e!4393025 () Bool)

(assert (=> start!716628 e!4393025))

(declare-fun ct2!378 () Context!16046)

(declare-fun e!4393027 () Bool)

(assert (=> start!716628 (and (inv!91047 ct2!378) e!4393027)))

(declare-fun b!7336321 () Bool)

(declare-fun tp!2082624 () Bool)

(declare-fun tp!2082623 () Bool)

(assert (=> b!7336321 (= e!4393025 (and tp!2082624 tp!2082623))))

(declare-fun b!7336322 () Bool)

(assert (=> b!7336322 (= e!4393025 tp_is_empty!48411)))

(declare-fun b!7336323 () Bool)

(declare-fun tp!2082627 () Bool)

(declare-fun tp!2082622 () Bool)

(assert (=> b!7336323 (= e!4393025 (and tp!2082627 tp!2082622))))

(declare-fun b!7336324 () Bool)

(declare-fun res!2964316 () Bool)

(assert (=> b!7336324 (=> (not res!2964316) (not e!4393026))))

(declare-fun c!10362 () C!38440)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2909 (Regex!19083 Context!16046 C!38440) (InoxSet Context!16046))

(assert (=> b!7336324 (= res!2964316 (select (derivationStepZipperDown!2909 r1!2370 ct1!282 c!10362) cWitness!61))))

(declare-fun b!7336325 () Bool)

(declare-fun tp!2082629 () Bool)

(assert (=> b!7336325 (= e!4393024 tp!2082629)))

(declare-fun b!7336326 () Bool)

(declare-fun tp!2082626 () Bool)

(assert (=> b!7336326 (= e!4393028 tp!2082626)))

(declare-fun b!7336327 () Bool)

(declare-fun tp!2082625 () Bool)

(assert (=> b!7336327 (= e!4393025 tp!2082625)))

(declare-fun b!7336328 () Bool)

(assert (=> b!7336328 (= e!4393026 false)))

(declare-fun lt!2609273 () List!71579)

(declare-fun ++!16901 (List!71579 List!71579) List!71579)

(assert (=> b!7336328 (= lt!2609273 (++!16901 (exprs!8523 ct1!282) (exprs!8523 ct2!378)))))

(declare-fun lambda!455227 () Int)

(declare-datatypes ((Unit!165119 0))(
  ( (Unit!165120) )
))
(declare-fun lt!2609272 () Unit!165119)

(declare-fun lemmaConcatPreservesForall!1758 (List!71579 List!71579 Int) Unit!165119)

(assert (=> b!7336328 (= lt!2609272 (lemmaConcatPreservesForall!1758 (exprs!8523 ct1!282) (exprs!8523 ct2!378) lambda!455227))))

(declare-fun b!7336329 () Bool)

(declare-fun tp!2082628 () Bool)

(assert (=> b!7336329 (= e!4393027 tp!2082628)))

(assert (= (and start!716628 res!2964315) b!7336324))

(assert (= (and b!7336324 res!2964316) b!7336328))

(assert (= start!716628 b!7336326))

(assert (= start!716628 b!7336325))

(get-info :version)

(assert (= (and start!716628 ((_ is ElementMatch!19083) r1!2370)) b!7336322))

(assert (= (and start!716628 ((_ is Concat!27928) r1!2370)) b!7336323))

(assert (= (and start!716628 ((_ is Star!19083) r1!2370)) b!7336327))

(assert (= (and start!716628 ((_ is Union!19083) r1!2370)) b!7336321))

(assert (= start!716628 b!7336329))

(declare-fun m!8002018 () Bool)

(assert (=> start!716628 m!8002018))

(declare-fun m!8002020 () Bool)

(assert (=> start!716628 m!8002020))

(declare-fun m!8002022 () Bool)

(assert (=> start!716628 m!8002022))

(declare-fun m!8002024 () Bool)

(assert (=> start!716628 m!8002024))

(declare-fun m!8002026 () Bool)

(assert (=> b!7336324 m!8002026))

(declare-fun m!8002028 () Bool)

(assert (=> b!7336324 m!8002028))

(declare-fun m!8002030 () Bool)

(assert (=> b!7336328 m!8002030))

(declare-fun m!8002032 () Bool)

(assert (=> b!7336328 m!8002032))

(check-sat (not b!7336324) (not b!7336323) (not b!7336327) (not b!7336325) (not b!7336326) (not b!7336321) (not b!7336328) (not start!716628) tp_is_empty!48411 (not b!7336329))
(check-sat)
