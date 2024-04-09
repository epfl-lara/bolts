; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101576 () Bool)

(assert start!101576)

(declare-fun b_free!26327 () Bool)

(declare-fun b_next!26327 () Bool)

(assert (=> start!101576 (= b_free!26327 (not b_next!26327))))

(declare-fun tp!92018 () Bool)

(declare-fun b_and!43871 () Bool)

(assert (=> start!101576 (= tp!92018 b_and!43871)))

(declare-fun b!1220920 () Bool)

(declare-fun e!693348 () Bool)

(declare-datatypes ((array!78816 0))(
  ( (array!78817 (arr!38034 (Array (_ BitVec 32) (_ BitVec 64))) (size!38571 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78816)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1220920 (= e!693348 (or (bvsge (size!38571 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38571 _keys!1208)) (bvslt from!1455 (size!38571 _keys!1208))))))

(declare-datatypes ((List!27003 0))(
  ( (Nil!27000) (Cons!26999 (h!28208 (_ BitVec 64)) (t!40317 List!27003)) )
))
(declare-fun arrayNoDuplicates!0 (array!78816 (_ BitVec 32) List!27003) Bool)

(assert (=> b!1220920 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27000)))

(declare-datatypes ((Unit!40368 0))(
  ( (Unit!40369) )
))
(declare-fun lt!555289 () Unit!40368)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78816 (_ BitVec 32) (_ BitVec 32)) Unit!40368)

(assert (=> b!1220920 (= lt!555289 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1220920 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555284 () Unit!40368)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78816 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40368)

(assert (=> b!1220920 (= lt!555284 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1220921 () Bool)

(declare-fun e!693350 () Bool)

(declare-fun e!693349 () Bool)

(assert (=> b!1220921 (= e!693350 e!693349)))

(declare-fun res!811183 () Bool)

(assert (=> b!1220921 (=> res!811183 e!693349)))

(assert (=> b!1220921 (= res!811183 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46501 0))(
  ( (V!46502 (val!15572 Int)) )
))
(declare-datatypes ((ValueCell!14806 0))(
  ( (ValueCellFull!14806 (v!18231 V!46501)) (EmptyCell!14806) )
))
(declare-datatypes ((array!78818 0))(
  ( (array!78819 (arr!38035 (Array (_ BitVec 32) ValueCell!14806)) (size!38572 (_ BitVec 32))) )
))
(declare-fun lt!555287 () array!78818)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun minValue!944 () V!46501)

(declare-datatypes ((tuple2!20188 0))(
  ( (tuple2!20189 (_1!10104 (_ BitVec 64)) (_2!10104 V!46501)) )
))
(declare-datatypes ((List!27004 0))(
  ( (Nil!27001) (Cons!27000 (h!28209 tuple2!20188) (t!40318 List!27004)) )
))
(declare-datatypes ((ListLongMap!18169 0))(
  ( (ListLongMap!18170 (toList!9100 List!27004)) )
))
(declare-fun lt!555290 () ListLongMap!18169)

(declare-fun zeroValue!944 () V!46501)

(declare-fun lt!555288 () array!78816)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5498 (array!78816 array!78818 (_ BitVec 32) (_ BitVec 32) V!46501 V!46501 (_ BitVec 32) Int) ListLongMap!18169)

(assert (=> b!1220921 (= lt!555290 (getCurrentListMapNoExtraKeys!5498 lt!555288 lt!555287 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!555286 () V!46501)

(declare-fun _values!996 () array!78818)

(assert (=> b!1220921 (= lt!555287 (array!78819 (store (arr!38035 _values!996) i!673 (ValueCellFull!14806 lt!555286)) (size!38572 _values!996)))))

(declare-fun dynLambda!3399 (Int (_ BitVec 64)) V!46501)

(assert (=> b!1220921 (= lt!555286 (dynLambda!3399 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!555281 () ListLongMap!18169)

(assert (=> b!1220921 (= lt!555281 (getCurrentListMapNoExtraKeys!5498 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1220922 () Bool)

(declare-fun e!693347 () Bool)

(assert (=> b!1220922 (= e!693347 (not e!693350))))

(declare-fun res!811176 () Bool)

(assert (=> b!1220922 (=> res!811176 e!693350)))

(assert (=> b!1220922 (= res!811176 (bvsgt from!1455 i!673))))

(assert (=> b!1220922 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!555280 () Unit!40368)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78816 (_ BitVec 64) (_ BitVec 32)) Unit!40368)

(assert (=> b!1220922 (= lt!555280 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1220923 () Bool)

(declare-fun res!811172 () Bool)

(assert (=> b!1220923 (=> (not res!811172) (not e!693347))))

(assert (=> b!1220923 (= res!811172 (arrayNoDuplicates!0 lt!555288 #b00000000000000000000000000000000 Nil!27000))))

(declare-fun b!1220924 () Bool)

(declare-fun e!693343 () Bool)

(assert (=> b!1220924 (= e!693343 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1220925 () Bool)

(declare-fun res!811173 () Bool)

(declare-fun e!693353 () Bool)

(assert (=> b!1220925 (=> (not res!811173) (not e!693353))))

(assert (=> b!1220925 (= res!811173 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27000))))

(declare-fun mapIsEmpty!48436 () Bool)

(declare-fun mapRes!48436 () Bool)

(assert (=> mapIsEmpty!48436 mapRes!48436))

(declare-fun b!1220926 () Bool)

(declare-fun res!811178 () Bool)

(assert (=> b!1220926 (=> (not res!811178) (not e!693353))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1220926 (= res!811178 (validKeyInArray!0 k!934))))

(declare-fun res!811175 () Bool)

(assert (=> start!101576 (=> (not res!811175) (not e!693353))))

(assert (=> start!101576 (= res!811175 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38571 _keys!1208))))))

(assert (=> start!101576 e!693353))

(declare-fun tp_is_empty!31031 () Bool)

(assert (=> start!101576 tp_is_empty!31031))

(declare-fun array_inv!28856 (array!78816) Bool)

(assert (=> start!101576 (array_inv!28856 _keys!1208)))

(assert (=> start!101576 true))

(assert (=> start!101576 tp!92018))

(declare-fun e!693354 () Bool)

(declare-fun array_inv!28857 (array!78818) Bool)

(assert (=> start!101576 (and (array_inv!28857 _values!996) e!693354)))

(declare-fun b!1220927 () Bool)

(declare-fun res!811177 () Bool)

(assert (=> b!1220927 (=> (not res!811177) (not e!693353))))

(assert (=> b!1220927 (= res!811177 (= (select (arr!38034 _keys!1208) i!673) k!934))))

(declare-fun b!1220928 () Bool)

(declare-fun res!811182 () Bool)

(assert (=> b!1220928 (=> (not res!811182) (not e!693353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1220928 (= res!811182 (validMask!0 mask!1564))))

(declare-fun b!1220929 () Bool)

(declare-fun e!693345 () Bool)

(assert (=> b!1220929 (= e!693345 tp_is_empty!31031)))

(declare-fun b!1220930 () Bool)

(declare-fun res!811174 () Bool)

(assert (=> b!1220930 (=> (not res!811174) (not e!693353))))

(assert (=> b!1220930 (= res!811174 (and (= (size!38572 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38571 _keys!1208) (size!38572 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!48436 () Bool)

(declare-fun tp!92019 () Bool)

(declare-fun e!693346 () Bool)

(assert (=> mapNonEmpty!48436 (= mapRes!48436 (and tp!92019 e!693346))))

(declare-fun mapRest!48436 () (Array (_ BitVec 32) ValueCell!14806))

(declare-fun mapKey!48436 () (_ BitVec 32))

(declare-fun mapValue!48436 () ValueCell!14806)

(assert (=> mapNonEmpty!48436 (= (arr!38035 _values!996) (store mapRest!48436 mapKey!48436 mapValue!48436))))

(declare-fun b!1220931 () Bool)

(declare-fun e!693352 () Bool)

(assert (=> b!1220931 (= e!693349 e!693352)))

(declare-fun res!811179 () Bool)

(assert (=> b!1220931 (=> res!811179 e!693352)))

(assert (=> b!1220931 (= res!811179 (not (validKeyInArray!0 (select (arr!38034 _keys!1208) from!1455))))))

(declare-fun lt!555283 () ListLongMap!18169)

(declare-fun lt!555279 () ListLongMap!18169)

(assert (=> b!1220931 (= lt!555283 lt!555279)))

(declare-fun lt!555285 () ListLongMap!18169)

(declare-fun -!1945 (ListLongMap!18169 (_ BitVec 64)) ListLongMap!18169)

(assert (=> b!1220931 (= lt!555279 (-!1945 lt!555285 k!934))))

(assert (=> b!1220931 (= lt!555283 (getCurrentListMapNoExtraKeys!5498 lt!555288 lt!555287 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1220931 (= lt!555285 (getCurrentListMapNoExtraKeys!5498 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!555282 () Unit!40368)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1147 (array!78816 array!78818 (_ BitVec 32) (_ BitVec 32) V!46501 V!46501 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40368)

(assert (=> b!1220931 (= lt!555282 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1147 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1220932 () Bool)

(assert (=> b!1220932 (= e!693354 (and e!693345 mapRes!48436))))

(declare-fun condMapEmpty!48436 () Bool)

(declare-fun mapDefault!48436 () ValueCell!14806)

