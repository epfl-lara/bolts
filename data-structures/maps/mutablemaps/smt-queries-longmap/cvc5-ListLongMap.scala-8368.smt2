; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101826 () Bool)

(assert start!101826)

(declare-fun b_free!26479 () Bool)

(declare-fun b_next!26479 () Bool)

(assert (=> start!101826 (= b_free!26479 (not b_next!26479))))

(declare-fun tp!92483 () Bool)

(declare-fun b_and!44229 () Bool)

(assert (=> start!101826 (= tp!92483 b_and!44229)))

(declare-fun b!1226056 () Bool)

(declare-fun res!814936 () Bool)

(declare-fun e!696367 () Bool)

(assert (=> b!1226056 (=> (not res!814936) (not e!696367))))

(declare-datatypes ((array!79124 0))(
  ( (array!79125 (arr!38185 (Array (_ BitVec 32) (_ BitVec 64))) (size!38722 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79124)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!46705 0))(
  ( (V!46706 (val!15648 Int)) )
))
(declare-datatypes ((ValueCell!14882 0))(
  ( (ValueCellFull!14882 (v!18311 V!46705)) (EmptyCell!14882) )
))
(declare-datatypes ((array!79126 0))(
  ( (array!79127 (arr!38186 (Array (_ BitVec 32) ValueCell!14882)) (size!38723 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79126)

(assert (=> b!1226056 (= res!814936 (and (= (size!38723 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38722 _keys!1208) (size!38723 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-datatypes ((tuple2!20324 0))(
  ( (tuple2!20325 (_1!10172 (_ BitVec 64)) (_2!10172 V!46705)) )
))
(declare-datatypes ((List!27136 0))(
  ( (Nil!27133) (Cons!27132 (h!28341 tuple2!20324) (t!40602 List!27136)) )
))
(declare-datatypes ((ListLongMap!18305 0))(
  ( (ListLongMap!18306 (toList!9168 List!27136)) )
))
(declare-fun lt!558649 () ListLongMap!18305)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1226057 () Bool)

(declare-fun lt!558648 () ListLongMap!18305)

(declare-fun e!696366 () Bool)

(declare-fun -!2003 (ListLongMap!18305 (_ BitVec 64)) ListLongMap!18305)

(assert (=> b!1226057 (= e!696366 (= lt!558648 (-!2003 lt!558649 k!934)))))

(declare-fun mapIsEmpty!48673 () Bool)

(declare-fun mapRes!48673 () Bool)

(assert (=> mapIsEmpty!48673 mapRes!48673))

(declare-fun b!1226058 () Bool)

(declare-fun res!814937 () Bool)

(declare-fun e!696364 () Bool)

(assert (=> b!1226058 (=> (not res!814937) (not e!696364))))

(declare-fun lt!558646 () array!79124)

(declare-datatypes ((List!27137 0))(
  ( (Nil!27134) (Cons!27133 (h!28342 (_ BitVec 64)) (t!40603 List!27137)) )
))
(declare-fun arrayNoDuplicates!0 (array!79124 (_ BitVec 32) List!27137) Bool)

(assert (=> b!1226058 (= res!814937 (arrayNoDuplicates!0 lt!558646 #b00000000000000000000000000000000 Nil!27134))))

(declare-fun b!1226059 () Bool)

(declare-fun res!814938 () Bool)

(assert (=> b!1226059 (=> (not res!814938) (not e!696367))))

(assert (=> b!1226059 (= res!814938 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27134))))

(declare-fun b!1226060 () Bool)

(declare-fun res!814926 () Bool)

(assert (=> b!1226060 (=> (not res!814926) (not e!696367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79124 (_ BitVec 32)) Bool)

(assert (=> b!1226060 (= res!814926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!48673 () Bool)

(declare-fun tp!92484 () Bool)

(declare-fun e!696372 () Bool)

(assert (=> mapNonEmpty!48673 (= mapRes!48673 (and tp!92484 e!696372))))

(declare-fun mapRest!48673 () (Array (_ BitVec 32) ValueCell!14882))

(declare-fun mapValue!48673 () ValueCell!14882)

(declare-fun mapKey!48673 () (_ BitVec 32))

(assert (=> mapNonEmpty!48673 (= (arr!38186 _values!996) (store mapRest!48673 mapKey!48673 mapValue!48673))))

(declare-fun b!1226061 () Bool)

(declare-fun e!696368 () Bool)

(assert (=> b!1226061 (= e!696368 e!696366)))

(declare-fun res!814930 () Bool)

(assert (=> b!1226061 (=> res!814930 e!696366)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226061 (= res!814930 (validKeyInArray!0 (select (arr!38185 _keys!1208) from!1455)))))

(declare-fun zeroValue!944 () V!46705)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!558644 () array!79126)

(declare-fun minValue!944 () V!46705)

(declare-fun getCurrentListMapNoExtraKeys!5564 (array!79124 array!79126 (_ BitVec 32) (_ BitVec 32) V!46705 V!46705 (_ BitVec 32) Int) ListLongMap!18305)

(assert (=> b!1226061 (= (getCurrentListMapNoExtraKeys!5564 lt!558646 lt!558644 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!2003 (getCurrentListMapNoExtraKeys!5564 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!40582 0))(
  ( (Unit!40583) )
))
(declare-fun lt!558645 () Unit!40582)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1203 (array!79124 array!79126 (_ BitVec 32) (_ BitVec 32) V!46705 V!46705 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40582)

(assert (=> b!1226061 (= lt!558645 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1203 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!814933 () Bool)

(assert (=> start!101826 (=> (not res!814933) (not e!696367))))

(assert (=> start!101826 (= res!814933 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38722 _keys!1208))))))

(assert (=> start!101826 e!696367))

(declare-fun tp_is_empty!31183 () Bool)

(assert (=> start!101826 tp_is_empty!31183))

(declare-fun array_inv!28962 (array!79124) Bool)

(assert (=> start!101826 (array_inv!28962 _keys!1208)))

(assert (=> start!101826 true))

(assert (=> start!101826 tp!92483))

(declare-fun e!696370 () Bool)

(declare-fun array_inv!28963 (array!79126) Bool)

(assert (=> start!101826 (and (array_inv!28963 _values!996) e!696370)))

(declare-fun b!1226062 () Bool)

(declare-fun e!696365 () Bool)

(assert (=> b!1226062 (= e!696364 (not e!696365))))

(declare-fun res!814934 () Bool)

(assert (=> b!1226062 (=> res!814934 e!696365)))

(assert (=> b!1226062 (= res!814934 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!79124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1226062 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!558647 () Unit!40582)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79124 (_ BitVec 64) (_ BitVec 32)) Unit!40582)

(assert (=> b!1226062 (= lt!558647 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1226063 () Bool)

(declare-fun res!814927 () Bool)

(assert (=> b!1226063 (=> (not res!814927) (not e!696367))))

(assert (=> b!1226063 (= res!814927 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38722 _keys!1208))))))

(declare-fun b!1226064 () Bool)

(assert (=> b!1226064 (= e!696365 e!696368)))

(declare-fun res!814935 () Bool)

(assert (=> b!1226064 (=> res!814935 e!696368)))

(assert (=> b!1226064 (= res!814935 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1226064 (= lt!558648 (getCurrentListMapNoExtraKeys!5564 lt!558646 lt!558644 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3457 (Int (_ BitVec 64)) V!46705)

(assert (=> b!1226064 (= lt!558644 (array!79127 (store (arr!38186 _values!996) i!673 (ValueCellFull!14882 (dynLambda!3457 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38723 _values!996)))))

(assert (=> b!1226064 (= lt!558649 (getCurrentListMapNoExtraKeys!5564 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1226065 () Bool)

(declare-fun e!696369 () Bool)

(assert (=> b!1226065 (= e!696370 (and e!696369 mapRes!48673))))

(declare-fun condMapEmpty!48673 () Bool)

(declare-fun mapDefault!48673 () ValueCell!14882)

