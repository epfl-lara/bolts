; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101570 () Bool)

(assert start!101570)

(declare-fun b_free!26321 () Bool)

(declare-fun b_next!26321 () Bool)

(assert (=> start!101570 (= b_free!26321 (not b_next!26321))))

(declare-fun tp!92001 () Bool)

(declare-fun b_and!43859 () Bool)

(assert (=> start!101570 (= tp!92001 b_and!43859)))

(declare-fun mapNonEmpty!48427 () Bool)

(declare-fun mapRes!48427 () Bool)

(declare-fun tp!92000 () Bool)

(declare-fun e!693237 () Bool)

(assert (=> mapNonEmpty!48427 (= mapRes!48427 (and tp!92000 e!693237))))

(declare-datatypes ((V!46493 0))(
  ( (V!46494 (val!15569 Int)) )
))
(declare-datatypes ((ValueCell!14803 0))(
  ( (ValueCellFull!14803 (v!18228 V!46493)) (EmptyCell!14803) )
))
(declare-fun mapRest!48427 () (Array (_ BitVec 32) ValueCell!14803))

(declare-fun mapValue!48427 () ValueCell!14803)

(declare-fun mapKey!48427 () (_ BitVec 32))

(declare-datatypes ((array!78804 0))(
  ( (array!78805 (arr!38028 (Array (_ BitVec 32) ValueCell!14803)) (size!38565 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78804)

(assert (=> mapNonEmpty!48427 (= (arr!38028 _values!996) (store mapRest!48427 mapKey!48427 mapValue!48427))))

(declare-fun res!811031 () Bool)

(declare-fun e!693239 () Bool)

(assert (=> start!101570 (=> (not res!811031) (not e!693239))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78806 0))(
  ( (array!78807 (arr!38029 (Array (_ BitVec 32) (_ BitVec 64))) (size!38566 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78806)

(assert (=> start!101570 (= res!811031 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38566 _keys!1208))))))

(assert (=> start!101570 e!693239))

(declare-fun tp_is_empty!31025 () Bool)

(assert (=> start!101570 tp_is_empty!31025))

(declare-fun array_inv!28852 (array!78806) Bool)

(assert (=> start!101570 (array_inv!28852 _keys!1208)))

(assert (=> start!101570 true))

(assert (=> start!101570 tp!92001))

(declare-fun e!693246 () Bool)

(declare-fun array_inv!28853 (array!78804) Bool)

(assert (=> start!101570 (and (array_inv!28853 _values!996) e!693246)))

(declare-fun b!1220743 () Bool)

(declare-fun e!693244 () Bool)

(declare-fun e!693243 () Bool)

(assert (=> b!1220743 (= e!693244 (not e!693243))))

(declare-fun res!811041 () Bool)

(assert (=> b!1220743 (=> res!811041 e!693243)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1220743 (= res!811041 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1220743 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40362 0))(
  ( (Unit!40363) )
))
(declare-fun lt!555172 () Unit!40362)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78806 (_ BitVec 64) (_ BitVec 32)) Unit!40362)

(assert (=> b!1220743 (= lt!555172 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1220744 () Bool)

(declare-fun res!811040 () Bool)

(assert (=> b!1220744 (=> (not res!811040) (not e!693239))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1220744 (= res!811040 (validMask!0 mask!1564))))

(declare-fun b!1220745 () Bool)

(declare-fun res!811032 () Bool)

(assert (=> b!1220745 (=> (not res!811032) (not e!693239))))

(assert (=> b!1220745 (= res!811032 (= (select (arr!38029 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!48427 () Bool)

(assert (=> mapIsEmpty!48427 mapRes!48427))

(declare-fun b!1220746 () Bool)

(declare-fun res!811034 () Bool)

(assert (=> b!1220746 (=> (not res!811034) (not e!693239))))

(declare-datatypes ((List!26998 0))(
  ( (Nil!26995) (Cons!26994 (h!28203 (_ BitVec 64)) (t!40306 List!26998)) )
))
(declare-fun arrayNoDuplicates!0 (array!78806 (_ BitVec 32) List!26998) Bool)

(assert (=> b!1220746 (= res!811034 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26995))))

(declare-fun b!1220747 () Bool)

(declare-fun res!811030 () Bool)

(assert (=> b!1220747 (=> (not res!811030) (not e!693239))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1220747 (= res!811030 (and (= (size!38565 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38566 _keys!1208) (size!38565 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1220748 () Bool)

(declare-fun e!693235 () Bool)

(assert (=> b!1220748 (= e!693243 e!693235)))

(declare-fun res!811043 () Bool)

(assert (=> b!1220748 (=> res!811043 e!693235)))

(assert (=> b!1220748 (= res!811043 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46493)

(declare-fun lt!555179 () array!78806)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20182 0))(
  ( (tuple2!20183 (_1!10101 (_ BitVec 64)) (_2!10101 V!46493)) )
))
(declare-datatypes ((List!26999 0))(
  ( (Nil!26996) (Cons!26995 (h!28204 tuple2!20182) (t!40307 List!26999)) )
))
(declare-datatypes ((ListLongMap!18163 0))(
  ( (ListLongMap!18164 (toList!9097 List!26999)) )
))
(declare-fun lt!555173 () ListLongMap!18163)

(declare-fun lt!555181 () array!78804)

(declare-fun minValue!944 () V!46493)

(declare-fun getCurrentListMapNoExtraKeys!5495 (array!78806 array!78804 (_ BitVec 32) (_ BitVec 32) V!46493 V!46493 (_ BitVec 32) Int) ListLongMap!18163)

(assert (=> b!1220748 (= lt!555173 (getCurrentListMapNoExtraKeys!5495 lt!555179 lt!555181 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!555174 () V!46493)

(assert (=> b!1220748 (= lt!555181 (array!78805 (store (arr!38028 _values!996) i!673 (ValueCellFull!14803 lt!555174)) (size!38565 _values!996)))))

(declare-fun dynLambda!3397 (Int (_ BitVec 64)) V!46493)

(assert (=> b!1220748 (= lt!555174 (dynLambda!3397 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!555176 () ListLongMap!18163)

(assert (=> b!1220748 (= lt!555176 (getCurrentListMapNoExtraKeys!5495 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1220749 () Bool)

(declare-fun e!693240 () Bool)

(assert (=> b!1220749 (= e!693240 (or (bvsge (size!38566 _keys!1208) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38566 _keys!1208))))))

(assert (=> b!1220749 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26995)))

(declare-fun lt!555180 () Unit!40362)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78806 (_ BitVec 32) (_ BitVec 32)) Unit!40362)

(assert (=> b!1220749 (= lt!555180 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1220749 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555182 () Unit!40362)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78806 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40362)

(assert (=> b!1220749 (= lt!555182 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1220750 () Bool)

(declare-fun e!693236 () Bool)

(assert (=> b!1220750 (= e!693236 e!693240)))

(declare-fun res!811037 () Bool)

(assert (=> b!1220750 (=> res!811037 e!693240)))

(assert (=> b!1220750 (= res!811037 (not (= (select (arr!38029 _keys!1208) from!1455) k!934)))))

(declare-fun e!693245 () Bool)

(assert (=> b!1220750 e!693245))

(declare-fun res!811042 () Bool)

(assert (=> b!1220750 (=> (not res!811042) (not e!693245))))

(declare-fun lt!555178 () ListLongMap!18163)

(declare-fun +!4070 (ListLongMap!18163 tuple2!20182) ListLongMap!18163)

(declare-fun get!19444 (ValueCell!14803 V!46493) V!46493)

(assert (=> b!1220750 (= res!811042 (= lt!555173 (+!4070 lt!555178 (tuple2!20183 (select (arr!38029 _keys!1208) from!1455) (get!19444 (select (arr!38028 _values!996) from!1455) lt!555174)))))))

(declare-fun b!1220751 () Bool)

(assert (=> b!1220751 (= e!693239 e!693244)))

(declare-fun res!811038 () Bool)

(assert (=> b!1220751 (=> (not res!811038) (not e!693244))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78806 (_ BitVec 32)) Bool)

(assert (=> b!1220751 (= res!811038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555179 mask!1564))))

(assert (=> b!1220751 (= lt!555179 (array!78807 (store (arr!38029 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38566 _keys!1208)))))

(declare-fun b!1220752 () Bool)

(declare-fun e!693241 () Bool)

(assert (=> b!1220752 (= e!693241 tp_is_empty!31025)))

(declare-fun b!1220753 () Bool)

(assert (=> b!1220753 (= e!693246 (and e!693241 mapRes!48427))))

(declare-fun condMapEmpty!48427 () Bool)

(declare-fun mapDefault!48427 () ValueCell!14803)

