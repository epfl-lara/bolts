; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1248 () Bool)

(assert start!1248)

(declare-fun res!8896 () Bool)

(declare-fun e!6043 () Bool)

(assert (=> start!1248 (=> (not res!8896) (not e!6043))))

(declare-datatypes ((B!326 0))(
  ( (B!327 (val!258 Int)) )
))
(declare-datatypes ((tuple2!298 0))(
  ( (tuple2!299 (_1!149 (_ BitVec 64)) (_2!149 B!326)) )
))
(declare-datatypes ((List!305 0))(
  ( (Nil!302) (Cons!301 (h!867 tuple2!298) (t!2452 List!305)) )
))
(declare-fun l!408 () List!305)

(assert (=> start!1248 (= res!8896 (is-Cons!301 l!408))))

(assert (=> start!1248 e!6043))

(declare-fun e!6044 () Bool)

(assert (=> start!1248 e!6044))

(declare-fun b!10441 () Bool)

(assert (=> b!10441 (= e!6043 false)))

(declare-fun lt!2580 () (_ BitVec 32))

(declare-fun intSize!4 (List!305) (_ BitVec 32))

(assert (=> b!10441 (= lt!2580 (intSize!4 (t!2452 l!408)))))

(declare-fun b!10442 () Bool)

(declare-fun tp_is_empty!499 () Bool)

(declare-fun tp!1517 () Bool)

(assert (=> b!10442 (= e!6044 (and tp_is_empty!499 tp!1517))))

(assert (= (and start!1248 res!8896) b!10441))

(assert (= (and start!1248 (is-Cons!301 l!408)) b!10442))

(declare-fun m!6737 () Bool)

(assert (=> b!10441 m!6737))

(push 1)

(assert (not b!10441))

(assert (not b!10442))

(assert tp_is_empty!499)

(check-sat)

(pop 1)

