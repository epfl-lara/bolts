; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89808 () Bool)

(assert start!89808)

(declare-fun b!1028865 () Bool)

(declare-fun b_free!20591 () Bool)

(declare-fun b_next!20591 () Bool)

(assert (=> b!1028865 (= b_free!20591 (not b_next!20591))))

(declare-fun tp!72831 () Bool)

(declare-fun b_and!32919 () Bool)

(assert (=> b!1028865 (= tp!72831 b_and!32919)))

(declare-fun b!1028858 () Bool)

(declare-fun e!580867 () Bool)

(declare-fun tp_is_empty!24311 () Bool)

(assert (=> b!1028858 (= e!580867 tp_is_empty!24311)))

(declare-fun res!688422 () Bool)

(declare-fun e!580868 () Bool)

(assert (=> start!89808 (=> (not res!688422) (not e!580868))))

(declare-datatypes ((V!37287 0))(
  ( (V!37288 (val!12206 Int)) )
))
(declare-datatypes ((ValueCell!11452 0))(
  ( (ValueCellFull!11452 (v!14780 V!37287)) (EmptyCell!11452) )
))
(declare-datatypes ((array!64662 0))(
  ( (array!64663 (arr!31133 (Array (_ BitVec 32) (_ BitVec 64))) (size!31649 (_ BitVec 32))) )
))
(declare-datatypes ((array!64664 0))(
  ( (array!64665 (arr!31134 (Array (_ BitVec 32) ValueCell!11452)) (size!31650 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5498 0))(
  ( (LongMapFixedSize!5499 (defaultEntry!6111 Int) (mask!29852 (_ BitVec 32)) (extraKeys!5843 (_ BitVec 32)) (zeroValue!5947 V!37287) (minValue!5947 V!37287) (_size!2804 (_ BitVec 32)) (_keys!11267 array!64662) (_values!6134 array!64664) (_vacant!2804 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5498)

(declare-fun valid!2036 (LongMapFixedSize!5498) Bool)

(assert (=> start!89808 (= res!688422 (valid!2036 thiss!1427))))

(assert (=> start!89808 e!580868))

(declare-fun e!580866 () Bool)

(assert (=> start!89808 e!580866))

(assert (=> start!89808 true))

(declare-fun b!1028859 () Bool)

(declare-fun e!580870 () Bool)

(declare-fun e!580864 () Bool)

(assert (=> b!1028859 (= e!580870 (not e!580864))))

(declare-fun res!688423 () Bool)

(assert (=> b!1028859 (=> res!688423 e!580864)))

(declare-datatypes ((Unit!33560 0))(
  ( (Unit!33561) )
))
(declare-datatypes ((tuple2!15640 0))(
  ( (tuple2!15641 (_1!7830 Unit!33560) (_2!7830 LongMapFixedSize!5498)) )
))
(declare-fun lt!453370 () tuple2!15640)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1028859 (= res!688423 (not (validMask!0 (mask!29852 (_2!7830 lt!453370)))))))

(declare-fun lt!453373 () array!64664)

(declare-fun lt!453371 () array!64662)

(declare-fun Unit!33562 () Unit!33560)

(declare-fun Unit!33563 () Unit!33560)

(assert (=> b!1028859 (= lt!453370 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2804 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15641 Unit!33562 (LongMapFixedSize!5499 (defaultEntry!6111 thiss!1427) (mask!29852 thiss!1427) (extraKeys!5843 thiss!1427) (zeroValue!5947 thiss!1427) (minValue!5947 thiss!1427) (bvsub (_size!2804 thiss!1427) #b00000000000000000000000000000001) lt!453371 lt!453373 (bvadd #b00000000000000000000000000000001 (_vacant!2804 thiss!1427)))) (tuple2!15641 Unit!33563 (LongMapFixedSize!5499 (defaultEntry!6111 thiss!1427) (mask!29852 thiss!1427) (extraKeys!5843 thiss!1427) (zeroValue!5947 thiss!1427) (minValue!5947 thiss!1427) (bvsub (_size!2804 thiss!1427) #b00000000000000000000000000000001) lt!453371 lt!453373 (_vacant!2804 thiss!1427)))))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15642 0))(
  ( (tuple2!15643 (_1!7831 (_ BitVec 64)) (_2!7831 V!37287)) )
))
(declare-datatypes ((List!21925 0))(
  ( (Nil!21922) (Cons!21921 (h!23121 tuple2!15642) (t!31018 List!21925)) )
))
(declare-datatypes ((ListLongMap!13783 0))(
  ( (ListLongMap!13784 (toList!6907 List!21925)) )
))
(declare-fun -!483 (ListLongMap!13783 (_ BitVec 64)) ListLongMap!13783)

(declare-fun getCurrentListMap!3914 (array!64662 array!64664 (_ BitVec 32) (_ BitVec 32) V!37287 V!37287 (_ BitVec 32) Int) ListLongMap!13783)

(assert (=> b!1028859 (= (-!483 (getCurrentListMap!3914 (_keys!11267 thiss!1427) (_values!6134 thiss!1427) (mask!29852 thiss!1427) (extraKeys!5843 thiss!1427) (zeroValue!5947 thiss!1427) (minValue!5947 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6111 thiss!1427)) key!909) (getCurrentListMap!3914 lt!453371 lt!453373 (mask!29852 thiss!1427) (extraKeys!5843 thiss!1427) (zeroValue!5947 thiss!1427) (minValue!5947 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6111 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9669 0))(
  ( (MissingZero!9669 (index!41046 (_ BitVec 32))) (Found!9669 (index!41047 (_ BitVec 32))) (Intermediate!9669 (undefined!10481 Bool) (index!41048 (_ BitVec 32)) (x!91540 (_ BitVec 32))) (Undefined!9669) (MissingVacant!9669 (index!41049 (_ BitVec 32))) )
))
(declare-fun lt!453374 () SeekEntryResult!9669)

(declare-fun dynLambda!1958 (Int (_ BitVec 64)) V!37287)

(assert (=> b!1028859 (= lt!453373 (array!64665 (store (arr!31134 (_values!6134 thiss!1427)) (index!41047 lt!453374) (ValueCellFull!11452 (dynLambda!1958 (defaultEntry!6111 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31650 (_values!6134 thiss!1427))))))

(declare-fun lt!453369 () Unit!33560)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!7 (array!64662 array!64664 (_ BitVec 32) (_ BitVec 32) V!37287 V!37287 (_ BitVec 32) (_ BitVec 64) Int) Unit!33560)

(assert (=> b!1028859 (= lt!453369 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!7 (_keys!11267 thiss!1427) (_values!6134 thiss!1427) (mask!29852 thiss!1427) (extraKeys!5843 thiss!1427) (zeroValue!5947 thiss!1427) (minValue!5947 thiss!1427) (index!41047 lt!453374) key!909 (defaultEntry!6111 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1028859 (not (arrayContainsKey!0 lt!453371 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!453368 () Unit!33560)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64662 (_ BitVec 32) (_ BitVec 64)) Unit!33560)

(assert (=> b!1028859 (= lt!453368 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11267 thiss!1427) (index!41047 lt!453374) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64662 (_ BitVec 32)) Bool)

(assert (=> b!1028859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!453371 (mask!29852 thiss!1427))))

(declare-fun lt!453375 () Unit!33560)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64662 (_ BitVec 32) (_ BitVec 32)) Unit!33560)

(assert (=> b!1028859 (= lt!453375 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11267 thiss!1427) (index!41047 lt!453374) (mask!29852 thiss!1427)))))

(declare-datatypes ((List!21926 0))(
  ( (Nil!21923) (Cons!21922 (h!23122 (_ BitVec 64)) (t!31019 List!21926)) )
))
(declare-fun arrayNoDuplicates!0 (array!64662 (_ BitVec 32) List!21926) Bool)

(assert (=> b!1028859 (arrayNoDuplicates!0 lt!453371 #b00000000000000000000000000000000 Nil!21923)))

(declare-fun lt!453372 () Unit!33560)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64662 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21926) Unit!33560)

(assert (=> b!1028859 (= lt!453372 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11267 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41047 lt!453374) #b00000000000000000000000000000000 Nil!21923))))

(declare-fun arrayCountValidKeys!0 (array!64662 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1028859 (= (arrayCountValidKeys!0 lt!453371 #b00000000000000000000000000000000 (size!31649 (_keys!11267 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11267 thiss!1427) #b00000000000000000000000000000000 (size!31649 (_keys!11267 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1028859 (= lt!453371 (array!64663 (store (arr!31133 (_keys!11267 thiss!1427)) (index!41047 lt!453374) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31649 (_keys!11267 thiss!1427))))))

(declare-fun lt!453376 () Unit!33560)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64662 (_ BitVec 32) (_ BitVec 64)) Unit!33560)

(assert (=> b!1028859 (= lt!453376 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11267 thiss!1427) (index!41047 lt!453374) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!37906 () Bool)

(declare-fun mapRes!37906 () Bool)

(declare-fun tp!72830 () Bool)

(assert (=> mapNonEmpty!37906 (= mapRes!37906 (and tp!72830 e!580867))))

(declare-fun mapValue!37906 () ValueCell!11452)

(declare-fun mapKey!37906 () (_ BitVec 32))

(declare-fun mapRest!37906 () (Array (_ BitVec 32) ValueCell!11452))

(assert (=> mapNonEmpty!37906 (= (arr!31134 (_values!6134 thiss!1427)) (store mapRest!37906 mapKey!37906 mapValue!37906))))

(declare-fun b!1028860 () Bool)

(declare-fun e!580863 () Bool)

(assert (=> b!1028860 (= e!580863 tp_is_empty!24311)))

(declare-fun mapIsEmpty!37906 () Bool)

(assert (=> mapIsEmpty!37906 mapRes!37906))

(declare-fun b!1028861 () Bool)

(assert (=> b!1028861 (= e!580868 e!580870)))

(declare-fun res!688421 () Bool)

(assert (=> b!1028861 (=> (not res!688421) (not e!580870))))

(assert (=> b!1028861 (= res!688421 (is-Found!9669 lt!453374))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64662 (_ BitVec 32)) SeekEntryResult!9669)

(assert (=> b!1028861 (= lt!453374 (seekEntry!0 key!909 (_keys!11267 thiss!1427) (mask!29852 thiss!1427)))))

(declare-fun b!1028862 () Bool)

(declare-fun e!580869 () Bool)

(assert (=> b!1028862 (= e!580869 (and e!580863 mapRes!37906))))

(declare-fun condMapEmpty!37906 () Bool)

(declare-fun mapDefault!37906 () ValueCell!11452)

