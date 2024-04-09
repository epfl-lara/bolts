; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22544 () Bool)

(assert start!22544)

(declare-fun b!235559 () Bool)

(declare-fun b_free!6337 () Bool)

(declare-fun b_next!6337 () Bool)

(assert (=> b!235559 (= b_free!6337 (not b_next!6337))))

(declare-fun tp!22180 () Bool)

(declare-fun b_and!13285 () Bool)

(assert (=> b!235559 (= tp!22180 b_and!13285)))

(declare-fun b!235551 () Bool)

(declare-fun res!115535 () Bool)

(declare-fun e!152984 () Bool)

(assert (=> b!235551 (=> (not res!115535) (not e!152984))))

(declare-datatypes ((V!7913 0))(
  ( (V!7914 (val!3144 Int)) )
))
(declare-datatypes ((ValueCell!2756 0))(
  ( (ValueCellFull!2756 (v!5168 V!7913)) (EmptyCell!2756) )
))
(declare-datatypes ((array!11656 0))(
  ( (array!11657 (arr!5539 (Array (_ BitVec 32) ValueCell!2756)) (size!5876 (_ BitVec 32))) )
))
(declare-datatypes ((array!11658 0))(
  ( (array!11659 (arr!5540 (Array (_ BitVec 32) (_ BitVec 64))) (size!5877 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3412 0))(
  ( (LongMapFixedSize!3413 (defaultEntry!4377 Int) (mask!10351 (_ BitVec 32)) (extraKeys!4114 (_ BitVec 32)) (zeroValue!4218 V!7913) (minValue!4218 V!7913) (_size!1755 (_ BitVec 32)) (_keys!6453 array!11658) (_values!4360 array!11656) (_vacant!1755 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3412)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!235551 (= res!115535 (validMask!0 (mask!10351 thiss!1504)))))

(declare-fun b!235552 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!235552 (= e!152984 (not (validKeyInArray!0 key!932)))))

(declare-fun b!235553 () Bool)

(declare-fun res!115541 () Bool)

(assert (=> b!235553 (=> (not res!115541) (not e!152984))))

(assert (=> b!235553 (= res!115541 (and (= (size!5876 (_values!4360 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10351 thiss!1504))) (= (size!5877 (_keys!6453 thiss!1504)) (size!5876 (_values!4360 thiss!1504))) (bvsge (mask!10351 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4114 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4114 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!235554 () Bool)

(declare-fun res!115536 () Bool)

(assert (=> b!235554 (=> (not res!115536) (not e!152984))))

(declare-datatypes ((List!3563 0))(
  ( (Nil!3560) (Cons!3559 (h!4211 (_ BitVec 64)) (t!8546 List!3563)) )
))
(declare-fun arrayNoDuplicates!0 (array!11658 (_ BitVec 32) List!3563) Bool)

(assert (=> b!235554 (= res!115536 (arrayNoDuplicates!0 (_keys!6453 thiss!1504) #b00000000000000000000000000000000 Nil!3560))))

(declare-fun res!115540 () Bool)

(declare-fun e!152980 () Bool)

(assert (=> start!22544 (=> (not res!115540) (not e!152980))))

(declare-fun valid!1340 (LongMapFixedSize!3412) Bool)

(assert (=> start!22544 (= res!115540 (valid!1340 thiss!1504))))

(assert (=> start!22544 e!152980))

(declare-fun e!152985 () Bool)

(assert (=> start!22544 e!152985))

(assert (=> start!22544 true))

(declare-fun b!235555 () Bool)

(assert (=> b!235555 (= e!152980 e!152984)))

(declare-fun res!115542 () Bool)

(assert (=> b!235555 (=> (not res!115542) (not e!152984))))

(declare-datatypes ((SeekEntryResult!1002 0))(
  ( (MissingZero!1002 (index!6178 (_ BitVec 32))) (Found!1002 (index!6179 (_ BitVec 32))) (Intermediate!1002 (undefined!1814 Bool) (index!6180 (_ BitVec 32)) (x!23814 (_ BitVec 32))) (Undefined!1002) (MissingVacant!1002 (index!6181 (_ BitVec 32))) )
))
(declare-fun lt!119174 () SeekEntryResult!1002)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235555 (= res!115542 (or (= lt!119174 (MissingZero!1002 index!297)) (= lt!119174 (MissingVacant!1002 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11658 (_ BitVec 32)) SeekEntryResult!1002)

(assert (=> b!235555 (= lt!119174 (seekEntryOrOpen!0 key!932 (_keys!6453 thiss!1504) (mask!10351 thiss!1504)))))

(declare-fun b!235556 () Bool)

(declare-fun res!115537 () Bool)

(assert (=> b!235556 (=> (not res!115537) (not e!152984))))

(declare-datatypes ((tuple2!4630 0))(
  ( (tuple2!4631 (_1!2325 (_ BitVec 64)) (_2!2325 V!7913)) )
))
(declare-datatypes ((List!3564 0))(
  ( (Nil!3561) (Cons!3560 (h!4212 tuple2!4630) (t!8547 List!3564)) )
))
(declare-datatypes ((ListLongMap!3557 0))(
  ( (ListLongMap!3558 (toList!1794 List!3564)) )
))
(declare-fun contains!1665 (ListLongMap!3557 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1317 (array!11658 array!11656 (_ BitVec 32) (_ BitVec 32) V!7913 V!7913 (_ BitVec 32) Int) ListLongMap!3557)

(assert (=> b!235556 (= res!115537 (contains!1665 (getCurrentListMap!1317 (_keys!6453 thiss!1504) (_values!4360 thiss!1504) (mask!10351 thiss!1504) (extraKeys!4114 thiss!1504) (zeroValue!4218 thiss!1504) (minValue!4218 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4377 thiss!1504)) key!932))))

(declare-fun b!235557 () Bool)

(declare-fun e!152979 () Bool)

(declare-fun e!152983 () Bool)

(declare-fun mapRes!10496 () Bool)

(assert (=> b!235557 (= e!152979 (and e!152983 mapRes!10496))))

(declare-fun condMapEmpty!10496 () Bool)

(declare-fun mapDefault!10496 () ValueCell!2756)

