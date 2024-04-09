; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98582 () Bool)

(assert start!98582)

(declare-fun b_free!24151 () Bool)

(declare-fun b_next!24151 () Bool)

(assert (=> start!98582 (= b_free!24151 (not b_next!24151))))

(declare-fun tp!85164 () Bool)

(declare-fun b_and!39165 () Bool)

(assert (=> start!98582 (= tp!85164 b_and!39165)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!649717 () Bool)

(declare-datatypes ((array!74172 0))(
  ( (array!74173 (arr!35733 (Array (_ BitVec 32) (_ BitVec 64))) (size!36270 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74172)

(declare-fun b!1141964 () Bool)

(declare-fun arrayContainsKey!0 (array!74172 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1141964 (= e!649717 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!761182 () Bool)

(declare-fun e!649709 () Bool)

(assert (=> start!98582 (=> (not res!761182) (not e!649709))))

(assert (=> start!98582 (= res!761182 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36270 _keys!1208))))))

(assert (=> start!98582 e!649709))

(declare-fun tp_is_empty!28681 () Bool)

(assert (=> start!98582 tp_is_empty!28681))

(declare-fun array_inv!27258 (array!74172) Bool)

(assert (=> start!98582 (array_inv!27258 _keys!1208)))

(assert (=> start!98582 true))

(assert (=> start!98582 tp!85164))

(declare-datatypes ((V!43369 0))(
  ( (V!43370 (val!14397 Int)) )
))
(declare-datatypes ((ValueCell!13631 0))(
  ( (ValueCellFull!13631 (v!17035 V!43369)) (EmptyCell!13631) )
))
(declare-datatypes ((array!74174 0))(
  ( (array!74175 (arr!35734 (Array (_ BitVec 32) ValueCell!13631)) (size!36271 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74174)

(declare-fun e!649720 () Bool)

(declare-fun array_inv!27259 (array!74174) Bool)

(assert (=> start!98582 (and (array_inv!27259 _values!996) e!649720)))

(declare-fun b!1141965 () Bool)

(declare-datatypes ((Unit!37385 0))(
  ( (Unit!37386) )
))
(declare-fun e!649718 () Unit!37385)

(declare-fun e!649716 () Unit!37385)

(assert (=> b!1141965 (= e!649718 e!649716)))

(declare-fun c!112165 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!508906 () Bool)

(assert (=> b!1141965 (= c!112165 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!508906))))

(declare-fun bm!51350 () Bool)

(declare-fun call!51358 () Unit!37385)

(declare-fun call!51353 () Unit!37385)

(assert (=> bm!51350 (= call!51358 call!51353)))

(declare-fun b!1141966 () Bool)

(declare-fun e!649712 () Bool)

(assert (=> b!1141966 (= e!649712 true)))

(declare-datatypes ((tuple2!18300 0))(
  ( (tuple2!18301 (_1!9160 (_ BitVec 64)) (_2!9160 V!43369)) )
))
(declare-datatypes ((List!25100 0))(
  ( (Nil!25097) (Cons!25096 (h!26305 tuple2!18300) (t!36250 List!25100)) )
))
(declare-datatypes ((ListLongMap!16281 0))(
  ( (ListLongMap!16282 (toList!8156 List!25100)) )
))
(declare-fun lt!508902 () ListLongMap!16281)

(declare-fun lt!508894 () V!43369)

(declare-fun -!1251 (ListLongMap!16281 (_ BitVec 64)) ListLongMap!16281)

(declare-fun +!3501 (ListLongMap!16281 tuple2!18300) ListLongMap!16281)

(assert (=> b!1141966 (= (-!1251 (+!3501 lt!508902 (tuple2!18301 (select (arr!35733 _keys!1208) from!1455) lt!508894)) (select (arr!35733 _keys!1208) from!1455)) lt!508902)))

(declare-fun lt!508896 () Unit!37385)

(declare-fun addThenRemoveForNewKeyIsSame!106 (ListLongMap!16281 (_ BitVec 64) V!43369) Unit!37385)

(assert (=> b!1141966 (= lt!508896 (addThenRemoveForNewKeyIsSame!106 lt!508902 (select (arr!35733 _keys!1208) from!1455) lt!508894))))

(declare-fun lt!508912 () V!43369)

(declare-fun get!18178 (ValueCell!13631 V!43369) V!43369)

(assert (=> b!1141966 (= lt!508894 (get!18178 (select (arr!35734 _values!996) from!1455) lt!508912))))

(declare-fun lt!508895 () Unit!37385)

(declare-fun e!649714 () Unit!37385)

(assert (=> b!1141966 (= lt!508895 e!649714)))

(declare-fun c!112166 () Bool)

(declare-fun contains!6660 (ListLongMap!16281 (_ BitVec 64)) Bool)

(assert (=> b!1141966 (= c!112166 (contains!6660 lt!508902 k!934))))

(declare-fun zeroValue!944 () V!43369)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43369)

(declare-fun getCurrentListMapNoExtraKeys!4599 (array!74172 array!74174 (_ BitVec 32) (_ BitVec 32) V!43369 V!43369 (_ BitVec 32) Int) ListLongMap!16281)

(assert (=> b!1141966 (= lt!508902 (getCurrentListMapNoExtraKeys!4599 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112167 () Bool)

(declare-fun c!112169 () Bool)

(declare-fun call!51357 () ListLongMap!16281)

(declare-fun bm!51351 () Bool)

(assert (=> bm!51351 (= call!51357 (+!3501 lt!508902 (ite (or c!112167 c!112169) (tuple2!18301 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18301 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1141967 () Bool)

(declare-fun res!761184 () Bool)

(declare-fun e!649719 () Bool)

(assert (=> b!1141967 (=> (not res!761184) (not e!649719))))

(declare-fun lt!508909 () array!74172)

(declare-datatypes ((List!25101 0))(
  ( (Nil!25098) (Cons!25097 (h!26306 (_ BitVec 64)) (t!36251 List!25101)) )
))
(declare-fun arrayNoDuplicates!0 (array!74172 (_ BitVec 32) List!25101) Bool)

(assert (=> b!1141967 (= res!761184 (arrayNoDuplicates!0 lt!508909 #b00000000000000000000000000000000 Nil!25098))))

(declare-fun b!1141968 () Bool)

(declare-fun lt!508903 () Unit!37385)

(assert (=> b!1141968 (= e!649718 lt!508903)))

(assert (=> b!1141968 (= lt!508903 call!51358)))

(declare-fun call!51359 () Bool)

(assert (=> b!1141968 call!51359))

(declare-fun b!1141969 () Bool)

(declare-fun res!761181 () Bool)

(assert (=> b!1141969 (=> (not res!761181) (not e!649709))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1141969 (= res!761181 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36270 _keys!1208))))))

(declare-fun b!1141970 () Bool)

(declare-fun res!761192 () Bool)

(assert (=> b!1141970 (=> (not res!761192) (not e!649709))))

(assert (=> b!1141970 (= res!761192 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25098))))

(declare-fun b!1141971 () Bool)

(declare-fun e!649722 () Bool)

(assert (=> b!1141971 (= e!649722 tp_is_empty!28681)))

(declare-fun b!1141972 () Bool)

(declare-fun e!649710 () Bool)

(assert (=> b!1141972 (= e!649710 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1141973 () Bool)

(declare-fun e!649707 () Bool)

(assert (=> b!1141973 (= e!649719 (not e!649707))))

(declare-fun res!761187 () Bool)

(assert (=> b!1141973 (=> res!761187 e!649707)))

(assert (=> b!1141973 (= res!761187 (bvsgt from!1455 i!673))))

(assert (=> b!1141973 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!508914 () Unit!37385)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74172 (_ BitVec 64) (_ BitVec 32)) Unit!37385)

(assert (=> b!1141973 (= lt!508914 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1141974 () Bool)

(declare-fun e!649721 () Bool)

(assert (=> b!1141974 (= e!649721 e!649712)))

(declare-fun res!761191 () Bool)

(assert (=> b!1141974 (=> res!761191 e!649712)))

(assert (=> b!1141974 (= res!761191 (not (= (select (arr!35733 _keys!1208) from!1455) k!934)))))

(declare-fun e!649715 () Bool)

(assert (=> b!1141974 e!649715))

(declare-fun c!112170 () Bool)

(assert (=> b!1141974 (= c!112170 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!508901 () Unit!37385)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!508 (array!74172 array!74174 (_ BitVec 32) (_ BitVec 32) V!43369 V!43369 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37385)

(assert (=> b!1141974 (= lt!508901 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141975 () Bool)

(declare-fun res!761183 () Bool)

(assert (=> b!1141975 (=> (not res!761183) (not e!649709))))

(assert (=> b!1141975 (= res!761183 (and (= (size!36271 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36270 _keys!1208) (size!36271 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1141976 () Bool)

(declare-fun Unit!37387 () Unit!37385)

(assert (=> b!1141976 (= e!649714 Unit!37387)))

(declare-fun b!1141977 () Bool)

(declare-fun res!761185 () Bool)

(assert (=> b!1141977 (=> (not res!761185) (not e!649709))))

(assert (=> b!1141977 (= res!761185 (= (select (arr!35733 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!44846 () Bool)

(declare-fun mapRes!44846 () Bool)

(declare-fun tp!85165 () Bool)

(declare-fun e!649708 () Bool)

(assert (=> mapNonEmpty!44846 (= mapRes!44846 (and tp!85165 e!649708))))

(declare-fun mapKey!44846 () (_ BitVec 32))

(declare-fun mapRest!44846 () (Array (_ BitVec 32) ValueCell!13631))

(declare-fun mapValue!44846 () ValueCell!13631)

(assert (=> mapNonEmpty!44846 (= (arr!35734 _values!996) (store mapRest!44846 mapKey!44846 mapValue!44846))))

(declare-fun bm!51352 () Bool)

(declare-fun call!51355 () Bool)

(assert (=> bm!51352 (= call!51359 call!51355)))

(declare-fun b!1141978 () Bool)

(declare-fun res!761189 () Bool)

(assert (=> b!1141978 (=> (not res!761189) (not e!649709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1141978 (= res!761189 (validMask!0 mask!1564))))

(declare-fun b!1141979 () Bool)

(declare-fun res!761186 () Bool)

(assert (=> b!1141979 (=> (not res!761186) (not e!649709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74172 (_ BitVec 32)) Bool)

(assert (=> b!1141979 (= res!761186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1141980 () Bool)

(declare-fun res!761190 () Bool)

(assert (=> b!1141980 (=> (not res!761190) (not e!649709))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1141980 (= res!761190 (validKeyInArray!0 k!934))))

(declare-fun b!1141981 () Bool)

(assert (=> b!1141981 call!51359))

(declare-fun lt!508913 () Unit!37385)

(assert (=> b!1141981 (= lt!508913 call!51358)))

(assert (=> b!1141981 (= e!649716 lt!508913)))

(declare-fun lt!508911 () ListLongMap!16281)

(declare-fun bm!51353 () Bool)

(declare-fun call!51356 () ListLongMap!16281)

(assert (=> bm!51353 (= call!51355 (contains!6660 (ite c!112167 lt!508911 call!51356) k!934))))

(declare-fun b!1141982 () Bool)

(assert (=> b!1141982 (= e!649709 e!649719)))

(declare-fun res!761188 () Bool)

(assert (=> b!1141982 (=> (not res!761188) (not e!649719))))

(assert (=> b!1141982 (= res!761188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!508909 mask!1564))))

(assert (=> b!1141982 (= lt!508909 (array!74173 (store (arr!35733 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36270 _keys!1208)))))

(declare-fun call!51354 () ListLongMap!16281)

(declare-fun call!51360 () ListLongMap!16281)

(declare-fun b!1141983 () Bool)

(assert (=> b!1141983 (= e!649715 (= call!51354 (-!1251 call!51360 k!934)))))

(declare-fun b!1141984 () Bool)

(assert (=> b!1141984 (= e!649720 (and e!649722 mapRes!44846))))

(declare-fun condMapEmpty!44846 () Bool)

(declare-fun mapDefault!44846 () ValueCell!13631)

