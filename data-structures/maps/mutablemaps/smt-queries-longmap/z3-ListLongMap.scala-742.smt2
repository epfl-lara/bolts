; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17258 () Bool)

(assert start!17258)

(declare-fun b!172953 () Bool)

(declare-fun b_free!4293 () Bool)

(declare-fun b_next!4293 () Bool)

(assert (=> b!172953 (= b_free!4293 (not b_next!4293))))

(declare-fun tp!15536 () Bool)

(declare-fun b_and!10751 () Bool)

(assert (=> b!172953 (= tp!15536 b_and!10751)))

(declare-fun b!172951 () Bool)

(declare-fun e!114241 () Bool)

(declare-fun e!114236 () Bool)

(declare-fun mapRes!6918 () Bool)

(assert (=> b!172951 (= e!114241 (and e!114236 mapRes!6918))))

(declare-fun condMapEmpty!6918 () Bool)

(declare-datatypes ((V!5067 0))(
  ( (V!5068 (val!2077 Int)) )
))
(declare-datatypes ((ValueCell!1689 0))(
  ( (ValueCellFull!1689 (v!3941 V!5067)) (EmptyCell!1689) )
))
(declare-datatypes ((array!7256 0))(
  ( (array!7257 (arr!3448 (Array (_ BitVec 32) (_ BitVec 64))) (size!3747 (_ BitVec 32))) )
))
(declare-datatypes ((array!7258 0))(
  ( (array!7259 (arr!3449 (Array (_ BitVec 32) ValueCell!1689)) (size!3748 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2286 0))(
  ( (LongMapFixedSize!2287 (defaultEntry!3589 Int) (mask!8451 (_ BitVec 32)) (extraKeys!3328 (_ BitVec 32)) (zeroValue!3430 V!5067) (minValue!3432 V!5067) (_size!1192 (_ BitVec 32)) (_keys!5428 array!7256) (_values!3572 array!7258) (_vacant!1192 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2286)

(declare-fun mapDefault!6918 () ValueCell!1689)

(assert (=> b!172951 (= condMapEmpty!6918 (= (arr!3449 (_values!3572 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1689)) mapDefault!6918)))))

(declare-fun res!82127 () Bool)

(declare-fun e!114239 () Bool)

(assert (=> start!17258 (=> (not res!82127) (not e!114239))))

(declare-fun valid!960 (LongMapFixedSize!2286) Bool)

(assert (=> start!17258 (= res!82127 (valid!960 thiss!1248))))

(assert (=> start!17258 e!114239))

(declare-fun e!114237 () Bool)

(assert (=> start!17258 e!114237))

(assert (=> start!17258 true))

(declare-fun b!172952 () Bool)

(assert (=> b!172952 (= e!114239 (and (= (size!3748 (_values!3572 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8451 thiss!1248))) (= (size!3747 (_keys!5428 thiss!1248)) (size!3748 (_values!3572 thiss!1248))) (bvsge (mask!8451 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3328 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3328 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3328 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3328 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!3328 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!3328 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (= (bvand (bvor (extraKeys!3328 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!6918 () Bool)

(declare-fun tp!15537 () Bool)

(declare-fun e!114238 () Bool)

(assert (=> mapNonEmpty!6918 (= mapRes!6918 (and tp!15537 e!114238))))

(declare-fun mapKey!6918 () (_ BitVec 32))

(declare-fun mapRest!6918 () (Array (_ BitVec 32) ValueCell!1689))

(declare-fun mapValue!6918 () ValueCell!1689)

(assert (=> mapNonEmpty!6918 (= (arr!3449 (_values!3572 thiss!1248)) (store mapRest!6918 mapKey!6918 mapValue!6918))))

(declare-fun tp_is_empty!4065 () Bool)

(declare-fun array_inv!2195 (array!7256) Bool)

(declare-fun array_inv!2196 (array!7258) Bool)

(assert (=> b!172953 (= e!114237 (and tp!15536 tp_is_empty!4065 (array_inv!2195 (_keys!5428 thiss!1248)) (array_inv!2196 (_values!3572 thiss!1248)) e!114241))))

(declare-fun b!172954 () Bool)

(assert (=> b!172954 (= e!114238 tp_is_empty!4065)))

(declare-fun b!172955 () Bool)

(declare-fun res!82126 () Bool)

(assert (=> b!172955 (=> (not res!82126) (not e!114239))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172955 (= res!82126 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!6918 () Bool)

(assert (=> mapIsEmpty!6918 mapRes!6918))

(declare-fun b!172956 () Bool)

(declare-fun res!82128 () Bool)

(assert (=> b!172956 (=> (not res!82128) (not e!114239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172956 (= res!82128 (validMask!0 (mask!8451 thiss!1248)))))

(declare-fun b!172957 () Bool)

(assert (=> b!172957 (= e!114236 tp_is_empty!4065)))

(assert (= (and start!17258 res!82127) b!172955))

(assert (= (and b!172955 res!82126) b!172956))

(assert (= (and b!172956 res!82128) b!172952))

(assert (= (and b!172951 condMapEmpty!6918) mapIsEmpty!6918))

(assert (= (and b!172951 (not condMapEmpty!6918)) mapNonEmpty!6918))

(get-info :version)

(assert (= (and mapNonEmpty!6918 ((_ is ValueCellFull!1689) mapValue!6918)) b!172954))

(assert (= (and b!172951 ((_ is ValueCellFull!1689) mapDefault!6918)) b!172957))

(assert (= b!172953 b!172951))

(assert (= start!17258 b!172953))

(declare-fun m!201471 () Bool)

(assert (=> start!17258 m!201471))

(declare-fun m!201473 () Bool)

(assert (=> mapNonEmpty!6918 m!201473))

(declare-fun m!201475 () Bool)

(assert (=> b!172953 m!201475))

(declare-fun m!201477 () Bool)

(assert (=> b!172953 m!201477))

(declare-fun m!201479 () Bool)

(assert (=> b!172956 m!201479))

(check-sat (not start!17258) tp_is_empty!4065 (not b_next!4293) (not mapNonEmpty!6918) b_and!10751 (not b!172953) (not b!172956))
(check-sat b_and!10751 (not b_next!4293))
