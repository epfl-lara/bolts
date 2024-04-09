; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35112 () Bool)

(assert start!35112)

(declare-fun b_free!7749 () Bool)

(declare-fun b_next!7749 () Bool)

(assert (=> start!35112 (= b_free!7749 (not b_next!7749))))

(declare-fun tp!26832 () Bool)

(declare-fun b_and!15001 () Bool)

(assert (=> start!35112 (= tp!26832 b_and!15001)))

(declare-fun b!351693 () Bool)

(declare-fun e!215385 () Bool)

(declare-fun lt!164961 () Bool)

(assert (=> b!351693 (= e!215385 lt!164961)))

(declare-datatypes ((Unit!10863 0))(
  ( (Unit!10864) )
))
(declare-fun lt!164962 () Unit!10863)

(declare-fun e!215380 () Unit!10863)

(assert (=> b!351693 (= lt!164962 e!215380)))

(declare-fun c!53423 () Bool)

(assert (=> b!351693 (= c!53423 lt!164961)))

(declare-datatypes ((array!18947 0))(
  ( (array!18948 (arr!8974 (Array (_ BitVec 32) (_ BitVec 64))) (size!9326 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18947)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351693 (= lt!164961 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!351694 () Bool)

(declare-fun e!215381 () Bool)

(declare-fun e!215379 () Bool)

(declare-fun mapRes!13029 () Bool)

(assert (=> b!351694 (= e!215381 (and e!215379 mapRes!13029))))

(declare-fun condMapEmpty!13029 () Bool)

(declare-datatypes ((V!11245 0))(
  ( (V!11246 (val!3895 Int)) )
))
(declare-datatypes ((ValueCell!3507 0))(
  ( (ValueCellFull!3507 (v!6080 V!11245)) (EmptyCell!3507) )
))
(declare-datatypes ((array!18949 0))(
  ( (array!18950 (arr!8975 (Array (_ BitVec 32) ValueCell!3507)) (size!9327 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18949)

(declare-fun mapDefault!13029 () ValueCell!3507)

(assert (=> b!351694 (= condMapEmpty!13029 (= (arr!8975 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3507)) mapDefault!13029)))))

(declare-fun mapIsEmpty!13029 () Bool)

(assert (=> mapIsEmpty!13029 mapRes!13029))

(declare-fun res!195108 () Bool)

(declare-fun e!215383 () Bool)

(assert (=> start!35112 (=> (not res!195108) (not e!215383))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35112 (= res!195108 (validMask!0 mask!2385))))

(assert (=> start!35112 e!215383))

(assert (=> start!35112 true))

(declare-fun tp_is_empty!7701 () Bool)

(assert (=> start!35112 tp_is_empty!7701))

(assert (=> start!35112 tp!26832))

(declare-fun array_inv!6612 (array!18949) Bool)

(assert (=> start!35112 (and (array_inv!6612 _values!1525) e!215381)))

(declare-fun array_inv!6613 (array!18947) Bool)

(assert (=> start!35112 (array_inv!6613 _keys!1895)))

(declare-fun b!351695 () Bool)

(declare-fun Unit!10865 () Unit!10863)

(assert (=> b!351695 (= e!215380 Unit!10865)))

(declare-fun b!351696 () Bool)

(assert (=> b!351696 (= e!215383 e!215385)))

(declare-fun res!195109 () Bool)

(assert (=> b!351696 (=> (not res!195109) (not e!215385))))

(declare-datatypes ((SeekEntryResult!3449 0))(
  ( (MissingZero!3449 (index!15975 (_ BitVec 32))) (Found!3449 (index!15976 (_ BitVec 32))) (Intermediate!3449 (undefined!4261 Bool) (index!15977 (_ BitVec 32)) (x!35000 (_ BitVec 32))) (Undefined!3449) (MissingVacant!3449 (index!15978 (_ BitVec 32))) )
))
(declare-fun lt!164964 () SeekEntryResult!3449)

(get-info :version)

(assert (=> b!351696 (= res!195109 (and (not ((_ is Found!3449) lt!164964)) (not ((_ is MissingZero!3449) lt!164964)) ((_ is MissingVacant!3449) lt!164964)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18947 (_ BitVec 32)) SeekEntryResult!3449)

(assert (=> b!351696 (= lt!164964 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!13029 () Bool)

(declare-fun tp!26831 () Bool)

(declare-fun e!215384 () Bool)

(assert (=> mapNonEmpty!13029 (= mapRes!13029 (and tp!26831 e!215384))))

(declare-fun mapKey!13029 () (_ BitVec 32))

(declare-fun mapValue!13029 () ValueCell!3507)

(declare-fun mapRest!13029 () (Array (_ BitVec 32) ValueCell!3507))

(assert (=> mapNonEmpty!13029 (= (arr!8975 _values!1525) (store mapRest!13029 mapKey!13029 mapValue!13029))))

(declare-fun b!351697 () Bool)

(declare-fun res!195107 () Bool)

(assert (=> b!351697 (=> (not res!195107) (not e!215383))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351697 (= res!195107 (validKeyInArray!0 k0!1348))))

(declare-fun b!351698 () Bool)

(declare-fun res!195106 () Bool)

(assert (=> b!351698 (=> (not res!195106) (not e!215383))))

(declare-datatypes ((List!5249 0))(
  ( (Nil!5246) (Cons!5245 (h!6101 (_ BitVec 64)) (t!10399 List!5249)) )
))
(declare-fun arrayNoDuplicates!0 (array!18947 (_ BitVec 32) List!5249) Bool)

(assert (=> b!351698 (= res!195106 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5246))))

(declare-fun b!351699 () Bool)

(declare-fun Unit!10866 () Unit!10863)

(assert (=> b!351699 (= e!215380 Unit!10866)))

(declare-fun zeroValue!1467 () V!11245)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11245)

(declare-fun lt!164963 () Unit!10863)

(declare-fun lemmaArrayContainsKeyThenInListMap!327 (array!18947 array!18949 (_ BitVec 32) (_ BitVec 32) V!11245 V!11245 (_ BitVec 64) (_ BitVec 32) Int) Unit!10863)

(declare-fun arrayScanForKey!0 (array!18947 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!351699 (= lt!164963 (lemmaArrayContainsKeyThenInListMap!327 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!351699 false))

(declare-fun b!351700 () Bool)

(assert (=> b!351700 (= e!215384 tp_is_empty!7701)))

(declare-fun b!351701 () Bool)

(declare-fun res!195104 () Bool)

(assert (=> b!351701 (=> (not res!195104) (not e!215383))))

(declare-datatypes ((tuple2!5612 0))(
  ( (tuple2!5613 (_1!2816 (_ BitVec 64)) (_2!2816 V!11245)) )
))
(declare-datatypes ((List!5250 0))(
  ( (Nil!5247) (Cons!5246 (h!6102 tuple2!5612) (t!10400 List!5250)) )
))
(declare-datatypes ((ListLongMap!4539 0))(
  ( (ListLongMap!4540 (toList!2285 List!5250)) )
))
(declare-fun contains!2352 (ListLongMap!4539 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1802 (array!18947 array!18949 (_ BitVec 32) (_ BitVec 32) V!11245 V!11245 (_ BitVec 32) Int) ListLongMap!4539)

(assert (=> b!351701 (= res!195104 (not (contains!2352 (getCurrentListMap!1802 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!351702 () Bool)

(assert (=> b!351702 (= e!215379 tp_is_empty!7701)))

(declare-fun b!351703 () Bool)

(declare-fun res!195110 () Bool)

(assert (=> b!351703 (=> (not res!195110) (not e!215383))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18947 (_ BitVec 32)) Bool)

(assert (=> b!351703 (= res!195110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!351704 () Bool)

(declare-fun res!195105 () Bool)

(assert (=> b!351704 (=> (not res!195105) (not e!215383))))

(assert (=> b!351704 (= res!195105 (and (= (size!9327 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9326 _keys!1895) (size!9327 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(assert (= (and start!35112 res!195108) b!351704))

(assert (= (and b!351704 res!195105) b!351703))

(assert (= (and b!351703 res!195110) b!351698))

(assert (= (and b!351698 res!195106) b!351697))

(assert (= (and b!351697 res!195107) b!351701))

(assert (= (and b!351701 res!195104) b!351696))

(assert (= (and b!351696 res!195109) b!351693))

(assert (= (and b!351693 c!53423) b!351699))

(assert (= (and b!351693 (not c!53423)) b!351695))

(assert (= (and b!351694 condMapEmpty!13029) mapIsEmpty!13029))

(assert (= (and b!351694 (not condMapEmpty!13029)) mapNonEmpty!13029))

(assert (= (and mapNonEmpty!13029 ((_ is ValueCellFull!3507) mapValue!13029)) b!351700))

(assert (= (and b!351694 ((_ is ValueCellFull!3507) mapDefault!13029)) b!351702))

(assert (= start!35112 b!351694))

(declare-fun m!351539 () Bool)

(assert (=> b!351703 m!351539))

(declare-fun m!351541 () Bool)

(assert (=> b!351697 m!351541))

(declare-fun m!351543 () Bool)

(assert (=> b!351701 m!351543))

(assert (=> b!351701 m!351543))

(declare-fun m!351545 () Bool)

(assert (=> b!351701 m!351545))

(declare-fun m!351547 () Bool)

(assert (=> start!35112 m!351547))

(declare-fun m!351549 () Bool)

(assert (=> start!35112 m!351549))

(declare-fun m!351551 () Bool)

(assert (=> start!35112 m!351551))

(declare-fun m!351553 () Bool)

(assert (=> b!351693 m!351553))

(declare-fun m!351555 () Bool)

(assert (=> b!351696 m!351555))

(declare-fun m!351557 () Bool)

(assert (=> b!351699 m!351557))

(assert (=> b!351699 m!351557))

(declare-fun m!351559 () Bool)

(assert (=> b!351699 m!351559))

(declare-fun m!351561 () Bool)

(assert (=> b!351698 m!351561))

(declare-fun m!351563 () Bool)

(assert (=> mapNonEmpty!13029 m!351563))

(check-sat (not b!351699) (not b!351697) (not start!35112) (not b!351696) b_and!15001 (not b_next!7749) tp_is_empty!7701 (not b!351701) (not b!351693) (not mapNonEmpty!13029) (not b!351698) (not b!351703))
(check-sat b_and!15001 (not b_next!7749))
