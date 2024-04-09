; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22538 () Bool)

(assert start!22538)

(declare-fun b!235454 () Bool)

(declare-fun b_free!6331 () Bool)

(declare-fun b_next!6331 () Bool)

(assert (=> b!235454 (= b_free!6331 (not b_next!6331))))

(declare-fun tp!22162 () Bool)

(declare-fun b_and!13279 () Bool)

(assert (=> b!235454 (= tp!22162 b_and!13279)))

(declare-fun b!235450 () Bool)

(declare-fun res!115472 () Bool)

(declare-fun e!152918 () Bool)

(assert (=> b!235450 (=> (not res!115472) (not e!152918))))

(declare-datatypes ((V!7905 0))(
  ( (V!7906 (val!3141 Int)) )
))
(declare-datatypes ((ValueCell!2753 0))(
  ( (ValueCellFull!2753 (v!5165 V!7905)) (EmptyCell!2753) )
))
(declare-datatypes ((array!11644 0))(
  ( (array!11645 (arr!5533 (Array (_ BitVec 32) ValueCell!2753)) (size!5870 (_ BitVec 32))) )
))
(declare-datatypes ((array!11646 0))(
  ( (array!11647 (arr!5534 (Array (_ BitVec 32) (_ BitVec 64))) (size!5871 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3406 0))(
  ( (LongMapFixedSize!3407 (defaultEntry!4374 Int) (mask!10346 (_ BitVec 32)) (extraKeys!4111 (_ BitVec 32)) (zeroValue!4215 V!7905) (minValue!4215 V!7905) (_size!1752 (_ BitVec 32)) (_keys!6450 array!11646) (_values!4357 array!11644) (_vacant!1752 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3406)

(assert (=> b!235450 (= res!115472 (and (= (size!5870 (_values!4357 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10346 thiss!1504))) (= (size!5871 (_keys!6450 thiss!1504)) (size!5870 (_values!4357 thiss!1504))) (bvsge (mask!10346 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4111 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4111 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!235451 () Bool)

(declare-fun e!152919 () Bool)

(declare-fun tp_is_empty!6193 () Bool)

(assert (=> b!235451 (= e!152919 tp_is_empty!6193)))

(declare-fun mapIsEmpty!10487 () Bool)

(declare-fun mapRes!10487 () Bool)

(assert (=> mapIsEmpty!10487 mapRes!10487))

(declare-fun b!235452 () Bool)

(declare-fun res!115471 () Bool)

(assert (=> b!235452 (=> (not res!115471) (not e!152918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11646 (_ BitVec 32)) Bool)

(assert (=> b!235452 (= res!115471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6450 thiss!1504) (mask!10346 thiss!1504)))))

(declare-fun b!235453 () Bool)

(assert (=> b!235453 (= e!152918 false)))

(declare-fun lt!119159 () Bool)

(declare-datatypes ((List!3558 0))(
  ( (Nil!3555) (Cons!3554 (h!4206 (_ BitVec 64)) (t!8541 List!3558)) )
))
(declare-fun arrayNoDuplicates!0 (array!11646 (_ BitVec 32) List!3558) Bool)

(assert (=> b!235453 (= lt!119159 (arrayNoDuplicates!0 (_keys!6450 thiss!1504) #b00000000000000000000000000000000 Nil!3555))))

(declare-fun res!115470 () Bool)

(declare-fun e!152917 () Bool)

(assert (=> start!22538 (=> (not res!115470) (not e!152917))))

(declare-fun valid!1337 (LongMapFixedSize!3406) Bool)

(assert (=> start!22538 (= res!115470 (valid!1337 thiss!1504))))

(assert (=> start!22538 e!152917))

(declare-fun e!152922 () Bool)

(assert (=> start!22538 e!152922))

(assert (=> start!22538 true))

(declare-fun mapNonEmpty!10487 () Bool)

(declare-fun tp!22163 () Bool)

(assert (=> mapNonEmpty!10487 (= mapRes!10487 (and tp!22163 e!152919))))

(declare-fun mapRest!10487 () (Array (_ BitVec 32) ValueCell!2753))

(declare-fun mapKey!10487 () (_ BitVec 32))

(declare-fun mapValue!10487 () ValueCell!2753)

(assert (=> mapNonEmpty!10487 (= (arr!5533 (_values!4357 thiss!1504)) (store mapRest!10487 mapKey!10487 mapValue!10487))))

(declare-fun e!152921 () Bool)

(declare-fun array_inv!3641 (array!11646) Bool)

(declare-fun array_inv!3642 (array!11644) Bool)

(assert (=> b!235454 (= e!152922 (and tp!22162 tp_is_empty!6193 (array_inv!3641 (_keys!6450 thiss!1504)) (array_inv!3642 (_values!4357 thiss!1504)) e!152921))))

(declare-fun b!235455 () Bool)

(assert (=> b!235455 (= e!152917 e!152918)))

(declare-fun res!115475 () Bool)

(assert (=> b!235455 (=> (not res!115475) (not e!152918))))

(declare-datatypes ((SeekEntryResult!999 0))(
  ( (MissingZero!999 (index!6166 (_ BitVec 32))) (Found!999 (index!6167 (_ BitVec 32))) (Intermediate!999 (undefined!1811 Bool) (index!6168 (_ BitVec 32)) (x!23803 (_ BitVec 32))) (Undefined!999) (MissingVacant!999 (index!6169 (_ BitVec 32))) )
))
(declare-fun lt!119158 () SeekEntryResult!999)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235455 (= res!115475 (or (= lt!119158 (MissingZero!999 index!297)) (= lt!119158 (MissingVacant!999 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11646 (_ BitVec 32)) SeekEntryResult!999)

(assert (=> b!235455 (= lt!119158 (seekEntryOrOpen!0 key!932 (_keys!6450 thiss!1504) (mask!10346 thiss!1504)))))

(declare-fun b!235456 () Bool)

(declare-fun res!115476 () Bool)

(assert (=> b!235456 (=> (not res!115476) (not e!152917))))

(assert (=> b!235456 (= res!115476 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!235457 () Bool)

(declare-fun res!115473 () Bool)

(assert (=> b!235457 (=> (not res!115473) (not e!152918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!235457 (= res!115473 (validMask!0 (mask!10346 thiss!1504)))))

(declare-fun b!235458 () Bool)

(declare-fun e!152920 () Bool)

(assert (=> b!235458 (= e!152920 tp_is_empty!6193)))

(declare-fun b!235459 () Bool)

(assert (=> b!235459 (= e!152921 (and e!152920 mapRes!10487))))

(declare-fun condMapEmpty!10487 () Bool)

(declare-fun mapDefault!10487 () ValueCell!2753)

