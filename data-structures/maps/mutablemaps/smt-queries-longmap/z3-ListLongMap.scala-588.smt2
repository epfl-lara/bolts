; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15684 () Bool)

(assert start!15684)

(declare-fun b!156144 () Bool)

(declare-fun b_free!3339 () Bool)

(declare-fun b_next!3339 () Bool)

(assert (=> b!156144 (= b_free!3339 (not b_next!3339))))

(declare-fun tp!12542 () Bool)

(declare-fun b_and!9771 () Bool)

(assert (=> b!156144 (= tp!12542 b_and!9771)))

(declare-fun b!156139 () Bool)

(declare-fun res!73769 () Bool)

(declare-fun e!102128 () Bool)

(assert (=> b!156139 (=> (not res!73769) (not e!102128))))

(declare-datatypes ((V!3835 0))(
  ( (V!3836 (val!1615 Int)) )
))
(declare-datatypes ((ValueCell!1227 0))(
  ( (ValueCellFull!1227 (v!3476 V!3835)) (EmptyCell!1227) )
))
(declare-datatypes ((array!5334 0))(
  ( (array!5335 (arr!2524 (Array (_ BitVec 32) (_ BitVec 64))) (size!2802 (_ BitVec 32))) )
))
(declare-datatypes ((array!5336 0))(
  ( (array!5337 (arr!2525 (Array (_ BitVec 32) ValueCell!1227)) (size!2803 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1362 0))(
  ( (LongMapFixedSize!1363 (defaultEntry!3123 Int) (mask!7568 (_ BitVec 32)) (extraKeys!2864 (_ BitVec 32)) (zeroValue!2966 V!3835) (minValue!2966 V!3835) (_size!730 (_ BitVec 32)) (_keys!4898 array!5334) (_values!3106 array!5336) (_vacant!730 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1362)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156139 (= res!73769 (validMask!0 (mask!7568 thiss!1248)))))

(declare-fun b!156140 () Bool)

(declare-fun e!102126 () Bool)

(declare-fun e!102125 () Bool)

(declare-fun mapRes!5354 () Bool)

(assert (=> b!156140 (= e!102126 (and e!102125 mapRes!5354))))

(declare-fun condMapEmpty!5354 () Bool)

(declare-fun mapDefault!5354 () ValueCell!1227)

(assert (=> b!156140 (= condMapEmpty!5354 (= (arr!2525 (_values!3106 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1227)) mapDefault!5354)))))

(declare-fun mapNonEmpty!5354 () Bool)

(declare-fun tp!12541 () Bool)

(declare-fun e!102124 () Bool)

(assert (=> mapNonEmpty!5354 (= mapRes!5354 (and tp!12541 e!102124))))

(declare-fun mapRest!5354 () (Array (_ BitVec 32) ValueCell!1227))

(declare-fun mapValue!5354 () ValueCell!1227)

(declare-fun mapKey!5354 () (_ BitVec 32))

(assert (=> mapNonEmpty!5354 (= (arr!2525 (_values!3106 thiss!1248)) (store mapRest!5354 mapKey!5354 mapValue!5354))))

(declare-fun b!156141 () Bool)

(declare-fun tp_is_empty!3141 () Bool)

(assert (=> b!156141 (= e!102125 tp_is_empty!3141)))

(declare-fun mapIsEmpty!5354 () Bool)

(assert (=> mapIsEmpty!5354 mapRes!5354))

(declare-fun b!156142 () Bool)

(declare-fun res!73768 () Bool)

(assert (=> b!156142 (=> (not res!73768) (not e!102128))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156142 (= res!73768 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!156143 () Bool)

(assert (=> b!156143 (= e!102124 tp_is_empty!3141)))

(declare-fun b!156145 () Bool)

(assert (=> b!156145 (= e!102128 false)))

(declare-fun lt!81545 () Bool)

(declare-datatypes ((List!1865 0))(
  ( (Nil!1862) (Cons!1861 (h!2470 (_ BitVec 64)) (t!6675 List!1865)) )
))
(declare-fun arrayNoDuplicates!0 (array!5334 (_ BitVec 32) List!1865) Bool)

(assert (=> b!156145 (= lt!81545 (arrayNoDuplicates!0 (_keys!4898 thiss!1248) #b00000000000000000000000000000000 Nil!1862))))

(declare-fun b!156146 () Bool)

(declare-fun res!73767 () Bool)

(assert (=> b!156146 (=> (not res!73767) (not e!102128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5334 (_ BitVec 32)) Bool)

(assert (=> b!156146 (= res!73767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4898 thiss!1248) (mask!7568 thiss!1248)))))

(declare-fun b!156147 () Bool)

(declare-fun res!73771 () Bool)

(assert (=> b!156147 (=> (not res!73771) (not e!102128))))

(assert (=> b!156147 (= res!73771 (and (= (size!2803 (_values!3106 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7568 thiss!1248))) (= (size!2802 (_keys!4898 thiss!1248)) (size!2803 (_values!3106 thiss!1248))) (bvsge (mask!7568 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2864 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2864 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2864 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2864 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2864 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2864 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2864 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!102123 () Bool)

(declare-fun array_inv!1587 (array!5334) Bool)

(declare-fun array_inv!1588 (array!5336) Bool)

(assert (=> b!156144 (= e!102123 (and tp!12542 tp_is_empty!3141 (array_inv!1587 (_keys!4898 thiss!1248)) (array_inv!1588 (_values!3106 thiss!1248)) e!102126))))

(declare-fun res!73770 () Bool)

(assert (=> start!15684 (=> (not res!73770) (not e!102128))))

(declare-fun valid!658 (LongMapFixedSize!1362) Bool)

(assert (=> start!15684 (= res!73770 (valid!658 thiss!1248))))

(assert (=> start!15684 e!102128))

(assert (=> start!15684 e!102123))

(assert (=> start!15684 true))

(assert (= (and start!15684 res!73770) b!156142))

(assert (= (and b!156142 res!73768) b!156139))

(assert (= (and b!156139 res!73769) b!156147))

(assert (= (and b!156147 res!73771) b!156146))

(assert (= (and b!156146 res!73767) b!156145))

(assert (= (and b!156140 condMapEmpty!5354) mapIsEmpty!5354))

(assert (= (and b!156140 (not condMapEmpty!5354)) mapNonEmpty!5354))

(get-info :version)

(assert (= (and mapNonEmpty!5354 ((_ is ValueCellFull!1227) mapValue!5354)) b!156143))

(assert (= (and b!156140 ((_ is ValueCellFull!1227) mapDefault!5354)) b!156141))

(assert (= b!156144 b!156140))

(assert (= start!15684 b!156144))

(declare-fun m!189847 () Bool)

(assert (=> b!156145 m!189847))

(declare-fun m!189849 () Bool)

(assert (=> b!156146 m!189849))

(declare-fun m!189851 () Bool)

(assert (=> b!156144 m!189851))

(declare-fun m!189853 () Bool)

(assert (=> b!156144 m!189853))

(declare-fun m!189855 () Bool)

(assert (=> start!15684 m!189855))

(declare-fun m!189857 () Bool)

(assert (=> b!156139 m!189857))

(declare-fun m!189859 () Bool)

(assert (=> mapNonEmpty!5354 m!189859))

(check-sat (not b!156146) (not b!156144) (not b!156145) tp_is_empty!3141 (not mapNonEmpty!5354) (not b_next!3339) (not b!156139) b_and!9771 (not start!15684))
(check-sat b_and!9771 (not b_next!3339))
