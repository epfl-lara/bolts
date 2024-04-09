; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89446 () Bool)

(assert start!89446)

(declare-fun b!1025071 () Bool)

(declare-fun b_free!20409 () Bool)

(declare-fun b_next!20409 () Bool)

(assert (=> b!1025071 (= b_free!20409 (not b_next!20409))))

(declare-fun tp!72274 () Bool)

(declare-fun b_and!32673 () Bool)

(assert (=> b!1025071 (= tp!72274 b_and!32673)))

(declare-fun b!1025068 () Bool)

(declare-fun e!577971 () Bool)

(declare-fun e!577975 () Bool)

(declare-fun mapRes!37622 () Bool)

(assert (=> b!1025068 (= e!577971 (and e!577975 mapRes!37622))))

(declare-fun condMapEmpty!37622 () Bool)

(declare-datatypes ((V!37045 0))(
  ( (V!37046 (val!12115 Int)) )
))
(declare-datatypes ((ValueCell!11361 0))(
  ( (ValueCellFull!11361 (v!14685 V!37045)) (EmptyCell!11361) )
))
(declare-datatypes ((array!64292 0))(
  ( (array!64293 (arr!30951 (Array (_ BitVec 32) (_ BitVec 64))) (size!31465 (_ BitVec 32))) )
))
(declare-datatypes ((array!64294 0))(
  ( (array!64295 (arr!30952 (Array (_ BitVec 32) ValueCell!11361)) (size!31466 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5316 0))(
  ( (LongMapFixedSize!5317 (defaultEntry!6010 Int) (mask!29669 (_ BitVec 32)) (extraKeys!5742 (_ BitVec 32)) (zeroValue!5846 V!37045) (minValue!5846 V!37045) (_size!2713 (_ BitVec 32)) (_keys!11154 array!64292) (_values!6033 array!64294) (_vacant!2713 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5316)

(declare-fun mapDefault!37622 () ValueCell!11361)

(assert (=> b!1025068 (= condMapEmpty!37622 (= (arr!30952 (_values!6033 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11361)) mapDefault!37622)))))

(declare-fun b!1025069 () Bool)

(declare-fun res!686387 () Bool)

(declare-fun e!577976 () Bool)

(assert (=> b!1025069 (=> res!686387 e!577976)))

(declare-datatypes ((List!21852 0))(
  ( (Nil!21849) (Cons!21848 (h!23046 (_ BitVec 64)) (t!30921 List!21852)) )
))
(declare-fun noDuplicate!1488 (List!21852) Bool)

(assert (=> b!1025069 (= res!686387 (not (noDuplicate!1488 Nil!21849)))))

(declare-fun b!1025070 () Bool)

(declare-fun res!686385 () Bool)

(declare-fun e!577973 () Bool)

(assert (=> b!1025070 (=> (not res!686385) (not e!577973))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025070 (= res!686385 (not (= key!909 (bvneg key!909))))))

(declare-fun e!577969 () Bool)

(declare-fun tp_is_empty!24129 () Bool)

(declare-fun array_inv!23831 (array!64292) Bool)

(declare-fun array_inv!23832 (array!64294) Bool)

(assert (=> b!1025071 (= e!577969 (and tp!72274 tp_is_empty!24129 (array_inv!23831 (_keys!11154 thiss!1427)) (array_inv!23832 (_values!6033 thiss!1427)) e!577971))))

(declare-fun b!1025072 () Bool)

(assert (=> b!1025072 (= e!577976 true)))

(declare-fun lt!450781 () Bool)

(declare-fun arrayNoDuplicates!0 (array!64292 (_ BitVec 32) List!21852) Bool)

(assert (=> b!1025072 (= lt!450781 (arrayNoDuplicates!0 (_keys!11154 thiss!1427) #b00000000000000000000000000000000 Nil!21849))))

(declare-fun res!686386 () Bool)

(assert (=> start!89446 (=> (not res!686386) (not e!577973))))

(declare-fun valid!1975 (LongMapFixedSize!5316) Bool)

(assert (=> start!89446 (= res!686386 (valid!1975 thiss!1427))))

(assert (=> start!89446 e!577973))

(assert (=> start!89446 e!577969))

(assert (=> start!89446 true))

(declare-fun mapIsEmpty!37622 () Bool)

(assert (=> mapIsEmpty!37622 mapRes!37622))

(declare-fun b!1025073 () Bool)

(declare-fun res!686391 () Bool)

(assert (=> b!1025073 (=> res!686391 e!577976)))

(declare-fun contains!5979 (List!21852 (_ BitVec 64)) Bool)

(assert (=> b!1025073 (= res!686391 (contains!5979 Nil!21849 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1025074 () Bool)

(assert (=> b!1025074 (= e!577975 tp_is_empty!24129)))

(declare-fun b!1025075 () Bool)

(declare-fun res!686389 () Bool)

(assert (=> b!1025075 (=> res!686389 e!577976)))

(assert (=> b!1025075 (= res!686389 (contains!5979 Nil!21849 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1025076 () Bool)

(declare-fun e!577974 () Bool)

(assert (=> b!1025076 (= e!577974 (not e!577976))))

(declare-fun res!686388 () Bool)

(assert (=> b!1025076 (=> res!686388 e!577976)))

(assert (=> b!1025076 (= res!686388 (or (bvsge (size!31465 (_keys!11154 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31465 (_keys!11154 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9600 0))(
  ( (MissingZero!9600 (index!40770 (_ BitVec 32))) (Found!9600 (index!40771 (_ BitVec 32))) (Intermediate!9600 (undefined!10412 Bool) (index!40772 (_ BitVec 32)) (x!91137 (_ BitVec 32))) (Undefined!9600) (MissingVacant!9600 (index!40773 (_ BitVec 32))) )
))
(declare-fun lt!450779 () SeekEntryResult!9600)

(declare-fun arrayCountValidKeys!0 (array!64292 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025076 (= (arrayCountValidKeys!0 (array!64293 (store (arr!30951 (_keys!11154 thiss!1427)) (index!40771 lt!450779) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31465 (_keys!11154 thiss!1427))) #b00000000000000000000000000000000 (size!31465 (_keys!11154 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11154 thiss!1427) #b00000000000000000000000000000000 (size!31465 (_keys!11154 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33342 0))(
  ( (Unit!33343) )
))
(declare-fun lt!450780 () Unit!33342)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64292 (_ BitVec 32) (_ BitVec 64)) Unit!33342)

(assert (=> b!1025076 (= lt!450780 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11154 thiss!1427) (index!40771 lt!450779) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1025077 () Bool)

(declare-fun e!577972 () Bool)

(assert (=> b!1025077 (= e!577972 tp_is_empty!24129)))

(declare-fun mapNonEmpty!37622 () Bool)

(declare-fun tp!72273 () Bool)

(assert (=> mapNonEmpty!37622 (= mapRes!37622 (and tp!72273 e!577972))))

(declare-fun mapRest!37622 () (Array (_ BitVec 32) ValueCell!11361))

(declare-fun mapKey!37622 () (_ BitVec 32))

(declare-fun mapValue!37622 () ValueCell!11361)

(assert (=> mapNonEmpty!37622 (= (arr!30952 (_values!6033 thiss!1427)) (store mapRest!37622 mapKey!37622 mapValue!37622))))

(declare-fun b!1025078 () Bool)

(assert (=> b!1025078 (= e!577973 e!577974)))

(declare-fun res!686390 () Bool)

(assert (=> b!1025078 (=> (not res!686390) (not e!577974))))

(get-info :version)

(assert (=> b!1025078 (= res!686390 ((_ is Found!9600) lt!450779))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64292 (_ BitVec 32)) SeekEntryResult!9600)

(assert (=> b!1025078 (= lt!450779 (seekEntry!0 key!909 (_keys!11154 thiss!1427) (mask!29669 thiss!1427)))))

(assert (= (and start!89446 res!686386) b!1025070))

(assert (= (and b!1025070 res!686385) b!1025078))

(assert (= (and b!1025078 res!686390) b!1025076))

(assert (= (and b!1025076 (not res!686388)) b!1025069))

(assert (= (and b!1025069 (not res!686387)) b!1025075))

(assert (= (and b!1025075 (not res!686389)) b!1025073))

(assert (= (and b!1025073 (not res!686391)) b!1025072))

(assert (= (and b!1025068 condMapEmpty!37622) mapIsEmpty!37622))

(assert (= (and b!1025068 (not condMapEmpty!37622)) mapNonEmpty!37622))

(assert (= (and mapNonEmpty!37622 ((_ is ValueCellFull!11361) mapValue!37622)) b!1025077))

(assert (= (and b!1025068 ((_ is ValueCellFull!11361) mapDefault!37622)) b!1025074))

(assert (= b!1025071 b!1025068))

(assert (= start!89446 b!1025071))

(declare-fun m!943407 () Bool)

(assert (=> mapNonEmpty!37622 m!943407))

(declare-fun m!943409 () Bool)

(assert (=> start!89446 m!943409))

(declare-fun m!943411 () Bool)

(assert (=> b!1025069 m!943411))

(declare-fun m!943413 () Bool)

(assert (=> b!1025075 m!943413))

(declare-fun m!943415 () Bool)

(assert (=> b!1025072 m!943415))

(declare-fun m!943417 () Bool)

(assert (=> b!1025071 m!943417))

(declare-fun m!943419 () Bool)

(assert (=> b!1025071 m!943419))

(declare-fun m!943421 () Bool)

(assert (=> b!1025078 m!943421))

(declare-fun m!943423 () Bool)

(assert (=> b!1025076 m!943423))

(declare-fun m!943425 () Bool)

(assert (=> b!1025076 m!943425))

(declare-fun m!943427 () Bool)

(assert (=> b!1025076 m!943427))

(declare-fun m!943429 () Bool)

(assert (=> b!1025076 m!943429))

(declare-fun m!943431 () Bool)

(assert (=> b!1025073 m!943431))

(check-sat (not mapNonEmpty!37622) (not b!1025075) (not b!1025078) (not b_next!20409) (not b!1025073) (not start!89446) (not b!1025076) (not b!1025069) tp_is_empty!24129 (not b!1025072) b_and!32673 (not b!1025071))
(check-sat b_and!32673 (not b_next!20409))
