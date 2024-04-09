; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97844 () Bool)

(assert start!97844)

(declare-fun b_free!23509 () Bool)

(declare-fun b_next!23509 () Bool)

(assert (=> start!97844 (= b_free!23509 (not b_next!23509))))

(declare-fun tp!83232 () Bool)

(declare-fun b_and!37823 () Bool)

(assert (=> start!97844 (= tp!83232 b_and!37823)))

(declare-fun b!1119096 () Bool)

(declare-fun e!637407 () Bool)

(declare-fun e!637411 () Bool)

(assert (=> b!1119096 (= e!637407 (not e!637411))))

(declare-fun res!747573 () Bool)

(assert (=> b!1119096 (=> res!747573 e!637411)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1119096 (= res!747573 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!72906 0))(
  ( (array!72907 (arr!35102 (Array (_ BitVec 32) (_ BitVec 64))) (size!35639 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72906)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72906 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119096 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36637 0))(
  ( (Unit!36638) )
))
(declare-fun lt!497644 () Unit!36637)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72906 (_ BitVec 64) (_ BitVec 32)) Unit!36637)

(assert (=> b!1119096 (= lt!497644 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1119098 () Bool)

(declare-fun res!747578 () Bool)

(declare-fun e!637406 () Bool)

(assert (=> b!1119098 (=> (not res!747578) (not e!637406))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72906 (_ BitVec 32)) Bool)

(assert (=> b!1119098 (= res!747578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1119099 () Bool)

(declare-fun res!747574 () Bool)

(assert (=> b!1119099 (=> (not res!747574) (not e!637406))))

(assert (=> b!1119099 (= res!747574 (= (select (arr!35102 _keys!1208) i!673) k!934))))

(declare-fun b!1119100 () Bool)

(declare-fun res!747576 () Bool)

(assert (=> b!1119100 (=> (not res!747576) (not e!637406))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42513 0))(
  ( (V!42514 (val!14076 Int)) )
))
(declare-datatypes ((ValueCell!13310 0))(
  ( (ValueCellFull!13310 (v!16710 V!42513)) (EmptyCell!13310) )
))
(declare-datatypes ((array!72908 0))(
  ( (array!72909 (arr!35103 (Array (_ BitVec 32) ValueCell!13310)) (size!35640 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72908)

(assert (=> b!1119100 (= res!747576 (and (= (size!35640 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35639 _keys!1208) (size!35640 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119101 () Bool)

(declare-fun res!747582 () Bool)

(assert (=> b!1119101 (=> (not res!747582) (not e!637407))))

(declare-fun lt!497643 () array!72906)

(declare-datatypes ((List!24547 0))(
  ( (Nil!24544) (Cons!24543 (h!25752 (_ BitVec 64)) (t!35055 List!24547)) )
))
(declare-fun arrayNoDuplicates!0 (array!72906 (_ BitVec 32) List!24547) Bool)

(assert (=> b!1119101 (= res!747582 (arrayNoDuplicates!0 lt!497643 #b00000000000000000000000000000000 Nil!24544))))

(declare-fun b!1119102 () Bool)

(assert (=> b!1119102 (= e!637406 e!637407)))

(declare-fun res!747572 () Bool)

(assert (=> b!1119102 (=> (not res!747572) (not e!637407))))

(assert (=> b!1119102 (= res!747572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497643 mask!1564))))

(assert (=> b!1119102 (= lt!497643 (array!72907 (store (arr!35102 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35639 _keys!1208)))))

(declare-fun b!1119103 () Bool)

(assert (=> b!1119103 (= e!637411 true)))

(declare-fun zeroValue!944 () V!42513)

(declare-datatypes ((tuple2!17710 0))(
  ( (tuple2!17711 (_1!8865 (_ BitVec 64)) (_2!8865 V!42513)) )
))
(declare-datatypes ((List!24548 0))(
  ( (Nil!24545) (Cons!24544 (h!25753 tuple2!17710) (t!35056 List!24548)) )
))
(declare-datatypes ((ListLongMap!15691 0))(
  ( (ListLongMap!15692 (toList!7861 List!24548)) )
))
(declare-fun lt!497645 () ListLongMap!15691)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42513)

(declare-fun getCurrentListMapNoExtraKeys!4322 (array!72906 array!72908 (_ BitVec 32) (_ BitVec 32) V!42513 V!42513 (_ BitVec 32) Int) ListLongMap!15691)

(declare-fun dynLambda!2424 (Int (_ BitVec 64)) V!42513)

(assert (=> b!1119103 (= lt!497645 (getCurrentListMapNoExtraKeys!4322 lt!497643 (array!72909 (store (arr!35103 _values!996) i!673 (ValueCellFull!13310 (dynLambda!2424 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35640 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497646 () ListLongMap!15691)

(assert (=> b!1119103 (= lt!497646 (getCurrentListMapNoExtraKeys!4322 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119104 () Bool)

(declare-fun e!637410 () Bool)

(declare-fun e!637409 () Bool)

(declare-fun mapRes!43876 () Bool)

(assert (=> b!1119104 (= e!637410 (and e!637409 mapRes!43876))))

(declare-fun condMapEmpty!43876 () Bool)

(declare-fun mapDefault!43876 () ValueCell!13310)

