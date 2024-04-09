; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91700 () Bool)

(assert start!91700)

(declare-fun b!1043470 () Bool)

(declare-fun b_free!21101 () Bool)

(declare-fun b_next!21101 () Bool)

(assert (=> b!1043470 (= b_free!21101 (not b_next!21101))))

(declare-fun tp!74541 () Bool)

(declare-fun b_and!33655 () Bool)

(assert (=> b!1043470 (= tp!74541 b_and!33655)))

(declare-fun b!1043469 () Bool)

(declare-fun e!591282 () Bool)

(declare-fun tp_is_empty!24821 () Bool)

(assert (=> b!1043469 (= e!591282 tp_is_empty!24821)))

(declare-fun e!591285 () Bool)

(declare-datatypes ((V!37967 0))(
  ( (V!37968 (val!12461 Int)) )
))
(declare-datatypes ((ValueCell!11707 0))(
  ( (ValueCellFull!11707 (v!15053 V!37967)) (EmptyCell!11707) )
))
(declare-datatypes ((array!65788 0))(
  ( (array!65789 (arr!31643 (Array (_ BitVec 32) (_ BitVec 64))) (size!32179 (_ BitVec 32))) )
))
(declare-datatypes ((array!65790 0))(
  ( (array!65791 (arr!31644 (Array (_ BitVec 32) ValueCell!11707)) (size!32180 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6008 0))(
  ( (LongMapFixedSize!6009 (defaultEntry!6386 Int) (mask!30472 (_ BitVec 32)) (extraKeys!6114 (_ BitVec 32)) (zeroValue!6220 V!37967) (minValue!6220 V!37967) (_size!3059 (_ BitVec 32)) (_keys!11641 array!65788) (_values!6409 array!65790) (_vacant!3059 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6008)

(declare-fun e!591283 () Bool)

(declare-fun array_inv!24291 (array!65788) Bool)

(declare-fun array_inv!24292 (array!65790) Bool)

(assert (=> b!1043470 (= e!591285 (and tp!74541 tp_is_empty!24821 (array_inv!24291 (_keys!11641 thiss!1427)) (array_inv!24292 (_values!6409 thiss!1427)) e!591283))))

(declare-fun b!1043471 () Bool)

(declare-fun e!591284 () Bool)

(assert (=> b!1043471 (= e!591284 tp_is_empty!24821)))

(declare-fun b!1043472 () Bool)

(declare-fun e!591280 () Bool)

(declare-fun e!591286 () Bool)

(assert (=> b!1043472 (= e!591280 e!591286)))

(declare-fun res!695258 () Bool)

(assert (=> b!1043472 (=> (not res!695258) (not e!591286))))

(declare-datatypes ((SeekEntryResult!9832 0))(
  ( (MissingZero!9832 (index!41698 (_ BitVec 32))) (Found!9832 (index!41699 (_ BitVec 32))) (Intermediate!9832 (undefined!10644 Bool) (index!41700 (_ BitVec 32)) (x!93165 (_ BitVec 32))) (Undefined!9832) (MissingVacant!9832 (index!41701 (_ BitVec 32))) )
))
(declare-fun lt!459995 () SeekEntryResult!9832)

(assert (=> b!1043472 (= res!695258 (is-Found!9832 lt!459995))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65788 (_ BitVec 32)) SeekEntryResult!9832)

(assert (=> b!1043472 (= lt!459995 (seekEntry!0 key!909 (_keys!11641 thiss!1427) (mask!30472 thiss!1427)))))

(declare-fun mapIsEmpty!38852 () Bool)

(declare-fun mapRes!38852 () Bool)

(assert (=> mapIsEmpty!38852 mapRes!38852))

(declare-fun b!1043473 () Bool)

(assert (=> b!1043473 (= e!591286 (not (and (bvsge (index!41699 lt!459995) #b00000000000000000000000000000000) (bvslt (index!41699 lt!459995) (size!32179 (_keys!11641 thiss!1427))))))))

(declare-fun lt!459991 () array!65788)

(declare-datatypes ((tuple2!15844 0))(
  ( (tuple2!15845 (_1!7932 (_ BitVec 64)) (_2!7932 V!37967)) )
))
(declare-datatypes ((List!22120 0))(
  ( (Nil!22117) (Cons!22116 (h!23324 tuple2!15844) (t!31347 List!22120)) )
))
(declare-datatypes ((ListLongMap!13881 0))(
  ( (ListLongMap!13882 (toList!6956 List!22120)) )
))
(declare-fun -!532 (ListLongMap!13881 (_ BitVec 64)) ListLongMap!13881)

(declare-fun getCurrentListMap!3962 (array!65788 array!65790 (_ BitVec 32) (_ BitVec 32) V!37967 V!37967 (_ BitVec 32) Int) ListLongMap!13881)

(declare-fun dynLambda!2006 (Int (_ BitVec 64)) V!37967)

(assert (=> b!1043473 (= (-!532 (getCurrentListMap!3962 (_keys!11641 thiss!1427) (_values!6409 thiss!1427) (mask!30472 thiss!1427) (extraKeys!6114 thiss!1427) (zeroValue!6220 thiss!1427) (minValue!6220 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6386 thiss!1427)) key!909) (getCurrentListMap!3962 lt!459991 (array!65791 (store (arr!31644 (_values!6409 thiss!1427)) (index!41699 lt!459995) (ValueCellFull!11707 (dynLambda!2006 (defaultEntry!6386 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32180 (_values!6409 thiss!1427))) (mask!30472 thiss!1427) (extraKeys!6114 thiss!1427) (zeroValue!6220 thiss!1427) (minValue!6220 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6386 thiss!1427)))))

(declare-datatypes ((Unit!34074 0))(
  ( (Unit!34075) )
))
(declare-fun lt!459989 () Unit!34074)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!52 (array!65788 array!65790 (_ BitVec 32) (_ BitVec 32) V!37967 V!37967 (_ BitVec 32) (_ BitVec 64) Int) Unit!34074)

(assert (=> b!1043473 (= lt!459989 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!52 (_keys!11641 thiss!1427) (_values!6409 thiss!1427) (mask!30472 thiss!1427) (extraKeys!6114 thiss!1427) (zeroValue!6220 thiss!1427) (minValue!6220 thiss!1427) (index!41699 lt!459995) key!909 (defaultEntry!6386 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65788 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1043473 (not (arrayContainsKey!0 lt!459991 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!459994 () Unit!34074)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65788 (_ BitVec 32) (_ BitVec 64)) Unit!34074)

(assert (=> b!1043473 (= lt!459994 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11641 thiss!1427) (index!41699 lt!459995) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65788 (_ BitVec 32)) Bool)

(assert (=> b!1043473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459991 (mask!30472 thiss!1427))))

(declare-fun lt!459993 () Unit!34074)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65788 (_ BitVec 32) (_ BitVec 32)) Unit!34074)

(assert (=> b!1043473 (= lt!459993 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11641 thiss!1427) (index!41699 lt!459995) (mask!30472 thiss!1427)))))

(declare-datatypes ((List!22121 0))(
  ( (Nil!22118) (Cons!22117 (h!23325 (_ BitVec 64)) (t!31348 List!22121)) )
))
(declare-fun arrayNoDuplicates!0 (array!65788 (_ BitVec 32) List!22121) Bool)

(assert (=> b!1043473 (arrayNoDuplicates!0 lt!459991 #b00000000000000000000000000000000 Nil!22118)))

(declare-fun lt!459990 () Unit!34074)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65788 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22121) Unit!34074)

(assert (=> b!1043473 (= lt!459990 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11641 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41699 lt!459995) #b00000000000000000000000000000000 Nil!22118))))

(declare-fun arrayCountValidKeys!0 (array!65788 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1043473 (= (arrayCountValidKeys!0 lt!459991 #b00000000000000000000000000000000 (size!32179 (_keys!11641 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11641 thiss!1427) #b00000000000000000000000000000000 (size!32179 (_keys!11641 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1043473 (= lt!459991 (array!65789 (store (arr!31643 (_keys!11641 thiss!1427)) (index!41699 lt!459995) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32179 (_keys!11641 thiss!1427))))))

(declare-fun lt!459992 () Unit!34074)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65788 (_ BitVec 32) (_ BitVec 64)) Unit!34074)

(assert (=> b!1043473 (= lt!459992 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11641 thiss!1427) (index!41699 lt!459995) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1043474 () Bool)

(declare-fun res!695259 () Bool)

(assert (=> b!1043474 (=> (not res!695259) (not e!591280))))

(assert (=> b!1043474 (= res!695259 (not (= key!909 (bvneg key!909))))))

(declare-fun res!695260 () Bool)

(assert (=> start!91700 (=> (not res!695260) (not e!591280))))

(declare-fun valid!2208 (LongMapFixedSize!6008) Bool)

(assert (=> start!91700 (= res!695260 (valid!2208 thiss!1427))))

(assert (=> start!91700 e!591280))

(assert (=> start!91700 e!591285))

(assert (=> start!91700 true))

(declare-fun mapNonEmpty!38852 () Bool)

(declare-fun tp!74542 () Bool)

(assert (=> mapNonEmpty!38852 (= mapRes!38852 (and tp!74542 e!591284))))

(declare-fun mapKey!38852 () (_ BitVec 32))

(declare-fun mapValue!38852 () ValueCell!11707)

(declare-fun mapRest!38852 () (Array (_ BitVec 32) ValueCell!11707))

(assert (=> mapNonEmpty!38852 (= (arr!31644 (_values!6409 thiss!1427)) (store mapRest!38852 mapKey!38852 mapValue!38852))))

(declare-fun b!1043475 () Bool)

(assert (=> b!1043475 (= e!591283 (and e!591282 mapRes!38852))))

(declare-fun condMapEmpty!38852 () Bool)

(declare-fun mapDefault!38852 () ValueCell!11707)

