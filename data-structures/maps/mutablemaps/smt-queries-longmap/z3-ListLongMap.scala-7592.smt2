; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95910 () Bool)

(assert start!95910)

(declare-fun b_free!22527 () Bool)

(declare-fun b_next!22527 () Bool)

(assert (=> start!95910 (= b_free!22527 (not b_next!22527))))

(declare-fun tp!79431 () Bool)

(declare-fun b_and!35747 () Bool)

(assert (=> start!95910 (= tp!79431 b_and!35747)))

(declare-fun b!1085275 () Bool)

(declare-fun e!620027 () Bool)

(assert (=> b!1085275 (= e!620027 true)))

(declare-datatypes ((V!40499 0))(
  ( (V!40500 (val!13321 Int)) )
))
(declare-datatypes ((tuple2!16958 0))(
  ( (tuple2!16959 (_1!8489 (_ BitVec 64)) (_2!8489 V!40499)) )
))
(declare-datatypes ((List!23600 0))(
  ( (Nil!23597) (Cons!23596 (h!24805 tuple2!16958) (t!33192 List!23600)) )
))
(declare-datatypes ((ListLongMap!14939 0))(
  ( (ListLongMap!14940 (toList!7485 List!23600)) )
))
(declare-fun lt!481544 () ListLongMap!14939)

(declare-fun lt!481536 () tuple2!16958)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun lt!481539 () ListLongMap!14939)

(declare-fun -!766 (ListLongMap!14939 (_ BitVec 64)) ListLongMap!14939)

(declare-fun +!3216 (ListLongMap!14939 tuple2!16958) ListLongMap!14939)

(assert (=> b!1085275 (= (-!766 lt!481544 k0!904) (+!3216 lt!481539 lt!481536))))

(declare-fun minValue!831 () V!40499)

(declare-fun lt!481532 () ListLongMap!14939)

(declare-datatypes ((Unit!35647 0))(
  ( (Unit!35648) )
))
(declare-fun lt!481540 () Unit!35647)

(declare-fun addRemoveCommutativeForDiffKeys!12 (ListLongMap!14939 (_ BitVec 64) V!40499 (_ BitVec 64)) Unit!35647)

(assert (=> b!1085275 (= lt!481540 (addRemoveCommutativeForDiffKeys!12 lt!481532 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1085276 () Bool)

(declare-fun res!723676 () Bool)

(declare-fun e!620030 () Bool)

(assert (=> b!1085276 (=> (not res!723676) (not e!620030))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085276 (= res!723676 (validKeyInArray!0 k0!904))))

(declare-fun b!1085277 () Bool)

(declare-fun res!723672 () Bool)

(assert (=> b!1085277 (=> (not res!723672) (not e!620030))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69960 0))(
  ( (array!69961 (arr!33650 (Array (_ BitVec 32) (_ BitVec 64))) (size!34187 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69960)

(assert (=> b!1085277 (= res!723672 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34187 _keys!1070))))))

(declare-fun b!1085278 () Bool)

(declare-fun e!620032 () Bool)

(assert (=> b!1085278 (= e!620030 e!620032)))

(declare-fun res!723674 () Bool)

(assert (=> b!1085278 (=> (not res!723674) (not e!620032))))

(declare-fun lt!481538 () array!69960)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69960 (_ BitVec 32)) Bool)

(assert (=> b!1085278 (= res!723674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481538 mask!1414))))

(assert (=> b!1085278 (= lt!481538 (array!69961 (store (arr!33650 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34187 _keys!1070)))))

(declare-fun b!1085279 () Bool)

(declare-fun e!620026 () Bool)

(assert (=> b!1085279 (= e!620026 e!620027)))

(declare-fun res!723671 () Bool)

(assert (=> b!1085279 (=> res!723671 e!620027)))

(assert (=> b!1085279 (= res!723671 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!481533 () ListLongMap!14939)

(assert (=> b!1085279 (= lt!481539 lt!481533)))

(assert (=> b!1085279 (= lt!481539 (-!766 lt!481532 k0!904))))

(declare-fun lt!481531 () ListLongMap!14939)

(declare-fun zeroValue!831 () V!40499)

(declare-fun lt!481542 () Unit!35647)

(assert (=> b!1085279 (= lt!481542 (addRemoveCommutativeForDiffKeys!12 lt!481531 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!481534 () ListLongMap!14939)

(assert (=> b!1085279 (= lt!481534 (+!3216 lt!481533 lt!481536))))

(declare-fun lt!481543 () ListLongMap!14939)

(declare-fun lt!481530 () tuple2!16958)

(assert (=> b!1085279 (= lt!481533 (+!3216 lt!481543 lt!481530))))

(declare-fun lt!481535 () ListLongMap!14939)

(assert (=> b!1085279 (= lt!481535 lt!481544)))

(assert (=> b!1085279 (= lt!481544 (+!3216 lt!481532 lt!481536))))

(assert (=> b!1085279 (= lt!481532 (+!3216 lt!481531 lt!481530))))

(declare-fun lt!481528 () ListLongMap!14939)

(assert (=> b!1085279 (= lt!481534 (+!3216 (+!3216 lt!481528 lt!481530) lt!481536))))

(assert (=> b!1085279 (= lt!481536 (tuple2!16959 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1085279 (= lt!481530 (tuple2!16959 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun res!723677 () Bool)

(assert (=> start!95910 (=> (not res!723677) (not e!620030))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95910 (= res!723677 (validMask!0 mask!1414))))

(assert (=> start!95910 e!620030))

(assert (=> start!95910 tp!79431))

(assert (=> start!95910 true))

(declare-fun tp_is_empty!26529 () Bool)

(assert (=> start!95910 tp_is_empty!26529))

(declare-fun array_inv!25822 (array!69960) Bool)

(assert (=> start!95910 (array_inv!25822 _keys!1070)))

(declare-datatypes ((ValueCell!12555 0))(
  ( (ValueCellFull!12555 (v!15943 V!40499)) (EmptyCell!12555) )
))
(declare-datatypes ((array!69962 0))(
  ( (array!69963 (arr!33651 (Array (_ BitVec 32) ValueCell!12555)) (size!34188 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69962)

(declare-fun e!620029 () Bool)

(declare-fun array_inv!25823 (array!69962) Bool)

(assert (=> start!95910 (and (array_inv!25823 _values!874) e!620029)))

(declare-fun b!1085280 () Bool)

(declare-fun res!723680 () Bool)

(assert (=> b!1085280 (=> (not res!723680) (not e!620032))))

(declare-datatypes ((List!23601 0))(
  ( (Nil!23598) (Cons!23597 (h!24806 (_ BitVec 64)) (t!33193 List!23601)) )
))
(declare-fun arrayNoDuplicates!0 (array!69960 (_ BitVec 32) List!23601) Bool)

(assert (=> b!1085280 (= res!723680 (arrayNoDuplicates!0 lt!481538 #b00000000000000000000000000000000 Nil!23598))))

(declare-fun b!1085281 () Bool)

(declare-fun e!620025 () Bool)

(assert (=> b!1085281 (= e!620025 tp_is_empty!26529)))

(declare-fun mapIsEmpty!41548 () Bool)

(declare-fun mapRes!41548 () Bool)

(assert (=> mapIsEmpty!41548 mapRes!41548))

(declare-fun b!1085282 () Bool)

(declare-fun res!723673 () Bool)

(assert (=> b!1085282 (=> (not res!723673) (not e!620030))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1085282 (= res!723673 (and (= (size!34188 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34187 _keys!1070) (size!34188 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085283 () Bool)

(declare-fun e!620028 () Bool)

(assert (=> b!1085283 (= e!620029 (and e!620028 mapRes!41548))))

(declare-fun condMapEmpty!41548 () Bool)

(declare-fun mapDefault!41548 () ValueCell!12555)

(assert (=> b!1085283 (= condMapEmpty!41548 (= (arr!33651 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12555)) mapDefault!41548)))))

(declare-fun b!1085284 () Bool)

(declare-fun res!723678 () Bool)

(assert (=> b!1085284 (=> (not res!723678) (not e!620030))))

(assert (=> b!1085284 (= res!723678 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23598))))

(declare-fun b!1085285 () Bool)

(assert (=> b!1085285 (= e!620028 tp_is_empty!26529)))

(declare-fun b!1085286 () Bool)

(declare-fun res!723675 () Bool)

(assert (=> b!1085286 (=> (not res!723675) (not e!620030))))

(assert (=> b!1085286 (= res!723675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1085287 () Bool)

(assert (=> b!1085287 (= e!620032 (not e!620026))))

(declare-fun res!723670 () Bool)

(assert (=> b!1085287 (=> res!723670 e!620026)))

(assert (=> b!1085287 (= res!723670 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4241 (array!69960 array!69962 (_ BitVec 32) (_ BitVec 32) V!40499 V!40499 (_ BitVec 32) Int) ListLongMap!14939)

(assert (=> b!1085287 (= lt!481535 (getCurrentListMap!4241 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481529 () array!69962)

(assert (=> b!1085287 (= lt!481534 (getCurrentListMap!4241 lt!481538 lt!481529 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1085287 (and (= lt!481528 lt!481543) (= lt!481543 lt!481528))))

(assert (=> b!1085287 (= lt!481543 (-!766 lt!481531 k0!904))))

(declare-fun lt!481537 () Unit!35647)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!47 (array!69960 array!69962 (_ BitVec 32) (_ BitVec 32) V!40499 V!40499 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35647)

(assert (=> b!1085287 (= lt!481537 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!47 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3993 (array!69960 array!69962 (_ BitVec 32) (_ BitVec 32) V!40499 V!40499 (_ BitVec 32) Int) ListLongMap!14939)

(assert (=> b!1085287 (= lt!481528 (getCurrentListMapNoExtraKeys!3993 lt!481538 lt!481529 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2129 (Int (_ BitVec 64)) V!40499)

(assert (=> b!1085287 (= lt!481529 (array!69963 (store (arr!33651 _values!874) i!650 (ValueCellFull!12555 (dynLambda!2129 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34188 _values!874)))))

(assert (=> b!1085287 (= lt!481531 (getCurrentListMapNoExtraKeys!3993 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69960 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085287 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!481541 () Unit!35647)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69960 (_ BitVec 64) (_ BitVec 32)) Unit!35647)

(assert (=> b!1085287 (= lt!481541 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1085288 () Bool)

(declare-fun res!723679 () Bool)

(assert (=> b!1085288 (=> (not res!723679) (not e!620030))))

(assert (=> b!1085288 (= res!723679 (= (select (arr!33650 _keys!1070) i!650) k0!904))))

(declare-fun mapNonEmpty!41548 () Bool)

(declare-fun tp!79430 () Bool)

(assert (=> mapNonEmpty!41548 (= mapRes!41548 (and tp!79430 e!620025))))

(declare-fun mapValue!41548 () ValueCell!12555)

(declare-fun mapKey!41548 () (_ BitVec 32))

(declare-fun mapRest!41548 () (Array (_ BitVec 32) ValueCell!12555))

(assert (=> mapNonEmpty!41548 (= (arr!33651 _values!874) (store mapRest!41548 mapKey!41548 mapValue!41548))))

(assert (= (and start!95910 res!723677) b!1085282))

(assert (= (and b!1085282 res!723673) b!1085286))

(assert (= (and b!1085286 res!723675) b!1085284))

(assert (= (and b!1085284 res!723678) b!1085277))

(assert (= (and b!1085277 res!723672) b!1085276))

(assert (= (and b!1085276 res!723676) b!1085288))

(assert (= (and b!1085288 res!723679) b!1085278))

(assert (= (and b!1085278 res!723674) b!1085280))

(assert (= (and b!1085280 res!723680) b!1085287))

(assert (= (and b!1085287 (not res!723670)) b!1085279))

(assert (= (and b!1085279 (not res!723671)) b!1085275))

(assert (= (and b!1085283 condMapEmpty!41548) mapIsEmpty!41548))

(assert (= (and b!1085283 (not condMapEmpty!41548)) mapNonEmpty!41548))

(get-info :version)

(assert (= (and mapNonEmpty!41548 ((_ is ValueCellFull!12555) mapValue!41548)) b!1085281))

(assert (= (and b!1085283 ((_ is ValueCellFull!12555) mapDefault!41548)) b!1085285))

(assert (= start!95910 b!1085283))

(declare-fun b_lambda!17227 () Bool)

(assert (=> (not b_lambda!17227) (not b!1085287)))

(declare-fun t!33191 () Bool)

(declare-fun tb!7413 () Bool)

(assert (=> (and start!95910 (= defaultEntry!882 defaultEntry!882) t!33191) tb!7413))

(declare-fun result!15337 () Bool)

(assert (=> tb!7413 (= result!15337 tp_is_empty!26529)))

(assert (=> b!1085287 t!33191))

(declare-fun b_and!35749 () Bool)

(assert (= b_and!35747 (and (=> t!33191 result!15337) b_and!35749)))

(declare-fun m!1003405 () Bool)

(assert (=> b!1085279 m!1003405))

(declare-fun m!1003407 () Bool)

(assert (=> b!1085279 m!1003407))

(declare-fun m!1003409 () Bool)

(assert (=> b!1085279 m!1003409))

(declare-fun m!1003411 () Bool)

(assert (=> b!1085279 m!1003411))

(declare-fun m!1003413 () Bool)

(assert (=> b!1085279 m!1003413))

(declare-fun m!1003415 () Bool)

(assert (=> b!1085279 m!1003415))

(declare-fun m!1003417 () Bool)

(assert (=> b!1085279 m!1003417))

(assert (=> b!1085279 m!1003409))

(declare-fun m!1003419 () Bool)

(assert (=> b!1085279 m!1003419))

(declare-fun m!1003421 () Bool)

(assert (=> b!1085275 m!1003421))

(declare-fun m!1003423 () Bool)

(assert (=> b!1085275 m!1003423))

(declare-fun m!1003425 () Bool)

(assert (=> b!1085275 m!1003425))

(declare-fun m!1003427 () Bool)

(assert (=> b!1085288 m!1003427))

(declare-fun m!1003429 () Bool)

(assert (=> b!1085278 m!1003429))

(declare-fun m!1003431 () Bool)

(assert (=> b!1085278 m!1003431))

(declare-fun m!1003433 () Bool)

(assert (=> b!1085276 m!1003433))

(declare-fun m!1003435 () Bool)

(assert (=> mapNonEmpty!41548 m!1003435))

(declare-fun m!1003437 () Bool)

(assert (=> b!1085280 m!1003437))

(declare-fun m!1003439 () Bool)

(assert (=> b!1085287 m!1003439))

(declare-fun m!1003441 () Bool)

(assert (=> b!1085287 m!1003441))

(declare-fun m!1003443 () Bool)

(assert (=> b!1085287 m!1003443))

(declare-fun m!1003445 () Bool)

(assert (=> b!1085287 m!1003445))

(declare-fun m!1003447 () Bool)

(assert (=> b!1085287 m!1003447))

(declare-fun m!1003449 () Bool)

(assert (=> b!1085287 m!1003449))

(declare-fun m!1003451 () Bool)

(assert (=> b!1085287 m!1003451))

(declare-fun m!1003453 () Bool)

(assert (=> b!1085287 m!1003453))

(declare-fun m!1003455 () Bool)

(assert (=> b!1085287 m!1003455))

(declare-fun m!1003457 () Bool)

(assert (=> b!1085287 m!1003457))

(declare-fun m!1003459 () Bool)

(assert (=> b!1085286 m!1003459))

(declare-fun m!1003461 () Bool)

(assert (=> b!1085284 m!1003461))

(declare-fun m!1003463 () Bool)

(assert (=> start!95910 m!1003463))

(declare-fun m!1003465 () Bool)

(assert (=> start!95910 m!1003465))

(declare-fun m!1003467 () Bool)

(assert (=> start!95910 m!1003467))

(check-sat (not b!1085286) (not b_lambda!17227) b_and!35749 (not b!1085276) (not b!1085284) (not b!1085279) (not mapNonEmpty!41548) tp_is_empty!26529 (not start!95910) (not b!1085287) (not b!1085278) (not b_next!22527) (not b!1085275) (not b!1085280))
(check-sat b_and!35749 (not b_next!22527))
