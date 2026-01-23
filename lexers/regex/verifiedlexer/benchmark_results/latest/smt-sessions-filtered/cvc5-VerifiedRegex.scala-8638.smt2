; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!461150 () Bool)

(assert start!461150)

(declare-fun res!1930385 () Bool)

(declare-fun e!2876092 () Bool)

(assert (=> start!461150 (=> (not res!1930385) (not e!2876092))))

(declare-datatypes ((K!12593 0))(
  ( (K!12594 (val!18345 Int)) )
))
(declare-datatypes ((V!12839 0))(
  ( (V!12840 (val!18346 Int)) )
))
(declare-datatypes ((tuple2!51958 0))(
  ( (tuple2!51959 (_1!29273 K!12593) (_2!29273 V!12839)) )
))
(declare-datatypes ((List!51349 0))(
  ( (Nil!51225) (Cons!51225 (h!57219 tuple2!51958) (t!358343 List!51349)) )
))
(declare-fun oldBucket!40 () List!51349)

(declare-fun noDuplicateKeys!1377 (List!51349) Bool)

(assert (=> start!461150 (= res!1930385 (noDuplicateKeys!1377 oldBucket!40))))

(assert (=> start!461150 e!2876092))

(declare-fun e!2876091 () Bool)

(assert (=> start!461150 e!2876091))

(declare-fun e!2876093 () Bool)

(assert (=> start!461150 e!2876093))

(declare-fun b!4610667 () Bool)

(assert (=> b!4610667 (= e!2876092 false)))

(declare-fun lt!1767104 () Bool)

(declare-fun newBucket!224 () List!51349)

(assert (=> b!4610667 (= lt!1767104 (noDuplicateKeys!1377 newBucket!224))))

(declare-fun tp_is_empty!28801 () Bool)

(declare-fun b!4610668 () Bool)

(declare-fun tp_is_empty!28803 () Bool)

(declare-fun tp!1341104 () Bool)

(assert (=> b!4610668 (= e!2876091 (and tp_is_empty!28801 tp_is_empty!28803 tp!1341104))))

(declare-fun tp!1341105 () Bool)

(declare-fun b!4610669 () Bool)

(assert (=> b!4610669 (= e!2876093 (and tp_is_empty!28801 tp_is_empty!28803 tp!1341105))))

(assert (= (and start!461150 res!1930385) b!4610667))

(assert (= (and start!461150 (is-Cons!51225 oldBucket!40)) b!4610668))

(assert (= (and start!461150 (is-Cons!51225 newBucket!224)) b!4610669))

(declare-fun m!5442327 () Bool)

(assert (=> start!461150 m!5442327))

(declare-fun m!5442329 () Bool)

(assert (=> b!4610667 m!5442329))

(push 1)

(assert (not b!4610668))

(assert (not b!4610669))

(assert tp_is_empty!28801)

(assert (not b!4610667))

(assert (not start!461150))

(assert tp_is_empty!28803)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

