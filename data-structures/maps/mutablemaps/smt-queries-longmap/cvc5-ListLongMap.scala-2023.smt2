; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35240 () Bool)

(assert start!35240)

(declare-fun b_free!7807 () Bool)

(declare-fun b_next!7807 () Bool)

(assert (=> start!35240 (= b_free!7807 (not b_next!7807))))

(declare-fun tp!27014 () Bool)

(declare-fun b_and!15065 () Bool)

(assert (=> start!35240 (= tp!27014 b_and!15065)))

(declare-fun b!353028 () Bool)

(declare-fun e!216175 () Bool)

(declare-fun tp_is_empty!7759 () Bool)

(assert (=> b!353028 (= e!216175 tp_is_empty!7759)))

(declare-fun b!353029 () Bool)

(declare-fun e!216173 () Bool)

(assert (=> b!353029 (= e!216173 tp_is_empty!7759)))

(declare-fun res!195845 () Bool)

(declare-fun e!216176 () Bool)

(assert (=> start!35240 (=> (not res!195845) (not e!216176))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35240 (= res!195845 (validMask!0 mask!2385))))

(assert (=> start!35240 e!216176))

(assert (=> start!35240 true))

(assert (=> start!35240 tp_is_empty!7759))

(assert (=> start!35240 tp!27014))

(declare-datatypes ((V!11323 0))(
  ( (V!11324 (val!3924 Int)) )
))
(declare-datatypes ((ValueCell!3536 0))(
  ( (ValueCellFull!3536 (v!6112 V!11323)) (EmptyCell!3536) )
))
(declare-datatypes ((array!19069 0))(
  ( (array!19070 (arr!9032 (Array (_ BitVec 32) ValueCell!3536)) (size!9384 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19069)

(declare-fun e!216177 () Bool)

(declare-fun array_inv!6650 (array!19069) Bool)

(assert (=> start!35240 (and (array_inv!6650 _values!1525) e!216177)))

(declare-datatypes ((array!19071 0))(
  ( (array!19072 (arr!9033 (Array (_ BitVec 32) (_ BitVec 64))) (size!9385 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19071)

(declare-fun array_inv!6651 (array!19071) Bool)

(assert (=> start!35240 (array_inv!6651 _keys!1895)))

(declare-fun b!353030 () Bool)

(declare-fun res!195844 () Bool)

(assert (=> b!353030 (=> (not res!195844) (not e!216176))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!11323)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11323)

(declare-datatypes ((tuple2!5654 0))(
  ( (tuple2!5655 (_1!2837 (_ BitVec 64)) (_2!2837 V!11323)) )
))
(declare-datatypes ((List!5290 0))(
  ( (Nil!5287) (Cons!5286 (h!6142 tuple2!5654) (t!10446 List!5290)) )
))
(declare-datatypes ((ListLongMap!4581 0))(
  ( (ListLongMap!4582 (toList!2306 List!5290)) )
))
(declare-fun contains!2376 (ListLongMap!4581 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1823 (array!19071 array!19069 (_ BitVec 32) (_ BitVec 32) V!11323 V!11323 (_ BitVec 32) Int) ListLongMap!4581)

(assert (=> b!353030 (= res!195844 (not (contains!2376 (getCurrentListMap!1823 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!353031 () Bool)

(declare-fun res!195843 () Bool)

(assert (=> b!353031 (=> (not res!195843) (not e!216176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!353031 (= res!195843 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!13125 () Bool)

(declare-fun mapRes!13125 () Bool)

(assert (=> mapIsEmpty!13125 mapRes!13125))

(declare-fun b!353032 () Bool)

(declare-fun res!195842 () Bool)

(assert (=> b!353032 (=> (not res!195842) (not e!216176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19071 (_ BitVec 32)) Bool)

(assert (=> b!353032 (= res!195842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!13125 () Bool)

(declare-fun tp!27015 () Bool)

(assert (=> mapNonEmpty!13125 (= mapRes!13125 (and tp!27015 e!216175))))

(declare-fun mapValue!13125 () ValueCell!3536)

(declare-fun mapRest!13125 () (Array (_ BitVec 32) ValueCell!3536))

(declare-fun mapKey!13125 () (_ BitVec 32))

(assert (=> mapNonEmpty!13125 (= (arr!9032 _values!1525) (store mapRest!13125 mapKey!13125 mapValue!13125))))

(declare-fun b!353033 () Bool)

(declare-datatypes ((SeekEntryResult!3471 0))(
  ( (MissingZero!3471 (index!16063 (_ BitVec 32))) (Found!3471 (index!16064 (_ BitVec 32))) (Intermediate!3471 (undefined!4283 Bool) (index!16065 (_ BitVec 32)) (x!35132 (_ BitVec 32))) (Undefined!3471) (MissingVacant!3471 (index!16066 (_ BitVec 32))) )
))
(declare-fun lt!165432 () SeekEntryResult!3471)

(assert (=> b!353033 (= e!216176 (and (not (is-Found!3471 lt!165432)) (not (is-MissingZero!3471 lt!165432)) (not (is-MissingVacant!3471 lt!165432)) (not (is-Undefined!3471 lt!165432))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19071 (_ BitVec 32)) SeekEntryResult!3471)

(assert (=> b!353033 (= lt!165432 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!353034 () Bool)

(declare-fun res!195841 () Bool)

(assert (=> b!353034 (=> (not res!195841) (not e!216176))))

(assert (=> b!353034 (= res!195841 (and (= (size!9384 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9385 _keys!1895) (size!9384 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!353035 () Bool)

(assert (=> b!353035 (= e!216177 (and e!216173 mapRes!13125))))

(declare-fun condMapEmpty!13125 () Bool)

(declare-fun mapDefault!13125 () ValueCell!3536)

