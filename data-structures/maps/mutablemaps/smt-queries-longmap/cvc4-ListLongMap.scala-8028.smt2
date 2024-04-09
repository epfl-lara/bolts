; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99048 () Bool)

(assert start!99048)

(declare-fun b_free!24617 () Bool)

(declare-fun b_next!24617 () Bool)

(assert (=> start!99048 (= b_free!24617 (not b_next!24617))))

(declare-fun tp!86562 () Bool)

(declare-fun b_and!40097 () Bool)

(assert (=> start!99048 (= tp!86562 b_and!40097)))

(declare-fun lt!524045 () Bool)

(declare-fun b!1163331 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!661520 () Bool)

(assert (=> b!1163331 (= e!661520 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!524045) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!43989 0))(
  ( (V!43990 (val!14630 Int)) )
))
(declare-fun zeroValue!944 () V!43989)

(declare-datatypes ((tuple2!18730 0))(
  ( (tuple2!18731 (_1!9375 (_ BitVec 64)) (_2!9375 V!43989)) )
))
(declare-datatypes ((List!25505 0))(
  ( (Nil!25502) (Cons!25501 (h!26710 tuple2!18730) (t!37121 List!25505)) )
))
(declare-datatypes ((ListLongMap!16711 0))(
  ( (ListLongMap!16712 (toList!8371 List!25505)) )
))
(declare-fun lt!524059 () ListLongMap!16711)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun b!1163332 () Bool)

(declare-datatypes ((ValueCell!13864 0))(
  ( (ValueCellFull!13864 (v!17268 V!43989)) (EmptyCell!13864) )
))
(declare-datatypes ((array!75084 0))(
  ( (array!75085 (arr!36189 (Array (_ BitVec 32) ValueCell!13864)) (size!36726 (_ BitVec 32))) )
))
(declare-fun lt!524042 () array!75084)

(declare-fun minValue!944 () V!43989)

(declare-fun e!661532 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!75086 0))(
  ( (array!75087 (arr!36190 (Array (_ BitVec 32) (_ BitVec 64))) (size!36727 (_ BitVec 32))) )
))
(declare-fun lt!524052 () array!75086)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4805 (array!75086 array!75084 (_ BitVec 32) (_ BitVec 32) V!43989 V!43989 (_ BitVec 32) Int) ListLongMap!16711)

(assert (=> b!1163332 (= e!661532 (= lt!524059 (getCurrentListMapNoExtraKeys!4805 lt!524052 lt!524042 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1163333 () Bool)

(declare-fun e!661523 () Bool)

(declare-fun tp_is_empty!29147 () Bool)

(assert (=> b!1163333 (= e!661523 tp_is_empty!29147)))

(declare-fun b!1163334 () Bool)

(declare-fun res!771602 () Bool)

(declare-fun e!661531 () Bool)

(assert (=> b!1163334 (=> (not res!771602) (not e!661531))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun _keys!1208 () array!75086)

(assert (=> b!1163334 (= res!771602 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36727 _keys!1208))))))

(declare-fun b!1163335 () Bool)

(declare-fun res!771598 () Bool)

(assert (=> b!1163335 (=> (not res!771598) (not e!661531))))

(declare-fun _values!996 () array!75084)

(assert (=> b!1163335 (= res!771598 (and (= (size!36726 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36727 _keys!1208) (size!36726 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1163336 () Bool)

(declare-fun res!771607 () Bool)

(assert (=> b!1163336 (=> (not res!771607) (not e!661531))))

(assert (=> b!1163336 (= res!771607 (= (select (arr!36190 _keys!1208) i!673) k!934))))

(declare-fun b!1163337 () Bool)

(declare-fun call!56951 () ListLongMap!16711)

(declare-fun e!661524 () Bool)

(declare-fun call!56947 () ListLongMap!16711)

(declare-fun -!1437 (ListLongMap!16711 (_ BitVec 64)) ListLongMap!16711)

(assert (=> b!1163337 (= e!661524 (= call!56947 (-!1437 call!56951 k!934)))))

(declare-fun b!1163338 () Bool)

(declare-fun e!661527 () Bool)

(declare-fun arrayContainsKey!0 (array!75086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1163338 (= e!661527 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1163339 () Bool)

(declare-fun res!771596 () Bool)

(assert (=> b!1163339 (=> (not res!771596) (not e!661531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75086 (_ BitVec 32)) Bool)

(assert (=> b!1163339 (= res!771596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!56942 () Bool)

(declare-datatypes ((Unit!38287 0))(
  ( (Unit!38288) )
))
(declare-fun call!56949 () Unit!38287)

(declare-fun call!56948 () Unit!38287)

(assert (=> bm!56942 (= call!56949 call!56948)))

(declare-fun b!1163340 () Bool)

(declare-fun e!661533 () Bool)

(assert (=> b!1163340 (= e!661533 tp_is_empty!29147)))

(declare-fun mapIsEmpty!45545 () Bool)

(declare-fun mapRes!45545 () Bool)

(assert (=> mapIsEmpty!45545 mapRes!45545))

(declare-fun bm!56943 () Bool)

(declare-fun call!56946 () ListLongMap!16711)

(declare-fun call!56945 () ListLongMap!16711)

(assert (=> bm!56943 (= call!56946 call!56945)))

(declare-fun b!1163341 () Bool)

(declare-fun e!661528 () Bool)

(declare-fun e!661534 () Bool)

(assert (=> b!1163341 (= e!661528 e!661534)))

(declare-fun res!771595 () Bool)

(assert (=> b!1163341 (=> res!771595 e!661534)))

(assert (=> b!1163341 (= res!771595 (not (= (select (arr!36190 _keys!1208) from!1455) k!934)))))

(assert (=> b!1163341 e!661524))

(declare-fun c!116362 () Bool)

(assert (=> b!1163341 (= c!116362 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!524048 () Unit!38287)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!661 (array!75086 array!75084 (_ BitVec 32) (_ BitVec 32) V!43989 V!43989 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38287)

(assert (=> b!1163341 (= lt!524048 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!661 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56944 () Bool)

(assert (=> bm!56944 (= call!56947 (getCurrentListMapNoExtraKeys!4805 (ite c!116362 lt!524052 _keys!1208) (ite c!116362 lt!524042 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163342 () Bool)

(declare-fun e!661530 () Bool)

(assert (=> b!1163342 (= e!661530 e!661528)))

(declare-fun res!771606 () Bool)

(assert (=> b!1163342 (=> res!771606 e!661528)))

(assert (=> b!1163342 (= res!771606 (not (= from!1455 i!673)))))

(declare-fun lt!524060 () ListLongMap!16711)

(assert (=> b!1163342 (= lt!524060 (getCurrentListMapNoExtraKeys!4805 lt!524052 lt!524042 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524056 () V!43989)

(assert (=> b!1163342 (= lt!524042 (array!75085 (store (arr!36189 _values!996) i!673 (ValueCellFull!13864 lt!524056)) (size!36726 _values!996)))))

(declare-fun dynLambda!2802 (Int (_ BitVec 64)) V!43989)

(assert (=> b!1163342 (= lt!524056 (dynLambda!2802 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!524053 () ListLongMap!16711)

(assert (=> b!1163342 (= lt!524053 (getCurrentListMapNoExtraKeys!4805 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!771600 () Bool)

(assert (=> start!99048 (=> (not res!771600) (not e!661531))))

(assert (=> start!99048 (= res!771600 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36727 _keys!1208))))))

(assert (=> start!99048 e!661531))

(assert (=> start!99048 tp_is_empty!29147))

(declare-fun array_inv!27560 (array!75086) Bool)

(assert (=> start!99048 (array_inv!27560 _keys!1208)))

(assert (=> start!99048 true))

(assert (=> start!99048 tp!86562))

(declare-fun e!661525 () Bool)

(declare-fun array_inv!27561 (array!75084) Bool)

(assert (=> start!99048 (and (array_inv!27561 _values!996) e!661525)))

(declare-fun b!1163330 () Bool)

(assert (=> b!1163330 (= e!661534 true)))

(assert (=> b!1163330 e!661532))

(declare-fun res!771605 () Bool)

(assert (=> b!1163330 (=> (not res!771605) (not e!661532))))

(declare-fun lt!524044 () ListLongMap!16711)

(assert (=> b!1163330 (= res!771605 (= lt!524059 lt!524044))))

(assert (=> b!1163330 (= lt!524059 (-!1437 lt!524053 k!934))))

(declare-fun lt!524043 () V!43989)

(declare-fun +!3692 (ListLongMap!16711 tuple2!18730) ListLongMap!16711)

(assert (=> b!1163330 (= (-!1437 (+!3692 lt!524044 (tuple2!18731 (select (arr!36190 _keys!1208) from!1455) lt!524043)) (select (arr!36190 _keys!1208) from!1455)) lt!524044)))

(declare-fun lt!524049 () Unit!38287)

(declare-fun addThenRemoveForNewKeyIsSame!270 (ListLongMap!16711 (_ BitVec 64) V!43989) Unit!38287)

(assert (=> b!1163330 (= lt!524049 (addThenRemoveForNewKeyIsSame!270 lt!524044 (select (arr!36190 _keys!1208) from!1455) lt!524043))))

(declare-fun get!18496 (ValueCell!13864 V!43989) V!43989)

(assert (=> b!1163330 (= lt!524043 (get!18496 (select (arr!36189 _values!996) from!1455) lt!524056))))

(declare-fun lt!524055 () Unit!38287)

(declare-fun e!661526 () Unit!38287)

(assert (=> b!1163330 (= lt!524055 e!661526)))

(declare-fun c!116364 () Bool)

(declare-fun contains!6849 (ListLongMap!16711 (_ BitVec 64)) Bool)

(assert (=> b!1163330 (= c!116364 (contains!6849 lt!524044 k!934))))

(assert (=> b!1163330 (= lt!524044 (getCurrentListMapNoExtraKeys!4805 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163343 () Bool)

(assert (=> b!1163343 (= e!661525 (and e!661533 mapRes!45545))))

(declare-fun condMapEmpty!45545 () Bool)

(declare-fun mapDefault!45545 () ValueCell!13864)

