; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34692 () Bool)

(assert start!34692)

(declare-fun b_free!7491 () Bool)

(declare-fun b_next!7491 () Bool)

(assert (=> start!34692 (= b_free!7491 (not b_next!7491))))

(declare-fun tp!26036 () Bool)

(declare-fun b_and!14729 () Bool)

(assert (=> start!34692 (= tp!26036 b_and!14729)))

(declare-fun b!346322 () Bool)

(declare-fun res!191623 () Bool)

(declare-fun e!212273 () Bool)

(assert (=> b!346322 (=> (not res!191623) (not e!212273))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346322 (= res!191623 (validKeyInArray!0 k0!1348))))

(declare-fun b!346323 () Bool)

(declare-fun e!212271 () Bool)

(declare-fun tp_is_empty!7443 () Bool)

(assert (=> b!346323 (= e!212271 tp_is_empty!7443)))

(declare-fun b!346324 () Bool)

(declare-fun e!212274 () Bool)

(declare-fun e!212270 () Bool)

(declare-fun mapRes!12621 () Bool)

(assert (=> b!346324 (= e!212274 (and e!212270 mapRes!12621))))

(declare-fun condMapEmpty!12621 () Bool)

(declare-datatypes ((V!10901 0))(
  ( (V!10902 (val!3766 Int)) )
))
(declare-datatypes ((ValueCell!3378 0))(
  ( (ValueCellFull!3378 (v!5944 V!10901)) (EmptyCell!3378) )
))
(declare-datatypes ((array!18445 0))(
  ( (array!18446 (arr!8730 (Array (_ BitVec 32) ValueCell!3378)) (size!9082 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18445)

(declare-fun mapDefault!12621 () ValueCell!3378)

(assert (=> b!346324 (= condMapEmpty!12621 (= (arr!8730 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3378)) mapDefault!12621)))))

(declare-fun b!346325 () Bool)

(declare-fun res!191626 () Bool)

(assert (=> b!346325 (=> (not res!191626) (not e!212273))))

(declare-datatypes ((array!18447 0))(
  ( (array!18448 (arr!8731 (Array (_ BitVec 32) (_ BitVec 64))) (size!9083 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18447)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18447 (_ BitVec 32)) Bool)

(assert (=> b!346325 (= res!191626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!346326 () Bool)

(assert (=> b!346326 (= e!212273 false)))

(declare-datatypes ((SeekEntryResult!3361 0))(
  ( (MissingZero!3361 (index!15623 (_ BitVec 32))) (Found!3361 (index!15624 (_ BitVec 32))) (Intermediate!3361 (undefined!4173 Bool) (index!15625 (_ BitVec 32)) (x!34498 (_ BitVec 32))) (Undefined!3361) (MissingVacant!3361 (index!15626 (_ BitVec 32))) )
))
(declare-fun lt!163347 () SeekEntryResult!3361)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18447 (_ BitVec 32)) SeekEntryResult!3361)

(assert (=> b!346326 (= lt!163347 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12621 () Bool)

(assert (=> mapIsEmpty!12621 mapRes!12621))

(declare-fun b!346327 () Bool)

(declare-fun res!191622 () Bool)

(assert (=> b!346327 (=> (not res!191622) (not e!212273))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!346327 (= res!191622 (and (= (size!9082 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9083 _keys!1895) (size!9082 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346328 () Bool)

(assert (=> b!346328 (= e!212270 tp_is_empty!7443)))

(declare-fun mapNonEmpty!12621 () Bool)

(declare-fun tp!26037 () Bool)

(assert (=> mapNonEmpty!12621 (= mapRes!12621 (and tp!26037 e!212271))))

(declare-fun mapKey!12621 () (_ BitVec 32))

(declare-fun mapRest!12621 () (Array (_ BitVec 32) ValueCell!3378))

(declare-fun mapValue!12621 () ValueCell!3378)

(assert (=> mapNonEmpty!12621 (= (arr!8730 _values!1525) (store mapRest!12621 mapKey!12621 mapValue!12621))))

(declare-fun res!191624 () Bool)

(assert (=> start!34692 (=> (not res!191624) (not e!212273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34692 (= res!191624 (validMask!0 mask!2385))))

(assert (=> start!34692 e!212273))

(assert (=> start!34692 true))

(assert (=> start!34692 tp_is_empty!7443))

(assert (=> start!34692 tp!26036))

(declare-fun array_inv!6454 (array!18445) Bool)

(assert (=> start!34692 (and (array_inv!6454 _values!1525) e!212274)))

(declare-fun array_inv!6455 (array!18447) Bool)

(assert (=> start!34692 (array_inv!6455 _keys!1895)))

(declare-fun b!346329 () Bool)

(declare-fun res!191625 () Bool)

(assert (=> b!346329 (=> (not res!191625) (not e!212273))))

(declare-datatypes ((List!5081 0))(
  ( (Nil!5078) (Cons!5077 (h!5933 (_ BitVec 64)) (t!10217 List!5081)) )
))
(declare-fun arrayNoDuplicates!0 (array!18447 (_ BitVec 32) List!5081) Bool)

(assert (=> b!346329 (= res!191625 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5078))))

(declare-fun b!346330 () Bool)

(declare-fun res!191627 () Bool)

(assert (=> b!346330 (=> (not res!191627) (not e!212273))))

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10901)

(declare-fun zeroValue!1467 () V!10901)

(declare-datatypes ((tuple2!5436 0))(
  ( (tuple2!5437 (_1!2728 (_ BitVec 64)) (_2!2728 V!10901)) )
))
(declare-datatypes ((List!5082 0))(
  ( (Nil!5079) (Cons!5078 (h!5934 tuple2!5436) (t!10218 List!5082)) )
))
(declare-datatypes ((ListLongMap!4363 0))(
  ( (ListLongMap!4364 (toList!2197 List!5082)) )
))
(declare-fun contains!2257 (ListLongMap!4363 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1717 (array!18447 array!18445 (_ BitVec 32) (_ BitVec 32) V!10901 V!10901 (_ BitVec 32) Int) ListLongMap!4363)

(assert (=> b!346330 (= res!191627 (not (contains!2257 (getCurrentListMap!1717 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!34692 res!191624) b!346327))

(assert (= (and b!346327 res!191622) b!346325))

(assert (= (and b!346325 res!191626) b!346329))

(assert (= (and b!346329 res!191625) b!346322))

(assert (= (and b!346322 res!191623) b!346330))

(assert (= (and b!346330 res!191627) b!346326))

(assert (= (and b!346324 condMapEmpty!12621) mapIsEmpty!12621))

(assert (= (and b!346324 (not condMapEmpty!12621)) mapNonEmpty!12621))

(get-info :version)

(assert (= (and mapNonEmpty!12621 ((_ is ValueCellFull!3378) mapValue!12621)) b!346323))

(assert (= (and b!346324 ((_ is ValueCellFull!3378) mapDefault!12621)) b!346328))

(assert (= start!34692 b!346324))

(declare-fun m!347443 () Bool)

(assert (=> mapNonEmpty!12621 m!347443))

(declare-fun m!347445 () Bool)

(assert (=> b!346322 m!347445))

(declare-fun m!347447 () Bool)

(assert (=> b!346326 m!347447))

(declare-fun m!347449 () Bool)

(assert (=> b!346325 m!347449))

(declare-fun m!347451 () Bool)

(assert (=> b!346329 m!347451))

(declare-fun m!347453 () Bool)

(assert (=> b!346330 m!347453))

(assert (=> b!346330 m!347453))

(declare-fun m!347455 () Bool)

(assert (=> b!346330 m!347455))

(declare-fun m!347457 () Bool)

(assert (=> start!34692 m!347457))

(declare-fun m!347459 () Bool)

(assert (=> start!34692 m!347459))

(declare-fun m!347461 () Bool)

(assert (=> start!34692 m!347461))

(check-sat (not start!34692) (not b!346322) tp_is_empty!7443 (not b_next!7491) (not mapNonEmpty!12621) (not b!346330) (not b!346325) (not b!346329) b_and!14729 (not b!346326))
(check-sat b_and!14729 (not b_next!7491))
