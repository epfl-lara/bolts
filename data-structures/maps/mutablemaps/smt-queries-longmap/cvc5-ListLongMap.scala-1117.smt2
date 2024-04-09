; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22960 () Bool)

(assert start!22960)

(declare-fun b!239870 () Bool)

(declare-fun b_free!6451 () Bool)

(declare-fun b_next!6451 () Bool)

(assert (=> b!239870 (= b_free!6451 (not b_next!6451))))

(declare-fun tp!22556 () Bool)

(declare-fun b_and!13435 () Bool)

(assert (=> b!239870 (= tp!22556 b_and!13435)))

(declare-fun b!239869 () Bool)

(declare-datatypes ((Unit!7370 0))(
  ( (Unit!7371) )
))
(declare-fun e!155753 () Unit!7370)

(declare-fun Unit!7372 () Unit!7370)

(assert (=> b!239869 (= e!155753 Unit!7372)))

(declare-fun lt!120906 () Unit!7370)

(declare-datatypes ((V!8065 0))(
  ( (V!8066 (val!3201 Int)) )
))
(declare-datatypes ((ValueCell!2813 0))(
  ( (ValueCellFull!2813 (v!5235 V!8065)) (EmptyCell!2813) )
))
(declare-datatypes ((array!11904 0))(
  ( (array!11905 (arr!5653 (Array (_ BitVec 32) ValueCell!2813)) (size!5994 (_ BitVec 32))) )
))
(declare-datatypes ((array!11906 0))(
  ( (array!11907 (arr!5654 (Array (_ BitVec 32) (_ BitVec 64))) (size!5995 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3526 0))(
  ( (LongMapFixedSize!3527 (defaultEntry!4448 Int) (mask!10500 (_ BitVec 32)) (extraKeys!4185 (_ BitVec 32)) (zeroValue!4289 V!8065) (minValue!4289 V!8065) (_size!1812 (_ BitVec 32)) (_keys!6550 array!11906) (_values!4431 array!11904) (_vacant!1812 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3526)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!334 (array!11906 array!11904 (_ BitVec 32) (_ BitVec 32) V!8065 V!8065 (_ BitVec 64) Int) Unit!7370)

(assert (=> b!239869 (= lt!120906 (lemmaInListMapThenSeekEntryOrOpenFindsIt!334 (_keys!6550 thiss!1504) (_values!4431 thiss!1504) (mask!10500 thiss!1504) (extraKeys!4185 thiss!1504) (zeroValue!4289 thiss!1504) (minValue!4289 thiss!1504) key!932 (defaultEntry!4448 thiss!1504)))))

(assert (=> b!239869 false))

(declare-fun e!155748 () Bool)

(declare-fun e!155744 () Bool)

(declare-fun tp_is_empty!6313 () Bool)

(declare-fun array_inv!3731 (array!11906) Bool)

(declare-fun array_inv!3732 (array!11904) Bool)

(assert (=> b!239870 (= e!155744 (and tp!22556 tp_is_empty!6313 (array_inv!3731 (_keys!6550 thiss!1504)) (array_inv!3732 (_values!4431 thiss!1504)) e!155748))))

(declare-fun b!239871 () Bool)

(declare-fun res!117589 () Bool)

(declare-fun e!155745 () Bool)

(assert (=> b!239871 (=> (not res!117589) (not e!155745))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11906 (_ BitVec 32)) Bool)

(assert (=> b!239871 (= res!117589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6550 thiss!1504) (mask!10500 thiss!1504)))))

(declare-fun b!239872 () Bool)

(declare-fun e!155741 () Bool)

(assert (=> b!239872 (= e!155741 tp_is_empty!6313)))

(declare-fun b!239873 () Bool)

(declare-fun res!117593 () Bool)

(declare-fun e!155752 () Bool)

(assert (=> b!239873 (=> (not res!117593) (not e!155752))))

(declare-fun call!22311 () Bool)

(assert (=> b!239873 (= res!117593 call!22311)))

(declare-fun e!155751 () Bool)

(assert (=> b!239873 (= e!155751 e!155752)))

(declare-fun b!239874 () Bool)

(declare-fun e!155750 () Bool)

(assert (=> b!239874 (= e!155750 e!155745)))

(declare-fun res!117595 () Bool)

(assert (=> b!239874 (=> (not res!117595) (not e!155745))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!239874 (= res!117595 (inRange!0 index!297 (mask!10500 thiss!1504)))))

(declare-fun lt!120905 () Unit!7370)

(assert (=> b!239874 (= lt!120905 e!155753)))

(declare-fun c!39964 () Bool)

(declare-datatypes ((tuple2!4714 0))(
  ( (tuple2!4715 (_1!2367 (_ BitVec 64)) (_2!2367 V!8065)) )
))
(declare-datatypes ((List!3621 0))(
  ( (Nil!3618) (Cons!3617 (h!4273 tuple2!4714) (t!8624 List!3621)) )
))
(declare-datatypes ((ListLongMap!3641 0))(
  ( (ListLongMap!3642 (toList!1836 List!3621)) )
))
(declare-fun contains!1718 (ListLongMap!3641 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1359 (array!11906 array!11904 (_ BitVec 32) (_ BitVec 32) V!8065 V!8065 (_ BitVec 32) Int) ListLongMap!3641)

(assert (=> b!239874 (= c!39964 (contains!1718 (getCurrentListMap!1359 (_keys!6550 thiss!1504) (_values!4431 thiss!1504) (mask!10500 thiss!1504) (extraKeys!4185 thiss!1504) (zeroValue!4289 thiss!1504) (minValue!4289 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4448 thiss!1504)) key!932))))

(declare-fun b!239875 () Bool)

(declare-fun res!117585 () Bool)

(declare-datatypes ((SeekEntryResult!1049 0))(
  ( (MissingZero!1049 (index!6366 (_ BitVec 32))) (Found!1049 (index!6367 (_ BitVec 32))) (Intermediate!1049 (undefined!1861 Bool) (index!6368 (_ BitVec 32)) (x!24145 (_ BitVec 32))) (Undefined!1049) (MissingVacant!1049 (index!6369 (_ BitVec 32))) )
))
(declare-fun lt!120904 () SeekEntryResult!1049)

(assert (=> b!239875 (= res!117585 (= (select (arr!5654 (_keys!6550 thiss!1504)) (index!6369 lt!120904)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!155743 () Bool)

(assert (=> b!239875 (=> (not res!117585) (not e!155743))))

(declare-fun b!239876 () Bool)

(declare-fun e!155742 () Bool)

(declare-fun mapRes!10701 () Bool)

(assert (=> b!239876 (= e!155748 (and e!155742 mapRes!10701))))

(declare-fun condMapEmpty!10701 () Bool)

(declare-fun mapDefault!10701 () ValueCell!2813)

