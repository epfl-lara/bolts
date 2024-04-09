; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22652 () Bool)

(assert start!22652)

(declare-fun b!236446 () Bool)

(declare-fun b_free!6361 () Bool)

(declare-fun b_next!6361 () Bool)

(assert (=> b!236446 (= b_free!6361 (not b_next!6361))))

(declare-fun tp!22263 () Bool)

(declare-fun b_and!13319 () Bool)

(assert (=> b!236446 (= tp!22263 b_and!13319)))

(declare-fun b!236447 () Bool)

(declare-fun e!153572 () Bool)

(declare-fun tp_is_empty!6223 () Bool)

(assert (=> b!236447 (= e!153572 tp_is_empty!6223)))

(declare-fun b!236448 () Bool)

(declare-fun e!153569 () Bool)

(declare-fun e!153567 () Bool)

(assert (=> b!236448 (= e!153569 e!153567)))

(declare-fun res!115952 () Bool)

(assert (=> b!236448 (=> (not res!115952) (not e!153567))))

(declare-datatypes ((SeekEntryResult!1011 0))(
  ( (MissingZero!1011 (index!6214 (_ BitVec 32))) (Found!1011 (index!6215 (_ BitVec 32))) (Intermediate!1011 (undefined!1823 Bool) (index!6216 (_ BitVec 32)) (x!23893 (_ BitVec 32))) (Undefined!1011) (MissingVacant!1011 (index!6217 (_ BitVec 32))) )
))
(declare-fun lt!119599 () SeekEntryResult!1011)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!236448 (= res!115952 (or (= lt!119599 (MissingZero!1011 index!297)) (= lt!119599 (MissingVacant!1011 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7945 0))(
  ( (V!7946 (val!3156 Int)) )
))
(declare-datatypes ((ValueCell!2768 0))(
  ( (ValueCellFull!2768 (v!5183 V!7945)) (EmptyCell!2768) )
))
(declare-datatypes ((array!11710 0))(
  ( (array!11711 (arr!5563 (Array (_ BitVec 32) ValueCell!2768)) (size!5901 (_ BitVec 32))) )
))
(declare-datatypes ((array!11712 0))(
  ( (array!11713 (arr!5564 (Array (_ BitVec 32) (_ BitVec 64))) (size!5902 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3436 0))(
  ( (LongMapFixedSize!3437 (defaultEntry!4393 Int) (mask!10386 (_ BitVec 32)) (extraKeys!4130 (_ BitVec 32)) (zeroValue!4234 V!7945) (minValue!4234 V!7945) (_size!1767 (_ BitVec 32)) (_keys!6476 array!11712) (_values!4376 array!11710) (_vacant!1767 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3436)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11712 (_ BitVec 32)) SeekEntryResult!1011)

(assert (=> b!236448 (= lt!119599 (seekEntryOrOpen!0 key!932 (_keys!6476 thiss!1504) (mask!10386 thiss!1504)))))

(declare-fun mapNonEmpty!10542 () Bool)

(declare-fun mapRes!10542 () Bool)

(declare-fun tp!22262 () Bool)

(assert (=> mapNonEmpty!10542 (= mapRes!10542 (and tp!22262 e!153572))))

(declare-fun mapValue!10542 () ValueCell!2768)

(declare-fun mapKey!10542 () (_ BitVec 32))

(declare-fun mapRest!10542 () (Array (_ BitVec 32) ValueCell!2768))

(assert (=> mapNonEmpty!10542 (= (arr!5563 (_values!4376 thiss!1504)) (store mapRest!10542 mapKey!10542 mapValue!10542))))

(declare-fun b!236449 () Bool)

(declare-fun res!115955 () Bool)

(assert (=> b!236449 (=> (not res!115955) (not e!153567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!236449 (= res!115955 (validMask!0 (mask!10386 thiss!1504)))))

(declare-fun b!236450 () Bool)

(declare-fun res!115953 () Bool)

(assert (=> b!236450 (=> (not res!115953) (not e!153567))))

(declare-datatypes ((tuple2!4648 0))(
  ( (tuple2!4649 (_1!2334 (_ BitVec 64)) (_2!2334 V!7945)) )
))
(declare-datatypes ((List!3576 0))(
  ( (Nil!3573) (Cons!3572 (h!4225 tuple2!4648) (t!8565 List!3576)) )
))
(declare-datatypes ((ListLongMap!3575 0))(
  ( (ListLongMap!3576 (toList!1803 List!3576)) )
))
(declare-fun contains!1677 (ListLongMap!3575 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1326 (array!11712 array!11710 (_ BitVec 32) (_ BitVec 32) V!7945 V!7945 (_ BitVec 32) Int) ListLongMap!3575)

(assert (=> b!236450 (= res!115953 (not (contains!1677 (getCurrentListMap!1326 (_keys!6476 thiss!1504) (_values!4376 thiss!1504) (mask!10386 thiss!1504) (extraKeys!4130 thiss!1504) (zeroValue!4234 thiss!1504) (minValue!4234 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4393 thiss!1504)) key!932)))))

(declare-fun b!236451 () Bool)

(declare-fun e!153568 () Bool)

(declare-fun e!153566 () Bool)

(assert (=> b!236451 (= e!153568 (and e!153566 mapRes!10542))))

(declare-fun condMapEmpty!10542 () Bool)

(declare-fun mapDefault!10542 () ValueCell!2768)

