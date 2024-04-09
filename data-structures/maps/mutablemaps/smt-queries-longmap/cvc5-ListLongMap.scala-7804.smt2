; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97604 () Bool)

(assert start!97604)

(declare-fun b!1114288 () Bool)

(declare-fun res!743864 () Bool)

(declare-fun e!635141 () Bool)

(assert (=> b!1114288 (=> (not res!743864) (not e!635141))))

(declare-datatypes ((array!72446 0))(
  ( (array!72447 (arr!34872 (Array (_ BitVec 32) (_ BitVec 64))) (size!35409 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72446)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72446 (_ BitVec 32)) Bool)

(assert (=> b!1114288 (= res!743864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1114289 () Bool)

(declare-fun e!635140 () Bool)

(declare-fun tp_is_empty!27799 () Bool)

(assert (=> b!1114289 (= e!635140 tp_is_empty!27799)))

(declare-fun b!1114291 () Bool)

(declare-fun res!743870 () Bool)

(assert (=> b!1114291 (=> (not res!743870) (not e!635141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114291 (= res!743870 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!43516 () Bool)

(declare-fun mapRes!43516 () Bool)

(declare-fun tp!82761 () Bool)

(declare-fun e!635137 () Bool)

(assert (=> mapNonEmpty!43516 (= mapRes!43516 (and tp!82761 e!635137))))

(declare-datatypes ((V!42193 0))(
  ( (V!42194 (val!13956 Int)) )
))
(declare-datatypes ((ValueCell!13190 0))(
  ( (ValueCellFull!13190 (v!16590 V!42193)) (EmptyCell!13190) )
))
(declare-fun mapValue!43516 () ValueCell!13190)

(declare-fun mapKey!43516 () (_ BitVec 32))

(declare-datatypes ((array!72448 0))(
  ( (array!72449 (arr!34873 (Array (_ BitVec 32) ValueCell!13190)) (size!35410 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72448)

(declare-fun mapRest!43516 () (Array (_ BitVec 32) ValueCell!13190))

(assert (=> mapNonEmpty!43516 (= (arr!34873 _values!996) (store mapRest!43516 mapKey!43516 mapValue!43516))))

(declare-fun b!1114292 () Bool)

(declare-fun res!743871 () Bool)

(assert (=> b!1114292 (=> (not res!743871) (not e!635141))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1114292 (= res!743871 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35409 _keys!1208))))))

(declare-fun b!1114293 () Bool)

(declare-fun res!743869 () Bool)

(assert (=> b!1114293 (=> (not res!743869) (not e!635141))))

(declare-datatypes ((List!24433 0))(
  ( (Nil!24430) (Cons!24429 (h!25638 (_ BitVec 64)) (t!34921 List!24433)) )
))
(declare-fun arrayNoDuplicates!0 (array!72446 (_ BitVec 32) List!24433) Bool)

(assert (=> b!1114293 (= res!743869 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24430))))

(declare-fun b!1114294 () Bool)

(declare-fun e!635139 () Bool)

(assert (=> b!1114294 (= e!635141 e!635139)))

(declare-fun res!743865 () Bool)

(assert (=> b!1114294 (=> (not res!743865) (not e!635139))))

(declare-fun lt!496784 () array!72446)

(assert (=> b!1114294 (= res!743865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496784 mask!1564))))

(assert (=> b!1114294 (= lt!496784 (array!72447 (store (arr!34872 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35409 _keys!1208)))))

(declare-fun b!1114295 () Bool)

(declare-fun res!743866 () Bool)

(assert (=> b!1114295 (=> (not res!743866) (not e!635141))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1114295 (= res!743866 (= (select (arr!34872 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!43516 () Bool)

(assert (=> mapIsEmpty!43516 mapRes!43516))

(declare-fun b!1114296 () Bool)

(declare-fun res!743867 () Bool)

(assert (=> b!1114296 (=> (not res!743867) (not e!635141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114296 (= res!743867 (validKeyInArray!0 k!934))))

(declare-fun res!743862 () Bool)

(assert (=> start!97604 (=> (not res!743862) (not e!635141))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97604 (= res!743862 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35409 _keys!1208))))))

(assert (=> start!97604 e!635141))

(declare-fun array_inv!26678 (array!72446) Bool)

(assert (=> start!97604 (array_inv!26678 _keys!1208)))

(assert (=> start!97604 true))

(declare-fun e!635138 () Bool)

(declare-fun array_inv!26679 (array!72448) Bool)

(assert (=> start!97604 (and (array_inv!26679 _values!996) e!635138)))

(declare-fun b!1114290 () Bool)

(assert (=> b!1114290 (= e!635137 tp_is_empty!27799)))

(declare-fun b!1114297 () Bool)

(declare-fun res!743863 () Bool)

(assert (=> b!1114297 (=> (not res!743863) (not e!635139))))

(assert (=> b!1114297 (= res!743863 (arrayNoDuplicates!0 lt!496784 #b00000000000000000000000000000000 Nil!24430))))

(declare-fun b!1114298 () Bool)

(declare-fun res!743868 () Bool)

(assert (=> b!1114298 (=> (not res!743868) (not e!635141))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1114298 (= res!743868 (and (= (size!35410 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35409 _keys!1208) (size!35410 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114299 () Bool)

(assert (=> b!1114299 (= e!635138 (and e!635140 mapRes!43516))))

(declare-fun condMapEmpty!43516 () Bool)

(declare-fun mapDefault!43516 () ValueCell!13190)

