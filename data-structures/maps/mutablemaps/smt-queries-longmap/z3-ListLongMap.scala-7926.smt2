; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98434 () Bool)

(assert start!98434)

(declare-fun b_free!24003 () Bool)

(declare-fun b_next!24003 () Bool)

(assert (=> start!98434 (= b_free!24003 (not b_next!24003))))

(declare-fun tp!84720 () Bool)

(declare-fun b_and!38869 () Bool)

(assert (=> start!98434 (= tp!84720 b_and!38869)))

(declare-fun b!1135298 () Bool)

(declare-fun e!646128 () Bool)

(assert (=> b!1135298 (= e!646128 true)))

(declare-fun lt!504657 () Bool)

(declare-datatypes ((List!24979 0))(
  ( (Nil!24976) (Cons!24975 (h!26184 (_ BitVec 64)) (t!35981 List!24979)) )
))
(declare-fun contains!6590 (List!24979 (_ BitVec 64)) Bool)

(assert (=> b!1135298 (= lt!504657 (contains!6590 Nil!24976 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1135299 () Bool)

(declare-datatypes ((Unit!37133 0))(
  ( (Unit!37134) )
))
(declare-fun e!646125 () Unit!37133)

(declare-fun lt!504659 () Unit!37133)

(assert (=> b!1135299 (= e!646125 lt!504659)))

(declare-fun call!49581 () Unit!37133)

(assert (=> b!1135299 (= lt!504659 call!49581)))

(declare-fun call!49582 () Bool)

(assert (=> b!1135299 call!49582))

(declare-fun b!1135300 () Bool)

(declare-fun res!757914 () Bool)

(declare-fun e!646129 () Bool)

(assert (=> b!1135300 (=> (not res!757914) (not e!646129))))

(declare-datatypes ((array!73888 0))(
  ( (array!73889 (arr!35591 (Array (_ BitVec 32) (_ BitVec 64))) (size!36128 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73888)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43171 0))(
  ( (V!43172 (val!14323 Int)) )
))
(declare-datatypes ((ValueCell!13557 0))(
  ( (ValueCellFull!13557 (v!16961 V!43171)) (EmptyCell!13557) )
))
(declare-datatypes ((array!73890 0))(
  ( (array!73891 (arr!35592 (Array (_ BitVec 32) ValueCell!13557)) (size!36129 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73890)

(assert (=> b!1135300 (= res!757914 (and (= (size!36129 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36128 _keys!1208) (size!36129 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!49574 () Bool)

(declare-fun call!49577 () Bool)

(assert (=> bm!49574 (= call!49582 call!49577)))

(declare-fun b!1135301 () Bool)

(declare-fun res!757911 () Bool)

(assert (=> b!1135301 (=> (not res!757911) (not e!646129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1135301 (= res!757911 (validMask!0 mask!1564))))

(declare-fun b!1135302 () Bool)

(declare-fun e!646127 () Bool)

(declare-fun e!646120 () Bool)

(assert (=> b!1135302 (= e!646127 e!646120)))

(declare-fun res!757915 () Bool)

(assert (=> b!1135302 (=> res!757915 e!646120)))

(declare-datatypes ((tuple2!18168 0))(
  ( (tuple2!18169 (_1!9094 (_ BitVec 64)) (_2!9094 V!43171)) )
))
(declare-datatypes ((List!24980 0))(
  ( (Nil!24977) (Cons!24976 (h!26185 tuple2!18168) (t!35982 List!24980)) )
))
(declare-datatypes ((ListLongMap!16149 0))(
  ( (ListLongMap!16150 (toList!8090 List!24980)) )
))
(declare-fun lt!504669 () ListLongMap!16149)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6591 (ListLongMap!16149 (_ BitVec 64)) Bool)

(assert (=> b!1135302 (= res!757915 (not (contains!6591 lt!504669 k0!934)))))

(declare-fun zeroValue!944 () V!43171)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43171)

(declare-fun getCurrentListMapNoExtraKeys!4538 (array!73888 array!73890 (_ BitVec 32) (_ BitVec 32) V!43171 V!43171 (_ BitVec 32) Int) ListLongMap!16149)

(assert (=> b!1135302 (= lt!504669 (getCurrentListMapNoExtraKeys!4538 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49575 () Bool)

(declare-fun c!110875 () Bool)

(declare-fun c!110874 () Bool)

(declare-fun call!49583 () Unit!37133)

(declare-fun lt!504655 () ListLongMap!16149)

(declare-fun addStillContains!745 (ListLongMap!16149 (_ BitVec 64) V!43171 (_ BitVec 64)) Unit!37133)

(assert (=> bm!49575 (= call!49583 (addStillContains!745 (ite c!110875 lt!504655 lt!504669) (ite c!110875 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110874 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110875 minValue!944 (ite c!110874 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1135303 () Bool)

(declare-fun res!757924 () Bool)

(assert (=> b!1135303 (=> (not res!757924) (not e!646129))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1135303 (= res!757924 (= (select (arr!35591 _keys!1208) i!673) k0!934))))

(declare-fun b!1135304 () Bool)

(declare-fun e!646124 () Bool)

(declare-fun tp_is_empty!28533 () Bool)

(assert (=> b!1135304 (= e!646124 tp_is_empty!28533)))

(declare-fun e!646118 () Bool)

(declare-fun call!49579 () ListLongMap!16149)

(declare-fun call!49578 () ListLongMap!16149)

(declare-fun b!1135305 () Bool)

(declare-fun -!1203 (ListLongMap!16149 (_ BitVec 64)) ListLongMap!16149)

(assert (=> b!1135305 (= e!646118 (= call!49579 (-!1203 call!49578 k0!934)))))

(declare-fun b!1135306 () Bool)

(declare-fun e!646123 () Unit!37133)

(declare-fun lt!504666 () Unit!37133)

(assert (=> b!1135306 (= e!646123 lt!504666)))

(declare-fun lt!504664 () Unit!37133)

(assert (=> b!1135306 (= lt!504664 (addStillContains!745 lt!504669 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun +!3446 (ListLongMap!16149 tuple2!18168) ListLongMap!16149)

(assert (=> b!1135306 (= lt!504655 (+!3446 lt!504669 (tuple2!18169 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1135306 call!49577))

(assert (=> b!1135306 (= lt!504666 call!49583)))

(declare-fun call!49584 () ListLongMap!16149)

(assert (=> b!1135306 (contains!6591 call!49584 k0!934)))

(declare-fun mapNonEmpty!44624 () Bool)

(declare-fun mapRes!44624 () Bool)

(declare-fun tp!84721 () Bool)

(assert (=> mapNonEmpty!44624 (= mapRes!44624 (and tp!84721 e!646124))))

(declare-fun mapKey!44624 () (_ BitVec 32))

(declare-fun mapRest!44624 () (Array (_ BitVec 32) ValueCell!13557))

(declare-fun mapValue!44624 () ValueCell!13557)

(assert (=> mapNonEmpty!44624 (= (arr!35592 _values!996) (store mapRest!44624 mapKey!44624 mapValue!44624))))

(declare-fun b!1135308 () Bool)

(assert (=> b!1135308 (= e!646118 (= call!49579 call!49578))))

(declare-fun call!49580 () ListLongMap!16149)

(declare-fun bm!49576 () Bool)

(assert (=> bm!49576 (= call!49577 (contains!6591 (ite c!110875 lt!504655 call!49580) k0!934))))

(declare-fun bm!49577 () Bool)

(assert (=> bm!49577 (= call!49581 call!49583)))

(declare-fun b!1135309 () Bool)

(declare-fun res!757923 () Bool)

(assert (=> b!1135309 (=> (not res!757923) (not e!646129))))

(declare-fun arrayNoDuplicates!0 (array!73888 (_ BitVec 32) List!24979) Bool)

(assert (=> b!1135309 (= res!757923 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24976))))

(declare-fun b!1135310 () Bool)

(declare-fun Unit!37135 () Unit!37133)

(assert (=> b!1135310 (= e!646125 Unit!37135)))

(declare-fun bm!49578 () Bool)

(assert (=> bm!49578 (= call!49578 (getCurrentListMapNoExtraKeys!4538 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135311 () Bool)

(assert (=> b!1135311 call!49582))

(declare-fun lt!504654 () Unit!37133)

(assert (=> b!1135311 (= lt!504654 call!49581)))

(declare-fun e!646131 () Unit!37133)

(assert (=> b!1135311 (= e!646131 lt!504654)))

(declare-fun mapIsEmpty!44624 () Bool)

(assert (=> mapIsEmpty!44624 mapRes!44624))

(declare-fun b!1135312 () Bool)

(declare-fun res!757916 () Bool)

(declare-fun e!646115 () Bool)

(assert (=> b!1135312 (=> (not res!757916) (not e!646115))))

(declare-fun lt!504660 () array!73888)

(assert (=> b!1135312 (= res!757916 (arrayNoDuplicates!0 lt!504660 #b00000000000000000000000000000000 Nil!24976))))

(declare-fun b!1135313 () Bool)

(declare-fun e!646116 () Bool)

(declare-fun e!646130 () Bool)

(assert (=> b!1135313 (= e!646116 e!646130)))

(declare-fun res!757925 () Bool)

(assert (=> b!1135313 (=> res!757925 e!646130)))

(assert (=> b!1135313 (= res!757925 (not (= from!1455 i!673)))))

(declare-fun lt!504658 () ListLongMap!16149)

(declare-fun lt!504663 () array!73890)

(assert (=> b!1135313 (= lt!504658 (getCurrentListMapNoExtraKeys!4538 lt!504660 lt!504663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2605 (Int (_ BitVec 64)) V!43171)

(assert (=> b!1135313 (= lt!504663 (array!73891 (store (arr!35592 _values!996) i!673 (ValueCellFull!13557 (dynLambda!2605 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36129 _values!996)))))

(declare-fun lt!504665 () ListLongMap!16149)

(assert (=> b!1135313 (= lt!504665 (getCurrentListMapNoExtraKeys!4538 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!49579 () Bool)

(assert (=> bm!49579 (= call!49584 (+!3446 (ite c!110875 lt!504655 lt!504669) (ite c!110875 (tuple2!18169 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110874 (tuple2!18169 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18169 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lt!504662 () Bool)

(declare-fun b!1135314 () Bool)

(declare-fun e!646117 () Bool)

(assert (=> b!1135314 (= e!646117 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504662) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1135315 () Bool)

(declare-fun res!757926 () Bool)

(assert (=> b!1135315 (=> (not res!757926) (not e!646129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73888 (_ BitVec 32)) Bool)

(assert (=> b!1135315 (= res!757926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1135316 () Bool)

(declare-fun res!757918 () Bool)

(assert (=> b!1135316 (=> (not res!757918) (not e!646129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1135316 (= res!757918 (validKeyInArray!0 k0!934))))

(declare-fun b!1135317 () Bool)

(declare-fun c!110873 () Bool)

(assert (=> b!1135317 (= c!110873 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!504662))))

(assert (=> b!1135317 (= e!646131 e!646125)))

(declare-fun b!1135318 () Bool)

(assert (=> b!1135318 (= e!646120 e!646128)))

(declare-fun res!757928 () Bool)

(assert (=> b!1135318 (=> res!757928 e!646128)))

(assert (=> b!1135318 (= res!757928 (or (bvsge (size!36128 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36128 _keys!1208)) (bvsge from!1455 (size!36128 _keys!1208))))))

(assert (=> b!1135318 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24976)))

(declare-fun lt!504667 () Unit!37133)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73888 (_ BitVec 32) (_ BitVec 32)) Unit!37133)

(assert (=> b!1135318 (= lt!504667 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!646126 () Bool)

(assert (=> b!1135318 e!646126))

(declare-fun res!757920 () Bool)

(assert (=> b!1135318 (=> (not res!757920) (not e!646126))))

(assert (=> b!1135318 (= res!757920 e!646117)))

(declare-fun c!110876 () Bool)

(assert (=> b!1135318 (= c!110876 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!504668 () Unit!37133)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!354 (array!73888 array!73890 (_ BitVec 32) (_ BitVec 32) V!43171 V!43171 (_ BitVec 64) (_ BitVec 32) Int) Unit!37133)

(assert (=> b!1135318 (= lt!504668 (lemmaListMapContainsThenArrayContainsFrom!354 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504661 () Unit!37133)

(assert (=> b!1135318 (= lt!504661 e!646123)))

(assert (=> b!1135318 (= c!110875 (and (not lt!504662) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1135318 (= lt!504662 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!49580 () Bool)

(assert (=> bm!49580 (= call!49580 call!49584)))

(declare-fun b!1135319 () Bool)

(declare-fun res!757919 () Bool)

(assert (=> b!1135319 (=> res!757919 e!646128)))

(declare-fun noDuplicate!1614 (List!24979) Bool)

(assert (=> b!1135319 (= res!757919 (not (noDuplicate!1614 Nil!24976)))))

(declare-fun b!1135320 () Bool)

(declare-fun res!757921 () Bool)

(assert (=> b!1135320 (=> res!757921 e!646128)))

(assert (=> b!1135320 (= res!757921 (contains!6590 Nil!24976 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1135321 () Bool)

(declare-fun res!757927 () Bool)

(assert (=> b!1135321 (=> (not res!757927) (not e!646129))))

(assert (=> b!1135321 (= res!757927 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36128 _keys!1208))))))

(declare-fun b!1135322 () Bool)

(assert (=> b!1135322 (= e!646130 e!646127)))

(declare-fun res!757912 () Bool)

(assert (=> b!1135322 (=> res!757912 e!646127)))

(assert (=> b!1135322 (= res!757912 (not (= (select (arr!35591 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1135322 e!646118))

(declare-fun c!110877 () Bool)

(assert (=> b!1135322 (= c!110877 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!504653 () Unit!37133)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!459 (array!73888 array!73890 (_ BitVec 32) (_ BitVec 32) V!43171 V!43171 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37133)

(assert (=> b!1135322 (= lt!504653 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!459 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135323 () Bool)

(assert (=> b!1135323 (= e!646123 e!646131)))

(assert (=> b!1135323 (= c!110874 (and (not lt!504662) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1135324 () Bool)

(assert (=> b!1135324 (= e!646115 (not e!646116))))

(declare-fun res!757917 () Bool)

(assert (=> b!1135324 (=> res!757917 e!646116)))

(assert (=> b!1135324 (= res!757917 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1135324 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!504656 () Unit!37133)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73888 (_ BitVec 64) (_ BitVec 32)) Unit!37133)

(assert (=> b!1135324 (= lt!504656 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1135325 () Bool)

(assert (=> b!1135325 (= e!646117 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1135326 () Bool)

(assert (=> b!1135326 (= e!646126 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!49581 () Bool)

(assert (=> bm!49581 (= call!49579 (getCurrentListMapNoExtraKeys!4538 lt!504660 lt!504663 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135327 () Bool)

(declare-fun e!646121 () Bool)

(assert (=> b!1135327 (= e!646121 tp_is_empty!28533)))

(declare-fun b!1135328 () Bool)

(declare-fun e!646119 () Bool)

(assert (=> b!1135328 (= e!646119 (and e!646121 mapRes!44624))))

(declare-fun condMapEmpty!44624 () Bool)

(declare-fun mapDefault!44624 () ValueCell!13557)

(assert (=> b!1135328 (= condMapEmpty!44624 (= (arr!35592 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13557)) mapDefault!44624)))))

(declare-fun res!757913 () Bool)

(assert (=> start!98434 (=> (not res!757913) (not e!646129))))

(assert (=> start!98434 (= res!757913 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36128 _keys!1208))))))

(assert (=> start!98434 e!646129))

(assert (=> start!98434 tp_is_empty!28533))

(declare-fun array_inv!27164 (array!73888) Bool)

(assert (=> start!98434 (array_inv!27164 _keys!1208)))

(assert (=> start!98434 true))

(assert (=> start!98434 tp!84720))

(declare-fun array_inv!27165 (array!73890) Bool)

(assert (=> start!98434 (and (array_inv!27165 _values!996) e!646119)))

(declare-fun b!1135307 () Bool)

(assert (=> b!1135307 (= e!646129 e!646115)))

(declare-fun res!757922 () Bool)

(assert (=> b!1135307 (=> (not res!757922) (not e!646115))))

(assert (=> b!1135307 (= res!757922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504660 mask!1564))))

(assert (=> b!1135307 (= lt!504660 (array!73889 (store (arr!35591 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36128 _keys!1208)))))

(assert (= (and start!98434 res!757913) b!1135301))

(assert (= (and b!1135301 res!757911) b!1135300))

(assert (= (and b!1135300 res!757914) b!1135315))

(assert (= (and b!1135315 res!757926) b!1135309))

(assert (= (and b!1135309 res!757923) b!1135321))

(assert (= (and b!1135321 res!757927) b!1135316))

(assert (= (and b!1135316 res!757918) b!1135303))

(assert (= (and b!1135303 res!757924) b!1135307))

(assert (= (and b!1135307 res!757922) b!1135312))

(assert (= (and b!1135312 res!757916) b!1135324))

(assert (= (and b!1135324 (not res!757917)) b!1135313))

(assert (= (and b!1135313 (not res!757925)) b!1135322))

(assert (= (and b!1135322 c!110877) b!1135305))

(assert (= (and b!1135322 (not c!110877)) b!1135308))

(assert (= (or b!1135305 b!1135308) bm!49581))

(assert (= (or b!1135305 b!1135308) bm!49578))

(assert (= (and b!1135322 (not res!757912)) b!1135302))

(assert (= (and b!1135302 (not res!757915)) b!1135318))

(assert (= (and b!1135318 c!110875) b!1135306))

(assert (= (and b!1135318 (not c!110875)) b!1135323))

(assert (= (and b!1135323 c!110874) b!1135311))

(assert (= (and b!1135323 (not c!110874)) b!1135317))

(assert (= (and b!1135317 c!110873) b!1135299))

(assert (= (and b!1135317 (not c!110873)) b!1135310))

(assert (= (or b!1135311 b!1135299) bm!49577))

(assert (= (or b!1135311 b!1135299) bm!49580))

(assert (= (or b!1135311 b!1135299) bm!49574))

(assert (= (or b!1135306 bm!49574) bm!49576))

(assert (= (or b!1135306 bm!49577) bm!49575))

(assert (= (or b!1135306 bm!49580) bm!49579))

(assert (= (and b!1135318 c!110876) b!1135325))

(assert (= (and b!1135318 (not c!110876)) b!1135314))

(assert (= (and b!1135318 res!757920) b!1135326))

(assert (= (and b!1135318 (not res!757928)) b!1135319))

(assert (= (and b!1135319 (not res!757919)) b!1135320))

(assert (= (and b!1135320 (not res!757921)) b!1135298))

(assert (= (and b!1135328 condMapEmpty!44624) mapIsEmpty!44624))

(assert (= (and b!1135328 (not condMapEmpty!44624)) mapNonEmpty!44624))

(get-info :version)

(assert (= (and mapNonEmpty!44624 ((_ is ValueCellFull!13557) mapValue!44624)) b!1135304))

(assert (= (and b!1135328 ((_ is ValueCellFull!13557) mapDefault!44624)) b!1135327))

(assert (= start!98434 b!1135328))

(declare-fun b_lambda!19127 () Bool)

(assert (=> (not b_lambda!19127) (not b!1135313)))

(declare-fun t!35980 () Bool)

(declare-fun tb!8823 () Bool)

(assert (=> (and start!98434 (= defaultEntry!1004 defaultEntry!1004) t!35980) tb!8823))

(declare-fun result!18203 () Bool)

(assert (=> tb!8823 (= result!18203 tp_is_empty!28533)))

(assert (=> b!1135313 t!35980))

(declare-fun b_and!38871 () Bool)

(assert (= b_and!38869 (and (=> t!35980 result!18203) b_and!38871)))

(declare-fun m!1047939 () Bool)

(assert (=> b!1135306 m!1047939))

(declare-fun m!1047941 () Bool)

(assert (=> b!1135306 m!1047941))

(declare-fun m!1047943 () Bool)

(assert (=> b!1135306 m!1047943))

(declare-fun m!1047945 () Bool)

(assert (=> b!1135320 m!1047945))

(declare-fun m!1047947 () Bool)

(assert (=> bm!49579 m!1047947))

(declare-fun m!1047949 () Bool)

(assert (=> bm!49578 m!1047949))

(declare-fun m!1047951 () Bool)

(assert (=> bm!49576 m!1047951))

(declare-fun m!1047953 () Bool)

(assert (=> b!1135312 m!1047953))

(declare-fun m!1047955 () Bool)

(assert (=> b!1135326 m!1047955))

(declare-fun m!1047957 () Bool)

(assert (=> b!1135298 m!1047957))

(declare-fun m!1047959 () Bool)

(assert (=> b!1135322 m!1047959))

(declare-fun m!1047961 () Bool)

(assert (=> b!1135322 m!1047961))

(declare-fun m!1047963 () Bool)

(assert (=> mapNonEmpty!44624 m!1047963))

(declare-fun m!1047965 () Bool)

(assert (=> b!1135307 m!1047965))

(declare-fun m!1047967 () Bool)

(assert (=> b!1135307 m!1047967))

(declare-fun m!1047969 () Bool)

(assert (=> b!1135319 m!1047969))

(declare-fun m!1047971 () Bool)

(assert (=> bm!49575 m!1047971))

(declare-fun m!1047973 () Bool)

(assert (=> b!1135303 m!1047973))

(declare-fun m!1047975 () Bool)

(assert (=> start!98434 m!1047975))

(declare-fun m!1047977 () Bool)

(assert (=> start!98434 m!1047977))

(declare-fun m!1047979 () Bool)

(assert (=> b!1135313 m!1047979))

(declare-fun m!1047981 () Bool)

(assert (=> b!1135313 m!1047981))

(declare-fun m!1047983 () Bool)

(assert (=> b!1135313 m!1047983))

(declare-fun m!1047985 () Bool)

(assert (=> b!1135313 m!1047985))

(declare-fun m!1047987 () Bool)

(assert (=> b!1135301 m!1047987))

(declare-fun m!1047989 () Bool)

(assert (=> b!1135318 m!1047989))

(declare-fun m!1047991 () Bool)

(assert (=> b!1135318 m!1047991))

(declare-fun m!1047993 () Bool)

(assert (=> b!1135318 m!1047993))

(declare-fun m!1047995 () Bool)

(assert (=> b!1135324 m!1047995))

(declare-fun m!1047997 () Bool)

(assert (=> b!1135324 m!1047997))

(declare-fun m!1047999 () Bool)

(assert (=> bm!49581 m!1047999))

(declare-fun m!1048001 () Bool)

(assert (=> b!1135316 m!1048001))

(declare-fun m!1048003 () Bool)

(assert (=> b!1135315 m!1048003))

(assert (=> b!1135325 m!1047955))

(declare-fun m!1048005 () Bool)

(assert (=> b!1135309 m!1048005))

(declare-fun m!1048007 () Bool)

(assert (=> b!1135302 m!1048007))

(assert (=> b!1135302 m!1047949))

(declare-fun m!1048009 () Bool)

(assert (=> b!1135305 m!1048009))

(check-sat (not bm!49579) (not b!1135301) (not bm!49576) (not b!1135318) (not b!1135312) (not b!1135309) (not b!1135324) tp_is_empty!28533 (not b!1135325) (not b!1135298) (not bm!49578) (not b!1135307) (not b!1135306) (not b!1135313) b_and!38871 (not b!1135302) (not b!1135305) (not b_lambda!19127) (not b!1135322) (not b!1135315) (not bm!49575) (not b!1135316) (not b_next!24003) (not b!1135326) (not mapNonEmpty!44624) (not start!98434) (not b!1135319) (not b!1135320) (not bm!49581))
(check-sat b_and!38871 (not b_next!24003))
