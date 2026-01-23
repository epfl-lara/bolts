; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732898 () Bool)

(assert start!732898)

(declare-fun b!7601355 () Bool)

(assert (=> b!7601355 true))

(assert (=> b!7601355 true))

(assert (=> b!7601355 true))

(declare-fun bs!1942417 () Bool)

(declare-fun b!7601352 () Bool)

(assert (= bs!1942417 (and b!7601352 b!7601355)))

(declare-fun lambda!467665 () Int)

(declare-fun lambda!467664 () Int)

(assert (=> bs!1942417 (not (= lambda!467665 lambda!467664))))

(assert (=> b!7601352 true))

(assert (=> b!7601352 true))

(assert (=> b!7601352 true))

(declare-fun b!7601342 () Bool)

(declare-fun e!4522253 () Bool)

(assert (=> b!7601342 (= e!4522253 false)))

(declare-datatypes ((C!40634 0))(
  ( (C!40635 (val!30757 Int)) )
))
(declare-datatypes ((List!73037 0))(
  ( (Nil!72913) (Cons!72913 (h!79361 C!40634) (t!387772 List!73037)) )
))
(declare-datatypes ((tuple2!69022 0))(
  ( (tuple2!69023 (_1!37814 List!73037) (_2!37814 List!73037)) )
))
(declare-fun lt!2654339 () tuple2!69022)

(declare-fun pickWitness!405 (Int) tuple2!69022)

(assert (=> b!7601342 (= lt!2654339 (pickWitness!405 lambda!467665))))

(declare-fun b!7601343 () Bool)

(declare-fun e!4522251 () Bool)

(declare-fun tp!2216328 () Bool)

(declare-fun tp!2216326 () Bool)

(assert (=> b!7601343 (= e!4522251 (and tp!2216328 tp!2216326))))

(declare-fun res!3043592 () Bool)

(assert (=> start!732898 (=> (not res!3043592) (not e!4522253))))

(declare-datatypes ((Regex!20154 0))(
  ( (ElementMatch!20154 (c!1402243 C!40634)) (Concat!28999 (regOne!40820 Regex!20154) (regTwo!40820 Regex!20154)) (EmptyExpr!20154) (Star!20154 (reg!20483 Regex!20154)) (EmptyLang!20154) (Union!20154 (regOne!40821 Regex!20154) (regTwo!40821 Regex!20154)) )
))
(declare-fun r1!3349 () Regex!20154)

(declare-fun validRegex!10582 (Regex!20154) Bool)

(assert (=> start!732898 (= res!3043592 (validRegex!10582 r1!3349))))

(assert (=> start!732898 e!4522253))

(assert (=> start!732898 e!4522251))

(declare-fun e!4522252 () Bool)

(assert (=> start!732898 e!4522252))

(declare-fun e!4522250 () Bool)

(assert (=> start!732898 e!4522250))

(declare-fun b!7601344 () Bool)

(declare-fun tp!2216323 () Bool)

(declare-fun tp!2216322 () Bool)

(assert (=> b!7601344 (= e!4522252 (and tp!2216323 tp!2216322))))

(declare-fun b!7601345 () Bool)

(declare-fun tp!2216325 () Bool)

(assert (=> b!7601345 (= e!4522252 tp!2216325)))

(declare-fun b!7601346 () Bool)

(declare-fun res!3043589 () Bool)

(assert (=> b!7601346 (=> (not res!3043589) (not e!4522253))))

(declare-fun r2!3249 () Regex!20154)

(assert (=> b!7601346 (= res!3043589 (validRegex!10582 r2!3249))))

(declare-fun b!7601347 () Bool)

(declare-fun tp!2216330 () Bool)

(declare-fun tp!2216324 () Bool)

(assert (=> b!7601347 (= e!4522251 (and tp!2216330 tp!2216324))))

(declare-fun b!7601348 () Bool)

(declare-fun tp_is_empty!50663 () Bool)

(declare-fun tp!2216320 () Bool)

(assert (=> b!7601348 (= e!4522250 (and tp_is_empty!50663 tp!2216320))))

(declare-fun b!7601349 () Bool)

(declare-fun tp!2216321 () Bool)

(assert (=> b!7601349 (= e!4522251 tp!2216321)))

(declare-fun b!7601350 () Bool)

(declare-fun res!3043593 () Bool)

(assert (=> b!7601350 (=> (not res!3043593) (not e!4522253))))

(declare-fun Exists!4382 (Int) Bool)

(assert (=> b!7601350 (= res!3043593 (not (Exists!4382 lambda!467664)))))

(declare-fun b!7601351 () Bool)

(assert (=> b!7601351 (= e!4522251 tp_is_empty!50663)))

(declare-fun res!3043591 () Bool)

(assert (=> b!7601352 (=> (not res!3043591) (not e!4522253))))

(assert (=> b!7601352 (= res!3043591 (Exists!4382 lambda!467665))))

(declare-fun b!7601353 () Bool)

(assert (=> b!7601353 (= e!4522252 tp_is_empty!50663)))

(declare-fun b!7601354 () Bool)

(declare-fun tp!2216329 () Bool)

(declare-fun tp!2216327 () Bool)

(assert (=> b!7601354 (= e!4522252 (and tp!2216329 tp!2216327))))

(declare-fun res!3043590 () Bool)

(assert (=> b!7601355 (=> (not res!3043590) (not e!4522253))))

(assert (=> b!7601355 (= res!3043590 (not (Exists!4382 lambda!467664)))))

(assert (= (and start!732898 res!3043592) b!7601346))

(assert (= (and b!7601346 res!3043589) b!7601355))

(assert (= (and b!7601355 res!3043590) b!7601350))

(assert (= (and b!7601350 res!3043593) b!7601352))

(assert (= (and b!7601352 res!3043591) b!7601342))

(assert (= (and start!732898 (is-ElementMatch!20154 r1!3349)) b!7601351))

(assert (= (and start!732898 (is-Concat!28999 r1!3349)) b!7601347))

(assert (= (and start!732898 (is-Star!20154 r1!3349)) b!7601349))

(assert (= (and start!732898 (is-Union!20154 r1!3349)) b!7601343))

(assert (= (and start!732898 (is-ElementMatch!20154 r2!3249)) b!7601353))

(assert (= (and start!732898 (is-Concat!28999 r2!3249)) b!7601354))

(assert (= (and start!732898 (is-Star!20154 r2!3249)) b!7601345))

(assert (= (and start!732898 (is-Union!20154 r2!3249)) b!7601344))

(declare-fun s!10235 () List!73037)

(assert (= (and start!732898 (is-Cons!72913 s!10235)) b!7601348))

(declare-fun m!8145130 () Bool)

(assert (=> b!7601350 m!8145130))

(assert (=> b!7601355 m!8145130))

(declare-fun m!8145132 () Bool)

(assert (=> b!7601352 m!8145132))

(declare-fun m!8145134 () Bool)

(assert (=> start!732898 m!8145134))

(declare-fun m!8145136 () Bool)

(assert (=> b!7601346 m!8145136))

(declare-fun m!8145138 () Bool)

(assert (=> b!7601342 m!8145138))

(push 1)

(assert (not b!7601344))

(assert (not b!7601348))

(assert (not start!732898))

(assert (not b!7601346))

(assert (not b!7601345))

(assert (not b!7601355))

(assert (not b!7601343))

(assert (not b!7601347))

(assert (not b!7601352))

(assert (not b!7601349))

(assert (not b!7601342))

(assert (not b!7601354))

(assert (not b!7601350))

(assert tp_is_empty!50663)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

