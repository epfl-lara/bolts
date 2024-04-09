; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90012 () Bool)

(assert start!90012)

(declare-fun b!1030353 () Bool)

(declare-fun b_free!20615 () Bool)

(declare-fun b_next!20615 () Bool)

(assert (=> b!1030353 (= b_free!20615 (not b_next!20615))))

(declare-fun tp!72914 () Bool)

(declare-fun b_and!33009 () Bool)

(assert (=> b!1030353 (= tp!72914 b_and!33009)))

(declare-fun mapIsEmpty!37953 () Bool)

(declare-fun mapRes!37953 () Bool)

(assert (=> mapIsEmpty!37953 mapRes!37953))

(declare-fun e!581871 () Bool)

(declare-fun e!581873 () Bool)

(declare-fun tp_is_empty!24335 () Bool)

(declare-datatypes ((V!37319 0))(
  ( (V!37320 (val!12218 Int)) )
))
(declare-datatypes ((ValueCell!11464 0))(
  ( (ValueCellFull!11464 (v!14796 V!37319)) (EmptyCell!11464) )
))
(declare-datatypes ((array!64716 0))(
  ( (array!64717 (arr!31157 (Array (_ BitVec 32) (_ BitVec 64))) (size!31675 (_ BitVec 32))) )
))
(declare-datatypes ((array!64718 0))(
  ( (array!64719 (arr!31158 (Array (_ BitVec 32) ValueCell!11464)) (size!31676 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5522 0))(
  ( (LongMapFixedSize!5523 (defaultEntry!6133 Int) (mask!29904 (_ BitVec 32)) (extraKeys!5865 (_ BitVec 32)) (zeroValue!5969 V!37319) (minValue!5969 V!37319) (_size!2816 (_ BitVec 32)) (_keys!11301 array!64716) (_values!6156 array!64718) (_vacant!2816 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5522)

(declare-fun array_inv!23965 (array!64716) Bool)

(declare-fun array_inv!23966 (array!64718) Bool)

(assert (=> b!1030353 (= e!581873 (and tp!72914 tp_is_empty!24335 (array_inv!23965 (_keys!11301 thiss!1427)) (array_inv!23966 (_values!6156 thiss!1427)) e!581871))))

(declare-fun mapNonEmpty!37953 () Bool)

(declare-fun tp!72913 () Bool)

(declare-fun e!581876 () Bool)

(assert (=> mapNonEmpty!37953 (= mapRes!37953 (and tp!72913 e!581876))))

(declare-fun mapValue!37953 () ValueCell!11464)

(declare-fun mapKey!37953 () (_ BitVec 32))

(declare-fun mapRest!37953 () (Array (_ BitVec 32) ValueCell!11464))

(assert (=> mapNonEmpty!37953 (= (arr!31158 (_values!6156 thiss!1427)) (store mapRest!37953 mapKey!37953 mapValue!37953))))

(declare-fun b!1030354 () Bool)

(declare-fun e!581877 () Bool)

(declare-fun e!581875 () Bool)

(assert (=> b!1030354 (= e!581877 e!581875)))

(declare-fun res!689113 () Bool)

(assert (=> b!1030354 (=> (not res!689113) (not e!581875))))

(declare-datatypes ((SeekEntryResult!9679 0))(
  ( (MissingZero!9679 (index!41086 (_ BitVec 32))) (Found!9679 (index!41087 (_ BitVec 32))) (Intermediate!9679 (undefined!10491 Bool) (index!41088 (_ BitVec 32)) (x!91684 (_ BitVec 32))) (Undefined!9679) (MissingVacant!9679 (index!41089 (_ BitVec 32))) )
))
(declare-fun lt!454506 () SeekEntryResult!9679)

(assert (=> b!1030354 (= res!689113 (is-Found!9679 lt!454506))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64716 (_ BitVec 32)) SeekEntryResult!9679)

(assert (=> b!1030354 (= lt!454506 (seekEntry!0 key!909 (_keys!11301 thiss!1427) (mask!29904 thiss!1427)))))

(declare-fun b!1030355 () Bool)

(declare-fun res!689108 () Bool)

(declare-fun e!581874 () Bool)

(assert (=> b!1030355 (=> res!689108 e!581874)))

(declare-datatypes ((Unit!33630 0))(
  ( (Unit!33631) )
))
(declare-datatypes ((tuple2!15684 0))(
  ( (tuple2!15685 (_1!7852 Unit!33630) (_2!7852 LongMapFixedSize!5522)) )
))
(declare-fun lt!454511 () tuple2!15684)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64716 (_ BitVec 32)) Bool)

(assert (=> b!1030355 (= res!689108 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11301 (_2!7852 lt!454511)) (mask!29904 (_2!7852 lt!454511)))))))

(declare-fun b!1030356 () Bool)

(assert (=> b!1030356 (= e!581875 (not e!581874))))

(declare-fun res!689111 () Bool)

(assert (=> b!1030356 (=> res!689111 e!581874)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030356 (= res!689111 (not (validMask!0 (mask!29904 (_2!7852 lt!454511)))))))

(declare-fun lt!454505 () array!64716)

(declare-fun lt!454509 () array!64718)

(declare-fun Unit!33632 () Unit!33630)

(declare-fun Unit!33633 () Unit!33630)

(assert (=> b!1030356 (= lt!454511 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2816 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15685 Unit!33632 (LongMapFixedSize!5523 (defaultEntry!6133 thiss!1427) (mask!29904 thiss!1427) (extraKeys!5865 thiss!1427) (zeroValue!5969 thiss!1427) (minValue!5969 thiss!1427) (bvsub (_size!2816 thiss!1427) #b00000000000000000000000000000001) lt!454505 lt!454509 (bvadd #b00000000000000000000000000000001 (_vacant!2816 thiss!1427)))) (tuple2!15685 Unit!33633 (LongMapFixedSize!5523 (defaultEntry!6133 thiss!1427) (mask!29904 thiss!1427) (extraKeys!5865 thiss!1427) (zeroValue!5969 thiss!1427) (minValue!5969 thiss!1427) (bvsub (_size!2816 thiss!1427) #b00000000000000000000000000000001) lt!454505 lt!454509 (_vacant!2816 thiss!1427)))))))

(declare-datatypes ((tuple2!15686 0))(
  ( (tuple2!15687 (_1!7853 (_ BitVec 64)) (_2!7853 V!37319)) )
))
(declare-datatypes ((List!21945 0))(
  ( (Nil!21942) (Cons!21941 (h!23143 tuple2!15686) (t!31062 List!21945)) )
))
(declare-datatypes ((ListLongMap!13803 0))(
  ( (ListLongMap!13804 (toList!6917 List!21945)) )
))
(declare-fun -!493 (ListLongMap!13803 (_ BitVec 64)) ListLongMap!13803)

(declare-fun getCurrentListMap!3924 (array!64716 array!64718 (_ BitVec 32) (_ BitVec 32) V!37319 V!37319 (_ BitVec 32) Int) ListLongMap!13803)

(assert (=> b!1030356 (= (-!493 (getCurrentListMap!3924 (_keys!11301 thiss!1427) (_values!6156 thiss!1427) (mask!29904 thiss!1427) (extraKeys!5865 thiss!1427) (zeroValue!5969 thiss!1427) (minValue!5969 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6133 thiss!1427)) key!909) (getCurrentListMap!3924 lt!454505 lt!454509 (mask!29904 thiss!1427) (extraKeys!5865 thiss!1427) (zeroValue!5969 thiss!1427) (minValue!5969 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6133 thiss!1427)))))

(declare-fun dynLambda!1968 (Int (_ BitVec 64)) V!37319)

(assert (=> b!1030356 (= lt!454509 (array!64719 (store (arr!31158 (_values!6156 thiss!1427)) (index!41087 lt!454506) (ValueCellFull!11464 (dynLambda!1968 (defaultEntry!6133 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31676 (_values!6156 thiss!1427))))))

(declare-fun lt!454510 () Unit!33630)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!17 (array!64716 array!64718 (_ BitVec 32) (_ BitVec 32) V!37319 V!37319 (_ BitVec 32) (_ BitVec 64) Int) Unit!33630)

(assert (=> b!1030356 (= lt!454510 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!17 (_keys!11301 thiss!1427) (_values!6156 thiss!1427) (mask!29904 thiss!1427) (extraKeys!5865 thiss!1427) (zeroValue!5969 thiss!1427) (minValue!5969 thiss!1427) (index!41087 lt!454506) key!909 (defaultEntry!6133 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64716 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030356 (not (arrayContainsKey!0 lt!454505 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454512 () Unit!33630)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64716 (_ BitVec 32) (_ BitVec 64)) Unit!33630)

(assert (=> b!1030356 (= lt!454512 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11301 thiss!1427) (index!41087 lt!454506) key!909))))

(assert (=> b!1030356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454505 (mask!29904 thiss!1427))))

(declare-fun lt!454508 () Unit!33630)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64716 (_ BitVec 32) (_ BitVec 32)) Unit!33630)

(assert (=> b!1030356 (= lt!454508 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11301 thiss!1427) (index!41087 lt!454506) (mask!29904 thiss!1427)))))

(declare-datatypes ((List!21946 0))(
  ( (Nil!21943) (Cons!21942 (h!23144 (_ BitVec 64)) (t!31063 List!21946)) )
))
(declare-fun arrayNoDuplicates!0 (array!64716 (_ BitVec 32) List!21946) Bool)

(assert (=> b!1030356 (arrayNoDuplicates!0 lt!454505 #b00000000000000000000000000000000 Nil!21943)))

(declare-fun lt!454513 () Unit!33630)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64716 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21946) Unit!33630)

(assert (=> b!1030356 (= lt!454513 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11301 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41087 lt!454506) #b00000000000000000000000000000000 Nil!21943))))

(declare-fun arrayCountValidKeys!0 (array!64716 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030356 (= (arrayCountValidKeys!0 lt!454505 #b00000000000000000000000000000000 (size!31675 (_keys!11301 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11301 thiss!1427) #b00000000000000000000000000000000 (size!31675 (_keys!11301 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030356 (= lt!454505 (array!64717 (store (arr!31157 (_keys!11301 thiss!1427)) (index!41087 lt!454506) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31675 (_keys!11301 thiss!1427))))))

(declare-fun lt!454507 () Unit!33630)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64716 (_ BitVec 32) (_ BitVec 64)) Unit!33630)

(assert (=> b!1030356 (= lt!454507 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11301 thiss!1427) (index!41087 lt!454506) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030357 () Bool)

(declare-fun e!581872 () Bool)

(assert (=> b!1030357 (= e!581871 (and e!581872 mapRes!37953))))

(declare-fun condMapEmpty!37953 () Bool)

(declare-fun mapDefault!37953 () ValueCell!11464)

