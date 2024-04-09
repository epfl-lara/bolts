; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96744 () Bool)

(assert start!96744)

(declare-fun b_free!23129 () Bool)

(declare-fun b_next!23129 () Bool)

(assert (=> start!96744 (= b_free!23129 (not b_next!23129))))

(declare-fun tp!81332 () Bool)

(declare-fun b_and!37023 () Bool)

(assert (=> start!96744 (= tp!81332 b_and!37023)))

(declare-fun mapNonEmpty!42547 () Bool)

(declare-fun mapRes!42547 () Bool)

(declare-fun tp!81333 () Bool)

(declare-fun e!627813 () Bool)

(assert (=> mapNonEmpty!42547 (= mapRes!42547 (and tp!81333 e!627813))))

(declare-datatypes ((V!41365 0))(
  ( (V!41366 (val!13646 Int)) )
))
(declare-datatypes ((ValueCell!12880 0))(
  ( (ValueCellFull!12880 (v!16274 V!41365)) (EmptyCell!12880) )
))
(declare-datatypes ((array!71228 0))(
  ( (array!71229 (arr!34276 (Array (_ BitVec 32) ValueCell!12880)) (size!34813 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71228)

(declare-fun mapKey!42547 () (_ BitVec 32))

(declare-fun mapValue!42547 () ValueCell!12880)

(declare-fun mapRest!42547 () (Array (_ BitVec 32) ValueCell!12880))

(assert (=> mapNonEmpty!42547 (= (arr!34276 _values!874) (store mapRest!42547 mapKey!42547 mapValue!42547))))

(declare-fun b!1099859 () Bool)

(declare-fun e!627806 () Bool)

(declare-fun e!627810 () Bool)

(assert (=> b!1099859 (= e!627806 e!627810)))

(declare-fun res!734030 () Bool)

(assert (=> b!1099859 (=> (not res!734030) (not e!627810))))

(declare-datatypes ((array!71230 0))(
  ( (array!71231 (arr!34277 (Array (_ BitVec 32) (_ BitVec 64))) (size!34814 (_ BitVec 32))) )
))
(declare-fun lt!492629 () array!71230)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71230 (_ BitVec 32)) Bool)

(assert (=> b!1099859 (= res!734030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!492629 mask!1414))))

(declare-fun _keys!1070 () array!71230)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1099859 (= lt!492629 (array!71231 (store (arr!34277 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34814 _keys!1070)))))

(declare-fun b!1099860 () Bool)

(declare-fun e!627807 () Bool)

(declare-fun e!627808 () Bool)

(assert (=> b!1099860 (= e!627807 (and e!627808 mapRes!42547))))

(declare-fun condMapEmpty!42547 () Bool)

(declare-fun mapDefault!42547 () ValueCell!12880)

