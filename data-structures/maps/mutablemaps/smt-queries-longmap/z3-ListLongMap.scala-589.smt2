; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15690 () Bool)

(assert start!15690)

(declare-fun b!156228 () Bool)

(declare-fun b_free!3345 () Bool)

(declare-fun b_next!3345 () Bool)

(assert (=> b!156228 (= b_free!3345 (not b_next!3345))))

(declare-fun tp!12560 () Bool)

(declare-fun b_and!9777 () Bool)

(assert (=> b!156228 (= tp!12560 b_and!9777)))

(declare-fun b!156220 () Bool)

(declare-fun e!102180 () Bool)

(assert (=> b!156220 (= e!102180 false)))

(declare-fun lt!81554 () Bool)

(declare-datatypes ((V!3843 0))(
  ( (V!3844 (val!1618 Int)) )
))
(declare-datatypes ((ValueCell!1230 0))(
  ( (ValueCellFull!1230 (v!3479 V!3843)) (EmptyCell!1230) )
))
(declare-datatypes ((array!5346 0))(
  ( (array!5347 (arr!2530 (Array (_ BitVec 32) (_ BitVec 64))) (size!2808 (_ BitVec 32))) )
))
(declare-datatypes ((array!5348 0))(
  ( (array!5349 (arr!2531 (Array (_ BitVec 32) ValueCell!1230)) (size!2809 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1368 0))(
  ( (LongMapFixedSize!1369 (defaultEntry!3126 Int) (mask!7573 (_ BitVec 32)) (extraKeys!2867 (_ BitVec 32)) (zeroValue!2969 V!3843) (minValue!2969 V!3843) (_size!733 (_ BitVec 32)) (_keys!4901 array!5346) (_values!3109 array!5348) (_vacant!733 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1368)

(declare-datatypes ((List!1866 0))(
  ( (Nil!1863) (Cons!1862 (h!2471 (_ BitVec 64)) (t!6676 List!1866)) )
))
(declare-fun arrayNoDuplicates!0 (array!5346 (_ BitVec 32) List!1866) Bool)

(assert (=> b!156220 (= lt!81554 (arrayNoDuplicates!0 (_keys!4901 thiss!1248) #b00000000000000000000000000000000 Nil!1863))))

(declare-fun b!156221 () Bool)

(declare-fun res!73814 () Bool)

(assert (=> b!156221 (=> (not res!73814) (not e!102180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5346 (_ BitVec 32)) Bool)

(assert (=> b!156221 (= res!73814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4901 thiss!1248) (mask!7573 thiss!1248)))))

(declare-fun b!156222 () Bool)

(declare-fun res!73813 () Bool)

(assert (=> b!156222 (=> (not res!73813) (not e!102180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156222 (= res!73813 (validMask!0 (mask!7573 thiss!1248)))))

(declare-fun b!156223 () Bool)

(declare-fun res!73815 () Bool)

(assert (=> b!156223 (=> (not res!73815) (not e!102180))))

(assert (=> b!156223 (= res!73815 (and (= (size!2809 (_values!3109 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7573 thiss!1248))) (= (size!2808 (_keys!4901 thiss!1248)) (size!2809 (_values!3109 thiss!1248))) (bvsge (mask!7573 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2867 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2867 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2867 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2867 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2867 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2867 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2867 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156224 () Bool)

(declare-fun e!102179 () Bool)

(declare-fun e!102177 () Bool)

(declare-fun mapRes!5363 () Bool)

(assert (=> b!156224 (= e!102179 (and e!102177 mapRes!5363))))

(declare-fun condMapEmpty!5363 () Bool)

(declare-fun mapDefault!5363 () ValueCell!1230)

(assert (=> b!156224 (= condMapEmpty!5363 (= (arr!2531 (_values!3109 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1230)) mapDefault!5363)))))

(declare-fun b!156226 () Bool)

(declare-fun e!102181 () Bool)

(declare-fun tp_is_empty!3147 () Bool)

(assert (=> b!156226 (= e!102181 tp_is_empty!3147)))

(declare-fun b!156227 () Bool)

(declare-fun res!73816 () Bool)

(assert (=> b!156227 (=> (not res!73816) (not e!102180))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156227 (= res!73816 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5363 () Bool)

(assert (=> mapIsEmpty!5363 mapRes!5363))

(declare-fun e!102182 () Bool)

(declare-fun array_inv!1591 (array!5346) Bool)

(declare-fun array_inv!1592 (array!5348) Bool)

(assert (=> b!156228 (= e!102182 (and tp!12560 tp_is_empty!3147 (array_inv!1591 (_keys!4901 thiss!1248)) (array_inv!1592 (_values!3109 thiss!1248)) e!102179))))

(declare-fun mapNonEmpty!5363 () Bool)

(declare-fun tp!12559 () Bool)

(assert (=> mapNonEmpty!5363 (= mapRes!5363 (and tp!12559 e!102181))))

(declare-fun mapRest!5363 () (Array (_ BitVec 32) ValueCell!1230))

(declare-fun mapValue!5363 () ValueCell!1230)

(declare-fun mapKey!5363 () (_ BitVec 32))

(assert (=> mapNonEmpty!5363 (= (arr!2531 (_values!3109 thiss!1248)) (store mapRest!5363 mapKey!5363 mapValue!5363))))

(declare-fun res!73812 () Bool)

(assert (=> start!15690 (=> (not res!73812) (not e!102180))))

(declare-fun valid!660 (LongMapFixedSize!1368) Bool)

(assert (=> start!15690 (= res!73812 (valid!660 thiss!1248))))

(assert (=> start!15690 e!102180))

(assert (=> start!15690 e!102182))

(assert (=> start!15690 true))

(declare-fun b!156225 () Bool)

(assert (=> b!156225 (= e!102177 tp_is_empty!3147)))

(assert (= (and start!15690 res!73812) b!156227))

(assert (= (and b!156227 res!73816) b!156222))

(assert (= (and b!156222 res!73813) b!156223))

(assert (= (and b!156223 res!73815) b!156221))

(assert (= (and b!156221 res!73814) b!156220))

(assert (= (and b!156224 condMapEmpty!5363) mapIsEmpty!5363))

(assert (= (and b!156224 (not condMapEmpty!5363)) mapNonEmpty!5363))

(get-info :version)

(assert (= (and mapNonEmpty!5363 ((_ is ValueCellFull!1230) mapValue!5363)) b!156226))

(assert (= (and b!156224 ((_ is ValueCellFull!1230) mapDefault!5363)) b!156225))

(assert (= b!156228 b!156224))

(assert (= start!15690 b!156228))

(declare-fun m!189889 () Bool)

(assert (=> mapNonEmpty!5363 m!189889))

(declare-fun m!189891 () Bool)

(assert (=> b!156220 m!189891))

(declare-fun m!189893 () Bool)

(assert (=> b!156228 m!189893))

(declare-fun m!189895 () Bool)

(assert (=> b!156228 m!189895))

(declare-fun m!189897 () Bool)

(assert (=> b!156221 m!189897))

(declare-fun m!189899 () Bool)

(assert (=> b!156222 m!189899))

(declare-fun m!189901 () Bool)

(assert (=> start!15690 m!189901))

(check-sat (not mapNonEmpty!5363) (not b_next!3345) (not b!156228) (not start!15690) tp_is_empty!3147 (not b!156220) (not b!156221) b_and!9777 (not b!156222))
(check-sat b_and!9777 (not b_next!3345))
