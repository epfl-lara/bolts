; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99344 () Bool)

(assert start!99344)

(declare-fun b_free!24887 () Bool)

(declare-fun b_next!24887 () Bool)

(assert (=> start!99344 (= b_free!24887 (not b_next!24887))))

(declare-fun tp!87376 () Bool)

(declare-fun b_and!40655 () Bool)

(assert (=> start!99344 (= tp!87376 b_and!40655)))

(declare-fun b!1170243 () Bool)

(declare-fun e!665168 () Bool)

(declare-fun tp_is_empty!29417 () Bool)

(assert (=> b!1170243 (= e!665168 tp_is_empty!29417)))

(declare-fun b!1170244 () Bool)

(declare-fun res!776724 () Bool)

(declare-fun e!665170 () Bool)

(assert (=> b!1170244 (=> (not res!776724) (not e!665170))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170244 (= res!776724 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!45953 () Bool)

(declare-fun mapRes!45953 () Bool)

(declare-fun tp!87375 () Bool)

(declare-fun e!665171 () Bool)

(assert (=> mapNonEmpty!45953 (= mapRes!45953 (and tp!87375 e!665171))))

(declare-datatypes ((V!44349 0))(
  ( (V!44350 (val!14765 Int)) )
))
(declare-datatypes ((ValueCell!13999 0))(
  ( (ValueCellFull!13999 (v!17404 V!44349)) (EmptyCell!13999) )
))
(declare-fun mapValue!45953 () ValueCell!13999)

(declare-fun mapRest!45953 () (Array (_ BitVec 32) ValueCell!13999))

(declare-fun mapKey!45953 () (_ BitVec 32))

(declare-datatypes ((array!75610 0))(
  ( (array!75611 (arr!36451 (Array (_ BitVec 32) ValueCell!13999)) (size!36988 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75610)

(assert (=> mapNonEmpty!45953 (= (arr!36451 _values!996) (store mapRest!45953 mapKey!45953 mapValue!45953))))

(declare-fun b!1170245 () Bool)

(declare-fun res!776723 () Bool)

(assert (=> b!1170245 (=> (not res!776723) (not e!665170))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75612 0))(
  ( (array!75613 (arr!36452 (Array (_ BitVec 32) (_ BitVec 64))) (size!36989 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75612)

(assert (=> b!1170245 (= res!776723 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36989 _keys!1208))))))

(declare-fun b!1170247 () Bool)

(declare-fun e!665172 () Bool)

(declare-fun arrayContainsKey!0 (array!75612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170247 (= e!665172 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1170248 () Bool)

(declare-fun res!776721 () Bool)

(assert (=> b!1170248 (=> (not res!776721) (not e!665170))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1170248 (= res!776721 (validMask!0 mask!1564))))

(declare-fun b!1170249 () Bool)

(declare-fun res!776720 () Bool)

(declare-fun e!665176 () Bool)

(assert (=> b!1170249 (=> (not res!776720) (not e!665176))))

(declare-fun lt!527009 () array!75612)

(declare-datatypes ((List!25717 0))(
  ( (Nil!25714) (Cons!25713 (h!26922 (_ BitVec 64)) (t!37603 List!25717)) )
))
(declare-fun arrayNoDuplicates!0 (array!75612 (_ BitVec 32) List!25717) Bool)

(assert (=> b!1170249 (= res!776720 (arrayNoDuplicates!0 lt!527009 #b00000000000000000000000000000000 Nil!25714))))

(declare-fun b!1170250 () Bool)

(declare-fun e!665167 () Bool)

(assert (=> b!1170250 (= e!665176 (not e!665167))))

(declare-fun res!776712 () Bool)

(assert (=> b!1170250 (=> res!776712 e!665167)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1170250 (= res!776712 (bvsgt from!1455 i!673))))

(assert (=> b!1170250 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38500 0))(
  ( (Unit!38501) )
))
(declare-fun lt!527010 () Unit!38500)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75612 (_ BitVec 64) (_ BitVec 32)) Unit!38500)

(assert (=> b!1170250 (= lt!527010 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1170251 () Bool)

(declare-fun res!776713 () Bool)

(assert (=> b!1170251 (=> (not res!776713) (not e!665170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75612 (_ BitVec 32)) Bool)

(assert (=> b!1170251 (= res!776713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1170252 () Bool)

(declare-fun res!776722 () Bool)

(assert (=> b!1170252 (=> (not res!776722) (not e!665170))))

(assert (=> b!1170252 (= res!776722 (= (select (arr!36452 _keys!1208) i!673) k!934))))

(declare-fun b!1170253 () Bool)

(declare-fun e!665175 () Bool)

(declare-fun e!665165 () Bool)

(assert (=> b!1170253 (= e!665175 e!665165)))

(declare-fun res!776711 () Bool)

(assert (=> b!1170253 (=> res!776711 e!665165)))

(assert (=> b!1170253 (= res!776711 (not (= (select (arr!36452 _keys!1208) from!1455) k!934)))))

(declare-fun e!665169 () Bool)

(assert (=> b!1170253 e!665169))

(declare-fun res!776710 () Bool)

(assert (=> b!1170253 (=> (not res!776710) (not e!665169))))

(declare-fun lt!527013 () V!44349)

(declare-datatypes ((tuple2!18946 0))(
  ( (tuple2!18947 (_1!9483 (_ BitVec 64)) (_2!9483 V!44349)) )
))
(declare-datatypes ((List!25718 0))(
  ( (Nil!25715) (Cons!25714 (h!26923 tuple2!18946) (t!37604 List!25718)) )
))
(declare-datatypes ((ListLongMap!16927 0))(
  ( (ListLongMap!16928 (toList!8479 List!25718)) )
))
(declare-fun lt!527006 () ListLongMap!16927)

(declare-fun lt!527008 () ListLongMap!16927)

(declare-fun +!3723 (ListLongMap!16927 tuple2!18946) ListLongMap!16927)

(declare-fun get!18618 (ValueCell!13999 V!44349) V!44349)

(assert (=> b!1170253 (= res!776710 (= lt!527006 (+!3723 lt!527008 (tuple2!18947 (select (arr!36452 _keys!1208) from!1455) (get!18618 (select (arr!36451 _values!996) from!1455) lt!527013)))))))

(declare-fun mapIsEmpty!45953 () Bool)

(assert (=> mapIsEmpty!45953 mapRes!45953))

(declare-fun b!1170254 () Bool)

(declare-fun e!665174 () Bool)

(assert (=> b!1170254 (= e!665174 (and e!665168 mapRes!45953))))

(declare-fun condMapEmpty!45953 () Bool)

(declare-fun mapDefault!45953 () ValueCell!13999)

