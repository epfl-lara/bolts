; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96292 () Bool)

(assert start!96292)

(declare-fun b_free!22909 () Bool)

(declare-fun b_next!22909 () Bool)

(assert (=> start!96292 (= b_free!22909 (not b_next!22909))))

(declare-fun tp!80577 () Bool)

(declare-fun b_and!36511 () Bool)

(assert (=> start!96292 (= tp!80577 b_and!36511)))

(declare-fun b!1093495 () Bool)

(declare-fun res!729797 () Bool)

(declare-fun e!624410 () Bool)

(assert (=> b!1093495 (=> (not res!729797) (not e!624410))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70696 0))(
  ( (array!70697 (arr!34018 (Array (_ BitVec 32) (_ BitVec 64))) (size!34555 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70696)

(declare-datatypes ((V!41009 0))(
  ( (V!41010 (val!13512 Int)) )
))
(declare-datatypes ((ValueCell!12746 0))(
  ( (ValueCellFull!12746 (v!16134 V!41009)) (EmptyCell!12746) )
))
(declare-datatypes ((array!70698 0))(
  ( (array!70699 (arr!34019 (Array (_ BitVec 32) ValueCell!12746)) (size!34556 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70698)

(assert (=> b!1093495 (= res!729797 (and (= (size!34556 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34555 _keys!1070) (size!34556 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1093496 () Bool)

(declare-fun res!729795 () Bool)

(assert (=> b!1093496 (=> (not res!729795) (not e!624410))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093496 (= res!729795 (= (select (arr!34018 _keys!1070) i!650) k!904))))

(declare-fun b!1093497 () Bool)

(declare-fun e!624408 () Bool)

(declare-fun e!624412 () Bool)

(declare-fun mapRes!42121 () Bool)

(assert (=> b!1093497 (= e!624408 (and e!624412 mapRes!42121))))

(declare-fun condMapEmpty!42121 () Bool)

(declare-fun mapDefault!42121 () ValueCell!12746)

