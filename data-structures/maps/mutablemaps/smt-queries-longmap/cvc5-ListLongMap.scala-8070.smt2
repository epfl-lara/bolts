; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99322 () Bool)

(assert start!99322)

(declare-fun b_free!24865 () Bool)

(declare-fun b_next!24865 () Bool)

(assert (=> start!99322 (= b_free!24865 (not b_next!24865))))

(declare-fun tp!87310 () Bool)

(declare-fun b_and!40611 () Bool)

(assert (=> start!99322 (= tp!87310 b_and!40611)))

(declare-fun b!1169610 () Bool)

(declare-fun res!776211 () Bool)

(declare-fun e!664791 () Bool)

(assert (=> b!1169610 (=> (not res!776211) (not e!664791))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169610 (= res!776211 (validKeyInArray!0 k!934))))

(declare-fun b!1169611 () Bool)

(declare-fun e!664785 () Bool)

(declare-fun e!664788 () Bool)

(assert (=> b!1169611 (= e!664785 e!664788)))

(declare-fun res!776205 () Bool)

(assert (=> b!1169611 (=> res!776205 e!664788)))

(declare-datatypes ((array!75566 0))(
  ( (array!75567 (arr!36429 (Array (_ BitVec 32) (_ BitVec 64))) (size!36966 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75566)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1169611 (= res!776205 (not (= (select (arr!36429 _keys!1208) from!1455) k!934)))))

(declare-fun b!1169612 () Bool)

(declare-fun res!776209 () Bool)

(declare-fun e!664786 () Bool)

(assert (=> b!1169612 (=> (not res!776209) (not e!664786))))

(declare-fun lt!526666 () array!75566)

(declare-datatypes ((List!25696 0))(
  ( (Nil!25693) (Cons!25692 (h!26901 (_ BitVec 64)) (t!37560 List!25696)) )
))
(declare-fun arrayNoDuplicates!0 (array!75566 (_ BitVec 32) List!25696) Bool)

(assert (=> b!1169612 (= res!776209 (arrayNoDuplicates!0 lt!526666 #b00000000000000000000000000000000 Nil!25693))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun b!1169613 () Bool)

(declare-fun arrayContainsKey!0 (array!75566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169613 (= e!664788 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1169614 () Bool)

(declare-fun res!776210 () Bool)

(assert (=> b!1169614 (=> (not res!776210) (not e!664791))))

(assert (=> b!1169614 (= res!776210 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25693))))

(declare-fun b!1169615 () Bool)

(declare-fun res!776198 () Bool)

(assert (=> b!1169615 (=> (not res!776198) (not e!664791))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1169615 (= res!776198 (validMask!0 mask!1564))))

(declare-fun b!1169616 () Bool)

(declare-fun e!664795 () Bool)

(assert (=> b!1169616 (= e!664786 (not e!664795))))

(declare-fun res!776212 () Bool)

(assert (=> b!1169616 (=> res!776212 e!664795)))

(assert (=> b!1169616 (= res!776212 (bvsgt from!1455 i!673))))

(assert (=> b!1169616 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38480 0))(
  ( (Unit!38481) )
))
(declare-fun lt!526665 () Unit!38480)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75566 (_ BitVec 64) (_ BitVec 32)) Unit!38480)

(assert (=> b!1169616 (= lt!526665 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1169617 () Bool)

(declare-fun e!664794 () Bool)

(declare-fun e!664792 () Bool)

(assert (=> b!1169617 (= e!664794 e!664792)))

(declare-fun res!776207 () Bool)

(assert (=> b!1169617 (=> res!776207 e!664792)))

(assert (=> b!1169617 (= res!776207 (not (validKeyInArray!0 (select (arr!36429 _keys!1208) from!1455))))))

(declare-datatypes ((V!44321 0))(
  ( (V!44322 (val!14754 Int)) )
))
(declare-datatypes ((tuple2!18924 0))(
  ( (tuple2!18925 (_1!9472 (_ BitVec 64)) (_2!9472 V!44321)) )
))
(declare-datatypes ((List!25697 0))(
  ( (Nil!25694) (Cons!25693 (h!26902 tuple2!18924) (t!37561 List!25697)) )
))
(declare-datatypes ((ListLongMap!16905 0))(
  ( (ListLongMap!16906 (toList!8468 List!25697)) )
))
(declare-fun lt!526659 () ListLongMap!16905)

(declare-fun lt!526667 () ListLongMap!16905)

(assert (=> b!1169617 (= lt!526659 lt!526667)))

(declare-fun lt!526661 () ListLongMap!16905)

(declare-fun -!1491 (ListLongMap!16905 (_ BitVec 64)) ListLongMap!16905)

(assert (=> b!1169617 (= lt!526667 (-!1491 lt!526661 k!934))))

(declare-fun zeroValue!944 () V!44321)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13988 0))(
  ( (ValueCellFull!13988 (v!17393 V!44321)) (EmptyCell!13988) )
))
(declare-datatypes ((array!75568 0))(
  ( (array!75569 (arr!36430 (Array (_ BitVec 32) ValueCell!13988)) (size!36967 (_ BitVec 32))) )
))
(declare-fun lt!526664 () array!75568)

(declare-fun minValue!944 () V!44321)

(declare-fun getCurrentListMapNoExtraKeys!4901 (array!75566 array!75568 (_ BitVec 32) (_ BitVec 32) V!44321 V!44321 (_ BitVec 32) Int) ListLongMap!16905)

(assert (=> b!1169617 (= lt!526659 (getCurrentListMapNoExtraKeys!4901 lt!526666 lt!526664 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75568)

(assert (=> b!1169617 (= lt!526661 (getCurrentListMapNoExtraKeys!4901 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!526663 () Unit!38480)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!715 (array!75566 array!75568 (_ BitVec 32) (_ BitVec 32) V!44321 V!44321 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38480)

(assert (=> b!1169617 (= lt!526663 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!715 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1169618 () Bool)

(declare-fun res!776204 () Bool)

(assert (=> b!1169618 (=> (not res!776204) (not e!664791))))

(assert (=> b!1169618 (= res!776204 (and (= (size!36967 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36966 _keys!1208) (size!36967 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!45920 () Bool)

(declare-fun mapRes!45920 () Bool)

(declare-fun tp!87309 () Bool)

(declare-fun e!664787 () Bool)

(assert (=> mapNonEmpty!45920 (= mapRes!45920 (and tp!87309 e!664787))))

(declare-fun mapValue!45920 () ValueCell!13988)

(declare-fun mapRest!45920 () (Array (_ BitVec 32) ValueCell!13988))

(declare-fun mapKey!45920 () (_ BitVec 32))

(assert (=> mapNonEmpty!45920 (= (arr!36430 _values!996) (store mapRest!45920 mapKey!45920 mapValue!45920))))

(declare-fun b!1169619 () Bool)

(declare-fun e!664790 () Bool)

(declare-fun e!664789 () Bool)

(assert (=> b!1169619 (= e!664790 (and e!664789 mapRes!45920))))

(declare-fun condMapEmpty!45920 () Bool)

(declare-fun mapDefault!45920 () ValueCell!13988)

