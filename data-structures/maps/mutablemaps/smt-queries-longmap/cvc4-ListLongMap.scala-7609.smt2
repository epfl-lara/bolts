; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96014 () Bool)

(assert start!96014)

(declare-fun b_free!22631 () Bool)

(declare-fun b_next!22631 () Bool)

(assert (=> start!96014 (= b_free!22631 (not b_next!22631))))

(declare-fun tp!79742 () Bool)

(declare-fun b_and!35955 () Bool)

(assert (=> start!96014 (= tp!79742 b_and!35955)))

(declare-fun b!1087572 () Bool)

(declare-fun e!621280 () Bool)

(declare-fun e!621277 () Bool)

(assert (=> b!1087572 (= e!621280 (not e!621277))))

(declare-fun res!725397 () Bool)

(assert (=> b!1087572 (=> res!725397 e!621277)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087572 (= res!725397 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40637 0))(
  ( (V!40638 (val!13373 Int)) )
))
(declare-fun minValue!831 () V!40637)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17038 0))(
  ( (tuple2!17039 (_1!8529 (_ BitVec 64)) (_2!8529 V!40637)) )
))
(declare-datatypes ((List!23679 0))(
  ( (Nil!23676) (Cons!23675 (h!24884 tuple2!17038) (t!33375 List!23679)) )
))
(declare-datatypes ((ListLongMap!15019 0))(
  ( (ListLongMap!15020 (toList!7525 List!23679)) )
))
(declare-fun lt!484058 () ListLongMap!15019)

(declare-fun zeroValue!831 () V!40637)

(declare-datatypes ((array!70158 0))(
  ( (array!70159 (arr!33749 (Array (_ BitVec 32) (_ BitVec 64))) (size!34286 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70158)

(declare-datatypes ((ValueCell!12607 0))(
  ( (ValueCellFull!12607 (v!15995 V!40637)) (EmptyCell!12607) )
))
(declare-datatypes ((array!70160 0))(
  ( (array!70161 (arr!33750 (Array (_ BitVec 32) ValueCell!12607)) (size!34287 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70160)

(declare-fun getCurrentListMap!4278 (array!70158 array!70160 (_ BitVec 32) (_ BitVec 32) V!40637 V!40637 (_ BitVec 32) Int) ListLongMap!15019)

(assert (=> b!1087572 (= lt!484058 (getCurrentListMap!4278 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484052 () array!70160)

(declare-fun lt!484049 () ListLongMap!15019)

(declare-fun lt!484053 () array!70158)

(assert (=> b!1087572 (= lt!484049 (getCurrentListMap!4278 lt!484053 lt!484052 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484060 () ListLongMap!15019)

(declare-fun lt!484051 () ListLongMap!15019)

(assert (=> b!1087572 (and (= lt!484060 lt!484051) (= lt!484051 lt!484060))))

(declare-fun lt!484057 () ListLongMap!15019)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!805 (ListLongMap!15019 (_ BitVec 64)) ListLongMap!15019)

(assert (=> b!1087572 (= lt!484051 (-!805 lt!484057 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35725 0))(
  ( (Unit!35726) )
))
(declare-fun lt!484059 () Unit!35725)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!84 (array!70158 array!70160 (_ BitVec 32) (_ BitVec 32) V!40637 V!40637 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35725)

(assert (=> b!1087572 (= lt!484059 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!84 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4030 (array!70158 array!70160 (_ BitVec 32) (_ BitVec 32) V!40637 V!40637 (_ BitVec 32) Int) ListLongMap!15019)

(assert (=> b!1087572 (= lt!484060 (getCurrentListMapNoExtraKeys!4030 lt!484053 lt!484052 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2166 (Int (_ BitVec 64)) V!40637)

(assert (=> b!1087572 (= lt!484052 (array!70161 (store (arr!33750 _values!874) i!650 (ValueCellFull!12607 (dynLambda!2166 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34287 _values!874)))))

(assert (=> b!1087572 (= lt!484057 (getCurrentListMapNoExtraKeys!4030 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70158 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087572 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!484056 () Unit!35725)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70158 (_ BitVec 64) (_ BitVec 32)) Unit!35725)

(assert (=> b!1087572 (= lt!484056 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1087573 () Bool)

(declare-fun res!725399 () Bool)

(declare-fun e!621278 () Bool)

(assert (=> b!1087573 (=> (not res!725399) (not e!621278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70158 (_ BitVec 32)) Bool)

(assert (=> b!1087573 (= res!725399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087574 () Bool)

(declare-fun e!621274 () Bool)

(declare-fun tp_is_empty!26633 () Bool)

(assert (=> b!1087574 (= e!621274 tp_is_empty!26633)))

(declare-fun b!1087575 () Bool)

(declare-fun res!725402 () Bool)

(assert (=> b!1087575 (=> (not res!725402) (not e!621278))))

(assert (=> b!1087575 (= res!725402 (and (= (size!34287 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34286 _keys!1070) (size!34287 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087576 () Bool)

(declare-fun res!725405 () Bool)

(assert (=> b!1087576 (=> (not res!725405) (not e!621278))))

(assert (=> b!1087576 (= res!725405 (= (select (arr!33749 _keys!1070) i!650) k!904))))

(declare-fun b!1087578 () Bool)

(declare-fun e!621276 () Bool)

(assert (=> b!1087578 (= e!621276 tp_is_empty!26633)))

(declare-fun mapNonEmpty!41704 () Bool)

(declare-fun mapRes!41704 () Bool)

(declare-fun tp!79743 () Bool)

(assert (=> mapNonEmpty!41704 (= mapRes!41704 (and tp!79743 e!621276))))

(declare-fun mapValue!41704 () ValueCell!12607)

(declare-fun mapKey!41704 () (_ BitVec 32))

(declare-fun mapRest!41704 () (Array (_ BitVec 32) ValueCell!12607))

(assert (=> mapNonEmpty!41704 (= (arr!33750 _values!874) (store mapRest!41704 mapKey!41704 mapValue!41704))))

(declare-fun b!1087579 () Bool)

(declare-fun res!725404 () Bool)

(assert (=> b!1087579 (=> (not res!725404) (not e!621280))))

(declare-datatypes ((List!23680 0))(
  ( (Nil!23677) (Cons!23676 (h!24885 (_ BitVec 64)) (t!33376 List!23680)) )
))
(declare-fun arrayNoDuplicates!0 (array!70158 (_ BitVec 32) List!23680) Bool)

(assert (=> b!1087579 (= res!725404 (arrayNoDuplicates!0 lt!484053 #b00000000000000000000000000000000 Nil!23677))))

(declare-fun mapIsEmpty!41704 () Bool)

(assert (=> mapIsEmpty!41704 mapRes!41704))

(declare-fun b!1087577 () Bool)

(declare-fun e!621273 () Bool)

(assert (=> b!1087577 (= e!621273 (and e!621274 mapRes!41704))))

(declare-fun condMapEmpty!41704 () Bool)

(declare-fun mapDefault!41704 () ValueCell!12607)

