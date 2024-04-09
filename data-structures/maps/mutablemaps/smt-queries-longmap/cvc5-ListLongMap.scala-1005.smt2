; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21642 () Bool)

(assert start!21642)

(declare-fun b!216821 () Bool)

(declare-fun b_free!5779 () Bool)

(declare-fun b_next!5779 () Bool)

(assert (=> b!216821 (= b_free!5779 (not b_next!5779))))

(declare-fun tp!20471 () Bool)

(declare-fun b_and!12687 () Bool)

(assert (=> b!216821 (= tp!20471 b_and!12687)))

(declare-datatypes ((V!7169 0))(
  ( (V!7170 (val!2865 Int)) )
))
(declare-datatypes ((ValueCell!2477 0))(
  ( (ValueCellFull!2477 (v!4879 V!7169)) (EmptyCell!2477) )
))
(declare-datatypes ((array!10520 0))(
  ( (array!10521 (arr!4981 (Array (_ BitVec 32) ValueCell!2477)) (size!5313 (_ BitVec 32))) )
))
(declare-datatypes ((array!10522 0))(
  ( (array!10523 (arr!4982 (Array (_ BitVec 32) (_ BitVec 64))) (size!5314 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2854 0))(
  ( (LongMapFixedSize!2855 (defaultEntry!4077 Int) (mask!9822 (_ BitVec 32)) (extraKeys!3814 (_ BitVec 32)) (zeroValue!3918 V!7169) (minValue!3918 V!7169) (_size!1476 (_ BitVec 32)) (_keys!6126 array!10522) (_values!4060 array!10520) (_vacant!1476 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2854)

(declare-fun e!141069 () Bool)

(declare-fun tp_is_empty!5641 () Bool)

(declare-fun e!141073 () Bool)

(declare-fun array_inv!3283 (array!10522) Bool)

(declare-fun array_inv!3284 (array!10520) Bool)

(assert (=> b!216821 (= e!141069 (and tp!20471 tp_is_empty!5641 (array_inv!3283 (_keys!6126 thiss!1504)) (array_inv!3284 (_values!4060 thiss!1504)) e!141073))))

(declare-fun b!216822 () Bool)

(declare-fun e!141070 () Bool)

(declare-fun e!141071 () Bool)

(assert (=> b!216822 (= e!141070 e!141071)))

(declare-fun res!106099 () Bool)

(assert (=> b!216822 (=> (not res!106099) (not e!141071))))

(declare-datatypes ((SeekEntryResult!763 0))(
  ( (MissingZero!763 (index!5222 (_ BitVec 32))) (Found!763 (index!5223 (_ BitVec 32))) (Intermediate!763 (undefined!1575 Bool) (index!5224 (_ BitVec 32)) (x!22691 (_ BitVec 32))) (Undefined!763) (MissingVacant!763 (index!5225 (_ BitVec 32))) )
))
(declare-fun lt!111264 () SeekEntryResult!763)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216822 (= res!106099 (or (= lt!111264 (MissingZero!763 index!297)) (= lt!111264 (MissingVacant!763 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10522 (_ BitVec 32)) SeekEntryResult!763)

(assert (=> b!216822 (= lt!111264 (seekEntryOrOpen!0 key!932 (_keys!6126 thiss!1504) (mask!9822 thiss!1504)))))

(declare-fun b!216823 () Bool)

(assert (=> b!216823 (= e!141071 false)))

(declare-fun lt!111265 () Bool)

(declare-datatypes ((List!3187 0))(
  ( (Nil!3184) (Cons!3183 (h!3830 (_ BitVec 64)) (t!8150 List!3187)) )
))
(declare-fun arrayNoDuplicates!0 (array!10522 (_ BitVec 32) List!3187) Bool)

(assert (=> b!216823 (= lt!111265 (arrayNoDuplicates!0 (_keys!6126 thiss!1504) #b00000000000000000000000000000000 Nil!3184))))

(declare-fun res!106104 () Bool)

(assert (=> start!21642 (=> (not res!106104) (not e!141070))))

(declare-fun valid!1151 (LongMapFixedSize!2854) Bool)

(assert (=> start!21642 (= res!106104 (valid!1151 thiss!1504))))

(assert (=> start!21642 e!141070))

(assert (=> start!21642 e!141069))

(assert (=> start!21642 true))

(declare-fun mapNonEmpty!9624 () Bool)

(declare-fun mapRes!9624 () Bool)

(declare-fun tp!20472 () Bool)

(declare-fun e!141074 () Bool)

(assert (=> mapNonEmpty!9624 (= mapRes!9624 (and tp!20472 e!141074))))

(declare-fun mapValue!9624 () ValueCell!2477)

(declare-fun mapRest!9624 () (Array (_ BitVec 32) ValueCell!2477))

(declare-fun mapKey!9624 () (_ BitVec 32))

(assert (=> mapNonEmpty!9624 (= (arr!4981 (_values!4060 thiss!1504)) (store mapRest!9624 mapKey!9624 mapValue!9624))))

(declare-fun b!216824 () Bool)

(declare-fun res!106100 () Bool)

(assert (=> b!216824 (=> (not res!106100) (not e!141071))))

(assert (=> b!216824 (= res!106100 (and (= (size!5313 (_values!4060 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9822 thiss!1504))) (= (size!5314 (_keys!6126 thiss!1504)) (size!5313 (_values!4060 thiss!1504))) (bvsge (mask!9822 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3814 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3814 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!216825 () Bool)

(assert (=> b!216825 (= e!141074 tp_is_empty!5641)))

(declare-fun b!216826 () Bool)

(declare-fun res!106098 () Bool)

(assert (=> b!216826 (=> (not res!106098) (not e!141071))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10522 (_ BitVec 32)) Bool)

(assert (=> b!216826 (= res!106098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6126 thiss!1504) (mask!9822 thiss!1504)))))

(declare-fun mapIsEmpty!9624 () Bool)

(assert (=> mapIsEmpty!9624 mapRes!9624))

(declare-fun b!216827 () Bool)

(declare-fun res!106102 () Bool)

(assert (=> b!216827 (=> (not res!106102) (not e!141071))))

(declare-datatypes ((tuple2!4260 0))(
  ( (tuple2!4261 (_1!2140 (_ BitVec 64)) (_2!2140 V!7169)) )
))
(declare-datatypes ((List!3188 0))(
  ( (Nil!3185) (Cons!3184 (h!3831 tuple2!4260) (t!8151 List!3188)) )
))
(declare-datatypes ((ListLongMap!3187 0))(
  ( (ListLongMap!3188 (toList!1609 List!3188)) )
))
(declare-fun contains!1444 (ListLongMap!3187 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1132 (array!10522 array!10520 (_ BitVec 32) (_ BitVec 32) V!7169 V!7169 (_ BitVec 32) Int) ListLongMap!3187)

(assert (=> b!216827 (= res!106102 (contains!1444 (getCurrentListMap!1132 (_keys!6126 thiss!1504) (_values!4060 thiss!1504) (mask!9822 thiss!1504) (extraKeys!3814 thiss!1504) (zeroValue!3918 thiss!1504) (minValue!3918 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4077 thiss!1504)) key!932))))

(declare-fun b!216828 () Bool)

(declare-fun res!106101 () Bool)

(assert (=> b!216828 (=> (not res!106101) (not e!141070))))

(assert (=> b!216828 (= res!106101 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216829 () Bool)

(declare-fun e!141072 () Bool)

(assert (=> b!216829 (= e!141072 tp_is_empty!5641)))

(declare-fun b!216830 () Bool)

(declare-fun res!106103 () Bool)

(assert (=> b!216830 (=> (not res!106103) (not e!141071))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216830 (= res!106103 (validMask!0 (mask!9822 thiss!1504)))))

(declare-fun b!216831 () Bool)

(assert (=> b!216831 (= e!141073 (and e!141072 mapRes!9624))))

(declare-fun condMapEmpty!9624 () Bool)

(declare-fun mapDefault!9624 () ValueCell!2477)

