; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99494 () Bool)

(assert start!99494)

(declare-fun b_free!25037 () Bool)

(declare-fun b_next!25037 () Bool)

(assert (=> start!99494 (= b_free!25037 (not b_next!25037))))

(declare-fun tp!87826 () Bool)

(declare-fun b_and!40955 () Bool)

(assert (=> start!99494 (= tp!87826 b_and!40955)))

(declare-fun b!1175027 () Bool)

(declare-fun res!780445 () Bool)

(declare-fun e!667949 () Bool)

(assert (=> b!1175027 (=> (not res!780445) (not e!667949))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175027 (= res!780445 (validKeyInArray!0 k!934))))

(declare-fun b!1175028 () Bool)

(declare-datatypes ((Unit!38691 0))(
  ( (Unit!38692) )
))
(declare-fun e!667957 () Unit!38691)

(declare-fun Unit!38693 () Unit!38691)

(assert (=> b!1175028 (= e!667957 Unit!38693)))

(declare-datatypes ((array!75910 0))(
  ( (array!75911 (arr!36601 (Array (_ BitVec 32) (_ BitVec 64))) (size!37138 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75910)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!529998 () Unit!38691)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75910 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38691)

(assert (=> b!1175028 (= lt!529998 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75910 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175028 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530002 () Unit!38691)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75910 (_ BitVec 32) (_ BitVec 32)) Unit!38691)

(assert (=> b!1175028 (= lt!530002 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25847 0))(
  ( (Nil!25844) (Cons!25843 (h!27052 (_ BitVec 64)) (t!37883 List!25847)) )
))
(declare-fun arrayNoDuplicates!0 (array!75910 (_ BitVec 32) List!25847) Bool)

(assert (=> b!1175028 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25844)))

(declare-fun lt!530004 () Unit!38691)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75910 (_ BitVec 64) (_ BitVec 32) List!25847) Unit!38691)

(assert (=> b!1175028 (= lt!530004 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25844))))

(assert (=> b!1175028 false))

(declare-fun b!1175029 () Bool)

(declare-fun res!780442 () Bool)

(assert (=> b!1175029 (=> (not res!780442) (not e!667949))))

(assert (=> b!1175029 (= res!780442 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37138 _keys!1208))))))

(declare-fun b!1175030 () Bool)

(declare-fun res!780438 () Bool)

(assert (=> b!1175030 (=> (not res!780438) (not e!667949))))

(assert (=> b!1175030 (= res!780438 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25844))))

(declare-fun res!780451 () Bool)

(assert (=> start!99494 (=> (not res!780451) (not e!667949))))

(assert (=> start!99494 (= res!780451 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37138 _keys!1208))))))

(assert (=> start!99494 e!667949))

(declare-fun tp_is_empty!29567 () Bool)

(assert (=> start!99494 tp_is_empty!29567))

(declare-fun array_inv!27842 (array!75910) Bool)

(assert (=> start!99494 (array_inv!27842 _keys!1208)))

(assert (=> start!99494 true))

(assert (=> start!99494 tp!87826))

(declare-datatypes ((V!44549 0))(
  ( (V!44550 (val!14840 Int)) )
))
(declare-datatypes ((ValueCell!14074 0))(
  ( (ValueCellFull!14074 (v!17479 V!44549)) (EmptyCell!14074) )
))
(declare-datatypes ((array!75912 0))(
  ( (array!75913 (arr!36602 (Array (_ BitVec 32) ValueCell!14074)) (size!37139 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75912)

(declare-fun e!667947 () Bool)

(declare-fun array_inv!27843 (array!75912) Bool)

(assert (=> start!99494 (and (array_inv!27843 _values!996) e!667947)))

(declare-fun b!1175031 () Bool)

(declare-fun e!667956 () Bool)

(declare-fun e!667953 () Bool)

(assert (=> b!1175031 (= e!667956 (not e!667953))))

(declare-fun res!780437 () Bool)

(assert (=> b!1175031 (=> res!780437 e!667953)))

(assert (=> b!1175031 (= res!780437 (bvsgt from!1455 i!673))))

(assert (=> b!1175031 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!529996 () Unit!38691)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75910 (_ BitVec 64) (_ BitVec 32)) Unit!38691)

(assert (=> b!1175031 (= lt!529996 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!46178 () Bool)

(declare-fun mapRes!46178 () Bool)

(declare-fun tp!87825 () Bool)

(declare-fun e!667955 () Bool)

(assert (=> mapNonEmpty!46178 (= mapRes!46178 (and tp!87825 e!667955))))

(declare-fun mapKey!46178 () (_ BitVec 32))

(declare-fun mapRest!46178 () (Array (_ BitVec 32) ValueCell!14074))

(declare-fun mapValue!46178 () ValueCell!14074)

(assert (=> mapNonEmpty!46178 (= (arr!36602 _values!996) (store mapRest!46178 mapKey!46178 mapValue!46178))))

(declare-fun b!1175032 () Bool)

(declare-fun res!780448 () Bool)

(assert (=> b!1175032 (=> (not res!780448) (not e!667949))))

(assert (=> b!1175032 (= res!780448 (= (select (arr!36601 _keys!1208) i!673) k!934))))

(declare-fun b!1175033 () Bool)

(declare-fun e!667946 () Bool)

(declare-fun e!667954 () Bool)

(assert (=> b!1175033 (= e!667946 e!667954)))

(declare-fun res!780450 () Bool)

(assert (=> b!1175033 (=> res!780450 e!667954)))

(assert (=> b!1175033 (= res!780450 (not (validKeyInArray!0 (select (arr!36601 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19078 0))(
  ( (tuple2!19079 (_1!9549 (_ BitVec 64)) (_2!9549 V!44549)) )
))
(declare-datatypes ((List!25848 0))(
  ( (Nil!25845) (Cons!25844 (h!27053 tuple2!19078) (t!37884 List!25848)) )
))
(declare-datatypes ((ListLongMap!17059 0))(
  ( (ListLongMap!17060 (toList!8545 List!25848)) )
))
(declare-fun lt!529991 () ListLongMap!17059)

(declare-fun lt!529994 () ListLongMap!17059)

(assert (=> b!1175033 (= lt!529991 lt!529994)))

(declare-fun lt!529995 () ListLongMap!17059)

(declare-fun -!1554 (ListLongMap!17059 (_ BitVec 64)) ListLongMap!17059)

(assert (=> b!1175033 (= lt!529994 (-!1554 lt!529995 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!529992 () array!75912)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44549)

(declare-fun lt!530003 () array!75910)

(declare-fun zeroValue!944 () V!44549)

(declare-fun getCurrentListMapNoExtraKeys!4976 (array!75910 array!75912 (_ BitVec 32) (_ BitVec 32) V!44549 V!44549 (_ BitVec 32) Int) ListLongMap!17059)

(assert (=> b!1175033 (= lt!529991 (getCurrentListMapNoExtraKeys!4976 lt!530003 lt!529992 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1175033 (= lt!529995 (getCurrentListMapNoExtraKeys!4976 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!529993 () Unit!38691)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!778 (array!75910 array!75912 (_ BitVec 32) (_ BitVec 32) V!44549 V!44549 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38691)

(assert (=> b!1175033 (= lt!529993 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!778 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1175034 () Bool)

(declare-fun e!667950 () Bool)

(declare-fun e!667948 () Bool)

(assert (=> b!1175034 (= e!667950 e!667948)))

(declare-fun res!780449 () Bool)

(assert (=> b!1175034 (=> res!780449 e!667948)))

(assert (=> b!1175034 (= res!780449 (not (= (select (arr!36601 _keys!1208) from!1455) k!934)))))

(declare-fun b!1175035 () Bool)

(declare-fun e!667952 () Bool)

(assert (=> b!1175035 (= e!667952 tp_is_empty!29567)))

(declare-fun b!1175036 () Bool)

(declare-fun res!780446 () Bool)

(assert (=> b!1175036 (=> (not res!780446) (not e!667956))))

(assert (=> b!1175036 (= res!780446 (arrayNoDuplicates!0 lt!530003 #b00000000000000000000000000000000 Nil!25844))))

(declare-fun b!1175037 () Bool)

(assert (=> b!1175037 (= e!667953 e!667946)))

(declare-fun res!780447 () Bool)

(assert (=> b!1175037 (=> res!780447 e!667946)))

(assert (=> b!1175037 (= res!780447 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!530001 () ListLongMap!17059)

(assert (=> b!1175037 (= lt!530001 (getCurrentListMapNoExtraKeys!4976 lt!530003 lt!529992 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!529997 () V!44549)

(assert (=> b!1175037 (= lt!529992 (array!75913 (store (arr!36602 _values!996) i!673 (ValueCellFull!14074 lt!529997)) (size!37139 _values!996)))))

(declare-fun dynLambda!2956 (Int (_ BitVec 64)) V!44549)

(assert (=> b!1175037 (= lt!529997 (dynLambda!2956 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529999 () ListLongMap!17059)

(assert (=> b!1175037 (= lt!529999 (getCurrentListMapNoExtraKeys!4976 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1175038 () Bool)

(declare-fun res!780443 () Bool)

(assert (=> b!1175038 (=> (not res!780443) (not e!667949))))

(assert (=> b!1175038 (= res!780443 (and (= (size!37139 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37138 _keys!1208) (size!37139 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175039 () Bool)

(assert (=> b!1175039 (= e!667949 e!667956)))

(declare-fun res!780439 () Bool)

(assert (=> b!1175039 (=> (not res!780439) (not e!667956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75910 (_ BitVec 32)) Bool)

(assert (=> b!1175039 (= res!780439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530003 mask!1564))))

(assert (=> b!1175039 (= lt!530003 (array!75911 (store (arr!36601 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37138 _keys!1208)))))

(declare-fun b!1175040 () Bool)

(declare-fun res!780440 () Bool)

(assert (=> b!1175040 (=> (not res!780440) (not e!667949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1175040 (= res!780440 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!46178 () Bool)

(assert (=> mapIsEmpty!46178 mapRes!46178))

(declare-fun b!1175041 () Bool)

(assert (=> b!1175041 (= e!667955 tp_is_empty!29567)))

(declare-fun b!1175042 () Bool)

(assert (=> b!1175042 (= e!667947 (and e!667952 mapRes!46178))))

(declare-fun condMapEmpty!46178 () Bool)

(declare-fun mapDefault!46178 () ValueCell!14074)

