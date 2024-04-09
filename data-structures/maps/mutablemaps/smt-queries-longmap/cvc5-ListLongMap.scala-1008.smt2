; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21660 () Bool)

(assert start!21660)

(declare-fun b!217125 () Bool)

(declare-fun b_free!5797 () Bool)

(declare-fun b_next!5797 () Bool)

(assert (=> b!217125 (= b_free!5797 (not b_next!5797))))

(declare-fun tp!20525 () Bool)

(declare-fun b_and!12705 () Bool)

(assert (=> b!217125 (= tp!20525 b_and!12705)))

(declare-fun b!217118 () Bool)

(declare-fun res!106290 () Bool)

(declare-fun e!141263 () Bool)

(assert (=> b!217118 (=> (not res!106290) (not e!141263))))

(declare-datatypes ((V!7193 0))(
  ( (V!7194 (val!2874 Int)) )
))
(declare-datatypes ((ValueCell!2486 0))(
  ( (ValueCellFull!2486 (v!4888 V!7193)) (EmptyCell!2486) )
))
(declare-datatypes ((array!10556 0))(
  ( (array!10557 (arr!4999 (Array (_ BitVec 32) ValueCell!2486)) (size!5331 (_ BitVec 32))) )
))
(declare-datatypes ((array!10558 0))(
  ( (array!10559 (arr!5000 (Array (_ BitVec 32) (_ BitVec 64))) (size!5332 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2872 0))(
  ( (LongMapFixedSize!2873 (defaultEntry!4086 Int) (mask!9837 (_ BitVec 32)) (extraKeys!3823 (_ BitVec 32)) (zeroValue!3927 V!7193) (minValue!3927 V!7193) (_size!1485 (_ BitVec 32)) (_keys!6135 array!10558) (_values!4069 array!10556) (_vacant!1485 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2872)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217118 (= res!106290 (validMask!0 (mask!9837 thiss!1504)))))

(declare-fun b!217119 () Bool)

(declare-fun e!141264 () Bool)

(declare-fun tp_is_empty!5659 () Bool)

(assert (=> b!217119 (= e!141264 tp_is_empty!5659)))

(declare-fun b!217120 () Bool)

(declare-fun res!106292 () Bool)

(declare-fun e!141260 () Bool)

(assert (=> b!217120 (=> (not res!106292) (not e!141260))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!217120 (= res!106292 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217121 () Bool)

(declare-fun res!106288 () Bool)

(assert (=> b!217121 (=> (not res!106288) (not e!141263))))

(declare-datatypes ((tuple2!4272 0))(
  ( (tuple2!4273 (_1!2146 (_ BitVec 64)) (_2!2146 V!7193)) )
))
(declare-datatypes ((List!3199 0))(
  ( (Nil!3196) (Cons!3195 (h!3842 tuple2!4272) (t!8162 List!3199)) )
))
(declare-datatypes ((ListLongMap!3199 0))(
  ( (ListLongMap!3200 (toList!1615 List!3199)) )
))
(declare-fun contains!1450 (ListLongMap!3199 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1138 (array!10558 array!10556 (_ BitVec 32) (_ BitVec 32) V!7193 V!7193 (_ BitVec 32) Int) ListLongMap!3199)

(assert (=> b!217121 (= res!106288 (contains!1450 (getCurrentListMap!1138 (_keys!6135 thiss!1504) (_values!4069 thiss!1504) (mask!9837 thiss!1504) (extraKeys!3823 thiss!1504) (zeroValue!3927 thiss!1504) (minValue!3927 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4086 thiss!1504)) key!932))))

(declare-fun b!217122 () Bool)

(assert (=> b!217122 (= e!141260 e!141263)))

(declare-fun res!106293 () Bool)

(assert (=> b!217122 (=> (not res!106293) (not e!141263))))

(declare-datatypes ((SeekEntryResult!772 0))(
  ( (MissingZero!772 (index!5258 (_ BitVec 32))) (Found!772 (index!5259 (_ BitVec 32))) (Intermediate!772 (undefined!1584 Bool) (index!5260 (_ BitVec 32)) (x!22724 (_ BitVec 32))) (Undefined!772) (MissingVacant!772 (index!5261 (_ BitVec 32))) )
))
(declare-fun lt!111318 () SeekEntryResult!772)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217122 (= res!106293 (or (= lt!111318 (MissingZero!772 index!297)) (= lt!111318 (MissingVacant!772 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10558 (_ BitVec 32)) SeekEntryResult!772)

(assert (=> b!217122 (= lt!111318 (seekEntryOrOpen!0 key!932 (_keys!6135 thiss!1504) (mask!9837 thiss!1504)))))

(declare-fun b!217123 () Bool)

(assert (=> b!217123 (= e!141263 false)))

(declare-fun lt!111319 () Bool)

(declare-datatypes ((List!3200 0))(
  ( (Nil!3197) (Cons!3196 (h!3843 (_ BitVec 64)) (t!8163 List!3200)) )
))
(declare-fun arrayNoDuplicates!0 (array!10558 (_ BitVec 32) List!3200) Bool)

(assert (=> b!217123 (= lt!111319 (arrayNoDuplicates!0 (_keys!6135 thiss!1504) #b00000000000000000000000000000000 Nil!3197))))

(declare-fun mapIsEmpty!9651 () Bool)

(declare-fun mapRes!9651 () Bool)

(assert (=> mapIsEmpty!9651 mapRes!9651))

(declare-fun b!217124 () Bool)

(declare-fun res!106287 () Bool)

(assert (=> b!217124 (=> (not res!106287) (not e!141263))))

(assert (=> b!217124 (= res!106287 (and (= (size!5331 (_values!4069 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9837 thiss!1504))) (= (size!5332 (_keys!6135 thiss!1504)) (size!5331 (_values!4069 thiss!1504))) (bvsge (mask!9837 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3823 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3823 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun e!141262 () Bool)

(declare-fun e!141259 () Bool)

(declare-fun array_inv!3301 (array!10558) Bool)

(declare-fun array_inv!3302 (array!10556) Bool)

(assert (=> b!217125 (= e!141262 (and tp!20525 tp_is_empty!5659 (array_inv!3301 (_keys!6135 thiss!1504)) (array_inv!3302 (_values!4069 thiss!1504)) e!141259))))

(declare-fun mapNonEmpty!9651 () Bool)

(declare-fun tp!20526 () Bool)

(declare-fun e!141261 () Bool)

(assert (=> mapNonEmpty!9651 (= mapRes!9651 (and tp!20526 e!141261))))

(declare-fun mapValue!9651 () ValueCell!2486)

(declare-fun mapKey!9651 () (_ BitVec 32))

(declare-fun mapRest!9651 () (Array (_ BitVec 32) ValueCell!2486))

(assert (=> mapNonEmpty!9651 (= (arr!4999 (_values!4069 thiss!1504)) (store mapRest!9651 mapKey!9651 mapValue!9651))))

(declare-fun b!217126 () Bool)

(declare-fun res!106291 () Bool)

(assert (=> b!217126 (=> (not res!106291) (not e!141263))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10558 (_ BitVec 32)) Bool)

(assert (=> b!217126 (= res!106291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6135 thiss!1504) (mask!9837 thiss!1504)))))

(declare-fun res!106289 () Bool)

(assert (=> start!21660 (=> (not res!106289) (not e!141260))))

(declare-fun valid!1159 (LongMapFixedSize!2872) Bool)

(assert (=> start!21660 (= res!106289 (valid!1159 thiss!1504))))

(assert (=> start!21660 e!141260))

(assert (=> start!21660 e!141262))

(assert (=> start!21660 true))

(declare-fun b!217127 () Bool)

(assert (=> b!217127 (= e!141261 tp_is_empty!5659)))

(declare-fun b!217128 () Bool)

(assert (=> b!217128 (= e!141259 (and e!141264 mapRes!9651))))

(declare-fun condMapEmpty!9651 () Bool)

(declare-fun mapDefault!9651 () ValueCell!2486)

