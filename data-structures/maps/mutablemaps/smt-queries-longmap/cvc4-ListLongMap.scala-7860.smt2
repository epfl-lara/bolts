; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97944 () Bool)

(assert start!97944)

(declare-fun b_free!23609 () Bool)

(declare-fun b_next!23609 () Bool)

(assert (=> start!97944 (= b_free!23609 (not b_next!23609))))

(declare-fun tp!83531 () Bool)

(declare-fun b_and!38023 () Bool)

(assert (=> start!97944 (= tp!83531 b_and!38023)))

(declare-fun b!1121455 () Bool)

(declare-fun res!749285 () Bool)

(declare-fun e!638563 () Bool)

(assert (=> b!1121455 (=> (not res!749285) (not e!638563))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121455 (= res!749285 (validKeyInArray!0 k!934))))

(declare-fun b!1121456 () Bool)

(declare-fun e!638565 () Bool)

(declare-datatypes ((V!42645 0))(
  ( (V!42646 (val!14126 Int)) )
))
(declare-datatypes ((tuple2!17792 0))(
  ( (tuple2!17793 (_1!8906 (_ BitVec 64)) (_2!8906 V!42645)) )
))
(declare-datatypes ((List!24630 0))(
  ( (Nil!24627) (Cons!24626 (h!25835 tuple2!17792) (t!35238 List!24630)) )
))
(declare-datatypes ((ListLongMap!15773 0))(
  ( (ListLongMap!15774 (toList!7902 List!24630)) )
))
(declare-fun call!47110 () ListLongMap!15773)

(declare-fun call!47111 () ListLongMap!15773)

(assert (=> b!1121456 (= e!638565 (= call!47110 call!47111))))

(declare-fun b!1121457 () Bool)

(declare-fun -!1067 (ListLongMap!15773 (_ BitVec 64)) ListLongMap!15773)

(assert (=> b!1121457 (= e!638565 (= call!47110 (-!1067 call!47111 k!934)))))

(declare-fun b!1121458 () Bool)

(declare-fun e!638566 () Bool)

(declare-fun tp_is_empty!28139 () Bool)

(assert (=> b!1121458 (= e!638566 tp_is_empty!28139)))

(declare-fun b!1121459 () Bool)

(declare-fun e!638568 () Bool)

(assert (=> b!1121459 (= e!638568 tp_is_empty!28139)))

(declare-fun b!1121460 () Bool)

(declare-fun e!638562 () Bool)

(assert (=> b!1121460 (= e!638562 true)))

(assert (=> b!1121460 e!638565))

(declare-fun c!109364 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1121460 (= c!109364 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42645)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36719 0))(
  ( (Unit!36720) )
))
(declare-fun lt!498352 () Unit!36719)

(declare-datatypes ((ValueCell!13360 0))(
  ( (ValueCellFull!13360 (v!16760 V!42645)) (EmptyCell!13360) )
))
(declare-datatypes ((array!73104 0))(
  ( (array!73105 (arr!35201 (Array (_ BitVec 32) ValueCell!13360)) (size!35738 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73104)

(declare-fun minValue!944 () V!42645)

(declare-datatypes ((array!73106 0))(
  ( (array!73107 (arr!35202 (Array (_ BitVec 32) (_ BitVec 64))) (size!35739 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73106)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!322 (array!73106 array!73104 (_ BitVec 32) (_ BitVec 32) V!42645 V!42645 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36719)

(assert (=> b!1121460 (= lt!498352 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!322 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44026 () Bool)

(declare-fun mapRes!44026 () Bool)

(assert (=> mapIsEmpty!44026 mapRes!44026))

(declare-fun b!1121461 () Bool)

(declare-fun res!749278 () Bool)

(declare-fun e!638570 () Bool)

(assert (=> b!1121461 (=> (not res!749278) (not e!638570))))

(declare-fun lt!498353 () array!73106)

(declare-datatypes ((List!24631 0))(
  ( (Nil!24628) (Cons!24627 (h!25836 (_ BitVec 64)) (t!35239 List!24631)) )
))
(declare-fun arrayNoDuplicates!0 (array!73106 (_ BitVec 32) List!24631) Bool)

(assert (=> b!1121461 (= res!749278 (arrayNoDuplicates!0 lt!498353 #b00000000000000000000000000000000 Nil!24628))))

(declare-fun b!1121462 () Bool)

(declare-fun res!749283 () Bool)

(assert (=> b!1121462 (=> (not res!749283) (not e!638563))))

(assert (=> b!1121462 (= res!749283 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35739 _keys!1208))))))

(declare-fun b!1121463 () Bool)

(declare-fun res!749275 () Bool)

(assert (=> b!1121463 (=> (not res!749275) (not e!638563))))

(assert (=> b!1121463 (= res!749275 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24628))))

(declare-fun bm!47107 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4363 (array!73106 array!73104 (_ BitVec 32) (_ BitVec 32) V!42645 V!42645 (_ BitVec 32) Int) ListLongMap!15773)

(assert (=> bm!47107 (= call!47111 (getCurrentListMapNoExtraKeys!4363 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121464 () Bool)

(assert (=> b!1121464 (= e!638563 e!638570)))

(declare-fun res!749277 () Bool)

(assert (=> b!1121464 (=> (not res!749277) (not e!638570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73106 (_ BitVec 32)) Bool)

(assert (=> b!1121464 (= res!749277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498353 mask!1564))))

(assert (=> b!1121464 (= lt!498353 (array!73107 (store (arr!35202 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35739 _keys!1208)))))

(declare-fun b!1121465 () Bool)

(declare-fun e!638564 () Bool)

(assert (=> b!1121465 (= e!638564 e!638562)))

(declare-fun res!749284 () Bool)

(assert (=> b!1121465 (=> res!749284 e!638562)))

(assert (=> b!1121465 (= res!749284 (not (= from!1455 i!673)))))

(declare-fun lt!498350 () array!73104)

(declare-fun lt!498349 () ListLongMap!15773)

(assert (=> b!1121465 (= lt!498349 (getCurrentListMapNoExtraKeys!4363 lt!498353 lt!498350 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2462 (Int (_ BitVec 64)) V!42645)

(assert (=> b!1121465 (= lt!498350 (array!73105 (store (arr!35201 _values!996) i!673 (ValueCellFull!13360 (dynLambda!2462 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35738 _values!996)))))

(declare-fun lt!498354 () ListLongMap!15773)

(assert (=> b!1121465 (= lt!498354 (getCurrentListMapNoExtraKeys!4363 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!749280 () Bool)

(assert (=> start!97944 (=> (not res!749280) (not e!638563))))

(assert (=> start!97944 (= res!749280 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35739 _keys!1208))))))

(assert (=> start!97944 e!638563))

(assert (=> start!97944 tp_is_empty!28139))

(declare-fun array_inv!26908 (array!73106) Bool)

(assert (=> start!97944 (array_inv!26908 _keys!1208)))

(assert (=> start!97944 true))

(assert (=> start!97944 tp!83531))

(declare-fun e!638569 () Bool)

(declare-fun array_inv!26909 (array!73104) Bool)

(assert (=> start!97944 (and (array_inv!26909 _values!996) e!638569)))

(declare-fun b!1121466 () Bool)

(assert (=> b!1121466 (= e!638569 (and e!638568 mapRes!44026))))

(declare-fun condMapEmpty!44026 () Bool)

(declare-fun mapDefault!44026 () ValueCell!13360)

