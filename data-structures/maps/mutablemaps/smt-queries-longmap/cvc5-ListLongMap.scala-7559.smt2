; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95710 () Bool)

(assert start!95710)

(declare-fun b_free!22327 () Bool)

(declare-fun b_next!22327 () Bool)

(assert (=> start!95710 (= b_free!22327 (not b_next!22327))))

(declare-fun tp!78831 () Bool)

(declare-fun b_and!35347 () Bool)

(assert (=> start!95710 (= tp!78831 b_and!35347)))

(declare-fun mapNonEmpty!41248 () Bool)

(declare-fun mapRes!41248 () Bool)

(declare-fun tp!78830 () Bool)

(declare-fun e!618138 () Bool)

(assert (=> mapNonEmpty!41248 (= mapRes!41248 (and tp!78830 e!618138))))

(declare-datatypes ((V!40233 0))(
  ( (V!40234 (val!13221 Int)) )
))
(declare-datatypes ((ValueCell!12455 0))(
  ( (ValueCellFull!12455 (v!15843 V!40233)) (EmptyCell!12455) )
))
(declare-fun mapRest!41248 () (Array (_ BitVec 32) ValueCell!12455))

(declare-datatypes ((array!69562 0))(
  ( (array!69563 (arr!33451 (Array (_ BitVec 32) ValueCell!12455)) (size!33988 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69562)

(declare-fun mapValue!41248 () ValueCell!12455)

(declare-fun mapKey!41248 () (_ BitVec 32))

(assert (=> mapNonEmpty!41248 (= (arr!33451 _values!874) (store mapRest!41248 mapKey!41248 mapValue!41248))))

(declare-fun b!1081375 () Bool)

(declare-fun res!720873 () Bool)

(declare-fun e!618134 () Bool)

(assert (=> b!1081375 (=> (not res!720873) (not e!618134))))

(declare-datatypes ((array!69564 0))(
  ( (array!69565 (arr!33452 (Array (_ BitVec 32) (_ BitVec 64))) (size!33989 (_ BitVec 32))) )
))
(declare-fun lt!479273 () array!69564)

(declare-datatypes ((List!23447 0))(
  ( (Nil!23444) (Cons!23443 (h!24652 (_ BitVec 64)) (t!32839 List!23447)) )
))
(declare-fun arrayNoDuplicates!0 (array!69564 (_ BitVec 32) List!23447) Bool)

(assert (=> b!1081375 (= res!720873 (arrayNoDuplicates!0 lt!479273 #b00000000000000000000000000000000 Nil!23444))))

(declare-fun b!1081376 () Bool)

(assert (=> b!1081376 (= e!618134 (not true))))

(declare-fun minValue!831 () V!40233)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40233)

(declare-datatypes ((tuple2!16820 0))(
  ( (tuple2!16821 (_1!8420 (_ BitVec 64)) (_2!8420 V!40233)) )
))
(declare-datatypes ((List!23448 0))(
  ( (Nil!23445) (Cons!23444 (h!24653 tuple2!16820) (t!32840 List!23448)) )
))
(declare-datatypes ((ListLongMap!14801 0))(
  ( (ListLongMap!14802 (toList!7416 List!23448)) )
))
(declare-fun lt!479275 () ListLongMap!14801)

(declare-fun defaultEntry!882 () Int)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3927 (array!69564 array!69562 (_ BitVec 32) (_ BitVec 32) V!40233 V!40233 (_ BitVec 32) Int) ListLongMap!14801)

(declare-fun dynLambda!2063 (Int (_ BitVec 64)) V!40233)

(assert (=> b!1081376 (= lt!479275 (getCurrentListMapNoExtraKeys!3927 lt!479273 (array!69563 (store (arr!33451 _values!874) i!650 (ValueCellFull!12455 (dynLambda!2063 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!33988 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479276 () ListLongMap!14801)

(declare-fun _keys!1070 () array!69564)

(assert (=> b!1081376 (= lt!479276 (getCurrentListMapNoExtraKeys!3927 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081376 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35511 0))(
  ( (Unit!35512) )
))
(declare-fun lt!479274 () Unit!35511)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69564 (_ BitVec 64) (_ BitVec 32)) Unit!35511)

(assert (=> b!1081376 (= lt!479274 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1081377 () Bool)

(declare-fun res!720874 () Bool)

(declare-fun e!618135 () Bool)

(assert (=> b!1081377 (=> (not res!720874) (not e!618135))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081377 (= res!720874 (validKeyInArray!0 k!904))))

(declare-fun b!1081379 () Bool)

(declare-fun res!720872 () Bool)

(assert (=> b!1081379 (=> (not res!720872) (not e!618135))))

(assert (=> b!1081379 (= res!720872 (= (select (arr!33452 _keys!1070) i!650) k!904))))

(declare-fun b!1081380 () Bool)

(declare-fun res!720871 () Bool)

(assert (=> b!1081380 (=> (not res!720871) (not e!618135))))

(assert (=> b!1081380 (= res!720871 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33989 _keys!1070))))))

(declare-fun b!1081381 () Bool)

(declare-fun tp_is_empty!26329 () Bool)

(assert (=> b!1081381 (= e!618138 tp_is_empty!26329)))

(declare-fun b!1081382 () Bool)

(declare-fun res!720870 () Bool)

(assert (=> b!1081382 (=> (not res!720870) (not e!618135))))

(assert (=> b!1081382 (= res!720870 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23444))))

(declare-fun mapIsEmpty!41248 () Bool)

(assert (=> mapIsEmpty!41248 mapRes!41248))

(declare-fun b!1081383 () Bool)

(declare-fun res!720878 () Bool)

(assert (=> b!1081383 (=> (not res!720878) (not e!618135))))

(assert (=> b!1081383 (= res!720878 (and (= (size!33988 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33989 _keys!1070) (size!33988 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081384 () Bool)

(declare-fun e!618139 () Bool)

(declare-fun e!618136 () Bool)

(assert (=> b!1081384 (= e!618139 (and e!618136 mapRes!41248))))

(declare-fun condMapEmpty!41248 () Bool)

(declare-fun mapDefault!41248 () ValueCell!12455)

