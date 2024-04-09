; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35108 () Bool)

(assert start!35108)

(declare-fun b_free!7745 () Bool)

(declare-fun b_next!7745 () Bool)

(assert (=> start!35108 (= b_free!7745 (not b_next!7745))))

(declare-fun tp!26820 () Bool)

(declare-fun b_and!14997 () Bool)

(assert (=> start!35108 (= tp!26820 b_and!14997)))

(declare-fun b!351622 () Bool)

(declare-fun res!195065 () Bool)

(declare-fun e!215343 () Bool)

(assert (=> b!351622 (=> (not res!195065) (not e!215343))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351622 (= res!195065 (validKeyInArray!0 k!1348))))

(declare-fun b!351623 () Bool)

(declare-fun res!195066 () Bool)

(assert (=> b!351623 (=> (not res!195066) (not e!215343))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11239 0))(
  ( (V!11240 (val!3893 Int)) )
))
(declare-datatypes ((ValueCell!3505 0))(
  ( (ValueCellFull!3505 (v!6078 V!11239)) (EmptyCell!3505) )
))
(declare-datatypes ((array!18939 0))(
  ( (array!18940 (arr!8970 (Array (_ BitVec 32) ValueCell!3505)) (size!9322 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18939)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((array!18941 0))(
  ( (array!18942 (arr!8971 (Array (_ BitVec 32) (_ BitVec 64))) (size!9323 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18941)

(assert (=> b!351623 (= res!195066 (and (= (size!9322 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9323 _keys!1895) (size!9322 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!351624 () Bool)

(declare-fun res!195067 () Bool)

(assert (=> b!351624 (=> (not res!195067) (not e!215343))))

(declare-fun zeroValue!1467 () V!11239)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11239)

(declare-datatypes ((tuple2!5610 0))(
  ( (tuple2!5611 (_1!2815 (_ BitVec 64)) (_2!2815 V!11239)) )
))
(declare-datatypes ((List!5247 0))(
  ( (Nil!5244) (Cons!5243 (h!6099 tuple2!5610) (t!10397 List!5247)) )
))
(declare-datatypes ((ListLongMap!4537 0))(
  ( (ListLongMap!4538 (toList!2284 List!5247)) )
))
(declare-fun contains!2351 (ListLongMap!4537 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1801 (array!18941 array!18939 (_ BitVec 32) (_ BitVec 32) V!11239 V!11239 (_ BitVec 32) Int) ListLongMap!4537)

(assert (=> b!351624 (= res!195067 (not (contains!2351 (getCurrentListMap!1801 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!351625 () Bool)

(declare-fun res!195062 () Bool)

(declare-fun e!215338 () Bool)

(assert (=> b!351625 (=> (not res!195062) (not e!215338))))

(declare-fun arrayContainsKey!0 (array!18941 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351625 (= res!195062 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!351626 () Bool)

(declare-fun e!215342 () Bool)

(declare-fun tp_is_empty!7697 () Bool)

(assert (=> b!351626 (= e!215342 tp_is_empty!7697)))

(declare-fun b!351627 () Bool)

(assert (=> b!351627 (= e!215338 (not true))))

(assert (=> b!351627 false))

(declare-datatypes ((Unit!10861 0))(
  ( (Unit!10862) )
))
(declare-fun lt!164939 () Unit!10861)

(declare-fun lemmaArrayContainsKeyThenInListMap!326 (array!18941 array!18939 (_ BitVec 32) (_ BitVec 32) V!11239 V!11239 (_ BitVec 64) (_ BitVec 32) Int) Unit!10861)

(declare-fun arrayScanForKey!0 (array!18941 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!351627 (= lt!164939 (lemmaArrayContainsKeyThenInListMap!326 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(declare-fun b!351628 () Bool)

(declare-fun e!215340 () Bool)

(declare-fun e!215341 () Bool)

(declare-fun mapRes!13023 () Bool)

(assert (=> b!351628 (= e!215340 (and e!215341 mapRes!13023))))

(declare-fun condMapEmpty!13023 () Bool)

(declare-fun mapDefault!13023 () ValueCell!3505)

