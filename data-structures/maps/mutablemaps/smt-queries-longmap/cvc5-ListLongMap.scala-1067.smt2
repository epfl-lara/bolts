; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22096 () Bool)

(assert start!22096)

(declare-fun b!229094 () Bool)

(declare-fun b_free!6151 () Bool)

(declare-fun b_next!6151 () Bool)

(assert (=> b!229094 (= b_free!6151 (not b_next!6151))))

(declare-fun tp!21595 () Bool)

(declare-fun b_and!13067 () Bool)

(assert (=> b!229094 (= tp!21595 b_and!13067)))

(declare-fun b!229081 () Bool)

(declare-fun res!112767 () Bool)

(declare-fun e!148637 () Bool)

(assert (=> b!229081 (=> (not res!112767) (not e!148637))))

(declare-datatypes ((V!7665 0))(
  ( (V!7666 (val!3051 Int)) )
))
(declare-datatypes ((ValueCell!2663 0))(
  ( (ValueCellFull!2663 (v!5067 V!7665)) (EmptyCell!2663) )
))
(declare-datatypes ((array!11268 0))(
  ( (array!11269 (arr!5353 (Array (_ BitVec 32) ValueCell!2663)) (size!5686 (_ BitVec 32))) )
))
(declare-datatypes ((array!11270 0))(
  ( (array!11271 (arr!5354 (Array (_ BitVec 32) (_ BitVec 64))) (size!5687 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3226 0))(
  ( (LongMapFixedSize!3227 (defaultEntry!4272 Int) (mask!10150 (_ BitVec 32)) (extraKeys!4009 (_ BitVec 32)) (zeroValue!4113 V!7665) (minValue!4113 V!7665) (_size!1662 (_ BitVec 32)) (_keys!6326 array!11270) (_values!4255 array!11268) (_vacant!1662 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3226)

(declare-datatypes ((SeekEntryResult!927 0))(
  ( (MissingZero!927 (index!5878 (_ BitVec 32))) (Found!927 (index!5879 (_ BitVec 32))) (Intermediate!927 (undefined!1739 Bool) (index!5880 (_ BitVec 32)) (x!23379 (_ BitVec 32))) (Undefined!927) (MissingVacant!927 (index!5881 (_ BitVec 32))) )
))
(declare-fun lt!115281 () SeekEntryResult!927)

(assert (=> b!229081 (= res!112767 (= (select (arr!5354 (_keys!6326 thiss!1504)) (index!5878 lt!115281)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!229082 () Bool)

(declare-datatypes ((Unit!6979 0))(
  ( (Unit!6980) )
))
(declare-fun e!148634 () Unit!6979)

(declare-fun lt!115286 () Unit!6979)

(assert (=> b!229082 (= e!148634 lt!115286)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!293 (array!11270 array!11268 (_ BitVec 32) (_ BitVec 32) V!7665 V!7665 (_ BitVec 64) Int) Unit!6979)

(assert (=> b!229082 (= lt!115286 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!293 (_keys!6326 thiss!1504) (_values!4255 thiss!1504) (mask!10150 thiss!1504) (extraKeys!4009 thiss!1504) (zeroValue!4113 thiss!1504) (minValue!4113 thiss!1504) key!932 (defaultEntry!4272 thiss!1504)))))

(declare-fun c!37982 () Bool)

(assert (=> b!229082 (= c!37982 (is-MissingZero!927 lt!115281))))

(declare-fun e!148631 () Bool)

(assert (=> b!229082 e!148631))

(declare-fun b!229083 () Bool)

(declare-fun e!148644 () Unit!6979)

(declare-fun Unit!6981 () Unit!6979)

(assert (=> b!229083 (= e!148644 Unit!6981)))

(declare-fun b!229084 () Bool)

(declare-fun e!148636 () Bool)

(declare-fun e!148633 () Bool)

(assert (=> b!229084 (= e!148636 (not e!148633))))

(declare-fun res!112769 () Bool)

(assert (=> b!229084 (=> res!112769 e!148633)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!229084 (= res!112769 (not (validMask!0 (mask!10150 thiss!1504))))))

(declare-fun lt!115287 () array!11270)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11270 (_ BitVec 32)) Bool)

(assert (=> b!229084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115287 (mask!10150 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lt!115280 () Unit!6979)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11270 (_ BitVec 32) (_ BitVec 32)) Unit!6979)

(assert (=> b!229084 (= lt!115280 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6326 thiss!1504) index!297 (mask!10150 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11270 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!229084 (= (arrayCountValidKeys!0 lt!115287 #b00000000000000000000000000000000 (size!5687 (_keys!6326 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6326 thiss!1504) #b00000000000000000000000000000000 (size!5687 (_keys!6326 thiss!1504)))))))

(declare-fun lt!115283 () Unit!6979)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11270 (_ BitVec 32) (_ BitVec 64)) Unit!6979)

(assert (=> b!229084 (= lt!115283 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6326 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3445 0))(
  ( (Nil!3442) (Cons!3441 (h!4089 (_ BitVec 64)) (t!8412 List!3445)) )
))
(declare-fun arrayNoDuplicates!0 (array!11270 (_ BitVec 32) List!3445) Bool)

(assert (=> b!229084 (arrayNoDuplicates!0 lt!115287 #b00000000000000000000000000000000 Nil!3442)))

(assert (=> b!229084 (= lt!115287 (array!11271 (store (arr!5354 (_keys!6326 thiss!1504)) index!297 key!932) (size!5687 (_keys!6326 thiss!1504))))))

(declare-fun lt!115284 () Unit!6979)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11270 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3445) Unit!6979)

(assert (=> b!229084 (= lt!115284 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6326 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3442))))

(declare-fun lt!115277 () Unit!6979)

(assert (=> b!229084 (= lt!115277 e!148644)))

(declare-fun c!37985 () Bool)

(declare-fun arrayContainsKey!0 (array!11270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!229084 (= c!37985 (arrayContainsKey!0 (_keys!6326 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229085 () Bool)

(declare-fun res!112763 () Bool)

(assert (=> b!229085 (=> res!112763 e!148633)))

(assert (=> b!229085 (= res!112763 (or (not (= (size!5686 (_values!4255 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10150 thiss!1504)))) (not (= (size!5687 (_keys!6326 thiss!1504)) (size!5686 (_values!4255 thiss!1504)))) (bvslt (mask!10150 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4009 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4009 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!112762 () Bool)

(declare-fun e!148643 () Bool)

(assert (=> start!22096 (=> (not res!112762) (not e!148643))))

(declare-fun valid!1279 (LongMapFixedSize!3226) Bool)

(assert (=> start!22096 (= res!112762 (valid!1279 thiss!1504))))

(assert (=> start!22096 e!148643))

(declare-fun e!148642 () Bool)

(assert (=> start!22096 e!148642))

(assert (=> start!22096 true))

(declare-fun b!229086 () Bool)

(declare-fun res!112761 () Bool)

(assert (=> b!229086 (=> (not res!112761) (not e!148637))))

(declare-fun call!21285 () Bool)

(assert (=> b!229086 (= res!112761 call!21285)))

(assert (=> b!229086 (= e!148631 e!148637)))

(declare-fun bm!21282 () Bool)

(declare-fun call!21286 () Bool)

(assert (=> bm!21282 (= call!21286 (arrayContainsKey!0 (_keys!6326 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229087 () Bool)

(declare-fun e!148639 () Bool)

(assert (=> b!229087 (= e!148643 e!148639)))

(declare-fun res!112766 () Bool)

(assert (=> b!229087 (=> (not res!112766) (not e!148639))))

(assert (=> b!229087 (= res!112766 (or (= lt!115281 (MissingZero!927 index!297)) (= lt!115281 (MissingVacant!927 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11270 (_ BitVec 32)) SeekEntryResult!927)

(assert (=> b!229087 (= lt!115281 (seekEntryOrOpen!0 key!932 (_keys!6326 thiss!1504) (mask!10150 thiss!1504)))))

(declare-fun b!229088 () Bool)

(declare-fun e!148632 () Bool)

(assert (=> b!229088 (= e!148632 (is-Undefined!927 lt!115281))))

(declare-fun b!229089 () Bool)

(declare-fun c!37983 () Bool)

(assert (=> b!229089 (= c!37983 (is-MissingVacant!927 lt!115281))))

(assert (=> b!229089 (= e!148631 e!148632)))

(declare-fun b!229090 () Bool)

(declare-fun e!148638 () Bool)

(assert (=> b!229090 (= e!148632 e!148638)))

(declare-fun res!112770 () Bool)

(assert (=> b!229090 (= res!112770 call!21285)))

(assert (=> b!229090 (=> (not res!112770) (not e!148638))))

(declare-fun bm!21283 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21283 (= call!21285 (inRange!0 (ite c!37982 (index!5878 lt!115281) (index!5881 lt!115281)) (mask!10150 thiss!1504)))))

(declare-fun b!229091 () Bool)

(declare-fun e!148641 () Bool)

(declare-fun tp_is_empty!6013 () Bool)

(assert (=> b!229091 (= e!148641 tp_is_empty!6013)))

(declare-fun b!229092 () Bool)

(assert (=> b!229092 (= e!148639 e!148636)))

(declare-fun res!112768 () Bool)

(assert (=> b!229092 (=> (not res!112768) (not e!148636))))

(assert (=> b!229092 (= res!112768 (inRange!0 index!297 (mask!10150 thiss!1504)))))

(declare-fun lt!115278 () Unit!6979)

(assert (=> b!229092 (= lt!115278 e!148634)))

(declare-fun c!37984 () Bool)

(declare-datatypes ((tuple2!4498 0))(
  ( (tuple2!4499 (_1!2259 (_ BitVec 64)) (_2!2259 V!7665)) )
))
(declare-datatypes ((List!3446 0))(
  ( (Nil!3443) (Cons!3442 (h!4090 tuple2!4498) (t!8413 List!3446)) )
))
(declare-datatypes ((ListLongMap!3425 0))(
  ( (ListLongMap!3426 (toList!1728 List!3446)) )
))
(declare-fun contains!1596 (ListLongMap!3425 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1251 (array!11270 array!11268 (_ BitVec 32) (_ BitVec 32) V!7665 V!7665 (_ BitVec 32) Int) ListLongMap!3425)

(assert (=> b!229092 (= c!37984 (contains!1596 (getCurrentListMap!1251 (_keys!6326 thiss!1504) (_values!4255 thiss!1504) (mask!10150 thiss!1504) (extraKeys!4009 thiss!1504) (zeroValue!4113 thiss!1504) (minValue!4113 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4272 thiss!1504)) key!932))))

(declare-fun b!229093 () Bool)

(assert (=> b!229093 (= e!148633 true)))

(declare-fun lt!115279 () Bool)

(assert (=> b!229093 (= lt!115279 (arrayNoDuplicates!0 (_keys!6326 thiss!1504) #b00000000000000000000000000000000 Nil!3442))))

(declare-fun e!148645 () Bool)

(declare-fun array_inv!3527 (array!11270) Bool)

(declare-fun array_inv!3528 (array!11268) Bool)

(assert (=> b!229094 (= e!148642 (and tp!21595 tp_is_empty!6013 (array_inv!3527 (_keys!6326 thiss!1504)) (array_inv!3528 (_values!4255 thiss!1504)) e!148645))))

(declare-fun b!229095 () Bool)

(declare-fun mapRes!10189 () Bool)

(assert (=> b!229095 (= e!148645 (and e!148641 mapRes!10189))))

(declare-fun condMapEmpty!10189 () Bool)

(declare-fun mapDefault!10189 () ValueCell!2663)

