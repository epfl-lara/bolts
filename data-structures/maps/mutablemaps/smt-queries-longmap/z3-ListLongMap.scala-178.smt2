; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3466 () Bool)

(assert start!3466)

(declare-fun b!22721 () Bool)

(declare-fun b_free!747 () Bool)

(declare-fun b_next!747 () Bool)

(assert (=> b!22721 (= b_free!747 (not b_next!747))))

(declare-fun tp!3485 () Bool)

(declare-fun b_and!1467 () Bool)

(assert (=> b!22721 (= tp!3485 b_and!1467)))

(declare-fun b!22709 () Bool)

(declare-fun e!14751 () Bool)

(declare-fun tp_is_empty!1011 () Bool)

(assert (=> b!22709 (= e!14751 tp_is_empty!1011)))

(declare-fun c!2831 () Bool)

(declare-datatypes ((V!1173 0))(
  ( (V!1174 (val!532 Int)) )
))
(declare-datatypes ((array!1249 0))(
  ( (array!1250 (arr!591 (Array (_ BitVec 32) (_ BitVec 64))) (size!687 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!306 0))(
  ( (ValueCellFull!306 (v!1590 V!1173)) (EmptyCell!306) )
))
(declare-datatypes ((array!1251 0))(
  ( (array!1252 (arr!592 (Array (_ BitVec 32) ValueCell!306)) (size!688 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!198 0))(
  ( (LongMapFixedSize!199 (defaultEntry!1736 Int) (mask!4718 (_ BitVec 32)) (extraKeys!1635 (_ BitVec 32)) (zeroValue!1660 V!1173) (minValue!1660 V!1173) (_size!143 (_ BitVec 32)) (_keys!3158 array!1249) (_values!1723 array!1251) (_vacant!143 (_ BitVec 32))) )
))
(declare-fun lt!7853 () LongMapFixedSize!198)

(declare-datatypes ((tuple2!914 0))(
  ( (tuple2!915 (_1!462 Bool) (_2!462 LongMapFixedSize!198)) )
))
(declare-fun call!1724 () tuple2!914)

(declare-fun lt!7861 () tuple2!914)

(declare-fun bm!1720 () Bool)

(declare-datatypes ((Cell!198 0))(
  ( (Cell!199 (v!1591 LongMapFixedSize!198)) )
))
(declare-datatypes ((LongMap!198 0))(
  ( (LongMap!199 (underlying!110 Cell!198)) )
))
(declare-fun thiss!938 () LongMap!198)

(declare-fun c!2829 () Bool)

(declare-fun update!29 (LongMapFixedSize!198 (_ BitVec 64) V!1173) tuple2!914)

(assert (=> bm!1720 (= call!1724 (update!29 (ite c!2829 (_2!462 lt!7861) lt!7853) (ite c!2829 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2831 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2829 (minValue!1660 (v!1591 (underlying!110 thiss!938))) (ite c!2831 (zeroValue!1660 (v!1591 (underlying!110 thiss!938))) (minValue!1660 (v!1591 (underlying!110 thiss!938)))))))))

(declare-fun bm!1721 () Bool)

(declare-fun call!1723 () tuple2!914)

(assert (=> bm!1721 (= call!1723 call!1724)))

(declare-fun b!22710 () Bool)

(declare-datatypes ((tuple2!916 0))(
  ( (tuple2!917 (_1!463 Bool) (_2!463 Cell!198)) )
))
(declare-fun e!14743 () tuple2!916)

(declare-fun e!14747 () tuple2!916)

(assert (=> b!22710 (= e!14743 e!14747)))

(declare-fun lt!7862 () Bool)

(assert (=> b!22710 (= c!2831 (and (not lt!7862) (= (bvand (extraKeys!1635 (v!1591 (underlying!110 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!22711 () Bool)

(declare-fun c!2832 () Bool)

(assert (=> b!22711 (= c!2832 (and (not (= (bvand (extraKeys!1635 (v!1591 (underlying!110 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!7862))))

(declare-fun e!14740 () tuple2!916)

(assert (=> b!22711 (= e!14747 e!14740)))

(declare-fun b!22712 () Bool)

(declare-fun lt!7857 () tuple2!914)

(assert (=> b!22712 (= e!14740 (tuple2!917 (_1!462 lt!7857) (Cell!199 (_2!462 lt!7857))))))

(assert (=> b!22712 (= lt!7857 call!1723)))

(declare-fun b!22713 () Bool)

(declare-fun lt!7860 () tuple2!914)

(assert (=> b!22713 (= e!14743 (tuple2!917 (and (_1!462 lt!7861) (_1!462 lt!7860)) (Cell!199 (_2!462 lt!7860))))))

(assert (=> b!22713 (= lt!7861 (update!29 lt!7853 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1660 (v!1591 (underlying!110 thiss!938)))))))

(assert (=> b!22713 (= lt!7860 call!1724)))

(declare-fun mapNonEmpty!1004 () Bool)

(declare-fun mapRes!1004 () Bool)

(declare-fun tp!3484 () Bool)

(assert (=> mapNonEmpty!1004 (= mapRes!1004 (and tp!3484 e!14751))))

(declare-fun mapRest!1004 () (Array (_ BitVec 32) ValueCell!306))

(declare-fun mapValue!1004 () ValueCell!306)

(declare-fun mapKey!1004 () (_ BitVec 32))

(assert (=> mapNonEmpty!1004 (= (arr!592 (_values!1723 (v!1591 (underlying!110 thiss!938)))) (store mapRest!1004 mapKey!1004 mapValue!1004))))

(declare-fun b!22714 () Bool)

(assert (=> b!22714 (= e!14740 (tuple2!917 true (Cell!199 lt!7853)))))

(declare-fun b!22715 () Bool)

(declare-fun e!14745 () Bool)

(declare-fun e!14749 () Bool)

(assert (=> b!22715 (= e!14745 e!14749)))

(declare-fun res!14228 () Bool)

(declare-fun e!14742 () Bool)

(assert (=> start!3466 (=> (not res!14228) (not e!14742))))

(declare-fun valid!105 (LongMap!198) Bool)

(assert (=> start!3466 (= res!14228 (valid!105 thiss!938))))

(assert (=> start!3466 e!14742))

(assert (=> start!3466 e!14745))

(declare-fun b!22716 () Bool)

(declare-fun e!14744 () Bool)

(assert (=> b!22716 (= e!14749 e!14744)))

(declare-fun b!22717 () Bool)

(declare-datatypes ((tuple3!10 0))(
  ( (tuple3!11 (_1!464 Bool) (_2!464 Cell!198) (_3!5 LongMap!198)) )
))
(declare-fun e!14741 () tuple3!10)

(declare-fun lt!7856 () tuple2!916)

(assert (=> b!22717 (= e!14741 (tuple3!11 false (_2!463 lt!7856) thiss!938))))

(declare-fun b!22718 () Bool)

(assert (=> b!22718 (= e!14742 false)))

(declare-fun lt!7858 () tuple3!10)

(assert (=> b!22718 (= lt!7858 e!14741)))

(declare-fun c!2830 () Bool)

(assert (=> b!22718 (= c!2830 (not (_1!463 lt!7856)))))

(assert (=> b!22718 (= lt!7856 e!14743)))

(assert (=> b!22718 (= c!2829 (and (not lt!7862) (not (= (bvand (extraKeys!1635 (v!1591 (underlying!110 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!22718 (= lt!7862 (= (bvand (extraKeys!1635 (v!1591 (underlying!110 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun getNewLongMapFixedSize!29 ((_ BitVec 32) Int) LongMapFixedSize!198)

(declare-fun computeNewMask!26 (LongMap!198 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!22718 (= lt!7853 (getNewLongMapFixedSize!29 (computeNewMask!26 thiss!938 (mask!4718 (v!1591 (underlying!110 thiss!938))) (_vacant!143 (v!1591 (underlying!110 thiss!938))) (_size!143 (v!1591 (underlying!110 thiss!938)))) (defaultEntry!1736 (v!1591 (underlying!110 thiss!938)))))))

(declare-fun b!22719 () Bool)

(declare-fun lt!7859 () tuple2!914)

(assert (=> b!22719 (= lt!7859 call!1723)))

(assert (=> b!22719 (= e!14747 (tuple2!917 (_1!462 lt!7859) (Cell!199 (_2!462 lt!7859))))))

(declare-fun b!22720 () Bool)

(declare-fun e!14750 () Bool)

(assert (=> b!22720 (= e!14750 tp_is_empty!1011)))

(declare-fun e!14748 () Bool)

(declare-fun array_inv!419 (array!1249) Bool)

(declare-fun array_inv!420 (array!1251) Bool)

(assert (=> b!22721 (= e!14744 (and tp!3485 tp_is_empty!1011 (array_inv!419 (_keys!3158 (v!1591 (underlying!110 thiss!938)))) (array_inv!420 (_values!1723 (v!1591 (underlying!110 thiss!938)))) e!14748))))

(declare-fun mapIsEmpty!1004 () Bool)

(assert (=> mapIsEmpty!1004 mapRes!1004))

(declare-fun b!22722 () Bool)

(declare-fun lt!7855 () tuple2!914)

(declare-fun lt!7854 () Cell!198)

(assert (=> b!22722 (= e!14741 (ite (_1!462 lt!7855) (tuple3!11 true (underlying!110 thiss!938) (LongMap!199 lt!7854)) (tuple3!11 false lt!7854 thiss!938)))))

(declare-fun repackFrom!6 (LongMap!198 LongMapFixedSize!198 (_ BitVec 32)) tuple2!914)

(assert (=> b!22722 (= lt!7855 (repackFrom!6 thiss!938 (v!1591 (_2!463 lt!7856)) (bvsub (size!687 (_keys!3158 (v!1591 (underlying!110 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> b!22722 (= lt!7854 (Cell!199 (_2!462 lt!7855)))))

(declare-fun b!22723 () Bool)

(assert (=> b!22723 (= e!14748 (and e!14750 mapRes!1004))))

(declare-fun condMapEmpty!1004 () Bool)

(declare-fun mapDefault!1004 () ValueCell!306)

(assert (=> b!22723 (= condMapEmpty!1004 (= (arr!592 (_values!1723 (v!1591 (underlying!110 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!306)) mapDefault!1004)))))

(assert (= (and start!3466 res!14228) b!22718))

(assert (= (and b!22718 c!2829) b!22713))

(assert (= (and b!22718 (not c!2829)) b!22710))

(assert (= (and b!22710 c!2831) b!22719))

(assert (= (and b!22710 (not c!2831)) b!22711))

(assert (= (and b!22711 c!2832) b!22712))

(assert (= (and b!22711 (not c!2832)) b!22714))

(assert (= (or b!22719 b!22712) bm!1721))

(assert (= (or b!22713 bm!1721) bm!1720))

(assert (= (and b!22718 c!2830) b!22717))

(assert (= (and b!22718 (not c!2830)) b!22722))

(assert (= (and b!22723 condMapEmpty!1004) mapIsEmpty!1004))

(assert (= (and b!22723 (not condMapEmpty!1004)) mapNonEmpty!1004))

(get-info :version)

(assert (= (and mapNonEmpty!1004 ((_ is ValueCellFull!306) mapValue!1004)) b!22709))

(assert (= (and b!22723 ((_ is ValueCellFull!306) mapDefault!1004)) b!22720))

(assert (= b!22721 b!22723))

(assert (= b!22716 b!22721))

(assert (= b!22715 b!22716))

(assert (= start!3466 b!22715))

(declare-fun m!16488 () Bool)

(assert (=> bm!1720 m!16488))

(declare-fun m!16490 () Bool)

(assert (=> b!22713 m!16490))

(declare-fun m!16492 () Bool)

(assert (=> b!22722 m!16492))

(declare-fun m!16494 () Bool)

(assert (=> b!22718 m!16494))

(assert (=> b!22718 m!16494))

(declare-fun m!16496 () Bool)

(assert (=> b!22718 m!16496))

(declare-fun m!16498 () Bool)

(assert (=> b!22721 m!16498))

(declare-fun m!16500 () Bool)

(assert (=> b!22721 m!16500))

(declare-fun m!16502 () Bool)

(assert (=> mapNonEmpty!1004 m!16502))

(declare-fun m!16504 () Bool)

(assert (=> start!3466 m!16504))

(check-sat (not b!22722) b_and!1467 (not b!22718) (not mapNonEmpty!1004) (not b!22713) (not b_next!747) (not b!22721) (not start!3466) tp_is_empty!1011 (not bm!1720))
(check-sat b_and!1467 (not b_next!747))
