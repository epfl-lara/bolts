; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96370 () Bool)

(assert start!96370)

(declare-fun b!1094798 () Bool)

(declare-fun res!730702 () Bool)

(declare-fun e!625087 () Bool)

(assert (=> b!1094798 (=> (not res!730702) (not e!625087))))

(declare-datatypes ((array!70844 0))(
  ( (array!70845 (arr!34092 (Array (_ BitVec 32) (_ BitVec 64))) (size!34629 (_ BitVec 32))) )
))
(declare-fun lt!489689 () array!70844)

(declare-datatypes ((List!23947 0))(
  ( (Nil!23944) (Cons!23943 (h!25152 (_ BitVec 64)) (t!33961 List!23947)) )
))
(declare-fun arrayNoDuplicates!0 (array!70844 (_ BitVec 32) List!23947) Bool)

(assert (=> b!1094798 (= res!730702 (arrayNoDuplicates!0 lt!489689 #b00000000000000000000000000000000 Nil!23944))))

(declare-fun b!1094799 () Bool)

(declare-fun e!625083 () Bool)

(declare-fun tp_is_empty!26989 () Bool)

(assert (=> b!1094799 (= e!625083 tp_is_empty!26989)))

(declare-fun b!1094800 () Bool)

(declare-fun res!730699 () Bool)

(declare-fun e!625086 () Bool)

(assert (=> b!1094800 (=> (not res!730699) (not e!625086))))

(declare-fun _keys!1070 () array!70844)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70844 (_ BitVec 32)) Bool)

(assert (=> b!1094800 (= res!730699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1094801 () Bool)

(declare-fun res!730703 () Bool)

(assert (=> b!1094801 (=> (not res!730703) (not e!625086))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094801 (= res!730703 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34629 _keys!1070))))))

(declare-fun b!1094802 () Bool)

(assert (=> b!1094802 (= e!625086 e!625087)))

(declare-fun res!730704 () Bool)

(assert (=> b!1094802 (=> (not res!730704) (not e!625087))))

(assert (=> b!1094802 (= res!730704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489689 mask!1414))))

(assert (=> b!1094802 (= lt!489689 (array!70845 (store (arr!34092 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34629 _keys!1070)))))

(declare-fun b!1094803 () Bool)

(declare-fun res!730701 () Bool)

(assert (=> b!1094803 (=> (not res!730701) (not e!625086))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41113 0))(
  ( (V!41114 (val!13551 Int)) )
))
(declare-datatypes ((ValueCell!12785 0))(
  ( (ValueCellFull!12785 (v!16173 V!41113)) (EmptyCell!12785) )
))
(declare-datatypes ((array!70846 0))(
  ( (array!70847 (arr!34093 (Array (_ BitVec 32) ValueCell!12785)) (size!34630 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70846)

(assert (=> b!1094803 (= res!730701 (and (= (size!34630 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34629 _keys!1070) (size!34630 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!730698 () Bool)

(assert (=> start!96370 (=> (not res!730698) (not e!625086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96370 (= res!730698 (validMask!0 mask!1414))))

(assert (=> start!96370 e!625086))

(assert (=> start!96370 true))

(declare-fun array_inv!26122 (array!70844) Bool)

(assert (=> start!96370 (array_inv!26122 _keys!1070)))

(declare-fun e!625084 () Bool)

(declare-fun array_inv!26123 (array!70846) Bool)

(assert (=> start!96370 (and (array_inv!26123 _values!874) e!625084)))

(declare-fun b!1094797 () Bool)

(declare-fun res!730705 () Bool)

(assert (=> b!1094797 (=> (not res!730705) (not e!625086))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094797 (= res!730705 (validKeyInArray!0 k!904))))

(declare-fun b!1094804 () Bool)

(assert (=> b!1094804 (= e!625087 (bvsge (size!34629 _keys!1070) #b01111111111111111111111111111111))))

(declare-fun b!1094805 () Bool)

(declare-fun e!625082 () Bool)

(assert (=> b!1094805 (= e!625082 tp_is_empty!26989)))

(declare-fun b!1094806 () Bool)

(declare-fun mapRes!42238 () Bool)

(assert (=> b!1094806 (= e!625084 (and e!625082 mapRes!42238))))

(declare-fun condMapEmpty!42238 () Bool)

(declare-fun mapDefault!42238 () ValueCell!12785)

