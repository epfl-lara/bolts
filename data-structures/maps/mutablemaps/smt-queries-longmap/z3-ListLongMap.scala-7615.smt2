; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96048 () Bool)

(assert start!96048)

(declare-fun b_free!22665 () Bool)

(declare-fun b_next!22665 () Bool)

(assert (=> start!96048 (= b_free!22665 (not b_next!22665))))

(declare-fun tp!79845 () Bool)

(declare-fun b_and!36023 () Bool)

(assert (=> start!96048 (= tp!79845 b_and!36023)))

(declare-fun b!1088320 () Bool)

(declare-fun e!621685 () Bool)

(assert (=> b!1088320 (= e!621685 true)))

(declare-datatypes ((V!40683 0))(
  ( (V!40684 (val!13390 Int)) )
))
(declare-datatypes ((tuple2!17070 0))(
  ( (tuple2!17071 (_1!8545 (_ BitVec 64)) (_2!8545 V!40683)) )
))
(declare-datatypes ((List!23711 0))(
  ( (Nil!23708) (Cons!23707 (h!24916 tuple2!17070) (t!33441 List!23711)) )
))
(declare-datatypes ((ListLongMap!15051 0))(
  ( (ListLongMap!15052 (toList!7541 List!23711)) )
))
(declare-fun lt!484720 () ListLongMap!15051)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun lt!484713 () ListLongMap!15051)

(declare-fun -!821 (ListLongMap!15051 (_ BitVec 64)) ListLongMap!15051)

(assert (=> b!1088320 (= (-!821 lt!484720 k0!904) lt!484713)))

(declare-fun lt!484719 () ListLongMap!15051)

(declare-datatypes ((Unit!35757 0))(
  ( (Unit!35758) )
))
(declare-fun lt!484718 () Unit!35757)

(declare-fun zeroValue!831 () V!40683)

(declare-fun addRemoveCommutativeForDiffKeys!58 (ListLongMap!15051 (_ BitVec 64) V!40683 (_ BitVec 64)) Unit!35757)

(assert (=> b!1088320 (= lt!484718 (addRemoveCommutativeForDiffKeys!58 lt!484719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun res!725964 () Bool)

(declare-fun e!621681 () Bool)

(assert (=> start!96048 (=> (not res!725964) (not e!621681))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96048 (= res!725964 (validMask!0 mask!1414))))

(assert (=> start!96048 e!621681))

(assert (=> start!96048 tp!79845))

(assert (=> start!96048 true))

(declare-fun tp_is_empty!26667 () Bool)

(assert (=> start!96048 tp_is_empty!26667))

(declare-datatypes ((array!70226 0))(
  ( (array!70227 (arr!33783 (Array (_ BitVec 32) (_ BitVec 64))) (size!34320 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70226)

(declare-fun array_inv!25920 (array!70226) Bool)

(assert (=> start!96048 (array_inv!25920 _keys!1070)))

(declare-datatypes ((ValueCell!12624 0))(
  ( (ValueCellFull!12624 (v!16012 V!40683)) (EmptyCell!12624) )
))
(declare-datatypes ((array!70228 0))(
  ( (array!70229 (arr!33784 (Array (_ BitVec 32) ValueCell!12624)) (size!34321 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70228)

(declare-fun e!621683 () Bool)

(declare-fun array_inv!25921 (array!70228) Bool)

(assert (=> start!96048 (and (array_inv!25921 _values!874) e!621683)))

(declare-fun b!1088321 () Bool)

(declare-fun e!621682 () Bool)

(assert (=> b!1088321 (= e!621682 tp_is_empty!26667)))

(declare-fun mapNonEmpty!41755 () Bool)

(declare-fun mapRes!41755 () Bool)

(declare-fun tp!79844 () Bool)

(declare-fun e!621684 () Bool)

(assert (=> mapNonEmpty!41755 (= mapRes!41755 (and tp!79844 e!621684))))

(declare-fun mapValue!41755 () ValueCell!12624)

(declare-fun mapKey!41755 () (_ BitVec 32))

(declare-fun mapRest!41755 () (Array (_ BitVec 32) ValueCell!12624))

(assert (=> mapNonEmpty!41755 (= (arr!33784 _values!874) (store mapRest!41755 mapKey!41755 mapValue!41755))))

(declare-fun b!1088322 () Bool)

(declare-fun e!621687 () Bool)

(assert (=> b!1088322 (= e!621681 e!621687)))

(declare-fun res!725963 () Bool)

(assert (=> b!1088322 (=> (not res!725963) (not e!621687))))

(declare-fun lt!484724 () array!70226)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70226 (_ BitVec 32)) Bool)

(assert (=> b!1088322 (= res!725963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484724 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088322 (= lt!484724 (array!70227 (store (arr!33783 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34320 _keys!1070)))))

(declare-fun b!1088323 () Bool)

(declare-fun res!725966 () Bool)

(assert (=> b!1088323 (=> (not res!725966) (not e!621681))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1088323 (= res!725966 (and (= (size!34321 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34320 _keys!1070) (size!34321 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088324 () Bool)

(declare-fun e!621686 () Bool)

(assert (=> b!1088324 (= e!621687 (not e!621686))))

(declare-fun res!725956 () Bool)

(assert (=> b!1088324 (=> res!725956 e!621686)))

(assert (=> b!1088324 (= res!725956 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40683)

(declare-fun lt!484716 () ListLongMap!15051)

(declare-fun getCurrentListMap!4291 (array!70226 array!70228 (_ BitVec 32) (_ BitVec 32) V!40683 V!40683 (_ BitVec 32) Int) ListLongMap!15051)

(assert (=> b!1088324 (= lt!484716 (getCurrentListMap!4291 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484714 () array!70228)

(declare-fun lt!484722 () ListLongMap!15051)

(assert (=> b!1088324 (= lt!484722 (getCurrentListMap!4291 lt!484724 lt!484714 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484715 () ListLongMap!15051)

(declare-fun lt!484723 () ListLongMap!15051)

(assert (=> b!1088324 (and (= lt!484715 lt!484723) (= lt!484723 lt!484715))))

(assert (=> b!1088324 (= lt!484723 (-!821 lt!484719 k0!904))))

(declare-fun lt!484712 () Unit!35757)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!97 (array!70226 array!70228 (_ BitVec 32) (_ BitVec 32) V!40683 V!40683 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35757)

(assert (=> b!1088324 (= lt!484712 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!97 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4043 (array!70226 array!70228 (_ BitVec 32) (_ BitVec 32) V!40683 V!40683 (_ BitVec 32) Int) ListLongMap!15051)

(assert (=> b!1088324 (= lt!484715 (getCurrentListMapNoExtraKeys!4043 lt!484724 lt!484714 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2179 (Int (_ BitVec 64)) V!40683)

(assert (=> b!1088324 (= lt!484714 (array!70229 (store (arr!33784 _values!874) i!650 (ValueCellFull!12624 (dynLambda!2179 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34321 _values!874)))))

(assert (=> b!1088324 (= lt!484719 (getCurrentListMapNoExtraKeys!4043 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70226 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088324 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!484717 () Unit!35757)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70226 (_ BitVec 64) (_ BitVec 32)) Unit!35757)

(assert (=> b!1088324 (= lt!484717 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1088325 () Bool)

(assert (=> b!1088325 (= e!621683 (and e!621682 mapRes!41755))))

(declare-fun condMapEmpty!41755 () Bool)

(declare-fun mapDefault!41755 () ValueCell!12624)

(assert (=> b!1088325 (= condMapEmpty!41755 (= (arr!33784 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12624)) mapDefault!41755)))))

(declare-fun b!1088326 () Bool)

(declare-fun res!725957 () Bool)

(assert (=> b!1088326 (=> (not res!725957) (not e!621681))))

(assert (=> b!1088326 (= res!725957 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34320 _keys!1070))))))

(declare-fun b!1088327 () Bool)

(declare-fun res!725959 () Bool)

(assert (=> b!1088327 (=> (not res!725959) (not e!621687))))

(declare-datatypes ((List!23712 0))(
  ( (Nil!23709) (Cons!23708 (h!24917 (_ BitVec 64)) (t!33442 List!23712)) )
))
(declare-fun arrayNoDuplicates!0 (array!70226 (_ BitVec 32) List!23712) Bool)

(assert (=> b!1088327 (= res!725959 (arrayNoDuplicates!0 lt!484724 #b00000000000000000000000000000000 Nil!23709))))

(declare-fun mapIsEmpty!41755 () Bool)

(assert (=> mapIsEmpty!41755 mapRes!41755))

(declare-fun b!1088328 () Bool)

(assert (=> b!1088328 (= e!621684 tp_is_empty!26667)))

(declare-fun b!1088329 () Bool)

(declare-fun res!725962 () Bool)

(assert (=> b!1088329 (=> (not res!725962) (not e!621681))))

(assert (=> b!1088329 (= res!725962 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23709))))

(declare-fun b!1088330 () Bool)

(assert (=> b!1088330 (= e!621686 e!621685)))

(declare-fun res!725960 () Bool)

(assert (=> b!1088330 (=> res!725960 e!621685)))

(assert (=> b!1088330 (= res!725960 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1088330 (= lt!484722 lt!484713)))

(declare-fun lt!484721 () tuple2!17070)

(declare-fun +!3261 (ListLongMap!15051 tuple2!17070) ListLongMap!15051)

(assert (=> b!1088330 (= lt!484713 (+!3261 lt!484723 lt!484721))))

(assert (=> b!1088330 (= lt!484716 lt!484720)))

(assert (=> b!1088330 (= lt!484720 (+!3261 lt!484719 lt!484721))))

(assert (=> b!1088330 (= lt!484722 (+!3261 lt!484715 lt!484721))))

(assert (=> b!1088330 (= lt!484721 (tuple2!17071 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088331 () Bool)

(declare-fun res!725961 () Bool)

(assert (=> b!1088331 (=> (not res!725961) (not e!621681))))

(assert (=> b!1088331 (= res!725961 (= (select (arr!33783 _keys!1070) i!650) k0!904))))

(declare-fun b!1088332 () Bool)

(declare-fun res!725965 () Bool)

(assert (=> b!1088332 (=> (not res!725965) (not e!621681))))

(assert (=> b!1088332 (= res!725965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1088333 () Bool)

(declare-fun res!725958 () Bool)

(assert (=> b!1088333 (=> (not res!725958) (not e!621681))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088333 (= res!725958 (validKeyInArray!0 k0!904))))

(assert (= (and start!96048 res!725964) b!1088323))

(assert (= (and b!1088323 res!725966) b!1088332))

(assert (= (and b!1088332 res!725965) b!1088329))

(assert (= (and b!1088329 res!725962) b!1088326))

(assert (= (and b!1088326 res!725957) b!1088333))

(assert (= (and b!1088333 res!725958) b!1088331))

(assert (= (and b!1088331 res!725961) b!1088322))

(assert (= (and b!1088322 res!725963) b!1088327))

(assert (= (and b!1088327 res!725959) b!1088324))

(assert (= (and b!1088324 (not res!725956)) b!1088330))

(assert (= (and b!1088330 (not res!725960)) b!1088320))

(assert (= (and b!1088325 condMapEmpty!41755) mapIsEmpty!41755))

(assert (= (and b!1088325 (not condMapEmpty!41755)) mapNonEmpty!41755))

(get-info :version)

(assert (= (and mapNonEmpty!41755 ((_ is ValueCellFull!12624) mapValue!41755)) b!1088328))

(assert (= (and b!1088325 ((_ is ValueCellFull!12624) mapDefault!41755)) b!1088321))

(assert (= start!96048 b!1088325))

(declare-fun b_lambda!17365 () Bool)

(assert (=> (not b_lambda!17365) (not b!1088324)))

(declare-fun t!33440 () Bool)

(declare-fun tb!7551 () Bool)

(assert (=> (and start!96048 (= defaultEntry!882 defaultEntry!882) t!33440) tb!7551))

(declare-fun result!15613 () Bool)

(assert (=> tb!7551 (= result!15613 tp_is_empty!26667)))

(assert (=> b!1088324 t!33440))

(declare-fun b_and!36025 () Bool)

(assert (= b_and!36023 (and (=> t!33440 result!15613) b_and!36025)))

(declare-fun m!1007509 () Bool)

(assert (=> start!96048 m!1007509))

(declare-fun m!1007511 () Bool)

(assert (=> start!96048 m!1007511))

(declare-fun m!1007513 () Bool)

(assert (=> start!96048 m!1007513))

(declare-fun m!1007515 () Bool)

(assert (=> b!1088333 m!1007515))

(declare-fun m!1007517 () Bool)

(assert (=> b!1088324 m!1007517))

(declare-fun m!1007519 () Bool)

(assert (=> b!1088324 m!1007519))

(declare-fun m!1007521 () Bool)

(assert (=> b!1088324 m!1007521))

(declare-fun m!1007523 () Bool)

(assert (=> b!1088324 m!1007523))

(declare-fun m!1007525 () Bool)

(assert (=> b!1088324 m!1007525))

(declare-fun m!1007527 () Bool)

(assert (=> b!1088324 m!1007527))

(declare-fun m!1007529 () Bool)

(assert (=> b!1088324 m!1007529))

(declare-fun m!1007531 () Bool)

(assert (=> b!1088324 m!1007531))

(declare-fun m!1007533 () Bool)

(assert (=> b!1088324 m!1007533))

(declare-fun m!1007535 () Bool)

(assert (=> b!1088324 m!1007535))

(declare-fun m!1007537 () Bool)

(assert (=> b!1088329 m!1007537))

(declare-fun m!1007539 () Bool)

(assert (=> b!1088331 m!1007539))

(declare-fun m!1007541 () Bool)

(assert (=> b!1088322 m!1007541))

(declare-fun m!1007543 () Bool)

(assert (=> b!1088322 m!1007543))

(declare-fun m!1007545 () Bool)

(assert (=> b!1088330 m!1007545))

(declare-fun m!1007547 () Bool)

(assert (=> b!1088330 m!1007547))

(declare-fun m!1007549 () Bool)

(assert (=> b!1088330 m!1007549))

(declare-fun m!1007551 () Bool)

(assert (=> b!1088332 m!1007551))

(declare-fun m!1007553 () Bool)

(assert (=> mapNonEmpty!41755 m!1007553))

(declare-fun m!1007555 () Bool)

(assert (=> b!1088327 m!1007555))

(declare-fun m!1007557 () Bool)

(assert (=> b!1088320 m!1007557))

(declare-fun m!1007559 () Bool)

(assert (=> b!1088320 m!1007559))

(check-sat (not b!1088333) tp_is_empty!26667 (not b!1088327) (not b!1088329) (not b!1088322) (not b!1088320) (not mapNonEmpty!41755) (not b_lambda!17365) (not b!1088324) (not b!1088332) (not b_next!22665) (not b!1088330) b_and!36025 (not start!96048))
(check-sat b_and!36025 (not b_next!22665))
