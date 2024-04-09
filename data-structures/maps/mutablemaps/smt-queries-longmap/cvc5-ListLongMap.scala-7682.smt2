; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96474 () Bool)

(assert start!96474)

(declare-fun b_free!23017 () Bool)

(declare-fun b_next!23017 () Bool)

(assert (=> start!96474 (= b_free!23017 (not b_next!23017))))

(declare-fun tp!80979 () Bool)

(declare-fun b_and!36715 () Bool)

(assert (=> start!96474 (= tp!80979 b_and!36715)))

(declare-fun b!1096358 () Bool)

(declare-fun res!731811 () Bool)

(declare-fun e!625862 () Bool)

(assert (=> b!1096358 (=> (not res!731811) (not e!625862))))

(declare-datatypes ((array!70994 0))(
  ( (array!70995 (arr!34165 (Array (_ BitVec 32) (_ BitVec 64))) (size!34702 (_ BitVec 32))) )
))
(declare-fun lt!490117 () array!70994)

(declare-datatypes ((List!23993 0))(
  ( (Nil!23990) (Cons!23989 (h!25198 (_ BitVec 64)) (t!34063 List!23993)) )
))
(declare-fun arrayNoDuplicates!0 (array!70994 (_ BitVec 32) List!23993) Bool)

(assert (=> b!1096358 (= res!731811 (arrayNoDuplicates!0 lt!490117 #b00000000000000000000000000000000 Nil!23990))))

(declare-fun res!731812 () Bool)

(declare-fun e!625863 () Bool)

(assert (=> start!96474 (=> (not res!731812) (not e!625863))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96474 (= res!731812 (validMask!0 mask!1414))))

(assert (=> start!96474 e!625863))

(assert (=> start!96474 tp!80979))

(assert (=> start!96474 true))

(declare-fun tp_is_empty!27067 () Bool)

(assert (=> start!96474 tp_is_empty!27067))

(declare-fun _keys!1070 () array!70994)

(declare-fun array_inv!26178 (array!70994) Bool)

(assert (=> start!96474 (array_inv!26178 _keys!1070)))

(declare-datatypes ((V!41217 0))(
  ( (V!41218 (val!13590 Int)) )
))
(declare-datatypes ((ValueCell!12824 0))(
  ( (ValueCellFull!12824 (v!16212 V!41217)) (EmptyCell!12824) )
))
(declare-datatypes ((array!70996 0))(
  ( (array!70997 (arr!34166 (Array (_ BitVec 32) ValueCell!12824)) (size!34703 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70996)

(declare-fun e!625858 () Bool)

(declare-fun array_inv!26179 (array!70996) Bool)

(assert (=> start!96474 (and (array_inv!26179 _values!874) e!625858)))

(declare-fun b!1096359 () Bool)

(declare-fun res!731813 () Bool)

(assert (=> b!1096359 (=> (not res!731813) (not e!625863))))

(assert (=> b!1096359 (= res!731813 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23990))))

(declare-fun b!1096360 () Bool)

(declare-fun res!731806 () Bool)

(assert (=> b!1096360 (=> (not res!731806) (not e!625863))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1096360 (= res!731806 (and (= (size!34703 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34702 _keys!1070) (size!34703 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096361 () Bool)

(declare-fun res!731808 () Bool)

(assert (=> b!1096361 (=> (not res!731808) (not e!625863))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096361 (= res!731808 (= (select (arr!34165 _keys!1070) i!650) k!904))))

(declare-fun b!1096362 () Bool)

(declare-fun e!625859 () Bool)

(declare-fun mapRes!42361 () Bool)

(assert (=> b!1096362 (= e!625858 (and e!625859 mapRes!42361))))

(declare-fun condMapEmpty!42361 () Bool)

(declare-fun mapDefault!42361 () ValueCell!12824)

