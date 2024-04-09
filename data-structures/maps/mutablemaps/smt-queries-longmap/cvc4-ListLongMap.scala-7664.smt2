; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96344 () Bool)

(assert start!96344)

(declare-fun res!730445 () Bool)

(declare-fun e!624868 () Bool)

(assert (=> start!96344 (=> (not res!730445) (not e!624868))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96344 (= res!730445 (validMask!0 mask!1414))))

(assert (=> start!96344 e!624868))

(assert (=> start!96344 true))

(declare-datatypes ((V!41077 0))(
  ( (V!41078 (val!13538 Int)) )
))
(declare-datatypes ((ValueCell!12772 0))(
  ( (ValueCellFull!12772 (v!16160 V!41077)) (EmptyCell!12772) )
))
(declare-datatypes ((array!70796 0))(
  ( (array!70797 (arr!34068 (Array (_ BitVec 32) ValueCell!12772)) (size!34605 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70796)

(declare-fun e!624869 () Bool)

(declare-fun array_inv!26106 (array!70796) Bool)

(assert (=> start!96344 (and (array_inv!26106 _values!874) e!624869)))

(declare-datatypes ((array!70798 0))(
  ( (array!70799 (arr!34069 (Array (_ BitVec 32) (_ BitVec 64))) (size!34606 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70798)

(declare-fun array_inv!26107 (array!70798) Bool)

(assert (=> start!96344 (array_inv!26107 _keys!1070)))

(declare-fun b!1094425 () Bool)

(declare-fun res!730443 () Bool)

(assert (=> b!1094425 (=> (not res!730443) (not e!624868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70798 (_ BitVec 32)) Bool)

(assert (=> b!1094425 (= res!730443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1094426 () Bool)

(declare-fun e!624870 () Bool)

(declare-fun tp_is_empty!26963 () Bool)

(assert (=> b!1094426 (= e!624870 tp_is_empty!26963)))

(declare-fun mapIsEmpty!42199 () Bool)

(declare-fun mapRes!42199 () Bool)

(assert (=> mapIsEmpty!42199 mapRes!42199))

(declare-fun b!1094427 () Bool)

(assert (=> b!1094427 (= e!624868 false)))

(declare-fun lt!489632 () Bool)

(declare-datatypes ((List!23937 0))(
  ( (Nil!23934) (Cons!23933 (h!25142 (_ BitVec 64)) (t!33951 List!23937)) )
))
(declare-fun arrayNoDuplicates!0 (array!70798 (_ BitVec 32) List!23937) Bool)

(assert (=> b!1094427 (= lt!489632 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23934))))

(declare-fun b!1094428 () Bool)

(declare-fun e!624867 () Bool)

(assert (=> b!1094428 (= e!624869 (and e!624867 mapRes!42199))))

(declare-fun condMapEmpty!42199 () Bool)

(declare-fun mapDefault!42199 () ValueCell!12772)

