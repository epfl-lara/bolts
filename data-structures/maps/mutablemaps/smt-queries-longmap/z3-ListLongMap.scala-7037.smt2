; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89272 () Bool)

(assert start!89272)

(declare-fun b!1023140 () Bool)

(declare-fun b_free!20277 () Bool)

(declare-fun b_next!20277 () Bool)

(assert (=> b!1023140 (= b_free!20277 (not b_next!20277))))

(declare-fun tp!71867 () Bool)

(declare-fun b_and!32517 () Bool)

(assert (=> b!1023140 (= tp!71867 b_and!32517)))

(declare-fun tp_is_empty!23997 () Bool)

(declare-fun e!576540 () Bool)

(declare-datatypes ((V!36869 0))(
  ( (V!36870 (val!12049 Int)) )
))
(declare-datatypes ((ValueCell!11295 0))(
  ( (ValueCellFull!11295 (v!14619 V!36869)) (EmptyCell!11295) )
))
(declare-datatypes ((array!64022 0))(
  ( (array!64023 (arr!30819 (Array (_ BitVec 32) (_ BitVec 64))) (size!31331 (_ BitVec 32))) )
))
(declare-datatypes ((array!64024 0))(
  ( (array!64025 (arr!30820 (Array (_ BitVec 32) ValueCell!11295)) (size!31332 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5184 0))(
  ( (LongMapFixedSize!5185 (defaultEntry!5944 Int) (mask!29554 (_ BitVec 32)) (extraKeys!5676 (_ BitVec 32)) (zeroValue!5780 V!36869) (minValue!5780 V!36869) (_size!2647 (_ BitVec 32)) (_keys!11086 array!64022) (_values!5967 array!64024) (_vacant!2647 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5184)

(declare-fun e!576541 () Bool)

(declare-fun array_inv!23755 (array!64022) Bool)

(declare-fun array_inv!23756 (array!64024) Bool)

(assert (=> b!1023140 (= e!576540 (and tp!71867 tp_is_empty!23997 (array_inv!23755 (_keys!11086 thiss!1427)) (array_inv!23756 (_values!5967 thiss!1427)) e!576541))))

(declare-fun b!1023141 () Bool)

(declare-fun res!685350 () Bool)

(declare-fun e!576538 () Bool)

(assert (=> b!1023141 (=> (not res!685350) (not e!576538))))

(assert (=> b!1023141 (= res!685350 (and (= (size!31332 (_values!5967 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29554 thiss!1427))) (= (size!31331 (_keys!11086 thiss!1427)) (size!31332 (_values!5967 thiss!1427))) (bvsge (mask!29554 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5676 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5676 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5676 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5676 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5676 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5676 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5676 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1023142 () Bool)

(declare-fun res!685353 () Bool)

(assert (=> b!1023142 (=> (not res!685353) (not e!576538))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023142 (= res!685353 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023143 () Bool)

(declare-fun e!576537 () Bool)

(declare-fun mapRes!37413 () Bool)

(assert (=> b!1023143 (= e!576541 (and e!576537 mapRes!37413))))

(declare-fun condMapEmpty!37413 () Bool)

(declare-fun mapDefault!37413 () ValueCell!11295)

(assert (=> b!1023143 (= condMapEmpty!37413 (= (arr!30820 (_values!5967 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11295)) mapDefault!37413)))))

(declare-fun b!1023144 () Bool)

(declare-fun res!685349 () Bool)

(assert (=> b!1023144 (=> (not res!685349) (not e!576538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023144 (= res!685349 (validMask!0 (mask!29554 thiss!1427)))))

(declare-fun res!685352 () Bool)

(assert (=> start!89272 (=> (not res!685352) (not e!576538))))

(declare-fun valid!1934 (LongMapFixedSize!5184) Bool)

(assert (=> start!89272 (= res!685352 (valid!1934 thiss!1427))))

(assert (=> start!89272 e!576538))

(assert (=> start!89272 e!576540))

(assert (=> start!89272 true))

(declare-fun mapIsEmpty!37413 () Bool)

(assert (=> mapIsEmpty!37413 mapRes!37413))

(declare-fun b!1023145 () Bool)

(declare-fun res!685351 () Bool)

(assert (=> b!1023145 (=> (not res!685351) (not e!576538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64022 (_ BitVec 32)) Bool)

(assert (=> b!1023145 (= res!685351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11086 thiss!1427) (mask!29554 thiss!1427)))))

(declare-fun mapNonEmpty!37413 () Bool)

(declare-fun tp!71866 () Bool)

(declare-fun e!576539 () Bool)

(assert (=> mapNonEmpty!37413 (= mapRes!37413 (and tp!71866 e!576539))))

(declare-fun mapValue!37413 () ValueCell!11295)

(declare-fun mapRest!37413 () (Array (_ BitVec 32) ValueCell!11295))

(declare-fun mapKey!37413 () (_ BitVec 32))

(assert (=> mapNonEmpty!37413 (= (arr!30820 (_values!5967 thiss!1427)) (store mapRest!37413 mapKey!37413 mapValue!37413))))

(declare-fun b!1023146 () Bool)

(assert (=> b!1023146 (= e!576538 false)))

(declare-fun lt!450358 () Bool)

(declare-datatypes ((List!21811 0))(
  ( (Nil!21808) (Cons!21807 (h!23005 (_ BitVec 64)) (t!30856 List!21811)) )
))
(declare-fun arrayNoDuplicates!0 (array!64022 (_ BitVec 32) List!21811) Bool)

(assert (=> b!1023146 (= lt!450358 (arrayNoDuplicates!0 (_keys!11086 thiss!1427) #b00000000000000000000000000000000 Nil!21808))))

(declare-fun b!1023147 () Bool)

(assert (=> b!1023147 (= e!576539 tp_is_empty!23997)))

(declare-fun b!1023148 () Bool)

(assert (=> b!1023148 (= e!576537 tp_is_empty!23997)))

(assert (= (and start!89272 res!685352) b!1023142))

(assert (= (and b!1023142 res!685353) b!1023144))

(assert (= (and b!1023144 res!685349) b!1023141))

(assert (= (and b!1023141 res!685350) b!1023145))

(assert (= (and b!1023145 res!685351) b!1023146))

(assert (= (and b!1023143 condMapEmpty!37413) mapIsEmpty!37413))

(assert (= (and b!1023143 (not condMapEmpty!37413)) mapNonEmpty!37413))

(get-info :version)

(assert (= (and mapNonEmpty!37413 ((_ is ValueCellFull!11295) mapValue!37413)) b!1023147))

(assert (= (and b!1023143 ((_ is ValueCellFull!11295) mapDefault!37413)) b!1023148))

(assert (= b!1023140 b!1023143))

(assert (= start!89272 b!1023140))

(declare-fun m!942079 () Bool)

(assert (=> b!1023144 m!942079))

(declare-fun m!942081 () Bool)

(assert (=> b!1023145 m!942081))

(declare-fun m!942083 () Bool)

(assert (=> mapNonEmpty!37413 m!942083))

(declare-fun m!942085 () Bool)

(assert (=> b!1023140 m!942085))

(declare-fun m!942087 () Bool)

(assert (=> b!1023140 m!942087))

(declare-fun m!942089 () Bool)

(assert (=> b!1023146 m!942089))

(declare-fun m!942091 () Bool)

(assert (=> start!89272 m!942091))

(check-sat (not start!89272) (not b!1023140) (not mapNonEmpty!37413) (not b!1023146) (not b!1023145) (not b!1023144) tp_is_empty!23997 b_and!32517 (not b_next!20277))
(check-sat b_and!32517 (not b_next!20277))
