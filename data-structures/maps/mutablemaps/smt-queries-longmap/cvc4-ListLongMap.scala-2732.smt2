; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40222 () Bool)

(assert start!40222)

(declare-fun b_free!10481 () Bool)

(declare-fun b_next!10481 () Bool)

(assert (=> start!40222 (= b_free!10481 (not b_next!10481))))

(declare-fun tp!36972 () Bool)

(declare-fun b_and!18467 () Bool)

(assert (=> start!40222 (= tp!36972 b_and!18467)))

(declare-fun b!440705 () Bool)

(declare-fun res!260831 () Bool)

(declare-fun e!259589 () Bool)

(assert (=> b!440705 (=> (not res!260831) (not e!259589))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!440705 (= res!260831 (validMask!0 mask!1025))))

(declare-fun b!440706 () Bool)

(declare-fun res!260827 () Bool)

(assert (=> b!440706 (=> (not res!260827) (not e!259589))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!440706 (= res!260827 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!19071 () Bool)

(declare-fun mapRes!19071 () Bool)

(assert (=> mapIsEmpty!19071 mapRes!19071))

(declare-fun b!440707 () Bool)

(declare-fun res!260826 () Bool)

(declare-fun e!259588 () Bool)

(assert (=> b!440707 (=> (not res!260826) (not e!259588))))

(declare-datatypes ((array!27053 0))(
  ( (array!27054 (arr!12973 (Array (_ BitVec 32) (_ BitVec 64))) (size!13325 (_ BitVec 32))) )
))
(declare-fun lt!202688 () array!27053)

(declare-datatypes ((List!7757 0))(
  ( (Nil!7754) (Cons!7753 (h!8609 (_ BitVec 64)) (t!13521 List!7757)) )
))
(declare-fun arrayNoDuplicates!0 (array!27053 (_ BitVec 32) List!7757) Bool)

(assert (=> b!440707 (= res!260826 (arrayNoDuplicates!0 lt!202688 #b00000000000000000000000000000000 Nil!7754))))

(declare-fun b!440708 () Bool)

(declare-fun res!260833 () Bool)

(assert (=> b!440708 (=> (not res!260833) (not e!259589))))

(declare-fun _keys!709 () array!27053)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16615 0))(
  ( (V!16616 (val!5861 Int)) )
))
(declare-datatypes ((ValueCell!5473 0))(
  ( (ValueCellFull!5473 (v!8104 V!16615)) (EmptyCell!5473) )
))
(declare-datatypes ((array!27055 0))(
  ( (array!27056 (arr!12974 (Array (_ BitVec 32) ValueCell!5473)) (size!13326 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27055)

(assert (=> b!440708 (= res!260833 (and (= (size!13326 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13325 _keys!709) (size!13326 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!440709 () Bool)

(declare-fun res!260830 () Bool)

(assert (=> b!440709 (=> (not res!260830) (not e!259589))))

(assert (=> b!440709 (= res!260830 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7754))))

(declare-fun b!440710 () Bool)

(declare-fun e!259587 () Bool)

(assert (=> b!440710 (= e!259588 e!259587)))

(declare-fun res!260832 () Bool)

(assert (=> b!440710 (=> (not res!260832) (not e!259587))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!440710 (= res!260832 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16615)

(declare-fun zeroValue!515 () V!16615)

(declare-datatypes ((tuple2!7716 0))(
  ( (tuple2!7717 (_1!3868 (_ BitVec 64)) (_2!3868 V!16615)) )
))
(declare-datatypes ((List!7758 0))(
  ( (Nil!7755) (Cons!7754 (h!8610 tuple2!7716) (t!13522 List!7758)) )
))
(declare-datatypes ((ListLongMap!6643 0))(
  ( (ListLongMap!6644 (toList!3337 List!7758)) )
))
(declare-fun lt!202692 () ListLongMap!6643)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!202691 () array!27055)

(declare-fun getCurrentListMapNoExtraKeys!1519 (array!27053 array!27055 (_ BitVec 32) (_ BitVec 32) V!16615 V!16615 (_ BitVec 32) Int) ListLongMap!6643)

(assert (=> b!440710 (= lt!202692 (getCurrentListMapNoExtraKeys!1519 lt!202688 lt!202691 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16615)

(assert (=> b!440710 (= lt!202691 (array!27056 (store (arr!12974 _values!549) i!563 (ValueCellFull!5473 v!412)) (size!13326 _values!549)))))

(declare-fun lt!202690 () ListLongMap!6643)

(assert (=> b!440710 (= lt!202690 (getCurrentListMapNoExtraKeys!1519 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440711 () Bool)

(declare-fun e!259586 () Bool)

(declare-fun tp_is_empty!11633 () Bool)

(assert (=> b!440711 (= e!259586 tp_is_empty!11633)))

(declare-fun b!440712 () Bool)

(assert (=> b!440712 (= e!259587 (not true))))

(declare-fun +!1473 (ListLongMap!6643 tuple2!7716) ListLongMap!6643)

(assert (=> b!440712 (= (getCurrentListMapNoExtraKeys!1519 lt!202688 lt!202691 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1473 (getCurrentListMapNoExtraKeys!1519 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7717 k!794 v!412)))))

(declare-datatypes ((Unit!13061 0))(
  ( (Unit!13062) )
))
(declare-fun lt!202689 () Unit!13061)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!651 (array!27053 array!27055 (_ BitVec 32) (_ BitVec 32) V!16615 V!16615 (_ BitVec 32) (_ BitVec 64) V!16615 (_ BitVec 32) Int) Unit!13061)

(assert (=> b!440712 (= lt!202689 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!651 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!440713 () Bool)

(declare-fun e!259591 () Bool)

(declare-fun e!259585 () Bool)

(assert (=> b!440713 (= e!259591 (and e!259585 mapRes!19071))))

(declare-fun condMapEmpty!19071 () Bool)

(declare-fun mapDefault!19071 () ValueCell!5473)

