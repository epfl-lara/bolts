; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101752 () Bool)

(assert start!101752)

(declare-fun b_free!26405 () Bool)

(declare-fun b_next!26405 () Bool)

(assert (=> start!101752 (= b_free!26405 (not b_next!26405))))

(declare-fun tp!92262 () Bool)

(declare-fun b_and!44081 () Bool)

(assert (=> start!101752 (= tp!92262 b_and!44081)))

(declare-fun b!1223886 () Bool)

(declare-fun res!813316 () Bool)

(declare-fun e!695147 () Bool)

(assert (=> b!1223886 (=> (not res!813316) (not e!695147))))

(declare-datatypes ((array!78976 0))(
  ( (array!78977 (arr!38111 (Array (_ BitVec 32) (_ BitVec 64))) (size!38648 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78976)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1223886 (= res!813316 (= (select (arr!38111 _keys!1208) i!673) k!934))))

(declare-fun b!1223887 () Bool)

(declare-fun res!813312 () Bool)

(declare-fun e!695157 () Bool)

(assert (=> b!1223887 (=> (not res!813312) (not e!695157))))

(declare-fun lt!557146 () array!78976)

(declare-datatypes ((List!27072 0))(
  ( (Nil!27069) (Cons!27068 (h!28277 (_ BitVec 64)) (t!40464 List!27072)) )
))
(declare-fun arrayNoDuplicates!0 (array!78976 (_ BitVec 32) List!27072) Bool)

(assert (=> b!1223887 (= res!813312 (arrayNoDuplicates!0 lt!557146 #b00000000000000000000000000000000 Nil!27069))))

(declare-fun b!1223888 () Bool)

(declare-fun e!695152 () Bool)

(declare-fun e!695155 () Bool)

(assert (=> b!1223888 (= e!695152 e!695155)))

(declare-fun res!813311 () Bool)

(assert (=> b!1223888 (=> res!813311 e!695155)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1223888 (= res!813311 (not (= (select (arr!38111 _keys!1208) from!1455) k!934)))))

(declare-fun mapNonEmpty!48562 () Bool)

(declare-fun mapRes!48562 () Bool)

(declare-fun tp!92261 () Bool)

(declare-fun e!695145 () Bool)

(assert (=> mapNonEmpty!48562 (= mapRes!48562 (and tp!92261 e!695145))))

(declare-datatypes ((V!46605 0))(
  ( (V!46606 (val!15611 Int)) )
))
(declare-datatypes ((ValueCell!14845 0))(
  ( (ValueCellFull!14845 (v!18274 V!46605)) (EmptyCell!14845) )
))
(declare-fun mapValue!48562 () ValueCell!14845)

(declare-fun mapRest!48562 () (Array (_ BitVec 32) ValueCell!14845))

(declare-datatypes ((array!78978 0))(
  ( (array!78979 (arr!38112 (Array (_ BitVec 32) ValueCell!14845)) (size!38649 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78978)

(declare-fun mapKey!48562 () (_ BitVec 32))

(assert (=> mapNonEmpty!48562 (= (arr!38112 _values!996) (store mapRest!48562 mapKey!48562 mapValue!48562))))

(declare-fun b!1223889 () Bool)

(declare-fun e!695146 () Bool)

(declare-fun e!695154 () Bool)

(assert (=> b!1223889 (= e!695146 e!695154)))

(declare-fun res!813323 () Bool)

(assert (=> b!1223889 (=> res!813323 e!695154)))

(assert (=> b!1223889 (= res!813323 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46605)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20260 0))(
  ( (tuple2!20261 (_1!10140 (_ BitVec 64)) (_2!10140 V!46605)) )
))
(declare-datatypes ((List!27073 0))(
  ( (Nil!27070) (Cons!27069 (h!28278 tuple2!20260) (t!40465 List!27073)) )
))
(declare-datatypes ((ListLongMap!18241 0))(
  ( (ListLongMap!18242 (toList!9136 List!27073)) )
))
(declare-fun lt!557154 () ListLongMap!18241)

(declare-fun lt!557152 () array!78978)

(declare-fun minValue!944 () V!46605)

(declare-fun getCurrentListMapNoExtraKeys!5533 (array!78976 array!78978 (_ BitVec 32) (_ BitVec 32) V!46605 V!46605 (_ BitVec 32) Int) ListLongMap!18241)

(assert (=> b!1223889 (= lt!557154 (getCurrentListMapNoExtraKeys!5533 lt!557146 lt!557152 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!557141 () V!46605)

(assert (=> b!1223889 (= lt!557152 (array!78979 (store (arr!38112 _values!996) i!673 (ValueCellFull!14845 lt!557141)) (size!38649 _values!996)))))

(declare-fun dynLambda!3429 (Int (_ BitVec 64)) V!46605)

(assert (=> b!1223889 (= lt!557141 (dynLambda!3429 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!557149 () ListLongMap!18241)

(assert (=> b!1223889 (= lt!557149 (getCurrentListMapNoExtraKeys!5533 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1223890 () Bool)

(assert (=> b!1223890 (= e!695157 (not e!695146))))

(declare-fun res!813310 () Bool)

(assert (=> b!1223890 (=> res!813310 e!695146)))

(assert (=> b!1223890 (= res!813310 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1223890 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40472 0))(
  ( (Unit!40473) )
))
(declare-fun lt!557151 () Unit!40472)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78976 (_ BitVec 64) (_ BitVec 32)) Unit!40472)

(assert (=> b!1223890 (= lt!557151 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1223891 () Bool)

(declare-fun e!695153 () Unit!40472)

(declare-fun Unit!40474 () Unit!40472)

(assert (=> b!1223891 (= e!695153 Unit!40474)))

(declare-fun b!1223892 () Bool)

(declare-fun e!695151 () Bool)

(declare-fun tp_is_empty!31109 () Bool)

(assert (=> b!1223892 (= e!695151 tp_is_empty!31109)))

(declare-fun mapIsEmpty!48562 () Bool)

(assert (=> mapIsEmpty!48562 mapRes!48562))

(declare-fun b!1223893 () Bool)

(declare-fun res!813318 () Bool)

(assert (=> b!1223893 (=> (not res!813318) (not e!695147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78976 (_ BitVec 32)) Bool)

(assert (=> b!1223893 (= res!813318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun lt!557155 () ListLongMap!18241)

(declare-fun lt!557153 () tuple2!20260)

(declare-fun b!1223894 () Bool)

(declare-fun e!695148 () Bool)

(declare-fun +!4099 (ListLongMap!18241 tuple2!20260) ListLongMap!18241)

(assert (=> b!1223894 (= e!695148 (= lt!557149 (+!4099 lt!557155 lt!557153)))))

(declare-fun b!1223895 () Bool)

(assert (=> b!1223895 (= e!695155 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1223896 () Bool)

(declare-fun e!695156 () Bool)

(assert (=> b!1223896 (= e!695156 (and e!695151 mapRes!48562))))

(declare-fun condMapEmpty!48562 () Bool)

(declare-fun mapDefault!48562 () ValueCell!14845)

