; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40208 () Bool)

(assert start!40208)

(declare-fun b_free!10467 () Bool)

(declare-fun b_next!10467 () Bool)

(assert (=> start!40208 (= b_free!10467 (not b_next!10467))))

(declare-fun tp!36930 () Bool)

(declare-fun b_and!18453 () Bool)

(assert (=> start!40208 (= tp!36930 b_and!18453)))

(declare-fun b!440369 () Bool)

(declare-fun res!260562 () Bool)

(declare-fun e!259441 () Bool)

(assert (=> b!440369 (=> (not res!260562) (not e!259441))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27027 0))(
  ( (array!27028 (arr!12960 (Array (_ BitVec 32) (_ BitVec 64))) (size!13312 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27027)

(assert (=> b!440369 (= res!260562 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13312 _keys!709))))))

(declare-fun mapNonEmpty!19050 () Bool)

(declare-fun mapRes!19050 () Bool)

(declare-fun tp!36929 () Bool)

(declare-fun e!259444 () Bool)

(assert (=> mapNonEmpty!19050 (= mapRes!19050 (and tp!36929 e!259444))))

(declare-datatypes ((V!16597 0))(
  ( (V!16598 (val!5854 Int)) )
))
(declare-datatypes ((ValueCell!5466 0))(
  ( (ValueCellFull!5466 (v!8097 V!16597)) (EmptyCell!5466) )
))
(declare-fun mapRest!19050 () (Array (_ BitVec 32) ValueCell!5466))

(declare-fun mapKey!19050 () (_ BitVec 32))

(declare-datatypes ((array!27029 0))(
  ( (array!27030 (arr!12961 (Array (_ BitVec 32) ValueCell!5466)) (size!13313 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27029)

(declare-fun mapValue!19050 () ValueCell!5466)

(assert (=> mapNonEmpty!19050 (= (arr!12961 _values!549) (store mapRest!19050 mapKey!19050 mapValue!19050))))

(declare-fun b!440370 () Bool)

(declare-fun res!260563 () Bool)

(assert (=> b!440370 (=> (not res!260563) (not e!259441))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27027 (_ BitVec 32)) Bool)

(assert (=> b!440370 (= res!260563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!440371 () Bool)

(declare-fun res!260553 () Bool)

(assert (=> b!440371 (=> (not res!260553) (not e!259441))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!440371 (= res!260553 (validKeyInArray!0 k0!794))))

(declare-fun b!440372 () Bool)

(declare-fun e!259442 () Bool)

(assert (=> b!440372 (= e!259441 e!259442)))

(declare-fun res!260564 () Bool)

(assert (=> b!440372 (=> (not res!260564) (not e!259442))))

(declare-fun lt!202587 () array!27027)

(assert (=> b!440372 (= res!260564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202587 mask!1025))))

(assert (=> b!440372 (= lt!202587 (array!27028 (store (arr!12960 _keys!709) i!563 k0!794) (size!13312 _keys!709)))))

(declare-fun b!440373 () Bool)

(declare-fun res!260556 () Bool)

(assert (=> b!440373 (=> (not res!260556) (not e!259441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!440373 (= res!260556 (validMask!0 mask!1025))))

(declare-fun b!440374 () Bool)

(declare-fun e!259439 () Bool)

(assert (=> b!440374 (= e!259442 e!259439)))

(declare-fun res!260557 () Bool)

(assert (=> b!440374 (=> (not res!260557) (not e!259439))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!440374 (= res!260557 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202583 () array!27029)

(declare-datatypes ((tuple2!7706 0))(
  ( (tuple2!7707 (_1!3863 (_ BitVec 64)) (_2!3863 V!16597)) )
))
(declare-datatypes ((List!7746 0))(
  ( (Nil!7743) (Cons!7742 (h!8598 tuple2!7706) (t!13510 List!7746)) )
))
(declare-datatypes ((ListLongMap!6633 0))(
  ( (ListLongMap!6634 (toList!3332 List!7746)) )
))
(declare-fun lt!202585 () ListLongMap!6633)

(declare-fun minValue!515 () V!16597)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16597)

(declare-fun getCurrentListMapNoExtraKeys!1514 (array!27027 array!27029 (_ BitVec 32) (_ BitVec 32) V!16597 V!16597 (_ BitVec 32) Int) ListLongMap!6633)

(assert (=> b!440374 (= lt!202585 (getCurrentListMapNoExtraKeys!1514 lt!202587 lt!202583 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16597)

(assert (=> b!440374 (= lt!202583 (array!27030 (store (arr!12961 _values!549) i!563 (ValueCellFull!5466 v!412)) (size!13313 _values!549)))))

(declare-fun lt!202586 () ListLongMap!6633)

(assert (=> b!440374 (= lt!202586 (getCurrentListMapNoExtraKeys!1514 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440375 () Bool)

(declare-fun res!260561 () Bool)

(assert (=> b!440375 (=> (not res!260561) (not e!259442))))

(declare-datatypes ((List!7747 0))(
  ( (Nil!7744) (Cons!7743 (h!8599 (_ BitVec 64)) (t!13511 List!7747)) )
))
(declare-fun arrayNoDuplicates!0 (array!27027 (_ BitVec 32) List!7747) Bool)

(assert (=> b!440375 (= res!260561 (arrayNoDuplicates!0 lt!202587 #b00000000000000000000000000000000 Nil!7744))))

(declare-fun b!440376 () Bool)

(declare-fun res!260554 () Bool)

(assert (=> b!440376 (=> (not res!260554) (not e!259441))))

(assert (=> b!440376 (= res!260554 (or (= (select (arr!12960 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12960 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!440377 () Bool)

(declare-fun tp_is_empty!11619 () Bool)

(assert (=> b!440377 (= e!259444 tp_is_empty!11619)))

(declare-fun mapIsEmpty!19050 () Bool)

(assert (=> mapIsEmpty!19050 mapRes!19050))

(declare-fun b!440378 () Bool)

(declare-fun res!260555 () Bool)

(assert (=> b!440378 (=> (not res!260555) (not e!259442))))

(assert (=> b!440378 (= res!260555 (bvsle from!863 i!563))))

(declare-fun b!440379 () Bool)

(declare-fun e!259443 () Bool)

(declare-fun e!259438 () Bool)

(assert (=> b!440379 (= e!259443 (and e!259438 mapRes!19050))))

(declare-fun condMapEmpty!19050 () Bool)

(declare-fun mapDefault!19050 () ValueCell!5466)

(assert (=> b!440379 (= condMapEmpty!19050 (= (arr!12961 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5466)) mapDefault!19050)))))

(declare-fun b!440381 () Bool)

(declare-fun res!260565 () Bool)

(assert (=> b!440381 (=> (not res!260565) (not e!259441))))

(assert (=> b!440381 (= res!260565 (and (= (size!13313 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13312 _keys!709) (size!13313 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!440382 () Bool)

(declare-fun res!260559 () Bool)

(assert (=> b!440382 (=> (not res!260559) (not e!259441))))

(assert (=> b!440382 (= res!260559 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7744))))

(declare-fun b!440383 () Bool)

(declare-fun res!260560 () Bool)

(assert (=> b!440383 (=> (not res!260560) (not e!259441))))

(declare-fun arrayContainsKey!0 (array!27027 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!440383 (= res!260560 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!440384 () Bool)

(assert (=> b!440384 (= e!259438 tp_is_empty!11619)))

(declare-fun b!440380 () Bool)

(assert (=> b!440380 (= e!259439 (not true))))

(declare-fun +!1468 (ListLongMap!6633 tuple2!7706) ListLongMap!6633)

(assert (=> b!440380 (= (getCurrentListMapNoExtraKeys!1514 lt!202587 lt!202583 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1468 (getCurrentListMapNoExtraKeys!1514 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7707 k0!794 v!412)))))

(declare-datatypes ((Unit!13051 0))(
  ( (Unit!13052) )
))
(declare-fun lt!202584 () Unit!13051)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!646 (array!27027 array!27029 (_ BitVec 32) (_ BitVec 32) V!16597 V!16597 (_ BitVec 32) (_ BitVec 64) V!16597 (_ BitVec 32) Int) Unit!13051)

(assert (=> b!440380 (= lt!202584 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!646 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!260558 () Bool)

(assert (=> start!40208 (=> (not res!260558) (not e!259441))))

(assert (=> start!40208 (= res!260558 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13312 _keys!709))))))

(assert (=> start!40208 e!259441))

(assert (=> start!40208 tp_is_empty!11619))

(assert (=> start!40208 tp!36930))

(assert (=> start!40208 true))

(declare-fun array_inv!9398 (array!27029) Bool)

(assert (=> start!40208 (and (array_inv!9398 _values!549) e!259443)))

(declare-fun array_inv!9399 (array!27027) Bool)

(assert (=> start!40208 (array_inv!9399 _keys!709)))

(assert (= (and start!40208 res!260558) b!440373))

(assert (= (and b!440373 res!260556) b!440381))

(assert (= (and b!440381 res!260565) b!440370))

(assert (= (and b!440370 res!260563) b!440382))

(assert (= (and b!440382 res!260559) b!440369))

(assert (= (and b!440369 res!260562) b!440371))

(assert (= (and b!440371 res!260553) b!440376))

(assert (= (and b!440376 res!260554) b!440383))

(assert (= (and b!440383 res!260560) b!440372))

(assert (= (and b!440372 res!260564) b!440375))

(assert (= (and b!440375 res!260561) b!440378))

(assert (= (and b!440378 res!260555) b!440374))

(assert (= (and b!440374 res!260557) b!440380))

(assert (= (and b!440379 condMapEmpty!19050) mapIsEmpty!19050))

(assert (= (and b!440379 (not condMapEmpty!19050)) mapNonEmpty!19050))

(get-info :version)

(assert (= (and mapNonEmpty!19050 ((_ is ValueCellFull!5466) mapValue!19050)) b!440377))

(assert (= (and b!440379 ((_ is ValueCellFull!5466) mapDefault!19050)) b!440384))

(assert (= start!40208 b!440379))

(declare-fun m!427425 () Bool)

(assert (=> b!440380 m!427425))

(declare-fun m!427427 () Bool)

(assert (=> b!440380 m!427427))

(assert (=> b!440380 m!427427))

(declare-fun m!427429 () Bool)

(assert (=> b!440380 m!427429))

(declare-fun m!427431 () Bool)

(assert (=> b!440380 m!427431))

(declare-fun m!427433 () Bool)

(assert (=> b!440374 m!427433))

(declare-fun m!427435 () Bool)

(assert (=> b!440374 m!427435))

(declare-fun m!427437 () Bool)

(assert (=> b!440374 m!427437))

(declare-fun m!427439 () Bool)

(assert (=> b!440371 m!427439))

(declare-fun m!427441 () Bool)

(assert (=> b!440382 m!427441))

(declare-fun m!427443 () Bool)

(assert (=> mapNonEmpty!19050 m!427443))

(declare-fun m!427445 () Bool)

(assert (=> b!440372 m!427445))

(declare-fun m!427447 () Bool)

(assert (=> b!440372 m!427447))

(declare-fun m!427449 () Bool)

(assert (=> b!440383 m!427449))

(declare-fun m!427451 () Bool)

(assert (=> b!440373 m!427451))

(declare-fun m!427453 () Bool)

(assert (=> start!40208 m!427453))

(declare-fun m!427455 () Bool)

(assert (=> start!40208 m!427455))

(declare-fun m!427457 () Bool)

(assert (=> b!440370 m!427457))

(declare-fun m!427459 () Bool)

(assert (=> b!440375 m!427459))

(declare-fun m!427461 () Bool)

(assert (=> b!440376 m!427461))

(check-sat (not b!440370) (not b!440375) (not b!440371) (not b!440374) tp_is_empty!11619 (not mapNonEmpty!19050) (not start!40208) (not b!440382) (not b!440380) (not b!440383) (not b!440372) (not b!440373) (not b_next!10467) b_and!18453)
(check-sat b_and!18453 (not b_next!10467))
