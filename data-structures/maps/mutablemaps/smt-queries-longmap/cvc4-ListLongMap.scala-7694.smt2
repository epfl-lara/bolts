; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96628 () Bool)

(assert start!96628)

(declare-fun b_free!23093 () Bool)

(declare-fun b_next!23093 () Bool)

(assert (=> start!96628 (= b_free!23093 (not b_next!23093))))

(declare-fun tp!81215 () Bool)

(declare-fun b_and!36909 () Bool)

(assert (=> start!96628 (= tp!81215 b_and!36909)))

(declare-fun b!1098482 () Bool)

(declare-fun res!733186 () Bool)

(declare-fun e!627002 () Bool)

(assert (=> b!1098482 (=> (not res!733186) (not e!627002))))

(declare-datatypes ((array!71152 0))(
  ( (array!71153 (arr!34241 (Array (_ BitVec 32) (_ BitVec 64))) (size!34778 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71152)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71152 (_ BitVec 32)) Bool)

(assert (=> b!1098482 (= res!733186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!42484 () Bool)

(declare-fun mapRes!42484 () Bool)

(declare-fun tp!81216 () Bool)

(declare-fun e!627000 () Bool)

(assert (=> mapNonEmpty!42484 (= mapRes!42484 (and tp!81216 e!627000))))

(declare-datatypes ((V!41317 0))(
  ( (V!41318 (val!13628 Int)) )
))
(declare-datatypes ((ValueCell!12862 0))(
  ( (ValueCellFull!12862 (v!16253 V!41317)) (EmptyCell!12862) )
))
(declare-fun mapRest!42484 () (Array (_ BitVec 32) ValueCell!12862))

(declare-fun mapKey!42484 () (_ BitVec 32))

(declare-datatypes ((array!71154 0))(
  ( (array!71155 (arr!34242 (Array (_ BitVec 32) ValueCell!12862)) (size!34779 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71154)

(declare-fun mapValue!42484 () ValueCell!12862)

(assert (=> mapNonEmpty!42484 (= (arr!34242 _values!874) (store mapRest!42484 mapKey!42484 mapValue!42484))))

(declare-fun res!733185 () Bool)

(assert (=> start!96628 (=> (not res!733185) (not e!627002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96628 (= res!733185 (validMask!0 mask!1414))))

(assert (=> start!96628 e!627002))

(assert (=> start!96628 tp!81215))

(assert (=> start!96628 true))

(declare-fun tp_is_empty!27143 () Bool)

(assert (=> start!96628 tp_is_empty!27143))

(declare-fun array_inv!26238 (array!71152) Bool)

(assert (=> start!96628 (array_inv!26238 _keys!1070)))

(declare-fun e!627006 () Bool)

(declare-fun array_inv!26239 (array!71154) Bool)

(assert (=> start!96628 (and (array_inv!26239 _values!874) e!627006)))

(declare-fun b!1098483 () Bool)

(declare-fun res!733189 () Bool)

(declare-fun e!627005 () Bool)

(assert (=> b!1098483 (=> (not res!733189) (not e!627005))))

(declare-fun lt!491433 () array!71152)

(declare-datatypes ((List!24055 0))(
  ( (Nil!24052) (Cons!24051 (h!25260 (_ BitVec 64)) (t!34201 List!24055)) )
))
(declare-fun arrayNoDuplicates!0 (array!71152 (_ BitVec 32) List!24055) Bool)

(assert (=> b!1098483 (= res!733189 (arrayNoDuplicates!0 lt!491433 #b00000000000000000000000000000000 Nil!24052))))

(declare-fun b!1098484 () Bool)

(declare-fun e!627001 () Bool)

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1098484 (= e!627001 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904)))))

(declare-datatypes ((tuple2!17378 0))(
  ( (tuple2!17379 (_1!8699 (_ BitVec 64)) (_2!8699 V!41317)) )
))
(declare-datatypes ((List!24056 0))(
  ( (Nil!24053) (Cons!24052 (h!25261 tuple2!17378) (t!34202 List!24056)) )
))
(declare-datatypes ((ListLongMap!15359 0))(
  ( (ListLongMap!15360 (toList!7695 List!24056)) )
))
(declare-fun lt!491429 () ListLongMap!15359)

(declare-fun lt!491434 () ListLongMap!15359)

(declare-fun -!940 (ListLongMap!15359 (_ BitVec 64)) ListLongMap!15359)

(assert (=> b!1098484 (= (-!940 lt!491429 k!904) lt!491434)))

(declare-fun lt!491435 () ListLongMap!15359)

(declare-datatypes ((Unit!36065 0))(
  ( (Unit!36066) )
))
(declare-fun lt!491432 () Unit!36065)

(declare-fun zeroValue!831 () V!41317)

(declare-fun addRemoveCommutativeForDiffKeys!121 (ListLongMap!15359 (_ BitVec 64) V!41317 (_ BitVec 64)) Unit!36065)

(assert (=> b!1098484 (= lt!491432 (addRemoveCommutativeForDiffKeys!121 lt!491435 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!491427 () ListLongMap!15359)

(declare-fun lt!491423 () tuple2!17378)

(declare-fun +!3330 (ListLongMap!15359 tuple2!17378) ListLongMap!15359)

(assert (=> b!1098484 (= lt!491427 (+!3330 lt!491434 lt!491423))))

(declare-fun lt!491428 () ListLongMap!15359)

(declare-fun lt!491431 () tuple2!17378)

(assert (=> b!1098484 (= lt!491434 (+!3330 lt!491428 lt!491431))))

(declare-fun lt!491422 () ListLongMap!15359)

(assert (=> b!1098484 (= lt!491422 (+!3330 lt!491429 lt!491423))))

(assert (=> b!1098484 (= lt!491429 (+!3330 lt!491435 lt!491431))))

(declare-fun lt!491430 () ListLongMap!15359)

(assert (=> b!1098484 (= lt!491427 (+!3330 (+!3330 lt!491430 lt!491431) lt!491423))))

(declare-fun minValue!831 () V!41317)

(assert (=> b!1098484 (= lt!491423 (tuple2!17379 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1098484 (= lt!491431 (tuple2!17379 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1098485 () Bool)

(assert (=> b!1098485 (= e!627000 tp_is_empty!27143)))

(declare-fun b!1098486 () Bool)

(declare-fun res!733191 () Bool)

(assert (=> b!1098486 (=> (not res!733191) (not e!627002))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1098486 (= res!733191 (and (= (size!34779 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34778 _keys!1070) (size!34779 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1098487 () Bool)

(declare-fun res!733183 () Bool)

(assert (=> b!1098487 (=> (not res!733183) (not e!627002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1098487 (= res!733183 (validKeyInArray!0 k!904))))

(declare-fun b!1098488 () Bool)

(declare-fun e!627004 () Bool)

(assert (=> b!1098488 (= e!627006 (and e!627004 mapRes!42484))))

(declare-fun condMapEmpty!42484 () Bool)

(declare-fun mapDefault!42484 () ValueCell!12862)

