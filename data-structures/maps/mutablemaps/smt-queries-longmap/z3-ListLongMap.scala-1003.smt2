; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21632 () Bool)

(assert start!21632)

(declare-fun b!216659 () Bool)

(declare-fun b_free!5769 () Bool)

(declare-fun b_next!5769 () Bool)

(assert (=> b!216659 (= b_free!5769 (not b_next!5769))))

(declare-fun tp!20442 () Bool)

(declare-fun b_and!12677 () Bool)

(assert (=> b!216659 (= tp!20442 b_and!12677)))

(declare-fun b!216656 () Bool)

(declare-fun e!140970 () Bool)

(declare-fun tp_is_empty!5631 () Bool)

(assert (=> b!216656 (= e!140970 tp_is_empty!5631)))

(declare-fun b!216657 () Bool)

(declare-fun e!140964 () Bool)

(assert (=> b!216657 (= e!140964 false)))

(declare-fun lt!111235 () Bool)

(declare-datatypes ((V!7155 0))(
  ( (V!7156 (val!2860 Int)) )
))
(declare-datatypes ((ValueCell!2472 0))(
  ( (ValueCellFull!2472 (v!4874 V!7155)) (EmptyCell!2472) )
))
(declare-datatypes ((array!10500 0))(
  ( (array!10501 (arr!4971 (Array (_ BitVec 32) ValueCell!2472)) (size!5303 (_ BitVec 32))) )
))
(declare-datatypes ((array!10502 0))(
  ( (array!10503 (arr!4972 (Array (_ BitVec 32) (_ BitVec 64))) (size!5304 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2844 0))(
  ( (LongMapFixedSize!2845 (defaultEntry!4072 Int) (mask!9813 (_ BitVec 32)) (extraKeys!3809 (_ BitVec 32)) (zeroValue!3913 V!7155) (minValue!3913 V!7155) (_size!1471 (_ BitVec 32)) (_keys!6121 array!10502) (_values!4055 array!10500) (_vacant!1471 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2844)

(declare-datatypes ((List!3179 0))(
  ( (Nil!3176) (Cons!3175 (h!3822 (_ BitVec 64)) (t!8142 List!3179)) )
))
(declare-fun arrayNoDuplicates!0 (array!10502 (_ BitVec 32) List!3179) Bool)

(assert (=> b!216657 (= lt!111235 (arrayNoDuplicates!0 (_keys!6121 thiss!1504) #b00000000000000000000000000000000 Nil!3176))))

(declare-fun b!216658 () Bool)

(declare-fun res!105999 () Bool)

(assert (=> b!216658 (=> (not res!105999) (not e!140964))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4250 0))(
  ( (tuple2!4251 (_1!2135 (_ BitVec 64)) (_2!2135 V!7155)) )
))
(declare-datatypes ((List!3180 0))(
  ( (Nil!3177) (Cons!3176 (h!3823 tuple2!4250) (t!8143 List!3180)) )
))
(declare-datatypes ((ListLongMap!3177 0))(
  ( (ListLongMap!3178 (toList!1604 List!3180)) )
))
(declare-fun contains!1439 (ListLongMap!3177 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1127 (array!10502 array!10500 (_ BitVec 32) (_ BitVec 32) V!7155 V!7155 (_ BitVec 32) Int) ListLongMap!3177)

(assert (=> b!216658 (= res!105999 (contains!1439 (getCurrentListMap!1127 (_keys!6121 thiss!1504) (_values!4055 thiss!1504) (mask!9813 thiss!1504) (extraKeys!3809 thiss!1504) (zeroValue!3913 thiss!1504) (minValue!3913 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4072 thiss!1504)) key!932))))

(declare-fun e!140965 () Bool)

(declare-fun e!140967 () Bool)

(declare-fun array_inv!3279 (array!10502) Bool)

(declare-fun array_inv!3280 (array!10500) Bool)

(assert (=> b!216659 (= e!140965 (and tp!20442 tp_is_empty!5631 (array_inv!3279 (_keys!6121 thiss!1504)) (array_inv!3280 (_values!4055 thiss!1504)) e!140967))))

(declare-fun b!216660 () Bool)

(declare-fun e!140966 () Bool)

(assert (=> b!216660 (= e!140966 tp_is_empty!5631)))

(declare-fun b!216661 () Bool)

(declare-fun e!140969 () Bool)

(assert (=> b!216661 (= e!140969 e!140964)))

(declare-fun res!105998 () Bool)

(assert (=> b!216661 (=> (not res!105998) (not e!140964))))

(declare-datatypes ((SeekEntryResult!759 0))(
  ( (MissingZero!759 (index!5206 (_ BitVec 32))) (Found!759 (index!5207 (_ BitVec 32))) (Intermediate!759 (undefined!1571 Bool) (index!5208 (_ BitVec 32)) (x!22671 (_ BitVec 32))) (Undefined!759) (MissingVacant!759 (index!5209 (_ BitVec 32))) )
))
(declare-fun lt!111234 () SeekEntryResult!759)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216661 (= res!105998 (or (= lt!111234 (MissingZero!759 index!297)) (= lt!111234 (MissingVacant!759 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10502 (_ BitVec 32)) SeekEntryResult!759)

(assert (=> b!216661 (= lt!111234 (seekEntryOrOpen!0 key!932 (_keys!6121 thiss!1504) (mask!9813 thiss!1504)))))

(declare-fun b!216662 () Bool)

(declare-fun res!105993 () Bool)

(assert (=> b!216662 (=> (not res!105993) (not e!140964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10502 (_ BitVec 32)) Bool)

(assert (=> b!216662 (= res!105993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6121 thiss!1504) (mask!9813 thiss!1504)))))

(declare-fun mapIsEmpty!9609 () Bool)

(declare-fun mapRes!9609 () Bool)

(assert (=> mapIsEmpty!9609 mapRes!9609))

(declare-fun b!216663 () Bool)

(declare-fun res!105997 () Bool)

(assert (=> b!216663 (=> (not res!105997) (not e!140964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216663 (= res!105997 (validMask!0 (mask!9813 thiss!1504)))))

(declare-fun mapNonEmpty!9609 () Bool)

(declare-fun tp!20441 () Bool)

(assert (=> mapNonEmpty!9609 (= mapRes!9609 (and tp!20441 e!140966))))

(declare-fun mapValue!9609 () ValueCell!2472)

(declare-fun mapKey!9609 () (_ BitVec 32))

(declare-fun mapRest!9609 () (Array (_ BitVec 32) ValueCell!2472))

(assert (=> mapNonEmpty!9609 (= (arr!4971 (_values!4055 thiss!1504)) (store mapRest!9609 mapKey!9609 mapValue!9609))))

(declare-fun b!216665 () Bool)

(declare-fun res!105994 () Bool)

(assert (=> b!216665 (=> (not res!105994) (not e!140969))))

(assert (=> b!216665 (= res!105994 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216666 () Bool)

(assert (=> b!216666 (= e!140967 (and e!140970 mapRes!9609))))

(declare-fun condMapEmpty!9609 () Bool)

(declare-fun mapDefault!9609 () ValueCell!2472)

(assert (=> b!216666 (= condMapEmpty!9609 (= (arr!4971 (_values!4055 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2472)) mapDefault!9609)))))

(declare-fun b!216664 () Bool)

(declare-fun res!105995 () Bool)

(assert (=> b!216664 (=> (not res!105995) (not e!140964))))

(assert (=> b!216664 (= res!105995 (and (= (size!5303 (_values!4055 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9813 thiss!1504))) (= (size!5304 (_keys!6121 thiss!1504)) (size!5303 (_values!4055 thiss!1504))) (bvsge (mask!9813 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3809 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3809 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!105996 () Bool)

(assert (=> start!21632 (=> (not res!105996) (not e!140969))))

(declare-fun valid!1148 (LongMapFixedSize!2844) Bool)

(assert (=> start!21632 (= res!105996 (valid!1148 thiss!1504))))

(assert (=> start!21632 e!140969))

(assert (=> start!21632 e!140965))

(assert (=> start!21632 true))

(assert (= (and start!21632 res!105996) b!216665))

(assert (= (and b!216665 res!105994) b!216661))

(assert (= (and b!216661 res!105998) b!216658))

(assert (= (and b!216658 res!105999) b!216663))

(assert (= (and b!216663 res!105997) b!216664))

(assert (= (and b!216664 res!105995) b!216662))

(assert (= (and b!216662 res!105993) b!216657))

(assert (= (and b!216666 condMapEmpty!9609) mapIsEmpty!9609))

(assert (= (and b!216666 (not condMapEmpty!9609)) mapNonEmpty!9609))

(get-info :version)

(assert (= (and mapNonEmpty!9609 ((_ is ValueCellFull!2472) mapValue!9609)) b!216660))

(assert (= (and b!216666 ((_ is ValueCellFull!2472) mapDefault!9609)) b!216656))

(assert (= b!216659 b!216666))

(assert (= start!21632 b!216659))

(declare-fun m!243287 () Bool)

(assert (=> b!216657 m!243287))

(declare-fun m!243289 () Bool)

(assert (=> b!216659 m!243289))

(declare-fun m!243291 () Bool)

(assert (=> b!216659 m!243291))

(declare-fun m!243293 () Bool)

(assert (=> b!216663 m!243293))

(declare-fun m!243295 () Bool)

(assert (=> b!216661 m!243295))

(declare-fun m!243297 () Bool)

(assert (=> start!21632 m!243297))

(declare-fun m!243299 () Bool)

(assert (=> mapNonEmpty!9609 m!243299))

(declare-fun m!243301 () Bool)

(assert (=> b!216658 m!243301))

(assert (=> b!216658 m!243301))

(declare-fun m!243303 () Bool)

(assert (=> b!216658 m!243303))

(declare-fun m!243305 () Bool)

(assert (=> b!216662 m!243305))

(check-sat (not b_next!5769) (not b!216658) (not b!216659) tp_is_empty!5631 (not b!216662) (not start!21632) (not mapNonEmpty!9609) (not b!216657) (not b!216663) b_and!12677 (not b!216661))
(check-sat b_and!12677 (not b_next!5769))
