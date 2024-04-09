; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96212 () Bool)

(assert start!96212)

(declare-fun b_free!22829 () Bool)

(declare-fun b_next!22829 () Bool)

(assert (=> start!96212 (= b_free!22829 (not b_next!22829))))

(declare-fun tp!80337 () Bool)

(declare-fun b_and!36351 () Bool)

(assert (=> start!96212 (= tp!80337 b_and!36351)))

(declare-fun b!1091937 () Bool)

(declare-fun e!623649 () Bool)

(declare-fun e!623653 () Bool)

(assert (=> b!1091937 (= e!623649 e!623653)))

(declare-fun res!728675 () Bool)

(assert (=> b!1091937 (=> res!728675 e!623653)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1091937 (= res!728675 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40901 0))(
  ( (V!40902 (val!13472 Int)) )
))
(declare-datatypes ((tuple2!17212 0))(
  ( (tuple2!17213 (_1!8616 (_ BitVec 64)) (_2!8616 V!40901)) )
))
(declare-datatypes ((List!23851 0))(
  ( (Nil!23848) (Cons!23847 (h!25056 tuple2!17212) (t!33745 List!23851)) )
))
(declare-datatypes ((ListLongMap!15193 0))(
  ( (ListLongMap!15194 (toList!7612 List!23851)) )
))
(declare-fun lt!487883 () ListLongMap!15193)

(declare-fun lt!487885 () ListLongMap!15193)

(assert (=> b!1091937 (= lt!487883 lt!487885)))

(declare-fun lt!487891 () ListLongMap!15193)

(declare-fun lt!487886 () tuple2!17212)

(declare-fun +!3314 (ListLongMap!15193 tuple2!17212) ListLongMap!15193)

(assert (=> b!1091937 (= lt!487885 (+!3314 lt!487891 lt!487886))))

(declare-fun lt!487884 () ListLongMap!15193)

(declare-fun lt!487895 () ListLongMap!15193)

(assert (=> b!1091937 (= lt!487884 lt!487895)))

(declare-fun lt!487894 () ListLongMap!15193)

(assert (=> b!1091937 (= lt!487895 (+!3314 lt!487894 lt!487886))))

(declare-fun lt!487892 () ListLongMap!15193)

(assert (=> b!1091937 (= lt!487884 (+!3314 lt!487892 lt!487886))))

(declare-fun minValue!831 () V!40901)

(assert (=> b!1091937 (= lt!487886 (tuple2!17213 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun res!728672 () Bool)

(declare-fun e!623656 () Bool)

(assert (=> start!96212 (=> (not res!728672) (not e!623656))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96212 (= res!728672 (validMask!0 mask!1414))))

(assert (=> start!96212 e!623656))

(assert (=> start!96212 tp!80337))

(assert (=> start!96212 true))

(declare-fun tp_is_empty!26831 () Bool)

(assert (=> start!96212 tp_is_empty!26831))

(declare-datatypes ((array!70546 0))(
  ( (array!70547 (arr!33943 (Array (_ BitVec 32) (_ BitVec 64))) (size!34480 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70546)

(declare-fun array_inv!26028 (array!70546) Bool)

(assert (=> start!96212 (array_inv!26028 _keys!1070)))

(declare-datatypes ((ValueCell!12706 0))(
  ( (ValueCellFull!12706 (v!16094 V!40901)) (EmptyCell!12706) )
))
(declare-datatypes ((array!70548 0))(
  ( (array!70549 (arr!33944 (Array (_ BitVec 32) ValueCell!12706)) (size!34481 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70548)

(declare-fun e!623651 () Bool)

(declare-fun array_inv!26029 (array!70548) Bool)

(assert (=> start!96212 (and (array_inv!26029 _values!874) e!623651)))

(declare-fun b!1091938 () Bool)

(declare-fun res!728678 () Bool)

(assert (=> b!1091938 (=> (not res!728678) (not e!623656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091938 (= res!728678 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!42001 () Bool)

(declare-fun mapRes!42001 () Bool)

(assert (=> mapIsEmpty!42001 mapRes!42001))

(declare-fun b!1091939 () Bool)

(declare-fun res!728671 () Bool)

(assert (=> b!1091939 (=> (not res!728671) (not e!623656))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1091939 (= res!728671 (= (select (arr!33943 _keys!1070) i!650) k!904))))

(declare-fun b!1091940 () Bool)

(declare-fun e!623650 () Bool)

(assert (=> b!1091940 (= e!623651 (and e!623650 mapRes!42001))))

(declare-fun condMapEmpty!42001 () Bool)

(declare-fun mapDefault!42001 () ValueCell!12706)

