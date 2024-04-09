; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21986 () Bool)

(assert start!21986)

(declare-fun b!225174 () Bool)

(declare-fun b_free!6041 () Bool)

(declare-fun b_next!6041 () Bool)

(assert (=> b!225174 (= b_free!6041 (not b_next!6041))))

(declare-fun tp!21264 () Bool)

(declare-fun b_and!12957 () Bool)

(assert (=> b!225174 (= tp!21264 b_and!12957)))

(declare-fun b!225158 () Bool)

(declare-fun c!37322 () Bool)

(declare-datatypes ((SeekEntryResult!876 0))(
  ( (MissingZero!876 (index!5674 (_ BitVec 32))) (Found!876 (index!5675 (_ BitVec 32))) (Intermediate!876 (undefined!1688 Bool) (index!5676 (_ BitVec 32)) (x!23176 (_ BitVec 32))) (Undefined!876) (MissingVacant!876 (index!5677 (_ BitVec 32))) )
))
(declare-fun lt!113469 () SeekEntryResult!876)

(assert (=> b!225158 (= c!37322 (is-MissingVacant!876 lt!113469))))

(declare-fun e!146160 () Bool)

(declare-fun e!146161 () Bool)

(assert (=> b!225158 (= e!146160 e!146161)))

(declare-fun mapIsEmpty!10024 () Bool)

(declare-fun mapRes!10024 () Bool)

(assert (=> mapIsEmpty!10024 mapRes!10024))

(declare-fun b!225160 () Bool)

(declare-fun res!110829 () Bool)

(declare-fun e!146156 () Bool)

(assert (=> b!225160 (=> res!110829 e!146156)))

(declare-datatypes ((V!7517 0))(
  ( (V!7518 (val!2996 Int)) )
))
(declare-datatypes ((ValueCell!2608 0))(
  ( (ValueCellFull!2608 (v!5012 V!7517)) (EmptyCell!2608) )
))
(declare-datatypes ((array!11048 0))(
  ( (array!11049 (arr!5243 (Array (_ BitVec 32) ValueCell!2608)) (size!5576 (_ BitVec 32))) )
))
(declare-datatypes ((array!11050 0))(
  ( (array!11051 (arr!5244 (Array (_ BitVec 32) (_ BitVec 64))) (size!5577 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3116 0))(
  ( (LongMapFixedSize!3117 (defaultEntry!4217 Int) (mask!10057 (_ BitVec 32)) (extraKeys!3954 (_ BitVec 32)) (zeroValue!4058 V!7517) (minValue!4058 V!7517) (_size!1607 (_ BitVec 32)) (_keys!6271 array!11050) (_values!4200 array!11048) (_vacant!1607 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3116)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11050 (_ BitVec 32)) Bool)

(assert (=> b!225160 (= res!110829 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6271 thiss!1504) (mask!10057 thiss!1504))))))

(declare-fun b!225161 () Bool)

(declare-fun e!146170 () Bool)

(declare-fun tp_is_empty!5903 () Bool)

(assert (=> b!225161 (= e!146170 tp_is_empty!5903)))

(declare-fun b!225162 () Bool)

(assert (=> b!225162 (= e!146161 (is-Undefined!876 lt!113469))))

(declare-fun b!225163 () Bool)

(declare-fun e!146166 () Bool)

(assert (=> b!225163 (= e!146166 (not e!146156))))

(declare-fun res!110822 () Bool)

(assert (=> b!225163 (=> res!110822 e!146156)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!225163 (= res!110822 (not (validMask!0 (mask!10057 thiss!1504))))))

(declare-fun lt!113472 () array!11050)

(declare-fun arrayCountValidKeys!0 (array!11050 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!225163 (= (arrayCountValidKeys!0 lt!113472 #b00000000000000000000000000000000 (size!5577 (_keys!6271 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6271 thiss!1504) #b00000000000000000000000000000000 (size!5577 (_keys!6271 thiss!1504)))))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((Unit!6787 0))(
  ( (Unit!6788) )
))
(declare-fun lt!113467 () Unit!6787)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11050 (_ BitVec 32) (_ BitVec 64)) Unit!6787)

(assert (=> b!225163 (= lt!113467 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6271 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3372 0))(
  ( (Nil!3369) (Cons!3368 (h!4016 (_ BitVec 64)) (t!8339 List!3372)) )
))
(declare-fun arrayNoDuplicates!0 (array!11050 (_ BitVec 32) List!3372) Bool)

(assert (=> b!225163 (arrayNoDuplicates!0 lt!113472 #b00000000000000000000000000000000 Nil!3369)))

(assert (=> b!225163 (= lt!113472 (array!11051 (store (arr!5244 (_keys!6271 thiss!1504)) index!297 key!932) (size!5577 (_keys!6271 thiss!1504))))))

(declare-fun lt!113465 () Unit!6787)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11050 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3372) Unit!6787)

(assert (=> b!225163 (= lt!113465 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6271 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3369))))

(declare-fun lt!113464 () Unit!6787)

(declare-fun e!146169 () Unit!6787)

(assert (=> b!225163 (= lt!113464 e!146169)))

(declare-fun c!37325 () Bool)

(declare-fun lt!113470 () Bool)

(assert (=> b!225163 (= c!37325 lt!113470)))

(declare-fun arrayContainsKey!0 (array!11050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!225163 (= lt!113470 (arrayContainsKey!0 (_keys!6271 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225164 () Bool)

(declare-fun e!146157 () Bool)

(declare-fun e!146168 () Bool)

(assert (=> b!225164 (= e!146157 (and e!146168 mapRes!10024))))

(declare-fun condMapEmpty!10024 () Bool)

(declare-fun mapDefault!10024 () ValueCell!2608)

