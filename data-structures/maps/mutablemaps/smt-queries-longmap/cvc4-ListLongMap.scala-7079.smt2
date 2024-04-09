; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89568 () Bool)

(assert start!89568)

(declare-fun b!1026860 () Bool)

(declare-fun b_free!20531 () Bool)

(declare-fun b_next!20531 () Bool)

(assert (=> b!1026860 (= b_free!20531 (not b_next!20531))))

(declare-fun tp!72640 () Bool)

(declare-fun b_and!32795 () Bool)

(assert (=> b!1026860 (= tp!72640 b_and!32795)))

(declare-fun b!1026857 () Bool)

(declare-fun res!687443 () Bool)

(declare-fun e!579438 () Bool)

(assert (=> b!1026857 (=> res!687443 e!579438)))

(declare-datatypes ((V!37207 0))(
  ( (V!37208 (val!12176 Int)) )
))
(declare-datatypes ((ValueCell!11422 0))(
  ( (ValueCellFull!11422 (v!14746 V!37207)) (EmptyCell!11422) )
))
(declare-datatypes ((array!64536 0))(
  ( (array!64537 (arr!31073 (Array (_ BitVec 32) (_ BitVec 64))) (size!31587 (_ BitVec 32))) )
))
(declare-datatypes ((array!64538 0))(
  ( (array!64539 (arr!31074 (Array (_ BitVec 32) ValueCell!11422)) (size!31588 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5438 0))(
  ( (LongMapFixedSize!5439 (defaultEntry!6071 Int) (mask!29770 (_ BitVec 32)) (extraKeys!5803 (_ BitVec 32)) (zeroValue!5907 V!37207) (minValue!5907 V!37207) (_size!2774 (_ BitVec 32)) (_keys!11215 array!64536) (_values!6094 array!64538) (_vacant!2774 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5438)

(assert (=> b!1026857 (= res!687443 (or (not (= (size!31588 (_values!6094 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29770 thiss!1427)))) (not (= (size!31587 (_keys!11215 thiss!1427)) (size!31588 (_values!6094 thiss!1427)))) (bvslt (mask!29770 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5803 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5803 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1026858 () Bool)

(declare-fun e!579439 () Bool)

(declare-fun tp_is_empty!24251 () Bool)

(assert (=> b!1026858 (= e!579439 tp_is_empty!24251)))

(declare-fun b!1026859 () Bool)

(declare-fun res!687446 () Bool)

(declare-fun e!579433 () Bool)

(assert (=> b!1026859 (=> (not res!687446) (not e!579433))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1026859 (= res!687446 (not (= key!909 (bvneg key!909))))))

(declare-fun e!579440 () Bool)

(declare-fun e!579434 () Bool)

(declare-fun array_inv!23911 (array!64536) Bool)

(declare-fun array_inv!23912 (array!64538) Bool)

(assert (=> b!1026860 (= e!579440 (and tp!72640 tp_is_empty!24251 (array_inv!23911 (_keys!11215 thiss!1427)) (array_inv!23912 (_values!6094 thiss!1427)) e!579434))))

(declare-fun b!1026861 () Bool)

(declare-fun e!579435 () Bool)

(assert (=> b!1026861 (= e!579433 e!579435)))

(declare-fun res!687444 () Bool)

(assert (=> b!1026861 (=> (not res!687444) (not e!579435))))

(declare-datatypes ((SeekEntryResult!9647 0))(
  ( (MissingZero!9647 (index!40958 (_ BitVec 32))) (Found!9647 (index!40959 (_ BitVec 32))) (Intermediate!9647 (undefined!10459 Bool) (index!40960 (_ BitVec 32)) (x!91344 (_ BitVec 32))) (Undefined!9647) (MissingVacant!9647 (index!40961 (_ BitVec 32))) )
))
(declare-fun lt!451864 () SeekEntryResult!9647)

(assert (=> b!1026861 (= res!687444 (is-Found!9647 lt!451864))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64536 (_ BitVec 32)) SeekEntryResult!9647)

(assert (=> b!1026861 (= lt!451864 (seekEntry!0 key!909 (_keys!11215 thiss!1427) (mask!29770 thiss!1427)))))

(declare-fun b!1026862 () Bool)

(declare-fun e!579436 () Bool)

(assert (=> b!1026862 (= e!579436 tp_is_empty!24251)))

(declare-fun b!1026863 () Bool)

(assert (=> b!1026863 (= e!579435 (not e!579438))))

(declare-fun res!687442 () Bool)

(assert (=> b!1026863 (=> res!687442 e!579438)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026863 (= res!687442 (not (validMask!0 (mask!29770 thiss!1427))))))

(declare-fun lt!451865 () array!64536)

(declare-fun arrayContainsKey!0 (array!64536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026863 (not (arrayContainsKey!0 lt!451865 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33424 0))(
  ( (Unit!33425) )
))
(declare-fun lt!451869 () Unit!33424)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64536 (_ BitVec 32) (_ BitVec 64)) Unit!33424)

(assert (=> b!1026863 (= lt!451869 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11215 thiss!1427) (index!40959 lt!451864) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64536 (_ BitVec 32)) Bool)

(assert (=> b!1026863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451865 (mask!29770 thiss!1427))))

(declare-fun lt!451868 () Unit!33424)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64536 (_ BitVec 32) (_ BitVec 32)) Unit!33424)

(assert (=> b!1026863 (= lt!451868 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11215 thiss!1427) (index!40959 lt!451864) (mask!29770 thiss!1427)))))

(declare-datatypes ((List!21899 0))(
  ( (Nil!21896) (Cons!21895 (h!23093 (_ BitVec 64)) (t!30968 List!21899)) )
))
(declare-fun arrayNoDuplicates!0 (array!64536 (_ BitVec 32) List!21899) Bool)

(assert (=> b!1026863 (arrayNoDuplicates!0 lt!451865 #b00000000000000000000000000000000 Nil!21896)))

(declare-fun lt!451866 () Unit!33424)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64536 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21899) Unit!33424)

(assert (=> b!1026863 (= lt!451866 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11215 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40959 lt!451864) #b00000000000000000000000000000000 Nil!21896))))

(declare-fun arrayCountValidKeys!0 (array!64536 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026863 (= (arrayCountValidKeys!0 lt!451865 #b00000000000000000000000000000000 (size!31587 (_keys!11215 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11215 thiss!1427) #b00000000000000000000000000000000 (size!31587 (_keys!11215 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026863 (= lt!451865 (array!64537 (store (arr!31073 (_keys!11215 thiss!1427)) (index!40959 lt!451864) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31587 (_keys!11215 thiss!1427))))))

(declare-fun lt!451870 () Unit!33424)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64536 (_ BitVec 32) (_ BitVec 64)) Unit!33424)

(assert (=> b!1026863 (= lt!451870 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11215 thiss!1427) (index!40959 lt!451864) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026864 () Bool)

(declare-fun mapRes!37805 () Bool)

(assert (=> b!1026864 (= e!579434 (and e!579436 mapRes!37805))))

(declare-fun condMapEmpty!37805 () Bool)

(declare-fun mapDefault!37805 () ValueCell!11422)

