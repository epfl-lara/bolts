; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34002 () Bool)

(assert start!34002)

(declare-fun b_free!7125 () Bool)

(declare-fun b_next!7125 () Bool)

(assert (=> start!34002 (= b_free!7125 (not b_next!7125))))

(declare-fun tp!24893 () Bool)

(declare-fun b_and!14333 () Bool)

(assert (=> start!34002 (= tp!24893 b_and!14333)))

(declare-fun b!338525 () Bool)

(declare-fun e!207714 () Bool)

(declare-fun tp_is_empty!7077 () Bool)

(assert (=> b!338525 (= e!207714 tp_is_empty!7077)))

(declare-fun b!338527 () Bool)

(declare-fun e!207715 () Bool)

(declare-fun e!207720 () Bool)

(assert (=> b!338527 (= e!207715 e!207720)))

(declare-fun res!187072 () Bool)

(assert (=> b!338527 (=> (not res!187072) (not e!207720))))

(declare-datatypes ((SeekEntryResult!3243 0))(
  ( (MissingZero!3243 (index!15151 (_ BitVec 32))) (Found!3243 (index!15152 (_ BitVec 32))) (Intermediate!3243 (undefined!4055 Bool) (index!15153 (_ BitVec 32)) (x!33742 (_ BitVec 32))) (Undefined!3243) (MissingVacant!3243 (index!15154 (_ BitVec 32))) )
))
(declare-fun lt!160848 () SeekEntryResult!3243)

(get-info :version)

(assert (=> b!338527 (= res!187072 (and (not ((_ is Found!3243) lt!160848)) ((_ is MissingZero!3243) lt!160848)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!17721 0))(
  ( (array!17722 (arr!8383 (Array (_ BitVec 32) (_ BitVec 64))) (size!8735 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17721)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17721 (_ BitVec 32)) SeekEntryResult!3243)

(assert (=> b!338527 (= lt!160848 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!338528 () Bool)

(declare-fun res!187073 () Bool)

(assert (=> b!338528 (=> (not res!187073) (not e!207715))))

(declare-datatypes ((V!10413 0))(
  ( (V!10414 (val!3583 Int)) )
))
(declare-datatypes ((ValueCell!3195 0))(
  ( (ValueCellFull!3195 (v!5746 V!10413)) (EmptyCell!3195) )
))
(declare-datatypes ((array!17723 0))(
  ( (array!17724 (arr!8384 (Array (_ BitVec 32) ValueCell!3195)) (size!8736 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17723)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!338528 (= res!187073 (and (= (size!8736 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8735 _keys!1895) (size!8736 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!338529 () Bool)

(declare-fun e!207718 () Bool)

(declare-fun e!207719 () Bool)

(declare-fun mapRes!12027 () Bool)

(assert (=> b!338529 (= e!207718 (and e!207719 mapRes!12027))))

(declare-fun condMapEmpty!12027 () Bool)

(declare-fun mapDefault!12027 () ValueCell!3195)

(assert (=> b!338529 (= condMapEmpty!12027 (= (arr!8384 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3195)) mapDefault!12027)))))

(declare-fun b!338530 () Bool)

(declare-fun res!187074 () Bool)

(assert (=> b!338530 (=> (not res!187074) (not e!207715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338530 (= res!187074 (validKeyInArray!0 k0!1348))))

(declare-fun b!338531 () Bool)

(declare-fun res!187075 () Bool)

(assert (=> b!338531 (=> (not res!187075) (not e!207715))))

(declare-datatypes ((List!4833 0))(
  ( (Nil!4830) (Cons!4829 (h!5685 (_ BitVec 64)) (t!9939 List!4833)) )
))
(declare-fun arrayNoDuplicates!0 (array!17721 (_ BitVec 32) List!4833) Bool)

(assert (=> b!338531 (= res!187075 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4830))))

(declare-fun b!338532 () Bool)

(assert (=> b!338532 (= e!207720 false)))

(declare-datatypes ((Unit!10522 0))(
  ( (Unit!10523) )
))
(declare-fun lt!160847 () Unit!10522)

(declare-fun e!207717 () Unit!10522)

(assert (=> b!338532 (= lt!160847 e!207717)))

(declare-fun c!52370 () Bool)

(declare-fun arrayContainsKey!0 (array!17721 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338532 (= c!52370 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun res!187076 () Bool)

(assert (=> start!34002 (=> (not res!187076) (not e!207715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34002 (= res!187076 (validMask!0 mask!2385))))

(assert (=> start!34002 e!207715))

(assert (=> start!34002 true))

(assert (=> start!34002 tp_is_empty!7077))

(assert (=> start!34002 tp!24893))

(declare-fun array_inv!6208 (array!17723) Bool)

(assert (=> start!34002 (and (array_inv!6208 _values!1525) e!207718)))

(declare-fun array_inv!6209 (array!17721) Bool)

(assert (=> start!34002 (array_inv!6209 _keys!1895)))

(declare-fun b!338526 () Bool)

(declare-fun Unit!10524 () Unit!10522)

(assert (=> b!338526 (= e!207717 Unit!10524)))

(declare-fun b!338533 () Bool)

(assert (=> b!338533 (= e!207719 tp_is_empty!7077)))

(declare-fun b!338534 () Bool)

(declare-fun Unit!10525 () Unit!10522)

(assert (=> b!338534 (= e!207717 Unit!10525)))

(declare-fun zeroValue!1467 () V!10413)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10413)

(declare-fun lt!160846 () Unit!10522)

(declare-fun lemmaArrayContainsKeyThenInListMap!275 (array!17721 array!17723 (_ BitVec 32) (_ BitVec 32) V!10413 V!10413 (_ BitVec 64) (_ BitVec 32) Int) Unit!10522)

(declare-fun arrayScanForKey!0 (array!17721 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338534 (= lt!160846 (lemmaArrayContainsKeyThenInListMap!275 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338534 false))

(declare-fun mapNonEmpty!12027 () Bool)

(declare-fun tp!24894 () Bool)

(assert (=> mapNonEmpty!12027 (= mapRes!12027 (and tp!24894 e!207714))))

(declare-fun mapRest!12027 () (Array (_ BitVec 32) ValueCell!3195))

(declare-fun mapValue!12027 () ValueCell!3195)

(declare-fun mapKey!12027 () (_ BitVec 32))

(assert (=> mapNonEmpty!12027 (= (arr!8384 _values!1525) (store mapRest!12027 mapKey!12027 mapValue!12027))))

(declare-fun b!338535 () Bool)

(declare-fun res!187071 () Bool)

(assert (=> b!338535 (=> (not res!187071) (not e!207715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17721 (_ BitVec 32)) Bool)

(assert (=> b!338535 (= res!187071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!338536 () Bool)

(declare-fun res!187070 () Bool)

(assert (=> b!338536 (=> (not res!187070) (not e!207715))))

(declare-datatypes ((tuple2!5192 0))(
  ( (tuple2!5193 (_1!2606 (_ BitVec 64)) (_2!2606 V!10413)) )
))
(declare-datatypes ((List!4834 0))(
  ( (Nil!4831) (Cons!4830 (h!5686 tuple2!5192) (t!9940 List!4834)) )
))
(declare-datatypes ((ListLongMap!4119 0))(
  ( (ListLongMap!4120 (toList!2075 List!4834)) )
))
(declare-fun contains!2120 (ListLongMap!4119 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1595 (array!17721 array!17723 (_ BitVec 32) (_ BitVec 32) V!10413 V!10413 (_ BitVec 32) Int) ListLongMap!4119)

(assert (=> b!338536 (= res!187070 (not (contains!2120 (getCurrentListMap!1595 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapIsEmpty!12027 () Bool)

(assert (=> mapIsEmpty!12027 mapRes!12027))

(assert (= (and start!34002 res!187076) b!338528))

(assert (= (and b!338528 res!187073) b!338535))

(assert (= (and b!338535 res!187071) b!338531))

(assert (= (and b!338531 res!187075) b!338530))

(assert (= (and b!338530 res!187074) b!338536))

(assert (= (and b!338536 res!187070) b!338527))

(assert (= (and b!338527 res!187072) b!338532))

(assert (= (and b!338532 c!52370) b!338534))

(assert (= (and b!338532 (not c!52370)) b!338526))

(assert (= (and b!338529 condMapEmpty!12027) mapIsEmpty!12027))

(assert (= (and b!338529 (not condMapEmpty!12027)) mapNonEmpty!12027))

(assert (= (and mapNonEmpty!12027 ((_ is ValueCellFull!3195) mapValue!12027)) b!338525))

(assert (= (and b!338529 ((_ is ValueCellFull!3195) mapDefault!12027)) b!338533))

(assert (= start!34002 b!338529))

(declare-fun m!341739 () Bool)

(assert (=> mapNonEmpty!12027 m!341739))

(declare-fun m!341741 () Bool)

(assert (=> b!338532 m!341741))

(declare-fun m!341743 () Bool)

(assert (=> b!338531 m!341743))

(declare-fun m!341745 () Bool)

(assert (=> b!338527 m!341745))

(declare-fun m!341747 () Bool)

(assert (=> b!338534 m!341747))

(assert (=> b!338534 m!341747))

(declare-fun m!341749 () Bool)

(assert (=> b!338534 m!341749))

(declare-fun m!341751 () Bool)

(assert (=> b!338536 m!341751))

(assert (=> b!338536 m!341751))

(declare-fun m!341753 () Bool)

(assert (=> b!338536 m!341753))

(declare-fun m!341755 () Bool)

(assert (=> start!34002 m!341755))

(declare-fun m!341757 () Bool)

(assert (=> start!34002 m!341757))

(declare-fun m!341759 () Bool)

(assert (=> start!34002 m!341759))

(declare-fun m!341761 () Bool)

(assert (=> b!338530 m!341761))

(declare-fun m!341763 () Bool)

(assert (=> b!338535 m!341763))

(check-sat (not b_next!7125) (not b!338527) (not b!338531) tp_is_empty!7077 (not b!338536) (not b!338535) (not b!338532) (not b!338534) (not start!34002) (not b!338530) (not mapNonEmpty!12027) b_and!14333)
(check-sat b_and!14333 (not b_next!7125))
