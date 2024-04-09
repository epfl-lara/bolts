; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99358 () Bool)

(assert start!99358)

(declare-fun b_free!24901 () Bool)

(declare-fun b_next!24901 () Bool)

(assert (=> start!99358 (= b_free!24901 (not b_next!24901))))

(declare-fun tp!87418 () Bool)

(declare-fun b_and!40683 () Bool)

(assert (=> start!99358 (= tp!87418 b_and!40683)))

(declare-fun b!1170656 () Bool)

(declare-fun res!777061 () Bool)

(declare-fun e!665418 () Bool)

(assert (=> b!1170656 (=> (not res!777061) (not e!665418))))

(declare-datatypes ((array!75638 0))(
  ( (array!75639 (arr!36465 (Array (_ BitVec 32) (_ BitVec 64))) (size!37002 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75638)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44369 0))(
  ( (V!44370 (val!14772 Int)) )
))
(declare-datatypes ((ValueCell!14006 0))(
  ( (ValueCellFull!14006 (v!17411 V!44369)) (EmptyCell!14006) )
))
(declare-datatypes ((array!75640 0))(
  ( (array!75641 (arr!36466 (Array (_ BitVec 32) ValueCell!14006)) (size!37003 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75640)

(assert (=> b!1170656 (= res!777061 (and (= (size!37003 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37002 _keys!1208) (size!37003 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1170657 () Bool)

(declare-fun e!665417 () Bool)

(declare-fun e!665422 () Bool)

(assert (=> b!1170657 (= e!665417 e!665422)))

(declare-fun res!777059 () Bool)

(assert (=> b!1170657 (=> res!777059 e!665422)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1170657 (= res!777059 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44369)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!527238 () array!75638)

(declare-datatypes ((tuple2!18958 0))(
  ( (tuple2!18959 (_1!9489 (_ BitVec 64)) (_2!9489 V!44369)) )
))
(declare-datatypes ((List!25729 0))(
  ( (Nil!25726) (Cons!25725 (h!26934 tuple2!18958) (t!37629 List!25729)) )
))
(declare-datatypes ((ListLongMap!16939 0))(
  ( (ListLongMap!16940 (toList!8485 List!25729)) )
))
(declare-fun lt!527244 () ListLongMap!16939)

(declare-fun lt!527237 () array!75640)

(declare-fun minValue!944 () V!44369)

(declare-fun getCurrentListMapNoExtraKeys!4917 (array!75638 array!75640 (_ BitVec 32) (_ BitVec 32) V!44369 V!44369 (_ BitVec 32) Int) ListLongMap!16939)

(assert (=> b!1170657 (= lt!527244 (getCurrentListMapNoExtraKeys!4917 lt!527238 lt!527237 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527245 () V!44369)

(assert (=> b!1170657 (= lt!527237 (array!75641 (store (arr!36466 _values!996) i!673 (ValueCellFull!14006 lt!527245)) (size!37003 _values!996)))))

(declare-fun dynLambda!2906 (Int (_ BitVec 64)) V!44369)

(assert (=> b!1170657 (= lt!527245 (dynLambda!2906 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527246 () ListLongMap!16939)

(assert (=> b!1170657 (= lt!527246 (getCurrentListMapNoExtraKeys!4917 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1170658 () Bool)

(declare-fun e!665424 () Bool)

(declare-fun e!665428 () Bool)

(assert (=> b!1170658 (= e!665424 e!665428)))

(declare-fun res!777054 () Bool)

(assert (=> b!1170658 (=> res!777054 e!665428)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1170658 (= res!777054 (not (= (select (arr!36465 _keys!1208) from!1455) k!934)))))

(declare-fun mapNonEmpty!45974 () Bool)

(declare-fun mapRes!45974 () Bool)

(declare-fun tp!87417 () Bool)

(declare-fun e!665419 () Bool)

(assert (=> mapNonEmpty!45974 (= mapRes!45974 (and tp!87417 e!665419))))

(declare-fun mapRest!45974 () (Array (_ BitVec 32) ValueCell!14006))

(declare-fun mapKey!45974 () (_ BitVec 32))

(declare-fun mapValue!45974 () ValueCell!14006)

(assert (=> mapNonEmpty!45974 (= (arr!36466 _values!996) (store mapRest!45974 mapKey!45974 mapValue!45974))))

(declare-fun b!1170659 () Bool)

(declare-fun e!665421 () Bool)

(declare-fun e!665427 () Bool)

(assert (=> b!1170659 (= e!665421 (and e!665427 mapRes!45974))))

(declare-fun condMapEmpty!45974 () Bool)

(declare-fun mapDefault!45974 () ValueCell!14006)

