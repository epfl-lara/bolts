; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89224 () Bool)

(assert start!89224)

(declare-fun b!1022521 () Bool)

(declare-fun b_free!20229 () Bool)

(declare-fun b_next!20229 () Bool)

(assert (=> b!1022521 (= b_free!20229 (not b_next!20229))))

(declare-fun tp!71723 () Bool)

(declare-fun b_and!32459 () Bool)

(assert (=> b!1022521 (= tp!71723 b_and!32459)))

(declare-fun tp_is_empty!23949 () Bool)

(declare-fun e!576108 () Bool)

(declare-fun e!576105 () Bool)

(declare-datatypes ((V!36805 0))(
  ( (V!36806 (val!12025 Int)) )
))
(declare-datatypes ((ValueCell!11271 0))(
  ( (ValueCellFull!11271 (v!14595 V!36805)) (EmptyCell!11271) )
))
(declare-datatypes ((array!63926 0))(
  ( (array!63927 (arr!30771 (Array (_ BitVec 32) (_ BitVec 64))) (size!31283 (_ BitVec 32))) )
))
(declare-datatypes ((array!63928 0))(
  ( (array!63929 (arr!30772 (Array (_ BitVec 32) ValueCell!11271)) (size!31284 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5136 0))(
  ( (LongMapFixedSize!5137 (defaultEntry!5920 Int) (mask!29514 (_ BitVec 32)) (extraKeys!5652 (_ BitVec 32)) (zeroValue!5756 V!36805) (minValue!5756 V!36805) (_size!2623 (_ BitVec 32)) (_keys!11062 array!63926) (_values!5943 array!63928) (_vacant!2623 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5136)

(declare-fun array_inv!23721 (array!63926) Bool)

(declare-fun array_inv!23722 (array!63928) Bool)

(assert (=> b!1022521 (= e!576108 (and tp!71723 tp_is_empty!23949 (array_inv!23721 (_keys!11062 thiss!1427)) (array_inv!23722 (_values!5943 thiss!1427)) e!576105))))

(declare-fun b!1022522 () Bool)

(declare-fun e!576106 () Bool)

(assert (=> b!1022522 (= e!576106 tp_is_empty!23949)))

(declare-fun b!1022523 () Bool)

(declare-fun e!576104 () Bool)

(assert (=> b!1022523 (= e!576104 (not true))))

(declare-fun lt!450262 () Bool)

(declare-fun lt!450261 () V!36805)

(declare-fun valid!1921 (LongMapFixedSize!5136) Bool)

(assert (=> b!1022523 (= lt!450262 (valid!1921 (LongMapFixedSize!5137 (defaultEntry!5920 thiss!1427) (mask!29514 thiss!1427) (bvand (extraKeys!5652 thiss!1427) #b00000000000000000000000000000010) lt!450261 (minValue!5756 thiss!1427) (_size!2623 thiss!1427) (_keys!11062 thiss!1427) (_values!5943 thiss!1427) (_vacant!2623 thiss!1427))))))

(declare-datatypes ((tuple2!15592 0))(
  ( (tuple2!15593 (_1!7806 (_ BitVec 64)) (_2!7806 V!36805)) )
))
(declare-datatypes ((List!21796 0))(
  ( (Nil!21793) (Cons!21792 (h!22990 tuple2!15592) (t!30833 List!21796)) )
))
(declare-datatypes ((ListLongMap!13751 0))(
  ( (ListLongMap!13752 (toList!6891 List!21796)) )
))
(declare-fun -!467 (ListLongMap!13751 (_ BitVec 64)) ListLongMap!13751)

(declare-fun getCurrentListMap!3898 (array!63926 array!63928 (_ BitVec 32) (_ BitVec 32) V!36805 V!36805 (_ BitVec 32) Int) ListLongMap!13751)

(assert (=> b!1022523 (= (-!467 (getCurrentListMap!3898 (_keys!11062 thiss!1427) (_values!5943 thiss!1427) (mask!29514 thiss!1427) (extraKeys!5652 thiss!1427) (zeroValue!5756 thiss!1427) (minValue!5756 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5920 thiss!1427)) #b0000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3898 (_keys!11062 thiss!1427) (_values!5943 thiss!1427) (mask!29514 thiss!1427) (bvand (extraKeys!5652 thiss!1427) #b00000000000000000000000000000010) lt!450261 (minValue!5756 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5920 thiss!1427)))))

(declare-datatypes ((Unit!33286 0))(
  ( (Unit!33287) )
))
(declare-fun lt!450260 () Unit!33286)

(declare-fun lemmaRemoveZeroKeyThenRemoveKeyFromListMap!7 (array!63926 array!63928 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36805 V!36805 V!36805 Int) Unit!33286)

(assert (=> b!1022523 (= lt!450260 (lemmaRemoveZeroKeyThenRemoveKeyFromListMap!7 (_keys!11062 thiss!1427) (_values!5943 thiss!1427) (mask!29514 thiss!1427) (extraKeys!5652 thiss!1427) (bvand (extraKeys!5652 thiss!1427) #b00000000000000000000000000000010) (zeroValue!5756 thiss!1427) lt!450261 (minValue!5756 thiss!1427) (defaultEntry!5920 thiss!1427)))))

(declare-fun dynLambda!1942 (Int (_ BitVec 64)) V!36805)

(assert (=> b!1022523 (= lt!450261 (dynLambda!1942 (defaultEntry!5920 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!37341 () Bool)

(declare-fun mapRes!37341 () Bool)

(declare-fun tp!71722 () Bool)

(declare-fun e!576109 () Bool)

(assert (=> mapNonEmpty!37341 (= mapRes!37341 (and tp!71722 e!576109))))

(declare-fun mapValue!37341 () ValueCell!11271)

(declare-fun mapRest!37341 () (Array (_ BitVec 32) ValueCell!11271))

(declare-fun mapKey!37341 () (_ BitVec 32))

(assert (=> mapNonEmpty!37341 (= (arr!30772 (_values!5943 thiss!1427)) (store mapRest!37341 mapKey!37341 mapValue!37341))))

(declare-fun b!1022524 () Bool)

(declare-fun res!685029 () Bool)

(assert (=> b!1022524 (=> (not res!685029) (not e!576104))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022524 (= res!685029 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!685028 () Bool)

(assert (=> start!89224 (=> (not res!685028) (not e!576104))))

(assert (=> start!89224 (= res!685028 (valid!1921 thiss!1427))))

(assert (=> start!89224 e!576104))

(assert (=> start!89224 e!576108))

(assert (=> start!89224 true))

(declare-fun b!1022525 () Bool)

(assert (=> b!1022525 (= e!576105 (and e!576106 mapRes!37341))))

(declare-fun condMapEmpty!37341 () Bool)

(declare-fun mapDefault!37341 () ValueCell!11271)

(assert (=> b!1022525 (= condMapEmpty!37341 (= (arr!30772 (_values!5943 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11271)) mapDefault!37341)))))

(declare-fun b!1022526 () Bool)

(assert (=> b!1022526 (= e!576109 tp_is_empty!23949)))

(declare-fun mapIsEmpty!37341 () Bool)

(assert (=> mapIsEmpty!37341 mapRes!37341))

(assert (= (and start!89224 res!685028) b!1022524))

(assert (= (and b!1022524 res!685029) b!1022523))

(assert (= (and b!1022525 condMapEmpty!37341) mapIsEmpty!37341))

(assert (= (and b!1022525 (not condMapEmpty!37341)) mapNonEmpty!37341))

(get-info :version)

(assert (= (and mapNonEmpty!37341 ((_ is ValueCellFull!11271) mapValue!37341)) b!1022526))

(assert (= (and b!1022525 ((_ is ValueCellFull!11271) mapDefault!37341)) b!1022522))

(assert (= b!1022521 b!1022525))

(assert (= start!89224 b!1022521))

(declare-fun b_lambda!15715 () Bool)

(assert (=> (not b_lambda!15715) (not b!1022523)))

(declare-fun t!30832 () Bool)

(declare-fun tb!6861 () Bool)

(assert (=> (and b!1022521 (= (defaultEntry!5920 thiss!1427) (defaultEntry!5920 thiss!1427)) t!30832) tb!6861))

(declare-fun result!14023 () Bool)

(assert (=> tb!6861 (= result!14023 tp_is_empty!23949)))

(assert (=> b!1022523 t!30832))

(declare-fun b_and!32461 () Bool)

(assert (= b_and!32459 (and (=> t!30832 result!14023) b_and!32461)))

(declare-fun m!941713 () Bool)

(assert (=> b!1022521 m!941713))

(declare-fun m!941715 () Bool)

(assert (=> b!1022521 m!941715))

(declare-fun m!941717 () Bool)

(assert (=> b!1022523 m!941717))

(declare-fun m!941719 () Bool)

(assert (=> b!1022523 m!941719))

(declare-fun m!941721 () Bool)

(assert (=> b!1022523 m!941721))

(declare-fun m!941723 () Bool)

(assert (=> b!1022523 m!941723))

(declare-fun m!941725 () Bool)

(assert (=> b!1022523 m!941725))

(declare-fun m!941727 () Bool)

(assert (=> b!1022523 m!941727))

(assert (=> b!1022523 m!941725))

(declare-fun m!941729 () Bool)

(assert (=> mapNonEmpty!37341 m!941729))

(declare-fun m!941731 () Bool)

(assert (=> start!89224 m!941731))

(check-sat (not b!1022523) (not start!89224) b_and!32461 (not b!1022521) (not b_lambda!15715) (not b_next!20229) (not mapNonEmpty!37341) tp_is_empty!23949)
(check-sat b_and!32461 (not b_next!20229))
