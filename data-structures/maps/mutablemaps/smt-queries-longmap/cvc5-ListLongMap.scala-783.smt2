; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18606 () Bool)

(assert start!18606)

(declare-fun b!184042 () Bool)

(declare-fun b_free!4537 () Bool)

(declare-fun b_next!4537 () Bool)

(assert (=> b!184042 (= b_free!4537 (not b_next!4537))))

(declare-fun tp!16390 () Bool)

(declare-fun b_and!11137 () Bool)

(assert (=> b!184042 (= tp!16390 b_and!11137)))

(declare-fun b!184038 () Bool)

(declare-fun e!121154 () Bool)

(declare-fun tp_is_empty!4309 () Bool)

(assert (=> b!184038 (= e!121154 tp_is_empty!4309)))

(declare-fun res!87099 () Bool)

(declare-fun e!121156 () Bool)

(assert (=> start!18606 (=> (not res!87099) (not e!121156))))

(declare-datatypes ((V!5393 0))(
  ( (V!5394 (val!2199 Int)) )
))
(declare-datatypes ((ValueCell!1811 0))(
  ( (ValueCellFull!1811 (v!4100 V!5393)) (EmptyCell!1811) )
))
(declare-datatypes ((array!7814 0))(
  ( (array!7815 (arr!3692 (Array (_ BitVec 32) (_ BitVec 64))) (size!4006 (_ BitVec 32))) )
))
(declare-datatypes ((array!7816 0))(
  ( (array!7817 (arr!3693 (Array (_ BitVec 32) ValueCell!1811)) (size!4007 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2530 0))(
  ( (LongMapFixedSize!2531 (defaultEntry!3759 Int) (mask!8837 (_ BitVec 32)) (extraKeys!3496 (_ BitVec 32)) (zeroValue!3600 V!5393) (minValue!3600 V!5393) (_size!1314 (_ BitVec 32)) (_keys!5685 array!7814) (_values!3742 array!7816) (_vacant!1314 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2530)

(declare-fun valid!1039 (LongMapFixedSize!2530) Bool)

(assert (=> start!18606 (= res!87099 (valid!1039 thiss!1248))))

(assert (=> start!18606 e!121156))

(declare-fun e!121152 () Bool)

(assert (=> start!18606 e!121152))

(assert (=> start!18606 true))

(declare-fun b!184039 () Bool)

(declare-fun e!121157 () Bool)

(assert (=> b!184039 (= e!121157 (and (= (size!4007 (_values!3742 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8837 thiss!1248))) (= (size!4006 (_keys!5685 thiss!1248)) (size!4007 (_values!3742 thiss!1248))) (bvslt (mask!8837 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!184040 () Bool)

(declare-fun res!87096 () Bool)

(assert (=> b!184040 (=> (not res!87096) (not e!121157))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3422 0))(
  ( (tuple2!3423 (_1!1721 (_ BitVec 64)) (_2!1721 V!5393)) )
))
(declare-datatypes ((List!2362 0))(
  ( (Nil!2359) (Cons!2358 (h!2989 tuple2!3422) (t!7242 List!2362)) )
))
(declare-datatypes ((ListLongMap!2353 0))(
  ( (ListLongMap!2354 (toList!1192 List!2362)) )
))
(declare-fun contains!1276 (ListLongMap!2353 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!835 (array!7814 array!7816 (_ BitVec 32) (_ BitVec 32) V!5393 V!5393 (_ BitVec 32) Int) ListLongMap!2353)

(assert (=> b!184040 (= res!87096 (not (contains!1276 (getCurrentListMap!835 (_keys!5685 thiss!1248) (_values!3742 thiss!1248) (mask!8837 thiss!1248) (extraKeys!3496 thiss!1248) (zeroValue!3600 thiss!1248) (minValue!3600 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3759 thiss!1248)) key!828)))))

(declare-fun b!184041 () Bool)

(assert (=> b!184041 (= e!121156 e!121157)))

(declare-fun res!87097 () Bool)

(assert (=> b!184041 (=> (not res!87097) (not e!121157))))

(declare-datatypes ((SeekEntryResult!634 0))(
  ( (MissingZero!634 (index!4706 (_ BitVec 32))) (Found!634 (index!4707 (_ BitVec 32))) (Intermediate!634 (undefined!1446 Bool) (index!4708 (_ BitVec 32)) (x!20040 (_ BitVec 32))) (Undefined!634) (MissingVacant!634 (index!4709 (_ BitVec 32))) )
))
(declare-fun lt!91053 () SeekEntryResult!634)

(assert (=> b!184041 (= res!87097 (and (not (is-Undefined!634 lt!91053)) (not (is-MissingVacant!634 lt!91053)) (not (is-MissingZero!634 lt!91053)) (is-Found!634 lt!91053)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7814 (_ BitVec 32)) SeekEntryResult!634)

(assert (=> b!184041 (= lt!91053 (seekEntryOrOpen!0 key!828 (_keys!5685 thiss!1248) (mask!8837 thiss!1248)))))

(declare-fun e!121153 () Bool)

(declare-fun array_inv!2379 (array!7814) Bool)

(declare-fun array_inv!2380 (array!7816) Bool)

(assert (=> b!184042 (= e!121152 (and tp!16390 tp_is_empty!4309 (array_inv!2379 (_keys!5685 thiss!1248)) (array_inv!2380 (_values!3742 thiss!1248)) e!121153))))

(declare-fun b!184043 () Bool)

(declare-fun e!121151 () Bool)

(assert (=> b!184043 (= e!121151 tp_is_empty!4309)))

(declare-fun b!184044 () Bool)

(declare-fun res!87100 () Bool)

(assert (=> b!184044 (=> (not res!87100) (not e!121156))))

(assert (=> b!184044 (= res!87100 (not (= key!828 (bvneg key!828))))))

(declare-fun b!184045 () Bool)

(declare-fun res!87098 () Bool)

(assert (=> b!184045 (=> (not res!87098) (not e!121157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!184045 (= res!87098 (validMask!0 (mask!8837 thiss!1248)))))

(declare-fun mapIsEmpty!7405 () Bool)

(declare-fun mapRes!7405 () Bool)

(assert (=> mapIsEmpty!7405 mapRes!7405))

(declare-fun b!184046 () Bool)

(assert (=> b!184046 (= e!121153 (and e!121154 mapRes!7405))))

(declare-fun condMapEmpty!7405 () Bool)

(declare-fun mapDefault!7405 () ValueCell!1811)

