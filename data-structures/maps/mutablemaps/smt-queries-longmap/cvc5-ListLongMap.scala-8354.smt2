; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101742 () Bool)

(assert start!101742)

(declare-fun b_free!26395 () Bool)

(declare-fun b_next!26395 () Bool)

(assert (=> start!101742 (= b_free!26395 (not b_next!26395))))

(declare-fun tp!92232 () Bool)

(declare-fun b_and!44061 () Bool)

(assert (=> start!101742 (= tp!92232 b_and!44061)))

(declare-fun b!1223561 () Bool)

(declare-fun e!694958 () Bool)

(declare-fun e!694960 () Bool)

(assert (=> b!1223561 (= e!694958 e!694960)))

(declare-fun res!813072 () Bool)

(assert (=> b!1223561 (=> (not res!813072) (not e!694960))))

(declare-datatypes ((array!78956 0))(
  ( (array!78957 (arr!38101 (Array (_ BitVec 32) (_ BitVec 64))) (size!38638 (_ BitVec 32))) )
))
(declare-fun lt!556922 () array!78956)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78956 (_ BitVec 32)) Bool)

(assert (=> b!1223561 (= res!813072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556922 mask!1564))))

(declare-fun _keys!1208 () array!78956)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1223561 (= lt!556922 (array!78957 (store (arr!38101 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38638 _keys!1208)))))

(declare-fun res!813075 () Bool)

(assert (=> start!101742 (=> (not res!813075) (not e!694958))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101742 (= res!813075 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38638 _keys!1208))))))

(assert (=> start!101742 e!694958))

(declare-fun tp_is_empty!31099 () Bool)

(assert (=> start!101742 tp_is_empty!31099))

(declare-fun array_inv!28902 (array!78956) Bool)

(assert (=> start!101742 (array_inv!28902 _keys!1208)))

(assert (=> start!101742 true))

(assert (=> start!101742 tp!92232))

(declare-datatypes ((V!46593 0))(
  ( (V!46594 (val!15606 Int)) )
))
(declare-datatypes ((ValueCell!14840 0))(
  ( (ValueCellFull!14840 (v!18269 V!46593)) (EmptyCell!14840) )
))
(declare-datatypes ((array!78958 0))(
  ( (array!78959 (arr!38102 (Array (_ BitVec 32) ValueCell!14840)) (size!38639 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78958)

(declare-fun e!694953 () Bool)

(declare-fun array_inv!28903 (array!78958) Bool)

(assert (=> start!101742 (and (array_inv!28903 _values!996) e!694953)))

(declare-fun b!1223562 () Bool)

(declare-datatypes ((Unit!40453 0))(
  ( (Unit!40454) )
))
(declare-fun e!694957 () Unit!40453)

(declare-fun Unit!40455 () Unit!40453)

(assert (=> b!1223562 (= e!694957 Unit!40455)))

(declare-fun mapNonEmpty!48547 () Bool)

(declare-fun mapRes!48547 () Bool)

(declare-fun tp!92231 () Bool)

(declare-fun e!694951 () Bool)

(assert (=> mapNonEmpty!48547 (= mapRes!48547 (and tp!92231 e!694951))))

(declare-fun mapValue!48547 () ValueCell!14840)

(declare-fun mapKey!48547 () (_ BitVec 32))

(declare-fun mapRest!48547 () (Array (_ BitVec 32) ValueCell!14840))

(assert (=> mapNonEmpty!48547 (= (arr!38102 _values!996) (store mapRest!48547 mapKey!48547 mapValue!48547))))

(declare-fun b!1223563 () Bool)

(declare-fun e!694952 () Bool)

(assert (=> b!1223563 (= e!694952 tp_is_empty!31099)))

(declare-fun b!1223564 () Bool)

(declare-fun e!694959 () Bool)

(declare-fun e!694955 () Bool)

(assert (=> b!1223564 (= e!694959 e!694955)))

(declare-fun res!813077 () Bool)

(assert (=> b!1223564 (=> res!813077 e!694955)))

(assert (=> b!1223564 (= res!813077 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46593)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20250 0))(
  ( (tuple2!20251 (_1!10135 (_ BitVec 64)) (_2!10135 V!46593)) )
))
(declare-datatypes ((List!27062 0))(
  ( (Nil!27059) (Cons!27058 (h!28267 tuple2!20250) (t!40444 List!27062)) )
))
(declare-datatypes ((ListLongMap!18231 0))(
  ( (ListLongMap!18232 (toList!9131 List!27062)) )
))
(declare-fun lt!556930 () ListLongMap!18231)

(declare-fun lt!556920 () array!78958)

(declare-fun minValue!944 () V!46593)

(declare-fun getCurrentListMapNoExtraKeys!5528 (array!78956 array!78958 (_ BitVec 32) (_ BitVec 32) V!46593 V!46593 (_ BitVec 32) Int) ListLongMap!18231)

(assert (=> b!1223564 (= lt!556930 (getCurrentListMapNoExtraKeys!5528 lt!556922 lt!556920 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!556918 () V!46593)

(assert (=> b!1223564 (= lt!556920 (array!78959 (store (arr!38102 _values!996) i!673 (ValueCellFull!14840 lt!556918)) (size!38639 _values!996)))))

(declare-fun dynLambda!3424 (Int (_ BitVec 64)) V!46593)

(assert (=> b!1223564 (= lt!556918 (dynLambda!3424 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!556928 () ListLongMap!18231)

(assert (=> b!1223564 (= lt!556928 (getCurrentListMapNoExtraKeys!5528 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!694950 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1223565 () Bool)

(declare-fun arrayContainsKey!0 (array!78956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1223565 (= e!694950 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1223566 () Bool)

(declare-fun Unit!40456 () Unit!40453)

(assert (=> b!1223566 (= e!694957 Unit!40456)))

(declare-fun lt!556924 () Unit!40453)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78956 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40453)

(assert (=> b!1223566 (= lt!556924 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1223566 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556923 () Unit!40453)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78956 (_ BitVec 32) (_ BitVec 32)) Unit!40453)

(assert (=> b!1223566 (= lt!556923 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27063 0))(
  ( (Nil!27060) (Cons!27059 (h!28268 (_ BitVec 64)) (t!40445 List!27063)) )
))
(declare-fun arrayNoDuplicates!0 (array!78956 (_ BitVec 32) List!27063) Bool)

(assert (=> b!1223566 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27060)))

(declare-fun lt!556929 () Unit!40453)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78956 (_ BitVec 64) (_ BitVec 32) List!27063) Unit!40453)

(assert (=> b!1223566 (= lt!556929 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27060))))

(assert (=> b!1223566 false))

(declare-fun b!1223567 () Bool)

(declare-fun res!813070 () Bool)

(assert (=> b!1223567 (=> (not res!813070) (not e!694958))))

(assert (=> b!1223567 (= res!813070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!48547 () Bool)

(assert (=> mapIsEmpty!48547 mapRes!48547))

(declare-fun b!1223568 () Bool)

(assert (=> b!1223568 (= e!694951 tp_is_empty!31099)))

(declare-fun b!1223569 () Bool)

(declare-fun res!813069 () Bool)

(assert (=> b!1223569 (=> (not res!813069) (not e!694958))))

(assert (=> b!1223569 (= res!813069 (= (select (arr!38101 _keys!1208) i!673) k!934))))

(declare-fun b!1223570 () Bool)

(declare-fun res!813071 () Bool)

(assert (=> b!1223570 (=> (not res!813071) (not e!694958))))

(assert (=> b!1223570 (= res!813071 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27060))))

(declare-fun b!1223571 () Bool)

(declare-fun res!813074 () Bool)

(assert (=> b!1223571 (=> (not res!813074) (not e!694958))))

(assert (=> b!1223571 (= res!813074 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38638 _keys!1208))))))

(declare-fun b!1223572 () Bool)

(declare-fun res!813076 () Bool)

(assert (=> b!1223572 (=> (not res!813076) (not e!694958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1223572 (= res!813076 (validMask!0 mask!1564))))

(declare-fun b!1223573 () Bool)

(declare-fun e!694954 () Bool)

(assert (=> b!1223573 (= e!694955 e!694954)))

(declare-fun res!813081 () Bool)

(assert (=> b!1223573 (=> res!813081 e!694954)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1223573 (= res!813081 (not (validKeyInArray!0 (select (arr!38101 _keys!1208) from!1455))))))

(declare-fun lt!556919 () ListLongMap!18231)

(declare-fun lt!556916 () ListLongMap!18231)

(assert (=> b!1223573 (= lt!556919 lt!556916)))

(declare-fun lt!556926 () ListLongMap!18231)

(declare-fun -!1971 (ListLongMap!18231 (_ BitVec 64)) ListLongMap!18231)

(assert (=> b!1223573 (= lt!556916 (-!1971 lt!556926 k!934))))

(assert (=> b!1223573 (= lt!556919 (getCurrentListMapNoExtraKeys!5528 lt!556922 lt!556920 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1223573 (= lt!556926 (getCurrentListMapNoExtraKeys!5528 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!556917 () Unit!40453)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1173 (array!78956 array!78958 (_ BitVec 32) (_ BitVec 32) V!46593 V!46593 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40453)

(assert (=> b!1223573 (= lt!556917 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1173 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1223574 () Bool)

(assert (=> b!1223574 (= e!694954 (bvslt i!673 (size!38639 _values!996)))))

(declare-fun e!694962 () Bool)

(assert (=> b!1223574 e!694962))

(declare-fun res!813080 () Bool)

(assert (=> b!1223574 (=> (not res!813080) (not e!694962))))

(assert (=> b!1223574 (= res!813080 (not (= (select (arr!38101 _keys!1208) from!1455) k!934)))))

(declare-fun lt!556927 () Unit!40453)

(assert (=> b!1223574 (= lt!556927 e!694957)))

(declare-fun c!120357 () Bool)

(assert (=> b!1223574 (= c!120357 (= (select (arr!38101 _keys!1208) from!1455) k!934))))

(declare-fun e!694961 () Bool)

(assert (=> b!1223574 e!694961))

(declare-fun res!813084 () Bool)

(assert (=> b!1223574 (=> (not res!813084) (not e!694961))))

(declare-fun lt!556925 () tuple2!20250)

(declare-fun +!4094 (ListLongMap!18231 tuple2!20250) ListLongMap!18231)

(assert (=> b!1223574 (= res!813084 (= lt!556930 (+!4094 lt!556916 lt!556925)))))

(declare-fun get!19500 (ValueCell!14840 V!46593) V!46593)

(assert (=> b!1223574 (= lt!556925 (tuple2!20251 (select (arr!38101 _keys!1208) from!1455) (get!19500 (select (arr!38102 _values!996) from!1455) lt!556918)))))

(declare-fun b!1223575 () Bool)

(assert (=> b!1223575 (= e!694953 (and e!694952 mapRes!48547))))

(declare-fun condMapEmpty!48547 () Bool)

(declare-fun mapDefault!48547 () ValueCell!14840)

