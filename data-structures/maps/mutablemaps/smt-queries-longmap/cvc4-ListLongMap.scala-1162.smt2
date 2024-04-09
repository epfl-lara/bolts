; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24526 () Bool)

(assert start!24526)

(declare-fun b!256767 () Bool)

(declare-fun b_free!6725 () Bool)

(declare-fun b_next!6725 () Bool)

(assert (=> b!256767 (= b_free!6725 (not b_next!6725))))

(declare-fun tp!23478 () Bool)

(declare-fun b_and!13805 () Bool)

(assert (=> b!256767 (= tp!23478 b_and!13805)))

(declare-fun bm!24335 () Bool)

(declare-fun call!24338 () Bool)

(declare-datatypes ((V!8429 0))(
  ( (V!8430 (val!3338 Int)) )
))
(declare-datatypes ((ValueCell!2950 0))(
  ( (ValueCellFull!2950 (v!5423 V!8429)) (EmptyCell!2950) )
))
(declare-datatypes ((array!12514 0))(
  ( (array!12515 (arr!5927 (Array (_ BitVec 32) ValueCell!2950)) (size!6274 (_ BitVec 32))) )
))
(declare-datatypes ((array!12516 0))(
  ( (array!12517 (arr!5928 (Array (_ BitVec 32) (_ BitVec 64))) (size!6275 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3800 0))(
  ( (LongMapFixedSize!3801 (defaultEntry!4738 Int) (mask!11016 (_ BitVec 32)) (extraKeys!4475 (_ BitVec 32)) (zeroValue!4579 V!8429) (minValue!4579 V!8429) (_size!1949 (_ BitVec 32)) (_keys!6902 array!12516) (_values!4721 array!12514) (_vacant!1949 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3800)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24335 (= call!24338 (arrayContainsKey!0 (_keys!6902 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!256747 () Bool)

(declare-fun e!166448 () Bool)

(assert (=> b!256747 (= e!166448 (bvslt (size!6275 (_keys!6902 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!256748 () Bool)

(declare-datatypes ((Unit!7970 0))(
  ( (Unit!7971) )
))
(declare-fun e!166442 () Unit!7970)

(declare-fun Unit!7972 () Unit!7970)

(assert (=> b!256748 (= e!166442 Unit!7972)))

(declare-fun lt!129015 () Unit!7970)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!431 (array!12516 array!12514 (_ BitVec 32) (_ BitVec 32) V!8429 V!8429 (_ BitVec 64) Int) Unit!7970)

(assert (=> b!256748 (= lt!129015 (lemmaInListMapThenSeekEntryOrOpenFindsIt!431 (_keys!6902 thiss!1504) (_values!4721 thiss!1504) (mask!11016 thiss!1504) (extraKeys!4475 thiss!1504) (zeroValue!4579 thiss!1504) (minValue!4579 thiss!1504) key!932 (defaultEntry!4738 thiss!1504)))))

(assert (=> b!256748 false))

(declare-fun mapNonEmpty!11211 () Bool)

(declare-fun mapRes!11211 () Bool)

(declare-fun tp!23477 () Bool)

(declare-fun e!166444 () Bool)

(assert (=> mapNonEmpty!11211 (= mapRes!11211 (and tp!23477 e!166444))))

(declare-fun mapKey!11211 () (_ BitVec 32))

(declare-fun mapValue!11211 () ValueCell!2950)

(declare-fun mapRest!11211 () (Array (_ BitVec 32) ValueCell!2950))

(assert (=> mapNonEmpty!11211 (= (arr!5927 (_values!4721 thiss!1504)) (store mapRest!11211 mapKey!11211 mapValue!11211))))

(declare-fun b!256749 () Bool)

(declare-fun c!43402 () Bool)

(declare-datatypes ((SeekEntryResult!1176 0))(
  ( (MissingZero!1176 (index!6874 (_ BitVec 32))) (Found!1176 (index!6875 (_ BitVec 32))) (Intermediate!1176 (undefined!1988 Bool) (index!6876 (_ BitVec 32)) (x!24990 (_ BitVec 32))) (Undefined!1176) (MissingVacant!1176 (index!6877 (_ BitVec 32))) )
))
(declare-fun lt!129004 () SeekEntryResult!1176)

(assert (=> b!256749 (= c!43402 (is-MissingVacant!1176 lt!129004))))

(declare-fun e!166443 () Bool)

(declare-fun e!166454 () Bool)

(assert (=> b!256749 (= e!166443 e!166454)))

(declare-fun mapIsEmpty!11211 () Bool)

(assert (=> mapIsEmpty!11211 mapRes!11211))

(declare-fun b!256750 () Bool)

(declare-fun e!166445 () Unit!7970)

(declare-fun Unit!7973 () Unit!7970)

(assert (=> b!256750 (= e!166445 Unit!7973)))

(declare-fun lt!129005 () Unit!7970)

(declare-fun lemmaArrayContainsKeyThenInListMap!236 (array!12516 array!12514 (_ BitVec 32) (_ BitVec 32) V!8429 V!8429 (_ BitVec 64) (_ BitVec 32) Int) Unit!7970)

(assert (=> b!256750 (= lt!129005 (lemmaArrayContainsKeyThenInListMap!236 (_keys!6902 thiss!1504) (_values!4721 thiss!1504) (mask!11016 thiss!1504) (extraKeys!4475 thiss!1504) (zeroValue!4579 thiss!1504) (minValue!4579 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4738 thiss!1504)))))

(assert (=> b!256750 false))

(declare-fun b!256751 () Bool)

(declare-fun e!166447 () Bool)

(declare-fun e!166453 () Bool)

(assert (=> b!256751 (= e!166447 e!166453)))

(declare-fun res!125617 () Bool)

(assert (=> b!256751 (=> (not res!125617) (not e!166453))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!256751 (= res!125617 (or (= lt!129004 (MissingZero!1176 index!297)) (= lt!129004 (MissingVacant!1176 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12516 (_ BitVec 32)) SeekEntryResult!1176)

(assert (=> b!256751 (= lt!129004 (seekEntryOrOpen!0 key!932 (_keys!6902 thiss!1504) (mask!11016 thiss!1504)))))

(declare-fun b!256752 () Bool)

(declare-fun e!166440 () Bool)

(assert (=> b!256752 (= e!166440 (not call!24338))))

(declare-fun b!256753 () Bool)

(assert (=> b!256753 (= e!166454 e!166440)))

(declare-fun res!125622 () Bool)

(declare-fun call!24339 () Bool)

(assert (=> b!256753 (= res!125622 call!24339)))

(assert (=> b!256753 (=> (not res!125622) (not e!166440))))

(declare-fun b!256754 () Bool)

(declare-fun res!125619 () Bool)

(assert (=> b!256754 (= res!125619 (= (select (arr!5928 (_keys!6902 thiss!1504)) (index!6877 lt!129004)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!256754 (=> (not res!125619) (not e!166440))))

(declare-fun b!256755 () Bool)

(declare-fun e!166452 () Bool)

(declare-fun tp_is_empty!6587 () Bool)

(assert (=> b!256755 (= e!166452 tp_is_empty!6587)))

(declare-fun b!256756 () Bool)

(declare-fun e!166441 () Bool)

(assert (=> b!256756 (= e!166441 (not e!166448))))

(declare-fun res!125620 () Bool)

(assert (=> b!256756 (=> (not res!125620) (not e!166448))))

(assert (=> b!256756 (= res!125620 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6275 (_keys!6902 thiss!1504)))))))

(declare-fun lt!129012 () array!12516)

(assert (=> b!256756 (arrayContainsKey!0 lt!129012 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!129016 () Unit!7970)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12516 (_ BitVec 64) (_ BitVec 32)) Unit!7970)

(assert (=> b!256756 (= lt!129016 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129012 key!932 index!297))))

(declare-datatypes ((tuple2!4912 0))(
  ( (tuple2!4913 (_1!2466 (_ BitVec 64)) (_2!2466 V!8429)) )
))
(declare-datatypes ((List!3815 0))(
  ( (Nil!3812) (Cons!3811 (h!4473 tuple2!4912) (t!8880 List!3815)) )
))
(declare-datatypes ((ListLongMap!3839 0))(
  ( (ListLongMap!3840 (toList!1935 List!3815)) )
))
(declare-fun lt!129007 () ListLongMap!3839)

(declare-fun v!346 () V!8429)

(declare-fun +!679 (ListLongMap!3839 tuple2!4912) ListLongMap!3839)

(declare-fun getCurrentListMap!1458 (array!12516 array!12514 (_ BitVec 32) (_ BitVec 32) V!8429 V!8429 (_ BitVec 32) Int) ListLongMap!3839)

(assert (=> b!256756 (= (+!679 lt!129007 (tuple2!4913 key!932 v!346)) (getCurrentListMap!1458 lt!129012 (array!12515 (store (arr!5927 (_values!4721 thiss!1504)) index!297 (ValueCellFull!2950 v!346)) (size!6274 (_values!4721 thiss!1504))) (mask!11016 thiss!1504) (extraKeys!4475 thiss!1504) (zeroValue!4579 thiss!1504) (minValue!4579 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4738 thiss!1504)))))

(declare-fun lt!129014 () Unit!7970)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!94 (array!12516 array!12514 (_ BitVec 32) (_ BitVec 32) V!8429 V!8429 (_ BitVec 32) (_ BitVec 64) V!8429 Int) Unit!7970)

(assert (=> b!256756 (= lt!129014 (lemmaAddValidKeyToArrayThenAddPairToListMap!94 (_keys!6902 thiss!1504) (_values!4721 thiss!1504) (mask!11016 thiss!1504) (extraKeys!4475 thiss!1504) (zeroValue!4579 thiss!1504) (minValue!4579 thiss!1504) index!297 key!932 v!346 (defaultEntry!4738 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12516 (_ BitVec 32)) Bool)

(assert (=> b!256756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!129012 (mask!11016 thiss!1504))))

(declare-fun lt!129010 () Unit!7970)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12516 (_ BitVec 32) (_ BitVec 32)) Unit!7970)

(assert (=> b!256756 (= lt!129010 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6902 thiss!1504) index!297 (mask!11016 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12516 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!256756 (= (arrayCountValidKeys!0 lt!129012 #b00000000000000000000000000000000 (size!6275 (_keys!6902 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6902 thiss!1504) #b00000000000000000000000000000000 (size!6275 (_keys!6902 thiss!1504)))))))

(declare-fun lt!129013 () Unit!7970)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12516 (_ BitVec 32) (_ BitVec 64)) Unit!7970)

(assert (=> b!256756 (= lt!129013 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6902 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3816 0))(
  ( (Nil!3813) (Cons!3812 (h!4474 (_ BitVec 64)) (t!8881 List!3816)) )
))
(declare-fun arrayNoDuplicates!0 (array!12516 (_ BitVec 32) List!3816) Bool)

(assert (=> b!256756 (arrayNoDuplicates!0 lt!129012 #b00000000000000000000000000000000 Nil!3813)))

(assert (=> b!256756 (= lt!129012 (array!12517 (store (arr!5928 (_keys!6902 thiss!1504)) index!297 key!932) (size!6275 (_keys!6902 thiss!1504))))))

(declare-fun lt!129011 () Unit!7970)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12516 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3816) Unit!7970)

(assert (=> b!256756 (= lt!129011 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6902 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3813))))

(declare-fun lt!129009 () Unit!7970)

(assert (=> b!256756 (= lt!129009 e!166445)))

(declare-fun c!43400 () Bool)

(assert (=> b!256756 (= c!43400 (arrayContainsKey!0 (_keys!6902 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!256757 () Bool)

(declare-fun Unit!7974 () Unit!7970)

(assert (=> b!256757 (= e!166445 Unit!7974)))

(declare-fun b!256758 () Bool)

(assert (=> b!256758 (= e!166444 tp_is_empty!6587)))

(declare-fun b!256759 () Bool)

(declare-fun res!125623 () Bool)

(declare-fun e!166451 () Bool)

(assert (=> b!256759 (=> (not res!125623) (not e!166451))))

(assert (=> b!256759 (= res!125623 call!24339)))

(assert (=> b!256759 (= e!166443 e!166451)))

(declare-fun b!256760 () Bool)

(declare-fun res!125615 () Bool)

(assert (=> b!256760 (=> (not res!125615) (not e!166451))))

(assert (=> b!256760 (= res!125615 (= (select (arr!5928 (_keys!6902 thiss!1504)) (index!6874 lt!129004)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!256761 () Bool)

(declare-fun res!125616 () Bool)

(assert (=> b!256761 (=> (not res!125616) (not e!166447))))

(assert (=> b!256761 (= res!125616 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!125618 () Bool)

(assert (=> start!24526 (=> (not res!125618) (not e!166447))))

(declare-fun valid!1477 (LongMapFixedSize!3800) Bool)

(assert (=> start!24526 (= res!125618 (valid!1477 thiss!1504))))

(assert (=> start!24526 e!166447))

(declare-fun e!166446 () Bool)

(assert (=> start!24526 e!166446))

(assert (=> start!24526 true))

(assert (=> start!24526 tp_is_empty!6587))

(declare-fun b!256762 () Bool)

(declare-fun res!125624 () Bool)

(assert (=> b!256762 (=> (not res!125624) (not e!166448))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!256762 (= res!125624 (validKeyInArray!0 key!932))))

(declare-fun b!256763 () Bool)

(declare-fun e!166450 () Bool)

(assert (=> b!256763 (= e!166450 (and e!166452 mapRes!11211))))

(declare-fun condMapEmpty!11211 () Bool)

(declare-fun mapDefault!11211 () ValueCell!2950)

