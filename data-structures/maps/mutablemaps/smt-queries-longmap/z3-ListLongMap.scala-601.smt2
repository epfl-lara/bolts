; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15762 () Bool)

(assert start!15762)

(declare-fun b!157138 () Bool)

(declare-fun b_free!3417 () Bool)

(declare-fun b_next!3417 () Bool)

(assert (=> b!157138 (= b_free!3417 (not b_next!3417))))

(declare-fun tp!12776 () Bool)

(declare-fun b_and!9849 () Bool)

(assert (=> b!157138 (= tp!12776 b_and!9849)))

(declare-fun b!157137 () Bool)

(declare-fun e!102843 () Bool)

(declare-fun e!102845 () Bool)

(declare-fun mapRes!5471 () Bool)

(assert (=> b!157137 (= e!102843 (and e!102845 mapRes!5471))))

(declare-fun condMapEmpty!5471 () Bool)

(declare-datatypes ((V!3939 0))(
  ( (V!3940 (val!1654 Int)) )
))
(declare-datatypes ((ValueCell!1266 0))(
  ( (ValueCellFull!1266 (v!3515 V!3939)) (EmptyCell!1266) )
))
(declare-datatypes ((array!5490 0))(
  ( (array!5491 (arr!2602 (Array (_ BitVec 32) (_ BitVec 64))) (size!2880 (_ BitVec 32))) )
))
(declare-datatypes ((array!5492 0))(
  ( (array!5493 (arr!2603 (Array (_ BitVec 32) ValueCell!1266)) (size!2881 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1440 0))(
  ( (LongMapFixedSize!1441 (defaultEntry!3162 Int) (mask!7633 (_ BitVec 32)) (extraKeys!2903 (_ BitVec 32)) (zeroValue!3005 V!3939) (minValue!3005 V!3939) (_size!769 (_ BitVec 32)) (_keys!4937 array!5490) (_values!3145 array!5492) (_vacant!769 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1440)

(declare-fun mapDefault!5471 () ValueCell!1266)

(assert (=> b!157137 (= condMapEmpty!5471 (= (arr!2603 (_values!3145 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1266)) mapDefault!5471)))))

(declare-fun e!102842 () Bool)

(declare-fun tp_is_empty!3219 () Bool)

(declare-fun array_inv!1645 (array!5490) Bool)

(declare-fun array_inv!1646 (array!5492) Bool)

(assert (=> b!157138 (= e!102842 (and tp!12776 tp_is_empty!3219 (array_inv!1645 (_keys!4937 thiss!1248)) (array_inv!1646 (_values!3145 thiss!1248)) e!102843))))

(declare-fun mapIsEmpty!5471 () Bool)

(assert (=> mapIsEmpty!5471 mapRes!5471))

(declare-fun b!157139 () Bool)

(assert (=> b!157139 (= e!102845 tp_is_empty!3219)))

(declare-fun res!74299 () Bool)

(declare-fun e!102841 () Bool)

(assert (=> start!15762 (=> (not res!74299) (not e!102841))))

(declare-fun valid!684 (LongMapFixedSize!1440) Bool)

(assert (=> start!15762 (= res!74299 (valid!684 thiss!1248))))

(assert (=> start!15762 e!102841))

(assert (=> start!15762 e!102842))

(assert (=> start!15762 true))

(assert (=> start!15762 tp_is_empty!3219))

(declare-fun b!157140 () Bool)

(declare-fun e!102839 () Bool)

(assert (=> b!157140 (= e!102839 tp_is_empty!3219)))

(declare-fun b!157141 () Bool)

(declare-fun e!102844 () Bool)

(assert (=> b!157141 (= e!102844 true)))

(declare-fun lt!81700 () Bool)

(declare-fun lt!81699 () LongMapFixedSize!1440)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2846 0))(
  ( (tuple2!2847 (_1!1433 (_ BitVec 64)) (_2!1433 V!3939)) )
))
(declare-datatypes ((List!1890 0))(
  ( (Nil!1887) (Cons!1886 (h!2495 tuple2!2846) (t!6700 List!1890)) )
))
(declare-datatypes ((ListLongMap!1855 0))(
  ( (ListLongMap!1856 (toList!943 List!1890)) )
))
(declare-fun contains!970 (ListLongMap!1855 (_ BitVec 64)) Bool)

(declare-fun map!1571 (LongMapFixedSize!1440) ListLongMap!1855)

(assert (=> b!157141 (= lt!81700 (contains!970 (map!1571 lt!81699) key!828))))

(declare-fun b!157142 () Bool)

(declare-fun res!74298 () Bool)

(assert (=> b!157142 (=> (not res!74298) (not e!102841))))

(assert (=> b!157142 (= res!74298 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!5471 () Bool)

(declare-fun tp!12775 () Bool)

(assert (=> mapNonEmpty!5471 (= mapRes!5471 (and tp!12775 e!102839))))

(declare-fun mapValue!5471 () ValueCell!1266)

(declare-fun mapKey!5471 () (_ BitVec 32))

(declare-fun mapRest!5471 () (Array (_ BitVec 32) ValueCell!1266))

(assert (=> mapNonEmpty!5471 (= (arr!2603 (_values!3145 thiss!1248)) (store mapRest!5471 mapKey!5471 mapValue!5471))))

(declare-fun b!157143 () Bool)

(assert (=> b!157143 (= e!102841 (not e!102844))))

(declare-fun res!74297 () Bool)

(assert (=> b!157143 (=> res!74297 e!102844)))

(assert (=> b!157143 (= res!74297 (not (valid!684 lt!81699)))))

(declare-fun v!309 () V!3939)

(assert (=> b!157143 (= lt!81699 (LongMapFixedSize!1441 (defaultEntry!3162 thiss!1248) (mask!7633 thiss!1248) (bvor (extraKeys!2903 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3005 thiss!1248) v!309 (_size!769 thiss!1248) (_keys!4937 thiss!1248) (_values!3145 thiss!1248) (_vacant!769 thiss!1248)))))

(declare-fun +!206 (ListLongMap!1855 tuple2!2846) ListLongMap!1855)

(declare-fun getCurrentListMap!603 (array!5490 array!5492 (_ BitVec 32) (_ BitVec 32) V!3939 V!3939 (_ BitVec 32) Int) ListLongMap!1855)

(assert (=> b!157143 (= (+!206 (getCurrentListMap!603 (_keys!4937 thiss!1248) (_values!3145 thiss!1248) (mask!7633 thiss!1248) (extraKeys!2903 thiss!1248) (zeroValue!3005 thiss!1248) (minValue!3005 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3162 thiss!1248)) (tuple2!2847 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!603 (_keys!4937 thiss!1248) (_values!3145 thiss!1248) (mask!7633 thiss!1248) (bvor (extraKeys!2903 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3005 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3162 thiss!1248)))))

(declare-datatypes ((Unit!4964 0))(
  ( (Unit!4965) )
))
(declare-fun lt!81701 () Unit!4964)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!78 (array!5490 array!5492 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3939 V!3939 V!3939 Int) Unit!4964)

(assert (=> b!157143 (= lt!81701 (lemmaChangeLongMinValueKeyThenAddPairToListMap!78 (_keys!4937 thiss!1248) (_values!3145 thiss!1248) (mask!7633 thiss!1248) (extraKeys!2903 thiss!1248) (bvor (extraKeys!2903 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3005 thiss!1248) (minValue!3005 thiss!1248) v!309 (defaultEntry!3162 thiss!1248)))))

(assert (= (and start!15762 res!74299) b!157142))

(assert (= (and b!157142 res!74298) b!157143))

(assert (= (and b!157143 (not res!74297)) b!157141))

(assert (= (and b!157137 condMapEmpty!5471) mapIsEmpty!5471))

(assert (= (and b!157137 (not condMapEmpty!5471)) mapNonEmpty!5471))

(get-info :version)

(assert (= (and mapNonEmpty!5471 ((_ is ValueCellFull!1266) mapValue!5471)) b!157140))

(assert (= (and b!157137 ((_ is ValueCellFull!1266) mapDefault!5471)) b!157139))

(assert (= b!157138 b!157137))

(assert (= start!15762 b!157138))

(declare-fun m!190437 () Bool)

(assert (=> start!15762 m!190437))

(declare-fun m!190439 () Bool)

(assert (=> mapNonEmpty!5471 m!190439))

(declare-fun m!190441 () Bool)

(assert (=> b!157143 m!190441))

(declare-fun m!190443 () Bool)

(assert (=> b!157143 m!190443))

(declare-fun m!190445 () Bool)

(assert (=> b!157143 m!190445))

(declare-fun m!190447 () Bool)

(assert (=> b!157143 m!190447))

(assert (=> b!157143 m!190441))

(declare-fun m!190449 () Bool)

(assert (=> b!157143 m!190449))

(declare-fun m!190451 () Bool)

(assert (=> b!157138 m!190451))

(declare-fun m!190453 () Bool)

(assert (=> b!157138 m!190453))

(declare-fun m!190455 () Bool)

(assert (=> b!157141 m!190455))

(assert (=> b!157141 m!190455))

(declare-fun m!190457 () Bool)

(assert (=> b!157141 m!190457))

(check-sat (not b!157138) (not b!157141) (not mapNonEmpty!5471) (not b!157143) (not start!15762) b_and!9849 (not b_next!3417) tp_is_empty!3219)
(check-sat b_and!9849 (not b_next!3417))
