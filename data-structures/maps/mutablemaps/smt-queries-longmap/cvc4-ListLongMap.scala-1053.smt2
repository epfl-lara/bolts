; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22016 () Bool)

(assert start!22016)

(declare-fun b!226289 () Bool)

(declare-fun b_free!6071 () Bool)

(declare-fun b_next!6071 () Bool)

(assert (=> b!226289 (= b_free!6071 (not b_next!6071))))

(declare-fun tp!21354 () Bool)

(declare-fun b_and!12987 () Bool)

(assert (=> b!226289 (= tp!21354 b_and!12987)))

(declare-fun b!226283 () Bool)

(declare-fun e!146833 () Bool)

(declare-fun call!21045 () Bool)

(assert (=> b!226283 (= e!146833 (not call!21045))))

(declare-fun b!226284 () Bool)

(declare-fun res!111404 () Bool)

(declare-fun e!146835 () Bool)

(assert (=> b!226284 (=> res!111404 e!146835)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!226284 (= res!111404 (not (validKeyInArray!0 key!932)))))

(declare-fun mapNonEmpty!10069 () Bool)

(declare-fun mapRes!10069 () Bool)

(declare-fun tp!21355 () Bool)

(declare-fun e!146837 () Bool)

(assert (=> mapNonEmpty!10069 (= mapRes!10069 (and tp!21355 e!146837))))

(declare-datatypes ((V!7557 0))(
  ( (V!7558 (val!3011 Int)) )
))
(declare-datatypes ((ValueCell!2623 0))(
  ( (ValueCellFull!2623 (v!5027 V!7557)) (EmptyCell!2623) )
))
(declare-fun mapValue!10069 () ValueCell!2623)

(declare-fun mapKey!10069 () (_ BitVec 32))

(declare-datatypes ((array!11108 0))(
  ( (array!11109 (arr!5273 (Array (_ BitVec 32) ValueCell!2623)) (size!5606 (_ BitVec 32))) )
))
(declare-datatypes ((array!11110 0))(
  ( (array!11111 (arr!5274 (Array (_ BitVec 32) (_ BitVec 64))) (size!5607 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3146 0))(
  ( (LongMapFixedSize!3147 (defaultEntry!4232 Int) (mask!10082 (_ BitVec 32)) (extraKeys!3969 (_ BitVec 32)) (zeroValue!4073 V!7557) (minValue!4073 V!7557) (_size!1622 (_ BitVec 32)) (_keys!6286 array!11110) (_values!4215 array!11108) (_vacant!1622 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3146)

(declare-fun mapRest!10069 () (Array (_ BitVec 32) ValueCell!2623))

(assert (=> mapNonEmpty!10069 (= (arr!5273 (_values!4215 thiss!1504)) (store mapRest!10069 mapKey!10069 mapValue!10069))))

(declare-fun b!226285 () Bool)

(declare-fun res!111411 () Bool)

(declare-datatypes ((SeekEntryResult!891 0))(
  ( (MissingZero!891 (index!5734 (_ BitVec 32))) (Found!891 (index!5735 (_ BitVec 32))) (Intermediate!891 (undefined!1703 Bool) (index!5736 (_ BitVec 32)) (x!23231 (_ BitVec 32))) (Undefined!891) (MissingVacant!891 (index!5737 (_ BitVec 32))) )
))
(declare-fun lt!113964 () SeekEntryResult!891)

(assert (=> b!226285 (= res!111411 (= (select (arr!5274 (_keys!6286 thiss!1504)) (index!5737 lt!113964)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!146844 () Bool)

(assert (=> b!226285 (=> (not res!111411) (not e!146844))))

(declare-fun b!226286 () Bool)

(declare-datatypes ((Unit!6840 0))(
  ( (Unit!6841) )
))
(declare-fun e!146838 () Unit!6840)

(declare-fun Unit!6842 () Unit!6840)

(assert (=> b!226286 (= e!146838 Unit!6842)))

(declare-fun res!111415 () Bool)

(declare-fun e!146845 () Bool)

(assert (=> start!22016 (=> (not res!111415) (not e!146845))))

(declare-fun valid!1258 (LongMapFixedSize!3146) Bool)

(assert (=> start!22016 (= res!111415 (valid!1258 thiss!1504))))

(assert (=> start!22016 e!146845))

(declare-fun e!146836 () Bool)

(assert (=> start!22016 e!146836))

(assert (=> start!22016 true))

(declare-fun b!226287 () Bool)

(declare-fun e!146839 () Bool)

(assert (=> b!226287 (= e!146839 (is-Undefined!891 lt!113964))))

(declare-fun b!226288 () Bool)

(declare-fun res!111410 () Bool)

(assert (=> b!226288 (=> res!111410 e!146835)))

(declare-fun lt!113961 () Bool)

(assert (=> b!226288 (= res!111410 lt!113961)))

(declare-fun tp_is_empty!5933 () Bool)

(declare-fun e!146840 () Bool)

(declare-fun array_inv!3479 (array!11110) Bool)

(declare-fun array_inv!3480 (array!11108) Bool)

(assert (=> b!226289 (= e!146836 (and tp!21354 tp_is_empty!5933 (array_inv!3479 (_keys!6286 thiss!1504)) (array_inv!3480 (_values!4215 thiss!1504)) e!146840))))

(declare-fun b!226290 () Bool)

(declare-fun e!146841 () Bool)

(assert (=> b!226290 (= e!146841 (not e!146835))))

(declare-fun res!111406 () Bool)

(assert (=> b!226290 (=> res!111406 e!146835)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!226290 (= res!111406 (not (validMask!0 (mask!10082 thiss!1504))))))

(declare-fun lt!113963 () array!11110)

(declare-fun arrayCountValidKeys!0 (array!11110 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!226290 (= (arrayCountValidKeys!0 lt!113963 #b00000000000000000000000000000000 (size!5607 (_keys!6286 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6286 thiss!1504) #b00000000000000000000000000000000 (size!5607 (_keys!6286 thiss!1504)))))))

(declare-fun lt!113960 () Unit!6840)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11110 (_ BitVec 32) (_ BitVec 64)) Unit!6840)

(assert (=> b!226290 (= lt!113960 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6286 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3392 0))(
  ( (Nil!3389) (Cons!3388 (h!4036 (_ BitVec 64)) (t!8359 List!3392)) )
))
(declare-fun arrayNoDuplicates!0 (array!11110 (_ BitVec 32) List!3392) Bool)

(assert (=> b!226290 (arrayNoDuplicates!0 lt!113963 #b00000000000000000000000000000000 Nil!3389)))

(assert (=> b!226290 (= lt!113963 (array!11111 (store (arr!5274 (_keys!6286 thiss!1504)) index!297 key!932) (size!5607 (_keys!6286 thiss!1504))))))

(declare-fun lt!113957 () Unit!6840)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11110 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3392) Unit!6840)

(assert (=> b!226290 (= lt!113957 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6286 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3389))))

(declare-fun lt!113958 () Unit!6840)

(assert (=> b!226290 (= lt!113958 e!146838)))

(declare-fun c!37502 () Bool)

(assert (=> b!226290 (= c!37502 lt!113961)))

(declare-fun arrayContainsKey!0 (array!11110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!226290 (= lt!113961 (arrayContainsKey!0 (_keys!6286 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226291 () Bool)

(declare-fun res!111407 () Bool)

(assert (=> b!226291 (=> (not res!111407) (not e!146845))))

(assert (=> b!226291 (= res!111407 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!226292 () Bool)

(declare-fun res!111413 () Bool)

(assert (=> b!226292 (=> res!111413 e!146835)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11110 (_ BitVec 32)) Bool)

(assert (=> b!226292 (= res!111413 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6286 thiss!1504) (mask!10082 thiss!1504))))))

(declare-fun b!226293 () Bool)

(declare-fun c!37503 () Bool)

(assert (=> b!226293 (= c!37503 (is-MissingVacant!891 lt!113964))))

(declare-fun e!146831 () Bool)

(assert (=> b!226293 (= e!146831 e!146839)))

(declare-fun b!226294 () Bool)

(declare-fun res!111408 () Bool)

(assert (=> b!226294 (=> res!111408 e!146835)))

(assert (=> b!226294 (= res!111408 (or (not (= (size!5607 (_keys!6286 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10082 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5607 (_keys!6286 thiss!1504)))))))

(declare-fun b!226295 () Bool)

(assert (=> b!226295 (= e!146844 (not call!21045))))

(declare-fun mapIsEmpty!10069 () Bool)

(assert (=> mapIsEmpty!10069 mapRes!10069))

(declare-fun c!37504 () Bool)

(declare-fun call!21046 () Bool)

(declare-fun bm!21042 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21042 (= call!21046 (inRange!0 (ite c!37504 (index!5734 lt!113964) (index!5737 lt!113964)) (mask!10082 thiss!1504)))))

(declare-fun b!226296 () Bool)

(declare-fun e!146843 () Bool)

(assert (=> b!226296 (= e!146840 (and e!146843 mapRes!10069))))

(declare-fun condMapEmpty!10069 () Bool)

(declare-fun mapDefault!10069 () ValueCell!2623)

