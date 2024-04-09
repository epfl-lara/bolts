; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40488 () Bool)

(assert start!40488)

(declare-fun b_free!10551 () Bool)

(declare-fun b_next!10551 () Bool)

(assert (=> start!40488 (= b_free!10551 (not b_next!10551))))

(declare-fun tp!37431 () Bool)

(declare-fun b_and!18553 () Bool)

(assert (=> start!40488 (= tp!37431 b_and!18553)))

(declare-fun b!445612 () Bool)

(declare-fun res!264522 () Bool)

(declare-fun e!261876 () Bool)

(assert (=> b!445612 (=> (not res!264522) (not e!261876))))

(declare-datatypes ((array!27497 0))(
  ( (array!27498 (arr!13193 (Array (_ BitVec 32) (_ BitVec 64))) (size!13545 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27497)

(declare-datatypes ((List!7872 0))(
  ( (Nil!7869) (Cons!7868 (h!8724 (_ BitVec 64)) (t!13638 List!7872)) )
))
(declare-fun arrayNoDuplicates!0 (array!27497 (_ BitVec 32) List!7872) Bool)

(assert (=> b!445612 (= res!264522 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7869))))

(declare-fun b!445613 () Bool)

(declare-fun res!264521 () Bool)

(assert (=> b!445613 (=> (not res!264521) (not e!261876))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445613 (= res!264521 (validKeyInArray!0 k0!794))))

(declare-fun b!445614 () Bool)

(declare-fun res!264526 () Bool)

(declare-fun e!261873 () Bool)

(assert (=> b!445614 (=> (not res!264526) (not e!261873))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!445614 (= res!264526 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13545 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!445615 () Bool)

(declare-fun res!264529 () Bool)

(assert (=> b!445615 (=> (not res!264529) (not e!261876))))

(declare-fun arrayContainsKey!0 (array!27497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!445615 (= res!264529 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!445616 () Bool)

(declare-fun e!261877 () Bool)

(declare-datatypes ((V!16925 0))(
  ( (V!16926 (val!5977 Int)) )
))
(declare-datatypes ((tuple2!7772 0))(
  ( (tuple2!7773 (_1!3896 (_ BitVec 64)) (_2!3896 V!16925)) )
))
(declare-datatypes ((List!7873 0))(
  ( (Nil!7870) (Cons!7869 (h!8725 tuple2!7772) (t!13639 List!7873)) )
))
(declare-datatypes ((ListLongMap!6699 0))(
  ( (ListLongMap!6700 (toList!3365 List!7873)) )
))
(declare-fun call!29607 () ListLongMap!6699)

(declare-fun call!29606 () ListLongMap!6699)

(assert (=> b!445616 (= e!261877 (= call!29607 call!29606))))

(declare-fun mapIsEmpty!19425 () Bool)

(declare-fun mapRes!19425 () Bool)

(assert (=> mapIsEmpty!19425 mapRes!19425))

(declare-fun b!445617 () Bool)

(declare-fun v!412 () V!16925)

(declare-fun +!1495 (ListLongMap!6699 tuple2!7772) ListLongMap!6699)

(assert (=> b!445617 (= e!261877 (= call!29606 (+!1495 call!29607 (tuple2!7773 k0!794 v!412))))))

(declare-fun b!445618 () Bool)

(declare-fun res!264527 () Bool)

(assert (=> b!445618 (=> (not res!264527) (not e!261876))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!445618 (= res!264527 (validMask!0 mask!1025))))

(declare-fun lt!203640 () array!27497)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5589 0))(
  ( (ValueCellFull!5589 (v!8224 V!16925)) (EmptyCell!5589) )
))
(declare-datatypes ((array!27499 0))(
  ( (array!27500 (arr!13194 (Array (_ BitVec 32) ValueCell!5589)) (size!13546 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27499)

(declare-fun zeroValue!515 () V!16925)

(declare-fun c!55797 () Bool)

(declare-fun minValue!515 () V!16925)

(declare-fun bm!29603 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1547 (array!27497 array!27499 (_ BitVec 32) (_ BitVec 32) V!16925 V!16925 (_ BitVec 32) Int) ListLongMap!6699)

(assert (=> bm!29603 (= call!29607 (getCurrentListMapNoExtraKeys!1547 (ite c!55797 _keys!709 lt!203640) (ite c!55797 _values!549 (array!27500 (store (arr!13194 _values!549) i!563 (ValueCellFull!5589 v!412)) (size!13546 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445619 () Bool)

(assert (=> b!445619 (= e!261873 (not true))))

(assert (=> b!445619 e!261877))

(assert (=> b!445619 (= c!55797 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13103 0))(
  ( (Unit!13104) )
))
(declare-fun lt!203639 () Unit!13103)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!671 (array!27497 array!27499 (_ BitVec 32) (_ BitVec 32) V!16925 V!16925 (_ BitVec 32) (_ BitVec 64) V!16925 (_ BitVec 32) Int) Unit!13103)

(assert (=> b!445619 (= lt!203639 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!671 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445620 () Bool)

(declare-fun res!264523 () Bool)

(assert (=> b!445620 (=> (not res!264523) (not e!261873))))

(assert (=> b!445620 (= res!264523 (arrayNoDuplicates!0 lt!203640 #b00000000000000000000000000000000 Nil!7869))))

(declare-fun b!445621 () Bool)

(declare-fun res!264531 () Bool)

(assert (=> b!445621 (=> (not res!264531) (not e!261876))))

(assert (=> b!445621 (= res!264531 (and (= (size!13546 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13545 _keys!709) (size!13546 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445622 () Bool)

(declare-fun e!261875 () Bool)

(declare-fun e!261878 () Bool)

(assert (=> b!445622 (= e!261875 (and e!261878 mapRes!19425))))

(declare-fun condMapEmpty!19425 () Bool)

(declare-fun mapDefault!19425 () ValueCell!5589)

(assert (=> b!445622 (= condMapEmpty!19425 (= (arr!13194 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5589)) mapDefault!19425)))))

(declare-fun res!264530 () Bool)

(assert (=> start!40488 (=> (not res!264530) (not e!261876))))

(assert (=> start!40488 (= res!264530 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13545 _keys!709))))))

(assert (=> start!40488 e!261876))

(declare-fun tp_is_empty!11865 () Bool)

(assert (=> start!40488 tp_is_empty!11865))

(assert (=> start!40488 tp!37431))

(assert (=> start!40488 true))

(declare-fun array_inv!9558 (array!27499) Bool)

(assert (=> start!40488 (and (array_inv!9558 _values!549) e!261875)))

(declare-fun array_inv!9559 (array!27497) Bool)

(assert (=> start!40488 (array_inv!9559 _keys!709)))

(declare-fun b!445623 () Bool)

(declare-fun e!261879 () Bool)

(assert (=> b!445623 (= e!261879 tp_is_empty!11865)))

(declare-fun b!445624 () Bool)

(assert (=> b!445624 (= e!261876 e!261873)))

(declare-fun res!264525 () Bool)

(assert (=> b!445624 (=> (not res!264525) (not e!261873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27497 (_ BitVec 32)) Bool)

(assert (=> b!445624 (= res!264525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203640 mask!1025))))

(assert (=> b!445624 (= lt!203640 (array!27498 (store (arr!13193 _keys!709) i!563 k0!794) (size!13545 _keys!709)))))

(declare-fun mapNonEmpty!19425 () Bool)

(declare-fun tp!37430 () Bool)

(assert (=> mapNonEmpty!19425 (= mapRes!19425 (and tp!37430 e!261879))))

(declare-fun mapValue!19425 () ValueCell!5589)

(declare-fun mapKey!19425 () (_ BitVec 32))

(declare-fun mapRest!19425 () (Array (_ BitVec 32) ValueCell!5589))

(assert (=> mapNonEmpty!19425 (= (arr!13194 _values!549) (store mapRest!19425 mapKey!19425 mapValue!19425))))

(declare-fun b!445625 () Bool)

(declare-fun res!264532 () Bool)

(assert (=> b!445625 (=> (not res!264532) (not e!261876))))

(assert (=> b!445625 (= res!264532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!29604 () Bool)

(assert (=> bm!29604 (= call!29606 (getCurrentListMapNoExtraKeys!1547 (ite c!55797 lt!203640 _keys!709) (ite c!55797 (array!27500 (store (arr!13194 _values!549) i!563 (ValueCellFull!5589 v!412)) (size!13546 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445626 () Bool)

(declare-fun res!264528 () Bool)

(assert (=> b!445626 (=> (not res!264528) (not e!261876))))

(assert (=> b!445626 (= res!264528 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13545 _keys!709))))))

(declare-fun b!445627 () Bool)

(declare-fun res!264524 () Bool)

(assert (=> b!445627 (=> (not res!264524) (not e!261876))))

(assert (=> b!445627 (= res!264524 (or (= (select (arr!13193 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13193 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!445628 () Bool)

(assert (=> b!445628 (= e!261878 tp_is_empty!11865)))

(assert (= (and start!40488 res!264530) b!445618))

(assert (= (and b!445618 res!264527) b!445621))

(assert (= (and b!445621 res!264531) b!445625))

(assert (= (and b!445625 res!264532) b!445612))

(assert (= (and b!445612 res!264522) b!445626))

(assert (= (and b!445626 res!264528) b!445613))

(assert (= (and b!445613 res!264521) b!445627))

(assert (= (and b!445627 res!264524) b!445615))

(assert (= (and b!445615 res!264529) b!445624))

(assert (= (and b!445624 res!264525) b!445620))

(assert (= (and b!445620 res!264523) b!445614))

(assert (= (and b!445614 res!264526) b!445619))

(assert (= (and b!445619 c!55797) b!445617))

(assert (= (and b!445619 (not c!55797)) b!445616))

(assert (= (or b!445617 b!445616) bm!29604))

(assert (= (or b!445617 b!445616) bm!29603))

(assert (= (and b!445622 condMapEmpty!19425) mapIsEmpty!19425))

(assert (= (and b!445622 (not condMapEmpty!19425)) mapNonEmpty!19425))

(get-info :version)

(assert (= (and mapNonEmpty!19425 ((_ is ValueCellFull!5589) mapValue!19425)) b!445623))

(assert (= (and b!445622 ((_ is ValueCellFull!5589) mapDefault!19425)) b!445628))

(assert (= start!40488 b!445622))

(declare-fun m!431013 () Bool)

(assert (=> b!445620 m!431013))

(declare-fun m!431015 () Bool)

(assert (=> start!40488 m!431015))

(declare-fun m!431017 () Bool)

(assert (=> start!40488 m!431017))

(declare-fun m!431019 () Bool)

(assert (=> b!445624 m!431019))

(declare-fun m!431021 () Bool)

(assert (=> b!445624 m!431021))

(declare-fun m!431023 () Bool)

(assert (=> b!445625 m!431023))

(declare-fun m!431025 () Bool)

(assert (=> mapNonEmpty!19425 m!431025))

(declare-fun m!431027 () Bool)

(assert (=> b!445627 m!431027))

(declare-fun m!431029 () Bool)

(assert (=> bm!29604 m!431029))

(declare-fun m!431031 () Bool)

(assert (=> bm!29604 m!431031))

(declare-fun m!431033 () Bool)

(assert (=> b!445612 m!431033))

(declare-fun m!431035 () Bool)

(assert (=> b!445615 m!431035))

(assert (=> bm!29603 m!431029))

(declare-fun m!431037 () Bool)

(assert (=> bm!29603 m!431037))

(declare-fun m!431039 () Bool)

(assert (=> b!445619 m!431039))

(declare-fun m!431041 () Bool)

(assert (=> b!445618 m!431041))

(declare-fun m!431043 () Bool)

(assert (=> b!445613 m!431043))

(declare-fun m!431045 () Bool)

(assert (=> b!445617 m!431045))

(check-sat (not b!445624) (not b!445617) (not b!445612) (not b!445619) (not mapNonEmpty!19425) (not bm!29603) (not b!445613) (not b_next!10551) (not b!445618) (not b!445625) (not start!40488) (not b!445615) (not bm!29604) b_and!18553 tp_is_empty!11865 (not b!445620))
(check-sat b_and!18553 (not b_next!10551))
