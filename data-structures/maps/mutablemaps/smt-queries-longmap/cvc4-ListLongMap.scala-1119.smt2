; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22976 () Bool)

(assert start!22976)

(declare-fun b!240442 () Bool)

(declare-fun b_free!6467 () Bool)

(declare-fun b_next!6467 () Bool)

(assert (=> b!240442 (= b_free!6467 (not b_next!6467))))

(declare-fun tp!22604 () Bool)

(declare-fun b_and!13451 () Bool)

(assert (=> b!240442 (= tp!22604 b_and!13451)))

(declare-fun b!240422 () Bool)

(declare-fun res!117907 () Bool)

(declare-fun e!156059 () Bool)

(assert (=> b!240422 (=> (not res!117907) (not e!156059))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!240422 (= res!117907 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!240423 () Bool)

(declare-fun c!40035 () Bool)

(declare-datatypes ((SeekEntryResult!1056 0))(
  ( (MissingZero!1056 (index!6394 (_ BitVec 32))) (Found!1056 (index!6395 (_ BitVec 32))) (Intermediate!1056 (undefined!1868 Bool) (index!6396 (_ BitVec 32)) (x!24168 (_ BitVec 32))) (Undefined!1056) (MissingVacant!1056 (index!6397 (_ BitVec 32))) )
))
(declare-fun lt!121003 () SeekEntryResult!1056)

(assert (=> b!240423 (= c!40035 (is-MissingVacant!1056 lt!121003))))

(declare-fun e!156060 () Bool)

(declare-fun e!156062 () Bool)

(assert (=> b!240423 (= e!156060 e!156062)))

(declare-fun b!240424 () Bool)

(declare-fun e!156063 () Bool)

(declare-fun tp_is_empty!6329 () Bool)

(assert (=> b!240424 (= e!156063 tp_is_empty!6329)))

(declare-fun b!240425 () Bool)

(declare-fun e!156054 () Bool)

(declare-datatypes ((V!8085 0))(
  ( (V!8086 (val!3209 Int)) )
))
(declare-datatypes ((ValueCell!2821 0))(
  ( (ValueCellFull!2821 (v!5243 V!8085)) (EmptyCell!2821) )
))
(declare-datatypes ((array!11936 0))(
  ( (array!11937 (arr!5669 (Array (_ BitVec 32) ValueCell!2821)) (size!6010 (_ BitVec 32))) )
))
(declare-datatypes ((array!11938 0))(
  ( (array!11939 (arr!5670 (Array (_ BitVec 32) (_ BitVec 64))) (size!6011 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3542 0))(
  ( (LongMapFixedSize!3543 (defaultEntry!4456 Int) (mask!10512 (_ BitVec 32)) (extraKeys!4193 (_ BitVec 32)) (zeroValue!4297 V!8085) (minValue!4297 V!8085) (_size!1820 (_ BitVec 32)) (_keys!6558 array!11938) (_values!4439 array!11936) (_vacant!1820 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3542)

(assert (=> b!240425 (= e!156054 (bvsge #b00000000000000000000000000000000 (size!6011 (_keys!6558 thiss!1504))))))

(declare-fun b!240426 () Bool)

(declare-fun res!117899 () Bool)

(assert (=> b!240426 (= res!117899 (= (select (arr!5670 (_keys!6558 thiss!1504)) (index!6397 lt!121003)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!156058 () Bool)

(assert (=> b!240426 (=> (not res!117899) (not e!156058))))

(declare-fun b!240427 () Bool)

(declare-fun e!156053 () Bool)

(assert (=> b!240427 (= e!156053 tp_is_empty!6329)))

(declare-fun mapNonEmpty!10725 () Bool)

(declare-fun mapRes!10725 () Bool)

(declare-fun tp!22605 () Bool)

(assert (=> mapNonEmpty!10725 (= mapRes!10725 (and tp!22605 e!156063))))

(declare-fun mapKey!10725 () (_ BitVec 32))

(declare-fun mapRest!10725 () (Array (_ BitVec 32) ValueCell!2821))

(declare-fun mapValue!10725 () ValueCell!2821)

(assert (=> mapNonEmpty!10725 (= (arr!5669 (_values!4439 thiss!1504)) (store mapRest!10725 mapKey!10725 mapValue!10725))))

(declare-fun res!117904 () Bool)

(assert (=> start!22976 (=> (not res!117904) (not e!156059))))

(declare-fun valid!1386 (LongMapFixedSize!3542) Bool)

(assert (=> start!22976 (= res!117904 (valid!1386 thiss!1504))))

(assert (=> start!22976 e!156059))

(declare-fun e!156055 () Bool)

(assert (=> start!22976 e!156055))

(assert (=> start!22976 true))

(declare-fun mapIsEmpty!10725 () Bool)

(assert (=> mapIsEmpty!10725 mapRes!10725))

(declare-fun b!240428 () Bool)

(declare-fun res!117906 () Bool)

(assert (=> b!240428 (=> (not res!117906) (not e!156054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11938 (_ BitVec 32)) Bool)

(assert (=> b!240428 (= res!117906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6558 thiss!1504) (mask!10512 thiss!1504)))))

(declare-fun b!240429 () Bool)

(declare-datatypes ((Unit!7394 0))(
  ( (Unit!7395) )
))
(declare-fun e!156061 () Unit!7394)

(declare-fun Unit!7396 () Unit!7394)

(assert (=> b!240429 (= e!156061 Unit!7396)))

(declare-fun lt!121001 () Unit!7394)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!342 (array!11938 array!11936 (_ BitVec 32) (_ BitVec 32) V!8085 V!8085 (_ BitVec 64) Int) Unit!7394)

(assert (=> b!240429 (= lt!121001 (lemmaInListMapThenSeekEntryOrOpenFindsIt!342 (_keys!6558 thiss!1504) (_values!4439 thiss!1504) (mask!10512 thiss!1504) (extraKeys!4193 thiss!1504) (zeroValue!4297 thiss!1504) (minValue!4297 thiss!1504) key!932 (defaultEntry!4456 thiss!1504)))))

(assert (=> b!240429 false))

(declare-fun b!240430 () Bool)

(declare-fun call!22359 () Bool)

(assert (=> b!240430 (= e!156058 (not call!22359))))

(declare-fun b!240431 () Bool)

(assert (=> b!240431 (= e!156062 e!156058)))

(declare-fun res!117902 () Bool)

(declare-fun call!22360 () Bool)

(assert (=> b!240431 (= res!117902 call!22360)))

(assert (=> b!240431 (=> (not res!117902) (not e!156058))))

(declare-fun b!240432 () Bool)

(declare-fun res!117910 () Bool)

(assert (=> b!240432 (=> (not res!117910) (not e!156054))))

(declare-datatypes ((List!3633 0))(
  ( (Nil!3630) (Cons!3629 (h!4285 (_ BitVec 64)) (t!8636 List!3633)) )
))
(declare-fun arrayNoDuplicates!0 (array!11938 (_ BitVec 32) List!3633) Bool)

(assert (=> b!240432 (= res!117910 (arrayNoDuplicates!0 (_keys!6558 thiss!1504) #b00000000000000000000000000000000 Nil!3630))))

(declare-fun b!240433 () Bool)

(declare-fun res!117901 () Bool)

(assert (=> b!240433 (=> (not res!117901) (not e!156054))))

(declare-fun arrayContainsKey!0 (array!11938 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!240433 (= res!117901 (arrayContainsKey!0 (_keys!6558 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240434 () Bool)

(declare-fun res!117900 () Bool)

(assert (=> b!240434 (=> (not res!117900) (not e!156054))))

(assert (=> b!240434 (= res!117900 (and (= (size!6010 (_values!4439 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10512 thiss!1504))) (= (size!6011 (_keys!6558 thiss!1504)) (size!6010 (_values!4439 thiss!1504))) (bvsge (mask!10512 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4193 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4193 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!240435 () Bool)

(declare-fun lt!121002 () Unit!7394)

(assert (=> b!240435 (= e!156061 lt!121002)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!350 (array!11938 array!11936 (_ BitVec 32) (_ BitVec 32) V!8085 V!8085 (_ BitVec 64) Int) Unit!7394)

(assert (=> b!240435 (= lt!121002 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!350 (_keys!6558 thiss!1504) (_values!4439 thiss!1504) (mask!10512 thiss!1504) (extraKeys!4193 thiss!1504) (zeroValue!4297 thiss!1504) (minValue!4297 thiss!1504) key!932 (defaultEntry!4456 thiss!1504)))))

(declare-fun c!40034 () Bool)

(assert (=> b!240435 (= c!40034 (is-MissingZero!1056 lt!121003))))

(assert (=> b!240435 e!156060))

(declare-fun b!240436 () Bool)

(declare-fun e!156065 () Bool)

(assert (=> b!240436 (= e!156065 (and e!156053 mapRes!10725))))

(declare-fun condMapEmpty!10725 () Bool)

(declare-fun mapDefault!10725 () ValueCell!2821)

