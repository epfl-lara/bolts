; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98198 () Bool)

(assert start!98198)

(declare-fun b_free!23863 () Bool)

(declare-fun b_next!23863 () Bool)

(assert (=> start!98198 (= b_free!23863 (not b_next!23863))))

(declare-fun tp!84294 () Bool)

(declare-fun b_and!38531 () Bool)

(assert (=> start!98198 (= tp!84294 b_and!38531)))

(declare-fun b!1128746 () Bool)

(declare-fun e!642439 () Bool)

(declare-fun e!642440 () Bool)

(assert (=> b!1128746 (= e!642439 e!642440)))

(declare-fun res!754417 () Bool)

(assert (=> b!1128746 (=> res!754417 e!642440)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1128746 (= res!754417 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42985 0))(
  ( (V!42986 (val!14253 Int)) )
))
(declare-fun zeroValue!944 () V!42985)

(declare-datatypes ((tuple2!18030 0))(
  ( (tuple2!18031 (_1!9025 (_ BitVec 64)) (_2!9025 V!42985)) )
))
(declare-datatypes ((List!24850 0))(
  ( (Nil!24847) (Cons!24846 (h!26055 tuple2!18030) (t!35712 List!24850)) )
))
(declare-datatypes ((ListLongMap!16011 0))(
  ( (ListLongMap!16012 (toList!8021 List!24850)) )
))
(declare-fun lt!501056 () ListLongMap!16011)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13487 0))(
  ( (ValueCellFull!13487 (v!16887 V!42985)) (EmptyCell!13487) )
))
(declare-datatypes ((array!73604 0))(
  ( (array!73605 (arr!35451 (Array (_ BitVec 32) ValueCell!13487)) (size!35988 (_ BitVec 32))) )
))
(declare-fun lt!501052 () array!73604)

(declare-fun minValue!944 () V!42985)

(declare-datatypes ((array!73606 0))(
  ( (array!73607 (arr!35452 (Array (_ BitVec 32) (_ BitVec 64))) (size!35989 (_ BitVec 32))) )
))
(declare-fun lt!501053 () array!73606)

(declare-fun getCurrentListMapNoExtraKeys!4475 (array!73606 array!73604 (_ BitVec 32) (_ BitVec 32) V!42985 V!42985 (_ BitVec 32) Int) ListLongMap!16011)

(assert (=> b!1128746 (= lt!501056 (getCurrentListMapNoExtraKeys!4475 lt!501053 lt!501052 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73604)

(declare-fun dynLambda!2553 (Int (_ BitVec 64)) V!42985)

(assert (=> b!1128746 (= lt!501052 (array!73605 (store (arr!35451 _values!996) i!673 (ValueCellFull!13487 (dynLambda!2553 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35988 _values!996)))))

(declare-fun _keys!1208 () array!73606)

(declare-fun lt!501055 () ListLongMap!16011)

(assert (=> b!1128746 (= lt!501055 (getCurrentListMapNoExtraKeys!4475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!47869 () Bool)

(declare-fun call!47873 () ListLongMap!16011)

(assert (=> bm!47869 (= call!47873 (getCurrentListMapNoExtraKeys!4475 lt!501053 lt!501052 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128747 () Bool)

(declare-fun e!642441 () Bool)

(declare-fun tp_is_empty!28393 () Bool)

(assert (=> b!1128747 (= e!642441 tp_is_empty!28393)))

(declare-fun b!1128748 () Bool)

(declare-fun e!642434 () Bool)

(declare-fun e!642438 () Bool)

(assert (=> b!1128748 (= e!642434 e!642438)))

(declare-fun res!754410 () Bool)

(assert (=> b!1128748 (=> (not res!754410) (not e!642438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73606 (_ BitVec 32)) Bool)

(assert (=> b!1128748 (= res!754410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501053 mask!1564))))

(assert (=> b!1128748 (= lt!501053 (array!73607 (store (arr!35452 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35989 _keys!1208)))))

(declare-fun mapIsEmpty!44407 () Bool)

(declare-fun mapRes!44407 () Bool)

(assert (=> mapIsEmpty!44407 mapRes!44407))

(declare-fun b!1128749 () Bool)

(declare-fun res!754411 () Bool)

(assert (=> b!1128749 (=> (not res!754411) (not e!642434))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1128749 (= res!754411 (= (select (arr!35452 _keys!1208) i!673) k!934))))

(declare-fun b!1128750 () Bool)

(declare-fun res!754419 () Bool)

(assert (=> b!1128750 (=> (not res!754419) (not e!642434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1128750 (= res!754419 (validMask!0 mask!1564))))

(declare-fun b!1128751 () Bool)

(declare-fun e!642442 () Bool)

(assert (=> b!1128751 (= e!642442 tp_is_empty!28393)))

(declare-fun b!1128752 () Bool)

(assert (=> b!1128752 (= e!642438 (not e!642439))))

(declare-fun res!754409 () Bool)

(assert (=> b!1128752 (=> res!754409 e!642439)))

(assert (=> b!1128752 (= res!754409 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1128752 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36927 0))(
  ( (Unit!36928) )
))
(declare-fun lt!501054 () Unit!36927)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73606 (_ BitVec 64) (_ BitVec 32)) Unit!36927)

(assert (=> b!1128752 (= lt!501054 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun e!642443 () Bool)

(declare-fun call!47872 () ListLongMap!16011)

(declare-fun b!1128753 () Bool)

(declare-fun -!1156 (ListLongMap!16011 (_ BitVec 64)) ListLongMap!16011)

(assert (=> b!1128753 (= e!642443 (= call!47873 (-!1156 call!47872 k!934)))))

(declare-fun b!1128754 () Bool)

(assert (=> b!1128754 (= e!642443 (= call!47873 call!47872))))

(declare-fun res!754418 () Bool)

(assert (=> start!98198 (=> (not res!754418) (not e!642434))))

(assert (=> start!98198 (= res!754418 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35989 _keys!1208))))))

(assert (=> start!98198 e!642434))

(assert (=> start!98198 tp_is_empty!28393))

(declare-fun array_inv!27066 (array!73606) Bool)

(assert (=> start!98198 (array_inv!27066 _keys!1208)))

(assert (=> start!98198 true))

(assert (=> start!98198 tp!84294))

(declare-fun e!642437 () Bool)

(declare-fun array_inv!27067 (array!73604) Bool)

(assert (=> start!98198 (and (array_inv!27067 _values!996) e!642437)))

(declare-fun b!1128755 () Bool)

(declare-fun res!754408 () Bool)

(assert (=> b!1128755 (=> (not res!754408) (not e!642438))))

(declare-datatypes ((List!24851 0))(
  ( (Nil!24848) (Cons!24847 (h!26056 (_ BitVec 64)) (t!35713 List!24851)) )
))
(declare-fun arrayNoDuplicates!0 (array!73606 (_ BitVec 32) List!24851) Bool)

(assert (=> b!1128755 (= res!754408 (arrayNoDuplicates!0 lt!501053 #b00000000000000000000000000000000 Nil!24848))))

(declare-fun bm!47870 () Bool)

(assert (=> bm!47870 (= call!47872 (getCurrentListMapNoExtraKeys!4475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1128756 () Bool)

(declare-fun res!754407 () Bool)

(assert (=> b!1128756 (=> (not res!754407) (not e!642434))))

(assert (=> b!1128756 (= res!754407 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24848))))

(declare-fun b!1128757 () Bool)

(declare-fun e!642436 () Bool)

(assert (=> b!1128757 (= e!642436 true)))

(declare-fun lt!501057 () Bool)

(declare-fun contains!6515 (ListLongMap!16011 (_ BitVec 64)) Bool)

(assert (=> b!1128757 (= lt!501057 (contains!6515 (getCurrentListMapNoExtraKeys!4475 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun mapNonEmpty!44407 () Bool)

(declare-fun tp!84293 () Bool)

(assert (=> mapNonEmpty!44407 (= mapRes!44407 (and tp!84293 e!642442))))

(declare-fun mapKey!44407 () (_ BitVec 32))

(declare-fun mapValue!44407 () ValueCell!13487)

(declare-fun mapRest!44407 () (Array (_ BitVec 32) ValueCell!13487))

(assert (=> mapNonEmpty!44407 (= (arr!35451 _values!996) (store mapRest!44407 mapKey!44407 mapValue!44407))))

(declare-fun b!1128758 () Bool)

(declare-fun res!754414 () Bool)

(assert (=> b!1128758 (=> (not res!754414) (not e!642434))))

(assert (=> b!1128758 (= res!754414 (and (= (size!35988 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35989 _keys!1208) (size!35988 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1128759 () Bool)

(assert (=> b!1128759 (= e!642437 (and e!642441 mapRes!44407))))

(declare-fun condMapEmpty!44407 () Bool)

(declare-fun mapDefault!44407 () ValueCell!13487)

