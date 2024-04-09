; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24390 () Bool)

(assert start!24390)

(declare-fun b!255353 () Bool)

(declare-fun b_free!6703 () Bool)

(declare-fun b_next!6703 () Bool)

(assert (=> b!255353 (= b_free!6703 (not b_next!6703))))

(declare-fun tp!23402 () Bool)

(declare-fun b_and!13771 () Bool)

(assert (=> b!255353 (= tp!23402 b_and!13771)))

(declare-fun b!255352 () Bool)

(declare-fun res!124984 () Bool)

(declare-fun e!165536 () Bool)

(assert (=> b!255352 (=> (not res!124984) (not e!165536))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!255352 (= res!124984 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!165534 () Bool)

(declare-datatypes ((V!8401 0))(
  ( (V!8402 (val!3327 Int)) )
))
(declare-datatypes ((ValueCell!2939 0))(
  ( (ValueCellFull!2939 (v!5403 V!8401)) (EmptyCell!2939) )
))
(declare-datatypes ((array!12464 0))(
  ( (array!12465 (arr!5905 (Array (_ BitVec 32) ValueCell!2939)) (size!6252 (_ BitVec 32))) )
))
(declare-datatypes ((array!12466 0))(
  ( (array!12467 (arr!5906 (Array (_ BitVec 32) (_ BitVec 64))) (size!6253 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3778 0))(
  ( (LongMapFixedSize!3779 (defaultEntry!4712 Int) (mask!10972 (_ BitVec 32)) (extraKeys!4449 (_ BitVec 32)) (zeroValue!4553 V!8401) (minValue!4553 V!8401) (_size!1938 (_ BitVec 32)) (_keys!6870 array!12466) (_values!4695 array!12464) (_vacant!1938 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3778)

(declare-fun e!165540 () Bool)

(declare-fun tp_is_empty!6565 () Bool)

(declare-fun array_inv!3895 (array!12466) Bool)

(declare-fun array_inv!3896 (array!12464) Bool)

(assert (=> b!255353 (= e!165534 (and tp!23402 tp_is_empty!6565 (array_inv!3895 (_keys!6870 thiss!1504)) (array_inv!3896 (_values!4695 thiss!1504)) e!165540))))

(declare-fun mapIsEmpty!11169 () Bool)

(declare-fun mapRes!11169 () Bool)

(assert (=> mapIsEmpty!11169 mapRes!11169))

(declare-fun res!124987 () Bool)

(assert (=> start!24390 (=> (not res!124987) (not e!165536))))

(declare-fun valid!1469 (LongMapFixedSize!3778) Bool)

(assert (=> start!24390 (= res!124987 (valid!1469 thiss!1504))))

(assert (=> start!24390 e!165536))

(assert (=> start!24390 e!165534))

(assert (=> start!24390 true))

(assert (=> start!24390 tp_is_empty!6565))

(declare-fun bm!24137 () Bool)

(declare-fun call!24141 () Bool)

(declare-fun arrayContainsKey!0 (array!12466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24137 (= call!24141 (arrayContainsKey!0 (_keys!6870 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!255354 () Bool)

(declare-fun res!124988 () Bool)

(declare-datatypes ((SeekEntryResult!1167 0))(
  ( (MissingZero!1167 (index!6838 (_ BitVec 32))) (Found!1167 (index!6839 (_ BitVec 32))) (Intermediate!1167 (undefined!1979 Bool) (index!6840 (_ BitVec 32)) (x!24927 (_ BitVec 32))) (Undefined!1167) (MissingVacant!1167 (index!6841 (_ BitVec 32))) )
))
(declare-fun lt!128117 () SeekEntryResult!1167)

(assert (=> b!255354 (= res!124988 (= (select (arr!5906 (_keys!6870 thiss!1504)) (index!6841 lt!128117)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!165537 () Bool)

(assert (=> b!255354 (=> (not res!124988) (not e!165537))))

(declare-fun b!255355 () Bool)

(declare-fun res!124985 () Bool)

(declare-fun e!165535 () Bool)

(assert (=> b!255355 (=> (not res!124985) (not e!165535))))

(assert (=> b!255355 (= res!124985 (= (select (arr!5906 (_keys!6870 thiss!1504)) (index!6838 lt!128117)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!255356 () Bool)

(assert (=> b!255356 (= e!165535 (not call!24141))))

(declare-fun b!255357 () Bool)

(assert (=> b!255357 (= e!165537 (not call!24141))))

(declare-fun b!255358 () Bool)

(declare-fun c!43100 () Bool)

(assert (=> b!255358 (= c!43100 (is-MissingVacant!1167 lt!128117))))

(declare-fun e!165527 () Bool)

(declare-fun e!165530 () Bool)

(assert (=> b!255358 (= e!165527 e!165530)))

(declare-fun b!255359 () Bool)

(declare-datatypes ((Unit!7922 0))(
  ( (Unit!7923) )
))
(declare-fun e!165529 () Unit!7922)

(declare-fun Unit!7924 () Unit!7922)

(assert (=> b!255359 (= e!165529 Unit!7924)))

(declare-fun b!255360 () Bool)

(declare-fun e!165528 () Bool)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!255360 (= e!165528 (not (or (bvslt index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6253 (_keys!6870 thiss!1504))))))))

(declare-fun lt!128120 () array!12466)

(declare-fun v!346 () V!8401)

(declare-datatypes ((tuple2!4896 0))(
  ( (tuple2!4897 (_1!2458 (_ BitVec 64)) (_2!2458 V!8401)) )
))
(declare-datatypes ((List!3800 0))(
  ( (Nil!3797) (Cons!3796 (h!4458 tuple2!4896) (t!8859 List!3800)) )
))
(declare-datatypes ((ListLongMap!3823 0))(
  ( (ListLongMap!3824 (toList!1927 List!3800)) )
))
(declare-fun lt!128128 () ListLongMap!3823)

(declare-fun +!672 (ListLongMap!3823 tuple2!4896) ListLongMap!3823)

(declare-fun getCurrentListMap!1450 (array!12466 array!12464 (_ BitVec 32) (_ BitVec 32) V!8401 V!8401 (_ BitVec 32) Int) ListLongMap!3823)

(assert (=> b!255360 (= (+!672 lt!128128 (tuple2!4897 key!932 v!346)) (getCurrentListMap!1450 lt!128120 (array!12465 (store (arr!5905 (_values!4695 thiss!1504)) index!297 (ValueCellFull!2939 v!346)) (size!6252 (_values!4695 thiss!1504))) (mask!10972 thiss!1504) (extraKeys!4449 thiss!1504) (zeroValue!4553 thiss!1504) (minValue!4553 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4712 thiss!1504)))))

(declare-fun lt!128123 () Unit!7922)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!87 (array!12466 array!12464 (_ BitVec 32) (_ BitVec 32) V!8401 V!8401 (_ BitVec 32) (_ BitVec 64) V!8401 Int) Unit!7922)

(assert (=> b!255360 (= lt!128123 (lemmaAddValidKeyToArrayThenAddPairToListMap!87 (_keys!6870 thiss!1504) (_values!4695 thiss!1504) (mask!10972 thiss!1504) (extraKeys!4449 thiss!1504) (zeroValue!4553 thiss!1504) (minValue!4553 thiss!1504) index!297 key!932 v!346 (defaultEntry!4712 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12466 (_ BitVec 32)) Bool)

(assert (=> b!255360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!128120 (mask!10972 thiss!1504))))

(declare-fun lt!128118 () Unit!7922)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12466 (_ BitVec 32) (_ BitVec 32)) Unit!7922)

(assert (=> b!255360 (= lt!128118 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6870 thiss!1504) index!297 (mask!10972 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12466 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!255360 (= (arrayCountValidKeys!0 lt!128120 #b00000000000000000000000000000000 (size!6253 (_keys!6870 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6870 thiss!1504) #b00000000000000000000000000000000 (size!6253 (_keys!6870 thiss!1504)))))))

(declare-fun lt!128124 () Unit!7922)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12466 (_ BitVec 32) (_ BitVec 64)) Unit!7922)

(assert (=> b!255360 (= lt!128124 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6870 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3801 0))(
  ( (Nil!3798) (Cons!3797 (h!4459 (_ BitVec 64)) (t!8860 List!3801)) )
))
(declare-fun arrayNoDuplicates!0 (array!12466 (_ BitVec 32) List!3801) Bool)

(assert (=> b!255360 (arrayNoDuplicates!0 lt!128120 #b00000000000000000000000000000000 Nil!3798)))

(assert (=> b!255360 (= lt!128120 (array!12467 (store (arr!5906 (_keys!6870 thiss!1504)) index!297 key!932) (size!6253 (_keys!6870 thiss!1504))))))

(declare-fun lt!128122 () Unit!7922)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12466 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3801) Unit!7922)

(assert (=> b!255360 (= lt!128122 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6870 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3798))))

(declare-fun lt!128126 () Unit!7922)

(assert (=> b!255360 (= lt!128126 e!165529)))

(declare-fun c!43101 () Bool)

(assert (=> b!255360 (= c!43101 (arrayContainsKey!0 (_keys!6870 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!255361 () Bool)

(declare-fun e!165539 () Bool)

(assert (=> b!255361 (= e!165539 e!165528)))

(declare-fun res!124982 () Bool)

(assert (=> b!255361 (=> (not res!124982) (not e!165528))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!255361 (= res!124982 (inRange!0 index!297 (mask!10972 thiss!1504)))))

(declare-fun lt!128119 () Unit!7922)

(declare-fun e!165533 () Unit!7922)

(assert (=> b!255361 (= lt!128119 e!165533)))

(declare-fun c!43103 () Bool)

(declare-fun contains!1855 (ListLongMap!3823 (_ BitVec 64)) Bool)

(assert (=> b!255361 (= c!43103 (contains!1855 lt!128128 key!932))))

(assert (=> b!255361 (= lt!128128 (getCurrentListMap!1450 (_keys!6870 thiss!1504) (_values!4695 thiss!1504) (mask!10972 thiss!1504) (extraKeys!4449 thiss!1504) (zeroValue!4553 thiss!1504) (minValue!4553 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4712 thiss!1504)))))

(declare-fun b!255362 () Bool)

(declare-fun e!165532 () Bool)

(assert (=> b!255362 (= e!165532 tp_is_empty!6565)))

(declare-fun b!255363 () Bool)

(declare-fun e!165531 () Bool)

(assert (=> b!255363 (= e!165540 (and e!165531 mapRes!11169))))

(declare-fun condMapEmpty!11169 () Bool)

(declare-fun mapDefault!11169 () ValueCell!2939)

