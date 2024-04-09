; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89212 () Bool)

(assert start!89212)

(declare-fun b!1022403 () Bool)

(declare-fun b_free!20217 () Bool)

(declare-fun b_next!20217 () Bool)

(assert (=> b!1022403 (= b_free!20217 (not b_next!20217))))

(declare-fun tp!71687 () Bool)

(declare-fun b_and!32435 () Bool)

(assert (=> b!1022403 (= tp!71687 b_and!32435)))

(declare-fun b!1022401 () Bool)

(declare-fun res!684993 () Bool)

(declare-fun e!575998 () Bool)

(assert (=> b!1022401 (=> (not res!684993) (not e!575998))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022401 (= res!684993 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1022402 () Bool)

(declare-fun e!576001 () Bool)

(declare-fun tp_is_empty!23937 () Bool)

(assert (=> b!1022402 (= e!576001 tp_is_empty!23937)))

(declare-fun mapNonEmpty!37323 () Bool)

(declare-fun mapRes!37323 () Bool)

(declare-fun tp!71686 () Bool)

(assert (=> mapNonEmpty!37323 (= mapRes!37323 (and tp!71686 e!576001))))

(declare-datatypes ((V!36789 0))(
  ( (V!36790 (val!12019 Int)) )
))
(declare-datatypes ((ValueCell!11265 0))(
  ( (ValueCellFull!11265 (v!14589 V!36789)) (EmptyCell!11265) )
))
(declare-fun mapValue!37323 () ValueCell!11265)

(declare-fun mapKey!37323 () (_ BitVec 32))

(declare-datatypes ((array!63902 0))(
  ( (array!63903 (arr!30759 (Array (_ BitVec 32) (_ BitVec 64))) (size!31271 (_ BitVec 32))) )
))
(declare-datatypes ((array!63904 0))(
  ( (array!63905 (arr!30760 (Array (_ BitVec 32) ValueCell!11265)) (size!31272 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5124 0))(
  ( (LongMapFixedSize!5125 (defaultEntry!5914 Int) (mask!29504 (_ BitVec 32)) (extraKeys!5646 (_ BitVec 32)) (zeroValue!5750 V!36789) (minValue!5750 V!36789) (_size!2617 (_ BitVec 32)) (_keys!11056 array!63902) (_values!5937 array!63904) (_vacant!2617 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5124)

(declare-fun mapRest!37323 () (Array (_ BitVec 32) ValueCell!11265))

(assert (=> mapNonEmpty!37323 (= (arr!30760 (_values!5937 thiss!1427)) (store mapRest!37323 mapKey!37323 mapValue!37323))))

(declare-fun res!684992 () Bool)

(assert (=> start!89212 (=> (not res!684992) (not e!575998))))

(declare-fun valid!1916 (LongMapFixedSize!5124) Bool)

(assert (=> start!89212 (= res!684992 (valid!1916 thiss!1427))))

(assert (=> start!89212 e!575998))

(declare-fun e!576000 () Bool)

(assert (=> start!89212 e!576000))

(assert (=> start!89212 true))

(declare-fun e!575997 () Bool)

(declare-fun array_inv!23709 (array!63902) Bool)

(declare-fun array_inv!23710 (array!63904) Bool)

(assert (=> b!1022403 (= e!576000 (and tp!71687 tp_is_empty!23937 (array_inv!23709 (_keys!11056 thiss!1427)) (array_inv!23710 (_values!5937 thiss!1427)) e!575997))))

(declare-fun b!1022404 () Bool)

(declare-fun e!575999 () Bool)

(assert (=> b!1022404 (= e!575999 tp_is_empty!23937)))

(declare-fun mapIsEmpty!37323 () Bool)

(assert (=> mapIsEmpty!37323 mapRes!37323))

(declare-fun b!1022405 () Bool)

(assert (=> b!1022405 (= e!575998 (not true))))

(declare-fun lt!450208 () Bool)

(declare-fun lt!450206 () V!36789)

(assert (=> b!1022405 (= lt!450208 (valid!1916 (LongMapFixedSize!5125 (defaultEntry!5914 thiss!1427) (mask!29504 thiss!1427) (bvand (extraKeys!5646 thiss!1427) #b00000000000000000000000000000010) lt!450206 (minValue!5750 thiss!1427) (_size!2617 thiss!1427) (_keys!11056 thiss!1427) (_values!5937 thiss!1427) (_vacant!2617 thiss!1427))))))

(declare-datatypes ((tuple2!15582 0))(
  ( (tuple2!15583 (_1!7801 (_ BitVec 64)) (_2!7801 V!36789)) )
))
(declare-datatypes ((List!21791 0))(
  ( (Nil!21788) (Cons!21787 (h!22985 tuple2!15582) (t!30816 List!21791)) )
))
(declare-datatypes ((ListLongMap!13741 0))(
  ( (ListLongMap!13742 (toList!6886 List!21791)) )
))
(declare-fun -!462 (ListLongMap!13741 (_ BitVec 64)) ListLongMap!13741)

(declare-fun getCurrentListMap!3893 (array!63902 array!63904 (_ BitVec 32) (_ BitVec 32) V!36789 V!36789 (_ BitVec 32) Int) ListLongMap!13741)

(assert (=> b!1022405 (= (-!462 (getCurrentListMap!3893 (_keys!11056 thiss!1427) (_values!5937 thiss!1427) (mask!29504 thiss!1427) (extraKeys!5646 thiss!1427) (zeroValue!5750 thiss!1427) (minValue!5750 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5914 thiss!1427)) #b0000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3893 (_keys!11056 thiss!1427) (_values!5937 thiss!1427) (mask!29504 thiss!1427) (bvand (extraKeys!5646 thiss!1427) #b00000000000000000000000000000010) lt!450206 (minValue!5750 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5914 thiss!1427)))))

(declare-datatypes ((Unit!33276 0))(
  ( (Unit!33277) )
))
(declare-fun lt!450207 () Unit!33276)

(declare-fun lemmaRemoveZeroKeyThenRemoveKeyFromListMap!2 (array!63902 array!63904 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36789 V!36789 V!36789 Int) Unit!33276)

(assert (=> b!1022405 (= lt!450207 (lemmaRemoveZeroKeyThenRemoveKeyFromListMap!2 (_keys!11056 thiss!1427) (_values!5937 thiss!1427) (mask!29504 thiss!1427) (extraKeys!5646 thiss!1427) (bvand (extraKeys!5646 thiss!1427) #b00000000000000000000000000000010) (zeroValue!5750 thiss!1427) lt!450206 (minValue!5750 thiss!1427) (defaultEntry!5914 thiss!1427)))))

(declare-fun dynLambda!1937 (Int (_ BitVec 64)) V!36789)

(assert (=> b!1022405 (= lt!450206 (dynLambda!1937 (defaultEntry!5914 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1022406 () Bool)

(assert (=> b!1022406 (= e!575997 (and e!575999 mapRes!37323))))

(declare-fun condMapEmpty!37323 () Bool)

(declare-fun mapDefault!37323 () ValueCell!11265)

(assert (=> b!1022406 (= condMapEmpty!37323 (= (arr!30760 (_values!5937 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11265)) mapDefault!37323)))))

(assert (= (and start!89212 res!684992) b!1022401))

(assert (= (and b!1022401 res!684993) b!1022405))

(assert (= (and b!1022406 condMapEmpty!37323) mapIsEmpty!37323))

(assert (= (and b!1022406 (not condMapEmpty!37323)) mapNonEmpty!37323))

(get-info :version)

(assert (= (and mapNonEmpty!37323 ((_ is ValueCellFull!11265) mapValue!37323)) b!1022402))

(assert (= (and b!1022406 ((_ is ValueCellFull!11265) mapDefault!37323)) b!1022404))

(assert (= b!1022403 b!1022406))

(assert (= start!89212 b!1022403))

(declare-fun b_lambda!15703 () Bool)

(assert (=> (not b_lambda!15703) (not b!1022405)))

(declare-fun t!30815 () Bool)

(declare-fun tb!6849 () Bool)

(assert (=> (and b!1022403 (= (defaultEntry!5914 thiss!1427) (defaultEntry!5914 thiss!1427)) t!30815) tb!6849))

(declare-fun result!13999 () Bool)

(assert (=> tb!6849 (= result!13999 tp_is_empty!23937)))

(assert (=> b!1022405 t!30815))

(declare-fun b_and!32437 () Bool)

(assert (= b_and!32435 (and (=> t!30815 result!13999) b_and!32437)))

(declare-fun m!941593 () Bool)

(assert (=> mapNonEmpty!37323 m!941593))

(declare-fun m!941595 () Bool)

(assert (=> start!89212 m!941595))

(declare-fun m!941597 () Bool)

(assert (=> b!1022403 m!941597))

(declare-fun m!941599 () Bool)

(assert (=> b!1022403 m!941599))

(declare-fun m!941601 () Bool)

(assert (=> b!1022405 m!941601))

(declare-fun m!941603 () Bool)

(assert (=> b!1022405 m!941603))

(declare-fun m!941605 () Bool)

(assert (=> b!1022405 m!941605))

(declare-fun m!941607 () Bool)

(assert (=> b!1022405 m!941607))

(declare-fun m!941609 () Bool)

(assert (=> b!1022405 m!941609))

(declare-fun m!941611 () Bool)

(assert (=> b!1022405 m!941611))

(assert (=> b!1022405 m!941609))

(check-sat (not b!1022405) (not b_next!20217) (not b_lambda!15703) b_and!32437 (not mapNonEmpty!37323) tp_is_empty!23937 (not b!1022403) (not start!89212))
(check-sat b_and!32437 (not b_next!20217))
