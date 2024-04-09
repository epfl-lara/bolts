; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35230 () Bool)

(assert start!35230)

(declare-fun b_free!7797 () Bool)

(declare-fun b_next!7797 () Bool)

(assert (=> start!35230 (= b_free!7797 (not b_next!7797))))

(declare-fun tp!26985 () Bool)

(declare-fun b_and!15055 () Bool)

(assert (=> start!35230 (= tp!26985 b_and!15055)))

(declare-fun b!352893 () Bool)

(declare-fun e!216098 () Bool)

(declare-fun e!216102 () Bool)

(declare-fun mapRes!13110 () Bool)

(assert (=> b!352893 (= e!216098 (and e!216102 mapRes!13110))))

(declare-fun condMapEmpty!13110 () Bool)

(declare-datatypes ((V!11309 0))(
  ( (V!11310 (val!3919 Int)) )
))
(declare-datatypes ((ValueCell!3531 0))(
  ( (ValueCellFull!3531 (v!6107 V!11309)) (EmptyCell!3531) )
))
(declare-datatypes ((array!19049 0))(
  ( (array!19050 (arr!9022 (Array (_ BitVec 32) ValueCell!3531)) (size!9374 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19049)

(declare-fun mapDefault!13110 () ValueCell!3531)

(assert (=> b!352893 (= condMapEmpty!13110 (= (arr!9022 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3531)) mapDefault!13110)))))

(declare-fun b!352894 () Bool)

(declare-fun e!216099 () Bool)

(declare-fun tp_is_empty!7749 () Bool)

(assert (=> b!352894 (= e!216099 tp_is_empty!7749)))

(declare-fun mapNonEmpty!13110 () Bool)

(declare-fun tp!26984 () Bool)

(assert (=> mapNonEmpty!13110 (= mapRes!13110 (and tp!26984 e!216099))))

(declare-fun mapRest!13110 () (Array (_ BitVec 32) ValueCell!3531))

(declare-fun mapKey!13110 () (_ BitVec 32))

(declare-fun mapValue!13110 () ValueCell!3531)

(assert (=> mapNonEmpty!13110 (= (arr!9022 _values!1525) (store mapRest!13110 mapKey!13110 mapValue!13110))))

(declare-fun b!352895 () Bool)

(declare-fun res!195751 () Bool)

(declare-fun e!216101 () Bool)

(assert (=> b!352895 (=> (not res!195751) (not e!216101))))

(declare-datatypes ((array!19051 0))(
  ( (array!19052 (arr!9023 (Array (_ BitVec 32) (_ BitVec 64))) (size!9375 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19051)

(declare-datatypes ((List!5282 0))(
  ( (Nil!5279) (Cons!5278 (h!6134 (_ BitVec 64)) (t!10438 List!5282)) )
))
(declare-fun arrayNoDuplicates!0 (array!19051 (_ BitVec 32) List!5282) Bool)

(assert (=> b!352895 (= res!195751 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5279))))

(declare-fun b!352896 () Bool)

(assert (=> b!352896 (= e!216102 tp_is_empty!7749)))

(declare-fun b!352897 () Bool)

(declare-fun res!195750 () Bool)

(assert (=> b!352897 (=> (not res!195750) (not e!216101))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!352897 (= res!195750 (validKeyInArray!0 k0!1348))))

(declare-fun b!352898 () Bool)

(declare-fun res!195754 () Bool)

(assert (=> b!352898 (=> (not res!195754) (not e!216101))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!11309)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11309)

(declare-datatypes ((tuple2!5646 0))(
  ( (tuple2!5647 (_1!2833 (_ BitVec 64)) (_2!2833 V!11309)) )
))
(declare-datatypes ((List!5283 0))(
  ( (Nil!5280) (Cons!5279 (h!6135 tuple2!5646) (t!10439 List!5283)) )
))
(declare-datatypes ((ListLongMap!4573 0))(
  ( (ListLongMap!4574 (toList!2302 List!5283)) )
))
(declare-fun contains!2372 (ListLongMap!4573 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1819 (array!19051 array!19049 (_ BitVec 32) (_ BitVec 32) V!11309 V!11309 (_ BitVec 32) Int) ListLongMap!4573)

(assert (=> b!352898 (= res!195754 (not (contains!2372 (getCurrentListMap!1819 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!352899 () Bool)

(declare-fun res!195755 () Bool)

(assert (=> b!352899 (=> (not res!195755) (not e!216101))))

(assert (=> b!352899 (= res!195755 (and (= (size!9374 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9375 _keys!1895) (size!9374 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!352900 () Bool)

(declare-fun res!195752 () Bool)

(assert (=> b!352900 (=> (not res!195752) (not e!216101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19051 (_ BitVec 32)) Bool)

(assert (=> b!352900 (= res!195752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!352901 () Bool)

(assert (=> b!352901 (= e!216101 false)))

(declare-datatypes ((SeekEntryResult!3469 0))(
  ( (MissingZero!3469 (index!16055 (_ BitVec 32))) (Found!3469 (index!16056 (_ BitVec 32))) (Intermediate!3469 (undefined!4281 Bool) (index!16057 (_ BitVec 32)) (x!35114 (_ BitVec 32))) (Undefined!3469) (MissingVacant!3469 (index!16058 (_ BitVec 32))) )
))
(declare-fun lt!165417 () SeekEntryResult!3469)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19051 (_ BitVec 32)) SeekEntryResult!3469)

(assert (=> b!352901 (= lt!165417 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!13110 () Bool)

(assert (=> mapIsEmpty!13110 mapRes!13110))

(declare-fun res!195753 () Bool)

(assert (=> start!35230 (=> (not res!195753) (not e!216101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35230 (= res!195753 (validMask!0 mask!2385))))

(assert (=> start!35230 e!216101))

(assert (=> start!35230 true))

(assert (=> start!35230 tp_is_empty!7749))

(assert (=> start!35230 tp!26985))

(declare-fun array_inv!6644 (array!19049) Bool)

(assert (=> start!35230 (and (array_inv!6644 _values!1525) e!216098)))

(declare-fun array_inv!6645 (array!19051) Bool)

(assert (=> start!35230 (array_inv!6645 _keys!1895)))

(assert (= (and start!35230 res!195753) b!352899))

(assert (= (and b!352899 res!195755) b!352900))

(assert (= (and b!352900 res!195752) b!352895))

(assert (= (and b!352895 res!195751) b!352897))

(assert (= (and b!352897 res!195750) b!352898))

(assert (= (and b!352898 res!195754) b!352901))

(assert (= (and b!352893 condMapEmpty!13110) mapIsEmpty!13110))

(assert (= (and b!352893 (not condMapEmpty!13110)) mapNonEmpty!13110))

(get-info :version)

(assert (= (and mapNonEmpty!13110 ((_ is ValueCellFull!3531) mapValue!13110)) b!352894))

(assert (= (and b!352893 ((_ is ValueCellFull!3531) mapDefault!13110)) b!352896))

(assert (= start!35230 b!352893))

(declare-fun m!352401 () Bool)

(assert (=> b!352900 m!352401))

(declare-fun m!352403 () Bool)

(assert (=> b!352898 m!352403))

(assert (=> b!352898 m!352403))

(declare-fun m!352405 () Bool)

(assert (=> b!352898 m!352405))

(declare-fun m!352407 () Bool)

(assert (=> b!352897 m!352407))

(declare-fun m!352409 () Bool)

(assert (=> b!352901 m!352409))

(declare-fun m!352411 () Bool)

(assert (=> b!352895 m!352411))

(declare-fun m!352413 () Bool)

(assert (=> mapNonEmpty!13110 m!352413))

(declare-fun m!352415 () Bool)

(assert (=> start!35230 m!352415))

(declare-fun m!352417 () Bool)

(assert (=> start!35230 m!352417))

(declare-fun m!352419 () Bool)

(assert (=> start!35230 m!352419))

(check-sat (not start!35230) (not b!352900) b_and!15055 (not b_next!7797) (not b!352895) (not mapNonEmpty!13110) tp_is_empty!7749 (not b!352901) (not b!352898) (not b!352897))
(check-sat b_and!15055 (not b_next!7797))
