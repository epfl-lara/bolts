; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97566 () Bool)

(assert start!97566)

(declare-fun b!1113547 () Bool)

(declare-fun res!743298 () Bool)

(declare-fun e!634799 () Bool)

(assert (=> b!1113547 (=> (not res!743298) (not e!634799))))

(declare-datatypes ((array!72374 0))(
  ( (array!72375 (arr!34836 (Array (_ BitVec 32) (_ BitVec 64))) (size!35373 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72374)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42141 0))(
  ( (V!42142 (val!13937 Int)) )
))
(declare-datatypes ((ValueCell!13171 0))(
  ( (ValueCellFull!13171 (v!16571 V!42141)) (EmptyCell!13171) )
))
(declare-datatypes ((array!72376 0))(
  ( (array!72377 (arr!34837 (Array (_ BitVec 32) ValueCell!13171)) (size!35374 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72376)

(assert (=> b!1113547 (= res!743298 (and (= (size!35374 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35373 _keys!1208) (size!35374 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113548 () Bool)

(declare-fun res!743299 () Bool)

(assert (=> b!1113548 (=> (not res!743299) (not e!634799))))

(declare-datatypes ((List!24420 0))(
  ( (Nil!24417) (Cons!24416 (h!25625 (_ BitVec 64)) (t!34908 List!24420)) )
))
(declare-fun arrayNoDuplicates!0 (array!72374 (_ BitVec 32) List!24420) Bool)

(assert (=> b!1113548 (= res!743299 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24417))))

(declare-fun b!1113549 () Bool)

(declare-fun res!743293 () Bool)

(assert (=> b!1113549 (=> (not res!743293) (not e!634799))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1113549 (= res!743293 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35373 _keys!1208))))))

(declare-fun b!1113550 () Bool)

(declare-fun res!743300 () Bool)

(assert (=> b!1113550 (=> (not res!743300) (not e!634799))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113550 (= res!743300 (validKeyInArray!0 k!934))))

(declare-fun b!1113551 () Bool)

(declare-fun res!743292 () Bool)

(declare-fun e!634796 () Bool)

(assert (=> b!1113551 (=> (not res!743292) (not e!634796))))

(declare-fun lt!496670 () array!72374)

(assert (=> b!1113551 (= res!743292 (arrayNoDuplicates!0 lt!496670 #b00000000000000000000000000000000 Nil!24417))))

(declare-fun b!1113552 () Bool)

(declare-fun res!743301 () Bool)

(assert (=> b!1113552 (=> (not res!743301) (not e!634799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113552 (= res!743301 (validMask!0 mask!1564))))

(declare-fun b!1113553 () Bool)

(assert (=> b!1113553 (= e!634799 e!634796)))

(declare-fun res!743297 () Bool)

(assert (=> b!1113553 (=> (not res!743297) (not e!634796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72374 (_ BitVec 32)) Bool)

(assert (=> b!1113553 (= res!743297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496670 mask!1564))))

(assert (=> b!1113553 (= lt!496670 (array!72375 (store (arr!34836 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35373 _keys!1208)))))

(declare-fun b!1113554 () Bool)

(declare-fun e!634798 () Bool)

(declare-fun tp_is_empty!27761 () Bool)

(assert (=> b!1113554 (= e!634798 tp_is_empty!27761)))

(declare-fun mapIsEmpty!43459 () Bool)

(declare-fun mapRes!43459 () Bool)

(assert (=> mapIsEmpty!43459 mapRes!43459))

(declare-fun b!1113555 () Bool)

(assert (=> b!1113555 (= e!634796 (not true))))

(declare-fun arrayContainsKey!0 (array!72374 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113555 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36453 0))(
  ( (Unit!36454) )
))
(declare-fun lt!496671 () Unit!36453)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72374 (_ BitVec 64) (_ BitVec 32)) Unit!36453)

(assert (=> b!1113555 (= lt!496671 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1113556 () Bool)

(declare-fun res!743296 () Bool)

(assert (=> b!1113556 (=> (not res!743296) (not e!634799))))

(assert (=> b!1113556 (= res!743296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!43459 () Bool)

(declare-fun tp!82704 () Bool)

(assert (=> mapNonEmpty!43459 (= mapRes!43459 (and tp!82704 e!634798))))

(declare-fun mapKey!43459 () (_ BitVec 32))

(declare-fun mapRest!43459 () (Array (_ BitVec 32) ValueCell!13171))

(declare-fun mapValue!43459 () ValueCell!13171)

(assert (=> mapNonEmpty!43459 (= (arr!34837 _values!996) (store mapRest!43459 mapKey!43459 mapValue!43459))))

(declare-fun b!1113557 () Bool)

(declare-fun e!634794 () Bool)

(assert (=> b!1113557 (= e!634794 tp_is_empty!27761)))

(declare-fun b!1113558 () Bool)

(declare-fun e!634795 () Bool)

(assert (=> b!1113558 (= e!634795 (and e!634794 mapRes!43459))))

(declare-fun condMapEmpty!43459 () Bool)

(declare-fun mapDefault!43459 () ValueCell!13171)

