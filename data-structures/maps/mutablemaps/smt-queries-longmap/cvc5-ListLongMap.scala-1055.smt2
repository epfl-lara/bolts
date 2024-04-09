; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22024 () Bool)

(assert start!22024)

(declare-fun b!226596 () Bool)

(declare-fun b_free!6079 () Bool)

(declare-fun b_next!6079 () Bool)

(assert (=> b!226596 (= b_free!6079 (not b_next!6079))))

(declare-fun tp!21379 () Bool)

(declare-fun b_and!12995 () Bool)

(assert (=> b!226596 (= tp!21379 b_and!12995)))

(declare-fun mapNonEmpty!10081 () Bool)

(declare-fun mapRes!10081 () Bool)

(declare-fun tp!21378 () Bool)

(declare-fun e!147018 () Bool)

(assert (=> mapNonEmpty!10081 (= mapRes!10081 (and tp!21378 e!147018))))

(declare-datatypes ((V!7569 0))(
  ( (V!7570 (val!3015 Int)) )
))
(declare-datatypes ((ValueCell!2627 0))(
  ( (ValueCellFull!2627 (v!5031 V!7569)) (EmptyCell!2627) )
))
(declare-fun mapValue!10081 () ValueCell!2627)

(declare-fun mapKey!10081 () (_ BitVec 32))

(declare-datatypes ((array!11124 0))(
  ( (array!11125 (arr!5281 (Array (_ BitVec 32) ValueCell!2627)) (size!5614 (_ BitVec 32))) )
))
(declare-datatypes ((array!11126 0))(
  ( (array!11127 (arr!5282 (Array (_ BitVec 32) (_ BitVec 64))) (size!5615 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3154 0))(
  ( (LongMapFixedSize!3155 (defaultEntry!4236 Int) (mask!10090 (_ BitVec 32)) (extraKeys!3973 (_ BitVec 32)) (zeroValue!4077 V!7569) (minValue!4077 V!7569) (_size!1626 (_ BitVec 32)) (_keys!6290 array!11126) (_values!4219 array!11124) (_vacant!1626 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3154)

(declare-fun mapRest!10081 () (Array (_ BitVec 32) ValueCell!2627))

(assert (=> mapNonEmpty!10081 (= (arr!5281 (_values!4219 thiss!1504)) (store mapRest!10081 mapKey!10081 mapValue!10081))))

(declare-fun b!226583 () Bool)

(declare-fun res!111569 () Bool)

(declare-fun e!147015 () Bool)

(assert (=> b!226583 (=> res!111569 e!147015)))

(declare-fun lt!114099 () Bool)

(assert (=> b!226583 (= res!111569 lt!114099)))

(declare-fun b!226584 () Bool)

(declare-fun c!37550 () Bool)

(declare-datatypes ((SeekEntryResult!895 0))(
  ( (MissingZero!895 (index!5750 (_ BitVec 32))) (Found!895 (index!5751 (_ BitVec 32))) (Intermediate!895 (undefined!1707 Bool) (index!5752 (_ BitVec 32)) (x!23251 (_ BitVec 32))) (Undefined!895) (MissingVacant!895 (index!5753 (_ BitVec 32))) )
))
(declare-fun lt!114092 () SeekEntryResult!895)

(assert (=> b!226584 (= c!37550 (is-MissingVacant!895 lt!114092))))

(declare-fun e!147025 () Bool)

(declare-fun e!147012 () Bool)

(assert (=> b!226584 (= e!147025 e!147012)))

(declare-fun b!226585 () Bool)

(declare-fun res!111566 () Bool)

(declare-fun e!147013 () Bool)

(assert (=> b!226585 (=> (not res!111566) (not e!147013))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!226585 (= res!111566 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!21066 () Bool)

(declare-fun call!21070 () Bool)

(declare-fun arrayContainsKey!0 (array!11126 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21066 (= call!21070 (arrayContainsKey!0 (_keys!6290 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226587 () Bool)

(declare-fun res!111563 () Bool)

(assert (=> b!226587 (= res!111563 (= (select (arr!5282 (_keys!6290 thiss!1504)) (index!5753 lt!114092)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!147011 () Bool)

(assert (=> b!226587 (=> (not res!111563) (not e!147011))))

(declare-fun b!226588 () Bool)

(declare-datatypes ((Unit!6855 0))(
  ( (Unit!6856) )
))
(declare-fun e!147016 () Unit!6855)

(declare-fun lt!114096 () Unit!6855)

(assert (=> b!226588 (= e!147016 lt!114096)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!269 (array!11126 array!11124 (_ BitVec 32) (_ BitVec 32) V!7569 V!7569 (_ BitVec 64) Int) Unit!6855)

(assert (=> b!226588 (= lt!114096 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!269 (_keys!6290 thiss!1504) (_values!4219 thiss!1504) (mask!10090 thiss!1504) (extraKeys!3973 thiss!1504) (zeroValue!4077 thiss!1504) (minValue!4077 thiss!1504) key!932 (defaultEntry!4236 thiss!1504)))))

(declare-fun c!37551 () Bool)

(assert (=> b!226588 (= c!37551 (is-MissingZero!895 lt!114092))))

(assert (=> b!226588 e!147025))

(declare-fun b!226589 () Bool)

(declare-fun e!147022 () Bool)

(declare-fun tp_is_empty!5941 () Bool)

(assert (=> b!226589 (= e!147022 tp_is_empty!5941)))

(declare-fun b!226590 () Bool)

(declare-fun e!147017 () Unit!6855)

(declare-fun Unit!6857 () Unit!6855)

(assert (=> b!226590 (= e!147017 Unit!6857)))

(declare-fun b!226591 () Bool)

(declare-fun e!147020 () Bool)

(assert (=> b!226591 (= e!147020 (not e!147015))))

(declare-fun res!111571 () Bool)

(assert (=> b!226591 (=> res!111571 e!147015)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!226591 (= res!111571 (not (validMask!0 (mask!10090 thiss!1504))))))

(declare-fun lt!114098 () array!11126)

(declare-fun arrayCountValidKeys!0 (array!11126 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!226591 (= (arrayCountValidKeys!0 lt!114098 #b00000000000000000000000000000000 (size!5615 (_keys!6290 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6290 thiss!1504) #b00000000000000000000000000000000 (size!5615 (_keys!6290 thiss!1504)))))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lt!114093 () Unit!6855)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11126 (_ BitVec 32) (_ BitVec 64)) Unit!6855)

(assert (=> b!226591 (= lt!114093 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6290 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3397 0))(
  ( (Nil!3394) (Cons!3393 (h!4041 (_ BitVec 64)) (t!8364 List!3397)) )
))
(declare-fun arrayNoDuplicates!0 (array!11126 (_ BitVec 32) List!3397) Bool)

(assert (=> b!226591 (arrayNoDuplicates!0 lt!114098 #b00000000000000000000000000000000 Nil!3394)))

(assert (=> b!226591 (= lt!114098 (array!11127 (store (arr!5282 (_keys!6290 thiss!1504)) index!297 key!932) (size!5615 (_keys!6290 thiss!1504))))))

(declare-fun lt!114089 () Unit!6855)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11126 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3397) Unit!6855)

(assert (=> b!226591 (= lt!114089 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6290 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3394))))

(declare-fun lt!114094 () Unit!6855)

(assert (=> b!226591 (= lt!114094 e!147017)))

(declare-fun c!37553 () Bool)

(assert (=> b!226591 (= c!37553 lt!114099)))

(assert (=> b!226591 (= lt!114099 (arrayContainsKey!0 (_keys!6290 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226592 () Bool)

(declare-fun e!147014 () Bool)

(assert (=> b!226592 (= e!147014 (and e!147022 mapRes!10081))))

(declare-fun condMapEmpty!10081 () Bool)

(declare-fun mapDefault!10081 () ValueCell!2627)

