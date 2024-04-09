; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101138 () Bool)

(assert start!101138)

(declare-fun b_free!26063 () Bool)

(declare-fun b_next!26063 () Bool)

(assert (=> start!101138 (= b_free!26063 (not b_next!26063))))

(declare-fun tp!91209 () Bool)

(declare-fun b_and!43235 () Bool)

(assert (=> start!101138 (= tp!91209 b_and!43235)))

(declare-fun b!1212672 () Bool)

(declare-fun e!688719 () Bool)

(declare-fun tp_is_empty!30767 () Bool)

(assert (=> b!1212672 (= e!688719 tp_is_empty!30767)))

(declare-fun b!1212673 () Bool)

(declare-datatypes ((Unit!40137 0))(
  ( (Unit!40138) )
))
(declare-fun e!688727 () Unit!40137)

(declare-fun Unit!40139 () Unit!40137)

(assert (=> b!1212673 (= e!688727 Unit!40139)))

(declare-fun b!1212674 () Bool)

(declare-fun e!688725 () Bool)

(declare-fun e!688721 () Bool)

(assert (=> b!1212674 (= e!688725 (not e!688721))))

(declare-fun res!805466 () Bool)

(assert (=> b!1212674 (=> res!805466 e!688721)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1212674 (= res!805466 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!78292 0))(
  ( (array!78293 (arr!37778 (Array (_ BitVec 32) (_ BitVec 64))) (size!38315 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78292)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1212674 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!551127 () Unit!40137)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78292 (_ BitVec 64) (_ BitVec 32)) Unit!40137)

(assert (=> b!1212674 (= lt!551127 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1212675 () Bool)

(declare-fun res!805456 () Bool)

(declare-fun e!688723 () Bool)

(assert (=> b!1212675 (=> (not res!805456) (not e!688723))))

(declare-datatypes ((List!26794 0))(
  ( (Nil!26791) (Cons!26790 (h!27999 (_ BitVec 64)) (t!39844 List!26794)) )
))
(declare-fun arrayNoDuplicates!0 (array!78292 (_ BitVec 32) List!26794) Bool)

(assert (=> b!1212675 (= res!805456 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26791))))

(declare-fun b!1212676 () Bool)

(declare-fun res!805462 () Bool)

(assert (=> b!1212676 (=> (not res!805462) (not e!688725))))

(declare-fun lt!551137 () array!78292)

(assert (=> b!1212676 (= res!805462 (arrayNoDuplicates!0 lt!551137 #b00000000000000000000000000000000 Nil!26791))))

(declare-fun b!1212677 () Bool)

(declare-fun e!688724 () Unit!40137)

(declare-fun e!688720 () Unit!40137)

(assert (=> b!1212677 (= e!688724 e!688720)))

(declare-fun c!119670 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!551128 () Bool)

(assert (=> b!1212677 (= c!119670 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!551128))))

(declare-fun bm!60213 () Bool)

(declare-datatypes ((V!46149 0))(
  ( (V!46150 (val!15440 Int)) )
))
(declare-datatypes ((tuple2!19974 0))(
  ( (tuple2!19975 (_1!9997 (_ BitVec 64)) (_2!9997 V!46149)) )
))
(declare-datatypes ((List!26795 0))(
  ( (Nil!26792) (Cons!26791 (h!28000 tuple2!19974) (t!39845 List!26795)) )
))
(declare-datatypes ((ListLongMap!17955 0))(
  ( (ListLongMap!17956 (toList!8993 List!26795)) )
))
(declare-fun call!60218 () ListLongMap!17955)

(declare-fun call!60220 () ListLongMap!17955)

(assert (=> bm!60213 (= call!60218 call!60220)))

(declare-fun b!1212678 () Bool)

(declare-fun e!688726 () Bool)

(declare-fun e!688714 () Bool)

(assert (=> b!1212678 (= e!688726 e!688714)))

(declare-fun res!805464 () Bool)

(assert (=> b!1212678 (=> res!805464 e!688714)))

(assert (=> b!1212678 (= res!805464 (not (= (select (arr!37778 _keys!1208) from!1455) k!934)))))

(declare-fun e!688717 () Bool)

(assert (=> b!1212678 e!688717))

(declare-fun c!119672 () Bool)

(assert (=> b!1212678 (= c!119672 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!46149)

(declare-fun lt!551140 () Unit!40137)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14674 0))(
  ( (ValueCellFull!14674 (v!18093 V!46149)) (EmptyCell!14674) )
))
(declare-datatypes ((array!78294 0))(
  ( (array!78295 (arr!37779 (Array (_ BitVec 32) ValueCell!14674)) (size!38316 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78294)

(declare-fun minValue!944 () V!46149)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1095 (array!78292 array!78294 (_ BitVec 32) (_ BitVec 32) V!46149 V!46149 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40137)

(assert (=> b!1212678 (= lt!551140 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1095 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!60221 () ListLongMap!17955)

(declare-fun b!1212679 () Bool)

(declare-fun call!60223 () ListLongMap!17955)

(declare-fun -!1889 (ListLongMap!17955 (_ BitVec 64)) ListLongMap!17955)

(assert (=> b!1212679 (= e!688717 (= call!60223 (-!1889 call!60221 k!934)))))

(declare-fun res!805453 () Bool)

(assert (=> start!101138 (=> (not res!805453) (not e!688723))))

(assert (=> start!101138 (= res!805453 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38315 _keys!1208))))))

(assert (=> start!101138 e!688723))

(assert (=> start!101138 tp_is_empty!30767))

(declare-fun array_inv!28674 (array!78292) Bool)

(assert (=> start!101138 (array_inv!28674 _keys!1208)))

(assert (=> start!101138 true))

(assert (=> start!101138 tp!91209))

(declare-fun e!688729 () Bool)

(declare-fun array_inv!28675 (array!78294) Bool)

(assert (=> start!101138 (and (array_inv!28675 _values!996) e!688729)))

(declare-fun mapIsEmpty!48022 () Bool)

(declare-fun mapRes!48022 () Bool)

(assert (=> mapIsEmpty!48022 mapRes!48022))

(declare-fun b!1212680 () Bool)

(assert (=> b!1212680 (= e!688717 (= call!60223 call!60221))))

(declare-fun b!1212681 () Bool)

(declare-fun lt!551138 () Unit!40137)

(assert (=> b!1212681 (= e!688724 lt!551138)))

(declare-fun call!60217 () Unit!40137)

(assert (=> b!1212681 (= lt!551138 call!60217)))

(declare-fun call!60222 () Bool)

(assert (=> b!1212681 call!60222))

(declare-fun e!688722 () Bool)

(declare-fun b!1212682 () Bool)

(assert (=> b!1212682 (= e!688722 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!551128) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1212683 () Bool)

(declare-fun e!688716 () Bool)

(assert (=> b!1212683 (= e!688716 tp_is_empty!30767)))

(declare-fun b!1212684 () Bool)

(declare-fun Unit!40140 () Unit!40137)

(assert (=> b!1212684 (= e!688720 Unit!40140)))

(declare-fun bm!60214 () Bool)

(declare-fun lt!551125 () array!78294)

(declare-fun getCurrentListMapNoExtraKeys!5398 (array!78292 array!78294 (_ BitVec 32) (_ BitVec 32) V!46149 V!46149 (_ BitVec 32) Int) ListLongMap!17955)

(assert (=> bm!60214 (= call!60223 (getCurrentListMapNoExtraKeys!5398 lt!551137 lt!551125 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212685 () Bool)

(declare-fun res!805463 () Bool)

(assert (=> b!1212685 (=> (not res!805463) (not e!688723))))

(assert (=> b!1212685 (= res!805463 (= (select (arr!37778 _keys!1208) i!673) k!934))))

(declare-fun b!1212686 () Bool)

(assert (=> b!1212686 (= e!688721 e!688726)))

(declare-fun res!805467 () Bool)

(assert (=> b!1212686 (=> res!805467 e!688726)))

(assert (=> b!1212686 (= res!805467 (not (= from!1455 i!673)))))

(declare-fun lt!551124 () ListLongMap!17955)

(assert (=> b!1212686 (= lt!551124 (getCurrentListMapNoExtraKeys!5398 lt!551137 lt!551125 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!551131 () V!46149)

(assert (=> b!1212686 (= lt!551125 (array!78295 (store (arr!37779 _values!996) i!673 (ValueCellFull!14674 lt!551131)) (size!38316 _values!996)))))

(declare-fun dynLambda!3310 (Int (_ BitVec 64)) V!46149)

(assert (=> b!1212686 (= lt!551131 (dynLambda!3310 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!551133 () ListLongMap!17955)

(assert (=> b!1212686 (= lt!551133 (getCurrentListMapNoExtraKeys!5398 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1212687 () Bool)

(declare-fun c!119675 () Bool)

(assert (=> b!1212687 (= c!119675 (and (not lt!551128) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!688728 () Unit!40137)

(assert (=> b!1212687 (= e!688728 e!688724)))

(declare-fun lt!551119 () ListLongMap!17955)

(declare-fun e!688715 () Bool)

(declare-fun b!1212688 () Bool)

(assert (=> b!1212688 (= e!688715 (= lt!551119 (getCurrentListMapNoExtraKeys!5398 lt!551137 lt!551125 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1212689 () Bool)

(assert (=> b!1212689 (= e!688723 e!688725)))

(declare-fun res!805454 () Bool)

(assert (=> b!1212689 (=> (not res!805454) (not e!688725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78292 (_ BitVec 32)) Bool)

(assert (=> b!1212689 (= res!805454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!551137 mask!1564))))

(assert (=> b!1212689 (= lt!551137 (array!78293 (store (arr!37778 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38315 _keys!1208)))))

(declare-fun mapNonEmpty!48022 () Bool)

(declare-fun tp!91208 () Bool)

(assert (=> mapNonEmpty!48022 (= mapRes!48022 (and tp!91208 e!688719))))

(declare-fun mapRest!48022 () (Array (_ BitVec 32) ValueCell!14674))

(declare-fun mapValue!48022 () ValueCell!14674)

(declare-fun mapKey!48022 () (_ BitVec 32))

(assert (=> mapNonEmpty!48022 (= (arr!37779 _values!996) (store mapRest!48022 mapKey!48022 mapValue!48022))))

(declare-fun b!1212690 () Bool)

(declare-fun res!805455 () Bool)

(assert (=> b!1212690 (=> (not res!805455) (not e!688723))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1212690 (= res!805455 (validKeyInArray!0 k!934))))

(declare-fun b!1212691 () Bool)

(assert (=> b!1212691 (= e!688729 (and e!688716 mapRes!48022))))

(declare-fun condMapEmpty!48022 () Bool)

(declare-fun mapDefault!48022 () ValueCell!14674)

