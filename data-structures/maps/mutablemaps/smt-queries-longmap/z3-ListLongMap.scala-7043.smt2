; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89308 () Bool)

(assert start!89308)

(declare-fun b!1023618 () Bool)

(declare-fun b_free!20313 () Bool)

(declare-fun b_next!20313 () Bool)

(assert (=> b!1023618 (= b_free!20313 (not b_next!20313))))

(declare-fun tp!71974 () Bool)

(declare-fun b_and!32555 () Bool)

(assert (=> b!1023618 (= tp!71974 b_and!32555)))

(declare-fun b!1023614 () Bool)

(declare-fun res!685604 () Bool)

(declare-fun e!576862 () Bool)

(assert (=> b!1023614 (=> (not res!685604) (not e!576862))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023614 (= res!685604 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023615 () Bool)

(declare-fun e!576863 () Bool)

(declare-fun e!576865 () Bool)

(declare-fun mapRes!37467 () Bool)

(assert (=> b!1023615 (= e!576863 (and e!576865 mapRes!37467))))

(declare-fun condMapEmpty!37467 () Bool)

(declare-datatypes ((V!36917 0))(
  ( (V!36918 (val!12067 Int)) )
))
(declare-datatypes ((ValueCell!11313 0))(
  ( (ValueCellFull!11313 (v!14637 V!36917)) (EmptyCell!11313) )
))
(declare-datatypes ((array!64094 0))(
  ( (array!64095 (arr!30855 (Array (_ BitVec 32) (_ BitVec 64))) (size!31367 (_ BitVec 32))) )
))
(declare-datatypes ((array!64096 0))(
  ( (array!64097 (arr!30856 (Array (_ BitVec 32) ValueCell!11313)) (size!31368 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5220 0))(
  ( (LongMapFixedSize!5221 (defaultEntry!5962 Int) (mask!29584 (_ BitVec 32)) (extraKeys!5694 (_ BitVec 32)) (zeroValue!5798 V!36917) (minValue!5798 V!36917) (_size!2665 (_ BitVec 32)) (_keys!11104 array!64094) (_values!5985 array!64096) (_vacant!2665 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5220)

(declare-fun mapDefault!37467 () ValueCell!11313)

(assert (=> b!1023615 (= condMapEmpty!37467 (= (arr!30856 (_values!5985 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11313)) mapDefault!37467)))))

(declare-fun b!1023616 () Bool)

(assert (=> b!1023616 (= e!576862 (not true))))

(declare-fun lt!450424 () Bool)

(declare-fun lt!450422 () V!36917)

(declare-fun valid!1945 (LongMapFixedSize!5220) Bool)

(assert (=> b!1023616 (= lt!450424 (valid!1945 (LongMapFixedSize!5221 (defaultEntry!5962 thiss!1427) (mask!29584 thiss!1427) (bvand (extraKeys!5694 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5798 thiss!1427) lt!450422 (_size!2665 thiss!1427) (_keys!11104 thiss!1427) (_values!5985 thiss!1427) (_vacant!2665 thiss!1427))))))

(declare-datatypes ((tuple2!15600 0))(
  ( (tuple2!15601 (_1!7810 (_ BitVec 64)) (_2!7810 V!36917)) )
))
(declare-datatypes ((List!21819 0))(
  ( (Nil!21816) (Cons!21815 (h!23013 tuple2!15600) (t!30868 List!21819)) )
))
(declare-datatypes ((ListLongMap!13759 0))(
  ( (ListLongMap!13760 (toList!6895 List!21819)) )
))
(declare-fun -!471 (ListLongMap!13759 (_ BitVec 64)) ListLongMap!13759)

(declare-fun getCurrentListMap!3902 (array!64094 array!64096 (_ BitVec 32) (_ BitVec 32) V!36917 V!36917 (_ BitVec 32) Int) ListLongMap!13759)

(assert (=> b!1023616 (= (-!471 (getCurrentListMap!3902 (_keys!11104 thiss!1427) (_values!5985 thiss!1427) (mask!29584 thiss!1427) (extraKeys!5694 thiss!1427) (zeroValue!5798 thiss!1427) (minValue!5798 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5962 thiss!1427)) #b1000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3902 (_keys!11104 thiss!1427) (_values!5985 thiss!1427) (mask!29584 thiss!1427) (bvand (extraKeys!5694 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5798 thiss!1427) lt!450422 #b00000000000000000000000000000000 (defaultEntry!5962 thiss!1427)))))

(declare-datatypes ((Unit!33294 0))(
  ( (Unit!33295) )
))
(declare-fun lt!450423 () Unit!33294)

(declare-fun lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!3 (array!64094 array!64096 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36917 V!36917 V!36917 Int) Unit!33294)

(assert (=> b!1023616 (= lt!450423 (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!3 (_keys!11104 thiss!1427) (_values!5985 thiss!1427) (mask!29584 thiss!1427) (extraKeys!5694 thiss!1427) (bvand (extraKeys!5694 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5798 thiss!1427) (minValue!5798 thiss!1427) lt!450422 (defaultEntry!5962 thiss!1427)))))

(declare-fun dynLambda!1946 (Int (_ BitVec 64)) V!36917)

(assert (=> b!1023616 (= lt!450422 (dynLambda!1946 (defaultEntry!5962 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1023617 () Bool)

(declare-fun tp_is_empty!24033 () Bool)

(assert (=> b!1023617 (= e!576865 tp_is_empty!24033)))

(declare-fun mapIsEmpty!37467 () Bool)

(assert (=> mapIsEmpty!37467 mapRes!37467))

(declare-fun res!685605 () Bool)

(assert (=> start!89308 (=> (not res!685605) (not e!576862))))

(assert (=> start!89308 (= res!685605 (valid!1945 thiss!1427))))

(assert (=> start!89308 e!576862))

(declare-fun e!576864 () Bool)

(assert (=> start!89308 e!576864))

(assert (=> start!89308 true))

(declare-fun b!1023613 () Bool)

(declare-fun e!576861 () Bool)

(assert (=> b!1023613 (= e!576861 tp_is_empty!24033)))

(declare-fun array_inv!23777 (array!64094) Bool)

(declare-fun array_inv!23778 (array!64096) Bool)

(assert (=> b!1023618 (= e!576864 (and tp!71974 tp_is_empty!24033 (array_inv!23777 (_keys!11104 thiss!1427)) (array_inv!23778 (_values!5985 thiss!1427)) e!576863))))

(declare-fun mapNonEmpty!37467 () Bool)

(declare-fun tp!71975 () Bool)

(assert (=> mapNonEmpty!37467 (= mapRes!37467 (and tp!71975 e!576861))))

(declare-fun mapValue!37467 () ValueCell!11313)

(declare-fun mapRest!37467 () (Array (_ BitVec 32) ValueCell!11313))

(declare-fun mapKey!37467 () (_ BitVec 32))

(assert (=> mapNonEmpty!37467 (= (arr!30856 (_values!5985 thiss!1427)) (store mapRest!37467 mapKey!37467 mapValue!37467))))

(assert (= (and start!89308 res!685605) b!1023614))

(assert (= (and b!1023614 res!685604) b!1023616))

(assert (= (and b!1023615 condMapEmpty!37467) mapIsEmpty!37467))

(assert (= (and b!1023615 (not condMapEmpty!37467)) mapNonEmpty!37467))

(get-info :version)

(assert (= (and mapNonEmpty!37467 ((_ is ValueCellFull!11313) mapValue!37467)) b!1023613))

(assert (= (and b!1023615 ((_ is ValueCellFull!11313) mapDefault!37467)) b!1023617))

(assert (= b!1023618 b!1023615))

(assert (= start!89308 b!1023618))

(declare-fun b_lambda!15727 () Bool)

(assert (=> (not b_lambda!15727) (not b!1023616)))

(declare-fun t!30867 () Bool)

(declare-fun tb!6873 () Bool)

(assert (=> (and b!1023618 (= (defaultEntry!5962 thiss!1427) (defaultEntry!5962 thiss!1427)) t!30867) tb!6873))

(declare-fun result!14047 () Bool)

(assert (=> tb!6873 (= result!14047 tp_is_empty!24033)))

(assert (=> b!1023616 t!30867))

(declare-fun b_and!32557 () Bool)

(assert (= b_and!32555 (and (=> t!30867 result!14047) b_and!32557)))

(declare-fun m!942337 () Bool)

(assert (=> b!1023616 m!942337))

(declare-fun m!942339 () Bool)

(assert (=> b!1023616 m!942339))

(declare-fun m!942341 () Bool)

(assert (=> b!1023616 m!942341))

(declare-fun m!942343 () Bool)

(assert (=> b!1023616 m!942343))

(declare-fun m!942345 () Bool)

(assert (=> b!1023616 m!942345))

(assert (=> b!1023616 m!942341))

(declare-fun m!942347 () Bool)

(assert (=> b!1023616 m!942347))

(declare-fun m!942349 () Bool)

(assert (=> start!89308 m!942349))

(declare-fun m!942351 () Bool)

(assert (=> b!1023618 m!942351))

(declare-fun m!942353 () Bool)

(assert (=> b!1023618 m!942353))

(declare-fun m!942355 () Bool)

(assert (=> mapNonEmpty!37467 m!942355))

(check-sat (not mapNonEmpty!37467) tp_is_empty!24033 (not b!1023616) b_and!32557 (not b_lambda!15727) (not b!1023618) (not b_next!20313) (not start!89308))
(check-sat b_and!32557 (not b_next!20313))
