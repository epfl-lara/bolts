; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100100 () Bool)

(assert start!100100)

(declare-fun b_free!25643 () Bool)

(declare-fun b_next!25643 () Bool)

(assert (=> start!100100 (= b_free!25643 (not b_next!25643))))

(declare-fun tp!89643 () Bool)

(declare-fun b_and!42167 () Bool)

(assert (=> start!100100 (= tp!89643 b_and!42167)))

(declare-fun b!1192721 () Bool)

(declare-fun e!677962 () Bool)

(declare-fun tp_is_empty!30173 () Bool)

(assert (=> b!1192721 (= e!677962 tp_is_empty!30173)))

(declare-fun b!1192722 () Bool)

(declare-fun e!677960 () Bool)

(declare-fun e!677958 () Bool)

(assert (=> b!1192722 (= e!677960 e!677958)))

(declare-fun res!793558 () Bool)

(assert (=> b!1192722 (=> res!793558 e!677958)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1192722 (= res!793558 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45357 0))(
  ( (V!45358 (val!15143 Int)) )
))
(declare-fun zeroValue!944 () V!45357)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((array!77110 0))(
  ( (array!77111 (arr!37201 (Array (_ BitVec 32) (_ BitVec 64))) (size!37738 (_ BitVec 32))) )
))
(declare-fun lt!542296 () array!77110)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14377 0))(
  ( (ValueCellFull!14377 (v!17782 V!45357)) (EmptyCell!14377) )
))
(declare-datatypes ((array!77112 0))(
  ( (array!77113 (arr!37202 (Array (_ BitVec 32) ValueCell!14377)) (size!37739 (_ BitVec 32))) )
))
(declare-fun lt!542295 () array!77112)

(declare-datatypes ((tuple2!19610 0))(
  ( (tuple2!19611 (_1!9815 (_ BitVec 64)) (_2!9815 V!45357)) )
))
(declare-datatypes ((List!26370 0))(
  ( (Nil!26367) (Cons!26366 (h!27575 tuple2!19610) (t!39012 List!26370)) )
))
(declare-datatypes ((ListLongMap!17591 0))(
  ( (ListLongMap!17592 (toList!8811 List!26370)) )
))
(declare-fun lt!542298 () ListLongMap!17591)

(declare-fun minValue!944 () V!45357)

(declare-fun getCurrentListMapNoExtraKeys!5225 (array!77110 array!77112 (_ BitVec 32) (_ BitVec 32) V!45357 V!45357 (_ BitVec 32) Int) ListLongMap!17591)

(assert (=> b!1192722 (= lt!542298 (getCurrentListMapNoExtraKeys!5225 lt!542296 lt!542295 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!77112)

(declare-fun dynLambda!3165 (Int (_ BitVec 64)) V!45357)

(assert (=> b!1192722 (= lt!542295 (array!77113 (store (arr!37202 _values!996) i!673 (ValueCellFull!14377 (dynLambda!3165 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37739 _values!996)))))

(declare-fun _keys!1208 () array!77110)

(declare-fun lt!542294 () ListLongMap!17591)

(assert (=> b!1192722 (= lt!542294 (getCurrentListMapNoExtraKeys!5225 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1192723 () Bool)

(declare-fun res!793554 () Bool)

(declare-fun e!677961 () Bool)

(assert (=> b!1192723 (=> (not res!793554) (not e!677961))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192723 (= res!793554 (validKeyInArray!0 k!934))))

(declare-fun b!1192724 () Bool)

(declare-fun res!793564 () Bool)

(assert (=> b!1192724 (=> (not res!793564) (not e!677961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192724 (= res!793564 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!47087 () Bool)

(declare-fun mapRes!47087 () Bool)

(assert (=> mapIsEmpty!47087 mapRes!47087))

(declare-fun b!1192725 () Bool)

(declare-fun res!793553 () Bool)

(assert (=> b!1192725 (=> (not res!793553) (not e!677961))))

(assert (=> b!1192725 (= res!793553 (= (select (arr!37201 _keys!1208) i!673) k!934))))

(declare-fun b!1192726 () Bool)

(declare-fun res!793562 () Bool)

(assert (=> b!1192726 (=> (not res!793562) (not e!677961))))

(assert (=> b!1192726 (= res!793562 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37738 _keys!1208))))))

(declare-fun b!1192727 () Bool)

(declare-fun res!793557 () Bool)

(declare-fun e!677964 () Bool)

(assert (=> b!1192727 (=> (not res!793557) (not e!677964))))

(declare-datatypes ((List!26371 0))(
  ( (Nil!26368) (Cons!26367 (h!27576 (_ BitVec 64)) (t!39013 List!26371)) )
))
(declare-fun arrayNoDuplicates!0 (array!77110 (_ BitVec 32) List!26371) Bool)

(assert (=> b!1192727 (= res!793557 (arrayNoDuplicates!0 lt!542296 #b00000000000000000000000000000000 Nil!26368))))

(declare-fun b!1192728 () Bool)

(declare-fun e!677959 () Bool)

(assert (=> b!1192728 (= e!677959 (and e!677962 mapRes!47087))))

(declare-fun condMapEmpty!47087 () Bool)

(declare-fun mapDefault!47087 () ValueCell!14377)

