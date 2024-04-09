; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132098 () Bool)

(assert start!132098)

(declare-fun b_free!31779 () Bool)

(declare-fun b_next!31779 () Bool)

(assert (=> start!132098 (= b_free!31779 (not b_next!31779))))

(declare-fun tp!111590 () Bool)

(declare-fun b_and!51199 () Bool)

(assert (=> start!132098 (= tp!111590 b_and!51199)))

(declare-fun b!1548010 () Bool)

(declare-fun e!861698 () Bool)

(assert (=> b!1548010 (= e!861698 (not true))))

(declare-datatypes ((V!59183 0))(
  ( (V!59184 (val!19105 Int)) )
))
(declare-fun lt!667045 () V!59183)

(declare-datatypes ((array!103275 0))(
  ( (array!103276 (arr!49835 (Array (_ BitVec 32) (_ BitVec 64))) (size!50386 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103275)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((tuple2!24734 0))(
  ( (tuple2!24735 (_1!12377 (_ BitVec 64)) (_2!12377 V!59183)) )
))
(declare-datatypes ((List!36238 0))(
  ( (Nil!36235) (Cons!36234 (h!37680 tuple2!24734) (t!50939 List!36238)) )
))
(declare-datatypes ((ListLongMap!22355 0))(
  ( (ListLongMap!22356 (toList!11193 List!36238)) )
))
(declare-fun lt!667048 () ListLongMap!22355)

(declare-fun apply!1097 (ListLongMap!22355 (_ BitVec 64)) V!59183)

(assert (=> b!1548010 (= (apply!1097 lt!667048 (select (arr!49835 _keys!618) from!762)) lt!667045)))

(declare-datatypes ((Unit!51524 0))(
  ( (Unit!51525) )
))
(declare-fun lt!667052 () Unit!51524)

(declare-fun zeroValue!436 () V!59183)

(declare-fun lt!667044 () ListLongMap!22355)

(declare-fun addApplyDifferent!600 (ListLongMap!22355 (_ BitVec 64) V!59183 (_ BitVec 64)) Unit!51524)

(assert (=> b!1548010 (= lt!667052 (addApplyDifferent!600 lt!667044 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49835 _keys!618) from!762)))))

(declare-fun lt!667047 () V!59183)

(assert (=> b!1548010 (= lt!667047 lt!667045)))

(assert (=> b!1548010 (= lt!667045 (apply!1097 lt!667044 (select (arr!49835 _keys!618) from!762)))))

(declare-fun minValue!436 () V!59183)

(declare-fun +!4914 (ListLongMap!22355 tuple2!24734) ListLongMap!22355)

(assert (=> b!1548010 (= lt!667047 (apply!1097 (+!4914 lt!667044 (tuple2!24735 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49835 _keys!618) from!762)))))

(declare-fun lt!667051 () Unit!51524)

(assert (=> b!1548010 (= lt!667051 (addApplyDifferent!600 lt!667044 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49835 _keys!618) from!762)))))

(declare-fun contains!10081 (ListLongMap!22355 (_ BitVec 64)) Bool)

(assert (=> b!1548010 (contains!10081 lt!667048 (select (arr!49835 _keys!618) from!762))))

(assert (=> b!1548010 (= lt!667048 (+!4914 lt!667044 (tuple2!24735 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667046 () Unit!51524)

(declare-fun addStillContains!1263 (ListLongMap!22355 (_ BitVec 64) V!59183 (_ BitVec 64)) Unit!51524)

(assert (=> b!1548010 (= lt!667046 (addStillContains!1263 lt!667044 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49835 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18117 0))(
  ( (ValueCellFull!18117 (v!21903 V!59183)) (EmptyCell!18117) )
))
(declare-datatypes ((array!103277 0))(
  ( (array!103278 (arr!49836 (Array (_ BitVec 32) ValueCell!18117)) (size!50387 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103277)

(declare-fun getCurrentListMapNoExtraKeys!6634 (array!103275 array!103277 (_ BitVec 32) (_ BitVec 32) V!59183 V!59183 (_ BitVec 32) Int) ListLongMap!22355)

(assert (=> b!1548010 (= lt!667044 (getCurrentListMapNoExtraKeys!6634 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!58786 () Bool)

(declare-fun mapRes!58786 () Bool)

(assert (=> mapIsEmpty!58786 mapRes!58786))

(declare-fun b!1548011 () Bool)

(declare-fun res!1061000 () Bool)

(declare-fun e!861696 () Bool)

(assert (=> b!1548011 (=> (not res!1061000) (not e!861696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103275 (_ BitVec 32)) Bool)

(assert (=> b!1548011 (= res!1061000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!70064 () Bool)

(declare-fun call!70071 () ListLongMap!22355)

(declare-fun call!70068 () ListLongMap!22355)

(assert (=> bm!70064 (= call!70071 call!70068)))

(declare-fun mapNonEmpty!58786 () Bool)

(declare-fun tp!111589 () Bool)

(declare-fun e!861695 () Bool)

(assert (=> mapNonEmpty!58786 (= mapRes!58786 (and tp!111589 e!861695))))

(declare-fun mapValue!58786 () ValueCell!18117)

(declare-fun mapKey!58786 () (_ BitVec 32))

(declare-fun mapRest!58786 () (Array (_ BitVec 32) ValueCell!18117))

(assert (=> mapNonEmpty!58786 (= (arr!49836 _values!470) (store mapRest!58786 mapKey!58786 mapValue!58786))))

(declare-fun call!70070 () ListLongMap!22355)

(declare-fun bm!70065 () Bool)

(assert (=> bm!70065 (= call!70070 (getCurrentListMapNoExtraKeys!6634 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548012 () Bool)

(declare-fun c!142069 () Bool)

(declare-fun lt!667049 () Bool)

(assert (=> b!1548012 (= c!142069 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667049))))

(declare-fun e!861699 () ListLongMap!22355)

(declare-fun e!861697 () ListLongMap!22355)

(assert (=> b!1548012 (= e!861699 e!861697)))

(declare-fun b!1548013 () Bool)

(declare-fun res!1061001 () Bool)

(assert (=> b!1548013 (=> (not res!1061001) (not e!861698))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1548013 (= res!1061001 (validKeyInArray!0 (select (arr!49835 _keys!618) from!762)))))

(declare-fun c!142068 () Bool)

(declare-fun bm!70066 () Bool)

(declare-fun call!70069 () ListLongMap!22355)

(declare-fun c!142070 () Bool)

(assert (=> bm!70066 (= call!70069 (+!4914 (ite c!142068 call!70070 (ite c!142070 call!70068 call!70071)) (ite (or c!142068 c!142070) (tuple2!24735 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24735 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1548015 () Bool)

(declare-fun res!1060997 () Bool)

(assert (=> b!1548015 (=> (not res!1060997) (not e!861696))))

(declare-datatypes ((List!36239 0))(
  ( (Nil!36236) (Cons!36235 (h!37681 (_ BitVec 64)) (t!50940 List!36239)) )
))
(declare-fun arrayNoDuplicates!0 (array!103275 (_ BitVec 32) List!36239) Bool)

(assert (=> b!1548015 (= res!1060997 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36236))))

(declare-fun bm!70067 () Bool)

(assert (=> bm!70067 (= call!70068 call!70070)))

(declare-fun b!1548016 () Bool)

(declare-fun call!70067 () ListLongMap!22355)

(assert (=> b!1548016 (= e!861699 call!70067)))

(declare-fun b!1548017 () Bool)

(assert (=> b!1548017 (= e!861697 call!70067)))

(declare-fun b!1548018 () Bool)

(assert (=> b!1548018 (= e!861696 e!861698)))

(declare-fun res!1061003 () Bool)

(assert (=> b!1548018 (=> (not res!1061003) (not e!861698))))

(assert (=> b!1548018 (= res!1061003 (bvslt from!762 (size!50386 _keys!618)))))

(declare-fun lt!667050 () ListLongMap!22355)

(declare-fun e!861700 () ListLongMap!22355)

(assert (=> b!1548018 (= lt!667050 e!861700)))

(assert (=> b!1548018 (= c!142068 (and (not lt!667049) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1548018 (= lt!667049 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1548019 () Bool)

(declare-fun tp_is_empty!38055 () Bool)

(assert (=> b!1548019 (= e!861695 tp_is_empty!38055)))

(declare-fun b!1548020 () Bool)

(declare-fun e!861692 () Bool)

(declare-fun e!861693 () Bool)

(assert (=> b!1548020 (= e!861692 (and e!861693 mapRes!58786))))

(declare-fun condMapEmpty!58786 () Bool)

(declare-fun mapDefault!58786 () ValueCell!18117)

(assert (=> b!1548020 (= condMapEmpty!58786 (= (arr!49836 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18117)) mapDefault!58786)))))

(declare-fun b!1548021 () Bool)

(declare-fun res!1060999 () Bool)

(assert (=> b!1548021 (=> (not res!1060999) (not e!861696))))

(assert (=> b!1548021 (= res!1060999 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50386 _keys!618))))))

(declare-fun b!1548022 () Bool)

(assert (=> b!1548022 (= e!861693 tp_is_empty!38055)))

(declare-fun b!1548023 () Bool)

(assert (=> b!1548023 (= e!861700 (+!4914 call!70069 (tuple2!24735 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1548024 () Bool)

(assert (=> b!1548024 (= e!861700 e!861699)))

(assert (=> b!1548024 (= c!142070 (and (not lt!667049) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1548025 () Bool)

(declare-fun res!1060998 () Bool)

(assert (=> b!1548025 (=> (not res!1060998) (not e!861696))))

(assert (=> b!1548025 (= res!1060998 (and (= (size!50387 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50386 _keys!618) (size!50387 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!70068 () Bool)

(assert (=> bm!70068 (= call!70067 call!70069)))

(declare-fun b!1548014 () Bool)

(assert (=> b!1548014 (= e!861697 call!70071)))

(declare-fun res!1061002 () Bool)

(assert (=> start!132098 (=> (not res!1061002) (not e!861696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132098 (= res!1061002 (validMask!0 mask!926))))

(assert (=> start!132098 e!861696))

(declare-fun array_inv!38679 (array!103275) Bool)

(assert (=> start!132098 (array_inv!38679 _keys!618)))

(assert (=> start!132098 tp_is_empty!38055))

(assert (=> start!132098 true))

(assert (=> start!132098 tp!111590))

(declare-fun array_inv!38680 (array!103277) Bool)

(assert (=> start!132098 (and (array_inv!38680 _values!470) e!861692)))

(assert (= (and start!132098 res!1061002) b!1548025))

(assert (= (and b!1548025 res!1060998) b!1548011))

(assert (= (and b!1548011 res!1061000) b!1548015))

(assert (= (and b!1548015 res!1060997) b!1548021))

(assert (= (and b!1548021 res!1060999) b!1548018))

(assert (= (and b!1548018 c!142068) b!1548023))

(assert (= (and b!1548018 (not c!142068)) b!1548024))

(assert (= (and b!1548024 c!142070) b!1548016))

(assert (= (and b!1548024 (not c!142070)) b!1548012))

(assert (= (and b!1548012 c!142069) b!1548017))

(assert (= (and b!1548012 (not c!142069)) b!1548014))

(assert (= (or b!1548017 b!1548014) bm!70064))

(assert (= (or b!1548016 bm!70064) bm!70067))

(assert (= (or b!1548016 b!1548017) bm!70068))

(assert (= (or b!1548023 bm!70067) bm!70065))

(assert (= (or b!1548023 bm!70068) bm!70066))

(assert (= (and b!1548018 res!1061003) b!1548013))

(assert (= (and b!1548013 res!1061001) b!1548010))

(assert (= (and b!1548020 condMapEmpty!58786) mapIsEmpty!58786))

(assert (= (and b!1548020 (not condMapEmpty!58786)) mapNonEmpty!58786))

(get-info :version)

(assert (= (and mapNonEmpty!58786 ((_ is ValueCellFull!18117) mapValue!58786)) b!1548019))

(assert (= (and b!1548020 ((_ is ValueCellFull!18117) mapDefault!58786)) b!1548022))

(assert (= start!132098 b!1548020))

(declare-fun m!1427513 () Bool)

(assert (=> bm!70065 m!1427513))

(declare-fun m!1427515 () Bool)

(assert (=> b!1548023 m!1427515))

(declare-fun m!1427517 () Bool)

(assert (=> start!132098 m!1427517))

(declare-fun m!1427519 () Bool)

(assert (=> start!132098 m!1427519))

(declare-fun m!1427521 () Bool)

(assert (=> start!132098 m!1427521))

(declare-fun m!1427523 () Bool)

(assert (=> b!1548015 m!1427523))

(declare-fun m!1427525 () Bool)

(assert (=> b!1548010 m!1427525))

(declare-fun m!1427527 () Bool)

(assert (=> b!1548010 m!1427527))

(assert (=> b!1548010 m!1427525))

(assert (=> b!1548010 m!1427525))

(declare-fun m!1427529 () Bool)

(assert (=> b!1548010 m!1427529))

(assert (=> b!1548010 m!1427525))

(declare-fun m!1427531 () Bool)

(assert (=> b!1548010 m!1427531))

(assert (=> b!1548010 m!1427513))

(declare-fun m!1427533 () Bool)

(assert (=> b!1548010 m!1427533))

(assert (=> b!1548010 m!1427525))

(declare-fun m!1427535 () Bool)

(assert (=> b!1548010 m!1427535))

(assert (=> b!1548010 m!1427525))

(declare-fun m!1427537 () Bool)

(assert (=> b!1548010 m!1427537))

(declare-fun m!1427539 () Bool)

(assert (=> b!1548010 m!1427539))

(assert (=> b!1548010 m!1427525))

(declare-fun m!1427541 () Bool)

(assert (=> b!1548010 m!1427541))

(assert (=> b!1548010 m!1427525))

(declare-fun m!1427543 () Bool)

(assert (=> b!1548010 m!1427543))

(assert (=> b!1548010 m!1427533))

(declare-fun m!1427545 () Bool)

(assert (=> b!1548011 m!1427545))

(declare-fun m!1427547 () Bool)

(assert (=> mapNonEmpty!58786 m!1427547))

(assert (=> b!1548013 m!1427525))

(assert (=> b!1548013 m!1427525))

(declare-fun m!1427549 () Bool)

(assert (=> b!1548013 m!1427549))

(declare-fun m!1427551 () Bool)

(assert (=> bm!70066 m!1427551))

(check-sat (not b!1548023) (not bm!70065) (not b!1548013) (not b_next!31779) (not mapNonEmpty!58786) (not b!1548011) b_and!51199 (not b!1548015) (not start!132098) (not b!1548010) tp_is_empty!38055 (not bm!70066))
(check-sat b_and!51199 (not b_next!31779))
