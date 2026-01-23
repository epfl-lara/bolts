; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!543110 () Bool)

(assert start!543110)

(declare-fun b!5133396 () Bool)

(declare-fun e!3201808 () Bool)

(assert (=> b!5133396 (= e!3201808 (not true))))

(declare-fun lt!2118540 () Bool)

(declare-datatypes ((C!29018 0))(
  ( (C!29019 (val!24161 Int)) )
))
(declare-datatypes ((Regex!14376 0))(
  ( (ElementMatch!14376 (c!883491 C!29018)) (Concat!23221 (regOne!29264 Regex!14376) (regTwo!29264 Regex!14376)) (EmptyExpr!14376) (Star!14376 (reg!14705 Regex!14376)) (EmptyLang!14376) (Union!14376 (regOne!29265 Regex!14376) (regTwo!29265 Regex!14376)) )
))
(declare-datatypes ((List!59695 0))(
  ( (Nil!59571) (Cons!59571 (h!66019 Regex!14376) (t!372722 List!59695)) )
))
(declare-datatypes ((Context!7520 0))(
  ( (Context!7521 (exprs!4260 List!59695)) )
))
(declare-fun ctx!74 () Context!7520)

(declare-fun lostCause!1316 (Context!7520) Bool)

(assert (=> b!5133396 (= lt!2118540 (lostCause!1316 (Context!7521 (t!372722 (exprs!4260 ctx!74)))))))

(declare-fun lostCause!1317 (Regex!14376) Bool)

(assert (=> b!5133396 (not (lostCause!1317 (h!66019 (exprs!4260 ctx!74))))))

(declare-datatypes ((Unit!150899 0))(
  ( (Unit!150900) )
))
(declare-fun lt!2118541 () Unit!150899)

(declare-fun lemmaNullableThenNotLostCause!33 (Regex!14376) Unit!150899)

(assert (=> b!5133396 (= lt!2118541 (lemmaNullableThenNotLostCause!33 (h!66019 (exprs!4260 ctx!74))))))

(declare-fun res!2186511 () Bool)

(assert (=> start!543110 (=> (not res!2186511) (not e!3201808))))

(assert (=> start!543110 (= res!2186511 (lostCause!1316 ctx!74))))

(assert (=> start!543110 e!3201808))

(declare-fun e!3201807 () Bool)

(declare-fun inv!79122 (Context!7520) Bool)

(assert (=> start!543110 (and (inv!79122 ctx!74) e!3201807)))

(declare-fun b!5133394 () Bool)

(declare-fun res!2186510 () Bool)

(assert (=> b!5133394 (=> (not res!2186510) (not e!3201808))))

(assert (=> b!5133394 (= res!2186510 (is-Cons!59571 (exprs!4260 ctx!74)))))

(declare-fun b!5133395 () Bool)

(declare-fun res!2186509 () Bool)

(assert (=> b!5133395 (=> (not res!2186509) (not e!3201808))))

(declare-fun nullable!4751 (Regex!14376) Bool)

(assert (=> b!5133395 (= res!2186509 (nullable!4751 (h!66019 (exprs!4260 ctx!74))))))

(declare-fun b!5133397 () Bool)

(declare-fun tp!1431966 () Bool)

(assert (=> b!5133397 (= e!3201807 tp!1431966)))

(assert (= (and start!543110 res!2186511) b!5133394))

(assert (= (and b!5133394 res!2186510) b!5133395))

(assert (= (and b!5133395 res!2186509) b!5133396))

(assert (= start!543110 b!5133397))

(declare-fun m!6199554 () Bool)

(assert (=> b!5133396 m!6199554))

(declare-fun m!6199556 () Bool)

(assert (=> b!5133396 m!6199556))

(declare-fun m!6199558 () Bool)

(assert (=> b!5133396 m!6199558))

(declare-fun m!6199560 () Bool)

(assert (=> start!543110 m!6199560))

(declare-fun m!6199562 () Bool)

(assert (=> start!543110 m!6199562))

(declare-fun m!6199564 () Bool)

(assert (=> b!5133395 m!6199564))

(push 1)

(assert (not b!5133396))

(assert (not b!5133395))

(assert (not start!543110))

(assert (not b!5133397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

