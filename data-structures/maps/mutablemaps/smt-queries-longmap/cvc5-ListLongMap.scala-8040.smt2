; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99116 () Bool)

(assert start!99116)

(declare-fun b_free!24685 () Bool)

(declare-fun b_next!24685 () Bool)

(assert (=> start!99116 (= b_free!24685 (not b_next!24685))))

(declare-fun tp!86767 () Bool)

(declare-fun b_and!40233 () Bool)

(assert (=> start!99116 (= tp!86767 b_and!40233)))

(declare-fun b!1165130 () Bool)

(declare-fun e!662428 () Bool)

(assert (=> b!1165130 (= e!662428 true)))

(declare-datatypes ((V!44081 0))(
  ( (V!44082 (val!14664 Int)) )
))
(declare-fun zeroValue!944 () V!44081)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75214 0))(
  ( (array!75215 (arr!36254 (Array (_ BitVec 32) (_ BitVec 64))) (size!36791 (_ BitVec 32))) )
))
(declare-fun lt!524791 () array!75214)

(declare-datatypes ((ValueCell!13898 0))(
  ( (ValueCellFull!13898 (v!17302 V!44081)) (EmptyCell!13898) )
))
(declare-datatypes ((array!75216 0))(
  ( (array!75217 (arr!36255 (Array (_ BitVec 32) ValueCell!13898)) (size!36792 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75216)

(declare-fun minValue!944 () V!44081)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18776 0))(
  ( (tuple2!18777 (_1!9398 (_ BitVec 64)) (_2!9398 V!44081)) )
))
(declare-datatypes ((List!25552 0))(
  ( (Nil!25549) (Cons!25548 (h!26757 tuple2!18776) (t!37236 List!25552)) )
))
(declare-datatypes ((ListLongMap!16757 0))(
  ( (ListLongMap!16758 (toList!8394 List!25552)) )
))
(declare-fun lt!524790 () ListLongMap!16757)

(declare-fun getCurrentListMapNoExtraKeys!4827 (array!75214 array!75216 (_ BitVec 32) (_ BitVec 32) V!44081 V!44081 (_ BitVec 32) Int) ListLongMap!16757)

(declare-fun dynLambda!2824 (Int (_ BitVec 64)) V!44081)

(assert (=> b!1165130 (= lt!524790 (getCurrentListMapNoExtraKeys!4827 lt!524791 (array!75217 (store (arr!36255 _values!996) i!673 (ValueCellFull!13898 (dynLambda!2824 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36792 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!75214)

(declare-fun lt!524792 () ListLongMap!16757)

(assert (=> b!1165130 (= lt!524792 (getCurrentListMapNoExtraKeys!4827 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1165131 () Bool)

(declare-fun e!662424 () Bool)

(declare-fun e!662427 () Bool)

(assert (=> b!1165131 (= e!662424 e!662427)))

(declare-fun res!772793 () Bool)

(assert (=> b!1165131 (=> (not res!772793) (not e!662427))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75214 (_ BitVec 32)) Bool)

(assert (=> b!1165131 (= res!772793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524791 mask!1564))))

(assert (=> b!1165131 (= lt!524791 (array!75215 (store (arr!36254 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36791 _keys!1208)))))

(declare-fun b!1165133 () Bool)

(declare-fun res!772801 () Bool)

(assert (=> b!1165133 (=> (not res!772801) (not e!662424))))

(assert (=> b!1165133 (= res!772801 (and (= (size!36792 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36791 _keys!1208) (size!36792 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1165134 () Bool)

(declare-fun res!772800 () Bool)

(assert (=> b!1165134 (=> (not res!772800) (not e!662424))))

(assert (=> b!1165134 (= res!772800 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36791 _keys!1208))))))

(declare-fun b!1165135 () Bool)

(declare-fun res!772797 () Bool)

(assert (=> b!1165135 (=> (not res!772797) (not e!662424))))

(declare-datatypes ((List!25553 0))(
  ( (Nil!25550) (Cons!25549 (h!26758 (_ BitVec 64)) (t!37237 List!25553)) )
))
(declare-fun arrayNoDuplicates!0 (array!75214 (_ BitVec 32) List!25553) Bool)

(assert (=> b!1165135 (= res!772797 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25550))))

(declare-fun b!1165136 () Bool)

(declare-fun e!662430 () Bool)

(declare-fun tp_is_empty!29215 () Bool)

(assert (=> b!1165136 (= e!662430 tp_is_empty!29215)))

(declare-fun b!1165137 () Bool)

(declare-fun res!772795 () Bool)

(assert (=> b!1165137 (=> (not res!772795) (not e!662427))))

(assert (=> b!1165137 (= res!772795 (arrayNoDuplicates!0 lt!524791 #b00000000000000000000000000000000 Nil!25550))))

(declare-fun mapNonEmpty!45647 () Bool)

(declare-fun mapRes!45647 () Bool)

(declare-fun tp!86766 () Bool)

(assert (=> mapNonEmpty!45647 (= mapRes!45647 (and tp!86766 e!662430))))

(declare-fun mapRest!45647 () (Array (_ BitVec 32) ValueCell!13898))

(declare-fun mapKey!45647 () (_ BitVec 32))

(declare-fun mapValue!45647 () ValueCell!13898)

(assert (=> mapNonEmpty!45647 (= (arr!36255 _values!996) (store mapRest!45647 mapKey!45647 mapValue!45647))))

(declare-fun b!1165138 () Bool)

(declare-fun res!772796 () Bool)

(assert (=> b!1165138 (=> (not res!772796) (not e!662424))))

(assert (=> b!1165138 (= res!772796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1165139 () Bool)

(assert (=> b!1165139 (= e!662427 (not e!662428))))

(declare-fun res!772792 () Bool)

(assert (=> b!1165139 (=> res!772792 e!662428)))

(assert (=> b!1165139 (= res!772792 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165139 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38344 0))(
  ( (Unit!38345) )
))
(declare-fun lt!524793 () Unit!38344)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75214 (_ BitVec 64) (_ BitVec 32)) Unit!38344)

(assert (=> b!1165139 (= lt!524793 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!45647 () Bool)

(assert (=> mapIsEmpty!45647 mapRes!45647))

(declare-fun b!1165140 () Bool)

(declare-fun e!662429 () Bool)

(assert (=> b!1165140 (= e!662429 tp_is_empty!29215)))

(declare-fun b!1165141 () Bool)

(declare-fun e!662426 () Bool)

(assert (=> b!1165141 (= e!662426 (and e!662429 mapRes!45647))))

(declare-fun condMapEmpty!45647 () Bool)

(declare-fun mapDefault!45647 () ValueCell!13898)

