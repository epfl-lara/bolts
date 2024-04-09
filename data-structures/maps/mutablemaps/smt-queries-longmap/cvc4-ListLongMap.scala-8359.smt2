; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101776 () Bool)

(assert start!101776)

(declare-fun b_free!26429 () Bool)

(declare-fun b_next!26429 () Bool)

(assert (=> start!101776 (= b_free!26429 (not b_next!26429))))

(declare-fun tp!92333 () Bool)

(declare-fun b_and!44129 () Bool)

(assert (=> start!101776 (= tp!92333 b_and!44129)))

(declare-fun b!1224685 () Bool)

(declare-datatypes ((Unit!40516 0))(
  ( (Unit!40517) )
))
(declare-fun e!695607 () Unit!40516)

(declare-fun Unit!40518 () Unit!40516)

(assert (=> b!1224685 (= e!695607 Unit!40518)))

(declare-fun b!1224686 () Bool)

(declare-fun e!695616 () Bool)

(declare-fun e!695612 () Bool)

(assert (=> b!1224686 (= e!695616 e!695612)))

(declare-fun res!813909 () Bool)

(assert (=> b!1224686 (=> res!813909 e!695612)))

(declare-datatypes ((array!79024 0))(
  ( (array!79025 (arr!38135 (Array (_ BitVec 32) (_ BitVec 64))) (size!38672 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79024)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1224686 (= res!813909 (not (= (select (arr!38135 _keys!1208) from!1455) k!934)))))

(declare-fun b!1224687 () Bool)

(declare-fun e!695606 () Bool)

(declare-fun e!695614 () Bool)

(assert (=> b!1224687 (= e!695606 (not e!695614))))

(declare-fun res!813911 () Bool)

(assert (=> b!1224687 (=> res!813911 e!695614)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1224687 (= res!813911 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!79024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224687 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!557718 () Unit!40516)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79024 (_ BitVec 64) (_ BitVec 32)) Unit!40516)

(assert (=> b!1224687 (= lt!557718 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!48598 () Bool)

(declare-fun mapRes!48598 () Bool)

(declare-fun tp!92334 () Bool)

(declare-fun e!695610 () Bool)

(assert (=> mapNonEmpty!48598 (= mapRes!48598 (and tp!92334 e!695610))))

(declare-datatypes ((V!46637 0))(
  ( (V!46638 (val!15623 Int)) )
))
(declare-datatypes ((ValueCell!14857 0))(
  ( (ValueCellFull!14857 (v!18286 V!46637)) (EmptyCell!14857) )
))
(declare-fun mapRest!48598 () (Array (_ BitVec 32) ValueCell!14857))

(declare-datatypes ((array!79026 0))(
  ( (array!79027 (arr!38136 (Array (_ BitVec 32) ValueCell!14857)) (size!38673 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79026)

(declare-fun mapKey!48598 () (_ BitVec 32))

(declare-fun mapValue!48598 () ValueCell!14857)

(assert (=> mapNonEmpty!48598 (= (arr!38136 _values!996) (store mapRest!48598 mapKey!48598 mapValue!48598))))

(declare-fun b!1224688 () Bool)

(declare-fun res!813905 () Bool)

(declare-fun e!695611 () Bool)

(assert (=> b!1224688 (=> (not res!813905) (not e!695611))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224688 (= res!813905 (validKeyInArray!0 k!934))))

(declare-fun b!1224689 () Bool)

(declare-fun res!813907 () Bool)

(assert (=> b!1224689 (=> (not res!813907) (not e!695611))))

(assert (=> b!1224689 (= res!813907 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38672 _keys!1208))))))

(declare-fun b!1224690 () Bool)

(declare-fun e!695613 () Bool)

(assert (=> b!1224690 (= e!695614 e!695613)))

(declare-fun res!813904 () Bool)

(assert (=> b!1224690 (=> res!813904 e!695613)))

(assert (=> b!1224690 (= res!813904 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46637)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!557713 () array!79024)

(declare-fun lt!557723 () array!79026)

(declare-datatypes ((tuple2!20284 0))(
  ( (tuple2!20285 (_1!10152 (_ BitVec 64)) (_2!10152 V!46637)) )
))
(declare-datatypes ((List!27095 0))(
  ( (Nil!27092) (Cons!27091 (h!28300 tuple2!20284) (t!40511 List!27095)) )
))
(declare-datatypes ((ListLongMap!18265 0))(
  ( (ListLongMap!18266 (toList!9148 List!27095)) )
))
(declare-fun lt!557729 () ListLongMap!18265)

(declare-fun minValue!944 () V!46637)

(declare-fun getCurrentListMapNoExtraKeys!5545 (array!79024 array!79026 (_ BitVec 32) (_ BitVec 32) V!46637 V!46637 (_ BitVec 32) Int) ListLongMap!18265)

(assert (=> b!1224690 (= lt!557729 (getCurrentListMapNoExtraKeys!5545 lt!557713 lt!557723 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!557726 () V!46637)

(assert (=> b!1224690 (= lt!557723 (array!79027 (store (arr!38136 _values!996) i!673 (ValueCellFull!14857 lt!557726)) (size!38673 _values!996)))))

(declare-fun dynLambda!3440 (Int (_ BitVec 64)) V!46637)

(assert (=> b!1224690 (= lt!557726 (dynLambda!3440 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!557714 () ListLongMap!18265)

(assert (=> b!1224690 (= lt!557714 (getCurrentListMapNoExtraKeys!5545 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!48598 () Bool)

(assert (=> mapIsEmpty!48598 mapRes!48598))

(declare-fun b!1224691 () Bool)

(assert (=> b!1224691 (= e!695612 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1224692 () Bool)

(declare-fun Unit!40519 () Unit!40516)

(assert (=> b!1224692 (= e!695607 Unit!40519)))

(declare-fun lt!557715 () Unit!40516)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79024 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40516)

(assert (=> b!1224692 (= lt!557715 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1224692 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557721 () Unit!40516)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79024 (_ BitVec 32) (_ BitVec 32)) Unit!40516)

(assert (=> b!1224692 (= lt!557721 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27096 0))(
  ( (Nil!27093) (Cons!27092 (h!28301 (_ BitVec 64)) (t!40512 List!27096)) )
))
(declare-fun arrayNoDuplicates!0 (array!79024 (_ BitVec 32) List!27096) Bool)

(assert (=> b!1224692 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27093)))

(declare-fun lt!557720 () Unit!40516)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79024 (_ BitVec 64) (_ BitVec 32) List!27096) Unit!40516)

(assert (=> b!1224692 (= lt!557720 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27093))))

(assert (=> b!1224692 false))

(declare-fun b!1224693 () Bool)

(declare-fun res!813906 () Bool)

(assert (=> b!1224693 (=> (not res!813906) (not e!695611))))

(assert (=> b!1224693 (= res!813906 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27093))))

(declare-fun b!1224694 () Bool)

(assert (=> b!1224694 (= e!695611 e!695606)))

(declare-fun res!813918 () Bool)

(assert (=> b!1224694 (=> (not res!813918) (not e!695606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79024 (_ BitVec 32)) Bool)

(assert (=> b!1224694 (= res!813918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557713 mask!1564))))

(assert (=> b!1224694 (= lt!557713 (array!79025 (store (arr!38135 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38672 _keys!1208)))))

(declare-fun b!1224695 () Bool)

(declare-fun e!695605 () Bool)

(assert (=> b!1224695 (= e!695613 e!695605)))

(declare-fun res!813908 () Bool)

(assert (=> b!1224695 (=> res!813908 e!695605)))

(assert (=> b!1224695 (= res!813908 (not (validKeyInArray!0 (select (arr!38135 _keys!1208) from!1455))))))

(declare-fun lt!557724 () ListLongMap!18265)

(declare-fun lt!557731 () ListLongMap!18265)

(assert (=> b!1224695 (= lt!557724 lt!557731)))

(declare-fun lt!557717 () ListLongMap!18265)

(declare-fun -!1984 (ListLongMap!18265 (_ BitVec 64)) ListLongMap!18265)

(assert (=> b!1224695 (= lt!557731 (-!1984 lt!557717 k!934))))

(assert (=> b!1224695 (= lt!557724 (getCurrentListMapNoExtraKeys!5545 lt!557713 lt!557723 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1224695 (= lt!557717 (getCurrentListMapNoExtraKeys!5545 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!557722 () Unit!40516)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1186 (array!79024 array!79026 (_ BitVec 32) (_ BitVec 32) V!46637 V!46637 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40516)

(assert (=> b!1224695 (= lt!557722 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1186 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1224696 () Bool)

(declare-fun res!813917 () Bool)

(assert (=> b!1224696 (=> (not res!813917) (not e!695611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1224696 (= res!813917 (validMask!0 mask!1564))))

(declare-fun b!1224697 () Bool)

(declare-fun e!695608 () Bool)

(declare-fun tp_is_empty!31133 () Bool)

(assert (=> b!1224697 (= e!695608 tp_is_empty!31133)))

(declare-fun b!1224698 () Bool)

(declare-fun res!813916 () Bool)

(assert (=> b!1224698 (=> (not res!813916) (not e!695606))))

(assert (=> b!1224698 (= res!813916 (arrayNoDuplicates!0 lt!557713 #b00000000000000000000000000000000 Nil!27093))))

(declare-fun b!1224699 () Bool)

(declare-fun res!813910 () Bool)

(assert (=> b!1224699 (=> (not res!813910) (not e!695611))))

(assert (=> b!1224699 (= res!813910 (and (= (size!38673 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38672 _keys!1208) (size!38673 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1224700 () Bool)

(assert (=> b!1224700 (= e!695610 tp_is_empty!31133)))

(declare-fun b!1224701 () Bool)

(assert (=> b!1224701 (= e!695605 true)))

(declare-fun lt!557728 () ListLongMap!18265)

(declare-fun lt!557719 () ListLongMap!18265)

(assert (=> b!1224701 (= (-!1984 lt!557728 k!934) lt!557719)))

(declare-fun lt!557725 () Unit!40516)

(declare-fun lt!557727 () V!46637)

(declare-fun addRemoveCommutativeForDiffKeys!225 (ListLongMap!18265 (_ BitVec 64) V!46637 (_ BitVec 64)) Unit!40516)

(assert (=> b!1224701 (= lt!557725 (addRemoveCommutativeForDiffKeys!225 lt!557717 (select (arr!38135 _keys!1208) from!1455) lt!557727 k!934))))

(assert (=> b!1224701 (and (= lt!557714 lt!557728) (= lt!557731 lt!557724))))

(declare-fun lt!557730 () tuple2!20284)

(declare-fun +!4110 (ListLongMap!18265 tuple2!20284) ListLongMap!18265)

(assert (=> b!1224701 (= lt!557728 (+!4110 lt!557717 lt!557730))))

(assert (=> b!1224701 (not (= (select (arr!38135 _keys!1208) from!1455) k!934))))

(declare-fun lt!557716 () Unit!40516)

(assert (=> b!1224701 (= lt!557716 e!695607)))

(declare-fun c!120408 () Bool)

(assert (=> b!1224701 (= c!120408 (= (select (arr!38135 _keys!1208) from!1455) k!934))))

(assert (=> b!1224701 e!695616))

(declare-fun res!813913 () Bool)

(assert (=> b!1224701 (=> (not res!813913) (not e!695616))))

(assert (=> b!1224701 (= res!813913 (= lt!557729 lt!557719))))

(assert (=> b!1224701 (= lt!557719 (+!4110 lt!557731 lt!557730))))

(assert (=> b!1224701 (= lt!557730 (tuple2!20285 (select (arr!38135 _keys!1208) from!1455) lt!557727))))

(declare-fun get!19524 (ValueCell!14857 V!46637) V!46637)

(assert (=> b!1224701 (= lt!557727 (get!19524 (select (arr!38136 _values!996) from!1455) lt!557726))))

(declare-fun b!1224702 () Bool)

(declare-fun e!695609 () Bool)

(assert (=> b!1224702 (= e!695609 (and e!695608 mapRes!48598))))

(declare-fun condMapEmpty!48598 () Bool)

(declare-fun mapDefault!48598 () ValueCell!14857)

