; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112000 () Bool)

(assert start!112000)

(declare-fun b_free!30537 () Bool)

(declare-fun b_next!30537 () Bool)

(assert (=> start!112000 (= b_free!30537 (not b_next!30537))))

(declare-fun tp!107094 () Bool)

(declare-fun b_and!49185 () Bool)

(assert (=> start!112000 (= tp!107094 b_and!49185)))

(declare-fun res!880630 () Bool)

(declare-fun e!756226 () Bool)

(assert (=> start!112000 (=> (not res!880630) (not e!756226))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112000 (= res!880630 (validMask!0 mask!2019))))

(assert (=> start!112000 e!756226))

(declare-datatypes ((array!89583 0))(
  ( (array!89584 (arr!43259 (Array (_ BitVec 32) (_ BitVec 64))) (size!43810 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89583)

(declare-fun array_inv!32593 (array!89583) Bool)

(assert (=> start!112000 (array_inv!32593 _keys!1609)))

(assert (=> start!112000 true))

(declare-fun tp_is_empty!36357 () Bool)

(assert (=> start!112000 tp_is_empty!36357))

(declare-datatypes ((V!53579 0))(
  ( (V!53580 (val!18253 Int)) )
))
(declare-datatypes ((ValueCell!17280 0))(
  ( (ValueCellFull!17280 (v!20885 V!53579)) (EmptyCell!17280) )
))
(declare-datatypes ((array!89585 0))(
  ( (array!89586 (arr!43260 (Array (_ BitVec 32) ValueCell!17280)) (size!43811 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89585)

(declare-fun e!756223 () Bool)

(declare-fun array_inv!32594 (array!89585) Bool)

(assert (=> start!112000 (and (array_inv!32594 _values!1337) e!756223)))

(assert (=> start!112000 tp!107094))

(declare-fun mapNonEmpty!56190 () Bool)

(declare-fun mapRes!56190 () Bool)

(declare-fun tp!107095 () Bool)

(declare-fun e!756225 () Bool)

(assert (=> mapNonEmpty!56190 (= mapRes!56190 (and tp!107095 e!756225))))

(declare-fun mapKey!56190 () (_ BitVec 32))

(declare-fun mapValue!56190 () ValueCell!17280)

(declare-fun mapRest!56190 () (Array (_ BitVec 32) ValueCell!17280))

(assert (=> mapNonEmpty!56190 (= (arr!43260 _values!1337) (store mapRest!56190 mapKey!56190 mapValue!56190))))

(declare-fun b!1326776 () Bool)

(declare-fun res!880627 () Bool)

(assert (=> b!1326776 (=> (not res!880627) (not e!756226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89583 (_ BitVec 32)) Bool)

(assert (=> b!1326776 (= res!880627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1326777 () Bool)

(declare-fun res!880631 () Bool)

(assert (=> b!1326777 (=> (not res!880631) (not e!756226))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1326777 (= res!880631 (and (= (size!43811 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43810 _keys!1609) (size!43811 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!1279 () V!53579)

(declare-fun minValue!1279 () V!53579)

(declare-fun defaultEntry!1340 () Int)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun b!1326778 () Bool)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-datatypes ((tuple2!23702 0))(
  ( (tuple2!23703 (_1!11861 (_ BitVec 64)) (_2!11861 V!53579)) )
))
(declare-datatypes ((List!30866 0))(
  ( (Nil!30863) (Cons!30862 (h!32071 tuple2!23702) (t!44877 List!30866)) )
))
(declare-datatypes ((ListLongMap!21371 0))(
  ( (ListLongMap!21372 (toList!10701 List!30866)) )
))
(declare-fun contains!8796 (ListLongMap!21371 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5633 (array!89583 array!89585 (_ BitVec 32) (_ BitVec 32) V!53579 V!53579 (_ BitVec 32) Int) ListLongMap!21371)

(assert (=> b!1326778 (= e!756226 (not (contains!8796 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) k0!1164)))))

(declare-fun b!1326779 () Bool)

(declare-fun e!756227 () Bool)

(assert (=> b!1326779 (= e!756223 (and e!756227 mapRes!56190))))

(declare-fun condMapEmpty!56190 () Bool)

(declare-fun mapDefault!56190 () ValueCell!17280)

(assert (=> b!1326779 (= condMapEmpty!56190 (= (arr!43260 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17280)) mapDefault!56190)))))

(declare-fun b!1326780 () Bool)

(assert (=> b!1326780 (= e!756227 tp_is_empty!36357)))

(declare-fun mapIsEmpty!56190 () Bool)

(assert (=> mapIsEmpty!56190 mapRes!56190))

(declare-fun b!1326781 () Bool)

(declare-fun res!880632 () Bool)

(assert (=> b!1326781 (=> (not res!880632) (not e!756226))))

(assert (=> b!1326781 (= res!880632 (not (= (select (arr!43259 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1326782 () Bool)

(declare-fun res!880626 () Bool)

(assert (=> b!1326782 (=> (not res!880626) (not e!756226))))

(assert (=> b!1326782 (= res!880626 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43810 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1326783 () Bool)

(declare-fun res!880629 () Bool)

(assert (=> b!1326783 (=> (not res!880629) (not e!756226))))

(assert (=> b!1326783 (= res!880629 (contains!8796 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1326784 () Bool)

(assert (=> b!1326784 (= e!756225 tp_is_empty!36357)))

(declare-fun b!1326785 () Bool)

(declare-fun res!880625 () Bool)

(assert (=> b!1326785 (=> (not res!880625) (not e!756226))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326785 (= res!880625 (not (validKeyInArray!0 (select (arr!43259 _keys!1609) from!2000))))))

(declare-fun b!1326786 () Bool)

(declare-fun res!880628 () Bool)

(assert (=> b!1326786 (=> (not res!880628) (not e!756226))))

(declare-datatypes ((List!30867 0))(
  ( (Nil!30864) (Cons!30863 (h!32072 (_ BitVec 64)) (t!44878 List!30867)) )
))
(declare-fun arrayNoDuplicates!0 (array!89583 (_ BitVec 32) List!30867) Bool)

(assert (=> b!1326786 (= res!880628 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30864))))

(assert (= (and start!112000 res!880630) b!1326777))

(assert (= (and b!1326777 res!880631) b!1326776))

(assert (= (and b!1326776 res!880627) b!1326786))

(assert (= (and b!1326786 res!880628) b!1326782))

(assert (= (and b!1326782 res!880626) b!1326783))

(assert (= (and b!1326783 res!880629) b!1326781))

(assert (= (and b!1326781 res!880632) b!1326785))

(assert (= (and b!1326785 res!880625) b!1326778))

(assert (= (and b!1326779 condMapEmpty!56190) mapIsEmpty!56190))

(assert (= (and b!1326779 (not condMapEmpty!56190)) mapNonEmpty!56190))

(get-info :version)

(assert (= (and mapNonEmpty!56190 ((_ is ValueCellFull!17280) mapValue!56190)) b!1326784))

(assert (= (and b!1326779 ((_ is ValueCellFull!17280) mapDefault!56190)) b!1326780))

(assert (= start!112000 b!1326779))

(declare-fun m!1215987 () Bool)

(assert (=> b!1326783 m!1215987))

(assert (=> b!1326783 m!1215987))

(declare-fun m!1215989 () Bool)

(assert (=> b!1326783 m!1215989))

(declare-fun m!1215991 () Bool)

(assert (=> mapNonEmpty!56190 m!1215991))

(declare-fun m!1215993 () Bool)

(assert (=> b!1326785 m!1215993))

(assert (=> b!1326785 m!1215993))

(declare-fun m!1215995 () Bool)

(assert (=> b!1326785 m!1215995))

(declare-fun m!1215997 () Bool)

(assert (=> start!112000 m!1215997))

(declare-fun m!1215999 () Bool)

(assert (=> start!112000 m!1215999))

(declare-fun m!1216001 () Bool)

(assert (=> start!112000 m!1216001))

(assert (=> b!1326781 m!1215993))

(declare-fun m!1216003 () Bool)

(assert (=> b!1326786 m!1216003))

(declare-fun m!1216005 () Bool)

(assert (=> b!1326776 m!1216005))

(declare-fun m!1216007 () Bool)

(assert (=> b!1326778 m!1216007))

(assert (=> b!1326778 m!1216007))

(declare-fun m!1216009 () Bool)

(assert (=> b!1326778 m!1216009))

(check-sat (not b!1326776) (not b_next!30537) (not b!1326783) b_and!49185 (not b!1326785) (not b!1326786) (not mapNonEmpty!56190) tp_is_empty!36357 (not b!1326778) (not start!112000))
(check-sat b_and!49185 (not b_next!30537))
(get-model)

(declare-fun d!143059 () Bool)

(declare-fun e!756248 () Bool)

(assert (=> d!143059 e!756248))

(declare-fun res!880659 () Bool)

(assert (=> d!143059 (=> res!880659 e!756248)))

(declare-fun lt!590374 () Bool)

(assert (=> d!143059 (= res!880659 (not lt!590374))))

(declare-fun lt!590375 () Bool)

(assert (=> d!143059 (= lt!590374 lt!590375)))

(declare-datatypes ((Unit!43647 0))(
  ( (Unit!43648) )
))
(declare-fun lt!590373 () Unit!43647)

(declare-fun e!756247 () Unit!43647)

(assert (=> d!143059 (= lt!590373 e!756247)))

(declare-fun c!125753 () Bool)

(assert (=> d!143059 (= c!125753 lt!590375)))

(declare-fun containsKey!734 (List!30866 (_ BitVec 64)) Bool)

(assert (=> d!143059 (= lt!590375 (containsKey!734 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164))))

(assert (=> d!143059 (= (contains!8796 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) k0!1164) lt!590374)))

(declare-fun b!1326826 () Bool)

(declare-fun lt!590372 () Unit!43647)

(assert (=> b!1326826 (= e!756247 lt!590372)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!479 (List!30866 (_ BitVec 64)) Unit!43647)

(assert (=> b!1326826 (= lt!590372 (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164))))

(declare-datatypes ((Option!767 0))(
  ( (Some!766 (v!20887 V!53579)) (None!765) )
))
(declare-fun isDefined!519 (Option!767) Bool)

(declare-fun getValueByKey!716 (List!30866 (_ BitVec 64)) Option!767)

(assert (=> b!1326826 (isDefined!519 (getValueByKey!716 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164))))

(declare-fun b!1326827 () Bool)

(declare-fun Unit!43649 () Unit!43647)

(assert (=> b!1326827 (= e!756247 Unit!43649)))

(declare-fun b!1326828 () Bool)

(assert (=> b!1326828 (= e!756248 (isDefined!519 (getValueByKey!716 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164)))))

(assert (= (and d!143059 c!125753) b!1326826))

(assert (= (and d!143059 (not c!125753)) b!1326827))

(assert (= (and d!143059 (not res!880659)) b!1326828))

(declare-fun m!1216035 () Bool)

(assert (=> d!143059 m!1216035))

(declare-fun m!1216037 () Bool)

(assert (=> b!1326826 m!1216037))

(declare-fun m!1216039 () Bool)

(assert (=> b!1326826 m!1216039))

(assert (=> b!1326826 m!1216039))

(declare-fun m!1216041 () Bool)

(assert (=> b!1326826 m!1216041))

(assert (=> b!1326828 m!1216039))

(assert (=> b!1326828 m!1216039))

(assert (=> b!1326828 m!1216041))

(assert (=> b!1326778 d!143059))

(declare-fun bm!64778 () Bool)

(declare-fun call!64781 () ListLongMap!21371)

(declare-fun call!64786 () ListLongMap!21371)

(assert (=> bm!64778 (= call!64781 call!64786)))

(declare-fun b!1326871 () Bool)

(declare-fun e!756282 () Bool)

(declare-fun call!64785 () Bool)

(assert (=> b!1326871 (= e!756282 (not call!64785))))

(declare-fun bm!64779 () Bool)

(declare-fun lt!590434 () ListLongMap!21371)

(assert (=> bm!64779 (= call!64785 (contains!8796 lt!590434 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1326873 () Bool)

(declare-fun e!756287 () Bool)

(assert (=> b!1326873 (= e!756287 e!756282)))

(declare-fun c!125769 () Bool)

(assert (=> b!1326873 (= c!125769 (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1326874 () Bool)

(declare-fun e!756279 () ListLongMap!21371)

(declare-fun call!64782 () ListLongMap!21371)

(declare-fun +!4616 (ListLongMap!21371 tuple2!23702) ListLongMap!21371)

(assert (=> b!1326874 (= e!756279 (+!4616 call!64782 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))

(declare-fun b!1326875 () Bool)

(declare-fun e!756280 () Bool)

(assert (=> b!1326875 (= e!756280 (validKeyInArray!0 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(declare-fun b!1326876 () Bool)

(declare-fun res!880681 () Bool)

(assert (=> b!1326876 (=> (not res!880681) (not e!756287))))

(declare-fun e!756276 () Bool)

(assert (=> b!1326876 (= res!880681 e!756276)))

(declare-fun res!880685 () Bool)

(assert (=> b!1326876 (=> res!880685 e!756276)))

(declare-fun e!756278 () Bool)

(assert (=> b!1326876 (= res!880685 (not e!756278))))

(declare-fun res!880678 () Bool)

(assert (=> b!1326876 (=> (not res!880678) (not e!756278))))

(assert (=> b!1326876 (= res!880678 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43810 _keys!1609)))))

(declare-fun b!1326877 () Bool)

(declare-fun e!756281 () ListLongMap!21371)

(declare-fun call!64783 () ListLongMap!21371)

(assert (=> b!1326877 (= e!756281 call!64783)))

(declare-fun b!1326878 () Bool)

(declare-fun e!756285 () Bool)

(declare-fun apply!1066 (ListLongMap!21371 (_ BitVec 64)) V!53579)

(assert (=> b!1326878 (= e!756285 (= (apply!1066 lt!590434 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1279))))

(declare-fun b!1326879 () Bool)

(declare-fun e!756277 () Bool)

(declare-fun get!21847 (ValueCell!17280 V!53579) V!53579)

(declare-fun dynLambda!3653 (Int (_ BitVec 64)) V!53579)

(assert (=> b!1326879 (= e!756277 (= (apply!1066 lt!590434 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))) (get!21847 (select (arr!43260 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1326879 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43811 _values!1337)))))

(assert (=> b!1326879 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43810 _keys!1609)))))

(declare-fun b!1326880 () Bool)

(declare-fun res!880686 () Bool)

(assert (=> b!1326880 (=> (not res!880686) (not e!756287))))

(declare-fun e!756283 () Bool)

(assert (=> b!1326880 (= res!880686 e!756283)))

(declare-fun c!125771 () Bool)

(assert (=> b!1326880 (= c!125771 (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!64780 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6334 (array!89583 array!89585 (_ BitVec 32) (_ BitVec 32) V!53579 V!53579 (_ BitVec 32) Int) ListLongMap!21371)

(assert (=> bm!64780 (= call!64786 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun bm!64781 () Bool)

(assert (=> bm!64781 (= call!64783 call!64782)))

(declare-fun b!1326881 () Bool)

(assert (=> b!1326881 (= e!756282 e!756285)))

(declare-fun res!880682 () Bool)

(assert (=> b!1326881 (= res!880682 call!64785)))

(assert (=> b!1326881 (=> (not res!880682) (not e!756285))))

(declare-fun b!1326882 () Bool)

(declare-fun call!64787 () ListLongMap!21371)

(assert (=> b!1326882 (= e!756281 call!64787)))

(declare-fun b!1326883 () Bool)

(declare-fun e!756286 () ListLongMap!21371)

(assert (=> b!1326883 (= e!756286 call!64783)))

(declare-fun b!1326884 () Bool)

(assert (=> b!1326884 (= e!756276 e!756277)))

(declare-fun res!880684 () Bool)

(assert (=> b!1326884 (=> (not res!880684) (not e!756277))))

(assert (=> b!1326884 (= res!880684 (contains!8796 lt!590434 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (=> b!1326884 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43810 _keys!1609)))))

(declare-fun b!1326885 () Bool)

(assert (=> b!1326885 (= e!756278 (validKeyInArray!0 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(declare-fun b!1326886 () Bool)

(declare-fun e!756275 () Unit!43647)

(declare-fun lt!590428 () Unit!43647)

(assert (=> b!1326886 (= e!756275 lt!590428)))

(declare-fun lt!590426 () ListLongMap!21371)

(assert (=> b!1326886 (= lt!590426 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun lt!590421 () (_ BitVec 64))

(assert (=> b!1326886 (= lt!590421 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590435 () (_ BitVec 64))

(assert (=> b!1326886 (= lt!590435 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))

(declare-fun lt!590422 () Unit!43647)

(declare-fun addStillContains!1173 (ListLongMap!21371 (_ BitVec 64) V!53579 (_ BitVec 64)) Unit!43647)

(assert (=> b!1326886 (= lt!590422 (addStillContains!1173 lt!590426 lt!590421 zeroValue!1279 lt!590435))))

(assert (=> b!1326886 (contains!8796 (+!4616 lt!590426 (tuple2!23703 lt!590421 zeroValue!1279)) lt!590435)))

(declare-fun lt!590441 () Unit!43647)

(assert (=> b!1326886 (= lt!590441 lt!590422)))

(declare-fun lt!590425 () ListLongMap!21371)

(assert (=> b!1326886 (= lt!590425 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun lt!590431 () (_ BitVec 64))

(assert (=> b!1326886 (= lt!590431 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590430 () (_ BitVec 64))

(assert (=> b!1326886 (= lt!590430 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))

(declare-fun lt!590437 () Unit!43647)

(declare-fun addApplyDifferent!569 (ListLongMap!21371 (_ BitVec 64) V!53579 (_ BitVec 64)) Unit!43647)

(assert (=> b!1326886 (= lt!590437 (addApplyDifferent!569 lt!590425 lt!590431 minValue!1279 lt!590430))))

(assert (=> b!1326886 (= (apply!1066 (+!4616 lt!590425 (tuple2!23703 lt!590431 minValue!1279)) lt!590430) (apply!1066 lt!590425 lt!590430))))

(declare-fun lt!590432 () Unit!43647)

(assert (=> b!1326886 (= lt!590432 lt!590437)))

(declare-fun lt!590439 () ListLongMap!21371)

(assert (=> b!1326886 (= lt!590439 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun lt!590436 () (_ BitVec 64))

(assert (=> b!1326886 (= lt!590436 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590420 () (_ BitVec 64))

(assert (=> b!1326886 (= lt!590420 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))

(declare-fun lt!590433 () Unit!43647)

(assert (=> b!1326886 (= lt!590433 (addApplyDifferent!569 lt!590439 lt!590436 zeroValue!1279 lt!590420))))

(assert (=> b!1326886 (= (apply!1066 (+!4616 lt!590439 (tuple2!23703 lt!590436 zeroValue!1279)) lt!590420) (apply!1066 lt!590439 lt!590420))))

(declare-fun lt!590423 () Unit!43647)

(assert (=> b!1326886 (= lt!590423 lt!590433)))

(declare-fun lt!590438 () ListLongMap!21371)

(assert (=> b!1326886 (= lt!590438 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun lt!590429 () (_ BitVec 64))

(assert (=> b!1326886 (= lt!590429 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590440 () (_ BitVec 64))

(assert (=> b!1326886 (= lt!590440 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))

(assert (=> b!1326886 (= lt!590428 (addApplyDifferent!569 lt!590438 lt!590429 minValue!1279 lt!590440))))

(assert (=> b!1326886 (= (apply!1066 (+!4616 lt!590438 (tuple2!23703 lt!590429 minValue!1279)) lt!590440) (apply!1066 lt!590438 lt!590440))))

(declare-fun b!1326887 () Bool)

(declare-fun e!756284 () Bool)

(assert (=> b!1326887 (= e!756283 e!756284)))

(declare-fun res!880683 () Bool)

(declare-fun call!64784 () Bool)

(assert (=> b!1326887 (= res!880683 call!64784)))

(assert (=> b!1326887 (=> (not res!880683) (not e!756284))))

(declare-fun b!1326888 () Bool)

(assert (=> b!1326888 (= e!756279 e!756286)))

(declare-fun c!125768 () Bool)

(assert (=> b!1326888 (= c!125768 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!143061 () Bool)

(assert (=> d!143061 e!756287))

(declare-fun res!880679 () Bool)

(assert (=> d!143061 (=> (not res!880679) (not e!756287))))

(assert (=> d!143061 (= res!880679 (or (bvsge (bvadd #b00000000000000000000000000000001 from!2000) (size!43810 _keys!1609)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43810 _keys!1609)))))))

(declare-fun lt!590427 () ListLongMap!21371)

(assert (=> d!143061 (= lt!590434 lt!590427)))

(declare-fun lt!590424 () Unit!43647)

(assert (=> d!143061 (= lt!590424 e!756275)))

(declare-fun c!125766 () Bool)

(assert (=> d!143061 (= c!125766 e!756280)))

(declare-fun res!880680 () Bool)

(assert (=> d!143061 (=> (not res!880680) (not e!756280))))

(assert (=> d!143061 (= res!880680 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43810 _keys!1609)))))

(assert (=> d!143061 (= lt!590427 e!756279)))

(declare-fun c!125767 () Bool)

(assert (=> d!143061 (= c!125767 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!143061 (validMask!0 mask!2019)))

(assert (=> d!143061 (= (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) lt!590434)))

(declare-fun b!1326872 () Bool)

(declare-fun c!125770 () Bool)

(assert (=> b!1326872 (= c!125770 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1326872 (= e!756286 e!756281)))

(declare-fun b!1326889 () Bool)

(assert (=> b!1326889 (= e!756283 (not call!64784))))

(declare-fun bm!64782 () Bool)

(assert (=> bm!64782 (= call!64784 (contains!8796 lt!590434 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64783 () Bool)

(assert (=> bm!64783 (= call!64782 (+!4616 (ite c!125767 call!64786 (ite c!125768 call!64781 call!64787)) (ite (or c!125767 c!125768) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun b!1326890 () Bool)

(declare-fun Unit!43650 () Unit!43647)

(assert (=> b!1326890 (= e!756275 Unit!43650)))

(declare-fun bm!64784 () Bool)

(assert (=> bm!64784 (= call!64787 call!64781)))

(declare-fun b!1326891 () Bool)

(assert (=> b!1326891 (= e!756284 (= (apply!1066 lt!590434 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1279))))

(assert (= (and d!143061 c!125767) b!1326874))

(assert (= (and d!143061 (not c!125767)) b!1326888))

(assert (= (and b!1326888 c!125768) b!1326883))

(assert (= (and b!1326888 (not c!125768)) b!1326872))

(assert (= (and b!1326872 c!125770) b!1326877))

(assert (= (and b!1326872 (not c!125770)) b!1326882))

(assert (= (or b!1326877 b!1326882) bm!64784))

(assert (= (or b!1326883 bm!64784) bm!64778))

(assert (= (or b!1326883 b!1326877) bm!64781))

(assert (= (or b!1326874 bm!64778) bm!64780))

(assert (= (or b!1326874 bm!64781) bm!64783))

(assert (= (and d!143061 res!880680) b!1326875))

(assert (= (and d!143061 c!125766) b!1326886))

(assert (= (and d!143061 (not c!125766)) b!1326890))

(assert (= (and d!143061 res!880679) b!1326876))

(assert (= (and b!1326876 res!880678) b!1326885))

(assert (= (and b!1326876 (not res!880685)) b!1326884))

(assert (= (and b!1326884 res!880684) b!1326879))

(assert (= (and b!1326876 res!880681) b!1326880))

(assert (= (and b!1326880 c!125771) b!1326887))

(assert (= (and b!1326880 (not c!125771)) b!1326889))

(assert (= (and b!1326887 res!880683) b!1326891))

(assert (= (or b!1326887 b!1326889) bm!64782))

(assert (= (and b!1326880 res!880686) b!1326873))

(assert (= (and b!1326873 c!125769) b!1326881))

(assert (= (and b!1326873 (not c!125769)) b!1326871))

(assert (= (and b!1326881 res!880682) b!1326878))

(assert (= (or b!1326881 b!1326871) bm!64779))

(declare-fun b_lambda!23841 () Bool)

(assert (=> (not b_lambda!23841) (not b!1326879)))

(declare-fun t!44882 () Bool)

(declare-fun tb!11817 () Bool)

(assert (=> (and start!112000 (= defaultEntry!1340 defaultEntry!1340) t!44882) tb!11817))

(declare-fun result!24685 () Bool)

(assert (=> tb!11817 (= result!24685 tp_is_empty!36357)))

(assert (=> b!1326879 t!44882))

(declare-fun b_and!49189 () Bool)

(assert (= b_and!49185 (and (=> t!44882 result!24685) b_and!49189)))

(declare-fun m!1216043 () Bool)

(assert (=> bm!64783 m!1216043))

(declare-fun m!1216045 () Bool)

(assert (=> b!1326878 m!1216045))

(declare-fun m!1216047 () Bool)

(assert (=> bm!64779 m!1216047))

(declare-fun m!1216049 () Bool)

(assert (=> b!1326884 m!1216049))

(assert (=> b!1326884 m!1216049))

(declare-fun m!1216051 () Bool)

(assert (=> b!1326884 m!1216051))

(declare-fun m!1216053 () Bool)

(assert (=> b!1326886 m!1216053))

(declare-fun m!1216055 () Bool)

(assert (=> b!1326886 m!1216055))

(declare-fun m!1216057 () Bool)

(assert (=> b!1326886 m!1216057))

(declare-fun m!1216059 () Bool)

(assert (=> b!1326886 m!1216059))

(declare-fun m!1216061 () Bool)

(assert (=> b!1326886 m!1216061))

(declare-fun m!1216063 () Bool)

(assert (=> b!1326886 m!1216063))

(declare-fun m!1216065 () Bool)

(assert (=> b!1326886 m!1216065))

(declare-fun m!1216067 () Bool)

(assert (=> b!1326886 m!1216067))

(declare-fun m!1216069 () Bool)

(assert (=> b!1326886 m!1216069))

(assert (=> b!1326886 m!1216055))

(declare-fun m!1216071 () Bool)

(assert (=> b!1326886 m!1216071))

(declare-fun m!1216073 () Bool)

(assert (=> b!1326886 m!1216073))

(assert (=> b!1326886 m!1216059))

(assert (=> b!1326886 m!1216049))

(assert (=> b!1326886 m!1216065))

(declare-fun m!1216075 () Bool)

(assert (=> b!1326886 m!1216075))

(declare-fun m!1216077 () Bool)

(assert (=> b!1326886 m!1216077))

(declare-fun m!1216079 () Bool)

(assert (=> b!1326886 m!1216079))

(declare-fun m!1216081 () Bool)

(assert (=> b!1326886 m!1216081))

(assert (=> b!1326886 m!1216071))

(declare-fun m!1216083 () Bool)

(assert (=> b!1326886 m!1216083))

(declare-fun m!1216085 () Bool)

(assert (=> b!1326874 m!1216085))

(assert (=> b!1326885 m!1216049))

(assert (=> b!1326885 m!1216049))

(declare-fun m!1216087 () Bool)

(assert (=> b!1326885 m!1216087))

(declare-fun m!1216089 () Bool)

(assert (=> b!1326879 m!1216089))

(declare-fun m!1216091 () Bool)

(assert (=> b!1326879 m!1216091))

(declare-fun m!1216093 () Bool)

(assert (=> b!1326879 m!1216093))

(assert (=> b!1326879 m!1216091))

(assert (=> b!1326879 m!1216049))

(assert (=> b!1326879 m!1216089))

(assert (=> b!1326879 m!1216049))

(declare-fun m!1216095 () Bool)

(assert (=> b!1326879 m!1216095))

(assert (=> d!143061 m!1215997))

(assert (=> b!1326875 m!1216049))

(assert (=> b!1326875 m!1216049))

(assert (=> b!1326875 m!1216087))

(assert (=> bm!64780 m!1216081))

(declare-fun m!1216097 () Bool)

(assert (=> b!1326891 m!1216097))

(declare-fun m!1216099 () Bool)

(assert (=> bm!64782 m!1216099))

(assert (=> b!1326778 d!143061))

(declare-fun b!1326904 () Bool)

(declare-fun e!756296 () Bool)

(declare-fun call!64790 () Bool)

(assert (=> b!1326904 (= e!756296 call!64790)))

(declare-fun b!1326905 () Bool)

(declare-fun e!756299 () Bool)

(declare-fun contains!8798 (List!30867 (_ BitVec 64)) Bool)

(assert (=> b!1326905 (= e!756299 (contains!8798 Nil!30864 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun b!1326906 () Bool)

(declare-fun e!756297 () Bool)

(declare-fun e!756298 () Bool)

(assert (=> b!1326906 (= e!756297 e!756298)))

(declare-fun res!880694 () Bool)

(assert (=> b!1326906 (=> (not res!880694) (not e!756298))))

(assert (=> b!1326906 (= res!880694 (not e!756299))))

(declare-fun res!880695 () Bool)

(assert (=> b!1326906 (=> (not res!880695) (not e!756299))))

(assert (=> b!1326906 (= res!880695 (validKeyInArray!0 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun bm!64787 () Bool)

(declare-fun c!125774 () Bool)

(assert (=> bm!64787 (= call!64790 (arrayNoDuplicates!0 _keys!1609 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125774 (Cons!30863 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000) Nil!30864) Nil!30864)))))

(declare-fun d!143063 () Bool)

(declare-fun res!880693 () Bool)

(assert (=> d!143063 (=> res!880693 e!756297)))

(assert (=> d!143063 (= res!880693 (bvsge #b00000000000000000000000000000000 (size!43810 _keys!1609)))))

(assert (=> d!143063 (= (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30864) e!756297)))

(declare-fun b!1326907 () Bool)

(assert (=> b!1326907 (= e!756296 call!64790)))

(declare-fun b!1326908 () Bool)

(assert (=> b!1326908 (= e!756298 e!756296)))

(assert (=> b!1326908 (= c!125774 (validKeyInArray!0 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000)))))

(assert (= (and d!143063 (not res!880693)) b!1326906))

(assert (= (and b!1326906 res!880695) b!1326905))

(assert (= (and b!1326906 res!880694) b!1326908))

(assert (= (and b!1326908 c!125774) b!1326907))

(assert (= (and b!1326908 (not c!125774)) b!1326904))

(assert (= (or b!1326907 b!1326904) bm!64787))

(declare-fun m!1216101 () Bool)

(assert (=> b!1326905 m!1216101))

(assert (=> b!1326905 m!1216101))

(declare-fun m!1216103 () Bool)

(assert (=> b!1326905 m!1216103))

(assert (=> b!1326906 m!1216101))

(assert (=> b!1326906 m!1216101))

(declare-fun m!1216105 () Bool)

(assert (=> b!1326906 m!1216105))

(assert (=> bm!64787 m!1216101))

(declare-fun m!1216107 () Bool)

(assert (=> bm!64787 m!1216107))

(assert (=> b!1326908 m!1216101))

(assert (=> b!1326908 m!1216101))

(assert (=> b!1326908 m!1216105))

(assert (=> b!1326786 d!143063))

(declare-fun b!1326917 () Bool)

(declare-fun e!756307 () Bool)

(declare-fun e!756308 () Bool)

(assert (=> b!1326917 (= e!756307 e!756308)))

(declare-fun c!125777 () Bool)

(assert (=> b!1326917 (= c!125777 (validKeyInArray!0 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun d!143065 () Bool)

(declare-fun res!880701 () Bool)

(assert (=> d!143065 (=> res!880701 e!756307)))

(assert (=> d!143065 (= res!880701 (bvsge #b00000000000000000000000000000000 (size!43810 _keys!1609)))))

(assert (=> d!143065 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019) e!756307)))

(declare-fun b!1326918 () Bool)

(declare-fun e!756306 () Bool)

(assert (=> b!1326918 (= e!756308 e!756306)))

(declare-fun lt!590448 () (_ BitVec 64))

(assert (=> b!1326918 (= lt!590448 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000))))

(declare-fun lt!590449 () Unit!43647)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!89583 (_ BitVec 64) (_ BitVec 32)) Unit!43647)

(assert (=> b!1326918 (= lt!590449 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1609 lt!590448 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!89583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1326918 (arrayContainsKey!0 _keys!1609 lt!590448 #b00000000000000000000000000000000)))

(declare-fun lt!590450 () Unit!43647)

(assert (=> b!1326918 (= lt!590450 lt!590449)))

(declare-fun res!880700 () Bool)

(declare-datatypes ((SeekEntryResult!10039 0))(
  ( (MissingZero!10039 (index!42526 (_ BitVec 32))) (Found!10039 (index!42527 (_ BitVec 32))) (Intermediate!10039 (undefined!10851 Bool) (index!42528 (_ BitVec 32)) (x!118303 (_ BitVec 32))) (Undefined!10039) (MissingVacant!10039 (index!42529 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!89583 (_ BitVec 32)) SeekEntryResult!10039)

(assert (=> b!1326918 (= res!880700 (= (seekEntryOrOpen!0 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000) _keys!1609 mask!2019) (Found!10039 #b00000000000000000000000000000000)))))

(assert (=> b!1326918 (=> (not res!880700) (not e!756306))))

(declare-fun bm!64790 () Bool)

(declare-fun call!64793 () Bool)

(assert (=> bm!64790 (= call!64793 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1609 mask!2019))))

(declare-fun b!1326919 () Bool)

(assert (=> b!1326919 (= e!756306 call!64793)))

(declare-fun b!1326920 () Bool)

(assert (=> b!1326920 (= e!756308 call!64793)))

(assert (= (and d!143065 (not res!880701)) b!1326917))

(assert (= (and b!1326917 c!125777) b!1326918))

(assert (= (and b!1326917 (not c!125777)) b!1326920))

(assert (= (and b!1326918 res!880700) b!1326919))

(assert (= (or b!1326919 b!1326920) bm!64790))

(assert (=> b!1326917 m!1216101))

(assert (=> b!1326917 m!1216101))

(assert (=> b!1326917 m!1216105))

(assert (=> b!1326918 m!1216101))

(declare-fun m!1216109 () Bool)

(assert (=> b!1326918 m!1216109))

(declare-fun m!1216111 () Bool)

(assert (=> b!1326918 m!1216111))

(assert (=> b!1326918 m!1216101))

(declare-fun m!1216113 () Bool)

(assert (=> b!1326918 m!1216113))

(declare-fun m!1216115 () Bool)

(assert (=> bm!64790 m!1216115))

(assert (=> b!1326776 d!143065))

(declare-fun d!143067 () Bool)

(assert (=> d!143067 (= (validKeyInArray!0 (select (arr!43259 _keys!1609) from!2000)) (and (not (= (select (arr!43259 _keys!1609) from!2000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43259 _keys!1609) from!2000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1326785 d!143067))

(declare-fun d!143069 () Bool)

(assert (=> d!143069 (= (validMask!0 mask!2019) (and (or (= mask!2019 #b00000000000000000000000000000111) (= mask!2019 #b00000000000000000000000000001111) (= mask!2019 #b00000000000000000000000000011111) (= mask!2019 #b00000000000000000000000000111111) (= mask!2019 #b00000000000000000000000001111111) (= mask!2019 #b00000000000000000000000011111111) (= mask!2019 #b00000000000000000000000111111111) (= mask!2019 #b00000000000000000000001111111111) (= mask!2019 #b00000000000000000000011111111111) (= mask!2019 #b00000000000000000000111111111111) (= mask!2019 #b00000000000000000001111111111111) (= mask!2019 #b00000000000000000011111111111111) (= mask!2019 #b00000000000000000111111111111111) (= mask!2019 #b00000000000000001111111111111111) (= mask!2019 #b00000000000000011111111111111111) (= mask!2019 #b00000000000000111111111111111111) (= mask!2019 #b00000000000001111111111111111111) (= mask!2019 #b00000000000011111111111111111111) (= mask!2019 #b00000000000111111111111111111111) (= mask!2019 #b00000000001111111111111111111111) (= mask!2019 #b00000000011111111111111111111111) (= mask!2019 #b00000000111111111111111111111111) (= mask!2019 #b00000001111111111111111111111111) (= mask!2019 #b00000011111111111111111111111111) (= mask!2019 #b00000111111111111111111111111111) (= mask!2019 #b00001111111111111111111111111111) (= mask!2019 #b00011111111111111111111111111111) (= mask!2019 #b00111111111111111111111111111111)) (bvsle mask!2019 #b00111111111111111111111111111111)))))

(assert (=> start!112000 d!143069))

(declare-fun d!143071 () Bool)

(assert (=> d!143071 (= (array_inv!32593 _keys!1609) (bvsge (size!43810 _keys!1609) #b00000000000000000000000000000000))))

(assert (=> start!112000 d!143071))

(declare-fun d!143073 () Bool)

(assert (=> d!143073 (= (array_inv!32594 _values!1337) (bvsge (size!43811 _values!1337) #b00000000000000000000000000000000))))

(assert (=> start!112000 d!143073))

(declare-fun d!143075 () Bool)

(declare-fun e!756310 () Bool)

(assert (=> d!143075 e!756310))

(declare-fun res!880702 () Bool)

(assert (=> d!143075 (=> res!880702 e!756310)))

(declare-fun lt!590453 () Bool)

(assert (=> d!143075 (= res!880702 (not lt!590453))))

(declare-fun lt!590454 () Bool)

(assert (=> d!143075 (= lt!590453 lt!590454)))

(declare-fun lt!590452 () Unit!43647)

(declare-fun e!756309 () Unit!43647)

(assert (=> d!143075 (= lt!590452 e!756309)))

(declare-fun c!125778 () Bool)

(assert (=> d!143075 (= c!125778 lt!590454)))

(assert (=> d!143075 (= lt!590454 (containsKey!734 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(assert (=> d!143075 (= (contains!8796 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164) lt!590453)))

(declare-fun b!1326921 () Bool)

(declare-fun lt!590451 () Unit!43647)

(assert (=> b!1326921 (= e!756309 lt!590451)))

(assert (=> b!1326921 (= lt!590451 (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(assert (=> b!1326921 (isDefined!519 (getValueByKey!716 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(declare-fun b!1326922 () Bool)

(declare-fun Unit!43651 () Unit!43647)

(assert (=> b!1326922 (= e!756309 Unit!43651)))

(declare-fun b!1326923 () Bool)

(assert (=> b!1326923 (= e!756310 (isDefined!519 (getValueByKey!716 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164)))))

(assert (= (and d!143075 c!125778) b!1326921))

(assert (= (and d!143075 (not c!125778)) b!1326922))

(assert (= (and d!143075 (not res!880702)) b!1326923))

(declare-fun m!1216117 () Bool)

(assert (=> d!143075 m!1216117))

(declare-fun m!1216119 () Bool)

(assert (=> b!1326921 m!1216119))

(declare-fun m!1216121 () Bool)

(assert (=> b!1326921 m!1216121))

(assert (=> b!1326921 m!1216121))

(declare-fun m!1216123 () Bool)

(assert (=> b!1326921 m!1216123))

(assert (=> b!1326923 m!1216121))

(assert (=> b!1326923 m!1216121))

(assert (=> b!1326923 m!1216123))

(assert (=> b!1326783 d!143075))

(declare-fun bm!64791 () Bool)

(declare-fun call!64794 () ListLongMap!21371)

(declare-fun call!64799 () ListLongMap!21371)

(assert (=> bm!64791 (= call!64794 call!64799)))

(declare-fun b!1326924 () Bool)

(declare-fun e!756318 () Bool)

(declare-fun call!64798 () Bool)

(assert (=> b!1326924 (= e!756318 (not call!64798))))

(declare-fun bm!64792 () Bool)

(declare-fun lt!590469 () ListLongMap!21371)

(assert (=> bm!64792 (= call!64798 (contains!8796 lt!590469 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1326926 () Bool)

(declare-fun e!756323 () Bool)

(assert (=> b!1326926 (= e!756323 e!756318)))

(declare-fun c!125782 () Bool)

(assert (=> b!1326926 (= c!125782 (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1326927 () Bool)

(declare-fun e!756315 () ListLongMap!21371)

(declare-fun call!64795 () ListLongMap!21371)

(assert (=> b!1326927 (= e!756315 (+!4616 call!64795 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))

(declare-fun b!1326928 () Bool)

(declare-fun e!756316 () Bool)

(assert (=> b!1326928 (= e!756316 (validKeyInArray!0 (select (arr!43259 _keys!1609) from!2000)))))

(declare-fun b!1326929 () Bool)

(declare-fun res!880706 () Bool)

(assert (=> b!1326929 (=> (not res!880706) (not e!756323))))

(declare-fun e!756312 () Bool)

(assert (=> b!1326929 (= res!880706 e!756312)))

(declare-fun res!880710 () Bool)

(assert (=> b!1326929 (=> res!880710 e!756312)))

(declare-fun e!756314 () Bool)

(assert (=> b!1326929 (= res!880710 (not e!756314))))

(declare-fun res!880703 () Bool)

(assert (=> b!1326929 (=> (not res!880703) (not e!756314))))

(assert (=> b!1326929 (= res!880703 (bvslt from!2000 (size!43810 _keys!1609)))))

(declare-fun b!1326930 () Bool)

(declare-fun e!756317 () ListLongMap!21371)

(declare-fun call!64796 () ListLongMap!21371)

(assert (=> b!1326930 (= e!756317 call!64796)))

(declare-fun b!1326931 () Bool)

(declare-fun e!756321 () Bool)

(assert (=> b!1326931 (= e!756321 (= (apply!1066 lt!590469 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1279))))

(declare-fun b!1326932 () Bool)

(declare-fun e!756313 () Bool)

(assert (=> b!1326932 (= e!756313 (= (apply!1066 lt!590469 (select (arr!43259 _keys!1609) from!2000)) (get!21847 (select (arr!43260 _values!1337) from!2000) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1326932 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43811 _values!1337)))))

(assert (=> b!1326932 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43810 _keys!1609)))))

(declare-fun b!1326933 () Bool)

(declare-fun res!880711 () Bool)

(assert (=> b!1326933 (=> (not res!880711) (not e!756323))))

(declare-fun e!756319 () Bool)

(assert (=> b!1326933 (= res!880711 e!756319)))

(declare-fun c!125784 () Bool)

(assert (=> b!1326933 (= c!125784 (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!64793 () Bool)

(assert (=> bm!64793 (= call!64799 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun bm!64794 () Bool)

(assert (=> bm!64794 (= call!64796 call!64795)))

(declare-fun b!1326934 () Bool)

(assert (=> b!1326934 (= e!756318 e!756321)))

(declare-fun res!880707 () Bool)

(assert (=> b!1326934 (= res!880707 call!64798)))

(assert (=> b!1326934 (=> (not res!880707) (not e!756321))))

(declare-fun b!1326935 () Bool)

(declare-fun call!64800 () ListLongMap!21371)

(assert (=> b!1326935 (= e!756317 call!64800)))

(declare-fun b!1326936 () Bool)

(declare-fun e!756322 () ListLongMap!21371)

(assert (=> b!1326936 (= e!756322 call!64796)))

(declare-fun b!1326937 () Bool)

(assert (=> b!1326937 (= e!756312 e!756313)))

(declare-fun res!880709 () Bool)

(assert (=> b!1326937 (=> (not res!880709) (not e!756313))))

(assert (=> b!1326937 (= res!880709 (contains!8796 lt!590469 (select (arr!43259 _keys!1609) from!2000)))))

(assert (=> b!1326937 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43810 _keys!1609)))))

(declare-fun b!1326938 () Bool)

(assert (=> b!1326938 (= e!756314 (validKeyInArray!0 (select (arr!43259 _keys!1609) from!2000)))))

(declare-fun b!1326939 () Bool)

(declare-fun e!756311 () Unit!43647)

(declare-fun lt!590463 () Unit!43647)

(assert (=> b!1326939 (= e!756311 lt!590463)))

(declare-fun lt!590461 () ListLongMap!21371)

(assert (=> b!1326939 (= lt!590461 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun lt!590456 () (_ BitVec 64))

(assert (=> b!1326939 (= lt!590456 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590470 () (_ BitVec 64))

(assert (=> b!1326939 (= lt!590470 (select (arr!43259 _keys!1609) from!2000))))

(declare-fun lt!590457 () Unit!43647)

(assert (=> b!1326939 (= lt!590457 (addStillContains!1173 lt!590461 lt!590456 zeroValue!1279 lt!590470))))

(assert (=> b!1326939 (contains!8796 (+!4616 lt!590461 (tuple2!23703 lt!590456 zeroValue!1279)) lt!590470)))

(declare-fun lt!590476 () Unit!43647)

(assert (=> b!1326939 (= lt!590476 lt!590457)))

(declare-fun lt!590460 () ListLongMap!21371)

(assert (=> b!1326939 (= lt!590460 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun lt!590466 () (_ BitVec 64))

(assert (=> b!1326939 (= lt!590466 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590465 () (_ BitVec 64))

(assert (=> b!1326939 (= lt!590465 (select (arr!43259 _keys!1609) from!2000))))

(declare-fun lt!590472 () Unit!43647)

(assert (=> b!1326939 (= lt!590472 (addApplyDifferent!569 lt!590460 lt!590466 minValue!1279 lt!590465))))

(assert (=> b!1326939 (= (apply!1066 (+!4616 lt!590460 (tuple2!23703 lt!590466 minValue!1279)) lt!590465) (apply!1066 lt!590460 lt!590465))))

(declare-fun lt!590467 () Unit!43647)

(assert (=> b!1326939 (= lt!590467 lt!590472)))

(declare-fun lt!590474 () ListLongMap!21371)

(assert (=> b!1326939 (= lt!590474 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun lt!590471 () (_ BitVec 64))

(assert (=> b!1326939 (= lt!590471 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590455 () (_ BitVec 64))

(assert (=> b!1326939 (= lt!590455 (select (arr!43259 _keys!1609) from!2000))))

(declare-fun lt!590468 () Unit!43647)

(assert (=> b!1326939 (= lt!590468 (addApplyDifferent!569 lt!590474 lt!590471 zeroValue!1279 lt!590455))))

(assert (=> b!1326939 (= (apply!1066 (+!4616 lt!590474 (tuple2!23703 lt!590471 zeroValue!1279)) lt!590455) (apply!1066 lt!590474 lt!590455))))

(declare-fun lt!590458 () Unit!43647)

(assert (=> b!1326939 (= lt!590458 lt!590468)))

(declare-fun lt!590473 () ListLongMap!21371)

(assert (=> b!1326939 (= lt!590473 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun lt!590464 () (_ BitVec 64))

(assert (=> b!1326939 (= lt!590464 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590475 () (_ BitVec 64))

(assert (=> b!1326939 (= lt!590475 (select (arr!43259 _keys!1609) from!2000))))

(assert (=> b!1326939 (= lt!590463 (addApplyDifferent!569 lt!590473 lt!590464 minValue!1279 lt!590475))))

(assert (=> b!1326939 (= (apply!1066 (+!4616 lt!590473 (tuple2!23703 lt!590464 minValue!1279)) lt!590475) (apply!1066 lt!590473 lt!590475))))

(declare-fun b!1326940 () Bool)

(declare-fun e!756320 () Bool)

(assert (=> b!1326940 (= e!756319 e!756320)))

(declare-fun res!880708 () Bool)

(declare-fun call!64797 () Bool)

(assert (=> b!1326940 (= res!880708 call!64797)))

(assert (=> b!1326940 (=> (not res!880708) (not e!756320))))

(declare-fun b!1326941 () Bool)

(assert (=> b!1326941 (= e!756315 e!756322)))

(declare-fun c!125781 () Bool)

(assert (=> b!1326941 (= c!125781 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!143077 () Bool)

(assert (=> d!143077 e!756323))

(declare-fun res!880704 () Bool)

(assert (=> d!143077 (=> (not res!880704) (not e!756323))))

(assert (=> d!143077 (= res!880704 (or (bvsge from!2000 (size!43810 _keys!1609)) (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43810 _keys!1609)))))))

(declare-fun lt!590462 () ListLongMap!21371)

(assert (=> d!143077 (= lt!590469 lt!590462)))

(declare-fun lt!590459 () Unit!43647)

(assert (=> d!143077 (= lt!590459 e!756311)))

(declare-fun c!125779 () Bool)

(assert (=> d!143077 (= c!125779 e!756316)))

(declare-fun res!880705 () Bool)

(assert (=> d!143077 (=> (not res!880705) (not e!756316))))

(assert (=> d!143077 (= res!880705 (bvslt from!2000 (size!43810 _keys!1609)))))

(assert (=> d!143077 (= lt!590462 e!756315)))

(declare-fun c!125780 () Bool)

(assert (=> d!143077 (= c!125780 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!143077 (validMask!0 mask!2019)))

(assert (=> d!143077 (= (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) lt!590469)))

(declare-fun b!1326925 () Bool)

(declare-fun c!125783 () Bool)

(assert (=> b!1326925 (= c!125783 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1326925 (= e!756322 e!756317)))

(declare-fun b!1326942 () Bool)

(assert (=> b!1326942 (= e!756319 (not call!64797))))

(declare-fun bm!64795 () Bool)

(assert (=> bm!64795 (= call!64797 (contains!8796 lt!590469 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64796 () Bool)

(assert (=> bm!64796 (= call!64795 (+!4616 (ite c!125780 call!64799 (ite c!125781 call!64794 call!64800)) (ite (or c!125780 c!125781) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun b!1326943 () Bool)

(declare-fun Unit!43652 () Unit!43647)

(assert (=> b!1326943 (= e!756311 Unit!43652)))

(declare-fun bm!64797 () Bool)

(assert (=> bm!64797 (= call!64800 call!64794)))

(declare-fun b!1326944 () Bool)

(assert (=> b!1326944 (= e!756320 (= (apply!1066 lt!590469 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1279))))

(assert (= (and d!143077 c!125780) b!1326927))

(assert (= (and d!143077 (not c!125780)) b!1326941))

(assert (= (and b!1326941 c!125781) b!1326936))

(assert (= (and b!1326941 (not c!125781)) b!1326925))

(assert (= (and b!1326925 c!125783) b!1326930))

(assert (= (and b!1326925 (not c!125783)) b!1326935))

(assert (= (or b!1326930 b!1326935) bm!64797))

(assert (= (or b!1326936 bm!64797) bm!64791))

(assert (= (or b!1326936 b!1326930) bm!64794))

(assert (= (or b!1326927 bm!64791) bm!64793))

(assert (= (or b!1326927 bm!64794) bm!64796))

(assert (= (and d!143077 res!880705) b!1326928))

(assert (= (and d!143077 c!125779) b!1326939))

(assert (= (and d!143077 (not c!125779)) b!1326943))

(assert (= (and d!143077 res!880704) b!1326929))

(assert (= (and b!1326929 res!880703) b!1326938))

(assert (= (and b!1326929 (not res!880710)) b!1326937))

(assert (= (and b!1326937 res!880709) b!1326932))

(assert (= (and b!1326929 res!880706) b!1326933))

(assert (= (and b!1326933 c!125784) b!1326940))

(assert (= (and b!1326933 (not c!125784)) b!1326942))

(assert (= (and b!1326940 res!880708) b!1326944))

(assert (= (or b!1326940 b!1326942) bm!64795))

(assert (= (and b!1326933 res!880711) b!1326926))

(assert (= (and b!1326926 c!125782) b!1326934))

(assert (= (and b!1326926 (not c!125782)) b!1326924))

(assert (= (and b!1326934 res!880707) b!1326931))

(assert (= (or b!1326934 b!1326924) bm!64792))

(declare-fun b_lambda!23843 () Bool)

(assert (=> (not b_lambda!23843) (not b!1326932)))

(assert (=> b!1326932 t!44882))

(declare-fun b_and!49191 () Bool)

(assert (= b_and!49189 (and (=> t!44882 result!24685) b_and!49191)))

(declare-fun m!1216125 () Bool)

(assert (=> bm!64796 m!1216125))

(declare-fun m!1216127 () Bool)

(assert (=> b!1326931 m!1216127))

(declare-fun m!1216129 () Bool)

(assert (=> bm!64792 m!1216129))

(assert (=> b!1326937 m!1215993))

(assert (=> b!1326937 m!1215993))

(declare-fun m!1216131 () Bool)

(assert (=> b!1326937 m!1216131))

(declare-fun m!1216133 () Bool)

(assert (=> b!1326939 m!1216133))

(declare-fun m!1216135 () Bool)

(assert (=> b!1326939 m!1216135))

(declare-fun m!1216137 () Bool)

(assert (=> b!1326939 m!1216137))

(declare-fun m!1216139 () Bool)

(assert (=> b!1326939 m!1216139))

(declare-fun m!1216141 () Bool)

(assert (=> b!1326939 m!1216141))

(declare-fun m!1216143 () Bool)

(assert (=> b!1326939 m!1216143))

(declare-fun m!1216145 () Bool)

(assert (=> b!1326939 m!1216145))

(declare-fun m!1216147 () Bool)

(assert (=> b!1326939 m!1216147))

(declare-fun m!1216149 () Bool)

(assert (=> b!1326939 m!1216149))

(assert (=> b!1326939 m!1216135))

(declare-fun m!1216151 () Bool)

(assert (=> b!1326939 m!1216151))

(declare-fun m!1216153 () Bool)

(assert (=> b!1326939 m!1216153))

(assert (=> b!1326939 m!1216139))

(assert (=> b!1326939 m!1215993))

(assert (=> b!1326939 m!1216145))

(declare-fun m!1216155 () Bool)

(assert (=> b!1326939 m!1216155))

(declare-fun m!1216157 () Bool)

(assert (=> b!1326939 m!1216157))

(declare-fun m!1216159 () Bool)

(assert (=> b!1326939 m!1216159))

(declare-fun m!1216161 () Bool)

(assert (=> b!1326939 m!1216161))

(assert (=> b!1326939 m!1216151))

(declare-fun m!1216163 () Bool)

(assert (=> b!1326939 m!1216163))

(declare-fun m!1216165 () Bool)

(assert (=> b!1326927 m!1216165))

(assert (=> b!1326938 m!1215993))

(assert (=> b!1326938 m!1215993))

(assert (=> b!1326938 m!1215995))

(declare-fun m!1216167 () Bool)

(assert (=> b!1326932 m!1216167))

(assert (=> b!1326932 m!1216091))

(declare-fun m!1216169 () Bool)

(assert (=> b!1326932 m!1216169))

(assert (=> b!1326932 m!1216091))

(assert (=> b!1326932 m!1215993))

(assert (=> b!1326932 m!1216167))

(assert (=> b!1326932 m!1215993))

(declare-fun m!1216171 () Bool)

(assert (=> b!1326932 m!1216171))

(assert (=> d!143077 m!1215997))

(assert (=> b!1326928 m!1215993))

(assert (=> b!1326928 m!1215993))

(assert (=> b!1326928 m!1215995))

(assert (=> bm!64793 m!1216161))

(declare-fun m!1216173 () Bool)

(assert (=> b!1326944 m!1216173))

(declare-fun m!1216175 () Bool)

(assert (=> bm!64795 m!1216175))

(assert (=> b!1326783 d!143077))

(declare-fun b!1326952 () Bool)

(declare-fun e!756329 () Bool)

(assert (=> b!1326952 (= e!756329 tp_is_empty!36357)))

(declare-fun mapIsEmpty!56196 () Bool)

(declare-fun mapRes!56196 () Bool)

(assert (=> mapIsEmpty!56196 mapRes!56196))

(declare-fun condMapEmpty!56196 () Bool)

(declare-fun mapDefault!56196 () ValueCell!17280)

(assert (=> mapNonEmpty!56190 (= condMapEmpty!56196 (= mapRest!56190 ((as const (Array (_ BitVec 32) ValueCell!17280)) mapDefault!56196)))))

(assert (=> mapNonEmpty!56190 (= tp!107095 (and e!756329 mapRes!56196))))

(declare-fun mapNonEmpty!56196 () Bool)

(declare-fun tp!107104 () Bool)

(declare-fun e!756328 () Bool)

(assert (=> mapNonEmpty!56196 (= mapRes!56196 (and tp!107104 e!756328))))

(declare-fun mapRest!56196 () (Array (_ BitVec 32) ValueCell!17280))

(declare-fun mapValue!56196 () ValueCell!17280)

(declare-fun mapKey!56196 () (_ BitVec 32))

(assert (=> mapNonEmpty!56196 (= mapRest!56190 (store mapRest!56196 mapKey!56196 mapValue!56196))))

(declare-fun b!1326951 () Bool)

(assert (=> b!1326951 (= e!756328 tp_is_empty!36357)))

(assert (= (and mapNonEmpty!56190 condMapEmpty!56196) mapIsEmpty!56196))

(assert (= (and mapNonEmpty!56190 (not condMapEmpty!56196)) mapNonEmpty!56196))

(assert (= (and mapNonEmpty!56196 ((_ is ValueCellFull!17280) mapValue!56196)) b!1326951))

(assert (= (and mapNonEmpty!56190 ((_ is ValueCellFull!17280) mapDefault!56196)) b!1326952))

(declare-fun m!1216177 () Bool)

(assert (=> mapNonEmpty!56196 m!1216177))

(declare-fun b_lambda!23845 () Bool)

(assert (= b_lambda!23841 (or (and start!112000 b_free!30537) b_lambda!23845)))

(declare-fun b_lambda!23847 () Bool)

(assert (= b_lambda!23843 (or (and start!112000 b_free!30537) b_lambda!23847)))

(check-sat (not b!1326939) (not bm!64782) (not b!1326921) (not bm!64793) (not b!1326937) (not bm!64779) (not b!1326826) b_and!49191 (not d!143059) (not b_lambda!23847) (not b!1326885) (not bm!64783) (not bm!64787) (not b!1326874) (not bm!64780) (not b!1326891) (not b!1326917) (not b_next!30537) (not d!143075) (not b!1326944) (not b!1326908) (not b!1326928) (not b!1326878) (not d!143077) (not bm!64795) (not b!1326932) (not bm!64790) (not bm!64796) (not bm!64792) (not b!1326938) (not mapNonEmpty!56196) (not b!1326923) (not b!1326905) (not b!1326886) (not b!1326828) (not b!1326879) (not b!1326875) (not b!1326918) (not d!143061) (not b!1326927) (not b!1326906) (not b!1326931) (not b!1326884) tp_is_empty!36357 (not b_lambda!23845))
(check-sat b_and!49191 (not b_next!30537))
(get-model)

(declare-fun d!143079 () Bool)

(declare-fun e!756347 () Bool)

(assert (=> d!143079 e!756347))

(declare-fun res!880722 () Bool)

(assert (=> d!143079 (=> (not res!880722) (not e!756347))))

(declare-fun lt!590496 () ListLongMap!21371)

(assert (=> d!143079 (= res!880722 (not (contains!8796 lt!590496 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!756348 () ListLongMap!21371)

(assert (=> d!143079 (= lt!590496 e!756348)))

(declare-fun c!125794 () Bool)

(assert (=> d!143079 (= c!125794 (bvsge (bvadd #b00000000000000000000000000000001 from!2000) (size!43810 _keys!1609)))))

(assert (=> d!143079 (validMask!0 mask!2019)))

(assert (=> d!143079 (= (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) lt!590496)))

(declare-fun b!1326977 () Bool)

(declare-fun e!756346 () Bool)

(declare-fun e!756345 () Bool)

(assert (=> b!1326977 (= e!756346 e!756345)))

(assert (=> b!1326977 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43810 _keys!1609)))))

(declare-fun res!880723 () Bool)

(assert (=> b!1326977 (= res!880723 (contains!8796 lt!590496 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (=> b!1326977 (=> (not res!880723) (not e!756345))))

(declare-fun bm!64800 () Bool)

(declare-fun call!64803 () ListLongMap!21371)

(assert (=> bm!64800 (= call!64803 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) defaultEntry!1340))))

(declare-fun b!1326978 () Bool)

(assert (=> b!1326978 (= e!756347 e!756346)))

(declare-fun c!125796 () Bool)

(declare-fun e!756350 () Bool)

(assert (=> b!1326978 (= c!125796 e!756350)))

(declare-fun res!880721 () Bool)

(assert (=> b!1326978 (=> (not res!880721) (not e!756350))))

(assert (=> b!1326978 (= res!880721 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43810 _keys!1609)))))

(declare-fun b!1326979 () Bool)

(declare-fun e!756349 () Bool)

(assert (=> b!1326979 (= e!756346 e!756349)))

(declare-fun c!125795 () Bool)

(assert (=> b!1326979 (= c!125795 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43810 _keys!1609)))))

(declare-fun b!1326980 () Bool)

(declare-fun e!756344 () ListLongMap!21371)

(assert (=> b!1326980 (= e!756344 call!64803)))

(declare-fun b!1326981 () Bool)

(assert (=> b!1326981 (= e!756348 (ListLongMap!21372 Nil!30863))))

(declare-fun b!1326982 () Bool)

(declare-fun lt!590495 () Unit!43647)

(declare-fun lt!590493 () Unit!43647)

(assert (=> b!1326982 (= lt!590495 lt!590493)))

(declare-fun lt!590492 () (_ BitVec 64))

(declare-fun lt!590491 () ListLongMap!21371)

(declare-fun lt!590494 () (_ BitVec 64))

(declare-fun lt!590497 () V!53579)

(assert (=> b!1326982 (not (contains!8796 (+!4616 lt!590491 (tuple2!23703 lt!590494 lt!590497)) lt!590492))))

(declare-fun addStillNotContains!504 (ListLongMap!21371 (_ BitVec 64) V!53579 (_ BitVec 64)) Unit!43647)

(assert (=> b!1326982 (= lt!590493 (addStillNotContains!504 lt!590491 lt!590494 lt!590497 lt!590492))))

(assert (=> b!1326982 (= lt!590492 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1326982 (= lt!590497 (get!21847 (select (arr!43260 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1326982 (= lt!590494 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))

(assert (=> b!1326982 (= lt!590491 call!64803)))

(assert (=> b!1326982 (= e!756344 (+!4616 call!64803 (tuple2!23703 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21847 (select (arr!43260 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1326983 () Bool)

(assert (=> b!1326983 (= e!756349 (= lt!590496 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) defaultEntry!1340)))))

(declare-fun b!1326984 () Bool)

(assert (=> b!1326984 (= e!756350 (validKeyInArray!0 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (=> b!1326984 (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000)))

(declare-fun b!1326985 () Bool)

(declare-fun isEmpty!1082 (ListLongMap!21371) Bool)

(assert (=> b!1326985 (= e!756349 (isEmpty!1082 lt!590496))))

(declare-fun b!1326986 () Bool)

(assert (=> b!1326986 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43810 _keys!1609)))))

(assert (=> b!1326986 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43811 _values!1337)))))

(assert (=> b!1326986 (= e!756345 (= (apply!1066 lt!590496 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))) (get!21847 (select (arr!43260 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1326987 () Bool)

(declare-fun res!880720 () Bool)

(assert (=> b!1326987 (=> (not res!880720) (not e!756347))))

(assert (=> b!1326987 (= res!880720 (not (contains!8796 lt!590496 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1326988 () Bool)

(assert (=> b!1326988 (= e!756348 e!756344)))

(declare-fun c!125793 () Bool)

(assert (=> b!1326988 (= c!125793 (validKeyInArray!0 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (= (and d!143079 c!125794) b!1326981))

(assert (= (and d!143079 (not c!125794)) b!1326988))

(assert (= (and b!1326988 c!125793) b!1326982))

(assert (= (and b!1326988 (not c!125793)) b!1326980))

(assert (= (or b!1326982 b!1326980) bm!64800))

(assert (= (and d!143079 res!880722) b!1326987))

(assert (= (and b!1326987 res!880720) b!1326978))

(assert (= (and b!1326978 res!880721) b!1326984))

(assert (= (and b!1326978 c!125796) b!1326977))

(assert (= (and b!1326978 (not c!125796)) b!1326979))

(assert (= (and b!1326977 res!880723) b!1326986))

(assert (= (and b!1326979 c!125795) b!1326983))

(assert (= (and b!1326979 (not c!125795)) b!1326985))

(declare-fun b_lambda!23849 () Bool)

(assert (=> (not b_lambda!23849) (not b!1326982)))

(assert (=> b!1326982 t!44882))

(declare-fun b_and!49193 () Bool)

(assert (= b_and!49191 (and (=> t!44882 result!24685) b_and!49193)))

(declare-fun b_lambda!23851 () Bool)

(assert (=> (not b_lambda!23851) (not b!1326986)))

(assert (=> b!1326986 t!44882))

(declare-fun b_and!49195 () Bool)

(assert (= b_and!49193 (and (=> t!44882 result!24685) b_and!49195)))

(declare-fun m!1216179 () Bool)

(assert (=> b!1326987 m!1216179))

(assert (=> b!1326988 m!1216049))

(assert (=> b!1326988 m!1216049))

(assert (=> b!1326988 m!1216087))

(declare-fun m!1216181 () Bool)

(assert (=> b!1326983 m!1216181))

(assert (=> b!1326986 m!1216091))

(assert (=> b!1326986 m!1216089))

(assert (=> b!1326986 m!1216091))

(assert (=> b!1326986 m!1216093))

(assert (=> b!1326986 m!1216049))

(declare-fun m!1216183 () Bool)

(assert (=> b!1326986 m!1216183))

(assert (=> b!1326986 m!1216089))

(assert (=> b!1326986 m!1216049))

(declare-fun m!1216185 () Bool)

(assert (=> d!143079 m!1216185))

(assert (=> d!143079 m!1215997))

(assert (=> b!1326977 m!1216049))

(assert (=> b!1326977 m!1216049))

(declare-fun m!1216187 () Bool)

(assert (=> b!1326977 m!1216187))

(assert (=> b!1326984 m!1216049))

(assert (=> b!1326984 m!1216049))

(assert (=> b!1326984 m!1216087))

(assert (=> bm!64800 m!1216181))

(assert (=> b!1326982 m!1216089))

(assert (=> b!1326982 m!1216091))

(assert (=> b!1326982 m!1216093))

(assert (=> b!1326982 m!1216091))

(declare-fun m!1216189 () Bool)

(assert (=> b!1326982 m!1216189))

(declare-fun m!1216191 () Bool)

(assert (=> b!1326982 m!1216191))

(assert (=> b!1326982 m!1216089))

(assert (=> b!1326982 m!1216049))

(declare-fun m!1216193 () Bool)

(assert (=> b!1326982 m!1216193))

(assert (=> b!1326982 m!1216193))

(declare-fun m!1216195 () Bool)

(assert (=> b!1326982 m!1216195))

(declare-fun m!1216197 () Bool)

(assert (=> b!1326985 m!1216197))

(assert (=> bm!64780 d!143079))

(declare-fun d!143081 () Bool)

(declare-fun get!21848 (Option!767) V!53579)

(assert (=> d!143081 (= (apply!1066 lt!590469 (select (arr!43259 _keys!1609) from!2000)) (get!21848 (getValueByKey!716 (toList!10701 lt!590469) (select (arr!43259 _keys!1609) from!2000))))))

(declare-fun bs!37947 () Bool)

(assert (= bs!37947 d!143081))

(assert (=> bs!37947 m!1215993))

(declare-fun m!1216199 () Bool)

(assert (=> bs!37947 m!1216199))

(assert (=> bs!37947 m!1216199))

(declare-fun m!1216201 () Bool)

(assert (=> bs!37947 m!1216201))

(assert (=> b!1326932 d!143081))

(declare-fun d!143083 () Bool)

(declare-fun c!125799 () Bool)

(assert (=> d!143083 (= c!125799 ((_ is ValueCellFull!17280) (select (arr!43260 _values!1337) from!2000)))))

(declare-fun e!756353 () V!53579)

(assert (=> d!143083 (= (get!21847 (select (arr!43260 _values!1337) from!2000) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)) e!756353)))

(declare-fun b!1326993 () Bool)

(declare-fun get!21849 (ValueCell!17280 V!53579) V!53579)

(assert (=> b!1326993 (= e!756353 (get!21849 (select (arr!43260 _values!1337) from!2000) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1326994 () Bool)

(declare-fun get!21850 (ValueCell!17280 V!53579) V!53579)

(assert (=> b!1326994 (= e!756353 (get!21850 (select (arr!43260 _values!1337) from!2000) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143083 c!125799) b!1326993))

(assert (= (and d!143083 (not c!125799)) b!1326994))

(assert (=> b!1326993 m!1216167))

(assert (=> b!1326993 m!1216091))

(declare-fun m!1216203 () Bool)

(assert (=> b!1326993 m!1216203))

(assert (=> b!1326994 m!1216167))

(assert (=> b!1326994 m!1216091))

(declare-fun m!1216205 () Bool)

(assert (=> b!1326994 m!1216205))

(assert (=> b!1326932 d!143083))

(declare-fun d!143085 () Bool)

(assert (=> d!143085 (= (apply!1066 lt!590469 #b1000000000000000000000000000000000000000000000000000000000000000) (get!21848 (getValueByKey!716 (toList!10701 lt!590469) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37948 () Bool)

(assert (= bs!37948 d!143085))

(declare-fun m!1216207 () Bool)

(assert (=> bs!37948 m!1216207))

(assert (=> bs!37948 m!1216207))

(declare-fun m!1216209 () Bool)

(assert (=> bs!37948 m!1216209))

(assert (=> b!1326931 d!143085))

(declare-fun d!143087 () Bool)

(assert (=> d!143087 (= (apply!1066 lt!590434 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))) (get!21848 (getValueByKey!716 (toList!10701 lt!590434) (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))))

(declare-fun bs!37949 () Bool)

(assert (= bs!37949 d!143087))

(assert (=> bs!37949 m!1216049))

(declare-fun m!1216211 () Bool)

(assert (=> bs!37949 m!1216211))

(assert (=> bs!37949 m!1216211))

(declare-fun m!1216213 () Bool)

(assert (=> bs!37949 m!1216213))

(assert (=> b!1326879 d!143087))

(declare-fun d!143089 () Bool)

(declare-fun c!125800 () Bool)

(assert (=> d!143089 (= c!125800 ((_ is ValueCellFull!17280) (select (arr!43260 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000))))))

(declare-fun e!756354 () V!53579)

(assert (=> d!143089 (= (get!21847 (select (arr!43260 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)) e!756354)))

(declare-fun b!1326995 () Bool)

(assert (=> b!1326995 (= e!756354 (get!21849 (select (arr!43260 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1326996 () Bool)

(assert (=> b!1326996 (= e!756354 (get!21850 (select (arr!43260 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143089 c!125800) b!1326995))

(assert (= (and d!143089 (not c!125800)) b!1326996))

(assert (=> b!1326995 m!1216089))

(assert (=> b!1326995 m!1216091))

(declare-fun m!1216215 () Bool)

(assert (=> b!1326995 m!1216215))

(assert (=> b!1326996 m!1216089))

(assert (=> b!1326996 m!1216091))

(declare-fun m!1216217 () Bool)

(assert (=> b!1326996 m!1216217))

(assert (=> b!1326879 d!143089))

(declare-fun d!143091 () Bool)

(assert (=> d!143091 (= (apply!1066 lt!590434 #b1000000000000000000000000000000000000000000000000000000000000000) (get!21848 (getValueByKey!716 (toList!10701 lt!590434) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37950 () Bool)

(assert (= bs!37950 d!143091))

(declare-fun m!1216219 () Bool)

(assert (=> bs!37950 m!1216219))

(assert (=> bs!37950 m!1216219))

(declare-fun m!1216221 () Bool)

(assert (=> bs!37950 m!1216221))

(assert (=> b!1326878 d!143091))

(declare-fun d!143093 () Bool)

(declare-fun res!880728 () Bool)

(declare-fun e!756359 () Bool)

(assert (=> d!143093 (=> res!880728 e!756359)))

(assert (=> d!143093 (= res!880728 (and ((_ is Cons!30862) (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))) (= (_1!11861 (h!32071 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)))) k0!1164)))))

(assert (=> d!143093 (= (containsKey!734 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164) e!756359)))

(declare-fun b!1327001 () Bool)

(declare-fun e!756360 () Bool)

(assert (=> b!1327001 (= e!756359 e!756360)))

(declare-fun res!880729 () Bool)

(assert (=> b!1327001 (=> (not res!880729) (not e!756360))))

(assert (=> b!1327001 (= res!880729 (and (or (not ((_ is Cons!30862) (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)))) (bvsle (_1!11861 (h!32071 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)))) k0!1164)) ((_ is Cons!30862) (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))) (bvslt (_1!11861 (h!32071 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)))) k0!1164)))))

(declare-fun b!1327002 () Bool)

(assert (=> b!1327002 (= e!756360 (containsKey!734 (t!44877 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))) k0!1164))))

(assert (= (and d!143093 (not res!880728)) b!1327001))

(assert (= (and b!1327001 res!880729) b!1327002))

(declare-fun m!1216223 () Bool)

(assert (=> b!1327002 m!1216223))

(assert (=> d!143075 d!143093))

(declare-fun d!143095 () Bool)

(assert (=> d!143095 (= (apply!1066 lt!590469 #b0000000000000000000000000000000000000000000000000000000000000000) (get!21848 (getValueByKey!716 (toList!10701 lt!590469) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37951 () Bool)

(assert (= bs!37951 d!143095))

(declare-fun m!1216225 () Bool)

(assert (=> bs!37951 m!1216225))

(assert (=> bs!37951 m!1216225))

(declare-fun m!1216227 () Bool)

(assert (=> bs!37951 m!1216227))

(assert (=> b!1326944 d!143095))

(declare-fun d!143097 () Bool)

(declare-fun isEmpty!1083 (Option!767) Bool)

(assert (=> d!143097 (= (isDefined!519 (getValueByKey!716 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164)) (not (isEmpty!1083 (getValueByKey!716 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164))))))

(declare-fun bs!37952 () Bool)

(assert (= bs!37952 d!143097))

(assert (=> bs!37952 m!1216039))

(declare-fun m!1216229 () Bool)

(assert (=> bs!37952 m!1216229))

(assert (=> b!1326828 d!143097))

(declare-fun b!1327013 () Bool)

(declare-fun e!756366 () Option!767)

(assert (=> b!1327013 (= e!756366 (getValueByKey!716 (t!44877 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))) k0!1164))))

(declare-fun b!1327014 () Bool)

(assert (=> b!1327014 (= e!756366 None!765)))

(declare-fun b!1327012 () Bool)

(declare-fun e!756365 () Option!767)

(assert (=> b!1327012 (= e!756365 e!756366)))

(declare-fun c!125806 () Bool)

(assert (=> b!1327012 (= c!125806 (and ((_ is Cons!30862) (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))) (not (= (_1!11861 (h!32071 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)))) k0!1164))))))

(declare-fun c!125805 () Bool)

(declare-fun d!143099 () Bool)

(assert (=> d!143099 (= c!125805 (and ((_ is Cons!30862) (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))) (= (_1!11861 (h!32071 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)))) k0!1164)))))

(assert (=> d!143099 (= (getValueByKey!716 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164) e!756365)))

(declare-fun b!1327011 () Bool)

(assert (=> b!1327011 (= e!756365 (Some!766 (_2!11861 (h!32071 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))))))

(assert (= (and d!143099 c!125805) b!1327011))

(assert (= (and d!143099 (not c!125805)) b!1327012))

(assert (= (and b!1327012 c!125806) b!1327013))

(assert (= (and b!1327012 (not c!125806)) b!1327014))

(declare-fun m!1216231 () Bool)

(assert (=> b!1327013 m!1216231))

(assert (=> b!1326828 d!143099))

(assert (=> d!143077 d!143069))

(assert (=> b!1326928 d!143067))

(declare-fun d!143101 () Bool)

(declare-fun e!756369 () Bool)

(assert (=> d!143101 e!756369))

(declare-fun res!880734 () Bool)

(assert (=> d!143101 (=> (not res!880734) (not e!756369))))

(declare-fun lt!590509 () ListLongMap!21371)

(assert (=> d!143101 (= res!880734 (contains!8796 lt!590509 (_1!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun lt!590507 () List!30866)

(assert (=> d!143101 (= lt!590509 (ListLongMap!21372 lt!590507))))

(declare-fun lt!590506 () Unit!43647)

(declare-fun lt!590508 () Unit!43647)

(assert (=> d!143101 (= lt!590506 lt!590508)))

(assert (=> d!143101 (= (getValueByKey!716 lt!590507 (_1!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (Some!766 (_2!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun lemmaContainsTupThenGetReturnValue!359 (List!30866 (_ BitVec 64) V!53579) Unit!43647)

(assert (=> d!143101 (= lt!590508 (lemmaContainsTupThenGetReturnValue!359 lt!590507 (_1!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun insertStrictlySorted!488 (List!30866 (_ BitVec 64) V!53579) List!30866)

(assert (=> d!143101 (= lt!590507 (insertStrictlySorted!488 (toList!10701 call!64795) (_1!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!143101 (= (+!4616 call!64795 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) lt!590509)))

(declare-fun b!1327019 () Bool)

(declare-fun res!880735 () Bool)

(assert (=> b!1327019 (=> (not res!880735) (not e!756369))))

(assert (=> b!1327019 (= res!880735 (= (getValueByKey!716 (toList!10701 lt!590509) (_1!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (Some!766 (_2!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(declare-fun b!1327020 () Bool)

(declare-fun contains!8799 (List!30866 tuple2!23702) Bool)

(assert (=> b!1327020 (= e!756369 (contains!8799 (toList!10701 lt!590509) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))

(assert (= (and d!143101 res!880734) b!1327019))

(assert (= (and b!1327019 res!880735) b!1327020))

(declare-fun m!1216233 () Bool)

(assert (=> d!143101 m!1216233))

(declare-fun m!1216235 () Bool)

(assert (=> d!143101 m!1216235))

(declare-fun m!1216237 () Bool)

(assert (=> d!143101 m!1216237))

(declare-fun m!1216239 () Bool)

(assert (=> d!143101 m!1216239))

(declare-fun m!1216241 () Bool)

(assert (=> b!1327019 m!1216241))

(declare-fun m!1216243 () Bool)

(assert (=> b!1327020 m!1216243))

(assert (=> b!1326927 d!143101))

(declare-fun d!143103 () Bool)

(assert (=> d!143103 (= (apply!1066 lt!590434 #b0000000000000000000000000000000000000000000000000000000000000000) (get!21848 (getValueByKey!716 (toList!10701 lt!590434) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37953 () Bool)

(assert (= bs!37953 d!143103))

(declare-fun m!1216245 () Bool)

(assert (=> bs!37953 m!1216245))

(assert (=> bs!37953 m!1216245))

(declare-fun m!1216247 () Bool)

(assert (=> bs!37953 m!1216247))

(assert (=> b!1326891 d!143103))

(declare-fun d!143105 () Bool)

(assert (=> d!143105 (isDefined!519 (getValueByKey!716 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164))))

(declare-fun lt!590512 () Unit!43647)

(declare-fun choose!1961 (List!30866 (_ BitVec 64)) Unit!43647)

(assert (=> d!143105 (= lt!590512 (choose!1961 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164))))

(declare-fun e!756372 () Bool)

(assert (=> d!143105 e!756372))

(declare-fun res!880738 () Bool)

(assert (=> d!143105 (=> (not res!880738) (not e!756372))))

(declare-fun isStrictlySorted!874 (List!30866) Bool)

(assert (=> d!143105 (= res!880738 (isStrictlySorted!874 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))))

(assert (=> d!143105 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164) lt!590512)))

(declare-fun b!1327023 () Bool)

(assert (=> b!1327023 (= e!756372 (containsKey!734 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164))))

(assert (= (and d!143105 res!880738) b!1327023))

(assert (=> d!143105 m!1216039))

(assert (=> d!143105 m!1216039))

(assert (=> d!143105 m!1216041))

(declare-fun m!1216249 () Bool)

(assert (=> d!143105 m!1216249))

(declare-fun m!1216251 () Bool)

(assert (=> d!143105 m!1216251))

(assert (=> b!1327023 m!1216035))

(assert (=> b!1326826 d!143105))

(assert (=> b!1326826 d!143097))

(assert (=> b!1326826 d!143099))

(declare-fun d!143107 () Bool)

(assert (=> d!143107 (= (validKeyInArray!0 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))) (and (not (= (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1326875 d!143107))

(declare-fun d!143109 () Bool)

(declare-fun e!756373 () Bool)

(assert (=> d!143109 e!756373))

(declare-fun res!880739 () Bool)

(assert (=> d!143109 (=> (not res!880739) (not e!756373))))

(declare-fun lt!590516 () ListLongMap!21371)

(assert (=> d!143109 (= res!880739 (contains!8796 lt!590516 (_1!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun lt!590514 () List!30866)

(assert (=> d!143109 (= lt!590516 (ListLongMap!21372 lt!590514))))

(declare-fun lt!590513 () Unit!43647)

(declare-fun lt!590515 () Unit!43647)

(assert (=> d!143109 (= lt!590513 lt!590515)))

(assert (=> d!143109 (= (getValueByKey!716 lt!590514 (_1!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (Some!766 (_2!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!143109 (= lt!590515 (lemmaContainsTupThenGetReturnValue!359 lt!590514 (_1!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!143109 (= lt!590514 (insertStrictlySorted!488 (toList!10701 call!64782) (_1!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!143109 (= (+!4616 call!64782 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) lt!590516)))

(declare-fun b!1327024 () Bool)

(declare-fun res!880740 () Bool)

(assert (=> b!1327024 (=> (not res!880740) (not e!756373))))

(assert (=> b!1327024 (= res!880740 (= (getValueByKey!716 (toList!10701 lt!590516) (_1!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (Some!766 (_2!11861 (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(declare-fun b!1327025 () Bool)

(assert (=> b!1327025 (= e!756373 (contains!8799 (toList!10701 lt!590516) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))

(assert (= (and d!143109 res!880739) b!1327024))

(assert (= (and b!1327024 res!880740) b!1327025))

(declare-fun m!1216253 () Bool)

(assert (=> d!143109 m!1216253))

(declare-fun m!1216255 () Bool)

(assert (=> d!143109 m!1216255))

(declare-fun m!1216257 () Bool)

(assert (=> d!143109 m!1216257))

(declare-fun m!1216259 () Bool)

(assert (=> d!143109 m!1216259))

(declare-fun m!1216261 () Bool)

(assert (=> b!1327024 m!1216261))

(declare-fun m!1216263 () Bool)

(assert (=> b!1327025 m!1216263))

(assert (=> b!1326874 d!143109))

(declare-fun d!143111 () Bool)

(declare-fun e!756374 () Bool)

(assert (=> d!143111 e!756374))

(declare-fun res!880741 () Bool)

(assert (=> d!143111 (=> (not res!880741) (not e!756374))))

(declare-fun lt!590520 () ListLongMap!21371)

(assert (=> d!143111 (= res!880741 (contains!8796 lt!590520 (_1!11861 (ite (or c!125780 c!125781) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(declare-fun lt!590518 () List!30866)

(assert (=> d!143111 (= lt!590520 (ListLongMap!21372 lt!590518))))

(declare-fun lt!590517 () Unit!43647)

(declare-fun lt!590519 () Unit!43647)

(assert (=> d!143111 (= lt!590517 lt!590519)))

(assert (=> d!143111 (= (getValueByKey!716 lt!590518 (_1!11861 (ite (or c!125780 c!125781) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))) (Some!766 (_2!11861 (ite (or c!125780 c!125781) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (=> d!143111 (= lt!590519 (lemmaContainsTupThenGetReturnValue!359 lt!590518 (_1!11861 (ite (or c!125780 c!125781) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (_2!11861 (ite (or c!125780 c!125781) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (=> d!143111 (= lt!590518 (insertStrictlySorted!488 (toList!10701 (ite c!125780 call!64799 (ite c!125781 call!64794 call!64800))) (_1!11861 (ite (or c!125780 c!125781) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (_2!11861 (ite (or c!125780 c!125781) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (=> d!143111 (= (+!4616 (ite c!125780 call!64799 (ite c!125781 call!64794 call!64800)) (ite (or c!125780 c!125781) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) lt!590520)))

(declare-fun b!1327026 () Bool)

(declare-fun res!880742 () Bool)

(assert (=> b!1327026 (=> (not res!880742) (not e!756374))))

(assert (=> b!1327026 (= res!880742 (= (getValueByKey!716 (toList!10701 lt!590520) (_1!11861 (ite (or c!125780 c!125781) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))) (Some!766 (_2!11861 (ite (or c!125780 c!125781) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))))

(declare-fun b!1327027 () Bool)

(assert (=> b!1327027 (= e!756374 (contains!8799 (toList!10701 lt!590520) (ite (or c!125780 c!125781) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (= (and d!143111 res!880741) b!1327026))

(assert (= (and b!1327026 res!880742) b!1327027))

(declare-fun m!1216265 () Bool)

(assert (=> d!143111 m!1216265))

(declare-fun m!1216267 () Bool)

(assert (=> d!143111 m!1216267))

(declare-fun m!1216269 () Bool)

(assert (=> d!143111 m!1216269))

(declare-fun m!1216271 () Bool)

(assert (=> d!143111 m!1216271))

(declare-fun m!1216273 () Bool)

(assert (=> b!1327026 m!1216273))

(declare-fun m!1216275 () Bool)

(assert (=> b!1327027 m!1216275))

(assert (=> bm!64796 d!143111))

(declare-fun d!143113 () Bool)

(assert (=> d!143113 (= (validKeyInArray!0 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000)) (and (not (= (select (arr!43259 _keys!1609) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43259 _keys!1609) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1326908 d!143113))

(declare-fun d!143115 () Bool)

(declare-fun e!756376 () Bool)

(assert (=> d!143115 e!756376))

(declare-fun res!880743 () Bool)

(assert (=> d!143115 (=> res!880743 e!756376)))

(declare-fun lt!590523 () Bool)

(assert (=> d!143115 (= res!880743 (not lt!590523))))

(declare-fun lt!590524 () Bool)

(assert (=> d!143115 (= lt!590523 lt!590524)))

(declare-fun lt!590522 () Unit!43647)

(declare-fun e!756375 () Unit!43647)

(assert (=> d!143115 (= lt!590522 e!756375)))

(declare-fun c!125807 () Bool)

(assert (=> d!143115 (= c!125807 lt!590524)))

(assert (=> d!143115 (= lt!590524 (containsKey!734 (toList!10701 lt!590469) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143115 (= (contains!8796 lt!590469 #b0000000000000000000000000000000000000000000000000000000000000000) lt!590523)))

(declare-fun b!1327028 () Bool)

(declare-fun lt!590521 () Unit!43647)

(assert (=> b!1327028 (= e!756375 lt!590521)))

(assert (=> b!1327028 (= lt!590521 (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!10701 lt!590469) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1327028 (isDefined!519 (getValueByKey!716 (toList!10701 lt!590469) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1327029 () Bool)

(declare-fun Unit!43653 () Unit!43647)

(assert (=> b!1327029 (= e!756375 Unit!43653)))

(declare-fun b!1327030 () Bool)

(assert (=> b!1327030 (= e!756376 (isDefined!519 (getValueByKey!716 (toList!10701 lt!590469) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143115 c!125807) b!1327028))

(assert (= (and d!143115 (not c!125807)) b!1327029))

(assert (= (and d!143115 (not res!880743)) b!1327030))

(declare-fun m!1216277 () Bool)

(assert (=> d!143115 m!1216277))

(declare-fun m!1216279 () Bool)

(assert (=> b!1327028 m!1216279))

(assert (=> b!1327028 m!1216225))

(assert (=> b!1327028 m!1216225))

(declare-fun m!1216281 () Bool)

(assert (=> b!1327028 m!1216281))

(assert (=> b!1327030 m!1216225))

(assert (=> b!1327030 m!1216225))

(assert (=> b!1327030 m!1216281))

(assert (=> bm!64795 d!143115))

(declare-fun d!143117 () Bool)

(declare-fun e!756378 () Bool)

(assert (=> d!143117 e!756378))

(declare-fun res!880744 () Bool)

(assert (=> d!143117 (=> res!880744 e!756378)))

(declare-fun lt!590527 () Bool)

(assert (=> d!143117 (= res!880744 (not lt!590527))))

(declare-fun lt!590528 () Bool)

(assert (=> d!143117 (= lt!590527 lt!590528)))

(declare-fun lt!590526 () Unit!43647)

(declare-fun e!756377 () Unit!43647)

(assert (=> d!143117 (= lt!590526 e!756377)))

(declare-fun c!125808 () Bool)

(assert (=> d!143117 (= c!125808 lt!590528)))

(assert (=> d!143117 (= lt!590528 (containsKey!734 (toList!10701 lt!590469) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143117 (= (contains!8796 lt!590469 #b1000000000000000000000000000000000000000000000000000000000000000) lt!590527)))

(declare-fun b!1327031 () Bool)

(declare-fun lt!590525 () Unit!43647)

(assert (=> b!1327031 (= e!756377 lt!590525)))

(assert (=> b!1327031 (= lt!590525 (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!10701 lt!590469) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1327031 (isDefined!519 (getValueByKey!716 (toList!10701 lt!590469) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1327032 () Bool)

(declare-fun Unit!43654 () Unit!43647)

(assert (=> b!1327032 (= e!756377 Unit!43654)))

(declare-fun b!1327033 () Bool)

(assert (=> b!1327033 (= e!756378 (isDefined!519 (getValueByKey!716 (toList!10701 lt!590469) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143117 c!125808) b!1327031))

(assert (= (and d!143117 (not c!125808)) b!1327032))

(assert (= (and d!143117 (not res!880744)) b!1327033))

(declare-fun m!1216283 () Bool)

(assert (=> d!143117 m!1216283))

(declare-fun m!1216285 () Bool)

(assert (=> b!1327031 m!1216285))

(assert (=> b!1327031 m!1216207))

(assert (=> b!1327031 m!1216207))

(declare-fun m!1216287 () Bool)

(assert (=> b!1327031 m!1216287))

(assert (=> b!1327033 m!1216207))

(assert (=> b!1327033 m!1216207))

(assert (=> b!1327033 m!1216287))

(assert (=> bm!64792 d!143117))

(declare-fun d!143119 () Bool)

(declare-fun e!756379 () Bool)

(assert (=> d!143119 e!756379))

(declare-fun res!880745 () Bool)

(assert (=> d!143119 (=> (not res!880745) (not e!756379))))

(declare-fun lt!590532 () ListLongMap!21371)

(assert (=> d!143119 (= res!880745 (contains!8796 lt!590532 (_1!11861 (ite (or c!125767 c!125768) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(declare-fun lt!590530 () List!30866)

(assert (=> d!143119 (= lt!590532 (ListLongMap!21372 lt!590530))))

(declare-fun lt!590529 () Unit!43647)

(declare-fun lt!590531 () Unit!43647)

(assert (=> d!143119 (= lt!590529 lt!590531)))

(assert (=> d!143119 (= (getValueByKey!716 lt!590530 (_1!11861 (ite (or c!125767 c!125768) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))) (Some!766 (_2!11861 (ite (or c!125767 c!125768) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (=> d!143119 (= lt!590531 (lemmaContainsTupThenGetReturnValue!359 lt!590530 (_1!11861 (ite (or c!125767 c!125768) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (_2!11861 (ite (or c!125767 c!125768) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (=> d!143119 (= lt!590530 (insertStrictlySorted!488 (toList!10701 (ite c!125767 call!64786 (ite c!125768 call!64781 call!64787))) (_1!11861 (ite (or c!125767 c!125768) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (_2!11861 (ite (or c!125767 c!125768) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (=> d!143119 (= (+!4616 (ite c!125767 call!64786 (ite c!125768 call!64781 call!64787)) (ite (or c!125767 c!125768) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) lt!590532)))

(declare-fun b!1327034 () Bool)

(declare-fun res!880746 () Bool)

(assert (=> b!1327034 (=> (not res!880746) (not e!756379))))

(assert (=> b!1327034 (= res!880746 (= (getValueByKey!716 (toList!10701 lt!590532) (_1!11861 (ite (or c!125767 c!125768) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))) (Some!766 (_2!11861 (ite (or c!125767 c!125768) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))))

(declare-fun b!1327035 () Bool)

(assert (=> b!1327035 (= e!756379 (contains!8799 (toList!10701 lt!590532) (ite (or c!125767 c!125768) (tuple2!23703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (= (and d!143119 res!880745) b!1327034))

(assert (= (and b!1327034 res!880746) b!1327035))

(declare-fun m!1216289 () Bool)

(assert (=> d!143119 m!1216289))

(declare-fun m!1216291 () Bool)

(assert (=> d!143119 m!1216291))

(declare-fun m!1216293 () Bool)

(assert (=> d!143119 m!1216293))

(declare-fun m!1216295 () Bool)

(assert (=> d!143119 m!1216295))

(declare-fun m!1216297 () Bool)

(assert (=> b!1327034 m!1216297))

(declare-fun m!1216299 () Bool)

(assert (=> b!1327035 m!1216299))

(assert (=> bm!64783 d!143119))

(declare-fun d!143121 () Bool)

(declare-fun e!756381 () Bool)

(assert (=> d!143121 e!756381))

(declare-fun res!880747 () Bool)

(assert (=> d!143121 (=> res!880747 e!756381)))

(declare-fun lt!590535 () Bool)

(assert (=> d!143121 (= res!880747 (not lt!590535))))

(declare-fun lt!590536 () Bool)

(assert (=> d!143121 (= lt!590535 lt!590536)))

(declare-fun lt!590534 () Unit!43647)

(declare-fun e!756380 () Unit!43647)

(assert (=> d!143121 (= lt!590534 e!756380)))

(declare-fun c!125809 () Bool)

(assert (=> d!143121 (= c!125809 lt!590536)))

(assert (=> d!143121 (= lt!590536 (containsKey!734 (toList!10701 lt!590434) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143121 (= (contains!8796 lt!590434 #b0000000000000000000000000000000000000000000000000000000000000000) lt!590535)))

(declare-fun b!1327036 () Bool)

(declare-fun lt!590533 () Unit!43647)

(assert (=> b!1327036 (= e!756380 lt!590533)))

(assert (=> b!1327036 (= lt!590533 (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!10701 lt!590434) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1327036 (isDefined!519 (getValueByKey!716 (toList!10701 lt!590434) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1327037 () Bool)

(declare-fun Unit!43655 () Unit!43647)

(assert (=> b!1327037 (= e!756380 Unit!43655)))

(declare-fun b!1327038 () Bool)

(assert (=> b!1327038 (= e!756381 (isDefined!519 (getValueByKey!716 (toList!10701 lt!590434) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143121 c!125809) b!1327036))

(assert (= (and d!143121 (not c!125809)) b!1327037))

(assert (= (and d!143121 (not res!880747)) b!1327038))

(declare-fun m!1216301 () Bool)

(assert (=> d!143121 m!1216301))

(declare-fun m!1216303 () Bool)

(assert (=> b!1327036 m!1216303))

(assert (=> b!1327036 m!1216245))

(assert (=> b!1327036 m!1216245))

(declare-fun m!1216305 () Bool)

(assert (=> b!1327036 m!1216305))

(assert (=> b!1327038 m!1216245))

(assert (=> b!1327038 m!1216245))

(assert (=> b!1327038 m!1216305))

(assert (=> bm!64782 d!143121))

(declare-fun b!1327039 () Bool)

(declare-fun e!756382 () Bool)

(declare-fun call!64804 () Bool)

(assert (=> b!1327039 (= e!756382 call!64804)))

(declare-fun b!1327040 () Bool)

(declare-fun e!756385 () Bool)

(assert (=> b!1327040 (= e!756385 (contains!8798 (ite c!125774 (Cons!30863 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000) Nil!30864) Nil!30864) (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1327041 () Bool)

(declare-fun e!756383 () Bool)

(declare-fun e!756384 () Bool)

(assert (=> b!1327041 (= e!756383 e!756384)))

(declare-fun res!880749 () Bool)

(assert (=> b!1327041 (=> (not res!880749) (not e!756384))))

(assert (=> b!1327041 (= res!880749 (not e!756385))))

(declare-fun res!880750 () Bool)

(assert (=> b!1327041 (=> (not res!880750) (not e!756385))))

(assert (=> b!1327041 (= res!880750 (validKeyInArray!0 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun c!125810 () Bool)

(declare-fun bm!64801 () Bool)

(assert (=> bm!64801 (= call!64804 (arrayNoDuplicates!0 _keys!1609 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!125810 (Cons!30863 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!125774 (Cons!30863 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000) Nil!30864) Nil!30864)) (ite c!125774 (Cons!30863 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000) Nil!30864) Nil!30864))))))

(declare-fun d!143123 () Bool)

(declare-fun res!880748 () Bool)

(assert (=> d!143123 (=> res!880748 e!756383)))

(assert (=> d!143123 (= res!880748 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!43810 _keys!1609)))))

(assert (=> d!143123 (= (arrayNoDuplicates!0 _keys!1609 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125774 (Cons!30863 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000) Nil!30864) Nil!30864)) e!756383)))

(declare-fun b!1327042 () Bool)

(assert (=> b!1327042 (= e!756382 call!64804)))

(declare-fun b!1327043 () Bool)

(assert (=> b!1327043 (= e!756384 e!756382)))

(assert (=> b!1327043 (= c!125810 (validKeyInArray!0 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!143123 (not res!880748)) b!1327041))

(assert (= (and b!1327041 res!880750) b!1327040))

(assert (= (and b!1327041 res!880749) b!1327043))

(assert (= (and b!1327043 c!125810) b!1327042))

(assert (= (and b!1327043 (not c!125810)) b!1327039))

(assert (= (or b!1327042 b!1327039) bm!64801))

(declare-fun m!1216307 () Bool)

(assert (=> b!1327040 m!1216307))

(assert (=> b!1327040 m!1216307))

(declare-fun m!1216309 () Bool)

(assert (=> b!1327040 m!1216309))

(assert (=> b!1327041 m!1216307))

(assert (=> b!1327041 m!1216307))

(declare-fun m!1216311 () Bool)

(assert (=> b!1327041 m!1216311))

(assert (=> bm!64801 m!1216307))

(declare-fun m!1216313 () Bool)

(assert (=> bm!64801 m!1216313))

(assert (=> b!1327043 m!1216307))

(assert (=> b!1327043 m!1216307))

(assert (=> b!1327043 m!1216311))

(assert (=> bm!64787 d!143123))

(declare-fun d!143125 () Bool)

(declare-fun e!756387 () Bool)

(assert (=> d!143125 e!756387))

(declare-fun res!880751 () Bool)

(assert (=> d!143125 (=> res!880751 e!756387)))

(declare-fun lt!590539 () Bool)

(assert (=> d!143125 (= res!880751 (not lt!590539))))

(declare-fun lt!590540 () Bool)

(assert (=> d!143125 (= lt!590539 lt!590540)))

(declare-fun lt!590538 () Unit!43647)

(declare-fun e!756386 () Unit!43647)

(assert (=> d!143125 (= lt!590538 e!756386)))

(declare-fun c!125811 () Bool)

(assert (=> d!143125 (= c!125811 lt!590540)))

(assert (=> d!143125 (= lt!590540 (containsKey!734 (toList!10701 lt!590434) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143125 (= (contains!8796 lt!590434 #b1000000000000000000000000000000000000000000000000000000000000000) lt!590539)))

(declare-fun b!1327044 () Bool)

(declare-fun lt!590537 () Unit!43647)

(assert (=> b!1327044 (= e!756386 lt!590537)))

(assert (=> b!1327044 (= lt!590537 (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!10701 lt!590434) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1327044 (isDefined!519 (getValueByKey!716 (toList!10701 lt!590434) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1327045 () Bool)

(declare-fun Unit!43656 () Unit!43647)

(assert (=> b!1327045 (= e!756386 Unit!43656)))

(declare-fun b!1327046 () Bool)

(assert (=> b!1327046 (= e!756387 (isDefined!519 (getValueByKey!716 (toList!10701 lt!590434) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143125 c!125811) b!1327044))

(assert (= (and d!143125 (not c!125811)) b!1327045))

(assert (= (and d!143125 (not res!880751)) b!1327046))

(declare-fun m!1216315 () Bool)

(assert (=> d!143125 m!1216315))

(declare-fun m!1216317 () Bool)

(assert (=> b!1327044 m!1216317))

(assert (=> b!1327044 m!1216219))

(assert (=> b!1327044 m!1216219))

(declare-fun m!1216319 () Bool)

(assert (=> b!1327044 m!1216319))

(assert (=> b!1327046 m!1216219))

(assert (=> b!1327046 m!1216219))

(assert (=> b!1327046 m!1216319))

(assert (=> bm!64779 d!143125))

(assert (=> b!1326906 d!143113))

(declare-fun d!143127 () Bool)

(declare-fun lt!590543 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!662 (List!30867) (InoxSet (_ BitVec 64)))

(assert (=> d!143127 (= lt!590543 (select (content!662 Nil!30864) (select (arr!43259 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun e!756393 () Bool)

(assert (=> d!143127 (= lt!590543 e!756393)))

(declare-fun res!880756 () Bool)

(assert (=> d!143127 (=> (not res!880756) (not e!756393))))

(assert (=> d!143127 (= res!880756 ((_ is Cons!30863) Nil!30864))))

(assert (=> d!143127 (= (contains!8798 Nil!30864 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000)) lt!590543)))

(declare-fun b!1327051 () Bool)

(declare-fun e!756392 () Bool)

(assert (=> b!1327051 (= e!756393 e!756392)))

(declare-fun res!880757 () Bool)

(assert (=> b!1327051 (=> res!880757 e!756392)))

(assert (=> b!1327051 (= res!880757 (= (h!32072 Nil!30864) (select (arr!43259 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun b!1327052 () Bool)

(assert (=> b!1327052 (= e!756392 (contains!8798 (t!44878 Nil!30864) (select (arr!43259 _keys!1609) #b00000000000000000000000000000000)))))

(assert (= (and d!143127 res!880756) b!1327051))

(assert (= (and b!1327051 (not res!880757)) b!1327052))

(declare-fun m!1216321 () Bool)

(assert (=> d!143127 m!1216321))

(assert (=> d!143127 m!1216101))

(declare-fun m!1216323 () Bool)

(assert (=> d!143127 m!1216323))

(assert (=> b!1327052 m!1216101))

(declare-fun m!1216325 () Bool)

(assert (=> b!1327052 m!1216325))

(assert (=> b!1326905 d!143127))

(declare-fun d!143129 () Bool)

(assert (=> d!143129 (= (apply!1066 lt!590474 lt!590455) (get!21848 (getValueByKey!716 (toList!10701 lt!590474) lt!590455)))))

(declare-fun bs!37954 () Bool)

(assert (= bs!37954 d!143129))

(declare-fun m!1216327 () Bool)

(assert (=> bs!37954 m!1216327))

(assert (=> bs!37954 m!1216327))

(declare-fun m!1216329 () Bool)

(assert (=> bs!37954 m!1216329))

(assert (=> b!1326939 d!143129))

(declare-fun d!143131 () Bool)

(assert (=> d!143131 (= (apply!1066 lt!590473 lt!590475) (get!21848 (getValueByKey!716 (toList!10701 lt!590473) lt!590475)))))

(declare-fun bs!37955 () Bool)

(assert (= bs!37955 d!143131))

(declare-fun m!1216331 () Bool)

(assert (=> bs!37955 m!1216331))

(assert (=> bs!37955 m!1216331))

(declare-fun m!1216333 () Bool)

(assert (=> bs!37955 m!1216333))

(assert (=> b!1326939 d!143131))

(declare-fun d!143133 () Bool)

(declare-fun e!756394 () Bool)

(assert (=> d!143133 e!756394))

(declare-fun res!880758 () Bool)

(assert (=> d!143133 (=> (not res!880758) (not e!756394))))

(declare-fun lt!590547 () ListLongMap!21371)

(assert (=> d!143133 (= res!880758 (contains!8796 lt!590547 (_1!11861 (tuple2!23703 lt!590464 minValue!1279))))))

(declare-fun lt!590545 () List!30866)

(assert (=> d!143133 (= lt!590547 (ListLongMap!21372 lt!590545))))

(declare-fun lt!590544 () Unit!43647)

(declare-fun lt!590546 () Unit!43647)

(assert (=> d!143133 (= lt!590544 lt!590546)))

(assert (=> d!143133 (= (getValueByKey!716 lt!590545 (_1!11861 (tuple2!23703 lt!590464 minValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590464 minValue!1279))))))

(assert (=> d!143133 (= lt!590546 (lemmaContainsTupThenGetReturnValue!359 lt!590545 (_1!11861 (tuple2!23703 lt!590464 minValue!1279)) (_2!11861 (tuple2!23703 lt!590464 minValue!1279))))))

(assert (=> d!143133 (= lt!590545 (insertStrictlySorted!488 (toList!10701 lt!590473) (_1!11861 (tuple2!23703 lt!590464 minValue!1279)) (_2!11861 (tuple2!23703 lt!590464 minValue!1279))))))

(assert (=> d!143133 (= (+!4616 lt!590473 (tuple2!23703 lt!590464 minValue!1279)) lt!590547)))

(declare-fun b!1327053 () Bool)

(declare-fun res!880759 () Bool)

(assert (=> b!1327053 (=> (not res!880759) (not e!756394))))

(assert (=> b!1327053 (= res!880759 (= (getValueByKey!716 (toList!10701 lt!590547) (_1!11861 (tuple2!23703 lt!590464 minValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590464 minValue!1279)))))))

(declare-fun b!1327054 () Bool)

(assert (=> b!1327054 (= e!756394 (contains!8799 (toList!10701 lt!590547) (tuple2!23703 lt!590464 minValue!1279)))))

(assert (= (and d!143133 res!880758) b!1327053))

(assert (= (and b!1327053 res!880759) b!1327054))

(declare-fun m!1216335 () Bool)

(assert (=> d!143133 m!1216335))

(declare-fun m!1216337 () Bool)

(assert (=> d!143133 m!1216337))

(declare-fun m!1216339 () Bool)

(assert (=> d!143133 m!1216339))

(declare-fun m!1216341 () Bool)

(assert (=> d!143133 m!1216341))

(declare-fun m!1216343 () Bool)

(assert (=> b!1327053 m!1216343))

(declare-fun m!1216345 () Bool)

(assert (=> b!1327054 m!1216345))

(assert (=> b!1326939 d!143133))

(declare-fun d!143135 () Bool)

(assert (=> d!143135 (contains!8796 (+!4616 lt!590461 (tuple2!23703 lt!590456 zeroValue!1279)) lt!590470)))

(declare-fun lt!590550 () Unit!43647)

(declare-fun choose!1962 (ListLongMap!21371 (_ BitVec 64) V!53579 (_ BitVec 64)) Unit!43647)

(assert (=> d!143135 (= lt!590550 (choose!1962 lt!590461 lt!590456 zeroValue!1279 lt!590470))))

(assert (=> d!143135 (contains!8796 lt!590461 lt!590470)))

(assert (=> d!143135 (= (addStillContains!1173 lt!590461 lt!590456 zeroValue!1279 lt!590470) lt!590550)))

(declare-fun bs!37956 () Bool)

(assert (= bs!37956 d!143135))

(assert (=> bs!37956 m!1216151))

(assert (=> bs!37956 m!1216151))

(assert (=> bs!37956 m!1216153))

(declare-fun m!1216347 () Bool)

(assert (=> bs!37956 m!1216347))

(declare-fun m!1216349 () Bool)

(assert (=> bs!37956 m!1216349))

(assert (=> b!1326939 d!143135))

(declare-fun d!143137 () Bool)

(declare-fun e!756396 () Bool)

(assert (=> d!143137 e!756396))

(declare-fun res!880760 () Bool)

(assert (=> d!143137 (=> res!880760 e!756396)))

(declare-fun lt!590553 () Bool)

(assert (=> d!143137 (= res!880760 (not lt!590553))))

(declare-fun lt!590554 () Bool)

(assert (=> d!143137 (= lt!590553 lt!590554)))

(declare-fun lt!590552 () Unit!43647)

(declare-fun e!756395 () Unit!43647)

(assert (=> d!143137 (= lt!590552 e!756395)))

(declare-fun c!125812 () Bool)

(assert (=> d!143137 (= c!125812 lt!590554)))

(assert (=> d!143137 (= lt!590554 (containsKey!734 (toList!10701 (+!4616 lt!590461 (tuple2!23703 lt!590456 zeroValue!1279))) lt!590470))))

(assert (=> d!143137 (= (contains!8796 (+!4616 lt!590461 (tuple2!23703 lt!590456 zeroValue!1279)) lt!590470) lt!590553)))

(declare-fun b!1327056 () Bool)

(declare-fun lt!590551 () Unit!43647)

(assert (=> b!1327056 (= e!756395 lt!590551)))

(assert (=> b!1327056 (= lt!590551 (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!10701 (+!4616 lt!590461 (tuple2!23703 lt!590456 zeroValue!1279))) lt!590470))))

(assert (=> b!1327056 (isDefined!519 (getValueByKey!716 (toList!10701 (+!4616 lt!590461 (tuple2!23703 lt!590456 zeroValue!1279))) lt!590470))))

(declare-fun b!1327057 () Bool)

(declare-fun Unit!43657 () Unit!43647)

(assert (=> b!1327057 (= e!756395 Unit!43657)))

(declare-fun b!1327058 () Bool)

(assert (=> b!1327058 (= e!756396 (isDefined!519 (getValueByKey!716 (toList!10701 (+!4616 lt!590461 (tuple2!23703 lt!590456 zeroValue!1279))) lt!590470)))))

(assert (= (and d!143137 c!125812) b!1327056))

(assert (= (and d!143137 (not c!125812)) b!1327057))

(assert (= (and d!143137 (not res!880760)) b!1327058))

(declare-fun m!1216351 () Bool)

(assert (=> d!143137 m!1216351))

(declare-fun m!1216353 () Bool)

(assert (=> b!1327056 m!1216353))

(declare-fun m!1216355 () Bool)

(assert (=> b!1327056 m!1216355))

(assert (=> b!1327056 m!1216355))

(declare-fun m!1216357 () Bool)

(assert (=> b!1327056 m!1216357))

(assert (=> b!1327058 m!1216355))

(assert (=> b!1327058 m!1216355))

(assert (=> b!1327058 m!1216357))

(assert (=> b!1326939 d!143137))

(declare-fun d!143139 () Bool)

(declare-fun e!756397 () Bool)

(assert (=> d!143139 e!756397))

(declare-fun res!880761 () Bool)

(assert (=> d!143139 (=> (not res!880761) (not e!756397))))

(declare-fun lt!590558 () ListLongMap!21371)

(assert (=> d!143139 (= res!880761 (contains!8796 lt!590558 (_1!11861 (tuple2!23703 lt!590456 zeroValue!1279))))))

(declare-fun lt!590556 () List!30866)

(assert (=> d!143139 (= lt!590558 (ListLongMap!21372 lt!590556))))

(declare-fun lt!590555 () Unit!43647)

(declare-fun lt!590557 () Unit!43647)

(assert (=> d!143139 (= lt!590555 lt!590557)))

(assert (=> d!143139 (= (getValueByKey!716 lt!590556 (_1!11861 (tuple2!23703 lt!590456 zeroValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590456 zeroValue!1279))))))

(assert (=> d!143139 (= lt!590557 (lemmaContainsTupThenGetReturnValue!359 lt!590556 (_1!11861 (tuple2!23703 lt!590456 zeroValue!1279)) (_2!11861 (tuple2!23703 lt!590456 zeroValue!1279))))))

(assert (=> d!143139 (= lt!590556 (insertStrictlySorted!488 (toList!10701 lt!590461) (_1!11861 (tuple2!23703 lt!590456 zeroValue!1279)) (_2!11861 (tuple2!23703 lt!590456 zeroValue!1279))))))

(assert (=> d!143139 (= (+!4616 lt!590461 (tuple2!23703 lt!590456 zeroValue!1279)) lt!590558)))

(declare-fun b!1327059 () Bool)

(declare-fun res!880762 () Bool)

(assert (=> b!1327059 (=> (not res!880762) (not e!756397))))

(assert (=> b!1327059 (= res!880762 (= (getValueByKey!716 (toList!10701 lt!590558) (_1!11861 (tuple2!23703 lt!590456 zeroValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590456 zeroValue!1279)))))))

(declare-fun b!1327060 () Bool)

(assert (=> b!1327060 (= e!756397 (contains!8799 (toList!10701 lt!590558) (tuple2!23703 lt!590456 zeroValue!1279)))))

(assert (= (and d!143139 res!880761) b!1327059))

(assert (= (and b!1327059 res!880762) b!1327060))

(declare-fun m!1216359 () Bool)

(assert (=> d!143139 m!1216359))

(declare-fun m!1216361 () Bool)

(assert (=> d!143139 m!1216361))

(declare-fun m!1216363 () Bool)

(assert (=> d!143139 m!1216363))

(declare-fun m!1216365 () Bool)

(assert (=> d!143139 m!1216365))

(declare-fun m!1216367 () Bool)

(assert (=> b!1327059 m!1216367))

(declare-fun m!1216369 () Bool)

(assert (=> b!1327060 m!1216369))

(assert (=> b!1326939 d!143139))

(declare-fun d!143141 () Bool)

(declare-fun e!756401 () Bool)

(assert (=> d!143141 e!756401))

(declare-fun res!880765 () Bool)

(assert (=> d!143141 (=> (not res!880765) (not e!756401))))

(declare-fun lt!590564 () ListLongMap!21371)

(assert (=> d!143141 (= res!880765 (not (contains!8796 lt!590564 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!756402 () ListLongMap!21371)

(assert (=> d!143141 (= lt!590564 e!756402)))

(declare-fun c!125814 () Bool)

(assert (=> d!143141 (= c!125814 (bvsge from!2000 (size!43810 _keys!1609)))))

(assert (=> d!143141 (validMask!0 mask!2019)))

(assert (=> d!143141 (= (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) lt!590564)))

(declare-fun b!1327061 () Bool)

(declare-fun e!756400 () Bool)

(declare-fun e!756399 () Bool)

(assert (=> b!1327061 (= e!756400 e!756399)))

(assert (=> b!1327061 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43810 _keys!1609)))))

(declare-fun res!880766 () Bool)

(assert (=> b!1327061 (= res!880766 (contains!8796 lt!590564 (select (arr!43259 _keys!1609) from!2000)))))

(assert (=> b!1327061 (=> (not res!880766) (not e!756399))))

(declare-fun call!64805 () ListLongMap!21371)

(declare-fun bm!64802 () Bool)

(assert (=> bm!64802 (= call!64805 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd from!2000 #b00000000000000000000000000000001) defaultEntry!1340))))

(declare-fun b!1327062 () Bool)

(assert (=> b!1327062 (= e!756401 e!756400)))

(declare-fun c!125816 () Bool)

(declare-fun e!756404 () Bool)

(assert (=> b!1327062 (= c!125816 e!756404)))

(declare-fun res!880764 () Bool)

(assert (=> b!1327062 (=> (not res!880764) (not e!756404))))

(assert (=> b!1327062 (= res!880764 (bvslt from!2000 (size!43810 _keys!1609)))))

(declare-fun b!1327063 () Bool)

(declare-fun e!756403 () Bool)

(assert (=> b!1327063 (= e!756400 e!756403)))

(declare-fun c!125815 () Bool)

(assert (=> b!1327063 (= c!125815 (bvslt from!2000 (size!43810 _keys!1609)))))

(declare-fun b!1327064 () Bool)

(declare-fun e!756398 () ListLongMap!21371)

(assert (=> b!1327064 (= e!756398 call!64805)))

(declare-fun b!1327065 () Bool)

(assert (=> b!1327065 (= e!756402 (ListLongMap!21372 Nil!30863))))

(declare-fun b!1327066 () Bool)

(declare-fun lt!590563 () Unit!43647)

(declare-fun lt!590561 () Unit!43647)

(assert (=> b!1327066 (= lt!590563 lt!590561)))

(declare-fun lt!590559 () ListLongMap!21371)

(declare-fun lt!590565 () V!53579)

(declare-fun lt!590560 () (_ BitVec 64))

(declare-fun lt!590562 () (_ BitVec 64))

(assert (=> b!1327066 (not (contains!8796 (+!4616 lt!590559 (tuple2!23703 lt!590562 lt!590565)) lt!590560))))

(assert (=> b!1327066 (= lt!590561 (addStillNotContains!504 lt!590559 lt!590562 lt!590565 lt!590560))))

(assert (=> b!1327066 (= lt!590560 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1327066 (= lt!590565 (get!21847 (select (arr!43260 _values!1337) from!2000) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1327066 (= lt!590562 (select (arr!43259 _keys!1609) from!2000))))

(assert (=> b!1327066 (= lt!590559 call!64805)))

(assert (=> b!1327066 (= e!756398 (+!4616 call!64805 (tuple2!23703 (select (arr!43259 _keys!1609) from!2000) (get!21847 (select (arr!43260 _values!1337) from!2000) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1327067 () Bool)

(assert (=> b!1327067 (= e!756403 (= lt!590564 (getCurrentListMapNoExtraKeys!6334 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd from!2000 #b00000000000000000000000000000001) defaultEntry!1340)))))

(declare-fun b!1327068 () Bool)

(assert (=> b!1327068 (= e!756404 (validKeyInArray!0 (select (arr!43259 _keys!1609) from!2000)))))

(assert (=> b!1327068 (bvsge from!2000 #b00000000000000000000000000000000)))

(declare-fun b!1327069 () Bool)

(assert (=> b!1327069 (= e!756403 (isEmpty!1082 lt!590564))))

(declare-fun b!1327070 () Bool)

(assert (=> b!1327070 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43810 _keys!1609)))))

(assert (=> b!1327070 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43811 _values!1337)))))

(assert (=> b!1327070 (= e!756399 (= (apply!1066 lt!590564 (select (arr!43259 _keys!1609) from!2000)) (get!21847 (select (arr!43260 _values!1337) from!2000) (dynLambda!3653 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1327071 () Bool)

(declare-fun res!880763 () Bool)

(assert (=> b!1327071 (=> (not res!880763) (not e!756401))))

(assert (=> b!1327071 (= res!880763 (not (contains!8796 lt!590564 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1327072 () Bool)

(assert (=> b!1327072 (= e!756402 e!756398)))

(declare-fun c!125813 () Bool)

(assert (=> b!1327072 (= c!125813 (validKeyInArray!0 (select (arr!43259 _keys!1609) from!2000)))))

(assert (= (and d!143141 c!125814) b!1327065))

(assert (= (and d!143141 (not c!125814)) b!1327072))

(assert (= (and b!1327072 c!125813) b!1327066))

(assert (= (and b!1327072 (not c!125813)) b!1327064))

(assert (= (or b!1327066 b!1327064) bm!64802))

(assert (= (and d!143141 res!880765) b!1327071))

(assert (= (and b!1327071 res!880763) b!1327062))

(assert (= (and b!1327062 res!880764) b!1327068))

(assert (= (and b!1327062 c!125816) b!1327061))

(assert (= (and b!1327062 (not c!125816)) b!1327063))

(assert (= (and b!1327061 res!880766) b!1327070))

(assert (= (and b!1327063 c!125815) b!1327067))

(assert (= (and b!1327063 (not c!125815)) b!1327069))

(declare-fun b_lambda!23853 () Bool)

(assert (=> (not b_lambda!23853) (not b!1327066)))

(assert (=> b!1327066 t!44882))

(declare-fun b_and!49197 () Bool)

(assert (= b_and!49195 (and (=> t!44882 result!24685) b_and!49197)))

(declare-fun b_lambda!23855 () Bool)

(assert (=> (not b_lambda!23855) (not b!1327070)))

(assert (=> b!1327070 t!44882))

(declare-fun b_and!49199 () Bool)

(assert (= b_and!49197 (and (=> t!44882 result!24685) b_and!49199)))

(declare-fun m!1216371 () Bool)

(assert (=> b!1327071 m!1216371))

(assert (=> b!1327072 m!1215993))

(assert (=> b!1327072 m!1215993))

(assert (=> b!1327072 m!1215995))

(declare-fun m!1216373 () Bool)

(assert (=> b!1327067 m!1216373))

(assert (=> b!1327070 m!1216091))

(assert (=> b!1327070 m!1216167))

(assert (=> b!1327070 m!1216091))

(assert (=> b!1327070 m!1216169))

(assert (=> b!1327070 m!1215993))

(declare-fun m!1216375 () Bool)

(assert (=> b!1327070 m!1216375))

(assert (=> b!1327070 m!1216167))

(assert (=> b!1327070 m!1215993))

(declare-fun m!1216377 () Bool)

(assert (=> d!143141 m!1216377))

(assert (=> d!143141 m!1215997))

(assert (=> b!1327061 m!1215993))

(assert (=> b!1327061 m!1215993))

(declare-fun m!1216379 () Bool)

(assert (=> b!1327061 m!1216379))

(assert (=> b!1327068 m!1215993))

(assert (=> b!1327068 m!1215993))

(assert (=> b!1327068 m!1215995))

(assert (=> bm!64802 m!1216373))

(assert (=> b!1327066 m!1216167))

(assert (=> b!1327066 m!1216091))

(assert (=> b!1327066 m!1216169))

(assert (=> b!1327066 m!1216091))

(declare-fun m!1216381 () Bool)

(assert (=> b!1327066 m!1216381))

(declare-fun m!1216383 () Bool)

(assert (=> b!1327066 m!1216383))

(assert (=> b!1327066 m!1216167))

(assert (=> b!1327066 m!1215993))

(declare-fun m!1216385 () Bool)

(assert (=> b!1327066 m!1216385))

(assert (=> b!1327066 m!1216385))

(declare-fun m!1216387 () Bool)

(assert (=> b!1327066 m!1216387))

(declare-fun m!1216389 () Bool)

(assert (=> b!1327069 m!1216389))

(assert (=> b!1326939 d!143141))

(declare-fun d!143143 () Bool)

(assert (=> d!143143 (= (apply!1066 (+!4616 lt!590474 (tuple2!23703 lt!590471 zeroValue!1279)) lt!590455) (get!21848 (getValueByKey!716 (toList!10701 (+!4616 lt!590474 (tuple2!23703 lt!590471 zeroValue!1279))) lt!590455)))))

(declare-fun bs!37957 () Bool)

(assert (= bs!37957 d!143143))

(declare-fun m!1216391 () Bool)

(assert (=> bs!37957 m!1216391))

(assert (=> bs!37957 m!1216391))

(declare-fun m!1216393 () Bool)

(assert (=> bs!37957 m!1216393))

(assert (=> b!1326939 d!143143))

(declare-fun d!143145 () Bool)

(assert (=> d!143145 (= (apply!1066 (+!4616 lt!590460 (tuple2!23703 lt!590466 minValue!1279)) lt!590465) (get!21848 (getValueByKey!716 (toList!10701 (+!4616 lt!590460 (tuple2!23703 lt!590466 minValue!1279))) lt!590465)))))

(declare-fun bs!37958 () Bool)

(assert (= bs!37958 d!143145))

(declare-fun m!1216395 () Bool)

(assert (=> bs!37958 m!1216395))

(assert (=> bs!37958 m!1216395))

(declare-fun m!1216397 () Bool)

(assert (=> bs!37958 m!1216397))

(assert (=> b!1326939 d!143145))

(declare-fun d!143147 () Bool)

(assert (=> d!143147 (= (apply!1066 lt!590460 lt!590465) (get!21848 (getValueByKey!716 (toList!10701 lt!590460) lt!590465)))))

(declare-fun bs!37959 () Bool)

(assert (= bs!37959 d!143147))

(declare-fun m!1216399 () Bool)

(assert (=> bs!37959 m!1216399))

(assert (=> bs!37959 m!1216399))

(declare-fun m!1216401 () Bool)

(assert (=> bs!37959 m!1216401))

(assert (=> b!1326939 d!143147))

(declare-fun d!143149 () Bool)

(assert (=> d!143149 (= (apply!1066 (+!4616 lt!590473 (tuple2!23703 lt!590464 minValue!1279)) lt!590475) (get!21848 (getValueByKey!716 (toList!10701 (+!4616 lt!590473 (tuple2!23703 lt!590464 minValue!1279))) lt!590475)))))

(declare-fun bs!37960 () Bool)

(assert (= bs!37960 d!143149))

(declare-fun m!1216403 () Bool)

(assert (=> bs!37960 m!1216403))

(assert (=> bs!37960 m!1216403))

(declare-fun m!1216405 () Bool)

(assert (=> bs!37960 m!1216405))

(assert (=> b!1326939 d!143149))

(declare-fun d!143151 () Bool)

(assert (=> d!143151 (= (apply!1066 (+!4616 lt!590474 (tuple2!23703 lt!590471 zeroValue!1279)) lt!590455) (apply!1066 lt!590474 lt!590455))))

(declare-fun lt!590568 () Unit!43647)

(declare-fun choose!1963 (ListLongMap!21371 (_ BitVec 64) V!53579 (_ BitVec 64)) Unit!43647)

(assert (=> d!143151 (= lt!590568 (choose!1963 lt!590474 lt!590471 zeroValue!1279 lt!590455))))

(declare-fun e!756407 () Bool)

(assert (=> d!143151 e!756407))

(declare-fun res!880769 () Bool)

(assert (=> d!143151 (=> (not res!880769) (not e!756407))))

(assert (=> d!143151 (= res!880769 (contains!8796 lt!590474 lt!590455))))

(assert (=> d!143151 (= (addApplyDifferent!569 lt!590474 lt!590471 zeroValue!1279 lt!590455) lt!590568)))

(declare-fun b!1327076 () Bool)

(assert (=> b!1327076 (= e!756407 (not (= lt!590455 lt!590471)))))

(assert (= (and d!143151 res!880769) b!1327076))

(assert (=> d!143151 m!1216135))

(assert (=> d!143151 m!1216137))

(declare-fun m!1216407 () Bool)

(assert (=> d!143151 m!1216407))

(assert (=> d!143151 m!1216149))

(assert (=> d!143151 m!1216135))

(declare-fun m!1216409 () Bool)

(assert (=> d!143151 m!1216409))

(assert (=> b!1326939 d!143151))

(declare-fun d!143153 () Bool)

(declare-fun e!756408 () Bool)

(assert (=> d!143153 e!756408))

(declare-fun res!880770 () Bool)

(assert (=> d!143153 (=> (not res!880770) (not e!756408))))

(declare-fun lt!590572 () ListLongMap!21371)

(assert (=> d!143153 (= res!880770 (contains!8796 lt!590572 (_1!11861 (tuple2!23703 lt!590466 minValue!1279))))))

(declare-fun lt!590570 () List!30866)

(assert (=> d!143153 (= lt!590572 (ListLongMap!21372 lt!590570))))

(declare-fun lt!590569 () Unit!43647)

(declare-fun lt!590571 () Unit!43647)

(assert (=> d!143153 (= lt!590569 lt!590571)))

(assert (=> d!143153 (= (getValueByKey!716 lt!590570 (_1!11861 (tuple2!23703 lt!590466 minValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590466 minValue!1279))))))

(assert (=> d!143153 (= lt!590571 (lemmaContainsTupThenGetReturnValue!359 lt!590570 (_1!11861 (tuple2!23703 lt!590466 minValue!1279)) (_2!11861 (tuple2!23703 lt!590466 minValue!1279))))))

(assert (=> d!143153 (= lt!590570 (insertStrictlySorted!488 (toList!10701 lt!590460) (_1!11861 (tuple2!23703 lt!590466 minValue!1279)) (_2!11861 (tuple2!23703 lt!590466 minValue!1279))))))

(assert (=> d!143153 (= (+!4616 lt!590460 (tuple2!23703 lt!590466 minValue!1279)) lt!590572)))

(declare-fun b!1327077 () Bool)

(declare-fun res!880771 () Bool)

(assert (=> b!1327077 (=> (not res!880771) (not e!756408))))

(assert (=> b!1327077 (= res!880771 (= (getValueByKey!716 (toList!10701 lt!590572) (_1!11861 (tuple2!23703 lt!590466 minValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590466 minValue!1279)))))))

(declare-fun b!1327078 () Bool)

(assert (=> b!1327078 (= e!756408 (contains!8799 (toList!10701 lt!590572) (tuple2!23703 lt!590466 minValue!1279)))))

(assert (= (and d!143153 res!880770) b!1327077))

(assert (= (and b!1327077 res!880771) b!1327078))

(declare-fun m!1216411 () Bool)

(assert (=> d!143153 m!1216411))

(declare-fun m!1216413 () Bool)

(assert (=> d!143153 m!1216413))

(declare-fun m!1216415 () Bool)

(assert (=> d!143153 m!1216415))

(declare-fun m!1216417 () Bool)

(assert (=> d!143153 m!1216417))

(declare-fun m!1216419 () Bool)

(assert (=> b!1327077 m!1216419))

(declare-fun m!1216421 () Bool)

(assert (=> b!1327078 m!1216421))

(assert (=> b!1326939 d!143153))

(declare-fun d!143155 () Bool)

(assert (=> d!143155 (= (apply!1066 (+!4616 lt!590473 (tuple2!23703 lt!590464 minValue!1279)) lt!590475) (apply!1066 lt!590473 lt!590475))))

(declare-fun lt!590573 () Unit!43647)

(assert (=> d!143155 (= lt!590573 (choose!1963 lt!590473 lt!590464 minValue!1279 lt!590475))))

(declare-fun e!756409 () Bool)

(assert (=> d!143155 e!756409))

(declare-fun res!880772 () Bool)

(assert (=> d!143155 (=> (not res!880772) (not e!756409))))

(assert (=> d!143155 (= res!880772 (contains!8796 lt!590473 lt!590475))))

(assert (=> d!143155 (= (addApplyDifferent!569 lt!590473 lt!590464 minValue!1279 lt!590475) lt!590573)))

(declare-fun b!1327079 () Bool)

(assert (=> b!1327079 (= e!756409 (not (= lt!590475 lt!590464)))))

(assert (= (and d!143155 res!880772) b!1327079))

(assert (=> d!143155 m!1216139))

(assert (=> d!143155 m!1216141))

(declare-fun m!1216423 () Bool)

(assert (=> d!143155 m!1216423))

(assert (=> d!143155 m!1216143))

(assert (=> d!143155 m!1216139))

(declare-fun m!1216425 () Bool)

(assert (=> d!143155 m!1216425))

(assert (=> b!1326939 d!143155))

(declare-fun d!143157 () Bool)

(declare-fun e!756410 () Bool)

(assert (=> d!143157 e!756410))

(declare-fun res!880773 () Bool)

(assert (=> d!143157 (=> (not res!880773) (not e!756410))))

(declare-fun lt!590577 () ListLongMap!21371)

(assert (=> d!143157 (= res!880773 (contains!8796 lt!590577 (_1!11861 (tuple2!23703 lt!590471 zeroValue!1279))))))

(declare-fun lt!590575 () List!30866)

(assert (=> d!143157 (= lt!590577 (ListLongMap!21372 lt!590575))))

(declare-fun lt!590574 () Unit!43647)

(declare-fun lt!590576 () Unit!43647)

(assert (=> d!143157 (= lt!590574 lt!590576)))

(assert (=> d!143157 (= (getValueByKey!716 lt!590575 (_1!11861 (tuple2!23703 lt!590471 zeroValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590471 zeroValue!1279))))))

(assert (=> d!143157 (= lt!590576 (lemmaContainsTupThenGetReturnValue!359 lt!590575 (_1!11861 (tuple2!23703 lt!590471 zeroValue!1279)) (_2!11861 (tuple2!23703 lt!590471 zeroValue!1279))))))

(assert (=> d!143157 (= lt!590575 (insertStrictlySorted!488 (toList!10701 lt!590474) (_1!11861 (tuple2!23703 lt!590471 zeroValue!1279)) (_2!11861 (tuple2!23703 lt!590471 zeroValue!1279))))))

(assert (=> d!143157 (= (+!4616 lt!590474 (tuple2!23703 lt!590471 zeroValue!1279)) lt!590577)))

(declare-fun b!1327080 () Bool)

(declare-fun res!880774 () Bool)

(assert (=> b!1327080 (=> (not res!880774) (not e!756410))))

(assert (=> b!1327080 (= res!880774 (= (getValueByKey!716 (toList!10701 lt!590577) (_1!11861 (tuple2!23703 lt!590471 zeroValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590471 zeroValue!1279)))))))

(declare-fun b!1327081 () Bool)

(assert (=> b!1327081 (= e!756410 (contains!8799 (toList!10701 lt!590577) (tuple2!23703 lt!590471 zeroValue!1279)))))

(assert (= (and d!143157 res!880773) b!1327080))

(assert (= (and b!1327080 res!880774) b!1327081))

(declare-fun m!1216427 () Bool)

(assert (=> d!143157 m!1216427))

(declare-fun m!1216429 () Bool)

(assert (=> d!143157 m!1216429))

(declare-fun m!1216431 () Bool)

(assert (=> d!143157 m!1216431))

(declare-fun m!1216433 () Bool)

(assert (=> d!143157 m!1216433))

(declare-fun m!1216435 () Bool)

(assert (=> b!1327080 m!1216435))

(declare-fun m!1216437 () Bool)

(assert (=> b!1327081 m!1216437))

(assert (=> b!1326939 d!143157))

(declare-fun d!143159 () Bool)

(assert (=> d!143159 (= (apply!1066 (+!4616 lt!590460 (tuple2!23703 lt!590466 minValue!1279)) lt!590465) (apply!1066 lt!590460 lt!590465))))

(declare-fun lt!590578 () Unit!43647)

(assert (=> d!143159 (= lt!590578 (choose!1963 lt!590460 lt!590466 minValue!1279 lt!590465))))

(declare-fun e!756411 () Bool)

(assert (=> d!143159 e!756411))

(declare-fun res!880775 () Bool)

(assert (=> d!143159 (=> (not res!880775) (not e!756411))))

(assert (=> d!143159 (= res!880775 (contains!8796 lt!590460 lt!590465))))

(assert (=> d!143159 (= (addApplyDifferent!569 lt!590460 lt!590466 minValue!1279 lt!590465) lt!590578)))

(declare-fun b!1327082 () Bool)

(assert (=> b!1327082 (= e!756411 (not (= lt!590465 lt!590466)))))

(assert (= (and d!143159 res!880775) b!1327082))

(assert (=> d!143159 m!1216145))

(assert (=> d!143159 m!1216147))

(declare-fun m!1216439 () Bool)

(assert (=> d!143159 m!1216439))

(assert (=> d!143159 m!1216163))

(assert (=> d!143159 m!1216145))

(declare-fun m!1216441 () Bool)

(assert (=> d!143159 m!1216441))

(assert (=> b!1326939 d!143159))

(assert (=> b!1326938 d!143067))

(declare-fun d!143161 () Bool)

(assert (=> d!143161 (contains!8796 (+!4616 lt!590426 (tuple2!23703 lt!590421 zeroValue!1279)) lt!590435)))

(declare-fun lt!590579 () Unit!43647)

(assert (=> d!143161 (= lt!590579 (choose!1962 lt!590426 lt!590421 zeroValue!1279 lt!590435))))

(assert (=> d!143161 (contains!8796 lt!590426 lt!590435)))

(assert (=> d!143161 (= (addStillContains!1173 lt!590426 lt!590421 zeroValue!1279 lt!590435) lt!590579)))

(declare-fun bs!37961 () Bool)

(assert (= bs!37961 d!143161))

(assert (=> bs!37961 m!1216071))

(assert (=> bs!37961 m!1216071))

(assert (=> bs!37961 m!1216073))

(declare-fun m!1216443 () Bool)

(assert (=> bs!37961 m!1216443))

(declare-fun m!1216445 () Bool)

(assert (=> bs!37961 m!1216445))

(assert (=> b!1326886 d!143161))

(declare-fun d!143163 () Bool)

(assert (=> d!143163 (= (apply!1066 (+!4616 lt!590439 (tuple2!23703 lt!590436 zeroValue!1279)) lt!590420) (get!21848 (getValueByKey!716 (toList!10701 (+!4616 lt!590439 (tuple2!23703 lt!590436 zeroValue!1279))) lt!590420)))))

(declare-fun bs!37962 () Bool)

(assert (= bs!37962 d!143163))

(declare-fun m!1216447 () Bool)

(assert (=> bs!37962 m!1216447))

(assert (=> bs!37962 m!1216447))

(declare-fun m!1216449 () Bool)

(assert (=> bs!37962 m!1216449))

(assert (=> b!1326886 d!143163))

(assert (=> b!1326886 d!143079))

(declare-fun d!143165 () Bool)

(declare-fun e!756412 () Bool)

(assert (=> d!143165 e!756412))

(declare-fun res!880776 () Bool)

(assert (=> d!143165 (=> (not res!880776) (not e!756412))))

(declare-fun lt!590583 () ListLongMap!21371)

(assert (=> d!143165 (= res!880776 (contains!8796 lt!590583 (_1!11861 (tuple2!23703 lt!590421 zeroValue!1279))))))

(declare-fun lt!590581 () List!30866)

(assert (=> d!143165 (= lt!590583 (ListLongMap!21372 lt!590581))))

(declare-fun lt!590580 () Unit!43647)

(declare-fun lt!590582 () Unit!43647)

(assert (=> d!143165 (= lt!590580 lt!590582)))

(assert (=> d!143165 (= (getValueByKey!716 lt!590581 (_1!11861 (tuple2!23703 lt!590421 zeroValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590421 zeroValue!1279))))))

(assert (=> d!143165 (= lt!590582 (lemmaContainsTupThenGetReturnValue!359 lt!590581 (_1!11861 (tuple2!23703 lt!590421 zeroValue!1279)) (_2!11861 (tuple2!23703 lt!590421 zeroValue!1279))))))

(assert (=> d!143165 (= lt!590581 (insertStrictlySorted!488 (toList!10701 lt!590426) (_1!11861 (tuple2!23703 lt!590421 zeroValue!1279)) (_2!11861 (tuple2!23703 lt!590421 zeroValue!1279))))))

(assert (=> d!143165 (= (+!4616 lt!590426 (tuple2!23703 lt!590421 zeroValue!1279)) lt!590583)))

(declare-fun b!1327083 () Bool)

(declare-fun res!880777 () Bool)

(assert (=> b!1327083 (=> (not res!880777) (not e!756412))))

(assert (=> b!1327083 (= res!880777 (= (getValueByKey!716 (toList!10701 lt!590583) (_1!11861 (tuple2!23703 lt!590421 zeroValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590421 zeroValue!1279)))))))

(declare-fun b!1327084 () Bool)

(assert (=> b!1327084 (= e!756412 (contains!8799 (toList!10701 lt!590583) (tuple2!23703 lt!590421 zeroValue!1279)))))

(assert (= (and d!143165 res!880776) b!1327083))

(assert (= (and b!1327083 res!880777) b!1327084))

(declare-fun m!1216451 () Bool)

(assert (=> d!143165 m!1216451))

(declare-fun m!1216453 () Bool)

(assert (=> d!143165 m!1216453))

(declare-fun m!1216455 () Bool)

(assert (=> d!143165 m!1216455))

(declare-fun m!1216457 () Bool)

(assert (=> d!143165 m!1216457))

(declare-fun m!1216459 () Bool)

(assert (=> b!1327083 m!1216459))

(declare-fun m!1216461 () Bool)

(assert (=> b!1327084 m!1216461))

(assert (=> b!1326886 d!143165))

(declare-fun d!143167 () Bool)

(declare-fun e!756413 () Bool)

(assert (=> d!143167 e!756413))

(declare-fun res!880778 () Bool)

(assert (=> d!143167 (=> (not res!880778) (not e!756413))))

(declare-fun lt!590587 () ListLongMap!21371)

(assert (=> d!143167 (= res!880778 (contains!8796 lt!590587 (_1!11861 (tuple2!23703 lt!590429 minValue!1279))))))

(declare-fun lt!590585 () List!30866)

(assert (=> d!143167 (= lt!590587 (ListLongMap!21372 lt!590585))))

(declare-fun lt!590584 () Unit!43647)

(declare-fun lt!590586 () Unit!43647)

(assert (=> d!143167 (= lt!590584 lt!590586)))

(assert (=> d!143167 (= (getValueByKey!716 lt!590585 (_1!11861 (tuple2!23703 lt!590429 minValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590429 minValue!1279))))))

(assert (=> d!143167 (= lt!590586 (lemmaContainsTupThenGetReturnValue!359 lt!590585 (_1!11861 (tuple2!23703 lt!590429 minValue!1279)) (_2!11861 (tuple2!23703 lt!590429 minValue!1279))))))

(assert (=> d!143167 (= lt!590585 (insertStrictlySorted!488 (toList!10701 lt!590438) (_1!11861 (tuple2!23703 lt!590429 minValue!1279)) (_2!11861 (tuple2!23703 lt!590429 minValue!1279))))))

(assert (=> d!143167 (= (+!4616 lt!590438 (tuple2!23703 lt!590429 minValue!1279)) lt!590587)))

(declare-fun b!1327085 () Bool)

(declare-fun res!880779 () Bool)

(assert (=> b!1327085 (=> (not res!880779) (not e!756413))))

(assert (=> b!1327085 (= res!880779 (= (getValueByKey!716 (toList!10701 lt!590587) (_1!11861 (tuple2!23703 lt!590429 minValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590429 minValue!1279)))))))

(declare-fun b!1327086 () Bool)

(assert (=> b!1327086 (= e!756413 (contains!8799 (toList!10701 lt!590587) (tuple2!23703 lt!590429 minValue!1279)))))

(assert (= (and d!143167 res!880778) b!1327085))

(assert (= (and b!1327085 res!880779) b!1327086))

(declare-fun m!1216463 () Bool)

(assert (=> d!143167 m!1216463))

(declare-fun m!1216465 () Bool)

(assert (=> d!143167 m!1216465))

(declare-fun m!1216467 () Bool)

(assert (=> d!143167 m!1216467))

(declare-fun m!1216469 () Bool)

(assert (=> d!143167 m!1216469))

(declare-fun m!1216471 () Bool)

(assert (=> b!1327085 m!1216471))

(declare-fun m!1216473 () Bool)

(assert (=> b!1327086 m!1216473))

(assert (=> b!1326886 d!143167))

(declare-fun d!143169 () Bool)

(assert (=> d!143169 (= (apply!1066 lt!590439 lt!590420) (get!21848 (getValueByKey!716 (toList!10701 lt!590439) lt!590420)))))

(declare-fun bs!37963 () Bool)

(assert (= bs!37963 d!143169))

(declare-fun m!1216475 () Bool)

(assert (=> bs!37963 m!1216475))

(assert (=> bs!37963 m!1216475))

(declare-fun m!1216477 () Bool)

(assert (=> bs!37963 m!1216477))

(assert (=> b!1326886 d!143169))

(declare-fun d!143171 () Bool)

(assert (=> d!143171 (= (apply!1066 (+!4616 lt!590438 (tuple2!23703 lt!590429 minValue!1279)) lt!590440) (get!21848 (getValueByKey!716 (toList!10701 (+!4616 lt!590438 (tuple2!23703 lt!590429 minValue!1279))) lt!590440)))))

(declare-fun bs!37964 () Bool)

(assert (= bs!37964 d!143171))

(declare-fun m!1216479 () Bool)

(assert (=> bs!37964 m!1216479))

(assert (=> bs!37964 m!1216479))

(declare-fun m!1216481 () Bool)

(assert (=> bs!37964 m!1216481))

(assert (=> b!1326886 d!143171))

(declare-fun d!143173 () Bool)

(declare-fun e!756414 () Bool)

(assert (=> d!143173 e!756414))

(declare-fun res!880780 () Bool)

(assert (=> d!143173 (=> (not res!880780) (not e!756414))))

(declare-fun lt!590591 () ListLongMap!21371)

(assert (=> d!143173 (= res!880780 (contains!8796 lt!590591 (_1!11861 (tuple2!23703 lt!590436 zeroValue!1279))))))

(declare-fun lt!590589 () List!30866)

(assert (=> d!143173 (= lt!590591 (ListLongMap!21372 lt!590589))))

(declare-fun lt!590588 () Unit!43647)

(declare-fun lt!590590 () Unit!43647)

(assert (=> d!143173 (= lt!590588 lt!590590)))

(assert (=> d!143173 (= (getValueByKey!716 lt!590589 (_1!11861 (tuple2!23703 lt!590436 zeroValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590436 zeroValue!1279))))))

(assert (=> d!143173 (= lt!590590 (lemmaContainsTupThenGetReturnValue!359 lt!590589 (_1!11861 (tuple2!23703 lt!590436 zeroValue!1279)) (_2!11861 (tuple2!23703 lt!590436 zeroValue!1279))))))

(assert (=> d!143173 (= lt!590589 (insertStrictlySorted!488 (toList!10701 lt!590439) (_1!11861 (tuple2!23703 lt!590436 zeroValue!1279)) (_2!11861 (tuple2!23703 lt!590436 zeroValue!1279))))))

(assert (=> d!143173 (= (+!4616 lt!590439 (tuple2!23703 lt!590436 zeroValue!1279)) lt!590591)))

(declare-fun b!1327087 () Bool)

(declare-fun res!880781 () Bool)

(assert (=> b!1327087 (=> (not res!880781) (not e!756414))))

(assert (=> b!1327087 (= res!880781 (= (getValueByKey!716 (toList!10701 lt!590591) (_1!11861 (tuple2!23703 lt!590436 zeroValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590436 zeroValue!1279)))))))

(declare-fun b!1327088 () Bool)

(assert (=> b!1327088 (= e!756414 (contains!8799 (toList!10701 lt!590591) (tuple2!23703 lt!590436 zeroValue!1279)))))

(assert (= (and d!143173 res!880780) b!1327087))

(assert (= (and b!1327087 res!880781) b!1327088))

(declare-fun m!1216483 () Bool)

(assert (=> d!143173 m!1216483))

(declare-fun m!1216485 () Bool)

(assert (=> d!143173 m!1216485))

(declare-fun m!1216487 () Bool)

(assert (=> d!143173 m!1216487))

(declare-fun m!1216489 () Bool)

(assert (=> d!143173 m!1216489))

(declare-fun m!1216491 () Bool)

(assert (=> b!1327087 m!1216491))

(declare-fun m!1216493 () Bool)

(assert (=> b!1327088 m!1216493))

(assert (=> b!1326886 d!143173))

(declare-fun d!143175 () Bool)

(declare-fun e!756415 () Bool)

(assert (=> d!143175 e!756415))

(declare-fun res!880782 () Bool)

(assert (=> d!143175 (=> (not res!880782) (not e!756415))))

(declare-fun lt!590595 () ListLongMap!21371)

(assert (=> d!143175 (= res!880782 (contains!8796 lt!590595 (_1!11861 (tuple2!23703 lt!590431 minValue!1279))))))

(declare-fun lt!590593 () List!30866)

(assert (=> d!143175 (= lt!590595 (ListLongMap!21372 lt!590593))))

(declare-fun lt!590592 () Unit!43647)

(declare-fun lt!590594 () Unit!43647)

(assert (=> d!143175 (= lt!590592 lt!590594)))

(assert (=> d!143175 (= (getValueByKey!716 lt!590593 (_1!11861 (tuple2!23703 lt!590431 minValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590431 minValue!1279))))))

(assert (=> d!143175 (= lt!590594 (lemmaContainsTupThenGetReturnValue!359 lt!590593 (_1!11861 (tuple2!23703 lt!590431 minValue!1279)) (_2!11861 (tuple2!23703 lt!590431 minValue!1279))))))

(assert (=> d!143175 (= lt!590593 (insertStrictlySorted!488 (toList!10701 lt!590425) (_1!11861 (tuple2!23703 lt!590431 minValue!1279)) (_2!11861 (tuple2!23703 lt!590431 minValue!1279))))))

(assert (=> d!143175 (= (+!4616 lt!590425 (tuple2!23703 lt!590431 minValue!1279)) lt!590595)))

(declare-fun b!1327089 () Bool)

(declare-fun res!880783 () Bool)

(assert (=> b!1327089 (=> (not res!880783) (not e!756415))))

(assert (=> b!1327089 (= res!880783 (= (getValueByKey!716 (toList!10701 lt!590595) (_1!11861 (tuple2!23703 lt!590431 minValue!1279))) (Some!766 (_2!11861 (tuple2!23703 lt!590431 minValue!1279)))))))

(declare-fun b!1327090 () Bool)

(assert (=> b!1327090 (= e!756415 (contains!8799 (toList!10701 lt!590595) (tuple2!23703 lt!590431 minValue!1279)))))

(assert (= (and d!143175 res!880782) b!1327089))

(assert (= (and b!1327089 res!880783) b!1327090))

(declare-fun m!1216495 () Bool)

(assert (=> d!143175 m!1216495))

(declare-fun m!1216497 () Bool)

(assert (=> d!143175 m!1216497))

(declare-fun m!1216499 () Bool)

(assert (=> d!143175 m!1216499))

(declare-fun m!1216501 () Bool)

(assert (=> d!143175 m!1216501))

(declare-fun m!1216503 () Bool)

(assert (=> b!1327089 m!1216503))

(declare-fun m!1216505 () Bool)

(assert (=> b!1327090 m!1216505))

(assert (=> b!1326886 d!143175))

(declare-fun d!143177 () Bool)

(assert (=> d!143177 (= (apply!1066 (+!4616 lt!590425 (tuple2!23703 lt!590431 minValue!1279)) lt!590430) (get!21848 (getValueByKey!716 (toList!10701 (+!4616 lt!590425 (tuple2!23703 lt!590431 minValue!1279))) lt!590430)))))

(declare-fun bs!37965 () Bool)

(assert (= bs!37965 d!143177))

(declare-fun m!1216507 () Bool)

(assert (=> bs!37965 m!1216507))

(assert (=> bs!37965 m!1216507))

(declare-fun m!1216509 () Bool)

(assert (=> bs!37965 m!1216509))

(assert (=> b!1326886 d!143177))

(declare-fun d!143179 () Bool)

(assert (=> d!143179 (= (apply!1066 (+!4616 lt!590439 (tuple2!23703 lt!590436 zeroValue!1279)) lt!590420) (apply!1066 lt!590439 lt!590420))))

(declare-fun lt!590596 () Unit!43647)

(assert (=> d!143179 (= lt!590596 (choose!1963 lt!590439 lt!590436 zeroValue!1279 lt!590420))))

(declare-fun e!756416 () Bool)

(assert (=> d!143179 e!756416))

(declare-fun res!880784 () Bool)

(assert (=> d!143179 (=> (not res!880784) (not e!756416))))

(assert (=> d!143179 (= res!880784 (contains!8796 lt!590439 lt!590420))))

(assert (=> d!143179 (= (addApplyDifferent!569 lt!590439 lt!590436 zeroValue!1279 lt!590420) lt!590596)))

(declare-fun b!1327091 () Bool)

(assert (=> b!1327091 (= e!756416 (not (= lt!590420 lt!590436)))))

(assert (= (and d!143179 res!880784) b!1327091))

(assert (=> d!143179 m!1216055))

(assert (=> d!143179 m!1216057))

(declare-fun m!1216511 () Bool)

(assert (=> d!143179 m!1216511))

(assert (=> d!143179 m!1216069))

(assert (=> d!143179 m!1216055))

(declare-fun m!1216513 () Bool)

(assert (=> d!143179 m!1216513))

(assert (=> b!1326886 d!143179))

(declare-fun d!143181 () Bool)

(assert (=> d!143181 (= (apply!1066 lt!590425 lt!590430) (get!21848 (getValueByKey!716 (toList!10701 lt!590425) lt!590430)))))

(declare-fun bs!37966 () Bool)

(assert (= bs!37966 d!143181))

(declare-fun m!1216515 () Bool)

(assert (=> bs!37966 m!1216515))

(assert (=> bs!37966 m!1216515))

(declare-fun m!1216517 () Bool)

(assert (=> bs!37966 m!1216517))

(assert (=> b!1326886 d!143181))

(declare-fun d!143183 () Bool)

(assert (=> d!143183 (= (apply!1066 (+!4616 lt!590425 (tuple2!23703 lt!590431 minValue!1279)) lt!590430) (apply!1066 lt!590425 lt!590430))))

(declare-fun lt!590597 () Unit!43647)

(assert (=> d!143183 (= lt!590597 (choose!1963 lt!590425 lt!590431 minValue!1279 lt!590430))))

(declare-fun e!756417 () Bool)

(assert (=> d!143183 e!756417))

(declare-fun res!880785 () Bool)

(assert (=> d!143183 (=> (not res!880785) (not e!756417))))

(assert (=> d!143183 (= res!880785 (contains!8796 lt!590425 lt!590430))))

(assert (=> d!143183 (= (addApplyDifferent!569 lt!590425 lt!590431 minValue!1279 lt!590430) lt!590597)))

(declare-fun b!1327092 () Bool)

(assert (=> b!1327092 (= e!756417 (not (= lt!590430 lt!590431)))))

(assert (= (and d!143183 res!880785) b!1327092))

(assert (=> d!143183 m!1216065))

(assert (=> d!143183 m!1216067))

(declare-fun m!1216519 () Bool)

(assert (=> d!143183 m!1216519))

(assert (=> d!143183 m!1216083))

(assert (=> d!143183 m!1216065))

(declare-fun m!1216521 () Bool)

(assert (=> d!143183 m!1216521))

(assert (=> b!1326886 d!143183))

(declare-fun d!143185 () Bool)

(assert (=> d!143185 (= (apply!1066 (+!4616 lt!590438 (tuple2!23703 lt!590429 minValue!1279)) lt!590440) (apply!1066 lt!590438 lt!590440))))

(declare-fun lt!590598 () Unit!43647)

(assert (=> d!143185 (= lt!590598 (choose!1963 lt!590438 lt!590429 minValue!1279 lt!590440))))

(declare-fun e!756418 () Bool)

(assert (=> d!143185 e!756418))

(declare-fun res!880786 () Bool)

(assert (=> d!143185 (=> (not res!880786) (not e!756418))))

(assert (=> d!143185 (= res!880786 (contains!8796 lt!590438 lt!590440))))

(assert (=> d!143185 (= (addApplyDifferent!569 lt!590438 lt!590429 minValue!1279 lt!590440) lt!590598)))

(declare-fun b!1327093 () Bool)

(assert (=> b!1327093 (= e!756418 (not (= lt!590440 lt!590429)))))

(assert (= (and d!143185 res!880786) b!1327093))

(assert (=> d!143185 m!1216059))

(assert (=> d!143185 m!1216061))

(declare-fun m!1216523 () Bool)

(assert (=> d!143185 m!1216523))

(assert (=> d!143185 m!1216063))

(assert (=> d!143185 m!1216059))

(declare-fun m!1216525 () Bool)

(assert (=> d!143185 m!1216525))

(assert (=> b!1326886 d!143185))

(declare-fun d!143187 () Bool)

(declare-fun e!756420 () Bool)

(assert (=> d!143187 e!756420))

(declare-fun res!880787 () Bool)

(assert (=> d!143187 (=> res!880787 e!756420)))

(declare-fun lt!590601 () Bool)

(assert (=> d!143187 (= res!880787 (not lt!590601))))

(declare-fun lt!590602 () Bool)

(assert (=> d!143187 (= lt!590601 lt!590602)))

(declare-fun lt!590600 () Unit!43647)

(declare-fun e!756419 () Unit!43647)

(assert (=> d!143187 (= lt!590600 e!756419)))

(declare-fun c!125817 () Bool)

(assert (=> d!143187 (= c!125817 lt!590602)))

(assert (=> d!143187 (= lt!590602 (containsKey!734 (toList!10701 (+!4616 lt!590426 (tuple2!23703 lt!590421 zeroValue!1279))) lt!590435))))

(assert (=> d!143187 (= (contains!8796 (+!4616 lt!590426 (tuple2!23703 lt!590421 zeroValue!1279)) lt!590435) lt!590601)))

(declare-fun b!1327094 () Bool)

(declare-fun lt!590599 () Unit!43647)

(assert (=> b!1327094 (= e!756419 lt!590599)))

(assert (=> b!1327094 (= lt!590599 (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!10701 (+!4616 lt!590426 (tuple2!23703 lt!590421 zeroValue!1279))) lt!590435))))

(assert (=> b!1327094 (isDefined!519 (getValueByKey!716 (toList!10701 (+!4616 lt!590426 (tuple2!23703 lt!590421 zeroValue!1279))) lt!590435))))

(declare-fun b!1327095 () Bool)

(declare-fun Unit!43658 () Unit!43647)

(assert (=> b!1327095 (= e!756419 Unit!43658)))

(declare-fun b!1327096 () Bool)

(assert (=> b!1327096 (= e!756420 (isDefined!519 (getValueByKey!716 (toList!10701 (+!4616 lt!590426 (tuple2!23703 lt!590421 zeroValue!1279))) lt!590435)))))

(assert (= (and d!143187 c!125817) b!1327094))

(assert (= (and d!143187 (not c!125817)) b!1327095))

(assert (= (and d!143187 (not res!880787)) b!1327096))

(declare-fun m!1216527 () Bool)

(assert (=> d!143187 m!1216527))

(declare-fun m!1216529 () Bool)

(assert (=> b!1327094 m!1216529))

(declare-fun m!1216531 () Bool)

(assert (=> b!1327094 m!1216531))

(assert (=> b!1327094 m!1216531))

(declare-fun m!1216533 () Bool)

(assert (=> b!1327094 m!1216533))

(assert (=> b!1327096 m!1216531))

(assert (=> b!1327096 m!1216531))

(assert (=> b!1327096 m!1216533))

(assert (=> b!1326886 d!143187))

(declare-fun d!143189 () Bool)

(assert (=> d!143189 (= (apply!1066 lt!590438 lt!590440) (get!21848 (getValueByKey!716 (toList!10701 lt!590438) lt!590440)))))

(declare-fun bs!37967 () Bool)

(assert (= bs!37967 d!143189))

(declare-fun m!1216535 () Bool)

(assert (=> bs!37967 m!1216535))

(assert (=> bs!37967 m!1216535))

(declare-fun m!1216537 () Bool)

(assert (=> bs!37967 m!1216537))

(assert (=> b!1326886 d!143189))

(declare-fun b!1327097 () Bool)

(declare-fun e!756422 () Bool)

(declare-fun e!756423 () Bool)

(assert (=> b!1327097 (= e!756422 e!756423)))

(declare-fun c!125818 () Bool)

(assert (=> b!1327097 (= c!125818 (validKeyInArray!0 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!143191 () Bool)

(declare-fun res!880789 () Bool)

(assert (=> d!143191 (=> res!880789 e!756422)))

(assert (=> d!143191 (= res!880789 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!43810 _keys!1609)))))

(assert (=> d!143191 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1609 mask!2019) e!756422)))

(declare-fun b!1327098 () Bool)

(declare-fun e!756421 () Bool)

(assert (=> b!1327098 (= e!756423 e!756421)))

(declare-fun lt!590603 () (_ BitVec 64))

(assert (=> b!1327098 (= lt!590603 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!590604 () Unit!43647)

(assert (=> b!1327098 (= lt!590604 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1609 lt!590603 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1327098 (arrayContainsKey!0 _keys!1609 lt!590603 #b00000000000000000000000000000000)))

(declare-fun lt!590605 () Unit!43647)

(assert (=> b!1327098 (= lt!590605 lt!590604)))

(declare-fun res!880788 () Bool)

(assert (=> b!1327098 (= res!880788 (= (seekEntryOrOpen!0 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1609 mask!2019) (Found!10039 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1327098 (=> (not res!880788) (not e!756421))))

(declare-fun bm!64803 () Bool)

(declare-fun call!64806 () Bool)

(assert (=> bm!64803 (= call!64806 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1609 mask!2019))))

(declare-fun b!1327099 () Bool)

(assert (=> b!1327099 (= e!756421 call!64806)))

(declare-fun b!1327100 () Bool)

(assert (=> b!1327100 (= e!756423 call!64806)))

(assert (= (and d!143191 (not res!880789)) b!1327097))

(assert (= (and b!1327097 c!125818) b!1327098))

(assert (= (and b!1327097 (not c!125818)) b!1327100))

(assert (= (and b!1327098 res!880788) b!1327099))

(assert (= (or b!1327099 b!1327100) bm!64803))

(assert (=> b!1327097 m!1216307))

(assert (=> b!1327097 m!1216307))

(assert (=> b!1327097 m!1216311))

(assert (=> b!1327098 m!1216307))

(declare-fun m!1216539 () Bool)

(assert (=> b!1327098 m!1216539))

(declare-fun m!1216541 () Bool)

(assert (=> b!1327098 m!1216541))

(assert (=> b!1327098 m!1216307))

(declare-fun m!1216543 () Bool)

(assert (=> b!1327098 m!1216543))

(declare-fun m!1216545 () Bool)

(assert (=> bm!64803 m!1216545))

(assert (=> bm!64790 d!143191))

(declare-fun d!143193 () Bool)

(declare-fun e!756425 () Bool)

(assert (=> d!143193 e!756425))

(declare-fun res!880790 () Bool)

(assert (=> d!143193 (=> res!880790 e!756425)))

(declare-fun lt!590608 () Bool)

(assert (=> d!143193 (= res!880790 (not lt!590608))))

(declare-fun lt!590609 () Bool)

(assert (=> d!143193 (= lt!590608 lt!590609)))

(declare-fun lt!590607 () Unit!43647)

(declare-fun e!756424 () Unit!43647)

(assert (=> d!143193 (= lt!590607 e!756424)))

(declare-fun c!125819 () Bool)

(assert (=> d!143193 (= c!125819 lt!590609)))

(assert (=> d!143193 (= lt!590609 (containsKey!734 (toList!10701 lt!590469) (select (arr!43259 _keys!1609) from!2000)))))

(assert (=> d!143193 (= (contains!8796 lt!590469 (select (arr!43259 _keys!1609) from!2000)) lt!590608)))

(declare-fun b!1327101 () Bool)

(declare-fun lt!590606 () Unit!43647)

(assert (=> b!1327101 (= e!756424 lt!590606)))

(assert (=> b!1327101 (= lt!590606 (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!10701 lt!590469) (select (arr!43259 _keys!1609) from!2000)))))

(assert (=> b!1327101 (isDefined!519 (getValueByKey!716 (toList!10701 lt!590469) (select (arr!43259 _keys!1609) from!2000)))))

(declare-fun b!1327102 () Bool)

(declare-fun Unit!43659 () Unit!43647)

(assert (=> b!1327102 (= e!756424 Unit!43659)))

(declare-fun b!1327103 () Bool)

(assert (=> b!1327103 (= e!756425 (isDefined!519 (getValueByKey!716 (toList!10701 lt!590469) (select (arr!43259 _keys!1609) from!2000))))))

(assert (= (and d!143193 c!125819) b!1327101))

(assert (= (and d!143193 (not c!125819)) b!1327102))

(assert (= (and d!143193 (not res!880790)) b!1327103))

(assert (=> d!143193 m!1215993))

(declare-fun m!1216547 () Bool)

(assert (=> d!143193 m!1216547))

(assert (=> b!1327101 m!1215993))

(declare-fun m!1216549 () Bool)

(assert (=> b!1327101 m!1216549))

(assert (=> b!1327101 m!1215993))

(assert (=> b!1327101 m!1216199))

(assert (=> b!1327101 m!1216199))

(declare-fun m!1216551 () Bool)

(assert (=> b!1327101 m!1216551))

(assert (=> b!1327103 m!1215993))

(assert (=> b!1327103 m!1216199))

(assert (=> b!1327103 m!1216199))

(assert (=> b!1327103 m!1216551))

(assert (=> b!1326937 d!143193))

(declare-fun d!143195 () Bool)

(assert (=> d!143195 (= (isDefined!519 (getValueByKey!716 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164)) (not (isEmpty!1083 (getValueByKey!716 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))))

(declare-fun bs!37968 () Bool)

(assert (= bs!37968 d!143195))

(assert (=> bs!37968 m!1216121))

(declare-fun m!1216553 () Bool)

(assert (=> bs!37968 m!1216553))

(assert (=> b!1326923 d!143195))

(declare-fun b!1327106 () Bool)

(declare-fun e!756427 () Option!767)

(assert (=> b!1327106 (= e!756427 (getValueByKey!716 (t!44877 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))) k0!1164))))

(declare-fun b!1327107 () Bool)

(assert (=> b!1327107 (= e!756427 None!765)))

(declare-fun b!1327105 () Bool)

(declare-fun e!756426 () Option!767)

(assert (=> b!1327105 (= e!756426 e!756427)))

(declare-fun c!125821 () Bool)

(assert (=> b!1327105 (= c!125821 (and ((_ is Cons!30862) (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))) (not (= (_1!11861 (h!32071 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)))) k0!1164))))))

(declare-fun c!125820 () Bool)

(declare-fun d!143197 () Bool)

(assert (=> d!143197 (= c!125820 (and ((_ is Cons!30862) (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))) (= (_1!11861 (h!32071 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)))) k0!1164)))))

(assert (=> d!143197 (= (getValueByKey!716 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164) e!756426)))

(declare-fun b!1327104 () Bool)

(assert (=> b!1327104 (= e!756426 (Some!766 (_2!11861 (h!32071 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))))))

(assert (= (and d!143197 c!125820) b!1327104))

(assert (= (and d!143197 (not c!125820)) b!1327105))

(assert (= (and b!1327105 c!125821) b!1327106))

(assert (= (and b!1327105 (not c!125821)) b!1327107))

(declare-fun m!1216555 () Bool)

(assert (=> b!1327106 m!1216555))

(assert (=> b!1326923 d!143197))

(assert (=> d!143061 d!143069))

(assert (=> b!1326885 d!143107))

(declare-fun d!143199 () Bool)

(assert (=> d!143199 (arrayContainsKey!0 _keys!1609 lt!590448 #b00000000000000000000000000000000)))

(declare-fun lt!590612 () Unit!43647)

(declare-fun choose!13 (array!89583 (_ BitVec 64) (_ BitVec 32)) Unit!43647)

(assert (=> d!143199 (= lt!590612 (choose!13 _keys!1609 lt!590448 #b00000000000000000000000000000000))))

(assert (=> d!143199 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!143199 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1609 lt!590448 #b00000000000000000000000000000000) lt!590612)))

(declare-fun bs!37969 () Bool)

(assert (= bs!37969 d!143199))

(assert (=> bs!37969 m!1216111))

(declare-fun m!1216557 () Bool)

(assert (=> bs!37969 m!1216557))

(assert (=> b!1326918 d!143199))

(declare-fun d!143201 () Bool)

(declare-fun res!880795 () Bool)

(declare-fun e!756432 () Bool)

(assert (=> d!143201 (=> res!880795 e!756432)))

(assert (=> d!143201 (= res!880795 (= (select (arr!43259 _keys!1609) #b00000000000000000000000000000000) lt!590448))))

(assert (=> d!143201 (= (arrayContainsKey!0 _keys!1609 lt!590448 #b00000000000000000000000000000000) e!756432)))

(declare-fun b!1327112 () Bool)

(declare-fun e!756433 () Bool)

(assert (=> b!1327112 (= e!756432 e!756433)))

(declare-fun res!880796 () Bool)

(assert (=> b!1327112 (=> (not res!880796) (not e!756433))))

(assert (=> b!1327112 (= res!880796 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!43810 _keys!1609)))))

(declare-fun b!1327113 () Bool)

(assert (=> b!1327113 (= e!756433 (arrayContainsKey!0 _keys!1609 lt!590448 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!143201 (not res!880795)) b!1327112))

(assert (= (and b!1327112 res!880796) b!1327113))

(assert (=> d!143201 m!1216101))

(declare-fun m!1216559 () Bool)

(assert (=> b!1327113 m!1216559))

(assert (=> b!1326918 d!143201))

(declare-fun b!1327126 () Bool)

(declare-fun e!756440 () SeekEntryResult!10039)

(declare-fun lt!590621 () SeekEntryResult!10039)

(assert (=> b!1327126 (= e!756440 (MissingZero!10039 (index!42528 lt!590621)))))

(declare-fun b!1327127 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!89583 (_ BitVec 32)) SeekEntryResult!10039)

(assert (=> b!1327127 (= e!756440 (seekKeyOrZeroReturnVacant!0 (x!118303 lt!590621) (index!42528 lt!590621) (index!42528 lt!590621) (select (arr!43259 _keys!1609) #b00000000000000000000000000000000) _keys!1609 mask!2019))))

(declare-fun b!1327128 () Bool)

(declare-fun e!756441 () SeekEntryResult!10039)

(assert (=> b!1327128 (= e!756441 (Found!10039 (index!42528 lt!590621)))))

(declare-fun b!1327129 () Bool)

(declare-fun c!125829 () Bool)

(declare-fun lt!590620 () (_ BitVec 64))

(assert (=> b!1327129 (= c!125829 (= lt!590620 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1327129 (= e!756441 e!756440)))

(declare-fun d!143203 () Bool)

(declare-fun lt!590619 () SeekEntryResult!10039)

(assert (=> d!143203 (and (or ((_ is Undefined!10039) lt!590619) (not ((_ is Found!10039) lt!590619)) (and (bvsge (index!42527 lt!590619) #b00000000000000000000000000000000) (bvslt (index!42527 lt!590619) (size!43810 _keys!1609)))) (or ((_ is Undefined!10039) lt!590619) ((_ is Found!10039) lt!590619) (not ((_ is MissingZero!10039) lt!590619)) (and (bvsge (index!42526 lt!590619) #b00000000000000000000000000000000) (bvslt (index!42526 lt!590619) (size!43810 _keys!1609)))) (or ((_ is Undefined!10039) lt!590619) ((_ is Found!10039) lt!590619) ((_ is MissingZero!10039) lt!590619) (not ((_ is MissingVacant!10039) lt!590619)) (and (bvsge (index!42529 lt!590619) #b00000000000000000000000000000000) (bvslt (index!42529 lt!590619) (size!43810 _keys!1609)))) (or ((_ is Undefined!10039) lt!590619) (ite ((_ is Found!10039) lt!590619) (= (select (arr!43259 _keys!1609) (index!42527 lt!590619)) (select (arr!43259 _keys!1609) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10039) lt!590619) (= (select (arr!43259 _keys!1609) (index!42526 lt!590619)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10039) lt!590619) (= (select (arr!43259 _keys!1609) (index!42529 lt!590619)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!756442 () SeekEntryResult!10039)

(assert (=> d!143203 (= lt!590619 e!756442)))

(declare-fun c!125830 () Bool)

(assert (=> d!143203 (= c!125830 (and ((_ is Intermediate!10039) lt!590621) (undefined!10851 lt!590621)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!89583 (_ BitVec 32)) SeekEntryResult!10039)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!143203 (= lt!590621 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000) mask!2019) (select (arr!43259 _keys!1609) #b00000000000000000000000000000000) _keys!1609 mask!2019))))

(assert (=> d!143203 (validMask!0 mask!2019)))

(assert (=> d!143203 (= (seekEntryOrOpen!0 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000) _keys!1609 mask!2019) lt!590619)))

(declare-fun b!1327130 () Bool)

(assert (=> b!1327130 (= e!756442 Undefined!10039)))

(declare-fun b!1327131 () Bool)

(assert (=> b!1327131 (= e!756442 e!756441)))

(assert (=> b!1327131 (= lt!590620 (select (arr!43259 _keys!1609) (index!42528 lt!590621)))))

(declare-fun c!125828 () Bool)

(assert (=> b!1327131 (= c!125828 (= lt!590620 (select (arr!43259 _keys!1609) #b00000000000000000000000000000000)))))

(assert (= (and d!143203 c!125830) b!1327130))

(assert (= (and d!143203 (not c!125830)) b!1327131))

(assert (= (and b!1327131 c!125828) b!1327128))

(assert (= (and b!1327131 (not c!125828)) b!1327129))

(assert (= (and b!1327129 c!125829) b!1327126))

(assert (= (and b!1327129 (not c!125829)) b!1327127))

(assert (=> b!1327127 m!1216101))

(declare-fun m!1216561 () Bool)

(assert (=> b!1327127 m!1216561))

(declare-fun m!1216563 () Bool)

(assert (=> d!143203 m!1216563))

(assert (=> d!143203 m!1216101))

(declare-fun m!1216565 () Bool)

(assert (=> d!143203 m!1216565))

(declare-fun m!1216567 () Bool)

(assert (=> d!143203 m!1216567))

(declare-fun m!1216569 () Bool)

(assert (=> d!143203 m!1216569))

(assert (=> d!143203 m!1215997))

(declare-fun m!1216571 () Bool)

(assert (=> d!143203 m!1216571))

(assert (=> d!143203 m!1216101))

(assert (=> d!143203 m!1216563))

(declare-fun m!1216573 () Bool)

(assert (=> b!1327131 m!1216573))

(assert (=> b!1326918 d!143203))

(declare-fun d!143205 () Bool)

(declare-fun e!756444 () Bool)

(assert (=> d!143205 e!756444))

(declare-fun res!880797 () Bool)

(assert (=> d!143205 (=> res!880797 e!756444)))

(declare-fun lt!590624 () Bool)

(assert (=> d!143205 (= res!880797 (not lt!590624))))

(declare-fun lt!590625 () Bool)

(assert (=> d!143205 (= lt!590624 lt!590625)))

(declare-fun lt!590623 () Unit!43647)

(declare-fun e!756443 () Unit!43647)

(assert (=> d!143205 (= lt!590623 e!756443)))

(declare-fun c!125831 () Bool)

(assert (=> d!143205 (= c!125831 lt!590625)))

(assert (=> d!143205 (= lt!590625 (containsKey!734 (toList!10701 lt!590434) (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (=> d!143205 (= (contains!8796 lt!590434 (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))) lt!590624)))

(declare-fun b!1327132 () Bool)

(declare-fun lt!590622 () Unit!43647)

(assert (=> b!1327132 (= e!756443 lt!590622)))

(assert (=> b!1327132 (= lt!590622 (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!10701 lt!590434) (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (=> b!1327132 (isDefined!519 (getValueByKey!716 (toList!10701 lt!590434) (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(declare-fun b!1327133 () Bool)

(declare-fun Unit!43660 () Unit!43647)

(assert (=> b!1327133 (= e!756443 Unit!43660)))

(declare-fun b!1327134 () Bool)

(assert (=> b!1327134 (= e!756444 (isDefined!519 (getValueByKey!716 (toList!10701 lt!590434) (select (arr!43259 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))))

(assert (= (and d!143205 c!125831) b!1327132))

(assert (= (and d!143205 (not c!125831)) b!1327133))

(assert (= (and d!143205 (not res!880797)) b!1327134))

(assert (=> d!143205 m!1216049))

(declare-fun m!1216575 () Bool)

(assert (=> d!143205 m!1216575))

(assert (=> b!1327132 m!1216049))

(declare-fun m!1216577 () Bool)

(assert (=> b!1327132 m!1216577))

(assert (=> b!1327132 m!1216049))

(assert (=> b!1327132 m!1216211))

(assert (=> b!1327132 m!1216211))

(declare-fun m!1216579 () Bool)

(assert (=> b!1327132 m!1216579))

(assert (=> b!1327134 m!1216049))

(assert (=> b!1327134 m!1216211))

(assert (=> b!1327134 m!1216211))

(assert (=> b!1327134 m!1216579))

(assert (=> b!1326884 d!143205))

(assert (=> b!1326917 d!143113))

(declare-fun d!143207 () Bool)

(assert (=> d!143207 (isDefined!519 (getValueByKey!716 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(declare-fun lt!590626 () Unit!43647)

(assert (=> d!143207 (= lt!590626 (choose!1961 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(declare-fun e!756445 () Bool)

(assert (=> d!143207 e!756445))

(declare-fun res!880798 () Bool)

(assert (=> d!143207 (=> (not res!880798) (not e!756445))))

(assert (=> d!143207 (= res!880798 (isStrictlySorted!874 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))))

(assert (=> d!143207 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!479 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164) lt!590626)))

(declare-fun b!1327135 () Bool)

(assert (=> b!1327135 (= e!756445 (containsKey!734 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(assert (= (and d!143207 res!880798) b!1327135))

(assert (=> d!143207 m!1216121))

(assert (=> d!143207 m!1216121))

(assert (=> d!143207 m!1216123))

(declare-fun m!1216581 () Bool)

(assert (=> d!143207 m!1216581))

(declare-fun m!1216583 () Bool)

(assert (=> d!143207 m!1216583))

(assert (=> b!1327135 m!1216117))

(assert (=> b!1326921 d!143207))

(assert (=> b!1326921 d!143195))

(assert (=> b!1326921 d!143197))

(declare-fun d!143209 () Bool)

(declare-fun res!880799 () Bool)

(declare-fun e!756446 () Bool)

(assert (=> d!143209 (=> res!880799 e!756446)))

(assert (=> d!143209 (= res!880799 (and ((_ is Cons!30862) (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))) (= (_1!11861 (h!32071 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)))) k0!1164)))))

(assert (=> d!143209 (= (containsKey!734 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164) e!756446)))

(declare-fun b!1327136 () Bool)

(declare-fun e!756447 () Bool)

(assert (=> b!1327136 (= e!756446 e!756447)))

(declare-fun res!880800 () Bool)

(assert (=> b!1327136 (=> (not res!880800) (not e!756447))))

(assert (=> b!1327136 (= res!880800 (and (or (not ((_ is Cons!30862) (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)))) (bvsle (_1!11861 (h!32071 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)))) k0!1164)) ((_ is Cons!30862) (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))) (bvslt (_1!11861 (h!32071 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)))) k0!1164)))))

(declare-fun b!1327137 () Bool)

(assert (=> b!1327137 (= e!756447 (containsKey!734 (t!44877 (toList!10701 (getCurrentListMap!5633 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))) k0!1164))))

(assert (= (and d!143209 (not res!880799)) b!1327136))

(assert (= (and b!1327136 res!880800) b!1327137))

(declare-fun m!1216585 () Bool)

(assert (=> b!1327137 m!1216585))

(assert (=> d!143059 d!143209))

(assert (=> bm!64793 d!143141))

(declare-fun b!1327139 () Bool)

(declare-fun e!756449 () Bool)

(assert (=> b!1327139 (= e!756449 tp_is_empty!36357)))

(declare-fun mapIsEmpty!56197 () Bool)

(declare-fun mapRes!56197 () Bool)

(assert (=> mapIsEmpty!56197 mapRes!56197))

(declare-fun condMapEmpty!56197 () Bool)

(declare-fun mapDefault!56197 () ValueCell!17280)

(assert (=> mapNonEmpty!56196 (= condMapEmpty!56197 (= mapRest!56196 ((as const (Array (_ BitVec 32) ValueCell!17280)) mapDefault!56197)))))

(assert (=> mapNonEmpty!56196 (= tp!107104 (and e!756449 mapRes!56197))))

(declare-fun mapNonEmpty!56197 () Bool)

(declare-fun tp!107105 () Bool)

(declare-fun e!756448 () Bool)

(assert (=> mapNonEmpty!56197 (= mapRes!56197 (and tp!107105 e!756448))))

(declare-fun mapKey!56197 () (_ BitVec 32))

(declare-fun mapRest!56197 () (Array (_ BitVec 32) ValueCell!17280))

(declare-fun mapValue!56197 () ValueCell!17280)

(assert (=> mapNonEmpty!56197 (= mapRest!56196 (store mapRest!56197 mapKey!56197 mapValue!56197))))

(declare-fun b!1327138 () Bool)

(assert (=> b!1327138 (= e!756448 tp_is_empty!36357)))

(assert (= (and mapNonEmpty!56196 condMapEmpty!56197) mapIsEmpty!56197))

(assert (= (and mapNonEmpty!56196 (not condMapEmpty!56197)) mapNonEmpty!56197))

(assert (= (and mapNonEmpty!56197 ((_ is ValueCellFull!17280) mapValue!56197)) b!1327138))

(assert (= (and mapNonEmpty!56196 ((_ is ValueCellFull!17280) mapDefault!56197)) b!1327139))

(declare-fun m!1216587 () Bool)

(assert (=> mapNonEmpty!56197 m!1216587))

(declare-fun b_lambda!23857 () Bool)

(assert (= b_lambda!23849 (or (and start!112000 b_free!30537) b_lambda!23857)))

(declare-fun b_lambda!23859 () Bool)

(assert (= b_lambda!23855 (or (and start!112000 b_free!30537) b_lambda!23859)))

(declare-fun b_lambda!23861 () Bool)

(assert (= b_lambda!23853 (or (and start!112000 b_free!30537) b_lambda!23861)))

(declare-fun b_lambda!23863 () Bool)

(assert (= b_lambda!23851 (or (and start!112000 b_free!30537) b_lambda!23863)))

(check-sat (not b!1327077) (not d!143205) (not b!1326985) (not d!143181) (not b!1326986) (not d!143179) (not b!1327078) (not d!143103) (not b_lambda!23859) (not b!1327103) (not d!143159) (not d!143183) (not d!143173) (not bm!64803) (not b!1327058) (not b!1327098) (not d!143185) (not d!143207) (not d!143081) (not b!1327036) (not b!1327106) (not b_next!30537) (not d!143149) (not mapNonEmpty!56197) (not d!143165) (not b!1327053) (not b!1327080) (not b!1327127) (not b!1326977) (not b!1327046) (not d!143097) (not d!143199) (not d!143167) (not b!1327137) (not d!143193) (not d!143111) (not b_lambda!23863) (not b!1327054) (not b!1327056) (not b!1327134) (not b!1326982) (not b!1327028) (not d!143163) (not b!1327067) (not b!1326984) (not b!1327071) (not d!143169) (not d!143133) (not b!1326983) (not b!1326993) (not b!1327023) (not d!143203) (not b!1327135) (not b!1327087) (not d!143155) (not d!143157) (not b!1327081) (not d!143091) (not d!143129) (not b!1327034) (not d!143153) (not d!143087) (not b!1327132) (not d!143127) (not d!143195) (not d!143119) (not b!1327052) (not d!143139) (not d!143147) (not b!1326987) (not b!1327026) (not d!143189) (not b!1327043) (not b!1326994) (not b!1327070) (not b!1327035) (not b!1327101) (not b!1327044) (not b!1327060) (not d!143121) (not d!143085) (not b!1327084) (not b!1327083) (not b!1327059) (not b!1327019) (not b!1327069) (not d!143135) b_and!49199 (not d!143175) (not b!1327085) (not d!143137) (not d!143105) (not b!1327113) (not b!1327033) (not b!1327020) (not b_lambda!23857) (not b!1327013) (not d!143115) (not b!1327072) (not b!1327025) (not b!1327089) (not b!1327030) (not bm!64801) (not b!1327090) (not b!1327041) (not bm!64802) (not b!1327031) (not d!143187) (not b!1327061) (not b!1327024) (not d!143125) (not d!143131) (not d!143151) (not d!143079) (not b_lambda!23847) (not d!143161) (not d!143101) (not b!1327040) (not d!143109) (not b!1327002) (not b!1326988) (not b!1327038) (not b!1327027) (not d!143171) (not b!1327088) (not b!1327097) (not d!143177) (not d!143117) (not d!143145) (not b!1327068) (not b!1327094) (not b!1326996) (not d!143143) (not b!1327096) (not d!143141) (not b!1326995) (not b_lambda!23861) tp_is_empty!36357 (not b_lambda!23845) (not b!1327066) (not d!143095) (not b!1327086) (not bm!64800))
(check-sat b_and!49199 (not b_next!30537))
