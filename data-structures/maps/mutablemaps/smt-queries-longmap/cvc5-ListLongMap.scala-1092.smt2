; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22360 () Bool)

(assert start!22360)

(declare-fun b!234046 () Bool)

(declare-fun b_free!6301 () Bool)

(declare-fun b_next!6301 () Bool)

(assert (=> b!234046 (= b_free!6301 (not b_next!6301))))

(declare-fun tp!22056 () Bool)

(declare-fun b_and!13231 () Bool)

(assert (=> b!234046 (= tp!22056 b_and!13231)))

(declare-fun b!234038 () Bool)

(declare-fun res!114835 () Bool)

(declare-fun e!152029 () Bool)

(assert (=> b!234038 (=> (not res!114835) (not e!152029))))

(declare-datatypes ((V!7865 0))(
  ( (V!7866 (val!3126 Int)) )
))
(declare-datatypes ((ValueCell!2738 0))(
  ( (ValueCellFull!2738 (v!5145 V!7865)) (EmptyCell!2738) )
))
(declare-datatypes ((array!11574 0))(
  ( (array!11575 (arr!5503 (Array (_ BitVec 32) ValueCell!2738)) (size!5838 (_ BitVec 32))) )
))
(declare-datatypes ((array!11576 0))(
  ( (array!11577 (arr!5504 (Array (_ BitVec 32) (_ BitVec 64))) (size!5839 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3376 0))(
  ( (LongMapFixedSize!3377 (defaultEntry!4352 Int) (mask!10294 (_ BitVec 32)) (extraKeys!4089 (_ BitVec 32)) (zeroValue!4193 V!7865) (minValue!4193 V!7865) (_size!1737 (_ BitVec 32)) (_keys!6415 array!11576) (_values!4335 array!11574) (_vacant!1737 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3376)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!234038 (= res!114835 (validMask!0 (mask!10294 thiss!1504)))))

(declare-fun b!234039 () Bool)

(declare-fun res!114834 () Bool)

(declare-fun e!152025 () Bool)

(assert (=> b!234039 (=> (not res!114834) (not e!152025))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!234039 (= res!114834 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!234040 () Bool)

(assert (=> b!234040 (= e!152025 e!152029)))

(declare-fun res!114836 () Bool)

(assert (=> b!234040 (=> (not res!114836) (not e!152029))))

(declare-datatypes ((SeekEntryResult!988 0))(
  ( (MissingZero!988 (index!6122 (_ BitVec 32))) (Found!988 (index!6123 (_ BitVec 32))) (Intermediate!988 (undefined!1800 Bool) (index!6124 (_ BitVec 32)) (x!23686 (_ BitVec 32))) (Undefined!988) (MissingVacant!988 (index!6125 (_ BitVec 32))) )
))
(declare-fun lt!118438 () SeekEntryResult!988)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!234040 (= res!114836 (or (= lt!118438 (MissingZero!988 index!297)) (= lt!118438 (MissingVacant!988 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11576 (_ BitVec 32)) SeekEntryResult!988)

(assert (=> b!234040 (= lt!118438 (seekEntryOrOpen!0 key!932 (_keys!6415 thiss!1504) (mask!10294 thiss!1504)))))

(declare-fun res!114832 () Bool)

(assert (=> start!22360 (=> (not res!114832) (not e!152025))))

(declare-fun valid!1324 (LongMapFixedSize!3376) Bool)

(assert (=> start!22360 (= res!114832 (valid!1324 thiss!1504))))

(assert (=> start!22360 e!152025))

(declare-fun e!152024 () Bool)

(assert (=> start!22360 e!152024))

(assert (=> start!22360 true))

(declare-fun b!234041 () Bool)

(declare-fun e!152027 () Bool)

(declare-fun tp_is_empty!6163 () Bool)

(assert (=> b!234041 (= e!152027 tp_is_empty!6163)))

(declare-fun mapNonEmpty!10425 () Bool)

(declare-fun mapRes!10425 () Bool)

(declare-fun tp!22055 () Bool)

(assert (=> mapNonEmpty!10425 (= mapRes!10425 (and tp!22055 e!152027))))

(declare-fun mapValue!10425 () ValueCell!2738)

(declare-fun mapKey!10425 () (_ BitVec 32))

(declare-fun mapRest!10425 () (Array (_ BitVec 32) ValueCell!2738))

(assert (=> mapNonEmpty!10425 (= (arr!5503 (_values!4335 thiss!1504)) (store mapRest!10425 mapKey!10425 mapValue!10425))))

(declare-fun b!234042 () Bool)

(declare-fun e!152030 () Bool)

(declare-fun e!152028 () Bool)

(assert (=> b!234042 (= e!152030 (and e!152028 mapRes!10425))))

(declare-fun condMapEmpty!10425 () Bool)

(declare-fun mapDefault!10425 () ValueCell!2738)

