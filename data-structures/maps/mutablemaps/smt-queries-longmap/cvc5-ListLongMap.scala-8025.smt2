; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99026 () Bool)

(assert start!99026)

(declare-fun b_free!24595 () Bool)

(declare-fun b_next!24595 () Bool)

(assert (=> start!99026 (= b_free!24595 (not b_next!24595))))

(declare-fun tp!86496 () Bool)

(declare-fun b_and!40053 () Bool)

(assert (=> start!99026 (= tp!86496 b_and!40053)))

(declare-fun e!660961 () Bool)

(declare-datatypes ((V!43961 0))(
  ( (V!43962 (val!14619 Int)) )
))
(declare-datatypes ((tuple2!18708 0))(
  ( (tuple2!18709 (_1!9364 (_ BitVec 64)) (_2!9364 V!43961)) )
))
(declare-datatypes ((List!25484 0))(
  ( (Nil!25481) (Cons!25480 (h!26689 tuple2!18708) (t!37078 List!25484)) )
))
(declare-datatypes ((ListLongMap!16689 0))(
  ( (ListLongMap!16690 (toList!8360 List!25484)) )
))
(declare-fun call!56684 () ListLongMap!16689)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!56683 () ListLongMap!16689)

(declare-fun b!1162318 () Bool)

(declare-fun -!1428 (ListLongMap!16689 (_ BitVec 64)) ListLongMap!16689)

(assert (=> b!1162318 (= e!660961 (= call!56684 (-!1428 call!56683 k!934)))))

(declare-fun b!1162319 () Bool)

(declare-fun lt!523334 () ListLongMap!16689)

(declare-fun minValue!944 () V!43961)

(declare-fun contains!6838 (ListLongMap!16689 (_ BitVec 64)) Bool)

(declare-fun +!3681 (ListLongMap!16689 tuple2!18708) ListLongMap!16689)

(assert (=> b!1162319 (contains!6838 (+!3681 lt!523334 (tuple2!18709 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!38241 0))(
  ( (Unit!38242) )
))
(declare-fun lt!523328 () Unit!38241)

(declare-fun addStillContains!979 (ListLongMap!16689 (_ BitVec 64) V!43961 (_ BitVec 64)) Unit!38241)

(assert (=> b!1162319 (= lt!523328 (addStillContains!979 lt!523334 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!56682 () Bool)

(assert (=> b!1162319 call!56682))

(declare-fun call!56686 () ListLongMap!16689)

(assert (=> b!1162319 (= lt!523334 call!56686)))

(declare-fun lt!523325 () Unit!38241)

(declare-fun call!56681 () Unit!38241)

(assert (=> b!1162319 (= lt!523325 call!56681)))

(declare-fun e!660964 () Unit!38241)

(assert (=> b!1162319 (= e!660964 lt!523328)))

(declare-fun b!1162320 () Bool)

(declare-fun e!660975 () Bool)

(declare-fun e!660965 () Bool)

(assert (=> b!1162320 (= e!660975 e!660965)))

(declare-fun res!771108 () Bool)

(assert (=> b!1162320 (=> res!771108 e!660965)))

(declare-datatypes ((array!75040 0))(
  ( (array!75041 (arr!36167 (Array (_ BitVec 32) (_ BitVec 64))) (size!36704 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75040)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1162320 (= res!771108 (not (= (select (arr!36167 _keys!1208) from!1455) k!934)))))

(assert (=> b!1162320 e!660961))

(declare-fun c!116164 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1162320 (= c!116164 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43961)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!523324 () Unit!38241)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13853 0))(
  ( (ValueCellFull!13853 (v!17257 V!43961)) (EmptyCell!13853) )
))
(declare-datatypes ((array!75042 0))(
  ( (array!75043 (arr!36168 (Array (_ BitVec 32) ValueCell!13853)) (size!36705 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75042)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!650 (array!75040 array!75042 (_ BitVec 32) (_ BitVec 32) V!43961 V!43961 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38241)

(assert (=> b!1162320 (= lt!523324 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!650 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162321 () Bool)

(declare-fun e!660970 () Unit!38241)

(declare-fun Unit!38243 () Unit!38241)

(assert (=> b!1162321 (= e!660970 Unit!38243)))

(declare-fun lt!523333 () Bool)

(assert (=> b!1162321 (= lt!523333 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!116163 () Bool)

(assert (=> b!1162321 (= c!116163 (and (not lt!523333) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!523323 () Unit!38241)

(assert (=> b!1162321 (= lt!523323 e!660964)))

(declare-fun lt!523318 () Unit!38241)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!549 (array!75040 array!75042 (_ BitVec 32) (_ BitVec 32) V!43961 V!43961 (_ BitVec 64) (_ BitVec 32) Int) Unit!38241)

(assert (=> b!1162321 (= lt!523318 (lemmaListMapContainsThenArrayContainsFrom!549 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116166 () Bool)

(assert (=> b!1162321 (= c!116166 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771102 () Bool)

(declare-fun e!660960 () Bool)

(assert (=> b!1162321 (= res!771102 e!660960)))

(declare-fun e!660962 () Bool)

(assert (=> b!1162321 (=> (not res!771102) (not e!660962))))

(assert (=> b!1162321 e!660962))

(declare-fun lt!523319 () Unit!38241)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75040 (_ BitVec 32) (_ BitVec 32)) Unit!38241)

(assert (=> b!1162321 (= lt!523319 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25485 0))(
  ( (Nil!25482) (Cons!25481 (h!26690 (_ BitVec 64)) (t!37079 List!25485)) )
))
(declare-fun arrayNoDuplicates!0 (array!75040 (_ BitVec 32) List!25485) Bool)

(assert (=> b!1162321 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25482)))

(declare-fun lt!523326 () Unit!38241)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75040 (_ BitVec 64) (_ BitVec 32) List!25485) Unit!38241)

(assert (=> b!1162321 (= lt!523326 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25482))))

(assert (=> b!1162321 false))

(declare-fun mapIsEmpty!45512 () Bool)

(declare-fun mapRes!45512 () Bool)

(assert (=> mapIsEmpty!45512 mapRes!45512))

(declare-fun mapNonEmpty!45512 () Bool)

(declare-fun tp!86497 () Bool)

(declare-fun e!660972 () Bool)

(assert (=> mapNonEmpty!45512 (= mapRes!45512 (and tp!86497 e!660972))))

(declare-fun mapKey!45512 () (_ BitVec 32))

(declare-fun mapRest!45512 () (Array (_ BitVec 32) ValueCell!13853))

(declare-fun mapValue!45512 () ValueCell!13853)

(assert (=> mapNonEmpty!45512 (= (arr!36168 _values!996) (store mapRest!45512 mapKey!45512 mapValue!45512))))

(declare-fun b!1162322 () Bool)

(declare-fun res!771107 () Bool)

(declare-fun e!660967 () Bool)

(assert (=> b!1162322 (=> (not res!771107) (not e!660967))))

(declare-fun lt!523332 () array!75040)

(assert (=> b!1162322 (= res!771107 (arrayNoDuplicates!0 lt!523332 #b00000000000000000000000000000000 Nil!25482))))

(declare-fun res!771109 () Bool)

(declare-fun e!660969 () Bool)

(assert (=> start!99026 (=> (not res!771109) (not e!660969))))

(assert (=> start!99026 (= res!771109 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36704 _keys!1208))))))

(assert (=> start!99026 e!660969))

(declare-fun tp_is_empty!29125 () Bool)

(assert (=> start!99026 tp_is_empty!29125))

(declare-fun array_inv!27546 (array!75040) Bool)

(assert (=> start!99026 (array_inv!27546 _keys!1208)))

(assert (=> start!99026 true))

(assert (=> start!99026 tp!86496))

(declare-fun e!660966 () Bool)

(declare-fun array_inv!27547 (array!75042) Bool)

(assert (=> start!99026 (and (array_inv!27547 _values!996) e!660966)))

(declare-fun b!1162323 () Bool)

(declare-fun Unit!38244 () Unit!38241)

(assert (=> b!1162323 (= e!660970 Unit!38244)))

(declare-fun lt!523330 () ListLongMap!16689)

(declare-fun e!660959 () Bool)

(declare-fun b!1162324 () Bool)

(declare-fun lt!523335 () array!75042)

(declare-fun getCurrentListMapNoExtraKeys!4794 (array!75040 array!75042 (_ BitVec 32) (_ BitVec 32) V!43961 V!43961 (_ BitVec 32) Int) ListLongMap!16689)

(assert (=> b!1162324 (= e!660959 (= lt!523330 (getCurrentListMapNoExtraKeys!4794 lt!523332 lt!523335 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1162325 () Bool)

(declare-fun e!660974 () Bool)

(assert (=> b!1162325 (= e!660967 (not e!660974))))

(declare-fun res!771104 () Bool)

(assert (=> b!1162325 (=> res!771104 e!660974)))

(assert (=> b!1162325 (= res!771104 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75040 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1162325 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!523321 () Unit!38241)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75040 (_ BitVec 64) (_ BitVec 32)) Unit!38241)

(assert (=> b!1162325 (= lt!523321 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1162326 () Bool)

(assert (=> b!1162326 (= e!660962 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162327 () Bool)

(declare-fun e!660963 () Unit!38241)

(declare-fun Unit!38245 () Unit!38241)

(assert (=> b!1162327 (= e!660963 Unit!38245)))

(declare-fun b!1162328 () Bool)

(declare-fun res!771103 () Bool)

(assert (=> b!1162328 (=> (not res!771103) (not e!660969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1162328 (= res!771103 (validKeyInArray!0 k!934))))

(declare-fun b!1162329 () Bool)

(assert (=> b!1162329 (= e!660960 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162330 () Bool)

(declare-fun e!660973 () Bool)

(assert (=> b!1162330 (= e!660966 (and e!660973 mapRes!45512))))

(declare-fun condMapEmpty!45512 () Bool)

(declare-fun mapDefault!45512 () ValueCell!13853)

