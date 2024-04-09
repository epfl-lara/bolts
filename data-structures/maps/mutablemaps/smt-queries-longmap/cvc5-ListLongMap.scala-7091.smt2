; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89922 () Bool)

(assert start!89922)

(declare-fun b!1029644 () Bool)

(declare-fun b_free!20599 () Bool)

(declare-fun b_next!20599 () Bool)

(assert (=> b!1029644 (= b_free!20599 (not b_next!20599))))

(declare-fun tp!72861 () Bool)

(declare-fun b_and!32959 () Bool)

(assert (=> b!1029644 (= tp!72861 b_and!32959)))

(declare-fun b!1029637 () Bool)

(declare-fun e!581381 () Bool)

(declare-datatypes ((V!37299 0))(
  ( (V!37300 (val!12210 Int)) )
))
(declare-datatypes ((ValueCell!11456 0))(
  ( (ValueCellFull!11456 (v!14786 V!37299)) (EmptyCell!11456) )
))
(declare-datatypes ((Unit!33588 0))(
  ( (Unit!33589) )
))
(declare-datatypes ((array!64682 0))(
  ( (array!64683 (arr!31141 (Array (_ BitVec 32) (_ BitVec 64))) (size!31658 (_ BitVec 32))) )
))
(declare-datatypes ((array!64684 0))(
  ( (array!64685 (arr!31142 (Array (_ BitVec 32) ValueCell!11456)) (size!31659 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5506 0))(
  ( (LongMapFixedSize!5507 (defaultEntry!6121 Int) (mask!29879 (_ BitVec 32)) (extraKeys!5853 (_ BitVec 32)) (zeroValue!5957 V!37299) (minValue!5957 V!37299) (_size!2808 (_ BitVec 32)) (_keys!11284 array!64682) (_values!6144 array!64684) (_vacant!2808 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15654 0))(
  ( (tuple2!15655 (_1!7837 Unit!33588) (_2!7837 LongMapFixedSize!5506)) )
))
(declare-fun lt!453951 () tuple2!15654)

(assert (=> b!1029637 (= e!581381 (or (not (= (size!31659 (_values!6144 (_2!7837 lt!453951))) (bvadd #b00000000000000000000000000000001 (mask!29879 (_2!7837 lt!453951))))) (not (= (size!31658 (_keys!11284 (_2!7837 lt!453951))) (size!31659 (_values!6144 (_2!7837 lt!453951))))) (bvslt (mask!29879 (_2!7837 lt!453951)) #b00000000000000000000000000000000) (bvslt (extraKeys!5853 (_2!7837 lt!453951)) #b00000000000000000000000000000000) (bvsle (extraKeys!5853 (_2!7837 lt!453951)) #b00000000000000000000000000000011)))))

(declare-fun b!1029638 () Bool)

(declare-fun e!581385 () Bool)

(assert (=> b!1029638 (= e!581385 (not e!581381))))

(declare-fun res!688775 () Bool)

(assert (=> b!1029638 (=> res!688775 e!581381)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1029638 (= res!688775 (not (validMask!0 (mask!29879 (_2!7837 lt!453951)))))))

(declare-fun thiss!1427 () LongMapFixedSize!5506)

(declare-fun lt!453956 () array!64682)

(declare-fun lt!453949 () array!64684)

(declare-fun Unit!33590 () Unit!33588)

(declare-fun Unit!33591 () Unit!33588)

(assert (=> b!1029638 (= lt!453951 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2808 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15655 Unit!33590 (LongMapFixedSize!5507 (defaultEntry!6121 thiss!1427) (mask!29879 thiss!1427) (extraKeys!5853 thiss!1427) (zeroValue!5957 thiss!1427) (minValue!5957 thiss!1427) (bvsub (_size!2808 thiss!1427) #b00000000000000000000000000000001) lt!453956 lt!453949 (bvadd #b00000000000000000000000000000001 (_vacant!2808 thiss!1427)))) (tuple2!15655 Unit!33591 (LongMapFixedSize!5507 (defaultEntry!6121 thiss!1427) (mask!29879 thiss!1427) (extraKeys!5853 thiss!1427) (zeroValue!5957 thiss!1427) (minValue!5957 thiss!1427) (bvsub (_size!2808 thiss!1427) #b00000000000000000000000000000001) lt!453956 lt!453949 (_vacant!2808 thiss!1427)))))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15656 0))(
  ( (tuple2!15657 (_1!7838 (_ BitVec 64)) (_2!7838 V!37299)) )
))
(declare-datatypes ((List!21931 0))(
  ( (Nil!21928) (Cons!21927 (h!23128 tuple2!15656) (t!31032 List!21931)) )
))
(declare-datatypes ((ListLongMap!13789 0))(
  ( (ListLongMap!13790 (toList!6910 List!21931)) )
))
(declare-fun -!486 (ListLongMap!13789 (_ BitVec 64)) ListLongMap!13789)

(declare-fun getCurrentListMap!3917 (array!64682 array!64684 (_ BitVec 32) (_ BitVec 32) V!37299 V!37299 (_ BitVec 32) Int) ListLongMap!13789)

(assert (=> b!1029638 (= (-!486 (getCurrentListMap!3917 (_keys!11284 thiss!1427) (_values!6144 thiss!1427) (mask!29879 thiss!1427) (extraKeys!5853 thiss!1427) (zeroValue!5957 thiss!1427) (minValue!5957 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6121 thiss!1427)) key!909) (getCurrentListMap!3917 lt!453956 lt!453949 (mask!29879 thiss!1427) (extraKeys!5853 thiss!1427) (zeroValue!5957 thiss!1427) (minValue!5957 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6121 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9672 0))(
  ( (MissingZero!9672 (index!41058 (_ BitVec 32))) (Found!9672 (index!41059 (_ BitVec 32))) (Intermediate!9672 (undefined!10484 Bool) (index!41060 (_ BitVec 32)) (x!91615 (_ BitVec 32))) (Undefined!9672) (MissingVacant!9672 (index!41061 (_ BitVec 32))) )
))
(declare-fun lt!453950 () SeekEntryResult!9672)

(declare-fun dynLambda!1961 (Int (_ BitVec 64)) V!37299)

(assert (=> b!1029638 (= lt!453949 (array!64685 (store (arr!31142 (_values!6144 thiss!1427)) (index!41059 lt!453950) (ValueCellFull!11456 (dynLambda!1961 (defaultEntry!6121 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31659 (_values!6144 thiss!1427))))))

(declare-fun lt!453952 () Unit!33588)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!10 (array!64682 array!64684 (_ BitVec 32) (_ BitVec 32) V!37299 V!37299 (_ BitVec 32) (_ BitVec 64) Int) Unit!33588)

(assert (=> b!1029638 (= lt!453952 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!10 (_keys!11284 thiss!1427) (_values!6144 thiss!1427) (mask!29879 thiss!1427) (extraKeys!5853 thiss!1427) (zeroValue!5957 thiss!1427) (minValue!5957 thiss!1427) (index!41059 lt!453950) key!909 (defaultEntry!6121 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1029638 (not (arrayContainsKey!0 lt!453956 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!453954 () Unit!33588)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64682 (_ BitVec 32) (_ BitVec 64)) Unit!33588)

(assert (=> b!1029638 (= lt!453954 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11284 thiss!1427) (index!41059 lt!453950) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64682 (_ BitVec 32)) Bool)

(assert (=> b!1029638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!453956 (mask!29879 thiss!1427))))

(declare-fun lt!453948 () Unit!33588)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64682 (_ BitVec 32) (_ BitVec 32)) Unit!33588)

(assert (=> b!1029638 (= lt!453948 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11284 thiss!1427) (index!41059 lt!453950) (mask!29879 thiss!1427)))))

(declare-datatypes ((List!21932 0))(
  ( (Nil!21929) (Cons!21928 (h!23129 (_ BitVec 64)) (t!31033 List!21932)) )
))
(declare-fun arrayNoDuplicates!0 (array!64682 (_ BitVec 32) List!21932) Bool)

(assert (=> b!1029638 (arrayNoDuplicates!0 lt!453956 #b00000000000000000000000000000000 Nil!21929)))

(declare-fun lt!453955 () Unit!33588)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64682 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21932) Unit!33588)

(assert (=> b!1029638 (= lt!453955 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11284 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41059 lt!453950) #b00000000000000000000000000000000 Nil!21929))))

(declare-fun arrayCountValidKeys!0 (array!64682 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1029638 (= (arrayCountValidKeys!0 lt!453956 #b00000000000000000000000000000000 (size!31658 (_keys!11284 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11284 thiss!1427) #b00000000000000000000000000000000 (size!31658 (_keys!11284 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1029638 (= lt!453956 (array!64683 (store (arr!31141 (_keys!11284 thiss!1427)) (index!41059 lt!453950) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31658 (_keys!11284 thiss!1427))))))

(declare-fun lt!453953 () Unit!33588)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64682 (_ BitVec 32) (_ BitVec 64)) Unit!33588)

(assert (=> b!1029638 (= lt!453953 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11284 thiss!1427) (index!41059 lt!453950) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1029639 () Bool)

(declare-fun e!581380 () Bool)

(assert (=> b!1029639 (= e!581380 e!581385)))

(declare-fun res!688776 () Bool)

(assert (=> b!1029639 (=> (not res!688776) (not e!581385))))

(assert (=> b!1029639 (= res!688776 (is-Found!9672 lt!453950))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64682 (_ BitVec 32)) SeekEntryResult!9672)

(assert (=> b!1029639 (= lt!453950 (seekEntry!0 key!909 (_keys!11284 thiss!1427) (mask!29879 thiss!1427)))))

(declare-fun b!1029640 () Bool)

(declare-fun e!581383 () Bool)

(declare-fun e!581384 () Bool)

(declare-fun mapRes!37925 () Bool)

(assert (=> b!1029640 (= e!581383 (and e!581384 mapRes!37925))))

(declare-fun condMapEmpty!37925 () Bool)

(declare-fun mapDefault!37925 () ValueCell!11456)

