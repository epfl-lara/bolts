; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21692 () Bool)

(assert start!21692)

(declare-fun b!217646 () Bool)

(declare-fun b_free!5829 () Bool)

(declare-fun b_next!5829 () Bool)

(assert (=> b!217646 (= b_free!5829 (not b_next!5829))))

(declare-fun tp!20622 () Bool)

(declare-fun b_and!12737 () Bool)

(assert (=> b!217646 (= tp!20622 b_and!12737)))

(declare-datatypes ((V!7235 0))(
  ( (V!7236 (val!2890 Int)) )
))
(declare-datatypes ((ValueCell!2502 0))(
  ( (ValueCellFull!2502 (v!4904 V!7235)) (EmptyCell!2502) )
))
(declare-datatypes ((array!10620 0))(
  ( (array!10621 (arr!5031 (Array (_ BitVec 32) ValueCell!2502)) (size!5363 (_ BitVec 32))) )
))
(declare-datatypes ((array!10622 0))(
  ( (array!10623 (arr!5032 (Array (_ BitVec 32) (_ BitVec 64))) (size!5364 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2904 0))(
  ( (LongMapFixedSize!2905 (defaultEntry!4102 Int) (mask!9863 (_ BitVec 32)) (extraKeys!3839 (_ BitVec 32)) (zeroValue!3943 V!7235) (minValue!3943 V!7235) (_size!1501 (_ BitVec 32)) (_keys!6151 array!10622) (_values!4085 array!10620) (_vacant!1501 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2904)

(declare-fun e!141600 () Bool)

(declare-fun e!141596 () Bool)

(declare-fun tp_is_empty!5691 () Bool)

(declare-fun array_inv!3323 (array!10622) Bool)

(declare-fun array_inv!3324 (array!10620) Bool)

(assert (=> b!217646 (= e!141600 (and tp!20622 tp_is_empty!5691 (array_inv!3323 (_keys!6151 thiss!1504)) (array_inv!3324 (_values!4085 thiss!1504)) e!141596))))

(declare-fun b!217647 () Bool)

(declare-fun res!106625 () Bool)

(declare-fun e!141599 () Bool)

(assert (=> b!217647 (=> (not res!106625) (not e!141599))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!217647 (= res!106625 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!9699 () Bool)

(declare-fun mapRes!9699 () Bool)

(declare-fun tp!20621 () Bool)

(declare-fun e!141595 () Bool)

(assert (=> mapNonEmpty!9699 (= mapRes!9699 (and tp!20621 e!141595))))

(declare-fun mapKey!9699 () (_ BitVec 32))

(declare-fun mapValue!9699 () ValueCell!2502)

(declare-fun mapRest!9699 () (Array (_ BitVec 32) ValueCell!2502))

(assert (=> mapNonEmpty!9699 (= (arr!5031 (_values!4085 thiss!1504)) (store mapRest!9699 mapKey!9699 mapValue!9699))))

(declare-fun b!217648 () Bool)

(assert (=> b!217648 (= e!141595 tp_is_empty!5691)))

(declare-fun b!217649 () Bool)

(declare-fun res!106626 () Bool)

(declare-fun e!141598 () Bool)

(assert (=> b!217649 (=> (not res!106626) (not e!141598))))

(declare-datatypes ((tuple2!4290 0))(
  ( (tuple2!4291 (_1!2155 (_ BitVec 64)) (_2!2155 V!7235)) )
))
(declare-datatypes ((List!3218 0))(
  ( (Nil!3215) (Cons!3214 (h!3861 tuple2!4290) (t!8181 List!3218)) )
))
(declare-datatypes ((ListLongMap!3217 0))(
  ( (ListLongMap!3218 (toList!1624 List!3218)) )
))
(declare-fun contains!1459 (ListLongMap!3217 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1147 (array!10622 array!10620 (_ BitVec 32) (_ BitVec 32) V!7235 V!7235 (_ BitVec 32) Int) ListLongMap!3217)

(assert (=> b!217649 (= res!106626 (not (contains!1459 (getCurrentListMap!1147 (_keys!6151 thiss!1504) (_values!4085 thiss!1504) (mask!9863 thiss!1504) (extraKeys!3839 thiss!1504) (zeroValue!3943 thiss!1504) (minValue!3943 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4102 thiss!1504)) key!932)))))

(declare-fun b!217650 () Bool)

(declare-fun e!141597 () Bool)

(assert (=> b!217650 (= e!141596 (and e!141597 mapRes!9699))))

(declare-fun condMapEmpty!9699 () Bool)

(declare-fun mapDefault!9699 () ValueCell!2502)

(assert (=> b!217650 (= condMapEmpty!9699 (= (arr!5031 (_values!4085 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2502)) mapDefault!9699)))))

(declare-fun b!217651 () Bool)

(declare-fun res!106623 () Bool)

(assert (=> b!217651 (=> (not res!106623) (not e!141598))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10622 (_ BitVec 32)) Bool)

(assert (=> b!217651 (= res!106623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6151 thiss!1504) (mask!9863 thiss!1504)))))

(declare-fun b!217652 () Bool)

(assert (=> b!217652 (= e!141597 tp_is_empty!5691)))

(declare-fun b!217653 () Bool)

(declare-fun res!106624 () Bool)

(assert (=> b!217653 (=> (not res!106624) (not e!141598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217653 (= res!106624 (validMask!0 (mask!9863 thiss!1504)))))

(declare-fun b!217654 () Bool)

(assert (=> b!217654 (= e!141599 e!141598)))

(declare-fun res!106629 () Bool)

(assert (=> b!217654 (=> (not res!106629) (not e!141598))))

(declare-datatypes ((SeekEntryResult!780 0))(
  ( (MissingZero!780 (index!5290 (_ BitVec 32))) (Found!780 (index!5291 (_ BitVec 32))) (Intermediate!780 (undefined!1592 Bool) (index!5292 (_ BitVec 32)) (x!22772 (_ BitVec 32))) (Undefined!780) (MissingVacant!780 (index!5293 (_ BitVec 32))) )
))
(declare-fun lt!111414 () SeekEntryResult!780)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217654 (= res!106629 (or (= lt!111414 (MissingZero!780 index!297)) (= lt!111414 (MissingVacant!780 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10622 (_ BitVec 32)) SeekEntryResult!780)

(assert (=> b!217654 (= lt!111414 (seekEntryOrOpen!0 key!932 (_keys!6151 thiss!1504) (mask!9863 thiss!1504)))))

(declare-fun b!217655 () Bool)

(declare-fun res!106627 () Bool)

(assert (=> b!217655 (=> (not res!106627) (not e!141598))))

(assert (=> b!217655 (= res!106627 (and (= (size!5363 (_values!4085 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9863 thiss!1504))) (= (size!5364 (_keys!6151 thiss!1504)) (size!5363 (_values!4085 thiss!1504))) (bvsge (mask!9863 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3839 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3839 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!9699 () Bool)

(assert (=> mapIsEmpty!9699 mapRes!9699))

(declare-fun res!106628 () Bool)

(assert (=> start!21692 (=> (not res!106628) (not e!141599))))

(declare-fun valid!1170 (LongMapFixedSize!2904) Bool)

(assert (=> start!21692 (= res!106628 (valid!1170 thiss!1504))))

(assert (=> start!21692 e!141599))

(assert (=> start!21692 e!141600))

(assert (=> start!21692 true))

(declare-fun b!217656 () Bool)

(assert (=> b!217656 (= e!141598 false)))

(declare-fun lt!111415 () Bool)

(declare-datatypes ((List!3219 0))(
  ( (Nil!3216) (Cons!3215 (h!3862 (_ BitVec 64)) (t!8182 List!3219)) )
))
(declare-fun arrayNoDuplicates!0 (array!10622 (_ BitVec 32) List!3219) Bool)

(assert (=> b!217656 (= lt!111415 (arrayNoDuplicates!0 (_keys!6151 thiss!1504) #b00000000000000000000000000000000 Nil!3216))))

(assert (= (and start!21692 res!106628) b!217647))

(assert (= (and b!217647 res!106625) b!217654))

(assert (= (and b!217654 res!106629) b!217649))

(assert (= (and b!217649 res!106626) b!217653))

(assert (= (and b!217653 res!106624) b!217655))

(assert (= (and b!217655 res!106627) b!217651))

(assert (= (and b!217651 res!106623) b!217656))

(assert (= (and b!217650 condMapEmpty!9699) mapIsEmpty!9699))

(assert (= (and b!217650 (not condMapEmpty!9699)) mapNonEmpty!9699))

(get-info :version)

(assert (= (and mapNonEmpty!9699 ((_ is ValueCellFull!2502) mapValue!9699)) b!217648))

(assert (= (and b!217650 ((_ is ValueCellFull!2502) mapDefault!9699)) b!217652))

(assert (= b!217646 b!217650))

(assert (= start!21692 b!217646))

(declare-fun m!243887 () Bool)

(assert (=> mapNonEmpty!9699 m!243887))

(declare-fun m!243889 () Bool)

(assert (=> b!217651 m!243889))

(declare-fun m!243891 () Bool)

(assert (=> b!217646 m!243891))

(declare-fun m!243893 () Bool)

(assert (=> b!217646 m!243893))

(declare-fun m!243895 () Bool)

(assert (=> b!217654 m!243895))

(declare-fun m!243897 () Bool)

(assert (=> start!21692 m!243897))

(declare-fun m!243899 () Bool)

(assert (=> b!217649 m!243899))

(assert (=> b!217649 m!243899))

(declare-fun m!243901 () Bool)

(assert (=> b!217649 m!243901))

(declare-fun m!243903 () Bool)

(assert (=> b!217656 m!243903))

(declare-fun m!243905 () Bool)

(assert (=> b!217653 m!243905))

(check-sat (not start!21692) (not b!217649) (not b!217646) (not b!217651) (not b!217653) b_and!12737 (not b!217656) (not b_next!5829) tp_is_empty!5691 (not mapNonEmpty!9699) (not b!217654))
(check-sat b_and!12737 (not b_next!5829))
