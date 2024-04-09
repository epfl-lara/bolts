; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22084 () Bool)

(assert start!22084)

(declare-fun b!228689 () Bool)

(declare-fun b_free!6139 () Bool)

(declare-fun b_next!6139 () Bool)

(assert (=> b!228689 (= b_free!6139 (not b_next!6139))))

(declare-fun tp!21558 () Bool)

(declare-fun b_and!13055 () Bool)

(assert (=> b!228689 (= tp!21558 b_and!13055)))

(declare-fun c!37911 () Bool)

(declare-datatypes ((V!7649 0))(
  ( (V!7650 (val!3045 Int)) )
))
(declare-datatypes ((ValueCell!2657 0))(
  ( (ValueCellFull!2657 (v!5061 V!7649)) (EmptyCell!2657) )
))
(declare-datatypes ((array!11244 0))(
  ( (array!11245 (arr!5341 (Array (_ BitVec 32) ValueCell!2657)) (size!5674 (_ BitVec 32))) )
))
(declare-datatypes ((array!11246 0))(
  ( (array!11247 (arr!5342 (Array (_ BitVec 32) (_ BitVec 64))) (size!5675 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3214 0))(
  ( (LongMapFixedSize!3215 (defaultEntry!4266 Int) (mask!10140 (_ BitVec 32)) (extraKeys!4003 (_ BitVec 32)) (zeroValue!4107 V!7649) (minValue!4107 V!7649) (_size!1656 (_ BitVec 32)) (_keys!6320 array!11246) (_values!4249 array!11244) (_vacant!1656 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3214)

(declare-fun bm!21246 () Bool)

(declare-fun call!21250 () Bool)

(declare-datatypes ((SeekEntryResult!921 0))(
  ( (MissingZero!921 (index!5854 (_ BitVec 32))) (Found!921 (index!5855 (_ BitVec 32))) (Intermediate!921 (undefined!1733 Bool) (index!5856 (_ BitVec 32)) (x!23357 (_ BitVec 32))) (Undefined!921) (MissingVacant!921 (index!5857 (_ BitVec 32))) )
))
(declare-fun lt!115087 () SeekEntryResult!921)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21246 (= call!21250 (inRange!0 (ite c!37911 (index!5854 lt!115087) (index!5857 lt!115087)) (mask!10140 thiss!1504)))))

(declare-fun b!228668 () Bool)

(declare-fun e!148361 () Bool)

(declare-fun call!21249 () Bool)

(assert (=> b!228668 (= e!148361 (not call!21249))))

(declare-fun b!228669 () Bool)

(declare-fun e!148364 () Bool)

(declare-fun e!148366 () Bool)

(assert (=> b!228669 (= e!148364 (not e!148366))))

(declare-fun res!112569 () Bool)

(assert (=> b!228669 (=> res!112569 e!148366)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!228669 (= res!112569 (not (validMask!0 (mask!10140 thiss!1504))))))

(declare-fun lt!115079 () array!11246)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11246 (_ BitVec 32)) Bool)

(assert (=> b!228669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115079 (mask!10140 thiss!1504))))

(declare-datatypes ((Unit!6958 0))(
  ( (Unit!6959) )
))
(declare-fun lt!115083 () Unit!6958)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11246 (_ BitVec 32) (_ BitVec 32)) Unit!6958)

(assert (=> b!228669 (= lt!115083 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6320 thiss!1504) index!297 (mask!10140 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11246 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!228669 (= (arrayCountValidKeys!0 lt!115079 #b00000000000000000000000000000000 (size!5675 (_keys!6320 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6320 thiss!1504) #b00000000000000000000000000000000 (size!5675 (_keys!6320 thiss!1504)))))))

(declare-fun lt!115084 () Unit!6958)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11246 (_ BitVec 32) (_ BitVec 64)) Unit!6958)

(assert (=> b!228669 (= lt!115084 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6320 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3436 0))(
  ( (Nil!3433) (Cons!3432 (h!4080 (_ BitVec 64)) (t!8403 List!3436)) )
))
(declare-fun arrayNoDuplicates!0 (array!11246 (_ BitVec 32) List!3436) Bool)

(assert (=> b!228669 (arrayNoDuplicates!0 lt!115079 #b00000000000000000000000000000000 Nil!3433)))

(assert (=> b!228669 (= lt!115079 (array!11247 (store (arr!5342 (_keys!6320 thiss!1504)) index!297 key!932) (size!5675 (_keys!6320 thiss!1504))))))

(declare-fun lt!115086 () Unit!6958)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11246 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3436) Unit!6958)

(assert (=> b!228669 (= lt!115086 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6320 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3433))))

(declare-fun lt!115085 () Unit!6958)

(declare-fun e!148371 () Unit!6958)

(assert (=> b!228669 (= lt!115085 e!148371)))

(declare-fun c!37910 () Bool)

(declare-fun arrayContainsKey!0 (array!11246 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!228669 (= c!37910 (arrayContainsKey!0 (_keys!6320 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228670 () Bool)

(declare-fun e!148375 () Unit!6958)

(declare-fun lt!115080 () Unit!6958)

(assert (=> b!228670 (= e!148375 lt!115080)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!287 (array!11246 array!11244 (_ BitVec 32) (_ BitVec 32) V!7649 V!7649 (_ BitVec 64) Int) Unit!6958)

(assert (=> b!228670 (= lt!115080 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!287 (_keys!6320 thiss!1504) (_values!4249 thiss!1504) (mask!10140 thiss!1504) (extraKeys!4003 thiss!1504) (zeroValue!4107 thiss!1504) (minValue!4107 thiss!1504) key!932 (defaultEntry!4266 thiss!1504)))))

(assert (=> b!228670 (= c!37911 (is-MissingZero!921 lt!115087))))

(declare-fun e!148368 () Bool)

(assert (=> b!228670 e!148368))

(declare-fun b!228671 () Bool)

(declare-fun res!112565 () Bool)

(declare-fun e!148369 () Bool)

(assert (=> b!228671 (=> (not res!112565) (not e!148369))))

(assert (=> b!228671 (= res!112565 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!228672 () Bool)

(declare-fun res!112563 () Bool)

(assert (=> b!228672 (=> res!112563 e!148366)))

(assert (=> b!228672 (= res!112563 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6320 thiss!1504) (mask!10140 thiss!1504))))))

(declare-fun b!228673 () Bool)

(declare-fun e!148362 () Bool)

(declare-fun tp_is_empty!6001 () Bool)

(assert (=> b!228673 (= e!148362 tp_is_empty!6001)))

(declare-fun b!228674 () Bool)

(declare-fun e!148365 () Bool)

(declare-fun mapRes!10171 () Bool)

(assert (=> b!228674 (= e!148365 (and e!148362 mapRes!10171))))

(declare-fun condMapEmpty!10171 () Bool)

(declare-fun mapDefault!10171 () ValueCell!2657)

