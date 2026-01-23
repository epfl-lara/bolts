; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!534196 () Bool)

(assert start!534196)

(declare-fun b!5050332 () Bool)

(declare-fun res!2150798 () Bool)

(declare-fun e!3153179 () Bool)

(assert (=> b!5050332 (=> (not res!2150798) (not e!3153179))))

(declare-fun i!705 () Int)

(declare-datatypes ((T!104724 0))(
  ( (T!104725 (val!23591 Int)) )
))
(declare-datatypes ((List!58501 0))(
  ( (Nil!58377) (Cons!58377 (h!64825 T!104724) (t!371140 List!58501)) )
))
(declare-fun l!2779 () List!58501)

(declare-fun size!39000 (List!58501) Int)

(assert (=> b!5050332 (= res!2150798 (<= i!705 (size!39000 l!2779)))))

(declare-fun b!5050333 () Bool)

(declare-fun e!3153180 () Bool)

(assert (=> b!5050333 (= e!3153179 e!3153180)))

(declare-fun res!2150801 () Bool)

(assert (=> b!5050333 (=> (not res!2150801) (not e!3153180))))

(declare-fun lt!2086506 () List!58501)

(assert (=> b!5050333 (= res!2150801 (= lt!2086506 Nil!58377))))

(declare-fun take!882 (List!58501 Int) List!58501)

(assert (=> b!5050333 (= lt!2086506 (take!882 l!2779 i!705))))

(declare-fun res!2150799 () Bool)

(assert (=> start!534196 (=> (not res!2150799) (not e!3153179))))

(assert (=> start!534196 (= res!2150799 (<= 0 i!705))))

(assert (=> start!534196 e!3153179))

(assert (=> start!534196 true))

(declare-fun e!3153181 () Bool)

(assert (=> start!534196 e!3153181))

(declare-fun b!5050334 () Bool)

(declare-fun lt!2086507 () List!58501)

(assert (=> b!5050334 (= e!3153180 (and (= lt!2086507 Nil!58377) (not (= lt!2086506 lt!2086507))))))

(declare-fun slice!904 (List!58501 Int Int) List!58501)

(assert (=> b!5050334 (= lt!2086507 (slice!904 l!2779 0 i!705))))

(declare-fun b!5050335 () Bool)

(declare-fun tp_is_empty!36937 () Bool)

(declare-fun tp!1412164 () Bool)

(assert (=> b!5050335 (= e!3153181 (and tp_is_empty!36937 tp!1412164))))

(declare-fun b!5050336 () Bool)

(declare-fun res!2150800 () Bool)

(assert (=> b!5050336 (=> (not res!2150800) (not e!3153179))))

(assert (=> b!5050336 (= res!2150800 (and (not (is-Nil!58377 l!2779)) (= i!705 0)))))

(assert (= (and start!534196 res!2150799) b!5050332))

(assert (= (and b!5050332 res!2150798) b!5050336))

(assert (= (and b!5050336 res!2150800) b!5050333))

(assert (= (and b!5050333 res!2150801) b!5050334))

(assert (= (and start!534196 (is-Cons!58377 l!2779)) b!5050335))

(declare-fun m!6084670 () Bool)

(assert (=> b!5050332 m!6084670))

(declare-fun m!6084672 () Bool)

(assert (=> b!5050333 m!6084672))

(declare-fun m!6084674 () Bool)

(assert (=> b!5050334 m!6084674))

(push 1)

(assert (not b!5050334))

(assert (not b!5050333))

(assert (not b!5050335))

(assert tp_is_empty!36937)

(assert (not b!5050332))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

