; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16226 () Bool)

(assert start!16226)

(declare-fun b!161692 () Bool)

(declare-fun b_free!3675 () Bool)

(declare-fun b_next!3675 () Bool)

(assert (=> b!161692 (= b_free!3675 (not b_next!3675))))

(declare-fun tp!13595 () Bool)

(declare-fun b_and!10107 () Bool)

(assert (=> b!161692 (= tp!13595 b_and!10107)))

(declare-fun mapIsEmpty!5903 () Bool)

(declare-fun mapRes!5903 () Bool)

(assert (=> mapIsEmpty!5903 mapRes!5903))

(declare-fun b!161688 () Bool)

(declare-fun e!105747 () Bool)

(declare-fun tp_is_empty!3477 () Bool)

(assert (=> b!161688 (= e!105747 tp_is_empty!3477)))

(declare-fun b!161689 () Bool)

(declare-fun e!105750 () Bool)

(assert (=> b!161689 (= e!105750 (and e!105747 mapRes!5903))))

(declare-fun condMapEmpty!5903 () Bool)

(declare-datatypes ((V!4283 0))(
  ( (V!4284 (val!1783 Int)) )
))
(declare-datatypes ((ValueCell!1395 0))(
  ( (ValueCellFull!1395 (v!3644 V!4283)) (EmptyCell!1395) )
))
(declare-datatypes ((array!6032 0))(
  ( (array!6033 (arr!2860 (Array (_ BitVec 32) (_ BitVec 64))) (size!3144 (_ BitVec 32))) )
))
(declare-datatypes ((array!6034 0))(
  ( (array!6035 (arr!2861 (Array (_ BitVec 32) ValueCell!1395)) (size!3145 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1698 0))(
  ( (LongMapFixedSize!1699 (defaultEntry!3291 Int) (mask!7891 (_ BitVec 32)) (extraKeys!3032 (_ BitVec 32)) (zeroValue!3134 V!4283) (minValue!3134 V!4283) (_size!898 (_ BitVec 32)) (_keys!5092 array!6032) (_values!3274 array!6034) (_vacant!898 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1698)

(declare-fun mapDefault!5903 () ValueCell!1395)

(assert (=> b!161689 (= condMapEmpty!5903 (= (arr!2861 (_values!3274 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1395)) mapDefault!5903)))))

(declare-fun b!161690 () Bool)

(declare-fun res!76619 () Bool)

(declare-fun e!105748 () Bool)

(assert (=> b!161690 (=> (not res!76619) (not e!105748))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161690 (= res!76619 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!5903 () Bool)

(declare-fun tp!13594 () Bool)

(declare-fun e!105749 () Bool)

(assert (=> mapNonEmpty!5903 (= mapRes!5903 (and tp!13594 e!105749))))

(declare-fun mapValue!5903 () ValueCell!1395)

(declare-fun mapKey!5903 () (_ BitVec 32))

(declare-fun mapRest!5903 () (Array (_ BitVec 32) ValueCell!1395))

(assert (=> mapNonEmpty!5903 (= (arr!2861 (_values!3274 thiss!1248)) (store mapRest!5903 mapKey!5903 mapValue!5903))))

(declare-fun b!161691 () Bool)

(declare-datatypes ((SeekEntryResult!369 0))(
  ( (MissingZero!369 (index!3644 (_ BitVec 32))) (Found!369 (index!3645 (_ BitVec 32))) (Intermediate!369 (undefined!1181 Bool) (index!3646 (_ BitVec 32)) (x!17865 (_ BitVec 32))) (Undefined!369) (MissingVacant!369 (index!3647 (_ BitVec 32))) )
))
(declare-fun lt!82292 () SeekEntryResult!369)

(get-info :version)

(assert (=> b!161691 (= e!105748 (and (not ((_ is Undefined!369) lt!82292)) ((_ is MissingVacant!369) lt!82292) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6032 (_ BitVec 32)) SeekEntryResult!369)

(assert (=> b!161691 (= lt!82292 (seekEntryOrOpen!0 key!828 (_keys!5092 thiss!1248) (mask!7891 thiss!1248)))))

(declare-fun e!105752 () Bool)

(declare-fun array_inv!1817 (array!6032) Bool)

(declare-fun array_inv!1818 (array!6034) Bool)

(assert (=> b!161692 (= e!105752 (and tp!13595 tp_is_empty!3477 (array_inv!1817 (_keys!5092 thiss!1248)) (array_inv!1818 (_values!3274 thiss!1248)) e!105750))))

(declare-fun b!161693 () Bool)

(assert (=> b!161693 (= e!105749 tp_is_empty!3477)))

(declare-fun res!76618 () Bool)

(assert (=> start!16226 (=> (not res!76618) (not e!105748))))

(declare-fun valid!768 (LongMapFixedSize!1698) Bool)

(assert (=> start!16226 (= res!76618 (valid!768 thiss!1248))))

(assert (=> start!16226 e!105748))

(assert (=> start!16226 e!105752))

(assert (=> start!16226 true))

(assert (= (and start!16226 res!76618) b!161690))

(assert (= (and b!161690 res!76619) b!161691))

(assert (= (and b!161689 condMapEmpty!5903) mapIsEmpty!5903))

(assert (= (and b!161689 (not condMapEmpty!5903)) mapNonEmpty!5903))

(assert (= (and mapNonEmpty!5903 ((_ is ValueCellFull!1395) mapValue!5903)) b!161693))

(assert (= (and b!161689 ((_ is ValueCellFull!1395) mapDefault!5903)) b!161688))

(assert (= b!161692 b!161689))

(assert (= start!16226 b!161692))

(declare-fun m!193095 () Bool)

(assert (=> mapNonEmpty!5903 m!193095))

(declare-fun m!193097 () Bool)

(assert (=> b!161691 m!193097))

(declare-fun m!193099 () Bool)

(assert (=> b!161692 m!193099))

(declare-fun m!193101 () Bool)

(assert (=> b!161692 m!193101))

(declare-fun m!193103 () Bool)

(assert (=> start!16226 m!193103))

(check-sat (not start!16226) tp_is_empty!3477 (not mapNonEmpty!5903) (not b!161691) b_and!10107 (not b!161692) (not b_next!3675))
(check-sat b_and!10107 (not b_next!3675))
