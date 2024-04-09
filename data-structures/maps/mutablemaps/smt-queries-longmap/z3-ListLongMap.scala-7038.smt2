; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89278 () Bool)

(assert start!89278)

(declare-fun b!1023226 () Bool)

(declare-fun b_free!20283 () Bool)

(declare-fun b_next!20283 () Bool)

(assert (=> b!1023226 (= b_free!20283 (not b_next!20283))))

(declare-fun tp!71885 () Bool)

(declare-fun b_and!32523 () Bool)

(assert (=> b!1023226 (= tp!71885 b_and!32523)))

(declare-fun b!1023221 () Bool)

(declare-fun res!685394 () Bool)

(declare-fun e!576593 () Bool)

(assert (=> b!1023221 (=> (not res!685394) (not e!576593))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023221 (= res!685394 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023222 () Bool)

(declare-fun res!685398 () Bool)

(assert (=> b!1023222 (=> (not res!685398) (not e!576593))))

(declare-datatypes ((V!36877 0))(
  ( (V!36878 (val!12052 Int)) )
))
(declare-datatypes ((ValueCell!11298 0))(
  ( (ValueCellFull!11298 (v!14622 V!36877)) (EmptyCell!11298) )
))
(declare-datatypes ((array!64034 0))(
  ( (array!64035 (arr!30825 (Array (_ BitVec 32) (_ BitVec 64))) (size!31337 (_ BitVec 32))) )
))
(declare-datatypes ((array!64036 0))(
  ( (array!64037 (arr!30826 (Array (_ BitVec 32) ValueCell!11298)) (size!31338 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5190 0))(
  ( (LongMapFixedSize!5191 (defaultEntry!5947 Int) (mask!29559 (_ BitVec 32)) (extraKeys!5679 (_ BitVec 32)) (zeroValue!5783 V!36877) (minValue!5783 V!36877) (_size!2650 (_ BitVec 32)) (_keys!11089 array!64034) (_values!5970 array!64036) (_vacant!2650 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5190)

(assert (=> b!1023222 (= res!685398 (and (= (size!31338 (_values!5970 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29559 thiss!1427))) (= (size!31337 (_keys!11089 thiss!1427)) (size!31338 (_values!5970 thiss!1427))) (bvsge (mask!29559 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5679 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5679 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5679 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5679 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5679 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5679 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5679 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1023223 () Bool)

(declare-fun res!685396 () Bool)

(assert (=> b!1023223 (=> (not res!685396) (not e!576593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64034 (_ BitVec 32)) Bool)

(assert (=> b!1023223 (= res!685396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11089 thiss!1427) (mask!29559 thiss!1427)))))

(declare-fun b!1023224 () Bool)

(declare-fun e!576594 () Bool)

(declare-fun e!576590 () Bool)

(declare-fun mapRes!37422 () Bool)

(assert (=> b!1023224 (= e!576594 (and e!576590 mapRes!37422))))

(declare-fun condMapEmpty!37422 () Bool)

(declare-fun mapDefault!37422 () ValueCell!11298)

(assert (=> b!1023224 (= condMapEmpty!37422 (= (arr!30826 (_values!5970 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11298)) mapDefault!37422)))))

(declare-fun res!685395 () Bool)

(assert (=> start!89278 (=> (not res!685395) (not e!576593))))

(declare-fun valid!1936 (LongMapFixedSize!5190) Bool)

(assert (=> start!89278 (= res!685395 (valid!1936 thiss!1427))))

(assert (=> start!89278 e!576593))

(declare-fun e!576592 () Bool)

(assert (=> start!89278 e!576592))

(assert (=> start!89278 true))

(declare-fun mapIsEmpty!37422 () Bool)

(assert (=> mapIsEmpty!37422 mapRes!37422))

(declare-fun b!1023225 () Bool)

(declare-fun e!576595 () Bool)

(declare-fun tp_is_empty!24003 () Bool)

(assert (=> b!1023225 (= e!576595 tp_is_empty!24003)))

(declare-fun array_inv!23757 (array!64034) Bool)

(declare-fun array_inv!23758 (array!64036) Bool)

(assert (=> b!1023226 (= e!576592 (and tp!71885 tp_is_empty!24003 (array_inv!23757 (_keys!11089 thiss!1427)) (array_inv!23758 (_values!5970 thiss!1427)) e!576594))))

(declare-fun b!1023227 () Bool)

(declare-fun res!685397 () Bool)

(assert (=> b!1023227 (=> (not res!685397) (not e!576593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1023227 (= res!685397 (validMask!0 (mask!29559 thiss!1427)))))

(declare-fun b!1023228 () Bool)

(assert (=> b!1023228 (= e!576590 tp_is_empty!24003)))

(declare-fun b!1023229 () Bool)

(assert (=> b!1023229 (= e!576593 false)))

(declare-fun lt!450367 () Bool)

(declare-datatypes ((List!21813 0))(
  ( (Nil!21810) (Cons!21809 (h!23007 (_ BitVec 64)) (t!30858 List!21813)) )
))
(declare-fun arrayNoDuplicates!0 (array!64034 (_ BitVec 32) List!21813) Bool)

(assert (=> b!1023229 (= lt!450367 (arrayNoDuplicates!0 (_keys!11089 thiss!1427) #b00000000000000000000000000000000 Nil!21810))))

(declare-fun mapNonEmpty!37422 () Bool)

(declare-fun tp!71884 () Bool)

(assert (=> mapNonEmpty!37422 (= mapRes!37422 (and tp!71884 e!576595))))

(declare-fun mapRest!37422 () (Array (_ BitVec 32) ValueCell!11298))

(declare-fun mapValue!37422 () ValueCell!11298)

(declare-fun mapKey!37422 () (_ BitVec 32))

(assert (=> mapNonEmpty!37422 (= (arr!30826 (_values!5970 thiss!1427)) (store mapRest!37422 mapKey!37422 mapValue!37422))))

(assert (= (and start!89278 res!685395) b!1023221))

(assert (= (and b!1023221 res!685394) b!1023227))

(assert (= (and b!1023227 res!685397) b!1023222))

(assert (= (and b!1023222 res!685398) b!1023223))

(assert (= (and b!1023223 res!685396) b!1023229))

(assert (= (and b!1023224 condMapEmpty!37422) mapIsEmpty!37422))

(assert (= (and b!1023224 (not condMapEmpty!37422)) mapNonEmpty!37422))

(get-info :version)

(assert (= (and mapNonEmpty!37422 ((_ is ValueCellFull!11298) mapValue!37422)) b!1023225))

(assert (= (and b!1023224 ((_ is ValueCellFull!11298) mapDefault!37422)) b!1023228))

(assert (= b!1023226 b!1023224))

(assert (= start!89278 b!1023226))

(declare-fun m!942121 () Bool)

(assert (=> mapNonEmpty!37422 m!942121))

(declare-fun m!942123 () Bool)

(assert (=> b!1023223 m!942123))

(declare-fun m!942125 () Bool)

(assert (=> start!89278 m!942125))

(declare-fun m!942127 () Bool)

(assert (=> b!1023226 m!942127))

(declare-fun m!942129 () Bool)

(assert (=> b!1023226 m!942129))

(declare-fun m!942131 () Bool)

(assert (=> b!1023227 m!942131))

(declare-fun m!942133 () Bool)

(assert (=> b!1023229 m!942133))

(check-sat (not start!89278) (not mapNonEmpty!37422) (not b!1023229) (not b!1023223) tp_is_empty!24003 b_and!32523 (not b_next!20283) (not b!1023226) (not b!1023227))
(check-sat b_and!32523 (not b_next!20283))
