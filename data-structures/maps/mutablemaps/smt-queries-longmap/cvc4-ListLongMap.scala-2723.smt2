; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40168 () Bool)

(assert start!40168)

(declare-fun b_free!10427 () Bool)

(declare-fun b_next!10427 () Bool)

(assert (=> start!40168 (= b_free!10427 (not b_next!10427))))

(declare-fun tp!36809 () Bool)

(declare-fun b_and!18413 () Bool)

(assert (=> start!40168 (= tp!36809 b_and!18413)))

(declare-fun b!439409 () Bool)

(declare-fun res!259774 () Bool)

(declare-fun e!259019 () Bool)

(assert (=> b!439409 (=> (not res!259774) (not e!259019))))

(declare-datatypes ((array!26949 0))(
  ( (array!26950 (arr!12921 (Array (_ BitVec 32) (_ BitVec 64))) (size!13273 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26949)

(declare-datatypes ((List!7712 0))(
  ( (Nil!7709) (Cons!7708 (h!8564 (_ BitVec 64)) (t!13476 List!7712)) )
))
(declare-fun arrayNoDuplicates!0 (array!26949 (_ BitVec 32) List!7712) Bool)

(assert (=> b!439409 (= res!259774 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7709))))

(declare-fun b!439410 () Bool)

(declare-fun res!259775 () Bool)

(assert (=> b!439410 (=> (not res!259775) (not e!259019))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439410 (= res!259775 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13273 _keys!709))))))

(declare-fun b!439411 () Bool)

(declare-fun res!259779 () Bool)

(declare-fun e!259022 () Bool)

(assert (=> b!439411 (=> (not res!259779) (not e!259022))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!439411 (= res!259779 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18990 () Bool)

(declare-fun mapRes!18990 () Bool)

(assert (=> mapIsEmpty!18990 mapRes!18990))

(declare-fun b!439412 () Bool)

(declare-fun res!259783 () Bool)

(assert (=> b!439412 (=> (not res!259783) (not e!259022))))

(declare-fun lt!202284 () array!26949)

(assert (=> b!439412 (= res!259783 (arrayNoDuplicates!0 lt!202284 #b00000000000000000000000000000000 Nil!7709))))

(declare-fun b!439413 () Bool)

(declare-fun res!259777 () Bool)

(assert (=> b!439413 (=> (not res!259777) (not e!259019))))

(assert (=> b!439413 (= res!259777 (or (= (select (arr!12921 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12921 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!439414 () Bool)

(declare-fun e!259018 () Bool)

(declare-fun tp_is_empty!11579 () Bool)

(assert (=> b!439414 (= e!259018 tp_is_empty!11579)))

(declare-fun b!439415 () Bool)

(declare-fun e!259020 () Bool)

(assert (=> b!439415 (= e!259020 tp_is_empty!11579)))

(declare-fun b!439416 () Bool)

(declare-fun e!259021 () Bool)

(assert (=> b!439416 (= e!259021 (not true))))

(declare-datatypes ((V!16543 0))(
  ( (V!16544 (val!5834 Int)) )
))
(declare-fun minValue!515 () V!16543)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5446 0))(
  ( (ValueCellFull!5446 (v!8077 V!16543)) (EmptyCell!5446) )
))
(declare-datatypes ((array!26951 0))(
  ( (array!26952 (arr!12922 (Array (_ BitVec 32) ValueCell!5446)) (size!13274 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26951)

(declare-fun zeroValue!515 () V!16543)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!202283 () array!26951)

(declare-fun v!412 () V!16543)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7668 0))(
  ( (tuple2!7669 (_1!3844 (_ BitVec 64)) (_2!3844 V!16543)) )
))
(declare-datatypes ((List!7713 0))(
  ( (Nil!7710) (Cons!7709 (h!8565 tuple2!7668) (t!13477 List!7713)) )
))
(declare-datatypes ((ListLongMap!6595 0))(
  ( (ListLongMap!6596 (toList!3313 List!7713)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1495 (array!26949 array!26951 (_ BitVec 32) (_ BitVec 32) V!16543 V!16543 (_ BitVec 32) Int) ListLongMap!6595)

(declare-fun +!1452 (ListLongMap!6595 tuple2!7668) ListLongMap!6595)

(assert (=> b!439416 (= (getCurrentListMapNoExtraKeys!1495 lt!202284 lt!202283 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1452 (getCurrentListMapNoExtraKeys!1495 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7669 k!794 v!412)))))

(declare-datatypes ((Unit!13019 0))(
  ( (Unit!13020) )
))
(declare-fun lt!202287 () Unit!13019)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!630 (array!26949 array!26951 (_ BitVec 32) (_ BitVec 32) V!16543 V!16543 (_ BitVec 32) (_ BitVec 64) V!16543 (_ BitVec 32) Int) Unit!13019)

(assert (=> b!439416 (= lt!202287 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!630 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!439417 () Bool)

(assert (=> b!439417 (= e!259022 e!259021)))

(declare-fun res!259785 () Bool)

(assert (=> b!439417 (=> (not res!259785) (not e!259021))))

(assert (=> b!439417 (= res!259785 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202285 () ListLongMap!6595)

(assert (=> b!439417 (= lt!202285 (getCurrentListMapNoExtraKeys!1495 lt!202284 lt!202283 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!439417 (= lt!202283 (array!26952 (store (arr!12922 _values!549) i!563 (ValueCellFull!5446 v!412)) (size!13274 _values!549)))))

(declare-fun lt!202286 () ListLongMap!6595)

(assert (=> b!439417 (= lt!202286 (getCurrentListMapNoExtraKeys!1495 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!439418 () Bool)

(declare-fun res!259782 () Bool)

(assert (=> b!439418 (=> (not res!259782) (not e!259019))))

(declare-fun arrayContainsKey!0 (array!26949 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!439418 (= res!259782 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!259781 () Bool)

(assert (=> start!40168 (=> (not res!259781) (not e!259019))))

(assert (=> start!40168 (= res!259781 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13273 _keys!709))))))

(assert (=> start!40168 e!259019))

(assert (=> start!40168 tp_is_empty!11579))

(assert (=> start!40168 tp!36809))

(assert (=> start!40168 true))

(declare-fun e!259023 () Bool)

(declare-fun array_inv!9372 (array!26951) Bool)

(assert (=> start!40168 (and (array_inv!9372 _values!549) e!259023)))

(declare-fun array_inv!9373 (array!26949) Bool)

(assert (=> start!40168 (array_inv!9373 _keys!709)))

(declare-fun b!439419 () Bool)

(declare-fun res!259773 () Bool)

(assert (=> b!439419 (=> (not res!259773) (not e!259019))))

(assert (=> b!439419 (= res!259773 (and (= (size!13274 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13273 _keys!709) (size!13274 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439420 () Bool)

(declare-fun res!259780 () Bool)

(assert (=> b!439420 (=> (not res!259780) (not e!259019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!439420 (= res!259780 (validMask!0 mask!1025))))

(declare-fun b!439421 () Bool)

(assert (=> b!439421 (= e!259023 (and e!259020 mapRes!18990))))

(declare-fun condMapEmpty!18990 () Bool)

(declare-fun mapDefault!18990 () ValueCell!5446)

