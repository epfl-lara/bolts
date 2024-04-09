; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96910 () Bool)

(assert start!96910)

(declare-fun b_free!23191 () Bool)

(declare-fun b_next!23191 () Bool)

(assert (=> start!96910 (= b_free!23191 (not b_next!23191))))

(declare-fun tp!81531 () Bool)

(declare-fun b_and!37203 () Bool)

(assert (=> start!96910 (= tp!81531 b_and!37203)))

(declare-fun b!1102022 () Bool)

(declare-fun res!735418 () Bool)

(declare-fun e!629061 () Bool)

(assert (=> b!1102022 (=> (not res!735418) (not e!629061))))

(declare-datatypes ((array!71356 0))(
  ( (array!71357 (arr!34336 (Array (_ BitVec 32) (_ BitVec 64))) (size!34873 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71356)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71356 (_ BitVec 32)) Bool)

(assert (=> b!1102022 (= res!735418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1102023 () Bool)

(declare-fun res!735414 () Bool)

(assert (=> b!1102023 (=> (not res!735414) (not e!629061))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1102023 (= res!735414 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34873 _keys!1070))))))

(declare-fun b!1102024 () Bool)

(declare-fun res!735413 () Bool)

(assert (=> b!1102024 (=> (not res!735413) (not e!629061))))

(declare-datatypes ((List!24135 0))(
  ( (Nil!24132) (Cons!24131 (h!25340 (_ BitVec 64)) (t!34379 List!24135)) )
))
(declare-fun arrayNoDuplicates!0 (array!71356 (_ BitVec 32) List!24135) Bool)

(assert (=> b!1102024 (= res!735413 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24132))))

(declare-datatypes ((V!41449 0))(
  ( (V!41450 (val!13677 Int)) )
))
(declare-datatypes ((tuple2!17464 0))(
  ( (tuple2!17465 (_1!8742 (_ BitVec 64)) (_2!8742 V!41449)) )
))
(declare-datatypes ((List!24136 0))(
  ( (Nil!24133) (Cons!24132 (h!25341 tuple2!17464) (t!34380 List!24136)) )
))
(declare-datatypes ((ListLongMap!15445 0))(
  ( (ListLongMap!15446 (toList!7738 List!24136)) )
))
(declare-fun lt!494309 () ListLongMap!15445)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!494312 () ListLongMap!15445)

(declare-fun b!1102025 () Bool)

(declare-fun e!629057 () Bool)

(declare-fun -!975 (ListLongMap!15445 (_ BitVec 64)) ListLongMap!15445)

(assert (=> b!1102025 (= e!629057 (= (-!975 lt!494312 k!904) lt!494309))))

(declare-fun lt!494310 () ListLongMap!15445)

(declare-fun lt!494311 () ListLongMap!15445)

(assert (=> b!1102025 (= (-!975 lt!494310 k!904) lt!494311)))

(declare-fun lt!494313 () ListLongMap!15445)

(declare-fun minValue!831 () V!41449)

(declare-datatypes ((Unit!36149 0))(
  ( (Unit!36150) )
))
(declare-fun lt!494308 () Unit!36149)

(declare-fun addRemoveCommutativeForDiffKeys!142 (ListLongMap!15445 (_ BitVec 64) V!41449 (_ BitVec 64)) Unit!36149)

(assert (=> b!1102025 (= lt!494308 (addRemoveCommutativeForDiffKeys!142 lt!494313 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1102026 () Bool)

(declare-fun res!735423 () Bool)

(assert (=> b!1102026 (=> (not res!735423) (not e!629061))))

(assert (=> b!1102026 (= res!735423 (= (select (arr!34336 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!42652 () Bool)

(declare-fun mapRes!42652 () Bool)

(assert (=> mapIsEmpty!42652 mapRes!42652))

(declare-fun b!1102028 () Bool)

(declare-fun e!629054 () Bool)

(assert (=> b!1102028 (= e!629054 e!629057)))

(declare-fun res!735416 () Bool)

(assert (=> b!1102028 (=> res!735416 e!629057)))

(assert (=> b!1102028 (= res!735416 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(assert (=> b!1102028 (= lt!494312 lt!494310)))

(declare-fun lt!494306 () tuple2!17464)

(declare-fun +!3368 (ListLongMap!15445 tuple2!17464) ListLongMap!15445)

(assert (=> b!1102028 (= lt!494310 (+!3368 lt!494313 lt!494306))))

(assert (=> b!1102028 (= lt!494309 lt!494311)))

(declare-fun lt!494303 () ListLongMap!15445)

(assert (=> b!1102028 (= lt!494311 (+!3368 lt!494303 lt!494306))))

(declare-fun lt!494307 () ListLongMap!15445)

(assert (=> b!1102028 (= lt!494309 (+!3368 lt!494307 lt!494306))))

(assert (=> b!1102028 (= lt!494306 (tuple2!17465 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun mapNonEmpty!42652 () Bool)

(declare-fun tp!81530 () Bool)

(declare-fun e!629055 () Bool)

(assert (=> mapNonEmpty!42652 (= mapRes!42652 (and tp!81530 e!629055))))

(declare-datatypes ((ValueCell!12911 0))(
  ( (ValueCellFull!12911 (v!16309 V!41449)) (EmptyCell!12911) )
))
(declare-datatypes ((array!71358 0))(
  ( (array!71359 (arr!34337 (Array (_ BitVec 32) ValueCell!12911)) (size!34874 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71358)

(declare-fun mapRest!42652 () (Array (_ BitVec 32) ValueCell!12911))

(declare-fun mapValue!42652 () ValueCell!12911)

(declare-fun mapKey!42652 () (_ BitVec 32))

(assert (=> mapNonEmpty!42652 (= (arr!34337 _values!874) (store mapRest!42652 mapKey!42652 mapValue!42652))))

(declare-fun b!1102029 () Bool)

(declare-fun tp_is_empty!27241 () Bool)

(assert (=> b!1102029 (= e!629055 tp_is_empty!27241)))

(declare-fun b!1102027 () Bool)

(declare-fun e!629060 () Bool)

(declare-fun e!629058 () Bool)

(assert (=> b!1102027 (= e!629060 (and e!629058 mapRes!42652))))

(declare-fun condMapEmpty!42652 () Bool)

(declare-fun mapDefault!42652 () ValueCell!12911)

