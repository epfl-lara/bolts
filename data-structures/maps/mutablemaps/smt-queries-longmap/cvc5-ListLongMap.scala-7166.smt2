; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91464 () Bool)

(assert start!91464)

(declare-fun b!1041883 () Bool)

(declare-fun b_free!21049 () Bool)

(declare-fun b_next!21049 () Bool)

(assert (=> b!1041883 (= b_free!21049 (not b_next!21049))))

(declare-fun tp!74366 () Bool)

(declare-fun b_and!33599 () Bool)

(assert (=> b!1041883 (= tp!74366 b_and!33599)))

(declare-fun mapIsEmpty!38755 () Bool)

(declare-fun mapRes!38755 () Bool)

(assert (=> mapIsEmpty!38755 mapRes!38755))

(declare-fun b!1041880 () Bool)

(declare-fun e!590149 () Bool)

(declare-fun tp_is_empty!24769 () Bool)

(assert (=> b!1041880 (= e!590149 tp_is_empty!24769)))

(declare-fun res!694409 () Bool)

(declare-fun e!590148 () Bool)

(assert (=> start!91464 (=> (not res!694409) (not e!590148))))

(declare-datatypes ((V!37899 0))(
  ( (V!37900 (val!12435 Int)) )
))
(declare-datatypes ((ValueCell!11681 0))(
  ( (ValueCellFull!11681 (v!15026 V!37899)) (EmptyCell!11681) )
))
(declare-datatypes ((array!65672 0))(
  ( (array!65673 (arr!31591 (Array (_ BitVec 32) (_ BitVec 64))) (size!32126 (_ BitVec 32))) )
))
(declare-datatypes ((array!65674 0))(
  ( (array!65675 (arr!31592 (Array (_ BitVec 32) ValueCell!11681)) (size!32127 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5956 0))(
  ( (LongMapFixedSize!5957 (defaultEntry!6360 Int) (mask!30401 (_ BitVec 32)) (extraKeys!6088 (_ BitVec 32)) (zeroValue!6194 V!37899) (minValue!6194 V!37899) (_size!3033 (_ BitVec 32)) (_keys!11600 array!65672) (_values!6383 array!65674) (_vacant!3033 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5956)

(declare-fun valid!2189 (LongMapFixedSize!5956) Bool)

(assert (=> start!91464 (= res!694409 (valid!2189 thiss!1427))))

(assert (=> start!91464 e!590148))

(declare-fun e!590152 () Bool)

(assert (=> start!91464 e!590152))

(assert (=> start!91464 true))

(declare-fun b!1041881 () Bool)

(declare-fun e!590154 () Bool)

(assert (=> b!1041881 (= e!590154 tp_is_empty!24769)))

(declare-fun b!1041882 () Bool)

(declare-fun e!590151 () Bool)

(assert (=> b!1041882 (= e!590148 e!590151)))

(declare-fun res!694407 () Bool)

(assert (=> b!1041882 (=> (not res!694407) (not e!590151))))

(declare-datatypes ((SeekEntryResult!9812 0))(
  ( (MissingZero!9812 (index!41618 (_ BitVec 32))) (Found!9812 (index!41619 (_ BitVec 32))) (Intermediate!9812 (undefined!10624 Bool) (index!41620 (_ BitVec 32)) (x!93018 (_ BitVec 32))) (Undefined!9812) (MissingVacant!9812 (index!41621 (_ BitVec 32))) )
))
(declare-fun lt!459213 () SeekEntryResult!9812)

(assert (=> b!1041882 (= res!694407 (is-Found!9812 lt!459213))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65672 (_ BitVec 32)) SeekEntryResult!9812)

(assert (=> b!1041882 (= lt!459213 (seekEntry!0 key!909 (_keys!11600 thiss!1427) (mask!30401 thiss!1427)))))

(declare-fun mapNonEmpty!38755 () Bool)

(declare-fun tp!74367 () Bool)

(assert (=> mapNonEmpty!38755 (= mapRes!38755 (and tp!74367 e!590154))))

(declare-fun mapKey!38755 () (_ BitVec 32))

(declare-fun mapRest!38755 () (Array (_ BitVec 32) ValueCell!11681))

(declare-fun mapValue!38755 () ValueCell!11681)

(assert (=> mapNonEmpty!38755 (= (arr!31592 (_values!6383 thiss!1427)) (store mapRest!38755 mapKey!38755 mapValue!38755))))

(declare-fun e!590150 () Bool)

(declare-fun array_inv!24253 (array!65672) Bool)

(declare-fun array_inv!24254 (array!65674) Bool)

(assert (=> b!1041883 (= e!590152 (and tp!74366 tp_is_empty!24769 (array_inv!24253 (_keys!11600 thiss!1427)) (array_inv!24254 (_values!6383 thiss!1427)) e!590150))))

(declare-fun b!1041884 () Bool)

(declare-fun e!590155 () Bool)

(assert (=> b!1041884 (= e!590151 (not e!590155))))

(declare-fun res!694406 () Bool)

(assert (=> b!1041884 (=> res!694406 e!590155)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1041884 (= res!694406 (not (validMask!0 (mask!30401 thiss!1427))))))

(declare-fun lt!459218 () array!65672)

(declare-fun arrayContainsKey!0 (array!65672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1041884 (not (arrayContainsKey!0 lt!459218 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34040 0))(
  ( (Unit!34041) )
))
(declare-fun lt!459215 () Unit!34040)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65672 (_ BitVec 32) (_ BitVec 64)) Unit!34040)

(assert (=> b!1041884 (= lt!459215 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11600 thiss!1427) (index!41619 lt!459213) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65672 (_ BitVec 32)) Bool)

(assert (=> b!1041884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459218 (mask!30401 thiss!1427))))

(declare-fun lt!459217 () Unit!34040)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65672 (_ BitVec 32) (_ BitVec 32)) Unit!34040)

(assert (=> b!1041884 (= lt!459217 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11600 thiss!1427) (index!41619 lt!459213) (mask!30401 thiss!1427)))))

(declare-datatypes ((List!22096 0))(
  ( (Nil!22093) (Cons!22092 (h!23299 (_ BitVec 64)) (t!31317 List!22096)) )
))
(declare-fun arrayNoDuplicates!0 (array!65672 (_ BitVec 32) List!22096) Bool)

(assert (=> b!1041884 (arrayNoDuplicates!0 lt!459218 #b00000000000000000000000000000000 Nil!22093)))

(declare-fun lt!459214 () Unit!34040)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65672 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22096) Unit!34040)

(assert (=> b!1041884 (= lt!459214 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11600 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41619 lt!459213) #b00000000000000000000000000000000 Nil!22093))))

(declare-fun arrayCountValidKeys!0 (array!65672 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1041884 (= (arrayCountValidKeys!0 lt!459218 #b00000000000000000000000000000000 (size!32126 (_keys!11600 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11600 thiss!1427) #b00000000000000000000000000000000 (size!32126 (_keys!11600 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1041884 (= lt!459218 (array!65673 (store (arr!31591 (_keys!11600 thiss!1427)) (index!41619 lt!459213) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32126 (_keys!11600 thiss!1427))))))

(declare-fun lt!459216 () Unit!34040)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65672 (_ BitVec 32) (_ BitVec 64)) Unit!34040)

(assert (=> b!1041884 (= lt!459216 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11600 thiss!1427) (index!41619 lt!459213) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1041885 () Bool)

(assert (=> b!1041885 (= e!590155 (or (not (= (size!32127 (_values!6383 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30401 thiss!1427)))) (not (= (size!32126 (_keys!11600 thiss!1427)) (size!32127 (_values!6383 thiss!1427)))) (bvslt (mask!30401 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!6088 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!6088 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1041886 () Bool)

(declare-fun res!694408 () Bool)

(assert (=> b!1041886 (=> (not res!694408) (not e!590148))))

(assert (=> b!1041886 (= res!694408 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1041887 () Bool)

(assert (=> b!1041887 (= e!590150 (and e!590149 mapRes!38755))))

(declare-fun condMapEmpty!38755 () Bool)

(declare-fun mapDefault!38755 () ValueCell!11681)

