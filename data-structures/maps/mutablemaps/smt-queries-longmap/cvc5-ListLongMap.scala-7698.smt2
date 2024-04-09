; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96676 () Bool)

(assert start!96676)

(declare-fun b_free!23113 () Bool)

(declare-fun b_next!23113 () Bool)

(assert (=> start!96676 (= b_free!23113 (not b_next!23113))))

(declare-fun tp!81278 () Bool)

(declare-fun b_and!36963 () Bool)

(assert (=> start!96676 (= tp!81278 b_and!36963)))

(declare-fun e!627377 () Bool)

(declare-datatypes ((V!41345 0))(
  ( (V!41346 (val!13638 Int)) )
))
(declare-datatypes ((tuple2!17396 0))(
  ( (tuple2!17397 (_1!8708 (_ BitVec 64)) (_2!8708 V!41345)) )
))
(declare-datatypes ((List!24071 0))(
  ( (Nil!24068) (Cons!24067 (h!25276 tuple2!17396) (t!34237 List!24071)) )
))
(declare-datatypes ((ListLongMap!15377 0))(
  ( (ListLongMap!15378 (toList!7704 List!24071)) )
))
(declare-fun lt!492093 () ListLongMap!15377)

(declare-fun b!1099126 () Bool)

(declare-fun lt!492091 () ListLongMap!15377)

(declare-fun zeroValue!831 () V!41345)

(declare-fun +!3339 (ListLongMap!15377 tuple2!17396) ListLongMap!15377)

(assert (=> b!1099126 (= e!627377 (= lt!492093 (+!3339 lt!492091 (tuple2!17397 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))))

(declare-fun b!1099127 () Bool)

(declare-fun res!733606 () Bool)

(declare-fun e!627376 () Bool)

(assert (=> b!1099127 (=> (not res!733606) (not e!627376))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71194 0))(
  ( (array!71195 (arr!34261 (Array (_ BitVec 32) (_ BitVec 64))) (size!34798 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71194)

(assert (=> b!1099127 (= res!733606 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34798 _keys!1070))))))

(declare-fun b!1099128 () Bool)

(declare-fun res!733608 () Bool)

(assert (=> b!1099128 (=> (not res!733608) (not e!627376))))

(declare-datatypes ((List!24072 0))(
  ( (Nil!24069) (Cons!24068 (h!25277 (_ BitVec 64)) (t!34238 List!24072)) )
))
(declare-fun arrayNoDuplicates!0 (array!71194 (_ BitVec 32) List!24072) Bool)

(assert (=> b!1099128 (= res!733608 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24069))))

(declare-fun b!1099129 () Bool)

(declare-fun e!627375 () Bool)

(assert (=> b!1099129 (= e!627376 e!627375)))

(declare-fun res!733610 () Bool)

(assert (=> b!1099129 (=> (not res!733610) (not e!627375))))

(declare-fun lt!492092 () array!71194)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71194 (_ BitVec 32)) Bool)

(assert (=> b!1099129 (= res!733610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492092 mask!1414))))

(assert (=> b!1099129 (= lt!492092 (array!71195 (store (arr!34261 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34798 _keys!1070)))))

(declare-fun b!1099130 () Bool)

(declare-fun res!733607 () Bool)

(assert (=> b!1099130 (=> (not res!733607) (not e!627375))))

(assert (=> b!1099130 (= res!733607 (arrayNoDuplicates!0 lt!492092 #b00000000000000000000000000000000 Nil!24069))))

(declare-fun b!1099131 () Bool)

(declare-fun e!627371 () Bool)

(declare-fun tp_is_empty!27163 () Bool)

(assert (=> b!1099131 (= e!627371 tp_is_empty!27163)))

(declare-fun b!1099132 () Bool)

(declare-fun res!733612 () Bool)

(assert (=> b!1099132 (=> (not res!733612) (not e!627376))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1099132 (= res!733612 (validKeyInArray!0 k!904))))

(declare-fun b!1099133 () Bool)

(declare-fun res!733615 () Bool)

(assert (=> b!1099133 (=> (not res!733615) (not e!627376))))

(assert (=> b!1099133 (= res!733615 (= (select (arr!34261 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!42517 () Bool)

(declare-fun mapRes!42517 () Bool)

(assert (=> mapIsEmpty!42517 mapRes!42517))

(declare-fun res!733611 () Bool)

(assert (=> start!96676 (=> (not res!733611) (not e!627376))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96676 (= res!733611 (validMask!0 mask!1414))))

(assert (=> start!96676 e!627376))

(assert (=> start!96676 tp!81278))

(assert (=> start!96676 true))

(assert (=> start!96676 tp_is_empty!27163))

(declare-fun array_inv!26252 (array!71194) Bool)

(assert (=> start!96676 (array_inv!26252 _keys!1070)))

(declare-datatypes ((ValueCell!12872 0))(
  ( (ValueCellFull!12872 (v!16264 V!41345)) (EmptyCell!12872) )
))
(declare-datatypes ((array!71196 0))(
  ( (array!71197 (arr!34262 (Array (_ BitVec 32) ValueCell!12872)) (size!34799 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71196)

(declare-fun e!627373 () Bool)

(declare-fun array_inv!26253 (array!71196) Bool)

(assert (=> start!96676 (and (array_inv!26253 _values!874) e!627373)))

(declare-fun b!1099134 () Bool)

(declare-fun e!627372 () Bool)

(assert (=> b!1099134 (= e!627372 tp_is_empty!27163)))

(declare-fun b!1099135 () Bool)

(declare-fun res!733613 () Bool)

(assert (=> b!1099135 (=> (not res!733613) (not e!627376))))

(assert (=> b!1099135 (= res!733613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!42517 () Bool)

(declare-fun tp!81279 () Bool)

(assert (=> mapNonEmpty!42517 (= mapRes!42517 (and tp!81279 e!627371))))

(declare-fun mapValue!42517 () ValueCell!12872)

(declare-fun mapKey!42517 () (_ BitVec 32))

(declare-fun mapRest!42517 () (Array (_ BitVec 32) ValueCell!12872))

(assert (=> mapNonEmpty!42517 (= (arr!34262 _values!874) (store mapRest!42517 mapKey!42517 mapValue!42517))))

(declare-fun b!1099136 () Bool)

(assert (=> b!1099136 (= e!627373 (and e!627372 mapRes!42517))))

(declare-fun condMapEmpty!42517 () Bool)

(declare-fun mapDefault!42517 () ValueCell!12872)

