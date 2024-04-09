; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100090 () Bool)

(assert start!100090)

(declare-fun b_free!25633 () Bool)

(declare-fun b_next!25633 () Bool)

(assert (=> start!100090 (= b_free!25633 (not b_next!25633))))

(declare-fun tp!89613 () Bool)

(declare-fun b_and!42147 () Bool)

(assert (=> start!100090 (= tp!89613 b_and!42147)))

(declare-fun b!1192485 () Bool)

(declare-fun e!677840 () Bool)

(declare-fun tp_is_empty!30163 () Bool)

(assert (=> b!1192485 (= e!677840 tp_is_empty!30163)))

(declare-fun b!1192486 () Bool)

(declare-fun res!793382 () Bool)

(declare-fun e!677844 () Bool)

(assert (=> b!1192486 (=> (not res!793382) (not e!677844))))

(declare-datatypes ((array!77090 0))(
  ( (array!77091 (arr!37191 (Array (_ BitVec 32) (_ BitVec 64))) (size!37728 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77090)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1192486 (= res!793382 (= (select (arr!37191 _keys!1208) i!673) k!934))))

(declare-fun b!1192487 () Bool)

(declare-fun e!677838 () Bool)

(assert (=> b!1192487 (= e!677838 tp_is_empty!30163)))

(declare-fun b!1192488 () Bool)

(declare-fun res!793373 () Bool)

(assert (=> b!1192488 (=> (not res!793373) (not e!677844))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45345 0))(
  ( (V!45346 (val!15138 Int)) )
))
(declare-datatypes ((ValueCell!14372 0))(
  ( (ValueCellFull!14372 (v!17777 V!45345)) (EmptyCell!14372) )
))
(declare-datatypes ((array!77092 0))(
  ( (array!77093 (arr!37192 (Array (_ BitVec 32) ValueCell!14372)) (size!37729 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77092)

(assert (=> b!1192488 (= res!793373 (and (= (size!37729 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37728 _keys!1208) (size!37729 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!793383 () Bool)

(assert (=> start!100090 (=> (not res!793383) (not e!677844))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100090 (= res!793383 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37728 _keys!1208))))))

(assert (=> start!100090 e!677844))

(assert (=> start!100090 tp_is_empty!30163))

(declare-fun array_inv!28258 (array!77090) Bool)

(assert (=> start!100090 (array_inv!28258 _keys!1208)))

(assert (=> start!100090 true))

(assert (=> start!100090 tp!89613))

(declare-fun e!677843 () Bool)

(declare-fun array_inv!28259 (array!77092) Bool)

(assert (=> start!100090 (and (array_inv!28259 _values!996) e!677843)))

(declare-fun b!1192489 () Bool)

(declare-fun e!677845 () Bool)

(assert (=> b!1192489 (= e!677845 true)))

(declare-fun zeroValue!944 () V!45345)

(declare-fun lt!542205 () array!77090)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45345)

(declare-fun lt!542206 () array!77092)

(declare-datatypes ((tuple2!19602 0))(
  ( (tuple2!19603 (_1!9811 (_ BitVec 64)) (_2!9811 V!45345)) )
))
(declare-datatypes ((List!26364 0))(
  ( (Nil!26361) (Cons!26360 (h!27569 tuple2!19602) (t!38996 List!26364)) )
))
(declare-datatypes ((ListLongMap!17583 0))(
  ( (ListLongMap!17584 (toList!8807 List!26364)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5221 (array!77090 array!77092 (_ BitVec 32) (_ BitVec 32) V!45345 V!45345 (_ BitVec 32) Int) ListLongMap!17583)

(declare-fun -!1783 (ListLongMap!17583 (_ BitVec 64)) ListLongMap!17583)

(assert (=> b!1192489 (= (getCurrentListMapNoExtraKeys!5221 lt!542205 lt!542206 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1783 (getCurrentListMapNoExtraKeys!5221 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39502 0))(
  ( (Unit!39503) )
))
(declare-fun lt!542207 () Unit!39502)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!989 (array!77090 array!77092 (_ BitVec 32) (_ BitVec 32) V!45345 V!45345 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39502)

(assert (=> b!1192489 (= lt!542207 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!989 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!47072 () Bool)

(declare-fun mapRes!47072 () Bool)

(assert (=> mapIsEmpty!47072 mapRes!47072))

(declare-fun b!1192490 () Bool)

(declare-fun res!793380 () Bool)

(assert (=> b!1192490 (=> (not res!793380) (not e!677844))))

(assert (=> b!1192490 (= res!793380 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37728 _keys!1208))))))

(declare-fun b!1192491 () Bool)

(declare-fun e!677841 () Bool)

(declare-fun e!677842 () Bool)

(assert (=> b!1192491 (= e!677841 (not e!677842))))

(declare-fun res!793381 () Bool)

(assert (=> b!1192491 (=> res!793381 e!677842)))

(assert (=> b!1192491 (= res!793381 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1192491 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!542208 () Unit!39502)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77090 (_ BitVec 64) (_ BitVec 32)) Unit!39502)

(assert (=> b!1192491 (= lt!542208 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1192492 () Bool)

(declare-fun res!793378 () Bool)

(assert (=> b!1192492 (=> (not res!793378) (not e!677844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192492 (= res!793378 (validMask!0 mask!1564))))

(declare-fun b!1192493 () Bool)

(declare-fun res!793379 () Bool)

(assert (=> b!1192493 (=> (not res!793379) (not e!677844))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77090 (_ BitVec 32)) Bool)

(assert (=> b!1192493 (= res!793379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1192494 () Bool)

(assert (=> b!1192494 (= e!677843 (and e!677838 mapRes!47072))))

(declare-fun condMapEmpty!47072 () Bool)

(declare-fun mapDefault!47072 () ValueCell!14372)

