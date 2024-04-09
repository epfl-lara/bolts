; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22064 () Bool)

(assert start!22064)

(declare-fun b!227989 () Bool)

(declare-fun b_free!6119 () Bool)

(declare-fun b_next!6119 () Bool)

(assert (=> b!227989 (= b_free!6119 (not b_next!6119))))

(declare-fun tp!21498 () Bool)

(declare-fun b_and!13035 () Bool)

(assert (=> b!227989 (= tp!21498 b_and!13035)))

(declare-fun b!227977 () Bool)

(declare-fun res!112233 () Bool)

(declare-fun e!147918 () Bool)

(assert (=> b!227977 (=> (not res!112233) (not e!147918))))

(declare-fun call!21190 () Bool)

(assert (=> b!227977 (= res!112233 call!21190)))

(declare-fun e!147915 () Bool)

(assert (=> b!227977 (= e!147915 e!147918)))

(declare-fun b!227979 () Bool)

(declare-fun c!37790 () Bool)

(declare-datatypes ((SeekEntryResult!912 0))(
  ( (MissingZero!912 (index!5818 (_ BitVec 32))) (Found!912 (index!5819 (_ BitVec 32))) (Intermediate!912 (undefined!1724 Bool) (index!5820 (_ BitVec 32)) (x!23316 (_ BitVec 32))) (Undefined!912) (MissingVacant!912 (index!5821 (_ BitVec 32))) )
))
(declare-fun lt!114754 () SeekEntryResult!912)

(assert (=> b!227979 (= c!37790 (is-MissingVacant!912 lt!114754))))

(declare-fun e!147917 () Bool)

(assert (=> b!227979 (= e!147915 e!147917)))

(declare-datatypes ((V!7621 0))(
  ( (V!7622 (val!3035 Int)) )
))
(declare-datatypes ((ValueCell!2647 0))(
  ( (ValueCellFull!2647 (v!5051 V!7621)) (EmptyCell!2647) )
))
(declare-datatypes ((array!11204 0))(
  ( (array!11205 (arr!5321 (Array (_ BitVec 32) ValueCell!2647)) (size!5654 (_ BitVec 32))) )
))
(declare-datatypes ((array!11206 0))(
  ( (array!11207 (arr!5322 (Array (_ BitVec 32) (_ BitVec 64))) (size!5655 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3194 0))(
  ( (LongMapFixedSize!3195 (defaultEntry!4256 Int) (mask!10122 (_ BitVec 32)) (extraKeys!3993 (_ BitVec 32)) (zeroValue!4097 V!7621) (minValue!4097 V!7621) (_size!1646 (_ BitVec 32)) (_keys!6310 array!11206) (_values!4239 array!11204) (_vacant!1646 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3194)

(declare-fun bm!21186 () Bool)

(declare-fun c!37793 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21186 (= call!21190 (inRange!0 (ite c!37793 (index!5818 lt!114754) (index!5821 lt!114754)) (mask!10122 thiss!1504)))))

(declare-fun b!227980 () Bool)

(declare-fun res!112236 () Bool)

(declare-fun e!147912 () Bool)

(assert (=> b!227980 (=> res!112236 e!147912)))

(assert (=> b!227980 (= res!112236 (or (not (= (size!5654 (_values!4239 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10122 thiss!1504)))) (not (= (size!5655 (_keys!6310 thiss!1504)) (size!5654 (_values!4239 thiss!1504)))) (bvslt (mask!10122 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3993 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3993 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!227981 () Bool)

(assert (=> b!227981 (= e!147912 true)))

(declare-fun lt!114750 () Bool)

(declare-datatypes ((List!3423 0))(
  ( (Nil!3420) (Cons!3419 (h!4067 (_ BitVec 64)) (t!8390 List!3423)) )
))
(declare-fun arrayNoDuplicates!0 (array!11206 (_ BitVec 32) List!3423) Bool)

(assert (=> b!227981 (= lt!114750 (arrayNoDuplicates!0 (_keys!6310 thiss!1504) #b00000000000000000000000000000000 Nil!3420))))

(declare-fun b!227982 () Bool)

(declare-fun call!21189 () Bool)

(assert (=> b!227982 (= e!147918 (not call!21189))))

(declare-fun bm!21187 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11206 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21187 (= call!21189 (arrayContainsKey!0 (_keys!6310 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!227983 () Bool)

(declare-fun e!147914 () Bool)

(declare-fun e!147916 () Bool)

(assert (=> b!227983 (= e!147914 e!147916)))

(declare-fun res!112238 () Bool)

(assert (=> b!227983 (=> (not res!112238) (not e!147916))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!227983 (= res!112238 (or (= lt!114754 (MissingZero!912 index!297)) (= lt!114754 (MissingVacant!912 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11206 (_ BitVec 32)) SeekEntryResult!912)

(assert (=> b!227983 (= lt!114754 (seekEntryOrOpen!0 key!932 (_keys!6310 thiss!1504) (mask!10122 thiss!1504)))))

(declare-fun b!227984 () Bool)

(declare-datatypes ((Unit!6923 0))(
  ( (Unit!6924) )
))
(declare-fun e!147920 () Unit!6923)

(declare-fun Unit!6925 () Unit!6923)

(assert (=> b!227984 (= e!147920 Unit!6925)))

(declare-fun lt!114751 () Unit!6923)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!271 (array!11206 array!11204 (_ BitVec 32) (_ BitVec 32) V!7621 V!7621 (_ BitVec 64) Int) Unit!6923)

(assert (=> b!227984 (= lt!114751 (lemmaInListMapThenSeekEntryOrOpenFindsIt!271 (_keys!6310 thiss!1504) (_values!4239 thiss!1504) (mask!10122 thiss!1504) (extraKeys!3993 thiss!1504) (zeroValue!4097 thiss!1504) (minValue!4097 thiss!1504) key!932 (defaultEntry!4256 thiss!1504)))))

(assert (=> b!227984 false))

(declare-fun b!227985 () Bool)

(declare-fun res!112242 () Bool)

(assert (=> b!227985 (= res!112242 (= (select (arr!5322 (_keys!6310 thiss!1504)) (index!5821 lt!114754)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!147925 () Bool)

(assert (=> b!227985 (=> (not res!112242) (not e!147925))))

(declare-fun b!227986 () Bool)

(declare-fun e!147911 () Bool)

(declare-fun e!147924 () Bool)

(declare-fun mapRes!10141 () Bool)

(assert (=> b!227986 (= e!147911 (and e!147924 mapRes!10141))))

(declare-fun condMapEmpty!10141 () Bool)

(declare-fun mapDefault!10141 () ValueCell!2647)

