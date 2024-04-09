; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132056 () Bool)

(assert start!132056)

(declare-fun b_free!31737 () Bool)

(declare-fun b_next!31737 () Bool)

(assert (=> start!132056 (= b_free!31737 (not b_next!31737))))

(declare-fun tp!111463 () Bool)

(declare-fun b_and!51157 () Bool)

(assert (=> start!132056 (= tp!111463 b_and!51157)))

(declare-fun b!1547002 () Bool)

(declare-fun e!861131 () Bool)

(assert (=> b!1547002 (= e!861131 (not true))))

(declare-datatypes ((array!103193 0))(
  ( (array!103194 (arr!49794 (Array (_ BitVec 32) (_ BitVec 64))) (size!50345 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103193)

(declare-datatypes ((V!59127 0))(
  ( (V!59128 (val!19084 Int)) )
))
(declare-datatypes ((tuple2!24692 0))(
  ( (tuple2!24693 (_1!12356 (_ BitVec 64)) (_2!12356 V!59127)) )
))
(declare-datatypes ((List!36202 0))(
  ( (Nil!36199) (Cons!36198 (h!37644 tuple2!24692) (t!50903 List!36202)) )
))
(declare-datatypes ((ListLongMap!22313 0))(
  ( (ListLongMap!22314 (toList!11172 List!36202)) )
))
(declare-fun lt!666702 () ListLongMap!22313)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun minValue!436 () V!59127)

(declare-fun apply!1083 (ListLongMap!22313 (_ BitVec 64)) V!59127)

(declare-fun +!4899 (ListLongMap!22313 tuple2!24692) ListLongMap!22313)

(assert (=> b!1547002 (= (apply!1083 (+!4899 lt!666702 (tuple2!24693 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49794 _keys!618) from!762)) (apply!1083 lt!666702 (select (arr!49794 _keys!618) from!762)))))

(declare-datatypes ((Unit!51496 0))(
  ( (Unit!51497) )
))
(declare-fun lt!666700 () Unit!51496)

(declare-fun addApplyDifferent!586 (ListLongMap!22313 (_ BitVec 64) V!59127 (_ BitVec 64)) Unit!51496)

(assert (=> b!1547002 (= lt!666700 (addApplyDifferent!586 lt!666702 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49794 _keys!618) from!762)))))

(declare-fun zeroValue!436 () V!59127)

(declare-fun contains!10067 (ListLongMap!22313 (_ BitVec 64)) Bool)

(assert (=> b!1547002 (contains!10067 (+!4899 lt!666702 (tuple2!24693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49794 _keys!618) from!762))))

(declare-fun lt!666701 () Unit!51496)

(declare-fun addStillContains!1249 (ListLongMap!22313 (_ BitVec 64) V!59127 (_ BitVec 64)) Unit!51496)

(assert (=> b!1547002 (= lt!666701 (addStillContains!1249 lt!666702 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49794 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18096 0))(
  ( (ValueCellFull!18096 (v!21882 V!59127)) (EmptyCell!18096) )
))
(declare-datatypes ((array!103195 0))(
  ( (array!103196 (arr!49795 (Array (_ BitVec 32) ValueCell!18096)) (size!50346 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103195)

(declare-fun getCurrentListMapNoExtraKeys!6617 (array!103193 array!103195 (_ BitVec 32) (_ BitVec 32) V!59127 V!59127 (_ BitVec 32) Int) ListLongMap!22313)

(assert (=> b!1547002 (= lt!666702 (getCurrentListMapNoExtraKeys!6617 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547003 () Bool)

(declare-fun e!861130 () Bool)

(declare-fun e!861126 () Bool)

(declare-fun mapRes!58723 () Bool)

(assert (=> b!1547003 (= e!861130 (and e!861126 mapRes!58723))))

(declare-fun condMapEmpty!58723 () Bool)

(declare-fun mapDefault!58723 () ValueCell!18096)

(assert (=> b!1547003 (= condMapEmpty!58723 (= (arr!49795 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18096)) mapDefault!58723)))))

(declare-fun bm!69749 () Bool)

(declare-fun call!69753 () ListLongMap!22313)

(declare-fun call!69756 () ListLongMap!22313)

(assert (=> bm!69749 (= call!69753 call!69756)))

(declare-fun b!1547004 () Bool)

(declare-fun e!861129 () ListLongMap!22313)

(declare-fun call!69752 () ListLongMap!22313)

(assert (=> b!1547004 (= e!861129 call!69752)))

(declare-fun bm!69750 () Bool)

(assert (=> bm!69750 (= call!69756 (getCurrentListMapNoExtraKeys!6617 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547005 () Bool)

(declare-fun res!1060560 () Bool)

(declare-fun e!861132 () Bool)

(assert (=> b!1547005 (=> (not res!1060560) (not e!861132))))

(assert (=> b!1547005 (= res!1060560 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50345 _keys!618))))))

(declare-fun mapNonEmpty!58723 () Bool)

(declare-fun tp!111464 () Bool)

(declare-fun e!861127 () Bool)

(assert (=> mapNonEmpty!58723 (= mapRes!58723 (and tp!111464 e!861127))))

(declare-fun mapValue!58723 () ValueCell!18096)

(declare-fun mapRest!58723 () (Array (_ BitVec 32) ValueCell!18096))

(declare-fun mapKey!58723 () (_ BitVec 32))

(assert (=> mapNonEmpty!58723 (= (arr!49795 _values!470) (store mapRest!58723 mapKey!58723 mapValue!58723))))

(declare-fun b!1547006 () Bool)

(assert (=> b!1547006 (= e!861132 e!861131)))

(declare-fun res!1060558 () Bool)

(assert (=> b!1547006 (=> (not res!1060558) (not e!861131))))

(assert (=> b!1547006 (= res!1060558 (bvslt from!762 (size!50345 _keys!618)))))

(declare-fun lt!666704 () ListLongMap!22313)

(declare-fun e!861125 () ListLongMap!22313)

(assert (=> b!1547006 (= lt!666704 e!861125)))

(declare-fun c!141881 () Bool)

(declare-fun lt!666703 () Bool)

(assert (=> b!1547006 (= c!141881 (and (not lt!666703) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1547006 (= lt!666703 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1547007 () Bool)

(declare-fun res!1060559 () Bool)

(assert (=> b!1547007 (=> (not res!1060559) (not e!861131))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1547007 (= res!1060559 (validKeyInArray!0 (select (arr!49794 _keys!618) from!762)))))

(declare-fun bm!69751 () Bool)

(declare-fun call!69754 () ListLongMap!22313)

(declare-fun call!69755 () ListLongMap!22313)

(assert (=> bm!69751 (= call!69754 call!69755)))

(declare-fun b!1547008 () Bool)

(declare-fun e!861133 () ListLongMap!22313)

(assert (=> b!1547008 (= e!861133 call!69754)))

(declare-fun b!1547009 () Bool)

(assert (=> b!1547009 (= e!861125 e!861133)))

(declare-fun c!141879 () Bool)

(assert (=> b!1547009 (= c!141879 (and (not lt!666703) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1547010 () Bool)

(declare-fun tp_is_empty!38013 () Bool)

(assert (=> b!1547010 (= e!861127 tp_is_empty!38013)))

(declare-fun b!1547011 () Bool)

(declare-fun res!1060562 () Bool)

(assert (=> b!1547011 (=> (not res!1060562) (not e!861132))))

(assert (=> b!1547011 (= res!1060562 (and (= (size!50346 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50345 _keys!618) (size!50346 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1547012 () Bool)

(declare-fun c!141880 () Bool)

(assert (=> b!1547012 (= c!141880 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666703))))

(assert (=> b!1547012 (= e!861133 e!861129)))

(declare-fun b!1547013 () Bool)

(assert (=> b!1547013 (= e!861126 tp_is_empty!38013)))

(declare-fun b!1547014 () Bool)

(declare-fun res!1060557 () Bool)

(assert (=> b!1547014 (=> (not res!1060557) (not e!861132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103193 (_ BitVec 32)) Bool)

(assert (=> b!1547014 (= res!1060557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun res!1060561 () Bool)

(assert (=> start!132056 (=> (not res!1060561) (not e!861132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132056 (= res!1060561 (validMask!0 mask!926))))

(assert (=> start!132056 e!861132))

(declare-fun array_inv!38651 (array!103193) Bool)

(assert (=> start!132056 (array_inv!38651 _keys!618)))

(assert (=> start!132056 tp_is_empty!38013))

(assert (=> start!132056 true))

(assert (=> start!132056 tp!111463))

(declare-fun array_inv!38652 (array!103195) Bool)

(assert (=> start!132056 (and (array_inv!38652 _values!470) e!861130)))

(declare-fun bm!69752 () Bool)

(assert (=> bm!69752 (= call!69752 call!69753)))

(declare-fun b!1547015 () Bool)

(declare-fun res!1060556 () Bool)

(assert (=> b!1547015 (=> (not res!1060556) (not e!861132))))

(declare-datatypes ((List!36203 0))(
  ( (Nil!36200) (Cons!36199 (h!37645 (_ BitVec 64)) (t!50904 List!36203)) )
))
(declare-fun arrayNoDuplicates!0 (array!103193 (_ BitVec 32) List!36203) Bool)

(assert (=> b!1547015 (= res!1060556 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36200))))

(declare-fun b!1547016 () Bool)

(assert (=> b!1547016 (= e!861129 call!69754)))

(declare-fun b!1547017 () Bool)

(assert (=> b!1547017 (= e!861125 (+!4899 call!69755 (tuple2!24693 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun mapIsEmpty!58723 () Bool)

(assert (=> mapIsEmpty!58723 mapRes!58723))

(declare-fun bm!69753 () Bool)

(assert (=> bm!69753 (= call!69755 (+!4899 (ite c!141881 call!69756 (ite c!141879 call!69753 call!69752)) (ite (or c!141881 c!141879) (tuple2!24693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24693 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(assert (= (and start!132056 res!1060561) b!1547011))

(assert (= (and b!1547011 res!1060562) b!1547014))

(assert (= (and b!1547014 res!1060557) b!1547015))

(assert (= (and b!1547015 res!1060556) b!1547005))

(assert (= (and b!1547005 res!1060560) b!1547006))

(assert (= (and b!1547006 c!141881) b!1547017))

(assert (= (and b!1547006 (not c!141881)) b!1547009))

(assert (= (and b!1547009 c!141879) b!1547008))

(assert (= (and b!1547009 (not c!141879)) b!1547012))

(assert (= (and b!1547012 c!141880) b!1547016))

(assert (= (and b!1547012 (not c!141880)) b!1547004))

(assert (= (or b!1547016 b!1547004) bm!69752))

(assert (= (or b!1547008 bm!69752) bm!69749))

(assert (= (or b!1547008 b!1547016) bm!69751))

(assert (= (or b!1547017 bm!69749) bm!69750))

(assert (= (or b!1547017 bm!69751) bm!69753))

(assert (= (and b!1547006 res!1060558) b!1547007))

(assert (= (and b!1547007 res!1060559) b!1547002))

(assert (= (and b!1547003 condMapEmpty!58723) mapIsEmpty!58723))

(assert (= (and b!1547003 (not condMapEmpty!58723)) mapNonEmpty!58723))

(get-info :version)

(assert (= (and mapNonEmpty!58723 ((_ is ValueCellFull!18096) mapValue!58723)) b!1547010))

(assert (= (and b!1547003 ((_ is ValueCellFull!18096) mapDefault!58723)) b!1547013))

(assert (= start!132056 b!1547003))

(declare-fun m!1426747 () Bool)

(assert (=> b!1547017 m!1426747))

(declare-fun m!1426749 () Bool)

(assert (=> b!1547014 m!1426749))

(declare-fun m!1426751 () Bool)

(assert (=> mapNonEmpty!58723 m!1426751))

(declare-fun m!1426753 () Bool)

(assert (=> bm!69753 m!1426753))

(declare-fun m!1426755 () Bool)

(assert (=> start!132056 m!1426755))

(declare-fun m!1426757 () Bool)

(assert (=> start!132056 m!1426757))

(declare-fun m!1426759 () Bool)

(assert (=> start!132056 m!1426759))

(declare-fun m!1426761 () Bool)

(assert (=> b!1547015 m!1426761))

(declare-fun m!1426763 () Bool)

(assert (=> b!1547002 m!1426763))

(declare-fun m!1426765 () Bool)

(assert (=> b!1547002 m!1426765))

(declare-fun m!1426767 () Bool)

(assert (=> b!1547002 m!1426767))

(declare-fun m!1426769 () Bool)

(assert (=> b!1547002 m!1426769))

(assert (=> b!1547002 m!1426763))

(declare-fun m!1426771 () Bool)

(assert (=> b!1547002 m!1426771))

(assert (=> b!1547002 m!1426763))

(declare-fun m!1426773 () Bool)

(assert (=> b!1547002 m!1426773))

(assert (=> b!1547002 m!1426763))

(declare-fun m!1426775 () Bool)

(assert (=> b!1547002 m!1426775))

(declare-fun m!1426777 () Bool)

(assert (=> b!1547002 m!1426777))

(assert (=> b!1547002 m!1426763))

(declare-fun m!1426779 () Bool)

(assert (=> b!1547002 m!1426779))

(assert (=> b!1547002 m!1426763))

(assert (=> b!1547002 m!1426769))

(assert (=> b!1547002 m!1426777))

(assert (=> b!1547007 m!1426763))

(assert (=> b!1547007 m!1426763))

(declare-fun m!1426781 () Bool)

(assert (=> b!1547007 m!1426781))

(assert (=> bm!69750 m!1426767))

(check-sat (not start!132056) tp_is_empty!38013 (not b!1547014) (not b!1547007) (not bm!69753) (not b!1547015) (not bm!69750) (not mapNonEmpty!58723) b_and!51157 (not b_next!31737) (not b!1547002) (not b!1547017))
(check-sat b_and!51157 (not b_next!31737))
