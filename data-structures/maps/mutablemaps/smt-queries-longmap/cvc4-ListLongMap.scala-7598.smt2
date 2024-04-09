; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95948 () Bool)

(assert start!95948)

(declare-fun b_free!22565 () Bool)

(declare-fun b_next!22565 () Bool)

(assert (=> start!95948 (= b_free!22565 (not b_next!22565))))

(declare-fun tp!79544 () Bool)

(declare-fun b_and!35823 () Bool)

(assert (=> start!95948 (= tp!79544 b_and!35823)))

(declare-fun res!724301 () Bool)

(declare-fun e!620483 () Bool)

(assert (=> start!95948 (=> (not res!724301) (not e!620483))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95948 (= res!724301 (validMask!0 mask!1414))))

(assert (=> start!95948 e!620483))

(assert (=> start!95948 tp!79544))

(assert (=> start!95948 true))

(declare-fun tp_is_empty!26567 () Bool)

(assert (=> start!95948 tp_is_empty!26567))

(declare-datatypes ((array!70030 0))(
  ( (array!70031 (arr!33685 (Array (_ BitVec 32) (_ BitVec 64))) (size!34222 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70030)

(declare-fun array_inv!25844 (array!70030) Bool)

(assert (=> start!95948 (array_inv!25844 _keys!1070)))

(declare-datatypes ((V!40549 0))(
  ( (V!40550 (val!13340 Int)) )
))
(declare-datatypes ((ValueCell!12574 0))(
  ( (ValueCellFull!12574 (v!15962 V!40549)) (EmptyCell!12574) )
))
(declare-datatypes ((array!70032 0))(
  ( (array!70033 (arr!33686 (Array (_ BitVec 32) ValueCell!12574)) (size!34223 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70032)

(declare-fun e!620488 () Bool)

(declare-fun array_inv!25845 (array!70032) Bool)

(assert (=> start!95948 (and (array_inv!25845 _values!874) e!620488)))

(declare-fun b!1086111 () Bool)

(declare-fun e!620484 () Bool)

(assert (=> b!1086111 (= e!620483 e!620484)))

(declare-fun res!724305 () Bool)

(assert (=> b!1086111 (=> (not res!724305) (not e!620484))))

(declare-fun lt!482504 () array!70030)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70030 (_ BitVec 32)) Bool)

(assert (=> b!1086111 (= res!724305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!482504 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086111 (= lt!482504 (array!70031 (store (arr!33685 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34222 _keys!1070)))))

(declare-fun b!1086112 () Bool)

(declare-fun res!724303 () Bool)

(assert (=> b!1086112 (=> (not res!724303) (not e!620483))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086112 (= res!724303 (validKeyInArray!0 k!904))))

(declare-fun b!1086113 () Bool)

(declare-fun e!620486 () Bool)

(assert (=> b!1086113 (= e!620486 tp_is_empty!26567)))

(declare-fun b!1086114 () Bool)

(declare-fun e!620485 () Bool)

(assert (=> b!1086114 (= e!620485 tp_is_empty!26567)))

(declare-fun mapIsEmpty!41605 () Bool)

(declare-fun mapRes!41605 () Bool)

(assert (=> mapIsEmpty!41605 mapRes!41605))

(declare-fun b!1086115 () Bool)

(declare-fun res!724307 () Bool)

(assert (=> b!1086115 (=> (not res!724307) (not e!620483))))

(declare-datatypes ((List!23624 0))(
  ( (Nil!23621) (Cons!23620 (h!24829 (_ BitVec 64)) (t!33254 List!23624)) )
))
(declare-fun arrayNoDuplicates!0 (array!70030 (_ BitVec 32) List!23624) Bool)

(assert (=> b!1086115 (= res!724307 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23621))))

(declare-fun b!1086116 () Bool)

(declare-fun res!724304 () Bool)

(assert (=> b!1086116 (=> (not res!724304) (not e!620483))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086116 (= res!724304 (and (= (size!34223 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34222 _keys!1070) (size!34223 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!41605 () Bool)

(declare-fun tp!79545 () Bool)

(assert (=> mapNonEmpty!41605 (= mapRes!41605 (and tp!79545 e!620486))))

(declare-fun mapKey!41605 () (_ BitVec 32))

(declare-fun mapValue!41605 () ValueCell!12574)

(declare-fun mapRest!41605 () (Array (_ BitVec 32) ValueCell!12574))

(assert (=> mapNonEmpty!41605 (= (arr!33686 _values!874) (store mapRest!41605 mapKey!41605 mapValue!41605))))

(declare-fun b!1086117 () Bool)

(declare-fun res!724306 () Bool)

(assert (=> b!1086117 (=> (not res!724306) (not e!620484))))

(assert (=> b!1086117 (= res!724306 (arrayNoDuplicates!0 lt!482504 #b00000000000000000000000000000000 Nil!23621))))

(declare-fun b!1086118 () Bool)

(declare-fun res!724297 () Bool)

(assert (=> b!1086118 (=> (not res!724297) (not e!620483))))

(assert (=> b!1086118 (= res!724297 (= (select (arr!33685 _keys!1070) i!650) k!904))))

(declare-fun b!1086119 () Bool)

(declare-fun e!620481 () Bool)

(declare-fun e!620482 () Bool)

(assert (=> b!1086119 (= e!620481 e!620482)))

(declare-fun res!724300 () Bool)

(assert (=> b!1086119 (=> res!724300 e!620482)))

(assert (=> b!1086119 (= res!724300 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!16984 0))(
  ( (tuple2!16985 (_1!8502 (_ BitVec 64)) (_2!8502 V!40549)) )
))
(declare-datatypes ((List!23625 0))(
  ( (Nil!23622) (Cons!23621 (h!24830 tuple2!16984) (t!33255 List!23625)) )
))
(declare-datatypes ((ListLongMap!14965 0))(
  ( (ListLongMap!14966 (toList!7498 List!23625)) )
))
(declare-fun lt!482510 () ListLongMap!14965)

(declare-fun lt!482502 () ListLongMap!14965)

(assert (=> b!1086119 (= lt!482510 lt!482502)))

(declare-fun lt!482511 () ListLongMap!14965)

(declare-fun -!779 (ListLongMap!14965 (_ BitVec 64)) ListLongMap!14965)

(assert (=> b!1086119 (= lt!482510 (-!779 lt!482511 k!904))))

(declare-fun lt!482500 () ListLongMap!14965)

(declare-fun zeroValue!831 () V!40549)

(declare-datatypes ((Unit!35673 0))(
  ( (Unit!35674) )
))
(declare-fun lt!482508 () Unit!35673)

(declare-fun addRemoveCommutativeForDiffKeys!23 (ListLongMap!14965 (_ BitVec 64) V!40549 (_ BitVec 64)) Unit!35673)

(assert (=> b!1086119 (= lt!482508 (addRemoveCommutativeForDiffKeys!23 lt!482500 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!482505 () ListLongMap!14965)

(declare-fun lt!482499 () tuple2!16984)

(declare-fun +!3227 (ListLongMap!14965 tuple2!16984) ListLongMap!14965)

(assert (=> b!1086119 (= lt!482505 (+!3227 lt!482502 lt!482499))))

(declare-fun lt!482501 () ListLongMap!14965)

(declare-fun lt!482513 () tuple2!16984)

(assert (=> b!1086119 (= lt!482502 (+!3227 lt!482501 lt!482513))))

(declare-fun lt!482498 () ListLongMap!14965)

(declare-fun lt!482509 () ListLongMap!14965)

(assert (=> b!1086119 (= lt!482498 lt!482509)))

(assert (=> b!1086119 (= lt!482509 (+!3227 lt!482511 lt!482499))))

(assert (=> b!1086119 (= lt!482511 (+!3227 lt!482500 lt!482513))))

(declare-fun lt!482503 () ListLongMap!14965)

(assert (=> b!1086119 (= lt!482505 (+!3227 (+!3227 lt!482503 lt!482513) lt!482499))))

(declare-fun minValue!831 () V!40549)

(assert (=> b!1086119 (= lt!482499 (tuple2!16985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086119 (= lt!482513 (tuple2!16985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1086120 () Bool)

(declare-fun res!724299 () Bool)

(assert (=> b!1086120 (=> (not res!724299) (not e!620483))))

(assert (=> b!1086120 (= res!724299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1086121 () Bool)

(assert (=> b!1086121 (= e!620482 true)))

(assert (=> b!1086121 (= (-!779 lt!482509 k!904) (+!3227 lt!482510 lt!482499))))

(declare-fun lt!482507 () Unit!35673)

(assert (=> b!1086121 (= lt!482507 (addRemoveCommutativeForDiffKeys!23 lt!482511 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1086122 () Bool)

(declare-fun res!724302 () Bool)

(assert (=> b!1086122 (=> (not res!724302) (not e!620483))))

(assert (=> b!1086122 (= res!724302 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34222 _keys!1070))))))

(declare-fun b!1086123 () Bool)

(assert (=> b!1086123 (= e!620484 (not e!620481))))

(declare-fun res!724298 () Bool)

(assert (=> b!1086123 (=> res!724298 e!620481)))

(assert (=> b!1086123 (= res!724298 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4253 (array!70030 array!70032 (_ BitVec 32) (_ BitVec 32) V!40549 V!40549 (_ BitVec 32) Int) ListLongMap!14965)

(assert (=> b!1086123 (= lt!482498 (getCurrentListMap!4253 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482497 () array!70032)

(assert (=> b!1086123 (= lt!482505 (getCurrentListMap!4253 lt!482504 lt!482497 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1086123 (and (= lt!482503 lt!482501) (= lt!482501 lt!482503))))

(assert (=> b!1086123 (= lt!482501 (-!779 lt!482500 k!904))))

(declare-fun lt!482512 () Unit!35673)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!59 (array!70030 array!70032 (_ BitVec 32) (_ BitVec 32) V!40549 V!40549 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35673)

(assert (=> b!1086123 (= lt!482512 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!59 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4005 (array!70030 array!70032 (_ BitVec 32) (_ BitVec 32) V!40549 V!40549 (_ BitVec 32) Int) ListLongMap!14965)

(assert (=> b!1086123 (= lt!482503 (getCurrentListMapNoExtraKeys!4005 lt!482504 lt!482497 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2141 (Int (_ BitVec 64)) V!40549)

(assert (=> b!1086123 (= lt!482497 (array!70033 (store (arr!33686 _values!874) i!650 (ValueCellFull!12574 (dynLambda!2141 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34223 _values!874)))))

(assert (=> b!1086123 (= lt!482500 (getCurrentListMapNoExtraKeys!4005 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70030 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086123 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!482506 () Unit!35673)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70030 (_ BitVec 64) (_ BitVec 32)) Unit!35673)

(assert (=> b!1086123 (= lt!482506 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1086124 () Bool)

(assert (=> b!1086124 (= e!620488 (and e!620485 mapRes!41605))))

(declare-fun condMapEmpty!41605 () Bool)

(declare-fun mapDefault!41605 () ValueCell!12574)

