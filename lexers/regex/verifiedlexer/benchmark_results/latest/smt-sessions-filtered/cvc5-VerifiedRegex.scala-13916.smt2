; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739058 () Bool)

(assert start!739058)

(declare-fun b!7754396 () Bool)

(declare-fun e!4596607 () Bool)

(declare-fun tp!2275239 () Bool)

(assert (=> b!7754396 (= e!4596607 tp!2275239)))

(declare-fun b!7754397 () Bool)

(declare-fun e!4596606 () Bool)

(declare-fun tp!2275242 () Bool)

(declare-fun tp!2275249 () Bool)

(assert (=> b!7754397 (= e!4596606 (and tp!2275242 tp!2275249))))

(declare-fun b!7754398 () Bool)

(declare-fun res!3091738 () Bool)

(declare-fun e!4596608 () Bool)

(assert (=> b!7754398 (=> (not res!3091738) (not e!4596608))))

(declare-datatypes ((C!41578 0))(
  ( (C!41579 (val!31229 Int)) )
))
(declare-datatypes ((Regex!20626 0))(
  ( (ElementMatch!20626 (c!1430227 C!41578)) (Concat!29471 (regOne!41764 Regex!20626) (regTwo!41764 Regex!20626)) (EmptyExpr!20626) (Star!20626 (reg!20955 Regex!20626)) (EmptyLang!20626) (Union!20626 (regOne!41765 Regex!20626) (regTwo!41765 Regex!20626)) )
))
(declare-fun r2!6187 () Regex!20626)

(declare-fun validRegex!11044 (Regex!20626) Bool)

(assert (=> b!7754398 (= res!3091738 (validRegex!11044 r2!6187))))

(declare-fun res!3091737 () Bool)

(assert (=> start!739058 (=> (not res!3091737) (not e!4596608))))

(declare-fun r1!6249 () Regex!20626)

(assert (=> start!739058 (= res!3091737 (validRegex!11044 r1!6249))))

(assert (=> start!739058 e!4596608))

(assert (=> start!739058 e!4596607))

(assert (=> start!739058 e!4596606))

(declare-fun e!4596610 () Bool)

(assert (=> start!739058 e!4596610))

(declare-fun e!4596609 () Bool)

(assert (=> start!739058 e!4596609))

(declare-fun b!7754399 () Bool)

(declare-fun tp_is_empty!51607 () Bool)

(declare-fun tp!2275248 () Bool)

(assert (=> b!7754399 (= e!4596610 (and tp_is_empty!51607 tp!2275248))))

(declare-fun b!7754400 () Bool)

(assert (=> b!7754400 (= e!4596608 false)))

(declare-datatypes ((List!73471 0))(
  ( (Nil!73347) (Cons!73347 (h!79795 C!41578) (t!388206 List!73471)) )
))
(declare-fun lt!2669657 () List!73471)

(declare-fun s1!4090 () List!73471)

(declare-fun s2!3712 () List!73471)

(declare-fun ++!17807 (List!73471 List!73471) List!73471)

(assert (=> b!7754400 (= lt!2669657 (++!17807 s1!4090 s2!3712))))

(declare-fun b!7754401 () Bool)

(declare-fun tp!2275238 () Bool)

(declare-fun tp!2275240 () Bool)

(assert (=> b!7754401 (= e!4596607 (and tp!2275238 tp!2275240))))

(declare-fun b!7754402 () Bool)

(assert (=> b!7754402 (= e!4596607 tp_is_empty!51607)))

(declare-fun b!7754403 () Bool)

(declare-fun tp!2275241 () Bool)

(assert (=> b!7754403 (= e!4596606 tp!2275241)))

(declare-fun b!7754404 () Bool)

(declare-fun tp!2275244 () Bool)

(declare-fun tp!2275247 () Bool)

(assert (=> b!7754404 (= e!4596607 (and tp!2275244 tp!2275247))))

(declare-fun b!7754405 () Bool)

(declare-fun tp!2275245 () Bool)

(assert (=> b!7754405 (= e!4596609 (and tp_is_empty!51607 tp!2275245))))

(declare-fun b!7754406 () Bool)

(declare-fun tp!2275246 () Bool)

(declare-fun tp!2275243 () Bool)

(assert (=> b!7754406 (= e!4596606 (and tp!2275246 tp!2275243))))

(declare-fun b!7754407 () Bool)

(assert (=> b!7754407 (= e!4596606 tp_is_empty!51607)))

(assert (= (and start!739058 res!3091737) b!7754398))

(assert (= (and b!7754398 res!3091738) b!7754400))

(assert (= (and start!739058 (is-ElementMatch!20626 r1!6249)) b!7754402))

(assert (= (and start!739058 (is-Concat!29471 r1!6249)) b!7754401))

(assert (= (and start!739058 (is-Star!20626 r1!6249)) b!7754396))

(assert (= (and start!739058 (is-Union!20626 r1!6249)) b!7754404))

(assert (= (and start!739058 (is-ElementMatch!20626 r2!6187)) b!7754407))

(assert (= (and start!739058 (is-Concat!29471 r2!6187)) b!7754397))

(assert (= (and start!739058 (is-Star!20626 r2!6187)) b!7754403))

(assert (= (and start!739058 (is-Union!20626 r2!6187)) b!7754406))

(assert (= (and start!739058 (is-Cons!73347 s1!4090)) b!7754399))

(assert (= (and start!739058 (is-Cons!73347 s2!3712)) b!7754405))

(declare-fun m!8218354 () Bool)

(assert (=> b!7754398 m!8218354))

(declare-fun m!8218356 () Bool)

(assert (=> start!739058 m!8218356))

(declare-fun m!8218358 () Bool)

(assert (=> b!7754400 m!8218358))

(push 1)

(assert (not b!7754398))

(assert (not b!7754396))

(assert (not b!7754403))

(assert tp_is_empty!51607)

(assert (not b!7754397))

(assert (not b!7754399))

(assert (not start!739058))

(assert (not b!7754404))

(assert (not b!7754405))

(assert (not b!7754406))

(assert (not b!7754400))

(assert (not b!7754401))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

