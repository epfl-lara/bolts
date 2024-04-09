; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99316 () Bool)

(assert start!99316)

(declare-fun b_free!24859 () Bool)

(declare-fun b_next!24859 () Bool)

(assert (=> start!99316 (= b_free!24859 (not b_next!24859))))

(declare-fun tp!87291 () Bool)

(declare-fun b_and!40599 () Bool)

(assert (=> start!99316 (= tp!87291 b_and!40599)))

(declare-fun res!776071 () Bool)

(declare-fun e!664695 () Bool)

(assert (=> start!99316 (=> (not res!776071) (not e!664695))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75554 0))(
  ( (array!75555 (arr!36423 (Array (_ BitVec 32) (_ BitVec 64))) (size!36960 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75554)

(assert (=> start!99316 (= res!776071 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36960 _keys!1208))))))

(assert (=> start!99316 e!664695))

(declare-fun tp_is_empty!29389 () Bool)

(assert (=> start!99316 tp_is_empty!29389))

(declare-fun array_inv!27720 (array!75554) Bool)

(assert (=> start!99316 (array_inv!27720 _keys!1208)))

(assert (=> start!99316 true))

(assert (=> start!99316 tp!87291))

(declare-datatypes ((V!44313 0))(
  ( (V!44314 (val!14751 Int)) )
))
(declare-datatypes ((ValueCell!13985 0))(
  ( (ValueCellFull!13985 (v!17390 V!44313)) (EmptyCell!13985) )
))
(declare-datatypes ((array!75556 0))(
  ( (array!75557 (arr!36424 (Array (_ BitVec 32) ValueCell!13985)) (size!36961 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75556)

(declare-fun e!664690 () Bool)

(declare-fun array_inv!27721 (array!75556) Bool)

(assert (=> start!99316 (and (array_inv!27721 _values!996) e!664690)))

(declare-fun b!1169442 () Bool)

(declare-fun res!776069 () Bool)

(assert (=> b!1169442 (=> (not res!776069) (not e!664695))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1169442 (= res!776069 (validMask!0 mask!1564))))

(declare-fun b!1169443 () Bool)

(declare-fun e!664694 () Bool)

(declare-fun e!664696 () Bool)

(assert (=> b!1169443 (= e!664694 e!664696)))

(declare-fun res!776068 () Bool)

(assert (=> b!1169443 (=> res!776068 e!664696)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1169443 (= res!776068 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44313)

(declare-fun lt!526572 () array!75556)

(declare-fun lt!526575 () array!75554)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44313)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18920 0))(
  ( (tuple2!18921 (_1!9470 (_ BitVec 64)) (_2!9470 V!44313)) )
))
(declare-datatypes ((List!25692 0))(
  ( (Nil!25689) (Cons!25688 (h!26897 tuple2!18920) (t!37550 List!25692)) )
))
(declare-datatypes ((ListLongMap!16901 0))(
  ( (ListLongMap!16902 (toList!8466 List!25692)) )
))
(declare-fun lt!526577 () ListLongMap!16901)

(declare-fun getCurrentListMapNoExtraKeys!4899 (array!75554 array!75556 (_ BitVec 32) (_ BitVec 32) V!44313 V!44313 (_ BitVec 32) Int) ListLongMap!16901)

(assert (=> b!1169443 (= lt!526577 (getCurrentListMapNoExtraKeys!4899 lt!526575 lt!526572 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!526569 () V!44313)

(assert (=> b!1169443 (= lt!526572 (array!75557 (store (arr!36424 _values!996) i!673 (ValueCellFull!13985 lt!526569)) (size!36961 _values!996)))))

(declare-fun dynLambda!2890 (Int (_ BitVec 64)) V!44313)

(assert (=> b!1169443 (= lt!526569 (dynLambda!2890 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526571 () ListLongMap!16901)

(assert (=> b!1169443 (= lt!526571 (getCurrentListMapNoExtraKeys!4899 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1169444 () Bool)

(declare-fun e!664693 () Bool)

(assert (=> b!1169444 (= e!664693 true)))

(declare-fun e!664687 () Bool)

(assert (=> b!1169444 e!664687))

(declare-fun res!776063 () Bool)

(assert (=> b!1169444 (=> (not res!776063) (not e!664687))))

(declare-fun lt!526578 () ListLongMap!16901)

(declare-fun +!3713 (ListLongMap!16901 tuple2!18920) ListLongMap!16901)

(declare-fun get!18600 (ValueCell!13985 V!44313) V!44313)

(assert (=> b!1169444 (= res!776063 (= lt!526577 (+!3713 lt!526578 (tuple2!18921 (select (arr!36423 _keys!1208) from!1455) (get!18600 (select (arr!36424 _values!996) from!1455) lt!526569)))))))

(declare-fun b!1169445 () Bool)

(declare-fun res!776067 () Bool)

(assert (=> b!1169445 (=> (not res!776067) (not e!664695))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75554 (_ BitVec 32)) Bool)

(assert (=> b!1169445 (= res!776067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169446 () Bool)

(declare-fun res!776066 () Bool)

(assert (=> b!1169446 (=> (not res!776066) (not e!664695))))

(assert (=> b!1169446 (= res!776066 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36960 _keys!1208))))))

(declare-fun b!1169447 () Bool)

(declare-fun e!664688 () Bool)

(assert (=> b!1169447 (= e!664688 tp_is_empty!29389)))

(declare-fun b!1169448 () Bool)

(declare-fun e!664692 () Bool)

(assert (=> b!1169448 (= e!664692 (not e!664694))))

(declare-fun res!776070 () Bool)

(assert (=> b!1169448 (=> res!776070 e!664694)))

(assert (=> b!1169448 (= res!776070 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169448 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38476 0))(
  ( (Unit!38477) )
))
(declare-fun lt!526573 () Unit!38476)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75554 (_ BitVec 64) (_ BitVec 32)) Unit!38476)

(assert (=> b!1169448 (= lt!526573 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1169449 () Bool)

(declare-fun e!664686 () Bool)

(declare-fun mapRes!45911 () Bool)

(assert (=> b!1169449 (= e!664690 (and e!664686 mapRes!45911))))

(declare-fun condMapEmpty!45911 () Bool)

(declare-fun mapDefault!45911 () ValueCell!13985)

