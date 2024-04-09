; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38642 () Bool)

(assert start!38642)

(declare-fun b_free!9171 () Bool)

(declare-fun b_next!9171 () Bool)

(assert (=> start!38642 (= b_free!9171 (not b_next!9171))))

(declare-fun tp!32636 () Bool)

(declare-fun b_and!16575 () Bool)

(assert (=> start!38642 (= tp!32636 b_and!16575)))

(declare-fun mapIsEmpty!16701 () Bool)

(declare-fun mapRes!16701 () Bool)

(assert (=> mapIsEmpty!16701 mapRes!16701))

(declare-fun b!400624 () Bool)

(declare-fun res!230613 () Bool)

(declare-fun e!241690 () Bool)

(assert (=> b!400624 (=> (not res!230613) (not e!241690))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14509 0))(
  ( (V!14510 (val!5071 Int)) )
))
(declare-datatypes ((ValueCell!4683 0))(
  ( (ValueCellFull!4683 (v!7314 V!14509)) (EmptyCell!4683) )
))
(declare-datatypes ((array!23983 0))(
  ( (array!23984 (arr!11438 (Array (_ BitVec 32) ValueCell!4683)) (size!11790 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23983)

(declare-datatypes ((array!23985 0))(
  ( (array!23986 (arr!11439 (Array (_ BitVec 32) (_ BitVec 64))) (size!11791 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23985)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!400624 (= res!230613 (and (= (size!11790 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11791 _keys!709) (size!11790 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!400625 () Bool)

(declare-fun e!241694 () Bool)

(declare-fun tp_is_empty!10053 () Bool)

(assert (=> b!400625 (= e!241694 tp_is_empty!10053)))

(declare-fun b!400626 () Bool)

(declare-fun res!230606 () Bool)

(declare-fun e!241691 () Bool)

(assert (=> b!400626 (=> (not res!230606) (not e!241691))))

(declare-fun lt!187701 () array!23985)

(declare-datatypes ((List!6613 0))(
  ( (Nil!6610) (Cons!6609 (h!7465 (_ BitVec 64)) (t!11795 List!6613)) )
))
(declare-fun arrayNoDuplicates!0 (array!23985 (_ BitVec 32) List!6613) Bool)

(assert (=> b!400626 (= res!230606 (arrayNoDuplicates!0 lt!187701 #b00000000000000000000000000000000 Nil!6610))))

(declare-fun e!241693 () Bool)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((tuple2!6662 0))(
  ( (tuple2!6663 (_1!3341 (_ BitVec 64)) (_2!3341 V!14509)) )
))
(declare-datatypes ((List!6614 0))(
  ( (Nil!6611) (Cons!6610 (h!7466 tuple2!6662) (t!11796 List!6614)) )
))
(declare-datatypes ((ListLongMap!5589 0))(
  ( (ListLongMap!5590 (toList!2810 List!6614)) )
))
(declare-fun call!28174 () ListLongMap!5589)

(declare-fun v!412 () V!14509)

(declare-fun call!28175 () ListLongMap!5589)

(declare-fun b!400627 () Bool)

(declare-fun +!1097 (ListLongMap!5589 tuple2!6662) ListLongMap!5589)

(assert (=> b!400627 (= e!241693 (= call!28175 (+!1097 call!28174 (tuple2!6663 k0!794 v!412))))))

(declare-fun b!400628 () Bool)

(assert (=> b!400628 (= e!241690 e!241691)))

(declare-fun res!230605 () Bool)

(assert (=> b!400628 (=> (not res!230605) (not e!241691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23985 (_ BitVec 32)) Bool)

(assert (=> b!400628 (= res!230605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187701 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!400628 (= lt!187701 (array!23986 (store (arr!11439 _keys!709) i!563 k0!794) (size!11791 _keys!709)))))

(declare-fun b!400629 () Bool)

(assert (=> b!400629 (= e!241693 (= call!28174 call!28175))))

(declare-fun b!400630 () Bool)

(declare-fun res!230611 () Bool)

(assert (=> b!400630 (=> (not res!230611) (not e!241690))))

(assert (=> b!400630 (= res!230611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!400631 () Bool)

(declare-fun res!230616 () Bool)

(assert (=> b!400631 (=> (not res!230616) (not e!241690))))

(declare-fun arrayContainsKey!0 (array!23985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400631 (= res!230616 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!400632 () Bool)

(declare-fun e!241692 () Bool)

(assert (=> b!400632 (= e!241692 (and e!241694 mapRes!16701))))

(declare-fun condMapEmpty!16701 () Bool)

(declare-fun mapDefault!16701 () ValueCell!4683)

(assert (=> b!400632 (= condMapEmpty!16701 (= (arr!11438 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4683)) mapDefault!16701)))))

(declare-fun mapNonEmpty!16701 () Bool)

(declare-fun tp!32637 () Bool)

(declare-fun e!241696 () Bool)

(assert (=> mapNonEmpty!16701 (= mapRes!16701 (and tp!32637 e!241696))))

(declare-fun mapValue!16701 () ValueCell!4683)

(declare-fun mapRest!16701 () (Array (_ BitVec 32) ValueCell!4683))

(declare-fun mapKey!16701 () (_ BitVec 32))

(assert (=> mapNonEmpty!16701 (= (arr!11438 _values!549) (store mapRest!16701 mapKey!16701 mapValue!16701))))

(declare-fun minValue!515 () V!14509)

(declare-fun defaultEntry!557 () Int)

(declare-fun c!54638 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun bm!28171 () Bool)

(declare-fun zeroValue!515 () V!14509)

(declare-fun getCurrentListMapNoExtraKeys!1024 (array!23985 array!23983 (_ BitVec 32) (_ BitVec 32) V!14509 V!14509 (_ BitVec 32) Int) ListLongMap!5589)

(assert (=> bm!28171 (= call!28174 (getCurrentListMapNoExtraKeys!1024 (ite c!54638 _keys!709 lt!187701) (ite c!54638 _values!549 (array!23984 (store (arr!11438 _values!549) i!563 (ValueCellFull!4683 v!412)) (size!11790 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400633 () Bool)

(declare-fun res!230609 () Bool)

(assert (=> b!400633 (=> (not res!230609) (not e!241690))))

(assert (=> b!400633 (= res!230609 (or (= (select (arr!11439 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11439 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!400634 () Bool)

(declare-fun res!230615 () Bool)

(assert (=> b!400634 (=> (not res!230615) (not e!241690))))

(assert (=> b!400634 (= res!230615 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6610))))

(declare-fun b!400635 () Bool)

(declare-fun res!230612 () Bool)

(assert (=> b!400635 (=> (not res!230612) (not e!241690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!400635 (= res!230612 (validKeyInArray!0 k0!794))))

(declare-fun b!400636 () Bool)

(assert (=> b!400636 (= e!241691 (not true))))

(assert (=> b!400636 e!241693))

(assert (=> b!400636 (= c!54638 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12093 0))(
  ( (Unit!12094) )
))
(declare-fun lt!187700 () Unit!12093)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!309 (array!23985 array!23983 (_ BitVec 32) (_ BitVec 32) V!14509 V!14509 (_ BitVec 32) (_ BitVec 64) V!14509 (_ BitVec 32) Int) Unit!12093)

(assert (=> b!400636 (= lt!187700 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!309 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400637 () Bool)

(declare-fun res!230614 () Bool)

(assert (=> b!400637 (=> (not res!230614) (not e!241690))))

(assert (=> b!400637 (= res!230614 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11791 _keys!709))))))

(declare-fun b!400638 () Bool)

(declare-fun res!230610 () Bool)

(assert (=> b!400638 (=> (not res!230610) (not e!241691))))

(assert (=> b!400638 (= res!230610 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11791 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun bm!28172 () Bool)

(assert (=> bm!28172 (= call!28175 (getCurrentListMapNoExtraKeys!1024 (ite c!54638 lt!187701 _keys!709) (ite c!54638 (array!23984 (store (arr!11438 _values!549) i!563 (ValueCellFull!4683 v!412)) (size!11790 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!230608 () Bool)

(assert (=> start!38642 (=> (not res!230608) (not e!241690))))

(assert (=> start!38642 (= res!230608 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11791 _keys!709))))))

(assert (=> start!38642 e!241690))

(assert (=> start!38642 tp_is_empty!10053))

(assert (=> start!38642 tp!32636))

(assert (=> start!38642 true))

(declare-fun array_inv!8372 (array!23983) Bool)

(assert (=> start!38642 (and (array_inv!8372 _values!549) e!241692)))

(declare-fun array_inv!8373 (array!23985) Bool)

(assert (=> start!38642 (array_inv!8373 _keys!709)))

(declare-fun b!400639 () Bool)

(declare-fun res!230607 () Bool)

(assert (=> b!400639 (=> (not res!230607) (not e!241690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!400639 (= res!230607 (validMask!0 mask!1025))))

(declare-fun b!400640 () Bool)

(assert (=> b!400640 (= e!241696 tp_is_empty!10053)))

(assert (= (and start!38642 res!230608) b!400639))

(assert (= (and b!400639 res!230607) b!400624))

(assert (= (and b!400624 res!230613) b!400630))

(assert (= (and b!400630 res!230611) b!400634))

(assert (= (and b!400634 res!230615) b!400637))

(assert (= (and b!400637 res!230614) b!400635))

(assert (= (and b!400635 res!230612) b!400633))

(assert (= (and b!400633 res!230609) b!400631))

(assert (= (and b!400631 res!230616) b!400628))

(assert (= (and b!400628 res!230605) b!400626))

(assert (= (and b!400626 res!230606) b!400638))

(assert (= (and b!400638 res!230610) b!400636))

(assert (= (and b!400636 c!54638) b!400627))

(assert (= (and b!400636 (not c!54638)) b!400629))

(assert (= (or b!400627 b!400629) bm!28172))

(assert (= (or b!400627 b!400629) bm!28171))

(assert (= (and b!400632 condMapEmpty!16701) mapIsEmpty!16701))

(assert (= (and b!400632 (not condMapEmpty!16701)) mapNonEmpty!16701))

(get-info :version)

(assert (= (and mapNonEmpty!16701 ((_ is ValueCellFull!4683) mapValue!16701)) b!400640))

(assert (= (and b!400632 ((_ is ValueCellFull!4683) mapDefault!16701)) b!400625))

(assert (= start!38642 b!400632))

(declare-fun m!394729 () Bool)

(assert (=> bm!28171 m!394729))

(declare-fun m!394731 () Bool)

(assert (=> bm!28171 m!394731))

(declare-fun m!394733 () Bool)

(assert (=> b!400639 m!394733))

(declare-fun m!394735 () Bool)

(assert (=> b!400631 m!394735))

(declare-fun m!394737 () Bool)

(assert (=> b!400636 m!394737))

(declare-fun m!394739 () Bool)

(assert (=> mapNonEmpty!16701 m!394739))

(declare-fun m!394741 () Bool)

(assert (=> start!38642 m!394741))

(declare-fun m!394743 () Bool)

(assert (=> start!38642 m!394743))

(declare-fun m!394745 () Bool)

(assert (=> b!400627 m!394745))

(declare-fun m!394747 () Bool)

(assert (=> b!400626 m!394747))

(declare-fun m!394749 () Bool)

(assert (=> b!400630 m!394749))

(assert (=> bm!28172 m!394729))

(declare-fun m!394751 () Bool)

(assert (=> bm!28172 m!394751))

(declare-fun m!394753 () Bool)

(assert (=> b!400633 m!394753))

(declare-fun m!394755 () Bool)

(assert (=> b!400628 m!394755))

(declare-fun m!394757 () Bool)

(assert (=> b!400628 m!394757))

(declare-fun m!394759 () Bool)

(assert (=> b!400635 m!394759))

(declare-fun m!394761 () Bool)

(assert (=> b!400634 m!394761))

(check-sat b_and!16575 (not b!400630) (not b!400626) (not b!400636) (not b!400631) (not b!400639) (not mapNonEmpty!16701) (not b!400627) (not bm!28172) (not bm!28171) tp_is_empty!10053 (not b_next!9171) (not b!400634) (not b!400628) (not b!400635) (not start!38642))
(check-sat b_and!16575 (not b_next!9171))
