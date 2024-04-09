; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22540 () Bool)

(assert start!22540)

(declare-fun b!235490 () Bool)

(declare-fun b_free!6333 () Bool)

(declare-fun b_next!6333 () Bool)

(assert (=> b!235490 (= b_free!6333 (not b_next!6333))))

(declare-fun tp!22168 () Bool)

(declare-fun b_and!13281 () Bool)

(assert (=> b!235490 (= tp!22168 b_and!13281)))

(declare-fun b!235483 () Bool)

(declare-fun res!115492 () Bool)

(declare-fun e!152938 () Bool)

(assert (=> b!235483 (=> (not res!115492) (not e!152938))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!235483 (= res!115492 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!235484 () Bool)

(declare-fun e!152939 () Bool)

(declare-fun tp_is_empty!6195 () Bool)

(assert (=> b!235484 (= e!152939 tp_is_empty!6195)))

(declare-fun res!115495 () Bool)

(assert (=> start!22540 (=> (not res!115495) (not e!152938))))

(declare-datatypes ((V!7907 0))(
  ( (V!7908 (val!3142 Int)) )
))
(declare-datatypes ((ValueCell!2754 0))(
  ( (ValueCellFull!2754 (v!5166 V!7907)) (EmptyCell!2754) )
))
(declare-datatypes ((array!11648 0))(
  ( (array!11649 (arr!5535 (Array (_ BitVec 32) ValueCell!2754)) (size!5872 (_ BitVec 32))) )
))
(declare-datatypes ((array!11650 0))(
  ( (array!11651 (arr!5536 (Array (_ BitVec 32) (_ BitVec 64))) (size!5873 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3408 0))(
  ( (LongMapFixedSize!3409 (defaultEntry!4375 Int) (mask!10347 (_ BitVec 32)) (extraKeys!4112 (_ BitVec 32)) (zeroValue!4216 V!7907) (minValue!4216 V!7907) (_size!1753 (_ BitVec 32)) (_keys!6451 array!11650) (_values!4358 array!11648) (_vacant!1753 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3408)

(declare-fun valid!1338 (LongMapFixedSize!3408) Bool)

(assert (=> start!22540 (= res!115495 (valid!1338 thiss!1504))))

(assert (=> start!22540 e!152938))

(declare-fun e!152941 () Bool)

(assert (=> start!22540 e!152941))

(assert (=> start!22540 true))

(declare-fun b!235485 () Bool)

(declare-fun e!152942 () Bool)

(declare-fun mapRes!10490 () Bool)

(assert (=> b!235485 (= e!152942 (and e!152939 mapRes!10490))))

(declare-fun condMapEmpty!10490 () Bool)

(declare-fun mapDefault!10490 () ValueCell!2754)

(assert (=> b!235485 (= condMapEmpty!10490 (= (arr!5535 (_values!4358 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2754)) mapDefault!10490)))))

(declare-fun mapNonEmpty!10490 () Bool)

(declare-fun tp!22169 () Bool)

(declare-fun e!152943 () Bool)

(assert (=> mapNonEmpty!10490 (= mapRes!10490 (and tp!22169 e!152943))))

(declare-fun mapKey!10490 () (_ BitVec 32))

(declare-fun mapRest!10490 () (Array (_ BitVec 32) ValueCell!2754))

(declare-fun mapValue!10490 () ValueCell!2754)

(assert (=> mapNonEmpty!10490 (= (arr!5535 (_values!4358 thiss!1504)) (store mapRest!10490 mapKey!10490 mapValue!10490))))

(declare-fun mapIsEmpty!10490 () Bool)

(assert (=> mapIsEmpty!10490 mapRes!10490))

(declare-fun b!235486 () Bool)

(declare-fun e!152940 () Bool)

(assert (=> b!235486 (= e!152938 e!152940)))

(declare-fun res!115493 () Bool)

(assert (=> b!235486 (=> (not res!115493) (not e!152940))))

(declare-datatypes ((SeekEntryResult!1000 0))(
  ( (MissingZero!1000 (index!6170 (_ BitVec 32))) (Found!1000 (index!6171 (_ BitVec 32))) (Intermediate!1000 (undefined!1812 Bool) (index!6172 (_ BitVec 32)) (x!23804 (_ BitVec 32))) (Undefined!1000) (MissingVacant!1000 (index!6173 (_ BitVec 32))) )
))
(declare-fun lt!119165 () SeekEntryResult!1000)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235486 (= res!115493 (or (= lt!119165 (MissingZero!1000 index!297)) (= lt!119165 (MissingVacant!1000 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11650 (_ BitVec 32)) SeekEntryResult!1000)

(assert (=> b!235486 (= lt!119165 (seekEntryOrOpen!0 key!932 (_keys!6451 thiss!1504) (mask!10347 thiss!1504)))))

(declare-fun b!235487 () Bool)

(declare-fun res!115496 () Bool)

(assert (=> b!235487 (=> (not res!115496) (not e!152940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11650 (_ BitVec 32)) Bool)

(assert (=> b!235487 (= res!115496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6451 thiss!1504) (mask!10347 thiss!1504)))))

(declare-fun b!235488 () Bool)

(declare-fun res!115497 () Bool)

(assert (=> b!235488 (=> (not res!115497) (not e!152940))))

(assert (=> b!235488 (= res!115497 (and (= (size!5872 (_values!4358 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10347 thiss!1504))) (= (size!5873 (_keys!6451 thiss!1504)) (size!5872 (_values!4358 thiss!1504))) (bvsge (mask!10347 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4112 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4112 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!235489 () Bool)

(declare-fun res!115491 () Bool)

(assert (=> b!235489 (=> (not res!115491) (not e!152940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!235489 (= res!115491 (validMask!0 (mask!10347 thiss!1504)))))

(declare-fun array_inv!3643 (array!11650) Bool)

(declare-fun array_inv!3644 (array!11648) Bool)

(assert (=> b!235490 (= e!152941 (and tp!22168 tp_is_empty!6195 (array_inv!3643 (_keys!6451 thiss!1504)) (array_inv!3644 (_values!4358 thiss!1504)) e!152942))))

(declare-fun b!235491 () Bool)

(declare-fun res!115494 () Bool)

(assert (=> b!235491 (=> (not res!115494) (not e!152940))))

(declare-datatypes ((tuple2!4626 0))(
  ( (tuple2!4627 (_1!2323 (_ BitVec 64)) (_2!2323 V!7907)) )
))
(declare-datatypes ((List!3559 0))(
  ( (Nil!3556) (Cons!3555 (h!4207 tuple2!4626) (t!8542 List!3559)) )
))
(declare-datatypes ((ListLongMap!3553 0))(
  ( (ListLongMap!3554 (toList!1792 List!3559)) )
))
(declare-fun contains!1663 (ListLongMap!3553 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1315 (array!11650 array!11648 (_ BitVec 32) (_ BitVec 32) V!7907 V!7907 (_ BitVec 32) Int) ListLongMap!3553)

(assert (=> b!235491 (= res!115494 (contains!1663 (getCurrentListMap!1315 (_keys!6451 thiss!1504) (_values!4358 thiss!1504) (mask!10347 thiss!1504) (extraKeys!4112 thiss!1504) (zeroValue!4216 thiss!1504) (minValue!4216 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4375 thiss!1504)) key!932))))

(declare-fun b!235492 () Bool)

(assert (=> b!235492 (= e!152940 false)))

(declare-fun lt!119164 () Bool)

(declare-datatypes ((List!3560 0))(
  ( (Nil!3557) (Cons!3556 (h!4208 (_ BitVec 64)) (t!8543 List!3560)) )
))
(declare-fun arrayNoDuplicates!0 (array!11650 (_ BitVec 32) List!3560) Bool)

(assert (=> b!235492 (= lt!119164 (arrayNoDuplicates!0 (_keys!6451 thiss!1504) #b00000000000000000000000000000000 Nil!3557))))

(declare-fun b!235493 () Bool)

(assert (=> b!235493 (= e!152943 tp_is_empty!6195)))

(assert (= (and start!22540 res!115495) b!235483))

(assert (= (and b!235483 res!115492) b!235486))

(assert (= (and b!235486 res!115493) b!235491))

(assert (= (and b!235491 res!115494) b!235489))

(assert (= (and b!235489 res!115491) b!235488))

(assert (= (and b!235488 res!115497) b!235487))

(assert (= (and b!235487 res!115496) b!235492))

(assert (= (and b!235485 condMapEmpty!10490) mapIsEmpty!10490))

(assert (= (and b!235485 (not condMapEmpty!10490)) mapNonEmpty!10490))

(get-info :version)

(assert (= (and mapNonEmpty!10490 ((_ is ValueCellFull!2754) mapValue!10490)) b!235493))

(assert (= (and b!235485 ((_ is ValueCellFull!2754) mapDefault!10490)) b!235484))

(assert (= b!235490 b!235485))

(assert (= start!22540 b!235490))

(declare-fun m!256591 () Bool)

(assert (=> b!235490 m!256591))

(declare-fun m!256593 () Bool)

(assert (=> b!235490 m!256593))

(declare-fun m!256595 () Bool)

(assert (=> b!235486 m!256595))

(declare-fun m!256597 () Bool)

(assert (=> b!235492 m!256597))

(declare-fun m!256599 () Bool)

(assert (=> b!235487 m!256599))

(declare-fun m!256601 () Bool)

(assert (=> b!235489 m!256601))

(declare-fun m!256603 () Bool)

(assert (=> b!235491 m!256603))

(assert (=> b!235491 m!256603))

(declare-fun m!256605 () Bool)

(assert (=> b!235491 m!256605))

(declare-fun m!256607 () Bool)

(assert (=> mapNonEmpty!10490 m!256607))

(declare-fun m!256609 () Bool)

(assert (=> start!22540 m!256609))

(check-sat tp_is_empty!6195 (not b!235489) (not b!235491) (not b_next!6333) (not b!235490) b_and!13281 (not b!235486) (not b!235487) (not mapNonEmpty!10490) (not start!22540) (not b!235492))
(check-sat b_and!13281 (not b_next!6333))
