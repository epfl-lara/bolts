; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16100 () Bool)

(assert start!16100)

(declare-fun b!159815 () Bool)

(declare-fun b_free!3549 () Bool)

(declare-fun b_next!3549 () Bool)

(assert (=> b!159815 (= b_free!3549 (not b_next!3549))))

(declare-fun tp!13217 () Bool)

(declare-fun b_and!9981 () Bool)

(assert (=> b!159815 (= tp!13217 b_and!9981)))

(declare-fun b!159814 () Bool)

(declare-fun res!75590 () Bool)

(declare-fun e!104568 () Bool)

(assert (=> b!159814 (=> (not res!75590) (not e!104568))))

(declare-datatypes ((V!4115 0))(
  ( (V!4116 (val!1720 Int)) )
))
(declare-datatypes ((ValueCell!1332 0))(
  ( (ValueCellFull!1332 (v!3581 V!4115)) (EmptyCell!1332) )
))
(declare-datatypes ((array!5780 0))(
  ( (array!5781 (arr!2734 (Array (_ BitVec 32) (_ BitVec 64))) (size!3018 (_ BitVec 32))) )
))
(declare-datatypes ((array!5782 0))(
  ( (array!5783 (arr!2735 (Array (_ BitVec 32) ValueCell!1332)) (size!3019 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1572 0))(
  ( (LongMapFixedSize!1573 (defaultEntry!3228 Int) (mask!7786 (_ BitVec 32)) (extraKeys!2969 (_ BitVec 32)) (zeroValue!3071 V!4115) (minValue!3071 V!4115) (_size!835 (_ BitVec 32)) (_keys!5029 array!5780) (_values!3211 array!5782) (_vacant!835 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1572)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5780 (_ BitVec 32)) Bool)

(assert (=> b!159814 (= res!75590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5029 thiss!1248) (mask!7786 thiss!1248)))))

(declare-fun mapNonEmpty!5714 () Bool)

(declare-fun mapRes!5714 () Bool)

(declare-fun tp!13216 () Bool)

(declare-fun e!104573 () Bool)

(assert (=> mapNonEmpty!5714 (= mapRes!5714 (and tp!13216 e!104573))))

(declare-fun mapRest!5714 () (Array (_ BitVec 32) ValueCell!1332))

(declare-fun mapValue!5714 () ValueCell!1332)

(declare-fun mapKey!5714 () (_ BitVec 32))

(assert (=> mapNonEmpty!5714 (= (arr!2735 (_values!3211 thiss!1248)) (store mapRest!5714 mapKey!5714 mapValue!5714))))

(declare-fun b!159816 () Bool)

(declare-fun res!75593 () Bool)

(assert (=> b!159816 (=> (not res!75593) (not e!104568))))

(assert (=> b!159816 (= res!75593 (and (= (size!3019 (_values!3211 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7786 thiss!1248))) (= (size!3018 (_keys!5029 thiss!1248)) (size!3019 (_values!3211 thiss!1248))) (bvsge (mask!7786 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2969 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2969 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159817 () Bool)

(assert (=> b!159817 (= e!104568 false)))

(declare-fun lt!82058 () Bool)

(declare-datatypes ((List!1939 0))(
  ( (Nil!1936) (Cons!1935 (h!2548 (_ BitVec 64)) (t!6749 List!1939)) )
))
(declare-fun arrayNoDuplicates!0 (array!5780 (_ BitVec 32) List!1939) Bool)

(assert (=> b!159817 (= lt!82058 (arrayNoDuplicates!0 (_keys!5029 thiss!1248) #b00000000000000000000000000000000 Nil!1936))))

(declare-fun b!159818 () Bool)

(declare-fun res!75596 () Bool)

(assert (=> b!159818 (=> (not res!75596) (not e!104568))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2884 0))(
  ( (tuple2!2885 (_1!1452 (_ BitVec 64)) (_2!1452 V!4115)) )
))
(declare-datatypes ((List!1940 0))(
  ( (Nil!1937) (Cons!1936 (h!2549 tuple2!2884) (t!6750 List!1940)) )
))
(declare-datatypes ((ListLongMap!1893 0))(
  ( (ListLongMap!1894 (toList!962 List!1940)) )
))
(declare-fun contains!992 (ListLongMap!1893 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!622 (array!5780 array!5782 (_ BitVec 32) (_ BitVec 32) V!4115 V!4115 (_ BitVec 32) Int) ListLongMap!1893)

(assert (=> b!159818 (= res!75596 (contains!992 (getCurrentListMap!622 (_keys!5029 thiss!1248) (_values!3211 thiss!1248) (mask!7786 thiss!1248) (extraKeys!2969 thiss!1248) (zeroValue!3071 thiss!1248) (minValue!3071 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3228 thiss!1248)) key!828))))

(declare-fun b!159819 () Bool)

(declare-fun e!104569 () Bool)

(declare-fun e!104572 () Bool)

(assert (=> b!159819 (= e!104569 (and e!104572 mapRes!5714))))

(declare-fun condMapEmpty!5714 () Bool)

(declare-fun mapDefault!5714 () ValueCell!1332)

(assert (=> b!159819 (= condMapEmpty!5714 (= (arr!2735 (_values!3211 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1332)) mapDefault!5714)))))

(declare-fun b!159820 () Bool)

(declare-fun tp_is_empty!3351 () Bool)

(assert (=> b!159820 (= e!104572 tp_is_empty!3351)))

(declare-fun b!159821 () Bool)

(declare-fun res!75592 () Bool)

(assert (=> b!159821 (=> (not res!75592) (not e!104568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159821 (= res!75592 (validMask!0 (mask!7786 thiss!1248)))))

(declare-fun b!159822 () Bool)

(assert (=> b!159822 (= e!104573 tp_is_empty!3351)))

(declare-fun b!159823 () Bool)

(declare-fun res!75595 () Bool)

(assert (=> b!159823 (=> (not res!75595) (not e!104568))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!330 0))(
  ( (MissingZero!330 (index!3488 (_ BitVec 32))) (Found!330 (index!3489 (_ BitVec 32))) (Intermediate!330 (undefined!1142 Bool) (index!3490 (_ BitVec 32)) (x!17658 (_ BitVec 32))) (Undefined!330) (MissingVacant!330 (index!3491 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5780 (_ BitVec 32)) SeekEntryResult!330)

(assert (=> b!159823 (= res!75595 ((_ is Undefined!330) (seekEntryOrOpen!0 key!828 (_keys!5029 thiss!1248) (mask!7786 thiss!1248))))))

(declare-fun e!104571 () Bool)

(declare-fun array_inv!1733 (array!5780) Bool)

(declare-fun array_inv!1734 (array!5782) Bool)

(assert (=> b!159815 (= e!104571 (and tp!13217 tp_is_empty!3351 (array_inv!1733 (_keys!5029 thiss!1248)) (array_inv!1734 (_values!3211 thiss!1248)) e!104569))))

(declare-fun res!75594 () Bool)

(assert (=> start!16100 (=> (not res!75594) (not e!104568))))

(declare-fun valid!728 (LongMapFixedSize!1572) Bool)

(assert (=> start!16100 (= res!75594 (valid!728 thiss!1248))))

(assert (=> start!16100 e!104568))

(assert (=> start!16100 e!104571))

(assert (=> start!16100 true))

(declare-fun mapIsEmpty!5714 () Bool)

(assert (=> mapIsEmpty!5714 mapRes!5714))

(declare-fun b!159824 () Bool)

(declare-fun res!75591 () Bool)

(assert (=> b!159824 (=> (not res!75591) (not e!104568))))

(assert (=> b!159824 (= res!75591 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!16100 res!75594) b!159824))

(assert (= (and b!159824 res!75591) b!159823))

(assert (= (and b!159823 res!75595) b!159818))

(assert (= (and b!159818 res!75596) b!159821))

(assert (= (and b!159821 res!75592) b!159816))

(assert (= (and b!159816 res!75593) b!159814))

(assert (= (and b!159814 res!75590) b!159817))

(assert (= (and b!159819 condMapEmpty!5714) mapIsEmpty!5714))

(assert (= (and b!159819 (not condMapEmpty!5714)) mapNonEmpty!5714))

(assert (= (and mapNonEmpty!5714 ((_ is ValueCellFull!1332) mapValue!5714)) b!159822))

(assert (= (and b!159819 ((_ is ValueCellFull!1332) mapDefault!5714)) b!159820))

(assert (= b!159815 b!159819))

(assert (= start!16100 b!159815))

(declare-fun m!191935 () Bool)

(assert (=> b!159814 m!191935))

(declare-fun m!191937 () Bool)

(assert (=> b!159815 m!191937))

(declare-fun m!191939 () Bool)

(assert (=> b!159815 m!191939))

(declare-fun m!191941 () Bool)

(assert (=> b!159821 m!191941))

(declare-fun m!191943 () Bool)

(assert (=> b!159817 m!191943))

(declare-fun m!191945 () Bool)

(assert (=> start!16100 m!191945))

(declare-fun m!191947 () Bool)

(assert (=> b!159823 m!191947))

(declare-fun m!191949 () Bool)

(assert (=> mapNonEmpty!5714 m!191949))

(declare-fun m!191951 () Bool)

(assert (=> b!159818 m!191951))

(assert (=> b!159818 m!191951))

(declare-fun m!191953 () Bool)

(assert (=> b!159818 m!191953))

(check-sat (not start!16100) (not b!159818) b_and!9981 (not b!159815) (not b!159821) (not mapNonEmpty!5714) (not b!159817) (not b!159823) tp_is_empty!3351 (not b_next!3549) (not b!159814))
(check-sat b_and!9981 (not b_next!3549))
