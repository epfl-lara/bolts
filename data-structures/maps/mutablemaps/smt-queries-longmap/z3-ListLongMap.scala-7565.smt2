; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95748 () Bool)

(assert start!95748)

(declare-fun b_free!22365 () Bool)

(declare-fun b_next!22365 () Bool)

(assert (=> start!95748 (= b_free!22365 (not b_next!22365))))

(declare-fun tp!78945 () Bool)

(declare-fun b_and!35423 () Bool)

(assert (=> start!95748 (= tp!78945 b_and!35423)))

(declare-fun b!1082097 () Bool)

(declare-fun res!721390 () Bool)

(declare-fun e!618479 () Bool)

(assert (=> b!1082097 (=> (not res!721390) (not e!618479))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082097 (= res!721390 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!41305 () Bool)

(declare-fun mapRes!41305 () Bool)

(declare-fun tp!78944 () Bool)

(declare-fun e!618480 () Bool)

(assert (=> mapNonEmpty!41305 (= mapRes!41305 (and tp!78944 e!618480))))

(declare-datatypes ((V!40283 0))(
  ( (V!40284 (val!13240 Int)) )
))
(declare-datatypes ((ValueCell!12474 0))(
  ( (ValueCellFull!12474 (v!15862 V!40283)) (EmptyCell!12474) )
))
(declare-datatypes ((array!69638 0))(
  ( (array!69639 (arr!33489 (Array (_ BitVec 32) ValueCell!12474)) (size!34026 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69638)

(declare-fun mapValue!41305 () ValueCell!12474)

(declare-fun mapKey!41305 () (_ BitVec 32))

(declare-fun mapRest!41305 () (Array (_ BitVec 32) ValueCell!12474))

(assert (=> mapNonEmpty!41305 (= (arr!33489 _values!874) (store mapRest!41305 mapKey!41305 mapValue!41305))))

(declare-fun b!1082098 () Bool)

(declare-fun e!618478 () Bool)

(declare-fun e!618481 () Bool)

(assert (=> b!1082098 (= e!618478 (and e!618481 mapRes!41305))))

(declare-fun condMapEmpty!41305 () Bool)

(declare-fun mapDefault!41305 () ValueCell!12474)

(assert (=> b!1082098 (= condMapEmpty!41305 (= (arr!33489 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12474)) mapDefault!41305)))))

(declare-fun b!1082099 () Bool)

(declare-fun tp_is_empty!26367 () Bool)

(assert (=> b!1082099 (= e!618480 tp_is_empty!26367)))

(declare-fun b!1082100 () Bool)

(declare-fun res!721388 () Bool)

(assert (=> b!1082100 (=> (not res!721388) (not e!618479))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69640 0))(
  ( (array!69641 (arr!33490 (Array (_ BitVec 32) (_ BitVec 64))) (size!34027 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69640)

(assert (=> b!1082100 (= res!721388 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34027 _keys!1070))))))

(declare-fun b!1082101 () Bool)

(declare-fun e!618477 () Bool)

(assert (=> b!1082101 (= e!618477 (not true))))

(declare-fun minValue!831 () V!40283)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun lt!479501 () array!69640)

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40283)

(declare-datatypes ((tuple2!16844 0))(
  ( (tuple2!16845 (_1!8432 (_ BitVec 64)) (_2!8432 V!40283)) )
))
(declare-datatypes ((List!23476 0))(
  ( (Nil!23473) (Cons!23472 (h!24681 tuple2!16844) (t!32906 List!23476)) )
))
(declare-datatypes ((ListLongMap!14825 0))(
  ( (ListLongMap!14826 (toList!7428 List!23476)) )
))
(declare-fun lt!479503 () ListLongMap!14825)

(declare-fun getCurrentListMapNoExtraKeys!3939 (array!69640 array!69638 (_ BitVec 32) (_ BitVec 32) V!40283 V!40283 (_ BitVec 32) Int) ListLongMap!14825)

(declare-fun dynLambda!2075 (Int (_ BitVec 64)) V!40283)

(assert (=> b!1082101 (= lt!479503 (getCurrentListMapNoExtraKeys!3939 lt!479501 (array!69639 (store (arr!33489 _values!874) i!650 (ValueCellFull!12474 (dynLambda!2075 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34026 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479504 () ListLongMap!14825)

(assert (=> b!1082101 (= lt!479504 (getCurrentListMapNoExtraKeys!3939 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082101 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35535 0))(
  ( (Unit!35536) )
))
(declare-fun lt!479502 () Unit!35535)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69640 (_ BitVec 64) (_ BitVec 32)) Unit!35535)

(assert (=> b!1082101 (= lt!479502 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1082102 () Bool)

(declare-fun res!721387 () Bool)

(assert (=> b!1082102 (=> (not res!721387) (not e!618477))))

(declare-datatypes ((List!23477 0))(
  ( (Nil!23474) (Cons!23473 (h!24682 (_ BitVec 64)) (t!32907 List!23477)) )
))
(declare-fun arrayNoDuplicates!0 (array!69640 (_ BitVec 32) List!23477) Bool)

(assert (=> b!1082102 (= res!721387 (arrayNoDuplicates!0 lt!479501 #b00000000000000000000000000000000 Nil!23474))))

(declare-fun b!1082103 () Bool)

(assert (=> b!1082103 (= e!618479 e!618477)))

(declare-fun res!721389 () Bool)

(assert (=> b!1082103 (=> (not res!721389) (not e!618477))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69640 (_ BitVec 32)) Bool)

(assert (=> b!1082103 (= res!721389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479501 mask!1414))))

(assert (=> b!1082103 (= lt!479501 (array!69641 (store (arr!33490 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34027 _keys!1070)))))

(declare-fun res!721391 () Bool)

(assert (=> start!95748 (=> (not res!721391) (not e!618479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95748 (= res!721391 (validMask!0 mask!1414))))

(assert (=> start!95748 e!618479))

(assert (=> start!95748 tp!78945))

(assert (=> start!95748 true))

(assert (=> start!95748 tp_is_empty!26367))

(declare-fun array_inv!25714 (array!69640) Bool)

(assert (=> start!95748 (array_inv!25714 _keys!1070)))

(declare-fun array_inv!25715 (array!69638) Bool)

(assert (=> start!95748 (and (array_inv!25715 _values!874) e!618478)))

(declare-fun b!1082104 () Bool)

(declare-fun res!721386 () Bool)

(assert (=> b!1082104 (=> (not res!721386) (not e!618479))))

(assert (=> b!1082104 (= res!721386 (and (= (size!34026 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34027 _keys!1070) (size!34026 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1082105 () Bool)

(assert (=> b!1082105 (= e!618481 tp_is_empty!26367)))

(declare-fun mapIsEmpty!41305 () Bool)

(assert (=> mapIsEmpty!41305 mapRes!41305))

(declare-fun b!1082106 () Bool)

(declare-fun res!721385 () Bool)

(assert (=> b!1082106 (=> (not res!721385) (not e!618479))))

(assert (=> b!1082106 (= res!721385 (= (select (arr!33490 _keys!1070) i!650) k0!904))))

(declare-fun b!1082107 () Bool)

(declare-fun res!721383 () Bool)

(assert (=> b!1082107 (=> (not res!721383) (not e!618479))))

(assert (=> b!1082107 (= res!721383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1082108 () Bool)

(declare-fun res!721384 () Bool)

(assert (=> b!1082108 (=> (not res!721384) (not e!618479))))

(assert (=> b!1082108 (= res!721384 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23474))))

(assert (= (and start!95748 res!721391) b!1082104))

(assert (= (and b!1082104 res!721386) b!1082107))

(assert (= (and b!1082107 res!721383) b!1082108))

(assert (= (and b!1082108 res!721384) b!1082100))

(assert (= (and b!1082100 res!721388) b!1082097))

(assert (= (and b!1082097 res!721390) b!1082106))

(assert (= (and b!1082106 res!721385) b!1082103))

(assert (= (and b!1082103 res!721389) b!1082102))

(assert (= (and b!1082102 res!721387) b!1082101))

(assert (= (and b!1082098 condMapEmpty!41305) mapIsEmpty!41305))

(assert (= (and b!1082098 (not condMapEmpty!41305)) mapNonEmpty!41305))

(get-info :version)

(assert (= (and mapNonEmpty!41305 ((_ is ValueCellFull!12474) mapValue!41305)) b!1082099))

(assert (= (and b!1082098 ((_ is ValueCellFull!12474) mapDefault!41305)) b!1082105))

(assert (= start!95748 b!1082098))

(declare-fun b_lambda!17065 () Bool)

(assert (=> (not b_lambda!17065) (not b!1082101)))

(declare-fun t!32905 () Bool)

(declare-fun tb!7251 () Bool)

(assert (=> (and start!95748 (= defaultEntry!882 defaultEntry!882) t!32905) tb!7251))

(declare-fun result!15013 () Bool)

(assert (=> tb!7251 (= result!15013 tp_is_empty!26367)))

(assert (=> b!1082101 t!32905))

(declare-fun b_and!35425 () Bool)

(assert (= b_and!35423 (and (=> t!32905 result!15013) b_and!35425)))

(declare-fun m!999949 () Bool)

(assert (=> b!1082102 m!999949))

(declare-fun m!999951 () Bool)

(assert (=> b!1082103 m!999951))

(declare-fun m!999953 () Bool)

(assert (=> b!1082103 m!999953))

(declare-fun m!999955 () Bool)

(assert (=> b!1082101 m!999955))

(declare-fun m!999957 () Bool)

(assert (=> b!1082101 m!999957))

(declare-fun m!999959 () Bool)

(assert (=> b!1082101 m!999959))

(declare-fun m!999961 () Bool)

(assert (=> b!1082101 m!999961))

(declare-fun m!999963 () Bool)

(assert (=> b!1082101 m!999963))

(declare-fun m!999965 () Bool)

(assert (=> b!1082101 m!999965))

(declare-fun m!999967 () Bool)

(assert (=> b!1082106 m!999967))

(declare-fun m!999969 () Bool)

(assert (=> b!1082108 m!999969))

(declare-fun m!999971 () Bool)

(assert (=> mapNonEmpty!41305 m!999971))

(declare-fun m!999973 () Bool)

(assert (=> start!95748 m!999973))

(declare-fun m!999975 () Bool)

(assert (=> start!95748 m!999975))

(declare-fun m!999977 () Bool)

(assert (=> start!95748 m!999977))

(declare-fun m!999979 () Bool)

(assert (=> b!1082097 m!999979))

(declare-fun m!999981 () Bool)

(assert (=> b!1082107 m!999981))

(check-sat (not b_next!22365) (not b!1082097) (not mapNonEmpty!41305) tp_is_empty!26367 (not b!1082107) (not b!1082108) (not b!1082103) (not b_lambda!17065) (not b!1082102) (not start!95748) b_and!35425 (not b!1082101))
(check-sat b_and!35425 (not b_next!22365))
