; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89314 () Bool)

(assert start!89314)

(declare-fun b!1023674 () Bool)

(declare-fun b_free!20319 () Bool)

(declare-fun b_next!20319 () Bool)

(assert (=> b!1023674 (= b_free!20319 (not b_next!20319))))

(declare-fun tp!71993 () Bool)

(declare-fun b_and!32567 () Bool)

(assert (=> b!1023674 (= tp!71993 b_and!32567)))

(declare-fun b!1023673 () Bool)

(declare-fun e!576919 () Bool)

(declare-fun tp_is_empty!24039 () Bool)

(assert (=> b!1023673 (= e!576919 tp_is_empty!24039)))

(declare-fun res!685622 () Bool)

(declare-fun e!576917 () Bool)

(assert (=> start!89314 (=> (not res!685622) (not e!576917))))

(declare-datatypes ((V!36925 0))(
  ( (V!36926 (val!12070 Int)) )
))
(declare-datatypes ((ValueCell!11316 0))(
  ( (ValueCellFull!11316 (v!14640 V!36925)) (EmptyCell!11316) )
))
(declare-datatypes ((array!64106 0))(
  ( (array!64107 (arr!30861 (Array (_ BitVec 32) (_ BitVec 64))) (size!31373 (_ BitVec 32))) )
))
(declare-datatypes ((array!64108 0))(
  ( (array!64109 (arr!30862 (Array (_ BitVec 32) ValueCell!11316)) (size!31374 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5226 0))(
  ( (LongMapFixedSize!5227 (defaultEntry!5965 Int) (mask!29589 (_ BitVec 32)) (extraKeys!5697 (_ BitVec 32)) (zeroValue!5801 V!36925) (minValue!5801 V!36925) (_size!2668 (_ BitVec 32)) (_keys!11107 array!64106) (_values!5988 array!64108) (_vacant!2668 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5226)

(declare-fun valid!1948 (LongMapFixedSize!5226) Bool)

(assert (=> start!89314 (= res!685622 (valid!1948 thiss!1427))))

(assert (=> start!89314 e!576917))

(declare-fun e!576916 () Bool)

(assert (=> start!89314 e!576916))

(assert (=> start!89314 true))

(declare-fun e!576914 () Bool)

(declare-fun array_inv!23781 (array!64106) Bool)

(declare-fun array_inv!23782 (array!64108) Bool)

(assert (=> b!1023674 (= e!576916 (and tp!71993 tp_is_empty!24039 (array_inv!23781 (_keys!11107 thiss!1427)) (array_inv!23782 (_values!5988 thiss!1427)) e!576914))))

(declare-fun mapIsEmpty!37476 () Bool)

(declare-fun mapRes!37476 () Bool)

(assert (=> mapIsEmpty!37476 mapRes!37476))

(declare-fun b!1023675 () Bool)

(assert (=> b!1023675 (= e!576917 (not true))))

(declare-fun lt!450451 () Bool)

(declare-fun lt!450449 () V!36925)

(assert (=> b!1023675 (= lt!450451 (valid!1948 (LongMapFixedSize!5227 (defaultEntry!5965 thiss!1427) (mask!29589 thiss!1427) (bvand (extraKeys!5697 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5801 thiss!1427) lt!450449 (_size!2668 thiss!1427) (_keys!11107 thiss!1427) (_values!5988 thiss!1427) (_vacant!2668 thiss!1427))))))

(declare-datatypes ((tuple2!15606 0))(
  ( (tuple2!15607 (_1!7813 (_ BitVec 64)) (_2!7813 V!36925)) )
))
(declare-datatypes ((List!21822 0))(
  ( (Nil!21819) (Cons!21818 (h!23016 tuple2!15606) (t!30877 List!21822)) )
))
(declare-datatypes ((ListLongMap!13765 0))(
  ( (ListLongMap!13766 (toList!6898 List!21822)) )
))
(declare-fun -!474 (ListLongMap!13765 (_ BitVec 64)) ListLongMap!13765)

(declare-fun getCurrentListMap!3905 (array!64106 array!64108 (_ BitVec 32) (_ BitVec 32) V!36925 V!36925 (_ BitVec 32) Int) ListLongMap!13765)

(assert (=> b!1023675 (= (-!474 (getCurrentListMap!3905 (_keys!11107 thiss!1427) (_values!5988 thiss!1427) (mask!29589 thiss!1427) (extraKeys!5697 thiss!1427) (zeroValue!5801 thiss!1427) (minValue!5801 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5965 thiss!1427)) #b1000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3905 (_keys!11107 thiss!1427) (_values!5988 thiss!1427) (mask!29589 thiss!1427) (bvand (extraKeys!5697 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5801 thiss!1427) lt!450449 #b00000000000000000000000000000000 (defaultEntry!5965 thiss!1427)))))

(declare-datatypes ((Unit!33300 0))(
  ( (Unit!33301) )
))
(declare-fun lt!450450 () Unit!33300)

(declare-fun lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!6 (array!64106 array!64108 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36925 V!36925 V!36925 Int) Unit!33300)

(assert (=> b!1023675 (= lt!450450 (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!6 (_keys!11107 thiss!1427) (_values!5988 thiss!1427) (mask!29589 thiss!1427) (extraKeys!5697 thiss!1427) (bvand (extraKeys!5697 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5801 thiss!1427) (minValue!5801 thiss!1427) lt!450449 (defaultEntry!5965 thiss!1427)))))

(declare-fun dynLambda!1949 (Int (_ BitVec 64)) V!36925)

(assert (=> b!1023675 (= lt!450449 (dynLambda!1949 (defaultEntry!5965 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1023676 () Bool)

(declare-fun e!576918 () Bool)

(assert (=> b!1023676 (= e!576914 (and e!576918 mapRes!37476))))

(declare-fun condMapEmpty!37476 () Bool)

(declare-fun mapDefault!37476 () ValueCell!11316)

(assert (=> b!1023676 (= condMapEmpty!37476 (= (arr!30862 (_values!5988 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11316)) mapDefault!37476)))))

(declare-fun mapNonEmpty!37476 () Bool)

(declare-fun tp!71992 () Bool)

(assert (=> mapNonEmpty!37476 (= mapRes!37476 (and tp!71992 e!576919))))

(declare-fun mapKey!37476 () (_ BitVec 32))

(declare-fun mapRest!37476 () (Array (_ BitVec 32) ValueCell!11316))

(declare-fun mapValue!37476 () ValueCell!11316)

(assert (=> mapNonEmpty!37476 (= (arr!30862 (_values!5988 thiss!1427)) (store mapRest!37476 mapKey!37476 mapValue!37476))))

(declare-fun b!1023677 () Bool)

(assert (=> b!1023677 (= e!576918 tp_is_empty!24039)))

(declare-fun b!1023678 () Bool)

(declare-fun res!685623 () Bool)

(assert (=> b!1023678 (=> (not res!685623) (not e!576917))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023678 (= res!685623 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!89314 res!685622) b!1023678))

(assert (= (and b!1023678 res!685623) b!1023675))

(assert (= (and b!1023676 condMapEmpty!37476) mapIsEmpty!37476))

(assert (= (and b!1023676 (not condMapEmpty!37476)) mapNonEmpty!37476))

(get-info :version)

(assert (= (and mapNonEmpty!37476 ((_ is ValueCellFull!11316) mapValue!37476)) b!1023673))

(assert (= (and b!1023676 ((_ is ValueCellFull!11316) mapDefault!37476)) b!1023677))

(assert (= b!1023674 b!1023676))

(assert (= start!89314 b!1023674))

(declare-fun b_lambda!15733 () Bool)

(assert (=> (not b_lambda!15733) (not b!1023675)))

(declare-fun t!30876 () Bool)

(declare-fun tb!6879 () Bool)

(assert (=> (and b!1023674 (= (defaultEntry!5965 thiss!1427) (defaultEntry!5965 thiss!1427)) t!30876) tb!6879))

(declare-fun result!14059 () Bool)

(assert (=> tb!6879 (= result!14059 tp_is_empty!24039)))

(assert (=> b!1023675 t!30876))

(declare-fun b_and!32569 () Bool)

(assert (= b_and!32567 (and (=> t!30876 result!14059) b_and!32569)))

(declare-fun m!942397 () Bool)

(assert (=> start!89314 m!942397))

(declare-fun m!942399 () Bool)

(assert (=> b!1023674 m!942399))

(declare-fun m!942401 () Bool)

(assert (=> b!1023674 m!942401))

(declare-fun m!942403 () Bool)

(assert (=> b!1023675 m!942403))

(declare-fun m!942405 () Bool)

(assert (=> b!1023675 m!942405))

(declare-fun m!942407 () Bool)

(assert (=> b!1023675 m!942407))

(declare-fun m!942409 () Bool)

(assert (=> b!1023675 m!942409))

(declare-fun m!942411 () Bool)

(assert (=> b!1023675 m!942411))

(assert (=> b!1023675 m!942407))

(declare-fun m!942413 () Bool)

(assert (=> b!1023675 m!942413))

(declare-fun m!942415 () Bool)

(assert (=> mapNonEmpty!37476 m!942415))

(check-sat (not b!1023675) (not start!89314) (not b_next!20319) (not b!1023674) (not b_lambda!15733) (not mapNonEmpty!37476) b_and!32569 tp_is_empty!24039)
(check-sat b_and!32569 (not b_next!20319))
