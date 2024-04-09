; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91696 () Bool)

(assert start!91696)

(declare-fun b!1043424 () Bool)

(declare-fun b_free!21097 () Bool)

(declare-fun b_next!21097 () Bool)

(assert (=> b!1043424 (= b_free!21097 (not b_next!21097))))

(declare-fun tp!74530 () Bool)

(declare-fun b_and!33647 () Bool)

(assert (=> b!1043424 (= tp!74530 b_and!33647)))

(declare-fun b!1043423 () Bool)

(declare-fun res!695242 () Bool)

(declare-fun e!591244 () Bool)

(assert (=> b!1043423 (=> (not res!695242) (not e!591244))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1043423 (= res!695242 (not (= key!909 (bvneg key!909))))))

(declare-fun e!591242 () Bool)

(declare-fun tp_is_empty!24817 () Bool)

(declare-fun e!591238 () Bool)

(declare-datatypes ((V!37963 0))(
  ( (V!37964 (val!12459 Int)) )
))
(declare-datatypes ((ValueCell!11705 0))(
  ( (ValueCellFull!11705 (v!15051 V!37963)) (EmptyCell!11705) )
))
(declare-datatypes ((array!65780 0))(
  ( (array!65781 (arr!31639 (Array (_ BitVec 32) (_ BitVec 64))) (size!32175 (_ BitVec 32))) )
))
(declare-datatypes ((array!65782 0))(
  ( (array!65783 (arr!31640 (Array (_ BitVec 32) ValueCell!11705)) (size!32176 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6004 0))(
  ( (LongMapFixedSize!6005 (defaultEntry!6384 Int) (mask!30470 (_ BitVec 32)) (extraKeys!6112 (_ BitVec 32)) (zeroValue!6218 V!37963) (minValue!6218 V!37963) (_size!3057 (_ BitVec 32)) (_keys!11639 array!65780) (_values!6407 array!65782) (_vacant!3057 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6004)

(declare-fun array_inv!24287 (array!65780) Bool)

(declare-fun array_inv!24288 (array!65782) Bool)

(assert (=> b!1043424 (= e!591238 (and tp!74530 tp_is_empty!24817 (array_inv!24287 (_keys!11639 thiss!1427)) (array_inv!24288 (_values!6407 thiss!1427)) e!591242))))

(declare-fun res!695241 () Bool)

(assert (=> start!91696 (=> (not res!695241) (not e!591244))))

(declare-fun valid!2206 (LongMapFixedSize!6004) Bool)

(assert (=> start!91696 (= res!695241 (valid!2206 thiss!1427))))

(assert (=> start!91696 e!591244))

(assert (=> start!91696 e!591238))

(assert (=> start!91696 true))

(declare-fun mapNonEmpty!38846 () Bool)

(declare-fun mapRes!38846 () Bool)

(declare-fun tp!74529 () Bool)

(declare-fun e!591243 () Bool)

(assert (=> mapNonEmpty!38846 (= mapRes!38846 (and tp!74529 e!591243))))

(declare-fun mapKey!38846 () (_ BitVec 32))

(declare-fun mapValue!38846 () ValueCell!11705)

(declare-fun mapRest!38846 () (Array (_ BitVec 32) ValueCell!11705))

(assert (=> mapNonEmpty!38846 (= (arr!31640 (_values!6407 thiss!1427)) (store mapRest!38846 mapKey!38846 mapValue!38846))))

(declare-fun b!1043425 () Bool)

(declare-fun e!591239 () Bool)

(declare-datatypes ((SeekEntryResult!9830 0))(
  ( (MissingZero!9830 (index!41690 (_ BitVec 32))) (Found!9830 (index!41691 (_ BitVec 32))) (Intermediate!9830 (undefined!10642 Bool) (index!41692 (_ BitVec 32)) (x!93159 (_ BitVec 32))) (Undefined!9830) (MissingVacant!9830 (index!41693 (_ BitVec 32))) )
))
(declare-fun lt!459953 () SeekEntryResult!9830)

(assert (=> b!1043425 (= e!591239 (not (and (bvsge (index!41691 lt!459953) #b00000000000000000000000000000000) (bvslt (index!41691 lt!459953) (size!32175 (_keys!11639 thiss!1427))))))))

(declare-fun lt!459947 () array!65780)

(declare-datatypes ((tuple2!15840 0))(
  ( (tuple2!15841 (_1!7930 (_ BitVec 64)) (_2!7930 V!37963)) )
))
(declare-datatypes ((List!22116 0))(
  ( (Nil!22113) (Cons!22112 (h!23320 tuple2!15840) (t!31339 List!22116)) )
))
(declare-datatypes ((ListLongMap!13877 0))(
  ( (ListLongMap!13878 (toList!6954 List!22116)) )
))
(declare-fun -!530 (ListLongMap!13877 (_ BitVec 64)) ListLongMap!13877)

(declare-fun getCurrentListMap!3960 (array!65780 array!65782 (_ BitVec 32) (_ BitVec 32) V!37963 V!37963 (_ BitVec 32) Int) ListLongMap!13877)

(declare-fun dynLambda!2004 (Int (_ BitVec 64)) V!37963)

(assert (=> b!1043425 (= (-!530 (getCurrentListMap!3960 (_keys!11639 thiss!1427) (_values!6407 thiss!1427) (mask!30470 thiss!1427) (extraKeys!6112 thiss!1427) (zeroValue!6218 thiss!1427) (minValue!6218 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6384 thiss!1427)) key!909) (getCurrentListMap!3960 lt!459947 (array!65783 (store (arr!31640 (_values!6407 thiss!1427)) (index!41691 lt!459953) (ValueCellFull!11705 (dynLambda!2004 (defaultEntry!6384 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32176 (_values!6407 thiss!1427))) (mask!30470 thiss!1427) (extraKeys!6112 thiss!1427) (zeroValue!6218 thiss!1427) (minValue!6218 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6384 thiss!1427)))))

(declare-datatypes ((Unit!34070 0))(
  ( (Unit!34071) )
))
(declare-fun lt!459952 () Unit!34070)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!50 (array!65780 array!65782 (_ BitVec 32) (_ BitVec 32) V!37963 V!37963 (_ BitVec 32) (_ BitVec 64) Int) Unit!34070)

(assert (=> b!1043425 (= lt!459952 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!50 (_keys!11639 thiss!1427) (_values!6407 thiss!1427) (mask!30470 thiss!1427) (extraKeys!6112 thiss!1427) (zeroValue!6218 thiss!1427) (minValue!6218 thiss!1427) (index!41691 lt!459953) key!909 (defaultEntry!6384 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1043425 (not (arrayContainsKey!0 lt!459947 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!459949 () Unit!34070)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65780 (_ BitVec 32) (_ BitVec 64)) Unit!34070)

(assert (=> b!1043425 (= lt!459949 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11639 thiss!1427) (index!41691 lt!459953) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65780 (_ BitVec 32)) Bool)

(assert (=> b!1043425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!459947 (mask!30470 thiss!1427))))

(declare-fun lt!459948 () Unit!34070)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65780 (_ BitVec 32) (_ BitVec 32)) Unit!34070)

(assert (=> b!1043425 (= lt!459948 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11639 thiss!1427) (index!41691 lt!459953) (mask!30470 thiss!1427)))))

(declare-datatypes ((List!22117 0))(
  ( (Nil!22114) (Cons!22113 (h!23321 (_ BitVec 64)) (t!31340 List!22117)) )
))
(declare-fun arrayNoDuplicates!0 (array!65780 (_ BitVec 32) List!22117) Bool)

(assert (=> b!1043425 (arrayNoDuplicates!0 lt!459947 #b00000000000000000000000000000000 Nil!22114)))

(declare-fun lt!459950 () Unit!34070)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65780 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22117) Unit!34070)

(assert (=> b!1043425 (= lt!459950 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11639 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41691 lt!459953) #b00000000000000000000000000000000 Nil!22114))))

(declare-fun arrayCountValidKeys!0 (array!65780 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1043425 (= (arrayCountValidKeys!0 lt!459947 #b00000000000000000000000000000000 (size!32175 (_keys!11639 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11639 thiss!1427) #b00000000000000000000000000000000 (size!32175 (_keys!11639 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1043425 (= lt!459947 (array!65781 (store (arr!31639 (_keys!11639 thiss!1427)) (index!41691 lt!459953) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32175 (_keys!11639 thiss!1427))))))

(declare-fun lt!459951 () Unit!34070)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65780 (_ BitVec 32) (_ BitVec 64)) Unit!34070)

(assert (=> b!1043425 (= lt!459951 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11639 thiss!1427) (index!41691 lt!459953) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1043426 () Bool)

(assert (=> b!1043426 (= e!591244 e!591239)))

(declare-fun res!695240 () Bool)

(assert (=> b!1043426 (=> (not res!695240) (not e!591239))))

(assert (=> b!1043426 (= res!695240 (is-Found!9830 lt!459953))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65780 (_ BitVec 32)) SeekEntryResult!9830)

(assert (=> b!1043426 (= lt!459953 (seekEntry!0 key!909 (_keys!11639 thiss!1427) (mask!30470 thiss!1427)))))

(declare-fun mapIsEmpty!38846 () Bool)

(assert (=> mapIsEmpty!38846 mapRes!38846))

(declare-fun b!1043427 () Bool)

(declare-fun e!591241 () Bool)

(assert (=> b!1043427 (= e!591241 tp_is_empty!24817)))

(declare-fun b!1043428 () Bool)

(assert (=> b!1043428 (= e!591243 tp_is_empty!24817)))

(declare-fun b!1043429 () Bool)

(assert (=> b!1043429 (= e!591242 (and e!591241 mapRes!38846))))

(declare-fun condMapEmpty!38846 () Bool)

(declare-fun mapDefault!38846 () ValueCell!11705)

