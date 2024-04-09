; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97150 () Bool)

(assert start!97150)

(declare-fun res!736968 () Bool)

(declare-fun e!630480 () Bool)

(assert (=> start!97150 (=> (not res!736968) (not e!630480))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71600 0))(
  ( (array!71601 (arr!34450 (Array (_ BitVec 32) (_ BitVec 64))) (size!34987 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71600)

(assert (=> start!97150 (= res!736968 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34987 _keys!1208))))))

(assert (=> start!97150 e!630480))

(declare-fun array_inv!26384 (array!71600) Bool)

(assert (=> start!97150 (array_inv!26384 _keys!1208)))

(assert (=> start!97150 true))

(declare-datatypes ((V!41609 0))(
  ( (V!41610 (val!13737 Int)) )
))
(declare-datatypes ((ValueCell!12971 0))(
  ( (ValueCellFull!12971 (v!16371 V!41609)) (EmptyCell!12971) )
))
(declare-datatypes ((array!71602 0))(
  ( (array!71603 (arr!34451 (Array (_ BitVec 32) ValueCell!12971)) (size!34988 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71602)

(declare-fun e!630477 () Bool)

(declare-fun array_inv!26385 (array!71602) Bool)

(assert (=> start!97150 (and (array_inv!26385 _values!996) e!630477)))

(declare-fun b!1104474 () Bool)

(declare-fun res!736975 () Bool)

(assert (=> b!1104474 (=> (not res!736975) (not e!630480))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71600 (_ BitVec 32)) Bool)

(assert (=> b!1104474 (= res!736975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!42856 () Bool)

(declare-fun mapRes!42856 () Bool)

(declare-fun tp!81777 () Bool)

(declare-fun e!630481 () Bool)

(assert (=> mapNonEmpty!42856 (= mapRes!42856 (and tp!81777 e!630481))))

(declare-fun mapKey!42856 () (_ BitVec 32))

(declare-fun mapRest!42856 () (Array (_ BitVec 32) ValueCell!12971))

(declare-fun mapValue!42856 () ValueCell!12971)

(assert (=> mapNonEmpty!42856 (= (arr!34451 _values!996) (store mapRest!42856 mapKey!42856 mapValue!42856))))

(declare-fun mapIsEmpty!42856 () Bool)

(assert (=> mapIsEmpty!42856 mapRes!42856))

(declare-fun b!1104475 () Bool)

(declare-fun res!736974 () Bool)

(assert (=> b!1104475 (=> (not res!736974) (not e!630480))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1104475 (= res!736974 (= (select (arr!34450 _keys!1208) i!673) k!934))))

(declare-fun b!1104476 () Bool)

(declare-fun res!736971 () Bool)

(assert (=> b!1104476 (=> (not res!736971) (not e!630480))))

(declare-datatypes ((List!24179 0))(
  ( (Nil!24176) (Cons!24175 (h!25384 (_ BitVec 64)) (t!34451 List!24179)) )
))
(declare-fun arrayNoDuplicates!0 (array!71600 (_ BitVec 32) List!24179) Bool)

(assert (=> b!1104476 (= res!736971 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24176))))

(declare-fun b!1104477 () Bool)

(declare-fun e!630476 () Bool)

(assert (=> b!1104477 (= e!630480 e!630476)))

(declare-fun res!736970 () Bool)

(assert (=> b!1104477 (=> (not res!736970) (not e!630476))))

(declare-fun lt!495132 () array!71600)

(assert (=> b!1104477 (= res!736970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495132 mask!1564))))

(assert (=> b!1104477 (= lt!495132 (array!71601 (store (arr!34450 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34987 _keys!1208)))))

(declare-fun b!1104478 () Bool)

(assert (=> b!1104478 (= e!630476 false)))

(declare-fun lt!495131 () Bool)

(assert (=> b!1104478 (= lt!495131 (arrayNoDuplicates!0 lt!495132 #b00000000000000000000000000000000 Nil!24176))))

(declare-fun b!1104479 () Bool)

(declare-fun res!736969 () Bool)

(assert (=> b!1104479 (=> (not res!736969) (not e!630480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104479 (= res!736969 (validMask!0 mask!1564))))

(declare-fun b!1104480 () Bool)

(declare-fun e!630479 () Bool)

(declare-fun tp_is_empty!27361 () Bool)

(assert (=> b!1104480 (= e!630479 tp_is_empty!27361)))

(declare-fun b!1104481 () Bool)

(declare-fun res!736967 () Bool)

(assert (=> b!1104481 (=> (not res!736967) (not e!630480))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104481 (= res!736967 (validKeyInArray!0 k!934))))

(declare-fun b!1104482 () Bool)

(declare-fun res!736973 () Bool)

(assert (=> b!1104482 (=> (not res!736973) (not e!630480))))

(assert (=> b!1104482 (= res!736973 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34987 _keys!1208))))))

(declare-fun b!1104483 () Bool)

(assert (=> b!1104483 (= e!630481 tp_is_empty!27361)))

(declare-fun b!1104484 () Bool)

(declare-fun res!736972 () Bool)

(assert (=> b!1104484 (=> (not res!736972) (not e!630480))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1104484 (= res!736972 (and (= (size!34988 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34987 _keys!1208) (size!34988 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1104485 () Bool)

(assert (=> b!1104485 (= e!630477 (and e!630479 mapRes!42856))))

(declare-fun condMapEmpty!42856 () Bool)

(declare-fun mapDefault!42856 () ValueCell!12971)

