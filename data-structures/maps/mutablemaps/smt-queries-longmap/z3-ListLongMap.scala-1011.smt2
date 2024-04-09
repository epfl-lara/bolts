; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21680 () Bool)

(assert start!21680)

(declare-fun b!217450 () Bool)

(declare-fun b_free!5817 () Bool)

(declare-fun b_next!5817 () Bool)

(assert (=> b!217450 (= b_free!5817 (not b_next!5817))))

(declare-fun tp!20586 () Bool)

(declare-fun b_and!12725 () Bool)

(assert (=> b!217450 (= tp!20586 b_and!12725)))

(declare-fun b!217449 () Bool)

(declare-fun e!141473 () Bool)

(declare-fun tp_is_empty!5679 () Bool)

(assert (=> b!217449 (= e!141473 tp_is_empty!5679)))

(declare-fun e!141471 () Bool)

(declare-fun e!141468 () Bool)

(declare-datatypes ((V!7219 0))(
  ( (V!7220 (val!2884 Int)) )
))
(declare-datatypes ((ValueCell!2496 0))(
  ( (ValueCellFull!2496 (v!4898 V!7219)) (EmptyCell!2496) )
))
(declare-datatypes ((array!10596 0))(
  ( (array!10597 (arr!5019 (Array (_ BitVec 32) ValueCell!2496)) (size!5351 (_ BitVec 32))) )
))
(declare-datatypes ((array!10598 0))(
  ( (array!10599 (arr!5020 (Array (_ BitVec 32) (_ BitVec 64))) (size!5352 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2892 0))(
  ( (LongMapFixedSize!2893 (defaultEntry!4096 Int) (mask!9853 (_ BitVec 32)) (extraKeys!3833 (_ BitVec 32)) (zeroValue!3937 V!7219) (minValue!3937 V!7219) (_size!1495 (_ BitVec 32)) (_keys!6145 array!10598) (_values!4079 array!10596) (_vacant!1495 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2892)

(declare-fun array_inv!3315 (array!10598) Bool)

(declare-fun array_inv!3316 (array!10596) Bool)

(assert (=> b!217450 (= e!141471 (and tp!20586 tp_is_empty!5679 (array_inv!3315 (_keys!6145 thiss!1504)) (array_inv!3316 (_values!4079 thiss!1504)) e!141468))))

(declare-fun mapIsEmpty!9681 () Bool)

(declare-fun mapRes!9681 () Bool)

(assert (=> mapIsEmpty!9681 mapRes!9681))

(declare-fun b!217451 () Bool)

(declare-fun e!141470 () Bool)

(assert (=> b!217451 (= e!141470 tp_is_empty!5679)))

(declare-fun b!217452 () Bool)

(declare-fun res!106500 () Bool)

(declare-fun e!141474 () Bool)

(assert (=> b!217452 (=> (not res!106500) (not e!141474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217452 (= res!106500 (validMask!0 (mask!9853 thiss!1504)))))

(declare-fun b!217453 () Bool)

(declare-fun res!106497 () Bool)

(declare-fun e!141469 () Bool)

(assert (=> b!217453 (=> (not res!106497) (not e!141469))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!217453 (= res!106497 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217454 () Bool)

(assert (=> b!217454 (= e!141474 false)))

(declare-fun lt!111378 () Bool)

(declare-datatypes ((List!3213 0))(
  ( (Nil!3210) (Cons!3209 (h!3856 (_ BitVec 64)) (t!8176 List!3213)) )
))
(declare-fun arrayNoDuplicates!0 (array!10598 (_ BitVec 32) List!3213) Bool)

(assert (=> b!217454 (= lt!111378 (arrayNoDuplicates!0 (_keys!6145 thiss!1504) #b00000000000000000000000000000000 Nil!3210))))

(declare-fun b!217455 () Bool)

(declare-fun res!106498 () Bool)

(assert (=> b!217455 (=> (not res!106498) (not e!141474))))

(declare-datatypes ((tuple2!4284 0))(
  ( (tuple2!4285 (_1!2152 (_ BitVec 64)) (_2!2152 V!7219)) )
))
(declare-datatypes ((List!3214 0))(
  ( (Nil!3211) (Cons!3210 (h!3857 tuple2!4284) (t!8177 List!3214)) )
))
(declare-datatypes ((ListLongMap!3211 0))(
  ( (ListLongMap!3212 (toList!1621 List!3214)) )
))
(declare-fun contains!1456 (ListLongMap!3211 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1144 (array!10598 array!10596 (_ BitVec 32) (_ BitVec 32) V!7219 V!7219 (_ BitVec 32) Int) ListLongMap!3211)

(assert (=> b!217455 (= res!106498 (not (contains!1456 (getCurrentListMap!1144 (_keys!6145 thiss!1504) (_values!4079 thiss!1504) (mask!9853 thiss!1504) (extraKeys!3833 thiss!1504) (zeroValue!3937 thiss!1504) (minValue!3937 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4096 thiss!1504)) key!932)))))

(declare-fun res!106501 () Bool)

(assert (=> start!21680 (=> (not res!106501) (not e!141469))))

(declare-fun valid!1166 (LongMapFixedSize!2892) Bool)

(assert (=> start!21680 (= res!106501 (valid!1166 thiss!1504))))

(assert (=> start!21680 e!141469))

(assert (=> start!21680 e!141471))

(assert (=> start!21680 true))

(declare-fun b!217448 () Bool)

(declare-fun res!106503 () Bool)

(assert (=> b!217448 (=> (not res!106503) (not e!141474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10598 (_ BitVec 32)) Bool)

(assert (=> b!217448 (= res!106503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6145 thiss!1504) (mask!9853 thiss!1504)))))

(declare-fun mapNonEmpty!9681 () Bool)

(declare-fun tp!20585 () Bool)

(assert (=> mapNonEmpty!9681 (= mapRes!9681 (and tp!20585 e!141473))))

(declare-fun mapKey!9681 () (_ BitVec 32))

(declare-fun mapValue!9681 () ValueCell!2496)

(declare-fun mapRest!9681 () (Array (_ BitVec 32) ValueCell!2496))

(assert (=> mapNonEmpty!9681 (= (arr!5019 (_values!4079 thiss!1504)) (store mapRest!9681 mapKey!9681 mapValue!9681))))

(declare-fun b!217456 () Bool)

(assert (=> b!217456 (= e!141469 e!141474)))

(declare-fun res!106499 () Bool)

(assert (=> b!217456 (=> (not res!106499) (not e!141474))))

(declare-datatypes ((SeekEntryResult!778 0))(
  ( (MissingZero!778 (index!5282 (_ BitVec 32))) (Found!778 (index!5283 (_ BitVec 32))) (Intermediate!778 (undefined!1590 Bool) (index!5284 (_ BitVec 32)) (x!22754 (_ BitVec 32))) (Undefined!778) (MissingVacant!778 (index!5285 (_ BitVec 32))) )
))
(declare-fun lt!111379 () SeekEntryResult!778)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217456 (= res!106499 (or (= lt!111379 (MissingZero!778 index!297)) (= lt!111379 (MissingVacant!778 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10598 (_ BitVec 32)) SeekEntryResult!778)

(assert (=> b!217456 (= lt!111379 (seekEntryOrOpen!0 key!932 (_keys!6145 thiss!1504) (mask!9853 thiss!1504)))))

(declare-fun b!217457 () Bool)

(declare-fun res!106502 () Bool)

(assert (=> b!217457 (=> (not res!106502) (not e!141474))))

(assert (=> b!217457 (= res!106502 (and (= (size!5351 (_values!4079 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9853 thiss!1504))) (= (size!5352 (_keys!6145 thiss!1504)) (size!5351 (_values!4079 thiss!1504))) (bvsge (mask!9853 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3833 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3833 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!217458 () Bool)

(assert (=> b!217458 (= e!141468 (and e!141470 mapRes!9681))))

(declare-fun condMapEmpty!9681 () Bool)

(declare-fun mapDefault!9681 () ValueCell!2496)

(assert (=> b!217458 (= condMapEmpty!9681 (= (arr!5019 (_values!4079 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2496)) mapDefault!9681)))))

(assert (= (and start!21680 res!106501) b!217453))

(assert (= (and b!217453 res!106497) b!217456))

(assert (= (and b!217456 res!106499) b!217455))

(assert (= (and b!217455 res!106498) b!217452))

(assert (= (and b!217452 res!106500) b!217457))

(assert (= (and b!217457 res!106502) b!217448))

(assert (= (and b!217448 res!106503) b!217454))

(assert (= (and b!217458 condMapEmpty!9681) mapIsEmpty!9681))

(assert (= (and b!217458 (not condMapEmpty!9681)) mapNonEmpty!9681))

(get-info :version)

(assert (= (and mapNonEmpty!9681 ((_ is ValueCellFull!2496) mapValue!9681)) b!217449))

(assert (= (and b!217458 ((_ is ValueCellFull!2496) mapDefault!9681)) b!217451))

(assert (= b!217450 b!217458))

(assert (= start!21680 b!217450))

(declare-fun m!243767 () Bool)

(assert (=> mapNonEmpty!9681 m!243767))

(declare-fun m!243769 () Bool)

(assert (=> b!217454 m!243769))

(declare-fun m!243771 () Bool)

(assert (=> start!21680 m!243771))

(declare-fun m!243773 () Bool)

(assert (=> b!217455 m!243773))

(assert (=> b!217455 m!243773))

(declare-fun m!243775 () Bool)

(assert (=> b!217455 m!243775))

(declare-fun m!243777 () Bool)

(assert (=> b!217450 m!243777))

(declare-fun m!243779 () Bool)

(assert (=> b!217450 m!243779))

(declare-fun m!243781 () Bool)

(assert (=> b!217448 m!243781))

(declare-fun m!243783 () Bool)

(assert (=> b!217452 m!243783))

(declare-fun m!243785 () Bool)

(assert (=> b!217456 m!243785))

(check-sat (not b!217456) tp_is_empty!5679 (not b_next!5817) (not b!217454) (not start!21680) (not b!217450) b_and!12725 (not mapNonEmpty!9681) (not b!217452) (not b!217448) (not b!217455))
(check-sat b_and!12725 (not b_next!5817))
