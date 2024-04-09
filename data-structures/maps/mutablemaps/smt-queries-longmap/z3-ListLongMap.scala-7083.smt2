; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89590 () Bool)

(assert start!89590)

(declare-fun b!1027187 () Bool)

(declare-fun b_free!20553 () Bool)

(declare-fun b_next!20553 () Bool)

(assert (=> b!1027187 (= b_free!20553 (not b_next!20553))))

(declare-fun tp!72706 () Bool)

(declare-fun b_and!32817 () Bool)

(assert (=> b!1027187 (= tp!72706 b_and!32817)))

(declare-datatypes ((V!37237 0))(
  ( (V!37238 (val!12187 Int)) )
))
(declare-datatypes ((ValueCell!11433 0))(
  ( (ValueCellFull!11433 (v!14757 V!37237)) (EmptyCell!11433) )
))
(declare-datatypes ((array!64580 0))(
  ( (array!64581 (arr!31095 (Array (_ BitVec 32) (_ BitVec 64))) (size!31609 (_ BitVec 32))) )
))
(declare-datatypes ((array!64582 0))(
  ( (array!64583 (arr!31096 (Array (_ BitVec 32) ValueCell!11433)) (size!31610 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5460 0))(
  ( (LongMapFixedSize!5461 (defaultEntry!6082 Int) (mask!29789 (_ BitVec 32)) (extraKeys!5814 (_ BitVec 32)) (zeroValue!5918 V!37237) (minValue!5918 V!37237) (_size!2785 (_ BitVec 32)) (_keys!11226 array!64580) (_values!6105 array!64582) (_vacant!2785 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5460)

(declare-fun e!579704 () Bool)

(declare-fun tp_is_empty!24273 () Bool)

(declare-fun e!579700 () Bool)

(declare-fun array_inv!23927 (array!64580) Bool)

(declare-fun array_inv!23928 (array!64582) Bool)

(assert (=> b!1027187 (= e!579704 (and tp!72706 tp_is_empty!24273 (array_inv!23927 (_keys!11226 thiss!1427)) (array_inv!23928 (_values!6105 thiss!1427)) e!579700))))

(declare-fun b!1027188 () Bool)

(declare-fun e!579697 () Bool)

(declare-fun e!579703 () Bool)

(assert (=> b!1027188 (= e!579697 (not e!579703))))

(declare-fun res!687644 () Bool)

(assert (=> b!1027188 (=> res!687644 e!579703)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1027188 (= res!687644 (not (validMask!0 (mask!29789 thiss!1427))))))

(declare-fun lt!452101 () array!64580)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!64580 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1027188 (not (arrayContainsKey!0 lt!452101 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9655 0))(
  ( (MissingZero!9655 (index!40990 (_ BitVec 32))) (Found!9655 (index!40991 (_ BitVec 32))) (Intermediate!9655 (undefined!10467 Bool) (index!40992 (_ BitVec 32)) (x!91384 (_ BitVec 32))) (Undefined!9655) (MissingVacant!9655 (index!40993 (_ BitVec 32))) )
))
(declare-fun lt!452099 () SeekEntryResult!9655)

(declare-datatypes ((Unit!33438 0))(
  ( (Unit!33439) )
))
(declare-fun lt!452095 () Unit!33438)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64580 (_ BitVec 32) (_ BitVec 64)) Unit!33438)

(assert (=> b!1027188 (= lt!452095 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11226 thiss!1427) (index!40991 lt!452099) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64580 (_ BitVec 32)) Bool)

(assert (=> b!1027188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452101 (mask!29789 thiss!1427))))

(declare-fun lt!452097 () Unit!33438)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64580 (_ BitVec 32) (_ BitVec 32)) Unit!33438)

(assert (=> b!1027188 (= lt!452097 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11226 thiss!1427) (index!40991 lt!452099) (mask!29789 thiss!1427)))))

(declare-datatypes ((List!21910 0))(
  ( (Nil!21907) (Cons!21906 (h!23104 (_ BitVec 64)) (t!30979 List!21910)) )
))
(declare-fun arrayNoDuplicates!0 (array!64580 (_ BitVec 32) List!21910) Bool)

(assert (=> b!1027188 (arrayNoDuplicates!0 lt!452101 #b00000000000000000000000000000000 Nil!21907)))

(declare-fun lt!452098 () Unit!33438)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64580 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21910) Unit!33438)

(assert (=> b!1027188 (= lt!452098 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11226 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40991 lt!452099) #b00000000000000000000000000000000 Nil!21907))))

(declare-fun arrayCountValidKeys!0 (array!64580 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1027188 (= (arrayCountValidKeys!0 lt!452101 #b00000000000000000000000000000000 (size!31609 (_keys!11226 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11226 thiss!1427) #b00000000000000000000000000000000 (size!31609 (_keys!11226 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1027188 (= lt!452101 (array!64581 (store (arr!31095 (_keys!11226 thiss!1427)) (index!40991 lt!452099) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31609 (_keys!11226 thiss!1427))))))

(declare-fun lt!452100 () Unit!33438)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64580 (_ BitVec 32) (_ BitVec 64)) Unit!33438)

(assert (=> b!1027188 (= lt!452100 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11226 thiss!1427) (index!40991 lt!452099) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027189 () Bool)

(declare-fun e!579701 () Bool)

(declare-fun mapRes!37838 () Bool)

(assert (=> b!1027189 (= e!579700 (and e!579701 mapRes!37838))))

(declare-fun condMapEmpty!37838 () Bool)

(declare-fun mapDefault!37838 () ValueCell!11433)

(assert (=> b!1027189 (= condMapEmpty!37838 (= (arr!31096 (_values!6105 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11433)) mapDefault!37838)))))

(declare-fun b!1027190 () Bool)

(declare-fun e!579699 () Bool)

(assert (=> b!1027190 (= e!579699 e!579697)))

(declare-fun res!687643 () Bool)

(assert (=> b!1027190 (=> (not res!687643) (not e!579697))))

(get-info :version)

(assert (=> b!1027190 (= res!687643 ((_ is Found!9655) lt!452099))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64580 (_ BitVec 32)) SeekEntryResult!9655)

(assert (=> b!1027190 (= lt!452099 (seekEntry!0 key!909 (_keys!11226 thiss!1427) (mask!29789 thiss!1427)))))

(declare-fun mapIsEmpty!37838 () Bool)

(assert (=> mapIsEmpty!37838 mapRes!37838))

(declare-fun b!1027191 () Bool)

(declare-fun e!579702 () Bool)

(assert (=> b!1027191 (= e!579702 tp_is_empty!24273)))

(declare-fun b!1027192 () Bool)

(declare-fun res!687642 () Bool)

(assert (=> b!1027192 (=> (not res!687642) (not e!579699))))

(assert (=> b!1027192 (= res!687642 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!37838 () Bool)

(declare-fun tp!72705 () Bool)

(assert (=> mapNonEmpty!37838 (= mapRes!37838 (and tp!72705 e!579702))))

(declare-fun mapValue!37838 () ValueCell!11433)

(declare-fun mapKey!37838 () (_ BitVec 32))

(declare-fun mapRest!37838 () (Array (_ BitVec 32) ValueCell!11433))

(assert (=> mapNonEmpty!37838 (= (arr!31096 (_values!6105 thiss!1427)) (store mapRest!37838 mapKey!37838 mapValue!37838))))

(declare-fun b!1027194 () Bool)

(declare-fun res!687640 () Bool)

(assert (=> b!1027194 (=> res!687640 e!579703)))

(assert (=> b!1027194 (= res!687640 (or (not (= (size!31610 (_values!6105 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29789 thiss!1427)))) (not (= (size!31609 (_keys!11226 thiss!1427)) (size!31610 (_values!6105 thiss!1427)))) (bvslt (mask!29789 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5814 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5814 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1027195 () Bool)

(declare-fun res!687645 () Bool)

(assert (=> b!1027195 (=> res!687645 e!579703)))

(assert (=> b!1027195 (= res!687645 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11226 thiss!1427) (mask!29789 thiss!1427))))))

(declare-fun b!1027196 () Bool)

(assert (=> b!1027196 (= e!579701 tp_is_empty!24273)))

(declare-fun b!1027193 () Bool)

(assert (=> b!1027193 (= e!579703 true)))

(declare-fun lt!452096 () Bool)

(assert (=> b!1027193 (= lt!452096 (arrayNoDuplicates!0 (_keys!11226 thiss!1427) #b00000000000000000000000000000000 Nil!21907))))

(declare-fun res!687641 () Bool)

(assert (=> start!89590 (=> (not res!687641) (not e!579699))))

(declare-fun valid!2024 (LongMapFixedSize!5460) Bool)

(assert (=> start!89590 (= res!687641 (valid!2024 thiss!1427))))

(assert (=> start!89590 e!579699))

(assert (=> start!89590 e!579704))

(assert (=> start!89590 true))

(assert (= (and start!89590 res!687641) b!1027192))

(assert (= (and b!1027192 res!687642) b!1027190))

(assert (= (and b!1027190 res!687643) b!1027188))

(assert (= (and b!1027188 (not res!687644)) b!1027194))

(assert (= (and b!1027194 (not res!687640)) b!1027195))

(assert (= (and b!1027195 (not res!687645)) b!1027193))

(assert (= (and b!1027189 condMapEmpty!37838) mapIsEmpty!37838))

(assert (= (and b!1027189 (not condMapEmpty!37838)) mapNonEmpty!37838))

(assert (= (and mapNonEmpty!37838 ((_ is ValueCellFull!11433) mapValue!37838)) b!1027191))

(assert (= (and b!1027189 ((_ is ValueCellFull!11433) mapDefault!37838)) b!1027196))

(assert (= b!1027187 b!1027189))

(assert (= start!89590 b!1027187))

(declare-fun m!945751 () Bool)

(assert (=> b!1027187 m!945751))

(declare-fun m!945753 () Bool)

(assert (=> b!1027187 m!945753))

(declare-fun m!945755 () Bool)

(assert (=> b!1027190 m!945755))

(declare-fun m!945757 () Bool)

(assert (=> b!1027193 m!945757))

(declare-fun m!945759 () Bool)

(assert (=> b!1027195 m!945759))

(declare-fun m!945761 () Bool)

(assert (=> start!89590 m!945761))

(declare-fun m!945763 () Bool)

(assert (=> mapNonEmpty!37838 m!945763))

(declare-fun m!945765 () Bool)

(assert (=> b!1027188 m!945765))

(declare-fun m!945767 () Bool)

(assert (=> b!1027188 m!945767))

(declare-fun m!945769 () Bool)

(assert (=> b!1027188 m!945769))

(declare-fun m!945771 () Bool)

(assert (=> b!1027188 m!945771))

(declare-fun m!945773 () Bool)

(assert (=> b!1027188 m!945773))

(declare-fun m!945775 () Bool)

(assert (=> b!1027188 m!945775))

(declare-fun m!945777 () Bool)

(assert (=> b!1027188 m!945777))

(declare-fun m!945779 () Bool)

(assert (=> b!1027188 m!945779))

(declare-fun m!945781 () Bool)

(assert (=> b!1027188 m!945781))

(declare-fun m!945783 () Bool)

(assert (=> b!1027188 m!945783))

(declare-fun m!945785 () Bool)

(assert (=> b!1027188 m!945785))

(check-sat (not start!89590) (not b!1027187) (not mapNonEmpty!37838) (not b!1027188) (not b_next!20553) b_and!32817 tp_is_empty!24273 (not b!1027190) (not b!1027193) (not b!1027195))
(check-sat b_and!32817 (not b_next!20553))
