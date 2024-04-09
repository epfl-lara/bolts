; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89478 () Bool)

(assert start!89478)

(declare-fun b!1025605 () Bool)

(declare-fun b_free!20441 () Bool)

(declare-fun b_next!20441 () Bool)

(assert (=> b!1025605 (= b_free!20441 (not b_next!20441))))

(declare-fun tp!72369 () Bool)

(declare-fun b_and!32705 () Bool)

(assert (=> b!1025605 (= tp!72369 b_and!32705)))

(declare-fun b!1025596 () Bool)

(declare-fun res!686725 () Bool)

(declare-fun e!578359 () Bool)

(assert (=> b!1025596 (=> res!686725 e!578359)))

(declare-datatypes ((V!37087 0))(
  ( (V!37088 (val!12131 Int)) )
))
(declare-datatypes ((ValueCell!11377 0))(
  ( (ValueCellFull!11377 (v!14701 V!37087)) (EmptyCell!11377) )
))
(declare-datatypes ((array!64356 0))(
  ( (array!64357 (arr!30983 (Array (_ BitVec 32) (_ BitVec 64))) (size!31497 (_ BitVec 32))) )
))
(declare-datatypes ((array!64358 0))(
  ( (array!64359 (arr!30984 (Array (_ BitVec 32) ValueCell!11377)) (size!31498 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5348 0))(
  ( (LongMapFixedSize!5349 (defaultEntry!6026 Int) (mask!29695 (_ BitVec 32)) (extraKeys!5758 (_ BitVec 32)) (zeroValue!5862 V!37087) (minValue!5862 V!37087) (_size!2729 (_ BitVec 32)) (_keys!11170 array!64356) (_values!6049 array!64358) (_vacant!2729 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5348)

(declare-datatypes ((List!21864 0))(
  ( (Nil!21861) (Cons!21860 (h!23058 (_ BitVec 64)) (t!30933 List!21864)) )
))
(declare-fun arrayNoDuplicates!0 (array!64356 (_ BitVec 32) List!21864) Bool)

(assert (=> b!1025596 (= res!686725 (not (arrayNoDuplicates!0 (_keys!11170 thiss!1427) #b00000000000000000000000000000000 Nil!21861)))))

(declare-fun b!1025597 () Bool)

(declare-fun res!686721 () Bool)

(declare-fun e!578355 () Bool)

(assert (=> b!1025597 (=> (not res!686721) (not e!578355))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1025597 (= res!686721 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025598 () Bool)

(declare-fun e!578358 () Bool)

(assert (=> b!1025598 (= e!578355 e!578358)))

(declare-fun res!686723 () Bool)

(assert (=> b!1025598 (=> (not res!686723) (not e!578358))))

(declare-datatypes ((SeekEntryResult!9612 0))(
  ( (MissingZero!9612 (index!40818 (_ BitVec 32))) (Found!9612 (index!40819 (_ BitVec 32))) (Intermediate!9612 (undefined!10424 Bool) (index!40820 (_ BitVec 32)) (x!91189 (_ BitVec 32))) (Undefined!9612) (MissingVacant!9612 (index!40821 (_ BitVec 32))) )
))
(declare-fun lt!451011 () SeekEntryResult!9612)

(assert (=> b!1025598 (= res!686723 (is-Found!9612 lt!451011))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64356 (_ BitVec 32)) SeekEntryResult!9612)

(assert (=> b!1025598 (= lt!451011 (seekEntry!0 key!909 (_keys!11170 thiss!1427) (mask!29695 thiss!1427)))))

(declare-fun b!1025599 () Bool)

(assert (=> b!1025599 (= e!578358 (not e!578359))))

(declare-fun res!686727 () Bool)

(assert (=> b!1025599 (=> res!686727 e!578359)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025599 (= res!686727 (not (validMask!0 (mask!29695 thiss!1427))))))

(declare-fun lt!451012 () array!64356)

(assert (=> b!1025599 (arrayNoDuplicates!0 lt!451012 #b00000000000000000000000000000000 Nil!21861)))

(declare-datatypes ((Unit!33362 0))(
  ( (Unit!33363) )
))
(declare-fun lt!451013 () Unit!33362)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64356 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21864) Unit!33362)

(assert (=> b!1025599 (= lt!451013 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11170 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40819 lt!451011) #b00000000000000000000000000000000 Nil!21861))))

(declare-fun arrayCountValidKeys!0 (array!64356 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025599 (= (arrayCountValidKeys!0 lt!451012 #b00000000000000000000000000000000 (size!31497 (_keys!11170 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11170 thiss!1427) #b00000000000000000000000000000000 (size!31497 (_keys!11170 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025599 (= lt!451012 (array!64357 (store (arr!30983 (_keys!11170 thiss!1427)) (index!40819 lt!451011) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31497 (_keys!11170 thiss!1427))))))

(declare-fun lt!451015 () Unit!33362)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64356 (_ BitVec 32) (_ BitVec 64)) Unit!33362)

(assert (=> b!1025599 (= lt!451015 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11170 thiss!1427) (index!40819 lt!451011) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1025600 () Bool)

(assert (=> b!1025600 (= e!578359 true)))

(declare-fun lt!451014 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64356 (_ BitVec 32)) Bool)

(assert (=> b!1025600 (= lt!451014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11170 thiss!1427) (mask!29695 thiss!1427)))))

(declare-fun b!1025601 () Bool)

(declare-fun e!578360 () Bool)

(declare-fun tp_is_empty!24161 () Bool)

(assert (=> b!1025601 (= e!578360 tp_is_empty!24161)))

(declare-fun mapIsEmpty!37670 () Bool)

(declare-fun mapRes!37670 () Bool)

(assert (=> mapIsEmpty!37670 mapRes!37670))

(declare-fun b!1025602 () Bool)

(declare-fun e!578357 () Bool)

(assert (=> b!1025602 (= e!578357 (and e!578360 mapRes!37670))))

(declare-fun condMapEmpty!37670 () Bool)

(declare-fun mapDefault!37670 () ValueCell!11377)

