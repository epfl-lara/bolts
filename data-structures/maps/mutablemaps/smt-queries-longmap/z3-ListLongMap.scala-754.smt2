; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17704 () Bool)

(assert start!17704)

(declare-fun b!176818 () Bool)

(declare-fun b_free!4365 () Bool)

(declare-fun b_next!4365 () Bool)

(assert (=> b!176818 (= b_free!4365 (not b_next!4365))))

(declare-fun tp!15792 () Bool)

(declare-fun b_and!10881 () Bool)

(assert (=> b!176818 (= tp!15792 b_and!10881)))

(declare-fun b!176812 () Bool)

(declare-fun res!83814 () Bool)

(declare-fun e!116632 () Bool)

(assert (=> b!176812 (=> (not res!83814) (not e!116632))))

(declare-datatypes ((V!5163 0))(
  ( (V!5164 (val!2113 Int)) )
))
(declare-datatypes ((ValueCell!1725 0))(
  ( (ValueCellFull!1725 (v!3988 V!5163)) (EmptyCell!1725) )
))
(declare-datatypes ((array!7422 0))(
  ( (array!7423 (arr!3520 (Array (_ BitVec 32) (_ BitVec 64))) (size!3824 (_ BitVec 32))) )
))
(declare-datatypes ((array!7424 0))(
  ( (array!7425 (arr!3521 (Array (_ BitVec 32) ValueCell!1725)) (size!3825 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2358 0))(
  ( (LongMapFixedSize!2359 (defaultEntry!3641 Int) (mask!8568 (_ BitVec 32)) (extraKeys!3378 (_ BitVec 32)) (zeroValue!3482 V!5163) (minValue!3482 V!5163) (_size!1228 (_ BitVec 32)) (_keys!5506 array!7422) (_values!3624 array!7424) (_vacant!1228 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2358)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7422 (_ BitVec 32)) Bool)

(assert (=> b!176812 (= res!83814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5506 thiss!1248) (mask!8568 thiss!1248)))))

(declare-fun b!176813 () Bool)

(declare-fun res!83811 () Bool)

(assert (=> b!176813 (=> (not res!83811) (not e!116632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!176813 (= res!83811 (validMask!0 (mask!8568 thiss!1248)))))

(declare-fun res!83815 () Bool)

(assert (=> start!17704 (=> (not res!83815) (not e!116632))))

(declare-fun valid!982 (LongMapFixedSize!2358) Bool)

(assert (=> start!17704 (= res!83815 (valid!982 thiss!1248))))

(assert (=> start!17704 e!116632))

(declare-fun e!116631 () Bool)

(assert (=> start!17704 e!116631))

(assert (=> start!17704 true))

(declare-fun mapIsEmpty!7065 () Bool)

(declare-fun mapRes!7065 () Bool)

(assert (=> mapIsEmpty!7065 mapRes!7065))

(declare-fun b!176814 () Bool)

(declare-fun res!83810 () Bool)

(assert (=> b!176814 (=> (not res!83810) (not e!116632))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3286 0))(
  ( (tuple2!3287 (_1!1653 (_ BitVec 64)) (_2!1653 V!5163)) )
))
(declare-datatypes ((List!2262 0))(
  ( (Nil!2259) (Cons!2258 (h!2879 tuple2!3286) (t!7098 List!2262)) )
))
(declare-datatypes ((ListLongMap!2227 0))(
  ( (ListLongMap!2228 (toList!1129 List!2262)) )
))
(declare-fun contains!1188 (ListLongMap!2227 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!776 (array!7422 array!7424 (_ BitVec 32) (_ BitVec 32) V!5163 V!5163 (_ BitVec 32) Int) ListLongMap!2227)

(assert (=> b!176814 (= res!83810 (contains!1188 (getCurrentListMap!776 (_keys!5506 thiss!1248) (_values!3624 thiss!1248) (mask!8568 thiss!1248) (extraKeys!3378 thiss!1248) (zeroValue!3482 thiss!1248) (minValue!3482 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3641 thiss!1248)) key!828))))

(declare-fun b!176815 () Bool)

(declare-fun e!116634 () Bool)

(declare-fun tp_is_empty!4137 () Bool)

(assert (=> b!176815 (= e!116634 tp_is_empty!4137)))

(declare-fun b!176816 () Bool)

(assert (=> b!176816 (= e!116632 false)))

(declare-fun lt!87499 () Bool)

(declare-datatypes ((List!2263 0))(
  ( (Nil!2260) (Cons!2259 (h!2880 (_ BitVec 64)) (t!7099 List!2263)) )
))
(declare-fun arrayNoDuplicates!0 (array!7422 (_ BitVec 32) List!2263) Bool)

(assert (=> b!176816 (= lt!87499 (arrayNoDuplicates!0 (_keys!5506 thiss!1248) #b00000000000000000000000000000000 Nil!2260))))

(declare-fun b!176817 () Bool)

(declare-fun res!83812 () Bool)

(assert (=> b!176817 (=> (not res!83812) (not e!116632))))

(assert (=> b!176817 (= res!83812 (and (= (size!3825 (_values!3624 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8568 thiss!1248))) (= (size!3824 (_keys!5506 thiss!1248)) (size!3825 (_values!3624 thiss!1248))) (bvsge (mask!8568 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3378 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3378 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun e!116635 () Bool)

(declare-fun array_inv!2245 (array!7422) Bool)

(declare-fun array_inv!2246 (array!7424) Bool)

(assert (=> b!176818 (= e!116631 (and tp!15792 tp_is_empty!4137 (array_inv!2245 (_keys!5506 thiss!1248)) (array_inv!2246 (_values!3624 thiss!1248)) e!116635))))

(declare-fun b!176819 () Bool)

(assert (=> b!176819 (= e!116635 (and e!116634 mapRes!7065))))

(declare-fun condMapEmpty!7065 () Bool)

(declare-fun mapDefault!7065 () ValueCell!1725)

(assert (=> b!176819 (= condMapEmpty!7065 (= (arr!3521 (_values!3624 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1725)) mapDefault!7065)))))

(declare-fun mapNonEmpty!7065 () Bool)

(declare-fun tp!15791 () Bool)

(declare-fun e!116633 () Bool)

(assert (=> mapNonEmpty!7065 (= mapRes!7065 (and tp!15791 e!116633))))

(declare-fun mapKey!7065 () (_ BitVec 32))

(declare-fun mapValue!7065 () ValueCell!1725)

(declare-fun mapRest!7065 () (Array (_ BitVec 32) ValueCell!1725))

(assert (=> mapNonEmpty!7065 (= (arr!3521 (_values!3624 thiss!1248)) (store mapRest!7065 mapKey!7065 mapValue!7065))))

(declare-fun b!176820 () Bool)

(declare-fun res!83816 () Bool)

(assert (=> b!176820 (=> (not res!83816) (not e!116632))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!569 0))(
  ( (MissingZero!569 (index!4444 (_ BitVec 32))) (Found!569 (index!4445 (_ BitVec 32))) (Intermediate!569 (undefined!1381 Bool) (index!4446 (_ BitVec 32)) (x!19415 (_ BitVec 32))) (Undefined!569) (MissingVacant!569 (index!4447 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7422 (_ BitVec 32)) SeekEntryResult!569)

(assert (=> b!176820 (= res!83816 ((_ is Undefined!569) (seekEntryOrOpen!0 key!828 (_keys!5506 thiss!1248) (mask!8568 thiss!1248))))))

(declare-fun b!176821 () Bool)

(declare-fun res!83813 () Bool)

(assert (=> b!176821 (=> (not res!83813) (not e!116632))))

(assert (=> b!176821 (= res!83813 (not (= key!828 (bvneg key!828))))))

(declare-fun b!176822 () Bool)

(assert (=> b!176822 (= e!116633 tp_is_empty!4137)))

(assert (= (and start!17704 res!83815) b!176821))

(assert (= (and b!176821 res!83813) b!176820))

(assert (= (and b!176820 res!83816) b!176814))

(assert (= (and b!176814 res!83810) b!176813))

(assert (= (and b!176813 res!83811) b!176817))

(assert (= (and b!176817 res!83812) b!176812))

(assert (= (and b!176812 res!83814) b!176816))

(assert (= (and b!176819 condMapEmpty!7065) mapIsEmpty!7065))

(assert (= (and b!176819 (not condMapEmpty!7065)) mapNonEmpty!7065))

(assert (= (and mapNonEmpty!7065 ((_ is ValueCellFull!1725) mapValue!7065)) b!176822))

(assert (= (and b!176819 ((_ is ValueCellFull!1725) mapDefault!7065)) b!176815))

(assert (= b!176818 b!176819))

(assert (= start!17704 b!176818))

(declare-fun m!205519 () Bool)

(assert (=> start!17704 m!205519))

(declare-fun m!205521 () Bool)

(assert (=> b!176818 m!205521))

(declare-fun m!205523 () Bool)

(assert (=> b!176818 m!205523))

(declare-fun m!205525 () Bool)

(assert (=> b!176814 m!205525))

(assert (=> b!176814 m!205525))

(declare-fun m!205527 () Bool)

(assert (=> b!176814 m!205527))

(declare-fun m!205529 () Bool)

(assert (=> b!176816 m!205529))

(declare-fun m!205531 () Bool)

(assert (=> b!176812 m!205531))

(declare-fun m!205533 () Bool)

(assert (=> mapNonEmpty!7065 m!205533))

(declare-fun m!205535 () Bool)

(assert (=> b!176813 m!205535))

(declare-fun m!205537 () Bool)

(assert (=> b!176820 m!205537))

(check-sat (not start!17704) (not b!176820) (not b_next!4365) (not b!176818) (not b!176816) (not mapNonEmpty!7065) tp_is_empty!4137 (not b!176814) b_and!10881 (not b!176813) (not b!176812))
(check-sat b_and!10881 (not b_next!4365))
