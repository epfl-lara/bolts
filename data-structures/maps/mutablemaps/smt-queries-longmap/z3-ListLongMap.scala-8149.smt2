; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99798 () Bool)

(assert start!99798)

(declare-fun b_free!25341 () Bool)

(declare-fun b_next!25341 () Bool)

(assert (=> start!99798 (= b_free!25341 (not b_next!25341))))

(declare-fun tp!88738 () Bool)

(declare-fun b_and!41563 () Bool)

(assert (=> start!99798 (= tp!88738 b_and!41563)))

(declare-fun b!1184793 () Bool)

(declare-fun e!673672 () Bool)

(declare-fun e!673676 () Bool)

(assert (=> b!1184793 (= e!673672 e!673676)))

(declare-fun res!787630 () Bool)

(assert (=> b!1184793 (=> res!787630 e!673676)))

(declare-datatypes ((array!76510 0))(
  ( (array!76511 (arr!36901 (Array (_ BitVec 32) (_ BitVec 64))) (size!37438 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76510)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1184793 (= res!787630 (not (validKeyInArray!0 (select (arr!36901 _keys!1208) from!1455))))))

(declare-datatypes ((V!44955 0))(
  ( (V!44956 (val!14992 Int)) )
))
(declare-datatypes ((tuple2!19348 0))(
  ( (tuple2!19349 (_1!9684 (_ BitVec 64)) (_2!9684 V!44955)) )
))
(declare-datatypes ((List!26110 0))(
  ( (Nil!26107) (Cons!26106 (h!27315 tuple2!19348) (t!38450 List!26110)) )
))
(declare-datatypes ((ListLongMap!17329 0))(
  ( (ListLongMap!17330 (toList!8680 List!26110)) )
))
(declare-fun lt!537418 () ListLongMap!17329)

(declare-fun lt!537420 () ListLongMap!17329)

(assert (=> b!1184793 (= lt!537418 lt!537420)))

(declare-fun lt!537421 () ListLongMap!17329)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1667 (ListLongMap!17329 (_ BitVec 64)) ListLongMap!17329)

(assert (=> b!1184793 (= lt!537420 (-!1667 lt!537421 k0!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!537435 () array!76510)

(declare-datatypes ((ValueCell!14226 0))(
  ( (ValueCellFull!14226 (v!17631 V!44955)) (EmptyCell!14226) )
))
(declare-datatypes ((array!76512 0))(
  ( (array!76513 (arr!36902 (Array (_ BitVec 32) ValueCell!14226)) (size!37439 (_ BitVec 32))) )
))
(declare-fun lt!537428 () array!76512)

(declare-fun zeroValue!944 () V!44955)

(declare-fun minValue!944 () V!44955)

(declare-fun getCurrentListMapNoExtraKeys!5099 (array!76510 array!76512 (_ BitVec 32) (_ BitVec 32) V!44955 V!44955 (_ BitVec 32) Int) ListLongMap!17329)

(assert (=> b!1184793 (= lt!537418 (getCurrentListMapNoExtraKeys!5099 lt!537435 lt!537428 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76512)

(assert (=> b!1184793 (= lt!537421 (getCurrentListMapNoExtraKeys!5099 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39161 0))(
  ( (Unit!39162) )
))
(declare-fun lt!537427 () Unit!39161)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!882 (array!76510 array!76512 (_ BitVec 32) (_ BitVec 32) V!44955 V!44955 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39161)

(assert (=> b!1184793 (= lt!537427 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!882 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1184794 () Bool)

(declare-fun res!787622 () Bool)

(declare-fun e!673675 () Bool)

(assert (=> b!1184794 (=> (not res!787622) (not e!673675))))

(declare-datatypes ((List!26111 0))(
  ( (Nil!26108) (Cons!26107 (h!27316 (_ BitVec 64)) (t!38451 List!26111)) )
))
(declare-fun arrayNoDuplicates!0 (array!76510 (_ BitVec 32) List!26111) Bool)

(assert (=> b!1184794 (= res!787622 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26108))))

(declare-fun mapNonEmpty!46634 () Bool)

(declare-fun mapRes!46634 () Bool)

(declare-fun tp!88737 () Bool)

(declare-fun e!673680 () Bool)

(assert (=> mapNonEmpty!46634 (= mapRes!46634 (and tp!88737 e!673680))))

(declare-fun mapRest!46634 () (Array (_ BitVec 32) ValueCell!14226))

(declare-fun mapKey!46634 () (_ BitVec 32))

(declare-fun mapValue!46634 () ValueCell!14226)

(assert (=> mapNonEmpty!46634 (= (arr!36902 _values!996) (store mapRest!46634 mapKey!46634 mapValue!46634))))

(declare-fun mapIsEmpty!46634 () Bool)

(assert (=> mapIsEmpty!46634 mapRes!46634))

(declare-fun b!1184795 () Bool)

(declare-fun e!673671 () Unit!39161)

(declare-fun Unit!39163 () Unit!39161)

(assert (=> b!1184795 (= e!673671 Unit!39163)))

(declare-fun b!1184796 () Bool)

(declare-fun res!787632 () Bool)

(assert (=> b!1184796 (=> (not res!787632) (not e!673675))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1184796 (= res!787632 (validMask!0 mask!1564))))

(declare-fun b!1184797 () Bool)

(declare-fun res!787633 () Bool)

(assert (=> b!1184797 (=> (not res!787633) (not e!673675))))

(assert (=> b!1184797 (= res!787633 (and (= (size!37439 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37438 _keys!1208) (size!37439 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1184798 () Bool)

(declare-fun e!673673 () Bool)

(declare-fun e!673681 () Bool)

(assert (=> b!1184798 (= e!673673 e!673681)))

(declare-fun res!787625 () Bool)

(assert (=> b!1184798 (=> res!787625 e!673681)))

(assert (=> b!1184798 (= res!787625 (not (= (select (arr!36901 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1184799 () Bool)

(declare-fun e!673678 () Bool)

(declare-fun tp_is_empty!29871 () Bool)

(assert (=> b!1184799 (= e!673678 tp_is_empty!29871)))

(declare-fun b!1184800 () Bool)

(declare-fun res!787631 () Bool)

(assert (=> b!1184800 (=> (not res!787631) (not e!673675))))

(assert (=> b!1184800 (= res!787631 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37438 _keys!1208))))))

(declare-fun b!1184801 () Bool)

(assert (=> b!1184801 (= e!673676 true)))

(declare-fun lt!537433 () ListLongMap!17329)

(declare-fun lt!537432 () ListLongMap!17329)

(assert (=> b!1184801 (= (-!1667 lt!537433 k0!934) lt!537432)))

(declare-fun lt!537429 () Unit!39161)

(declare-fun lt!537424 () V!44955)

(declare-fun addRemoveCommutativeForDiffKeys!179 (ListLongMap!17329 (_ BitVec 64) V!44955 (_ BitVec 64)) Unit!39161)

(assert (=> b!1184801 (= lt!537429 (addRemoveCommutativeForDiffKeys!179 lt!537421 (select (arr!36901 _keys!1208) from!1455) lt!537424 k0!934))))

(declare-fun lt!537419 () ListLongMap!17329)

(assert (=> b!1184801 (and (= lt!537419 lt!537433) (= lt!537420 lt!537418))))

(declare-fun lt!537430 () tuple2!19348)

(declare-fun +!3889 (ListLongMap!17329 tuple2!19348) ListLongMap!17329)

(assert (=> b!1184801 (= lt!537433 (+!3889 lt!537421 lt!537430))))

(assert (=> b!1184801 (not (= (select (arr!36901 _keys!1208) from!1455) k0!934))))

(declare-fun lt!537434 () Unit!39161)

(assert (=> b!1184801 (= lt!537434 e!673671)))

(declare-fun c!117083 () Bool)

(assert (=> b!1184801 (= c!117083 (= (select (arr!36901 _keys!1208) from!1455) k0!934))))

(assert (=> b!1184801 e!673673))

(declare-fun res!787628 () Bool)

(assert (=> b!1184801 (=> (not res!787628) (not e!673673))))

(declare-fun lt!537426 () ListLongMap!17329)

(assert (=> b!1184801 (= res!787628 (= lt!537426 lt!537432))))

(assert (=> b!1184801 (= lt!537432 (+!3889 lt!537420 lt!537430))))

(assert (=> b!1184801 (= lt!537430 (tuple2!19349 (select (arr!36901 _keys!1208) from!1455) lt!537424))))

(declare-fun lt!537425 () V!44955)

(declare-fun get!18925 (ValueCell!14226 V!44955) V!44955)

(assert (=> b!1184801 (= lt!537424 (get!18925 (select (arr!36902 _values!996) from!1455) lt!537425))))

(declare-fun b!1184802 () Bool)

(declare-fun e!673677 () Bool)

(declare-fun e!673670 () Bool)

(assert (=> b!1184802 (= e!673677 (not e!673670))))

(declare-fun res!787624 () Bool)

(assert (=> b!1184802 (=> res!787624 e!673670)))

(assert (=> b!1184802 (= res!787624 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1184802 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!537417 () Unit!39161)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76510 (_ BitVec 64) (_ BitVec 32)) Unit!39161)

(assert (=> b!1184802 (= lt!537417 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!787627 () Bool)

(assert (=> start!99798 (=> (not res!787627) (not e!673675))))

(assert (=> start!99798 (= res!787627 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37438 _keys!1208))))))

(assert (=> start!99798 e!673675))

(assert (=> start!99798 tp_is_empty!29871))

(declare-fun array_inv!28042 (array!76510) Bool)

(assert (=> start!99798 (array_inv!28042 _keys!1208)))

(assert (=> start!99798 true))

(assert (=> start!99798 tp!88738))

(declare-fun e!673679 () Bool)

(declare-fun array_inv!28043 (array!76512) Bool)

(assert (=> start!99798 (and (array_inv!28043 _values!996) e!673679)))

(declare-fun b!1184803 () Bool)

(assert (=> b!1184803 (= e!673670 e!673672)))

(declare-fun res!787629 () Bool)

(assert (=> b!1184803 (=> res!787629 e!673672)))

(assert (=> b!1184803 (= res!787629 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1184803 (= lt!537426 (getCurrentListMapNoExtraKeys!5099 lt!537435 lt!537428 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1184803 (= lt!537428 (array!76513 (store (arr!36902 _values!996) i!673 (ValueCellFull!14226 lt!537425)) (size!37439 _values!996)))))

(declare-fun dynLambda!3062 (Int (_ BitVec 64)) V!44955)

(assert (=> b!1184803 (= lt!537425 (dynLambda!3062 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1184803 (= lt!537419 (getCurrentListMapNoExtraKeys!5099 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1184804 () Bool)

(declare-fun res!787626 () Bool)

(assert (=> b!1184804 (=> (not res!787626) (not e!673675))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76510 (_ BitVec 32)) Bool)

(assert (=> b!1184804 (= res!787626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1184805 () Bool)

(declare-fun res!787621 () Bool)

(assert (=> b!1184805 (=> (not res!787621) (not e!673677))))

(assert (=> b!1184805 (= res!787621 (arrayNoDuplicates!0 lt!537435 #b00000000000000000000000000000000 Nil!26108))))

(declare-fun b!1184806 () Bool)

(declare-fun res!787620 () Bool)

(assert (=> b!1184806 (=> (not res!787620) (not e!673675))))

(assert (=> b!1184806 (= res!787620 (= (select (arr!36901 _keys!1208) i!673) k0!934))))

(declare-fun b!1184807 () Bool)

(declare-fun res!787623 () Bool)

(assert (=> b!1184807 (=> (not res!787623) (not e!673675))))

(assert (=> b!1184807 (= res!787623 (validKeyInArray!0 k0!934))))

(declare-fun b!1184808 () Bool)

(assert (=> b!1184808 (= e!673681 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1184809 () Bool)

(assert (=> b!1184809 (= e!673679 (and e!673678 mapRes!46634))))

(declare-fun condMapEmpty!46634 () Bool)

(declare-fun mapDefault!46634 () ValueCell!14226)

(assert (=> b!1184809 (= condMapEmpty!46634 (= (arr!36902 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14226)) mapDefault!46634)))))

(declare-fun b!1184810 () Bool)

(assert (=> b!1184810 (= e!673680 tp_is_empty!29871)))

(declare-fun b!1184811 () Bool)

(assert (=> b!1184811 (= e!673675 e!673677)))

(declare-fun res!787619 () Bool)

(assert (=> b!1184811 (=> (not res!787619) (not e!673677))))

(assert (=> b!1184811 (= res!787619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!537435 mask!1564))))

(assert (=> b!1184811 (= lt!537435 (array!76511 (store (arr!36901 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37438 _keys!1208)))))

(declare-fun b!1184812 () Bool)

(declare-fun Unit!39164 () Unit!39161)

(assert (=> b!1184812 (= e!673671 Unit!39164)))

(declare-fun lt!537431 () Unit!39161)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76510 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39161)

(assert (=> b!1184812 (= lt!537431 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1184812 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!537422 () Unit!39161)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76510 (_ BitVec 32) (_ BitVec 32)) Unit!39161)

(assert (=> b!1184812 (= lt!537422 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1184812 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26108)))

(declare-fun lt!537423 () Unit!39161)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76510 (_ BitVec 64) (_ BitVec 32) List!26111) Unit!39161)

(assert (=> b!1184812 (= lt!537423 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26108))))

(assert (=> b!1184812 false))

(assert (= (and start!99798 res!787627) b!1184796))

(assert (= (and b!1184796 res!787632) b!1184797))

(assert (= (and b!1184797 res!787633) b!1184804))

(assert (= (and b!1184804 res!787626) b!1184794))

(assert (= (and b!1184794 res!787622) b!1184800))

(assert (= (and b!1184800 res!787631) b!1184807))

(assert (= (and b!1184807 res!787623) b!1184806))

(assert (= (and b!1184806 res!787620) b!1184811))

(assert (= (and b!1184811 res!787619) b!1184805))

(assert (= (and b!1184805 res!787621) b!1184802))

(assert (= (and b!1184802 (not res!787624)) b!1184803))

(assert (= (and b!1184803 (not res!787629)) b!1184793))

(assert (= (and b!1184793 (not res!787630)) b!1184801))

(assert (= (and b!1184801 res!787628) b!1184798))

(assert (= (and b!1184798 (not res!787625)) b!1184808))

(assert (= (and b!1184801 c!117083) b!1184812))

(assert (= (and b!1184801 (not c!117083)) b!1184795))

(assert (= (and b!1184809 condMapEmpty!46634) mapIsEmpty!46634))

(assert (= (and b!1184809 (not condMapEmpty!46634)) mapNonEmpty!46634))

(get-info :version)

(assert (= (and mapNonEmpty!46634 ((_ is ValueCellFull!14226) mapValue!46634)) b!1184810))

(assert (= (and b!1184809 ((_ is ValueCellFull!14226) mapDefault!46634)) b!1184799))

(assert (= start!99798 b!1184809))

(declare-fun b_lambda!20503 () Bool)

(assert (=> (not b_lambda!20503) (not b!1184803)))

(declare-fun t!38449 () Bool)

(declare-fun tb!10161 () Bool)

(assert (=> (and start!99798 (= defaultEntry!1004 defaultEntry!1004) t!38449) tb!10161))

(declare-fun result!20881 () Bool)

(assert (=> tb!10161 (= result!20881 tp_is_empty!29871)))

(assert (=> b!1184803 t!38449))

(declare-fun b_and!41565 () Bool)

(assert (= b_and!41563 (and (=> t!38449 result!20881) b_and!41565)))

(declare-fun m!1093185 () Bool)

(assert (=> b!1184806 m!1093185))

(declare-fun m!1093187 () Bool)

(assert (=> start!99798 m!1093187))

(declare-fun m!1093189 () Bool)

(assert (=> start!99798 m!1093189))

(declare-fun m!1093191 () Bool)

(assert (=> b!1184811 m!1093191))

(declare-fun m!1093193 () Bool)

(assert (=> b!1184811 m!1093193))

(declare-fun m!1093195 () Bool)

(assert (=> b!1184803 m!1093195))

(declare-fun m!1093197 () Bool)

(assert (=> b!1184803 m!1093197))

(declare-fun m!1093199 () Bool)

(assert (=> b!1184803 m!1093199))

(declare-fun m!1093201 () Bool)

(assert (=> b!1184803 m!1093201))

(declare-fun m!1093203 () Bool)

(assert (=> b!1184812 m!1093203))

(declare-fun m!1093205 () Bool)

(assert (=> b!1184812 m!1093205))

(declare-fun m!1093207 () Bool)

(assert (=> b!1184812 m!1093207))

(declare-fun m!1093209 () Bool)

(assert (=> b!1184812 m!1093209))

(declare-fun m!1093211 () Bool)

(assert (=> b!1184812 m!1093211))

(declare-fun m!1093213 () Bool)

(assert (=> b!1184801 m!1093213))

(assert (=> b!1184801 m!1093213))

(declare-fun m!1093215 () Bool)

(assert (=> b!1184801 m!1093215))

(declare-fun m!1093217 () Bool)

(assert (=> b!1184801 m!1093217))

(declare-fun m!1093219 () Bool)

(assert (=> b!1184801 m!1093219))

(declare-fun m!1093221 () Bool)

(assert (=> b!1184801 m!1093221))

(declare-fun m!1093223 () Bool)

(assert (=> b!1184801 m!1093223))

(declare-fun m!1093225 () Bool)

(assert (=> b!1184801 m!1093225))

(assert (=> b!1184801 m!1093219))

(declare-fun m!1093227 () Bool)

(assert (=> b!1184793 m!1093227))

(declare-fun m!1093229 () Bool)

(assert (=> b!1184793 m!1093229))

(declare-fun m!1093231 () Bool)

(assert (=> b!1184793 m!1093231))

(assert (=> b!1184793 m!1093219))

(assert (=> b!1184793 m!1093219))

(declare-fun m!1093233 () Bool)

(assert (=> b!1184793 m!1093233))

(declare-fun m!1093235 () Bool)

(assert (=> b!1184793 m!1093235))

(declare-fun m!1093237 () Bool)

(assert (=> mapNonEmpty!46634 m!1093237))

(declare-fun m!1093239 () Bool)

(assert (=> b!1184805 m!1093239))

(assert (=> b!1184798 m!1093219))

(declare-fun m!1093241 () Bool)

(assert (=> b!1184802 m!1093241))

(declare-fun m!1093243 () Bool)

(assert (=> b!1184802 m!1093243))

(declare-fun m!1093245 () Bool)

(assert (=> b!1184796 m!1093245))

(declare-fun m!1093247 () Bool)

(assert (=> b!1184804 m!1093247))

(declare-fun m!1093249 () Bool)

(assert (=> b!1184807 m!1093249))

(declare-fun m!1093251 () Bool)

(assert (=> b!1184794 m!1093251))

(declare-fun m!1093253 () Bool)

(assert (=> b!1184808 m!1093253))

(check-sat (not mapNonEmpty!46634) (not b_next!25341) (not b!1184801) tp_is_empty!29871 (not b!1184805) (not b!1184812) (not b!1184811) (not b!1184807) (not b!1184803) (not b_lambda!20503) (not b!1184802) (not b!1184808) (not b!1184796) (not b!1184793) (not b!1184794) (not start!99798) (not b!1184804) b_and!41565)
(check-sat b_and!41565 (not b_next!25341))
