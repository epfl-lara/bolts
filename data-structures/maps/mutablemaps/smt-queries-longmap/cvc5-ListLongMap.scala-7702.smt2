; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96778 () Bool)

(assert start!96778)

(declare-fun b_free!23137 () Bool)

(declare-fun b_next!23137 () Bool)

(assert (=> start!96778 (= b_free!23137 (not b_next!23137))))

(declare-fun tp!81360 () Bool)

(declare-fun b_and!37053 () Bool)

(assert (=> start!96778 (= tp!81360 b_and!37053)))

(declare-fun b!1100244 () Bool)

(declare-fun e!628034 () Bool)

(declare-fun e!628036 () Bool)

(assert (=> b!1100244 (= e!628034 e!628036)))

(declare-fun res!734268 () Bool)

(assert (=> b!1100244 (=> (not res!734268) (not e!628036))))

(declare-datatypes ((array!71242 0))(
  ( (array!71243 (arr!34282 (Array (_ BitVec 32) (_ BitVec 64))) (size!34819 (_ BitVec 32))) )
))
(declare-fun lt!492916 () array!71242)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71242 (_ BitVec 32)) Bool)

(assert (=> b!1100244 (= res!734268 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492916 mask!1414))))

(declare-fun _keys!1070 () array!71242)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1100244 (= lt!492916 (array!71243 (store (arr!34282 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34819 _keys!1070)))))

(declare-fun res!734265 () Bool)

(assert (=> start!96778 (=> (not res!734265) (not e!628034))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96778 (= res!734265 (validMask!0 mask!1414))))

(assert (=> start!96778 e!628034))

(assert (=> start!96778 tp!81360))

(assert (=> start!96778 true))

(declare-fun tp_is_empty!27187 () Bool)

(assert (=> start!96778 tp_is_empty!27187))

(declare-fun array_inv!26266 (array!71242) Bool)

(assert (=> start!96778 (array_inv!26266 _keys!1070)))

(declare-datatypes ((V!41377 0))(
  ( (V!41378 (val!13650 Int)) )
))
(declare-datatypes ((ValueCell!12884 0))(
  ( (ValueCellFull!12884 (v!16279 V!41377)) (EmptyCell!12884) )
))
(declare-datatypes ((array!71244 0))(
  ( (array!71245 (arr!34283 (Array (_ BitVec 32) ValueCell!12884)) (size!34820 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71244)

(declare-fun e!628033 () Bool)

(declare-fun array_inv!26267 (array!71244) Bool)

(assert (=> start!96778 (and (array_inv!26267 _values!874) e!628033)))

(declare-fun b!1100245 () Bool)

(declare-fun e!628038 () Bool)

(declare-fun e!628040 () Bool)

(assert (=> b!1100245 (= e!628038 e!628040)))

(declare-fun res!734262 () Bool)

(assert (=> b!1100245 (=> res!734262 e!628040)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1100245 (= res!734262 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!17414 0))(
  ( (tuple2!17415 (_1!8717 (_ BitVec 64)) (_2!8717 V!41377)) )
))
(declare-datatypes ((List!24088 0))(
  ( (Nil!24085) (Cons!24084 (h!25293 tuple2!17414) (t!34278 List!24088)) )
))
(declare-datatypes ((ListLongMap!15395 0))(
  ( (ListLongMap!15396 (toList!7713 List!24088)) )
))
(declare-fun lt!492908 () ListLongMap!15395)

(declare-fun lt!492915 () ListLongMap!15395)

(assert (=> b!1100245 (= lt!492908 lt!492915)))

(declare-fun lt!492909 () ListLongMap!15395)

(declare-fun lt!492910 () tuple2!17414)

(declare-fun +!3348 (ListLongMap!15395 tuple2!17414) ListLongMap!15395)

(assert (=> b!1100245 (= lt!492915 (+!3348 lt!492909 lt!492910))))

(declare-fun lt!492914 () ListLongMap!15395)

(declare-fun lt!492913 () ListLongMap!15395)

(assert (=> b!1100245 (= lt!492914 lt!492913)))

(declare-fun lt!492911 () ListLongMap!15395)

(assert (=> b!1100245 (= lt!492913 (+!3348 lt!492911 lt!492910))))

(declare-fun lt!492912 () ListLongMap!15395)

(assert (=> b!1100245 (= lt!492908 (+!3348 lt!492912 lt!492910))))

(declare-fun zeroValue!831 () V!41377)

(assert (=> b!1100245 (= lt!492910 (tuple2!17415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1100246 () Bool)

(declare-fun res!734266 () Bool)

(assert (=> b!1100246 (=> (not res!734266) (not e!628034))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1100246 (= res!734266 (and (= (size!34820 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34819 _keys!1070) (size!34820 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1100247 () Bool)

(declare-fun res!734264 () Bool)

(assert (=> b!1100247 (=> (not res!734264) (not e!628034))))

(assert (=> b!1100247 (= res!734264 (= (select (arr!34282 _keys!1070) i!650) k!904))))

(declare-fun b!1100248 () Bool)

(declare-fun e!628035 () Bool)

(declare-fun mapRes!42562 () Bool)

(assert (=> b!1100248 (= e!628033 (and e!628035 mapRes!42562))))

(declare-fun condMapEmpty!42562 () Bool)

(declare-fun mapDefault!42562 () ValueCell!12884)

