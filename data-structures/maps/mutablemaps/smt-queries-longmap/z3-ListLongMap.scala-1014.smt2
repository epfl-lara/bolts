; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21698 () Bool)

(assert start!21698)

(declare-fun b!217745 () Bool)

(declare-fun b_free!5835 () Bool)

(declare-fun b_next!5835 () Bool)

(assert (=> b!217745 (= b_free!5835 (not b_next!5835))))

(declare-fun tp!20640 () Bool)

(declare-fun b_and!12743 () Bool)

(assert (=> b!217745 (= tp!20640 b_and!12743)))

(declare-fun tp_is_empty!5697 () Bool)

(declare-datatypes ((V!7243 0))(
  ( (V!7244 (val!2893 Int)) )
))
(declare-datatypes ((ValueCell!2505 0))(
  ( (ValueCellFull!2505 (v!4907 V!7243)) (EmptyCell!2505) )
))
(declare-datatypes ((array!10632 0))(
  ( (array!10633 (arr!5037 (Array (_ BitVec 32) ValueCell!2505)) (size!5369 (_ BitVec 32))) )
))
(declare-datatypes ((array!10634 0))(
  ( (array!10635 (arr!5038 (Array (_ BitVec 32) (_ BitVec 64))) (size!5370 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2910 0))(
  ( (LongMapFixedSize!2911 (defaultEntry!4105 Int) (mask!9868 (_ BitVec 32)) (extraKeys!3842 (_ BitVec 32)) (zeroValue!3946 V!7243) (minValue!3946 V!7243) (_size!1504 (_ BitVec 32)) (_keys!6154 array!10634) (_values!4088 array!10632) (_vacant!1504 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2910)

(declare-fun e!141661 () Bool)

(declare-fun e!141660 () Bool)

(declare-fun array_inv!3325 (array!10634) Bool)

(declare-fun array_inv!3326 (array!10632) Bool)

(assert (=> b!217745 (= e!141661 (and tp!20640 tp_is_empty!5697 (array_inv!3325 (_keys!6154 thiss!1504)) (array_inv!3326 (_values!4088 thiss!1504)) e!141660))))

(declare-fun b!217746 () Bool)

(declare-fun res!106687 () Bool)

(declare-fun e!141662 () Bool)

(assert (=> b!217746 (=> (not res!106687) (not e!141662))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10634 (_ BitVec 32)) Bool)

(assert (=> b!217746 (= res!106687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6154 thiss!1504) (mask!9868 thiss!1504)))))

(declare-fun b!217747 () Bool)

(declare-fun res!106691 () Bool)

(assert (=> b!217747 (=> (not res!106691) (not e!141662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217747 (= res!106691 (validMask!0 (mask!9868 thiss!1504)))))

(declare-fun b!217748 () Bool)

(declare-fun res!106688 () Bool)

(declare-fun e!141659 () Bool)

(assert (=> b!217748 (=> (not res!106688) (not e!141659))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!217748 (= res!106688 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!9708 () Bool)

(declare-fun mapRes!9708 () Bool)

(assert (=> mapIsEmpty!9708 mapRes!9708))

(declare-fun b!217749 () Bool)

(assert (=> b!217749 (= e!141659 e!141662)))

(declare-fun res!106689 () Bool)

(assert (=> b!217749 (=> (not res!106689) (not e!141662))))

(declare-datatypes ((SeekEntryResult!783 0))(
  ( (MissingZero!783 (index!5302 (_ BitVec 32))) (Found!783 (index!5303 (_ BitVec 32))) (Intermediate!783 (undefined!1595 Bool) (index!5304 (_ BitVec 32)) (x!22783 (_ BitVec 32))) (Undefined!783) (MissingVacant!783 (index!5305 (_ BitVec 32))) )
))
(declare-fun lt!111432 () SeekEntryResult!783)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217749 (= res!106689 (or (= lt!111432 (MissingZero!783 index!297)) (= lt!111432 (MissingVacant!783 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10634 (_ BitVec 32)) SeekEntryResult!783)

(assert (=> b!217749 (= lt!111432 (seekEntryOrOpen!0 key!932 (_keys!6154 thiss!1504) (mask!9868 thiss!1504)))))

(declare-fun b!217750 () Bool)

(assert (=> b!217750 (= e!141662 false)))

(declare-fun lt!111433 () Bool)

(declare-datatypes ((List!3223 0))(
  ( (Nil!3220) (Cons!3219 (h!3866 (_ BitVec 64)) (t!8186 List!3223)) )
))
(declare-fun arrayNoDuplicates!0 (array!10634 (_ BitVec 32) List!3223) Bool)

(assert (=> b!217750 (= lt!111433 (arrayNoDuplicates!0 (_keys!6154 thiss!1504) #b00000000000000000000000000000000 Nil!3220))))

(declare-fun res!106692 () Bool)

(assert (=> start!21698 (=> (not res!106692) (not e!141659))))

(declare-fun valid!1172 (LongMapFixedSize!2910) Bool)

(assert (=> start!21698 (= res!106692 (valid!1172 thiss!1504))))

(assert (=> start!21698 e!141659))

(assert (=> start!21698 e!141661))

(assert (=> start!21698 true))

(declare-fun b!217751 () Bool)

(declare-fun e!141663 () Bool)

(assert (=> b!217751 (= e!141660 (and e!141663 mapRes!9708))))

(declare-fun condMapEmpty!9708 () Bool)

(declare-fun mapDefault!9708 () ValueCell!2505)

(assert (=> b!217751 (= condMapEmpty!9708 (= (arr!5037 (_values!4088 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2505)) mapDefault!9708)))))

(declare-fun b!217752 () Bool)

(assert (=> b!217752 (= e!141663 tp_is_empty!5697)))

(declare-fun b!217753 () Bool)

(declare-fun res!106686 () Bool)

(assert (=> b!217753 (=> (not res!106686) (not e!141662))))

(declare-datatypes ((tuple2!4294 0))(
  ( (tuple2!4295 (_1!2157 (_ BitVec 64)) (_2!2157 V!7243)) )
))
(declare-datatypes ((List!3224 0))(
  ( (Nil!3221) (Cons!3220 (h!3867 tuple2!4294) (t!8187 List!3224)) )
))
(declare-datatypes ((ListLongMap!3221 0))(
  ( (ListLongMap!3222 (toList!1626 List!3224)) )
))
(declare-fun contains!1461 (ListLongMap!3221 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1149 (array!10634 array!10632 (_ BitVec 32) (_ BitVec 32) V!7243 V!7243 (_ BitVec 32) Int) ListLongMap!3221)

(assert (=> b!217753 (= res!106686 (not (contains!1461 (getCurrentListMap!1149 (_keys!6154 thiss!1504) (_values!4088 thiss!1504) (mask!9868 thiss!1504) (extraKeys!3842 thiss!1504) (zeroValue!3946 thiss!1504) (minValue!3946 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4105 thiss!1504)) key!932)))))

(declare-fun mapNonEmpty!9708 () Bool)

(declare-fun tp!20639 () Bool)

(declare-fun e!141658 () Bool)

(assert (=> mapNonEmpty!9708 (= mapRes!9708 (and tp!20639 e!141658))))

(declare-fun mapRest!9708 () (Array (_ BitVec 32) ValueCell!2505))

(declare-fun mapValue!9708 () ValueCell!2505)

(declare-fun mapKey!9708 () (_ BitVec 32))

(assert (=> mapNonEmpty!9708 (= (arr!5037 (_values!4088 thiss!1504)) (store mapRest!9708 mapKey!9708 mapValue!9708))))

(declare-fun b!217754 () Bool)

(assert (=> b!217754 (= e!141658 tp_is_empty!5697)))

(declare-fun b!217755 () Bool)

(declare-fun res!106690 () Bool)

(assert (=> b!217755 (=> (not res!106690) (not e!141662))))

(assert (=> b!217755 (= res!106690 (and (= (size!5369 (_values!4088 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9868 thiss!1504))) (= (size!5370 (_keys!6154 thiss!1504)) (size!5369 (_values!4088 thiss!1504))) (bvsge (mask!9868 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3842 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3842 thiss!1504) #b00000000000000000000000000000011)))))

(assert (= (and start!21698 res!106692) b!217748))

(assert (= (and b!217748 res!106688) b!217749))

(assert (= (and b!217749 res!106689) b!217753))

(assert (= (and b!217753 res!106686) b!217747))

(assert (= (and b!217747 res!106691) b!217755))

(assert (= (and b!217755 res!106690) b!217746))

(assert (= (and b!217746 res!106687) b!217750))

(assert (= (and b!217751 condMapEmpty!9708) mapIsEmpty!9708))

(assert (= (and b!217751 (not condMapEmpty!9708)) mapNonEmpty!9708))

(get-info :version)

(assert (= (and mapNonEmpty!9708 ((_ is ValueCellFull!2505) mapValue!9708)) b!217754))

(assert (= (and b!217751 ((_ is ValueCellFull!2505) mapDefault!9708)) b!217752))

(assert (= b!217745 b!217751))

(assert (= start!21698 b!217745))

(declare-fun m!243947 () Bool)

(assert (=> start!21698 m!243947))

(declare-fun m!243949 () Bool)

(assert (=> b!217753 m!243949))

(assert (=> b!217753 m!243949))

(declare-fun m!243951 () Bool)

(assert (=> b!217753 m!243951))

(declare-fun m!243953 () Bool)

(assert (=> b!217747 m!243953))

(declare-fun m!243955 () Bool)

(assert (=> b!217750 m!243955))

(declare-fun m!243957 () Bool)

(assert (=> mapNonEmpty!9708 m!243957))

(declare-fun m!243959 () Bool)

(assert (=> b!217749 m!243959))

(declare-fun m!243961 () Bool)

(assert (=> b!217745 m!243961))

(declare-fun m!243963 () Bool)

(assert (=> b!217745 m!243963))

(declare-fun m!243965 () Bool)

(assert (=> b!217746 m!243965))

(check-sat (not b_next!5835) tp_is_empty!5697 (not b!217747) (not b!217750) (not mapNonEmpty!9708) b_and!12743 (not b!217753) (not b!217749) (not b!217746) (not b!217745) (not start!21698))
(check-sat b_and!12743 (not b_next!5835))
