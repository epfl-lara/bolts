; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96508 () Bool)

(assert start!96508)

(declare-fun b_free!23051 () Bool)

(declare-fun b_next!23051 () Bool)

(assert (=> start!96508 (= b_free!23051 (not b_next!23051))))

(declare-fun tp!81080 () Bool)

(declare-fun b_and!36783 () Bool)

(assert (=> start!96508 (= tp!81080 b_and!36783)))

(declare-fun b!1097004 () Bool)

(declare-fun res!732269 () Bool)

(declare-fun e!626164 () Bool)

(assert (=> b!1097004 (=> (not res!732269) (not e!626164))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71062 0))(
  ( (array!71063 (arr!34199 (Array (_ BitVec 32) (_ BitVec 64))) (size!34736 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71062)

(assert (=> b!1097004 (= res!732269 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34736 _keys!1070))))))

(declare-fun b!1097005 () Bool)

(declare-fun e!626169 () Bool)

(declare-fun tp_is_empty!27101 () Bool)

(assert (=> b!1097005 (= e!626169 tp_is_empty!27101)))

(declare-fun b!1097006 () Bool)

(declare-fun e!626168 () Bool)

(assert (=> b!1097006 (= e!626164 e!626168)))

(declare-fun res!732266 () Bool)

(assert (=> b!1097006 (=> (not res!732266) (not e!626168))))

(declare-fun lt!490336 () array!71062)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71062 (_ BitVec 32)) Bool)

(assert (=> b!1097006 (= res!732266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!490336 mask!1414))))

(assert (=> b!1097006 (= lt!490336 (array!71063 (store (arr!34199 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34736 _keys!1070)))))

(declare-fun b!1097007 () Bool)

(declare-fun res!732265 () Bool)

(assert (=> b!1097007 (=> (not res!732265) (not e!626168))))

(declare-datatypes ((List!24021 0))(
  ( (Nil!24018) (Cons!24017 (h!25226 (_ BitVec 64)) (t!34125 List!24021)) )
))
(declare-fun arrayNoDuplicates!0 (array!71062 (_ BitVec 32) List!24021) Bool)

(assert (=> b!1097007 (= res!732265 (arrayNoDuplicates!0 lt!490336 #b00000000000000000000000000000000 Nil!24018))))

(declare-fun b!1097008 () Bool)

(declare-fun res!732272 () Bool)

(assert (=> b!1097008 (=> (not res!732272) (not e!626164))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41261 0))(
  ( (V!41262 (val!13607 Int)) )
))
(declare-datatypes ((ValueCell!12841 0))(
  ( (ValueCellFull!12841 (v!16229 V!41261)) (EmptyCell!12841) )
))
(declare-datatypes ((array!71064 0))(
  ( (array!71065 (arr!34200 (Array (_ BitVec 32) ValueCell!12841)) (size!34737 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71064)

(assert (=> b!1097008 (= res!732272 (and (= (size!34737 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34736 _keys!1070) (size!34737 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1097009 () Bool)

(declare-fun e!626165 () Bool)

(assert (=> b!1097009 (= e!626165 tp_is_empty!27101)))

(declare-fun b!1097010 () Bool)

(declare-fun e!626166 () Bool)

(declare-fun mapRes!42412 () Bool)

(assert (=> b!1097010 (= e!626166 (and e!626165 mapRes!42412))))

(declare-fun condMapEmpty!42412 () Bool)

(declare-fun mapDefault!42412 () ValueCell!12841)

