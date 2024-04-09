; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40156 () Bool)

(assert start!40156)

(declare-fun b_free!10415 () Bool)

(declare-fun b_next!10415 () Bool)

(assert (=> start!40156 (= b_free!10415 (not b_next!10415))))

(declare-fun tp!36774 () Bool)

(declare-fun b_and!18401 () Bool)

(assert (=> start!40156 (= tp!36774 b_and!18401)))

(declare-fun b!439121 () Bool)

(declare-fun e!258894 () Bool)

(declare-fun e!258893 () Bool)

(assert (=> b!439121 (= e!258894 e!258893)))

(declare-fun res!259548 () Bool)

(assert (=> b!439121 (=> (not res!259548) (not e!258893))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439121 (= res!259548 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16527 0))(
  ( (V!16528 (val!5828 Int)) )
))
(declare-fun minValue!515 () V!16527)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5440 0))(
  ( (ValueCellFull!5440 (v!8071 V!16527)) (EmptyCell!5440) )
))
(declare-datatypes ((array!26925 0))(
  ( (array!26926 (arr!12909 (Array (_ BitVec 32) ValueCell!5440)) (size!13261 (_ BitVec 32))) )
))
(declare-fun lt!202194 () array!26925)

(declare-datatypes ((array!26927 0))(
  ( (array!26928 (arr!12910 (Array (_ BitVec 32) (_ BitVec 64))) (size!13262 (_ BitVec 32))) )
))
(declare-fun lt!202197 () array!26927)

(declare-fun zeroValue!515 () V!16527)

(declare-datatypes ((tuple2!7660 0))(
  ( (tuple2!7661 (_1!3840 (_ BitVec 64)) (_2!3840 V!16527)) )
))
(declare-datatypes ((List!7703 0))(
  ( (Nil!7700) (Cons!7699 (h!8555 tuple2!7660) (t!13467 List!7703)) )
))
(declare-datatypes ((ListLongMap!6587 0))(
  ( (ListLongMap!6588 (toList!3309 List!7703)) )
))
(declare-fun lt!202193 () ListLongMap!6587)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1491 (array!26927 array!26925 (_ BitVec 32) (_ BitVec 32) V!16527 V!16527 (_ BitVec 32) Int) ListLongMap!6587)

(assert (=> b!439121 (= lt!202193 (getCurrentListMapNoExtraKeys!1491 lt!202197 lt!202194 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26925)

(declare-fun v!412 () V!16527)

(assert (=> b!439121 (= lt!202194 (array!26926 (store (arr!12909 _values!549) i!563 (ValueCellFull!5440 v!412)) (size!13261 _values!549)))))

(declare-fun lt!202196 () ListLongMap!6587)

(declare-fun _keys!709 () array!26927)

(assert (=> b!439121 (= lt!202196 (getCurrentListMapNoExtraKeys!1491 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!439122 () Bool)

(assert (=> b!439122 (= e!258893 (not true))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun +!1448 (ListLongMap!6587 tuple2!7660) ListLongMap!6587)

(assert (=> b!439122 (= (getCurrentListMapNoExtraKeys!1491 lt!202197 lt!202194 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1448 (getCurrentListMapNoExtraKeys!1491 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7661 k!794 v!412)))))

(declare-datatypes ((Unit!13011 0))(
  ( (Unit!13012) )
))
(declare-fun lt!202195 () Unit!13011)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!626 (array!26927 array!26925 (_ BitVec 32) (_ BitVec 32) V!16527 V!16527 (_ BitVec 32) (_ BitVec 64) V!16527 (_ BitVec 32) Int) Unit!13011)

(assert (=> b!439122 (= lt!202195 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!626 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!439123 () Bool)

(declare-fun res!259549 () Bool)

(declare-fun e!258892 () Bool)

(assert (=> b!439123 (=> (not res!259549) (not e!258892))))

(declare-datatypes ((List!7704 0))(
  ( (Nil!7701) (Cons!7700 (h!8556 (_ BitVec 64)) (t!13468 List!7704)) )
))
(declare-fun arrayNoDuplicates!0 (array!26927 (_ BitVec 32) List!7704) Bool)

(assert (=> b!439123 (= res!259549 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7701))))

(declare-fun b!439125 () Bool)

(declare-fun e!258897 () Bool)

(declare-fun tp_is_empty!11567 () Bool)

(assert (=> b!439125 (= e!258897 tp_is_empty!11567)))

(declare-fun b!439126 () Bool)

(declare-fun e!258896 () Bool)

(assert (=> b!439126 (= e!258896 tp_is_empty!11567)))

(declare-fun b!439127 () Bool)

(assert (=> b!439127 (= e!258892 e!258894)))

(declare-fun res!259544 () Bool)

(assert (=> b!439127 (=> (not res!259544) (not e!258894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26927 (_ BitVec 32)) Bool)

(assert (=> b!439127 (= res!259544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202197 mask!1025))))

(assert (=> b!439127 (= lt!202197 (array!26928 (store (arr!12910 _keys!709) i!563 k!794) (size!13262 _keys!709)))))

(declare-fun mapIsEmpty!18972 () Bool)

(declare-fun mapRes!18972 () Bool)

(assert (=> mapIsEmpty!18972 mapRes!18972))

(declare-fun b!439128 () Bool)

(declare-fun res!259547 () Bool)

(assert (=> b!439128 (=> (not res!259547) (not e!258892))))

(assert (=> b!439128 (= res!259547 (and (= (size!13261 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13262 _keys!709) (size!13261 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439129 () Bool)

(declare-fun e!258898 () Bool)

(assert (=> b!439129 (= e!258898 (and e!258896 mapRes!18972))))

(declare-fun condMapEmpty!18972 () Bool)

(declare-fun mapDefault!18972 () ValueCell!5440)

