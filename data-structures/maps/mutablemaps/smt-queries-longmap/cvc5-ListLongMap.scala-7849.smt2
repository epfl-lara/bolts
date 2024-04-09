; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97874 () Bool)

(assert start!97874)

(declare-fun b_free!23539 () Bool)

(declare-fun b_next!23539 () Bool)

(assert (=> start!97874 (= b_free!23539 (not b_next!23539))))

(declare-fun tp!83322 () Bool)

(declare-fun b_and!37883 () Bool)

(assert (=> start!97874 (= tp!83322 b_and!37883)))

(declare-fun b!1119756 () Bool)

(declare-fun res!748075 () Bool)

(declare-fun e!637723 () Bool)

(assert (=> b!1119756 (=> (not res!748075) (not e!637723))))

(declare-datatypes ((array!72964 0))(
  ( (array!72965 (arr!35131 (Array (_ BitVec 32) (_ BitVec 64))) (size!35668 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72964)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72964 (_ BitVec 32)) Bool)

(assert (=> b!1119756 (= res!748075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1119758 () Bool)

(declare-fun res!748069 () Bool)

(assert (=> b!1119758 (=> (not res!748069) (not e!637723))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42553 0))(
  ( (V!42554 (val!14091 Int)) )
))
(declare-datatypes ((ValueCell!13325 0))(
  ( (ValueCellFull!13325 (v!16725 V!42553)) (EmptyCell!13325) )
))
(declare-datatypes ((array!72966 0))(
  ( (array!72967 (arr!35132 (Array (_ BitVec 32) ValueCell!13325)) (size!35669 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72966)

(assert (=> b!1119758 (= res!748069 (and (= (size!35669 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35668 _keys!1208) (size!35669 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119759 () Bool)

(declare-fun e!637721 () Bool)

(declare-fun e!637727 () Bool)

(assert (=> b!1119759 (= e!637721 (not e!637727))))

(declare-fun res!748077 () Bool)

(assert (=> b!1119759 (=> res!748077 e!637727)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1119759 (= res!748077 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72964 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119759 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36661 0))(
  ( (Unit!36662) )
))
(declare-fun lt!497825 () Unit!36661)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72964 (_ BitVec 64) (_ BitVec 32)) Unit!36661)

(assert (=> b!1119759 (= lt!497825 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1119760 () Bool)

(assert (=> b!1119760 (= e!637727 true)))

(declare-fun zeroValue!944 () V!42553)

(declare-datatypes ((tuple2!17736 0))(
  ( (tuple2!17737 (_1!8878 (_ BitVec 64)) (_2!8878 V!42553)) )
))
(declare-datatypes ((List!24572 0))(
  ( (Nil!24569) (Cons!24568 (h!25777 tuple2!17736) (t!35110 List!24572)) )
))
(declare-datatypes ((ListLongMap!15717 0))(
  ( (ListLongMap!15718 (toList!7874 List!24572)) )
))
(declare-fun lt!497824 () ListLongMap!15717)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!497823 () array!72964)

(declare-fun minValue!944 () V!42553)

(declare-fun getCurrentListMapNoExtraKeys!4335 (array!72964 array!72966 (_ BitVec 32) (_ BitVec 32) V!42553 V!42553 (_ BitVec 32) Int) ListLongMap!15717)

(declare-fun dynLambda!2437 (Int (_ BitVec 64)) V!42553)

(assert (=> b!1119760 (= lt!497824 (getCurrentListMapNoExtraKeys!4335 lt!497823 (array!72967 (store (arr!35132 _values!996) i!673 (ValueCellFull!13325 (dynLambda!2437 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35669 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497826 () ListLongMap!15717)

(assert (=> b!1119760 (= lt!497826 (getCurrentListMapNoExtraKeys!4335 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119761 () Bool)

(declare-fun res!748070 () Bool)

(assert (=> b!1119761 (=> (not res!748070) (not e!637721))))

(declare-datatypes ((List!24573 0))(
  ( (Nil!24570) (Cons!24569 (h!25778 (_ BitVec 64)) (t!35111 List!24573)) )
))
(declare-fun arrayNoDuplicates!0 (array!72964 (_ BitVec 32) List!24573) Bool)

(assert (=> b!1119761 (= res!748070 (arrayNoDuplicates!0 lt!497823 #b00000000000000000000000000000000 Nil!24570))))

(declare-fun b!1119762 () Bool)

(declare-fun e!637725 () Bool)

(declare-fun e!637726 () Bool)

(declare-fun mapRes!43921 () Bool)

(assert (=> b!1119762 (= e!637725 (and e!637726 mapRes!43921))))

(declare-fun condMapEmpty!43921 () Bool)

(declare-fun mapDefault!43921 () ValueCell!13325)

