; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16066 () Bool)

(assert start!16066)

(declare-fun b!159254 () Bool)

(declare-fun b_free!3515 () Bool)

(declare-fun b_next!3515 () Bool)

(assert (=> b!159254 (= b_free!3515 (not b_next!3515))))

(declare-fun tp!13114 () Bool)

(declare-fun b_and!9947 () Bool)

(assert (=> b!159254 (= tp!13114 b_and!9947)))

(declare-fun b!159253 () Bool)

(declare-fun res!75233 () Bool)

(declare-fun e!104266 () Bool)

(assert (=> b!159253 (=> (not res!75233) (not e!104266))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!159253 (= res!75233 (not (= key!828 (bvneg key!828))))))

(declare-fun tp_is_empty!3317 () Bool)

(declare-fun e!104262 () Bool)

(declare-fun e!104267 () Bool)

(declare-datatypes ((V!4069 0))(
  ( (V!4070 (val!1703 Int)) )
))
(declare-datatypes ((ValueCell!1315 0))(
  ( (ValueCellFull!1315 (v!3564 V!4069)) (EmptyCell!1315) )
))
(declare-datatypes ((array!5712 0))(
  ( (array!5713 (arr!2700 (Array (_ BitVec 32) (_ BitVec 64))) (size!2984 (_ BitVec 32))) )
))
(declare-datatypes ((array!5714 0))(
  ( (array!5715 (arr!2701 (Array (_ BitVec 32) ValueCell!1315)) (size!2985 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1538 0))(
  ( (LongMapFixedSize!1539 (defaultEntry!3211 Int) (mask!7757 (_ BitVec 32)) (extraKeys!2952 (_ BitVec 32)) (zeroValue!3054 V!4069) (minValue!3054 V!4069) (_size!818 (_ BitVec 32)) (_keys!5012 array!5712) (_values!3194 array!5714) (_vacant!818 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1538)

(declare-fun array_inv!1711 (array!5712) Bool)

(declare-fun array_inv!1712 (array!5714) Bool)

(assert (=> b!159254 (= e!104262 (and tp!13114 tp_is_empty!3317 (array_inv!1711 (_keys!5012 thiss!1248)) (array_inv!1712 (_values!3194 thiss!1248)) e!104267))))

(declare-fun b!159255 () Bool)

(declare-fun res!75239 () Bool)

(assert (=> b!159255 (=> (not res!75239) (not e!104266))))

(declare-datatypes ((tuple2!2862 0))(
  ( (tuple2!2863 (_1!1441 (_ BitVec 64)) (_2!1441 V!4069)) )
))
(declare-datatypes ((List!1916 0))(
  ( (Nil!1913) (Cons!1912 (h!2525 tuple2!2862) (t!6726 List!1916)) )
))
(declare-datatypes ((ListLongMap!1871 0))(
  ( (ListLongMap!1872 (toList!951 List!1916)) )
))
(declare-fun contains!981 (ListLongMap!1871 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!611 (array!5712 array!5714 (_ BitVec 32) (_ BitVec 32) V!4069 V!4069 (_ BitVec 32) Int) ListLongMap!1871)

(assert (=> b!159255 (= res!75239 (contains!981 (getCurrentListMap!611 (_keys!5012 thiss!1248) (_values!3194 thiss!1248) (mask!7757 thiss!1248) (extraKeys!2952 thiss!1248) (zeroValue!3054 thiss!1248) (minValue!3054 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3211 thiss!1248)) key!828))))

(declare-fun b!159256 () Bool)

(declare-fun e!104264 () Bool)

(assert (=> b!159256 (= e!104264 tp_is_empty!3317)))

(declare-fun b!159257 () Bool)

(assert (=> b!159257 (= e!104266 false)))

(declare-fun lt!82007 () Bool)

(declare-datatypes ((List!1917 0))(
  ( (Nil!1914) (Cons!1913 (h!2526 (_ BitVec 64)) (t!6727 List!1917)) )
))
(declare-fun arrayNoDuplicates!0 (array!5712 (_ BitVec 32) List!1917) Bool)

(assert (=> b!159257 (= lt!82007 (arrayNoDuplicates!0 (_keys!5012 thiss!1248) #b00000000000000000000000000000000 Nil!1914))))

(declare-fun b!159258 () Bool)

(declare-fun res!75237 () Bool)

(assert (=> b!159258 (=> (not res!75237) (not e!104266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5712 (_ BitVec 32)) Bool)

(assert (=> b!159258 (= res!75237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5012 thiss!1248) (mask!7757 thiss!1248)))))

(declare-fun b!159259 () Bool)

(declare-fun res!75234 () Bool)

(assert (=> b!159259 (=> (not res!75234) (not e!104266))))

(assert (=> b!159259 (= res!75234 (and (= (size!2985 (_values!3194 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7757 thiss!1248))) (= (size!2984 (_keys!5012 thiss!1248)) (size!2985 (_values!3194 thiss!1248))) (bvsge (mask!7757 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2952 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2952 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159260 () Bool)

(declare-fun e!104263 () Bool)

(declare-fun mapRes!5663 () Bool)

(assert (=> b!159260 (= e!104267 (and e!104263 mapRes!5663))))

(declare-fun condMapEmpty!5663 () Bool)

(declare-fun mapDefault!5663 () ValueCell!1315)

