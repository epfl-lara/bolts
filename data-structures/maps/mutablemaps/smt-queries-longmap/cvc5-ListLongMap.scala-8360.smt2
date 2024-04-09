; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101778 () Bool)

(assert start!101778)

(declare-fun b_free!26431 () Bool)

(declare-fun b_next!26431 () Bool)

(assert (=> start!101778 (= b_free!26431 (not b_next!26431))))

(declare-fun tp!92339 () Bool)

(declare-fun b_and!44133 () Bool)

(assert (=> start!101778 (= tp!92339 b_and!44133)))

(declare-fun b!1224747 () Bool)

(declare-fun res!813955 () Bool)

(declare-fun e!695641 () Bool)

(assert (=> b!1224747 (=> (not res!813955) (not e!695641))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224747 (= res!813955 (validKeyInArray!0 k!934))))

(declare-fun res!813950 () Bool)

(assert (=> start!101778 (=> (not res!813950) (not e!695641))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!79028 0))(
  ( (array!79029 (arr!38137 (Array (_ BitVec 32) (_ BitVec 64))) (size!38674 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79028)

(assert (=> start!101778 (= res!813950 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38674 _keys!1208))))))

(assert (=> start!101778 e!695641))

(declare-fun tp_is_empty!31135 () Bool)

(assert (=> start!101778 tp_is_empty!31135))

(declare-fun array_inv!28928 (array!79028) Bool)

(assert (=> start!101778 (array_inv!28928 _keys!1208)))

(assert (=> start!101778 true))

(assert (=> start!101778 tp!92339))

(declare-datatypes ((V!46641 0))(
  ( (V!46642 (val!15624 Int)) )
))
(declare-datatypes ((ValueCell!14858 0))(
  ( (ValueCellFull!14858 (v!18287 V!46641)) (EmptyCell!14858) )
))
(declare-datatypes ((array!79030 0))(
  ( (array!79031 (arr!38138 (Array (_ BitVec 32) ValueCell!14858)) (size!38675 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79030)

(declare-fun e!695652 () Bool)

(declare-fun array_inv!28929 (array!79030) Bool)

(assert (=> start!101778 (and (array_inv!28929 _values!996) e!695652)))

(declare-fun b!1224748 () Bool)

(declare-datatypes ((Unit!40520 0))(
  ( (Unit!40521) )
))
(declare-fun e!695645 () Unit!40520)

(declare-fun Unit!40522 () Unit!40520)

(assert (=> b!1224748 (= e!695645 Unit!40522)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!557772 () Unit!40520)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79028 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40520)

(assert (=> b!1224748 (= lt!557772 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!79028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224748 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557780 () Unit!40520)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79028 (_ BitVec 32) (_ BitVec 32)) Unit!40520)

(assert (=> b!1224748 (= lt!557780 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27097 0))(
  ( (Nil!27094) (Cons!27093 (h!28302 (_ BitVec 64)) (t!40515 List!27097)) )
))
(declare-fun arrayNoDuplicates!0 (array!79028 (_ BitVec 32) List!27097) Bool)

(assert (=> b!1224748 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27094)))

(declare-fun lt!557778 () Unit!40520)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79028 (_ BitVec 64) (_ BitVec 32) List!27097) Unit!40520)

(assert (=> b!1224748 (= lt!557778 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27094))))

(assert (=> b!1224748 false))

(declare-fun b!1224749 () Bool)

(declare-fun res!813963 () Bool)

(assert (=> b!1224749 (=> (not res!813963) (not e!695641))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1224749 (= res!813963 (validMask!0 mask!1564))))

(declare-fun b!1224750 () Bool)

(declare-fun e!695644 () Bool)

(declare-fun e!695649 () Bool)

(assert (=> b!1224750 (= e!695644 (not e!695649))))

(declare-fun res!813961 () Bool)

(assert (=> b!1224750 (=> res!813961 e!695649)))

(assert (=> b!1224750 (= res!813961 (bvsgt from!1455 i!673))))

(assert (=> b!1224750 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!557788 () Unit!40520)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79028 (_ BitVec 64) (_ BitVec 32)) Unit!40520)

(assert (=> b!1224750 (= lt!557788 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1224751 () Bool)

(declare-fun Unit!40523 () Unit!40520)

(assert (=> b!1224751 (= e!695645 Unit!40523)))

(declare-fun b!1224752 () Bool)

(declare-fun res!813962 () Bool)

(assert (=> b!1224752 (=> (not res!813962) (not e!695641))))

(assert (=> b!1224752 (= res!813962 (= (select (arr!38137 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!48601 () Bool)

(declare-fun mapRes!48601 () Bool)

(declare-fun tp!92340 () Bool)

(declare-fun e!695651 () Bool)

(assert (=> mapNonEmpty!48601 (= mapRes!48601 (and tp!92340 e!695651))))

(declare-fun mapRest!48601 () (Array (_ BitVec 32) ValueCell!14858))

(declare-fun mapKey!48601 () (_ BitVec 32))

(declare-fun mapValue!48601 () ValueCell!14858)

(assert (=> mapNonEmpty!48601 (= (arr!38138 _values!996) (store mapRest!48601 mapKey!48601 mapValue!48601))))

(declare-fun b!1224753 () Bool)

(declare-fun e!695642 () Bool)

(assert (=> b!1224753 (= e!695652 (and e!695642 mapRes!48601))))

(declare-fun condMapEmpty!48601 () Bool)

(declare-fun mapDefault!48601 () ValueCell!14858)

