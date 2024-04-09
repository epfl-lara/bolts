; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98512 () Bool)

(assert start!98512)

(declare-fun b_free!24081 () Bool)

(declare-fun b_next!24081 () Bool)

(assert (=> start!98512 (= b_free!24081 (not b_next!24081))))

(declare-fun tp!84954 () Bool)

(declare-fun b_and!39025 () Bool)

(assert (=> start!98512 (= tp!84954 b_and!39025)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun e!648039 () Bool)

(declare-fun b!1138849 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!506724 () Bool)

(assert (=> b!1138849 (= e!648039 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!506724) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1138850 () Bool)

(declare-fun e!648040 () Bool)

(declare-fun e!648027 () Bool)

(assert (=> b!1138850 (= e!648040 e!648027)))

(declare-fun res!759715 () Bool)

(assert (=> b!1138850 (=> res!759715 e!648027)))

(declare-datatypes ((array!74040 0))(
  ( (array!74041 (arr!35667 (Array (_ BitVec 32) (_ BitVec 64))) (size!36204 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74040)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1138850 (= res!759715 (not (= (select (arr!35667 _keys!1208) from!1455) k0!934)))))

(declare-fun e!648028 () Bool)

(assert (=> b!1138850 e!648028))

(declare-fun c!111538 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1138850 (= c!111538 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43275 0))(
  ( (V!43276 (val!14362 Int)) )
))
(declare-fun zeroValue!944 () V!43275)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13596 0))(
  ( (ValueCellFull!13596 (v!17000 V!43275)) (EmptyCell!13596) )
))
(declare-datatypes ((array!74042 0))(
  ( (array!74043 (arr!35668 (Array (_ BitVec 32) ValueCell!13596)) (size!36205 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74042)

(declare-fun minValue!944 () V!43275)

(declare-datatypes ((Unit!37265 0))(
  ( (Unit!37266) )
))
(declare-fun lt!506720 () Unit!37265)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!486 (array!74040 array!74042 (_ BitVec 32) (_ BitVec 32) V!43275 V!43275 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37265)

(assert (=> b!1138850 (= lt!506720 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!486 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50510 () Bool)

(declare-datatypes ((tuple2!18238 0))(
  ( (tuple2!18239 (_1!9129 (_ BitVec 64)) (_2!9129 V!43275)) )
))
(declare-datatypes ((List!25042 0))(
  ( (Nil!25039) (Cons!25038 (h!26247 tuple2!18238) (t!36122 List!25042)) )
))
(declare-datatypes ((ListLongMap!16219 0))(
  ( (ListLongMap!16220 (toList!8125 List!25042)) )
))
(declare-fun call!50513 () ListLongMap!16219)

(declare-fun call!50518 () ListLongMap!16219)

(assert (=> bm!50510 (= call!50513 call!50518)))

(declare-fun b!1138851 () Bool)

(declare-fun e!648032 () Bool)

(declare-fun tp_is_empty!28611 () Bool)

(assert (=> b!1138851 (= e!648032 tp_is_empty!28611)))

(declare-fun b!1138852 () Bool)

(assert (=> b!1138852 (= e!648027 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!36204 _keys!1208))))))

(declare-fun lt!506733 () Unit!37265)

(declare-fun e!648033 () Unit!37265)

(assert (=> b!1138852 (= lt!506733 e!648033)))

(declare-fun c!111537 () Bool)

(declare-fun lt!506725 () ListLongMap!16219)

(declare-fun contains!6635 (ListLongMap!16219 (_ BitVec 64)) Bool)

(assert (=> b!1138852 (= c!111537 (contains!6635 lt!506725 k0!934))))

(declare-fun getCurrentListMapNoExtraKeys!4572 (array!74040 array!74042 (_ BitVec 32) (_ BitVec 32) V!43275 V!43275 (_ BitVec 32) Int) ListLongMap!16219)

(assert (=> b!1138852 (= lt!506725 (getCurrentListMapNoExtraKeys!4572 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!759720 () Bool)

(declare-fun e!648038 () Bool)

(assert (=> start!98512 (=> (not res!759720) (not e!648038))))

(assert (=> start!98512 (= res!759720 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36204 _keys!1208))))))

(assert (=> start!98512 e!648038))

(assert (=> start!98512 tp_is_empty!28611))

(declare-fun array_inv!27218 (array!74040) Bool)

(assert (=> start!98512 (array_inv!27218 _keys!1208)))

(assert (=> start!98512 true))

(assert (=> start!98512 tp!84954))

(declare-fun e!648037 () Bool)

(declare-fun array_inv!27219 (array!74042) Bool)

(assert (=> start!98512 (and (array_inv!27219 _values!996) e!648037)))

(declare-fun b!1138853 () Bool)

(declare-fun res!759710 () Bool)

(assert (=> b!1138853 (=> (not res!759710) (not e!648038))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1138853 (= res!759710 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!44741 () Bool)

(declare-fun mapRes!44741 () Bool)

(declare-fun tp!84955 () Bool)

(assert (=> mapNonEmpty!44741 (= mapRes!44741 (and tp!84955 e!648032))))

(declare-fun mapKey!44741 () (_ BitVec 32))

(declare-fun mapValue!44741 () ValueCell!13596)

(declare-fun mapRest!44741 () (Array (_ BitVec 32) ValueCell!13596))

(assert (=> mapNonEmpty!44741 (= (arr!35668 _values!996) (store mapRest!44741 mapKey!44741 mapValue!44741))))

(declare-fun b!1138854 () Bool)

(declare-fun res!759709 () Bool)

(assert (=> b!1138854 (=> (not res!759709) (not e!648038))))

(assert (=> b!1138854 (= res!759709 (= (select (arr!35667 _keys!1208) i!673) k0!934))))

(declare-fun c!111536 () Bool)

(declare-fun call!50517 () Unit!37265)

(declare-fun lt!506721 () ListLongMap!16219)

(declare-fun c!111535 () Bool)

(declare-fun bm!50511 () Bool)

(declare-fun addStillContains!776 (ListLongMap!16219 (_ BitVec 64) V!43275 (_ BitVec 64)) Unit!37265)

(assert (=> bm!50511 (= call!50517 (addStillContains!776 (ite c!111535 lt!506721 lt!506725) (ite c!111535 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111536 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111535 minValue!944 (ite c!111536 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1138855 () Bool)

(declare-fun Unit!37267 () Unit!37265)

(assert (=> b!1138855 (= e!648033 Unit!37267)))

(assert (=> b!1138855 (= lt!506724 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1138855 (= c!111535 (and (not lt!506724) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!506730 () Unit!37265)

(declare-fun e!648029 () Unit!37265)

(assert (=> b!1138855 (= lt!506730 e!648029)))

(declare-fun lt!506726 () Unit!37265)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!378 (array!74040 array!74042 (_ BitVec 32) (_ BitVec 32) V!43275 V!43275 (_ BitVec 64) (_ BitVec 32) Int) Unit!37265)

(assert (=> b!1138855 (= lt!506726 (lemmaListMapContainsThenArrayContainsFrom!378 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111539 () Bool)

(assert (=> b!1138855 (= c!111539 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759719 () Bool)

(assert (=> b!1138855 (= res!759719 e!648039)))

(declare-fun e!648030 () Bool)

(assert (=> b!1138855 (=> (not res!759719) (not e!648030))))

(assert (=> b!1138855 e!648030))

(declare-fun lt!506729 () Unit!37265)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74040 (_ BitVec 32) (_ BitVec 32)) Unit!37265)

(assert (=> b!1138855 (= lt!506729 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25043 0))(
  ( (Nil!25040) (Cons!25039 (h!26248 (_ BitVec 64)) (t!36123 List!25043)) )
))
(declare-fun arrayNoDuplicates!0 (array!74040 (_ BitVec 32) List!25043) Bool)

(assert (=> b!1138855 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25040)))

(declare-fun lt!506719 () Unit!37265)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74040 (_ BitVec 64) (_ BitVec 32) List!25043) Unit!37265)

(assert (=> b!1138855 (= lt!506719 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25040))))

(assert (=> b!1138855 false))

(declare-fun b!1138856 () Bool)

(declare-fun e!648034 () Unit!37265)

(declare-fun lt!506722 () Unit!37265)

(assert (=> b!1138856 (= e!648034 lt!506722)))

(declare-fun call!50514 () Unit!37265)

(assert (=> b!1138856 (= lt!506722 call!50514)))

(declare-fun call!50520 () Bool)

(assert (=> b!1138856 call!50520))

(declare-fun b!1138857 () Bool)

(declare-fun call!50515 () ListLongMap!16219)

(declare-fun call!50516 () ListLongMap!16219)

(assert (=> b!1138857 (= e!648028 (= call!50515 call!50516))))

(declare-fun b!1138858 () Bool)

(assert (=> b!1138858 call!50520))

(declare-fun lt!506723 () Unit!37265)

(assert (=> b!1138858 (= lt!506723 call!50514)))

(declare-fun e!648041 () Unit!37265)

(assert (=> b!1138858 (= e!648041 lt!506723)))

(declare-fun call!50519 () Bool)

(declare-fun bm!50512 () Bool)

(assert (=> bm!50512 (= call!50519 (contains!6635 (ite c!111535 lt!506721 call!50513) k0!934))))

(declare-fun b!1138859 () Bool)

(assert (=> b!1138859 (= e!648034 e!648041)))

(declare-fun c!111540 () Bool)

(assert (=> b!1138859 (= c!111540 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!506724))))

(declare-fun bm!50513 () Bool)

(assert (=> bm!50513 (= call!50520 call!50519)))

(declare-fun b!1138860 () Bool)

(declare-fun res!759711 () Bool)

(assert (=> b!1138860 (=> (not res!759711) (not e!648038))))

(assert (=> b!1138860 (= res!759711 (and (= (size!36205 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36204 _keys!1208) (size!36205 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1138861 () Bool)

(declare-fun e!648036 () Bool)

(assert (=> b!1138861 (= e!648037 (and e!648036 mapRes!44741))))

(declare-fun condMapEmpty!44741 () Bool)

(declare-fun mapDefault!44741 () ValueCell!13596)

(assert (=> b!1138861 (= condMapEmpty!44741 (= (arr!35668 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13596)) mapDefault!44741)))))

(declare-fun b!1138862 () Bool)

(assert (=> b!1138862 (= e!648036 tp_is_empty!28611)))

(declare-fun b!1138863 () Bool)

(declare-fun -!1228 (ListLongMap!16219 (_ BitVec 64)) ListLongMap!16219)

(assert (=> b!1138863 (= e!648028 (= call!50515 (-!1228 call!50516 k0!934)))))

(declare-fun b!1138864 () Bool)

(declare-fun e!648031 () Bool)

(assert (=> b!1138864 (= e!648031 e!648040)))

(declare-fun res!759716 () Bool)

(assert (=> b!1138864 (=> res!759716 e!648040)))

(assert (=> b!1138864 (= res!759716 (not (= from!1455 i!673)))))

(declare-fun lt!506728 () ListLongMap!16219)

(declare-fun lt!506736 () array!74040)

(declare-fun lt!506732 () array!74042)

(assert (=> b!1138864 (= lt!506728 (getCurrentListMapNoExtraKeys!4572 lt!506736 lt!506732 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2630 (Int (_ BitVec 64)) V!43275)

(assert (=> b!1138864 (= lt!506732 (array!74043 (store (arr!35668 _values!996) i!673 (ValueCellFull!13596 (dynLambda!2630 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36205 _values!996)))))

(declare-fun lt!506734 () ListLongMap!16219)

(assert (=> b!1138864 (= lt!506734 (getCurrentListMapNoExtraKeys!4572 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1138865 () Bool)

(declare-fun +!3475 (ListLongMap!16219 tuple2!18238) ListLongMap!16219)

(assert (=> b!1138865 (contains!6635 (+!3475 lt!506721 (tuple2!18239 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!506727 () Unit!37265)

(assert (=> b!1138865 (= lt!506727 call!50517)))

(assert (=> b!1138865 call!50519))

(assert (=> b!1138865 (= lt!506721 call!50518)))

(declare-fun lt!506735 () Unit!37265)

(assert (=> b!1138865 (= lt!506735 (addStillContains!776 lt!506725 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1138865 (= e!648029 lt!506727)))

(declare-fun b!1138866 () Bool)

(declare-fun res!759712 () Bool)

(assert (=> b!1138866 (=> (not res!759712) (not e!648038))))

(assert (=> b!1138866 (= res!759712 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36204 _keys!1208))))))

(declare-fun bm!50514 () Bool)

(assert (=> bm!50514 (= call!50514 call!50517)))

(declare-fun b!1138867 () Bool)

(declare-fun res!759717 () Bool)

(assert (=> b!1138867 (=> (not res!759717) (not e!648038))))

(assert (=> b!1138867 (= res!759717 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25040))))

(declare-fun b!1138868 () Bool)

(declare-fun res!759714 () Bool)

(declare-fun e!648042 () Bool)

(assert (=> b!1138868 (=> (not res!759714) (not e!648042))))

(assert (=> b!1138868 (= res!759714 (arrayNoDuplicates!0 lt!506736 #b00000000000000000000000000000000 Nil!25040))))

(declare-fun b!1138869 () Bool)

(declare-fun res!759718 () Bool)

(assert (=> b!1138869 (=> (not res!759718) (not e!648038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74040 (_ BitVec 32)) Bool)

(assert (=> b!1138869 (= res!759718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!50515 () Bool)

(assert (=> bm!50515 (= call!50515 (getCurrentListMapNoExtraKeys!4572 lt!506736 lt!506732 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138870 () Bool)

(assert (=> b!1138870 (= c!111536 (and (not lt!506724) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1138870 (= e!648029 e!648034)))

(declare-fun b!1138871 () Bool)

(declare-fun arrayContainsKey!0 (array!74040 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1138871 (= e!648030 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1138872 () Bool)

(assert (=> b!1138872 (= e!648042 (not e!648031))))

(declare-fun res!759721 () Bool)

(assert (=> b!1138872 (=> res!759721 e!648031)))

(assert (=> b!1138872 (= res!759721 (bvsgt from!1455 i!673))))

(assert (=> b!1138872 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!506731 () Unit!37265)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74040 (_ BitVec 64) (_ BitVec 32)) Unit!37265)

(assert (=> b!1138872 (= lt!506731 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1138873 () Bool)

(assert (=> b!1138873 (= e!648038 e!648042)))

(declare-fun res!759713 () Bool)

(assert (=> b!1138873 (=> (not res!759713) (not e!648042))))

(assert (=> b!1138873 (= res!759713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!506736 mask!1564))))

(assert (=> b!1138873 (= lt!506736 (array!74041 (store (arr!35667 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36204 _keys!1208)))))

(declare-fun mapIsEmpty!44741 () Bool)

(assert (=> mapIsEmpty!44741 mapRes!44741))

(declare-fun bm!50516 () Bool)

(assert (=> bm!50516 (= call!50518 (+!3475 lt!506725 (ite (or c!111535 c!111536) (tuple2!18239 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18239 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1138874 () Bool)

(declare-fun res!759722 () Bool)

(assert (=> b!1138874 (=> (not res!759722) (not e!648038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1138874 (= res!759722 (validMask!0 mask!1564))))

(declare-fun b!1138875 () Bool)

(declare-fun Unit!37268 () Unit!37265)

(assert (=> b!1138875 (= e!648041 Unit!37268)))

(declare-fun bm!50517 () Bool)

(assert (=> bm!50517 (= call!50516 (getCurrentListMapNoExtraKeys!4572 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138876 () Bool)

(declare-fun Unit!37269 () Unit!37265)

(assert (=> b!1138876 (= e!648033 Unit!37269)))

(declare-fun b!1138877 () Bool)

(assert (=> b!1138877 (= e!648039 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!98512 res!759720) b!1138874))

(assert (= (and b!1138874 res!759722) b!1138860))

(assert (= (and b!1138860 res!759711) b!1138869))

(assert (= (and b!1138869 res!759718) b!1138867))

(assert (= (and b!1138867 res!759717) b!1138866))

(assert (= (and b!1138866 res!759712) b!1138853))

(assert (= (and b!1138853 res!759710) b!1138854))

(assert (= (and b!1138854 res!759709) b!1138873))

(assert (= (and b!1138873 res!759713) b!1138868))

(assert (= (and b!1138868 res!759714) b!1138872))

(assert (= (and b!1138872 (not res!759721)) b!1138864))

(assert (= (and b!1138864 (not res!759716)) b!1138850))

(assert (= (and b!1138850 c!111538) b!1138863))

(assert (= (and b!1138850 (not c!111538)) b!1138857))

(assert (= (or b!1138863 b!1138857) bm!50515))

(assert (= (or b!1138863 b!1138857) bm!50517))

(assert (= (and b!1138850 (not res!759715)) b!1138852))

(assert (= (and b!1138852 c!111537) b!1138855))

(assert (= (and b!1138852 (not c!111537)) b!1138876))

(assert (= (and b!1138855 c!111535) b!1138865))

(assert (= (and b!1138855 (not c!111535)) b!1138870))

(assert (= (and b!1138870 c!111536) b!1138856))

(assert (= (and b!1138870 (not c!111536)) b!1138859))

(assert (= (and b!1138859 c!111540) b!1138858))

(assert (= (and b!1138859 (not c!111540)) b!1138875))

(assert (= (or b!1138856 b!1138858) bm!50514))

(assert (= (or b!1138856 b!1138858) bm!50510))

(assert (= (or b!1138856 b!1138858) bm!50513))

(assert (= (or b!1138865 bm!50513) bm!50512))

(assert (= (or b!1138865 bm!50514) bm!50511))

(assert (= (or b!1138865 bm!50510) bm!50516))

(assert (= (and b!1138855 c!111539) b!1138877))

(assert (= (and b!1138855 (not c!111539)) b!1138849))

(assert (= (and b!1138855 res!759719) b!1138871))

(assert (= (and b!1138861 condMapEmpty!44741) mapIsEmpty!44741))

(assert (= (and b!1138861 (not condMapEmpty!44741)) mapNonEmpty!44741))

(get-info :version)

(assert (= (and mapNonEmpty!44741 ((_ is ValueCellFull!13596) mapValue!44741)) b!1138851))

(assert (= (and b!1138861 ((_ is ValueCellFull!13596) mapDefault!44741)) b!1138862))

(assert (= start!98512 b!1138861))

(declare-fun b_lambda!19205 () Bool)

(assert (=> (not b_lambda!19205) (not b!1138864)))

(declare-fun t!36121 () Bool)

(declare-fun tb!8901 () Bool)

(assert (=> (and start!98512 (= defaultEntry!1004 defaultEntry!1004) t!36121) tb!8901))

(declare-fun result!18359 () Bool)

(assert (=> tb!8901 (= result!18359 tp_is_empty!28611)))

(assert (=> b!1138864 t!36121))

(declare-fun b_and!39027 () Bool)

(assert (= b_and!39025 (and (=> t!36121 result!18359) b_and!39027)))

(declare-fun m!1050647 () Bool)

(assert (=> b!1138871 m!1050647))

(declare-fun m!1050649 () Bool)

(assert (=> bm!50515 m!1050649))

(declare-fun m!1050651 () Bool)

(assert (=> b!1138865 m!1050651))

(assert (=> b!1138865 m!1050651))

(declare-fun m!1050653 () Bool)

(assert (=> b!1138865 m!1050653))

(declare-fun m!1050655 () Bool)

(assert (=> b!1138865 m!1050655))

(declare-fun m!1050657 () Bool)

(assert (=> b!1138864 m!1050657))

(declare-fun m!1050659 () Bool)

(assert (=> b!1138864 m!1050659))

(declare-fun m!1050661 () Bool)

(assert (=> b!1138864 m!1050661))

(declare-fun m!1050663 () Bool)

(assert (=> b!1138864 m!1050663))

(declare-fun m!1050665 () Bool)

(assert (=> bm!50511 m!1050665))

(declare-fun m!1050667 () Bool)

(assert (=> b!1138852 m!1050667))

(declare-fun m!1050669 () Bool)

(assert (=> b!1138852 m!1050669))

(declare-fun m!1050671 () Bool)

(assert (=> mapNonEmpty!44741 m!1050671))

(assert (=> b!1138877 m!1050647))

(declare-fun m!1050673 () Bool)

(assert (=> b!1138868 m!1050673))

(assert (=> bm!50517 m!1050669))

(declare-fun m!1050675 () Bool)

(assert (=> b!1138873 m!1050675))

(declare-fun m!1050677 () Bool)

(assert (=> b!1138873 m!1050677))

(declare-fun m!1050679 () Bool)

(assert (=> b!1138863 m!1050679))

(declare-fun m!1050681 () Bool)

(assert (=> b!1138867 m!1050681))

(declare-fun m!1050683 () Bool)

(assert (=> start!98512 m!1050683))

(declare-fun m!1050685 () Bool)

(assert (=> start!98512 m!1050685))

(declare-fun m!1050687 () Bool)

(assert (=> bm!50516 m!1050687))

(declare-fun m!1050689 () Bool)

(assert (=> b!1138855 m!1050689))

(declare-fun m!1050691 () Bool)

(assert (=> b!1138855 m!1050691))

(declare-fun m!1050693 () Bool)

(assert (=> b!1138855 m!1050693))

(declare-fun m!1050695 () Bool)

(assert (=> b!1138855 m!1050695))

(declare-fun m!1050697 () Bool)

(assert (=> b!1138854 m!1050697))

(declare-fun m!1050699 () Bool)

(assert (=> b!1138850 m!1050699))

(declare-fun m!1050701 () Bool)

(assert (=> b!1138850 m!1050701))

(declare-fun m!1050703 () Bool)

(assert (=> b!1138853 m!1050703))

(declare-fun m!1050705 () Bool)

(assert (=> bm!50512 m!1050705))

(declare-fun m!1050707 () Bool)

(assert (=> b!1138869 m!1050707))

(declare-fun m!1050709 () Bool)

(assert (=> b!1138874 m!1050709))

(declare-fun m!1050711 () Bool)

(assert (=> b!1138872 m!1050711))

(declare-fun m!1050713 () Bool)

(assert (=> b!1138872 m!1050713))

(check-sat (not b!1138877) (not bm!50511) (not b_lambda!19205) (not bm!50512) (not b!1138850) (not bm!50517) (not bm!50516) b_and!39027 (not b!1138872) (not bm!50515) (not b!1138863) (not b!1138865) (not b!1138852) (not b!1138871) (not mapNonEmpty!44741) (not b!1138868) (not b!1138873) (not b!1138874) (not start!98512) (not b_next!24081) (not b!1138864) tp_is_empty!28611 (not b!1138855) (not b!1138853) (not b!1138869) (not b!1138867))
(check-sat b_and!39027 (not b_next!24081))
