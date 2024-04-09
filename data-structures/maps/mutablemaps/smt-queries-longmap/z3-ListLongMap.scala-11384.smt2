; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132328 () Bool)

(assert start!132328)

(declare-fun b_free!31923 () Bool)

(declare-fun b_next!31923 () Bool)

(assert (=> start!132328 (= b_free!31923 (not b_next!31923))))

(declare-fun tp!112033 () Bool)

(declare-fun b_and!51371 () Bool)

(assert (=> start!132328 (= tp!112033 b_and!51371)))

(declare-fun b!1552050 () Bool)

(declare-datatypes ((V!59375 0))(
  ( (V!59376 (val!19177 Int)) )
))
(declare-datatypes ((tuple2!24870 0))(
  ( (tuple2!24871 (_1!12445 (_ BitVec 64)) (_2!12445 V!59375)) )
))
(declare-datatypes ((List!36349 0))(
  ( (Nil!36346) (Cons!36345 (h!37791 tuple2!24870) (t!51070 List!36349)) )
))
(declare-datatypes ((ListLongMap!22491 0))(
  ( (ListLongMap!22492 (toList!11261 List!36349)) )
))
(declare-fun e!864050 () ListLongMap!22491)

(declare-fun call!71194 () ListLongMap!22491)

(assert (=> b!1552050 (= e!864050 call!71194)))

(declare-fun mapIsEmpty!59014 () Bool)

(declare-fun mapRes!59014 () Bool)

(assert (=> mapIsEmpty!59014 mapRes!59014))

(declare-fun b!1552051 () Bool)

(declare-fun e!864048 () ListLongMap!22491)

(declare-fun call!71195 () ListLongMap!22491)

(assert (=> b!1552051 (= e!864048 call!71195)))

(declare-fun b!1552052 () Bool)

(declare-fun res!1062746 () Bool)

(declare-fun e!864044 () Bool)

(assert (=> b!1552052 (=> (not res!1062746) (not e!864044))))

(declare-datatypes ((array!103557 0))(
  ( (array!103558 (arr!49972 (Array (_ BitVec 32) (_ BitVec 64))) (size!50523 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103557)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18189 0))(
  ( (ValueCellFull!18189 (v!21979 V!59375)) (EmptyCell!18189) )
))
(declare-datatypes ((array!103559 0))(
  ( (array!103560 (arr!49973 (Array (_ BitVec 32) ValueCell!18189)) (size!50524 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103559)

(assert (=> b!1552052 (= res!1062746 (and (= (size!50524 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50523 _keys!618) (size!50524 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!436 () V!59375)

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun minValue!436 () V!59375)

(declare-fun call!71192 () ListLongMap!22491)

(declare-fun bm!71189 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6684 (array!103557 array!103559 (_ BitVec 32) (_ BitVec 32) V!59375 V!59375 (_ BitVec 32) Int) ListLongMap!22491)

(assert (=> bm!71189 (= call!71192 (getCurrentListMapNoExtraKeys!6684 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1552053 () Bool)

(declare-fun e!864047 () ListLongMap!22491)

(declare-fun call!71193 () ListLongMap!22491)

(declare-fun +!4967 (ListLongMap!22491 tuple2!24870) ListLongMap!22491)

(assert (=> b!1552053 (= e!864047 (+!4967 call!71193 (tuple2!24871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1552054 () Bool)

(declare-datatypes ((Unit!51624 0))(
  ( (Unit!51625) )
))
(declare-fun e!864049 () Unit!51624)

(declare-fun lt!669058 () Unit!51624)

(assert (=> b!1552054 (= e!864049 lt!669058)))

(declare-fun lt!669050 () ListLongMap!22491)

(assert (=> b!1552054 (= lt!669050 (getCurrentListMapNoExtraKeys!6684 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!669053 () Unit!51624)

(declare-fun addStillContains!1302 (ListLongMap!22491 (_ BitVec 64) V!59375 (_ BitVec 64)) Unit!51624)

(assert (=> b!1552054 (= lt!669053 (addStillContains!1302 lt!669050 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49972 _keys!618) from!762)))))

(declare-fun lt!669052 () ListLongMap!22491)

(assert (=> b!1552054 (= lt!669052 (+!4967 lt!669050 (tuple2!24871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun contains!10131 (ListLongMap!22491 (_ BitVec 64)) Bool)

(assert (=> b!1552054 (contains!10131 lt!669052 (select (arr!49972 _keys!618) from!762))))

(declare-fun addApplyDifferent!635 (ListLongMap!22491 (_ BitVec 64) V!59375 (_ BitVec 64)) Unit!51624)

(assert (=> b!1552054 (= lt!669058 (addApplyDifferent!635 lt!669050 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49972 _keys!618) from!762)))))

(declare-fun lt!669060 () V!59375)

(declare-fun apply!1134 (ListLongMap!22491 (_ BitVec 64)) V!59375)

(assert (=> b!1552054 (= lt!669060 (apply!1134 (+!4967 lt!669050 (tuple2!24871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49972 _keys!618) from!762)))))

(declare-fun lt!669054 () V!59375)

(assert (=> b!1552054 (= lt!669054 (apply!1134 lt!669050 (select (arr!49972 _keys!618) from!762)))))

(assert (=> b!1552054 (= lt!669060 lt!669054)))

(declare-fun lt!669055 () Unit!51624)

(assert (=> b!1552054 (= lt!669055 (addApplyDifferent!635 lt!669050 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49972 _keys!618) from!762)))))

(assert (=> b!1552054 (= (apply!1134 lt!669052 (select (arr!49972 _keys!618) from!762)) lt!669054)))

(declare-fun bm!71190 () Bool)

(declare-fun call!71196 () ListLongMap!22491)

(assert (=> bm!71190 (= call!71194 call!71196)))

(declare-fun b!1552055 () Bool)

(declare-fun e!864042 () Bool)

(declare-fun tp_is_empty!38199 () Bool)

(assert (=> b!1552055 (= e!864042 tp_is_empty!38199)))

(declare-fun b!1552056 () Bool)

(declare-fun e!864040 () Bool)

(assert (=> b!1552056 (= e!864044 e!864040)))

(declare-fun res!1062749 () Bool)

(assert (=> b!1552056 (=> (not res!1062749) (not e!864040))))

(declare-fun lt!669049 () Bool)

(assert (=> b!1552056 (= res!1062749 (not lt!669049))))

(declare-fun lt!669051 () Unit!51624)

(assert (=> b!1552056 (= lt!669051 e!864049)))

(declare-fun c!142865 () Bool)

(assert (=> b!1552056 (= c!142865 (not lt!669049))))

(declare-fun e!864041 () Bool)

(assert (=> b!1552056 (= lt!669049 e!864041)))

(declare-fun res!1062744 () Bool)

(assert (=> b!1552056 (=> res!1062744 e!864041)))

(assert (=> b!1552056 (= res!1062744 (bvsge from!762 (size!50523 _keys!618)))))

(declare-fun lt!669056 () ListLongMap!22491)

(assert (=> b!1552056 (= lt!669056 e!864047)))

(declare-fun c!142864 () Bool)

(declare-fun lt!669057 () Bool)

(assert (=> b!1552056 (= c!142864 (and (not lt!669057) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1552056 (= lt!669057 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1552057 () Bool)

(assert (=> b!1552057 (= e!864040 false)))

(declare-fun lt!669059 () Bool)

(assert (=> b!1552057 (= lt!669059 (contains!10131 lt!669056 (select (arr!49972 _keys!618) from!762)))))

(declare-fun res!1062747 () Bool)

(assert (=> start!132328 (=> (not res!1062747) (not e!864044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132328 (= res!1062747 (validMask!0 mask!926))))

(assert (=> start!132328 e!864044))

(declare-fun array_inv!38769 (array!103557) Bool)

(assert (=> start!132328 (array_inv!38769 _keys!618)))

(assert (=> start!132328 tp_is_empty!38199))

(assert (=> start!132328 true))

(assert (=> start!132328 tp!112033))

(declare-fun e!864043 () Bool)

(declare-fun array_inv!38770 (array!103559) Bool)

(assert (=> start!132328 (and (array_inv!38770 _values!470) e!864043)))

(declare-fun b!1552058 () Bool)

(declare-fun res!1062748 () Bool)

(assert (=> b!1552058 (=> (not res!1062748) (not e!864044))))

(declare-datatypes ((List!36350 0))(
  ( (Nil!36347) (Cons!36346 (h!37792 (_ BitVec 64)) (t!51071 List!36350)) )
))
(declare-fun arrayNoDuplicates!0 (array!103557 (_ BitVec 32) List!36350) Bool)

(assert (=> b!1552058 (= res!1062748 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36347))))

(declare-fun bm!71191 () Bool)

(assert (=> bm!71191 (= call!71196 call!71192)))

(declare-fun bm!71192 () Bool)

(assert (=> bm!71192 (= call!71195 call!71193)))

(declare-fun b!1552059 () Bool)

(assert (=> b!1552059 (= e!864047 e!864048)))

(declare-fun c!142863 () Bool)

(assert (=> b!1552059 (= c!142863 (and (not lt!669057) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1552060 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1552060 (= e!864041 (not (validKeyInArray!0 (select (arr!49972 _keys!618) from!762))))))

(declare-fun b!1552061 () Bool)

(declare-fun e!864046 () Bool)

(assert (=> b!1552061 (= e!864043 (and e!864046 mapRes!59014))))

(declare-fun condMapEmpty!59014 () Bool)

(declare-fun mapDefault!59014 () ValueCell!18189)

(assert (=> b!1552061 (= condMapEmpty!59014 (= (arr!49973 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18189)) mapDefault!59014)))))

(declare-fun b!1552062 () Bool)

(assert (=> b!1552062 (= e!864050 call!71195)))

(declare-fun b!1552063 () Bool)

(declare-fun res!1062750 () Bool)

(assert (=> b!1552063 (=> (not res!1062750) (not e!864044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103557 (_ BitVec 32)) Bool)

(assert (=> b!1552063 (= res!1062750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1552064 () Bool)

(declare-fun c!142862 () Bool)

(assert (=> b!1552064 (= c!142862 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!669057))))

(assert (=> b!1552064 (= e!864048 e!864050)))

(declare-fun mapNonEmpty!59014 () Bool)

(declare-fun tp!112034 () Bool)

(assert (=> mapNonEmpty!59014 (= mapRes!59014 (and tp!112034 e!864042))))

(declare-fun mapRest!59014 () (Array (_ BitVec 32) ValueCell!18189))

(declare-fun mapKey!59014 () (_ BitVec 32))

(declare-fun mapValue!59014 () ValueCell!18189)

(assert (=> mapNonEmpty!59014 (= (arr!49973 _values!470) (store mapRest!59014 mapKey!59014 mapValue!59014))))

(declare-fun b!1552065 () Bool)

(declare-fun Unit!51626 () Unit!51624)

(assert (=> b!1552065 (= e!864049 Unit!51626)))

(declare-fun b!1552066 () Bool)

(declare-fun res!1062745 () Bool)

(assert (=> b!1552066 (=> (not res!1062745) (not e!864044))))

(assert (=> b!1552066 (= res!1062745 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50523 _keys!618))))))

(declare-fun bm!71193 () Bool)

(assert (=> bm!71193 (= call!71193 (+!4967 (ite c!142864 call!71192 (ite c!142863 call!71196 call!71194)) (ite (or c!142864 c!142863) (tuple2!24871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552067 () Bool)

(assert (=> b!1552067 (= e!864046 tp_is_empty!38199)))

(assert (= (and start!132328 res!1062747) b!1552052))

(assert (= (and b!1552052 res!1062746) b!1552063))

(assert (= (and b!1552063 res!1062750) b!1552058))

(assert (= (and b!1552058 res!1062748) b!1552066))

(assert (= (and b!1552066 res!1062745) b!1552056))

(assert (= (and b!1552056 c!142864) b!1552053))

(assert (= (and b!1552056 (not c!142864)) b!1552059))

(assert (= (and b!1552059 c!142863) b!1552051))

(assert (= (and b!1552059 (not c!142863)) b!1552064))

(assert (= (and b!1552064 c!142862) b!1552062))

(assert (= (and b!1552064 (not c!142862)) b!1552050))

(assert (= (or b!1552062 b!1552050) bm!71190))

(assert (= (or b!1552051 bm!71190) bm!71191))

(assert (= (or b!1552051 b!1552062) bm!71192))

(assert (= (or b!1552053 bm!71191) bm!71189))

(assert (= (or b!1552053 bm!71192) bm!71193))

(assert (= (and b!1552056 (not res!1062744)) b!1552060))

(assert (= (and b!1552056 c!142865) b!1552054))

(assert (= (and b!1552056 (not c!142865)) b!1552065))

(assert (= (and b!1552056 res!1062749) b!1552057))

(assert (= (and b!1552061 condMapEmpty!59014) mapIsEmpty!59014))

(assert (= (and b!1552061 (not condMapEmpty!59014)) mapNonEmpty!59014))

(get-info :version)

(assert (= (and mapNonEmpty!59014 ((_ is ValueCellFull!18189) mapValue!59014)) b!1552055))

(assert (= (and b!1552061 ((_ is ValueCellFull!18189) mapDefault!59014)) b!1552067))

(assert (= start!132328 b!1552061))

(declare-fun m!1430663 () Bool)

(assert (=> bm!71193 m!1430663))

(declare-fun m!1430665 () Bool)

(assert (=> start!132328 m!1430665))

(declare-fun m!1430667 () Bool)

(assert (=> start!132328 m!1430667))

(declare-fun m!1430669 () Bool)

(assert (=> start!132328 m!1430669))

(declare-fun m!1430671 () Bool)

(assert (=> b!1552053 m!1430671))

(declare-fun m!1430673 () Bool)

(assert (=> b!1552058 m!1430673))

(declare-fun m!1430675 () Bool)

(assert (=> b!1552057 m!1430675))

(assert (=> b!1552057 m!1430675))

(declare-fun m!1430677 () Bool)

(assert (=> b!1552057 m!1430677))

(declare-fun m!1430679 () Bool)

(assert (=> bm!71189 m!1430679))

(assert (=> b!1552060 m!1430675))

(assert (=> b!1552060 m!1430675))

(declare-fun m!1430681 () Bool)

(assert (=> b!1552060 m!1430681))

(declare-fun m!1430683 () Bool)

(assert (=> b!1552063 m!1430683))

(assert (=> b!1552054 m!1430675))

(declare-fun m!1430685 () Bool)

(assert (=> b!1552054 m!1430685))

(declare-fun m!1430687 () Bool)

(assert (=> b!1552054 m!1430687))

(assert (=> b!1552054 m!1430679))

(assert (=> b!1552054 m!1430675))

(assert (=> b!1552054 m!1430675))

(declare-fun m!1430689 () Bool)

(assert (=> b!1552054 m!1430689))

(assert (=> b!1552054 m!1430675))

(declare-fun m!1430691 () Bool)

(assert (=> b!1552054 m!1430691))

(declare-fun m!1430693 () Bool)

(assert (=> b!1552054 m!1430693))

(assert (=> b!1552054 m!1430693))

(assert (=> b!1552054 m!1430675))

(declare-fun m!1430695 () Bool)

(assert (=> b!1552054 m!1430695))

(assert (=> b!1552054 m!1430675))

(declare-fun m!1430697 () Bool)

(assert (=> b!1552054 m!1430697))

(assert (=> b!1552054 m!1430675))

(declare-fun m!1430699 () Bool)

(assert (=> b!1552054 m!1430699))

(assert (=> b!1552054 m!1430675))

(declare-fun m!1430701 () Bool)

(assert (=> b!1552054 m!1430701))

(declare-fun m!1430703 () Bool)

(assert (=> mapNonEmpty!59014 m!1430703))

(check-sat (not b!1552063) (not b_next!31923) (not mapNonEmpty!59014) (not bm!71189) (not b!1552054) (not bm!71193) b_and!51371 (not b!1552060) tp_is_empty!38199 (not b!1552058) (not b!1552057) (not start!132328) (not b!1552053))
(check-sat b_and!51371 (not b_next!31923))
