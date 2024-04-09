; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97688 () Bool)

(assert start!97688)

(declare-fun b!1115926 () Bool)

(declare-fun res!745129 () Bool)

(declare-fun e!635892 () Bool)

(assert (=> b!1115926 (=> (not res!745129) (not e!635892))))

(declare-datatypes ((array!72606 0))(
  ( (array!72607 (arr!34952 (Array (_ BitVec 32) (_ BitVec 64))) (size!35489 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72606)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72606 (_ BitVec 32)) Bool)

(assert (=> b!1115926 (= res!745129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115927 () Bool)

(declare-fun res!745128 () Bool)

(declare-fun e!635894 () Bool)

(assert (=> b!1115927 (=> (not res!745128) (not e!635894))))

(declare-fun lt!497037 () array!72606)

(declare-datatypes ((List!24464 0))(
  ( (Nil!24461) (Cons!24460 (h!25669 (_ BitVec 64)) (t!34952 List!24464)) )
))
(declare-fun arrayNoDuplicates!0 (array!72606 (_ BitVec 32) List!24464) Bool)

(assert (=> b!1115927 (= res!745128 (arrayNoDuplicates!0 lt!497037 #b00000000000000000000000000000000 Nil!24461))))

(declare-fun b!1115928 () Bool)

(declare-fun res!745127 () Bool)

(assert (=> b!1115928 (=> (not res!745127) (not e!635892))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1115928 (= res!745127 (= (select (arr!34952 _keys!1208) i!673) k!934))))

(declare-fun b!1115929 () Bool)

(assert (=> b!1115929 (= e!635892 e!635894)))

(declare-fun res!745130 () Bool)

(assert (=> b!1115929 (=> (not res!745130) (not e!635894))))

(assert (=> b!1115929 (= res!745130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497037 mask!1564))))

(assert (=> b!1115929 (= lt!497037 (array!72607 (store (arr!34952 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35489 _keys!1208)))))

(declare-fun mapNonEmpty!43642 () Bool)

(declare-fun mapRes!43642 () Bool)

(declare-fun tp!82887 () Bool)

(declare-fun e!635896 () Bool)

(assert (=> mapNonEmpty!43642 (= mapRes!43642 (and tp!82887 e!635896))))

(declare-fun mapKey!43642 () (_ BitVec 32))

(declare-datatypes ((V!42305 0))(
  ( (V!42306 (val!13998 Int)) )
))
(declare-datatypes ((ValueCell!13232 0))(
  ( (ValueCellFull!13232 (v!16632 V!42305)) (EmptyCell!13232) )
))
(declare-fun mapValue!43642 () ValueCell!13232)

(declare-fun mapRest!43642 () (Array (_ BitVec 32) ValueCell!13232))

(declare-datatypes ((array!72608 0))(
  ( (array!72609 (arr!34953 (Array (_ BitVec 32) ValueCell!13232)) (size!35490 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72608)

(assert (=> mapNonEmpty!43642 (= (arr!34953 _values!996) (store mapRest!43642 mapKey!43642 mapValue!43642))))

(declare-fun b!1115930 () Bool)

(assert (=> b!1115930 (= e!635894 (not true))))

(declare-fun arrayContainsKey!0 (array!72606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1115930 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36523 0))(
  ( (Unit!36524) )
))
(declare-fun lt!497036 () Unit!36523)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72606 (_ BitVec 64) (_ BitVec 32)) Unit!36523)

(assert (=> b!1115930 (= lt!497036 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1115932 () Bool)

(declare-fun res!745123 () Bool)

(assert (=> b!1115932 (=> (not res!745123) (not e!635892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115932 (= res!745123 (validMask!0 mask!1564))))

(declare-fun b!1115933 () Bool)

(declare-fun res!745124 () Bool)

(assert (=> b!1115933 (=> (not res!745124) (not e!635892))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115933 (= res!745124 (validKeyInArray!0 k!934))))

(declare-fun b!1115934 () Bool)

(declare-fun e!635895 () Bool)

(declare-fun tp_is_empty!27883 () Bool)

(assert (=> b!1115934 (= e!635895 tp_is_empty!27883)))

(declare-fun b!1115935 () Bool)

(declare-fun res!745126 () Bool)

(assert (=> b!1115935 (=> (not res!745126) (not e!635892))))

(assert (=> b!1115935 (= res!745126 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24461))))

(declare-fun b!1115931 () Bool)

(assert (=> b!1115931 (= e!635896 tp_is_empty!27883)))

(declare-fun res!745125 () Bool)

(assert (=> start!97688 (=> (not res!745125) (not e!635892))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97688 (= res!745125 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35489 _keys!1208))))))

(assert (=> start!97688 e!635892))

(declare-fun array_inv!26724 (array!72606) Bool)

(assert (=> start!97688 (array_inv!26724 _keys!1208)))

(assert (=> start!97688 true))

(declare-fun e!635897 () Bool)

(declare-fun array_inv!26725 (array!72608) Bool)

(assert (=> start!97688 (and (array_inv!26725 _values!996) e!635897)))

(declare-fun b!1115936 () Bool)

(declare-fun res!745131 () Bool)

(assert (=> b!1115936 (=> (not res!745131) (not e!635892))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1115936 (= res!745131 (and (= (size!35490 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35489 _keys!1208) (size!35490 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!43642 () Bool)

(assert (=> mapIsEmpty!43642 mapRes!43642))

(declare-fun b!1115937 () Bool)

(declare-fun res!745122 () Bool)

(assert (=> b!1115937 (=> (not res!745122) (not e!635892))))

(assert (=> b!1115937 (= res!745122 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35489 _keys!1208))))))

(declare-fun b!1115938 () Bool)

(assert (=> b!1115938 (= e!635897 (and e!635895 mapRes!43642))))

(declare-fun condMapEmpty!43642 () Bool)

(declare-fun mapDefault!43642 () ValueCell!13232)

