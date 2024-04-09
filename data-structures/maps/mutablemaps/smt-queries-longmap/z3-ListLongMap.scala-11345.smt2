; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132008 () Bool)

(assert start!132008)

(declare-fun b_free!31689 () Bool)

(declare-fun b_next!31689 () Bool)

(assert (=> start!132008 (= b_free!31689 (not b_next!31689))))

(declare-fun tp!111319 () Bool)

(declare-fun b_and!51109 () Bool)

(assert (=> start!132008 (= tp!111319 b_and!51109)))

(declare-fun bm!69389 () Bool)

(declare-datatypes ((array!103101 0))(
  ( (array!103102 (arr!49748 (Array (_ BitVec 32) (_ BitVec 64))) (size!50299 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103101)

(declare-datatypes ((V!59063 0))(
  ( (V!59064 (val!19060 Int)) )
))
(declare-fun zeroValue!436 () V!59063)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18072 0))(
  ( (ValueCellFull!18072 (v!21858 V!59063)) (EmptyCell!18072) )
))
(declare-datatypes ((array!103103 0))(
  ( (array!103104 (arr!49749 (Array (_ BitVec 32) ValueCell!18072)) (size!50300 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103103)

(declare-fun minValue!436 () V!59063)

(declare-datatypes ((tuple2!24648 0))(
  ( (tuple2!24649 (_1!12334 (_ BitVec 64)) (_2!12334 V!59063)) )
))
(declare-datatypes ((List!36160 0))(
  ( (Nil!36157) (Cons!36156 (h!37602 tuple2!24648) (t!50861 List!36160)) )
))
(declare-datatypes ((ListLongMap!22269 0))(
  ( (ListLongMap!22270 (toList!11150 List!36160)) )
))
(declare-fun call!69396 () ListLongMap!22269)

(declare-fun getCurrentListMapNoExtraKeys!6598 (array!103101 array!103103 (_ BitVec 32) (_ BitVec 32) V!59063 V!59063 (_ BitVec 32) Int) ListLongMap!22269)

(assert (=> bm!69389 (= call!69396 (getCurrentListMapNoExtraKeys!6598 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545850 () Bool)

(declare-fun res!1060057 () Bool)

(declare-fun e!860484 () Bool)

(assert (=> b!1545850 (=> (not res!1060057) (not e!860484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1545850 (= res!1060057 (validKeyInArray!0 (select (arr!49748 _keys!618) from!762)))))

(declare-fun mapNonEmpty!58651 () Bool)

(declare-fun mapRes!58651 () Bool)

(declare-fun tp!111320 () Bool)

(declare-fun e!860479 () Bool)

(assert (=> mapNonEmpty!58651 (= mapRes!58651 (and tp!111320 e!860479))))

(declare-fun mapKey!58651 () (_ BitVec 32))

(declare-fun mapValue!58651 () ValueCell!18072)

(declare-fun mapRest!58651 () (Array (_ BitVec 32) ValueCell!18072))

(assert (=> mapNonEmpty!58651 (= (arr!49749 _values!470) (store mapRest!58651 mapKey!58651 mapValue!58651))))

(declare-fun bm!69390 () Bool)

(declare-fun call!69395 () ListLongMap!22269)

(assert (=> bm!69390 (= call!69395 call!69396)))

(declare-fun b!1545851 () Bool)

(declare-fun e!860480 () ListLongMap!22269)

(declare-fun call!69393 () ListLongMap!22269)

(assert (=> b!1545851 (= e!860480 call!69393)))

(declare-fun b!1545852 () Bool)

(declare-fun e!860482 () ListLongMap!22269)

(declare-fun call!69394 () ListLongMap!22269)

(declare-fun +!4879 (ListLongMap!22269 tuple2!24648) ListLongMap!22269)

(assert (=> b!1545852 (= e!860482 (+!4879 call!69394 (tuple2!24649 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun res!1060055 () Bool)

(declare-fun e!860478 () Bool)

(assert (=> start!132008 (=> (not res!1060055) (not e!860478))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132008 (= res!1060055 (validMask!0 mask!926))))

(assert (=> start!132008 e!860478))

(declare-fun array_inv!38615 (array!103101) Bool)

(assert (=> start!132008 (array_inv!38615 _keys!618)))

(declare-fun tp_is_empty!37965 () Bool)

(assert (=> start!132008 tp_is_empty!37965))

(assert (=> start!132008 true))

(assert (=> start!132008 tp!111319))

(declare-fun e!860477 () Bool)

(declare-fun array_inv!38616 (array!103103) Bool)

(assert (=> start!132008 (and (array_inv!38616 _values!470) e!860477)))

(declare-fun bm!69391 () Bool)

(assert (=> bm!69391 (= call!69393 call!69395)))

(declare-fun b!1545853 () Bool)

(declare-fun call!69392 () ListLongMap!22269)

(assert (=> b!1545853 (= e!860480 call!69392)))

(declare-fun b!1545854 () Bool)

(assert (=> b!1545854 (= e!860478 e!860484)))

(declare-fun res!1060056 () Bool)

(assert (=> b!1545854 (=> (not res!1060056) (not e!860484))))

(assert (=> b!1545854 (= res!1060056 (bvslt from!762 (size!50299 _keys!618)))))

(declare-fun lt!666372 () ListLongMap!22269)

(assert (=> b!1545854 (= lt!666372 e!860482)))

(declare-fun c!141664 () Bool)

(declare-fun lt!666374 () Bool)

(assert (=> b!1545854 (= c!141664 (and (not lt!666374) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1545854 (= lt!666374 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1545855 () Bool)

(assert (=> b!1545855 (= e!860484 (not true))))

(declare-fun lt!666373 () ListLongMap!22269)

(declare-fun contains!10051 (ListLongMap!22269 (_ BitVec 64)) Bool)

(assert (=> b!1545855 (contains!10051 (+!4879 lt!666373 (tuple2!24649 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49748 _keys!618) from!762))))

(declare-datatypes ((Unit!51464 0))(
  ( (Unit!51465) )
))
(declare-fun lt!666371 () Unit!51464)

(declare-fun addStillContains!1233 (ListLongMap!22269 (_ BitVec 64) V!59063 (_ BitVec 64)) Unit!51464)

(assert (=> b!1545855 (= lt!666371 (addStillContains!1233 lt!666373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49748 _keys!618) from!762)))))

(assert (=> b!1545855 (= lt!666373 (getCurrentListMapNoExtraKeys!6598 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545856 () Bool)

(declare-fun res!1060052 () Bool)

(assert (=> b!1545856 (=> (not res!1060052) (not e!860478))))

(declare-datatypes ((List!36161 0))(
  ( (Nil!36158) (Cons!36157 (h!37603 (_ BitVec 64)) (t!50862 List!36161)) )
))
(declare-fun arrayNoDuplicates!0 (array!103101 (_ BitVec 32) List!36161) Bool)

(assert (=> b!1545856 (= res!1060052 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36158))))

(declare-fun b!1545857 () Bool)

(declare-fun res!1060058 () Bool)

(assert (=> b!1545857 (=> (not res!1060058) (not e!860478))))

(assert (=> b!1545857 (= res!1060058 (and (= (size!50300 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50299 _keys!618) (size!50300 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1545858 () Bool)

(declare-fun e!860483 () Bool)

(assert (=> b!1545858 (= e!860483 tp_is_empty!37965)))

(declare-fun b!1545859 () Bool)

(declare-fun res!1060053 () Bool)

(assert (=> b!1545859 (=> (not res!1060053) (not e!860478))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103101 (_ BitVec 32)) Bool)

(assert (=> b!1545859 (= res!1060053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1545860 () Bool)

(declare-fun res!1060054 () Bool)

(assert (=> b!1545860 (=> (not res!1060054) (not e!860478))))

(assert (=> b!1545860 (= res!1060054 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50299 _keys!618))))))

(declare-fun b!1545861 () Bool)

(declare-fun e!860481 () ListLongMap!22269)

(assert (=> b!1545861 (= e!860482 e!860481)))

(declare-fun c!141665 () Bool)

(assert (=> b!1545861 (= c!141665 (and (not lt!666374) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!69392 () Bool)

(assert (=> bm!69392 (= call!69394 (+!4879 (ite c!141664 call!69396 (ite c!141665 call!69395 call!69393)) (ite (or c!141664 c!141665) (tuple2!24649 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24649 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!69393 () Bool)

(assert (=> bm!69393 (= call!69392 call!69394)))

(declare-fun b!1545862 () Bool)

(assert (=> b!1545862 (= e!860481 call!69392)))

(declare-fun b!1545863 () Bool)

(assert (=> b!1545863 (= e!860479 tp_is_empty!37965)))

(declare-fun b!1545864 () Bool)

(assert (=> b!1545864 (= e!860477 (and e!860483 mapRes!58651))))

(declare-fun condMapEmpty!58651 () Bool)

(declare-fun mapDefault!58651 () ValueCell!18072)

(assert (=> b!1545864 (= condMapEmpty!58651 (= (arr!49749 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18072)) mapDefault!58651)))))

(declare-fun b!1545865 () Bool)

(declare-fun c!141663 () Bool)

(assert (=> b!1545865 (= c!141663 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666374))))

(assert (=> b!1545865 (= e!860481 e!860480)))

(declare-fun mapIsEmpty!58651 () Bool)

(assert (=> mapIsEmpty!58651 mapRes!58651))

(assert (= (and start!132008 res!1060055) b!1545857))

(assert (= (and b!1545857 res!1060058) b!1545859))

(assert (= (and b!1545859 res!1060053) b!1545856))

(assert (= (and b!1545856 res!1060052) b!1545860))

(assert (= (and b!1545860 res!1060054) b!1545854))

(assert (= (and b!1545854 c!141664) b!1545852))

(assert (= (and b!1545854 (not c!141664)) b!1545861))

(assert (= (and b!1545861 c!141665) b!1545862))

(assert (= (and b!1545861 (not c!141665)) b!1545865))

(assert (= (and b!1545865 c!141663) b!1545853))

(assert (= (and b!1545865 (not c!141663)) b!1545851))

(assert (= (or b!1545853 b!1545851) bm!69391))

(assert (= (or b!1545862 bm!69391) bm!69390))

(assert (= (or b!1545862 b!1545853) bm!69393))

(assert (= (or b!1545852 bm!69390) bm!69389))

(assert (= (or b!1545852 bm!69393) bm!69392))

(assert (= (and b!1545854 res!1060056) b!1545850))

(assert (= (and b!1545850 res!1060057) b!1545855))

(assert (= (and b!1545864 condMapEmpty!58651) mapIsEmpty!58651))

(assert (= (and b!1545864 (not condMapEmpty!58651)) mapNonEmpty!58651))

(get-info :version)

(assert (= (and mapNonEmpty!58651 ((_ is ValueCellFull!18072) mapValue!58651)) b!1545863))

(assert (= (and b!1545864 ((_ is ValueCellFull!18072) mapDefault!58651)) b!1545858))

(assert (= start!132008 b!1545864))

(declare-fun m!1425989 () Bool)

(assert (=> b!1545855 m!1425989))

(declare-fun m!1425991 () Bool)

(assert (=> b!1545855 m!1425991))

(declare-fun m!1425993 () Bool)

(assert (=> b!1545855 m!1425993))

(declare-fun m!1425995 () Bool)

(assert (=> b!1545855 m!1425995))

(assert (=> b!1545855 m!1425991))

(assert (=> b!1545855 m!1425991))

(declare-fun m!1425997 () Bool)

(assert (=> b!1545855 m!1425997))

(assert (=> b!1545855 m!1425989))

(declare-fun m!1425999 () Bool)

(assert (=> bm!69392 m!1425999))

(declare-fun m!1426001 () Bool)

(assert (=> b!1545859 m!1426001))

(declare-fun m!1426003 () Bool)

(assert (=> b!1545856 m!1426003))

(assert (=> bm!69389 m!1425995))

(assert (=> b!1545850 m!1425991))

(assert (=> b!1545850 m!1425991))

(declare-fun m!1426005 () Bool)

(assert (=> b!1545850 m!1426005))

(declare-fun m!1426007 () Bool)

(assert (=> start!132008 m!1426007))

(declare-fun m!1426009 () Bool)

(assert (=> start!132008 m!1426009))

(declare-fun m!1426011 () Bool)

(assert (=> start!132008 m!1426011))

(declare-fun m!1426013 () Bool)

(assert (=> b!1545852 m!1426013))

(declare-fun m!1426015 () Bool)

(assert (=> mapNonEmpty!58651 m!1426015))

(check-sat (not b!1545859) (not b!1545855) (not b!1545852) (not bm!69389) (not start!132008) (not mapNonEmpty!58651) b_and!51109 (not b!1545856) (not b!1545850) tp_is_empty!37965 (not bm!69392) (not b_next!31689))
(check-sat b_and!51109 (not b_next!31689))
