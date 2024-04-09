; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40214 () Bool)

(assert start!40214)

(declare-fun b_free!10473 () Bool)

(declare-fun b_next!10473 () Bool)

(assert (=> start!40214 (= b_free!10473 (not b_next!10473))))

(declare-fun tp!36947 () Bool)

(declare-fun b_and!18459 () Bool)

(assert (=> start!40214 (= tp!36947 b_and!18459)))

(declare-fun b!440513 () Bool)

(declare-fun e!259501 () Bool)

(declare-fun e!259507 () Bool)

(declare-fun mapRes!19059 () Bool)

(assert (=> b!440513 (= e!259501 (and e!259507 mapRes!19059))))

(declare-fun condMapEmpty!19059 () Bool)

(declare-datatypes ((V!16605 0))(
  ( (V!16606 (val!5857 Int)) )
))
(declare-datatypes ((ValueCell!5469 0))(
  ( (ValueCellFull!5469 (v!8100 V!16605)) (EmptyCell!5469) )
))
(declare-datatypes ((array!27037 0))(
  ( (array!27038 (arr!12965 (Array (_ BitVec 32) ValueCell!5469)) (size!13317 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27037)

(declare-fun mapDefault!19059 () ValueCell!5469)

(assert (=> b!440513 (= condMapEmpty!19059 (= (arr!12965 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5469)) mapDefault!19059)))))

(declare-fun b!440514 () Bool)

(declare-fun res!260677 () Bool)

(declare-fun e!259502 () Bool)

(assert (=> b!440514 (=> (not res!260677) (not e!259502))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27039 0))(
  ( (array!27040 (arr!12966 (Array (_ BitVec 32) (_ BitVec 64))) (size!13318 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27039)

(assert (=> b!440514 (= res!260677 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13318 _keys!709))))))

(declare-fun mapNonEmpty!19059 () Bool)

(declare-fun tp!36948 () Bool)

(declare-fun e!259506 () Bool)

(assert (=> mapNonEmpty!19059 (= mapRes!19059 (and tp!36948 e!259506))))

(declare-fun mapValue!19059 () ValueCell!5469)

(declare-fun mapKey!19059 () (_ BitVec 32))

(declare-fun mapRest!19059 () (Array (_ BitVec 32) ValueCell!5469))

(assert (=> mapNonEmpty!19059 (= (arr!12965 _values!549) (store mapRest!19059 mapKey!19059 mapValue!19059))))

(declare-fun b!440515 () Bool)

(declare-fun e!259503 () Bool)

(assert (=> b!440515 (= e!259502 e!259503)))

(declare-fun res!260671 () Bool)

(assert (=> b!440515 (=> (not res!260671) (not e!259503))))

(declare-fun lt!202632 () array!27039)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27039 (_ BitVec 32)) Bool)

(assert (=> b!440515 (= res!260671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202632 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!440515 (= lt!202632 (array!27040 (store (arr!12966 _keys!709) i!563 k0!794) (size!13318 _keys!709)))))

(declare-fun res!260680 () Bool)

(assert (=> start!40214 (=> (not res!260680) (not e!259502))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40214 (= res!260680 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13318 _keys!709))))))

(assert (=> start!40214 e!259502))

(declare-fun tp_is_empty!11625 () Bool)

(assert (=> start!40214 tp_is_empty!11625))

(assert (=> start!40214 tp!36947))

(assert (=> start!40214 true))

(declare-fun array_inv!9402 (array!27037) Bool)

(assert (=> start!40214 (and (array_inv!9402 _values!549) e!259501)))

(declare-fun array_inv!9403 (array!27039) Bool)

(assert (=> start!40214 (array_inv!9403 _keys!709)))

(declare-fun b!440516 () Bool)

(declare-fun res!260670 () Bool)

(assert (=> b!440516 (=> (not res!260670) (not e!259503))))

(assert (=> b!440516 (= res!260670 (bvsle from!863 i!563))))

(declare-fun b!440517 () Bool)

(assert (=> b!440517 (= e!259507 tp_is_empty!11625)))

(declare-fun b!440518 () Bool)

(declare-fun res!260672 () Bool)

(assert (=> b!440518 (=> (not res!260672) (not e!259502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!440518 (= res!260672 (validKeyInArray!0 k0!794))))

(declare-fun b!440519 () Bool)

(declare-fun res!260678 () Bool)

(assert (=> b!440519 (=> (not res!260678) (not e!259502))))

(declare-fun arrayContainsKey!0 (array!27039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!440519 (= res!260678 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!440520 () Bool)

(declare-fun res!260682 () Bool)

(assert (=> b!440520 (=> (not res!260682) (not e!259502))))

(assert (=> b!440520 (= res!260682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!440521 () Bool)

(declare-fun res!260675 () Bool)

(assert (=> b!440521 (=> (not res!260675) (not e!259502))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!440521 (= res!260675 (and (= (size!13317 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13318 _keys!709) (size!13317 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!440522 () Bool)

(declare-fun res!260679 () Bool)

(assert (=> b!440522 (=> (not res!260679) (not e!259502))))

(assert (=> b!440522 (= res!260679 (or (= (select (arr!12966 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12966 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!440523 () Bool)

(declare-fun res!260673 () Bool)

(assert (=> b!440523 (=> (not res!260673) (not e!259502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!440523 (= res!260673 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!19059 () Bool)

(assert (=> mapIsEmpty!19059 mapRes!19059))

(declare-fun b!440524 () Bool)

(assert (=> b!440524 (= e!259506 tp_is_empty!11625)))

(declare-fun b!440525 () Bool)

(declare-fun e!259505 () Bool)

(assert (=> b!440525 (= e!259505 (not true))))

(declare-fun minValue!515 () V!16605)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16605)

(declare-fun v!412 () V!16605)

(declare-fun lt!202631 () array!27037)

(declare-datatypes ((tuple2!7710 0))(
  ( (tuple2!7711 (_1!3865 (_ BitVec 64)) (_2!3865 V!16605)) )
))
(declare-datatypes ((List!7750 0))(
  ( (Nil!7747) (Cons!7746 (h!8602 tuple2!7710) (t!13514 List!7750)) )
))
(declare-datatypes ((ListLongMap!6637 0))(
  ( (ListLongMap!6638 (toList!3334 List!7750)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1516 (array!27039 array!27037 (_ BitVec 32) (_ BitVec 32) V!16605 V!16605 (_ BitVec 32) Int) ListLongMap!6637)

(declare-fun +!1470 (ListLongMap!6637 tuple2!7710) ListLongMap!6637)

(assert (=> b!440525 (= (getCurrentListMapNoExtraKeys!1516 lt!202632 lt!202631 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1470 (getCurrentListMapNoExtraKeys!1516 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7711 k0!794 v!412)))))

(declare-datatypes ((Unit!13055 0))(
  ( (Unit!13056) )
))
(declare-fun lt!202628 () Unit!13055)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!648 (array!27039 array!27037 (_ BitVec 32) (_ BitVec 32) V!16605 V!16605 (_ BitVec 32) (_ BitVec 64) V!16605 (_ BitVec 32) Int) Unit!13055)

(assert (=> b!440525 (= lt!202628 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!648 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!440526 () Bool)

(assert (=> b!440526 (= e!259503 e!259505)))

(declare-fun res!260674 () Bool)

(assert (=> b!440526 (=> (not res!260674) (not e!259505))))

(assert (=> b!440526 (= res!260674 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202630 () ListLongMap!6637)

(assert (=> b!440526 (= lt!202630 (getCurrentListMapNoExtraKeys!1516 lt!202632 lt!202631 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!440526 (= lt!202631 (array!27038 (store (arr!12965 _values!549) i!563 (ValueCellFull!5469 v!412)) (size!13317 _values!549)))))

(declare-fun lt!202629 () ListLongMap!6637)

(assert (=> b!440526 (= lt!202629 (getCurrentListMapNoExtraKeys!1516 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440527 () Bool)

(declare-fun res!260681 () Bool)

(assert (=> b!440527 (=> (not res!260681) (not e!259503))))

(declare-datatypes ((List!7751 0))(
  ( (Nil!7748) (Cons!7747 (h!8603 (_ BitVec 64)) (t!13515 List!7751)) )
))
(declare-fun arrayNoDuplicates!0 (array!27039 (_ BitVec 32) List!7751) Bool)

(assert (=> b!440527 (= res!260681 (arrayNoDuplicates!0 lt!202632 #b00000000000000000000000000000000 Nil!7748))))

(declare-fun b!440528 () Bool)

(declare-fun res!260676 () Bool)

(assert (=> b!440528 (=> (not res!260676) (not e!259502))))

(assert (=> b!440528 (= res!260676 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7748))))

(assert (= (and start!40214 res!260680) b!440523))

(assert (= (and b!440523 res!260673) b!440521))

(assert (= (and b!440521 res!260675) b!440520))

(assert (= (and b!440520 res!260682) b!440528))

(assert (= (and b!440528 res!260676) b!440514))

(assert (= (and b!440514 res!260677) b!440518))

(assert (= (and b!440518 res!260672) b!440522))

(assert (= (and b!440522 res!260679) b!440519))

(assert (= (and b!440519 res!260678) b!440515))

(assert (= (and b!440515 res!260671) b!440527))

(assert (= (and b!440527 res!260681) b!440516))

(assert (= (and b!440516 res!260670) b!440526))

(assert (= (and b!440526 res!260674) b!440525))

(assert (= (and b!440513 condMapEmpty!19059) mapIsEmpty!19059))

(assert (= (and b!440513 (not condMapEmpty!19059)) mapNonEmpty!19059))

(get-info :version)

(assert (= (and mapNonEmpty!19059 ((_ is ValueCellFull!5469) mapValue!19059)) b!440524))

(assert (= (and b!440513 ((_ is ValueCellFull!5469) mapDefault!19059)) b!440517))

(assert (= start!40214 b!440513))

(declare-fun m!427539 () Bool)

(assert (=> b!440525 m!427539))

(declare-fun m!427541 () Bool)

(assert (=> b!440525 m!427541))

(assert (=> b!440525 m!427541))

(declare-fun m!427543 () Bool)

(assert (=> b!440525 m!427543))

(declare-fun m!427545 () Bool)

(assert (=> b!440525 m!427545))

(declare-fun m!427547 () Bool)

(assert (=> b!440522 m!427547))

(declare-fun m!427549 () Bool)

(assert (=> start!40214 m!427549))

(declare-fun m!427551 () Bool)

(assert (=> start!40214 m!427551))

(declare-fun m!427553 () Bool)

(assert (=> mapNonEmpty!19059 m!427553))

(declare-fun m!427555 () Bool)

(assert (=> b!440528 m!427555))

(declare-fun m!427557 () Bool)

(assert (=> b!440520 m!427557))

(declare-fun m!427559 () Bool)

(assert (=> b!440526 m!427559))

(declare-fun m!427561 () Bool)

(assert (=> b!440526 m!427561))

(declare-fun m!427563 () Bool)

(assert (=> b!440526 m!427563))

(declare-fun m!427565 () Bool)

(assert (=> b!440515 m!427565))

(declare-fun m!427567 () Bool)

(assert (=> b!440515 m!427567))

(declare-fun m!427569 () Bool)

(assert (=> b!440527 m!427569))

(declare-fun m!427571 () Bool)

(assert (=> b!440523 m!427571))

(declare-fun m!427573 () Bool)

(assert (=> b!440519 m!427573))

(declare-fun m!427575 () Bool)

(assert (=> b!440518 m!427575))

(check-sat (not b!440515) (not b!440528) (not b!440519) (not b!440525) (not b!440523) b_and!18459 tp_is_empty!11625 (not mapNonEmpty!19059) (not b_next!10473) (not start!40214) (not b!440526) (not b!440520) (not b!440527) (not b!440518))
(check-sat b_and!18459 (not b_next!10473))
