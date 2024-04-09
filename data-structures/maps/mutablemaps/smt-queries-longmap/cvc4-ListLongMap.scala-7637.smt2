; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96182 () Bool)

(assert start!96182)

(declare-fun b_free!22799 () Bool)

(declare-fun b_next!22799 () Bool)

(assert (=> start!96182 (= b_free!22799 (not b_next!22799))))

(declare-fun tp!80247 () Bool)

(declare-fun b_and!36291 () Bool)

(assert (=> start!96182 (= tp!80247 b_and!36291)))

(declare-fun b!1091277 () Bool)

(declare-fun res!728177 () Bool)

(declare-fun e!623294 () Bool)

(assert (=> b!1091277 (=> (not res!728177) (not e!623294))))

(declare-datatypes ((array!70488 0))(
  ( (array!70489 (arr!33914 (Array (_ BitVec 32) (_ BitVec 64))) (size!34451 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70488)

(declare-datatypes ((List!23827 0))(
  ( (Nil!23824) (Cons!23823 (h!25032 (_ BitVec 64)) (t!33691 List!23827)) )
))
(declare-fun arrayNoDuplicates!0 (array!70488 (_ BitVec 32) List!23827) Bool)

(assert (=> b!1091277 (= res!728177 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23824))))

(declare-fun b!1091278 () Bool)

(declare-fun res!728181 () Bool)

(assert (=> b!1091278 (=> (not res!728181) (not e!623294))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40861 0))(
  ( (V!40862 (val!13457 Int)) )
))
(declare-datatypes ((ValueCell!12691 0))(
  ( (ValueCellFull!12691 (v!16079 V!40861)) (EmptyCell!12691) )
))
(declare-datatypes ((array!70490 0))(
  ( (array!70491 (arr!33915 (Array (_ BitVec 32) ValueCell!12691)) (size!34452 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70490)

(assert (=> b!1091278 (= res!728181 (and (= (size!34452 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34451 _keys!1070) (size!34452 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091279 () Bool)

(declare-fun res!728182 () Bool)

(declare-fun e!623296 () Bool)

(assert (=> b!1091279 (=> (not res!728182) (not e!623296))))

(declare-fun lt!487307 () array!70488)

(assert (=> b!1091279 (= res!728182 (arrayNoDuplicates!0 lt!487307 #b00000000000000000000000000000000 Nil!23824))))

(declare-fun b!1091280 () Bool)

(declare-fun res!728178 () Bool)

(assert (=> b!1091280 (=> (not res!728178) (not e!623294))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091280 (= res!728178 (validKeyInArray!0 k!904))))

(declare-fun b!1091281 () Bool)

(declare-fun e!623292 () Bool)

(assert (=> b!1091281 (= e!623292 true)))

(declare-datatypes ((tuple2!17188 0))(
  ( (tuple2!17189 (_1!8604 (_ BitVec 64)) (_2!8604 V!40861)) )
))
(declare-datatypes ((List!23828 0))(
  ( (Nil!23825) (Cons!23824 (h!25033 tuple2!17188) (t!33692 List!23828)) )
))
(declare-datatypes ((ListLongMap!15169 0))(
  ( (ListLongMap!15170 (toList!7600 List!23828)) )
))
(declare-fun lt!487306 () ListLongMap!15169)

(declare-fun lt!487309 () ListLongMap!15169)

(declare-fun -!877 (ListLongMap!15169 (_ BitVec 64)) ListLongMap!15169)

(assert (=> b!1091281 (= (-!877 lt!487306 k!904) lt!487309)))

(declare-fun lt!487310 () ListLongMap!15169)

(declare-fun minValue!831 () V!40861)

(declare-datatypes ((Unit!35869 0))(
  ( (Unit!35870) )
))
(declare-fun lt!487305 () Unit!35869)

(declare-fun addRemoveCommutativeForDiffKeys!105 (ListLongMap!15169 (_ BitVec 64) V!40861 (_ BitVec 64)) Unit!35869)

(assert (=> b!1091281 (= lt!487305 (addRemoveCommutativeForDiffKeys!105 lt!487310 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun mapNonEmpty!41956 () Bool)

(declare-fun mapRes!41956 () Bool)

(declare-fun tp!80246 () Bool)

(declare-fun e!623290 () Bool)

(assert (=> mapNonEmpty!41956 (= mapRes!41956 (and tp!80246 e!623290))))

(declare-fun mapRest!41956 () (Array (_ BitVec 32) ValueCell!12691))

(declare-fun mapKey!41956 () (_ BitVec 32))

(declare-fun mapValue!41956 () ValueCell!12691)

(assert (=> mapNonEmpty!41956 (= (arr!33915 _values!874) (store mapRest!41956 mapKey!41956 mapValue!41956))))

(declare-fun b!1091283 () Bool)

(declare-fun e!623291 () Bool)

(declare-fun tp_is_empty!26801 () Bool)

(assert (=> b!1091283 (= e!623291 tp_is_empty!26801)))

(declare-fun b!1091284 () Bool)

(declare-fun e!623293 () Bool)

(assert (=> b!1091284 (= e!623293 (and e!623291 mapRes!41956))))

(declare-fun condMapEmpty!41956 () Bool)

(declare-fun mapDefault!41956 () ValueCell!12691)

