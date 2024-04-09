; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99386 () Bool)

(assert start!99386)

(declare-fun b_free!24929 () Bool)

(declare-fun b_next!24929 () Bool)

(assert (=> start!99386 (= b_free!24929 (not b_next!24929))))

(declare-fun tp!87501 () Bool)

(declare-fun b_and!40739 () Bool)

(assert (=> start!99386 (= tp!87501 b_and!40739)))

(declare-fun b!1171587 () Bool)

(declare-fun res!777824 () Bool)

(declare-fun e!665966 () Bool)

(assert (=> b!1171587 (=> (not res!777824) (not e!665966))))

(declare-datatypes ((array!75694 0))(
  ( (array!75695 (arr!36493 (Array (_ BitVec 32) (_ BitVec 64))) (size!37030 (_ BitVec 32))) )
))
(declare-fun lt!527770 () array!75694)

(declare-datatypes ((List!25754 0))(
  ( (Nil!25751) (Cons!25750 (h!26959 (_ BitVec 64)) (t!37682 List!25754)) )
))
(declare-fun arrayNoDuplicates!0 (array!75694 (_ BitVec 32) List!25754) Bool)

(assert (=> b!1171587 (= res!777824 (arrayNoDuplicates!0 lt!527770 #b00000000000000000000000000000000 Nil!25751))))

(declare-fun b!1171588 () Bool)

(declare-fun res!777827 () Bool)

(declare-fun e!665958 () Bool)

(assert (=> b!1171588 (=> (not res!777827) (not e!665958))))

(declare-fun _keys!1208 () array!75694)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1171588 (= res!777827 (= (select (arr!36493 _keys!1208) i!673) k!934))))

(declare-fun b!1171589 () Bool)

(declare-fun res!777831 () Bool)

(assert (=> b!1171589 (=> (not res!777831) (not e!665958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1171589 (= res!777831 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!46016 () Bool)

(declare-fun mapRes!46016 () Bool)

(declare-fun tp!87502 () Bool)

(declare-fun e!665959 () Bool)

(assert (=> mapNonEmpty!46016 (= mapRes!46016 (and tp!87502 e!665959))))

(declare-fun mapKey!46016 () (_ BitVec 32))

(declare-datatypes ((V!44405 0))(
  ( (V!44406 (val!14786 Int)) )
))
(declare-datatypes ((ValueCell!14020 0))(
  ( (ValueCellFull!14020 (v!17425 V!44405)) (EmptyCell!14020) )
))
(declare-fun mapValue!46016 () ValueCell!14020)

(declare-datatypes ((array!75696 0))(
  ( (array!75697 (arr!36494 (Array (_ BitVec 32) ValueCell!14020)) (size!37031 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75696)

(declare-fun mapRest!46016 () (Array (_ BitVec 32) ValueCell!14020))

(assert (=> mapNonEmpty!46016 (= (arr!36494 _values!996) (store mapRest!46016 mapKey!46016 mapValue!46016))))

(declare-fun b!1171590 () Bool)

(declare-fun res!777840 () Bool)

(assert (=> b!1171590 (=> (not res!777840) (not e!665958))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1171590 (= res!777840 (validMask!0 mask!1564))))

(declare-fun b!1171591 () Bool)

(declare-fun res!777828 () Bool)

(assert (=> b!1171591 (=> (not res!777828) (not e!665958))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1171591 (= res!777828 (and (= (size!37031 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37030 _keys!1208) (size!37031 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1171592 () Bool)

(declare-fun e!665967 () Bool)

(assert (=> b!1171592 (= e!665966 (not e!665967))))

(declare-fun res!777839 () Bool)

(assert (=> b!1171592 (=> res!777839 e!665967)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1171592 (= res!777839 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171592 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38540 0))(
  ( (Unit!38541) )
))
(declare-fun lt!527778 () Unit!38540)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75694 (_ BitVec 64) (_ BitVec 32)) Unit!38540)

(assert (=> b!1171592 (= lt!527778 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1171593 () Bool)

(declare-fun res!777830 () Bool)

(assert (=> b!1171593 (=> (not res!777830) (not e!665958))))

(assert (=> b!1171593 (= res!777830 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37030 _keys!1208))))))

(declare-fun b!1171594 () Bool)

(declare-fun e!665965 () Bool)

(assert (=> b!1171594 (= e!665967 e!665965)))

(declare-fun res!777825 () Bool)

(assert (=> b!1171594 (=> res!777825 e!665965)))

(assert (=> b!1171594 (= res!777825 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44405)

(declare-fun lt!527779 () array!75696)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18982 0))(
  ( (tuple2!18983 (_1!9501 (_ BitVec 64)) (_2!9501 V!44405)) )
))
(declare-datatypes ((List!25755 0))(
  ( (Nil!25752) (Cons!25751 (h!26960 tuple2!18982) (t!37683 List!25755)) )
))
(declare-datatypes ((ListLongMap!16963 0))(
  ( (ListLongMap!16964 (toList!8497 List!25755)) )
))
(declare-fun lt!527773 () ListLongMap!16963)

(declare-fun minValue!944 () V!44405)

(declare-fun getCurrentListMapNoExtraKeys!4929 (array!75694 array!75696 (_ BitVec 32) (_ BitVec 32) V!44405 V!44405 (_ BitVec 32) Int) ListLongMap!16963)

(assert (=> b!1171594 (= lt!527773 (getCurrentListMapNoExtraKeys!4929 lt!527770 lt!527779 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527775 () V!44405)

(assert (=> b!1171594 (= lt!527779 (array!75697 (store (arr!36494 _values!996) i!673 (ValueCellFull!14020 lt!527775)) (size!37031 _values!996)))))

(declare-fun dynLambda!2917 (Int (_ BitVec 64)) V!44405)

(assert (=> b!1171594 (= lt!527775 (dynLambda!2917 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527769 () ListLongMap!16963)

(assert (=> b!1171594 (= lt!527769 (getCurrentListMapNoExtraKeys!4929 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1171595 () Bool)

(declare-fun res!777833 () Bool)

(assert (=> b!1171595 (=> (not res!777833) (not e!665958))))

(assert (=> b!1171595 (= res!777833 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25751))))

(declare-fun b!1171596 () Bool)

(declare-fun res!777835 () Bool)

(declare-fun e!665968 () Bool)

(assert (=> b!1171596 (=> res!777835 e!665968)))

(declare-fun noDuplicate!1633 (List!25754) Bool)

(assert (=> b!1171596 (= res!777835 (not (noDuplicate!1633 Nil!25751)))))

(declare-fun b!1171598 () Bool)

(declare-fun e!665964 () Bool)

(assert (=> b!1171598 (= e!665965 e!665964)))

(declare-fun res!777836 () Bool)

(assert (=> b!1171598 (=> res!777836 e!665964)))

(assert (=> b!1171598 (= res!777836 (not (validKeyInArray!0 (select (arr!36493 _keys!1208) from!1455))))))

(declare-fun lt!527777 () ListLongMap!16963)

(declare-fun lt!527774 () ListLongMap!16963)

(assert (=> b!1171598 (= lt!527777 lt!527774)))

(declare-fun lt!527780 () ListLongMap!16963)

(declare-fun -!1513 (ListLongMap!16963 (_ BitVec 64)) ListLongMap!16963)

(assert (=> b!1171598 (= lt!527774 (-!1513 lt!527780 k!934))))

(assert (=> b!1171598 (= lt!527777 (getCurrentListMapNoExtraKeys!4929 lt!527770 lt!527779 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1171598 (= lt!527780 (getCurrentListMapNoExtraKeys!4929 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527772 () Unit!38540)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!737 (array!75694 array!75696 (_ BitVec 32) (_ BitVec 32) V!44405 V!44405 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38540)

(assert (=> b!1171598 (= lt!527772 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!737 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!665960 () Bool)

(declare-fun b!1171599 () Bool)

(assert (=> b!1171599 (= e!665960 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1171600 () Bool)

(declare-fun e!665957 () Bool)

(declare-fun e!665962 () Bool)

(assert (=> b!1171600 (= e!665957 (and e!665962 mapRes!46016))))

(declare-fun condMapEmpty!46016 () Bool)

(declare-fun mapDefault!46016 () ValueCell!14020)

