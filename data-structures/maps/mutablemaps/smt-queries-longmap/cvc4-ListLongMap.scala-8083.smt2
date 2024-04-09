; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99404 () Bool)

(assert start!99404)

(declare-fun b_free!24947 () Bool)

(declare-fun b_next!24947 () Bool)

(assert (=> start!99404 (= b_free!24947 (not b_next!24947))))

(declare-fun tp!87555 () Bool)

(declare-fun b_and!40775 () Bool)

(assert (=> start!99404 (= tp!87555 b_and!40775)))

(declare-fun b!1172199 () Bool)

(declare-fun e!666316 () Bool)

(declare-fun e!666312 () Bool)

(assert (=> b!1172199 (= e!666316 e!666312)))

(declare-fun res!778341 () Bool)

(assert (=> b!1172199 (=> res!778341 e!666312)))

(declare-datatypes ((array!75730 0))(
  ( (array!75731 (arr!36511 (Array (_ BitVec 32) (_ BitVec 64))) (size!37048 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75730)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1172199 (= res!778341 (not (= (select (arr!36511 _keys!1208) from!1455) k!934)))))

(declare-fun b!1172200 () Bool)

(declare-fun e!666319 () Bool)

(declare-fun e!666317 () Bool)

(assert (=> b!1172200 (= e!666319 e!666317)))

(declare-fun res!778346 () Bool)

(assert (=> b!1172200 (=> (not res!778346) (not e!666317))))

(declare-fun lt!528128 () array!75730)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75730 (_ BitVec 32)) Bool)

(assert (=> b!1172200 (= res!778346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528128 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1172200 (= lt!528128 (array!75731 (store (arr!36511 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37048 _keys!1208)))))

(declare-fun b!1172201 () Bool)

(declare-fun res!778347 () Bool)

(assert (=> b!1172201 (=> (not res!778347) (not e!666319))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172201 (= res!778347 (validKeyInArray!0 k!934))))

(declare-fun b!1172202 () Bool)

(declare-fun arrayContainsKey!0 (array!75730 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1172202 (= e!666312 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1172203 () Bool)

(declare-fun e!666309 () Bool)

(declare-fun tp_is_empty!29477 () Bool)

(assert (=> b!1172203 (= e!666309 tp_is_empty!29477)))

(declare-fun b!1172204 () Bool)

(declare-fun e!666310 () Bool)

(assert (=> b!1172204 (= e!666310 tp_is_empty!29477)))

(declare-fun mapNonEmpty!46043 () Bool)

(declare-fun mapRes!46043 () Bool)

(declare-fun tp!87556 () Bool)

(assert (=> mapNonEmpty!46043 (= mapRes!46043 (and tp!87556 e!666310))))

(declare-fun mapKey!46043 () (_ BitVec 32))

(declare-datatypes ((V!44429 0))(
  ( (V!44430 (val!14795 Int)) )
))
(declare-datatypes ((ValueCell!14029 0))(
  ( (ValueCellFull!14029 (v!17434 V!44429)) (EmptyCell!14029) )
))
(declare-fun mapRest!46043 () (Array (_ BitVec 32) ValueCell!14029))

(declare-fun mapValue!46043 () ValueCell!14029)

(declare-datatypes ((array!75732 0))(
  ( (array!75733 (arr!36512 (Array (_ BitVec 32) ValueCell!14029)) (size!37049 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75732)

(assert (=> mapNonEmpty!46043 (= (arr!36512 _values!996) (store mapRest!46043 mapKey!46043 mapValue!46043))))

(declare-fun b!1172205 () Bool)

(declare-fun res!778342 () Bool)

(assert (=> b!1172205 (=> (not res!778342) (not e!666319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1172205 (= res!778342 (validMask!0 mask!1564))))

(declare-fun b!1172206 () Bool)

(declare-fun res!778336 () Bool)

(declare-fun e!666318 () Bool)

(assert (=> b!1172206 (=> res!778336 e!666318)))

(declare-datatypes ((List!25771 0))(
  ( (Nil!25768) (Cons!25767 (h!26976 (_ BitVec 64)) (t!37717 List!25771)) )
))
(declare-fun contains!6874 (List!25771 (_ BitVec 64)) Bool)

(assert (=> b!1172206 (= res!778336 (contains!6874 Nil!25768 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172207 () Bool)

(declare-fun e!666307 () Bool)

(declare-fun e!666311 () Bool)

(assert (=> b!1172207 (= e!666307 e!666311)))

(declare-fun res!778350 () Bool)

(assert (=> b!1172207 (=> res!778350 e!666311)))

(assert (=> b!1172207 (= res!778350 (not (= (select (arr!36511 _keys!1208) from!1455) k!934)))))

(assert (=> b!1172207 e!666316))

(declare-fun res!778339 () Bool)

(assert (=> b!1172207 (=> (not res!778339) (not e!666316))))

(declare-datatypes ((tuple2!18998 0))(
  ( (tuple2!18999 (_1!9509 (_ BitVec 64)) (_2!9509 V!44429)) )
))
(declare-datatypes ((List!25772 0))(
  ( (Nil!25769) (Cons!25768 (h!26977 tuple2!18998) (t!37718 List!25772)) )
))
(declare-datatypes ((ListLongMap!16979 0))(
  ( (ListLongMap!16980 (toList!8505 List!25772)) )
))
(declare-fun lt!528121 () ListLongMap!16979)

(declare-fun lt!528129 () ListLongMap!16979)

(declare-fun lt!528120 () V!44429)

(declare-fun +!3743 (ListLongMap!16979 tuple2!18998) ListLongMap!16979)

(declare-fun get!18658 (ValueCell!14029 V!44429) V!44429)

(assert (=> b!1172207 (= res!778339 (= lt!528121 (+!3743 lt!528129 (tuple2!18999 (select (arr!36511 _keys!1208) from!1455) (get!18658 (select (arr!36512 _values!996) from!1455) lt!528120)))))))

(declare-fun b!1172208 () Bool)

(declare-fun e!666314 () Bool)

(assert (=> b!1172208 (= e!666314 e!666307)))

(declare-fun res!778338 () Bool)

(assert (=> b!1172208 (=> res!778338 e!666307)))

(assert (=> b!1172208 (= res!778338 (not (validKeyInArray!0 (select (arr!36511 _keys!1208) from!1455))))))

(declare-fun lt!528126 () ListLongMap!16979)

(assert (=> b!1172208 (= lt!528126 lt!528129)))

(declare-fun lt!528131 () ListLongMap!16979)

(declare-fun -!1521 (ListLongMap!16979 (_ BitVec 64)) ListLongMap!16979)

(assert (=> b!1172208 (= lt!528129 (-!1521 lt!528131 k!934))))

(declare-fun zeroValue!944 () V!44429)

(declare-fun lt!528122 () array!75732)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44429)

(declare-fun getCurrentListMapNoExtraKeys!4937 (array!75730 array!75732 (_ BitVec 32) (_ BitVec 32) V!44429 V!44429 (_ BitVec 32) Int) ListLongMap!16979)

(assert (=> b!1172208 (= lt!528126 (getCurrentListMapNoExtraKeys!4937 lt!528128 lt!528122 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1172208 (= lt!528131 (getCurrentListMapNoExtraKeys!4937 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38556 0))(
  ( (Unit!38557) )
))
(declare-fun lt!528127 () Unit!38556)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!745 (array!75730 array!75732 (_ BitVec 32) (_ BitVec 32) V!44429 V!44429 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38556)

(assert (=> b!1172208 (= lt!528127 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!745 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!778337 () Bool)

(assert (=> start!99404 (=> (not res!778337) (not e!666319))))

(assert (=> start!99404 (= res!778337 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37048 _keys!1208))))))

(assert (=> start!99404 e!666319))

(assert (=> start!99404 tp_is_empty!29477))

(declare-fun array_inv!27782 (array!75730) Bool)

(assert (=> start!99404 (array_inv!27782 _keys!1208)))

(assert (=> start!99404 true))

(assert (=> start!99404 tp!87555))

(declare-fun e!666313 () Bool)

(declare-fun array_inv!27783 (array!75732) Bool)

(assert (=> start!99404 (and (array_inv!27783 _values!996) e!666313)))

(declare-fun b!1172209 () Bool)

(declare-fun res!778345 () Bool)

(assert (=> b!1172209 (=> (not res!778345) (not e!666319))))

(assert (=> b!1172209 (= res!778345 (= (select (arr!36511 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!46043 () Bool)

(assert (=> mapIsEmpty!46043 mapRes!46043))

(declare-fun b!1172210 () Bool)

(declare-fun e!666308 () Bool)

(assert (=> b!1172210 (= e!666308 e!666314)))

(declare-fun res!778354 () Bool)

(assert (=> b!1172210 (=> res!778354 e!666314)))

(assert (=> b!1172210 (= res!778354 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1172210 (= lt!528121 (getCurrentListMapNoExtraKeys!4937 lt!528128 lt!528122 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1172210 (= lt!528122 (array!75733 (store (arr!36512 _values!996) i!673 (ValueCellFull!14029 lt!528120)) (size!37049 _values!996)))))

(declare-fun dynLambda!2925 (Int (_ BitVec 64)) V!44429)

(assert (=> b!1172210 (= lt!528120 (dynLambda!2925 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528123 () ListLongMap!16979)

(assert (=> b!1172210 (= lt!528123 (getCurrentListMapNoExtraKeys!4937 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1172211 () Bool)

(assert (=> b!1172211 (= e!666313 (and e!666309 mapRes!46043))))

(declare-fun condMapEmpty!46043 () Bool)

(declare-fun mapDefault!46043 () ValueCell!14029)

