; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34182 () Bool)

(assert start!34182)

(declare-fun b_free!7197 () Bool)

(declare-fun b_next!7197 () Bool)

(assert (=> start!34182 (= b_free!7197 (not b_next!7197))))

(declare-fun tp!25125 () Bool)

(declare-fun b_and!14415 () Bool)

(assert (=> start!34182 (= tp!25125 b_and!14415)))

(declare-fun b!340391 () Bool)

(declare-fun res!188098 () Bool)

(declare-fun e!208825 () Bool)

(assert (=> b!340391 (=> (not res!188098) (not e!208825))))

(declare-datatypes ((array!17869 0))(
  ( (array!17870 (arr!8452 (Array (_ BitVec 32) (_ BitVec 64))) (size!8804 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17869)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17869 (_ BitVec 32)) Bool)

(assert (=> b!340391 (= res!188098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!340392 () Bool)

(declare-fun e!208827 () Bool)

(declare-fun e!208823 () Bool)

(declare-fun mapRes!12150 () Bool)

(assert (=> b!340392 (= e!208827 (and e!208823 mapRes!12150))))

(declare-fun condMapEmpty!12150 () Bool)

(declare-datatypes ((V!10509 0))(
  ( (V!10510 (val!3619 Int)) )
))
(declare-datatypes ((ValueCell!3231 0))(
  ( (ValueCellFull!3231 (v!5787 V!10509)) (EmptyCell!3231) )
))
(declare-datatypes ((array!17871 0))(
  ( (array!17872 (arr!8453 (Array (_ BitVec 32) ValueCell!3231)) (size!8805 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17871)

(declare-fun mapDefault!12150 () ValueCell!3231)

(assert (=> b!340392 (= condMapEmpty!12150 (= (arr!8453 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3231)) mapDefault!12150)))))

(declare-fun mapNonEmpty!12150 () Bool)

(declare-fun tp!25124 () Bool)

(declare-fun e!208826 () Bool)

(assert (=> mapNonEmpty!12150 (= mapRes!12150 (and tp!25124 e!208826))))

(declare-fun mapValue!12150 () ValueCell!3231)

(declare-fun mapKey!12150 () (_ BitVec 32))

(declare-fun mapRest!12150 () (Array (_ BitVec 32) ValueCell!3231))

(assert (=> mapNonEmpty!12150 (= (arr!8453 _values!1525) (store mapRest!12150 mapKey!12150 mapValue!12150))))

(declare-fun b!340393 () Bool)

(declare-fun e!208824 () Bool)

(assert (=> b!340393 (= e!208825 e!208824)))

(declare-fun res!188096 () Bool)

(assert (=> b!340393 (=> (not res!188096) (not e!208824))))

(declare-datatypes ((SeekEntryResult!3267 0))(
  ( (MissingZero!3267 (index!15247 (_ BitVec 32))) (Found!3267 (index!15248 (_ BitVec 32))) (Intermediate!3267 (undefined!4079 Bool) (index!15249 (_ BitVec 32)) (x!33912 (_ BitVec 32))) (Undefined!3267) (MissingVacant!3267 (index!15250 (_ BitVec 32))) )
))
(declare-fun lt!161577 () SeekEntryResult!3267)

(get-info :version)

(assert (=> b!340393 (= res!188096 (and (not ((_ is Found!3267) lt!161577)) (not ((_ is MissingZero!3267) lt!161577)) ((_ is MissingVacant!3267) lt!161577)))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17869 (_ BitVec 32)) SeekEntryResult!3267)

(assert (=> b!340393 (= lt!161577 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!188099 () Bool)

(assert (=> start!34182 (=> (not res!188099) (not e!208825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34182 (= res!188099 (validMask!0 mask!2385))))

(assert (=> start!34182 e!208825))

(assert (=> start!34182 true))

(declare-fun tp_is_empty!7149 () Bool)

(assert (=> start!34182 tp_is_empty!7149))

(assert (=> start!34182 tp!25125))

(declare-fun array_inv!6256 (array!17871) Bool)

(assert (=> start!34182 (and (array_inv!6256 _values!1525) e!208827)))

(declare-fun array_inv!6257 (array!17869) Bool)

(assert (=> start!34182 (array_inv!6257 _keys!1895)))

(declare-fun mapIsEmpty!12150 () Bool)

(assert (=> mapIsEmpty!12150 mapRes!12150))

(declare-fun b!340394 () Bool)

(assert (=> b!340394 (= e!208826 tp_is_empty!7149)))

(declare-fun b!340395 () Bool)

(declare-fun res!188093 () Bool)

(assert (=> b!340395 (=> (not res!188093) (not e!208825))))

(declare-fun zeroValue!1467 () V!10509)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10509)

(declare-datatypes ((tuple2!5240 0))(
  ( (tuple2!5241 (_1!2630 (_ BitVec 64)) (_2!2630 V!10509)) )
))
(declare-datatypes ((List!4885 0))(
  ( (Nil!4882) (Cons!4881 (h!5737 tuple2!5240) (t!10001 List!4885)) )
))
(declare-datatypes ((ListLongMap!4167 0))(
  ( (ListLongMap!4168 (toList!2099 List!4885)) )
))
(declare-fun contains!2149 (ListLongMap!4167 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1619 (array!17869 array!17871 (_ BitVec 32) (_ BitVec 32) V!10509 V!10509 (_ BitVec 32) Int) ListLongMap!4167)

(assert (=> b!340395 (= res!188093 (not (contains!2149 (getCurrentListMap!1619 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!340396 () Bool)

(declare-fun res!188097 () Bool)

(assert (=> b!340396 (=> (not res!188097) (not e!208825))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!340396 (= res!188097 (validKeyInArray!0 k0!1348))))

(declare-fun b!340397 () Bool)

(declare-fun res!188094 () Bool)

(assert (=> b!340397 (=> (not res!188094) (not e!208825))))

(assert (=> b!340397 (= res!188094 (and (= (size!8805 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8804 _keys!1895) (size!8805 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!340398 () Bool)

(declare-fun res!188092 () Bool)

(assert (=> b!340398 (=> (not res!188092) (not e!208824))))

(declare-fun arrayContainsKey!0 (array!17869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!340398 (= res!188092 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!340399 () Bool)

(declare-fun res!188095 () Bool)

(assert (=> b!340399 (=> (not res!188095) (not e!208825))))

(declare-datatypes ((List!4886 0))(
  ( (Nil!4883) (Cons!4882 (h!5738 (_ BitVec 64)) (t!10002 List!4886)) )
))
(declare-fun arrayNoDuplicates!0 (array!17869 (_ BitVec 32) List!4886) Bool)

(assert (=> b!340399 (= res!188095 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4883))))

(declare-fun b!340400 () Bool)

(assert (=> b!340400 (= e!208823 tp_is_empty!7149)))

(declare-fun b!340401 () Bool)

(assert (=> b!340401 (= e!208824 false)))

(declare-fun lt!161576 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17869 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!340401 (= lt!161576 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(assert (= (and start!34182 res!188099) b!340397))

(assert (= (and b!340397 res!188094) b!340391))

(assert (= (and b!340391 res!188098) b!340399))

(assert (= (and b!340399 res!188095) b!340396))

(assert (= (and b!340396 res!188097) b!340395))

(assert (= (and b!340395 res!188093) b!340393))

(assert (= (and b!340393 res!188096) b!340398))

(assert (= (and b!340398 res!188092) b!340401))

(assert (= (and b!340392 condMapEmpty!12150) mapIsEmpty!12150))

(assert (= (and b!340392 (not condMapEmpty!12150)) mapNonEmpty!12150))

(assert (= (and mapNonEmpty!12150 ((_ is ValueCellFull!3231) mapValue!12150)) b!340394))

(assert (= (and b!340392 ((_ is ValueCellFull!3231) mapDefault!12150)) b!340400))

(assert (= start!34182 b!340392))

(declare-fun m!343095 () Bool)

(assert (=> b!340399 m!343095))

(declare-fun m!343097 () Bool)

(assert (=> b!340391 m!343097))

(declare-fun m!343099 () Bool)

(assert (=> b!340395 m!343099))

(assert (=> b!340395 m!343099))

(declare-fun m!343101 () Bool)

(assert (=> b!340395 m!343101))

(declare-fun m!343103 () Bool)

(assert (=> b!340393 m!343103))

(declare-fun m!343105 () Bool)

(assert (=> start!34182 m!343105))

(declare-fun m!343107 () Bool)

(assert (=> start!34182 m!343107))

(declare-fun m!343109 () Bool)

(assert (=> start!34182 m!343109))

(declare-fun m!343111 () Bool)

(assert (=> mapNonEmpty!12150 m!343111))

(declare-fun m!343113 () Bool)

(assert (=> b!340401 m!343113))

(declare-fun m!343115 () Bool)

(assert (=> b!340396 m!343115))

(declare-fun m!343117 () Bool)

(assert (=> b!340398 m!343117))

(check-sat (not b!340399) tp_is_empty!7149 (not b!340401) b_and!14415 (not b!340395) (not b!340391) (not start!34182) (not b!340396) (not b_next!7197) (not b!340398) (not b!340393) (not mapNonEmpty!12150))
(check-sat b_and!14415 (not b_next!7197))
