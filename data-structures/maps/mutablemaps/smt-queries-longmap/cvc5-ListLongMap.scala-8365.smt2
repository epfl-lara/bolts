; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101808 () Bool)

(assert start!101808)

(declare-fun b_free!26461 () Bool)

(declare-fun b_next!26461 () Bool)

(assert (=> start!101808 (= b_free!26461 (not b_next!26461))))

(declare-fun tp!92430 () Bool)

(declare-fun b_and!44193 () Bool)

(assert (=> start!101808 (= tp!92430 b_and!44193)))

(declare-fun mapNonEmpty!48646 () Bool)

(declare-fun mapRes!48646 () Bool)

(declare-fun tp!92429 () Bool)

(declare-fun e!696146 () Bool)

(assert (=> mapNonEmpty!48646 (= mapRes!48646 (and tp!92429 e!696146))))

(declare-datatypes ((V!46681 0))(
  ( (V!46682 (val!15639 Int)) )
))
(declare-datatypes ((ValueCell!14873 0))(
  ( (ValueCellFull!14873 (v!18302 V!46681)) (EmptyCell!14873) )
))
(declare-fun mapRest!48646 () (Array (_ BitVec 32) ValueCell!14873))

(declare-fun mapKey!48646 () (_ BitVec 32))

(declare-fun mapValue!48646 () ValueCell!14873)

(declare-datatypes ((array!79088 0))(
  ( (array!79089 (arr!38167 (Array (_ BitVec 32) ValueCell!14873)) (size!38704 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79088)

(assert (=> mapNonEmpty!48646 (= (arr!38167 _values!996) (store mapRest!48646 mapKey!48646 mapValue!48646))))

(declare-fun b!1225624 () Bool)

(declare-fun res!814594 () Bool)

(declare-fun e!696140 () Bool)

(assert (=> b!1225624 (=> (not res!814594) (not e!696140))))

(declare-datatypes ((array!79090 0))(
  ( (array!79091 (arr!38168 (Array (_ BitVec 32) (_ BitVec 64))) (size!38705 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79090)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1225624 (= res!814594 (= (select (arr!38168 _keys!1208) i!673) k!934))))

(declare-fun b!1225625 () Bool)

(declare-fun e!696144 () Bool)

(assert (=> b!1225625 (= e!696144 (bvslt i!673 (size!38704 _values!996)))))

(declare-fun b!1225626 () Bool)

(declare-fun e!696142 () Bool)

(assert (=> b!1225626 (= e!696142 e!696144)))

(declare-fun res!814601 () Bool)

(assert (=> b!1225626 (=> res!814601 e!696144)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225626 (= res!814601 (validKeyInArray!0 (select (arr!38168 _keys!1208) from!1455)))))

(declare-fun zeroValue!944 () V!46681)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!558482 () array!79088)

(declare-fun minValue!944 () V!46681)

(declare-fun lt!558487 () array!79090)

(declare-datatypes ((tuple2!20308 0))(
  ( (tuple2!20309 (_1!10164 (_ BitVec 64)) (_2!10164 V!46681)) )
))
(declare-datatypes ((List!27120 0))(
  ( (Nil!27117) (Cons!27116 (h!28325 tuple2!20308) (t!40568 List!27120)) )
))
(declare-datatypes ((ListLongMap!18289 0))(
  ( (ListLongMap!18290 (toList!9160 List!27120)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5556 (array!79090 array!79088 (_ BitVec 32) (_ BitVec 32) V!46681 V!46681 (_ BitVec 32) Int) ListLongMap!18289)

(declare-fun -!1996 (ListLongMap!18289 (_ BitVec 64)) ListLongMap!18289)

(assert (=> b!1225626 (= (getCurrentListMapNoExtraKeys!5556 lt!558487 lt!558482 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1996 (getCurrentListMapNoExtraKeys!5556 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!40566 0))(
  ( (Unit!40567) )
))
(declare-fun lt!558485 () Unit!40566)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1196 (array!79090 array!79088 (_ BitVec 32) (_ BitVec 32) V!46681 V!46681 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40566)

(assert (=> b!1225626 (= lt!558485 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1196 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1225627 () Bool)

(declare-fun e!696147 () Bool)

(declare-fun tp_is_empty!31165 () Bool)

(assert (=> b!1225627 (= e!696147 tp_is_empty!31165)))

(declare-fun b!1225628 () Bool)

(assert (=> b!1225628 (= e!696146 tp_is_empty!31165)))

(declare-fun b!1225629 () Bool)

(declare-fun e!696141 () Bool)

(assert (=> b!1225629 (= e!696141 (and e!696147 mapRes!48646))))

(declare-fun condMapEmpty!48646 () Bool)

(declare-fun mapDefault!48646 () ValueCell!14873)

