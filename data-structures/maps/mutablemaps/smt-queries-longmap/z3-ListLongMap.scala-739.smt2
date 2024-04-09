; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17240 () Bool)

(assert start!17240)

(declare-fun b!172762 () Bool)

(declare-fun b_free!4275 () Bool)

(declare-fun b_next!4275 () Bool)

(assert (=> b!172762 (= b_free!4275 (not b_next!4275))))

(declare-fun tp!15482 () Bool)

(declare-fun b_and!10733 () Bool)

(assert (=> b!172762 (= tp!15482 b_and!10733)))

(declare-fun e!114075 () Bool)

(declare-fun tp_is_empty!4047 () Bool)

(declare-datatypes ((V!5043 0))(
  ( (V!5044 (val!2068 Int)) )
))
(declare-datatypes ((ValueCell!1680 0))(
  ( (ValueCellFull!1680 (v!3932 V!5043)) (EmptyCell!1680) )
))
(declare-datatypes ((array!7220 0))(
  ( (array!7221 (arr!3430 (Array (_ BitVec 32) (_ BitVec 64))) (size!3729 (_ BitVec 32))) )
))
(declare-datatypes ((array!7222 0))(
  ( (array!7223 (arr!3431 (Array (_ BitVec 32) ValueCell!1680)) (size!3730 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2268 0))(
  ( (LongMapFixedSize!2269 (defaultEntry!3580 Int) (mask!8436 (_ BitVec 32)) (extraKeys!3319 (_ BitVec 32)) (zeroValue!3421 V!5043) (minValue!3423 V!5043) (_size!1183 (_ BitVec 32)) (_keys!5419 array!7220) (_values!3563 array!7222) (_vacant!1183 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2268)

(declare-fun e!114074 () Bool)

(declare-fun array_inv!2189 (array!7220) Bool)

(declare-fun array_inv!2190 (array!7222) Bool)

(assert (=> b!172762 (= e!114075 (and tp!15482 tp_is_empty!4047 (array_inv!2189 (_keys!5419 thiss!1248)) (array_inv!2190 (_values!3563 thiss!1248)) e!114074))))

(declare-fun b!172763 () Bool)

(declare-fun res!82046 () Bool)

(declare-fun e!114076 () Bool)

(assert (=> b!172763 (=> (not res!82046) (not e!114076))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172763 (= res!82046 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!172764 () Bool)

(assert (=> b!172764 (= e!114076 (and (= (size!3730 (_values!3563 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8436 thiss!1248))) (= (size!3729 (_keys!5419 thiss!1248)) (size!3730 (_values!3563 thiss!1248))) (bvsge (mask!8436 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3319 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3319 thiss!1248) #b00000000000000000000000000000011) (bvslt (bvor (extraKeys!3319 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!82045 () Bool)

(assert (=> start!17240 (=> (not res!82045) (not e!114076))))

(declare-fun valid!953 (LongMapFixedSize!2268) Bool)

(assert (=> start!17240 (= res!82045 (valid!953 thiss!1248))))

(assert (=> start!17240 e!114076))

(assert (=> start!17240 e!114075))

(assert (=> start!17240 true))

(declare-fun mapNonEmpty!6891 () Bool)

(declare-fun mapRes!6891 () Bool)

(declare-fun tp!15483 () Bool)

(declare-fun e!114078 () Bool)

(assert (=> mapNonEmpty!6891 (= mapRes!6891 (and tp!15483 e!114078))))

(declare-fun mapKey!6891 () (_ BitVec 32))

(declare-fun mapValue!6891 () ValueCell!1680)

(declare-fun mapRest!6891 () (Array (_ BitVec 32) ValueCell!1680))

(assert (=> mapNonEmpty!6891 (= (arr!3431 (_values!3563 thiss!1248)) (store mapRest!6891 mapKey!6891 mapValue!6891))))

(declare-fun mapIsEmpty!6891 () Bool)

(assert (=> mapIsEmpty!6891 mapRes!6891))

(declare-fun b!172765 () Bool)

(declare-fun e!114079 () Bool)

(assert (=> b!172765 (= e!114079 tp_is_empty!4047)))

(declare-fun b!172766 () Bool)

(assert (=> b!172766 (= e!114078 tp_is_empty!4047)))

(declare-fun b!172767 () Bool)

(assert (=> b!172767 (= e!114074 (and e!114079 mapRes!6891))))

(declare-fun condMapEmpty!6891 () Bool)

(declare-fun mapDefault!6891 () ValueCell!1680)

(assert (=> b!172767 (= condMapEmpty!6891 (= (arr!3431 (_values!3563 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1680)) mapDefault!6891)))))

(declare-fun b!172768 () Bool)

(declare-fun res!82047 () Bool)

(assert (=> b!172768 (=> (not res!82047) (not e!114076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172768 (= res!82047 (validMask!0 (mask!8436 thiss!1248)))))

(assert (= (and start!17240 res!82045) b!172763))

(assert (= (and b!172763 res!82046) b!172768))

(assert (= (and b!172768 res!82047) b!172764))

(assert (= (and b!172767 condMapEmpty!6891) mapIsEmpty!6891))

(assert (= (and b!172767 (not condMapEmpty!6891)) mapNonEmpty!6891))

(get-info :version)

(assert (= (and mapNonEmpty!6891 ((_ is ValueCellFull!1680) mapValue!6891)) b!172766))

(assert (= (and b!172767 ((_ is ValueCellFull!1680) mapDefault!6891)) b!172765))

(assert (= b!172762 b!172767))

(assert (= start!17240 b!172762))

(declare-fun m!201381 () Bool)

(assert (=> b!172762 m!201381))

(declare-fun m!201383 () Bool)

(assert (=> b!172762 m!201383))

(declare-fun m!201385 () Bool)

(assert (=> start!17240 m!201385))

(declare-fun m!201387 () Bool)

(assert (=> mapNonEmpty!6891 m!201387))

(declare-fun m!201389 () Bool)

(assert (=> b!172768 m!201389))

(check-sat (not mapNonEmpty!6891) (not b!172768) (not b_next!4275) (not start!17240) tp_is_empty!4047 (not b!172762) b_and!10733)
(check-sat b_and!10733 (not b_next!4275))
