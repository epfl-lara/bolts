; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35114 () Bool)

(assert start!35114)

(declare-fun b_free!7751 () Bool)

(declare-fun b_next!7751 () Bool)

(assert (=> start!35114 (= b_free!7751 (not b_next!7751))))

(declare-fun tp!26837 () Bool)

(declare-fun b_and!15003 () Bool)

(assert (=> start!35114 (= tp!26837 b_and!15003)))

(declare-fun b!351730 () Bool)

(declare-datatypes ((Unit!10867 0))(
  ( (Unit!10868) )
))
(declare-fun e!215405 () Unit!10867)

(declare-fun Unit!10869 () Unit!10867)

(assert (=> b!351730 (= e!215405 Unit!10869)))

(declare-fun b!351731 () Bool)

(declare-fun res!195125 () Bool)

(declare-fun e!215401 () Bool)

(assert (=> b!351731 (=> (not res!195125) (not e!215401))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11247 0))(
  ( (V!11248 (val!3896 Int)) )
))
(declare-datatypes ((ValueCell!3508 0))(
  ( (ValueCellFull!3508 (v!6081 V!11247)) (EmptyCell!3508) )
))
(declare-datatypes ((array!18951 0))(
  ( (array!18952 (arr!8976 (Array (_ BitVec 32) ValueCell!3508)) (size!9328 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18951)

(declare-datatypes ((array!18953 0))(
  ( (array!18954 (arr!8977 (Array (_ BitVec 32) (_ BitVec 64))) (size!9329 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18953)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!351731 (= res!195125 (and (= (size!9328 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9329 _keys!1895) (size!9328 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!351732 () Bool)

(declare-fun res!195128 () Bool)

(assert (=> b!351732 (=> (not res!195128) (not e!215401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18953 (_ BitVec 32)) Bool)

(assert (=> b!351732 (= res!195128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!351733 () Bool)

(declare-fun res!195126 () Bool)

(assert (=> b!351733 (=> (not res!195126) (not e!215401))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!11247)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11247)

(declare-datatypes ((tuple2!5614 0))(
  ( (tuple2!5615 (_1!2817 (_ BitVec 64)) (_2!2817 V!11247)) )
))
(declare-datatypes ((List!5251 0))(
  ( (Nil!5248) (Cons!5247 (h!6103 tuple2!5614) (t!10401 List!5251)) )
))
(declare-datatypes ((ListLongMap!4541 0))(
  ( (ListLongMap!4542 (toList!2286 List!5251)) )
))
(declare-fun contains!2353 (ListLongMap!4541 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1803 (array!18953 array!18951 (_ BitVec 32) (_ BitVec 32) V!11247 V!11247 (_ BitVec 32) Int) ListLongMap!4541)

(assert (=> b!351733 (= res!195126 (not (contains!2353 (getCurrentListMap!1803 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!351734 () Bool)

(declare-fun e!215404 () Bool)

(assert (=> b!351734 (= e!215401 e!215404)))

(declare-fun res!195129 () Bool)

(assert (=> b!351734 (=> (not res!195129) (not e!215404))))

(declare-datatypes ((SeekEntryResult!3450 0))(
  ( (MissingZero!3450 (index!15979 (_ BitVec 32))) (Found!3450 (index!15980 (_ BitVec 32))) (Intermediate!3450 (undefined!4262 Bool) (index!15981 (_ BitVec 32)) (x!35001 (_ BitVec 32))) (Undefined!3450) (MissingVacant!3450 (index!15982 (_ BitVec 32))) )
))
(declare-fun lt!164974 () SeekEntryResult!3450)

(assert (=> b!351734 (= res!195129 (and (not (is-Found!3450 lt!164974)) (not (is-MissingZero!3450 lt!164974)) (is-MissingVacant!3450 lt!164974)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18953 (_ BitVec 32)) SeekEntryResult!3450)

(assert (=> b!351734 (= lt!164974 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!351735 () Bool)

(declare-fun lt!164976 () Bool)

(assert (=> b!351735 (= e!215404 lt!164976)))

(declare-fun lt!164973 () Unit!10867)

(assert (=> b!351735 (= lt!164973 e!215405)))

(declare-fun c!53426 () Bool)

(assert (=> b!351735 (= c!53426 lt!164976)))

(declare-fun arrayContainsKey!0 (array!18953 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351735 (= lt!164976 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!13032 () Bool)

(declare-fun mapRes!13032 () Bool)

(declare-fun tp!26838 () Bool)

(declare-fun e!215400 () Bool)

(assert (=> mapNonEmpty!13032 (= mapRes!13032 (and tp!26838 e!215400))))

(declare-fun mapValue!13032 () ValueCell!3508)

(declare-fun mapRest!13032 () (Array (_ BitVec 32) ValueCell!3508))

(declare-fun mapKey!13032 () (_ BitVec 32))

(assert (=> mapNonEmpty!13032 (= (arr!8976 _values!1525) (store mapRest!13032 mapKey!13032 mapValue!13032))))

(declare-fun b!351736 () Bool)

(declare-fun tp_is_empty!7703 () Bool)

(assert (=> b!351736 (= e!215400 tp_is_empty!7703)))

(declare-fun b!351737 () Bool)

(declare-fun e!215403 () Bool)

(assert (=> b!351737 (= e!215403 tp_is_empty!7703)))

(declare-fun b!351729 () Bool)

(declare-fun res!195130 () Bool)

(assert (=> b!351729 (=> (not res!195130) (not e!215401))))

(declare-datatypes ((List!5252 0))(
  ( (Nil!5249) (Cons!5248 (h!6104 (_ BitVec 64)) (t!10402 List!5252)) )
))
(declare-fun arrayNoDuplicates!0 (array!18953 (_ BitVec 32) List!5252) Bool)

(assert (=> b!351729 (= res!195130 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5249))))

(declare-fun res!195131 () Bool)

(assert (=> start!35114 (=> (not res!195131) (not e!215401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35114 (= res!195131 (validMask!0 mask!2385))))

(assert (=> start!35114 e!215401))

(assert (=> start!35114 true))

(assert (=> start!35114 tp_is_empty!7703))

(assert (=> start!35114 tp!26837))

(declare-fun e!215402 () Bool)

(declare-fun array_inv!6614 (array!18951) Bool)

(assert (=> start!35114 (and (array_inv!6614 _values!1525) e!215402)))

(declare-fun array_inv!6615 (array!18953) Bool)

(assert (=> start!35114 (array_inv!6615 _keys!1895)))

(declare-fun mapIsEmpty!13032 () Bool)

(assert (=> mapIsEmpty!13032 mapRes!13032))

(declare-fun b!351738 () Bool)

(assert (=> b!351738 (= e!215402 (and e!215403 mapRes!13032))))

(declare-fun condMapEmpty!13032 () Bool)

(declare-fun mapDefault!13032 () ValueCell!3508)

