; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23230 () Bool)

(assert start!23230)

(declare-fun b!243731 () Bool)

(declare-fun b_free!6529 () Bool)

(declare-fun b_next!6529 () Bool)

(assert (=> b!243731 (= b_free!6529 (not b_next!6529))))

(declare-fun tp!22809 () Bool)

(declare-fun b_and!13529 () Bool)

(assert (=> b!243731 (= tp!22809 b_and!13529)))

(declare-fun b!243721 () Bool)

(declare-fun e!158188 () Bool)

(declare-fun e!158179 () Bool)

(assert (=> b!243721 (= e!158188 e!158179)))

(declare-fun res!119503 () Bool)

(assert (=> b!243721 (=> (not res!119503) (not e!158179))))

(declare-datatypes ((V!8169 0))(
  ( (V!8170 (val!3240 Int)) )
))
(declare-datatypes ((ValueCell!2852 0))(
  ( (ValueCellFull!2852 (v!5283 V!8169)) (EmptyCell!2852) )
))
(declare-datatypes ((array!12072 0))(
  ( (array!12073 (arr!5731 (Array (_ BitVec 32) ValueCell!2852)) (size!6073 (_ BitVec 32))) )
))
(declare-datatypes ((array!12074 0))(
  ( (array!12075 (arr!5732 (Array (_ BitVec 32) (_ BitVec 64))) (size!6074 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3604 0))(
  ( (LongMapFixedSize!3605 (defaultEntry!4515 Int) (mask!10610 (_ BitVec 32)) (extraKeys!4252 (_ BitVec 32)) (zeroValue!4356 V!8169) (minValue!4356 V!8169) (_size!1851 (_ BitVec 32)) (_keys!6626 array!12074) (_values!4498 array!12072) (_vacant!1851 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3604)

(assert (=> b!243721 (= res!119503 (and (bvslt (size!6074 (_keys!6626 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6074 (_keys!6626 thiss!1504)))))))

(declare-datatypes ((Unit!7518 0))(
  ( (Unit!7519) )
))
(declare-fun lt!122302 () Unit!7518)

(declare-fun e!158171 () Unit!7518)

(assert (=> b!243721 (= lt!122302 e!158171)))

(declare-fun c!40668 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!243721 (= c!40668 (arrayContainsKey!0 (_keys!6626 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!10837 () Bool)

(declare-fun mapRes!10837 () Bool)

(assert (=> mapIsEmpty!10837 mapRes!10837))

(declare-fun b!243722 () Bool)

(declare-fun c!40667 () Bool)

(declare-datatypes ((SeekEntryResult!1085 0))(
  ( (MissingZero!1085 (index!6510 (_ BitVec 32))) (Found!1085 (index!6511 (_ BitVec 32))) (Intermediate!1085 (undefined!1897 Bool) (index!6512 (_ BitVec 32)) (x!24353 (_ BitVec 32))) (Undefined!1085) (MissingVacant!1085 (index!6513 (_ BitVec 32))) )
))
(declare-fun lt!122303 () SeekEntryResult!1085)

(assert (=> b!243722 (= c!40667 (is-MissingVacant!1085 lt!122303))))

(declare-fun e!158178 () Bool)

(declare-fun e!158182 () Bool)

(assert (=> b!243722 (= e!158178 e!158182)))

(declare-fun b!243723 () Bool)

(declare-fun e!158180 () Bool)

(declare-fun call!22728 () Bool)

(assert (=> b!243723 (= e!158180 (not call!22728))))

(declare-fun b!243724 () Bool)

(declare-fun e!158181 () Unit!7518)

(declare-fun Unit!7520 () Unit!7518)

(assert (=> b!243724 (= e!158181 Unit!7520)))

(declare-fun lt!122298 () Unit!7518)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!363 (array!12074 array!12072 (_ BitVec 32) (_ BitVec 32) V!8169 V!8169 (_ BitVec 64) Int) Unit!7518)

(assert (=> b!243724 (= lt!122298 (lemmaInListMapThenSeekEntryOrOpenFindsIt!363 (_keys!6626 thiss!1504) (_values!4498 thiss!1504) (mask!10610 thiss!1504) (extraKeys!4252 thiss!1504) (zeroValue!4356 thiss!1504) (minValue!4356 thiss!1504) key!932 (defaultEntry!4515 thiss!1504)))))

(assert (=> b!243724 false))

(declare-fun b!243725 () Bool)

(declare-fun e!158183 () Bool)

(declare-fun e!158185 () Bool)

(assert (=> b!243725 (= e!158183 (and e!158185 mapRes!10837))))

(declare-fun condMapEmpty!10837 () Bool)

(declare-fun mapDefault!10837 () ValueCell!2852)

