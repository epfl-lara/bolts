; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132134 () Bool)

(assert start!132134)

(declare-fun b_free!31815 () Bool)

(declare-fun b_next!31815 () Bool)

(assert (=> start!132134 (= b_free!31815 (not b_next!31815))))

(declare-fun tp!111698 () Bool)

(declare-fun b_and!51235 () Bool)

(assert (=> start!132134 (= tp!111698 b_and!51235)))

(declare-fun b!1548874 () Bool)

(declare-fun res!1061378 () Bool)

(declare-fun e!862182 () Bool)

(assert (=> b!1548874 (=> (not res!1061378) (not e!862182))))

(declare-datatypes ((array!103343 0))(
  ( (array!103344 (arr!49869 (Array (_ BitVec 32) (_ BitVec 64))) (size!50420 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103343)

(declare-datatypes ((List!36268 0))(
  ( (Nil!36265) (Cons!36264 (h!37710 (_ BitVec 64)) (t!50969 List!36268)) )
))
(declare-fun arrayNoDuplicates!0 (array!103343 (_ BitVec 32) List!36268) Bool)

(assert (=> b!1548874 (= res!1061378 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36265))))

(declare-fun bm!70334 () Bool)

(declare-datatypes ((V!59231 0))(
  ( (V!59232 (val!19123 Int)) )
))
(declare-datatypes ((tuple2!24768 0))(
  ( (tuple2!24769 (_1!12394 (_ BitVec 64)) (_2!12394 V!59231)) )
))
(declare-datatypes ((List!36269 0))(
  ( (Nil!36266) (Cons!36265 (h!37711 tuple2!24768) (t!50970 List!36269)) )
))
(declare-datatypes ((ListLongMap!22389 0))(
  ( (ListLongMap!22390 (toList!11210 List!36269)) )
))
(declare-fun call!70341 () ListLongMap!22389)

(declare-fun call!70338 () ListLongMap!22389)

(assert (=> bm!70334 (= call!70341 call!70338)))

(declare-fun call!70340 () ListLongMap!22389)

(declare-fun call!70339 () ListLongMap!22389)

(declare-fun c!142232 () Bool)

(declare-fun minValue!436 () V!59231)

(declare-fun bm!70335 () Bool)

(declare-fun zeroValue!436 () V!59231)

(declare-fun c!142230 () Bool)

(declare-fun +!4928 (ListLongMap!22389 tuple2!24768) ListLongMap!22389)

(assert (=> bm!70335 (= call!70339 (+!4928 (ite c!142232 call!70340 (ite c!142230 call!70338 call!70341)) (ite (or c!142232 c!142230) (tuple2!24769 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24769 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1548875 () Bool)

(declare-fun e!862179 () Bool)

(declare-fun e!862180 () Bool)

(declare-fun mapRes!58840 () Bool)

(assert (=> b!1548875 (= e!862179 (and e!862180 mapRes!58840))))

(declare-fun condMapEmpty!58840 () Bool)

(declare-datatypes ((ValueCell!18135 0))(
  ( (ValueCellFull!18135 (v!21921 V!59231)) (EmptyCell!18135) )
))
(declare-datatypes ((array!103345 0))(
  ( (array!103346 (arr!49870 (Array (_ BitVec 32) ValueCell!18135)) (size!50421 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103345)

(declare-fun mapDefault!58840 () ValueCell!18135)

(assert (=> b!1548875 (= condMapEmpty!58840 (= (arr!49870 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18135)) mapDefault!58840)))))

(declare-fun b!1548876 () Bool)

(declare-fun e!862184 () ListLongMap!22389)

(declare-fun call!70337 () ListLongMap!22389)

(assert (=> b!1548876 (= e!862184 call!70337)))

(declare-fun bm!70336 () Bool)

(assert (=> bm!70336 (= call!70338 call!70340)))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun bm!70337 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6648 (array!103343 array!103345 (_ BitVec 32) (_ BitVec 32) V!59231 V!59231 (_ BitVec 32) Int) ListLongMap!22389)

(assert (=> bm!70337 (= call!70340 (getCurrentListMapNoExtraKeys!6648 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548877 () Bool)

(declare-fun res!1061376 () Bool)

(assert (=> b!1548877 (=> (not res!1061376) (not e!862182))))

(assert (=> b!1548877 (= res!1061376 (and (= (size!50421 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50420 _keys!618) (size!50421 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1548878 () Bool)

(declare-fun e!862186 () ListLongMap!22389)

(assert (=> b!1548878 (= e!862186 call!70337)))

(declare-fun b!1548879 () Bool)

(declare-fun res!1061375 () Bool)

(assert (=> b!1548879 (=> (not res!1061375) (not e!862182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103343 (_ BitVec 32)) Bool)

(assert (=> b!1548879 (= res!1061375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1548881 () Bool)

(declare-fun tp_is_empty!38091 () Bool)

(assert (=> b!1548881 (= e!862180 tp_is_empty!38091)))

(declare-fun mapIsEmpty!58840 () Bool)

(assert (=> mapIsEmpty!58840 mapRes!58840))

(declare-fun mapNonEmpty!58840 () Bool)

(declare-fun tp!111697 () Bool)

(declare-fun e!862183 () Bool)

(assert (=> mapNonEmpty!58840 (= mapRes!58840 (and tp!111697 e!862183))))

(declare-fun mapRest!58840 () (Array (_ BitVec 32) ValueCell!18135))

(declare-fun mapKey!58840 () (_ BitVec 32))

(declare-fun mapValue!58840 () ValueCell!18135)

(assert (=> mapNonEmpty!58840 (= (arr!49870 _values!470) (store mapRest!58840 mapKey!58840 mapValue!58840))))

(declare-fun bm!70338 () Bool)

(assert (=> bm!70338 (= call!70337 call!70339)))

(declare-fun b!1548882 () Bool)

(declare-fun c!142231 () Bool)

(declare-fun lt!667531 () Bool)

(assert (=> b!1548882 (= c!142231 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667531))))

(assert (=> b!1548882 (= e!862186 e!862184)))

(declare-fun b!1548883 () Bool)

(declare-fun res!1061377 () Bool)

(assert (=> b!1548883 (=> (not res!1061377) (not e!862182))))

(assert (=> b!1548883 (= res!1061377 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50420 _keys!618))))))

(declare-fun b!1548884 () Bool)

(declare-fun e!862185 () Bool)

(assert (=> b!1548884 (= e!862182 e!862185)))

(declare-fun res!1061380 () Bool)

(assert (=> b!1548884 (=> (not res!1061380) (not e!862185))))

(assert (=> b!1548884 (= res!1061380 (bvslt from!762 (size!50420 _keys!618)))))

(declare-fun lt!667534 () ListLongMap!22389)

(declare-fun e!862181 () ListLongMap!22389)

(assert (=> b!1548884 (= lt!667534 e!862181)))

(assert (=> b!1548884 (= c!142232 (and (not lt!667531) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548884 (= lt!667531 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1548885 () Bool)

(assert (=> b!1548885 (= e!862181 e!862186)))

(assert (=> b!1548885 (= c!142230 (and (not lt!667531) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1548886 () Bool)

(assert (=> b!1548886 (= e!862185 (not true))))

(declare-fun lt!667533 () V!59231)

(declare-fun lt!667530 () ListLongMap!22389)

(declare-fun apply!1110 (ListLongMap!22389 (_ BitVec 64)) V!59231)

(assert (=> b!1548886 (= (apply!1110 lt!667530 (select (arr!49869 _keys!618) from!762)) lt!667533)))

(declare-datatypes ((Unit!51550 0))(
  ( (Unit!51551) )
))
(declare-fun lt!667537 () Unit!51550)

(declare-fun lt!667536 () ListLongMap!22389)

(declare-fun addApplyDifferent!613 (ListLongMap!22389 (_ BitVec 64) V!59231 (_ BitVec 64)) Unit!51550)

(assert (=> b!1548886 (= lt!667537 (addApplyDifferent!613 lt!667536 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49869 _keys!618) from!762)))))

(declare-fun lt!667538 () V!59231)

(assert (=> b!1548886 (= lt!667538 lt!667533)))

(assert (=> b!1548886 (= lt!667533 (apply!1110 lt!667536 (select (arr!49869 _keys!618) from!762)))))

(assert (=> b!1548886 (= lt!667538 (apply!1110 (+!4928 lt!667536 (tuple2!24769 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49869 _keys!618) from!762)))))

(declare-fun lt!667532 () Unit!51550)

(assert (=> b!1548886 (= lt!667532 (addApplyDifferent!613 lt!667536 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49869 _keys!618) from!762)))))

(declare-fun contains!10094 (ListLongMap!22389 (_ BitVec 64)) Bool)

(assert (=> b!1548886 (contains!10094 lt!667530 (select (arr!49869 _keys!618) from!762))))

(assert (=> b!1548886 (= lt!667530 (+!4928 lt!667536 (tuple2!24769 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667535 () Unit!51550)

(declare-fun addStillContains!1276 (ListLongMap!22389 (_ BitVec 64) V!59231 (_ BitVec 64)) Unit!51550)

(assert (=> b!1548886 (= lt!667535 (addStillContains!1276 lt!667536 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49869 _keys!618) from!762)))))

(assert (=> b!1548886 (= lt!667536 (getCurrentListMapNoExtraKeys!6648 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548887 () Bool)

(declare-fun res!1061381 () Bool)

(assert (=> b!1548887 (=> (not res!1061381) (not e!862185))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548887 (= res!1061381 (validKeyInArray!0 (select (arr!49869 _keys!618) from!762)))))

(declare-fun b!1548888 () Bool)

(assert (=> b!1548888 (= e!862181 (+!4928 call!70339 (tuple2!24769 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1548889 () Bool)

(assert (=> b!1548889 (= e!862184 call!70341)))

(declare-fun b!1548880 () Bool)

(assert (=> b!1548880 (= e!862183 tp_is_empty!38091)))

(declare-fun res!1061379 () Bool)

(assert (=> start!132134 (=> (not res!1061379) (not e!862182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132134 (= res!1061379 (validMask!0 mask!926))))

(assert (=> start!132134 e!862182))

(declare-fun array_inv!38705 (array!103343) Bool)

(assert (=> start!132134 (array_inv!38705 _keys!618)))

(assert (=> start!132134 tp_is_empty!38091))

(assert (=> start!132134 true))

(assert (=> start!132134 tp!111698))

(declare-fun array_inv!38706 (array!103345) Bool)

(assert (=> start!132134 (and (array_inv!38706 _values!470) e!862179)))

(assert (= (and start!132134 res!1061379) b!1548877))

(assert (= (and b!1548877 res!1061376) b!1548879))

(assert (= (and b!1548879 res!1061375) b!1548874))

(assert (= (and b!1548874 res!1061378) b!1548883))

(assert (= (and b!1548883 res!1061377) b!1548884))

(assert (= (and b!1548884 c!142232) b!1548888))

(assert (= (and b!1548884 (not c!142232)) b!1548885))

(assert (= (and b!1548885 c!142230) b!1548878))

(assert (= (and b!1548885 (not c!142230)) b!1548882))

(assert (= (and b!1548882 c!142231) b!1548876))

(assert (= (and b!1548882 (not c!142231)) b!1548889))

(assert (= (or b!1548876 b!1548889) bm!70334))

(assert (= (or b!1548878 bm!70334) bm!70336))

(assert (= (or b!1548878 b!1548876) bm!70338))

(assert (= (or b!1548888 bm!70336) bm!70337))

(assert (= (or b!1548888 bm!70338) bm!70335))

(assert (= (and b!1548884 res!1061380) b!1548887))

(assert (= (and b!1548887 res!1061381) b!1548886))

(assert (= (and b!1548875 condMapEmpty!58840) mapIsEmpty!58840))

(assert (= (and b!1548875 (not condMapEmpty!58840)) mapNonEmpty!58840))

(get-info :version)

(assert (= (and mapNonEmpty!58840 ((_ is ValueCellFull!18135) mapValue!58840)) b!1548880))

(assert (= (and b!1548875 ((_ is ValueCellFull!18135) mapDefault!58840)) b!1548881))

(assert (= start!132134 b!1548875))

(declare-fun m!1428233 () Bool)

(assert (=> b!1548886 m!1428233))

(declare-fun m!1428235 () Bool)

(assert (=> b!1548886 m!1428235))

(declare-fun m!1428237 () Bool)

(assert (=> b!1548886 m!1428237))

(assert (=> b!1548886 m!1428235))

(declare-fun m!1428239 () Bool)

(assert (=> b!1548886 m!1428239))

(assert (=> b!1548886 m!1428235))

(declare-fun m!1428241 () Bool)

(assert (=> b!1548886 m!1428241))

(assert (=> b!1548886 m!1428235))

(declare-fun m!1428243 () Bool)

(assert (=> b!1548886 m!1428243))

(assert (=> b!1548886 m!1428235))

(declare-fun m!1428245 () Bool)

(assert (=> b!1548886 m!1428245))

(declare-fun m!1428247 () Bool)

(assert (=> b!1548886 m!1428247))

(assert (=> b!1548886 m!1428235))

(declare-fun m!1428249 () Bool)

(assert (=> b!1548886 m!1428249))

(assert (=> b!1548886 m!1428235))

(declare-fun m!1428251 () Bool)

(assert (=> b!1548886 m!1428251))

(assert (=> b!1548886 m!1428237))

(assert (=> b!1548886 m!1428235))

(declare-fun m!1428253 () Bool)

(assert (=> b!1548886 m!1428253))

(declare-fun m!1428255 () Bool)

(assert (=> b!1548888 m!1428255))

(declare-fun m!1428257 () Bool)

(assert (=> start!132134 m!1428257))

(declare-fun m!1428259 () Bool)

(assert (=> start!132134 m!1428259))

(declare-fun m!1428261 () Bool)

(assert (=> start!132134 m!1428261))

(declare-fun m!1428263 () Bool)

(assert (=> mapNonEmpty!58840 m!1428263))

(assert (=> b!1548887 m!1428235))

(assert (=> b!1548887 m!1428235))

(declare-fun m!1428265 () Bool)

(assert (=> b!1548887 m!1428265))

(assert (=> bm!70337 m!1428233))

(declare-fun m!1428267 () Bool)

(assert (=> bm!70335 m!1428267))

(declare-fun m!1428269 () Bool)

(assert (=> b!1548879 m!1428269))

(declare-fun m!1428271 () Bool)

(assert (=> b!1548874 m!1428271))

(check-sat (not b!1548879) (not b_next!31815) (not start!132134) tp_is_empty!38091 (not bm!70335) (not bm!70337) (not b!1548874) (not b!1548888) (not b!1548887) (not b!1548886) (not mapNonEmpty!58840) b_and!51235)
(check-sat b_and!51235 (not b_next!31815))
