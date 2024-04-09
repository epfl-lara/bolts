; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99364 () Bool)

(assert start!99364)

(declare-fun b_free!24907 () Bool)

(declare-fun b_next!24907 () Bool)

(assert (=> start!99364 (= b_free!24907 (not b_next!24907))))

(declare-fun tp!87436 () Bool)

(declare-fun b_and!40695 () Bool)

(assert (=> start!99364 (= tp!87436 b_and!40695)))

(declare-fun b!1170839 () Bool)

(declare-fun e!665530 () Bool)

(declare-fun e!665527 () Bool)

(assert (=> b!1170839 (= e!665530 e!665527)))

(declare-fun res!777214 () Bool)

(assert (=> b!1170839 (=> res!777214 e!665527)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1170839 (= res!777214 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44377 0))(
  ( (V!44378 (val!14775 Int)) )
))
(declare-fun zeroValue!944 () V!44377)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18964 0))(
  ( (tuple2!18965 (_1!9492 (_ BitVec 64)) (_2!9492 V!44377)) )
))
(declare-datatypes ((List!25734 0))(
  ( (Nil!25731) (Cons!25730 (h!26939 tuple2!18964) (t!37640 List!25734)) )
))
(declare-datatypes ((ListLongMap!16945 0))(
  ( (ListLongMap!16946 (toList!8488 List!25734)) )
))
(declare-fun lt!527342 () ListLongMap!16945)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14009 0))(
  ( (ValueCellFull!14009 (v!17414 V!44377)) (EmptyCell!14009) )
))
(declare-datatypes ((array!75650 0))(
  ( (array!75651 (arr!36471 (Array (_ BitVec 32) ValueCell!14009)) (size!37008 (_ BitVec 32))) )
))
(declare-fun lt!527341 () array!75650)

(declare-fun minValue!944 () V!44377)

(declare-datatypes ((array!75652 0))(
  ( (array!75653 (arr!36472 (Array (_ BitVec 32) (_ BitVec 64))) (size!37009 (_ BitVec 32))) )
))
(declare-fun lt!527345 () array!75652)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4920 (array!75652 array!75650 (_ BitVec 32) (_ BitVec 32) V!44377 V!44377 (_ BitVec 32) Int) ListLongMap!16945)

(assert (=> b!1170839 (= lt!527342 (getCurrentListMapNoExtraKeys!4920 lt!527345 lt!527341 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527344 () V!44377)

(declare-fun _values!996 () array!75650)

(assert (=> b!1170839 (= lt!527341 (array!75651 (store (arr!36471 _values!996) i!673 (ValueCellFull!14009 lt!527344)) (size!37008 _values!996)))))

(declare-fun dynLambda!2909 (Int (_ BitVec 64)) V!44377)

(assert (=> b!1170839 (= lt!527344 (dynLambda!2909 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!75652)

(declare-fun lt!527347 () ListLongMap!16945)

(assert (=> b!1170839 (= lt!527347 (getCurrentListMapNoExtraKeys!4920 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!777201 () Bool)

(declare-fun e!665529 () Bool)

(assert (=> start!99364 (=> (not res!777201) (not e!665529))))

(assert (=> start!99364 (= res!777201 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37009 _keys!1208))))))

(assert (=> start!99364 e!665529))

(declare-fun tp_is_empty!29437 () Bool)

(assert (=> start!99364 tp_is_empty!29437))

(declare-fun array_inv!27752 (array!75652) Bool)

(assert (=> start!99364 (array_inv!27752 _keys!1208)))

(assert (=> start!99364 true))

(assert (=> start!99364 tp!87436))

(declare-fun e!665539 () Bool)

(declare-fun array_inv!27753 (array!75650) Bool)

(assert (=> start!99364 (and (array_inv!27753 _values!996) e!665539)))

(declare-fun mapIsEmpty!45983 () Bool)

(declare-fun mapRes!45983 () Bool)

(assert (=> mapIsEmpty!45983 mapRes!45983))

(declare-fun b!1170840 () Bool)

(declare-fun res!777207 () Bool)

(declare-fun e!665528 () Bool)

(assert (=> b!1170840 (=> (not res!777207) (not e!665528))))

(declare-datatypes ((List!25735 0))(
  ( (Nil!25732) (Cons!25731 (h!26940 (_ BitVec 64)) (t!37641 List!25735)) )
))
(declare-fun arrayNoDuplicates!0 (array!75652 (_ BitVec 32) List!25735) Bool)

(assert (=> b!1170840 (= res!777207 (arrayNoDuplicates!0 lt!527345 #b00000000000000000000000000000000 Nil!25732))))

(declare-fun b!1170841 () Bool)

(declare-fun e!665535 () Bool)

(assert (=> b!1170841 (= e!665535 tp_is_empty!29437)))

(declare-fun mapNonEmpty!45983 () Bool)

(declare-fun tp!87435 () Bool)

(declare-fun e!665536 () Bool)

(assert (=> mapNonEmpty!45983 (= mapRes!45983 (and tp!87435 e!665536))))

(declare-fun mapRest!45983 () (Array (_ BitVec 32) ValueCell!14009))

(declare-fun mapKey!45983 () (_ BitVec 32))

(declare-fun mapValue!45983 () ValueCell!14009)

(assert (=> mapNonEmpty!45983 (= (arr!36471 _values!996) (store mapRest!45983 mapKey!45983 mapValue!45983))))

(declare-fun b!1170842 () Bool)

(declare-fun e!665532 () Bool)

(assert (=> b!1170842 (= e!665527 e!665532)))

(declare-fun res!777197 () Bool)

(assert (=> b!1170842 (=> res!777197 e!665532)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170842 (= res!777197 (not (validKeyInArray!0 (select (arr!36472 _keys!1208) from!1455))))))

(declare-fun lt!527343 () ListLongMap!16945)

(declare-fun lt!527346 () ListLongMap!16945)

(assert (=> b!1170842 (= lt!527343 lt!527346)))

(declare-fun lt!527349 () ListLongMap!16945)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1505 (ListLongMap!16945 (_ BitVec 64)) ListLongMap!16945)

(assert (=> b!1170842 (= lt!527346 (-!1505 lt!527349 k!934))))

(assert (=> b!1170842 (= lt!527343 (getCurrentListMapNoExtraKeys!4920 lt!527345 lt!527341 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1170842 (= lt!527349 (getCurrentListMapNoExtraKeys!4920 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38518 0))(
  ( (Unit!38519) )
))
(declare-fun lt!527350 () Unit!38518)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!729 (array!75652 array!75650 (_ BitVec 32) (_ BitVec 32) V!44377 V!44377 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38518)

(assert (=> b!1170842 (= lt!527350 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!729 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1170843 () Bool)

(assert (=> b!1170843 (= e!665529 e!665528)))

(declare-fun res!777208 () Bool)

(assert (=> b!1170843 (=> (not res!777208) (not e!665528))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75652 (_ BitVec 32)) Bool)

(assert (=> b!1170843 (= res!777208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527345 mask!1564))))

(assert (=> b!1170843 (= lt!527345 (array!75653 (store (arr!36472 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37009 _keys!1208)))))

(declare-fun b!1170844 () Bool)

(declare-fun res!777206 () Bool)

(assert (=> b!1170844 (=> (not res!777206) (not e!665529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1170844 (= res!777206 (validMask!0 mask!1564))))

(declare-fun e!665534 () Bool)

(declare-fun b!1170845 () Bool)

(declare-fun arrayContainsKey!0 (array!75652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170845 (= e!665534 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1170846 () Bool)

(declare-fun e!665537 () Bool)

(assert (=> b!1170846 (= e!665537 e!665534)))

(declare-fun res!777199 () Bool)

(assert (=> b!1170846 (=> res!777199 e!665534)))

(assert (=> b!1170846 (= res!777199 (not (= (select (arr!36472 _keys!1208) from!1455) k!934)))))

(declare-fun b!1170847 () Bool)

(declare-fun res!777196 () Bool)

(assert (=> b!1170847 (=> (not res!777196) (not e!665529))))

(assert (=> b!1170847 (= res!777196 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37009 _keys!1208))))))

(declare-fun b!1170848 () Bool)

(declare-fun res!777204 () Bool)

(assert (=> b!1170848 (=> (not res!777204) (not e!665529))))

(assert (=> b!1170848 (= res!777204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1170849 () Bool)

(declare-fun e!665531 () Bool)

(assert (=> b!1170849 (= e!665532 e!665531)))

(declare-fun res!777213 () Bool)

(assert (=> b!1170849 (=> res!777213 e!665531)))

(assert (=> b!1170849 (= res!777213 (not (= (select (arr!36472 _keys!1208) from!1455) k!934)))))

(assert (=> b!1170849 e!665537))

(declare-fun res!777200 () Bool)

(assert (=> b!1170849 (=> (not res!777200) (not e!665537))))

(declare-fun +!3728 (ListLongMap!16945 tuple2!18964) ListLongMap!16945)

(declare-fun get!18631 (ValueCell!14009 V!44377) V!44377)

(assert (=> b!1170849 (= res!777200 (= lt!527342 (+!3728 lt!527346 (tuple2!18965 (select (arr!36472 _keys!1208) from!1455) (get!18631 (select (arr!36471 _values!996) from!1455) lt!527344)))))))

(declare-fun b!1170850 () Bool)

(declare-fun res!777210 () Bool)

(assert (=> b!1170850 (=> (not res!777210) (not e!665529))))

(assert (=> b!1170850 (= res!777210 (and (= (size!37008 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37009 _keys!1208) (size!37008 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1170851 () Bool)

(declare-fun res!777202 () Bool)

(declare-fun e!665538 () Bool)

(assert (=> b!1170851 (=> res!777202 e!665538)))

(declare-fun contains!6858 (List!25735 (_ BitVec 64)) Bool)

(assert (=> b!1170851 (= res!777202 (contains!6858 Nil!25732 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1170852 () Bool)

(assert (=> b!1170852 (= e!665531 e!665538)))

(declare-fun res!777211 () Bool)

(assert (=> b!1170852 (=> res!777211 e!665538)))

(assert (=> b!1170852 (= res!777211 (or (bvsge (size!37009 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37009 _keys!1208)) (bvsge from!1455 (size!37009 _keys!1208))))))

(assert (=> b!1170852 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25732)))

(declare-fun lt!527340 () Unit!38518)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75652 (_ BitVec 32) (_ BitVec 32)) Unit!38518)

(assert (=> b!1170852 (= lt!527340 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1170852 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527348 () Unit!38518)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75652 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38518)

(assert (=> b!1170852 (= lt!527348 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170853 () Bool)

(assert (=> b!1170853 (= e!665539 (and e!665535 mapRes!45983))))

(declare-fun condMapEmpty!45983 () Bool)

(declare-fun mapDefault!45983 () ValueCell!14009)

