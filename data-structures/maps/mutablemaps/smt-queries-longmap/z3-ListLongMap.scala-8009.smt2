; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98932 () Bool)

(assert start!98932)

(declare-fun b_free!24501 () Bool)

(declare-fun b_next!24501 () Bool)

(assert (=> start!98932 (= b_free!24501 (not b_next!24501))))

(declare-fun tp!86215 () Bool)

(declare-fun b_and!39865 () Bool)

(assert (=> start!98932 (= tp!86215 b_and!39865)))

(declare-fun bm!55550 () Bool)

(declare-datatypes ((Unit!38044 0))(
  ( (Unit!38045) )
))
(declare-fun call!55555 () Unit!38044)

(declare-fun call!55560 () Unit!38044)

(assert (=> bm!55550 (= call!55555 call!55560)))

(declare-fun mapIsEmpty!45371 () Bool)

(declare-fun mapRes!45371 () Bool)

(assert (=> mapIsEmpty!45371 mapRes!45371))

(declare-fun mapNonEmpty!45371 () Bool)

(declare-fun tp!86214 () Bool)

(declare-fun e!658571 () Bool)

(assert (=> mapNonEmpty!45371 (= mapRes!45371 (and tp!86214 e!658571))))

(declare-datatypes ((V!43835 0))(
  ( (V!43836 (val!14572 Int)) )
))
(declare-datatypes ((ValueCell!13806 0))(
  ( (ValueCellFull!13806 (v!17210 V!43835)) (EmptyCell!13806) )
))
(declare-fun mapValue!45371 () ValueCell!13806)

(declare-fun mapKey!45371 () (_ BitVec 32))

(declare-datatypes ((array!74852 0))(
  ( (array!74853 (arr!36073 (Array (_ BitVec 32) ValueCell!13806)) (size!36610 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74852)

(declare-fun mapRest!45371 () (Array (_ BitVec 32) ValueCell!13806))

(assert (=> mapNonEmpty!45371 (= (arr!36073 _values!996) (store mapRest!45371 mapKey!45371 mapValue!45371))))

(declare-datatypes ((array!74854 0))(
  ( (array!74855 (arr!36074 (Array (_ BitVec 32) (_ BitVec 64))) (size!36611 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74854)

(declare-fun e!658572 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1157994 () Bool)

(declare-fun arrayContainsKey!0 (array!74854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1157994 (= e!658572 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1157995 () Bool)

(declare-fun e!658570 () Bool)

(declare-fun e!658565 () Bool)

(assert (=> b!1157995 (= e!658570 e!658565)))

(declare-fun res!768996 () Bool)

(assert (=> b!1157995 (=> res!768996 e!658565)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1157995 (= res!768996 (not (= from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18614 0))(
  ( (tuple2!18615 (_1!9317 (_ BitVec 64)) (_2!9317 V!43835)) )
))
(declare-datatypes ((List!25393 0))(
  ( (Nil!25390) (Cons!25389 (h!26598 tuple2!18614) (t!36893 List!25393)) )
))
(declare-datatypes ((ListLongMap!16595 0))(
  ( (ListLongMap!16596 (toList!8313 List!25393)) )
))
(declare-fun lt!520217 () ListLongMap!16595)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43835)

(declare-fun lt!520220 () array!74852)

(declare-fun zeroValue!944 () V!43835)

(declare-fun lt!520215 () array!74854)

(declare-fun getCurrentListMapNoExtraKeys!4750 (array!74854 array!74852 (_ BitVec 32) (_ BitVec 32) V!43835 V!43835 (_ BitVec 32) Int) ListLongMap!16595)

(assert (=> b!1157995 (= lt!520217 (getCurrentListMapNoExtraKeys!4750 lt!520215 lt!520220 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!520221 () V!43835)

(assert (=> b!1157995 (= lt!520220 (array!74853 (store (arr!36073 _values!996) i!673 (ValueCellFull!13806 lt!520221)) (size!36610 _values!996)))))

(declare-fun dynLambda!2757 (Int (_ BitVec 64)) V!43835)

(assert (=> b!1157995 (= lt!520221 (dynLambda!2757 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!520225 () ListLongMap!16595)

(assert (=> b!1157995 (= lt!520225 (getCurrentListMapNoExtraKeys!4750 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1157996 () Bool)

(declare-fun call!55553 () ListLongMap!16595)

(declare-fun call!55559 () ListLongMap!16595)

(declare-fun e!658574 () Bool)

(declare-fun -!1387 (ListLongMap!16595 (_ BitVec 64)) ListLongMap!16595)

(assert (=> b!1157996 (= e!658574 (= call!55553 (-!1387 call!55559 k0!934)))))

(declare-fun e!658575 () Bool)

(declare-fun b!1157997 () Bool)

(assert (=> b!1157997 (= e!658575 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!55551 () Bool)

(assert (=> bm!55551 (= call!55559 (getCurrentListMapNoExtraKeys!4750 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!768994 () Bool)

(declare-fun e!658568 () Bool)

(assert (=> start!98932 (=> (not res!768994) (not e!658568))))

(assert (=> start!98932 (= res!768994 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36611 _keys!1208))))))

(assert (=> start!98932 e!658568))

(declare-fun tp_is_empty!29031 () Bool)

(assert (=> start!98932 tp_is_empty!29031))

(declare-fun array_inv!27474 (array!74854) Bool)

(assert (=> start!98932 (array_inv!27474 _keys!1208)))

(assert (=> start!98932 true))

(assert (=> start!98932 tp!86215))

(declare-fun e!658562 () Bool)

(declare-fun array_inv!27475 (array!74852) Bool)

(assert (=> start!98932 (and (array_inv!27475 _values!996) e!658562)))

(declare-fun b!1157998 () Bool)

(declare-fun res!768992 () Bool)

(assert (=> b!1157998 (=> (not res!768992) (not e!658568))))

(assert (=> b!1157998 (= res!768992 (= (select (arr!36074 _keys!1208) i!673) k0!934))))

(declare-fun b!1157999 () Bool)

(declare-fun res!768988 () Bool)

(assert (=> b!1157999 (=> (not res!768988) (not e!658568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74854 (_ BitVec 32)) Bool)

(assert (=> b!1157999 (= res!768988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!55552 () Bool)

(declare-fun call!55556 () Bool)

(declare-fun call!55557 () Bool)

(assert (=> bm!55552 (= call!55556 call!55557)))

(declare-fun b!1158000 () Bool)

(declare-fun e!658564 () Bool)

(assert (=> b!1158000 (= e!658568 e!658564)))

(declare-fun res!768990 () Bool)

(assert (=> b!1158000 (=> (not res!768990) (not e!658564))))

(assert (=> b!1158000 (= res!768990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!520215 mask!1564))))

(assert (=> b!1158000 (= lt!520215 (array!74855 (store (arr!36074 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36611 _keys!1208)))))

(declare-fun b!1158001 () Bool)

(declare-fun e!658573 () Unit!38044)

(declare-fun lt!520214 () Unit!38044)

(assert (=> b!1158001 (= e!658573 lt!520214)))

(assert (=> b!1158001 (= lt!520214 call!55555)))

(assert (=> b!1158001 call!55556))

(declare-fun b!1158002 () Bool)

(assert (=> b!1158002 call!55556))

(declare-fun lt!520222 () Unit!38044)

(assert (=> b!1158002 (= lt!520222 call!55555)))

(declare-fun e!658566 () Unit!38044)

(assert (=> b!1158002 (= e!658566 lt!520222)))

(declare-fun b!1158003 () Bool)

(assert (=> b!1158003 (= e!658573 e!658566)))

(declare-fun c!115317 () Bool)

(declare-fun lt!520228 () Bool)

(assert (=> b!1158003 (= c!115317 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!520228))))

(declare-fun b!1158004 () Bool)

(declare-fun res!768997 () Bool)

(assert (=> b!1158004 (=> (not res!768997) (not e!658568))))

(declare-datatypes ((List!25394 0))(
  ( (Nil!25391) (Cons!25390 (h!26599 (_ BitVec 64)) (t!36894 List!25394)) )
))
(declare-fun arrayNoDuplicates!0 (array!74854 (_ BitVec 32) List!25394) Bool)

(assert (=> b!1158004 (= res!768997 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25391))))

(declare-fun c!115315 () Bool)

(declare-fun lt!520219 () ListLongMap!16595)

(declare-fun bm!55553 () Bool)

(declare-fun c!115316 () Bool)

(declare-fun addStillContains!937 (ListLongMap!16595 (_ BitVec 64) V!43835 (_ BitVec 64)) Unit!38044)

(assert (=> bm!55553 (= call!55560 (addStillContains!937 lt!520219 (ite (or c!115316 c!115315) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115316 c!115315) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1158005 () Bool)

(declare-fun res!768991 () Bool)

(assert (=> b!1158005 (=> (not res!768991) (not e!658568))))

(assert (=> b!1158005 (= res!768991 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36611 _keys!1208))))))

(declare-fun call!55558 () ListLongMap!16595)

(declare-fun bm!55554 () Bool)

(declare-fun lt!520232 () ListLongMap!16595)

(declare-fun contains!6797 (ListLongMap!16595 (_ BitVec 64)) Bool)

(assert (=> bm!55554 (= call!55557 (contains!6797 (ite c!115316 lt!520232 call!55558) k0!934))))

(declare-fun b!1158006 () Bool)

(declare-fun e!658578 () Bool)

(assert (=> b!1158006 (= e!658578 true)))

(declare-fun e!658569 () Bool)

(assert (=> b!1158006 e!658569))

(declare-fun res!768995 () Bool)

(assert (=> b!1158006 (=> (not res!768995) (not e!658569))))

(declare-fun lt!520230 () ListLongMap!16595)

(assert (=> b!1158006 (= res!768995 (= lt!520230 lt!520219))))

(assert (=> b!1158006 (= lt!520230 (-!1387 lt!520225 k0!934))))

(declare-fun lt!520233 () V!43835)

(declare-fun +!3641 (ListLongMap!16595 tuple2!18614) ListLongMap!16595)

(assert (=> b!1158006 (= (-!1387 (+!3641 lt!520219 (tuple2!18615 (select (arr!36074 _keys!1208) from!1455) lt!520233)) (select (arr!36074 _keys!1208) from!1455)) lt!520219)))

(declare-fun lt!520231 () Unit!38044)

(declare-fun addThenRemoveForNewKeyIsSame!227 (ListLongMap!16595 (_ BitVec 64) V!43835) Unit!38044)

(assert (=> b!1158006 (= lt!520231 (addThenRemoveForNewKeyIsSame!227 lt!520219 (select (arr!36074 _keys!1208) from!1455) lt!520233))))

(declare-fun get!18415 (ValueCell!13806 V!43835) V!43835)

(assert (=> b!1158006 (= lt!520233 (get!18415 (select (arr!36073 _values!996) from!1455) lt!520221))))

(declare-fun lt!520223 () Unit!38044)

(declare-fun e!658577 () Unit!38044)

(assert (=> b!1158006 (= lt!520223 e!658577)))

(declare-fun c!115319 () Bool)

(assert (=> b!1158006 (= c!115319 (contains!6797 lt!520219 k0!934))))

(assert (=> b!1158006 (= lt!520219 (getCurrentListMapNoExtraKeys!4750 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158007 () Bool)

(assert (=> b!1158007 (= e!658569 (= lt!520230 (getCurrentListMapNoExtraKeys!4750 lt!520215 lt!520220 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1158008 () Bool)

(assert (=> b!1158008 (= e!658575 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!520228) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!55555 () Bool)

(assert (=> bm!55555 (= call!55553 (getCurrentListMapNoExtraKeys!4750 lt!520215 lt!520220 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!55554 () ListLongMap!16595)

(declare-fun bm!55556 () Bool)

(assert (=> bm!55556 (= call!55554 (+!3641 (ite c!115316 lt!520232 lt!520219) (ite c!115316 (tuple2!18615 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115315 (tuple2!18615 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18615 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1158009 () Bool)

(assert (=> b!1158009 (= c!115315 (and (not lt!520228) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!658567 () Unit!38044)

(assert (=> b!1158009 (= e!658567 e!658573)))

(declare-fun b!1158010 () Bool)

(assert (=> b!1158010 (= e!658571 tp_is_empty!29031)))

(declare-fun b!1158011 () Bool)

(declare-fun res!768985 () Bool)

(assert (=> b!1158011 (=> (not res!768985) (not e!658568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1158011 (= res!768985 (validMask!0 mask!1564))))

(declare-fun b!1158012 () Bool)

(declare-fun Unit!38046 () Unit!38044)

(assert (=> b!1158012 (= e!658566 Unit!38046)))

(declare-fun b!1158013 () Bool)

(assert (=> b!1158013 (= e!658574 (= call!55553 call!55559))))

(declare-fun b!1158014 () Bool)

(declare-fun res!768993 () Bool)

(assert (=> b!1158014 (=> (not res!768993) (not e!658568))))

(assert (=> b!1158014 (= res!768993 (and (= (size!36610 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36611 _keys!1208) (size!36610 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1158015 () Bool)

(declare-fun res!768987 () Bool)

(assert (=> b!1158015 (=> (not res!768987) (not e!658564))))

(assert (=> b!1158015 (= res!768987 (arrayNoDuplicates!0 lt!520215 #b00000000000000000000000000000000 Nil!25391))))

(declare-fun b!1158016 () Bool)

(assert (=> b!1158016 (= e!658565 e!658578)))

(declare-fun res!768998 () Bool)

(assert (=> b!1158016 (=> res!768998 e!658578)))

(assert (=> b!1158016 (= res!768998 (not (= (select (arr!36074 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1158016 e!658574))

(declare-fun c!115320 () Bool)

(assert (=> b!1158016 (= c!115320 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!520218 () Unit!38044)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!614 (array!74854 array!74852 (_ BitVec 32) (_ BitVec 32) V!43835 V!43835 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38044)

(assert (=> b!1158016 (= lt!520218 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!614 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55557 () Bool)

(assert (=> bm!55557 (= call!55558 call!55554)))

(declare-fun b!1158017 () Bool)

(declare-fun res!768986 () Bool)

(assert (=> b!1158017 (=> (not res!768986) (not e!658568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1158017 (= res!768986 (validKeyInArray!0 k0!934))))

(declare-fun b!1158018 () Bool)

(declare-fun e!658563 () Bool)

(assert (=> b!1158018 (= e!658563 tp_is_empty!29031)))

(declare-fun b!1158019 () Bool)

(assert (=> b!1158019 (= e!658562 (and e!658563 mapRes!45371))))

(declare-fun condMapEmpty!45371 () Bool)

(declare-fun mapDefault!45371 () ValueCell!13806)

(assert (=> b!1158019 (= condMapEmpty!45371 (= (arr!36073 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13806)) mapDefault!45371)))))

(declare-fun b!1158020 () Bool)

(declare-fun Unit!38047 () Unit!38044)

(assert (=> b!1158020 (= e!658577 Unit!38047)))

(declare-fun b!1158021 () Bool)

(assert (=> b!1158021 (= e!658564 (not e!658570))))

(declare-fun res!768989 () Bool)

(assert (=> b!1158021 (=> res!768989 e!658570)))

(assert (=> b!1158021 (= res!768989 (bvsgt from!1455 i!673))))

(assert (=> b!1158021 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!520226 () Unit!38044)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74854 (_ BitVec 64) (_ BitVec 32)) Unit!38044)

(assert (=> b!1158021 (= lt!520226 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1158022 () Bool)

(assert (=> b!1158022 (contains!6797 call!55554 k0!934)))

(declare-fun lt!520224 () Unit!38044)

(assert (=> b!1158022 (= lt!520224 (addStillContains!937 lt!520232 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1158022 call!55557))

(assert (=> b!1158022 (= lt!520232 (+!3641 lt!520219 (tuple2!18615 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!520216 () Unit!38044)

(assert (=> b!1158022 (= lt!520216 call!55560)))

(assert (=> b!1158022 (= e!658567 lt!520224)))

(declare-fun b!1158023 () Bool)

(declare-fun Unit!38048 () Unit!38044)

(assert (=> b!1158023 (= e!658577 Unit!38048)))

(assert (=> b!1158023 (= lt!520228 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1158023 (= c!115316 (and (not lt!520228) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!520213 () Unit!38044)

(assert (=> b!1158023 (= lt!520213 e!658567)))

(declare-fun lt!520227 () Unit!38044)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!513 (array!74854 array!74852 (_ BitVec 32) (_ BitVec 32) V!43835 V!43835 (_ BitVec 64) (_ BitVec 32) Int) Unit!38044)

(assert (=> b!1158023 (= lt!520227 (lemmaListMapContainsThenArrayContainsFrom!513 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115318 () Bool)

(assert (=> b!1158023 (= c!115318 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!768984 () Bool)

(assert (=> b!1158023 (= res!768984 e!658575)))

(assert (=> b!1158023 (=> (not res!768984) (not e!658572))))

(assert (=> b!1158023 e!658572))

(declare-fun lt!520212 () Unit!38044)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74854 (_ BitVec 32) (_ BitVec 32)) Unit!38044)

(assert (=> b!1158023 (= lt!520212 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1158023 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25391)))

(declare-fun lt!520229 () Unit!38044)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74854 (_ BitVec 64) (_ BitVec 32) List!25394) Unit!38044)

(assert (=> b!1158023 (= lt!520229 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25391))))

(assert (=> b!1158023 false))

(assert (= (and start!98932 res!768994) b!1158011))

(assert (= (and b!1158011 res!768985) b!1158014))

(assert (= (and b!1158014 res!768993) b!1157999))

(assert (= (and b!1157999 res!768988) b!1158004))

(assert (= (and b!1158004 res!768997) b!1158005))

(assert (= (and b!1158005 res!768991) b!1158017))

(assert (= (and b!1158017 res!768986) b!1157998))

(assert (= (and b!1157998 res!768992) b!1158000))

(assert (= (and b!1158000 res!768990) b!1158015))

(assert (= (and b!1158015 res!768987) b!1158021))

(assert (= (and b!1158021 (not res!768989)) b!1157995))

(assert (= (and b!1157995 (not res!768996)) b!1158016))

(assert (= (and b!1158016 c!115320) b!1157996))

(assert (= (and b!1158016 (not c!115320)) b!1158013))

(assert (= (or b!1157996 b!1158013) bm!55555))

(assert (= (or b!1157996 b!1158013) bm!55551))

(assert (= (and b!1158016 (not res!768998)) b!1158006))

(assert (= (and b!1158006 c!115319) b!1158023))

(assert (= (and b!1158006 (not c!115319)) b!1158020))

(assert (= (and b!1158023 c!115316) b!1158022))

(assert (= (and b!1158023 (not c!115316)) b!1158009))

(assert (= (and b!1158009 c!115315) b!1158001))

(assert (= (and b!1158009 (not c!115315)) b!1158003))

(assert (= (and b!1158003 c!115317) b!1158002))

(assert (= (and b!1158003 (not c!115317)) b!1158012))

(assert (= (or b!1158001 b!1158002) bm!55550))

(assert (= (or b!1158001 b!1158002) bm!55557))

(assert (= (or b!1158001 b!1158002) bm!55552))

(assert (= (or b!1158022 bm!55552) bm!55554))

(assert (= (or b!1158022 bm!55550) bm!55553))

(assert (= (or b!1158022 bm!55557) bm!55556))

(assert (= (and b!1158023 c!115318) b!1157997))

(assert (= (and b!1158023 (not c!115318)) b!1158008))

(assert (= (and b!1158023 res!768984) b!1157994))

(assert (= (and b!1158006 res!768995) b!1158007))

(assert (= (and b!1158019 condMapEmpty!45371) mapIsEmpty!45371))

(assert (= (and b!1158019 (not condMapEmpty!45371)) mapNonEmpty!45371))

(get-info :version)

(assert (= (and mapNonEmpty!45371 ((_ is ValueCellFull!13806) mapValue!45371)) b!1158010))

(assert (= (and b!1158019 ((_ is ValueCellFull!13806) mapDefault!45371)) b!1158018))

(assert (= start!98932 b!1158019))

(declare-fun b_lambda!19625 () Bool)

(assert (=> (not b_lambda!19625) (not b!1157995)))

(declare-fun t!36892 () Bool)

(declare-fun tb!9321 () Bool)

(assert (=> (and start!98932 (= defaultEntry!1004 defaultEntry!1004) t!36892) tb!9321))

(declare-fun result!19199 () Bool)

(assert (=> tb!9321 (= result!19199 tp_is_empty!29031)))

(assert (=> b!1157995 t!36892))

(declare-fun b_and!39867 () Bool)

(assert (= b_and!39865 (and (=> t!36892 result!19199) b_and!39867)))

(declare-fun m!1067303 () Bool)

(assert (=> mapNonEmpty!45371 m!1067303))

(declare-fun m!1067305 () Bool)

(assert (=> bm!55551 m!1067305))

(declare-fun m!1067307 () Bool)

(assert (=> b!1157996 m!1067307))

(declare-fun m!1067309 () Bool)

(assert (=> b!1157995 m!1067309))

(declare-fun m!1067311 () Bool)

(assert (=> b!1157995 m!1067311))

(declare-fun m!1067313 () Bool)

(assert (=> b!1157995 m!1067313))

(declare-fun m!1067315 () Bool)

(assert (=> b!1157995 m!1067315))

(declare-fun m!1067317 () Bool)

(assert (=> b!1157997 m!1067317))

(declare-fun m!1067319 () Bool)

(assert (=> start!98932 m!1067319))

(declare-fun m!1067321 () Bool)

(assert (=> start!98932 m!1067321))

(declare-fun m!1067323 () Bool)

(assert (=> b!1158000 m!1067323))

(declare-fun m!1067325 () Bool)

(assert (=> b!1158000 m!1067325))

(declare-fun m!1067327 () Bool)

(assert (=> b!1158022 m!1067327))

(declare-fun m!1067329 () Bool)

(assert (=> b!1158022 m!1067329))

(declare-fun m!1067331 () Bool)

(assert (=> b!1158022 m!1067331))

(declare-fun m!1067333 () Bool)

(assert (=> b!1158011 m!1067333))

(declare-fun m!1067335 () Bool)

(assert (=> b!1158016 m!1067335))

(declare-fun m!1067337 () Bool)

(assert (=> b!1158016 m!1067337))

(declare-fun m!1067339 () Bool)

(assert (=> b!1157998 m!1067339))

(assert (=> b!1157994 m!1067317))

(declare-fun m!1067341 () Bool)

(assert (=> bm!55556 m!1067341))

(declare-fun m!1067343 () Bool)

(assert (=> bm!55555 m!1067343))

(declare-fun m!1067345 () Bool)

(assert (=> b!1158021 m!1067345))

(declare-fun m!1067347 () Bool)

(assert (=> b!1158021 m!1067347))

(declare-fun m!1067349 () Bool)

(assert (=> bm!55554 m!1067349))

(declare-fun m!1067351 () Bool)

(assert (=> b!1158017 m!1067351))

(declare-fun m!1067353 () Bool)

(assert (=> b!1158015 m!1067353))

(assert (=> b!1158006 m!1067305))

(assert (=> b!1158006 m!1067335))

(declare-fun m!1067355 () Bool)

(assert (=> b!1158006 m!1067355))

(declare-fun m!1067357 () Bool)

(assert (=> b!1158006 m!1067357))

(declare-fun m!1067359 () Bool)

(assert (=> b!1158006 m!1067359))

(declare-fun m!1067361 () Bool)

(assert (=> b!1158006 m!1067361))

(declare-fun m!1067363 () Bool)

(assert (=> b!1158006 m!1067363))

(assert (=> b!1158006 m!1067363))

(assert (=> b!1158006 m!1067335))

(declare-fun m!1067365 () Bool)

(assert (=> b!1158006 m!1067365))

(assert (=> b!1158006 m!1067335))

(assert (=> b!1158006 m!1067359))

(declare-fun m!1067367 () Bool)

(assert (=> b!1158006 m!1067367))

(declare-fun m!1067369 () Bool)

(assert (=> bm!55553 m!1067369))

(declare-fun m!1067371 () Bool)

(assert (=> b!1158004 m!1067371))

(declare-fun m!1067373 () Bool)

(assert (=> b!1158023 m!1067373))

(declare-fun m!1067375 () Bool)

(assert (=> b!1158023 m!1067375))

(declare-fun m!1067377 () Bool)

(assert (=> b!1158023 m!1067377))

(declare-fun m!1067379 () Bool)

(assert (=> b!1158023 m!1067379))

(assert (=> b!1158007 m!1067343))

(declare-fun m!1067381 () Bool)

(assert (=> b!1157999 m!1067381))

(check-sat (not b!1158022) (not b_lambda!19625) (not b!1158011) (not b!1157996) (not b!1158007) (not bm!55553) (not bm!55551) (not bm!55554) (not bm!55555) (not bm!55556) (not b!1158000) tp_is_empty!29031 (not b!1157999) (not b_next!24501) (not start!98932) (not b!1158023) b_and!39867 (not b!1158017) (not b!1157995) (not b!1157997) (not b!1158015) (not mapNonEmpty!45371) (not b!1158016) (not b!1157994) (not b!1158006) (not b!1158004) (not b!1158021))
(check-sat b_and!39867 (not b_next!24501))
