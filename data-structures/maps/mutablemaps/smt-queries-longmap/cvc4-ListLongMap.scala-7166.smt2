; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91468 () Bool)

(assert start!91468)

(declare-fun b!1041934 () Bool)

(declare-fun b_free!21053 () Bool)

(declare-fun b_next!21053 () Bool)

(assert (=> b!1041934 (= b_free!21053 (not b_next!21053))))

(declare-fun tp!74379 () Bool)

(declare-fun b_and!33603 () Bool)

(assert (=> b!1041934 (= tp!74379 b_and!33603)))

(declare-fun mapIsEmpty!38761 () Bool)

(declare-fun mapRes!38761 () Bool)

(assert (=> mapIsEmpty!38761 mapRes!38761))

(declare-fun b!1041928 () Bool)

(declare-fun e!590201 () Bool)

(declare-fun tp_is_empty!24773 () Bool)

(assert (=> b!1041928 (= e!590201 tp_is_empty!24773)))

(declare-fun b!1041929 () Bool)

(declare-fun e!590196 () Bool)

(declare-fun e!590200 () Bool)

(assert (=> b!1041929 (= e!590196 (not e!590200))))

(declare-fun res!694430 () Bool)

(assert (=> b!1041929 (=> res!694430 e!590200)))

(declare-datatypes ((V!37903 0))(
  ( (V!37904 (val!12437 Int)) )
))
(declare-datatypes ((ValueCell!11683 0))(
  ( (ValueCellFull!11683 (v!15028 V!37903)) (EmptyCell!11683) )
))
(declare-datatypes ((array!65680 0))(
  ( (array!65681 (arr!31595 (Array (_ BitVec 32) (_ BitVec 64))) (size!32130 (_ BitVec 32))) )
))
(declare-datatypes ((array!65682 0))(
  ( (array!65683 (arr!31596 (Array (_ BitVec 32) ValueCell!11683)) (size!32131 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5960 0))(
  ( (LongMapFixedSize!5961 (defaultEntry!6362 Int) (mask!30403 (_ BitVec 32)) (extraKeys!6090 (_ BitVec 32)) (zeroValue!6196 V!37903) (minValue!6196 V!37903) (_size!3035 (_ BitVec 32)) (_keys!11602 array!65680) (_values!6385 array!65682) (_vacant!3035 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5960)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1041929 (= res!694430 (not (validMask!0 (mask!30403 thiss!1427))))))

(declare-fun lt!459253 () array!65680)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1041929 (not (arrayContainsKey!0 lt!459253 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9814 0))(
  ( (MissingZero!9814 (index!41626 (_ BitVec 32))) (Found!9814 (index!41627 (_ BitVec 32))) (Intermediate!9814 (undefined!10626 Bool) (index!41628 (_ BitVec 32)) (x!93020 (_ BitVec 32))) (Undefined!9814) (MissingVacant!9814 (index!41629 (_ BitVec 32))) )
))
(declare-fun lt!459250 () SeekEntryResult!9814)

(declare-datatypes ((Unit!34044 0))(
  ( (Unit!34045) )
))
(declare-fun lt!459252 () Unit!34044)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65680 (_ BitVec 32) (_ BitVec 64)) Unit!34044)

(assert (=> b!1041929 (= lt!459252 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11602 thiss!1427) (index!41627 lt!459250) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65680 (_ BitVec 32)) Bool)

(assert (=> b!1041929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459253 (mask!30403 thiss!1427))))

(declare-fun lt!459249 () Unit!34044)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65680 (_ BitVec 32) (_ BitVec 32)) Unit!34044)

(assert (=> b!1041929 (= lt!459249 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11602 thiss!1427) (index!41627 lt!459250) (mask!30403 thiss!1427)))))

(declare-datatypes ((List!22098 0))(
  ( (Nil!22095) (Cons!22094 (h!23301 (_ BitVec 64)) (t!31319 List!22098)) )
))
(declare-fun arrayNoDuplicates!0 (array!65680 (_ BitVec 32) List!22098) Bool)

(assert (=> b!1041929 (arrayNoDuplicates!0 lt!459253 #b00000000000000000000000000000000 Nil!22095)))

(declare-fun lt!459254 () Unit!34044)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65680 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22098) Unit!34044)

(assert (=> b!1041929 (= lt!459254 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11602 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41627 lt!459250) #b00000000000000000000000000000000 Nil!22095))))

(declare-fun arrayCountValidKeys!0 (array!65680 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1041929 (= (arrayCountValidKeys!0 lt!459253 #b00000000000000000000000000000000 (size!32130 (_keys!11602 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11602 thiss!1427) #b00000000000000000000000000000000 (size!32130 (_keys!11602 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1041929 (= lt!459253 (array!65681 (store (arr!31595 (_keys!11602 thiss!1427)) (index!41627 lt!459250) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32130 (_keys!11602 thiss!1427))))))

(declare-fun lt!459251 () Unit!34044)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65680 (_ BitVec 32) (_ BitVec 64)) Unit!34044)

(assert (=> b!1041929 (= lt!459251 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11602 thiss!1427) (index!41627 lt!459250) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!694431 () Bool)

(declare-fun e!590199 () Bool)

(assert (=> start!91468 (=> (not res!694431) (not e!590199))))

(declare-fun valid!2191 (LongMapFixedSize!5960) Bool)

(assert (=> start!91468 (= res!694431 (valid!2191 thiss!1427))))

(assert (=> start!91468 e!590199))

(declare-fun e!590202 () Bool)

(assert (=> start!91468 e!590202))

(assert (=> start!91468 true))

(declare-fun mapNonEmpty!38761 () Bool)

(declare-fun tp!74378 () Bool)

(declare-fun e!590203 () Bool)

(assert (=> mapNonEmpty!38761 (= mapRes!38761 (and tp!74378 e!590203))))

(declare-fun mapValue!38761 () ValueCell!11683)

(declare-fun mapKey!38761 () (_ BitVec 32))

(declare-fun mapRest!38761 () (Array (_ BitVec 32) ValueCell!11683))

(assert (=> mapNonEmpty!38761 (= (arr!31596 (_values!6385 thiss!1427)) (store mapRest!38761 mapKey!38761 mapValue!38761))))

(declare-fun b!1041930 () Bool)

(assert (=> b!1041930 (= e!590203 tp_is_empty!24773)))

(declare-fun b!1041931 () Bool)

(assert (=> b!1041931 (= e!590200 (or (not (= (size!32131 (_values!6385 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30403 thiss!1427)))) (not (= (size!32130 (_keys!11602 thiss!1427)) (size!32131 (_values!6385 thiss!1427)))) (bvslt (mask!30403 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6090 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!6090 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1041932 () Bool)

(declare-fun e!590197 () Bool)

(assert (=> b!1041932 (= e!590197 (and e!590201 mapRes!38761))))

(declare-fun condMapEmpty!38761 () Bool)

(declare-fun mapDefault!38761 () ValueCell!11683)

