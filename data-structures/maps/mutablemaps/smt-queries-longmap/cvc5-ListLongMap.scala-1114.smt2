; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22942 () Bool)

(assert start!22942)

(declare-fun b!239332 () Bool)

(declare-fun b_free!6433 () Bool)

(declare-fun b_next!6433 () Bool)

(assert (=> b!239332 (= b_free!6433 (not b_next!6433))))

(declare-fun tp!22502 () Bool)

(declare-fun b_and!13417 () Bool)

(assert (=> b!239332 (= tp!22502 b_and!13417)))

(declare-fun b!239316 () Bool)

(declare-datatypes ((Unit!7347 0))(
  ( (Unit!7348) )
))
(declare-fun e!155399 () Unit!7347)

(declare-fun Unit!7349 () Unit!7347)

(assert (=> b!239316 (= e!155399 Unit!7349)))

(declare-fun lt!120799 () Unit!7347)

(declare-datatypes ((V!8041 0))(
  ( (V!8042 (val!3192 Int)) )
))
(declare-datatypes ((ValueCell!2804 0))(
  ( (ValueCellFull!2804 (v!5226 V!8041)) (EmptyCell!2804) )
))
(declare-datatypes ((array!11868 0))(
  ( (array!11869 (arr!5635 (Array (_ BitVec 32) ValueCell!2804)) (size!5976 (_ BitVec 32))) )
))
(declare-datatypes ((array!11870 0))(
  ( (array!11871 (arr!5636 (Array (_ BitVec 32) (_ BitVec 64))) (size!5977 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3508 0))(
  ( (LongMapFixedSize!3509 (defaultEntry!4439 Int) (mask!10485 (_ BitVec 32)) (extraKeys!4176 (_ BitVec 32)) (zeroValue!4280 V!8041) (minValue!4280 V!8041) (_size!1803 (_ BitVec 32)) (_keys!6541 array!11870) (_values!4422 array!11868) (_vacant!1803 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3508)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!327 (array!11870 array!11868 (_ BitVec 32) (_ BitVec 32) V!8041 V!8041 (_ BitVec 64) Int) Unit!7347)

(assert (=> b!239316 (= lt!120799 (lemmaInListMapThenSeekEntryOrOpenFindsIt!327 (_keys!6541 thiss!1504) (_values!4422 thiss!1504) (mask!10485 thiss!1504) (extraKeys!4176 thiss!1504) (zeroValue!4280 thiss!1504) (minValue!4280 thiss!1504) key!932 (defaultEntry!4439 thiss!1504)))))

(assert (=> b!239316 false))

(declare-fun b!239317 () Bool)

(declare-fun res!117308 () Bool)

(declare-datatypes ((SeekEntryResult!1041 0))(
  ( (MissingZero!1041 (index!6334 (_ BitVec 32))) (Found!1041 (index!6335 (_ BitVec 32))) (Intermediate!1041 (undefined!1853 Bool) (index!6336 (_ BitVec 32)) (x!24113 (_ BitVec 32))) (Undefined!1041) (MissingVacant!1041 (index!6337 (_ BitVec 32))) )
))
(declare-fun lt!120797 () SeekEntryResult!1041)

(assert (=> b!239317 (= res!117308 (= (select (arr!5636 (_keys!6541 thiss!1504)) (index!6337 lt!120797)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!155397 () Bool)

(assert (=> b!239317 (=> (not res!117308) (not e!155397))))

(declare-fun b!239318 () Bool)

(declare-fun e!155401 () Bool)

(declare-fun call!22258 () Bool)

(assert (=> b!239318 (= e!155401 (not call!22258))))

(declare-fun b!239319 () Bool)

(declare-fun c!39882 () Bool)

(assert (=> b!239319 (= c!39882 (is-MissingVacant!1041 lt!120797))))

(declare-fun e!155394 () Bool)

(declare-fun e!155390 () Bool)

(assert (=> b!239319 (= e!155394 e!155390)))

(declare-fun b!239320 () Bool)

(declare-fun res!117307 () Bool)

(declare-fun e!155393 () Bool)

(assert (=> b!239320 (=> (not res!117307) (not e!155393))))

(assert (=> b!239320 (= res!117307 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!239321 () Bool)

(declare-fun res!117303 () Bool)

(assert (=> b!239321 (=> (not res!117303) (not e!155401))))

(declare-fun call!22257 () Bool)

(assert (=> b!239321 (= res!117303 call!22257)))

(assert (=> b!239321 (= e!155394 e!155401)))

(declare-fun b!239322 () Bool)

(declare-fun lt!120798 () Unit!7347)

(assert (=> b!239322 (= e!155399 lt!120798)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!340 (array!11870 array!11868 (_ BitVec 32) (_ BitVec 32) V!8041 V!8041 (_ BitVec 64) Int) Unit!7347)

(assert (=> b!239322 (= lt!120798 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!340 (_keys!6541 thiss!1504) (_values!4422 thiss!1504) (mask!10485 thiss!1504) (extraKeys!4176 thiss!1504) (zeroValue!4280 thiss!1504) (minValue!4280 thiss!1504) key!932 (defaultEntry!4439 thiss!1504)))))

(declare-fun c!39883 () Bool)

(assert (=> b!239322 (= c!39883 (is-MissingZero!1041 lt!120797))))

(assert (=> b!239322 e!155394))

(declare-fun b!239323 () Bool)

(declare-fun res!117305 () Bool)

(declare-fun e!155402 () Bool)

(assert (=> b!239323 (=> (not res!117305) (not e!155402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!239323 (= res!117305 (validMask!0 (mask!10485 thiss!1504)))))

(declare-fun res!117306 () Bool)

(assert (=> start!22942 (=> (not res!117306) (not e!155393))))

(declare-fun valid!1375 (LongMapFixedSize!3508) Bool)

(assert (=> start!22942 (= res!117306 (valid!1375 thiss!1504))))

(assert (=> start!22942 e!155393))

(declare-fun e!155395 () Bool)

(assert (=> start!22942 e!155395))

(assert (=> start!22942 true))

(declare-fun bm!22254 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22254 (= call!22257 (inRange!0 (ite c!39883 (index!6334 lt!120797) (index!6337 lt!120797)) (mask!10485 thiss!1504)))))

(declare-fun b!239324 () Bool)

(declare-fun e!155398 () Bool)

(declare-fun e!155392 () Bool)

(declare-fun mapRes!10674 () Bool)

(assert (=> b!239324 (= e!155398 (and e!155392 mapRes!10674))))

(declare-fun condMapEmpty!10674 () Bool)

(declare-fun mapDefault!10674 () ValueCell!2804)

