; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132128 () Bool)

(assert start!132128)

(declare-fun b_free!31809 () Bool)

(declare-fun b_next!31809 () Bool)

(assert (=> start!132128 (= b_free!31809 (not b_next!31809))))

(declare-fun tp!111679 () Bool)

(declare-fun b_and!51229 () Bool)

(assert (=> start!132128 (= tp!111679 b_and!51229)))

(declare-fun bm!70289 () Bool)

(declare-datatypes ((V!59223 0))(
  ( (V!59224 (val!19120 Int)) )
))
(declare-datatypes ((tuple2!24762 0))(
  ( (tuple2!24763 (_1!12391 (_ BitVec 64)) (_2!12391 V!59223)) )
))
(declare-datatypes ((List!36263 0))(
  ( (Nil!36260) (Cons!36259 (h!37705 tuple2!24762) (t!50964 List!36263)) )
))
(declare-datatypes ((ListLongMap!22383 0))(
  ( (ListLongMap!22384 (toList!11207 List!36263)) )
))
(declare-fun call!70295 () ListLongMap!22383)

(declare-fun call!70292 () ListLongMap!22383)

(assert (=> bm!70289 (= call!70295 call!70292)))

(declare-fun b!1548730 () Bool)

(declare-fun res!1061318 () Bool)

(declare-fun e!862102 () Bool)

(assert (=> b!1548730 (=> (not res!1061318) (not e!862102))))

(declare-datatypes ((array!103333 0))(
  ( (array!103334 (arr!49864 (Array (_ BitVec 32) (_ BitVec 64))) (size!50415 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103333)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548730 (= res!1061318 (validKeyInArray!0 (select (arr!49864 _keys!618) from!762)))))

(declare-fun res!1061316 () Bool)

(declare-fun e!862104 () Bool)

(assert (=> start!132128 (=> (not res!1061316) (not e!862104))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132128 (= res!1061316 (validMask!0 mask!926))))

(assert (=> start!132128 e!862104))

(declare-fun array_inv!38701 (array!103333) Bool)

(assert (=> start!132128 (array_inv!38701 _keys!618)))

(declare-fun tp_is_empty!38085 () Bool)

(assert (=> start!132128 tp_is_empty!38085))

(assert (=> start!132128 true))

(assert (=> start!132128 tp!111679))

(declare-datatypes ((ValueCell!18132 0))(
  ( (ValueCellFull!18132 (v!21918 V!59223)) (EmptyCell!18132) )
))
(declare-datatypes ((array!103335 0))(
  ( (array!103336 (arr!49865 (Array (_ BitVec 32) ValueCell!18132)) (size!50416 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103335)

(declare-fun e!862101 () Bool)

(declare-fun array_inv!38702 (array!103335) Bool)

(assert (=> start!132128 (and (array_inv!38702 _values!470) e!862101)))

(declare-fun b!1548731 () Bool)

(declare-fun e!862105 () ListLongMap!22383)

(assert (=> b!1548731 (= e!862105 call!70295)))

(declare-fun bm!70290 () Bool)

(declare-fun call!70293 () ListLongMap!22383)

(declare-fun call!70296 () ListLongMap!22383)

(assert (=> bm!70290 (= call!70293 call!70296)))

(declare-fun b!1548732 () Bool)

(declare-fun e!862100 () ListLongMap!22383)

(assert (=> b!1548732 (= e!862100 call!70295)))

(declare-fun b!1548733 () Bool)

(declare-fun e!862097 () ListLongMap!22383)

(assert (=> b!1548733 (= e!862097 e!862105)))

(declare-fun c!142204 () Bool)

(declare-fun lt!667454 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1548733 (= c!142204 (and (not lt!667454) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1548734 () Bool)

(declare-fun res!1061315 () Bool)

(assert (=> b!1548734 (=> (not res!1061315) (not e!862104))))

(assert (=> b!1548734 (= res!1061315 (and (= (size!50416 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50415 _keys!618) (size!50416 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1548735 () Bool)

(declare-fun res!1061317 () Bool)

(assert (=> b!1548735 (=> (not res!1061317) (not e!862104))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103333 (_ BitVec 32)) Bool)

(assert (=> b!1548735 (= res!1061317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1548736 () Bool)

(declare-fun call!70294 () ListLongMap!22383)

(assert (=> b!1548736 (= e!862100 call!70294)))

(declare-fun b!1548737 () Bool)

(declare-fun e!862103 () Bool)

(assert (=> b!1548737 (= e!862103 tp_is_empty!38085)))

(declare-fun b!1548738 () Bool)

(declare-fun res!1061314 () Bool)

(assert (=> b!1548738 (=> (not res!1061314) (not e!862104))))

(declare-datatypes ((List!36264 0))(
  ( (Nil!36261) (Cons!36260 (h!37706 (_ BitVec 64)) (t!50965 List!36264)) )
))
(declare-fun arrayNoDuplicates!0 (array!103333 (_ BitVec 32) List!36264) Bool)

(assert (=> b!1548738 (= res!1061314 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36261))))

(declare-fun zeroValue!436 () V!59223)

(declare-fun c!142203 () Bool)

(declare-fun minValue!436 () V!59223)

(declare-fun bm!70291 () Bool)

(declare-fun +!4926 (ListLongMap!22383 tuple2!24762) ListLongMap!22383)

(assert (=> bm!70291 (= call!70292 (+!4926 (ite c!142203 call!70296 (ite c!142204 call!70293 call!70294)) (ite (or c!142203 c!142204) (tuple2!24763 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24763 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun mapIsEmpty!58831 () Bool)

(declare-fun mapRes!58831 () Bool)

(assert (=> mapIsEmpty!58831 mapRes!58831))

(declare-fun b!1548739 () Bool)

(declare-fun c!142205 () Bool)

(assert (=> b!1548739 (= c!142205 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667454))))

(assert (=> b!1548739 (= e!862105 e!862100)))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!70292 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6646 (array!103333 array!103335 (_ BitVec 32) (_ BitVec 32) V!59223 V!59223 (_ BitVec 32) Int) ListLongMap!22383)

(assert (=> bm!70292 (= call!70296 (getCurrentListMapNoExtraKeys!6646 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548740 () Bool)

(assert (=> b!1548740 (= e!862102 (not true))))

(declare-fun lt!667449 () V!59223)

(declare-fun lt!667452 () ListLongMap!22383)

(declare-fun apply!1108 (ListLongMap!22383 (_ BitVec 64)) V!59223)

(assert (=> b!1548740 (= (apply!1108 lt!667452 (select (arr!49864 _keys!618) from!762)) lt!667449)))

(declare-datatypes ((Unit!51546 0))(
  ( (Unit!51547) )
))
(declare-fun lt!667453 () Unit!51546)

(declare-fun lt!667455 () ListLongMap!22383)

(declare-fun addApplyDifferent!611 (ListLongMap!22383 (_ BitVec 64) V!59223 (_ BitVec 64)) Unit!51546)

(assert (=> b!1548740 (= lt!667453 (addApplyDifferent!611 lt!667455 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49864 _keys!618) from!762)))))

(declare-fun lt!667456 () V!59223)

(assert (=> b!1548740 (= lt!667456 lt!667449)))

(assert (=> b!1548740 (= lt!667449 (apply!1108 lt!667455 (select (arr!49864 _keys!618) from!762)))))

(assert (=> b!1548740 (= lt!667456 (apply!1108 (+!4926 lt!667455 (tuple2!24763 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49864 _keys!618) from!762)))))

(declare-fun lt!667450 () Unit!51546)

(assert (=> b!1548740 (= lt!667450 (addApplyDifferent!611 lt!667455 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49864 _keys!618) from!762)))))

(declare-fun contains!10092 (ListLongMap!22383 (_ BitVec 64)) Bool)

(assert (=> b!1548740 (contains!10092 lt!667452 (select (arr!49864 _keys!618) from!762))))

(assert (=> b!1548740 (= lt!667452 (+!4926 lt!667455 (tuple2!24763 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667451 () Unit!51546)

(declare-fun addStillContains!1274 (ListLongMap!22383 (_ BitVec 64) V!59223 (_ BitVec 64)) Unit!51546)

(assert (=> b!1548740 (= lt!667451 (addStillContains!1274 lt!667455 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49864 _keys!618) from!762)))))

(assert (=> b!1548740 (= lt!667455 (getCurrentListMapNoExtraKeys!6646 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!70293 () Bool)

(assert (=> bm!70293 (= call!70294 call!70293)))

(declare-fun b!1548741 () Bool)

(declare-fun res!1061312 () Bool)

(assert (=> b!1548741 (=> (not res!1061312) (not e!862104))))

(assert (=> b!1548741 (= res!1061312 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50415 _keys!618))))))

(declare-fun b!1548742 () Bool)

(assert (=> b!1548742 (= e!862097 (+!4926 call!70292 (tuple2!24763 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1548743 () Bool)

(declare-fun e!862099 () Bool)

(assert (=> b!1548743 (= e!862101 (and e!862099 mapRes!58831))))

(declare-fun condMapEmpty!58831 () Bool)

(declare-fun mapDefault!58831 () ValueCell!18132)

(assert (=> b!1548743 (= condMapEmpty!58831 (= (arr!49865 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18132)) mapDefault!58831)))))

(declare-fun mapNonEmpty!58831 () Bool)

(declare-fun tp!111680 () Bool)

(assert (=> mapNonEmpty!58831 (= mapRes!58831 (and tp!111680 e!862103))))

(declare-fun mapKey!58831 () (_ BitVec 32))

(declare-fun mapValue!58831 () ValueCell!18132)

(declare-fun mapRest!58831 () (Array (_ BitVec 32) ValueCell!18132))

(assert (=> mapNonEmpty!58831 (= (arr!49865 _values!470) (store mapRest!58831 mapKey!58831 mapValue!58831))))

(declare-fun b!1548744 () Bool)

(assert (=> b!1548744 (= e!862104 e!862102)))

(declare-fun res!1061313 () Bool)

(assert (=> b!1548744 (=> (not res!1061313) (not e!862102))))

(assert (=> b!1548744 (= res!1061313 (bvslt from!762 (size!50415 _keys!618)))))

(declare-fun lt!667457 () ListLongMap!22383)

(assert (=> b!1548744 (= lt!667457 e!862097)))

(assert (=> b!1548744 (= c!142203 (and (not lt!667454) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548744 (= lt!667454 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1548745 () Bool)

(assert (=> b!1548745 (= e!862099 tp_is_empty!38085)))

(assert (= (and start!132128 res!1061316) b!1548734))

(assert (= (and b!1548734 res!1061315) b!1548735))

(assert (= (and b!1548735 res!1061317) b!1548738))

(assert (= (and b!1548738 res!1061314) b!1548741))

(assert (= (and b!1548741 res!1061312) b!1548744))

(assert (= (and b!1548744 c!142203) b!1548742))

(assert (= (and b!1548744 (not c!142203)) b!1548733))

(assert (= (and b!1548733 c!142204) b!1548731))

(assert (= (and b!1548733 (not c!142204)) b!1548739))

(assert (= (and b!1548739 c!142205) b!1548732))

(assert (= (and b!1548739 (not c!142205)) b!1548736))

(assert (= (or b!1548732 b!1548736) bm!70293))

(assert (= (or b!1548731 bm!70293) bm!70290))

(assert (= (or b!1548731 b!1548732) bm!70289))

(assert (= (or b!1548742 bm!70290) bm!70292))

(assert (= (or b!1548742 bm!70289) bm!70291))

(assert (= (and b!1548744 res!1061313) b!1548730))

(assert (= (and b!1548730 res!1061318) b!1548740))

(assert (= (and b!1548743 condMapEmpty!58831) mapIsEmpty!58831))

(assert (= (and b!1548743 (not condMapEmpty!58831)) mapNonEmpty!58831))

(get-info :version)

(assert (= (and mapNonEmpty!58831 ((_ is ValueCellFull!18132) mapValue!58831)) b!1548737))

(assert (= (and b!1548743 ((_ is ValueCellFull!18132) mapDefault!58831)) b!1548745))

(assert (= start!132128 b!1548743))

(declare-fun m!1428113 () Bool)

(assert (=> bm!70291 m!1428113))

(declare-fun m!1428115 () Bool)

(assert (=> start!132128 m!1428115))

(declare-fun m!1428117 () Bool)

(assert (=> start!132128 m!1428117))

(declare-fun m!1428119 () Bool)

(assert (=> start!132128 m!1428119))

(declare-fun m!1428121 () Bool)

(assert (=> b!1548742 m!1428121))

(declare-fun m!1428123 () Bool)

(assert (=> mapNonEmpty!58831 m!1428123))

(declare-fun m!1428125 () Bool)

(assert (=> b!1548735 m!1428125))

(declare-fun m!1428127 () Bool)

(assert (=> b!1548738 m!1428127))

(declare-fun m!1428129 () Bool)

(assert (=> b!1548730 m!1428129))

(assert (=> b!1548730 m!1428129))

(declare-fun m!1428131 () Bool)

(assert (=> b!1548730 m!1428131))

(declare-fun m!1428133 () Bool)

(assert (=> bm!70292 m!1428133))

(assert (=> b!1548740 m!1428133))

(assert (=> b!1548740 m!1428129))

(assert (=> b!1548740 m!1428129))

(declare-fun m!1428135 () Bool)

(assert (=> b!1548740 m!1428135))

(assert (=> b!1548740 m!1428129))

(declare-fun m!1428137 () Bool)

(assert (=> b!1548740 m!1428137))

(declare-fun m!1428139 () Bool)

(assert (=> b!1548740 m!1428139))

(assert (=> b!1548740 m!1428129))

(declare-fun m!1428141 () Bool)

(assert (=> b!1548740 m!1428141))

(assert (=> b!1548740 m!1428129))

(declare-fun m!1428143 () Bool)

(assert (=> b!1548740 m!1428143))

(declare-fun m!1428145 () Bool)

(assert (=> b!1548740 m!1428145))

(assert (=> b!1548740 m!1428129))

(declare-fun m!1428147 () Bool)

(assert (=> b!1548740 m!1428147))

(assert (=> b!1548740 m!1428139))

(assert (=> b!1548740 m!1428129))

(declare-fun m!1428149 () Bool)

(assert (=> b!1548740 m!1428149))

(assert (=> b!1548740 m!1428129))

(declare-fun m!1428151 () Bool)

(assert (=> b!1548740 m!1428151))

(check-sat (not b_next!31809) (not b!1548730) (not bm!70291) (not bm!70292) b_and!51229 (not b!1548742) tp_is_empty!38085 (not start!132128) (not mapNonEmpty!58831) (not b!1548740) (not b!1548738) (not b!1548735))
(check-sat b_and!51229 (not b_next!31809))
