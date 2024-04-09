; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23802 () Bool)

(assert start!23802)

(declare-fun b!249639 () Bool)

(declare-fun b_free!6619 () Bool)

(declare-fun b_next!6619 () Bool)

(assert (=> b!249639 (= b_free!6619 (not b_next!6619))))

(declare-fun tp!23118 () Bool)

(declare-fun b_and!13651 () Bool)

(assert (=> b!249639 (= tp!23118 b_and!13651)))

(declare-fun mapNonEmpty!11010 () Bool)

(declare-fun mapRes!11010 () Bool)

(declare-fun tp!23117 () Bool)

(declare-fun e!161913 () Bool)

(assert (=> mapNonEmpty!11010 (= mapRes!11010 (and tp!23117 e!161913))))

(declare-datatypes ((V!8289 0))(
  ( (V!8290 (val!3285 Int)) )
))
(declare-datatypes ((ValueCell!2897 0))(
  ( (ValueCellFull!2897 (v!5344 V!8289)) (EmptyCell!2897) )
))
(declare-datatypes ((array!12276 0))(
  ( (array!12277 (arr!5821 (Array (_ BitVec 32) ValueCell!2897)) (size!6165 (_ BitVec 32))) )
))
(declare-datatypes ((array!12278 0))(
  ( (array!12279 (arr!5822 (Array (_ BitVec 32) (_ BitVec 64))) (size!6166 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3694 0))(
  ( (LongMapFixedSize!3695 (defaultEntry!4616 Int) (mask!10788 (_ BitVec 32)) (extraKeys!4353 (_ BitVec 32)) (zeroValue!4457 V!8289) (minValue!4457 V!8289) (_size!1896 (_ BitVec 32)) (_keys!6748 array!12278) (_values!4599 array!12276) (_vacant!1896 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3694)

(declare-fun mapValue!11010 () ValueCell!2897)

(declare-fun mapRest!11010 () (Array (_ BitVec 32) ValueCell!2897))

(declare-fun mapKey!11010 () (_ BitVec 32))

(assert (=> mapNonEmpty!11010 (= (arr!5821 (_values!4599 thiss!1504)) (store mapRest!11010 mapKey!11010 mapValue!11010))))

(declare-fun call!23443 () Bool)

(declare-fun bm!23440 () Bool)

(declare-fun c!41888 () Bool)

(declare-datatypes ((SeekEntryResult!1128 0))(
  ( (MissingZero!1128 (index!6682 (_ BitVec 32))) (Found!1128 (index!6683 (_ BitVec 32))) (Intermediate!1128 (undefined!1940 Bool) (index!6684 (_ BitVec 32)) (x!24652 (_ BitVec 32))) (Undefined!1128) (MissingVacant!1128 (index!6685 (_ BitVec 32))) )
))
(declare-fun lt!125089 () SeekEntryResult!1128)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23440 (= call!23443 (inRange!0 (ite c!41888 (index!6682 lt!125089) (index!6685 lt!125089)) (mask!10788 thiss!1504)))))

(declare-fun b!249633 () Bool)

(declare-datatypes ((Unit!7727 0))(
  ( (Unit!7728) )
))
(declare-fun e!161918 () Unit!7727)

(declare-fun Unit!7729 () Unit!7727)

(assert (=> b!249633 (= e!161918 Unit!7729)))

(declare-fun lt!125095 () Unit!7727)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!396 (array!12278 array!12276 (_ BitVec 32) (_ BitVec 32) V!8289 V!8289 (_ BitVec 64) Int) Unit!7727)

(assert (=> b!249633 (= lt!125095 (lemmaInListMapThenSeekEntryOrOpenFindsIt!396 (_keys!6748 thiss!1504) (_values!4599 thiss!1504) (mask!10788 thiss!1504) (extraKeys!4353 thiss!1504) (zeroValue!4457 thiss!1504) (minValue!4457 thiss!1504) key!932 (defaultEntry!4616 thiss!1504)))))

(assert (=> b!249633 false))

(declare-fun b!249634 () Bool)

(declare-fun e!161921 () Bool)

(declare-fun call!23444 () Bool)

(assert (=> b!249634 (= e!161921 (not call!23444))))

(declare-fun b!249635 () Bool)

(declare-fun e!161922 () Bool)

(assert (=> b!249635 (= e!161922 (not call!23444))))

(declare-fun b!249636 () Bool)

(declare-fun e!161925 () Bool)

(declare-fun e!161919 () Bool)

(assert (=> b!249636 (= e!161925 (not e!161919))))

(declare-fun res!122311 () Bool)

(assert (=> b!249636 (=> res!122311 e!161919)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!249636 (= res!122311 (not (validMask!0 (mask!10788 thiss!1504))))))

(declare-fun lt!125097 () array!12278)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12278 (_ BitVec 32)) Bool)

(assert (=> b!249636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!125097 (mask!10788 thiss!1504))))

(declare-fun lt!125093 () Unit!7727)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12278 (_ BitVec 32) (_ BitVec 32)) Unit!7727)

(assert (=> b!249636 (= lt!125093 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6748 thiss!1504) index!297 (mask!10788 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12278 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!249636 (= (arrayCountValidKeys!0 lt!125097 #b00000000000000000000000000000000 (size!6166 (_keys!6748 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6748 thiss!1504) #b00000000000000000000000000000000 (size!6166 (_keys!6748 thiss!1504)))))))

(declare-fun lt!125091 () Unit!7727)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12278 (_ BitVec 32) (_ BitVec 64)) Unit!7727)

(assert (=> b!249636 (= lt!125091 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6748 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3737 0))(
  ( (Nil!3734) (Cons!3733 (h!4392 (_ BitVec 64)) (t!8776 List!3737)) )
))
(declare-fun arrayNoDuplicates!0 (array!12278 (_ BitVec 32) List!3737) Bool)

(assert (=> b!249636 (arrayNoDuplicates!0 lt!125097 #b00000000000000000000000000000000 Nil!3734)))

(assert (=> b!249636 (= lt!125097 (array!12279 (store (arr!5822 (_keys!6748 thiss!1504)) index!297 key!932) (size!6166 (_keys!6748 thiss!1504))))))

(declare-fun lt!125092 () Unit!7727)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12278 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3737) Unit!7727)

(assert (=> b!249636 (= lt!125092 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6748 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3734))))

(declare-fun lt!125096 () Unit!7727)

(declare-fun e!161920 () Unit!7727)

(assert (=> b!249636 (= lt!125096 e!161920)))

(declare-fun c!41887 () Bool)

(declare-fun arrayContainsKey!0 (array!12278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!249636 (= c!41887 (arrayContainsKey!0 (_keys!6748 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!249637 () Bool)

(declare-fun res!122314 () Bool)

(assert (=> b!249637 (= res!122314 (= (select (arr!5822 (_keys!6748 thiss!1504)) (index!6685 lt!125089)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!249637 (=> (not res!122314) (not e!161921))))

(declare-fun b!249638 () Bool)

(declare-fun Unit!7730 () Unit!7727)

(assert (=> b!249638 (= e!161920 Unit!7730)))

(declare-fun e!161914 () Bool)

(declare-fun e!161916 () Bool)

(declare-fun tp_is_empty!6481 () Bool)

(declare-fun array_inv!3833 (array!12278) Bool)

(declare-fun array_inv!3834 (array!12276) Bool)

(assert (=> b!249639 (= e!161916 (and tp!23118 tp_is_empty!6481 (array_inv!3833 (_keys!6748 thiss!1504)) (array_inv!3834 (_values!4599 thiss!1504)) e!161914))))

(declare-fun b!249640 () Bool)

(declare-fun e!161924 () Bool)

(assert (=> b!249640 (= e!161924 tp_is_empty!6481)))

(declare-fun b!249641 () Bool)

(declare-fun res!122310 () Bool)

(assert (=> b!249641 (=> (not res!122310) (not e!161922))))

(assert (=> b!249641 (= res!122310 (= (select (arr!5822 (_keys!6748 thiss!1504)) (index!6682 lt!125089)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!249642 () Bool)

(assert (=> b!249642 (= e!161919 (or (not (= (size!6165 (_values!4599 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10788 thiss!1504)))) (= (size!6166 (_keys!6748 thiss!1504)) (size!6165 (_values!4599 thiss!1504)))))))

(declare-fun b!249643 () Bool)

(assert (=> b!249643 (= e!161913 tp_is_empty!6481)))

(declare-fun b!249644 () Bool)

(declare-fun e!161926 () Bool)

(assert (=> b!249644 (= e!161926 e!161925)))

(declare-fun res!122313 () Bool)

(assert (=> b!249644 (=> (not res!122313) (not e!161925))))

(assert (=> b!249644 (= res!122313 (inRange!0 index!297 (mask!10788 thiss!1504)))))

(declare-fun lt!125090 () Unit!7727)

(assert (=> b!249644 (= lt!125090 e!161918)))

(declare-fun c!41885 () Bool)

(declare-datatypes ((tuple2!4832 0))(
  ( (tuple2!4833 (_1!2426 (_ BitVec 64)) (_2!2426 V!8289)) )
))
(declare-datatypes ((List!3738 0))(
  ( (Nil!3735) (Cons!3734 (h!4393 tuple2!4832) (t!8777 List!3738)) )
))
(declare-datatypes ((ListLongMap!3759 0))(
  ( (ListLongMap!3760 (toList!1895 List!3738)) )
))
(declare-fun contains!1808 (ListLongMap!3759 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1418 (array!12278 array!12276 (_ BitVec 32) (_ BitVec 32) V!8289 V!8289 (_ BitVec 32) Int) ListLongMap!3759)

(assert (=> b!249644 (= c!41885 (contains!1808 (getCurrentListMap!1418 (_keys!6748 thiss!1504) (_values!4599 thiss!1504) (mask!10788 thiss!1504) (extraKeys!4353 thiss!1504) (zeroValue!4457 thiss!1504) (minValue!4457 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4616 thiss!1504)) key!932))))

(declare-fun b!249645 () Bool)

(assert (=> b!249645 (= e!161914 (and e!161924 mapRes!11010))))

(declare-fun condMapEmpty!11010 () Bool)

(declare-fun mapDefault!11010 () ValueCell!2897)

