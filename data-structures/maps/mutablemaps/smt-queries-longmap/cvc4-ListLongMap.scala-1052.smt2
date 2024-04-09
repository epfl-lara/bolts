; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22010 () Bool)

(assert start!22010)

(declare-fun b!226070 () Bool)

(declare-fun b_free!6065 () Bool)

(declare-fun b_next!6065 () Bool)

(assert (=> b!226070 (= b_free!6065 (not b_next!6065))))

(declare-fun tp!21336 () Bool)

(declare-fun b_and!12981 () Bool)

(assert (=> b!226070 (= tp!21336 b_and!12981)))

(declare-fun mapIsEmpty!10060 () Bool)

(declare-fun mapRes!10060 () Bool)

(assert (=> mapIsEmpty!10060 mapRes!10060))

(declare-fun res!111291 () Bool)

(declare-fun e!146706 () Bool)

(assert (=> start!22010 (=> (not res!111291) (not e!146706))))

(declare-datatypes ((V!7549 0))(
  ( (V!7550 (val!3008 Int)) )
))
(declare-datatypes ((ValueCell!2620 0))(
  ( (ValueCellFull!2620 (v!5024 V!7549)) (EmptyCell!2620) )
))
(declare-datatypes ((array!11096 0))(
  ( (array!11097 (arr!5267 (Array (_ BitVec 32) ValueCell!2620)) (size!5600 (_ BitVec 32))) )
))
(declare-datatypes ((array!11098 0))(
  ( (array!11099 (arr!5268 (Array (_ BitVec 32) (_ BitVec 64))) (size!5601 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3140 0))(
  ( (LongMapFixedSize!3141 (defaultEntry!4229 Int) (mask!10077 (_ BitVec 32)) (extraKeys!3966 (_ BitVec 32)) (zeroValue!4070 V!7549) (minValue!4070 V!7549) (_size!1619 (_ BitVec 32)) (_keys!6283 array!11098) (_values!4212 array!11096) (_vacant!1619 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3140)

(declare-fun valid!1255 (LongMapFixedSize!3140) Bool)

(assert (=> start!22010 (= res!111291 (valid!1255 thiss!1504))))

(assert (=> start!22010 e!146706))

(declare-fun e!146704 () Bool)

(assert (=> start!22010 e!146704))

(assert (=> start!22010 true))

(declare-fun b!226058 () Bool)

(declare-fun res!111294 () Bool)

(declare-fun e!146699 () Bool)

(assert (=> b!226058 (=> (not res!111294) (not e!146699))))

(declare-fun call!21027 () Bool)

(assert (=> b!226058 (= res!111294 call!21027)))

(declare-fun e!146696 () Bool)

(assert (=> b!226058 (= e!146696 e!146699)))

(declare-fun b!226059 () Bool)

(declare-fun e!146705 () Bool)

(assert (=> b!226059 (= e!146705 true)))

(declare-fun lt!113861 () Bool)

(declare-datatypes ((List!3387 0))(
  ( (Nil!3384) (Cons!3383 (h!4031 (_ BitVec 64)) (t!8354 List!3387)) )
))
(declare-fun arrayNoDuplicates!0 (array!11098 (_ BitVec 32) List!3387) Bool)

(assert (=> b!226059 (= lt!113861 (arrayNoDuplicates!0 (_keys!6283 thiss!1504) #b00000000000000000000000000000000 Nil!3384))))

(declare-fun b!226060 () Bool)

(declare-datatypes ((Unit!6827 0))(
  ( (Unit!6828) )
))
(declare-fun e!146698 () Unit!6827)

(declare-fun Unit!6829 () Unit!6827)

(assert (=> b!226060 (= e!146698 Unit!6829)))

(declare-fun lt!113858 () Unit!6827)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!254 (array!11098 array!11096 (_ BitVec 32) (_ BitVec 32) V!7549 V!7549 (_ BitVec 64) Int) Unit!6827)

(assert (=> b!226060 (= lt!113858 (lemmaInListMapThenSeekEntryOrOpenFindsIt!254 (_keys!6283 thiss!1504) (_values!4212 thiss!1504) (mask!10077 thiss!1504) (extraKeys!3966 thiss!1504) (zeroValue!4070 thiss!1504) (minValue!4070 thiss!1504) key!932 (defaultEntry!4229 thiss!1504)))))

(assert (=> b!226060 false))

(declare-fun b!226061 () Bool)

(declare-fun res!111289 () Bool)

(declare-datatypes ((SeekEntryResult!888 0))(
  ( (MissingZero!888 (index!5722 (_ BitVec 32))) (Found!888 (index!5723 (_ BitVec 32))) (Intermediate!888 (undefined!1700 Bool) (index!5724 (_ BitVec 32)) (x!23220 (_ BitVec 32))) (Undefined!888) (MissingVacant!888 (index!5725 (_ BitVec 32))) )
))
(declare-fun lt!113867 () SeekEntryResult!888)

(assert (=> b!226061 (= res!111289 (= (select (arr!5268 (_keys!6283 thiss!1504)) (index!5725 lt!113867)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!146707 () Bool)

(assert (=> b!226061 (=> (not res!111289) (not e!146707))))

(declare-fun b!226062 () Bool)

(declare-fun c!37469 () Bool)

(assert (=> b!226062 (= c!37469 (is-MissingVacant!888 lt!113867))))

(declare-fun e!146702 () Bool)

(assert (=> b!226062 (= e!146696 e!146702)))

(declare-fun b!226063 () Bool)

(declare-fun res!111287 () Bool)

(assert (=> b!226063 (=> res!111287 e!146705)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11098 (_ BitVec 32)) Bool)

(assert (=> b!226063 (= res!111287 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6283 thiss!1504) (mask!10077 thiss!1504))))))

(declare-fun b!226064 () Bool)

(declare-fun e!146709 () Bool)

(declare-fun e!146700 () Bool)

(assert (=> b!226064 (= e!146709 (and e!146700 mapRes!10060))))

(declare-fun condMapEmpty!10060 () Bool)

(declare-fun mapDefault!10060 () ValueCell!2620)

