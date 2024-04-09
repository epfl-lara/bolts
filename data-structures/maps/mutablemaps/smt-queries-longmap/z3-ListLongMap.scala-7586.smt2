; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95874 () Bool)

(assert start!95874)

(declare-fun b_free!22491 () Bool)

(declare-fun b_next!22491 () Bool)

(assert (=> start!95874 (= b_free!22491 (not b_next!22491))))

(declare-fun tp!79323 () Bool)

(declare-fun b_and!35675 () Bool)

(assert (=> start!95874 (= tp!79323 b_and!35675)))

(declare-fun b!1084491 () Bool)

(declare-fun res!723088 () Bool)

(declare-fun e!619610 () Bool)

(assert (=> b!1084491 (=> (not res!723088) (not e!619610))))

(declare-datatypes ((array!69888 0))(
  ( (array!69889 (arr!33614 (Array (_ BitVec 32) (_ BitVec 64))) (size!34151 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69888)

(declare-datatypes ((List!23565 0))(
  ( (Nil!23562) (Cons!23561 (h!24770 (_ BitVec 64)) (t!33121 List!23565)) )
))
(declare-fun arrayNoDuplicates!0 (array!69888 (_ BitVec 32) List!23565) Bool)

(assert (=> b!1084491 (= res!723088 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23562))))

(declare-fun b!1084492 () Bool)

(declare-fun res!723087 () Bool)

(assert (=> b!1084492 (=> (not res!723087) (not e!619610))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1084492 (= res!723087 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34151 _keys!1070))))))

(declare-fun b!1084493 () Bool)

(declare-fun e!619612 () Bool)

(assert (=> b!1084493 (= e!619612 (not (bvsle #b00000000000000000000000000000000 (size!34151 _keys!1070))))))

(declare-fun defaultEntry!882 () Int)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun lt!480729 () array!69888)

(declare-datatypes ((V!40451 0))(
  ( (V!40452 (val!13303 Int)) )
))
(declare-fun zeroValue!831 () V!40451)

(declare-datatypes ((tuple2!16922 0))(
  ( (tuple2!16923 (_1!8471 (_ BitVec 64)) (_2!8471 V!40451)) )
))
(declare-datatypes ((List!23566 0))(
  ( (Nil!23563) (Cons!23562 (h!24771 tuple2!16922) (t!33122 List!23566)) )
))
(declare-datatypes ((ListLongMap!14903 0))(
  ( (ListLongMap!14904 (toList!7467 List!23566)) )
))
(declare-fun lt!480733 () ListLongMap!14903)

(declare-fun minValue!831 () V!40451)

(declare-datatypes ((ValueCell!12537 0))(
  ( (ValueCellFull!12537 (v!15925 V!40451)) (EmptyCell!12537) )
))
(declare-datatypes ((array!69890 0))(
  ( (array!69891 (arr!33615 (Array (_ BitVec 32) ValueCell!12537)) (size!34152 (_ BitVec 32))) )
))
(declare-fun lt!480728 () array!69890)

(declare-fun getCurrentListMap!4226 (array!69888 array!69890 (_ BitVec 32) (_ BitVec 32) V!40451 V!40451 (_ BitVec 32) Int) ListLongMap!14903)

(assert (=> b!1084493 (= lt!480733 (getCurrentListMap!4226 lt!480729 lt!480728 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480732 () ListLongMap!14903)

(declare-fun lt!480731 () ListLongMap!14903)

(assert (=> b!1084493 (and (= lt!480732 lt!480731) (= lt!480731 lt!480732))))

(declare-fun lt!480730 () ListLongMap!14903)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!749 (ListLongMap!14903 (_ BitVec 64)) ListLongMap!14903)

(assert (=> b!1084493 (= lt!480731 (-!749 lt!480730 k0!904))))

(declare-datatypes ((Unit!35613 0))(
  ( (Unit!35614) )
))
(declare-fun lt!480727 () Unit!35613)

(declare-fun _values!874 () array!69890)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!32 (array!69888 array!69890 (_ BitVec 32) (_ BitVec 32) V!40451 V!40451 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35613)

(assert (=> b!1084493 (= lt!480727 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!32 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3978 (array!69888 array!69890 (_ BitVec 32) (_ BitVec 32) V!40451 V!40451 (_ BitVec 32) Int) ListLongMap!14903)

(assert (=> b!1084493 (= lt!480732 (getCurrentListMapNoExtraKeys!3978 lt!480729 lt!480728 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2114 (Int (_ BitVec 64)) V!40451)

(assert (=> b!1084493 (= lt!480728 (array!69891 (store (arr!33615 _values!874) i!650 (ValueCellFull!12537 (dynLambda!2114 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34152 _values!874)))))

(assert (=> b!1084493 (= lt!480730 (getCurrentListMapNoExtraKeys!3978 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084493 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!480734 () Unit!35613)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69888 (_ BitVec 64) (_ BitVec 32)) Unit!35613)

(assert (=> b!1084493 (= lt!480734 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun res!723089 () Bool)

(assert (=> start!95874 (=> (not res!723089) (not e!619610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95874 (= res!723089 (validMask!0 mask!1414))))

(assert (=> start!95874 e!619610))

(assert (=> start!95874 tp!79323))

(assert (=> start!95874 true))

(declare-fun tp_is_empty!26493 () Bool)

(assert (=> start!95874 tp_is_empty!26493))

(declare-fun array_inv!25794 (array!69888) Bool)

(assert (=> start!95874 (array_inv!25794 _keys!1070)))

(declare-fun e!619611 () Bool)

(declare-fun array_inv!25795 (array!69890) Bool)

(assert (=> start!95874 (and (array_inv!25795 _values!874) e!619611)))

(declare-fun b!1084494 () Bool)

(declare-fun res!723086 () Bool)

(assert (=> b!1084494 (=> (not res!723086) (not e!619612))))

(assert (=> b!1084494 (= res!723086 (arrayNoDuplicates!0 lt!480729 #b00000000000000000000000000000000 Nil!23562))))

(declare-fun b!1084495 () Bool)

(declare-fun e!619615 () Bool)

(assert (=> b!1084495 (= e!619615 tp_is_empty!26493)))

(declare-fun b!1084496 () Bool)

(declare-fun e!619614 () Bool)

(assert (=> b!1084496 (= e!619614 tp_is_empty!26493)))

(declare-fun mapIsEmpty!41494 () Bool)

(declare-fun mapRes!41494 () Bool)

(assert (=> mapIsEmpty!41494 mapRes!41494))

(declare-fun b!1084497 () Bool)

(assert (=> b!1084497 (= e!619610 e!619612)))

(declare-fun res!723090 () Bool)

(assert (=> b!1084497 (=> (not res!723090) (not e!619612))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69888 (_ BitVec 32)) Bool)

(assert (=> b!1084497 (= res!723090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480729 mask!1414))))

(assert (=> b!1084497 (= lt!480729 (array!69889 (store (arr!33614 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34151 _keys!1070)))))

(declare-fun b!1084498 () Bool)

(declare-fun res!723091 () Bool)

(assert (=> b!1084498 (=> (not res!723091) (not e!619610))))

(assert (=> b!1084498 (= res!723091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41494 () Bool)

(declare-fun tp!79322 () Bool)

(assert (=> mapNonEmpty!41494 (= mapRes!41494 (and tp!79322 e!619614))))

(declare-fun mapKey!41494 () (_ BitVec 32))

(declare-fun mapValue!41494 () ValueCell!12537)

(declare-fun mapRest!41494 () (Array (_ BitVec 32) ValueCell!12537))

(assert (=> mapNonEmpty!41494 (= (arr!33615 _values!874) (store mapRest!41494 mapKey!41494 mapValue!41494))))

(declare-fun b!1084499 () Bool)

(declare-fun res!723092 () Bool)

(assert (=> b!1084499 (=> (not res!723092) (not e!619610))))

(assert (=> b!1084499 (= res!723092 (and (= (size!34152 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34151 _keys!1070) (size!34152 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1084500 () Bool)

(declare-fun res!723084 () Bool)

(assert (=> b!1084500 (=> (not res!723084) (not e!619610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084500 (= res!723084 (validKeyInArray!0 k0!904))))

(declare-fun b!1084501 () Bool)

(declare-fun res!723085 () Bool)

(assert (=> b!1084501 (=> (not res!723085) (not e!619610))))

(assert (=> b!1084501 (= res!723085 (= (select (arr!33614 _keys!1070) i!650) k0!904))))

(declare-fun b!1084502 () Bool)

(assert (=> b!1084502 (= e!619611 (and e!619615 mapRes!41494))))

(declare-fun condMapEmpty!41494 () Bool)

(declare-fun mapDefault!41494 () ValueCell!12537)

(assert (=> b!1084502 (= condMapEmpty!41494 (= (arr!33615 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12537)) mapDefault!41494)))))

(assert (= (and start!95874 res!723089) b!1084499))

(assert (= (and b!1084499 res!723092) b!1084498))

(assert (= (and b!1084498 res!723091) b!1084491))

(assert (= (and b!1084491 res!723088) b!1084492))

(assert (= (and b!1084492 res!723087) b!1084500))

(assert (= (and b!1084500 res!723084) b!1084501))

(assert (= (and b!1084501 res!723085) b!1084497))

(assert (= (and b!1084497 res!723090) b!1084494))

(assert (= (and b!1084494 res!723086) b!1084493))

(assert (= (and b!1084502 condMapEmpty!41494) mapIsEmpty!41494))

(assert (= (and b!1084502 (not condMapEmpty!41494)) mapNonEmpty!41494))

(get-info :version)

(assert (= (and mapNonEmpty!41494 ((_ is ValueCellFull!12537) mapValue!41494)) b!1084496))

(assert (= (and b!1084502 ((_ is ValueCellFull!12537) mapDefault!41494)) b!1084495))

(assert (= start!95874 b!1084502))

(declare-fun b_lambda!17191 () Bool)

(assert (=> (not b_lambda!17191) (not b!1084493)))

(declare-fun t!33120 () Bool)

(declare-fun tb!7377 () Bool)

(assert (=> (and start!95874 (= defaultEntry!882 defaultEntry!882) t!33120) tb!7377))

(declare-fun result!15265 () Bool)

(assert (=> tb!7377 (= result!15265 tp_is_empty!26493)))

(assert (=> b!1084493 t!33120))

(declare-fun b_and!35677 () Bool)

(assert (= b_and!35675 (and (=> t!33120 result!15265) b_and!35677)))

(declare-fun m!1002349 () Bool)

(assert (=> b!1084500 m!1002349))

(declare-fun m!1002351 () Bool)

(assert (=> b!1084493 m!1002351))

(declare-fun m!1002353 () Bool)

(assert (=> b!1084493 m!1002353))

(declare-fun m!1002355 () Bool)

(assert (=> b!1084493 m!1002355))

(declare-fun m!1002357 () Bool)

(assert (=> b!1084493 m!1002357))

(declare-fun m!1002359 () Bool)

(assert (=> b!1084493 m!1002359))

(declare-fun m!1002361 () Bool)

(assert (=> b!1084493 m!1002361))

(declare-fun m!1002363 () Bool)

(assert (=> b!1084493 m!1002363))

(declare-fun m!1002365 () Bool)

(assert (=> b!1084493 m!1002365))

(declare-fun m!1002367 () Bool)

(assert (=> b!1084493 m!1002367))

(declare-fun m!1002369 () Bool)

(assert (=> b!1084498 m!1002369))

(declare-fun m!1002371 () Bool)

(assert (=> start!95874 m!1002371))

(declare-fun m!1002373 () Bool)

(assert (=> start!95874 m!1002373))

(declare-fun m!1002375 () Bool)

(assert (=> start!95874 m!1002375))

(declare-fun m!1002377 () Bool)

(assert (=> b!1084501 m!1002377))

(declare-fun m!1002379 () Bool)

(assert (=> b!1084494 m!1002379))

(declare-fun m!1002381 () Bool)

(assert (=> b!1084491 m!1002381))

(declare-fun m!1002383 () Bool)

(assert (=> mapNonEmpty!41494 m!1002383))

(declare-fun m!1002385 () Bool)

(assert (=> b!1084497 m!1002385))

(declare-fun m!1002387 () Bool)

(assert (=> b!1084497 m!1002387))

(check-sat (not b_lambda!17191) (not b!1084494) (not mapNonEmpty!41494) (not b!1084497) (not b!1084500) (not b!1084498) b_and!35677 (not b_next!22491) tp_is_empty!26493 (not start!95874) (not b!1084491) (not b!1084493))
(check-sat b_and!35677 (not b_next!22491))
