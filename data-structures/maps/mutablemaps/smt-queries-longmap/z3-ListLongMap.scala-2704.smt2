; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40052 () Bool)

(assert start!40052)

(declare-fun b_free!10311 () Bool)

(declare-fun b_next!10311 () Bool)

(assert (=> start!40052 (= b_free!10311 (not b_next!10311))))

(declare-fun tp!36462 () Bool)

(declare-fun b_and!18297 () Bool)

(assert (=> start!40052 (= tp!36462 b_and!18297)))

(declare-fun mapNonEmpty!18816 () Bool)

(declare-fun mapRes!18816 () Bool)

(declare-fun tp!36461 () Bool)

(declare-fun e!257806 () Bool)

(assert (=> mapNonEmpty!18816 (= mapRes!18816 (and tp!36461 e!257806))))

(declare-datatypes ((V!16389 0))(
  ( (V!16390 (val!5776 Int)) )
))
(declare-datatypes ((ValueCell!5388 0))(
  ( (ValueCellFull!5388 (v!8019 V!16389)) (EmptyCell!5388) )
))
(declare-datatypes ((array!26727 0))(
  ( (array!26728 (arr!12810 (Array (_ BitVec 32) ValueCell!5388)) (size!13162 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26727)

(declare-fun mapValue!18816 () ValueCell!5388)

(declare-fun mapRest!18816 () (Array (_ BitVec 32) ValueCell!5388))

(declare-fun mapKey!18816 () (_ BitVec 32))

(assert (=> mapNonEmpty!18816 (= (arr!12810 _values!549) (store mapRest!18816 mapKey!18816 mapValue!18816))))

(declare-fun b!436625 () Bool)

(declare-fun res!257513 () Bool)

(declare-fun e!257801 () Bool)

(assert (=> b!436625 (=> (not res!257513) (not e!257801))))

(declare-datatypes ((array!26729 0))(
  ( (array!26730 (arr!12811 (Array (_ BitVec 32) (_ BitVec 64))) (size!13163 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26729)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!436625 (= res!257513 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!436626 () Bool)

(declare-fun res!257521 () Bool)

(assert (=> b!436626 (=> (not res!257521) (not e!257801))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!436626 (= res!257521 (or (= (select (arr!12811 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12811 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!436627 () Bool)

(declare-fun tp_is_empty!11463 () Bool)

(assert (=> b!436627 (= e!257806 tp_is_empty!11463)))

(declare-fun b!436628 () Bool)

(declare-fun e!257804 () Bool)

(assert (=> b!436628 (= e!257804 tp_is_empty!11463)))

(declare-fun b!436629 () Bool)

(declare-fun res!257511 () Bool)

(declare-fun e!257803 () Bool)

(assert (=> b!436629 (=> (not res!257511) (not e!257803))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!436629 (= res!257511 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18816 () Bool)

(assert (=> mapIsEmpty!18816 mapRes!18816))

(declare-fun b!436630 () Bool)

(assert (=> b!436630 (= e!257801 e!257803)))

(declare-fun res!257516 () Bool)

(assert (=> b!436630 (=> (not res!257516) (not e!257803))))

(declare-fun lt!201414 () array!26729)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26729 (_ BitVec 32)) Bool)

(assert (=> b!436630 (= res!257516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201414 mask!1025))))

(assert (=> b!436630 (= lt!201414 (array!26730 (store (arr!12811 _keys!709) i!563 k0!794) (size!13163 _keys!709)))))

(declare-fun b!436631 () Bool)

(declare-fun res!257518 () Bool)

(assert (=> b!436631 (=> (not res!257518) (not e!257801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!436631 (= res!257518 (validMask!0 mask!1025))))

(declare-fun b!436632 () Bool)

(declare-fun res!257515 () Bool)

(assert (=> b!436632 (=> (not res!257515) (not e!257801))))

(assert (=> b!436632 (= res!257515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!436633 () Bool)

(declare-fun e!257805 () Bool)

(assert (=> b!436633 (= e!257805 (not true))))

(declare-fun minValue!515 () V!16389)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!201415 () array!26727)

(declare-fun zeroValue!515 () V!16389)

(declare-fun v!412 () V!16389)

(declare-datatypes ((tuple2!7586 0))(
  ( (tuple2!7587 (_1!3803 (_ BitVec 64)) (_2!3803 V!16389)) )
))
(declare-datatypes ((List!7629 0))(
  ( (Nil!7626) (Cons!7625 (h!8481 tuple2!7586) (t!13393 List!7629)) )
))
(declare-datatypes ((ListLongMap!6513 0))(
  ( (ListLongMap!6514 (toList!3272 List!7629)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1454 (array!26729 array!26727 (_ BitVec 32) (_ BitVec 32) V!16389 V!16389 (_ BitVec 32) Int) ListLongMap!6513)

(declare-fun +!1416 (ListLongMap!6513 tuple2!7586) ListLongMap!6513)

(assert (=> b!436633 (= (getCurrentListMapNoExtraKeys!1454 lt!201414 lt!201415 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1416 (getCurrentListMapNoExtraKeys!1454 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7587 k0!794 v!412)))))

(declare-datatypes ((Unit!12947 0))(
  ( (Unit!12948) )
))
(declare-fun lt!201413 () Unit!12947)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!594 (array!26729 array!26727 (_ BitVec 32) (_ BitVec 32) V!16389 V!16389 (_ BitVec 32) (_ BitVec 64) V!16389 (_ BitVec 32) Int) Unit!12947)

(assert (=> b!436633 (= lt!201413 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!594 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!436634 () Bool)

(declare-fun res!257522 () Bool)

(assert (=> b!436634 (=> (not res!257522) (not e!257801))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!436634 (= res!257522 (validKeyInArray!0 k0!794))))

(declare-fun b!436635 () Bool)

(assert (=> b!436635 (= e!257803 e!257805)))

(declare-fun res!257517 () Bool)

(assert (=> b!436635 (=> (not res!257517) (not e!257805))))

(assert (=> b!436635 (= res!257517 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201416 () ListLongMap!6513)

(assert (=> b!436635 (= lt!201416 (getCurrentListMapNoExtraKeys!1454 lt!201414 lt!201415 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!436635 (= lt!201415 (array!26728 (store (arr!12810 _values!549) i!563 (ValueCellFull!5388 v!412)) (size!13162 _values!549)))))

(declare-fun lt!201417 () ListLongMap!6513)

(assert (=> b!436635 (= lt!201417 (getCurrentListMapNoExtraKeys!1454 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!436636 () Bool)

(declare-fun res!257520 () Bool)

(assert (=> b!436636 (=> (not res!257520) (not e!257801))))

(assert (=> b!436636 (= res!257520 (and (= (size!13162 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13163 _keys!709) (size!13162 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!436637 () Bool)

(declare-fun e!257802 () Bool)

(assert (=> b!436637 (= e!257802 (and e!257804 mapRes!18816))))

(declare-fun condMapEmpty!18816 () Bool)

(declare-fun mapDefault!18816 () ValueCell!5388)

(assert (=> b!436637 (= condMapEmpty!18816 (= (arr!12810 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5388)) mapDefault!18816)))))

(declare-fun b!436638 () Bool)

(declare-fun res!257519 () Bool)

(assert (=> b!436638 (=> (not res!257519) (not e!257801))))

(assert (=> b!436638 (= res!257519 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13163 _keys!709))))))

(declare-fun b!436639 () Bool)

(declare-fun res!257514 () Bool)

(assert (=> b!436639 (=> (not res!257514) (not e!257801))))

(declare-datatypes ((List!7630 0))(
  ( (Nil!7627) (Cons!7626 (h!8482 (_ BitVec 64)) (t!13394 List!7630)) )
))
(declare-fun arrayNoDuplicates!0 (array!26729 (_ BitVec 32) List!7630) Bool)

(assert (=> b!436639 (= res!257514 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7627))))

(declare-fun res!257512 () Bool)

(assert (=> start!40052 (=> (not res!257512) (not e!257801))))

(assert (=> start!40052 (= res!257512 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13163 _keys!709))))))

(assert (=> start!40052 e!257801))

(assert (=> start!40052 tp_is_empty!11463))

(assert (=> start!40052 tp!36462))

(assert (=> start!40052 true))

(declare-fun array_inv!9304 (array!26727) Bool)

(assert (=> start!40052 (and (array_inv!9304 _values!549) e!257802)))

(declare-fun array_inv!9305 (array!26729) Bool)

(assert (=> start!40052 (array_inv!9305 _keys!709)))

(declare-fun b!436640 () Bool)

(declare-fun res!257523 () Bool)

(assert (=> b!436640 (=> (not res!257523) (not e!257803))))

(assert (=> b!436640 (= res!257523 (arrayNoDuplicates!0 lt!201414 #b00000000000000000000000000000000 Nil!7627))))

(assert (= (and start!40052 res!257512) b!436631))

(assert (= (and b!436631 res!257518) b!436636))

(assert (= (and b!436636 res!257520) b!436632))

(assert (= (and b!436632 res!257515) b!436639))

(assert (= (and b!436639 res!257514) b!436638))

(assert (= (and b!436638 res!257519) b!436634))

(assert (= (and b!436634 res!257522) b!436626))

(assert (= (and b!436626 res!257521) b!436625))

(assert (= (and b!436625 res!257513) b!436630))

(assert (= (and b!436630 res!257516) b!436640))

(assert (= (and b!436640 res!257523) b!436629))

(assert (= (and b!436629 res!257511) b!436635))

(assert (= (and b!436635 res!257517) b!436633))

(assert (= (and b!436637 condMapEmpty!18816) mapIsEmpty!18816))

(assert (= (and b!436637 (not condMapEmpty!18816)) mapNonEmpty!18816))

(get-info :version)

(assert (= (and mapNonEmpty!18816 ((_ is ValueCellFull!5388) mapValue!18816)) b!436627))

(assert (= (and b!436637 ((_ is ValueCellFull!5388) mapDefault!18816)) b!436628))

(assert (= start!40052 b!436637))

(declare-fun m!424461 () Bool)

(assert (=> b!436626 m!424461))

(declare-fun m!424463 () Bool)

(assert (=> b!436634 m!424463))

(declare-fun m!424465 () Bool)

(assert (=> b!436639 m!424465))

(declare-fun m!424467 () Bool)

(assert (=> b!436625 m!424467))

(declare-fun m!424469 () Bool)

(assert (=> start!40052 m!424469))

(declare-fun m!424471 () Bool)

(assert (=> start!40052 m!424471))

(declare-fun m!424473 () Bool)

(assert (=> b!436640 m!424473))

(declare-fun m!424475 () Bool)

(assert (=> b!436631 m!424475))

(declare-fun m!424477 () Bool)

(assert (=> b!436635 m!424477))

(declare-fun m!424479 () Bool)

(assert (=> b!436635 m!424479))

(declare-fun m!424481 () Bool)

(assert (=> b!436635 m!424481))

(declare-fun m!424483 () Bool)

(assert (=> mapNonEmpty!18816 m!424483))

(declare-fun m!424485 () Bool)

(assert (=> b!436630 m!424485))

(declare-fun m!424487 () Bool)

(assert (=> b!436630 m!424487))

(declare-fun m!424489 () Bool)

(assert (=> b!436632 m!424489))

(declare-fun m!424491 () Bool)

(assert (=> b!436633 m!424491))

(declare-fun m!424493 () Bool)

(assert (=> b!436633 m!424493))

(assert (=> b!436633 m!424493))

(declare-fun m!424495 () Bool)

(assert (=> b!436633 m!424495))

(declare-fun m!424497 () Bool)

(assert (=> b!436633 m!424497))

(check-sat (not b_next!10311) (not mapNonEmpty!18816) (not b!436632) (not b!436634) (not b!436625) (not b!436633) (not b!436640) (not b!436635) (not b!436631) (not start!40052) (not b!436639) tp_is_empty!11463 b_and!18297 (not b!436630))
(check-sat b_and!18297 (not b_next!10311))
