; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101748 () Bool)

(assert start!101748)

(declare-fun b_free!26401 () Bool)

(declare-fun b_next!26401 () Bool)

(assert (=> start!101748 (= b_free!26401 (not b_next!26401))))

(declare-fun tp!92250 () Bool)

(declare-fun b_and!44073 () Bool)

(assert (=> start!101748 (= tp!92250 b_and!44073)))

(declare-fun b!1223756 () Bool)

(declare-fun e!695075 () Bool)

(declare-datatypes ((V!46601 0))(
  ( (V!46602 (val!15609 Int)) )
))
(declare-datatypes ((tuple2!20256 0))(
  ( (tuple2!20257 (_1!10138 (_ BitVec 64)) (_2!10138 V!46601)) )
))
(declare-datatypes ((List!27068 0))(
  ( (Nil!27065) (Cons!27064 (h!28273 tuple2!20256) (t!40456 List!27068)) )
))
(declare-datatypes ((ListLongMap!18237 0))(
  ( (ListLongMap!18238 (toList!9134 List!27068)) )
))
(declare-fun lt!557061 () ListLongMap!18237)

(declare-fun lt!557052 () ListLongMap!18237)

(assert (=> b!1223756 (= e!695075 (= lt!557061 lt!557052))))

(declare-fun e!695078 () Bool)

(assert (=> b!1223756 e!695078))

(declare-fun res!813214 () Bool)

(assert (=> b!1223756 (=> (not res!813214) (not e!695078))))

(declare-datatypes ((array!78968 0))(
  ( (array!78969 (arr!38107 (Array (_ BitVec 32) (_ BitVec 64))) (size!38644 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78968)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1223756 (= res!813214 (not (= (select (arr!38107 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!40465 0))(
  ( (Unit!40466) )
))
(declare-fun lt!557062 () Unit!40465)

(declare-fun e!695067 () Unit!40465)

(assert (=> b!1223756 (= lt!557062 e!695067)))

(declare-fun c!120366 () Bool)

(assert (=> b!1223756 (= c!120366 (= (select (arr!38107 _keys!1208) from!1455) k!934))))

(declare-fun e!695071 () Bool)

(assert (=> b!1223756 e!695071))

(declare-fun res!813222 () Bool)

(assert (=> b!1223756 (=> (not res!813222) (not e!695071))))

(declare-fun lt!557063 () tuple2!20256)

(declare-fun lt!557058 () ListLongMap!18237)

(declare-fun +!4097 (ListLongMap!18237 tuple2!20256) ListLongMap!18237)

(assert (=> b!1223756 (= res!813222 (= lt!557058 (+!4097 lt!557061 lt!557063)))))

(declare-datatypes ((ValueCell!14843 0))(
  ( (ValueCellFull!14843 (v!18272 V!46601)) (EmptyCell!14843) )
))
(declare-datatypes ((array!78970 0))(
  ( (array!78971 (arr!38108 (Array (_ BitVec 32) ValueCell!14843)) (size!38645 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78970)

(declare-fun lt!557064 () V!46601)

(declare-fun get!19504 (ValueCell!14843 V!46601) V!46601)

(assert (=> b!1223756 (= lt!557063 (tuple2!20257 (select (arr!38107 _keys!1208) from!1455) (get!19504 (select (arr!38108 _values!996) from!1455) lt!557064)))))

(declare-fun res!813224 () Bool)

(declare-fun e!695074 () Bool)

(assert (=> start!101748 (=> (not res!813224) (not e!695074))))

(assert (=> start!101748 (= res!813224 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38644 _keys!1208))))))

(assert (=> start!101748 e!695074))

(declare-fun tp_is_empty!31105 () Bool)

(assert (=> start!101748 tp_is_empty!31105))

(declare-fun array_inv!28908 (array!78968) Bool)

(assert (=> start!101748 (array_inv!28908 _keys!1208)))

(assert (=> start!101748 true))

(assert (=> start!101748 tp!92250))

(declare-fun e!695079 () Bool)

(declare-fun array_inv!28909 (array!78970) Bool)

(assert (=> start!101748 (and (array_inv!28909 _values!996) e!695079)))

(declare-fun b!1223757 () Bool)

(declare-fun res!813216 () Bool)

(assert (=> b!1223757 (=> (not res!813216) (not e!695074))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1223757 (= res!813216 (and (= (size!38645 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38644 _keys!1208) (size!38645 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1223758 () Bool)

(declare-fun res!813225 () Bool)

(assert (=> b!1223758 (=> (not res!813225) (not e!695074))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1223758 (= res!813225 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38644 _keys!1208))))))

(declare-fun b!1223759 () Bool)

(declare-fun e!695077 () Bool)

(declare-fun e!695072 () Bool)

(assert (=> b!1223759 (= e!695077 e!695072)))

(declare-fun res!813227 () Bool)

(assert (=> b!1223759 (=> res!813227 e!695072)))

(assert (=> b!1223759 (= res!813227 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46601)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!557065 () array!78968)

(declare-fun lt!557060 () array!78970)

(declare-fun minValue!944 () V!46601)

(declare-fun getCurrentListMapNoExtraKeys!5531 (array!78968 array!78970 (_ BitVec 32) (_ BitVec 32) V!46601 V!46601 (_ BitVec 32) Int) ListLongMap!18237)

(assert (=> b!1223759 (= lt!557058 (getCurrentListMapNoExtraKeys!5531 lt!557065 lt!557060 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1223759 (= lt!557060 (array!78971 (store (arr!38108 _values!996) i!673 (ValueCellFull!14843 lt!557064)) (size!38645 _values!996)))))

(declare-fun dynLambda!3427 (Int (_ BitVec 64)) V!46601)

(assert (=> b!1223759 (= lt!557064 (dynLambda!3427 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!557051 () ListLongMap!18237)

(assert (=> b!1223759 (= lt!557051 (getCurrentListMapNoExtraKeys!5531 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1223760 () Bool)

(declare-fun e!695073 () Bool)

(assert (=> b!1223760 (= e!695073 tp_is_empty!31105)))

(declare-fun b!1223761 () Bool)

(declare-fun Unit!40467 () Unit!40465)

(assert (=> b!1223761 (= e!695067 Unit!40467)))

(declare-fun b!1223762 () Bool)

(declare-fun e!695069 () Bool)

(assert (=> b!1223762 (= e!695069 (not e!695077))))

(declare-fun res!813228 () Bool)

(assert (=> b!1223762 (=> res!813228 e!695077)))

(assert (=> b!1223762 (= res!813228 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1223762 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!557059 () Unit!40465)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78968 (_ BitVec 64) (_ BitVec 32)) Unit!40465)

(assert (=> b!1223762 (= lt!557059 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1223763 () Bool)

(declare-fun res!813220 () Bool)

(assert (=> b!1223763 (=> (not res!813220) (not e!695074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1223763 (= res!813220 (validMask!0 mask!1564))))

(declare-fun b!1223764 () Bool)

(declare-fun res!813215 () Bool)

(assert (=> b!1223764 (=> (not res!813215) (not e!695074))))

(declare-datatypes ((List!27069 0))(
  ( (Nil!27066) (Cons!27065 (h!28274 (_ BitVec 64)) (t!40457 List!27069)) )
))
(declare-fun arrayNoDuplicates!0 (array!78968 (_ BitVec 32) List!27069) Bool)

(assert (=> b!1223764 (= res!813215 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27066))))

(declare-fun b!1223765 () Bool)

(declare-fun res!813213 () Bool)

(assert (=> b!1223765 (=> (not res!813213) (not e!695074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78968 (_ BitVec 32)) Bool)

(assert (=> b!1223765 (= res!813213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1223766 () Bool)

(declare-fun res!813223 () Bool)

(assert (=> b!1223766 (=> (not res!813223) (not e!695069))))

(assert (=> b!1223766 (= res!813223 (arrayNoDuplicates!0 lt!557065 #b00000000000000000000000000000000 Nil!27066))))

(declare-fun b!1223767 () Bool)

(declare-fun e!695070 () Bool)

(assert (=> b!1223767 (= e!695070 tp_is_empty!31105)))

(declare-fun b!1223768 () Bool)

(assert (=> b!1223768 (= e!695074 e!695069)))

(declare-fun res!813217 () Bool)

(assert (=> b!1223768 (=> (not res!813217) (not e!695069))))

(assert (=> b!1223768 (= res!813217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557065 mask!1564))))

(assert (=> b!1223768 (= lt!557065 (array!78969 (store (arr!38107 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38644 _keys!1208)))))

(declare-fun mapNonEmpty!48556 () Bool)

(declare-fun mapRes!48556 () Bool)

(declare-fun tp!92249 () Bool)

(assert (=> mapNonEmpty!48556 (= mapRes!48556 (and tp!92249 e!695073))))

(declare-fun mapKey!48556 () (_ BitVec 32))

(declare-fun mapRest!48556 () (Array (_ BitVec 32) ValueCell!14843))

(declare-fun mapValue!48556 () ValueCell!14843)

(assert (=> mapNonEmpty!48556 (= (arr!38108 _values!996) (store mapRest!48556 mapKey!48556 mapValue!48556))))

(declare-fun mapIsEmpty!48556 () Bool)

(assert (=> mapIsEmpty!48556 mapRes!48556))

(declare-fun b!1223769 () Bool)

(assert (=> b!1223769 (= e!695072 e!695075)))

(declare-fun res!813219 () Bool)

(assert (=> b!1223769 (=> res!813219 e!695075)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1223769 (= res!813219 (not (validKeyInArray!0 (select (arr!38107 _keys!1208) from!1455))))))

(assert (=> b!1223769 (= lt!557052 lt!557061)))

(declare-fun lt!557057 () ListLongMap!18237)

(declare-fun -!1974 (ListLongMap!18237 (_ BitVec 64)) ListLongMap!18237)

(assert (=> b!1223769 (= lt!557061 (-!1974 lt!557057 k!934))))

(assert (=> b!1223769 (= lt!557052 (getCurrentListMapNoExtraKeys!5531 lt!557065 lt!557060 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1223769 (= lt!557057 (getCurrentListMapNoExtraKeys!5531 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!557056 () Unit!40465)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1176 (array!78968 array!78970 (_ BitVec 32) (_ BitVec 32) V!46601 V!46601 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40465)

(assert (=> b!1223769 (= lt!557056 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1176 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1223770 () Bool)

(assert (=> b!1223770 (= e!695079 (and e!695070 mapRes!48556))))

(declare-fun condMapEmpty!48556 () Bool)

(declare-fun mapDefault!48556 () ValueCell!14843)

