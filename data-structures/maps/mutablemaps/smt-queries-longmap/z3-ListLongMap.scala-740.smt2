; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17246 () Bool)

(assert start!17246)

(declare-fun b!172826 () Bool)

(declare-fun b_free!4281 () Bool)

(declare-fun b_next!4281 () Bool)

(assert (=> b!172826 (= b_free!4281 (not b_next!4281))))

(declare-fun tp!15501 () Bool)

(declare-fun b_and!10739 () Bool)

(assert (=> b!172826 (= tp!15501 b_and!10739)))

(declare-fun b!172825 () Bool)

(declare-fun e!114131 () Bool)

(declare-datatypes ((V!5051 0))(
  ( (V!5052 (val!2071 Int)) )
))
(declare-datatypes ((ValueCell!1683 0))(
  ( (ValueCellFull!1683 (v!3935 V!5051)) (EmptyCell!1683) )
))
(declare-datatypes ((array!7232 0))(
  ( (array!7233 (arr!3436 (Array (_ BitVec 32) (_ BitVec 64))) (size!3735 (_ BitVec 32))) )
))
(declare-datatypes ((array!7234 0))(
  ( (array!7235 (arr!3437 (Array (_ BitVec 32) ValueCell!1683)) (size!3736 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2274 0))(
  ( (LongMapFixedSize!2275 (defaultEntry!3583 Int) (mask!8441 (_ BitVec 32)) (extraKeys!3322 (_ BitVec 32)) (zeroValue!3424 V!5051) (minValue!3426 V!5051) (_size!1186 (_ BitVec 32)) (_keys!5422 array!7232) (_values!3566 array!7234) (_vacant!1186 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2274)

(assert (=> b!172825 (= e!114131 (and (= (size!3736 (_values!3566 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8441 thiss!1248))) (= (size!3735 (_keys!5422 thiss!1248)) (size!3736 (_values!3566 thiss!1248))) (bvsge (mask!8441 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3322 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3322 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3322 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsgt (bvor (extraKeys!3322 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011)))))

(declare-fun e!114132 () Bool)

(declare-fun tp_is_empty!4053 () Bool)

(declare-fun e!114129 () Bool)

(declare-fun array_inv!2191 (array!7232) Bool)

(declare-fun array_inv!2192 (array!7234) Bool)

(assert (=> b!172826 (= e!114132 (and tp!15501 tp_is_empty!4053 (array_inv!2191 (_keys!5422 thiss!1248)) (array_inv!2192 (_values!3566 thiss!1248)) e!114129))))

(declare-fun b!172827 () Bool)

(declare-fun res!82072 () Bool)

(assert (=> b!172827 (=> (not res!82072) (not e!114131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172827 (= res!82072 (validMask!0 (mask!8441 thiss!1248)))))

(declare-fun mapIsEmpty!6900 () Bool)

(declare-fun mapRes!6900 () Bool)

(assert (=> mapIsEmpty!6900 mapRes!6900))

(declare-fun b!172828 () Bool)

(declare-fun e!114130 () Bool)

(assert (=> b!172828 (= e!114129 (and e!114130 mapRes!6900))))

(declare-fun condMapEmpty!6900 () Bool)

(declare-fun mapDefault!6900 () ValueCell!1683)

(assert (=> b!172828 (= condMapEmpty!6900 (= (arr!3437 (_values!3566 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1683)) mapDefault!6900)))))

(declare-fun b!172829 () Bool)

(declare-fun res!82074 () Bool)

(assert (=> b!172829 (=> (not res!82074) (not e!114131))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172829 (= res!82074 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!6900 () Bool)

(declare-fun tp!15500 () Bool)

(declare-fun e!114133 () Bool)

(assert (=> mapNonEmpty!6900 (= mapRes!6900 (and tp!15500 e!114133))))

(declare-fun mapKey!6900 () (_ BitVec 32))

(declare-fun mapValue!6900 () ValueCell!1683)

(declare-fun mapRest!6900 () (Array (_ BitVec 32) ValueCell!1683))

(assert (=> mapNonEmpty!6900 (= (arr!3437 (_values!3566 thiss!1248)) (store mapRest!6900 mapKey!6900 mapValue!6900))))

(declare-fun res!82073 () Bool)

(assert (=> start!17246 (=> (not res!82073) (not e!114131))))

(declare-fun valid!956 (LongMapFixedSize!2274) Bool)

(assert (=> start!17246 (= res!82073 (valid!956 thiss!1248))))

(assert (=> start!17246 e!114131))

(assert (=> start!17246 e!114132))

(assert (=> start!17246 true))

(declare-fun b!172830 () Bool)

(assert (=> b!172830 (= e!114130 tp_is_empty!4053)))

(declare-fun b!172831 () Bool)

(assert (=> b!172831 (= e!114133 tp_is_empty!4053)))

(assert (= (and start!17246 res!82073) b!172829))

(assert (= (and b!172829 res!82074) b!172827))

(assert (= (and b!172827 res!82072) b!172825))

(assert (= (and b!172828 condMapEmpty!6900) mapIsEmpty!6900))

(assert (= (and b!172828 (not condMapEmpty!6900)) mapNonEmpty!6900))

(get-info :version)

(assert (= (and mapNonEmpty!6900 ((_ is ValueCellFull!1683) mapValue!6900)) b!172831))

(assert (= (and b!172828 ((_ is ValueCellFull!1683) mapDefault!6900)) b!172830))

(assert (= b!172826 b!172828))

(assert (= start!17246 b!172826))

(declare-fun m!201411 () Bool)

(assert (=> b!172826 m!201411))

(declare-fun m!201413 () Bool)

(assert (=> b!172826 m!201413))

(declare-fun m!201415 () Bool)

(assert (=> b!172827 m!201415))

(declare-fun m!201417 () Bool)

(assert (=> mapNonEmpty!6900 m!201417))

(declare-fun m!201419 () Bool)

(assert (=> start!17246 m!201419))

(check-sat (not b_next!4281) tp_is_empty!4053 (not mapNonEmpty!6900) b_and!10739 (not b!172827) (not b!172826) (not start!17246))
(check-sat b_and!10739 (not b_next!4281))
