; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99128 () Bool)

(assert start!99128)

(declare-fun b_free!24697 () Bool)

(declare-fun b_next!24697 () Bool)

(assert (=> start!99128 (= b_free!24697 (not b_next!24697))))

(declare-fun tp!86802 () Bool)

(declare-fun b_and!40257 () Bool)

(assert (=> start!99128 (= tp!86802 b_and!40257)))

(declare-fun mapNonEmpty!45665 () Bool)

(declare-fun mapRes!45665 () Bool)

(declare-fun tp!86803 () Bool)

(declare-fun e!662552 () Bool)

(assert (=> mapNonEmpty!45665 (= mapRes!45665 (and tp!86803 e!662552))))

(declare-datatypes ((V!44097 0))(
  ( (V!44098 (val!14670 Int)) )
))
(declare-datatypes ((ValueCell!13904 0))(
  ( (ValueCellFull!13904 (v!17308 V!44097)) (EmptyCell!13904) )
))
(declare-datatypes ((array!75238 0))(
  ( (array!75239 (arr!36266 (Array (_ BitVec 32) ValueCell!13904)) (size!36803 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75238)

(declare-fun mapRest!45665 () (Array (_ BitVec 32) ValueCell!13904))

(declare-fun mapValue!45665 () ValueCell!13904)

(declare-fun mapKey!45665 () (_ BitVec 32))

(assert (=> mapNonEmpty!45665 (= (arr!36266 _values!996) (store mapRest!45665 mapKey!45665 mapValue!45665))))

(declare-fun b!1165394 () Bool)

(declare-fun res!772990 () Bool)

(declare-fun e!662556 () Bool)

(assert (=> b!1165394 (=> (not res!772990) (not e!662556))))

(declare-datatypes ((array!75240 0))(
  ( (array!75241 (arr!36267 (Array (_ BitVec 32) (_ BitVec 64))) (size!36804 (_ BitVec 32))) )
))
(declare-fun lt!524865 () array!75240)

(declare-datatypes ((List!25560 0))(
  ( (Nil!25557) (Cons!25556 (h!26765 (_ BitVec 64)) (t!37256 List!25560)) )
))
(declare-fun arrayNoDuplicates!0 (array!75240 (_ BitVec 32) List!25560) Bool)

(assert (=> b!1165394 (= res!772990 (arrayNoDuplicates!0 lt!524865 #b00000000000000000000000000000000 Nil!25557))))

(declare-fun b!1165395 () Bool)

(declare-fun res!772996 () Bool)

(declare-fun e!662550 () Bool)

(assert (=> b!1165395 (=> (not res!772996) (not e!662550))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165395 (= res!772996 (validMask!0 mask!1564))))

(declare-fun b!1165396 () Bool)

(declare-fun res!773000 () Bool)

(assert (=> b!1165396 (=> (not res!773000) (not e!662550))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun _keys!1208 () array!75240)

(assert (=> b!1165396 (= res!773000 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36804 _keys!1208))))))

(declare-fun b!1165397 () Bool)

(declare-fun res!772993 () Bool)

(assert (=> b!1165397 (=> (not res!772993) (not e!662550))))

(assert (=> b!1165397 (= res!772993 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25557))))

(declare-fun b!1165398 () Bool)

(declare-fun e!662555 () Bool)

(declare-fun tp_is_empty!29227 () Bool)

(assert (=> b!1165398 (= e!662555 tp_is_empty!29227)))

(declare-fun b!1165399 () Bool)

(declare-fun e!662553 () Bool)

(assert (=> b!1165399 (= e!662553 true)))

(declare-fun zeroValue!944 () V!44097)

(declare-datatypes ((tuple2!18784 0))(
  ( (tuple2!18785 (_1!9402 (_ BitVec 64)) (_2!9402 V!44097)) )
))
(declare-datatypes ((List!25561 0))(
  ( (Nil!25558) (Cons!25557 (h!26766 tuple2!18784) (t!37257 List!25561)) )
))
(declare-datatypes ((ListLongMap!16765 0))(
  ( (ListLongMap!16766 (toList!8398 List!25561)) )
))
(declare-fun lt!524862 () ListLongMap!16765)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!44097)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4831 (array!75240 array!75238 (_ BitVec 32) (_ BitVec 32) V!44097 V!44097 (_ BitVec 32) Int) ListLongMap!16765)

(declare-fun dynLambda!2828 (Int (_ BitVec 64)) V!44097)

(assert (=> b!1165399 (= lt!524862 (getCurrentListMapNoExtraKeys!4831 lt!524865 (array!75239 (store (arr!36266 _values!996) i!673 (ValueCellFull!13904 (dynLambda!2828 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36803 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524863 () ListLongMap!16765)

(assert (=> b!1165399 (= lt!524863 (getCurrentListMapNoExtraKeys!4831 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!772991 () Bool)

(assert (=> start!99128 (=> (not res!772991) (not e!662550))))

(assert (=> start!99128 (= res!772991 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36804 _keys!1208))))))

(assert (=> start!99128 e!662550))

(assert (=> start!99128 tp_is_empty!29227))

(declare-fun array_inv!27610 (array!75240) Bool)

(assert (=> start!99128 (array_inv!27610 _keys!1208)))

(assert (=> start!99128 true))

(assert (=> start!99128 tp!86802))

(declare-fun e!662551 () Bool)

(declare-fun array_inv!27611 (array!75238) Bool)

(assert (=> start!99128 (and (array_inv!27611 _values!996) e!662551)))

(declare-fun b!1165400 () Bool)

(assert (=> b!1165400 (= e!662550 e!662556)))

(declare-fun res!772995 () Bool)

(assert (=> b!1165400 (=> (not res!772995) (not e!662556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75240 (_ BitVec 32)) Bool)

(assert (=> b!1165400 (= res!772995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524865 mask!1564))))

(assert (=> b!1165400 (= lt!524865 (array!75241 (store (arr!36267 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36804 _keys!1208)))))

(declare-fun b!1165401 () Bool)

(declare-fun res!772997 () Bool)

(assert (=> b!1165401 (=> (not res!772997) (not e!662550))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165401 (= res!772997 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!45665 () Bool)

(assert (=> mapIsEmpty!45665 mapRes!45665))

(declare-fun b!1165402 () Bool)

(declare-fun res!772999 () Bool)

(assert (=> b!1165402 (=> (not res!772999) (not e!662550))))

(assert (=> b!1165402 (= res!772999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1165403 () Bool)

(declare-fun res!772998 () Bool)

(assert (=> b!1165403 (=> (not res!772998) (not e!662550))))

(assert (=> b!1165403 (= res!772998 (and (= (size!36803 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36804 _keys!1208) (size!36803 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1165404 () Bool)

(declare-fun res!772992 () Bool)

(assert (=> b!1165404 (=> (not res!772992) (not e!662550))))

(assert (=> b!1165404 (= res!772992 (= (select (arr!36267 _keys!1208) i!673) k!934))))

(declare-fun b!1165405 () Bool)

(assert (=> b!1165405 (= e!662552 tp_is_empty!29227)))

(declare-fun b!1165406 () Bool)

(assert (=> b!1165406 (= e!662556 (not e!662553))))

(declare-fun res!772994 () Bool)

(assert (=> b!1165406 (=> res!772994 e!662553)))

(assert (=> b!1165406 (= res!772994 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75240 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165406 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38352 0))(
  ( (Unit!38353) )
))
(declare-fun lt!524864 () Unit!38352)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75240 (_ BitVec 64) (_ BitVec 32)) Unit!38352)

(assert (=> b!1165406 (= lt!524864 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1165407 () Bool)

(assert (=> b!1165407 (= e!662551 (and e!662555 mapRes!45665))))

(declare-fun condMapEmpty!45665 () Bool)

(declare-fun mapDefault!45665 () ValueCell!13904)

