; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89500 () Bool)

(assert start!89500)

(declare-fun b!1025920 () Bool)

(declare-fun b_free!20463 () Bool)

(declare-fun b_next!20463 () Bool)

(assert (=> b!1025920 (= b_free!20463 (not b_next!20463))))

(declare-fun tp!72435 () Bool)

(declare-fun b_and!32727 () Bool)

(assert (=> b!1025920 (= tp!72435 b_and!32727)))

(declare-fun b!1025917 () Bool)

(declare-fun e!578624 () Bool)

(assert (=> b!1025917 (= e!578624 true)))

(declare-fun lt!451193 () Bool)

(declare-datatypes ((V!37117 0))(
  ( (V!37118 (val!12142 Int)) )
))
(declare-datatypes ((ValueCell!11388 0))(
  ( (ValueCellFull!11388 (v!14712 V!37117)) (EmptyCell!11388) )
))
(declare-datatypes ((array!64400 0))(
  ( (array!64401 (arr!31005 (Array (_ BitVec 32) (_ BitVec 64))) (size!31519 (_ BitVec 32))) )
))
(declare-datatypes ((array!64402 0))(
  ( (array!64403 (arr!31006 (Array (_ BitVec 32) ValueCell!11388)) (size!31520 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5370 0))(
  ( (LongMapFixedSize!5371 (defaultEntry!6037 Int) (mask!29714 (_ BitVec 32)) (extraKeys!5769 (_ BitVec 32)) (zeroValue!5873 V!37117) (minValue!5873 V!37117) (_size!2740 (_ BitVec 32)) (_keys!11181 array!64400) (_values!6060 array!64402) (_vacant!2740 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5370)

(declare-datatypes ((List!21873 0))(
  ( (Nil!21870) (Cons!21869 (h!23067 (_ BitVec 64)) (t!30942 List!21873)) )
))
(declare-fun arrayNoDuplicates!0 (array!64400 (_ BitVec 32) List!21873) Bool)

(assert (=> b!1025917 (= lt!451193 (arrayNoDuplicates!0 (_keys!11181 thiss!1427) #b00000000000000000000000000000000 Nil!21870))))

(declare-fun b!1025918 () Bool)

(declare-fun e!578619 () Bool)

(declare-fun tp_is_empty!24183 () Bool)

(assert (=> b!1025918 (= e!578619 tp_is_empty!24183)))

(declare-fun b!1025919 () Bool)

(declare-fun e!578621 () Bool)

(declare-fun mapRes!37703 () Bool)

(assert (=> b!1025919 (= e!578621 (and e!578619 mapRes!37703))))

(declare-fun condMapEmpty!37703 () Bool)

(declare-fun mapDefault!37703 () ValueCell!11388)

(assert (=> b!1025919 (= condMapEmpty!37703 (= (arr!31006 (_values!6060 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11388)) mapDefault!37703)))))

(declare-fun e!578623 () Bool)

(declare-fun array_inv!23865 (array!64400) Bool)

(declare-fun array_inv!23866 (array!64402) Bool)

(assert (=> b!1025920 (= e!578623 (and tp!72435 tp_is_empty!24183 (array_inv!23865 (_keys!11181 thiss!1427)) (array_inv!23866 (_values!6060 thiss!1427)) e!578621))))

(declare-fun mapNonEmpty!37703 () Bool)

(declare-fun tp!72436 () Bool)

(declare-fun e!578622 () Bool)

(assert (=> mapNonEmpty!37703 (= mapRes!37703 (and tp!72436 e!578622))))

(declare-fun mapRest!37703 () (Array (_ BitVec 32) ValueCell!11388))

(declare-fun mapValue!37703 () ValueCell!11388)

(declare-fun mapKey!37703 () (_ BitVec 32))

(assert (=> mapNonEmpty!37703 (= (arr!31006 (_values!6060 thiss!1427)) (store mapRest!37703 mapKey!37703 mapValue!37703))))

(declare-fun b!1025921 () Bool)

(declare-fun e!578617 () Bool)

(declare-fun e!578620 () Bool)

(assert (=> b!1025921 (= e!578617 e!578620)))

(declare-fun res!686913 () Bool)

(assert (=> b!1025921 (=> (not res!686913) (not e!578620))))

(declare-datatypes ((SeekEntryResult!9620 0))(
  ( (MissingZero!9620 (index!40850 (_ BitVec 32))) (Found!9620 (index!40851 (_ BitVec 32))) (Intermediate!9620 (undefined!10432 Bool) (index!40852 (_ BitVec 32)) (x!91229 (_ BitVec 32))) (Undefined!9620) (MissingVacant!9620 (index!40853 (_ BitVec 32))) )
))
(declare-fun lt!451195 () SeekEntryResult!9620)

(get-info :version)

(assert (=> b!1025921 (= res!686913 ((_ is Found!9620) lt!451195))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64400 (_ BitVec 32)) SeekEntryResult!9620)

(assert (=> b!1025921 (= lt!451195 (seekEntry!0 key!909 (_keys!11181 thiss!1427) (mask!29714 thiss!1427)))))

(declare-fun b!1025922 () Bool)

(assert (=> b!1025922 (= e!578622 tp_is_empty!24183)))

(declare-fun b!1025923 () Bool)

(declare-fun res!686910 () Bool)

(assert (=> b!1025923 (=> (not res!686910) (not e!578617))))

(assert (=> b!1025923 (= res!686910 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025924 () Bool)

(assert (=> b!1025924 (= e!578620 (not e!578624))))

(declare-fun res!686911 () Bool)

(assert (=> b!1025924 (=> res!686911 e!578624)))

(assert (=> b!1025924 (= res!686911 (or (bvslt (index!40851 lt!451195) #b00000000000000000000000000000000) (bvsge (index!40851 lt!451195) (size!31519 (_keys!11181 thiss!1427))) (bvsge (size!31519 (_keys!11181 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!451190 () array!64400)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64400 (_ BitVec 32)) Bool)

(assert (=> b!1025924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451190 (mask!29714 thiss!1427))))

(declare-datatypes ((Unit!33378 0))(
  ( (Unit!33379) )
))
(declare-fun lt!451192 () Unit!33378)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64400 (_ BitVec 32) (_ BitVec 32)) Unit!33378)

(assert (=> b!1025924 (= lt!451192 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11181 thiss!1427) (index!40851 lt!451195) (mask!29714 thiss!1427)))))

(assert (=> b!1025924 (arrayNoDuplicates!0 lt!451190 #b00000000000000000000000000000000 Nil!21870)))

(declare-fun lt!451191 () Unit!33378)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64400 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21873) Unit!33378)

(assert (=> b!1025924 (= lt!451191 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11181 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40851 lt!451195) #b00000000000000000000000000000000 Nil!21870))))

(declare-fun arrayCountValidKeys!0 (array!64400 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025924 (= (arrayCountValidKeys!0 lt!451190 #b00000000000000000000000000000000 (size!31519 (_keys!11181 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11181 thiss!1427) #b00000000000000000000000000000000 (size!31519 (_keys!11181 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025924 (= lt!451190 (array!64401 (store (arr!31005 (_keys!11181 thiss!1427)) (index!40851 lt!451195) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31519 (_keys!11181 thiss!1427))))))

(declare-fun lt!451194 () Unit!33378)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64400 (_ BitVec 32) (_ BitVec 64)) Unit!33378)

(assert (=> b!1025924 (= lt!451194 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11181 thiss!1427) (index!40851 lt!451195) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37703 () Bool)

(assert (=> mapIsEmpty!37703 mapRes!37703))

(declare-fun res!686912 () Bool)

(assert (=> start!89500 (=> (not res!686912) (not e!578617))))

(declare-fun valid!1991 (LongMapFixedSize!5370) Bool)

(assert (=> start!89500 (= res!686912 (valid!1991 thiss!1427))))

(assert (=> start!89500 e!578617))

(assert (=> start!89500 e!578623))

(assert (=> start!89500 true))

(assert (= (and start!89500 res!686912) b!1025923))

(assert (= (and b!1025923 res!686910) b!1025921))

(assert (= (and b!1025921 res!686913) b!1025924))

(assert (= (and b!1025924 (not res!686911)) b!1025917))

(assert (= (and b!1025919 condMapEmpty!37703) mapIsEmpty!37703))

(assert (= (and b!1025919 (not condMapEmpty!37703)) mapNonEmpty!37703))

(assert (= (and mapNonEmpty!37703 ((_ is ValueCellFull!11388) mapValue!37703)) b!1025922))

(assert (= (and b!1025919 ((_ is ValueCellFull!11388) mapDefault!37703)) b!1025918))

(assert (= b!1025920 b!1025919))

(assert (= start!89500 b!1025920))

(declare-fun m!944243 () Bool)

(assert (=> b!1025921 m!944243))

(declare-fun m!944245 () Bool)

(assert (=> b!1025917 m!944245))

(declare-fun m!944247 () Bool)

(assert (=> mapNonEmpty!37703 m!944247))

(declare-fun m!944249 () Bool)

(assert (=> b!1025920 m!944249))

(declare-fun m!944251 () Bool)

(assert (=> b!1025920 m!944251))

(declare-fun m!944253 () Bool)

(assert (=> start!89500 m!944253))

(declare-fun m!944255 () Bool)

(assert (=> b!1025924 m!944255))

(declare-fun m!944257 () Bool)

(assert (=> b!1025924 m!944257))

(declare-fun m!944259 () Bool)

(assert (=> b!1025924 m!944259))

(declare-fun m!944261 () Bool)

(assert (=> b!1025924 m!944261))

(declare-fun m!944263 () Bool)

(assert (=> b!1025924 m!944263))

(declare-fun m!944265 () Bool)

(assert (=> b!1025924 m!944265))

(declare-fun m!944267 () Bool)

(assert (=> b!1025924 m!944267))

(declare-fun m!944269 () Bool)

(assert (=> b!1025924 m!944269))

(check-sat b_and!32727 (not b_next!20463) (not b!1025917) (not b!1025920) (not b!1025921) tp_is_empty!24183 (not start!89500) (not mapNonEmpty!37703) (not b!1025924))
(check-sat b_and!32727 (not b_next!20463))
