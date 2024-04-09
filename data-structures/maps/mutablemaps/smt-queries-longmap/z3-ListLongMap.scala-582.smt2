; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15648 () Bool)

(assert start!15648)

(declare-fun b!155760 () Bool)

(declare-fun b_free!3303 () Bool)

(declare-fun b_next!3303 () Bool)

(assert (=> b!155760 (= b_free!3303 (not b_next!3303))))

(declare-fun tp!12434 () Bool)

(declare-fun b_and!9735 () Bool)

(assert (=> b!155760 (= tp!12434 b_and!9735)))

(declare-fun b!155755 () Bool)

(declare-fun e!101784 () Bool)

(declare-fun tp_is_empty!3105 () Bool)

(assert (=> b!155755 (= e!101784 tp_is_empty!3105)))

(declare-fun b!155756 () Bool)

(declare-fun e!101781 () Bool)

(assert (=> b!155756 (= e!101781 (not true))))

(declare-fun lt!81433 () Bool)

(declare-datatypes ((V!3787 0))(
  ( (V!3788 (val!1597 Int)) )
))
(declare-datatypes ((ValueCell!1209 0))(
  ( (ValueCellFull!1209 (v!3458 V!3787)) (EmptyCell!1209) )
))
(declare-datatypes ((array!5262 0))(
  ( (array!5263 (arr!2488 (Array (_ BitVec 32) (_ BitVec 64))) (size!2766 (_ BitVec 32))) )
))
(declare-datatypes ((array!5264 0))(
  ( (array!5265 (arr!2489 (Array (_ BitVec 32) ValueCell!1209)) (size!2767 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1326 0))(
  ( (LongMapFixedSize!1327 (defaultEntry!3105 Int) (mask!7538 (_ BitVec 32)) (extraKeys!2846 (_ BitVec 32)) (zeroValue!2948 V!3787) (minValue!2948 V!3787) (_size!712 (_ BitVec 32)) (_keys!4880 array!5262) (_values!3088 array!5264) (_vacant!712 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1326)

(declare-fun v!309 () V!3787)

(declare-fun valid!640 (LongMapFixedSize!1326) Bool)

(assert (=> b!155756 (= lt!81433 (valid!640 (LongMapFixedSize!1327 (defaultEntry!3105 thiss!1248) (mask!7538 thiss!1248) (bvor (extraKeys!2846 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2948 thiss!1248) (_size!712 thiss!1248) (_keys!4880 thiss!1248) (_values!3088 thiss!1248) (_vacant!712 thiss!1248))))))

(declare-datatypes ((tuple2!2810 0))(
  ( (tuple2!2811 (_1!1415 (_ BitVec 64)) (_2!1415 V!3787)) )
))
(declare-datatypes ((List!1850 0))(
  ( (Nil!1847) (Cons!1846 (h!2455 tuple2!2810) (t!6660 List!1850)) )
))
(declare-datatypes ((ListLongMap!1819 0))(
  ( (ListLongMap!1820 (toList!925 List!1850)) )
))
(declare-fun +!189 (ListLongMap!1819 tuple2!2810) ListLongMap!1819)

(declare-fun getCurrentListMap!586 (array!5262 array!5264 (_ BitVec 32) (_ BitVec 32) V!3787 V!3787 (_ BitVec 32) Int) ListLongMap!1819)

(assert (=> b!155756 (= (+!189 (getCurrentListMap!586 (_keys!4880 thiss!1248) (_values!3088 thiss!1248) (mask!7538 thiss!1248) (extraKeys!2846 thiss!1248) (zeroValue!2948 thiss!1248) (minValue!2948 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3105 thiss!1248)) (tuple2!2811 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!586 (_keys!4880 thiss!1248) (_values!3088 thiss!1248) (mask!7538 thiss!1248) (bvor (extraKeys!2846 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2948 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3105 thiss!1248)))))

(declare-datatypes ((Unit!4930 0))(
  ( (Unit!4931) )
))
(declare-fun lt!81434 () Unit!4930)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!73 (array!5262 array!5264 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3787 V!3787 V!3787 Int) Unit!4930)

(assert (=> b!155756 (= lt!81434 (lemmaChangeZeroKeyThenAddPairToListMap!73 (_keys!4880 thiss!1248) (_values!3088 thiss!1248) (mask!7538 thiss!1248) (extraKeys!2846 thiss!1248) (bvor (extraKeys!2846 thiss!1248) #b00000000000000000000000000000001) (zeroValue!2948 thiss!1248) v!309 (minValue!2948 thiss!1248) (defaultEntry!3105 thiss!1248)))))

(declare-fun res!73599 () Bool)

(assert (=> start!15648 (=> (not res!73599) (not e!101781))))

(assert (=> start!15648 (= res!73599 (valid!640 thiss!1248))))

(assert (=> start!15648 e!101781))

(declare-fun e!101786 () Bool)

(assert (=> start!15648 e!101786))

(assert (=> start!15648 true))

(assert (=> start!15648 tp_is_empty!3105))

(declare-fun mapIsEmpty!5300 () Bool)

(declare-fun mapRes!5300 () Bool)

(assert (=> mapIsEmpty!5300 mapRes!5300))

(declare-fun b!155757 () Bool)

(declare-fun e!101782 () Bool)

(assert (=> b!155757 (= e!101782 tp_is_empty!3105)))

(declare-fun b!155758 () Bool)

(declare-fun res!73600 () Bool)

(assert (=> b!155758 (=> (not res!73600) (not e!101781))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155758 (= res!73600 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155759 () Bool)

(declare-fun e!101783 () Bool)

(assert (=> b!155759 (= e!101783 (and e!101782 mapRes!5300))))

(declare-fun condMapEmpty!5300 () Bool)

(declare-fun mapDefault!5300 () ValueCell!1209)

(assert (=> b!155759 (= condMapEmpty!5300 (= (arr!2489 (_values!3088 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1209)) mapDefault!5300)))))

(declare-fun mapNonEmpty!5300 () Bool)

(declare-fun tp!12433 () Bool)

(assert (=> mapNonEmpty!5300 (= mapRes!5300 (and tp!12433 e!101784))))

(declare-fun mapKey!5300 () (_ BitVec 32))

(declare-fun mapRest!5300 () (Array (_ BitVec 32) ValueCell!1209))

(declare-fun mapValue!5300 () ValueCell!1209)

(assert (=> mapNonEmpty!5300 (= (arr!2489 (_values!3088 thiss!1248)) (store mapRest!5300 mapKey!5300 mapValue!5300))))

(declare-fun array_inv!1561 (array!5262) Bool)

(declare-fun array_inv!1562 (array!5264) Bool)

(assert (=> b!155760 (= e!101786 (and tp!12434 tp_is_empty!3105 (array_inv!1561 (_keys!4880 thiss!1248)) (array_inv!1562 (_values!3088 thiss!1248)) e!101783))))

(assert (= (and start!15648 res!73599) b!155758))

(assert (= (and b!155758 res!73600) b!155756))

(assert (= (and b!155759 condMapEmpty!5300) mapIsEmpty!5300))

(assert (= (and b!155759 (not condMapEmpty!5300)) mapNonEmpty!5300))

(get-info :version)

(assert (= (and mapNonEmpty!5300 ((_ is ValueCellFull!1209) mapValue!5300)) b!155755))

(assert (= (and b!155759 ((_ is ValueCellFull!1209) mapDefault!5300)) b!155757))

(assert (= b!155760 b!155759))

(assert (= start!15648 b!155760))

(declare-fun m!189515 () Bool)

(assert (=> b!155756 m!189515))

(declare-fun m!189517 () Bool)

(assert (=> b!155756 m!189517))

(assert (=> b!155756 m!189515))

(declare-fun m!189519 () Bool)

(assert (=> b!155756 m!189519))

(declare-fun m!189521 () Bool)

(assert (=> b!155756 m!189521))

(declare-fun m!189523 () Bool)

(assert (=> b!155756 m!189523))

(declare-fun m!189525 () Bool)

(assert (=> start!15648 m!189525))

(declare-fun m!189527 () Bool)

(assert (=> mapNonEmpty!5300 m!189527))

(declare-fun m!189529 () Bool)

(assert (=> b!155760 m!189529))

(declare-fun m!189531 () Bool)

(assert (=> b!155760 m!189531))

(check-sat (not b_next!3303) tp_is_empty!3105 (not start!15648) b_and!9735 (not b!155756) (not mapNonEmpty!5300) (not b!155760))
(check-sat b_and!9735 (not b_next!3303))
