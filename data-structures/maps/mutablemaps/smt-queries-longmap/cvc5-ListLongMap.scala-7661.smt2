; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96322 () Bool)

(assert start!96322)

(declare-fun b_free!22939 () Bool)

(declare-fun b_next!22939 () Bool)

(assert (=> start!96322 (= b_free!22939 (not b_next!22939))))

(declare-fun tp!80667 () Bool)

(declare-fun b_and!36571 () Bool)

(assert (=> start!96322 (= tp!80667 b_and!36571)))

(declare-fun b!1094065 () Bool)

(declare-fun res!730200 () Bool)

(declare-fun e!624677 () Bool)

(assert (=> b!1094065 (=> (not res!730200) (not e!624677))))

(declare-datatypes ((array!70754 0))(
  ( (array!70755 (arr!34047 (Array (_ BitVec 32) (_ BitVec 64))) (size!34584 (_ BitVec 32))) )
))
(declare-fun lt!489460 () array!70754)

(declare-datatypes ((List!23925 0))(
  ( (Nil!23922) (Cons!23921 (h!25130 (_ BitVec 64)) (t!33929 List!23925)) )
))
(declare-fun arrayNoDuplicates!0 (array!70754 (_ BitVec 32) List!23925) Bool)

(assert (=> b!1094065 (= res!730200 (arrayNoDuplicates!0 lt!489460 #b00000000000000000000000000000000 Nil!23922))))

(declare-fun b!1094066 () Bool)

(declare-fun res!730202 () Bool)

(declare-fun e!624679 () Bool)

(assert (=> b!1094066 (=> (not res!730202) (not e!624679))))

(declare-fun _keys!1070 () array!70754)

(assert (=> b!1094066 (= res!730202 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23922))))

(declare-fun b!1094067 () Bool)

(declare-fun res!730201 () Bool)

(assert (=> b!1094067 (=> (not res!730201) (not e!624679))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41049 0))(
  ( (V!41050 (val!13527 Int)) )
))
(declare-datatypes ((ValueCell!12761 0))(
  ( (ValueCellFull!12761 (v!16149 V!41049)) (EmptyCell!12761) )
))
(declare-datatypes ((array!70756 0))(
  ( (array!70757 (arr!34048 (Array (_ BitVec 32) ValueCell!12761)) (size!34585 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70756)

(assert (=> b!1094067 (= res!730201 (and (= (size!34585 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34584 _keys!1070) (size!34585 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!730199 () Bool)

(assert (=> start!96322 (=> (not res!730199) (not e!624679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96322 (= res!730199 (validMask!0 mask!1414))))

(assert (=> start!96322 e!624679))

(assert (=> start!96322 tp!80667))

(assert (=> start!96322 true))

(declare-fun tp_is_empty!26941 () Bool)

(assert (=> start!96322 tp_is_empty!26941))

(declare-fun array_inv!26092 (array!70754) Bool)

(assert (=> start!96322 (array_inv!26092 _keys!1070)))

(declare-fun e!624678 () Bool)

(declare-fun array_inv!26093 (array!70756) Bool)

(assert (=> start!96322 (and (array_inv!26093 _values!874) e!624678)))

(declare-fun b!1094068 () Bool)

(declare-fun res!730194 () Bool)

(assert (=> b!1094068 (=> (not res!730194) (not e!624679))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094068 (= res!730194 (validKeyInArray!0 k!904))))

(declare-fun b!1094069 () Bool)

(declare-fun res!730196 () Bool)

(assert (=> b!1094069 (=> (not res!730196) (not e!624679))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094069 (= res!730196 (= (select (arr!34047 _keys!1070) i!650) k!904))))

(declare-fun mapNonEmpty!42166 () Bool)

(declare-fun mapRes!42166 () Bool)

(declare-fun tp!80666 () Bool)

(declare-fun e!624682 () Bool)

(assert (=> mapNonEmpty!42166 (= mapRes!42166 (and tp!80666 e!624682))))

(declare-fun mapRest!42166 () (Array (_ BitVec 32) ValueCell!12761))

(declare-fun mapValue!42166 () ValueCell!12761)

(declare-fun mapKey!42166 () (_ BitVec 32))

(assert (=> mapNonEmpty!42166 (= (arr!34048 _values!874) (store mapRest!42166 mapKey!42166 mapValue!42166))))

(declare-fun b!1094070 () Bool)

(assert (=> b!1094070 (= e!624679 e!624677)))

(declare-fun res!730195 () Bool)

(assert (=> b!1094070 (=> (not res!730195) (not e!624677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70754 (_ BitVec 32)) Bool)

(assert (=> b!1094070 (= res!730195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489460 mask!1414))))

(assert (=> b!1094070 (= lt!489460 (array!70755 (store (arr!34047 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34584 _keys!1070)))))

(declare-fun b!1094071 () Bool)

(declare-fun e!624680 () Bool)

(assert (=> b!1094071 (= e!624678 (and e!624680 mapRes!42166))))

(declare-fun condMapEmpty!42166 () Bool)

(declare-fun mapDefault!42166 () ValueCell!12761)

