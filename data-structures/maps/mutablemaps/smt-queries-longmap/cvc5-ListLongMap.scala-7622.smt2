; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96088 () Bool)

(assert start!96088)

(declare-fun b_free!22705 () Bool)

(declare-fun b_next!22705 () Bool)

(assert (=> start!96088 (= b_free!22705 (not b_next!22705))))

(declare-fun tp!79964 () Bool)

(declare-fun b_and!36103 () Bool)

(assert (=> start!96088 (= tp!79964 b_and!36103)))

(declare-fun b!1089200 () Bool)

(declare-fun res!726626 () Bool)

(declare-fun e!622165 () Bool)

(assert (=> b!1089200 (=> (not res!726626) (not e!622165))))

(declare-datatypes ((array!70304 0))(
  ( (array!70305 (arr!33822 (Array (_ BitVec 32) (_ BitVec 64))) (size!34359 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70304)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089200 (= res!726626 (= (select (arr!33822 _keys!1070) i!650) k!904))))

(declare-fun b!1089201 () Bool)

(declare-fun res!726619 () Bool)

(declare-fun e!622168 () Bool)

(assert (=> b!1089201 (=> (not res!726619) (not e!622168))))

(declare-fun lt!485500 () array!70304)

(declare-datatypes ((List!23747 0))(
  ( (Nil!23744) (Cons!23743 (h!24952 (_ BitVec 64)) (t!33517 List!23747)) )
))
(declare-fun arrayNoDuplicates!0 (array!70304 (_ BitVec 32) List!23747) Bool)

(assert (=> b!1089201 (= res!726619 (arrayNoDuplicates!0 lt!485500 #b00000000000000000000000000000000 Nil!23744))))

(declare-fun mapIsEmpty!41815 () Bool)

(declare-fun mapRes!41815 () Bool)

(assert (=> mapIsEmpty!41815 mapRes!41815))

(declare-fun b!1089202 () Bool)

(declare-fun e!622166 () Bool)

(declare-fun tp_is_empty!26707 () Bool)

(assert (=> b!1089202 (= e!622166 tp_is_empty!26707)))

(declare-fun b!1089203 () Bool)

(declare-fun e!622163 () Bool)

(assert (=> b!1089203 (= e!622163 tp_is_empty!26707)))

(declare-fun b!1089204 () Bool)

(declare-fun res!726620 () Bool)

(assert (=> b!1089204 (=> (not res!726620) (not e!622165))))

(assert (=> b!1089204 (= res!726620 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34359 _keys!1070))))))

(declare-fun mapNonEmpty!41815 () Bool)

(declare-fun tp!79965 () Bool)

(assert (=> mapNonEmpty!41815 (= mapRes!41815 (and tp!79965 e!622163))))

(declare-fun mapKey!41815 () (_ BitVec 32))

(declare-datatypes ((V!40737 0))(
  ( (V!40738 (val!13410 Int)) )
))
(declare-datatypes ((ValueCell!12644 0))(
  ( (ValueCellFull!12644 (v!16032 V!40737)) (EmptyCell!12644) )
))
(declare-datatypes ((array!70306 0))(
  ( (array!70307 (arr!33823 (Array (_ BitVec 32) ValueCell!12644)) (size!34360 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70306)

(declare-fun mapRest!41815 () (Array (_ BitVec 32) ValueCell!12644))

(declare-fun mapValue!41815 () ValueCell!12644)

(assert (=> mapNonEmpty!41815 (= (arr!33823 _values!874) (store mapRest!41815 mapKey!41815 mapValue!41815))))

(declare-fun res!726625 () Bool)

(assert (=> start!96088 (=> (not res!726625) (not e!622165))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96088 (= res!726625 (validMask!0 mask!1414))))

(assert (=> start!96088 e!622165))

(assert (=> start!96088 tp!79964))

(assert (=> start!96088 true))

(assert (=> start!96088 tp_is_empty!26707))

(declare-fun array_inv!25948 (array!70304) Bool)

(assert (=> start!96088 (array_inv!25948 _keys!1070)))

(declare-fun e!622164 () Bool)

(declare-fun array_inv!25949 (array!70306) Bool)

(assert (=> start!96088 (and (array_inv!25949 _values!874) e!622164)))

(declare-fun b!1089205 () Bool)

(declare-fun e!622167 () Bool)

(assert (=> b!1089205 (= e!622167 true)))

(declare-datatypes ((tuple2!17108 0))(
  ( (tuple2!17109 (_1!8564 (_ BitVec 64)) (_2!8564 V!40737)) )
))
(declare-datatypes ((List!23748 0))(
  ( (Nil!23745) (Cons!23744 (h!24953 tuple2!17108) (t!33518 List!23748)) )
))
(declare-datatypes ((ListLongMap!15089 0))(
  ( (ListLongMap!15090 (toList!7560 List!23748)) )
))
(declare-fun lt!485504 () ListLongMap!15089)

(declare-fun lt!485502 () ListLongMap!15089)

(declare-fun -!838 (ListLongMap!15089 (_ BitVec 64)) ListLongMap!15089)

(assert (=> b!1089205 (= (-!838 lt!485504 k!904) lt!485502)))

(declare-datatypes ((Unit!35791 0))(
  ( (Unit!35792) )
))
(declare-fun lt!485496 () Unit!35791)

(declare-fun lt!485499 () ListLongMap!15089)

(declare-fun zeroValue!831 () V!40737)

(declare-fun addRemoveCommutativeForDiffKeys!72 (ListLongMap!15089 (_ BitVec 64) V!40737 (_ BitVec 64)) Unit!35791)

(assert (=> b!1089205 (= lt!485496 (addRemoveCommutativeForDiffKeys!72 lt!485499 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1089206 () Bool)

(assert (=> b!1089206 (= e!622164 (and e!622166 mapRes!41815))))

(declare-fun condMapEmpty!41815 () Bool)

(declare-fun mapDefault!41815 () ValueCell!12644)

