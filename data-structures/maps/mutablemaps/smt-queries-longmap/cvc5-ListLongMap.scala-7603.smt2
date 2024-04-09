; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95974 () Bool)

(assert start!95974)

(declare-fun b_free!22591 () Bool)

(declare-fun b_next!22591 () Bool)

(assert (=> start!95974 (= b_free!22591 (not b_next!22591))))

(declare-fun tp!79622 () Bool)

(declare-fun b_and!35875 () Bool)

(assert (=> start!95974 (= tp!79622 b_and!35875)))

(declare-fun b!1086683 () Bool)

(declare-fun res!724728 () Bool)

(declare-fun e!620798 () Bool)

(assert (=> b!1086683 (=> (not res!724728) (not e!620798))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70082 0))(
  ( (array!70083 (arr!33711 (Array (_ BitVec 32) (_ BitVec 64))) (size!34248 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70082)

(declare-datatypes ((V!40585 0))(
  ( (V!40586 (val!13353 Int)) )
))
(declare-datatypes ((ValueCell!12587 0))(
  ( (ValueCellFull!12587 (v!15975 V!40585)) (EmptyCell!12587) )
))
(declare-datatypes ((array!70084 0))(
  ( (array!70085 (arr!33712 (Array (_ BitVec 32) ValueCell!12587)) (size!34249 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70084)

(assert (=> b!1086683 (= res!724728 (and (= (size!34249 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34248 _keys!1070) (size!34249 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1086685 () Bool)

(declare-fun e!620800 () Bool)

(declare-fun tp_is_empty!26593 () Bool)

(assert (=> b!1086685 (= e!620800 tp_is_empty!26593)))

(declare-fun b!1086686 () Bool)

(declare-fun res!724734 () Bool)

(assert (=> b!1086686 (=> (not res!724734) (not e!620798))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086686 (= res!724734 (validKeyInArray!0 k!904))))

(declare-fun b!1086687 () Bool)

(declare-fun res!724736 () Bool)

(assert (=> b!1086687 (=> (not res!724736) (not e!620798))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70082 (_ BitVec 32)) Bool)

(assert (=> b!1086687 (= res!724736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1086688 () Bool)

(declare-fun e!620794 () Bool)

(declare-fun e!620793 () Bool)

(declare-fun mapRes!41644 () Bool)

(assert (=> b!1086688 (= e!620794 (and e!620793 mapRes!41644))))

(declare-fun condMapEmpty!41644 () Bool)

(declare-fun mapDefault!41644 () ValueCell!12587)

