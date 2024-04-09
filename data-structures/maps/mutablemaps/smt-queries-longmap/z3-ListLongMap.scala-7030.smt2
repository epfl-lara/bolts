; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89230 () Bool)

(assert start!89230)

(declare-fun b!1022583 () Bool)

(declare-fun b_free!20235 () Bool)

(declare-fun b_next!20235 () Bool)

(assert (=> b!1022583 (= b_free!20235 (not b_next!20235))))

(declare-fun tp!71741 () Bool)

(declare-fun b_and!32471 () Bool)

(assert (=> b!1022583 (= tp!71741 b_and!32471)))

(declare-fun mapNonEmpty!37350 () Bool)

(declare-fun mapRes!37350 () Bool)

(declare-fun tp!71740 () Bool)

(declare-fun e!576162 () Bool)

(assert (=> mapNonEmpty!37350 (= mapRes!37350 (and tp!71740 e!576162))))

(declare-datatypes ((V!36813 0))(
  ( (V!36814 (val!12028 Int)) )
))
(declare-datatypes ((ValueCell!11274 0))(
  ( (ValueCellFull!11274 (v!14598 V!36813)) (EmptyCell!11274) )
))
(declare-fun mapRest!37350 () (Array (_ BitVec 32) ValueCell!11274))

(declare-datatypes ((array!63938 0))(
  ( (array!63939 (arr!30777 (Array (_ BitVec 32) (_ BitVec 64))) (size!31289 (_ BitVec 32))) )
))
(declare-datatypes ((array!63940 0))(
  ( (array!63941 (arr!30778 (Array (_ BitVec 32) ValueCell!11274)) (size!31290 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5142 0))(
  ( (LongMapFixedSize!5143 (defaultEntry!5923 Int) (mask!29519 (_ BitVec 32)) (extraKeys!5655 (_ BitVec 32)) (zeroValue!5759 V!36813) (minValue!5759 V!36813) (_size!2626 (_ BitVec 32)) (_keys!11065 array!63938) (_values!5946 array!63940) (_vacant!2626 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5142)

(declare-fun mapKey!37350 () (_ BitVec 32))

(declare-fun mapValue!37350 () ValueCell!11274)

(assert (=> mapNonEmpty!37350 (= (arr!30778 (_values!5946 thiss!1427)) (store mapRest!37350 mapKey!37350 mapValue!37350))))

(declare-fun b!1022581 () Bool)

(declare-fun e!576160 () Bool)

(declare-fun tp_is_empty!23955 () Bool)

(assert (=> b!1022581 (= e!576160 tp_is_empty!23955)))

(declare-fun b!1022582 () Bool)

(declare-fun e!576161 () Bool)

(assert (=> b!1022582 (= e!576161 (and e!576160 mapRes!37350))))

(declare-fun condMapEmpty!37350 () Bool)

(declare-fun mapDefault!37350 () ValueCell!11274)

(assert (=> b!1022582 (= condMapEmpty!37350 (= (arr!30778 (_values!5946 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11274)) mapDefault!37350)))))

(declare-fun e!576158 () Bool)

(declare-fun array_inv!23723 (array!63938) Bool)

(declare-fun array_inv!23724 (array!63940) Bool)

(assert (=> b!1022583 (= e!576158 (and tp!71741 tp_is_empty!23955 (array_inv!23723 (_keys!11065 thiss!1427)) (array_inv!23724 (_values!5946 thiss!1427)) e!576161))))

(declare-fun b!1022584 () Bool)

(declare-fun e!576159 () Bool)

(assert (=> b!1022584 (= e!576159 (not true))))

(declare-fun lt!450288 () Bool)

(declare-fun lt!450287 () V!36813)

(declare-fun valid!1922 (LongMapFixedSize!5142) Bool)

(assert (=> b!1022584 (= lt!450288 (valid!1922 (LongMapFixedSize!5143 (defaultEntry!5923 thiss!1427) (mask!29519 thiss!1427) (bvand (extraKeys!5655 thiss!1427) #b00000000000000000000000000000010) lt!450287 (minValue!5759 thiss!1427) (_size!2626 thiss!1427) (_keys!11065 thiss!1427) (_values!5946 thiss!1427) (_vacant!2626 thiss!1427))))))

(declare-datatypes ((tuple2!15594 0))(
  ( (tuple2!15595 (_1!7807 (_ BitVec 64)) (_2!7807 V!36813)) )
))
(declare-datatypes ((List!21797 0))(
  ( (Nil!21794) (Cons!21793 (h!22991 tuple2!15594) (t!30840 List!21797)) )
))
(declare-datatypes ((ListLongMap!13753 0))(
  ( (ListLongMap!13754 (toList!6892 List!21797)) )
))
(declare-fun -!468 (ListLongMap!13753 (_ BitVec 64)) ListLongMap!13753)

(declare-fun getCurrentListMap!3899 (array!63938 array!63940 (_ BitVec 32) (_ BitVec 32) V!36813 V!36813 (_ BitVec 32) Int) ListLongMap!13753)

(assert (=> b!1022584 (= (-!468 (getCurrentListMap!3899 (_keys!11065 thiss!1427) (_values!5946 thiss!1427) (mask!29519 thiss!1427) (extraKeys!5655 thiss!1427) (zeroValue!5759 thiss!1427) (minValue!5759 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5923 thiss!1427)) #b0000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3899 (_keys!11065 thiss!1427) (_values!5946 thiss!1427) (mask!29519 thiss!1427) (bvand (extraKeys!5655 thiss!1427) #b00000000000000000000000000000010) lt!450287 (minValue!5759 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5923 thiss!1427)))))

(declare-datatypes ((Unit!33288 0))(
  ( (Unit!33289) )
))
(declare-fun lt!450289 () Unit!33288)

(declare-fun lemmaRemoveZeroKeyThenRemoveKeyFromListMap!8 (array!63938 array!63940 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36813 V!36813 V!36813 Int) Unit!33288)

(assert (=> b!1022584 (= lt!450289 (lemmaRemoveZeroKeyThenRemoveKeyFromListMap!8 (_keys!11065 thiss!1427) (_values!5946 thiss!1427) (mask!29519 thiss!1427) (extraKeys!5655 thiss!1427) (bvand (extraKeys!5655 thiss!1427) #b00000000000000000000000000000010) (zeroValue!5759 thiss!1427) lt!450287 (minValue!5759 thiss!1427) (defaultEntry!5923 thiss!1427)))))

(declare-fun dynLambda!1943 (Int (_ BitVec 64)) V!36813)

(assert (=> b!1022584 (= lt!450287 (dynLambda!1943 (defaultEntry!5923 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1022585 () Bool)

(declare-fun res!685046 () Bool)

(assert (=> b!1022585 (=> (not res!685046) (not e!576159))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022585 (= res!685046 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!685047 () Bool)

(assert (=> start!89230 (=> (not res!685047) (not e!576159))))

(assert (=> start!89230 (= res!685047 (valid!1922 thiss!1427))))

(assert (=> start!89230 e!576159))

(assert (=> start!89230 e!576158))

(assert (=> start!89230 true))

(declare-fun b!1022586 () Bool)

(assert (=> b!1022586 (= e!576162 tp_is_empty!23955)))

(declare-fun mapIsEmpty!37350 () Bool)

(assert (=> mapIsEmpty!37350 mapRes!37350))

(assert (= (and start!89230 res!685047) b!1022585))

(assert (= (and b!1022585 res!685046) b!1022584))

(assert (= (and b!1022582 condMapEmpty!37350) mapIsEmpty!37350))

(assert (= (and b!1022582 (not condMapEmpty!37350)) mapNonEmpty!37350))

(get-info :version)

(assert (= (and mapNonEmpty!37350 ((_ is ValueCellFull!11274) mapValue!37350)) b!1022586))

(assert (= (and b!1022582 ((_ is ValueCellFull!11274) mapDefault!37350)) b!1022581))

(assert (= b!1022583 b!1022582))

(assert (= start!89230 b!1022583))

(declare-fun b_lambda!15721 () Bool)

(assert (=> (not b_lambda!15721) (not b!1022584)))

(declare-fun t!30839 () Bool)

(declare-fun tb!6867 () Bool)

(assert (=> (and b!1022583 (= (defaultEntry!5923 thiss!1427) (defaultEntry!5923 thiss!1427)) t!30839) tb!6867))

(declare-fun result!14035 () Bool)

(assert (=> tb!6867 (= result!14035 tp_is_empty!23955)))

(assert (=> b!1022584 t!30839))

(declare-fun b_and!32473 () Bool)

(assert (= b_and!32471 (and (=> t!30839 result!14035) b_and!32473)))

(declare-fun m!941773 () Bool)

(assert (=> mapNonEmpty!37350 m!941773))

(declare-fun m!941775 () Bool)

(assert (=> b!1022583 m!941775))

(declare-fun m!941777 () Bool)

(assert (=> b!1022583 m!941777))

(declare-fun m!941779 () Bool)

(assert (=> b!1022584 m!941779))

(declare-fun m!941781 () Bool)

(assert (=> b!1022584 m!941781))

(declare-fun m!941783 () Bool)

(assert (=> b!1022584 m!941783))

(declare-fun m!941785 () Bool)

(assert (=> b!1022584 m!941785))

(declare-fun m!941787 () Bool)

(assert (=> b!1022584 m!941787))

(declare-fun m!941789 () Bool)

(assert (=> b!1022584 m!941789))

(assert (=> b!1022584 m!941787))

(declare-fun m!941791 () Bool)

(assert (=> start!89230 m!941791))

(check-sat (not b_lambda!15721) tp_is_empty!23955 (not start!89230) b_and!32473 (not b!1022583) (not mapNonEmpty!37350) (not b_next!20235) (not b!1022584))
(check-sat b_and!32473 (not b_next!20235))
