; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91932 () Bool)

(assert start!91932)

(declare-fun b!1045235 () Bool)

(declare-fun b_free!21137 () Bool)

(declare-fun b_next!21137 () Bool)

(assert (=> b!1045235 (= b_free!21137 (not b_next!21137))))

(declare-fun tp!74667 () Bool)

(declare-fun b_and!33771 () Bool)

(assert (=> b!1045235 (= tp!74667 b_and!33771)))

(declare-fun b!1045234 () Bool)

(declare-fun e!592518 () Bool)

(declare-datatypes ((V!38015 0))(
  ( (V!38016 (val!12479 Int)) )
))
(declare-datatypes ((ValueCell!11725 0))(
  ( (ValueCellFull!11725 (v!15075 V!38015)) (EmptyCell!11725) )
))
(declare-datatypes ((Unit!34136 0))(
  ( (Unit!34137) )
))
(declare-datatypes ((array!65872 0))(
  ( (array!65873 (arr!31679 (Array (_ BitVec 32) (_ BitVec 64))) (size!32215 (_ BitVec 32))) )
))
(declare-datatypes ((array!65874 0))(
  ( (array!65875 (arr!31680 (Array (_ BitVec 32) ValueCell!11725)) (size!32216 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6044 0))(
  ( (LongMapFixedSize!6045 (defaultEntry!6416 Int) (mask!30536 (_ BitVec 32)) (extraKeys!6144 (_ BitVec 32)) (zeroValue!6250 V!38015) (minValue!6250 V!38015) (_size!3077 (_ BitVec 32)) (_keys!11683 array!65872) (_values!6439 array!65874) (_vacant!3077 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15886 0))(
  ( (tuple2!15887 (_1!7953 Unit!34136) (_2!7953 LongMapFixedSize!6044)) )
))
(declare-fun lt!461378 () tuple2!15886)

(assert (=> b!1045234 (= e!592518 (or (not (= (size!32216 (_values!6439 (_2!7953 lt!461378))) (bvadd #b00000000000000000000000000000001 (mask!30536 (_2!7953 lt!461378))))) (not (= (size!32215 (_keys!11683 (_2!7953 lt!461378))) (size!32216 (_values!6439 (_2!7953 lt!461378))))) (bvslt (mask!30536 (_2!7953 lt!461378)) #b00000000000000000000000000000000) (bvsge (extraKeys!6144 (_2!7953 lt!461378)) #b00000000000000000000000000000000)))))

(declare-fun res!696088 () Bool)

(declare-fun e!592520 () Bool)

(assert (=> start!91932 (=> (not res!696088) (not e!592520))))

(declare-fun thiss!1427 () LongMapFixedSize!6044)

(declare-fun valid!2221 (LongMapFixedSize!6044) Bool)

(assert (=> start!91932 (= res!696088 (valid!2221 thiss!1427))))

(assert (=> start!91932 e!592520))

(declare-fun e!592516 () Bool)

(assert (=> start!91932 e!592516))

(assert (=> start!91932 true))

(declare-fun e!592517 () Bool)

(declare-fun tp_is_empty!24857 () Bool)

(declare-fun array_inv!24317 (array!65872) Bool)

(declare-fun array_inv!24318 (array!65874) Bool)

(assert (=> b!1045235 (= e!592516 (and tp!74667 tp_is_empty!24857 (array_inv!24317 (_keys!11683 thiss!1427)) (array_inv!24318 (_values!6439 thiss!1427)) e!592517))))

(declare-fun mapNonEmpty!38924 () Bool)

(declare-fun mapRes!38924 () Bool)

(declare-fun tp!74668 () Bool)

(declare-fun e!592523 () Bool)

(assert (=> mapNonEmpty!38924 (= mapRes!38924 (and tp!74668 e!592523))))

(declare-fun mapValue!38924 () ValueCell!11725)

(declare-fun mapKey!38924 () (_ BitVec 32))

(declare-fun mapRest!38924 () (Array (_ BitVec 32) ValueCell!11725))

(assert (=> mapNonEmpty!38924 (= (arr!31680 (_values!6439 thiss!1427)) (store mapRest!38924 mapKey!38924 mapValue!38924))))

(declare-fun b!1045236 () Bool)

(assert (=> b!1045236 (= e!592523 tp_is_empty!24857)))

(declare-fun b!1045237 () Bool)

(declare-fun e!592522 () Bool)

(assert (=> b!1045237 (= e!592520 e!592522)))

(declare-fun res!696087 () Bool)

(assert (=> b!1045237 (=> (not res!696087) (not e!592522))))

(declare-datatypes ((SeekEntryResult!9846 0))(
  ( (MissingZero!9846 (index!41754 (_ BitVec 32))) (Found!9846 (index!41755 (_ BitVec 32))) (Intermediate!9846 (undefined!10658 Bool) (index!41756 (_ BitVec 32)) (x!93355 (_ BitVec 32))) (Undefined!9846) (MissingVacant!9846 (index!41757 (_ BitVec 32))) )
))
(declare-fun lt!461384 () SeekEntryResult!9846)

(assert (=> b!1045237 (= res!696087 (is-Found!9846 lt!461384))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65872 (_ BitVec 32)) SeekEntryResult!9846)

(assert (=> b!1045237 (= lt!461384 (seekEntry!0 key!909 (_keys!11683 thiss!1427) (mask!30536 thiss!1427)))))

(declare-fun b!1045238 () Bool)

(assert (=> b!1045238 (= e!592522 (not e!592518))))

(declare-fun res!696091 () Bool)

(assert (=> b!1045238 (=> res!696091 e!592518)))

(declare-datatypes ((tuple2!15888 0))(
  ( (tuple2!15889 (_1!7954 (_ BitVec 64)) (_2!7954 V!38015)) )
))
(declare-datatypes ((List!22142 0))(
  ( (Nil!22139) (Cons!22138 (h!23346 tuple2!15888) (t!31413 List!22142)) )
))
(declare-datatypes ((ListLongMap!13903 0))(
  ( (ListLongMap!13904 (toList!6967 List!22142)) )
))
(declare-fun contains!6100 (ListLongMap!13903 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3973 (array!65872 array!65874 (_ BitVec 32) (_ BitVec 32) V!38015 V!38015 (_ BitVec 32) Int) ListLongMap!13903)

(assert (=> b!1045238 (= res!696091 (not (contains!6100 (getCurrentListMap!3973 (_keys!11683 (_2!7953 lt!461378)) (_values!6439 (_2!7953 lt!461378)) (mask!30536 (_2!7953 lt!461378)) (extraKeys!6144 (_2!7953 lt!461378)) (zeroValue!6250 (_2!7953 lt!461378)) (minValue!6250 (_2!7953 lt!461378)) #b00000000000000000000000000000000 (defaultEntry!6416 (_2!7953 lt!461378))) key!909)))))

(declare-fun lt!461382 () array!65874)

(declare-fun lt!461380 () array!65872)

(declare-fun Unit!34138 () Unit!34136)

(declare-fun Unit!34139 () Unit!34136)

(assert (=> b!1045238 (= lt!461378 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3077 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15887 Unit!34138 (LongMapFixedSize!6045 (defaultEntry!6416 thiss!1427) (mask!30536 thiss!1427) (extraKeys!6144 thiss!1427) (zeroValue!6250 thiss!1427) (minValue!6250 thiss!1427) (bvsub (_size!3077 thiss!1427) #b00000000000000000000000000000001) lt!461380 lt!461382 (bvadd #b00000000000000000000000000000001 (_vacant!3077 thiss!1427)))) (tuple2!15887 Unit!34139 (LongMapFixedSize!6045 (defaultEntry!6416 thiss!1427) (mask!30536 thiss!1427) (extraKeys!6144 thiss!1427) (zeroValue!6250 thiss!1427) (minValue!6250 thiss!1427) (bvsub (_size!3077 thiss!1427) #b00000000000000000000000000000001) lt!461380 lt!461382 (_vacant!3077 thiss!1427)))))))

(declare-fun -!543 (ListLongMap!13903 (_ BitVec 64)) ListLongMap!13903)

(assert (=> b!1045238 (= (-!543 (getCurrentListMap!3973 (_keys!11683 thiss!1427) (_values!6439 thiss!1427) (mask!30536 thiss!1427) (extraKeys!6144 thiss!1427) (zeroValue!6250 thiss!1427) (minValue!6250 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6416 thiss!1427)) key!909) (getCurrentListMap!3973 lt!461380 lt!461382 (mask!30536 thiss!1427) (extraKeys!6144 thiss!1427) (zeroValue!6250 thiss!1427) (minValue!6250 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6416 thiss!1427)))))

(declare-fun dynLambda!2017 (Int (_ BitVec 64)) V!38015)

(assert (=> b!1045238 (= lt!461382 (array!65875 (store (arr!31680 (_values!6439 thiss!1427)) (index!41755 lt!461384) (ValueCellFull!11725 (dynLambda!2017 (defaultEntry!6416 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32216 (_values!6439 thiss!1427))))))

(declare-fun lt!461377 () Unit!34136)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!63 (array!65872 array!65874 (_ BitVec 32) (_ BitVec 32) V!38015 V!38015 (_ BitVec 32) (_ BitVec 64) Int) Unit!34136)

(assert (=> b!1045238 (= lt!461377 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!63 (_keys!11683 thiss!1427) (_values!6439 thiss!1427) (mask!30536 thiss!1427) (extraKeys!6144 thiss!1427) (zeroValue!6250 thiss!1427) (minValue!6250 thiss!1427) (index!41755 lt!461384) key!909 (defaultEntry!6416 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65872 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1045238 (not (arrayContainsKey!0 lt!461380 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!461379 () Unit!34136)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65872 (_ BitVec 32) (_ BitVec 64)) Unit!34136)

(assert (=> b!1045238 (= lt!461379 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11683 thiss!1427) (index!41755 lt!461384) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65872 (_ BitVec 32)) Bool)

(assert (=> b!1045238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!461380 (mask!30536 thiss!1427))))

(declare-fun lt!461381 () Unit!34136)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65872 (_ BitVec 32) (_ BitVec 32)) Unit!34136)

(assert (=> b!1045238 (= lt!461381 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11683 thiss!1427) (index!41755 lt!461384) (mask!30536 thiss!1427)))))

(declare-datatypes ((List!22143 0))(
  ( (Nil!22140) (Cons!22139 (h!23347 (_ BitVec 64)) (t!31414 List!22143)) )
))
(declare-fun arrayNoDuplicates!0 (array!65872 (_ BitVec 32) List!22143) Bool)

(assert (=> b!1045238 (arrayNoDuplicates!0 lt!461380 #b00000000000000000000000000000000 Nil!22140)))

(declare-fun lt!461385 () Unit!34136)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65872 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22143) Unit!34136)

(assert (=> b!1045238 (= lt!461385 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11683 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41755 lt!461384) #b00000000000000000000000000000000 Nil!22140))))

(declare-fun arrayCountValidKeys!0 (array!65872 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1045238 (= (arrayCountValidKeys!0 lt!461380 #b00000000000000000000000000000000 (size!32215 (_keys!11683 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11683 thiss!1427) #b00000000000000000000000000000000 (size!32215 (_keys!11683 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1045238 (= lt!461380 (array!65873 (store (arr!31679 (_keys!11683 thiss!1427)) (index!41755 lt!461384) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32215 (_keys!11683 thiss!1427))))))

(declare-fun lt!461383 () Unit!34136)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65872 (_ BitVec 32) (_ BitVec 64)) Unit!34136)

(assert (=> b!1045238 (= lt!461383 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11683 thiss!1427) (index!41755 lt!461384) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!38924 () Bool)

(assert (=> mapIsEmpty!38924 mapRes!38924))

(declare-fun b!1045239 () Bool)

(declare-fun e!592521 () Bool)

(assert (=> b!1045239 (= e!592517 (and e!592521 mapRes!38924))))

(declare-fun condMapEmpty!38924 () Bool)

(declare-fun mapDefault!38924 () ValueCell!11725)

