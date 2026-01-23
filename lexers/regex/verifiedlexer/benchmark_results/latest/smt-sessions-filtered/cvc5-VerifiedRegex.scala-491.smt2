; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13892 () Bool)

(assert start!13892)

(declare-fun b!133505 () Bool)

(declare-fun e!77287 () Bool)

(declare-fun tp_is_empty!1427 () Bool)

(declare-fun tp!70528 () Bool)

(assert (=> b!133505 (= e!77287 (and tp_is_empty!1427 tp!70528))))

(declare-fun b!133506 () Bool)

(declare-fun res!62369 () Bool)

(declare-fun e!77285 () Bool)

(assert (=> b!133506 (=> (not res!62369) (not e!77285))))

(declare-fun e!77288 () Bool)

(assert (=> b!133506 (= res!62369 e!77288)))

(declare-fun res!62366 () Bool)

(assert (=> b!133506 (=> res!62366 e!77288)))

(declare-datatypes ((B!783 0))(
  ( (B!784 (val!877 Int)) )
))
(declare-datatypes ((List!2195 0))(
  ( (Nil!2189) (Cons!2189 (h!7586 B!783) (t!22781 List!2195)) )
))
(declare-fun newList!20 () List!2195)

(assert (=> b!133506 (= res!62366 (not (is-Cons!2189 newList!20)))))

(declare-fun b!133507 () Bool)

(declare-fun e!77284 () Bool)

(declare-fun baseList!9 () List!2195)

(declare-fun contains!369 (List!2195 B!783) Bool)

(assert (=> b!133507 (= e!77284 (not (contains!369 baseList!9 (h!7586 newList!20))))))

(declare-fun res!62368 () Bool)

(assert (=> start!13892 (=> (not res!62368) (not e!77285))))

(declare-fun noDuplicate!85 (List!2195) Bool)

(assert (=> start!13892 (= res!62368 (noDuplicate!85 baseList!9))))

(assert (=> start!13892 e!77285))

(declare-fun e!77286 () Bool)

(assert (=> start!13892 e!77286))

(assert (=> start!13892 e!77287))

(declare-fun b!133508 () Bool)

(assert (=> b!133508 (= e!77288 (contains!369 baseList!9 (h!7586 newList!20)))))

(declare-fun b!133509 () Bool)

(declare-fun res!62365 () Bool)

(assert (=> b!133509 (=> (not res!62365) (not e!77285))))

(assert (=> b!133509 (= res!62365 e!77284)))

(declare-fun res!62367 () Bool)

(assert (=> b!133509 (=> res!62367 e!77284)))

(assert (=> b!133509 (= res!62367 (not (is-Cons!2189 newList!20)))))

(declare-fun b!133510 () Bool)

(assert (=> b!133510 (= e!77285 (not (is-Nil!2189 newList!20)))))

(declare-fun b!133511 () Bool)

(declare-fun tp!70527 () Bool)

(assert (=> b!133511 (= e!77286 (and tp_is_empty!1427 tp!70527))))

(assert (= (and start!13892 res!62368) b!133509))

(assert (= (and b!133509 (not res!62367)) b!133507))

(assert (= (and b!133509 res!62365) b!133506))

(assert (= (and b!133506 (not res!62366)) b!133508))

(assert (= (and b!133506 res!62369) b!133510))

(assert (= (and start!13892 (is-Cons!2189 baseList!9)) b!133511))

(assert (= (and start!13892 (is-Cons!2189 newList!20)) b!133505))

(declare-fun m!118581 () Bool)

(assert (=> b!133507 m!118581))

(declare-fun m!118583 () Bool)

(assert (=> start!13892 m!118583))

(assert (=> b!133508 m!118581))

(push 1)

(assert (not start!13892))

(assert tp_is_empty!1427)

(assert (not b!133505))

(assert (not b!133507))

(assert (not b!133511))

(assert (not b!133508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

