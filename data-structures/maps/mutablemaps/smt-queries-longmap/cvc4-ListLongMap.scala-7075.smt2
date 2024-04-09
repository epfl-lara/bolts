; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89544 () Bool)

(assert start!89544)

(declare-fun b!1026503 () Bool)

(declare-fun b_free!20507 () Bool)

(declare-fun b_next!20507 () Bool)

(assert (=> b!1026503 (= b_free!20507 (not b_next!20507))))

(declare-fun tp!72568 () Bool)

(declare-fun b_and!32771 () Bool)

(assert (=> b!1026503 (= tp!72568 b_and!32771)))

(declare-fun mapIsEmpty!37769 () Bool)

(declare-fun mapRes!37769 () Bool)

(assert (=> mapIsEmpty!37769 mapRes!37769))

(declare-fun b!1026497 () Bool)

(declare-fun e!579149 () Bool)

(assert (=> b!1026497 (= e!579149 true)))

(declare-fun lt!451616 () Bool)

(declare-datatypes ((V!37175 0))(
  ( (V!37176 (val!12164 Int)) )
))
(declare-datatypes ((ValueCell!11410 0))(
  ( (ValueCellFull!11410 (v!14734 V!37175)) (EmptyCell!11410) )
))
(declare-datatypes ((array!64488 0))(
  ( (array!64489 (arr!31049 (Array (_ BitVec 32) (_ BitVec 64))) (size!31563 (_ BitVec 32))) )
))
(declare-datatypes ((array!64490 0))(
  ( (array!64491 (arr!31050 (Array (_ BitVec 32) ValueCell!11410)) (size!31564 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5414 0))(
  ( (LongMapFixedSize!5415 (defaultEntry!6059 Int) (mask!29750 (_ BitVec 32)) (extraKeys!5791 (_ BitVec 32)) (zeroValue!5895 V!37175) (minValue!5895 V!37175) (_size!2762 (_ BitVec 32)) (_keys!11203 array!64488) (_values!6082 array!64490) (_vacant!2762 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5414)

(declare-datatypes ((List!21888 0))(
  ( (Nil!21885) (Cons!21884 (h!23082 (_ BitVec 64)) (t!30957 List!21888)) )
))
(declare-fun arrayNoDuplicates!0 (array!64488 (_ BitVec 32) List!21888) Bool)

(assert (=> b!1026497 (= lt!451616 (arrayNoDuplicates!0 (_keys!11203 thiss!1427) #b00000000000000000000000000000000 Nil!21885))))

(declare-fun b!1026498 () Bool)

(declare-fun e!579146 () Bool)

(assert (=> b!1026498 (= e!579146 (not e!579149))))

(declare-fun res!687230 () Bool)

(assert (=> b!1026498 (=> res!687230 e!579149)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026498 (= res!687230 (not (validMask!0 (mask!29750 thiss!1427))))))

(declare-fun lt!451613 () array!64488)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!64488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026498 (not (arrayContainsKey!0 lt!451613 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33406 0))(
  ( (Unit!33407) )
))
(declare-fun lt!451618 () Unit!33406)

(declare-datatypes ((SeekEntryResult!9637 0))(
  ( (MissingZero!9637 (index!40918 (_ BitVec 32))) (Found!9637 (index!40919 (_ BitVec 32))) (Intermediate!9637 (undefined!10449 Bool) (index!40920 (_ BitVec 32)) (x!91302 (_ BitVec 32))) (Undefined!9637) (MissingVacant!9637 (index!40921 (_ BitVec 32))) )
))
(declare-fun lt!451615 () SeekEntryResult!9637)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64488 (_ BitVec 32) (_ BitVec 64)) Unit!33406)

(assert (=> b!1026498 (= lt!451618 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11203 thiss!1427) (index!40919 lt!451615) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64488 (_ BitVec 32)) Bool)

(assert (=> b!1026498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451613 (mask!29750 thiss!1427))))

(declare-fun lt!451617 () Unit!33406)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64488 (_ BitVec 32) (_ BitVec 32)) Unit!33406)

(assert (=> b!1026498 (= lt!451617 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11203 thiss!1427) (index!40919 lt!451615) (mask!29750 thiss!1427)))))

(assert (=> b!1026498 (arrayNoDuplicates!0 lt!451613 #b00000000000000000000000000000000 Nil!21885)))

(declare-fun lt!451614 () Unit!33406)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64488 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21888) Unit!33406)

(assert (=> b!1026498 (= lt!451614 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11203 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40919 lt!451615) #b00000000000000000000000000000000 Nil!21885))))

(declare-fun arrayCountValidKeys!0 (array!64488 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026498 (= (arrayCountValidKeys!0 lt!451613 #b00000000000000000000000000000000 (size!31563 (_keys!11203 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11203 thiss!1427) #b00000000000000000000000000000000 (size!31563 (_keys!11203 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026498 (= lt!451613 (array!64489 (store (arr!31049 (_keys!11203 thiss!1427)) (index!40919 lt!451615) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31563 (_keys!11203 thiss!1427))))))

(declare-fun lt!451612 () Unit!33406)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64488 (_ BitVec 32) (_ BitVec 64)) Unit!33406)

(assert (=> b!1026498 (= lt!451612 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11203 thiss!1427) (index!40919 lt!451615) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026499 () Bool)

(declare-fun res!687227 () Bool)

(declare-fun e!579151 () Bool)

(assert (=> b!1026499 (=> (not res!687227) (not e!579151))))

(assert (=> b!1026499 (= res!687227 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026500 () Bool)

(assert (=> b!1026500 (= e!579151 e!579146)))

(declare-fun res!687231 () Bool)

(assert (=> b!1026500 (=> (not res!687231) (not e!579146))))

(assert (=> b!1026500 (= res!687231 (is-Found!9637 lt!451615))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64488 (_ BitVec 32)) SeekEntryResult!9637)

(assert (=> b!1026500 (= lt!451615 (seekEntry!0 key!909 (_keys!11203 thiss!1427) (mask!29750 thiss!1427)))))

(declare-fun b!1026501 () Bool)

(declare-fun e!579147 () Bool)

(declare-fun tp_is_empty!24227 () Bool)

(assert (=> b!1026501 (= e!579147 tp_is_empty!24227)))

(declare-fun b!1026502 () Bool)

(declare-fun res!687229 () Bool)

(assert (=> b!1026502 (=> res!687229 e!579149)))

(assert (=> b!1026502 (= res!687229 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11203 thiss!1427) (mask!29750 thiss!1427))))))

(declare-fun mapNonEmpty!37769 () Bool)

(declare-fun tp!72567 () Bool)

(assert (=> mapNonEmpty!37769 (= mapRes!37769 (and tp!72567 e!579147))))

(declare-fun mapKey!37769 () (_ BitVec 32))

(declare-fun mapRest!37769 () (Array (_ BitVec 32) ValueCell!11410))

(declare-fun mapValue!37769 () ValueCell!11410)

(assert (=> mapNonEmpty!37769 (= (arr!31050 (_values!6082 thiss!1427)) (store mapRest!37769 mapKey!37769 mapValue!37769))))

(declare-fun e!579145 () Bool)

(declare-fun e!579150 () Bool)

(declare-fun array_inv!23895 (array!64488) Bool)

(declare-fun array_inv!23896 (array!64490) Bool)

(assert (=> b!1026503 (= e!579150 (and tp!72568 tp_is_empty!24227 (array_inv!23895 (_keys!11203 thiss!1427)) (array_inv!23896 (_values!6082 thiss!1427)) e!579145))))

(declare-fun b!1026504 () Bool)

(declare-fun res!687226 () Bool)

(assert (=> b!1026504 (=> res!687226 e!579149)))

(assert (=> b!1026504 (= res!687226 (or (not (= (size!31564 (_values!6082 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29750 thiss!1427)))) (not (= (size!31563 (_keys!11203 thiss!1427)) (size!31564 (_values!6082 thiss!1427)))) (bvslt (mask!29750 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5791 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5791 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun res!687228 () Bool)

(assert (=> start!89544 (=> (not res!687228) (not e!579151))))

(declare-fun valid!2007 (LongMapFixedSize!5414) Bool)

(assert (=> start!89544 (= res!687228 (valid!2007 thiss!1427))))

(assert (=> start!89544 e!579151))

(assert (=> start!89544 e!579150))

(assert (=> start!89544 true))

(declare-fun b!1026505 () Bool)

(declare-fun e!579148 () Bool)

(assert (=> b!1026505 (= e!579148 tp_is_empty!24227)))

(declare-fun b!1026506 () Bool)

(assert (=> b!1026506 (= e!579145 (and e!579148 mapRes!37769))))

(declare-fun condMapEmpty!37769 () Bool)

(declare-fun mapDefault!37769 () ValueCell!11410)

