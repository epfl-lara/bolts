; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96680 () Bool)

(assert start!96680)

(declare-fun b_free!23117 () Bool)

(declare-fun b_next!23117 () Bool)

(assert (=> start!96680 (= b_free!23117 (not b_next!23117))))

(declare-fun tp!81290 () Bool)

(declare-fun b_and!36971 () Bool)

(assert (=> start!96680 (= tp!81290 b_and!36971)))

(declare-fun b!1099208 () Bool)

(declare-datatypes ((V!41349 0))(
  ( (V!41350 (val!13640 Int)) )
))
(declare-datatypes ((tuple2!17400 0))(
  ( (tuple2!17401 (_1!8710 (_ BitVec 64)) (_2!8710 V!41349)) )
))
(declare-datatypes ((List!24075 0))(
  ( (Nil!24072) (Cons!24071 (h!25280 tuple2!17400) (t!34245 List!24075)) )
))
(declare-datatypes ((ListLongMap!15381 0))(
  ( (ListLongMap!15382 (toList!7706 List!24075)) )
))
(declare-fun lt!492143 () ListLongMap!15381)

(declare-fun e!627418 () Bool)

(declare-fun lt!492146 () ListLongMap!15381)

(declare-fun zeroValue!831 () V!41349)

(declare-fun +!3341 (ListLongMap!15381 tuple2!17400) ListLongMap!15381)

(assert (=> b!1099208 (= e!627418 (= lt!492143 (+!3341 lt!492146 (tuple2!17401 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))))

(declare-fun mapNonEmpty!42523 () Bool)

(declare-fun mapRes!42523 () Bool)

(declare-fun tp!81291 () Bool)

(declare-fun e!627413 () Bool)

(assert (=> mapNonEmpty!42523 (= mapRes!42523 (and tp!81291 e!627413))))

(declare-datatypes ((ValueCell!12874 0))(
  ( (ValueCellFull!12874 (v!16266 V!41349)) (EmptyCell!12874) )
))
(declare-fun mapRest!42523 () (Array (_ BitVec 32) ValueCell!12874))

(declare-datatypes ((array!71202 0))(
  ( (array!71203 (arr!34265 (Array (_ BitVec 32) ValueCell!12874)) (size!34802 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71202)

(declare-fun mapValue!42523 () ValueCell!12874)

(declare-fun mapKey!42523 () (_ BitVec 32))

(assert (=> mapNonEmpty!42523 (= (arr!34265 _values!874) (store mapRest!42523 mapKey!42523 mapValue!42523))))

(declare-fun b!1099209 () Bool)

(declare-fun res!733675 () Bool)

(declare-fun e!627419 () Bool)

(assert (=> b!1099209 (=> (not res!733675) (not e!627419))))

(declare-datatypes ((array!71204 0))(
  ( (array!71205 (arr!34266 (Array (_ BitVec 32) (_ BitVec 64))) (size!34803 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71204)

(declare-datatypes ((List!24076 0))(
  ( (Nil!24073) (Cons!24072 (h!25281 (_ BitVec 64)) (t!34246 List!24076)) )
))
(declare-fun arrayNoDuplicates!0 (array!71204 (_ BitVec 32) List!24076) Bool)

(assert (=> b!1099209 (= res!733675 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24073))))

(declare-fun b!1099210 () Bool)

(declare-fun e!627416 () Bool)

(assert (=> b!1099210 (= e!627419 e!627416)))

(declare-fun res!733667 () Bool)

(assert (=> b!1099210 (=> (not res!733667) (not e!627416))))

(declare-fun lt!492140 () array!71204)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71204 (_ BitVec 32)) Bool)

(assert (=> b!1099210 (= res!733667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492140 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1099210 (= lt!492140 (array!71205 (store (arr!34266 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34803 _keys!1070)))))

(declare-fun b!1099211 () Bool)

(declare-fun res!733671 () Bool)

(assert (=> b!1099211 (=> (not res!733671) (not e!627416))))

(assert (=> b!1099211 (= res!733671 (arrayNoDuplicates!0 lt!492140 #b00000000000000000000000000000000 Nil!24073))))

(declare-fun res!733670 () Bool)

(assert (=> start!96680 (=> (not res!733670) (not e!627419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96680 (= res!733670 (validMask!0 mask!1414))))

(assert (=> start!96680 e!627419))

(assert (=> start!96680 tp!81290))

(assert (=> start!96680 true))

(declare-fun tp_is_empty!27167 () Bool)

(assert (=> start!96680 tp_is_empty!27167))

(declare-fun array_inv!26256 (array!71204) Bool)

(assert (=> start!96680 (array_inv!26256 _keys!1070)))

(declare-fun e!627414 () Bool)

(declare-fun array_inv!26257 (array!71202) Bool)

(assert (=> start!96680 (and (array_inv!26257 _values!874) e!627414)))

(declare-fun b!1099212 () Bool)

(declare-fun e!627415 () Bool)

(assert (=> b!1099212 (= e!627414 (and e!627415 mapRes!42523))))

(declare-fun condMapEmpty!42523 () Bool)

(declare-fun mapDefault!42523 () ValueCell!12874)

