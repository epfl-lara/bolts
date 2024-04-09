; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15660 () Bool)

(assert start!15660)

(declare-fun b!155882 () Bool)

(declare-fun b_free!3315 () Bool)

(declare-fun b_next!3315 () Bool)

(assert (=> b!155882 (= b_free!3315 (not b_next!3315))))

(declare-fun tp!12470 () Bool)

(declare-fun b_and!9747 () Bool)

(assert (=> b!155882 (= tp!12470 b_and!9747)))

(declare-fun b!155877 () Bool)

(declare-fun e!101905 () Bool)

(declare-fun e!101908 () Bool)

(declare-fun mapRes!5318 () Bool)

(assert (=> b!155877 (= e!101905 (and e!101908 mapRes!5318))))

(declare-fun condMapEmpty!5318 () Bool)

(declare-datatypes ((V!3803 0))(
  ( (V!3804 (val!1603 Int)) )
))
(declare-datatypes ((ValueCell!1215 0))(
  ( (ValueCellFull!1215 (v!3464 V!3803)) (EmptyCell!1215) )
))
(declare-datatypes ((array!5286 0))(
  ( (array!5287 (arr!2500 (Array (_ BitVec 32) (_ BitVec 64))) (size!2778 (_ BitVec 32))) )
))
(declare-datatypes ((array!5288 0))(
  ( (array!5289 (arr!2501 (Array (_ BitVec 32) ValueCell!1215)) (size!2779 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1338 0))(
  ( (LongMapFixedSize!1339 (defaultEntry!3111 Int) (mask!7548 (_ BitVec 32)) (extraKeys!2852 (_ BitVec 32)) (zeroValue!2954 V!3803) (minValue!2954 V!3803) (_size!718 (_ BitVec 32)) (_keys!4886 array!5286) (_values!3094 array!5288) (_vacant!718 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1338)

(declare-fun mapDefault!5318 () ValueCell!1215)

(assert (=> b!155877 (= condMapEmpty!5318 (= (arr!2501 (_values!3094 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1215)) mapDefault!5318)))))

(declare-fun res!73649 () Bool)

(declare-fun e!101903 () Bool)

(assert (=> start!15660 (=> (not res!73649) (not e!101903))))

(declare-fun valid!646 (LongMapFixedSize!1338) Bool)

(assert (=> start!15660 (= res!73649 (valid!646 thiss!1248))))

(assert (=> start!15660 e!101903))

(declare-fun e!101909 () Bool)

(assert (=> start!15660 e!101909))

(assert (=> start!15660 true))

(declare-fun tp_is_empty!3117 () Bool)

(assert (=> start!15660 tp_is_empty!3117))

(declare-fun b!155878 () Bool)

(declare-fun e!101907 () Bool)

(assert (=> b!155878 (= e!101907 true)))

(declare-fun lt!81484 () Bool)

(declare-fun lt!81483 () LongMapFixedSize!1338)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2822 0))(
  ( (tuple2!2823 (_1!1421 (_ BitVec 64)) (_2!1421 V!3803)) )
))
(declare-datatypes ((List!1856 0))(
  ( (Nil!1853) (Cons!1852 (h!2461 tuple2!2822) (t!6666 List!1856)) )
))
(declare-datatypes ((ListLongMap!1831 0))(
  ( (ListLongMap!1832 (toList!931 List!1856)) )
))
(declare-fun contains!965 (ListLongMap!1831 (_ BitVec 64)) Bool)

(declare-fun map!1532 (LongMapFixedSize!1338) ListLongMap!1831)

(assert (=> b!155878 (= lt!81484 (contains!965 (map!1532 lt!81483) key!828))))

(declare-fun mapNonEmpty!5318 () Bool)

(declare-fun tp!12469 () Bool)

(declare-fun e!101904 () Bool)

(assert (=> mapNonEmpty!5318 (= mapRes!5318 (and tp!12469 e!101904))))

(declare-fun mapValue!5318 () ValueCell!1215)

(declare-fun mapRest!5318 () (Array (_ BitVec 32) ValueCell!1215))

(declare-fun mapKey!5318 () (_ BitVec 32))

(assert (=> mapNonEmpty!5318 (= (arr!2501 (_values!3094 thiss!1248)) (store mapRest!5318 mapKey!5318 mapValue!5318))))

(declare-fun b!155879 () Bool)

(assert (=> b!155879 (= e!101908 tp_is_empty!3117)))

(declare-fun b!155880 () Bool)

(assert (=> b!155880 (= e!101904 tp_is_empty!3117)))

(declare-fun b!155881 () Bool)

(declare-fun res!73651 () Bool)

(assert (=> b!155881 (=> (not res!73651) (not e!101903))))

(assert (=> b!155881 (= res!73651 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun array_inv!1569 (array!5286) Bool)

(declare-fun array_inv!1570 (array!5288) Bool)

(assert (=> b!155882 (= e!101909 (and tp!12470 tp_is_empty!3117 (array_inv!1569 (_keys!4886 thiss!1248)) (array_inv!1570 (_values!3094 thiss!1248)) e!101905))))

(declare-fun b!155883 () Bool)

(assert (=> b!155883 (= e!101903 (not e!101907))))

(declare-fun res!73650 () Bool)

(assert (=> b!155883 (=> res!73650 e!101907)))

(assert (=> b!155883 (= res!73650 (not (valid!646 lt!81483)))))

(declare-fun v!309 () V!3803)

(assert (=> b!155883 (= lt!81483 (LongMapFixedSize!1339 (defaultEntry!3111 thiss!1248) (mask!7548 thiss!1248) (bvor (extraKeys!2852 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2954 thiss!1248) (_size!718 thiss!1248) (_keys!4886 thiss!1248) (_values!3094 thiss!1248) (_vacant!718 thiss!1248)))))

(declare-fun +!195 (ListLongMap!1831 tuple2!2822) ListLongMap!1831)

(declare-fun getCurrentListMap!592 (array!5286 array!5288 (_ BitVec 32) (_ BitVec 32) V!3803 V!3803 (_ BitVec 32) Int) ListLongMap!1831)

(assert (=> b!155883 (= (+!195 (getCurrentListMap!592 (_keys!4886 thiss!1248) (_values!3094 thiss!1248) (mask!7548 thiss!1248) (extraKeys!2852 thiss!1248) (zeroValue!2954 thiss!1248) (minValue!2954 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3111 thiss!1248)) (tuple2!2823 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!592 (_keys!4886 thiss!1248) (_values!3094 thiss!1248) (mask!7548 thiss!1248) (bvor (extraKeys!2852 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2954 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3111 thiss!1248)))))

(declare-datatypes ((Unit!4942 0))(
  ( (Unit!4943) )
))
(declare-fun lt!81485 () Unit!4942)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!79 (array!5286 array!5288 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3803 V!3803 V!3803 Int) Unit!4942)

(assert (=> b!155883 (= lt!81485 (lemmaChangeZeroKeyThenAddPairToListMap!79 (_keys!4886 thiss!1248) (_values!3094 thiss!1248) (mask!7548 thiss!1248) (extraKeys!2852 thiss!1248) (bvor (extraKeys!2852 thiss!1248) #b00000000000000000000000000000001) (zeroValue!2954 thiss!1248) v!309 (minValue!2954 thiss!1248) (defaultEntry!3111 thiss!1248)))))

(declare-fun mapIsEmpty!5318 () Bool)

(assert (=> mapIsEmpty!5318 mapRes!5318))

(assert (= (and start!15660 res!73649) b!155881))

(assert (= (and b!155881 res!73651) b!155883))

(assert (= (and b!155883 (not res!73650)) b!155878))

(assert (= (and b!155877 condMapEmpty!5318) mapIsEmpty!5318))

(assert (= (and b!155877 (not condMapEmpty!5318)) mapNonEmpty!5318))

(get-info :version)

(assert (= (and mapNonEmpty!5318 ((_ is ValueCellFull!1215) mapValue!5318)) b!155880))

(assert (= (and b!155877 ((_ is ValueCellFull!1215) mapDefault!5318)) b!155879))

(assert (= b!155882 b!155877))

(assert (= start!15660 b!155882))

(declare-fun m!189639 () Bool)

(assert (=> b!155882 m!189639))

(declare-fun m!189641 () Bool)

(assert (=> b!155882 m!189641))

(declare-fun m!189643 () Bool)

(assert (=> mapNonEmpty!5318 m!189643))

(declare-fun m!189645 () Bool)

(assert (=> start!15660 m!189645))

(declare-fun m!189647 () Bool)

(assert (=> b!155883 m!189647))

(declare-fun m!189649 () Bool)

(assert (=> b!155883 m!189649))

(declare-fun m!189651 () Bool)

(assert (=> b!155883 m!189651))

(declare-fun m!189653 () Bool)

(assert (=> b!155883 m!189653))

(assert (=> b!155883 m!189647))

(declare-fun m!189655 () Bool)

(assert (=> b!155883 m!189655))

(declare-fun m!189657 () Bool)

(assert (=> b!155878 m!189657))

(assert (=> b!155878 m!189657))

(declare-fun m!189659 () Bool)

(assert (=> b!155878 m!189659))

(check-sat (not start!15660) (not b_next!3315) tp_is_empty!3117 (not b!155878) (not mapNonEmpty!5318) (not b!155883) b_and!9747 (not b!155882))
(check-sat b_and!9747 (not b_next!3315))
