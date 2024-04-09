; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96346 () Bool)

(assert start!96346)

(declare-fun b!1094443 () Bool)

(declare-fun e!624883 () Bool)

(declare-fun tp_is_empty!26965 () Bool)

(assert (=> b!1094443 (= e!624883 tp_is_empty!26965)))

(declare-fun b!1094444 () Bool)

(declare-fun res!730452 () Bool)

(declare-fun e!624885 () Bool)

(assert (=> b!1094444 (=> (not res!730452) (not e!624885))))

(declare-datatypes ((array!70800 0))(
  ( (array!70801 (arr!34070 (Array (_ BitVec 32) (_ BitVec 64))) (size!34607 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70800)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70800 (_ BitVec 32)) Bool)

(assert (=> b!1094444 (= res!730452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1094445 () Bool)

(assert (=> b!1094445 (= e!624885 false)))

(declare-fun lt!489635 () Bool)

(declare-datatypes ((List!23938 0))(
  ( (Nil!23935) (Cons!23934 (h!25143 (_ BitVec 64)) (t!33952 List!23938)) )
))
(declare-fun arrayNoDuplicates!0 (array!70800 (_ BitVec 32) List!23938) Bool)

(assert (=> b!1094445 (= lt!489635 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23935))))

(declare-fun mapNonEmpty!42202 () Bool)

(declare-fun mapRes!42202 () Bool)

(declare-fun tp!80718 () Bool)

(assert (=> mapNonEmpty!42202 (= mapRes!42202 (and tp!80718 e!624883))))

(declare-datatypes ((V!41081 0))(
  ( (V!41082 (val!13539 Int)) )
))
(declare-datatypes ((ValueCell!12773 0))(
  ( (ValueCellFull!12773 (v!16161 V!41081)) (EmptyCell!12773) )
))
(declare-datatypes ((array!70802 0))(
  ( (array!70803 (arr!34071 (Array (_ BitVec 32) ValueCell!12773)) (size!34608 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70802)

(declare-fun mapRest!42202 () (Array (_ BitVec 32) ValueCell!12773))

(declare-fun mapKey!42202 () (_ BitVec 32))

(declare-fun mapValue!42202 () ValueCell!12773)

(assert (=> mapNonEmpty!42202 (= (arr!34071 _values!874) (store mapRest!42202 mapKey!42202 mapValue!42202))))

(declare-fun b!1094446 () Bool)

(declare-fun e!624886 () Bool)

(assert (=> b!1094446 (= e!624886 tp_is_empty!26965)))

(declare-fun b!1094447 () Bool)

(declare-fun res!730454 () Bool)

(assert (=> b!1094447 (=> (not res!730454) (not e!624885))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1094447 (= res!730454 (and (= (size!34608 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34607 _keys!1070) (size!34608 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1094448 () Bool)

(declare-fun e!624882 () Bool)

(assert (=> b!1094448 (= e!624882 (and e!624886 mapRes!42202))))

(declare-fun condMapEmpty!42202 () Bool)

(declare-fun mapDefault!42202 () ValueCell!12773)

