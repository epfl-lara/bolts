; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99392 () Bool)

(assert start!99392)

(declare-fun b_free!24935 () Bool)

(declare-fun b_next!24935 () Bool)

(assert (=> start!99392 (= b_free!24935 (not b_next!24935))))

(declare-fun tp!87519 () Bool)

(declare-fun b_and!40751 () Bool)

(assert (=> start!99392 (= tp!87519 b_and!40751)))

(declare-fun b!1171791 () Bool)

(declare-fun e!666083 () Bool)

(declare-fun e!666076 () Bool)

(assert (=> b!1171791 (= e!666083 e!666076)))

(declare-fun res!778010 () Bool)

(assert (=> b!1171791 (=> res!778010 e!666076)))

(declare-datatypes ((array!75706 0))(
  ( (array!75707 (arr!36499 (Array (_ BitVec 32) (_ BitVec 64))) (size!37036 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75706)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1171791 (= res!778010 (or (bvsge (size!37036 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37036 _keys!1208)) (bvsge from!1455 (size!37036 _keys!1208))))))

(declare-datatypes ((List!25760 0))(
  ( (Nil!25757) (Cons!25756 (h!26965 (_ BitVec 64)) (t!37694 List!25760)) )
))
(declare-fun arrayNoDuplicates!0 (array!75706 (_ BitVec 32) List!25760) Bool)

(assert (=> b!1171791 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25757)))

(declare-datatypes ((Unit!38546 0))(
  ( (Unit!38547) )
))
(declare-fun lt!527888 () Unit!38546)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75706 (_ BitVec 32) (_ BitVec 32)) Unit!38546)

(assert (=> b!1171791 (= lt!527888 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171791 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527892 () Unit!38546)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75706 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38546)

(assert (=> b!1171791 (= lt!527892 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1171792 () Bool)

(declare-fun res!778001 () Bool)

(assert (=> b!1171792 (=> res!778001 e!666076)))

(declare-fun contains!6869 (List!25760 (_ BitVec 64)) Bool)

(assert (=> b!1171792 (= res!778001 (contains!6869 Nil!25757 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171793 () Bool)

(declare-fun res!778009 () Bool)

(declare-fun e!666081 () Bool)

(assert (=> b!1171793 (=> (not res!778009) (not e!666081))))

(assert (=> b!1171793 (= res!778009 (= (select (arr!36499 _keys!1208) i!673) k!934))))

(declare-fun b!1171794 () Bool)

(declare-fun e!666078 () Bool)

(assert (=> b!1171794 (= e!666078 e!666083)))

(declare-fun res!777998 () Bool)

(assert (=> b!1171794 (=> res!777998 e!666083)))

(assert (=> b!1171794 (= res!777998 (not (= (select (arr!36499 _keys!1208) from!1455) k!934)))))

(declare-fun e!666073 () Bool)

(assert (=> b!1171794 e!666073))

(declare-fun res!778006 () Bool)

(assert (=> b!1171794 (=> (not res!778006) (not e!666073))))

(declare-datatypes ((V!44413 0))(
  ( (V!44414 (val!14789 Int)) )
))
(declare-datatypes ((tuple2!18988 0))(
  ( (tuple2!18989 (_1!9504 (_ BitVec 64)) (_2!9504 V!44413)) )
))
(declare-datatypes ((List!25761 0))(
  ( (Nil!25758) (Cons!25757 (h!26966 tuple2!18988) (t!37695 List!25761)) )
))
(declare-datatypes ((ListLongMap!16969 0))(
  ( (ListLongMap!16970 (toList!8500 List!25761)) )
))
(declare-fun lt!527889 () ListLongMap!16969)

(declare-fun lt!527898 () V!44413)

(declare-fun lt!527893 () ListLongMap!16969)

(declare-datatypes ((ValueCell!14023 0))(
  ( (ValueCellFull!14023 (v!17428 V!44413)) (EmptyCell!14023) )
))
(declare-datatypes ((array!75708 0))(
  ( (array!75709 (arr!36500 (Array (_ BitVec 32) ValueCell!14023)) (size!37037 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75708)

(declare-fun +!3738 (ListLongMap!16969 tuple2!18988) ListLongMap!16969)

(declare-fun get!18649 (ValueCell!14023 V!44413) V!44413)

(assert (=> b!1171794 (= res!778006 (= lt!527889 (+!3738 lt!527893 (tuple2!18989 (select (arr!36499 _keys!1208) from!1455) (get!18649 (select (arr!36500 _values!996) from!1455) lt!527898)))))))

(declare-fun b!1171795 () Bool)

(declare-fun e!666075 () Bool)

(assert (=> b!1171795 (= e!666075 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1171796 () Bool)

(declare-fun res!778003 () Bool)

(assert (=> b!1171796 (=> (not res!778003) (not e!666081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1171796 (= res!778003 (validKeyInArray!0 k!934))))

(declare-fun b!1171797 () Bool)

(assert (=> b!1171797 (= e!666076 true)))

(declare-fun lt!527890 () Bool)

(assert (=> b!1171797 (= lt!527890 (contains!6869 Nil!25757 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171798 () Bool)

(declare-fun e!666082 () Bool)

(declare-fun tp_is_empty!29465 () Bool)

(assert (=> b!1171798 (= e!666082 tp_is_empty!29465)))

(declare-fun b!1171799 () Bool)

(declare-fun e!666084 () Bool)

(assert (=> b!1171799 (= e!666081 e!666084)))

(declare-fun res!778005 () Bool)

(assert (=> b!1171799 (=> (not res!778005) (not e!666084))))

(declare-fun lt!527894 () array!75706)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75706 (_ BitVec 32)) Bool)

(assert (=> b!1171799 (= res!778005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527894 mask!1564))))

(assert (=> b!1171799 (= lt!527894 (array!75707 (store (arr!36499 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37036 _keys!1208)))))

(declare-fun b!1171800 () Bool)

(declare-fun res!778011 () Bool)

(assert (=> b!1171800 (=> res!778011 e!666076)))

(declare-fun noDuplicate!1635 (List!25760) Bool)

(assert (=> b!1171800 (= res!778011 (not (noDuplicate!1635 Nil!25757)))))

(declare-fun mapIsEmpty!46025 () Bool)

(declare-fun mapRes!46025 () Bool)

(assert (=> mapIsEmpty!46025 mapRes!46025))

(declare-fun mapNonEmpty!46025 () Bool)

(declare-fun tp!87520 () Bool)

(assert (=> mapNonEmpty!46025 (= mapRes!46025 (and tp!87520 e!666082))))

(declare-fun mapValue!46025 () ValueCell!14023)

(declare-fun mapKey!46025 () (_ BitVec 32))

(declare-fun mapRest!46025 () (Array (_ BitVec 32) ValueCell!14023))

(assert (=> mapNonEmpty!46025 (= (arr!36500 _values!996) (store mapRest!46025 mapKey!46025 mapValue!46025))))

(declare-fun res!778008 () Bool)

(assert (=> start!99392 (=> (not res!778008) (not e!666081))))

(assert (=> start!99392 (= res!778008 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37036 _keys!1208))))))

(assert (=> start!99392 e!666081))

(assert (=> start!99392 tp_is_empty!29465))

(declare-fun array_inv!27774 (array!75706) Bool)

(assert (=> start!99392 (array_inv!27774 _keys!1208)))

(assert (=> start!99392 true))

(assert (=> start!99392 tp!87519))

(declare-fun e!666080 () Bool)

(declare-fun array_inv!27775 (array!75708) Bool)

(assert (=> start!99392 (and (array_inv!27775 _values!996) e!666080)))

(declare-fun b!1171801 () Bool)

(declare-fun e!666085 () Bool)

(assert (=> b!1171801 (= e!666085 e!666078)))

(declare-fun res!778004 () Bool)

(assert (=> b!1171801 (=> res!778004 e!666078)))

(assert (=> b!1171801 (= res!778004 (not (validKeyInArray!0 (select (arr!36499 _keys!1208) from!1455))))))

(declare-fun lt!527886 () ListLongMap!16969)

(assert (=> b!1171801 (= lt!527886 lt!527893)))

(declare-fun lt!527895 () ListLongMap!16969)

(declare-fun -!1516 (ListLongMap!16969 (_ BitVec 64)) ListLongMap!16969)

(assert (=> b!1171801 (= lt!527893 (-!1516 lt!527895 k!934))))

(declare-fun zeroValue!944 () V!44413)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44413)

(declare-fun lt!527896 () array!75708)

(declare-fun getCurrentListMapNoExtraKeys!4932 (array!75706 array!75708 (_ BitVec 32) (_ BitVec 32) V!44413 V!44413 (_ BitVec 32) Int) ListLongMap!16969)

(assert (=> b!1171801 (= lt!527886 (getCurrentListMapNoExtraKeys!4932 lt!527894 lt!527896 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1171801 (= lt!527895 (getCurrentListMapNoExtraKeys!4932 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527891 () Unit!38546)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!740 (array!75706 array!75708 (_ BitVec 32) (_ BitVec 32) V!44413 V!44413 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38546)

(assert (=> b!1171801 (= lt!527891 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!740 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1171802 () Bool)

(declare-fun res!777999 () Bool)

(assert (=> b!1171802 (=> (not res!777999) (not e!666081))))

(assert (=> b!1171802 (= res!777999 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25757))))

(declare-fun b!1171803 () Bool)

(declare-fun e!666079 () Bool)

(assert (=> b!1171803 (= e!666084 (not e!666079))))

(declare-fun res!778007 () Bool)

(assert (=> b!1171803 (=> res!778007 e!666079)))

(assert (=> b!1171803 (= res!778007 (bvsgt from!1455 i!673))))

(assert (=> b!1171803 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!527887 () Unit!38546)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75706 (_ BitVec 64) (_ BitVec 32)) Unit!38546)

(assert (=> b!1171803 (= lt!527887 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1171804 () Bool)

(declare-fun res!778012 () Bool)

(assert (=> b!1171804 (=> (not res!778012) (not e!666081))))

(assert (=> b!1171804 (= res!778012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1171805 () Bool)

(declare-fun res!778002 () Bool)

(assert (=> b!1171805 (=> (not res!778002) (not e!666081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1171805 (= res!778002 (validMask!0 mask!1564))))

(declare-fun b!1171806 () Bool)

(assert (=> b!1171806 (= e!666073 e!666075)))

(declare-fun res!778000 () Bool)

(assert (=> b!1171806 (=> res!778000 e!666075)))

(assert (=> b!1171806 (= res!778000 (not (= (select (arr!36499 _keys!1208) from!1455) k!934)))))

(declare-fun b!1171807 () Bool)

(declare-fun res!777996 () Bool)

(assert (=> b!1171807 (=> (not res!777996) (not e!666081))))

(assert (=> b!1171807 (= res!777996 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37036 _keys!1208))))))

(declare-fun b!1171808 () Bool)

(assert (=> b!1171808 (= e!666079 e!666085)))

(declare-fun res!777995 () Bool)

(assert (=> b!1171808 (=> res!777995 e!666085)))

(assert (=> b!1171808 (= res!777995 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1171808 (= lt!527889 (getCurrentListMapNoExtraKeys!4932 lt!527894 lt!527896 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1171808 (= lt!527896 (array!75709 (store (arr!36500 _values!996) i!673 (ValueCellFull!14023 lt!527898)) (size!37037 _values!996)))))

(declare-fun dynLambda!2920 (Int (_ BitVec 64)) V!44413)

(assert (=> b!1171808 (= lt!527898 (dynLambda!2920 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527897 () ListLongMap!16969)

(assert (=> b!1171808 (= lt!527897 (getCurrentListMapNoExtraKeys!4932 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1171809 () Bool)

(declare-fun res!777994 () Bool)

(assert (=> b!1171809 (=> (not res!777994) (not e!666084))))

(assert (=> b!1171809 (= res!777994 (arrayNoDuplicates!0 lt!527894 #b00000000000000000000000000000000 Nil!25757))))

(declare-fun b!1171810 () Bool)

(declare-fun e!666074 () Bool)

(assert (=> b!1171810 (= e!666080 (and e!666074 mapRes!46025))))

(declare-fun condMapEmpty!46025 () Bool)

(declare-fun mapDefault!46025 () ValueCell!14023)

