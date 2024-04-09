; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15732 () Bool)

(assert start!15732)

(declare-fun b!156794 () Bool)

(declare-fun b_free!3387 () Bool)

(declare-fun b_next!3387 () Bool)

(assert (=> b!156794 (= b_free!3387 (not b_next!3387))))

(declare-fun tp!12685 () Bool)

(declare-fun b_and!9819 () Bool)

(assert (=> b!156794 (= tp!12685 b_and!9819)))

(declare-fun mapIsEmpty!5426 () Bool)

(declare-fun mapRes!5426 () Bool)

(assert (=> mapIsEmpty!5426 mapRes!5426))

(declare-fun b!156787 () Bool)

(declare-fun res!74128 () Bool)

(declare-fun e!102556 () Bool)

(assert (=> b!156787 (=> (not res!74128) (not e!102556))))

(declare-datatypes ((V!3899 0))(
  ( (V!3900 (val!1639 Int)) )
))
(declare-datatypes ((ValueCell!1251 0))(
  ( (ValueCellFull!1251 (v!3500 V!3899)) (EmptyCell!1251) )
))
(declare-datatypes ((array!5430 0))(
  ( (array!5431 (arr!2572 (Array (_ BitVec 32) (_ BitVec 64))) (size!2850 (_ BitVec 32))) )
))
(declare-datatypes ((array!5432 0))(
  ( (array!5433 (arr!2573 (Array (_ BitVec 32) ValueCell!1251)) (size!2851 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1410 0))(
  ( (LongMapFixedSize!1411 (defaultEntry!3147 Int) (mask!7608 (_ BitVec 32)) (extraKeys!2888 (_ BitVec 32)) (zeroValue!2990 V!3899) (minValue!2990 V!3899) (_size!754 (_ BitVec 32)) (_keys!4922 array!5430) (_values!3130 array!5432) (_vacant!754 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1410)

(assert (=> b!156787 (= res!74128 (and (= (size!2851 (_values!3130 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7608 thiss!1248))) (= (size!2850 (_keys!4922 thiss!1248)) (size!2851 (_values!3130 thiss!1248))) (bvsge (mask!7608 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2888 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2888 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2888 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2888 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2888 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2888 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2888 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156788 () Bool)

(declare-fun res!74129 () Bool)

(assert (=> b!156788 (=> (not res!74129) (not e!102556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156788 (= res!74129 (validMask!0 (mask!7608 thiss!1248)))))

(declare-fun b!156789 () Bool)

(assert (=> b!156789 (= e!102556 false)))

(declare-fun lt!81617 () Bool)

(declare-datatypes ((List!1879 0))(
  ( (Nil!1876) (Cons!1875 (h!2484 (_ BitVec 64)) (t!6689 List!1879)) )
))
(declare-fun arrayNoDuplicates!0 (array!5430 (_ BitVec 32) List!1879) Bool)

(assert (=> b!156789 (= lt!81617 (arrayNoDuplicates!0 (_keys!4922 thiss!1248) #b00000000000000000000000000000000 Nil!1876))))

(declare-fun res!74127 () Bool)

(assert (=> start!15732 (=> (not res!74127) (not e!102556))))

(declare-fun valid!674 (LongMapFixedSize!1410) Bool)

(assert (=> start!15732 (= res!74127 (valid!674 thiss!1248))))

(assert (=> start!15732 e!102556))

(declare-fun e!102557 () Bool)

(assert (=> start!15732 e!102557))

(assert (=> start!15732 true))

(declare-fun b!156790 () Bool)

(declare-fun e!102558 () Bool)

(declare-fun tp_is_empty!3189 () Bool)

(assert (=> b!156790 (= e!102558 tp_is_empty!3189)))

(declare-fun mapNonEmpty!5426 () Bool)

(declare-fun tp!12686 () Bool)

(assert (=> mapNonEmpty!5426 (= mapRes!5426 (and tp!12686 e!102558))))

(declare-fun mapRest!5426 () (Array (_ BitVec 32) ValueCell!1251))

(declare-fun mapKey!5426 () (_ BitVec 32))

(declare-fun mapValue!5426 () ValueCell!1251)

(assert (=> mapNonEmpty!5426 (= (arr!2573 (_values!3130 thiss!1248)) (store mapRest!5426 mapKey!5426 mapValue!5426))))

(declare-fun b!156791 () Bool)

(declare-fun res!74131 () Bool)

(assert (=> b!156791 (=> (not res!74131) (not e!102556))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156791 (= res!74131 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!156792 () Bool)

(declare-fun res!74130 () Bool)

(assert (=> b!156792 (=> (not res!74130) (not e!102556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5430 (_ BitVec 32)) Bool)

(assert (=> b!156792 (= res!74130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4922 thiss!1248) (mask!7608 thiss!1248)))))

(declare-fun b!156793 () Bool)

(declare-fun e!102559 () Bool)

(declare-fun e!102560 () Bool)

(assert (=> b!156793 (= e!102559 (and e!102560 mapRes!5426))))

(declare-fun condMapEmpty!5426 () Bool)

(declare-fun mapDefault!5426 () ValueCell!1251)

(assert (=> b!156793 (= condMapEmpty!5426 (= (arr!2573 (_values!3130 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1251)) mapDefault!5426)))))

(declare-fun array_inv!1623 (array!5430) Bool)

(declare-fun array_inv!1624 (array!5432) Bool)

(assert (=> b!156794 (= e!102557 (and tp!12685 tp_is_empty!3189 (array_inv!1623 (_keys!4922 thiss!1248)) (array_inv!1624 (_values!3130 thiss!1248)) e!102559))))

(declare-fun b!156795 () Bool)

(assert (=> b!156795 (= e!102560 tp_is_empty!3189)))

(assert (= (and start!15732 res!74127) b!156791))

(assert (= (and b!156791 res!74131) b!156788))

(assert (= (and b!156788 res!74129) b!156787))

(assert (= (and b!156787 res!74128) b!156792))

(assert (= (and b!156792 res!74130) b!156789))

(assert (= (and b!156793 condMapEmpty!5426) mapIsEmpty!5426))

(assert (= (and b!156793 (not condMapEmpty!5426)) mapNonEmpty!5426))

(get-info :version)

(assert (= (and mapNonEmpty!5426 ((_ is ValueCellFull!1251) mapValue!5426)) b!156790))

(assert (= (and b!156793 ((_ is ValueCellFull!1251) mapDefault!5426)) b!156795))

(assert (= b!156794 b!156793))

(assert (= start!15732 b!156794))

(declare-fun m!190183 () Bool)

(assert (=> mapNonEmpty!5426 m!190183))

(declare-fun m!190185 () Bool)

(assert (=> start!15732 m!190185))

(declare-fun m!190187 () Bool)

(assert (=> b!156788 m!190187))

(declare-fun m!190189 () Bool)

(assert (=> b!156789 m!190189))

(declare-fun m!190191 () Bool)

(assert (=> b!156794 m!190191))

(declare-fun m!190193 () Bool)

(assert (=> b!156794 m!190193))

(declare-fun m!190195 () Bool)

(assert (=> b!156792 m!190195))

(check-sat (not mapNonEmpty!5426) (not b!156788) (not start!15732) (not b!156789) (not b!156794) b_and!9819 (not b!156792) tp_is_empty!3189 (not b_next!3387))
(check-sat b_and!9819 (not b_next!3387))
