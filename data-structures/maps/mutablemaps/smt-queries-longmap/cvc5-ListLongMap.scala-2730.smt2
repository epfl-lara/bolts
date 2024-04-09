; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40206 () Bool)

(assert start!40206)

(declare-fun b_free!10465 () Bool)

(declare-fun b_next!10465 () Bool)

(assert (=> start!40206 (= b_free!10465 (not b_next!10465))))

(declare-fun tp!36923 () Bool)

(declare-fun b_and!18451 () Bool)

(assert (=> start!40206 (= tp!36923 b_and!18451)))

(declare-fun b!440321 () Bool)

(declare-fun e!259418 () Bool)

(declare-fun e!259422 () Bool)

(assert (=> b!440321 (= e!259418 e!259422)))

(declare-fun res!260518 () Bool)

(assert (=> b!440321 (=> (not res!260518) (not e!259422))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!440321 (= res!260518 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16595 0))(
  ( (V!16596 (val!5853 Int)) )
))
(declare-fun minValue!515 () V!16595)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16595)

(declare-datatypes ((tuple2!7704 0))(
  ( (tuple2!7705 (_1!3862 (_ BitVec 64)) (_2!3862 V!16595)) )
))
(declare-datatypes ((List!7744 0))(
  ( (Nil!7741) (Cons!7740 (h!8596 tuple2!7704) (t!13508 List!7744)) )
))
(declare-datatypes ((ListLongMap!6631 0))(
  ( (ListLongMap!6632 (toList!3331 List!7744)) )
))
(declare-fun lt!202572 () ListLongMap!6631)

(declare-datatypes ((array!27023 0))(
  ( (array!27024 (arr!12958 (Array (_ BitVec 32) (_ BitVec 64))) (size!13310 (_ BitVec 32))) )
))
(declare-fun lt!202571 () array!27023)

(declare-datatypes ((ValueCell!5465 0))(
  ( (ValueCellFull!5465 (v!8096 V!16595)) (EmptyCell!5465) )
))
(declare-datatypes ((array!27025 0))(
  ( (array!27026 (arr!12959 (Array (_ BitVec 32) ValueCell!5465)) (size!13311 (_ BitVec 32))) )
))
(declare-fun lt!202569 () array!27025)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1513 (array!27023 array!27025 (_ BitVec 32) (_ BitVec 32) V!16595 V!16595 (_ BitVec 32) Int) ListLongMap!6631)

(assert (=> b!440321 (= lt!202572 (getCurrentListMapNoExtraKeys!1513 lt!202571 lt!202569 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!27025)

(declare-fun v!412 () V!16595)

(assert (=> b!440321 (= lt!202569 (array!27026 (store (arr!12959 _values!549) i!563 (ValueCellFull!5465 v!412)) (size!13311 _values!549)))))

(declare-fun _keys!709 () array!27023)

(declare-fun lt!202568 () ListLongMap!6631)

(assert (=> b!440321 (= lt!202568 (getCurrentListMapNoExtraKeys!1513 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440322 () Bool)

(declare-fun res!260524 () Bool)

(declare-fun e!259417 () Bool)

(assert (=> b!440322 (=> (not res!260524) (not e!259417))))

(assert (=> b!440322 (= res!260524 (and (= (size!13311 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13310 _keys!709) (size!13311 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!440323 () Bool)

(assert (=> b!440323 (= e!259422 (not true))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun +!1467 (ListLongMap!6631 tuple2!7704) ListLongMap!6631)

(assert (=> b!440323 (= (getCurrentListMapNoExtraKeys!1513 lt!202571 lt!202569 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1467 (getCurrentListMapNoExtraKeys!1513 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7705 k!794 v!412)))))

(declare-datatypes ((Unit!13049 0))(
  ( (Unit!13050) )
))
(declare-fun lt!202570 () Unit!13049)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!645 (array!27023 array!27025 (_ BitVec 32) (_ BitVec 32) V!16595 V!16595 (_ BitVec 32) (_ BitVec 64) V!16595 (_ BitVec 32) Int) Unit!13049)

(assert (=> b!440323 (= lt!202570 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!645 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!440324 () Bool)

(declare-fun res!260517 () Bool)

(assert (=> b!440324 (=> (not res!260517) (not e!259418))))

(declare-datatypes ((List!7745 0))(
  ( (Nil!7742) (Cons!7741 (h!8597 (_ BitVec 64)) (t!13509 List!7745)) )
))
(declare-fun arrayNoDuplicates!0 (array!27023 (_ BitVec 32) List!7745) Bool)

(assert (=> b!440324 (= res!260517 (arrayNoDuplicates!0 lt!202571 #b00000000000000000000000000000000 Nil!7742))))

(declare-fun mapNonEmpty!19047 () Bool)

(declare-fun mapRes!19047 () Bool)

(declare-fun tp!36924 () Bool)

(declare-fun e!259420 () Bool)

(assert (=> mapNonEmpty!19047 (= mapRes!19047 (and tp!36924 e!259420))))

(declare-fun mapValue!19047 () ValueCell!5465)

(declare-fun mapKey!19047 () (_ BitVec 32))

(declare-fun mapRest!19047 () (Array (_ BitVec 32) ValueCell!5465))

(assert (=> mapNonEmpty!19047 (= (arr!12959 _values!549) (store mapRest!19047 mapKey!19047 mapValue!19047))))

(declare-fun b!440325 () Bool)

(declare-fun res!260522 () Bool)

(assert (=> b!440325 (=> (not res!260522) (not e!259417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!440325 (= res!260522 (validMask!0 mask!1025))))

(declare-fun b!440326 () Bool)

(declare-fun res!260521 () Bool)

(assert (=> b!440326 (=> (not res!260521) (not e!259417))))

(assert (=> b!440326 (= res!260521 (or (= (select (arr!12958 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12958 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19047 () Bool)

(assert (=> mapIsEmpty!19047 mapRes!19047))

(declare-fun b!440327 () Bool)

(declare-fun res!260515 () Bool)

(assert (=> b!440327 (=> (not res!260515) (not e!259417))))

(assert (=> b!440327 (= res!260515 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13310 _keys!709))))))

(declare-fun res!260525 () Bool)

(assert (=> start!40206 (=> (not res!260525) (not e!259417))))

(assert (=> start!40206 (= res!260525 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13310 _keys!709))))))

(assert (=> start!40206 e!259417))

(declare-fun tp_is_empty!11617 () Bool)

(assert (=> start!40206 tp_is_empty!11617))

(assert (=> start!40206 tp!36923))

(assert (=> start!40206 true))

(declare-fun e!259423 () Bool)

(declare-fun array_inv!9396 (array!27025) Bool)

(assert (=> start!40206 (and (array_inv!9396 _values!549) e!259423)))

(declare-fun array_inv!9397 (array!27023) Bool)

(assert (=> start!40206 (array_inv!9397 _keys!709)))

(declare-fun b!440328 () Bool)

(declare-fun res!260519 () Bool)

(assert (=> b!440328 (=> (not res!260519) (not e!259417))))

(declare-fun arrayContainsKey!0 (array!27023 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!440328 (= res!260519 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!440329 () Bool)

(declare-fun e!259419 () Bool)

(assert (=> b!440329 (= e!259423 (and e!259419 mapRes!19047))))

(declare-fun condMapEmpty!19047 () Bool)

(declare-fun mapDefault!19047 () ValueCell!5465)

