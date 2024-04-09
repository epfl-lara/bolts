; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22518 () Bool)

(assert start!22518)

(declare-fun b!235285 () Bool)

(declare-fun b_free!6329 () Bool)

(declare-fun b_next!6329 () Bool)

(assert (=> b!235285 (= b_free!6329 (not b_next!6329))))

(declare-fun tp!22154 () Bool)

(declare-fun b_and!13275 () Bool)

(assert (=> b!235285 (= tp!22154 b_and!13275)))

(declare-fun b!235281 () Bool)

(declare-fun e!152812 () Bool)

(declare-fun tp_is_empty!6191 () Bool)

(assert (=> b!235281 (= e!152812 tp_is_empty!6191)))

(declare-fun b!235282 () Bool)

(declare-fun res!115397 () Bool)

(declare-fun e!152813 () Bool)

(assert (=> b!235282 (=> (not res!115397) (not e!152813))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!235282 (= res!115397 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!235283 () Bool)

(declare-fun res!115401 () Bool)

(declare-fun e!152817 () Bool)

(assert (=> b!235283 (=> (not res!115401) (not e!152817))))

(declare-datatypes ((V!7901 0))(
  ( (V!7902 (val!3140 Int)) )
))
(declare-datatypes ((ValueCell!2752 0))(
  ( (ValueCellFull!2752 (v!5163 V!7901)) (EmptyCell!2752) )
))
(declare-datatypes ((array!11638 0))(
  ( (array!11639 (arr!5531 (Array (_ BitVec 32) ValueCell!2752)) (size!5868 (_ BitVec 32))) )
))
(declare-datatypes ((array!11640 0))(
  ( (array!11641 (arr!5532 (Array (_ BitVec 32) (_ BitVec 64))) (size!5869 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3404 0))(
  ( (LongMapFixedSize!3405 (defaultEntry!4372 Int) (mask!10339 (_ BitVec 32)) (extraKeys!4109 (_ BitVec 32)) (zeroValue!4213 V!7901) (minValue!4213 V!7901) (_size!1751 (_ BitVec 32)) (_keys!6446 array!11640) (_values!4355 array!11638) (_vacant!1751 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3404)

(declare-datatypes ((tuple2!4624 0))(
  ( (tuple2!4625 (_1!2322 (_ BitVec 64)) (_2!2322 V!7901)) )
))
(declare-datatypes ((List!3556 0))(
  ( (Nil!3553) (Cons!3552 (h!4204 tuple2!4624) (t!8537 List!3556)) )
))
(declare-datatypes ((ListLongMap!3551 0))(
  ( (ListLongMap!3552 (toList!1791 List!3556)) )
))
(declare-fun contains!1661 (ListLongMap!3551 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1314 (array!11640 array!11638 (_ BitVec 32) (_ BitVec 32) V!7901 V!7901 (_ BitVec 32) Int) ListLongMap!3551)

(assert (=> b!235283 (= res!115401 (contains!1661 (getCurrentListMap!1314 (_keys!6446 thiss!1504) (_values!4355 thiss!1504) (mask!10339 thiss!1504) (extraKeys!4109 thiss!1504) (zeroValue!4213 thiss!1504) (minValue!4213 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4372 thiss!1504)) key!932))))

(declare-fun b!235284 () Bool)

(assert (=> b!235284 (= e!152813 e!152817)))

(declare-fun res!115399 () Bool)

(assert (=> b!235284 (=> (not res!115399) (not e!152817))))

(declare-datatypes ((SeekEntryResult!998 0))(
  ( (MissingZero!998 (index!6162 (_ BitVec 32))) (Found!998 (index!6163 (_ BitVec 32))) (Intermediate!998 (undefined!1810 Bool) (index!6164 (_ BitVec 32)) (x!23784 (_ BitVec 32))) (Undefined!998) (MissingVacant!998 (index!6165 (_ BitVec 32))) )
))
(declare-fun lt!119057 () SeekEntryResult!998)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235284 (= res!115399 (or (= lt!119057 (MissingZero!998 index!297)) (= lt!119057 (MissingVacant!998 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11640 (_ BitVec 32)) SeekEntryResult!998)

(assert (=> b!235284 (= lt!119057 (seekEntryOrOpen!0 key!932 (_keys!6446 thiss!1504) (mask!10339 thiss!1504)))))

(declare-fun mapIsEmpty!10481 () Bool)

(declare-fun mapRes!10481 () Bool)

(assert (=> mapIsEmpty!10481 mapRes!10481))

(declare-fun mapNonEmpty!10481 () Bool)

(declare-fun tp!22153 () Bool)

(declare-fun e!152811 () Bool)

(assert (=> mapNonEmpty!10481 (= mapRes!10481 (and tp!22153 e!152811))))

(declare-fun mapValue!10481 () ValueCell!2752)

(declare-fun mapKey!10481 () (_ BitVec 32))

(declare-fun mapRest!10481 () (Array (_ BitVec 32) ValueCell!2752))

(assert (=> mapNonEmpty!10481 (= (arr!5531 (_values!4355 thiss!1504)) (store mapRest!10481 mapKey!10481 mapValue!10481))))

(declare-fun res!115396 () Bool)

(assert (=> start!22518 (=> (not res!115396) (not e!152813))))

(declare-fun valid!1336 (LongMapFixedSize!3404) Bool)

(assert (=> start!22518 (= res!115396 (valid!1336 thiss!1504))))

(assert (=> start!22518 e!152813))

(declare-fun e!152816 () Bool)

(assert (=> start!22518 e!152816))

(assert (=> start!22518 true))

(declare-fun e!152815 () Bool)

(declare-fun array_inv!3639 (array!11640) Bool)

(declare-fun array_inv!3640 (array!11638) Bool)

(assert (=> b!235285 (= e!152816 (and tp!22154 tp_is_empty!6191 (array_inv!3639 (_keys!6446 thiss!1504)) (array_inv!3640 (_values!4355 thiss!1504)) e!152815))))

(declare-fun b!235286 () Bool)

(assert (=> b!235286 (= e!152811 tp_is_empty!6191)))

(declare-fun b!235287 () Bool)

(declare-fun res!115395 () Bool)

(assert (=> b!235287 (=> (not res!115395) (not e!152817))))

(assert (=> b!235287 (= res!115395 (and (= (size!5868 (_values!4355 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10339 thiss!1504))) (= (size!5869 (_keys!6446 thiss!1504)) (size!5868 (_values!4355 thiss!1504))) (bvsge (mask!10339 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4109 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4109 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!235288 () Bool)

(declare-datatypes ((List!3557 0))(
  ( (Nil!3554) (Cons!3553 (h!4205 (_ BitVec 64)) (t!8538 List!3557)) )
))
(declare-fun arrayNoDuplicates!0 (array!11640 (_ BitVec 32) List!3557) Bool)

(assert (=> b!235288 (= e!152817 (not (arrayNoDuplicates!0 (_keys!6446 thiss!1504) #b00000000000000000000000000000000 Nil!3554)))))

(declare-fun b!235289 () Bool)

(declare-fun res!115398 () Bool)

(assert (=> b!235289 (=> (not res!115398) (not e!152817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11640 (_ BitVec 32)) Bool)

(assert (=> b!235289 (= res!115398 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6446 thiss!1504) (mask!10339 thiss!1504)))))

(declare-fun b!235290 () Bool)

(assert (=> b!235290 (= e!152815 (and e!152812 mapRes!10481))))

(declare-fun condMapEmpty!10481 () Bool)

(declare-fun mapDefault!10481 () ValueCell!2752)

