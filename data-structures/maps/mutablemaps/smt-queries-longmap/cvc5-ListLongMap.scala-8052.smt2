; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99188 () Bool)

(assert start!99188)

(declare-fun b_free!24757 () Bool)

(declare-fun b_next!24757 () Bool)

(assert (=> start!99188 (= b_free!24757 (not b_next!24757))))

(declare-fun tp!86983 () Bool)

(declare-fun b_and!40377 () Bool)

(assert (=> start!99188 (= tp!86983 b_and!40377)))

(declare-fun b!1166779 () Bool)

(declare-fun e!663249 () Bool)

(declare-fun e!663250 () Bool)

(assert (=> b!1166779 (= e!663249 e!663250)))

(declare-fun res!774046 () Bool)

(assert (=> b!1166779 (=> res!774046 e!663250)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1166779 (= res!774046 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44177 0))(
  ( (V!44178 (val!14700 Int)) )
))
(declare-fun zeroValue!944 () V!44177)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!75352 0))(
  ( (array!75353 (arr!36323 (Array (_ BitVec 32) (_ BitVec 64))) (size!36860 (_ BitVec 32))) )
))
(declare-fun lt!525355 () array!75352)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13934 0))(
  ( (ValueCellFull!13934 (v!17338 V!44177)) (EmptyCell!13934) )
))
(declare-datatypes ((array!75354 0))(
  ( (array!75355 (arr!36324 (Array (_ BitVec 32) ValueCell!13934)) (size!36861 (_ BitVec 32))) )
))
(declare-fun lt!525356 () array!75354)

(declare-datatypes ((tuple2!18830 0))(
  ( (tuple2!18831 (_1!9425 (_ BitVec 64)) (_2!9425 V!44177)) )
))
(declare-datatypes ((List!25605 0))(
  ( (Nil!25602) (Cons!25601 (h!26810 tuple2!18830) (t!37361 List!25605)) )
))
(declare-datatypes ((ListLongMap!16811 0))(
  ( (ListLongMap!16812 (toList!8421 List!25605)) )
))
(declare-fun lt!525353 () ListLongMap!16811)

(declare-fun minValue!944 () V!44177)

(declare-fun getCurrentListMapNoExtraKeys!4854 (array!75352 array!75354 (_ BitVec 32) (_ BitVec 32) V!44177 V!44177 (_ BitVec 32) Int) ListLongMap!16811)

(assert (=> b!1166779 (= lt!525353 (getCurrentListMapNoExtraKeys!4854 lt!525355 lt!525356 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!75354)

(declare-fun dynLambda!2848 (Int (_ BitVec 64)) V!44177)

(assert (=> b!1166779 (= lt!525356 (array!75355 (store (arr!36324 _values!996) i!673 (ValueCellFull!13934 (dynLambda!2848 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36861 _values!996)))))

(declare-fun _keys!1208 () array!75352)

(declare-fun lt!525354 () ListLongMap!16811)

(assert (=> b!1166779 (= lt!525354 (getCurrentListMapNoExtraKeys!4854 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1166780 () Bool)

(declare-fun res!774050 () Bool)

(declare-fun e!663247 () Bool)

(assert (=> b!1166780 (=> (not res!774050) (not e!663247))))

(assert (=> b!1166780 (= res!774050 (and (= (size!36861 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36860 _keys!1208) (size!36861 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166781 () Bool)

(declare-fun res!774049 () Bool)

(assert (=> b!1166781 (=> (not res!774049) (not e!663247))))

(declare-datatypes ((List!25606 0))(
  ( (Nil!25603) (Cons!25602 (h!26811 (_ BitVec 64)) (t!37362 List!25606)) )
))
(declare-fun arrayNoDuplicates!0 (array!75352 (_ BitVec 32) List!25606) Bool)

(assert (=> b!1166781 (= res!774049 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25603))))

(declare-fun b!1166782 () Bool)

(declare-fun e!663251 () Bool)

(declare-fun e!663246 () Bool)

(declare-fun mapRes!45755 () Bool)

(assert (=> b!1166782 (= e!663251 (and e!663246 mapRes!45755))))

(declare-fun condMapEmpty!45755 () Bool)

(declare-fun mapDefault!45755 () ValueCell!13934)

