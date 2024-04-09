; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22034 () Bool)

(assert start!22034)

(declare-fun b!226959 () Bool)

(declare-fun b_free!6089 () Bool)

(declare-fun b_next!6089 () Bool)

(assert (=> b!226959 (= b_free!6089 (not b_next!6089))))

(declare-fun tp!21409 () Bool)

(declare-fun b_and!13005 () Bool)

(assert (=> b!226959 (= tp!21409 b_and!13005)))

(declare-fun b!226942 () Bool)

(declare-fun res!111742 () Bool)

(declare-fun e!147248 () Bool)

(assert (=> b!226942 (=> (not res!111742) (not e!147248))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!226942 (= res!111742 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!226943 () Bool)

(declare-fun e!147250 () Bool)

(declare-fun tp_is_empty!5951 () Bool)

(assert (=> b!226943 (= e!147250 tp_is_empty!5951)))

(declare-fun b!226944 () Bool)

(declare-fun e!147237 () Bool)

(declare-fun e!147247 () Bool)

(assert (=> b!226944 (= e!147237 (not e!147247))))

(declare-fun res!111743 () Bool)

(assert (=> b!226944 (=> res!111743 e!147247)))

(declare-datatypes ((V!7581 0))(
  ( (V!7582 (val!3020 Int)) )
))
(declare-datatypes ((ValueCell!2632 0))(
  ( (ValueCellFull!2632 (v!5036 V!7581)) (EmptyCell!2632) )
))
(declare-datatypes ((array!11144 0))(
  ( (array!11145 (arr!5291 (Array (_ BitVec 32) ValueCell!2632)) (size!5624 (_ BitVec 32))) )
))
(declare-datatypes ((array!11146 0))(
  ( (array!11147 (arr!5292 (Array (_ BitVec 32) (_ BitVec 64))) (size!5625 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3164 0))(
  ( (LongMapFixedSize!3165 (defaultEntry!4241 Int) (mask!10097 (_ BitVec 32)) (extraKeys!3978 (_ BitVec 32)) (zeroValue!4082 V!7581) (minValue!4082 V!7581) (_size!1631 (_ BitVec 32)) (_keys!6295 array!11146) (_values!4224 array!11144) (_vacant!1631 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3164)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!226944 (= res!111743 (not (validMask!0 (mask!10097 thiss!1504))))))

(declare-fun lt!114256 () array!11146)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11146 (_ BitVec 32)) Bool)

(assert (=> b!226944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114256 (mask!10097 thiss!1504))))

(declare-datatypes ((Unit!6875 0))(
  ( (Unit!6876) )
))
(declare-fun lt!114264 () Unit!6875)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11146 (_ BitVec 32) (_ BitVec 32)) Unit!6875)

(assert (=> b!226944 (= lt!114264 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6295 thiss!1504) index!297 (mask!10097 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11146 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!226944 (= (arrayCountValidKeys!0 lt!114256 #b00000000000000000000000000000000 (size!5625 (_keys!6295 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6295 thiss!1504) #b00000000000000000000000000000000 (size!5625 (_keys!6295 thiss!1504)))))))

(declare-fun lt!114257 () Unit!6875)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11146 (_ BitVec 32) (_ BitVec 64)) Unit!6875)

(assert (=> b!226944 (= lt!114257 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6295 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3404 0))(
  ( (Nil!3401) (Cons!3400 (h!4048 (_ BitVec 64)) (t!8371 List!3404)) )
))
(declare-fun arrayNoDuplicates!0 (array!11146 (_ BitVec 32) List!3404) Bool)

(assert (=> b!226944 (arrayNoDuplicates!0 lt!114256 #b00000000000000000000000000000000 Nil!3401)))

(assert (=> b!226944 (= lt!114256 (array!11147 (store (arr!5292 (_keys!6295 thiss!1504)) index!297 key!932) (size!5625 (_keys!6295 thiss!1504))))))

(declare-fun lt!114259 () Unit!6875)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11146 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3404) Unit!6875)

(assert (=> b!226944 (= lt!114259 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6295 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3401))))

(declare-fun lt!114255 () Unit!6875)

(declare-fun e!147243 () Unit!6875)

(assert (=> b!226944 (= lt!114255 e!147243)))

(declare-fun c!37611 () Bool)

(declare-fun arrayContainsKey!0 (array!11146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!226944 (= c!37611 (arrayContainsKey!0 (_keys!6295 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226945 () Bool)

(assert (=> b!226945 (= e!147247 true)))

(declare-fun lt!114254 () Bool)

(assert (=> b!226945 (= lt!114254 (arrayNoDuplicates!0 (_keys!6295 thiss!1504) #b00000000000000000000000000000000 Nil!3401))))

(declare-fun b!226946 () Bool)

(declare-fun e!147246 () Bool)

(declare-fun call!21099 () Bool)

(assert (=> b!226946 (= e!147246 (not call!21099))))

(declare-fun b!226947 () Bool)

(declare-fun e!147249 () Bool)

(declare-datatypes ((SeekEntryResult!900 0))(
  ( (MissingZero!900 (index!5770 (_ BitVec 32))) (Found!900 (index!5771 (_ BitVec 32))) (Intermediate!900 (undefined!1712 Bool) (index!5772 (_ BitVec 32)) (x!23264 (_ BitVec 32))) (Undefined!900) (MissingVacant!900 (index!5773 (_ BitVec 32))) )
))
(declare-fun lt!114261 () SeekEntryResult!900)

(assert (=> b!226947 (= e!147249 (is-Undefined!900 lt!114261))))

(declare-fun b!226948 () Bool)

(declare-fun e!147239 () Bool)

(declare-fun mapRes!10096 () Bool)

(assert (=> b!226948 (= e!147239 (and e!147250 mapRes!10096))))

(declare-fun condMapEmpty!10096 () Bool)

(declare-fun mapDefault!10096 () ValueCell!2632)

