; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15754 () Bool)

(assert start!15754)

(declare-fun b!157057 () Bool)

(declare-fun b_free!3409 () Bool)

(declare-fun b_next!3409 () Bool)

(assert (=> b!157057 (= b_free!3409 (not b_next!3409))))

(declare-fun tp!12751 () Bool)

(declare-fun b_and!9841 () Bool)

(assert (=> b!157057 (= tp!12751 b_and!9841)))

(declare-fun b!157053 () Bool)

(declare-fun e!102758 () Bool)

(declare-fun tp_is_empty!3211 () Bool)

(assert (=> b!157053 (= e!102758 tp_is_empty!3211)))

(declare-fun b!157054 () Bool)

(declare-fun res!74261 () Bool)

(declare-fun e!102759 () Bool)

(assert (=> b!157054 (=> (not res!74261) (not e!102759))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157054 (= res!74261 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!157055 () Bool)

(declare-fun e!102756 () Bool)

(assert (=> b!157055 (= e!102756 tp_is_empty!3211)))

(declare-fun mapIsEmpty!5459 () Bool)

(declare-fun mapRes!5459 () Bool)

(assert (=> mapIsEmpty!5459 mapRes!5459))

(declare-fun b!157056 () Bool)

(declare-fun e!102755 () Bool)

(assert (=> b!157056 (= e!102755 true)))

(declare-fun lt!81665 () Bool)

(declare-datatypes ((V!3929 0))(
  ( (V!3930 (val!1650 Int)) )
))
(declare-datatypes ((ValueCell!1262 0))(
  ( (ValueCellFull!1262 (v!3511 V!3929)) (EmptyCell!1262) )
))
(declare-datatypes ((array!5474 0))(
  ( (array!5475 (arr!2594 (Array (_ BitVec 32) (_ BitVec 64))) (size!2872 (_ BitVec 32))) )
))
(declare-datatypes ((array!5476 0))(
  ( (array!5477 (arr!2595 (Array (_ BitVec 32) ValueCell!1262)) (size!2873 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1432 0))(
  ( (LongMapFixedSize!1433 (defaultEntry!3158 Int) (mask!7627 (_ BitVec 32)) (extraKeys!2899 (_ BitVec 32)) (zeroValue!3001 V!3929) (minValue!3001 V!3929) (_size!765 (_ BitVec 32)) (_keys!4933 array!5474) (_values!3141 array!5476) (_vacant!765 (_ BitVec 32))) )
))
(declare-fun lt!81663 () LongMapFixedSize!1432)

(declare-datatypes ((tuple2!2838 0))(
  ( (tuple2!2839 (_1!1429 (_ BitVec 64)) (_2!1429 V!3929)) )
))
(declare-datatypes ((List!1886 0))(
  ( (Nil!1883) (Cons!1882 (h!2491 tuple2!2838) (t!6696 List!1886)) )
))
(declare-datatypes ((ListLongMap!1847 0))(
  ( (ListLongMap!1848 (toList!939 List!1886)) )
))
(declare-fun contains!967 (ListLongMap!1847 (_ BitVec 64)) Bool)

(declare-fun map!1566 (LongMapFixedSize!1432) ListLongMap!1847)

(assert (=> b!157056 (= lt!81665 (contains!967 (map!1566 lt!81663) key!828))))

(declare-fun e!102760 () Bool)

(declare-fun e!102757 () Bool)

(declare-fun thiss!1248 () LongMapFixedSize!1432)

(declare-fun array_inv!1639 (array!5474) Bool)

(declare-fun array_inv!1640 (array!5476) Bool)

(assert (=> b!157057 (= e!102757 (and tp!12751 tp_is_empty!3211 (array_inv!1639 (_keys!4933 thiss!1248)) (array_inv!1640 (_values!3141 thiss!1248)) e!102760))))

(declare-fun res!74263 () Bool)

(assert (=> start!15754 (=> (not res!74263) (not e!102759))))

(declare-fun valid!680 (LongMapFixedSize!1432) Bool)

(assert (=> start!15754 (= res!74263 (valid!680 thiss!1248))))

(assert (=> start!15754 e!102759))

(assert (=> start!15754 e!102757))

(assert (=> start!15754 true))

(assert (=> start!15754 tp_is_empty!3211))

(declare-fun b!157058 () Bool)

(assert (=> b!157058 (= e!102759 (not e!102755))))

(declare-fun res!74262 () Bool)

(assert (=> b!157058 (=> res!74262 e!102755)))

(assert (=> b!157058 (= res!74262 (not (valid!680 lt!81663)))))

(declare-fun v!309 () V!3929)

(assert (=> b!157058 (= lt!81663 (LongMapFixedSize!1433 (defaultEntry!3158 thiss!1248) (mask!7627 thiss!1248) (bvor (extraKeys!2899 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3001 thiss!1248) v!309 (_size!765 thiss!1248) (_keys!4933 thiss!1248) (_values!3141 thiss!1248) (_vacant!765 thiss!1248)))))

(declare-fun +!202 (ListLongMap!1847 tuple2!2838) ListLongMap!1847)

(declare-fun getCurrentListMap!599 (array!5474 array!5476 (_ BitVec 32) (_ BitVec 32) V!3929 V!3929 (_ BitVec 32) Int) ListLongMap!1847)

(assert (=> b!157058 (= (+!202 (getCurrentListMap!599 (_keys!4933 thiss!1248) (_values!3141 thiss!1248) (mask!7627 thiss!1248) (extraKeys!2899 thiss!1248) (zeroValue!3001 thiss!1248) (minValue!3001 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3158 thiss!1248)) (tuple2!2839 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!599 (_keys!4933 thiss!1248) (_values!3141 thiss!1248) (mask!7627 thiss!1248) (bvor (extraKeys!2899 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3001 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3158 thiss!1248)))))

(declare-datatypes ((Unit!4956 0))(
  ( (Unit!4957) )
))
(declare-fun lt!81664 () Unit!4956)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!74 (array!5474 array!5476 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3929 V!3929 V!3929 Int) Unit!4956)

(assert (=> b!157058 (= lt!81664 (lemmaChangeLongMinValueKeyThenAddPairToListMap!74 (_keys!4933 thiss!1248) (_values!3141 thiss!1248) (mask!7627 thiss!1248) (extraKeys!2899 thiss!1248) (bvor (extraKeys!2899 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3001 thiss!1248) (minValue!3001 thiss!1248) v!309 (defaultEntry!3158 thiss!1248)))))

(declare-fun b!157059 () Bool)

(assert (=> b!157059 (= e!102760 (and e!102758 mapRes!5459))))

(declare-fun condMapEmpty!5459 () Bool)

(declare-fun mapDefault!5459 () ValueCell!1262)

