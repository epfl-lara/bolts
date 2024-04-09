; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89410 () Bool)

(assert start!89410)

(declare-fun b!1024477 () Bool)

(declare-fun b_free!20373 () Bool)

(declare-fun b_next!20373 () Bool)

(assert (=> b!1024477 (= b_free!20373 (not b_next!20373))))

(declare-fun tp!72166 () Bool)

(declare-fun b_and!32637 () Bool)

(assert (=> b!1024477 (= tp!72166 b_and!32637)))

(declare-fun b!1024474 () Bool)

(declare-fun res!686007 () Bool)

(declare-fun e!577539 () Bool)

(assert (=> b!1024474 (=> res!686007 e!577539)))

(declare-datatypes ((List!21835 0))(
  ( (Nil!21832) (Cons!21831 (h!23029 (_ BitVec 64)) (t!30904 List!21835)) )
))
(declare-fun contains!5963 (List!21835 (_ BitVec 64)) Bool)

(assert (=> b!1024474 (= res!686007 (contains!5963 Nil!21832 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024475 () Bool)

(declare-fun res!686009 () Bool)

(assert (=> b!1024475 (=> res!686009 e!577539)))

(assert (=> b!1024475 (= res!686009 (contains!5963 Nil!21832 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024476 () Bool)

(assert (=> b!1024476 (= e!577539 true)))

(declare-fun lt!450619 () Bool)

(declare-datatypes ((V!36997 0))(
  ( (V!36998 (val!12097 Int)) )
))
(declare-datatypes ((ValueCell!11343 0))(
  ( (ValueCellFull!11343 (v!14667 V!36997)) (EmptyCell!11343) )
))
(declare-datatypes ((array!64220 0))(
  ( (array!64221 (arr!30915 (Array (_ BitVec 32) (_ BitVec 64))) (size!31429 (_ BitVec 32))) )
))
(declare-datatypes ((array!64222 0))(
  ( (array!64223 (arr!30916 (Array (_ BitVec 32) ValueCell!11343)) (size!31430 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5280 0))(
  ( (LongMapFixedSize!5281 (defaultEntry!5992 Int) (mask!29639 (_ BitVec 32)) (extraKeys!5724 (_ BitVec 32)) (zeroValue!5828 V!36997) (minValue!5828 V!36997) (_size!2695 (_ BitVec 32)) (_keys!11136 array!64220) (_values!6015 array!64222) (_vacant!2695 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5280)

(declare-fun arrayNoDuplicates!0 (array!64220 (_ BitVec 32) List!21835) Bool)

(assert (=> b!1024476 (= lt!450619 (arrayNoDuplicates!0 (_keys!11136 thiss!1427) #b00000000000000000000000000000000 Nil!21832))))

(declare-fun e!577544 () Bool)

(declare-fun tp_is_empty!24093 () Bool)

(declare-fun e!577540 () Bool)

(declare-fun array_inv!23813 (array!64220) Bool)

(declare-fun array_inv!23814 (array!64222) Bool)

(assert (=> b!1024477 (= e!577544 (and tp!72166 tp_is_empty!24093 (array_inv!23813 (_keys!11136 thiss!1427)) (array_inv!23814 (_values!6015 thiss!1427)) e!577540))))

(declare-fun b!1024478 () Bool)

(declare-fun e!577542 () Bool)

(assert (=> b!1024478 (= e!577542 (not e!577539))))

(declare-fun res!686013 () Bool)

(assert (=> b!1024478 (=> res!686013 e!577539)))

(assert (=> b!1024478 (= res!686013 (or (bvsge (size!31429 (_keys!11136 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31429 (_keys!11136 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9586 0))(
  ( (MissingZero!9586 (index!40714 (_ BitVec 32))) (Found!9586 (index!40715 (_ BitVec 32))) (Intermediate!9586 (undefined!10398 Bool) (index!40716 (_ BitVec 32)) (x!91075 (_ BitVec 32))) (Undefined!9586) (MissingVacant!9586 (index!40717 (_ BitVec 32))) )
))
(declare-fun lt!450617 () SeekEntryResult!9586)

(declare-fun arrayCountValidKeys!0 (array!64220 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024478 (= (arrayCountValidKeys!0 (array!64221 (store (arr!30915 (_keys!11136 thiss!1427)) (index!40715 lt!450617) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31429 (_keys!11136 thiss!1427))) #b00000000000000000000000000000000 (size!31429 (_keys!11136 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11136 thiss!1427) #b00000000000000000000000000000000 (size!31429 (_keys!11136 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33318 0))(
  ( (Unit!33319) )
))
(declare-fun lt!450618 () Unit!33318)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64220 (_ BitVec 32) (_ BitVec 64)) Unit!33318)

(assert (=> b!1024478 (= lt!450618 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11136 thiss!1427) (index!40715 lt!450617) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024479 () Bool)

(declare-fun e!577537 () Bool)

(assert (=> b!1024479 (= e!577537 e!577542)))

(declare-fun res!686008 () Bool)

(assert (=> b!1024479 (=> (not res!686008) (not e!577542))))

(get-info :version)

(assert (=> b!1024479 (= res!686008 ((_ is Found!9586) lt!450617))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64220 (_ BitVec 32)) SeekEntryResult!9586)

(assert (=> b!1024479 (= lt!450617 (seekEntry!0 key!909 (_keys!11136 thiss!1427) (mask!29639 thiss!1427)))))

(declare-fun b!1024480 () Bool)

(declare-fun e!577538 () Bool)

(assert (=> b!1024480 (= e!577538 tp_is_empty!24093)))

(declare-fun b!1024481 () Bool)

(declare-fun res!686012 () Bool)

(assert (=> b!1024481 (=> (not res!686012) (not e!577537))))

(assert (=> b!1024481 (= res!686012 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1024482 () Bool)

(declare-fun e!577541 () Bool)

(assert (=> b!1024482 (= e!577541 tp_is_empty!24093)))

(declare-fun mapNonEmpty!37568 () Bool)

(declare-fun mapRes!37568 () Bool)

(declare-fun tp!72165 () Bool)

(assert (=> mapNonEmpty!37568 (= mapRes!37568 (and tp!72165 e!577541))))

(declare-fun mapValue!37568 () ValueCell!11343)

(declare-fun mapRest!37568 () (Array (_ BitVec 32) ValueCell!11343))

(declare-fun mapKey!37568 () (_ BitVec 32))

(assert (=> mapNonEmpty!37568 (= (arr!30916 (_values!6015 thiss!1427)) (store mapRest!37568 mapKey!37568 mapValue!37568))))

(declare-fun b!1024483 () Bool)

(assert (=> b!1024483 (= e!577540 (and e!577538 mapRes!37568))))

(declare-fun condMapEmpty!37568 () Bool)

(declare-fun mapDefault!37568 () ValueCell!11343)

(assert (=> b!1024483 (= condMapEmpty!37568 (= (arr!30916 (_values!6015 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11343)) mapDefault!37568)))))

(declare-fun mapIsEmpty!37568 () Bool)

(assert (=> mapIsEmpty!37568 mapRes!37568))

(declare-fun b!1024484 () Bool)

(declare-fun res!686011 () Bool)

(assert (=> b!1024484 (=> res!686011 e!577539)))

(declare-fun noDuplicate!1473 (List!21835) Bool)

(assert (=> b!1024484 (= res!686011 (not (noDuplicate!1473 Nil!21832)))))

(declare-fun res!686010 () Bool)

(assert (=> start!89410 (=> (not res!686010) (not e!577537))))

(declare-fun valid!1963 (LongMapFixedSize!5280) Bool)

(assert (=> start!89410 (= res!686010 (valid!1963 thiss!1427))))

(assert (=> start!89410 e!577537))

(assert (=> start!89410 e!577544))

(assert (=> start!89410 true))

(assert (= (and start!89410 res!686010) b!1024481))

(assert (= (and b!1024481 res!686012) b!1024479))

(assert (= (and b!1024479 res!686008) b!1024478))

(assert (= (and b!1024478 (not res!686013)) b!1024484))

(assert (= (and b!1024484 (not res!686011)) b!1024475))

(assert (= (and b!1024475 (not res!686009)) b!1024474))

(assert (= (and b!1024474 (not res!686007)) b!1024476))

(assert (= (and b!1024483 condMapEmpty!37568) mapIsEmpty!37568))

(assert (= (and b!1024483 (not condMapEmpty!37568)) mapNonEmpty!37568))

(assert (= (and mapNonEmpty!37568 ((_ is ValueCellFull!11343) mapValue!37568)) b!1024482))

(assert (= (and b!1024483 ((_ is ValueCellFull!11343) mapDefault!37568)) b!1024480))

(assert (= b!1024477 b!1024483))

(assert (= start!89410 b!1024477))

(declare-fun m!942939 () Bool)

(assert (=> b!1024474 m!942939))

(declare-fun m!942941 () Bool)

(assert (=> b!1024479 m!942941))

(declare-fun m!942943 () Bool)

(assert (=> start!89410 m!942943))

(declare-fun m!942945 () Bool)

(assert (=> b!1024484 m!942945))

(declare-fun m!942947 () Bool)

(assert (=> b!1024476 m!942947))

(declare-fun m!942949 () Bool)

(assert (=> b!1024477 m!942949))

(declare-fun m!942951 () Bool)

(assert (=> b!1024477 m!942951))

(declare-fun m!942953 () Bool)

(assert (=> b!1024475 m!942953))

(declare-fun m!942955 () Bool)

(assert (=> mapNonEmpty!37568 m!942955))

(declare-fun m!942957 () Bool)

(assert (=> b!1024478 m!942957))

(declare-fun m!942959 () Bool)

(assert (=> b!1024478 m!942959))

(declare-fun m!942961 () Bool)

(assert (=> b!1024478 m!942961))

(declare-fun m!942963 () Bool)

(assert (=> b!1024478 m!942963))

(check-sat (not b_next!20373) (not b!1024475) tp_is_empty!24093 (not b!1024474) (not b!1024484) b_and!32637 (not b!1024479) (not mapNonEmpty!37568) (not b!1024478) (not b!1024477) (not start!89410) (not b!1024476))
(check-sat b_and!32637 (not b_next!20373))
