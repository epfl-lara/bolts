; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101824 () Bool)

(assert start!101824)

(declare-fun b_free!26477 () Bool)

(declare-fun b_next!26477 () Bool)

(assert (=> start!101824 (= b_free!26477 (not b_next!26477))))

(declare-fun tp!92478 () Bool)

(declare-fun b_and!44225 () Bool)

(assert (=> start!101824 (= tp!92478 b_and!44225)))

(declare-fun b!1226007 () Bool)

(declare-fun e!696343 () Bool)

(assert (=> b!1226007 (= e!696343 true)))

(declare-datatypes ((array!79120 0))(
  ( (array!79121 (arr!38183 (Array (_ BitVec 32) (_ BitVec 64))) (size!38720 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79120)

(declare-datatypes ((V!46701 0))(
  ( (V!46702 (val!15647 Int)) )
))
(declare-datatypes ((ValueCell!14881 0))(
  ( (ValueCellFull!14881 (v!18310 V!46701)) (EmptyCell!14881) )
))
(declare-datatypes ((array!79122 0))(
  ( (array!79123 (arr!38184 (Array (_ BitVec 32) ValueCell!14881)) (size!38721 (_ BitVec 32))) )
))
(declare-fun lt!558627 () array!79122)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!558626 () array!79120)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _values!996 () array!79122)

(declare-fun minValue!944 () V!46701)

(declare-fun zeroValue!944 () V!46701)

(declare-datatypes ((tuple2!20322 0))(
  ( (tuple2!20323 (_1!10171 (_ BitVec 64)) (_2!10171 V!46701)) )
))
(declare-datatypes ((List!27134 0))(
  ( (Nil!27131) (Cons!27130 (h!28339 tuple2!20322) (t!40598 List!27134)) )
))
(declare-datatypes ((ListLongMap!18303 0))(
  ( (ListLongMap!18304 (toList!9167 List!27134)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5563 (array!79120 array!79122 (_ BitVec 32) (_ BitVec 32) V!46701 V!46701 (_ BitVec 32) Int) ListLongMap!18303)

(declare-fun -!2002 (ListLongMap!18303 (_ BitVec 64)) ListLongMap!18303)

(assert (=> b!1226007 (= (getCurrentListMapNoExtraKeys!5563 lt!558626 lt!558627 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!2002 (getCurrentListMapNoExtraKeys!5563 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!40580 0))(
  ( (Unit!40581) )
))
(declare-fun lt!558628 () Unit!40580)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1202 (array!79120 array!79122 (_ BitVec 32) (_ BitVec 32) V!46701 V!46701 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40580)

(assert (=> b!1226007 (= lt!558628 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1202 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!48670 () Bool)

(declare-fun mapRes!48670 () Bool)

(assert (=> mapIsEmpty!48670 mapRes!48670))

(declare-fun b!1226008 () Bool)

(declare-fun e!696341 () Bool)

(assert (=> b!1226008 (= e!696341 e!696343)))

(declare-fun res!814890 () Bool)

(assert (=> b!1226008 (=> res!814890 e!696343)))

(assert (=> b!1226008 (= res!814890 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!558629 () ListLongMap!18303)

(assert (=> b!1226008 (= lt!558629 (getCurrentListMapNoExtraKeys!5563 lt!558626 lt!558627 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3456 (Int (_ BitVec 64)) V!46701)

(assert (=> b!1226008 (= lt!558627 (array!79123 (store (arr!38184 _values!996) i!673 (ValueCellFull!14881 (dynLambda!3456 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38721 _values!996)))))

(declare-fun lt!558631 () ListLongMap!18303)

(assert (=> b!1226008 (= lt!558631 (getCurrentListMapNoExtraKeys!5563 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1226009 () Bool)

(declare-fun res!814899 () Bool)

(declare-fun e!696345 () Bool)

(assert (=> b!1226009 (=> (not res!814899) (not e!696345))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226009 (= res!814899 (validKeyInArray!0 k!934))))

(declare-fun b!1226010 () Bool)

(declare-fun res!814898 () Bool)

(assert (=> b!1226010 (=> (not res!814898) (not e!696345))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79120 (_ BitVec 32)) Bool)

(assert (=> b!1226010 (= res!814898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1226011 () Bool)

(declare-fun res!814896 () Bool)

(assert (=> b!1226011 (=> (not res!814896) (not e!696345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1226011 (= res!814896 (validMask!0 mask!1564))))

(declare-fun b!1226013 () Bool)

(declare-fun res!814891 () Bool)

(assert (=> b!1226013 (=> (not res!814891) (not e!696345))))

(assert (=> b!1226013 (= res!814891 (and (= (size!38721 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38720 _keys!1208) (size!38721 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1226014 () Bool)

(declare-fun e!696342 () Bool)

(assert (=> b!1226014 (= e!696345 e!696342)))

(declare-fun res!814895 () Bool)

(assert (=> b!1226014 (=> (not res!814895) (not e!696342))))

(assert (=> b!1226014 (= res!814895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558626 mask!1564))))

(assert (=> b!1226014 (= lt!558626 (array!79121 (store (arr!38183 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38720 _keys!1208)))))

(declare-fun b!1226015 () Bool)

(declare-fun res!814888 () Bool)

(assert (=> b!1226015 (=> (not res!814888) (not e!696345))))

(assert (=> b!1226015 (= res!814888 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38720 _keys!1208))))))

(declare-fun b!1226016 () Bool)

(declare-fun res!814897 () Bool)

(assert (=> b!1226016 (=> (not res!814897) (not e!696345))))

(assert (=> b!1226016 (= res!814897 (= (select (arr!38183 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!48670 () Bool)

(declare-fun tp!92477 () Bool)

(declare-fun e!696338 () Bool)

(assert (=> mapNonEmpty!48670 (= mapRes!48670 (and tp!92477 e!696338))))

(declare-fun mapRest!48670 () (Array (_ BitVec 32) ValueCell!14881))

(declare-fun mapKey!48670 () (_ BitVec 32))

(declare-fun mapValue!48670 () ValueCell!14881)

(assert (=> mapNonEmpty!48670 (= (arr!38184 _values!996) (store mapRest!48670 mapKey!48670 mapValue!48670))))

(declare-fun b!1226017 () Bool)

(declare-fun res!814893 () Bool)

(assert (=> b!1226017 (=> (not res!814893) (not e!696342))))

(declare-datatypes ((List!27135 0))(
  ( (Nil!27132) (Cons!27131 (h!28340 (_ BitVec 64)) (t!40599 List!27135)) )
))
(declare-fun arrayNoDuplicates!0 (array!79120 (_ BitVec 32) List!27135) Bool)

(assert (=> b!1226017 (= res!814893 (arrayNoDuplicates!0 lt!558626 #b00000000000000000000000000000000 Nil!27132))))

(declare-fun res!814889 () Bool)

(assert (=> start!101824 (=> (not res!814889) (not e!696345))))

(assert (=> start!101824 (= res!814889 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38720 _keys!1208))))))

(assert (=> start!101824 e!696345))

(declare-fun tp_is_empty!31181 () Bool)

(assert (=> start!101824 tp_is_empty!31181))

(declare-fun array_inv!28960 (array!79120) Bool)

(assert (=> start!101824 (array_inv!28960 _keys!1208)))

(assert (=> start!101824 true))

(assert (=> start!101824 tp!92478))

(declare-fun e!696340 () Bool)

(declare-fun array_inv!28961 (array!79122) Bool)

(assert (=> start!101824 (and (array_inv!28961 _values!996) e!696340)))

(declare-fun b!1226012 () Bool)

(assert (=> b!1226012 (= e!696338 tp_is_empty!31181)))

(declare-fun b!1226018 () Bool)

(assert (=> b!1226018 (= e!696342 (not e!696341))))

(declare-fun res!814892 () Bool)

(assert (=> b!1226018 (=> res!814892 e!696341)))

(assert (=> b!1226018 (= res!814892 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!79120 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1226018 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!558630 () Unit!40580)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79120 (_ BitVec 64) (_ BitVec 32)) Unit!40580)

(assert (=> b!1226018 (= lt!558630 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1226019 () Bool)

(declare-fun res!814894 () Bool)

(assert (=> b!1226019 (=> (not res!814894) (not e!696345))))

(assert (=> b!1226019 (= res!814894 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27132))))

(declare-fun b!1226020 () Bool)

(declare-fun e!696344 () Bool)

(assert (=> b!1226020 (= e!696344 tp_is_empty!31181)))

(declare-fun b!1226021 () Bool)

(assert (=> b!1226021 (= e!696340 (and e!696344 mapRes!48670))))

(declare-fun condMapEmpty!48670 () Bool)

(declare-fun mapDefault!48670 () ValueCell!14881)

