; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96782 () Bool)

(assert start!96782)

(declare-fun b_free!23141 () Bool)

(declare-fun b_next!23141 () Bool)

(assert (=> start!96782 (= b_free!23141 (not b_next!23141))))

(declare-fun tp!81372 () Bool)

(declare-fun b_and!37061 () Bool)

(assert (=> start!96782 (= tp!81372 b_and!37061)))

(declare-fun b!1100332 () Bool)

(declare-fun e!628087 () Bool)

(assert (=> b!1100332 (= e!628087 true)))

(declare-datatypes ((V!41381 0))(
  ( (V!41382 (val!13652 Int)) )
))
(declare-datatypes ((tuple2!17418 0))(
  ( (tuple2!17419 (_1!8719 (_ BitVec 64)) (_2!8719 V!41381)) )
))
(declare-datatypes ((List!24091 0))(
  ( (Nil!24088) (Cons!24087 (h!25296 tuple2!17418) (t!34285 List!24091)) )
))
(declare-datatypes ((ListLongMap!15399 0))(
  ( (ListLongMap!15400 (toList!7715 List!24091)) )
))
(declare-fun lt!492989 () ListLongMap!15399)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!492985 () ListLongMap!15399)

(declare-fun -!955 (ListLongMap!15399 (_ BitVec 64)) ListLongMap!15399)

(assert (=> b!1100332 (= (-!955 lt!492989 k!904) lt!492985)))

(declare-fun lt!492990 () ListLongMap!15399)

(declare-datatypes ((Unit!36103 0))(
  ( (Unit!36104) )
))
(declare-fun lt!492983 () Unit!36103)

(declare-fun zeroValue!831 () V!41381)

(declare-fun addRemoveCommutativeForDiffKeys!131 (ListLongMap!15399 (_ BitVec 64) V!41381 (_ BitVec 64)) Unit!36103)

(assert (=> b!1100332 (= lt!492983 (addRemoveCommutativeForDiffKeys!131 lt!492990 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1100333 () Bool)

(declare-fun res!734332 () Bool)

(declare-fun e!628086 () Bool)

(assert (=> b!1100333 (=> (not res!734332) (not e!628086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1100333 (= res!734332 (validKeyInArray!0 k!904))))

(declare-fun b!1100334 () Bool)

(declare-fun res!734334 () Bool)

(assert (=> b!1100334 (=> (not res!734334) (not e!628086))))

(declare-datatypes ((array!71250 0))(
  ( (array!71251 (arr!34286 (Array (_ BitVec 32) (_ BitVec 64))) (size!34823 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71250)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1100334 (= res!734334 (= (select (arr!34286 _keys!1070) i!650) k!904))))

(declare-fun b!1100335 () Bool)

(declare-fun e!628084 () Bool)

(assert (=> b!1100335 (= e!628086 e!628084)))

(declare-fun res!734333 () Bool)

(assert (=> b!1100335 (=> (not res!734333) (not e!628084))))

(declare-fun lt!492986 () array!71250)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71250 (_ BitVec 32)) Bool)

(assert (=> b!1100335 (= res!734333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492986 mask!1414))))

(assert (=> b!1100335 (= lt!492986 (array!71251 (store (arr!34286 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34823 _keys!1070)))))

(declare-fun mapNonEmpty!42568 () Bool)

(declare-fun mapRes!42568 () Bool)

(declare-fun tp!81371 () Bool)

(declare-fun e!628082 () Bool)

(assert (=> mapNonEmpty!42568 (= mapRes!42568 (and tp!81371 e!628082))))

(declare-datatypes ((ValueCell!12886 0))(
  ( (ValueCellFull!12886 (v!16281 V!41381)) (EmptyCell!12886) )
))
(declare-fun mapValue!42568 () ValueCell!12886)

(declare-datatypes ((array!71252 0))(
  ( (array!71253 (arr!34287 (Array (_ BitVec 32) ValueCell!12886)) (size!34824 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71252)

(declare-fun mapKey!42568 () (_ BitVec 32))

(declare-fun mapRest!42568 () (Array (_ BitVec 32) ValueCell!12886))

(assert (=> mapNonEmpty!42568 (= (arr!34287 _values!874) (store mapRest!42568 mapKey!42568 mapValue!42568))))

(declare-fun b!1100337 () Bool)

(declare-fun e!628083 () Bool)

(declare-fun e!628088 () Bool)

(assert (=> b!1100337 (= e!628083 (and e!628088 mapRes!42568))))

(declare-fun condMapEmpty!42568 () Bool)

(declare-fun mapDefault!42568 () ValueCell!12886)

