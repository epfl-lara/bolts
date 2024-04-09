; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89572 () Bool)

(assert start!89572)

(declare-fun b!1026919 () Bool)

(declare-fun b_free!20535 () Bool)

(declare-fun b_next!20535 () Bool)

(assert (=> b!1026919 (= b_free!20535 (not b_next!20535))))

(declare-fun tp!72652 () Bool)

(declare-fun b_and!32799 () Bool)

(assert (=> b!1026919 (= tp!72652 b_and!32799)))

(declare-fun b!1026917 () Bool)

(declare-fun e!579484 () Bool)

(assert (=> b!1026917 (= e!579484 true)))

(declare-fun lt!451909 () Bool)

(declare-datatypes ((V!37213 0))(
  ( (V!37214 (val!12178 Int)) )
))
(declare-datatypes ((ValueCell!11424 0))(
  ( (ValueCellFull!11424 (v!14748 V!37213)) (EmptyCell!11424) )
))
(declare-datatypes ((array!64544 0))(
  ( (array!64545 (arr!31077 (Array (_ BitVec 32) (_ BitVec 64))) (size!31591 (_ BitVec 32))) )
))
(declare-datatypes ((array!64546 0))(
  ( (array!64547 (arr!31078 (Array (_ BitVec 32) ValueCell!11424)) (size!31592 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5442 0))(
  ( (LongMapFixedSize!5443 (defaultEntry!6073 Int) (mask!29774 (_ BitVec 32)) (extraKeys!5805 (_ BitVec 32)) (zeroValue!5909 V!37213) (minValue!5909 V!37213) (_size!2776 (_ BitVec 32)) (_keys!11217 array!64544) (_values!6096 array!64546) (_vacant!2776 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5442)

(declare-datatypes ((List!21901 0))(
  ( (Nil!21898) (Cons!21897 (h!23095 (_ BitVec 64)) (t!30970 List!21901)) )
))
(declare-fun arrayNoDuplicates!0 (array!64544 (_ BitVec 32) List!21901) Bool)

(assert (=> b!1026917 (= lt!451909 (arrayNoDuplicates!0 (_keys!11217 thiss!1427) #b00000000000000000000000000000000 Nil!21898))))

(declare-fun mapNonEmpty!37811 () Bool)

(declare-fun mapRes!37811 () Bool)

(declare-fun tp!72651 () Bool)

(declare-fun e!579485 () Bool)

(assert (=> mapNonEmpty!37811 (= mapRes!37811 (and tp!72651 e!579485))))

(declare-fun mapRest!37811 () (Array (_ BitVec 32) ValueCell!11424))

(declare-fun mapValue!37811 () ValueCell!11424)

(declare-fun mapKey!37811 () (_ BitVec 32))

(assert (=> mapNonEmpty!37811 (= (arr!31078 (_values!6096 thiss!1427)) (store mapRest!37811 mapKey!37811 mapValue!37811))))

(declare-fun res!687479 () Bool)

(declare-fun e!579488 () Bool)

(assert (=> start!89572 (=> (not res!687479) (not e!579488))))

(declare-fun valid!2019 (LongMapFixedSize!5442) Bool)

(assert (=> start!89572 (= res!687479 (valid!2019 thiss!1427))))

(assert (=> start!89572 e!579488))

(declare-fun e!579486 () Bool)

(assert (=> start!89572 e!579486))

(assert (=> start!89572 true))

(declare-fun b!1026918 () Bool)

(declare-fun e!579487 () Bool)

(declare-fun e!579482 () Bool)

(assert (=> b!1026918 (= e!579487 (and e!579482 mapRes!37811))))

(declare-fun condMapEmpty!37811 () Bool)

(declare-fun mapDefault!37811 () ValueCell!11424)

(assert (=> b!1026918 (= condMapEmpty!37811 (= (arr!31078 (_values!6096 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11424)) mapDefault!37811)))))

(declare-fun tp_is_empty!24255 () Bool)

(declare-fun array_inv!23915 (array!64544) Bool)

(declare-fun array_inv!23916 (array!64546) Bool)

(assert (=> b!1026919 (= e!579486 (and tp!72652 tp_is_empty!24255 (array_inv!23915 (_keys!11217 thiss!1427)) (array_inv!23916 (_values!6096 thiss!1427)) e!579487))))

(declare-fun b!1026920 () Bool)

(declare-fun res!687483 () Bool)

(assert (=> b!1026920 (=> res!687483 e!579484)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64544 (_ BitVec 32)) Bool)

(assert (=> b!1026920 (= res!687483 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11217 thiss!1427) (mask!29774 thiss!1427))))))

(declare-fun b!1026921 () Bool)

(declare-fun res!687481 () Bool)

(assert (=> b!1026921 (=> res!687481 e!579484)))

(assert (=> b!1026921 (= res!687481 (or (not (= (size!31592 (_values!6096 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29774 thiss!1427)))) (not (= (size!31591 (_keys!11217 thiss!1427)) (size!31592 (_values!6096 thiss!1427)))) (bvslt (mask!29774 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5805 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5805 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1026922 () Bool)

(assert (=> b!1026922 (= e!579482 tp_is_empty!24255)))

(declare-fun mapIsEmpty!37811 () Bool)

(assert (=> mapIsEmpty!37811 mapRes!37811))

(declare-fun b!1026923 () Bool)

(assert (=> b!1026923 (= e!579485 tp_is_empty!24255)))

(declare-fun b!1026924 () Bool)

(declare-fun e!579483 () Bool)

(assert (=> b!1026924 (= e!579488 e!579483)))

(declare-fun res!687482 () Bool)

(assert (=> b!1026924 (=> (not res!687482) (not e!579483))))

(declare-datatypes ((SeekEntryResult!9649 0))(
  ( (MissingZero!9649 (index!40966 (_ BitVec 32))) (Found!9649 (index!40967 (_ BitVec 32))) (Intermediate!9649 (undefined!10461 Bool) (index!40968 (_ BitVec 32)) (x!91354 (_ BitVec 32))) (Undefined!9649) (MissingVacant!9649 (index!40969 (_ BitVec 32))) )
))
(declare-fun lt!451906 () SeekEntryResult!9649)

(get-info :version)

(assert (=> b!1026924 (= res!687482 ((_ is Found!9649) lt!451906))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64544 (_ BitVec 32)) SeekEntryResult!9649)

(assert (=> b!1026924 (= lt!451906 (seekEntry!0 key!909 (_keys!11217 thiss!1427) (mask!29774 thiss!1427)))))

(declare-fun b!1026925 () Bool)

(assert (=> b!1026925 (= e!579483 (not e!579484))))

(declare-fun res!687478 () Bool)

(assert (=> b!1026925 (=> res!687478 e!579484)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026925 (= res!687478 (not (validMask!0 (mask!29774 thiss!1427))))))

(declare-fun lt!451910 () array!64544)

(declare-fun arrayContainsKey!0 (array!64544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026925 (not (arrayContainsKey!0 lt!451910 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33428 0))(
  ( (Unit!33429) )
))
(declare-fun lt!451907 () Unit!33428)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64544 (_ BitVec 32) (_ BitVec 64)) Unit!33428)

(assert (=> b!1026925 (= lt!451907 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11217 thiss!1427) (index!40967 lt!451906) key!909))))

(assert (=> b!1026925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451910 (mask!29774 thiss!1427))))

(declare-fun lt!451908 () Unit!33428)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64544 (_ BitVec 32) (_ BitVec 32)) Unit!33428)

(assert (=> b!1026925 (= lt!451908 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11217 thiss!1427) (index!40967 lt!451906) (mask!29774 thiss!1427)))))

(assert (=> b!1026925 (arrayNoDuplicates!0 lt!451910 #b00000000000000000000000000000000 Nil!21898)))

(declare-fun lt!451911 () Unit!33428)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64544 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21901) Unit!33428)

(assert (=> b!1026925 (= lt!451911 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11217 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40967 lt!451906) #b00000000000000000000000000000000 Nil!21898))))

(declare-fun arrayCountValidKeys!0 (array!64544 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026925 (= (arrayCountValidKeys!0 lt!451910 #b00000000000000000000000000000000 (size!31591 (_keys!11217 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11217 thiss!1427) #b00000000000000000000000000000000 (size!31591 (_keys!11217 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026925 (= lt!451910 (array!64545 (store (arr!31077 (_keys!11217 thiss!1427)) (index!40967 lt!451906) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31591 (_keys!11217 thiss!1427))))))

(declare-fun lt!451912 () Unit!33428)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64544 (_ BitVec 32) (_ BitVec 64)) Unit!33428)

(assert (=> b!1026925 (= lt!451912 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11217 thiss!1427) (index!40967 lt!451906) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026926 () Bool)

(declare-fun res!687480 () Bool)

(assert (=> b!1026926 (=> (not res!687480) (not e!579488))))

(assert (=> b!1026926 (= res!687480 (not (= key!909 (bvneg key!909))))))

(assert (= (and start!89572 res!687479) b!1026926))

(assert (= (and b!1026926 res!687480) b!1026924))

(assert (= (and b!1026924 res!687482) b!1026925))

(assert (= (and b!1026925 (not res!687478)) b!1026921))

(assert (= (and b!1026921 (not res!687481)) b!1026920))

(assert (= (and b!1026920 (not res!687483)) b!1026917))

(assert (= (and b!1026918 condMapEmpty!37811) mapIsEmpty!37811))

(assert (= (and b!1026918 (not condMapEmpty!37811)) mapNonEmpty!37811))

(assert (= (and mapNonEmpty!37811 ((_ is ValueCellFull!11424) mapValue!37811)) b!1026923))

(assert (= (and b!1026918 ((_ is ValueCellFull!11424) mapDefault!37811)) b!1026922))

(assert (= b!1026919 b!1026918))

(assert (= start!89572 b!1026919))

(declare-fun m!945427 () Bool)

(assert (=> mapNonEmpty!37811 m!945427))

(declare-fun m!945429 () Bool)

(assert (=> start!89572 m!945429))

(declare-fun m!945431 () Bool)

(assert (=> b!1026925 m!945431))

(declare-fun m!945433 () Bool)

(assert (=> b!1026925 m!945433))

(declare-fun m!945435 () Bool)

(assert (=> b!1026925 m!945435))

(declare-fun m!945437 () Bool)

(assert (=> b!1026925 m!945437))

(declare-fun m!945439 () Bool)

(assert (=> b!1026925 m!945439))

(declare-fun m!945441 () Bool)

(assert (=> b!1026925 m!945441))

(declare-fun m!945443 () Bool)

(assert (=> b!1026925 m!945443))

(declare-fun m!945445 () Bool)

(assert (=> b!1026925 m!945445))

(declare-fun m!945447 () Bool)

(assert (=> b!1026925 m!945447))

(declare-fun m!945449 () Bool)

(assert (=> b!1026925 m!945449))

(declare-fun m!945451 () Bool)

(assert (=> b!1026925 m!945451))

(declare-fun m!945453 () Bool)

(assert (=> b!1026919 m!945453))

(declare-fun m!945455 () Bool)

(assert (=> b!1026919 m!945455))

(declare-fun m!945457 () Bool)

(assert (=> b!1026920 m!945457))

(declare-fun m!945459 () Bool)

(assert (=> b!1026924 m!945459))

(declare-fun m!945461 () Bool)

(assert (=> b!1026917 m!945461))

(check-sat (not b_next!20535) (not start!89572) b_and!32799 (not mapNonEmpty!37811) (not b!1026919) (not b!1026920) tp_is_empty!24255 (not b!1026925) (not b!1026924) (not b!1026917))
(check-sat b_and!32799 (not b_next!20535))
