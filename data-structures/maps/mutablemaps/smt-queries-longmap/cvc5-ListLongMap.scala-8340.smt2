; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101560 () Bool)

(assert start!101560)

(declare-fun b_free!26311 () Bool)

(declare-fun b_next!26311 () Bool)

(assert (=> start!101560 (= b_free!26311 (not b_next!26311))))

(declare-fun tp!91970 () Bool)

(declare-fun b_and!43839 () Bool)

(assert (=> start!101560 (= tp!91970 b_and!43839)))

(declare-fun b!1220448 () Bool)

(declare-fun e!693066 () Bool)

(declare-fun tp_is_empty!31015 () Bool)

(assert (=> b!1220448 (= e!693066 tp_is_empty!31015)))

(declare-fun b!1220449 () Bool)

(declare-fun res!810789 () Bool)

(declare-fun e!693061 () Bool)

(assert (=> b!1220449 (=> (not res!810789) (not e!693061))))

(declare-datatypes ((array!78784 0))(
  ( (array!78785 (arr!38018 (Array (_ BitVec 32) (_ BitVec 64))) (size!38555 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78784)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1220449 (= res!810789 (= (select (arr!38018 _keys!1208) i!673) k!934))))

(declare-fun b!1220450 () Bool)

(declare-fun res!810791 () Bool)

(assert (=> b!1220450 (=> (not res!810791) (not e!693061))))

(declare-datatypes ((List!26989 0))(
  ( (Nil!26986) (Cons!26985 (h!28194 (_ BitVec 64)) (t!40287 List!26989)) )
))
(declare-fun arrayNoDuplicates!0 (array!78784 (_ BitVec 32) List!26989) Bool)

(assert (=> b!1220450 (= res!810791 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26986))))

(declare-fun b!1220451 () Bool)

(declare-fun res!810796 () Bool)

(assert (=> b!1220451 (=> (not res!810796) (not e!693061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1220451 (= res!810796 (validKeyInArray!0 k!934))))

(declare-fun b!1220452 () Bool)

(declare-fun e!693060 () Bool)

(declare-fun e!693057 () Bool)

(assert (=> b!1220452 (= e!693060 e!693057)))

(declare-fun res!810795 () Bool)

(assert (=> b!1220452 (=> res!810795 e!693057)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1220452 (= res!810795 (not (= (select (arr!38018 _keys!1208) from!1455) k!934)))))

(declare-fun b!1220453 () Bool)

(declare-fun e!693064 () Bool)

(declare-fun e!693065 () Bool)

(assert (=> b!1220453 (= e!693064 e!693065)))

(declare-fun res!810793 () Bool)

(assert (=> b!1220453 (=> res!810793 e!693065)))

(assert (=> b!1220453 (= res!810793 (not (validKeyInArray!0 (select (arr!38018 _keys!1208) from!1455))))))

(declare-datatypes ((V!46481 0))(
  ( (V!46482 (val!15564 Int)) )
))
(declare-datatypes ((tuple2!20172 0))(
  ( (tuple2!20173 (_1!10096 (_ BitVec 64)) (_2!10096 V!46481)) )
))
(declare-datatypes ((List!26990 0))(
  ( (Nil!26987) (Cons!26986 (h!28195 tuple2!20172) (t!40288 List!26990)) )
))
(declare-datatypes ((ListLongMap!18153 0))(
  ( (ListLongMap!18154 (toList!9092 List!26990)) )
))
(declare-fun lt!554996 () ListLongMap!18153)

(declare-fun lt!555000 () ListLongMap!18153)

(assert (=> b!1220453 (= lt!554996 lt!555000)))

(declare-fun lt!554994 () ListLongMap!18153)

(declare-fun -!1939 (ListLongMap!18153 (_ BitVec 64)) ListLongMap!18153)

(assert (=> b!1220453 (= lt!555000 (-!1939 lt!554994 k!934))))

(declare-fun zeroValue!944 () V!46481)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46481)

(declare-fun lt!554992 () array!78784)

(declare-datatypes ((ValueCell!14798 0))(
  ( (ValueCellFull!14798 (v!18223 V!46481)) (EmptyCell!14798) )
))
(declare-datatypes ((array!78786 0))(
  ( (array!78787 (arr!38019 (Array (_ BitVec 32) ValueCell!14798)) (size!38556 (_ BitVec 32))) )
))
(declare-fun lt!554993 () array!78786)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5490 (array!78784 array!78786 (_ BitVec 32) (_ BitVec 32) V!46481 V!46481 (_ BitVec 32) Int) ListLongMap!18153)

(assert (=> b!1220453 (= lt!554996 (getCurrentListMapNoExtraKeys!5490 lt!554992 lt!554993 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78786)

(assert (=> b!1220453 (= lt!554994 (getCurrentListMapNoExtraKeys!5490 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40354 0))(
  ( (Unit!40355) )
))
(declare-fun lt!554999 () Unit!40354)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1141 (array!78784 array!78786 (_ BitVec 32) (_ BitVec 32) V!46481 V!46481 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40354)

(assert (=> b!1220453 (= lt!554999 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1141 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1220454 () Bool)

(declare-fun e!693062 () Bool)

(assert (=> b!1220454 (= e!693065 e!693062)))

(declare-fun res!810800 () Bool)

(assert (=> b!1220454 (=> res!810800 e!693062)))

(assert (=> b!1220454 (= res!810800 (not (= (select (arr!38018 _keys!1208) from!1455) k!934)))))

(assert (=> b!1220454 e!693060))

(declare-fun res!810799 () Bool)

(assert (=> b!1220454 (=> (not res!810799) (not e!693060))))

(declare-fun lt!554998 () V!46481)

(declare-fun lt!555002 () ListLongMap!18153)

(declare-fun +!4067 (ListLongMap!18153 tuple2!20172) ListLongMap!18153)

(declare-fun get!19439 (ValueCell!14798 V!46481) V!46481)

(assert (=> b!1220454 (= res!810799 (= lt!555002 (+!4067 lt!555000 (tuple2!20173 (select (arr!38018 _keys!1208) from!1455) (get!19439 (select (arr!38019 _values!996) from!1455) lt!554998)))))))

(declare-fun b!1220455 () Bool)

(declare-fun e!693063 () Bool)

(assert (=> b!1220455 (= e!693063 e!693064)))

(declare-fun res!810803 () Bool)

(assert (=> b!1220455 (=> res!810803 e!693064)))

(assert (=> b!1220455 (= res!810803 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1220455 (= lt!555002 (getCurrentListMapNoExtraKeys!5490 lt!554992 lt!554993 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1220455 (= lt!554993 (array!78787 (store (arr!38019 _values!996) i!673 (ValueCellFull!14798 lt!554998)) (size!38556 _values!996)))))

(declare-fun dynLambda!3392 (Int (_ BitVec 64)) V!46481)

(assert (=> b!1220455 (= lt!554998 (dynLambda!3392 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!554995 () ListLongMap!18153)

(assert (=> b!1220455 (= lt!554995 (getCurrentListMapNoExtraKeys!5490 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1220456 () Bool)

(declare-fun res!810797 () Bool)

(assert (=> b!1220456 (=> (not res!810797) (not e!693061))))

(assert (=> b!1220456 (= res!810797 (and (= (size!38556 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38555 _keys!1208) (size!38556 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!48412 () Bool)

(declare-fun mapRes!48412 () Bool)

(declare-fun tp!91971 () Bool)

(assert (=> mapNonEmpty!48412 (= mapRes!48412 (and tp!91971 e!693066))))

(declare-fun mapValue!48412 () ValueCell!14798)

(declare-fun mapRest!48412 () (Array (_ BitVec 32) ValueCell!14798))

(declare-fun mapKey!48412 () (_ BitVec 32))

(assert (=> mapNonEmpty!48412 (= (arr!38019 _values!996) (store mapRest!48412 mapKey!48412 mapValue!48412))))

(declare-fun b!1220457 () Bool)

(declare-fun res!810801 () Bool)

(declare-fun e!693058 () Bool)

(assert (=> b!1220457 (=> (not res!810801) (not e!693058))))

(assert (=> b!1220457 (= res!810801 (arrayNoDuplicates!0 lt!554992 #b00000000000000000000000000000000 Nil!26986))))

(declare-fun b!1220459 () Bool)

(assert (=> b!1220459 (= e!693062 true)))

(assert (=> b!1220459 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26986)))

(declare-fun lt!554991 () Unit!40354)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78784 (_ BitVec 32) (_ BitVec 32)) Unit!40354)

(assert (=> b!1220459 (= lt!554991 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun arrayContainsKey!0 (array!78784 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1220459 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555001 () Unit!40354)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78784 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40354)

(assert (=> b!1220459 (= lt!555001 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1220460 () Bool)

(assert (=> b!1220460 (= e!693061 e!693058)))

(declare-fun res!810788 () Bool)

(assert (=> b!1220460 (=> (not res!810788) (not e!693058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78784 (_ BitVec 32)) Bool)

(assert (=> b!1220460 (= res!810788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!554992 mask!1564))))

(assert (=> b!1220460 (= lt!554992 (array!78785 (store (arr!38018 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38555 _keys!1208)))))

(declare-fun b!1220461 () Bool)

(declare-fun res!810794 () Bool)

(assert (=> b!1220461 (=> (not res!810794) (not e!693061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1220461 (= res!810794 (validMask!0 mask!1564))))

(declare-fun b!1220462 () Bool)

(declare-fun e!693059 () Bool)

(assert (=> b!1220462 (= e!693059 tp_is_empty!31015)))

(declare-fun mapIsEmpty!48412 () Bool)

(assert (=> mapIsEmpty!48412 mapRes!48412))

(declare-fun b!1220458 () Bool)

(assert (=> b!1220458 (= e!693057 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun res!810802 () Bool)

(assert (=> start!101560 (=> (not res!810802) (not e!693061))))

(assert (=> start!101560 (= res!810802 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38555 _keys!1208))))))

(assert (=> start!101560 e!693061))

(assert (=> start!101560 tp_is_empty!31015))

(declare-fun array_inv!28846 (array!78784) Bool)

(assert (=> start!101560 (array_inv!28846 _keys!1208)))

(assert (=> start!101560 true))

(assert (=> start!101560 tp!91970))

(declare-fun e!693055 () Bool)

(declare-fun array_inv!28847 (array!78786) Bool)

(assert (=> start!101560 (and (array_inv!28847 _values!996) e!693055)))

(declare-fun b!1220463 () Bool)

(assert (=> b!1220463 (= e!693058 (not e!693063))))

(declare-fun res!810792 () Bool)

(assert (=> b!1220463 (=> res!810792 e!693063)))

(assert (=> b!1220463 (= res!810792 (bvsgt from!1455 i!673))))

(assert (=> b!1220463 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!554997 () Unit!40354)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78784 (_ BitVec 64) (_ BitVec 32)) Unit!40354)

(assert (=> b!1220463 (= lt!554997 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1220464 () Bool)

(declare-fun res!810798 () Bool)

(assert (=> b!1220464 (=> (not res!810798) (not e!693061))))

(assert (=> b!1220464 (= res!810798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1220465 () Bool)

(declare-fun res!810790 () Bool)

(assert (=> b!1220465 (=> (not res!810790) (not e!693061))))

(assert (=> b!1220465 (= res!810790 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38555 _keys!1208))))))

(declare-fun b!1220466 () Bool)

(assert (=> b!1220466 (= e!693055 (and e!693059 mapRes!48412))))

(declare-fun condMapEmpty!48412 () Bool)

(declare-fun mapDefault!48412 () ValueCell!14798)

