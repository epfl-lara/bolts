; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16084 () Bool)

(assert start!16084)

(declare-fun b!159560 () Bool)

(declare-fun b_free!3533 () Bool)

(declare-fun b_next!3533 () Bool)

(assert (=> b!159560 (= b_free!3533 (not b_next!3533))))

(declare-fun tp!13169 () Bool)

(declare-fun b_and!9965 () Bool)

(assert (=> b!159560 (= tp!13169 b_and!9965)))

(declare-fun b!159550 () Bool)

(declare-fun res!75425 () Bool)

(declare-fun e!104428 () Bool)

(assert (=> b!159550 (=> (not res!75425) (not e!104428))))

(declare-datatypes ((V!4093 0))(
  ( (V!4094 (val!1712 Int)) )
))
(declare-datatypes ((ValueCell!1324 0))(
  ( (ValueCellFull!1324 (v!3573 V!4093)) (EmptyCell!1324) )
))
(declare-datatypes ((array!5748 0))(
  ( (array!5749 (arr!2718 (Array (_ BitVec 32) (_ BitVec 64))) (size!3002 (_ BitVec 32))) )
))
(declare-datatypes ((array!5750 0))(
  ( (array!5751 (arr!2719 (Array (_ BitVec 32) ValueCell!1324)) (size!3003 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1556 0))(
  ( (LongMapFixedSize!1557 (defaultEntry!3220 Int) (mask!7772 (_ BitVec 32)) (extraKeys!2961 (_ BitVec 32)) (zeroValue!3063 V!4093) (minValue!3063 V!4093) (_size!827 (_ BitVec 32)) (_keys!5021 array!5748) (_values!3203 array!5750) (_vacant!827 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1556)

(assert (=> b!159550 (= res!75425 (and (= (size!3003 (_values!3203 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7772 thiss!1248))) (= (size!3002 (_keys!5021 thiss!1248)) (size!3003 (_values!3203 thiss!1248))) (bvsge (mask!7772 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2961 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2961 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159551 () Bool)

(declare-fun res!75423 () Bool)

(assert (=> b!159551 (=> (not res!75423) (not e!104428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5748 (_ BitVec 32)) Bool)

(assert (=> b!159551 (= res!75423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5021 thiss!1248) (mask!7772 thiss!1248)))))

(declare-fun mapNonEmpty!5690 () Bool)

(declare-fun mapRes!5690 () Bool)

(declare-fun tp!13168 () Bool)

(declare-fun e!104429 () Bool)

(assert (=> mapNonEmpty!5690 (= mapRes!5690 (and tp!13168 e!104429))))

(declare-fun mapRest!5690 () (Array (_ BitVec 32) ValueCell!1324))

(declare-fun mapValue!5690 () ValueCell!1324)

(declare-fun mapKey!5690 () (_ BitVec 32))

(assert (=> mapNonEmpty!5690 (= (arr!2719 (_values!3203 thiss!1248)) (store mapRest!5690 mapKey!5690 mapValue!5690))))

(declare-fun b!159552 () Bool)

(declare-fun res!75422 () Bool)

(assert (=> b!159552 (=> (not res!75422) (not e!104428))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!326 0))(
  ( (MissingZero!326 (index!3472 (_ BitVec 32))) (Found!326 (index!3473 (_ BitVec 32))) (Intermediate!326 (undefined!1138 Bool) (index!3474 (_ BitVec 32)) (x!17630 (_ BitVec 32))) (Undefined!326) (MissingVacant!326 (index!3475 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5748 (_ BitVec 32)) SeekEntryResult!326)

(assert (=> b!159552 (= res!75422 (is-Undefined!326 (seekEntryOrOpen!0 key!828 (_keys!5021 thiss!1248) (mask!7772 thiss!1248))))))

(declare-fun mapIsEmpty!5690 () Bool)

(assert (=> mapIsEmpty!5690 mapRes!5690))

(declare-fun b!159553 () Bool)

(declare-fun e!104425 () Bool)

(declare-fun tp_is_empty!3335 () Bool)

(assert (=> b!159553 (= e!104425 tp_is_empty!3335)))

(declare-fun res!75427 () Bool)

(assert (=> start!16084 (=> (not res!75427) (not e!104428))))

(declare-fun valid!722 (LongMapFixedSize!1556) Bool)

(assert (=> start!16084 (= res!75427 (valid!722 thiss!1248))))

(assert (=> start!16084 e!104428))

(declare-fun e!104427 () Bool)

(assert (=> start!16084 e!104427))

(assert (=> start!16084 true))

(declare-fun b!159554 () Bool)

(declare-fun res!75428 () Bool)

(assert (=> b!159554 (=> (not res!75428) (not e!104428))))

(assert (=> b!159554 (= res!75428 (not (= key!828 (bvneg key!828))))))

(declare-fun b!159555 () Bool)

(assert (=> b!159555 (= e!104428 false)))

(declare-fun lt!82034 () Bool)

(declare-datatypes ((List!1927 0))(
  ( (Nil!1924) (Cons!1923 (h!2536 (_ BitVec 64)) (t!6737 List!1927)) )
))
(declare-fun arrayNoDuplicates!0 (array!5748 (_ BitVec 32) List!1927) Bool)

(assert (=> b!159555 (= lt!82034 (arrayNoDuplicates!0 (_keys!5021 thiss!1248) #b00000000000000000000000000000000 Nil!1924))))

(declare-fun b!159556 () Bool)

(declare-fun e!104424 () Bool)

(assert (=> b!159556 (= e!104424 (and e!104425 mapRes!5690))))

(declare-fun condMapEmpty!5690 () Bool)

(declare-fun mapDefault!5690 () ValueCell!1324)

