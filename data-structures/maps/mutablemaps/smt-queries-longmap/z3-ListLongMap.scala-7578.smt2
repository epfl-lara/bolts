; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95826 () Bool)

(assert start!95826)

(declare-fun b_free!22443 () Bool)

(declare-fun b_next!22443 () Bool)

(assert (=> start!95826 (= b_free!22443 (not b_next!22443))))

(declare-fun tp!79179 () Bool)

(declare-fun b_and!35579 () Bool)

(assert (=> start!95826 (= tp!79179 b_and!35579)))

(declare-fun mapIsEmpty!41422 () Bool)

(declare-fun mapRes!41422 () Bool)

(assert (=> mapIsEmpty!41422 mapRes!41422))

(declare-fun b!1083579 () Bool)

(declare-fun res!722439 () Bool)

(declare-fun e!619178 () Bool)

(assert (=> b!1083579 (=> (not res!722439) (not e!619178))))

(declare-datatypes ((array!69792 0))(
  ( (array!69793 (arr!33566 (Array (_ BitVec 32) (_ BitVec 64))) (size!34103 (_ BitVec 32))) )
))
(declare-fun lt!480158 () array!69792)

(declare-datatypes ((List!23529 0))(
  ( (Nil!23526) (Cons!23525 (h!24734 (_ BitVec 64)) (t!33037 List!23529)) )
))
(declare-fun arrayNoDuplicates!0 (array!69792 (_ BitVec 32) List!23529) Bool)

(assert (=> b!1083579 (= res!722439 (arrayNoDuplicates!0 lt!480158 #b00000000000000000000000000000000 Nil!23526))))

(declare-fun mapNonEmpty!41422 () Bool)

(declare-fun tp!79178 () Bool)

(declare-fun e!619180 () Bool)

(assert (=> mapNonEmpty!41422 (= mapRes!41422 (and tp!79178 e!619180))))

(declare-datatypes ((V!40387 0))(
  ( (V!40388 (val!13279 Int)) )
))
(declare-datatypes ((ValueCell!12513 0))(
  ( (ValueCellFull!12513 (v!15901 V!40387)) (EmptyCell!12513) )
))
(declare-datatypes ((array!69794 0))(
  ( (array!69795 (arr!33567 (Array (_ BitVec 32) ValueCell!12513)) (size!34104 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69794)

(declare-fun mapKey!41422 () (_ BitVec 32))

(declare-fun mapRest!41422 () (Array (_ BitVec 32) ValueCell!12513))

(declare-fun mapValue!41422 () ValueCell!12513)

(assert (=> mapNonEmpty!41422 (= (arr!33567 _values!874) (store mapRest!41422 mapKey!41422 mapValue!41422))))

(declare-fun b!1083580 () Bool)

(declare-fun e!619182 () Bool)

(declare-fun e!619181 () Bool)

(assert (=> b!1083580 (= e!619182 (and e!619181 mapRes!41422))))

(declare-fun condMapEmpty!41422 () Bool)

(declare-fun mapDefault!41422 () ValueCell!12513)

(assert (=> b!1083580 (= condMapEmpty!41422 (= (arr!33567 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12513)) mapDefault!41422)))))

(declare-fun b!1083581 () Bool)

(declare-fun e!619183 () Bool)

(assert (=> b!1083581 (= e!619183 e!619178)))

(declare-fun res!722444 () Bool)

(assert (=> b!1083581 (=> (not res!722444) (not e!619178))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69792 (_ BitVec 32)) Bool)

(assert (=> b!1083581 (= res!722444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480158 mask!1414))))

(declare-fun _keys!1070 () array!69792)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1083581 (= lt!480158 (array!69793 (store (arr!33566 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34103 _keys!1070)))))

(declare-fun res!722443 () Bool)

(assert (=> start!95826 (=> (not res!722443) (not e!619183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95826 (= res!722443 (validMask!0 mask!1414))))

(assert (=> start!95826 e!619183))

(assert (=> start!95826 tp!79179))

(assert (=> start!95826 true))

(declare-fun tp_is_empty!26445 () Bool)

(assert (=> start!95826 tp_is_empty!26445))

(declare-fun array_inv!25758 (array!69792) Bool)

(assert (=> start!95826 (array_inv!25758 _keys!1070)))

(declare-fun array_inv!25759 (array!69794) Bool)

(assert (=> start!95826 (and (array_inv!25759 _values!874) e!619182)))

(declare-fun b!1083582 () Bool)

(assert (=> b!1083582 (= e!619180 tp_is_empty!26445)))

(declare-fun b!1083583 () Bool)

(declare-fun res!722437 () Bool)

(assert (=> b!1083583 (=> (not res!722437) (not e!619183))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1083583 (= res!722437 (= (select (arr!33566 _keys!1070) i!650) k0!904))))

(declare-fun b!1083584 () Bool)

(declare-fun res!722436 () Bool)

(assert (=> b!1083584 (=> (not res!722436) (not e!619183))))

(assert (=> b!1083584 (= res!722436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083585 () Bool)

(declare-fun res!722441 () Bool)

(assert (=> b!1083585 (=> (not res!722441) (not e!619183))))

(assert (=> b!1083585 (= res!722441 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34103 _keys!1070))))))

(declare-fun b!1083586 () Bool)

(assert (=> b!1083586 (= e!619178 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40387)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16890 0))(
  ( (tuple2!16891 (_1!8455 (_ BitVec 64)) (_2!8455 V!40387)) )
))
(declare-datatypes ((List!23530 0))(
  ( (Nil!23527) (Cons!23526 (h!24735 tuple2!16890) (t!33038 List!23530)) )
))
(declare-datatypes ((ListLongMap!14871 0))(
  ( (ListLongMap!14872 (toList!7451 List!23530)) )
))
(declare-fun lt!480156 () ListLongMap!14871)

(declare-fun zeroValue!831 () V!40387)

(declare-fun lt!480151 () array!69794)

(declare-fun getCurrentListMap!4210 (array!69792 array!69794 (_ BitVec 32) (_ BitVec 32) V!40387 V!40387 (_ BitVec 32) Int) ListLongMap!14871)

(assert (=> b!1083586 (= lt!480156 (getCurrentListMap!4210 lt!480158 lt!480151 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480154 () ListLongMap!14871)

(declare-fun lt!480155 () ListLongMap!14871)

(assert (=> b!1083586 (and (= lt!480154 lt!480155) (= lt!480155 lt!480154))))

(declare-fun lt!480157 () ListLongMap!14871)

(declare-fun -!733 (ListLongMap!14871 (_ BitVec 64)) ListLongMap!14871)

(assert (=> b!1083586 (= lt!480155 (-!733 lt!480157 k0!904))))

(declare-datatypes ((Unit!35581 0))(
  ( (Unit!35582) )
))
(declare-fun lt!480153 () Unit!35581)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!16 (array!69792 array!69794 (_ BitVec 32) (_ BitVec 32) V!40387 V!40387 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35581)

(assert (=> b!1083586 (= lt!480153 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!16 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3962 (array!69792 array!69794 (_ BitVec 32) (_ BitVec 32) V!40387 V!40387 (_ BitVec 32) Int) ListLongMap!14871)

(assert (=> b!1083586 (= lt!480154 (getCurrentListMapNoExtraKeys!3962 lt!480158 lt!480151 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2098 (Int (_ BitVec 64)) V!40387)

(assert (=> b!1083586 (= lt!480151 (array!69795 (store (arr!33567 _values!874) i!650 (ValueCellFull!12513 (dynLambda!2098 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34104 _values!874)))))

(assert (=> b!1083586 (= lt!480157 (getCurrentListMapNoExtraKeys!3962 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083586 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!480152 () Unit!35581)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69792 (_ BitVec 64) (_ BitVec 32)) Unit!35581)

(assert (=> b!1083586 (= lt!480152 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1083587 () Bool)

(declare-fun res!722440 () Bool)

(assert (=> b!1083587 (=> (not res!722440) (not e!619183))))

(assert (=> b!1083587 (= res!722440 (and (= (size!34104 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34103 _keys!1070) (size!34104 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083588 () Bool)

(declare-fun res!722442 () Bool)

(assert (=> b!1083588 (=> (not res!722442) (not e!619183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083588 (= res!722442 (validKeyInArray!0 k0!904))))

(declare-fun b!1083589 () Bool)

(declare-fun res!722438 () Bool)

(assert (=> b!1083589 (=> (not res!722438) (not e!619183))))

(assert (=> b!1083589 (= res!722438 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23526))))

(declare-fun b!1083590 () Bool)

(assert (=> b!1083590 (= e!619181 tp_is_empty!26445)))

(assert (= (and start!95826 res!722443) b!1083587))

(assert (= (and b!1083587 res!722440) b!1083584))

(assert (= (and b!1083584 res!722436) b!1083589))

(assert (= (and b!1083589 res!722438) b!1083585))

(assert (= (and b!1083585 res!722441) b!1083588))

(assert (= (and b!1083588 res!722442) b!1083583))

(assert (= (and b!1083583 res!722437) b!1083581))

(assert (= (and b!1083581 res!722444) b!1083579))

(assert (= (and b!1083579 res!722439) b!1083586))

(assert (= (and b!1083580 condMapEmpty!41422) mapIsEmpty!41422))

(assert (= (and b!1083580 (not condMapEmpty!41422)) mapNonEmpty!41422))

(get-info :version)

(assert (= (and mapNonEmpty!41422 ((_ is ValueCellFull!12513) mapValue!41422)) b!1083582))

(assert (= (and b!1083580 ((_ is ValueCellFull!12513) mapDefault!41422)) b!1083590))

(assert (= start!95826 b!1083580))

(declare-fun b_lambda!17143 () Bool)

(assert (=> (not b_lambda!17143) (not b!1083586)))

(declare-fun t!33036 () Bool)

(declare-fun tb!7329 () Bool)

(assert (=> (and start!95826 (= defaultEntry!882 defaultEntry!882) t!33036) tb!7329))

(declare-fun result!15169 () Bool)

(assert (=> tb!7329 (= result!15169 tp_is_empty!26445)))

(assert (=> b!1083586 t!33036))

(declare-fun b_and!35581 () Bool)

(assert (= b_and!35579 (and (=> t!33036 result!15169) b_and!35581)))

(declare-fun m!1001389 () Bool)

(assert (=> b!1083584 m!1001389))

(declare-fun m!1001391 () Bool)

(assert (=> b!1083581 m!1001391))

(declare-fun m!1001393 () Bool)

(assert (=> b!1083581 m!1001393))

(declare-fun m!1001395 () Bool)

(assert (=> b!1083586 m!1001395))

(declare-fun m!1001397 () Bool)

(assert (=> b!1083586 m!1001397))

(declare-fun m!1001399 () Bool)

(assert (=> b!1083586 m!1001399))

(declare-fun m!1001401 () Bool)

(assert (=> b!1083586 m!1001401))

(declare-fun m!1001403 () Bool)

(assert (=> b!1083586 m!1001403))

(declare-fun m!1001405 () Bool)

(assert (=> b!1083586 m!1001405))

(declare-fun m!1001407 () Bool)

(assert (=> b!1083586 m!1001407))

(declare-fun m!1001409 () Bool)

(assert (=> b!1083586 m!1001409))

(declare-fun m!1001411 () Bool)

(assert (=> b!1083586 m!1001411))

(declare-fun m!1001413 () Bool)

(assert (=> b!1083583 m!1001413))

(declare-fun m!1001415 () Bool)

(assert (=> mapNonEmpty!41422 m!1001415))

(declare-fun m!1001417 () Bool)

(assert (=> start!95826 m!1001417))

(declare-fun m!1001419 () Bool)

(assert (=> start!95826 m!1001419))

(declare-fun m!1001421 () Bool)

(assert (=> start!95826 m!1001421))

(declare-fun m!1001423 () Bool)

(assert (=> b!1083579 m!1001423))

(declare-fun m!1001425 () Bool)

(assert (=> b!1083588 m!1001425))

(declare-fun m!1001427 () Bool)

(assert (=> b!1083589 m!1001427))

(check-sat (not b!1083589) (not b!1083581) (not mapNonEmpty!41422) tp_is_empty!26445 (not b!1083584) b_and!35581 (not b_lambda!17143) (not b!1083588) (not b!1083579) (not b!1083586) (not b_next!22443) (not start!95826))
(check-sat b_and!35581 (not b_next!22443))
