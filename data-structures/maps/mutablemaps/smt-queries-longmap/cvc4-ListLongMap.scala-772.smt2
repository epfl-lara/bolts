; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18212 () Bool)

(assert start!18212)

(declare-fun b!181010 () Bool)

(declare-fun b_free!4475 () Bool)

(declare-fun b_next!4475 () Bool)

(assert (=> b!181010 (= b_free!4475 (not b_next!4475))))

(declare-fun tp!16168 () Bool)

(declare-fun b_and!11035 () Bool)

(assert (=> b!181010 (= tp!16168 b_and!11035)))

(declare-fun b!181002 () Bool)

(declare-fun res!85730 () Bool)

(declare-fun e!119244 () Bool)

(assert (=> b!181002 (=> (not res!85730) (not e!119244))))

(declare-datatypes ((V!5309 0))(
  ( (V!5310 (val!2168 Int)) )
))
(declare-datatypes ((ValueCell!1780 0))(
  ( (ValueCellFull!1780 (v!4059 V!5309)) (EmptyCell!1780) )
))
(declare-datatypes ((array!7670 0))(
  ( (array!7671 (arr!3630 (Array (_ BitVec 32) (_ BitVec 64))) (size!3939 (_ BitVec 32))) )
))
(declare-datatypes ((array!7672 0))(
  ( (array!7673 (arr!3631 (Array (_ BitVec 32) ValueCell!1780)) (size!3940 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2468 0))(
  ( (LongMapFixedSize!2469 (defaultEntry!3713 Int) (mask!8726 (_ BitVec 32)) (extraKeys!3450 (_ BitVec 32)) (zeroValue!3554 V!5309) (minValue!3554 V!5309) (_size!1283 (_ BitVec 32)) (_keys!5611 array!7670) (_values!3696 array!7672) (_vacant!1283 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2468)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3378 0))(
  ( (tuple2!3379 (_1!1699 (_ BitVec 64)) (_2!1699 V!5309)) )
))
(declare-datatypes ((List!2324 0))(
  ( (Nil!2321) (Cons!2320 (h!2946 tuple2!3378) (t!7184 List!2324)) )
))
(declare-datatypes ((ListLongMap!2309 0))(
  ( (ListLongMap!2310 (toList!1170 List!2324)) )
))
(declare-fun contains!1242 (ListLongMap!2309 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!813 (array!7670 array!7672 (_ BitVec 32) (_ BitVec 32) V!5309 V!5309 (_ BitVec 32) Int) ListLongMap!2309)

(assert (=> b!181002 (= res!85730 (contains!1242 (getCurrentListMap!813 (_keys!5611 thiss!1248) (_values!3696 thiss!1248) (mask!8726 thiss!1248) (extraKeys!3450 thiss!1248) (zeroValue!3554 thiss!1248) (minValue!3554 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3713 thiss!1248)) key!828))))

(declare-fun b!181003 () Bool)

(declare-fun res!85728 () Bool)

(assert (=> b!181003 (=> (not res!85728) (not e!119244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!181003 (= res!85728 (validMask!0 (mask!8726 thiss!1248)))))

(declare-fun b!181004 () Bool)

(declare-fun e!119241 () Bool)

(assert (=> b!181004 (= e!119241 e!119244)))

(declare-fun res!85729 () Bool)

(assert (=> b!181004 (=> (not res!85729) (not e!119244))))

(declare-datatypes ((SeekEntryResult!609 0))(
  ( (MissingZero!609 (index!4606 (_ BitVec 32))) (Found!609 (index!4607 (_ BitVec 32))) (Intermediate!609 (undefined!1421 Bool) (index!4608 (_ BitVec 32)) (x!19787 (_ BitVec 32))) (Undefined!609) (MissingVacant!609 (index!4609 (_ BitVec 32))) )
))
(declare-fun lt!89504 () SeekEntryResult!609)

(assert (=> b!181004 (= res!85729 (and (not (is-Undefined!609 lt!89504)) (not (is-MissingVacant!609 lt!89504)) (not (is-MissingZero!609 lt!89504)) (is-Found!609 lt!89504)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7670 (_ BitVec 32)) SeekEntryResult!609)

(assert (=> b!181004 (= lt!89504 (seekEntryOrOpen!0 key!828 (_keys!5611 thiss!1248) (mask!8726 thiss!1248)))))

(declare-fun b!181005 () Bool)

(declare-fun e!119240 () Bool)

(declare-fun e!119242 () Bool)

(declare-fun mapRes!7277 () Bool)

(assert (=> b!181005 (= e!119240 (and e!119242 mapRes!7277))))

(declare-fun condMapEmpty!7277 () Bool)

(declare-fun mapDefault!7277 () ValueCell!1780)

