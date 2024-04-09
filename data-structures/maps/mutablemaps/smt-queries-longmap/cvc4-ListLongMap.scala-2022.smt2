; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35238 () Bool)

(assert start!35238)

(declare-fun b_free!7805 () Bool)

(declare-fun b_next!7805 () Bool)

(assert (=> start!35238 (= b_free!7805 (not b_next!7805))))

(declare-fun tp!27009 () Bool)

(declare-fun b_and!15063 () Bool)

(assert (=> start!35238 (= tp!27009 b_and!15063)))

(declare-fun b!353001 () Bool)

(declare-fun res!195826 () Bool)

(declare-fun e!216161 () Bool)

(assert (=> b!353001 (=> (not res!195826) (not e!216161))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!11319 0))(
  ( (V!11320 (val!3923 Int)) )
))
(declare-fun zeroValue!1467 () V!11319)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3535 0))(
  ( (ValueCellFull!3535 (v!6111 V!11319)) (EmptyCell!3535) )
))
(declare-datatypes ((array!19065 0))(
  ( (array!19066 (arr!9030 (Array (_ BitVec 32) ValueCell!3535)) (size!9382 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19065)

(declare-datatypes ((array!19067 0))(
  ( (array!19068 (arr!9031 (Array (_ BitVec 32) (_ BitVec 64))) (size!9383 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19067)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11319)

(declare-datatypes ((tuple2!5652 0))(
  ( (tuple2!5653 (_1!2836 (_ BitVec 64)) (_2!2836 V!11319)) )
))
(declare-datatypes ((List!5289 0))(
  ( (Nil!5286) (Cons!5285 (h!6141 tuple2!5652) (t!10445 List!5289)) )
))
(declare-datatypes ((ListLongMap!4579 0))(
  ( (ListLongMap!4580 (toList!2305 List!5289)) )
))
(declare-fun contains!2375 (ListLongMap!4579 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1822 (array!19067 array!19065 (_ BitVec 32) (_ BitVec 32) V!11319 V!11319 (_ BitVec 32) Int) ListLongMap!4579)

(assert (=> b!353001 (= res!195826 (not (contains!2375 (getCurrentListMap!1822 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!353002 () Bool)

(declare-fun e!216162 () Bool)

(declare-fun tp_is_empty!7757 () Bool)

(assert (=> b!353002 (= e!216162 tp_is_empty!7757)))

(declare-fun b!353003 () Bool)

(declare-fun res!195827 () Bool)

(assert (=> b!353003 (=> (not res!195827) (not e!216161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19067 (_ BitVec 32)) Bool)

(assert (=> b!353003 (= res!195827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!353004 () Bool)

(declare-fun e!216160 () Bool)

(declare-fun mapRes!13122 () Bool)

(assert (=> b!353004 (= e!216160 (and e!216162 mapRes!13122))))

(declare-fun condMapEmpty!13122 () Bool)

(declare-fun mapDefault!13122 () ValueCell!3535)

