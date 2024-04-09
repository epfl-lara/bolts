; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22970 () Bool)

(assert start!22970)

(declare-fun b!240224 () Bool)

(declare-fun b_free!6461 () Bool)

(declare-fun b_next!6461 () Bool)

(assert (=> b!240224 (= b_free!6461 (not b_next!6461))))

(declare-fun tp!22587 () Bool)

(declare-fun b_and!13445 () Bool)

(assert (=> b!240224 (= tp!22587 b_and!13445)))

(declare-fun bm!22338 () Bool)

(declare-fun call!22342 () Bool)

(declare-datatypes ((V!8077 0))(
  ( (V!8078 (val!3206 Int)) )
))
(declare-datatypes ((ValueCell!2818 0))(
  ( (ValueCellFull!2818 (v!5240 V!8077)) (EmptyCell!2818) )
))
(declare-datatypes ((array!11924 0))(
  ( (array!11925 (arr!5663 (Array (_ BitVec 32) ValueCell!2818)) (size!6004 (_ BitVec 32))) )
))
(declare-datatypes ((array!11926 0))(
  ( (array!11927 (arr!5664 (Array (_ BitVec 32) (_ BitVec 64))) (size!6005 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3536 0))(
  ( (LongMapFixedSize!3537 (defaultEntry!4453 Int) (mask!10507 (_ BitVec 32)) (extraKeys!4190 (_ BitVec 32)) (zeroValue!4294 V!8077) (minValue!4294 V!8077) (_size!1817 (_ BitVec 32)) (_keys!6555 array!11926) (_values!4436 array!11924) (_vacant!1817 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3536)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22338 (= call!22342 (arrayContainsKey!0 (_keys!6555 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240207 () Bool)

(declare-datatypes ((Unit!7385 0))(
  ( (Unit!7386) )
))
(declare-fun e!155947 () Unit!7385)

(declare-fun Unit!7387 () Unit!7385)

(assert (=> b!240207 (= e!155947 Unit!7387)))

(declare-fun lt!120965 () Unit!7385)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!339 (array!11926 array!11924 (_ BitVec 32) (_ BitVec 32) V!8077 V!8077 (_ BitVec 64) Int) Unit!7385)

(assert (=> b!240207 (= lt!120965 (lemmaInListMapThenSeekEntryOrOpenFindsIt!339 (_keys!6555 thiss!1504) (_values!4436 thiss!1504) (mask!10507 thiss!1504) (extraKeys!4190 thiss!1504) (zeroValue!4294 thiss!1504) (minValue!4294 thiss!1504) key!932 (defaultEntry!4453 thiss!1504)))))

(assert (=> b!240207 false))

(declare-fun b!240208 () Bool)

(declare-fun e!155939 () Bool)

(assert (=> b!240208 (= e!155939 (not call!22342))))

(declare-fun b!240209 () Bool)

(declare-fun e!155940 () Bool)

(declare-fun e!155942 () Bool)

(assert (=> b!240209 (= e!155940 e!155942)))

(declare-fun res!117785 () Bool)

(declare-fun call!22341 () Bool)

(assert (=> b!240209 (= res!117785 call!22341)))

(assert (=> b!240209 (=> (not res!117785) (not e!155942))))

(declare-fun b!240210 () Bool)

(declare-fun res!117783 () Bool)

(declare-fun e!155936 () Bool)

(assert (=> b!240210 (=> (not res!117783) (not e!155936))))

(assert (=> b!240210 (= res!117783 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!240211 () Bool)

(declare-fun e!155948 () Bool)

(declare-fun e!155938 () Bool)

(declare-fun mapRes!10716 () Bool)

(assert (=> b!240211 (= e!155948 (and e!155938 mapRes!10716))))

(declare-fun condMapEmpty!10716 () Bool)

(declare-fun mapDefault!10716 () ValueCell!2818)

