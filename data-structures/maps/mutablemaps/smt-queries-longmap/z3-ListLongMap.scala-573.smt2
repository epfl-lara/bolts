; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15594 () Bool)

(assert start!15594)

(declare-fun b!155044 () Bool)

(declare-fun b_free!3249 () Bool)

(declare-fun b_next!3249 () Bool)

(assert (=> b!155044 (= b_free!3249 (not b_next!3249))))

(declare-fun tp!12271 () Bool)

(declare-fun b_and!9681 () Bool)

(assert (=> b!155044 (= tp!12271 b_and!9681)))

(declare-fun b!155041 () Bool)

(declare-fun res!73211 () Bool)

(declare-fun e!101299 () Bool)

(assert (=> b!155041 (=> (not res!73211) (not e!101299))))

(declare-datatypes ((V!3715 0))(
  ( (V!3716 (val!1570 Int)) )
))
(declare-datatypes ((ValueCell!1182 0))(
  ( (ValueCellFull!1182 (v!3431 V!3715)) (EmptyCell!1182) )
))
(declare-datatypes ((array!5154 0))(
  ( (array!5155 (arr!2434 (Array (_ BitVec 32) (_ BitVec 64))) (size!2712 (_ BitVec 32))) )
))
(declare-datatypes ((array!5156 0))(
  ( (array!5157 (arr!2435 (Array (_ BitVec 32) ValueCell!1182)) (size!2713 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1272 0))(
  ( (LongMapFixedSize!1273 (defaultEntry!3078 Int) (mask!7493 (_ BitVec 32)) (extraKeys!2819 (_ BitVec 32)) (zeroValue!2921 V!3715) (minValue!2921 V!3715) (_size!685 (_ BitVec 32)) (_keys!4853 array!5154) (_values!3061 array!5156) (_vacant!685 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1272)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155041 (= res!73211 (validMask!0 (mask!7493 thiss!1248)))))

(declare-fun b!155042 () Bool)

(assert (=> b!155042 (= e!101299 false)))

(declare-fun lt!81347 () Bool)

(declare-datatypes ((List!1832 0))(
  ( (Nil!1829) (Cons!1828 (h!2437 (_ BitVec 64)) (t!6642 List!1832)) )
))
(declare-fun arrayNoDuplicates!0 (array!5154 (_ BitVec 32) List!1832) Bool)

(assert (=> b!155042 (= lt!81347 (arrayNoDuplicates!0 (_keys!4853 thiss!1248) #b00000000000000000000000000000000 Nil!1829))))

(declare-fun mapNonEmpty!5219 () Bool)

(declare-fun mapRes!5219 () Bool)

(declare-fun tp!12272 () Bool)

(declare-fun e!101295 () Bool)

(assert (=> mapNonEmpty!5219 (= mapRes!5219 (and tp!12272 e!101295))))

(declare-fun mapValue!5219 () ValueCell!1182)

(declare-fun mapKey!5219 () (_ BitVec 32))

(declare-fun mapRest!5219 () (Array (_ BitVec 32) ValueCell!1182))

(assert (=> mapNonEmpty!5219 (= (arr!2435 (_values!3061 thiss!1248)) (store mapRest!5219 mapKey!5219 mapValue!5219))))

(declare-fun b!155043 () Bool)

(declare-fun e!101298 () Bool)

(declare-fun tp_is_empty!3051 () Bool)

(assert (=> b!155043 (= e!101298 tp_is_empty!3051)))

(declare-fun e!101296 () Bool)

(declare-fun e!101300 () Bool)

(declare-fun array_inv!1515 (array!5154) Bool)

(declare-fun array_inv!1516 (array!5156) Bool)

(assert (=> b!155044 (= e!101300 (and tp!12271 tp_is_empty!3051 (array_inv!1515 (_keys!4853 thiss!1248)) (array_inv!1516 (_values!3061 thiss!1248)) e!101296))))

(declare-fun res!73212 () Bool)

(assert (=> start!15594 (=> (not res!73212) (not e!101299))))

(declare-fun valid!619 (LongMapFixedSize!1272) Bool)

(assert (=> start!15594 (= res!73212 (valid!619 thiss!1248))))

(assert (=> start!15594 e!101299))

(assert (=> start!15594 e!101300))

(assert (=> start!15594 true))

(declare-fun b!155045 () Bool)

(declare-fun res!73209 () Bool)

(assert (=> b!155045 (=> (not res!73209) (not e!101299))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155045 (= res!73209 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155046 () Bool)

(assert (=> b!155046 (= e!101296 (and e!101298 mapRes!5219))))

(declare-fun condMapEmpty!5219 () Bool)

(declare-fun mapDefault!5219 () ValueCell!1182)

(assert (=> b!155046 (= condMapEmpty!5219 (= (arr!2435 (_values!3061 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1182)) mapDefault!5219)))))

(declare-fun b!155047 () Bool)

(declare-fun res!73210 () Bool)

(assert (=> b!155047 (=> (not res!73210) (not e!101299))))

(assert (=> b!155047 (= res!73210 (and (= (size!2713 (_values!3061 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7493 thiss!1248))) (= (size!2712 (_keys!4853 thiss!1248)) (size!2713 (_values!3061 thiss!1248))) (bvsge (mask!7493 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2819 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2819 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2819 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2819 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2819 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2819 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2819 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5219 () Bool)

(assert (=> mapIsEmpty!5219 mapRes!5219))

(declare-fun b!155048 () Bool)

(assert (=> b!155048 (= e!101295 tp_is_empty!3051)))

(declare-fun b!155049 () Bool)

(declare-fun res!73213 () Bool)

(assert (=> b!155049 (=> (not res!73213) (not e!101299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5154 (_ BitVec 32)) Bool)

(assert (=> b!155049 (= res!73213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4853 thiss!1248) (mask!7493 thiss!1248)))))

(assert (= (and start!15594 res!73212) b!155045))

(assert (= (and b!155045 res!73209) b!155041))

(assert (= (and b!155041 res!73211) b!155047))

(assert (= (and b!155047 res!73210) b!155049))

(assert (= (and b!155049 res!73213) b!155042))

(assert (= (and b!155046 condMapEmpty!5219) mapIsEmpty!5219))

(assert (= (and b!155046 (not condMapEmpty!5219)) mapNonEmpty!5219))

(get-info :version)

(assert (= (and mapNonEmpty!5219 ((_ is ValueCellFull!1182) mapValue!5219)) b!155048))

(assert (= (and b!155046 ((_ is ValueCellFull!1182) mapDefault!5219)) b!155043))

(assert (= b!155044 b!155046))

(assert (= start!15594 b!155044))

(declare-fun m!189133 () Bool)

(assert (=> b!155041 m!189133))

(declare-fun m!189135 () Bool)

(assert (=> mapNonEmpty!5219 m!189135))

(declare-fun m!189137 () Bool)

(assert (=> b!155042 m!189137))

(declare-fun m!189139 () Bool)

(assert (=> b!155049 m!189139))

(declare-fun m!189141 () Bool)

(assert (=> b!155044 m!189141))

(declare-fun m!189143 () Bool)

(assert (=> b!155044 m!189143))

(declare-fun m!189145 () Bool)

(assert (=> start!15594 m!189145))

(check-sat (not b!155042) (not b_next!3249) (not b!155049) (not mapNonEmpty!5219) tp_is_empty!3051 b_and!9681 (not b!155044) (not b!155041) (not start!15594))
(check-sat b_and!9681 (not b_next!3249))
