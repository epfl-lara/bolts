; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96340 () Bool)

(assert start!96340)

(declare-fun res!730426 () Bool)

(declare-fun e!624837 () Bool)

(assert (=> start!96340 (=> (not res!730426) (not e!624837))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96340 (= res!730426 (validMask!0 mask!1414))))

(assert (=> start!96340 e!624837))

(assert (=> start!96340 true))

(declare-datatypes ((V!41073 0))(
  ( (V!41074 (val!13536 Int)) )
))
(declare-datatypes ((ValueCell!12770 0))(
  ( (ValueCellFull!12770 (v!16158 V!41073)) (EmptyCell!12770) )
))
(declare-datatypes ((array!70788 0))(
  ( (array!70789 (arr!34064 (Array (_ BitVec 32) ValueCell!12770)) (size!34601 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70788)

(declare-fun e!624839 () Bool)

(declare-fun array_inv!26102 (array!70788) Bool)

(assert (=> start!96340 (and (array_inv!26102 _values!874) e!624839)))

(declare-datatypes ((array!70790 0))(
  ( (array!70791 (arr!34065 (Array (_ BitVec 32) (_ BitVec 64))) (size!34602 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70790)

(declare-fun array_inv!26103 (array!70790) Bool)

(assert (=> start!96340 (array_inv!26103 _keys!1070)))

(declare-fun mapIsEmpty!42193 () Bool)

(declare-fun mapRes!42193 () Bool)

(assert (=> mapIsEmpty!42193 mapRes!42193))

(declare-fun b!1094389 () Bool)

(declare-fun res!730425 () Bool)

(assert (=> b!1094389 (=> (not res!730425) (not e!624837))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1094389 (= res!730425 (and (= (size!34601 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34602 _keys!1070) (size!34601 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1094390 () Bool)

(declare-fun e!624841 () Bool)

(assert (=> b!1094390 (= e!624839 (and e!624841 mapRes!42193))))

(declare-fun condMapEmpty!42193 () Bool)

(declare-fun mapDefault!42193 () ValueCell!12770)

