; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89494 () Bool)

(assert start!89494)

(declare-fun b!1025850 () Bool)

(declare-fun b_free!20457 () Bool)

(declare-fun b_next!20457 () Bool)

(assert (=> b!1025850 (= b_free!20457 (not b_next!20457))))

(declare-fun tp!72417 () Bool)

(declare-fun b_and!32721 () Bool)

(assert (=> b!1025850 (= tp!72417 b_and!32721)))

(declare-fun b!1025845 () Bool)

(declare-fun e!578551 () Bool)

(declare-fun tp_is_empty!24177 () Bool)

(assert (=> b!1025845 (= e!578551 tp_is_empty!24177)))

(declare-fun b!1025846 () Bool)

(declare-fun e!578549 () Bool)

(assert (=> b!1025846 (= e!578549 tp_is_empty!24177)))

(declare-fun b!1025847 () Bool)

(declare-fun e!578547 () Bool)

(assert (=> b!1025847 (= e!578547 true)))

(declare-fun lt!451140 () Bool)

(declare-datatypes ((V!37109 0))(
  ( (V!37110 (val!12139 Int)) )
))
(declare-datatypes ((ValueCell!11385 0))(
  ( (ValueCellFull!11385 (v!14709 V!37109)) (EmptyCell!11385) )
))
(declare-datatypes ((array!64388 0))(
  ( (array!64389 (arr!30999 (Array (_ BitVec 32) (_ BitVec 64))) (size!31513 (_ BitVec 32))) )
))
(declare-datatypes ((array!64390 0))(
  ( (array!64391 (arr!31000 (Array (_ BitVec 32) ValueCell!11385)) (size!31514 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5364 0))(
  ( (LongMapFixedSize!5365 (defaultEntry!6034 Int) (mask!29709 (_ BitVec 32)) (extraKeys!5766 (_ BitVec 32)) (zeroValue!5870 V!37109) (minValue!5870 V!37109) (_size!2737 (_ BitVec 32)) (_keys!11178 array!64388) (_values!6057 array!64390) (_vacant!2737 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5364)

(declare-datatypes ((List!21871 0))(
  ( (Nil!21868) (Cons!21867 (h!23065 (_ BitVec 64)) (t!30940 List!21871)) )
))
(declare-fun arrayNoDuplicates!0 (array!64388 (_ BitVec 32) List!21871) Bool)

(assert (=> b!1025847 (= lt!451140 (arrayNoDuplicates!0 (_keys!11178 thiss!1427) #b00000000000000000000000000000000 Nil!21868))))

(declare-fun b!1025848 () Bool)

(declare-fun e!578545 () Bool)

(declare-fun mapRes!37694 () Bool)

(assert (=> b!1025848 (= e!578545 (and e!578551 mapRes!37694))))

(declare-fun condMapEmpty!37694 () Bool)

(declare-fun mapDefault!37694 () ValueCell!11385)

(assert (=> b!1025848 (= condMapEmpty!37694 (= (arr!31000 (_values!6057 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11385)) mapDefault!37694)))))

(declare-fun mapIsEmpty!37694 () Bool)

(assert (=> mapIsEmpty!37694 mapRes!37694))

(declare-fun e!578552 () Bool)

(declare-fun array_inv!23861 (array!64388) Bool)

(declare-fun array_inv!23862 (array!64390) Bool)

(assert (=> b!1025850 (= e!578552 (and tp!72417 tp_is_empty!24177 (array_inv!23861 (_keys!11178 thiss!1427)) (array_inv!23862 (_values!6057 thiss!1427)) e!578545))))

(declare-fun b!1025851 () Bool)

(declare-fun e!578550 () Bool)

(assert (=> b!1025851 (= e!578550 (not e!578547))))

(declare-fun res!686874 () Bool)

(assert (=> b!1025851 (=> res!686874 e!578547)))

(declare-datatypes ((SeekEntryResult!9618 0))(
  ( (MissingZero!9618 (index!40842 (_ BitVec 32))) (Found!9618 (index!40843 (_ BitVec 32))) (Intermediate!9618 (undefined!10430 Bool) (index!40844 (_ BitVec 32)) (x!91219 (_ BitVec 32))) (Undefined!9618) (MissingVacant!9618 (index!40845 (_ BitVec 32))) )
))
(declare-fun lt!451139 () SeekEntryResult!9618)

(assert (=> b!1025851 (= res!686874 (or (bvslt (index!40843 lt!451139) #b00000000000000000000000000000000) (bvsge (index!40843 lt!451139) (size!31513 (_keys!11178 thiss!1427))) (bvsge (size!31513 (_keys!11178 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!451138 () array!64388)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64388 (_ BitVec 32)) Bool)

(assert (=> b!1025851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451138 (mask!29709 thiss!1427))))

(declare-datatypes ((Unit!33374 0))(
  ( (Unit!33375) )
))
(declare-fun lt!451141 () Unit!33374)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64388 (_ BitVec 32) (_ BitVec 32)) Unit!33374)

(assert (=> b!1025851 (= lt!451141 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11178 thiss!1427) (index!40843 lt!451139) (mask!29709 thiss!1427)))))

(assert (=> b!1025851 (arrayNoDuplicates!0 lt!451138 #b00000000000000000000000000000000 Nil!21868)))

(declare-fun lt!451137 () Unit!33374)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64388 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21871) Unit!33374)

(assert (=> b!1025851 (= lt!451137 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11178 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40843 lt!451139) #b00000000000000000000000000000000 Nil!21868))))

(declare-fun arrayCountValidKeys!0 (array!64388 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025851 (= (arrayCountValidKeys!0 lt!451138 #b00000000000000000000000000000000 (size!31513 (_keys!11178 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11178 thiss!1427) #b00000000000000000000000000000000 (size!31513 (_keys!11178 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025851 (= lt!451138 (array!64389 (store (arr!30999 (_keys!11178 thiss!1427)) (index!40843 lt!451139) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31513 (_keys!11178 thiss!1427))))))

(declare-fun lt!451136 () Unit!33374)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64388 (_ BitVec 32) (_ BitVec 64)) Unit!33374)

(assert (=> b!1025851 (= lt!451136 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11178 thiss!1427) (index!40843 lt!451139) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!686875 () Bool)

(declare-fun e!578548 () Bool)

(assert (=> start!89494 (=> (not res!686875) (not e!578548))))

(declare-fun valid!1989 (LongMapFixedSize!5364) Bool)

(assert (=> start!89494 (= res!686875 (valid!1989 thiss!1427))))

(assert (=> start!89494 e!578548))

(assert (=> start!89494 e!578552))

(assert (=> start!89494 true))

(declare-fun b!1025849 () Bool)

(assert (=> b!1025849 (= e!578548 e!578550)))

(declare-fun res!686876 () Bool)

(assert (=> b!1025849 (=> (not res!686876) (not e!578550))))

(get-info :version)

(assert (=> b!1025849 (= res!686876 ((_ is Found!9618) lt!451139))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64388 (_ BitVec 32)) SeekEntryResult!9618)

(assert (=> b!1025849 (= lt!451139 (seekEntry!0 key!909 (_keys!11178 thiss!1427) (mask!29709 thiss!1427)))))

(declare-fun b!1025852 () Bool)

(declare-fun res!686877 () Bool)

(assert (=> b!1025852 (=> (not res!686877) (not e!578548))))

(assert (=> b!1025852 (= res!686877 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!37694 () Bool)

(declare-fun tp!72418 () Bool)

(assert (=> mapNonEmpty!37694 (= mapRes!37694 (and tp!72418 e!578549))))

(declare-fun mapKey!37694 () (_ BitVec 32))

(declare-fun mapRest!37694 () (Array (_ BitVec 32) ValueCell!11385))

(declare-fun mapValue!37694 () ValueCell!11385)

(assert (=> mapNonEmpty!37694 (= (arr!31000 (_values!6057 thiss!1427)) (store mapRest!37694 mapKey!37694 mapValue!37694))))

(assert (= (and start!89494 res!686875) b!1025852))

(assert (= (and b!1025852 res!686877) b!1025849))

(assert (= (and b!1025849 res!686876) b!1025851))

(assert (= (and b!1025851 (not res!686874)) b!1025847))

(assert (= (and b!1025848 condMapEmpty!37694) mapIsEmpty!37694))

(assert (= (and b!1025848 (not condMapEmpty!37694)) mapNonEmpty!37694))

(assert (= (and mapNonEmpty!37694 ((_ is ValueCellFull!11385) mapValue!37694)) b!1025846))

(assert (= (and b!1025848 ((_ is ValueCellFull!11385) mapDefault!37694)) b!1025845))

(assert (= b!1025850 b!1025848))

(assert (= start!89494 b!1025850))

(declare-fun m!944159 () Bool)

(assert (=> b!1025850 m!944159))

(declare-fun m!944161 () Bool)

(assert (=> b!1025850 m!944161))

(declare-fun m!944163 () Bool)

(assert (=> b!1025847 m!944163))

(declare-fun m!944165 () Bool)

(assert (=> b!1025851 m!944165))

(declare-fun m!944167 () Bool)

(assert (=> b!1025851 m!944167))

(declare-fun m!944169 () Bool)

(assert (=> b!1025851 m!944169))

(declare-fun m!944171 () Bool)

(assert (=> b!1025851 m!944171))

(declare-fun m!944173 () Bool)

(assert (=> b!1025851 m!944173))

(declare-fun m!944175 () Bool)

(assert (=> b!1025851 m!944175))

(declare-fun m!944177 () Bool)

(assert (=> b!1025851 m!944177))

(declare-fun m!944179 () Bool)

(assert (=> b!1025851 m!944179))

(declare-fun m!944181 () Bool)

(assert (=> start!89494 m!944181))

(declare-fun m!944183 () Bool)

(assert (=> mapNonEmpty!37694 m!944183))

(declare-fun m!944185 () Bool)

(assert (=> b!1025849 m!944185))

(check-sat (not b!1025850) (not mapNonEmpty!37694) (not b!1025847) (not b!1025851) (not b_next!20457) (not start!89494) tp_is_empty!24177 b_and!32721 (not b!1025849))
(check-sat b_and!32721 (not b_next!20457))
