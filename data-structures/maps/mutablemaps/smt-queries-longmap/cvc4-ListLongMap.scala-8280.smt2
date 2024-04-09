; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100852 () Bool)

(assert start!100852)

(declare-fun b_free!25955 () Bool)

(declare-fun b_next!25955 () Bool)

(assert (=> start!100852 (= b_free!25955 (not b_next!25955))))

(declare-fun tp!90872 () Bool)

(declare-fun b_and!42925 () Bool)

(assert (=> start!100852 (= tp!90872 b_and!42925)))

(declare-fun b!1206743 () Bool)

(declare-fun res!802541 () Bool)

(declare-fun e!685340 () Bool)

(assert (=> b!1206743 (=> (not res!802541) (not e!685340))))

(declare-datatypes ((array!78076 0))(
  ( (array!78077 (arr!37674 (Array (_ BitVec 32) (_ BitVec 64))) (size!38211 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78076)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1206743 (= res!802541 (= (select (arr!37674 _keys!1208) i!673) k!934))))

(declare-fun bm!58805 () Bool)

(declare-datatypes ((Unit!39926 0))(
  ( (Unit!39927) )
))
(declare-fun call!58815 () Unit!39926)

(declare-fun call!58812 () Unit!39926)

(assert (=> bm!58805 (= call!58815 call!58812)))

(declare-fun b!1206744 () Bool)

(declare-fun e!685343 () Bool)

(declare-fun e!685348 () Bool)

(assert (=> b!1206744 (= e!685343 e!685348)))

(declare-fun res!802534 () Bool)

(assert (=> b!1206744 (=> res!802534 e!685348)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1206744 (= res!802534 (not (= from!1455 i!673)))))

(declare-datatypes ((V!46005 0))(
  ( (V!46006 (val!15386 Int)) )
))
(declare-fun zeroValue!944 () V!46005)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14620 0))(
  ( (ValueCellFull!14620 (v!18032 V!46005)) (EmptyCell!14620) )
))
(declare-datatypes ((array!78078 0))(
  ( (array!78079 (arr!37675 (Array (_ BitVec 32) ValueCell!14620)) (size!38212 (_ BitVec 32))) )
))
(declare-fun lt!547450 () array!78078)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46005)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!19878 0))(
  ( (tuple2!19879 (_1!9949 (_ BitVec 64)) (_2!9949 V!46005)) )
))
(declare-datatypes ((List!26701 0))(
  ( (Nil!26698) (Cons!26697 (h!27906 tuple2!19878) (t!39643 List!26701)) )
))
(declare-datatypes ((ListLongMap!17859 0))(
  ( (ListLongMap!17860 (toList!8945 List!26701)) )
))
(declare-fun lt!547448 () ListLongMap!17859)

(declare-fun lt!547447 () array!78076)

(declare-fun getCurrentListMapNoExtraKeys!5352 (array!78076 array!78078 (_ BitVec 32) (_ BitVec 32) V!46005 V!46005 (_ BitVec 32) Int) ListLongMap!17859)

(assert (=> b!1206744 (= lt!547448 (getCurrentListMapNoExtraKeys!5352 lt!547447 lt!547450 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78078)

(declare-fun dynLambda!3272 (Int (_ BitVec 64)) V!46005)

(assert (=> b!1206744 (= lt!547450 (array!78079 (store (arr!37675 _values!996) i!673 (ValueCellFull!14620 (dynLambda!3272 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38212 _values!996)))))

(declare-fun lt!547453 () ListLongMap!17859)

(assert (=> b!1206744 (= lt!547453 (getCurrentListMapNoExtraKeys!5352 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!47847 () Bool)

(declare-fun mapRes!47847 () Bool)

(assert (=> mapIsEmpty!47847 mapRes!47847))

(declare-fun b!1206745 () Bool)

(declare-fun e!685347 () Bool)

(declare-fun tp_is_empty!30659 () Bool)

(assert (=> b!1206745 (= e!685347 tp_is_empty!30659)))

(declare-fun b!1206746 () Bool)

(declare-fun call!58810 () Bool)

(assert (=> b!1206746 call!58810))

(declare-fun lt!547451 () Unit!39926)

(assert (=> b!1206746 (= lt!547451 call!58815)))

(declare-fun e!685337 () Unit!39926)

(assert (=> b!1206746 (= e!685337 lt!547451)))

(declare-fun b!1206747 () Bool)

(declare-fun e!685351 () Unit!39926)

(assert (=> b!1206747 (= e!685351 e!685337)))

(declare-fun c!118483 () Bool)

(declare-fun lt!547456 () Bool)

(assert (=> b!1206747 (= c!118483 (and (not lt!547456) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1206748 () Bool)

(declare-fun e!685352 () Bool)

(assert (=> b!1206748 (= e!685352 tp_is_empty!30659)))

(declare-fun b!1206749 () Bool)

(declare-fun call!58809 () ListLongMap!17859)

(declare-fun e!685342 () Bool)

(declare-fun call!58814 () ListLongMap!17859)

(declare-fun -!1853 (ListLongMap!17859 (_ BitVec 64)) ListLongMap!17859)

(assert (=> b!1206749 (= e!685342 (= call!58809 (-!1853 call!58814 k!934)))))

(declare-fun b!1206750 () Bool)

(declare-fun e!685341 () Unit!39926)

(declare-fun lt!547452 () Unit!39926)

(assert (=> b!1206750 (= e!685341 lt!547452)))

(assert (=> b!1206750 (= lt!547452 call!58815)))

(assert (=> b!1206750 call!58810))

(declare-fun b!1206751 () Bool)

(declare-fun e!685338 () Bool)

(declare-fun e!685345 () Bool)

(assert (=> b!1206751 (= e!685338 e!685345)))

(declare-fun res!802546 () Bool)

(assert (=> b!1206751 (=> res!802546 e!685345)))

(declare-fun lt!547449 () ListLongMap!17859)

(declare-fun contains!6948 (ListLongMap!17859 (_ BitVec 64)) Bool)

(assert (=> b!1206751 (= res!802546 (not (contains!6948 lt!547449 k!934)))))

(assert (=> b!1206751 (= lt!547449 (getCurrentListMapNoExtraKeys!5352 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1206752 () Bool)

(assert (=> b!1206752 (= e!685342 (= call!58809 call!58814))))

(declare-fun mapNonEmpty!47847 () Bool)

(declare-fun tp!90871 () Bool)

(assert (=> mapNonEmpty!47847 (= mapRes!47847 (and tp!90871 e!685347))))

(declare-fun mapRest!47847 () (Array (_ BitVec 32) ValueCell!14620))

(declare-fun mapKey!47847 () (_ BitVec 32))

(declare-fun mapValue!47847 () ValueCell!14620)

(assert (=> mapNonEmpty!47847 (= (arr!37675 _values!996) (store mapRest!47847 mapKey!47847 mapValue!47847))))

(declare-fun c!118486 () Bool)

(declare-fun call!58813 () Bool)

(declare-fun lt!547455 () ListLongMap!17859)

(declare-fun call!58811 () ListLongMap!17859)

(declare-fun bm!58806 () Bool)

(assert (=> bm!58806 (= call!58813 (contains!6948 (ite c!118486 lt!547455 call!58811) k!934))))

(declare-fun b!1206753 () Bool)

(declare-fun res!802536 () Bool)

(assert (=> b!1206753 (=> (not res!802536) (not e!685340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78076 (_ BitVec 32)) Bool)

(assert (=> b!1206753 (= res!802536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1206754 () Bool)

(declare-fun e!685339 () Bool)

(declare-fun arrayContainsKey!0 (array!78076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1206754 (= e!685339 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1206755 () Bool)

(declare-fun res!802543 () Bool)

(assert (=> b!1206755 (=> (not res!802543) (not e!685340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1206755 (= res!802543 (validMask!0 mask!1564))))

(declare-fun bm!58807 () Bool)

(assert (=> bm!58807 (= call!58809 (getCurrentListMapNoExtraKeys!5352 lt!547447 lt!547450 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1206756 () Bool)

(declare-fun lt!547454 () Unit!39926)

(assert (=> b!1206756 (= e!685351 lt!547454)))

(declare-fun lt!547443 () Unit!39926)

(assert (=> b!1206756 (= lt!547443 call!58812)))

(declare-fun +!3974 (ListLongMap!17859 tuple2!19878) ListLongMap!17859)

(assert (=> b!1206756 (= lt!547455 (+!3974 lt!547449 (tuple2!19879 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1206756 call!58813))

(declare-fun addStillContains!1038 (ListLongMap!17859 (_ BitVec 64) V!46005 (_ BitVec 64)) Unit!39926)

(assert (=> b!1206756 (= lt!547454 (addStillContains!1038 lt!547455 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!58808 () ListLongMap!17859)

(assert (=> b!1206756 (contains!6948 call!58808 k!934)))

(declare-fun b!1206757 () Bool)

(assert (=> b!1206757 (= e!685339 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!547456) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!802542 () Bool)

(assert (=> start!100852 (=> (not res!802542) (not e!685340))))

(assert (=> start!100852 (= res!802542 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38211 _keys!1208))))))

(assert (=> start!100852 e!685340))

(assert (=> start!100852 tp_is_empty!30659))

(declare-fun array_inv!28600 (array!78076) Bool)

(assert (=> start!100852 (array_inv!28600 _keys!1208)))

(assert (=> start!100852 true))

(assert (=> start!100852 tp!90872))

(declare-fun e!685349 () Bool)

(declare-fun array_inv!28601 (array!78078) Bool)

(assert (=> start!100852 (and (array_inv!28601 _values!996) e!685349)))

(declare-fun b!1206758 () Bool)

(declare-fun res!802545 () Bool)

(assert (=> b!1206758 (=> (not res!802545) (not e!685340))))

(declare-datatypes ((List!26702 0))(
  ( (Nil!26699) (Cons!26698 (h!27907 (_ BitVec 64)) (t!39644 List!26702)) )
))
(declare-fun arrayNoDuplicates!0 (array!78076 (_ BitVec 32) List!26702) Bool)

(assert (=> b!1206758 (= res!802545 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26699))))

(declare-fun bm!58808 () Bool)

(assert (=> bm!58808 (= call!58810 call!58813)))

(declare-fun b!1206759 () Bool)

(declare-fun res!802547 () Bool)

(assert (=> b!1206759 (=> (not res!802547) (not e!685340))))

(assert (=> b!1206759 (= res!802547 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38211 _keys!1208))))))

(declare-fun b!1206760 () Bool)

(declare-fun res!802540 () Bool)

(declare-fun e!685346 () Bool)

(assert (=> b!1206760 (=> (not res!802540) (not e!685346))))

(assert (=> b!1206760 (= res!802540 (arrayNoDuplicates!0 lt!547447 #b00000000000000000000000000000000 Nil!26699))))

(declare-fun bm!58809 () Bool)

(assert (=> bm!58809 (= call!58812 (addStillContains!1038 lt!547449 (ite (or c!118486 c!118483) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118486 c!118483) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1206761 () Bool)

(declare-fun c!118485 () Bool)

(assert (=> b!1206761 (= c!118485 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!547456))))

(assert (=> b!1206761 (= e!685337 e!685341)))

(declare-fun b!1206762 () Bool)

(declare-fun Unit!39928 () Unit!39926)

(assert (=> b!1206762 (= e!685341 Unit!39928)))

(declare-fun b!1206763 () Bool)

(assert (=> b!1206763 (= e!685348 e!685338)))

(declare-fun res!802548 () Bool)

(assert (=> b!1206763 (=> res!802548 e!685338)))

(assert (=> b!1206763 (= res!802548 (not (= (select (arr!37674 _keys!1208) from!1455) k!934)))))

(assert (=> b!1206763 e!685342))

(declare-fun c!118484 () Bool)

(assert (=> b!1206763 (= c!118484 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!547444 () Unit!39926)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1057 (array!78076 array!78078 (_ BitVec 32) (_ BitVec 32) V!46005 V!46005 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39926)

(assert (=> b!1206763 (= lt!547444 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1057 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1206764 () Bool)

(declare-fun res!802538 () Bool)

(assert (=> b!1206764 (=> (not res!802538) (not e!685340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1206764 (= res!802538 (validKeyInArray!0 k!934))))

(declare-fun bm!58810 () Bool)

(assert (=> bm!58810 (= call!58814 (getCurrentListMapNoExtraKeys!5352 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58811 () Bool)

(assert (=> bm!58811 (= call!58811 call!58808)))

(declare-fun b!1206765 () Bool)

(assert (=> b!1206765 (= e!685346 (not e!685343))))

(declare-fun res!802535 () Bool)

(assert (=> b!1206765 (=> res!802535 e!685343)))

(assert (=> b!1206765 (= res!802535 (bvsgt from!1455 i!673))))

(assert (=> b!1206765 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!547446 () Unit!39926)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78076 (_ BitVec 64) (_ BitVec 32)) Unit!39926)

(assert (=> b!1206765 (= lt!547446 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1206766 () Bool)

(assert (=> b!1206766 (= e!685349 (and e!685352 mapRes!47847))))

(declare-fun condMapEmpty!47847 () Bool)

(declare-fun mapDefault!47847 () ValueCell!14620)

