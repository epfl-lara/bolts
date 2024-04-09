; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33846 () Bool)

(assert start!33846)

(declare-fun b_free!7017 () Bool)

(declare-fun b_next!7017 () Bool)

(assert (=> start!33846 (= b_free!7017 (not b_next!7017))))

(declare-fun tp!24564 () Bool)

(declare-fun b_and!14221 () Bool)

(assert (=> start!33846 (= tp!24564 b_and!14221)))

(declare-fun mapNonEmpty!11859 () Bool)

(declare-fun mapRes!11859 () Bool)

(declare-fun tp!24563 () Bool)

(declare-fun e!206497 () Bool)

(assert (=> mapNonEmpty!11859 (= mapRes!11859 (and tp!24563 e!206497))))

(declare-datatypes ((V!10269 0))(
  ( (V!10270 (val!3529 Int)) )
))
(declare-datatypes ((ValueCell!3141 0))(
  ( (ValueCellFull!3141 (v!5690 V!10269)) (EmptyCell!3141) )
))
(declare-fun mapRest!11859 () (Array (_ BitVec 32) ValueCell!3141))

(declare-fun mapValue!11859 () ValueCell!3141)

(declare-fun mapKey!11859 () (_ BitVec 32))

(declare-datatypes ((array!17517 0))(
  ( (array!17518 (arr!8283 (Array (_ BitVec 32) ValueCell!3141)) (size!8635 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17517)

(assert (=> mapNonEmpty!11859 (= (arr!8283 _values!1525) (store mapRest!11859 mapKey!11859 mapValue!11859))))

(declare-fun res!185743 () Bool)

(declare-fun e!206495 () Bool)

(assert (=> start!33846 (=> (not res!185743) (not e!206495))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33846 (= res!185743 (validMask!0 mask!2385))))

(assert (=> start!33846 e!206495))

(assert (=> start!33846 true))

(declare-fun tp_is_empty!6969 () Bool)

(assert (=> start!33846 tp_is_empty!6969))

(assert (=> start!33846 tp!24564))

(declare-fun e!206498 () Bool)

(declare-fun array_inv!6140 (array!17517) Bool)

(assert (=> start!33846 (and (array_inv!6140 _values!1525) e!206498)))

(declare-datatypes ((array!17519 0))(
  ( (array!17520 (arr!8284 (Array (_ BitVec 32) (_ BitVec 64))) (size!8636 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17519)

(declare-fun array_inv!6141 (array!17519) Bool)

(assert (=> start!33846 (array_inv!6141 _keys!1895)))

(declare-fun b!336397 () Bool)

(declare-fun res!185740 () Bool)

(declare-fun e!206499 () Bool)

(assert (=> b!336397 (=> (not res!185740) (not e!206499))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336397 (= res!185740 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!11859 () Bool)

(assert (=> mapIsEmpty!11859 mapRes!11859))

(declare-fun b!336398 () Bool)

(declare-fun e!206496 () Bool)

(assert (=> b!336398 (= e!206496 tp_is_empty!6969)))

(declare-fun b!336399 () Bool)

(assert (=> b!336399 (= e!206497 tp_is_empty!6969)))

(declare-fun b!336400 () Bool)

(assert (=> b!336400 (= e!206499 false)))

(declare-fun lt!160241 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17519 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!336400 (= lt!160241 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!336401 () Bool)

(declare-fun res!185741 () Bool)

(assert (=> b!336401 (=> (not res!185741) (not e!206495))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!336401 (= res!185741 (and (= (size!8635 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8636 _keys!1895) (size!8635 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!336402 () Bool)

(declare-fun res!185742 () Bool)

(assert (=> b!336402 (=> (not res!185742) (not e!206495))))

(declare-fun zeroValue!1467 () V!10269)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10269)

(declare-datatypes ((tuple2!5128 0))(
  ( (tuple2!5129 (_1!2574 (_ BitVec 64)) (_2!2574 V!10269)) )
))
(declare-datatypes ((List!4766 0))(
  ( (Nil!4763) (Cons!4762 (h!5618 tuple2!5128) (t!9868 List!4766)) )
))
(declare-datatypes ((ListLongMap!4055 0))(
  ( (ListLongMap!4056 (toList!2043 List!4766)) )
))
(declare-fun contains!2086 (ListLongMap!4055 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1563 (array!17519 array!17517 (_ BitVec 32) (_ BitVec 32) V!10269 V!10269 (_ BitVec 32) Int) ListLongMap!4055)

(assert (=> b!336402 (= res!185742 (not (contains!2086 (getCurrentListMap!1563 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!336403 () Bool)

(declare-fun res!185746 () Bool)

(assert (=> b!336403 (=> (not res!185746) (not e!206495))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17519 (_ BitVec 32)) Bool)

(assert (=> b!336403 (= res!185746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!336404 () Bool)

(declare-fun res!185747 () Bool)

(assert (=> b!336404 (=> (not res!185747) (not e!206495))))

(declare-datatypes ((List!4767 0))(
  ( (Nil!4764) (Cons!4763 (h!5619 (_ BitVec 64)) (t!9869 List!4767)) )
))
(declare-fun arrayNoDuplicates!0 (array!17519 (_ BitVec 32) List!4767) Bool)

(assert (=> b!336404 (= res!185747 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4764))))

(declare-fun b!336405 () Bool)

(assert (=> b!336405 (= e!206495 e!206499)))

(declare-fun res!185744 () Bool)

(assert (=> b!336405 (=> (not res!185744) (not e!206499))))

(declare-datatypes ((SeekEntryResult!3211 0))(
  ( (MissingZero!3211 (index!15023 (_ BitVec 32))) (Found!3211 (index!15024 (_ BitVec 32))) (Intermediate!3211 (undefined!4023 Bool) (index!15025 (_ BitVec 32)) (x!33546 (_ BitVec 32))) (Undefined!3211) (MissingVacant!3211 (index!15026 (_ BitVec 32))) )
))
(declare-fun lt!160242 () SeekEntryResult!3211)

(get-info :version)

(assert (=> b!336405 (= res!185744 (and (not ((_ is Found!3211) lt!160242)) ((_ is MissingZero!3211) lt!160242)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17519 (_ BitVec 32)) SeekEntryResult!3211)

(assert (=> b!336405 (= lt!160242 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!336406 () Bool)

(assert (=> b!336406 (= e!206498 (and e!206496 mapRes!11859))))

(declare-fun condMapEmpty!11859 () Bool)

(declare-fun mapDefault!11859 () ValueCell!3141)

(assert (=> b!336406 (= condMapEmpty!11859 (= (arr!8283 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3141)) mapDefault!11859)))))

(declare-fun b!336407 () Bool)

(declare-fun res!185745 () Bool)

(assert (=> b!336407 (=> (not res!185745) (not e!206495))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336407 (= res!185745 (validKeyInArray!0 k0!1348))))

(assert (= (and start!33846 res!185743) b!336401))

(assert (= (and b!336401 res!185741) b!336403))

(assert (= (and b!336403 res!185746) b!336404))

(assert (= (and b!336404 res!185747) b!336407))

(assert (= (and b!336407 res!185745) b!336402))

(assert (= (and b!336402 res!185742) b!336405))

(assert (= (and b!336405 res!185744) b!336397))

(assert (= (and b!336397 res!185740) b!336400))

(assert (= (and b!336406 condMapEmpty!11859) mapIsEmpty!11859))

(assert (= (and b!336406 (not condMapEmpty!11859)) mapNonEmpty!11859))

(assert (= (and mapNonEmpty!11859 ((_ is ValueCellFull!3141) mapValue!11859)) b!336399))

(assert (= (and b!336406 ((_ is ValueCellFull!3141) mapDefault!11859)) b!336398))

(assert (= start!33846 b!336406))

(declare-fun m!340195 () Bool)

(assert (=> b!336405 m!340195))

(declare-fun m!340197 () Bool)

(assert (=> b!336402 m!340197))

(assert (=> b!336402 m!340197))

(declare-fun m!340199 () Bool)

(assert (=> b!336402 m!340199))

(declare-fun m!340201 () Bool)

(assert (=> start!33846 m!340201))

(declare-fun m!340203 () Bool)

(assert (=> start!33846 m!340203))

(declare-fun m!340205 () Bool)

(assert (=> start!33846 m!340205))

(declare-fun m!340207 () Bool)

(assert (=> b!336404 m!340207))

(declare-fun m!340209 () Bool)

(assert (=> mapNonEmpty!11859 m!340209))

(declare-fun m!340211 () Bool)

(assert (=> b!336407 m!340211))

(declare-fun m!340213 () Bool)

(assert (=> b!336397 m!340213))

(declare-fun m!340215 () Bool)

(assert (=> b!336400 m!340215))

(declare-fun m!340217 () Bool)

(assert (=> b!336403 m!340217))

(check-sat (not b!336402) (not b!336400) (not mapNonEmpty!11859) (not b!336397) tp_is_empty!6969 (not b!336404) (not b!336403) (not b_next!7017) (not b!336405) b_and!14221 (not start!33846) (not b!336407))
(check-sat b_and!14221 (not b_next!7017))
