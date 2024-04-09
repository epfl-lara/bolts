; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15582 () Bool)

(assert start!15582)

(declare-fun b!154880 () Bool)

(declare-fun b_free!3237 () Bool)

(declare-fun b_next!3237 () Bool)

(assert (=> b!154880 (= b_free!3237 (not b_next!3237))))

(declare-fun tp!12236 () Bool)

(declare-fun b_and!9669 () Bool)

(assert (=> b!154880 (= tp!12236 b_and!9669)))

(declare-fun b!154879 () Bool)

(declare-fun e!101190 () Bool)

(declare-fun e!101192 () Bool)

(declare-fun mapRes!5201 () Bool)

(assert (=> b!154879 (= e!101190 (and e!101192 mapRes!5201))))

(declare-fun condMapEmpty!5201 () Bool)

(declare-datatypes ((V!3699 0))(
  ( (V!3700 (val!1564 Int)) )
))
(declare-datatypes ((ValueCell!1176 0))(
  ( (ValueCellFull!1176 (v!3425 V!3699)) (EmptyCell!1176) )
))
(declare-datatypes ((array!5130 0))(
  ( (array!5131 (arr!2422 (Array (_ BitVec 32) (_ BitVec 64))) (size!2700 (_ BitVec 32))) )
))
(declare-datatypes ((array!5132 0))(
  ( (array!5133 (arr!2423 (Array (_ BitVec 32) ValueCell!1176)) (size!2701 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1260 0))(
  ( (LongMapFixedSize!1261 (defaultEntry!3072 Int) (mask!7483 (_ BitVec 32)) (extraKeys!2813 (_ BitVec 32)) (zeroValue!2915 V!3699) (minValue!2915 V!3699) (_size!679 (_ BitVec 32)) (_keys!4847 array!5130) (_values!3055 array!5132) (_vacant!679 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1260)

(declare-fun mapDefault!5201 () ValueCell!1176)

(assert (=> b!154879 (= condMapEmpty!5201 (= (arr!2423 (_values!3055 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1176)) mapDefault!5201)))))

(declare-fun tp_is_empty!3039 () Bool)

(declare-fun e!101188 () Bool)

(declare-fun array_inv!1507 (array!5130) Bool)

(declare-fun array_inv!1508 (array!5132) Bool)

(assert (=> b!154880 (= e!101188 (and tp!12236 tp_is_empty!3039 (array_inv!1507 (_keys!4847 thiss!1248)) (array_inv!1508 (_values!3055 thiss!1248)) e!101190))))

(declare-fun b!154881 () Bool)

(declare-fun res!73120 () Bool)

(declare-fun e!101189 () Bool)

(assert (=> b!154881 (=> (not res!73120) (not e!101189))))

(assert (=> b!154881 (= res!73120 (and (= (size!2701 (_values!3055 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7483 thiss!1248))) (= (size!2700 (_keys!4847 thiss!1248)) (size!2701 (_values!3055 thiss!1248))) (bvsge (mask!7483 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2813 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2813 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2813 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2813 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2813 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2813 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2813 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!154882 () Bool)

(assert (=> b!154882 (= e!101189 false)))

(declare-fun lt!81329 () Bool)

(declare-datatypes ((List!1828 0))(
  ( (Nil!1825) (Cons!1824 (h!2433 (_ BitVec 64)) (t!6638 List!1828)) )
))
(declare-fun arrayNoDuplicates!0 (array!5130 (_ BitVec 32) List!1828) Bool)

(assert (=> b!154882 (= lt!81329 (arrayNoDuplicates!0 (_keys!4847 thiss!1248) #b00000000000000000000000000000000 Nil!1825))))

(declare-fun b!154883 () Bool)

(declare-fun res!73119 () Bool)

(assert (=> b!154883 (=> (not res!73119) (not e!101189))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!154883 (= res!73119 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!73123 () Bool)

(assert (=> start!15582 (=> (not res!73123) (not e!101189))))

(declare-fun valid!615 (LongMapFixedSize!1260) Bool)

(assert (=> start!15582 (= res!73123 (valid!615 thiss!1248))))

(assert (=> start!15582 e!101189))

(assert (=> start!15582 e!101188))

(assert (=> start!15582 true))

(declare-fun b!154884 () Bool)

(assert (=> b!154884 (= e!101192 tp_is_empty!3039)))

(declare-fun mapIsEmpty!5201 () Bool)

(assert (=> mapIsEmpty!5201 mapRes!5201))

(declare-fun b!154885 () Bool)

(declare-fun res!73122 () Bool)

(assert (=> b!154885 (=> (not res!73122) (not e!101189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5130 (_ BitVec 32)) Bool)

(assert (=> b!154885 (= res!73122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4847 thiss!1248) (mask!7483 thiss!1248)))))

(declare-fun mapNonEmpty!5201 () Bool)

(declare-fun tp!12235 () Bool)

(declare-fun e!101191 () Bool)

(assert (=> mapNonEmpty!5201 (= mapRes!5201 (and tp!12235 e!101191))))

(declare-fun mapKey!5201 () (_ BitVec 32))

(declare-fun mapRest!5201 () (Array (_ BitVec 32) ValueCell!1176))

(declare-fun mapValue!5201 () ValueCell!1176)

(assert (=> mapNonEmpty!5201 (= (arr!2423 (_values!3055 thiss!1248)) (store mapRest!5201 mapKey!5201 mapValue!5201))))

(declare-fun b!154886 () Bool)

(assert (=> b!154886 (= e!101191 tp_is_empty!3039)))

(declare-fun b!154887 () Bool)

(declare-fun res!73121 () Bool)

(assert (=> b!154887 (=> (not res!73121) (not e!101189))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!154887 (= res!73121 (validMask!0 (mask!7483 thiss!1248)))))

(assert (= (and start!15582 res!73123) b!154883))

(assert (= (and b!154883 res!73119) b!154887))

(assert (= (and b!154887 res!73121) b!154881))

(assert (= (and b!154881 res!73120) b!154885))

(assert (= (and b!154885 res!73122) b!154882))

(assert (= (and b!154879 condMapEmpty!5201) mapIsEmpty!5201))

(assert (= (and b!154879 (not condMapEmpty!5201)) mapNonEmpty!5201))

(get-info :version)

(assert (= (and mapNonEmpty!5201 ((_ is ValueCellFull!1176) mapValue!5201)) b!154886))

(assert (= (and b!154879 ((_ is ValueCellFull!1176) mapDefault!5201)) b!154884))

(assert (= b!154880 b!154879))

(assert (= start!15582 b!154880))

(declare-fun m!189049 () Bool)

(assert (=> b!154887 m!189049))

(declare-fun m!189051 () Bool)

(assert (=> b!154885 m!189051))

(declare-fun m!189053 () Bool)

(assert (=> start!15582 m!189053))

(declare-fun m!189055 () Bool)

(assert (=> b!154880 m!189055))

(declare-fun m!189057 () Bool)

(assert (=> b!154880 m!189057))

(declare-fun m!189059 () Bool)

(assert (=> b!154882 m!189059))

(declare-fun m!189061 () Bool)

(assert (=> mapNonEmpty!5201 m!189061))

(check-sat (not mapNonEmpty!5201) (not b!154882) tp_is_empty!3039 b_and!9669 (not b!154887) (not start!15582) (not b!154880) (not b_next!3237) (not b!154885))
(check-sat b_and!9669 (not b_next!3237))
