; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95648 () Bool)

(assert start!95648)

(declare-fun b_free!22265 () Bool)

(declare-fun b_next!22265 () Bool)

(assert (=> start!95648 (= b_free!22265 (not b_next!22265))))

(declare-fun tp!78644 () Bool)

(declare-fun b_and!35261 () Bool)

(assert (=> start!95648 (= tp!78644 b_and!35261)))

(declare-fun b!1080235 () Bool)

(declare-fun res!720039 () Bool)

(declare-fun e!617579 () Bool)

(assert (=> b!1080235 (=> (not res!720039) (not e!617579))))

(declare-datatypes ((array!69440 0))(
  ( (array!69441 (arr!33390 (Array (_ BitVec 32) (_ BitVec 64))) (size!33927 (_ BitVec 32))) )
))
(declare-fun lt!478957 () array!69440)

(declare-datatypes ((List!23396 0))(
  ( (Nil!23393) (Cons!23392 (h!24601 (_ BitVec 64)) (t!32762 List!23396)) )
))
(declare-fun arrayNoDuplicates!0 (array!69440 (_ BitVec 32) List!23396) Bool)

(assert (=> b!1080235 (= res!720039 (arrayNoDuplicates!0 lt!478957 #b00000000000000000000000000000000 Nil!23393))))

(declare-fun b!1080236 () Bool)

(declare-fun e!617578 () Bool)

(assert (=> b!1080236 (= e!617578 e!617579)))

(declare-fun res!720033 () Bool)

(assert (=> b!1080236 (=> (not res!720033) (not e!617579))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69440 (_ BitVec 32)) Bool)

(assert (=> b!1080236 (= res!720033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478957 mask!1414))))

(declare-fun _keys!1070 () array!69440)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080236 (= lt!478957 (array!69441 (store (arr!33390 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33927 _keys!1070)))))

(declare-fun mapIsEmpty!41155 () Bool)

(declare-fun mapRes!41155 () Bool)

(assert (=> mapIsEmpty!41155 mapRes!41155))

(declare-fun b!1080237 () Bool)

(declare-fun e!617576 () Bool)

(declare-fun tp_is_empty!26267 () Bool)

(assert (=> b!1080237 (= e!617576 tp_is_empty!26267)))

(declare-fun res!720041 () Bool)

(assert (=> start!95648 (=> (not res!720041) (not e!617578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95648 (= res!720041 (validMask!0 mask!1414))))

(assert (=> start!95648 e!617578))

(assert (=> start!95648 tp!78644))

(assert (=> start!95648 true))

(assert (=> start!95648 tp_is_empty!26267))

(declare-fun array_inv!25644 (array!69440) Bool)

(assert (=> start!95648 (array_inv!25644 _keys!1070)))

(declare-datatypes ((V!40149 0))(
  ( (V!40150 (val!13190 Int)) )
))
(declare-datatypes ((ValueCell!12424 0))(
  ( (ValueCellFull!12424 (v!15812 V!40149)) (EmptyCell!12424) )
))
(declare-datatypes ((array!69442 0))(
  ( (array!69443 (arr!33391 (Array (_ BitVec 32) ValueCell!12424)) (size!33928 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69442)

(declare-fun e!617577 () Bool)

(declare-fun array_inv!25645 (array!69442) Bool)

(assert (=> start!95648 (and (array_inv!25645 _values!874) e!617577)))

(declare-fun b!1080238 () Bool)

(declare-fun res!720034 () Bool)

(assert (=> b!1080238 (=> (not res!720034) (not e!617578))))

(assert (=> b!1080238 (= res!720034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080239 () Bool)

(assert (=> b!1080239 (= e!617579 (not true))))

(declare-datatypes ((tuple2!16774 0))(
  ( (tuple2!16775 (_1!8397 (_ BitVec 64)) (_2!8397 V!40149)) )
))
(declare-datatypes ((List!23397 0))(
  ( (Nil!23394) (Cons!23393 (h!24602 tuple2!16774) (t!32763 List!23397)) )
))
(declare-datatypes ((ListLongMap!14755 0))(
  ( (ListLongMap!14756 (toList!7393 List!23397)) )
))
(declare-fun lt!478956 () ListLongMap!14755)

(declare-fun minValue!831 () V!40149)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40149)

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3904 (array!69440 array!69442 (_ BitVec 32) (_ BitVec 32) V!40149 V!40149 (_ BitVec 32) Int) ListLongMap!14755)

(assert (=> b!1080239 (= lt!478956 (getCurrentListMapNoExtraKeys!3904 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080239 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35465 0))(
  ( (Unit!35466) )
))
(declare-fun lt!478958 () Unit!35465)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69440 (_ BitVec 64) (_ BitVec 32)) Unit!35465)

(assert (=> b!1080239 (= lt!478958 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1080240 () Bool)

(declare-fun res!720037 () Bool)

(assert (=> b!1080240 (=> (not res!720037) (not e!617578))))

(assert (=> b!1080240 (= res!720037 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23393))))

(declare-fun b!1080241 () Bool)

(declare-fun e!617580 () Bool)

(assert (=> b!1080241 (= e!617580 tp_is_empty!26267)))

(declare-fun b!1080242 () Bool)

(declare-fun res!720038 () Bool)

(assert (=> b!1080242 (=> (not res!720038) (not e!617578))))

(assert (=> b!1080242 (= res!720038 (= (select (arr!33390 _keys!1070) i!650) k!904))))

(declare-fun b!1080243 () Bool)

(assert (=> b!1080243 (= e!617577 (and e!617580 mapRes!41155))))

(declare-fun condMapEmpty!41155 () Bool)

(declare-fun mapDefault!41155 () ValueCell!12424)

