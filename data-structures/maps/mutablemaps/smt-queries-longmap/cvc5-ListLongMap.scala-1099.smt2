; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22570 () Bool)

(assert start!22570)

(declare-fun b!235796 () Bool)

(declare-fun b_free!6343 () Bool)

(declare-fun b_next!6343 () Bool)

(assert (=> b!235796 (= b_free!6343 (not b_next!6343))))

(declare-fun tp!22202 () Bool)

(declare-fun b_and!13293 () Bool)

(assert (=> b!235796 (= tp!22202 b_and!13293)))

(declare-fun res!115661 () Bool)

(declare-fun e!153130 () Bool)

(assert (=> start!22570 (=> (not res!115661) (not e!153130))))

(declare-datatypes ((V!7921 0))(
  ( (V!7922 (val!3147 Int)) )
))
(declare-datatypes ((ValueCell!2759 0))(
  ( (ValueCellFull!2759 (v!5172 V!7921)) (EmptyCell!2759) )
))
(declare-datatypes ((array!11670 0))(
  ( (array!11671 (arr!5545 (Array (_ BitVec 32) ValueCell!2759)) (size!5882 (_ BitVec 32))) )
))
(declare-datatypes ((array!11672 0))(
  ( (array!11673 (arr!5546 (Array (_ BitVec 32) (_ BitVec 64))) (size!5883 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3418 0))(
  ( (LongMapFixedSize!3419 (defaultEntry!4381 Int) (mask!10360 (_ BitVec 32)) (extraKeys!4118 (_ BitVec 32)) (zeroValue!4222 V!7921) (minValue!4222 V!7921) (_size!1758 (_ BitVec 32)) (_keys!6459 array!11672) (_values!4364 array!11670) (_vacant!1758 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3418)

(declare-fun valid!1343 (LongMapFixedSize!3418) Bool)

(assert (=> start!22570 (= res!115661 (valid!1343 thiss!1504))))

(assert (=> start!22570 e!153130))

(declare-fun e!153133 () Bool)

(assert (=> start!22570 e!153133))

(assert (=> start!22570 true))

(declare-fun b!235791 () Bool)

(declare-fun e!153128 () Bool)

(assert (=> b!235791 (= e!153130 e!153128)))

(declare-fun res!115658 () Bool)

(assert (=> b!235791 (=> (not res!115658) (not e!153128))))

(declare-datatypes ((SeekEntryResult!1004 0))(
  ( (MissingZero!1004 (index!6186 (_ BitVec 32))) (Found!1004 (index!6187 (_ BitVec 32))) (Intermediate!1004 (undefined!1816 Bool) (index!6188 (_ BitVec 32)) (x!23834 (_ BitVec 32))) (Undefined!1004) (MissingVacant!1004 (index!6189 (_ BitVec 32))) )
))
(declare-fun lt!119282 () SeekEntryResult!1004)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235791 (= res!115658 (or (= lt!119282 (MissingZero!1004 index!297)) (= lt!119282 (MissingVacant!1004 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11672 (_ BitVec 32)) SeekEntryResult!1004)

(assert (=> b!235791 (= lt!119282 (seekEntryOrOpen!0 key!932 (_keys!6459 thiss!1504) (mask!10360 thiss!1504)))))

(declare-fun b!235792 () Bool)

(assert (=> b!235792 (= e!153128 (not false))))

(declare-fun e!153132 () Bool)

(assert (=> b!235792 e!153132))

(declare-fun res!115657 () Bool)

(assert (=> b!235792 (=> (not res!115657) (not e!153132))))

(assert (=> b!235792 (= res!115657 (is-Found!1004 lt!119282))))

(declare-datatypes ((Unit!7259 0))(
  ( (Unit!7260) )
))
(declare-fun lt!119281 () Unit!7259)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!316 (array!11672 array!11670 (_ BitVec 32) (_ BitVec 32) V!7921 V!7921 (_ BitVec 64) Int) Unit!7259)

(assert (=> b!235792 (= lt!119281 (lemmaInListMapThenSeekEntryOrOpenFindsIt!316 (_keys!6459 thiss!1504) (_values!4364 thiss!1504) (mask!10360 thiss!1504) (extraKeys!4118 thiss!1504) (zeroValue!4222 thiss!1504) (minValue!4222 thiss!1504) key!932 (defaultEntry!4381 thiss!1504)))))

(declare-fun mapNonEmpty!10508 () Bool)

(declare-fun mapRes!10508 () Bool)

(declare-fun tp!22201 () Bool)

(declare-fun e!153129 () Bool)

(assert (=> mapNonEmpty!10508 (= mapRes!10508 (and tp!22201 e!153129))))

(declare-fun mapRest!10508 () (Array (_ BitVec 32) ValueCell!2759))

(declare-fun mapValue!10508 () ValueCell!2759)

(declare-fun mapKey!10508 () (_ BitVec 32))

(assert (=> mapNonEmpty!10508 (= (arr!5545 (_values!4364 thiss!1504)) (store mapRest!10508 mapKey!10508 mapValue!10508))))

(declare-fun mapIsEmpty!10508 () Bool)

(assert (=> mapIsEmpty!10508 mapRes!10508))

(declare-fun b!235793 () Bool)

(declare-fun e!153135 () Bool)

(declare-fun e!153134 () Bool)

(assert (=> b!235793 (= e!153135 (and e!153134 mapRes!10508))))

(declare-fun condMapEmpty!10508 () Bool)

(declare-fun mapDefault!10508 () ValueCell!2759)

