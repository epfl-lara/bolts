; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38636 () Bool)

(assert start!38636)

(declare-fun b_free!9165 () Bool)

(declare-fun b_next!9165 () Bool)

(assert (=> start!38636 (= b_free!9165 (not b_next!9165))))

(declare-fun tp!32618 () Bool)

(declare-fun b_and!16569 () Bool)

(assert (=> start!38636 (= tp!32618 b_and!16569)))

(declare-fun b!400471 () Bool)

(declare-fun res!230497 () Bool)

(declare-fun e!241633 () Bool)

(assert (=> b!400471 (=> (not res!230497) (not e!241633))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!23971 0))(
  ( (array!23972 (arr!11432 (Array (_ BitVec 32) (_ BitVec 64))) (size!11784 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23971)

(assert (=> b!400471 (= res!230497 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11784 _keys!709))))))

(declare-fun b!400472 () Bool)

(declare-fun e!241628 () Bool)

(declare-datatypes ((V!14501 0))(
  ( (V!14502 (val!5068 Int)) )
))
(declare-datatypes ((tuple2!6656 0))(
  ( (tuple2!6657 (_1!3338 (_ BitVec 64)) (_2!3338 V!14501)) )
))
(declare-datatypes ((List!6608 0))(
  ( (Nil!6605) (Cons!6604 (h!7460 tuple2!6656) (t!11790 List!6608)) )
))
(declare-datatypes ((ListLongMap!5583 0))(
  ( (ListLongMap!5584 (toList!2807 List!6608)) )
))
(declare-fun call!28156 () ListLongMap!5583)

(declare-fun call!28157 () ListLongMap!5583)

(assert (=> b!400472 (= e!241628 (= call!28156 call!28157))))

(declare-fun b!400473 () Bool)

(declare-fun e!241632 () Bool)

(declare-fun e!241631 () Bool)

(declare-fun mapRes!16692 () Bool)

(assert (=> b!400473 (= e!241632 (and e!241631 mapRes!16692))))

(declare-fun condMapEmpty!16692 () Bool)

(declare-datatypes ((ValueCell!4680 0))(
  ( (ValueCellFull!4680 (v!7311 V!14501)) (EmptyCell!4680) )
))
(declare-datatypes ((array!23973 0))(
  ( (array!23974 (arr!11433 (Array (_ BitVec 32) ValueCell!4680)) (size!11785 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23973)

(declare-fun mapDefault!16692 () ValueCell!4680)

(assert (=> b!400473 (= condMapEmpty!16692 (= (arr!11433 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4680)) mapDefault!16692)))))

(declare-fun lt!187682 () array!23971)

(declare-fun bm!28153 () Bool)

(declare-fun minValue!515 () V!14501)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!14501)

(declare-fun v!412 () V!14501)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun c!54629 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1022 (array!23971 array!23973 (_ BitVec 32) (_ BitVec 32) V!14501 V!14501 (_ BitVec 32) Int) ListLongMap!5583)

(assert (=> bm!28153 (= call!28157 (getCurrentListMapNoExtraKeys!1022 (ite c!54629 lt!187682 _keys!709) (ite c!54629 (array!23974 (store (arr!11433 _values!549) i!563 (ValueCellFull!4680 v!412)) (size!11785 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400475 () Bool)

(declare-fun res!230503 () Bool)

(assert (=> b!400475 (=> (not res!230503) (not e!241633))))

(assert (=> b!400475 (= res!230503 (and (= (size!11785 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11784 _keys!709) (size!11785 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!400476 () Bool)

(declare-fun res!230506 () Bool)

(assert (=> b!400476 (=> (not res!230506) (not e!241633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!400476 (= res!230506 (validMask!0 mask!1025))))

(declare-fun b!400477 () Bool)

(declare-fun res!230502 () Bool)

(declare-fun e!241627 () Bool)

(assert (=> b!400477 (=> (not res!230502) (not e!241627))))

(assert (=> b!400477 (= res!230502 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11784 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!400478 () Bool)

(declare-fun tp_is_empty!10047 () Bool)

(assert (=> b!400478 (= e!241631 tp_is_empty!10047)))

(declare-fun bm!28154 () Bool)

(assert (=> bm!28154 (= call!28156 (getCurrentListMapNoExtraKeys!1022 (ite c!54629 _keys!709 lt!187682) (ite c!54629 _values!549 (array!23974 (store (arr!11433 _values!549) i!563 (ValueCellFull!4680 v!412)) (size!11785 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400479 () Bool)

(declare-fun e!241630 () Bool)

(assert (=> b!400479 (= e!241630 tp_is_empty!10047)))

(declare-fun b!400480 () Bool)

(declare-fun res!230501 () Bool)

(assert (=> b!400480 (=> (not res!230501) (not e!241633))))

(declare-datatypes ((List!6609 0))(
  ( (Nil!6606) (Cons!6605 (h!7461 (_ BitVec 64)) (t!11791 List!6609)) )
))
(declare-fun arrayNoDuplicates!0 (array!23971 (_ BitVec 32) List!6609) Bool)

(assert (=> b!400480 (= res!230501 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6606))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun b!400481 () Bool)

(declare-fun +!1094 (ListLongMap!5583 tuple2!6656) ListLongMap!5583)

(assert (=> b!400481 (= e!241628 (= call!28157 (+!1094 call!28156 (tuple2!6657 k0!794 v!412))))))

(declare-fun mapIsEmpty!16692 () Bool)

(assert (=> mapIsEmpty!16692 mapRes!16692))

(declare-fun b!400474 () Bool)

(assert (=> b!400474 (= e!241633 e!241627)))

(declare-fun res!230499 () Bool)

(assert (=> b!400474 (=> (not res!230499) (not e!241627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23971 (_ BitVec 32)) Bool)

(assert (=> b!400474 (= res!230499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187682 mask!1025))))

(assert (=> b!400474 (= lt!187682 (array!23972 (store (arr!11432 _keys!709) i!563 k0!794) (size!11784 _keys!709)))))

(declare-fun res!230505 () Bool)

(assert (=> start!38636 (=> (not res!230505) (not e!241633))))

(assert (=> start!38636 (= res!230505 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11784 _keys!709))))))

(assert (=> start!38636 e!241633))

(assert (=> start!38636 tp_is_empty!10047))

(assert (=> start!38636 tp!32618))

(assert (=> start!38636 true))

(declare-fun array_inv!8368 (array!23973) Bool)

(assert (=> start!38636 (and (array_inv!8368 _values!549) e!241632)))

(declare-fun array_inv!8369 (array!23971) Bool)

(assert (=> start!38636 (array_inv!8369 _keys!709)))

(declare-fun b!400482 () Bool)

(declare-fun res!230504 () Bool)

(assert (=> b!400482 (=> (not res!230504) (not e!241627))))

(assert (=> b!400482 (= res!230504 (arrayNoDuplicates!0 lt!187682 #b00000000000000000000000000000000 Nil!6606))))

(declare-fun b!400483 () Bool)

(declare-fun res!230508 () Bool)

(assert (=> b!400483 (=> (not res!230508) (not e!241633))))

(assert (=> b!400483 (= res!230508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!16692 () Bool)

(declare-fun tp!32619 () Bool)

(assert (=> mapNonEmpty!16692 (= mapRes!16692 (and tp!32619 e!241630))))

(declare-fun mapKey!16692 () (_ BitVec 32))

(declare-fun mapValue!16692 () ValueCell!4680)

(declare-fun mapRest!16692 () (Array (_ BitVec 32) ValueCell!4680))

(assert (=> mapNonEmpty!16692 (= (arr!11433 _values!549) (store mapRest!16692 mapKey!16692 mapValue!16692))))

(declare-fun b!400484 () Bool)

(declare-fun res!230507 () Bool)

(assert (=> b!400484 (=> (not res!230507) (not e!241633))))

(declare-fun arrayContainsKey!0 (array!23971 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400484 (= res!230507 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!400485 () Bool)

(assert (=> b!400485 (= e!241627 (not true))))

(assert (=> b!400485 e!241628))

(assert (=> b!400485 (= c!54629 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12089 0))(
  ( (Unit!12090) )
))
(declare-fun lt!187683 () Unit!12089)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!307 (array!23971 array!23973 (_ BitVec 32) (_ BitVec 32) V!14501 V!14501 (_ BitVec 32) (_ BitVec 64) V!14501 (_ BitVec 32) Int) Unit!12089)

(assert (=> b!400485 (= lt!187683 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!307 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400486 () Bool)

(declare-fun res!230498 () Bool)

(assert (=> b!400486 (=> (not res!230498) (not e!241633))))

(assert (=> b!400486 (= res!230498 (or (= (select (arr!11432 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11432 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!400487 () Bool)

(declare-fun res!230500 () Bool)

(assert (=> b!400487 (=> (not res!230500) (not e!241633))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!400487 (= res!230500 (validKeyInArray!0 k0!794))))

(assert (= (and start!38636 res!230505) b!400476))

(assert (= (and b!400476 res!230506) b!400475))

(assert (= (and b!400475 res!230503) b!400483))

(assert (= (and b!400483 res!230508) b!400480))

(assert (= (and b!400480 res!230501) b!400471))

(assert (= (and b!400471 res!230497) b!400487))

(assert (= (and b!400487 res!230500) b!400486))

(assert (= (and b!400486 res!230498) b!400484))

(assert (= (and b!400484 res!230507) b!400474))

(assert (= (and b!400474 res!230499) b!400482))

(assert (= (and b!400482 res!230504) b!400477))

(assert (= (and b!400477 res!230502) b!400485))

(assert (= (and b!400485 c!54629) b!400481))

(assert (= (and b!400485 (not c!54629)) b!400472))

(assert (= (or b!400481 b!400472) bm!28153))

(assert (= (or b!400481 b!400472) bm!28154))

(assert (= (and b!400473 condMapEmpty!16692) mapIsEmpty!16692))

(assert (= (and b!400473 (not condMapEmpty!16692)) mapNonEmpty!16692))

(get-info :version)

(assert (= (and mapNonEmpty!16692 ((_ is ValueCellFull!4680) mapValue!16692)) b!400479))

(assert (= (and b!400473 ((_ is ValueCellFull!4680) mapDefault!16692)) b!400478))

(assert (= start!38636 b!400473))

(declare-fun m!394627 () Bool)

(assert (=> bm!28154 m!394627))

(declare-fun m!394629 () Bool)

(assert (=> bm!28154 m!394629))

(declare-fun m!394631 () Bool)

(assert (=> start!38636 m!394631))

(declare-fun m!394633 () Bool)

(assert (=> start!38636 m!394633))

(declare-fun m!394635 () Bool)

(assert (=> b!400474 m!394635))

(declare-fun m!394637 () Bool)

(assert (=> b!400474 m!394637))

(declare-fun m!394639 () Bool)

(assert (=> b!400481 m!394639))

(declare-fun m!394641 () Bool)

(assert (=> b!400484 m!394641))

(declare-fun m!394643 () Bool)

(assert (=> mapNonEmpty!16692 m!394643))

(declare-fun m!394645 () Bool)

(assert (=> b!400483 m!394645))

(declare-fun m!394647 () Bool)

(assert (=> b!400480 m!394647))

(declare-fun m!394649 () Bool)

(assert (=> b!400482 m!394649))

(declare-fun m!394651 () Bool)

(assert (=> b!400487 m!394651))

(declare-fun m!394653 () Bool)

(assert (=> b!400476 m!394653))

(declare-fun m!394655 () Bool)

(assert (=> b!400486 m!394655))

(assert (=> bm!28153 m!394627))

(declare-fun m!394657 () Bool)

(assert (=> bm!28153 m!394657))

(declare-fun m!394659 () Bool)

(assert (=> b!400485 m!394659))

(check-sat b_and!16569 (not b!400487) (not bm!28153) (not start!38636) (not b!400474) (not b!400480) (not b!400482) (not b!400485) (not b!400484) (not b!400481) tp_is_empty!10047 (not b_next!9165) (not b!400476) (not mapNonEmpty!16692) (not bm!28154) (not b!400483))
(check-sat b_and!16569 (not b_next!9165))
