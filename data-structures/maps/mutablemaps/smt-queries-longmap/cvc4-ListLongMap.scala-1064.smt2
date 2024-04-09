; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22082 () Bool)

(assert start!22082)

(declare-fun b!228616 () Bool)

(declare-fun b_free!6137 () Bool)

(declare-fun b_next!6137 () Bool)

(assert (=> b!228616 (= b_free!6137 (not b_next!6137))))

(declare-fun tp!21553 () Bool)

(declare-fun b_and!13053 () Bool)

(assert (=> b!228616 (= tp!21553 b_and!13053)))

(declare-fun b!228598 () Bool)

(declare-fun res!112540 () Bool)

(declare-fun e!148317 () Bool)

(assert (=> b!228598 (=> res!112540 e!148317)))

(declare-datatypes ((V!7645 0))(
  ( (V!7646 (val!3044 Int)) )
))
(declare-datatypes ((ValueCell!2656 0))(
  ( (ValueCellFull!2656 (v!5060 V!7645)) (EmptyCell!2656) )
))
(declare-datatypes ((array!11240 0))(
  ( (array!11241 (arr!5339 (Array (_ BitVec 32) ValueCell!2656)) (size!5672 (_ BitVec 32))) )
))
(declare-datatypes ((array!11242 0))(
  ( (array!11243 (arr!5340 (Array (_ BitVec 32) (_ BitVec 64))) (size!5673 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3212 0))(
  ( (LongMapFixedSize!3213 (defaultEntry!4265 Int) (mask!10137 (_ BitVec 32)) (extraKeys!4002 (_ BitVec 32)) (zeroValue!4106 V!7645) (minValue!4106 V!7645) (_size!1655 (_ BitVec 32)) (_keys!6319 array!11242) (_values!4248 array!11240) (_vacant!1655 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3212)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11242 (_ BitVec 32)) Bool)

(assert (=> b!228598 (= res!112540 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6319 thiss!1504) (mask!10137 thiss!1504))))))

(declare-fun b!228600 () Bool)

(declare-datatypes ((Unit!6955 0))(
  ( (Unit!6956) )
))
(declare-fun e!148329 () Unit!6955)

(declare-fun Unit!6957 () Unit!6955)

(assert (=> b!228600 (= e!148329 Unit!6957)))

(declare-fun lt!115047 () Unit!6955)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!275 (array!11242 array!11240 (_ BitVec 32) (_ BitVec 32) V!7645 V!7645 (_ BitVec 64) Int) Unit!6955)

(assert (=> b!228600 (= lt!115047 (lemmaInListMapThenSeekEntryOrOpenFindsIt!275 (_keys!6319 thiss!1504) (_values!4248 thiss!1504) (mask!10137 thiss!1504) (extraKeys!4002 thiss!1504) (zeroValue!4106 thiss!1504) (minValue!4106 thiss!1504) key!932 (defaultEntry!4265 thiss!1504)))))

(assert (=> b!228600 false))

(declare-fun b!228601 () Bool)

(declare-fun c!37901 () Bool)

(declare-datatypes ((SeekEntryResult!920 0))(
  ( (MissingZero!920 (index!5850 (_ BitVec 32))) (Found!920 (index!5851 (_ BitVec 32))) (Intermediate!920 (undefined!1732 Bool) (index!5852 (_ BitVec 32)) (x!23348 (_ BitVec 32))) (Undefined!920) (MissingVacant!920 (index!5853 (_ BitVec 32))) )
))
(declare-fun lt!115051 () SeekEntryResult!920)

(assert (=> b!228601 (= c!37901 (is-MissingVacant!920 lt!115051))))

(declare-fun e!148318 () Bool)

(declare-fun e!148327 () Bool)

(assert (=> b!228601 (= e!148318 e!148327)))

(declare-fun bm!21240 () Bool)

(declare-fun call!21244 () Bool)

(declare-fun c!37900 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21240 (= call!21244 (inRange!0 (ite c!37900 (index!5850 lt!115051) (index!5853 lt!115051)) (mask!10137 thiss!1504)))))

(declare-fun mapIsEmpty!10168 () Bool)

(declare-fun mapRes!10168 () Bool)

(assert (=> mapIsEmpty!10168 mapRes!10168))

(declare-fun b!228602 () Bool)

(declare-fun e!148316 () Bool)

(declare-fun e!148330 () Bool)

(assert (=> b!228602 (= e!148316 (and e!148330 mapRes!10168))))

(declare-fun condMapEmpty!10168 () Bool)

(declare-fun mapDefault!10168 () ValueCell!2656)

