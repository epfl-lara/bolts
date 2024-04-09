; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98950 () Bool)

(assert start!98950)

(declare-fun b_free!24519 () Bool)

(declare-fun b_next!24519 () Bool)

(assert (=> start!98950 (= b_free!24519 (not b_next!24519))))

(declare-fun tp!86268 () Bool)

(declare-fun b_and!39901 () Bool)

(assert (=> start!98950 (= tp!86268 b_and!39901)))

(declare-fun mapIsEmpty!45398 () Bool)

(declare-fun mapRes!45398 () Bool)

(assert (=> mapIsEmpty!45398 mapRes!45398))

(declare-fun bm!55766 () Bool)

(declare-datatypes ((V!43859 0))(
  ( (V!43860 (val!14581 Int)) )
))
(declare-datatypes ((tuple2!18632 0))(
  ( (tuple2!18633 (_1!9326 (_ BitVec 64)) (_2!9326 V!43859)) )
))
(declare-datatypes ((List!25410 0))(
  ( (Nil!25407) (Cons!25406 (h!26615 tuple2!18632) (t!36928 List!25410)) )
))
(declare-datatypes ((ListLongMap!16613 0))(
  ( (ListLongMap!16614 (toList!8322 List!25410)) )
))
(declare-fun call!55769 () ListLongMap!16613)

(declare-fun call!55770 () ListLongMap!16613)

(assert (=> bm!55766 (= call!55769 call!55770)))

(declare-fun b!1158822 () Bool)

(declare-fun e!659036 () Bool)

(assert (=> b!1158822 (= e!659036 true)))

(declare-fun e!659035 () Bool)

(assert (=> b!1158822 e!659035))

(declare-fun res!769392 () Bool)

(assert (=> b!1158822 (=> (not res!769392) (not e!659035))))

(declare-fun lt!520814 () ListLongMap!16613)

(declare-fun lt!520806 () ListLongMap!16613)

(assert (=> b!1158822 (= res!769392 (= lt!520814 lt!520806))))

(declare-fun lt!520809 () ListLongMap!16613)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1394 (ListLongMap!16613 (_ BitVec 64)) ListLongMap!16613)

(assert (=> b!1158822 (= lt!520814 (-!1394 lt!520809 k0!934))))

(declare-datatypes ((array!74888 0))(
  ( (array!74889 (arr!36091 (Array (_ BitVec 32) (_ BitVec 64))) (size!36628 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74888)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!520810 () V!43859)

(declare-fun +!3648 (ListLongMap!16613 tuple2!18632) ListLongMap!16613)

(assert (=> b!1158822 (= (-!1394 (+!3648 lt!520806 (tuple2!18633 (select (arr!36091 _keys!1208) from!1455) lt!520810)) (select (arr!36091 _keys!1208) from!1455)) lt!520806)))

(declare-datatypes ((Unit!38075 0))(
  ( (Unit!38076) )
))
(declare-fun lt!520815 () Unit!38075)

(declare-fun addThenRemoveForNewKeyIsSame!233 (ListLongMap!16613 (_ BitVec 64) V!43859) Unit!38075)

(assert (=> b!1158822 (= lt!520815 (addThenRemoveForNewKeyIsSame!233 lt!520806 (select (arr!36091 _keys!1208) from!1455) lt!520810))))

(declare-fun lt!520821 () V!43859)

(declare-datatypes ((ValueCell!13815 0))(
  ( (ValueCellFull!13815 (v!17219 V!43859)) (EmptyCell!13815) )
))
(declare-datatypes ((array!74890 0))(
  ( (array!74891 (arr!36092 (Array (_ BitVec 32) ValueCell!13815)) (size!36629 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74890)

(declare-fun get!18427 (ValueCell!13815 V!43859) V!43859)

(assert (=> b!1158822 (= lt!520810 (get!18427 (select (arr!36092 _values!996) from!1455) lt!520821))))

(declare-fun lt!520822 () Unit!38075)

(declare-fun e!659034 () Unit!38075)

(assert (=> b!1158822 (= lt!520822 e!659034)))

(declare-fun c!115480 () Bool)

(declare-fun contains!6804 (ListLongMap!16613 (_ BitVec 64)) Bool)

(assert (=> b!1158822 (= c!115480 (contains!6804 lt!520806 k0!934))))

(declare-fun zeroValue!944 () V!43859)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43859)

(declare-fun getCurrentListMapNoExtraKeys!4758 (array!74888 array!74890 (_ BitVec 32) (_ BitVec 32) V!43859 V!43859 (_ BitVec 32) Int) ListLongMap!16613)

(assert (=> b!1158822 (= lt!520806 (getCurrentListMapNoExtraKeys!4758 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158823 () Bool)

(declare-fun call!55775 () Bool)

(assert (=> b!1158823 call!55775))

(declare-fun lt!520819 () Unit!38075)

(declare-fun call!55772 () Unit!38075)

(assert (=> b!1158823 (= lt!520819 call!55772)))

(declare-fun e!659023 () Unit!38075)

(assert (=> b!1158823 (= e!659023 lt!520819)))

(declare-fun b!1158824 () Bool)

(declare-fun res!769398 () Bool)

(declare-fun e!659031 () Bool)

(assert (=> b!1158824 (=> (not res!769398) (not e!659031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1158824 (= res!769398 (validKeyInArray!0 k0!934))))

(declare-fun b!1158825 () Bool)

(declare-fun res!769397 () Bool)

(assert (=> b!1158825 (=> (not res!769397) (not e!659031))))

(declare-datatypes ((List!25411 0))(
  ( (Nil!25408) (Cons!25407 (h!26616 (_ BitVec 64)) (t!36929 List!25411)) )
))
(declare-fun arrayNoDuplicates!0 (array!74888 (_ BitVec 32) List!25411) Bool)

(assert (=> b!1158825 (= res!769397 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25408))))

(declare-fun res!769390 () Bool)

(assert (=> start!98950 (=> (not res!769390) (not e!659031))))

(assert (=> start!98950 (= res!769390 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36628 _keys!1208))))))

(assert (=> start!98950 e!659031))

(declare-fun tp_is_empty!29049 () Bool)

(assert (=> start!98950 tp_is_empty!29049))

(declare-fun array_inv!27484 (array!74888) Bool)

(assert (=> start!98950 (array_inv!27484 _keys!1208)))

(assert (=> start!98950 true))

(assert (=> start!98950 tp!86268))

(declare-fun e!659037 () Bool)

(declare-fun array_inv!27485 (array!74890) Bool)

(assert (=> start!98950 (and (array_inv!27485 _values!996) e!659037)))

(declare-fun b!1158826 () Bool)

(declare-fun Unit!38077 () Unit!38075)

(assert (=> b!1158826 (= e!659034 Unit!38077)))

(declare-fun b!1158827 () Bool)

(declare-fun res!769399 () Bool)

(assert (=> b!1158827 (=> (not res!769399) (not e!659031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74888 (_ BitVec 32)) Bool)

(assert (=> b!1158827 (= res!769399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1158828 () Bool)

(declare-fun e!659024 () Bool)

(declare-fun e!659033 () Bool)

(assert (=> b!1158828 (= e!659024 (not e!659033))))

(declare-fun res!769403 () Bool)

(assert (=> b!1158828 (=> res!769403 e!659033)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1158828 (= res!769403 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1158828 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!520818 () Unit!38075)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74888 (_ BitVec 64) (_ BitVec 32)) Unit!38075)

(assert (=> b!1158828 (= lt!520818 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1158829 () Bool)

(declare-fun call!55771 () ListLongMap!16613)

(declare-fun call!55773 () ListLongMap!16613)

(declare-fun e!659029 () Bool)

(assert (=> b!1158829 (= e!659029 (= call!55773 (-!1394 call!55771 k0!934)))))

(declare-fun b!1158830 () Bool)

(declare-fun lt!520807 () ListLongMap!16613)

(assert (=> b!1158830 (contains!6804 (+!3648 lt!520807 (tuple2!18633 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!520827 () Unit!38075)

(declare-fun addStillContains!945 (ListLongMap!16613 (_ BitVec 64) V!43859 (_ BitVec 64)) Unit!38075)

(assert (=> b!1158830 (= lt!520827 (addStillContains!945 lt!520807 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!55776 () Bool)

(assert (=> b!1158830 call!55776))

(assert (=> b!1158830 (= lt!520807 call!55770)))

(declare-fun lt!520825 () Unit!38075)

(declare-fun call!55774 () Unit!38075)

(assert (=> b!1158830 (= lt!520825 call!55774)))

(declare-fun e!659025 () Unit!38075)

(assert (=> b!1158830 (= e!659025 lt!520827)))

(declare-fun c!115481 () Bool)

(declare-fun bm!55767 () Bool)

(declare-fun c!115479 () Bool)

(assert (=> bm!55767 (= call!55770 (+!3648 lt!520806 (ite (or c!115479 c!115481) (tuple2!18633 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18633 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1158831 () Bool)

(assert (=> b!1158831 (= e!659031 e!659024)))

(declare-fun res!769401 () Bool)

(assert (=> b!1158831 (=> (not res!769401) (not e!659024))))

(declare-fun lt!520816 () array!74888)

(assert (=> b!1158831 (= res!769401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!520816 mask!1564))))

(assert (=> b!1158831 (= lt!520816 (array!74889 (store (arr!36091 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36628 _keys!1208)))))

(declare-fun b!1158832 () Bool)

(declare-fun Unit!38078 () Unit!38075)

(assert (=> b!1158832 (= e!659034 Unit!38078)))

(declare-fun lt!520817 () Bool)

(assert (=> b!1158832 (= lt!520817 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1158832 (= c!115479 (and (not lt!520817) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!520823 () Unit!38075)

(assert (=> b!1158832 (= lt!520823 e!659025)))

(declare-fun lt!520808 () Unit!38075)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!519 (array!74888 array!74890 (_ BitVec 32) (_ BitVec 32) V!43859 V!43859 (_ BitVec 64) (_ BitVec 32) Int) Unit!38075)

(assert (=> b!1158832 (= lt!520808 (lemmaListMapContainsThenArrayContainsFrom!519 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115478 () Bool)

(assert (=> b!1158832 (= c!115478 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769396 () Bool)

(declare-fun e!659030 () Bool)

(assert (=> b!1158832 (= res!769396 e!659030)))

(declare-fun e!659022 () Bool)

(assert (=> b!1158832 (=> (not res!769396) (not e!659022))))

(assert (=> b!1158832 e!659022))

(declare-fun lt!520811 () Unit!38075)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74888 (_ BitVec 32) (_ BitVec 32)) Unit!38075)

(assert (=> b!1158832 (= lt!520811 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1158832 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25408)))

(declare-fun lt!520824 () Unit!38075)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74888 (_ BitVec 64) (_ BitVec 32) List!25411) Unit!38075)

(assert (=> b!1158832 (= lt!520824 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25408))))

(assert (=> b!1158832 false))

(declare-fun bm!55768 () Bool)

(assert (=> bm!55768 (= call!55776 (contains!6804 (ite c!115479 lt!520807 call!55769) k0!934))))

(declare-fun b!1158833 () Bool)

(declare-fun e!659027 () Unit!38075)

(declare-fun lt!520820 () Unit!38075)

(assert (=> b!1158833 (= e!659027 lt!520820)))

(assert (=> b!1158833 (= lt!520820 call!55772)))

(assert (=> b!1158833 call!55775))

(declare-fun bm!55769 () Bool)

(assert (=> bm!55769 (= call!55775 call!55776)))

(declare-fun b!1158834 () Bool)

(declare-fun e!659021 () Bool)

(assert (=> b!1158834 (= e!659033 e!659021)))

(declare-fun res!769391 () Bool)

(assert (=> b!1158834 (=> res!769391 e!659021)))

(assert (=> b!1158834 (= res!769391 (not (= from!1455 i!673)))))

(declare-fun lt!520812 () ListLongMap!16613)

(declare-fun lt!520813 () array!74890)

(assert (=> b!1158834 (= lt!520812 (getCurrentListMapNoExtraKeys!4758 lt!520816 lt!520813 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1158834 (= lt!520813 (array!74891 (store (arr!36092 _values!996) i!673 (ValueCellFull!13815 lt!520821)) (size!36629 _values!996)))))

(declare-fun dynLambda!2762 (Int (_ BitVec 64)) V!43859)

(assert (=> b!1158834 (= lt!520821 (dynLambda!2762 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1158834 (= lt!520809 (getCurrentListMapNoExtraKeys!4758 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!55770 () Bool)

(assert (=> bm!55770 (= call!55771 (getCurrentListMapNoExtraKeys!4758 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55771 () Bool)

(assert (=> bm!55771 (= call!55774 (addStillContains!945 lt!520806 (ite (or c!115479 c!115481) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115479 c!115481) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1158835 () Bool)

(assert (=> b!1158835 (= e!659035 (= lt!520814 (getCurrentListMapNoExtraKeys!4758 lt!520816 lt!520813 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1158836 () Bool)

(declare-fun e!659026 () Bool)

(assert (=> b!1158836 (= e!659026 tp_is_empty!29049)))

(declare-fun b!1158837 () Bool)

(declare-fun res!769395 () Bool)

(assert (=> b!1158837 (=> (not res!769395) (not e!659031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1158837 (= res!769395 (validMask!0 mask!1564))))

(declare-fun b!1158838 () Bool)

(assert (=> b!1158838 (= e!659022 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1158839 () Bool)

(declare-fun res!769402 () Bool)

(assert (=> b!1158839 (=> (not res!769402) (not e!659024))))

(assert (=> b!1158839 (= res!769402 (arrayNoDuplicates!0 lt!520816 #b00000000000000000000000000000000 Nil!25408))))

(declare-fun b!1158840 () Bool)

(declare-fun e!659028 () Bool)

(assert (=> b!1158840 (= e!659037 (and e!659028 mapRes!45398))))

(declare-fun condMapEmpty!45398 () Bool)

(declare-fun mapDefault!45398 () ValueCell!13815)

(assert (=> b!1158840 (= condMapEmpty!45398 (= (arr!36092 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13815)) mapDefault!45398)))))

(declare-fun b!1158841 () Bool)

(declare-fun Unit!38079 () Unit!38075)

(assert (=> b!1158841 (= e!659023 Unit!38079)))

(declare-fun b!1158842 () Bool)

(declare-fun res!769400 () Bool)

(assert (=> b!1158842 (=> (not res!769400) (not e!659031))))

(assert (=> b!1158842 (= res!769400 (and (= (size!36629 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36628 _keys!1208) (size!36629 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!55772 () Bool)

(assert (=> bm!55772 (= call!55772 call!55774)))

(declare-fun b!1158843 () Bool)

(assert (=> b!1158843 (= e!659030 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1158844 () Bool)

(declare-fun res!769389 () Bool)

(assert (=> b!1158844 (=> (not res!769389) (not e!659031))))

(assert (=> b!1158844 (= res!769389 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36628 _keys!1208))))))

(declare-fun bm!55773 () Bool)

(assert (=> bm!55773 (= call!55773 (getCurrentListMapNoExtraKeys!4758 lt!520816 lt!520813 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158845 () Bool)

(assert (=> b!1158845 (= c!115481 (and (not lt!520817) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1158845 (= e!659025 e!659027)))

(declare-fun b!1158846 () Bool)

(assert (=> b!1158846 (= e!659030 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!520817) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1158847 () Bool)

(assert (=> b!1158847 (= e!659029 (= call!55773 call!55771))))

(declare-fun mapNonEmpty!45398 () Bool)

(declare-fun tp!86269 () Bool)

(assert (=> mapNonEmpty!45398 (= mapRes!45398 (and tp!86269 e!659026))))

(declare-fun mapRest!45398 () (Array (_ BitVec 32) ValueCell!13815))

(declare-fun mapValue!45398 () ValueCell!13815)

(declare-fun mapKey!45398 () (_ BitVec 32))

(assert (=> mapNonEmpty!45398 (= (arr!36092 _values!996) (store mapRest!45398 mapKey!45398 mapValue!45398))))

(declare-fun b!1158848 () Bool)

(assert (=> b!1158848 (= e!659027 e!659023)))

(declare-fun c!115482 () Bool)

(assert (=> b!1158848 (= c!115482 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!520817))))

(declare-fun b!1158849 () Bool)

(declare-fun res!769394 () Bool)

(assert (=> b!1158849 (=> (not res!769394) (not e!659031))))

(assert (=> b!1158849 (= res!769394 (= (select (arr!36091 _keys!1208) i!673) k0!934))))

(declare-fun b!1158850 () Bool)

(assert (=> b!1158850 (= e!659028 tp_is_empty!29049)))

(declare-fun b!1158851 () Bool)

(assert (=> b!1158851 (= e!659021 e!659036)))

(declare-fun res!769393 () Bool)

(assert (=> b!1158851 (=> res!769393 e!659036)))

(assert (=> b!1158851 (= res!769393 (not (= (select (arr!36091 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1158851 e!659029))

(declare-fun c!115477 () Bool)

(assert (=> b!1158851 (= c!115477 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!520826 () Unit!38075)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!621 (array!74888 array!74890 (_ BitVec 32) (_ BitVec 32) V!43859 V!43859 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38075)

(assert (=> b!1158851 (= lt!520826 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!621 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98950 res!769390) b!1158837))

(assert (= (and b!1158837 res!769395) b!1158842))

(assert (= (and b!1158842 res!769400) b!1158827))

(assert (= (and b!1158827 res!769399) b!1158825))

(assert (= (and b!1158825 res!769397) b!1158844))

(assert (= (and b!1158844 res!769389) b!1158824))

(assert (= (and b!1158824 res!769398) b!1158849))

(assert (= (and b!1158849 res!769394) b!1158831))

(assert (= (and b!1158831 res!769401) b!1158839))

(assert (= (and b!1158839 res!769402) b!1158828))

(assert (= (and b!1158828 (not res!769403)) b!1158834))

(assert (= (and b!1158834 (not res!769391)) b!1158851))

(assert (= (and b!1158851 c!115477) b!1158829))

(assert (= (and b!1158851 (not c!115477)) b!1158847))

(assert (= (or b!1158829 b!1158847) bm!55773))

(assert (= (or b!1158829 b!1158847) bm!55770))

(assert (= (and b!1158851 (not res!769393)) b!1158822))

(assert (= (and b!1158822 c!115480) b!1158832))

(assert (= (and b!1158822 (not c!115480)) b!1158826))

(assert (= (and b!1158832 c!115479) b!1158830))

(assert (= (and b!1158832 (not c!115479)) b!1158845))

(assert (= (and b!1158845 c!115481) b!1158833))

(assert (= (and b!1158845 (not c!115481)) b!1158848))

(assert (= (and b!1158848 c!115482) b!1158823))

(assert (= (and b!1158848 (not c!115482)) b!1158841))

(assert (= (or b!1158833 b!1158823) bm!55772))

(assert (= (or b!1158833 b!1158823) bm!55766))

(assert (= (or b!1158833 b!1158823) bm!55769))

(assert (= (or b!1158830 bm!55769) bm!55768))

(assert (= (or b!1158830 bm!55772) bm!55771))

(assert (= (or b!1158830 bm!55766) bm!55767))

(assert (= (and b!1158832 c!115478) b!1158843))

(assert (= (and b!1158832 (not c!115478)) b!1158846))

(assert (= (and b!1158832 res!769396) b!1158838))

(assert (= (and b!1158822 res!769392) b!1158835))

(assert (= (and b!1158840 condMapEmpty!45398) mapIsEmpty!45398))

(assert (= (and b!1158840 (not condMapEmpty!45398)) mapNonEmpty!45398))

(get-info :version)

(assert (= (and mapNonEmpty!45398 ((_ is ValueCellFull!13815) mapValue!45398)) b!1158836))

(assert (= (and b!1158840 ((_ is ValueCellFull!13815) mapDefault!45398)) b!1158850))

(assert (= start!98950 b!1158840))

(declare-fun b_lambda!19643 () Bool)

(assert (=> (not b_lambda!19643) (not b!1158834)))

(declare-fun t!36927 () Bool)

(declare-fun tb!9339 () Bool)

(assert (=> (and start!98950 (= defaultEntry!1004 defaultEntry!1004) t!36927) tb!9339))

(declare-fun result!19235 () Bool)

(assert (=> tb!9339 (= result!19235 tp_is_empty!29049)))

(assert (=> b!1158834 t!36927))

(declare-fun b_and!39903 () Bool)

(assert (= b_and!39901 (and (=> t!36927 result!19235) b_and!39903)))

(declare-fun m!1068023 () Bool)

(assert (=> b!1158825 m!1068023))

(declare-fun m!1068025 () Bool)

(assert (=> b!1158834 m!1068025))

(declare-fun m!1068027 () Bool)

(assert (=> b!1158834 m!1068027))

(declare-fun m!1068029 () Bool)

(assert (=> b!1158834 m!1068029))

(declare-fun m!1068031 () Bool)

(assert (=> b!1158834 m!1068031))

(declare-fun m!1068033 () Bool)

(assert (=> b!1158849 m!1068033))

(declare-fun m!1068035 () Bool)

(assert (=> b!1158832 m!1068035))

(declare-fun m!1068037 () Bool)

(assert (=> b!1158832 m!1068037))

(declare-fun m!1068039 () Bool)

(assert (=> b!1158832 m!1068039))

(declare-fun m!1068041 () Bool)

(assert (=> b!1158832 m!1068041))

(declare-fun m!1068043 () Bool)

(assert (=> bm!55771 m!1068043))

(declare-fun m!1068045 () Bool)

(assert (=> b!1158839 m!1068045))

(declare-fun m!1068047 () Bool)

(assert (=> b!1158835 m!1068047))

(declare-fun m!1068049 () Bool)

(assert (=> b!1158824 m!1068049))

(assert (=> bm!55773 m!1068047))

(declare-fun m!1068051 () Bool)

(assert (=> b!1158843 m!1068051))

(declare-fun m!1068053 () Bool)

(assert (=> start!98950 m!1068053))

(declare-fun m!1068055 () Bool)

(assert (=> start!98950 m!1068055))

(declare-fun m!1068057 () Bool)

(assert (=> b!1158827 m!1068057))

(declare-fun m!1068059 () Bool)

(assert (=> b!1158851 m!1068059))

(declare-fun m!1068061 () Bool)

(assert (=> b!1158851 m!1068061))

(declare-fun m!1068063 () Bool)

(assert (=> mapNonEmpty!45398 m!1068063))

(declare-fun m!1068065 () Bool)

(assert (=> bm!55768 m!1068065))

(declare-fun m!1068067 () Bool)

(assert (=> b!1158828 m!1068067))

(declare-fun m!1068069 () Bool)

(assert (=> b!1158828 m!1068069))

(declare-fun m!1068071 () Bool)

(assert (=> b!1158830 m!1068071))

(assert (=> b!1158830 m!1068071))

(declare-fun m!1068073 () Bool)

(assert (=> b!1158830 m!1068073))

(declare-fun m!1068075 () Bool)

(assert (=> b!1158830 m!1068075))

(declare-fun m!1068077 () Bool)

(assert (=> b!1158837 m!1068077))

(declare-fun m!1068079 () Bool)

(assert (=> b!1158822 m!1068079))

(declare-fun m!1068081 () Bool)

(assert (=> b!1158822 m!1068081))

(declare-fun m!1068083 () Bool)

(assert (=> b!1158822 m!1068083))

(assert (=> b!1158822 m!1068059))

(declare-fun m!1068085 () Bool)

(assert (=> b!1158822 m!1068085))

(assert (=> b!1158822 m!1068083))

(assert (=> b!1158822 m!1068081))

(declare-fun m!1068087 () Bool)

(assert (=> b!1158822 m!1068087))

(declare-fun m!1068089 () Bool)

(assert (=> b!1158822 m!1068089))

(declare-fun m!1068091 () Bool)

(assert (=> b!1158822 m!1068091))

(assert (=> b!1158822 m!1068059))

(declare-fun m!1068093 () Bool)

(assert (=> b!1158822 m!1068093))

(assert (=> b!1158822 m!1068059))

(assert (=> bm!55770 m!1068079))

(declare-fun m!1068095 () Bool)

(assert (=> b!1158831 m!1068095))

(declare-fun m!1068097 () Bool)

(assert (=> b!1158831 m!1068097))

(declare-fun m!1068099 () Bool)

(assert (=> bm!55767 m!1068099))

(declare-fun m!1068101 () Bool)

(assert (=> b!1158829 m!1068101))

(assert (=> b!1158838 m!1068051))

(check-sat (not b!1158834) (not b!1158830) (not b!1158832) tp_is_empty!29049 b_and!39903 (not bm!55768) (not mapNonEmpty!45398) (not b!1158851) (not start!98950) (not b_lambda!19643) (not bm!55770) (not bm!55771) (not b!1158825) (not b!1158822) (not bm!55767) (not b!1158843) (not b!1158827) (not bm!55773) (not b!1158837) (not b_next!24519) (not b!1158829) (not b!1158831) (not b!1158838) (not b!1158828) (not b!1158835) (not b!1158824) (not b!1158839))
(check-sat b_and!39903 (not b_next!24519))
