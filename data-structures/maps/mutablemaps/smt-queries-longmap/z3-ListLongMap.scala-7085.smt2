; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89602 () Bool)

(assert start!89602)

(declare-fun b!1027375 () Bool)

(declare-fun b_free!20565 () Bool)

(declare-fun b_next!20565 () Bool)

(assert (=> b!1027375 (= b_free!20565 (not b_next!20565))))

(declare-fun tp!72741 () Bool)

(declare-fun b_and!32829 () Bool)

(assert (=> b!1027375 (= tp!72741 b_and!32829)))

(declare-fun mapNonEmpty!37856 () Bool)

(declare-fun mapRes!37856 () Bool)

(declare-fun tp!72742 () Bool)

(declare-fun e!579841 () Bool)

(assert (=> mapNonEmpty!37856 (= mapRes!37856 (and tp!72742 e!579841))))

(declare-datatypes ((V!37253 0))(
  ( (V!37254 (val!12193 Int)) )
))
(declare-datatypes ((ValueCell!11439 0))(
  ( (ValueCellFull!11439 (v!14763 V!37253)) (EmptyCell!11439) )
))
(declare-fun mapRest!37856 () (Array (_ BitVec 32) ValueCell!11439))

(declare-fun mapValue!37856 () ValueCell!11439)

(declare-fun mapKey!37856 () (_ BitVec 32))

(declare-datatypes ((array!64604 0))(
  ( (array!64605 (arr!31107 (Array (_ BitVec 32) (_ BitVec 64))) (size!31621 (_ BitVec 32))) )
))
(declare-datatypes ((array!64606 0))(
  ( (array!64607 (arr!31108 (Array (_ BitVec 32) ValueCell!11439)) (size!31622 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5472 0))(
  ( (LongMapFixedSize!5473 (defaultEntry!6088 Int) (mask!29799 (_ BitVec 32)) (extraKeys!5820 (_ BitVec 32)) (zeroValue!5924 V!37253) (minValue!5924 V!37253) (_size!2791 (_ BitVec 32)) (_keys!11232 array!64604) (_values!6111 array!64606) (_vacant!2791 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5472)

(assert (=> mapNonEmpty!37856 (= (arr!31108 (_values!6111 thiss!1427)) (store mapRest!37856 mapKey!37856 mapValue!37856))))

(declare-fun mapIsEmpty!37856 () Bool)

(assert (=> mapIsEmpty!37856 mapRes!37856))

(declare-fun b!1027367 () Bool)

(declare-fun e!579847 () Bool)

(declare-fun tp_is_empty!24285 () Bool)

(assert (=> b!1027367 (= e!579847 tp_is_empty!24285)))

(declare-fun b!1027368 () Bool)

(assert (=> b!1027368 (= e!579841 tp_is_empty!24285)))

(declare-fun b!1027369 () Bool)

(declare-fun res!687752 () Bool)

(declare-fun e!579844 () Bool)

(assert (=> b!1027369 (=> res!687752 e!579844)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64604 (_ BitVec 32)) Bool)

(assert (=> b!1027369 (= res!687752 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11232 thiss!1427) (mask!29799 thiss!1427))))))

(declare-fun b!1027370 () Bool)

(assert (=> b!1027370 (= e!579844 true)))

(declare-fun lt!452224 () Bool)

(declare-datatypes ((List!21913 0))(
  ( (Nil!21910) (Cons!21909 (h!23107 (_ BitVec 64)) (t!30982 List!21913)) )
))
(declare-fun arrayNoDuplicates!0 (array!64604 (_ BitVec 32) List!21913) Bool)

(assert (=> b!1027370 (= lt!452224 (arrayNoDuplicates!0 (_keys!11232 thiss!1427) #b00000000000000000000000000000000 Nil!21910))))

(declare-fun b!1027371 () Bool)

(declare-fun e!579846 () Bool)

(declare-fun e!579842 () Bool)

(assert (=> b!1027371 (= e!579846 e!579842)))

(declare-fun res!687750 () Bool)

(assert (=> b!1027371 (=> (not res!687750) (not e!579842))))

(declare-datatypes ((SeekEntryResult!9658 0))(
  ( (MissingZero!9658 (index!41002 (_ BitVec 32))) (Found!9658 (index!41003 (_ BitVec 32))) (Intermediate!9658 (undefined!10470 Bool) (index!41004 (_ BitVec 32)) (x!91403 (_ BitVec 32))) (Undefined!9658) (MissingVacant!9658 (index!41005 (_ BitVec 32))) )
))
(declare-fun lt!452227 () SeekEntryResult!9658)

(get-info :version)

(assert (=> b!1027371 (= res!687750 ((_ is Found!9658) lt!452227))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64604 (_ BitVec 32)) SeekEntryResult!9658)

(assert (=> b!1027371 (= lt!452227 (seekEntry!0 key!909 (_keys!11232 thiss!1427) (mask!29799 thiss!1427)))))

(declare-fun b!1027372 () Bool)

(declare-fun res!687753 () Bool)

(assert (=> b!1027372 (=> (not res!687753) (not e!579846))))

(assert (=> b!1027372 (= res!687753 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1027374 () Bool)

(declare-fun res!687749 () Bool)

(assert (=> b!1027374 (=> res!687749 e!579844)))

(assert (=> b!1027374 (= res!687749 (or (not (= (size!31622 (_values!6111 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29799 thiss!1427)))) (not (= (size!31621 (_keys!11232 thiss!1427)) (size!31622 (_values!6111 thiss!1427)))) (bvslt (mask!29799 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5820 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5820 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun res!687751 () Bool)

(assert (=> start!89602 (=> (not res!687751) (not e!579846))))

(declare-fun valid!2027 (LongMapFixedSize!5472) Bool)

(assert (=> start!89602 (= res!687751 (valid!2027 thiss!1427))))

(assert (=> start!89602 e!579846))

(declare-fun e!579845 () Bool)

(assert (=> start!89602 e!579845))

(assert (=> start!89602 true))

(declare-fun b!1027373 () Bool)

(declare-fun e!579843 () Bool)

(assert (=> b!1027373 (= e!579843 (and e!579847 mapRes!37856))))

(declare-fun condMapEmpty!37856 () Bool)

(declare-fun mapDefault!37856 () ValueCell!11439)

(assert (=> b!1027373 (= condMapEmpty!37856 (= (arr!31108 (_values!6111 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11439)) mapDefault!37856)))))

(declare-fun array_inv!23931 (array!64604) Bool)

(declare-fun array_inv!23932 (array!64606) Bool)

(assert (=> b!1027375 (= e!579845 (and tp!72741 tp_is_empty!24285 (array_inv!23931 (_keys!11232 thiss!1427)) (array_inv!23932 (_values!6111 thiss!1427)) e!579843))))

(declare-fun b!1027376 () Bool)

(assert (=> b!1027376 (= e!579842 (not e!579844))))

(declare-fun res!687748 () Bool)

(assert (=> b!1027376 (=> res!687748 e!579844)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1027376 (= res!687748 (not (validMask!0 (mask!29799 thiss!1427))))))

(declare-fun lt!452225 () array!64604)

(declare-fun arrayContainsKey!0 (array!64604 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1027376 (not (arrayContainsKey!0 lt!452225 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33444 0))(
  ( (Unit!33445) )
))
(declare-fun lt!452223 () Unit!33444)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64604 (_ BitVec 32) (_ BitVec 64)) Unit!33444)

(assert (=> b!1027376 (= lt!452223 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11232 thiss!1427) (index!41003 lt!452227) key!909))))

(assert (=> b!1027376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452225 (mask!29799 thiss!1427))))

(declare-fun lt!452221 () Unit!33444)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64604 (_ BitVec 32) (_ BitVec 32)) Unit!33444)

(assert (=> b!1027376 (= lt!452221 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11232 thiss!1427) (index!41003 lt!452227) (mask!29799 thiss!1427)))))

(assert (=> b!1027376 (arrayNoDuplicates!0 lt!452225 #b00000000000000000000000000000000 Nil!21910)))

(declare-fun lt!452226 () Unit!33444)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64604 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21913) Unit!33444)

(assert (=> b!1027376 (= lt!452226 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11232 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41003 lt!452227) #b00000000000000000000000000000000 Nil!21910))))

(declare-fun arrayCountValidKeys!0 (array!64604 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1027376 (= (arrayCountValidKeys!0 lt!452225 #b00000000000000000000000000000000 (size!31621 (_keys!11232 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11232 thiss!1427) #b00000000000000000000000000000000 (size!31621 (_keys!11232 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1027376 (= lt!452225 (array!64605 (store (arr!31107 (_keys!11232 thiss!1427)) (index!41003 lt!452227) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31621 (_keys!11232 thiss!1427))))))

(declare-fun lt!452222 () Unit!33444)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64604 (_ BitVec 32) (_ BitVec 64)) Unit!33444)

(assert (=> b!1027376 (= lt!452222 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11232 thiss!1427) (index!41003 lt!452227) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!89602 res!687751) b!1027372))

(assert (= (and b!1027372 res!687753) b!1027371))

(assert (= (and b!1027371 res!687750) b!1027376))

(assert (= (and b!1027376 (not res!687748)) b!1027374))

(assert (= (and b!1027374 (not res!687749)) b!1027369))

(assert (= (and b!1027369 (not res!687752)) b!1027370))

(assert (= (and b!1027373 condMapEmpty!37856) mapIsEmpty!37856))

(assert (= (and b!1027373 (not condMapEmpty!37856)) mapNonEmpty!37856))

(assert (= (and mapNonEmpty!37856 ((_ is ValueCellFull!11439) mapValue!37856)) b!1027368))

(assert (= (and b!1027373 ((_ is ValueCellFull!11439) mapDefault!37856)) b!1027367))

(assert (= b!1027375 b!1027373))

(assert (= start!89602 b!1027375))

(declare-fun m!945967 () Bool)

(assert (=> b!1027376 m!945967))

(declare-fun m!945969 () Bool)

(assert (=> b!1027376 m!945969))

(declare-fun m!945971 () Bool)

(assert (=> b!1027376 m!945971))

(declare-fun m!945973 () Bool)

(assert (=> b!1027376 m!945973))

(declare-fun m!945975 () Bool)

(assert (=> b!1027376 m!945975))

(declare-fun m!945977 () Bool)

(assert (=> b!1027376 m!945977))

(declare-fun m!945979 () Bool)

(assert (=> b!1027376 m!945979))

(declare-fun m!945981 () Bool)

(assert (=> b!1027376 m!945981))

(declare-fun m!945983 () Bool)

(assert (=> b!1027376 m!945983))

(declare-fun m!945985 () Bool)

(assert (=> b!1027376 m!945985))

(declare-fun m!945987 () Bool)

(assert (=> b!1027376 m!945987))

(declare-fun m!945989 () Bool)

(assert (=> b!1027369 m!945989))

(declare-fun m!945991 () Bool)

(assert (=> b!1027370 m!945991))

(declare-fun m!945993 () Bool)

(assert (=> b!1027371 m!945993))

(declare-fun m!945995 () Bool)

(assert (=> mapNonEmpty!37856 m!945995))

(declare-fun m!945997 () Bool)

(assert (=> start!89602 m!945997))

(declare-fun m!945999 () Bool)

(assert (=> b!1027375 m!945999))

(declare-fun m!946001 () Bool)

(assert (=> b!1027375 m!946001))

(check-sat (not b!1027369) (not b!1027371) (not start!89602) tp_is_empty!24285 (not b!1027375) b_and!32829 (not mapNonEmpty!37856) (not b!1027370) (not b_next!20565) (not b!1027376))
(check-sat b_and!32829 (not b_next!20565))
