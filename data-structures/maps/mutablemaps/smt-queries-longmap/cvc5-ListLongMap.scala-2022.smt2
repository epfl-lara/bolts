; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35234 () Bool)

(assert start!35234)

(declare-fun b_free!7801 () Bool)

(declare-fun b_next!7801 () Bool)

(assert (=> start!35234 (= b_free!7801 (not b_next!7801))))

(declare-fun tp!26996 () Bool)

(declare-fun b_and!15059 () Bool)

(assert (=> start!35234 (= tp!26996 b_and!15059)))

(declare-fun b!352947 () Bool)

(declare-fun res!195787 () Bool)

(declare-fun e!216131 () Bool)

(assert (=> b!352947 (=> (not res!195787) (not e!216131))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!352947 (= res!195787 (validKeyInArray!0 k!1348))))

(declare-fun b!352948 () Bool)

(declare-fun res!195789 () Bool)

(assert (=> b!352948 (=> (not res!195789) (not e!216131))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11315 0))(
  ( (V!11316 (val!3921 Int)) )
))
(declare-fun zeroValue!1467 () V!11315)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3533 0))(
  ( (ValueCellFull!3533 (v!6109 V!11315)) (EmptyCell!3533) )
))
(declare-datatypes ((array!19057 0))(
  ( (array!19058 (arr!9026 (Array (_ BitVec 32) ValueCell!3533)) (size!9378 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19057)

(declare-datatypes ((array!19059 0))(
  ( (array!19060 (arr!9027 (Array (_ BitVec 32) (_ BitVec 64))) (size!9379 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19059)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11315)

(declare-datatypes ((tuple2!5648 0))(
  ( (tuple2!5649 (_1!2834 (_ BitVec 64)) (_2!2834 V!11315)) )
))
(declare-datatypes ((List!5285 0))(
  ( (Nil!5282) (Cons!5281 (h!6137 tuple2!5648) (t!10441 List!5285)) )
))
(declare-datatypes ((ListLongMap!4575 0))(
  ( (ListLongMap!4576 (toList!2303 List!5285)) )
))
(declare-fun contains!2373 (ListLongMap!4575 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1820 (array!19059 array!19057 (_ BitVec 32) (_ BitVec 32) V!11315 V!11315 (_ BitVec 32) Int) ListLongMap!4575)

(assert (=> b!352948 (= res!195789 (not (contains!2373 (getCurrentListMap!1820 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!352949 () Bool)

(declare-fun res!195786 () Bool)

(assert (=> b!352949 (=> (not res!195786) (not e!216131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19059 (_ BitVec 32)) Bool)

(assert (=> b!352949 (= res!195786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!352950 () Bool)

(declare-fun res!195790 () Bool)

(assert (=> b!352950 (=> (not res!195790) (not e!216131))))

(declare-datatypes ((List!5286 0))(
  ( (Nil!5283) (Cons!5282 (h!6138 (_ BitVec 64)) (t!10442 List!5286)) )
))
(declare-fun arrayNoDuplicates!0 (array!19059 (_ BitVec 32) List!5286) Bool)

(assert (=> b!352950 (= res!195790 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5283))))

(declare-fun b!352951 () Bool)

(declare-fun e!216132 () Bool)

(declare-fun e!216129 () Bool)

(declare-fun mapRes!13116 () Bool)

(assert (=> b!352951 (= e!216132 (and e!216129 mapRes!13116))))

(declare-fun condMapEmpty!13116 () Bool)

(declare-fun mapDefault!13116 () ValueCell!3533)

