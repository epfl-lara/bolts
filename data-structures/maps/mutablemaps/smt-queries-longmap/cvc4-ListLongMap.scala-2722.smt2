; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40162 () Bool)

(assert start!40162)

(declare-fun b_free!10421 () Bool)

(declare-fun b_next!10421 () Bool)

(assert (=> start!40162 (= b_free!10421 (not b_next!10421))))

(declare-fun tp!36791 () Bool)

(declare-fun b_and!18407 () Bool)

(assert (=> start!40162 (= tp!36791 b_and!18407)))

(declare-fun b!439265 () Bool)

(declare-fun res!259662 () Bool)

(declare-fun e!258955 () Bool)

(assert (=> b!439265 (=> (not res!259662) (not e!258955))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26937 0))(
  ( (array!26938 (arr!12915 (Array (_ BitVec 32) (_ BitVec 64))) (size!13267 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26937)

(assert (=> b!439265 (= res!259662 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13267 _keys!709))))))

(declare-fun res!259664 () Bool)

(assert (=> start!40162 (=> (not res!259664) (not e!258955))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40162 (= res!259664 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13267 _keys!709))))))

(assert (=> start!40162 e!258955))

(declare-fun tp_is_empty!11573 () Bool)

(assert (=> start!40162 tp_is_empty!11573))

(assert (=> start!40162 tp!36791))

(assert (=> start!40162 true))

(declare-datatypes ((V!16535 0))(
  ( (V!16536 (val!5831 Int)) )
))
(declare-datatypes ((ValueCell!5443 0))(
  ( (ValueCellFull!5443 (v!8074 V!16535)) (EmptyCell!5443) )
))
(declare-datatypes ((array!26939 0))(
  ( (array!26940 (arr!12916 (Array (_ BitVec 32) ValueCell!5443)) (size!13268 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26939)

(declare-fun e!258957 () Bool)

(declare-fun array_inv!9368 (array!26939) Bool)

(assert (=> start!40162 (and (array_inv!9368 _values!549) e!258957)))

(declare-fun array_inv!9369 (array!26937) Bool)

(assert (=> start!40162 (array_inv!9369 _keys!709)))

(declare-fun mapNonEmpty!18981 () Bool)

(declare-fun mapRes!18981 () Bool)

(declare-fun tp!36792 () Bool)

(declare-fun e!258961 () Bool)

(assert (=> mapNonEmpty!18981 (= mapRes!18981 (and tp!36792 e!258961))))

(declare-fun mapValue!18981 () ValueCell!5443)

(declare-fun mapRest!18981 () (Array (_ BitVec 32) ValueCell!5443))

(declare-fun mapKey!18981 () (_ BitVec 32))

(assert (=> mapNonEmpty!18981 (= (arr!12916 _values!549) (store mapRest!18981 mapKey!18981 mapValue!18981))))

(declare-fun b!439266 () Bool)

(declare-fun res!259656 () Bool)

(assert (=> b!439266 (=> (not res!259656) (not e!258955))))

(assert (=> b!439266 (= res!259656 (or (= (select (arr!12915 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12915 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!439267 () Bool)

(declare-fun res!259665 () Bool)

(assert (=> b!439267 (=> (not res!259665) (not e!258955))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!439267 (= res!259665 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!439268 () Bool)

(declare-fun res!259663 () Bool)

(assert (=> b!439268 (=> (not res!259663) (not e!258955))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!439268 (= res!259663 (and (= (size!13268 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13267 _keys!709) (size!13268 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439269 () Bool)

(declare-fun res!259659 () Bool)

(declare-fun e!258959 () Bool)

(assert (=> b!439269 (=> (not res!259659) (not e!258959))))

(assert (=> b!439269 (= res!259659 (bvsle from!863 i!563))))

(declare-fun b!439270 () Bool)

(declare-fun res!259666 () Bool)

(assert (=> b!439270 (=> (not res!259666) (not e!258955))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!439270 (= res!259666 (validMask!0 mask!1025))))

(declare-fun b!439271 () Bool)

(declare-fun e!258960 () Bool)

(assert (=> b!439271 (= e!258960 (not true))))

(declare-fun minValue!515 () V!16535)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16535)

(declare-fun lt!202241 () array!26937)

(declare-fun lt!202238 () array!26939)

(declare-fun v!412 () V!16535)

(declare-datatypes ((tuple2!7664 0))(
  ( (tuple2!7665 (_1!3842 (_ BitVec 64)) (_2!3842 V!16535)) )
))
(declare-datatypes ((List!7707 0))(
  ( (Nil!7704) (Cons!7703 (h!8559 tuple2!7664) (t!13471 List!7707)) )
))
(declare-datatypes ((ListLongMap!6591 0))(
  ( (ListLongMap!6592 (toList!3311 List!7707)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1493 (array!26937 array!26939 (_ BitVec 32) (_ BitVec 32) V!16535 V!16535 (_ BitVec 32) Int) ListLongMap!6591)

(declare-fun +!1450 (ListLongMap!6591 tuple2!7664) ListLongMap!6591)

(assert (=> b!439271 (= (getCurrentListMapNoExtraKeys!1493 lt!202241 lt!202238 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1450 (getCurrentListMapNoExtraKeys!1493 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7665 k!794 v!412)))))

(declare-datatypes ((Unit!13015 0))(
  ( (Unit!13016) )
))
(declare-fun lt!202239 () Unit!13015)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!628 (array!26937 array!26939 (_ BitVec 32) (_ BitVec 32) V!16535 V!16535 (_ BitVec 32) (_ BitVec 64) V!16535 (_ BitVec 32) Int) Unit!13015)

(assert (=> b!439271 (= lt!202239 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!628 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!439272 () Bool)

(declare-fun res!259667 () Bool)

(assert (=> b!439272 (=> (not res!259667) (not e!258955))))

(declare-datatypes ((List!7708 0))(
  ( (Nil!7705) (Cons!7704 (h!8560 (_ BitVec 64)) (t!13472 List!7708)) )
))
(declare-fun arrayNoDuplicates!0 (array!26937 (_ BitVec 32) List!7708) Bool)

(assert (=> b!439272 (= res!259667 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7705))))

(declare-fun b!439273 () Bool)

(declare-fun e!258956 () Bool)

(assert (=> b!439273 (= e!258956 tp_is_empty!11573)))

(declare-fun mapIsEmpty!18981 () Bool)

(assert (=> mapIsEmpty!18981 mapRes!18981))

(declare-fun b!439274 () Bool)

(assert (=> b!439274 (= e!258959 e!258960)))

(declare-fun res!259657 () Bool)

(assert (=> b!439274 (=> (not res!259657) (not e!258960))))

(assert (=> b!439274 (= res!259657 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202242 () ListLongMap!6591)

(assert (=> b!439274 (= lt!202242 (getCurrentListMapNoExtraKeys!1493 lt!202241 lt!202238 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!439274 (= lt!202238 (array!26940 (store (arr!12916 _values!549) i!563 (ValueCellFull!5443 v!412)) (size!13268 _values!549)))))

(declare-fun lt!202240 () ListLongMap!6591)

(assert (=> b!439274 (= lt!202240 (getCurrentListMapNoExtraKeys!1493 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!439275 () Bool)

(assert (=> b!439275 (= e!258957 (and e!258956 mapRes!18981))))

(declare-fun condMapEmpty!18981 () Bool)

(declare-fun mapDefault!18981 () ValueCell!5443)

