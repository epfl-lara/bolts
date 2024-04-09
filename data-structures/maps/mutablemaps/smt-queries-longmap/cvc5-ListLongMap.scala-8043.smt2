; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99134 () Bool)

(assert start!99134)

(declare-fun b_free!24703 () Bool)

(declare-fun b_next!24703 () Bool)

(assert (=> start!99134 (= b_free!24703 (not b_next!24703))))

(declare-fun tp!86820 () Bool)

(declare-fun b_and!40269 () Bool)

(assert (=> start!99134 (= tp!86820 b_and!40269)))

(declare-fun b!1165526 () Bool)

(declare-fun e!662618 () Bool)

(declare-fun e!662614 () Bool)

(assert (=> b!1165526 (= e!662618 e!662614)))

(declare-fun res!773093 () Bool)

(assert (=> b!1165526 (=> (not res!773093) (not e!662614))))

(declare-datatypes ((array!75248 0))(
  ( (array!75249 (arr!36271 (Array (_ BitVec 32) (_ BitVec 64))) (size!36808 (_ BitVec 32))) )
))
(declare-fun lt!524901 () array!75248)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75248 (_ BitVec 32)) Bool)

(assert (=> b!1165526 (= res!773093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524901 mask!1564))))

(declare-fun _keys!1208 () array!75248)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1165526 (= lt!524901 (array!75249 (store (arr!36271 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36808 _keys!1208)))))

(declare-fun b!1165527 () Bool)

(declare-fun res!773096 () Bool)

(assert (=> b!1165527 (=> (not res!773096) (not e!662618))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165527 (= res!773096 (validKeyInArray!0 k!934))))

(declare-fun b!1165528 () Bool)

(declare-fun res!773092 () Bool)

(assert (=> b!1165528 (=> (not res!773092) (not e!662618))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44105 0))(
  ( (V!44106 (val!14673 Int)) )
))
(declare-datatypes ((ValueCell!13907 0))(
  ( (ValueCellFull!13907 (v!17311 V!44105)) (EmptyCell!13907) )
))
(declare-datatypes ((array!75250 0))(
  ( (array!75251 (arr!36272 (Array (_ BitVec 32) ValueCell!13907)) (size!36809 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75250)

(assert (=> b!1165528 (= res!773092 (and (= (size!36809 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36808 _keys!1208) (size!36809 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1165529 () Bool)

(declare-fun e!662615 () Bool)

(declare-fun tp_is_empty!29233 () Bool)

(assert (=> b!1165529 (= e!662615 tp_is_empty!29233)))

(declare-fun b!1165530 () Bool)

(declare-fun res!773090 () Bool)

(assert (=> b!1165530 (=> (not res!773090) (not e!662618))))

(assert (=> b!1165530 (= res!773090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!773099 () Bool)

(assert (=> start!99134 (=> (not res!773099) (not e!662618))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99134 (= res!773099 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36808 _keys!1208))))))

(assert (=> start!99134 e!662618))

(assert (=> start!99134 tp_is_empty!29233))

(declare-fun array_inv!27614 (array!75248) Bool)

(assert (=> start!99134 (array_inv!27614 _keys!1208)))

(assert (=> start!99134 true))

(assert (=> start!99134 tp!86820))

(declare-fun e!662616 () Bool)

(declare-fun array_inv!27615 (array!75250) Bool)

(assert (=> start!99134 (and (array_inv!27615 _values!996) e!662616)))

(declare-fun b!1165531 () Bool)

(declare-fun e!662613 () Bool)

(assert (=> b!1165531 (= e!662613 true)))

(declare-fun zeroValue!944 () V!44105)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18788 0))(
  ( (tuple2!18789 (_1!9404 (_ BitVec 64)) (_2!9404 V!44105)) )
))
(declare-datatypes ((List!25564 0))(
  ( (Nil!25561) (Cons!25560 (h!26769 tuple2!18788) (t!37266 List!25564)) )
))
(declare-datatypes ((ListLongMap!16769 0))(
  ( (ListLongMap!16770 (toList!8400 List!25564)) )
))
(declare-fun lt!524899 () ListLongMap!16769)

(declare-fun minValue!944 () V!44105)

(declare-fun getCurrentListMapNoExtraKeys!4833 (array!75248 array!75250 (_ BitVec 32) (_ BitVec 32) V!44105 V!44105 (_ BitVec 32) Int) ListLongMap!16769)

(declare-fun dynLambda!2830 (Int (_ BitVec 64)) V!44105)

(assert (=> b!1165531 (= lt!524899 (getCurrentListMapNoExtraKeys!4833 lt!524901 (array!75251 (store (arr!36272 _values!996) i!673 (ValueCellFull!13907 (dynLambda!2830 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36809 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524898 () ListLongMap!16769)

(assert (=> b!1165531 (= lt!524898 (getCurrentListMapNoExtraKeys!4833 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1165532 () Bool)

(declare-fun res!773094 () Bool)

(assert (=> b!1165532 (=> (not res!773094) (not e!662618))))

(declare-datatypes ((List!25565 0))(
  ( (Nil!25562) (Cons!25561 (h!26770 (_ BitVec 64)) (t!37267 List!25565)) )
))
(declare-fun arrayNoDuplicates!0 (array!75248 (_ BitVec 32) List!25565) Bool)

(assert (=> b!1165532 (= res!773094 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25562))))

(declare-fun b!1165533 () Bool)

(declare-fun res!773097 () Bool)

(assert (=> b!1165533 (=> (not res!773097) (not e!662618))))

(assert (=> b!1165533 (= res!773097 (= (select (arr!36271 _keys!1208) i!673) k!934))))

(declare-fun b!1165534 () Bool)

(declare-fun e!662619 () Bool)

(declare-fun mapRes!45674 () Bool)

(assert (=> b!1165534 (= e!662616 (and e!662619 mapRes!45674))))

(declare-fun condMapEmpty!45674 () Bool)

(declare-fun mapDefault!45674 () ValueCell!13907)

