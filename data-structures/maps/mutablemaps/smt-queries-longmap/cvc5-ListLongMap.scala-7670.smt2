; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96388 () Bool)

(assert start!96388)

(declare-fun res!730810 () Bool)

(declare-fun e!625175 () Bool)

(assert (=> start!96388 (=> (not res!730810) (not e!625175))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96388 (= res!730810 (validMask!0 mask!1414))))

(assert (=> start!96388 e!625175))

(assert (=> start!96388 true))

(declare-datatypes ((array!70858 0))(
  ( (array!70859 (arr!34098 (Array (_ BitVec 32) (_ BitVec 64))) (size!34635 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70858)

(declare-fun array_inv!26128 (array!70858) Bool)

(assert (=> start!96388 (array_inv!26128 _keys!1070)))

(declare-datatypes ((V!41121 0))(
  ( (V!41122 (val!13554 Int)) )
))
(declare-datatypes ((ValueCell!12788 0))(
  ( (ValueCellFull!12788 (v!16176 V!41121)) (EmptyCell!12788) )
))
(declare-datatypes ((array!70860 0))(
  ( (array!70861 (arr!34099 (Array (_ BitVec 32) ValueCell!12788)) (size!34636 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70860)

(declare-fun e!625174 () Bool)

(declare-fun array_inv!26129 (array!70860) Bool)

(assert (=> start!96388 (and (array_inv!26129 _values!874) e!625174)))

(declare-fun b!1094951 () Bool)

(declare-fun res!730806 () Bool)

(assert (=> b!1094951 (=> (not res!730806) (not e!625175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70858 (_ BitVec 32)) Bool)

(assert (=> b!1094951 (= res!730806 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun e!625173 () Bool)

(declare-fun b!1094952 () Bool)

(declare-fun arrayContainsKey!0 (array!70858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1094952 (= e!625173 (not (arrayContainsKey!0 _keys!1070 k!904 i!650)))))

(declare-fun b!1094953 () Bool)

(declare-fun res!730808 () Bool)

(assert (=> b!1094953 (=> (not res!730808) (not e!625173))))

(declare-fun lt!489710 () array!70858)

(declare-datatypes ((List!23950 0))(
  ( (Nil!23947) (Cons!23946 (h!25155 (_ BitVec 64)) (t!33964 List!23950)) )
))
(declare-fun arrayNoDuplicates!0 (array!70858 (_ BitVec 32) List!23950) Bool)

(assert (=> b!1094953 (= res!730808 (arrayNoDuplicates!0 lt!489710 #b00000000000000000000000000000000 Nil!23947))))

(declare-fun b!1094954 () Bool)

(declare-fun res!730804 () Bool)

(assert (=> b!1094954 (=> (not res!730804) (not e!625175))))

(assert (=> b!1094954 (= res!730804 (= (select (arr!34098 _keys!1070) i!650) k!904))))

(declare-fun b!1094955 () Bool)

(declare-fun res!730802 () Bool)

(assert (=> b!1094955 (=> (not res!730802) (not e!625175))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094955 (= res!730802 (validKeyInArray!0 k!904))))

(declare-fun b!1094956 () Bool)

(declare-fun res!730809 () Bool)

(assert (=> b!1094956 (=> (not res!730809) (not e!625175))))

(assert (=> b!1094956 (= res!730809 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23947))))

(declare-fun b!1094957 () Bool)

(declare-fun res!730807 () Bool)

(assert (=> b!1094957 (=> (not res!730807) (not e!625175))))

(assert (=> b!1094957 (= res!730807 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34635 _keys!1070))))))

(declare-fun mapIsEmpty!42250 () Bool)

(declare-fun mapRes!42250 () Bool)

(assert (=> mapIsEmpty!42250 mapRes!42250))

(declare-fun b!1094958 () Bool)

(declare-fun e!625171 () Bool)

(assert (=> b!1094958 (= e!625174 (and e!625171 mapRes!42250))))

(declare-fun condMapEmpty!42250 () Bool)

(declare-fun mapDefault!42250 () ValueCell!12788)

