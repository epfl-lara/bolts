; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23634 () Bool)

(assert start!23634)

(declare-fun b!248355 () Bool)

(declare-fun b_free!6605 () Bool)

(declare-fun b_next!6605 () Bool)

(assert (=> b!248355 (= b_free!6605 (not b_next!6605))))

(declare-fun tp!23065 () Bool)

(declare-fun b_and!13627 () Bool)

(assert (=> b!248355 (= tp!23065 b_and!13627)))

(declare-fun res!121724 () Bool)

(declare-fun e!161088 () Bool)

(assert (=> start!23634 (=> (not res!121724) (not e!161088))))

(declare-datatypes ((V!8269 0))(
  ( (V!8270 (val!3278 Int)) )
))
(declare-datatypes ((ValueCell!2890 0))(
  ( (ValueCellFull!2890 (v!5333 V!8269)) (EmptyCell!2890) )
))
(declare-datatypes ((array!12242 0))(
  ( (array!12243 (arr!5807 (Array (_ BitVec 32) ValueCell!2890)) (size!6150 (_ BitVec 32))) )
))
(declare-datatypes ((array!12244 0))(
  ( (array!12245 (arr!5808 (Array (_ BitVec 32) (_ BitVec 64))) (size!6151 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3680 0))(
  ( (LongMapFixedSize!3681 (defaultEntry!4593 Int) (mask!10741 (_ BitVec 32)) (extraKeys!4330 (_ BitVec 32)) (zeroValue!4434 V!8269) (minValue!4434 V!8269) (_size!1889 (_ BitVec 32)) (_keys!6717 array!12244) (_values!4576 array!12242) (_vacant!1889 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3680)

(declare-fun valid!1432 (LongMapFixedSize!3680) Bool)

(assert (=> start!23634 (= res!121724 (valid!1432 thiss!1504))))

(assert (=> start!23634 e!161088))

(declare-fun e!161092 () Bool)

(assert (=> start!23634 e!161092))

(assert (=> start!23634 true))

(declare-fun b!248335 () Bool)

(declare-fun e!161098 () Bool)

(declare-fun e!161090 () Bool)

(assert (=> b!248335 (= e!161098 e!161090)))

(declare-fun res!121726 () Bool)

(assert (=> b!248335 (=> (not res!121726) (not e!161090))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!248335 (= res!121726 (inRange!0 index!297 (mask!10741 thiss!1504)))))

(declare-datatypes ((Unit!7688 0))(
  ( (Unit!7689) )
))
(declare-fun lt!124389 () Unit!7688)

(declare-fun e!161094 () Unit!7688)

(assert (=> b!248335 (= lt!124389 e!161094)))

(declare-fun c!41586 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4820 0))(
  ( (tuple2!4821 (_1!2420 (_ BitVec 64)) (_2!2420 V!8269)) )
))
(declare-datatypes ((List!3725 0))(
  ( (Nil!3722) (Cons!3721 (h!4379 tuple2!4820) (t!8758 List!3725)) )
))
(declare-datatypes ((ListLongMap!3747 0))(
  ( (ListLongMap!3748 (toList!1889 List!3725)) )
))
(declare-fun contains!1798 (ListLongMap!3747 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1412 (array!12244 array!12242 (_ BitVec 32) (_ BitVec 32) V!8269 V!8269 (_ BitVec 32) Int) ListLongMap!3747)

(assert (=> b!248335 (= c!41586 (contains!1798 (getCurrentListMap!1412 (_keys!6717 thiss!1504) (_values!4576 thiss!1504) (mask!10741 thiss!1504) (extraKeys!4330 thiss!1504) (zeroValue!4434 thiss!1504) (minValue!4434 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4593 thiss!1504)) key!932))))

(declare-fun b!248336 () Bool)

(assert (=> b!248336 (= e!161088 e!161098)))

(declare-fun res!121732 () Bool)

(assert (=> b!248336 (=> (not res!121732) (not e!161098))))

(declare-datatypes ((SeekEntryResult!1121 0))(
  ( (MissingZero!1121 (index!6654 (_ BitVec 32))) (Found!1121 (index!6655 (_ BitVec 32))) (Intermediate!1121 (undefined!1933 Bool) (index!6656 (_ BitVec 32)) (x!24583 (_ BitVec 32))) (Undefined!1121) (MissingVacant!1121 (index!6657 (_ BitVec 32))) )
))
(declare-fun lt!124394 () SeekEntryResult!1121)

(assert (=> b!248336 (= res!121732 (or (= lt!124394 (MissingZero!1121 index!297)) (= lt!124394 (MissingVacant!1121 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12244 (_ BitVec 32)) SeekEntryResult!1121)

(assert (=> b!248336 (= lt!124394 (seekEntryOrOpen!0 key!932 (_keys!6717 thiss!1504) (mask!10741 thiss!1504)))))

(declare-fun mapNonEmpty!10979 () Bool)

(declare-fun mapRes!10979 () Bool)

(declare-fun tp!23066 () Bool)

(declare-fun e!161089 () Bool)

(assert (=> mapNonEmpty!10979 (= mapRes!10979 (and tp!23066 e!161089))))

(declare-fun mapValue!10979 () ValueCell!2890)

(declare-fun mapRest!10979 () (Array (_ BitVec 32) ValueCell!2890))

(declare-fun mapKey!10979 () (_ BitVec 32))

(assert (=> mapNonEmpty!10979 (= (arr!5807 (_values!4576 thiss!1504)) (store mapRest!10979 mapKey!10979 mapValue!10979))))

(declare-fun b!248337 () Bool)

(declare-fun e!161101 () Bool)

(declare-fun call!23272 () Bool)

(assert (=> b!248337 (= e!161101 (not call!23272))))

(declare-fun mapIsEmpty!10979 () Bool)

(assert (=> mapIsEmpty!10979 mapRes!10979))

(declare-fun b!248338 () Bool)

(declare-fun res!121735 () Bool)

(declare-fun e!161087 () Bool)

(assert (=> b!248338 (=> res!121735 e!161087)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!248338 (= res!121735 (not (validKeyInArray!0 key!932)))))

(declare-fun b!248339 () Bool)

(declare-datatypes ((List!3726 0))(
  ( (Nil!3723) (Cons!3722 (h!4380 (_ BitVec 64)) (t!8759 List!3726)) )
))
(declare-fun arrayNoDuplicates!0 (array!12244 (_ BitVec 32) List!3726) Bool)

(assert (=> b!248339 (= e!161087 (arrayNoDuplicates!0 (_keys!6717 thiss!1504) #b00000000000000000000000000000000 Nil!3723))))

(declare-fun b!248340 () Bool)

(declare-fun e!161099 () Unit!7688)

(declare-fun Unit!7690 () Unit!7688)

(assert (=> b!248340 (= e!161099 Unit!7690)))

(declare-fun b!248341 () Bool)

(declare-fun res!121731 () Bool)

(assert (=> b!248341 (= res!121731 (= (select (arr!5808 (_keys!6717 thiss!1504)) (index!6657 lt!124394)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!248341 (=> (not res!121731) (not e!161101))))

(declare-fun b!248342 () Bool)

(declare-fun res!121728 () Bool)

(declare-fun e!161095 () Bool)

(assert (=> b!248342 (=> (not res!121728) (not e!161095))))

(assert (=> b!248342 (= res!121728 (= (select (arr!5808 (_keys!6717 thiss!1504)) (index!6654 lt!124394)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!248343 () Bool)

(declare-fun Unit!7691 () Unit!7688)

(assert (=> b!248343 (= e!161099 Unit!7691)))

(declare-fun lt!124391 () Unit!7688)

(declare-fun lemmaArrayContainsKeyThenInListMap!193 (array!12244 array!12242 (_ BitVec 32) (_ BitVec 32) V!8269 V!8269 (_ BitVec 64) (_ BitVec 32) Int) Unit!7688)

(assert (=> b!248343 (= lt!124391 (lemmaArrayContainsKeyThenInListMap!193 (_keys!6717 thiss!1504) (_values!4576 thiss!1504) (mask!10741 thiss!1504) (extraKeys!4330 thiss!1504) (zeroValue!4434 thiss!1504) (minValue!4434 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4593 thiss!1504)))))

(assert (=> b!248343 false))

(declare-fun b!248344 () Bool)

(declare-fun res!121734 () Bool)

(assert (=> b!248344 (=> res!121734 e!161087)))

(assert (=> b!248344 (= res!121734 (or (not (= (size!6151 (_keys!6717 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10741 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6151 (_keys!6717 thiss!1504)))))))

(declare-fun b!248345 () Bool)

(declare-fun res!121730 () Bool)

(assert (=> b!248345 (=> res!121730 e!161087)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12244 (_ BitVec 32)) Bool)

(assert (=> b!248345 (= res!121730 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6717 thiss!1504) (mask!10741 thiss!1504))))))

(declare-fun b!248346 () Bool)

(declare-fun res!121733 () Bool)

(assert (=> b!248346 (=> res!121733 e!161087)))

(declare-fun lt!124388 () Bool)

(assert (=> b!248346 (= res!121733 lt!124388)))

(declare-fun bm!23268 () Bool)

(declare-fun arrayContainsKey!0 (array!12244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23268 (= call!23272 (arrayContainsKey!0 (_keys!6717 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!248347 () Bool)

(declare-fun Unit!7692 () Unit!7688)

(assert (=> b!248347 (= e!161094 Unit!7692)))

(declare-fun lt!124393 () Unit!7688)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!390 (array!12244 array!12242 (_ BitVec 32) (_ BitVec 32) V!8269 V!8269 (_ BitVec 64) Int) Unit!7688)

(assert (=> b!248347 (= lt!124393 (lemmaInListMapThenSeekEntryOrOpenFindsIt!390 (_keys!6717 thiss!1504) (_values!4576 thiss!1504) (mask!10741 thiss!1504) (extraKeys!4330 thiss!1504) (zeroValue!4434 thiss!1504) (minValue!4434 thiss!1504) key!932 (defaultEntry!4593 thiss!1504)))))

(assert (=> b!248347 false))

(declare-fun b!248348 () Bool)

(declare-fun e!161096 () Bool)

(declare-fun e!161097 () Bool)

(assert (=> b!248348 (= e!161096 (and e!161097 mapRes!10979))))

(declare-fun condMapEmpty!10979 () Bool)

(declare-fun mapDefault!10979 () ValueCell!2890)

