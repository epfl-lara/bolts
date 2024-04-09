; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22964 () Bool)

(assert start!22964)

(declare-fun b!240017 () Bool)

(declare-fun b_free!6455 () Bool)

(declare-fun b_next!6455 () Bool)

(assert (=> b!240017 (= b_free!6455 (not b_next!6455))))

(declare-fun tp!22568 () Bool)

(declare-fun b_and!13439 () Bool)

(assert (=> b!240017 (= tp!22568 b_and!13439)))

(declare-fun mapNonEmpty!10707 () Bool)

(declare-fun mapRes!10707 () Bool)

(declare-fun tp!22569 () Bool)

(declare-fun e!155828 () Bool)

(assert (=> mapNonEmpty!10707 (= mapRes!10707 (and tp!22569 e!155828))))

(declare-fun mapKey!10707 () (_ BitVec 32))

(declare-datatypes ((V!8069 0))(
  ( (V!8070 (val!3203 Int)) )
))
(declare-datatypes ((ValueCell!2815 0))(
  ( (ValueCellFull!2815 (v!5237 V!8069)) (EmptyCell!2815) )
))
(declare-fun mapRest!10707 () (Array (_ BitVec 32) ValueCell!2815))

(declare-datatypes ((array!11912 0))(
  ( (array!11913 (arr!5657 (Array (_ BitVec 32) ValueCell!2815)) (size!5998 (_ BitVec 32))) )
))
(declare-datatypes ((array!11914 0))(
  ( (array!11915 (arr!5658 (Array (_ BitVec 32) (_ BitVec 64))) (size!5999 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3530 0))(
  ( (LongMapFixedSize!3531 (defaultEntry!4450 Int) (mask!10502 (_ BitVec 32)) (extraKeys!4187 (_ BitVec 32)) (zeroValue!4291 V!8069) (minValue!4291 V!8069) (_size!1814 (_ BitVec 32)) (_keys!6552 array!11914) (_values!4433 array!11912) (_vacant!1814 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3530)

(declare-fun mapValue!10707 () ValueCell!2815)

(assert (=> mapNonEmpty!10707 (= (arr!5657 (_values!4433 thiss!1504)) (store mapRest!10707 mapKey!10707 mapValue!10707))))

(declare-fun b!240001 () Bool)

(declare-fun res!117659 () Bool)

(declare-fun e!155825 () Bool)

(assert (=> b!240001 (=> (not res!117659) (not e!155825))))

(declare-fun call!22324 () Bool)

(assert (=> b!240001 (= res!117659 call!22324)))

(declare-fun e!155831 () Bool)

(assert (=> b!240001 (= e!155831 e!155825)))

(declare-fun b!240002 () Bool)

(declare-fun e!155821 () Bool)

(declare-fun call!22323 () Bool)

(assert (=> b!240002 (= e!155821 (not call!22323))))

(declare-fun b!240003 () Bool)

(declare-datatypes ((Unit!7376 0))(
  ( (Unit!7377) )
))
(declare-fun e!155822 () Unit!7376)

(declare-fun Unit!7378 () Unit!7376)

(assert (=> b!240003 (= e!155822 Unit!7378)))

(declare-fun lt!120929 () Unit!7376)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!336 (array!11914 array!11912 (_ BitVec 32) (_ BitVec 32) V!8069 V!8069 (_ BitVec 64) Int) Unit!7376)

(assert (=> b!240003 (= lt!120929 (lemmaInListMapThenSeekEntryOrOpenFindsIt!336 (_keys!6552 thiss!1504) (_values!4433 thiss!1504) (mask!10502 thiss!1504) (extraKeys!4187 thiss!1504) (zeroValue!4291 thiss!1504) (minValue!4291 thiss!1504) key!932 (defaultEntry!4450 thiss!1504)))))

(assert (=> b!240003 false))

(declare-fun b!240004 () Bool)

(declare-fun res!117668 () Bool)

(assert (=> b!240004 (=> (not res!117668) (not e!155825))))

(declare-datatypes ((SeekEntryResult!1051 0))(
  ( (MissingZero!1051 (index!6374 (_ BitVec 32))) (Found!1051 (index!6375 (_ BitVec 32))) (Intermediate!1051 (undefined!1863 Bool) (index!6376 (_ BitVec 32)) (x!24147 (_ BitVec 32))) (Undefined!1051) (MissingVacant!1051 (index!6377 (_ BitVec 32))) )
))
(declare-fun lt!120928 () SeekEntryResult!1051)

(assert (=> b!240004 (= res!117668 (= (select (arr!5658 (_keys!6552 thiss!1504)) (index!6374 lt!120928)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!240005 () Bool)

(declare-fun e!155827 () Bool)

(declare-datatypes ((List!3624 0))(
  ( (Nil!3621) (Cons!3620 (h!4276 (_ BitVec 64)) (t!8627 List!3624)) )
))
(declare-fun arrayNoDuplicates!0 (array!11914 (_ BitVec 32) List!3624) Bool)

(assert (=> b!240005 (= e!155827 (not (arrayNoDuplicates!0 (_keys!6552 thiss!1504) #b00000000000000000000000000000000 Nil!3621)))))

(declare-fun bm!22320 () Bool)

(declare-fun c!39981 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22320 (= call!22324 (inRange!0 (ite c!39981 (index!6374 lt!120928) (index!6377 lt!120928)) (mask!10502 thiss!1504)))))

(declare-fun b!240006 () Bool)

(declare-fun e!155830 () Bool)

(assert (=> b!240006 (= e!155830 e!155821)))

(declare-fun res!117661 () Bool)

(assert (=> b!240006 (= res!117661 call!22324)))

(assert (=> b!240006 (=> (not res!117661) (not e!155821))))

(declare-fun b!240007 () Bool)

(declare-fun e!155829 () Bool)

(declare-fun e!155826 () Bool)

(assert (=> b!240007 (= e!155829 (and e!155826 mapRes!10707))))

(declare-fun condMapEmpty!10707 () Bool)

(declare-fun mapDefault!10707 () ValueCell!2815)

