; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96838 () Bool)

(assert start!96838)

(declare-fun b_free!23171 () Bool)

(declare-fun b_next!23171 () Bool)

(assert (=> start!96838 (= b_free!23171 (not b_next!23171))))

(declare-fun tp!81464 () Bool)

(declare-fun b_and!37135 () Bool)

(assert (=> start!96838 (= tp!81464 b_and!37135)))

(declare-fun b!1101171 () Bool)

(declare-fun res!734902 () Bool)

(declare-fun e!628559 () Bool)

(assert (=> b!1101171 (=> (not res!734902) (not e!628559))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71312 0))(
  ( (array!71313 (arr!34316 (Array (_ BitVec 32) (_ BitVec 64))) (size!34853 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71312)

(assert (=> b!1101171 (= res!734902 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34853 _keys!1070))))))

(declare-fun b!1101173 () Bool)

(declare-fun e!628558 () Bool)

(declare-fun tp_is_empty!27221 () Bool)

(assert (=> b!1101173 (= e!628558 tp_is_empty!27221)))

(declare-fun b!1101174 () Bool)

(declare-fun res!734900 () Bool)

(assert (=> b!1101174 (=> (not res!734900) (not e!628559))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41421 0))(
  ( (V!41422 (val!13667 Int)) )
))
(declare-datatypes ((ValueCell!12901 0))(
  ( (ValueCellFull!12901 (v!16297 V!41421)) (EmptyCell!12901) )
))
(declare-datatypes ((array!71314 0))(
  ( (array!71315 (arr!34317 (Array (_ BitVec 32) ValueCell!12901)) (size!34854 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71314)

(assert (=> b!1101174 (= res!734900 (and (= (size!34854 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34853 _keys!1070) (size!34854 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1101175 () Bool)

(declare-fun e!628552 () Bool)

(assert (=> b!1101175 (= e!628559 e!628552)))

(declare-fun res!734897 () Bool)

(assert (=> b!1101175 (=> (not res!734897) (not e!628552))))

(declare-fun lt!493631 () array!71312)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71312 (_ BitVec 32)) Bool)

(assert (=> b!1101175 (= res!734897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!493631 mask!1414))))

(assert (=> b!1101175 (= lt!493631 (array!71313 (store (arr!34316 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34853 _keys!1070)))))

(declare-fun b!1101176 () Bool)

(declare-fun e!628557 () Bool)

(declare-fun e!628556 () Bool)

(declare-fun mapRes!42616 () Bool)

(assert (=> b!1101176 (= e!628557 (and e!628556 mapRes!42616))))

(declare-fun condMapEmpty!42616 () Bool)

(declare-fun mapDefault!42616 () ValueCell!12901)

