; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15576 () Bool)

(assert start!15576)

(declare-fun b!154800 () Bool)

(declare-fun b_free!3231 () Bool)

(declare-fun b_next!3231 () Bool)

(assert (=> b!154800 (= b_free!3231 (not b_next!3231))))

(declare-fun tp!12218 () Bool)

(declare-fun b_and!9663 () Bool)

(assert (=> b!154800 (= tp!12218 b_and!9663)))

(declare-fun b!154798 () Bool)

(declare-fun res!73074 () Bool)

(declare-fun e!101137 () Bool)

(assert (=> b!154798 (=> (not res!73074) (not e!101137))))

(declare-datatypes ((V!3691 0))(
  ( (V!3692 (val!1561 Int)) )
))
(declare-datatypes ((ValueCell!1173 0))(
  ( (ValueCellFull!1173 (v!3422 V!3691)) (EmptyCell!1173) )
))
(declare-datatypes ((array!5118 0))(
  ( (array!5119 (arr!2416 (Array (_ BitVec 32) (_ BitVec 64))) (size!2694 (_ BitVec 32))) )
))
(declare-datatypes ((array!5120 0))(
  ( (array!5121 (arr!2417 (Array (_ BitVec 32) ValueCell!1173)) (size!2695 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1254 0))(
  ( (LongMapFixedSize!1255 (defaultEntry!3069 Int) (mask!7478 (_ BitVec 32)) (extraKeys!2810 (_ BitVec 32)) (zeroValue!2912 V!3691) (minValue!2912 V!3691) (_size!676 (_ BitVec 32)) (_keys!4844 array!5118) (_values!3052 array!5120) (_vacant!676 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1254)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5118 (_ BitVec 32)) Bool)

(assert (=> b!154798 (= res!73074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4844 thiss!1248) (mask!7478 thiss!1248)))))

(declare-fun mapNonEmpty!5192 () Bool)

(declare-fun mapRes!5192 () Bool)

(declare-fun tp!12217 () Bool)

(declare-fun e!101138 () Bool)

(assert (=> mapNonEmpty!5192 (= mapRes!5192 (and tp!12217 e!101138))))

(declare-fun mapValue!5192 () ValueCell!1173)

(declare-fun mapKey!5192 () (_ BitVec 32))

(declare-fun mapRest!5192 () (Array (_ BitVec 32) ValueCell!1173))

(assert (=> mapNonEmpty!5192 (= (arr!2417 (_values!3052 thiss!1248)) (store mapRest!5192 mapKey!5192 mapValue!5192))))

(declare-fun b!154799 () Bool)

(declare-fun e!101133 () Bool)

(declare-fun tp_is_empty!3033 () Bool)

(assert (=> b!154799 (= e!101133 tp_is_empty!3033)))

(declare-fun e!101135 () Bool)

(declare-fun e!101134 () Bool)

(declare-fun array_inv!1501 (array!5118) Bool)

(declare-fun array_inv!1502 (array!5120) Bool)

(assert (=> b!154800 (= e!101135 (and tp!12218 tp_is_empty!3033 (array_inv!1501 (_keys!4844 thiss!1248)) (array_inv!1502 (_values!3052 thiss!1248)) e!101134))))

(declare-fun res!73078 () Bool)

(assert (=> start!15576 (=> (not res!73078) (not e!101137))))

(declare-fun valid!612 (LongMapFixedSize!1254) Bool)

(assert (=> start!15576 (= res!73078 (valid!612 thiss!1248))))

(assert (=> start!15576 e!101137))

(assert (=> start!15576 e!101135))

(assert (=> start!15576 true))

(declare-fun b!154801 () Bool)

(assert (=> b!154801 (= e!101134 (and e!101133 mapRes!5192))))

(declare-fun condMapEmpty!5192 () Bool)

(declare-fun mapDefault!5192 () ValueCell!1173)

(assert (=> b!154801 (= condMapEmpty!5192 (= (arr!2417 (_values!3052 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1173)) mapDefault!5192)))))

(declare-fun b!154802 () Bool)

(declare-fun res!73077 () Bool)

(assert (=> b!154802 (=> (not res!73077) (not e!101137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!154802 (= res!73077 (validMask!0 (mask!7478 thiss!1248)))))

(declare-fun b!154803 () Bool)

(assert (=> b!154803 (= e!101137 false)))

(declare-fun lt!81320 () Bool)

(declare-datatypes ((List!1826 0))(
  ( (Nil!1823) (Cons!1822 (h!2431 (_ BitVec 64)) (t!6636 List!1826)) )
))
(declare-fun arrayNoDuplicates!0 (array!5118 (_ BitVec 32) List!1826) Bool)

(assert (=> b!154803 (= lt!81320 (arrayNoDuplicates!0 (_keys!4844 thiss!1248) #b00000000000000000000000000000000 Nil!1823))))

(declare-fun mapIsEmpty!5192 () Bool)

(assert (=> mapIsEmpty!5192 mapRes!5192))

(declare-fun b!154804 () Bool)

(declare-fun res!73076 () Bool)

(assert (=> b!154804 (=> (not res!73076) (not e!101137))))

(assert (=> b!154804 (= res!73076 (and (= (size!2695 (_values!3052 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7478 thiss!1248))) (= (size!2694 (_keys!4844 thiss!1248)) (size!2695 (_values!3052 thiss!1248))) (bvsge (mask!7478 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2810 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2810 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2810 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2810 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2810 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2810 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2810 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!154805 () Bool)

(declare-fun res!73075 () Bool)

(assert (=> b!154805 (=> (not res!73075) (not e!101137))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!154805 (= res!73075 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154806 () Bool)

(assert (=> b!154806 (= e!101138 tp_is_empty!3033)))

(assert (= (and start!15576 res!73078) b!154805))

(assert (= (and b!154805 res!73075) b!154802))

(assert (= (and b!154802 res!73077) b!154804))

(assert (= (and b!154804 res!73076) b!154798))

(assert (= (and b!154798 res!73074) b!154803))

(assert (= (and b!154801 condMapEmpty!5192) mapIsEmpty!5192))

(assert (= (and b!154801 (not condMapEmpty!5192)) mapNonEmpty!5192))

(get-info :version)

(assert (= (and mapNonEmpty!5192 ((_ is ValueCellFull!1173) mapValue!5192)) b!154806))

(assert (= (and b!154801 ((_ is ValueCellFull!1173) mapDefault!5192)) b!154799))

(assert (= b!154800 b!154801))

(assert (= start!15576 b!154800))

(declare-fun m!189007 () Bool)

(assert (=> b!154798 m!189007))

(declare-fun m!189009 () Bool)

(assert (=> b!154800 m!189009))

(declare-fun m!189011 () Bool)

(assert (=> b!154800 m!189011))

(declare-fun m!189013 () Bool)

(assert (=> start!15576 m!189013))

(declare-fun m!189015 () Bool)

(assert (=> b!154802 m!189015))

(declare-fun m!189017 () Bool)

(assert (=> mapNonEmpty!5192 m!189017))

(declare-fun m!189019 () Bool)

(assert (=> b!154803 m!189019))

(check-sat (not b_next!3231) (not b!154803) b_and!9663 (not b!154798) (not b!154802) (not mapNonEmpty!5192) tp_is_empty!3033 (not b!154800) (not start!15576))
(check-sat b_and!9663 (not b_next!3231))
