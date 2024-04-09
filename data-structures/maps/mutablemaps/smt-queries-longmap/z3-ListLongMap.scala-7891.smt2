; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98128 () Bool)

(assert start!98128)

(declare-fun b_free!23793 () Bool)

(declare-fun b_next!23793 () Bool)

(assert (=> start!98128 (= b_free!23793 (not b_next!23793))))

(declare-fun tp!84083 () Bool)

(declare-fun b_and!38391 () Bool)

(assert (=> start!98128 (= tp!84083 b_and!38391)))

(declare-fun b!1126768 () Bool)

(declare-fun e!641388 () Bool)

(declare-fun e!641385 () Bool)

(assert (=> b!1126768 (= e!641388 e!641385)))

(declare-fun res!753031 () Bool)

(assert (=> b!1126768 (=> res!753031 e!641385)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1126768 (= res!753031 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42891 0))(
  ( (V!42892 (val!14218 Int)) )
))
(declare-fun zeroValue!944 () V!42891)

(declare-datatypes ((ValueCell!13452 0))(
  ( (ValueCellFull!13452 (v!16852 V!42891)) (EmptyCell!13452) )
))
(declare-datatypes ((array!73468 0))(
  ( (array!73469 (arr!35383 (Array (_ BitVec 32) ValueCell!13452)) (size!35920 (_ BitVec 32))) )
))
(declare-fun lt!500340 () array!73468)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!17968 0))(
  ( (tuple2!17969 (_1!8994 (_ BitVec 64)) (_2!8994 V!42891)) )
))
(declare-datatypes ((List!24795 0))(
  ( (Nil!24792) (Cons!24791 (h!26000 tuple2!17968) (t!35587 List!24795)) )
))
(declare-datatypes ((ListLongMap!15949 0))(
  ( (ListLongMap!15950 (toList!7990 List!24795)) )
))
(declare-fun lt!500338 () ListLongMap!15949)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!73470 0))(
  ( (array!73471 (arr!35384 (Array (_ BitVec 32) (_ BitVec 64))) (size!35921 (_ BitVec 32))) )
))
(declare-fun lt!500335 () array!73470)

(declare-fun minValue!944 () V!42891)

(declare-fun getCurrentListMapNoExtraKeys!4449 (array!73470 array!73468 (_ BitVec 32) (_ BitVec 32) V!42891 V!42891 (_ BitVec 32) Int) ListLongMap!15949)

(assert (=> b!1126768 (= lt!500338 (getCurrentListMapNoExtraKeys!4449 lt!500335 lt!500340 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73468)

(declare-fun dynLambda!2529 (Int (_ BitVec 64)) V!42891)

(assert (=> b!1126768 (= lt!500340 (array!73469 (store (arr!35383 _values!996) i!673 (ValueCellFull!13452 (dynLambda!2529 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35920 _values!996)))))

(declare-fun _keys!1208 () array!73470)

(declare-fun lt!500336 () ListLongMap!15949)

(assert (=> b!1126768 (= lt!500336 (getCurrentListMapNoExtraKeys!4449 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1126769 () Bool)

(declare-fun e!641392 () Bool)

(assert (=> b!1126769 (= e!641385 e!641392)))

(declare-fun res!753030 () Bool)

(assert (=> b!1126769 (=> res!753030 e!641392)))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1126769 (= res!753030 (not (= (select (arr!35384 _keys!1208) from!1455) k0!934)))))

(declare-fun e!641389 () Bool)

(assert (=> b!1126769 e!641389))

(declare-fun c!109640 () Bool)

(assert (=> b!1126769 (= c!109640 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36873 0))(
  ( (Unit!36874) )
))
(declare-fun lt!500337 () Unit!36873)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!385 (array!73470 array!73468 (_ BitVec 32) (_ BitVec 32) V!42891 V!42891 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36873)

(assert (=> b!1126769 (= lt!500337 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!385 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126770 () Bool)

(declare-fun res!753035 () Bool)

(declare-fun e!641387 () Bool)

(assert (=> b!1126770 (=> (not res!753035) (not e!641387))))

(declare-datatypes ((List!24796 0))(
  ( (Nil!24793) (Cons!24792 (h!26001 (_ BitVec 64)) (t!35588 List!24796)) )
))
(declare-fun arrayNoDuplicates!0 (array!73470 (_ BitVec 32) List!24796) Bool)

(assert (=> b!1126770 (= res!753035 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24793))))

(declare-fun b!1126771 () Bool)

(declare-fun res!753032 () Bool)

(assert (=> b!1126771 (=> (not res!753032) (not e!641387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73470 (_ BitVec 32)) Bool)

(assert (=> b!1126771 (= res!753032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1126772 () Bool)

(declare-fun res!753036 () Bool)

(assert (=> b!1126772 (=> (not res!753036) (not e!641387))))

(assert (=> b!1126772 (= res!753036 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35921 _keys!1208))))))

(declare-fun b!1126773 () Bool)

(assert (=> b!1126773 (= e!641392 true)))

(declare-fun lt!500334 () Bool)

(declare-fun contains!6497 (ListLongMap!15949 (_ BitVec 64)) Bool)

(assert (=> b!1126773 (= lt!500334 (contains!6497 (getCurrentListMapNoExtraKeys!4449 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun mapIsEmpty!44302 () Bool)

(declare-fun mapRes!44302 () Bool)

(assert (=> mapIsEmpty!44302 mapRes!44302))

(declare-fun b!1126774 () Bool)

(declare-fun res!753028 () Bool)

(assert (=> b!1126774 (=> (not res!753028) (not e!641387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1126774 (= res!753028 (validMask!0 mask!1564))))

(declare-fun b!1126775 () Bool)

(declare-fun e!641386 () Bool)

(declare-fun e!641384 () Bool)

(assert (=> b!1126775 (= e!641386 (and e!641384 mapRes!44302))))

(declare-fun condMapEmpty!44302 () Bool)

(declare-fun mapDefault!44302 () ValueCell!13452)

(assert (=> b!1126775 (= condMapEmpty!44302 (= (arr!35383 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13452)) mapDefault!44302)))))

(declare-fun bm!47659 () Bool)

(declare-fun call!47662 () ListLongMap!15949)

(assert (=> bm!47659 (= call!47662 (getCurrentListMapNoExtraKeys!4449 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126776 () Bool)

(declare-fun call!47663 () ListLongMap!15949)

(declare-fun -!1130 (ListLongMap!15949 (_ BitVec 64)) ListLongMap!15949)

(assert (=> b!1126776 (= e!641389 (= call!47663 (-!1130 call!47662 k0!934)))))

(declare-fun b!1126777 () Bool)

(assert (=> b!1126777 (= e!641389 (= call!47663 call!47662))))

(declare-fun bm!47660 () Bool)

(assert (=> bm!47660 (= call!47663 (getCurrentListMapNoExtraKeys!4449 lt!500335 lt!500340 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44302 () Bool)

(declare-fun tp!84084 () Bool)

(declare-fun e!641393 () Bool)

(assert (=> mapNonEmpty!44302 (= mapRes!44302 (and tp!84084 e!641393))))

(declare-fun mapKey!44302 () (_ BitVec 32))

(declare-fun mapValue!44302 () ValueCell!13452)

(declare-fun mapRest!44302 () (Array (_ BitVec 32) ValueCell!13452))

(assert (=> mapNonEmpty!44302 (= (arr!35383 _values!996) (store mapRest!44302 mapKey!44302 mapValue!44302))))

(declare-fun b!1126778 () Bool)

(declare-fun e!641390 () Bool)

(assert (=> b!1126778 (= e!641387 e!641390)))

(declare-fun res!753026 () Bool)

(assert (=> b!1126778 (=> (not res!753026) (not e!641390))))

(assert (=> b!1126778 (= res!753026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500335 mask!1564))))

(assert (=> b!1126778 (= lt!500335 (array!73471 (store (arr!35384 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35921 _keys!1208)))))

(declare-fun res!753027 () Bool)

(assert (=> start!98128 (=> (not res!753027) (not e!641387))))

(assert (=> start!98128 (= res!753027 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35921 _keys!1208))))))

(assert (=> start!98128 e!641387))

(declare-fun tp_is_empty!28323 () Bool)

(assert (=> start!98128 tp_is_empty!28323))

(declare-fun array_inv!27024 (array!73470) Bool)

(assert (=> start!98128 (array_inv!27024 _keys!1208)))

(assert (=> start!98128 true))

(assert (=> start!98128 tp!84083))

(declare-fun array_inv!27025 (array!73468) Bool)

(assert (=> start!98128 (and (array_inv!27025 _values!996) e!641386)))

(declare-fun b!1126779 () Bool)

(assert (=> b!1126779 (= e!641390 (not e!641388))))

(declare-fun res!753033 () Bool)

(assert (=> b!1126779 (=> res!753033 e!641388)))

(assert (=> b!1126779 (= res!753033 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1126779 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!500339 () Unit!36873)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73470 (_ BitVec 64) (_ BitVec 32)) Unit!36873)

(assert (=> b!1126779 (= lt!500339 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1126780 () Bool)

(assert (=> b!1126780 (= e!641384 tp_is_empty!28323)))

(declare-fun b!1126781 () Bool)

(declare-fun res!753034 () Bool)

(assert (=> b!1126781 (=> (not res!753034) (not e!641387))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1126781 (= res!753034 (validKeyInArray!0 k0!934))))

(declare-fun b!1126782 () Bool)

(declare-fun res!753025 () Bool)

(assert (=> b!1126782 (=> (not res!753025) (not e!641390))))

(assert (=> b!1126782 (= res!753025 (arrayNoDuplicates!0 lt!500335 #b00000000000000000000000000000000 Nil!24793))))

(declare-fun b!1126783 () Bool)

(declare-fun res!753029 () Bool)

(assert (=> b!1126783 (=> (not res!753029) (not e!641387))))

(assert (=> b!1126783 (= res!753029 (and (= (size!35920 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35921 _keys!1208) (size!35920 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1126784 () Bool)

(declare-fun res!753024 () Bool)

(assert (=> b!1126784 (=> (not res!753024) (not e!641387))))

(assert (=> b!1126784 (= res!753024 (= (select (arr!35384 _keys!1208) i!673) k0!934))))

(declare-fun b!1126785 () Bool)

(assert (=> b!1126785 (= e!641393 tp_is_empty!28323)))

(assert (= (and start!98128 res!753027) b!1126774))

(assert (= (and b!1126774 res!753028) b!1126783))

(assert (= (and b!1126783 res!753029) b!1126771))

(assert (= (and b!1126771 res!753032) b!1126770))

(assert (= (and b!1126770 res!753035) b!1126772))

(assert (= (and b!1126772 res!753036) b!1126781))

(assert (= (and b!1126781 res!753034) b!1126784))

(assert (= (and b!1126784 res!753024) b!1126778))

(assert (= (and b!1126778 res!753026) b!1126782))

(assert (= (and b!1126782 res!753025) b!1126779))

(assert (= (and b!1126779 (not res!753033)) b!1126768))

(assert (= (and b!1126768 (not res!753031)) b!1126769))

(assert (= (and b!1126769 c!109640) b!1126776))

(assert (= (and b!1126769 (not c!109640)) b!1126777))

(assert (= (or b!1126776 b!1126777) bm!47660))

(assert (= (or b!1126776 b!1126777) bm!47659))

(assert (= (and b!1126769 (not res!753030)) b!1126773))

(assert (= (and b!1126775 condMapEmpty!44302) mapIsEmpty!44302))

(assert (= (and b!1126775 (not condMapEmpty!44302)) mapNonEmpty!44302))

(get-info :version)

(assert (= (and mapNonEmpty!44302 ((_ is ValueCellFull!13452) mapValue!44302)) b!1126785))

(assert (= (and b!1126775 ((_ is ValueCellFull!13452) mapDefault!44302)) b!1126780))

(assert (= start!98128 b!1126775))

(declare-fun b_lambda!18797 () Bool)

(assert (=> (not b_lambda!18797) (not b!1126768)))

(declare-fun t!35586 () Bool)

(declare-fun tb!8613 () Bool)

(assert (=> (and start!98128 (= defaultEntry!1004 defaultEntry!1004) t!35586) tb!8613))

(declare-fun result!17779 () Bool)

(assert (=> tb!8613 (= result!17779 tp_is_empty!28323)))

(assert (=> b!1126768 t!35586))

(declare-fun b_and!38393 () Bool)

(assert (= b_and!38391 (and (=> t!35586 result!17779) b_and!38393)))

(declare-fun m!1040787 () Bool)

(assert (=> b!1126778 m!1040787))

(declare-fun m!1040789 () Bool)

(assert (=> b!1126778 m!1040789))

(declare-fun m!1040791 () Bool)

(assert (=> b!1126779 m!1040791))

(declare-fun m!1040793 () Bool)

(assert (=> b!1126779 m!1040793))

(declare-fun m!1040795 () Bool)

(assert (=> bm!47660 m!1040795))

(declare-fun m!1040797 () Bool)

(assert (=> b!1126782 m!1040797))

(declare-fun m!1040799 () Bool)

(assert (=> b!1126770 m!1040799))

(declare-fun m!1040801 () Bool)

(assert (=> b!1126768 m!1040801))

(declare-fun m!1040803 () Bool)

(assert (=> b!1126768 m!1040803))

(declare-fun m!1040805 () Bool)

(assert (=> b!1126768 m!1040805))

(declare-fun m!1040807 () Bool)

(assert (=> b!1126768 m!1040807))

(declare-fun m!1040809 () Bool)

(assert (=> b!1126774 m!1040809))

(declare-fun m!1040811 () Bool)

(assert (=> b!1126773 m!1040811))

(assert (=> b!1126773 m!1040811))

(declare-fun m!1040813 () Bool)

(assert (=> b!1126773 m!1040813))

(declare-fun m!1040815 () Bool)

(assert (=> mapNonEmpty!44302 m!1040815))

(declare-fun m!1040817 () Bool)

(assert (=> b!1126776 m!1040817))

(declare-fun m!1040819 () Bool)

(assert (=> b!1126781 m!1040819))

(assert (=> bm!47659 m!1040811))

(declare-fun m!1040821 () Bool)

(assert (=> b!1126784 m!1040821))

(declare-fun m!1040823 () Bool)

(assert (=> b!1126771 m!1040823))

(declare-fun m!1040825 () Bool)

(assert (=> b!1126769 m!1040825))

(declare-fun m!1040827 () Bool)

(assert (=> b!1126769 m!1040827))

(declare-fun m!1040829 () Bool)

(assert (=> start!98128 m!1040829))

(declare-fun m!1040831 () Bool)

(assert (=> start!98128 m!1040831))

(check-sat (not b!1126770) (not b!1126769) tp_is_empty!28323 (not b!1126768) (not b!1126781) (not bm!47659) (not b!1126773) (not b!1126774) (not b!1126782) (not bm!47660) (not b!1126776) (not b_next!23793) b_and!38393 (not b!1126771) (not mapNonEmpty!44302) (not b!1126778) (not b!1126779) (not start!98128) (not b_lambda!18797))
(check-sat b_and!38393 (not b_next!23793))
