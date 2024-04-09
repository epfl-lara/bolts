; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99020 () Bool)

(assert start!99020)

(declare-fun b_free!24589 () Bool)

(declare-fun b_next!24589 () Bool)

(assert (=> start!99020 (= b_free!24589 (not b_next!24589))))

(declare-fun tp!86478 () Bool)

(declare-fun b_and!40041 () Bool)

(assert (=> start!99020 (= tp!86478 b_and!40041)))

(declare-fun b!1162043 () Bool)

(declare-fun res!770964 () Bool)

(declare-fun e!660811 () Bool)

(assert (=> b!1162043 (=> (not res!770964) (not e!660811))))

(declare-datatypes ((array!75028 0))(
  ( (array!75029 (arr!36161 (Array (_ BitVec 32) (_ BitVec 64))) (size!36698 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75028)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1162043 (= res!770964 (= (select (arr!36161 _keys!1208) i!673) k!934))))

(declare-fun b!1162044 () Bool)

(declare-datatypes ((Unit!38229 0))(
  ( (Unit!38230) )
))
(declare-fun e!660813 () Unit!38229)

(declare-fun Unit!38231 () Unit!38229)

(assert (=> b!1162044 (= e!660813 Unit!38231)))

(declare-fun b!1162045 () Bool)

(declare-fun res!770976 () Bool)

(declare-fun e!660821 () Bool)

(assert (=> b!1162045 (=> (not res!770976) (not e!660821))))

(declare-fun lt!523122 () array!75028)

(declare-datatypes ((List!25478 0))(
  ( (Nil!25475) (Cons!25474 (h!26683 (_ BitVec 64)) (t!37066 List!25478)) )
))
(declare-fun arrayNoDuplicates!0 (array!75028 (_ BitVec 32) List!25478) Bool)

(assert (=> b!1162045 (= res!770976 (arrayNoDuplicates!0 lt!523122 #b00000000000000000000000000000000 Nil!25475))))

(declare-fun bm!56606 () Bool)

(declare-fun call!56616 () Bool)

(declare-fun call!56614 () Bool)

(assert (=> bm!56606 (= call!56616 call!56614)))

(declare-fun b!1162046 () Bool)

(declare-fun e!660818 () Bool)

(assert (=> b!1162046 (= e!660821 (not e!660818))))

(declare-fun res!770969 () Bool)

(assert (=> b!1162046 (=> res!770969 e!660818)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1162046 (= res!770969 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1162046 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!523125 () Unit!38229)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75028 (_ BitVec 64) (_ BitVec 32)) Unit!38229)

(assert (=> b!1162046 (= lt!523125 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1162047 () Bool)

(declare-fun Unit!38232 () Unit!38229)

(assert (=> b!1162047 (= e!660813 Unit!38232)))

(declare-fun lt!523118 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1162047 (= lt!523118 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!116111 () Bool)

(assert (=> b!1162047 (= c!116111 (and (not lt!523118) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!523131 () Unit!38229)

(declare-fun e!660815 () Unit!38229)

(assert (=> b!1162047 (= lt!523131 e!660815)))

(declare-datatypes ((V!43953 0))(
  ( (V!43954 (val!14616 Int)) )
))
(declare-fun zeroValue!944 () V!43953)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13850 0))(
  ( (ValueCellFull!13850 (v!17254 V!43953)) (EmptyCell!13850) )
))
(declare-datatypes ((array!75030 0))(
  ( (array!75031 (arr!36162 (Array (_ BitVec 32) ValueCell!13850)) (size!36699 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75030)

(declare-fun lt!523133 () Unit!38229)

(declare-fun minValue!944 () V!43953)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!547 (array!75028 array!75030 (_ BitVec 32) (_ BitVec 32) V!43953 V!43953 (_ BitVec 64) (_ BitVec 32) Int) Unit!38229)

(assert (=> b!1162047 (= lt!523133 (lemmaListMapContainsThenArrayContainsFrom!547 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116108 () Bool)

(assert (=> b!1162047 (= c!116108 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770970 () Bool)

(declare-fun e!660812 () Bool)

(assert (=> b!1162047 (= res!770970 e!660812)))

(declare-fun e!660814 () Bool)

(assert (=> b!1162047 (=> (not res!770970) (not e!660814))))

(assert (=> b!1162047 e!660814))

(declare-fun lt!523119 () Unit!38229)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75028 (_ BitVec 32) (_ BitVec 32)) Unit!38229)

(assert (=> b!1162047 (= lt!523119 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1162047 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25475)))

(declare-fun lt!523135 () Unit!38229)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75028 (_ BitVec 64) (_ BitVec 32) List!25478) Unit!38229)

(assert (=> b!1162047 (= lt!523135 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25475))))

(assert (=> b!1162047 false))

(declare-fun b!1162048 () Bool)

(assert (=> b!1162048 (= e!660814 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-datatypes ((tuple2!18702 0))(
  ( (tuple2!18703 (_1!9361 (_ BitVec 64)) (_2!9361 V!43953)) )
))
(declare-datatypes ((List!25479 0))(
  ( (Nil!25476) (Cons!25475 (h!26684 tuple2!18702) (t!37067 List!25479)) )
))
(declare-datatypes ((ListLongMap!16683 0))(
  ( (ListLongMap!16684 (toList!8357 List!25479)) )
))
(declare-fun call!56609 () ListLongMap!16683)

(declare-fun call!56615 () ListLongMap!16683)

(declare-fun b!1162049 () Bool)

(declare-fun e!660816 () Bool)

(declare-fun -!1426 (ListLongMap!16683 (_ BitVec 64)) ListLongMap!16683)

(assert (=> b!1162049 (= e!660816 (= call!56609 (-!1426 call!56615 k!934)))))

(declare-fun b!1162050 () Bool)

(declare-fun e!660820 () Bool)

(declare-fun tp_is_empty!29119 () Bool)

(assert (=> b!1162050 (= e!660820 tp_is_empty!29119)))

(declare-fun b!1162051 () Bool)

(declare-fun c!116107 () Bool)

(assert (=> b!1162051 (= c!116107 (and (not lt!523118) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!660806 () Unit!38229)

(assert (=> b!1162051 (= e!660815 e!660806)))

(declare-fun b!1162052 () Bool)

(declare-fun e!660807 () Unit!38229)

(assert (=> b!1162052 (= e!660806 e!660807)))

(declare-fun c!116110 () Bool)

(assert (=> b!1162052 (= c!116110 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523118))))

(declare-fun b!1162053 () Bool)

(declare-fun res!770971 () Bool)

(assert (=> b!1162053 (=> (not res!770971) (not e!660811))))

(assert (=> b!1162053 (= res!770971 (and (= (size!36699 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36698 _keys!1208) (size!36699 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!45503 () Bool)

(declare-fun mapRes!45503 () Bool)

(declare-fun tp!86479 () Bool)

(assert (=> mapNonEmpty!45503 (= mapRes!45503 (and tp!86479 e!660820))))

(declare-fun mapValue!45503 () ValueCell!13850)

(declare-fun mapRest!45503 () (Array (_ BitVec 32) ValueCell!13850))

(declare-fun mapKey!45503 () (_ BitVec 32))

(assert (=> mapNonEmpty!45503 (= (arr!36162 _values!996) (store mapRest!45503 mapKey!45503 mapValue!45503))))

(declare-fun res!770968 () Bool)

(assert (=> start!99020 (=> (not res!770968) (not e!660811))))

(assert (=> start!99020 (= res!770968 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36698 _keys!1208))))))

(assert (=> start!99020 e!660811))

(assert (=> start!99020 tp_is_empty!29119))

(declare-fun array_inv!27540 (array!75028) Bool)

(assert (=> start!99020 (array_inv!27540 _keys!1208)))

(assert (=> start!99020 true))

(assert (=> start!99020 tp!86478))

(declare-fun e!660819 () Bool)

(declare-fun array_inv!27541 (array!75030) Bool)

(assert (=> start!99020 (and (array_inv!27541 _values!996) e!660819)))

(declare-fun b!1162042 () Bool)

(declare-fun e!660822 () Bool)

(assert (=> b!1162042 (= e!660819 (and e!660822 mapRes!45503))))

(declare-fun condMapEmpty!45503 () Bool)

(declare-fun mapDefault!45503 () ValueCell!13850)

