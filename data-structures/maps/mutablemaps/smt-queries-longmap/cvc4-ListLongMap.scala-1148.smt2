; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24024 () Bool)

(assert start!24024)

(declare-fun b!251444 () Bool)

(declare-fun b_free!6641 () Bool)

(declare-fun b_next!6641 () Bool)

(assert (=> b!251444 (= b_free!6641 (not b_next!6641))))

(declare-fun tp!23194 () Bool)

(declare-fun b_and!13687 () Bool)

(assert (=> b!251444 (= tp!23194 b_and!13687)))

(declare-fun b!251428 () Bool)

(declare-fun c!42295 () Bool)

(declare-datatypes ((SeekEntryResult!1138 0))(
  ( (MissingZero!1138 (index!6722 (_ BitVec 32))) (Found!1138 (index!6723 (_ BitVec 32))) (Intermediate!1138 (undefined!1950 Bool) (index!6724 (_ BitVec 32)) (x!24732 (_ BitVec 32))) (Undefined!1138) (MissingVacant!1138 (index!6725 (_ BitVec 32))) )
))
(declare-fun lt!126045 () SeekEntryResult!1138)

(assert (=> b!251428 (= c!42295 (is-MissingVacant!1138 lt!126045))))

(declare-fun e!163084 () Bool)

(declare-fun e!163083 () Bool)

(assert (=> b!251428 (= e!163084 e!163083)))

(declare-fun b!251430 () Bool)

(declare-datatypes ((Unit!7783 0))(
  ( (Unit!7784) )
))
(declare-fun e!163077 () Unit!7783)

(declare-fun Unit!7785 () Unit!7783)

(assert (=> b!251430 (= e!163077 Unit!7785)))

(declare-fun lt!126043 () Unit!7783)

(declare-datatypes ((V!8317 0))(
  ( (V!8318 (val!3296 Int)) )
))
(declare-datatypes ((ValueCell!2908 0))(
  ( (ValueCellFull!2908 (v!5360 V!8317)) (EmptyCell!2908) )
))
(declare-datatypes ((array!12326 0))(
  ( (array!12327 (arr!5843 (Array (_ BitVec 32) ValueCell!2908)) (size!6189 (_ BitVec 32))) )
))
(declare-datatypes ((array!12328 0))(
  ( (array!12329 (arr!5844 (Array (_ BitVec 32) (_ BitVec 64))) (size!6190 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3716 0))(
  ( (LongMapFixedSize!3717 (defaultEntry!4647 Int) (mask!10848 (_ BitVec 32)) (extraKeys!4384 (_ BitVec 32)) (zeroValue!4488 V!8317) (minValue!4488 V!8317) (_size!1907 (_ BitVec 32)) (_keys!6789 array!12328) (_values!4630 array!12326) (_vacant!1907 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3716)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!206 (array!12328 array!12326 (_ BitVec 32) (_ BitVec 32) V!8317 V!8317 (_ BitVec 64) (_ BitVec 32) Int) Unit!7783)

(assert (=> b!251430 (= lt!126043 (lemmaArrayContainsKeyThenInListMap!206 (_keys!6789 thiss!1504) (_values!4630 thiss!1504) (mask!10848 thiss!1504) (extraKeys!4384 thiss!1504) (zeroValue!4488 thiss!1504) (minValue!4488 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4647 thiss!1504)))))

(assert (=> b!251430 false))

(declare-fun b!251431 () Bool)

(assert (=> b!251431 (= e!163083 (is-Undefined!1138 lt!126045))))

(declare-fun b!251432 () Bool)

(declare-fun Unit!7786 () Unit!7783)

(assert (=> b!251432 (= e!163077 Unit!7786)))

(declare-fun mapNonEmpty!11054 () Bool)

(declare-fun mapRes!11054 () Bool)

(declare-fun tp!23195 () Bool)

(declare-fun e!163074 () Bool)

(assert (=> mapNonEmpty!11054 (= mapRes!11054 (and tp!23195 e!163074))))

(declare-fun mapValue!11054 () ValueCell!2908)

(declare-fun mapRest!11054 () (Array (_ BitVec 32) ValueCell!2908))

(declare-fun mapKey!11054 () (_ BitVec 32))

(assert (=> mapNonEmpty!11054 (= (arr!5843 (_values!4630 thiss!1504)) (store mapRest!11054 mapKey!11054 mapValue!11054))))

(declare-fun call!23657 () Bool)

(declare-fun c!42298 () Bool)

(declare-fun bm!23653 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23653 (= call!23657 (inRange!0 (ite c!42298 (index!6722 lt!126045) (index!6725 lt!126045)) (mask!10848 thiss!1504)))))

(declare-fun b!251433 () Bool)

(declare-fun e!163079 () Bool)

(assert (=> b!251433 (= e!163079 (or (not (= (size!6189 (_values!4630 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10848 thiss!1504)))) (not (= (size!6190 (_keys!6789 thiss!1504)) (size!6189 (_values!4630 thiss!1504)))) (bvslt (mask!10848 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4384 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4384 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!251434 () Bool)

(declare-fun e!163072 () Bool)

(assert (=> b!251434 (= e!163083 e!163072)))

(declare-fun res!123115 () Bool)

(assert (=> b!251434 (= res!123115 call!23657)))

(assert (=> b!251434 (=> (not res!123115) (not e!163072))))

(declare-fun b!251435 () Bool)

(declare-fun e!163081 () Bool)

(declare-fun call!23656 () Bool)

(assert (=> b!251435 (= e!163081 (not call!23656))))

(declare-fun b!251436 () Bool)

(declare-fun e!163071 () Unit!7783)

(declare-fun lt!126041 () Unit!7783)

(assert (=> b!251436 (= e!163071 lt!126041)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!404 (array!12328 array!12326 (_ BitVec 32) (_ BitVec 32) V!8317 V!8317 (_ BitVec 64) Int) Unit!7783)

(assert (=> b!251436 (= lt!126041 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!404 (_keys!6789 thiss!1504) (_values!4630 thiss!1504) (mask!10848 thiss!1504) (extraKeys!4384 thiss!1504) (zeroValue!4488 thiss!1504) (minValue!4488 thiss!1504) key!932 (defaultEntry!4647 thiss!1504)))))

(assert (=> b!251436 (= c!42298 (is-MissingZero!1138 lt!126045))))

(assert (=> b!251436 e!163084))

(declare-fun b!251437 () Bool)

(declare-fun e!163076 () Bool)

(declare-fun tp_is_empty!6503 () Bool)

(assert (=> b!251437 (= e!163076 tp_is_empty!6503)))

(declare-fun b!251438 () Bool)

(declare-fun e!163080 () Bool)

(declare-fun e!163085 () Bool)

(assert (=> b!251438 (= e!163080 e!163085)))

(declare-fun res!123116 () Bool)

(assert (=> b!251438 (=> (not res!123116) (not e!163085))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!251438 (= res!123116 (or (= lt!126045 (MissingZero!1138 index!297)) (= lt!126045 (MissingVacant!1138 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12328 (_ BitVec 32)) SeekEntryResult!1138)

(assert (=> b!251438 (= lt!126045 (seekEntryOrOpen!0 key!932 (_keys!6789 thiss!1504) (mask!10848 thiss!1504)))))

(declare-fun b!251439 () Bool)

(assert (=> b!251439 (= e!163072 (not call!23656))))

(declare-fun b!251429 () Bool)

(declare-fun res!123118 () Bool)

(assert (=> b!251429 (=> (not res!123118) (not e!163080))))

(assert (=> b!251429 (= res!123118 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!123114 () Bool)

(assert (=> start!24024 (=> (not res!123114) (not e!163080))))

(declare-fun valid!1445 (LongMapFixedSize!3716) Bool)

(assert (=> start!24024 (= res!123114 (valid!1445 thiss!1504))))

(assert (=> start!24024 e!163080))

(declare-fun e!163073 () Bool)

(assert (=> start!24024 e!163073))

(assert (=> start!24024 true))

(declare-fun b!251440 () Bool)

(declare-fun e!163078 () Bool)

(assert (=> b!251440 (= e!163078 (not e!163079))))

(declare-fun res!123119 () Bool)

(assert (=> b!251440 (=> res!123119 e!163079)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!251440 (= res!123119 (not (validMask!0 (mask!10848 thiss!1504))))))

(declare-fun lt!126049 () array!12328)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12328 (_ BitVec 32)) Bool)

(assert (=> b!251440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!126049 (mask!10848 thiss!1504))))

(declare-fun lt!126044 () Unit!7783)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12328 (_ BitVec 32) (_ BitVec 32)) Unit!7783)

(assert (=> b!251440 (= lt!126044 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6789 thiss!1504) index!297 (mask!10848 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12328 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!251440 (= (arrayCountValidKeys!0 lt!126049 #b00000000000000000000000000000000 (size!6190 (_keys!6789 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6789 thiss!1504) #b00000000000000000000000000000000 (size!6190 (_keys!6789 thiss!1504)))))))

(declare-fun lt!126048 () Unit!7783)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12328 (_ BitVec 32) (_ BitVec 64)) Unit!7783)

(assert (=> b!251440 (= lt!126048 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6789 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3754 0))(
  ( (Nil!3751) (Cons!3750 (h!4411 (_ BitVec 64)) (t!8799 List!3754)) )
))
(declare-fun arrayNoDuplicates!0 (array!12328 (_ BitVec 32) List!3754) Bool)

(assert (=> b!251440 (arrayNoDuplicates!0 lt!126049 #b00000000000000000000000000000000 Nil!3751)))

(assert (=> b!251440 (= lt!126049 (array!12329 (store (arr!5844 (_keys!6789 thiss!1504)) index!297 key!932) (size!6190 (_keys!6789 thiss!1504))))))

(declare-fun lt!126046 () Unit!7783)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12328 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3754) Unit!7783)

(assert (=> b!251440 (= lt!126046 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6789 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3751))))

(declare-fun lt!126047 () Unit!7783)

(assert (=> b!251440 (= lt!126047 e!163077)))

(declare-fun c!42297 () Bool)

(declare-fun arrayContainsKey!0 (array!12328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!251440 (= c!42297 (arrayContainsKey!0 (_keys!6789 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!11054 () Bool)

(assert (=> mapIsEmpty!11054 mapRes!11054))

(declare-fun b!251441 () Bool)

(declare-fun res!123113 () Bool)

(assert (=> b!251441 (=> (not res!123113) (not e!163081))))

(assert (=> b!251441 (= res!123113 call!23657)))

(assert (=> b!251441 (= e!163084 e!163081)))

(declare-fun b!251442 () Bool)

(assert (=> b!251442 (= e!163085 e!163078)))

(declare-fun res!123121 () Bool)

(assert (=> b!251442 (=> (not res!123121) (not e!163078))))

(assert (=> b!251442 (= res!123121 (inRange!0 index!297 (mask!10848 thiss!1504)))))

(declare-fun lt!126050 () Unit!7783)

(assert (=> b!251442 (= lt!126050 e!163071)))

(declare-fun c!42296 () Bool)

(declare-datatypes ((tuple2!4850 0))(
  ( (tuple2!4851 (_1!2435 (_ BitVec 64)) (_2!2435 V!8317)) )
))
(declare-datatypes ((List!3755 0))(
  ( (Nil!3752) (Cons!3751 (h!4412 tuple2!4850) (t!8800 List!3755)) )
))
(declare-datatypes ((ListLongMap!3777 0))(
  ( (ListLongMap!3778 (toList!1904 List!3755)) )
))
(declare-fun contains!1822 (ListLongMap!3777 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1427 (array!12328 array!12326 (_ BitVec 32) (_ BitVec 32) V!8317 V!8317 (_ BitVec 32) Int) ListLongMap!3777)

(assert (=> b!251442 (= c!42296 (contains!1822 (getCurrentListMap!1427 (_keys!6789 thiss!1504) (_values!4630 thiss!1504) (mask!10848 thiss!1504) (extraKeys!4384 thiss!1504) (zeroValue!4488 thiss!1504) (minValue!4488 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4647 thiss!1504)) key!932))))

(declare-fun b!251443 () Bool)

(declare-fun res!123117 () Bool)

(assert (=> b!251443 (= res!123117 (= (select (arr!5844 (_keys!6789 thiss!1504)) (index!6725 lt!126045)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251443 (=> (not res!123117) (not e!163072))))

(declare-fun e!163082 () Bool)

(declare-fun array_inv!3851 (array!12328) Bool)

(declare-fun array_inv!3852 (array!12326) Bool)

(assert (=> b!251444 (= e!163073 (and tp!23194 tp_is_empty!6503 (array_inv!3851 (_keys!6789 thiss!1504)) (array_inv!3852 (_values!4630 thiss!1504)) e!163082))))

(declare-fun b!251445 () Bool)

(assert (=> b!251445 (= e!163082 (and e!163076 mapRes!11054))))

(declare-fun condMapEmpty!11054 () Bool)

(declare-fun mapDefault!11054 () ValueCell!2908)

