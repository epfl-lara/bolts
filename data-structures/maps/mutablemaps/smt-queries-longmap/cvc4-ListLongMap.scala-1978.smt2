; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34742 () Bool)

(assert start!34742)

(declare-fun b_free!7541 () Bool)

(declare-fun b_next!7541 () Bool)

(assert (=> start!34742 (= b_free!7541 (not b_next!7541))))

(declare-fun tp!26186 () Bool)

(declare-fun b_and!14779 () Bool)

(assert (=> start!34742 (= tp!26186 b_and!14779)))

(declare-fun b!347139 () Bool)

(declare-fun e!212718 () Bool)

(assert (=> b!347139 (= e!212718 (not true))))

(declare-datatypes ((array!18543 0))(
  ( (array!18544 (arr!8779 (Array (_ BitVec 32) (_ BitVec 64))) (size!9131 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18543)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18543 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347139 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!3382 0))(
  ( (MissingZero!3382 (index!15707 (_ BitVec 32))) (Found!3382 (index!15708 (_ BitVec 32))) (Intermediate!3382 (undefined!4194 Bool) (index!15709 (_ BitVec 32)) (x!34583 (_ BitVec 32))) (Undefined!3382) (MissingVacant!3382 (index!15710 (_ BitVec 32))) )
))
(declare-fun lt!163494 () SeekEntryResult!3382)

(declare-datatypes ((Unit!10776 0))(
  ( (Unit!10777) )
))
(declare-fun lt!163493 () Unit!10776)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18543 (_ BitVec 64) (_ BitVec 32)) Unit!10776)

(assert (=> b!347139 (= lt!163493 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15708 lt!163494)))))

(declare-fun b!347140 () Bool)

(declare-fun res!192214 () Bool)

(assert (=> b!347140 (=> (not res!192214) (not e!212718))))

(assert (=> b!347140 (= res!192214 (arrayContainsKey!0 _keys!1895 k!1348 (index!15708 lt!163494)))))

(declare-fun b!347141 () Bool)

(declare-fun res!192220 () Bool)

(declare-fun e!212719 () Bool)

(assert (=> b!347141 (=> (not res!192220) (not e!212719))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10967 0))(
  ( (V!10968 (val!3791 Int)) )
))
(declare-fun zeroValue!1467 () V!10967)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3403 0))(
  ( (ValueCellFull!3403 (v!5969 V!10967)) (EmptyCell!3403) )
))
(declare-datatypes ((array!18545 0))(
  ( (array!18546 (arr!8780 (Array (_ BitVec 32) ValueCell!3403)) (size!9132 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18545)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10967)

(declare-datatypes ((tuple2!5472 0))(
  ( (tuple2!5473 (_1!2746 (_ BitVec 64)) (_2!2746 V!10967)) )
))
(declare-datatypes ((List!5117 0))(
  ( (Nil!5114) (Cons!5113 (h!5969 tuple2!5472) (t!10253 List!5117)) )
))
(declare-datatypes ((ListLongMap!4399 0))(
  ( (ListLongMap!4400 (toList!2215 List!5117)) )
))
(declare-fun contains!2275 (ListLongMap!4399 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1735 (array!18543 array!18545 (_ BitVec 32) (_ BitVec 32) V!10967 V!10967 (_ BitVec 32) Int) ListLongMap!4399)

(assert (=> b!347141 (= res!192220 (not (contains!2275 (getCurrentListMap!1735 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!347142 () Bool)

(declare-fun e!212717 () Bool)

(declare-fun tp_is_empty!7493 () Bool)

(assert (=> b!347142 (= e!212717 tp_is_empty!7493)))

(declare-fun b!347143 () Bool)

(declare-fun res!192218 () Bool)

(assert (=> b!347143 (=> (not res!192218) (not e!212719))))

(assert (=> b!347143 (= res!192218 (and (= (size!9132 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9131 _keys!1895) (size!9132 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!192216 () Bool)

(assert (=> start!34742 (=> (not res!192216) (not e!212719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34742 (= res!192216 (validMask!0 mask!2385))))

(assert (=> start!34742 e!212719))

(assert (=> start!34742 true))

(assert (=> start!34742 tp_is_empty!7493))

(assert (=> start!34742 tp!26186))

(declare-fun e!212720 () Bool)

(declare-fun array_inv!6488 (array!18545) Bool)

(assert (=> start!34742 (and (array_inv!6488 _values!1525) e!212720)))

(declare-fun array_inv!6489 (array!18543) Bool)

(assert (=> start!34742 (array_inv!6489 _keys!1895)))

(declare-fun b!347144 () Bool)

(declare-fun mapRes!12696 () Bool)

(assert (=> b!347144 (= e!212720 (and e!212717 mapRes!12696))))

(declare-fun condMapEmpty!12696 () Bool)

(declare-fun mapDefault!12696 () ValueCell!3403)

