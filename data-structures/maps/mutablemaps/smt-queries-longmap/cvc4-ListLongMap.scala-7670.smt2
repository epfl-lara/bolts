; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96392 () Bool)

(assert start!96392)

(declare-fun b!1095029 () Bool)

(declare-fun res!730870 () Bool)

(declare-fun e!625206 () Bool)

(assert (=> b!1095029 (=> (not res!730870) (not e!625206))))

(declare-datatypes ((array!70866 0))(
  ( (array!70867 (arr!34102 (Array (_ BitVec 32) (_ BitVec 64))) (size!34639 (_ BitVec 32))) )
))
(declare-fun lt!489716 () array!70866)

(declare-datatypes ((List!23952 0))(
  ( (Nil!23949) (Cons!23948 (h!25157 (_ BitVec 64)) (t!33966 List!23952)) )
))
(declare-fun arrayNoDuplicates!0 (array!70866 (_ BitVec 32) List!23952) Bool)

(assert (=> b!1095029 (= res!730870 (arrayNoDuplicates!0 lt!489716 #b00000000000000000000000000000000 Nil!23949))))

(declare-fun b!1095030 () Bool)

(declare-fun e!625210 () Bool)

(declare-fun tp_is_empty!26999 () Bool)

(assert (=> b!1095030 (= e!625210 tp_is_empty!26999)))

(declare-fun b!1095031 () Bool)

(declare-fun e!625209 () Bool)

(assert (=> b!1095031 (= e!625209 tp_is_empty!26999)))

(declare-fun res!730868 () Bool)

(declare-fun e!625208 () Bool)

(assert (=> start!96392 (=> (not res!730868) (not e!625208))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96392 (= res!730868 (validMask!0 mask!1414))))

(assert (=> start!96392 e!625208))

(assert (=> start!96392 true))

(declare-fun _keys!1070 () array!70866)

(declare-fun array_inv!26132 (array!70866) Bool)

(assert (=> start!96392 (array_inv!26132 _keys!1070)))

(declare-datatypes ((V!41125 0))(
  ( (V!41126 (val!13556 Int)) )
))
(declare-datatypes ((ValueCell!12790 0))(
  ( (ValueCellFull!12790 (v!16178 V!41125)) (EmptyCell!12790) )
))
(declare-datatypes ((array!70868 0))(
  ( (array!70869 (arr!34103 (Array (_ BitVec 32) ValueCell!12790)) (size!34640 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70868)

(declare-fun e!625207 () Bool)

(declare-fun array_inv!26133 (array!70868) Bool)

(assert (=> start!96392 (and (array_inv!26133 _values!874) e!625207)))

(declare-fun b!1095032 () Bool)

(declare-fun res!730864 () Bool)

(assert (=> b!1095032 (=> (not res!730864) (not e!625208))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095032 (= res!730864 (validKeyInArray!0 k!904))))

(declare-fun b!1095033 () Bool)

(declare-fun res!730863 () Bool)

(assert (=> b!1095033 (=> (not res!730863) (not e!625208))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095033 (= res!730863 (= (select (arr!34102 _keys!1070) i!650) k!904))))

(declare-fun b!1095034 () Bool)

(declare-fun arrayContainsKey!0 (array!70866 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095034 (= e!625206 (not (arrayContainsKey!0 _keys!1070 k!904 i!650)))))

(declare-fun b!1095035 () Bool)

(declare-fun res!730869 () Bool)

(assert (=> b!1095035 (=> (not res!730869) (not e!625208))))

(assert (=> b!1095035 (= res!730869 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23949))))

(declare-fun b!1095036 () Bool)

(declare-fun mapRes!42256 () Bool)

(assert (=> b!1095036 (= e!625207 (and e!625209 mapRes!42256))))

(declare-fun condMapEmpty!42256 () Bool)

(declare-fun mapDefault!42256 () ValueCell!12790)

