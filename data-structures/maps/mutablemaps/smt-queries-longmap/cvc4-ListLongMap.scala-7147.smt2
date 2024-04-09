; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90876 () Bool)

(assert start!90876)

(declare-fun b!1038334 () Bool)

(declare-fun b_free!20939 () Bool)

(declare-fun b_next!20939 () Bool)

(assert (=> b!1038334 (= b_free!20939 (not b_next!20939))))

(declare-fun tp!73978 () Bool)

(declare-fun b_and!33489 () Bool)

(assert (=> b!1038334 (= tp!73978 b_and!33489)))

(declare-fun b!1038327 () Bool)

(declare-fun e!587532 () Bool)

(declare-fun e!587534 () Bool)

(assert (=> b!1038327 (= e!587532 e!587534)))

(declare-fun res!692764 () Bool)

(assert (=> b!1038327 (=> (not res!692764) (not e!587534))))

(declare-datatypes ((SeekEntryResult!9766 0))(
  ( (MissingZero!9766 (index!41434 (_ BitVec 32))) (Found!9766 (index!41435 (_ BitVec 32))) (Intermediate!9766 (undefined!10578 Bool) (index!41436 (_ BitVec 32)) (x!92640 (_ BitVec 32))) (Undefined!9766) (MissingVacant!9766 (index!41437 (_ BitVec 32))) )
))
(declare-fun lt!457687 () SeekEntryResult!9766)

(assert (=> b!1038327 (= res!692764 (is-Found!9766 lt!457687))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37751 0))(
  ( (V!37752 (val!12380 Int)) )
))
(declare-datatypes ((ValueCell!11626 0))(
  ( (ValueCellFull!11626 (v!14967 V!37751)) (EmptyCell!11626) )
))
(declare-datatypes ((array!65416 0))(
  ( (array!65417 (arr!31481 (Array (_ BitVec 32) (_ BitVec 64))) (size!32012 (_ BitVec 32))) )
))
(declare-datatypes ((array!65418 0))(
  ( (array!65419 (arr!31482 (Array (_ BitVec 32) ValueCell!11626)) (size!32013 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5846 0))(
  ( (LongMapFixedSize!5847 (defaultEntry!6305 Int) (mask!30236 (_ BitVec 32)) (extraKeys!6033 (_ BitVec 32)) (zeroValue!6139 V!37751) (minValue!6139 V!37751) (_size!2978 (_ BitVec 32)) (_keys!11503 array!65416) (_values!6328 array!65418) (_vacant!2978 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5846)

(declare-fun seekEntry!0 ((_ BitVec 64) array!65416 (_ BitVec 32)) SeekEntryResult!9766)

(assert (=> b!1038327 (= lt!457687 (seekEntry!0 key!909 (_keys!11503 thiss!1427) (mask!30236 thiss!1427)))))

(declare-fun mapNonEmpty!38532 () Bool)

(declare-fun mapRes!38532 () Bool)

(declare-fun tp!73979 () Bool)

(declare-fun e!587528 () Bool)

(assert (=> mapNonEmpty!38532 (= mapRes!38532 (and tp!73979 e!587528))))

(declare-fun mapKey!38532 () (_ BitVec 32))

(declare-fun mapValue!38532 () ValueCell!11626)

(declare-fun mapRest!38532 () (Array (_ BitVec 32) ValueCell!11626))

(assert (=> mapNonEmpty!38532 (= (arr!31482 (_values!6328 thiss!1427)) (store mapRest!38532 mapKey!38532 mapValue!38532))))

(declare-fun b!1038328 () Bool)

(declare-fun res!692759 () Bool)

(declare-fun e!587535 () Bool)

(assert (=> b!1038328 (=> res!692759 e!587535)))

(declare-datatypes ((List!22056 0))(
  ( (Nil!22053) (Cons!22052 (h!23255 (_ BitVec 64)) (t!31277 List!22056)) )
))
(declare-fun arrayNoDuplicates!0 (array!65416 (_ BitVec 32) List!22056) Bool)

(assert (=> b!1038328 (= res!692759 (not (arrayNoDuplicates!0 (_keys!11503 thiss!1427) #b00000000000000000000000000000000 Nil!22053)))))

(declare-fun b!1038329 () Bool)

(declare-fun e!587529 () Bool)

(declare-fun tp_is_empty!24659 () Bool)

(assert (=> b!1038329 (= e!587529 tp_is_empty!24659)))

(declare-fun b!1038330 () Bool)

(assert (=> b!1038330 (= e!587534 (not e!587535))))

(declare-fun res!692761 () Bool)

(assert (=> b!1038330 (=> res!692761 e!587535)))

(assert (=> b!1038330 (= res!692761 (or (bvsge (size!32012 (_keys!11503 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!32012 (_keys!11503 thiss!1427)))))))

(declare-fun arrayCountValidKeys!0 (array!65416 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1038330 (= (arrayCountValidKeys!0 (array!65417 (store (arr!31481 (_keys!11503 thiss!1427)) (index!41435 lt!457687) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32012 (_keys!11503 thiss!1427))) #b00000000000000000000000000000000 (size!32012 (_keys!11503 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11503 thiss!1427) #b00000000000000000000000000000000 (size!32012 (_keys!11503 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33962 0))(
  ( (Unit!33963) )
))
(declare-fun lt!457688 () Unit!33962)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65416 (_ BitVec 32) (_ BitVec 64)) Unit!33962)

(assert (=> b!1038330 (= lt!457688 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11503 thiss!1427) (index!41435 lt!457687) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038331 () Bool)

(declare-fun res!692760 () Bool)

(assert (=> b!1038331 (=> (not res!692760) (not e!587532))))

(assert (=> b!1038331 (= res!692760 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1038332 () Bool)

(assert (=> b!1038332 (= e!587528 tp_is_empty!24659)))

(declare-fun b!1038333 () Bool)

(declare-fun res!692763 () Bool)

(assert (=> b!1038333 (=> res!692763 e!587535)))

(declare-fun contains!6060 (List!22056 (_ BitVec 64)) Bool)

(assert (=> b!1038333 (= res!692763 (contains!6060 Nil!22053 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!38532 () Bool)

(assert (=> mapIsEmpty!38532 mapRes!38532))

(declare-fun e!587531 () Bool)

(declare-fun e!587533 () Bool)

(declare-fun array_inv!24181 (array!65416) Bool)

(declare-fun array_inv!24182 (array!65418) Bool)

(assert (=> b!1038334 (= e!587531 (and tp!73978 tp_is_empty!24659 (array_inv!24181 (_keys!11503 thiss!1427)) (array_inv!24182 (_values!6328 thiss!1427)) e!587533))))

(declare-fun b!1038335 () Bool)

(declare-fun res!692757 () Bool)

(assert (=> b!1038335 (=> res!692757 e!587535)))

(declare-fun noDuplicate!1502 (List!22056) Bool)

(assert (=> b!1038335 (= res!692757 (not (noDuplicate!1502 Nil!22053)))))

(declare-fun b!1038337 () Bool)

(assert (=> b!1038337 (= e!587535 true)))

(declare-fun b!1038338 () Bool)

(declare-fun res!692758 () Bool)

(assert (=> b!1038338 (=> res!692758 e!587535)))

(assert (=> b!1038338 (= res!692758 (contains!6060 Nil!22053 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1038336 () Bool)

(assert (=> b!1038336 (= e!587533 (and e!587529 mapRes!38532))))

(declare-fun condMapEmpty!38532 () Bool)

(declare-fun mapDefault!38532 () ValueCell!11626)

