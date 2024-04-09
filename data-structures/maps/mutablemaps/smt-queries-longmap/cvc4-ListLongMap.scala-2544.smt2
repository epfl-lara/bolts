; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39094 () Bool)

(assert start!39094)

(declare-fun b_free!9353 () Bool)

(declare-fun b_next!9353 () Bool)

(assert (=> start!39094 (= b_free!9353 (not b_next!9353))))

(declare-fun tp!33588 () Bool)

(declare-fun b_and!16757 () Bool)

(assert (=> start!39094 (= tp!33588 b_and!16757)))

(declare-fun b!410352 () Bool)

(declare-fun e!245942 () Bool)

(assert (=> b!410352 (= e!245942 false)))

(declare-datatypes ((V!15111 0))(
  ( (V!15112 (val!5297 Int)) )
))
(declare-fun minValue!515 () V!15111)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4909 0))(
  ( (ValueCellFull!4909 (v!7540 V!15111)) (EmptyCell!4909) )
))
(declare-datatypes ((array!24859 0))(
  ( (array!24860 (arr!11876 (Array (_ BitVec 32) ValueCell!4909)) (size!12228 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24859)

(declare-fun zeroValue!515 () V!15111)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!6806 0))(
  ( (tuple2!6807 (_1!3413 (_ BitVec 64)) (_2!3413 V!15111)) )
))
(declare-datatypes ((List!6860 0))(
  ( (Nil!6857) (Cons!6856 (h!7712 tuple2!6806) (t!12042 List!6860)) )
))
(declare-datatypes ((ListLongMap!5733 0))(
  ( (ListLongMap!5734 (toList!2882 List!6860)) )
))
(declare-fun lt!189064 () ListLongMap!5733)

(declare-fun v!412 () V!15111)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!24861 0))(
  ( (array!24862 (arr!11877 (Array (_ BitVec 32) (_ BitVec 64))) (size!12229 (_ BitVec 32))) )
))
(declare-fun lt!189066 () array!24861)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1092 (array!24861 array!24859 (_ BitVec 32) (_ BitVec 32) V!15111 V!15111 (_ BitVec 32) Int) ListLongMap!5733)

(assert (=> b!410352 (= lt!189064 (getCurrentListMapNoExtraKeys!1092 lt!189066 (array!24860 (store (arr!11876 _values!549) i!563 (ValueCellFull!4909 v!412)) (size!12228 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _keys!709 () array!24861)

(declare-fun lt!189065 () ListLongMap!5733)

(assert (=> b!410352 (= lt!189065 (getCurrentListMapNoExtraKeys!1092 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!237942 () Bool)

(declare-fun e!245945 () Bool)

(assert (=> start!39094 (=> (not res!237942) (not e!245945))))

(assert (=> start!39094 (= res!237942 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12229 _keys!709))))))

(assert (=> start!39094 e!245945))

(declare-fun tp_is_empty!10505 () Bool)

(assert (=> start!39094 tp_is_empty!10505))

(assert (=> start!39094 tp!33588))

(assert (=> start!39094 true))

(declare-fun e!245943 () Bool)

(declare-fun array_inv!8672 (array!24859) Bool)

(assert (=> start!39094 (and (array_inv!8672 _values!549) e!245943)))

(declare-fun array_inv!8673 (array!24861) Bool)

(assert (=> start!39094 (array_inv!8673 _keys!709)))

(declare-fun b!410353 () Bool)

(declare-fun res!237936 () Bool)

(assert (=> b!410353 (=> (not res!237936) (not e!245942))))

(assert (=> b!410353 (= res!237936 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!17379 () Bool)

(declare-fun mapRes!17379 () Bool)

(declare-fun tp!33587 () Bool)

(declare-fun e!245944 () Bool)

(assert (=> mapNonEmpty!17379 (= mapRes!17379 (and tp!33587 e!245944))))

(declare-fun mapValue!17379 () ValueCell!4909)

(declare-fun mapKey!17379 () (_ BitVec 32))

(declare-fun mapRest!17379 () (Array (_ BitVec 32) ValueCell!4909))

(assert (=> mapNonEmpty!17379 (= (arr!11876 _values!549) (store mapRest!17379 mapKey!17379 mapValue!17379))))

(declare-fun b!410354 () Bool)

(declare-fun res!237938 () Bool)

(assert (=> b!410354 (=> (not res!237938) (not e!245945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24861 (_ BitVec 32)) Bool)

(assert (=> b!410354 (= res!237938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!410355 () Bool)

(declare-fun res!237939 () Bool)

(assert (=> b!410355 (=> (not res!237939) (not e!245945))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24861 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410355 (= res!237939 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!410356 () Bool)

(declare-fun res!237934 () Bool)

(assert (=> b!410356 (=> (not res!237934) (not e!245945))))

(assert (=> b!410356 (= res!237934 (or (= (select (arr!11877 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11877 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410357 () Bool)

(declare-fun res!237932 () Bool)

(assert (=> b!410357 (=> (not res!237932) (not e!245942))))

(declare-datatypes ((List!6861 0))(
  ( (Nil!6858) (Cons!6857 (h!7713 (_ BitVec 64)) (t!12043 List!6861)) )
))
(declare-fun arrayNoDuplicates!0 (array!24861 (_ BitVec 32) List!6861) Bool)

(assert (=> b!410357 (= res!237932 (arrayNoDuplicates!0 lt!189066 #b00000000000000000000000000000000 Nil!6858))))

(declare-fun b!410358 () Bool)

(declare-fun res!237931 () Bool)

(assert (=> b!410358 (=> (not res!237931) (not e!245945))))

(assert (=> b!410358 (= res!237931 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6858))))

(declare-fun b!410359 () Bool)

(declare-fun res!237941 () Bool)

(assert (=> b!410359 (=> (not res!237941) (not e!245945))))

(assert (=> b!410359 (= res!237941 (and (= (size!12228 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12229 _keys!709) (size!12228 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410360 () Bool)

(declare-fun e!245947 () Bool)

(assert (=> b!410360 (= e!245947 tp_is_empty!10505)))

(declare-fun b!410361 () Bool)

(assert (=> b!410361 (= e!245943 (and e!245947 mapRes!17379))))

(declare-fun condMapEmpty!17379 () Bool)

(declare-fun mapDefault!17379 () ValueCell!4909)

