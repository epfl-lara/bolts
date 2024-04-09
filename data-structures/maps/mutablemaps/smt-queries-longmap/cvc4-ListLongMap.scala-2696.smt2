; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40006 () Bool)

(assert start!40006)

(declare-fun b_free!10265 () Bool)

(declare-fun b_next!10265 () Bool)

(assert (=> start!40006 (= b_free!10265 (not b_next!10265))))

(declare-fun tp!36324 () Bool)

(declare-fun b_and!18207 () Bool)

(assert (=> start!40006 (= tp!36324 b_and!18207)))

(declare-fun mapNonEmpty!18747 () Bool)

(declare-fun mapRes!18747 () Bool)

(declare-fun tp!36323 () Bool)

(declare-fun e!257126 () Bool)

(assert (=> mapNonEmpty!18747 (= mapRes!18747 (and tp!36323 e!257126))))

(declare-fun mapKey!18747 () (_ BitVec 32))

(declare-datatypes ((V!16327 0))(
  ( (V!16328 (val!5753 Int)) )
))
(declare-datatypes ((ValueCell!5365 0))(
  ( (ValueCellFull!5365 (v!7996 V!16327)) (EmptyCell!5365) )
))
(declare-datatypes ((array!26637 0))(
  ( (array!26638 (arr!12765 (Array (_ BitVec 32) ValueCell!5365)) (size!13117 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26637)

(declare-fun mapValue!18747 () ValueCell!5365)

(declare-fun mapRest!18747 () (Array (_ BitVec 32) ValueCell!5365))

(assert (=> mapNonEmpty!18747 (= (arr!12765 _values!549) (store mapRest!18747 mapKey!18747 mapValue!18747))))

(declare-fun b!435221 () Bool)

(declare-fun res!256491 () Bool)

(declare-fun e!257125 () Bool)

(assert (=> b!435221 (=> (not res!256491) (not e!257125))))

(declare-datatypes ((array!26639 0))(
  ( (array!26640 (arr!12766 (Array (_ BitVec 32) (_ BitVec 64))) (size!13118 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26639)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!435221 (= res!256491 (or (= (select (arr!12766 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12766 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435222 () Bool)

(declare-fun res!256489 () Bool)

(declare-fun e!257129 () Bool)

(assert (=> b!435222 (=> (not res!256489) (not e!257129))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!435222 (= res!256489 (bvsle from!863 i!563))))

(declare-fun b!435223 () Bool)

(declare-fun res!256496 () Bool)

(assert (=> b!435223 (=> (not res!256496) (not e!257125))))

(assert (=> b!435223 (= res!256496 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13118 _keys!709))))))

(declare-fun b!435224 () Bool)

(declare-fun res!256495 () Bool)

(assert (=> b!435224 (=> (not res!256495) (not e!257125))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!435224 (= res!256495 (and (= (size!13117 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13118 _keys!709) (size!13117 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!435226 () Bool)

(assert (=> b!435226 (= e!257125 e!257129)))

(declare-fun res!256494 () Bool)

(assert (=> b!435226 (=> (not res!256494) (not e!257129))))

(declare-fun lt!200442 () array!26639)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26639 (_ BitVec 32)) Bool)

(assert (=> b!435226 (= res!256494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!200442 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!435226 (= lt!200442 (array!26640 (store (arr!12766 _keys!709) i!563 k!794) (size!13118 _keys!709)))))

(declare-fun b!435227 () Bool)

(declare-fun e!257130 () Bool)

(assert (=> b!435227 (= e!257129 e!257130)))

(declare-fun res!256487 () Bool)

(assert (=> b!435227 (=> (not res!256487) (not e!257130))))

(assert (=> b!435227 (= res!256487 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16327)

(declare-fun zeroValue!515 () V!16327)

(declare-datatypes ((tuple2!7548 0))(
  ( (tuple2!7549 (_1!3784 (_ BitVec 64)) (_2!3784 V!16327)) )
))
(declare-datatypes ((List!7594 0))(
  ( (Nil!7591) (Cons!7590 (h!8446 tuple2!7548) (t!13316 List!7594)) )
))
(declare-datatypes ((ListLongMap!6475 0))(
  ( (ListLongMap!6476 (toList!3253 List!7594)) )
))
(declare-fun lt!200439 () ListLongMap!6475)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!200428 () array!26637)

(declare-fun getCurrentListMapNoExtraKeys!1437 (array!26639 array!26637 (_ BitVec 32) (_ BitVec 32) V!16327 V!16327 (_ BitVec 32) Int) ListLongMap!6475)

(assert (=> b!435227 (= lt!200439 (getCurrentListMapNoExtraKeys!1437 lt!200442 lt!200428 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16327)

(assert (=> b!435227 (= lt!200428 (array!26638 (store (arr!12765 _values!549) i!563 (ValueCellFull!5365 v!412)) (size!13117 _values!549)))))

(declare-fun lt!200437 () ListLongMap!6475)

(assert (=> b!435227 (= lt!200437 (getCurrentListMapNoExtraKeys!1437 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!435228 () Bool)

(declare-datatypes ((Unit!12881 0))(
  ( (Unit!12882) )
))
(declare-fun e!257127 () Unit!12881)

(declare-fun Unit!12883 () Unit!12881)

(assert (=> b!435228 (= e!257127 Unit!12883)))

(declare-fun mapIsEmpty!18747 () Bool)

(assert (=> mapIsEmpty!18747 mapRes!18747))

(declare-fun b!435229 () Bool)

(declare-fun res!256493 () Bool)

(assert (=> b!435229 (=> (not res!256493) (not e!257125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!435229 (= res!256493 (validMask!0 mask!1025))))

(declare-fun b!435230 () Bool)

(declare-fun e!257134 () Bool)

(assert (=> b!435230 (= e!257130 (not e!257134))))

(declare-fun res!256497 () Bool)

(assert (=> b!435230 (=> res!256497 e!257134)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!435230 (= res!256497 (not (validKeyInArray!0 (select (arr!12766 _keys!709) from!863))))))

(declare-fun lt!200432 () ListLongMap!6475)

(declare-fun lt!200441 () ListLongMap!6475)

(assert (=> b!435230 (= lt!200432 lt!200441)))

(declare-fun lt!200434 () ListLongMap!6475)

(declare-fun lt!200436 () tuple2!7548)

(declare-fun +!1398 (ListLongMap!6475 tuple2!7548) ListLongMap!6475)

(assert (=> b!435230 (= lt!200441 (+!1398 lt!200434 lt!200436))))

(assert (=> b!435230 (= lt!200432 (getCurrentListMapNoExtraKeys!1437 lt!200442 lt!200428 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!435230 (= lt!200436 (tuple2!7549 k!794 v!412))))

(assert (=> b!435230 (= lt!200434 (getCurrentListMapNoExtraKeys!1437 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!200430 () Unit!12881)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!578 (array!26639 array!26637 (_ BitVec 32) (_ BitVec 32) V!16327 V!16327 (_ BitVec 32) (_ BitVec 64) V!16327 (_ BitVec 32) Int) Unit!12881)

(assert (=> b!435230 (= lt!200430 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!578 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!435231 () Bool)

(declare-fun res!256499 () Bool)

(assert (=> b!435231 (=> (not res!256499) (not e!257125))))

(declare-datatypes ((List!7595 0))(
  ( (Nil!7592) (Cons!7591 (h!8447 (_ BitVec 64)) (t!13317 List!7595)) )
))
(declare-fun arrayNoDuplicates!0 (array!26639 (_ BitVec 32) List!7595) Bool)

(assert (=> b!435231 (= res!256499 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7592))))

(declare-fun b!435232 () Bool)

(declare-fun e!257128 () Bool)

(declare-fun e!257132 () Bool)

(assert (=> b!435232 (= e!257128 (and e!257132 mapRes!18747))))

(declare-fun condMapEmpty!18747 () Bool)

(declare-fun mapDefault!18747 () ValueCell!5365)

