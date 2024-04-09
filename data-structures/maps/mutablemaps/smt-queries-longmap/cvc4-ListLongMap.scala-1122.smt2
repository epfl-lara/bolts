; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22994 () Bool)

(assert start!22994)

(declare-fun b!240990 () Bool)

(declare-fun b_free!6485 () Bool)

(declare-fun b_next!6485 () Bool)

(assert (=> b!240990 (= b_free!6485 (not b_next!6485))))

(declare-fun tp!22658 () Bool)

(declare-fun b_and!13469 () Bool)

(assert (=> b!240990 (= tp!22658 b_and!13469)))

(declare-fun b!240975 () Bool)

(declare-fun e!156421 () Bool)

(declare-datatypes ((V!8109 0))(
  ( (V!8110 (val!3218 Int)) )
))
(declare-datatypes ((ValueCell!2830 0))(
  ( (ValueCellFull!2830 (v!5252 V!8109)) (EmptyCell!2830) )
))
(declare-datatypes ((array!11972 0))(
  ( (array!11973 (arr!5687 (Array (_ BitVec 32) ValueCell!2830)) (size!6028 (_ BitVec 32))) )
))
(declare-datatypes ((array!11974 0))(
  ( (array!11975 (arr!5688 (Array (_ BitVec 32) (_ BitVec 64))) (size!6029 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3560 0))(
  ( (LongMapFixedSize!3561 (defaultEntry!4465 Int) (mask!10527 (_ BitVec 32)) (extraKeys!4202 (_ BitVec 32)) (zeroValue!4306 V!8109) (minValue!4306 V!8109) (_size!1829 (_ BitVec 32)) (_keys!6567 array!11974) (_values!4448 array!11972) (_vacant!1829 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3560)

(assert (=> b!240975 (= e!156421 (bvsge (size!6029 (_keys!6567 thiss!1504)) #b01111111111111111111111111111111))))

(declare-datatypes ((Unit!7419 0))(
  ( (Unit!7420) )
))
(declare-fun lt!121153 () Unit!7419)

(declare-fun e!156420 () Unit!7419)

(assert (=> b!240975 (= lt!121153 e!156420)))

(declare-fun c!40126 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!240975 (= c!40126 (arrayContainsKey!0 (_keys!6567 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240976 () Bool)

(declare-fun e!156418 () Bool)

(declare-fun e!156419 () Bool)

(assert (=> b!240976 (= e!156418 e!156419)))

(declare-fun res!118165 () Bool)

(declare-fun call!22413 () Bool)

(assert (=> b!240976 (= res!118165 call!22413)))

(assert (=> b!240976 (=> (not res!118165) (not e!156419))))

(declare-fun b!240977 () Bool)

(declare-fun call!22414 () Bool)

(assert (=> b!240977 (= e!156419 (not call!22414))))

(declare-fun b!240978 () Bool)

(declare-fun res!118166 () Bool)

(declare-datatypes ((SeekEntryResult!1064 0))(
  ( (MissingZero!1064 (index!6426 (_ BitVec 32))) (Found!1064 (index!6427 (_ BitVec 32))) (Intermediate!1064 (undefined!1876 Bool) (index!6428 (_ BitVec 32)) (x!24200 (_ BitVec 32))) (Undefined!1064) (MissingVacant!1064 (index!6429 (_ BitVec 32))) )
))
(declare-fun lt!121156 () SeekEntryResult!1064)

(assert (=> b!240978 (= res!118166 (= (select (arr!5688 (_keys!6567 thiss!1504)) (index!6429 lt!121156)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!240978 (=> (not res!118166) (not e!156419))))

(declare-fun b!240979 () Bool)

(declare-fun res!118172 () Bool)

(declare-fun e!156414 () Bool)

(assert (=> b!240979 (=> (not res!118172) (not e!156414))))

(assert (=> b!240979 (= res!118172 (= (select (arr!5688 (_keys!6567 thiss!1504)) (index!6426 lt!121156)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!240980 () Bool)

(declare-fun Unit!7421 () Unit!7419)

(assert (=> b!240980 (= e!156420 Unit!7421)))

(declare-fun lt!121152 () Unit!7419)

(declare-fun lemmaArrayContainsKeyThenInListMap!152 (array!11974 array!11972 (_ BitVec 32) (_ BitVec 32) V!8109 V!8109 (_ BitVec 64) (_ BitVec 32) Int) Unit!7419)

(assert (=> b!240980 (= lt!121152 (lemmaArrayContainsKeyThenInListMap!152 (_keys!6567 thiss!1504) (_values!4448 thiss!1504) (mask!10527 thiss!1504) (extraKeys!4202 thiss!1504) (zeroValue!4306 thiss!1504) (minValue!4306 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4465 thiss!1504)))))

(assert (=> b!240980 false))

(declare-fun b!240981 () Bool)

(declare-fun e!156415 () Bool)

(assert (=> b!240981 (= e!156415 e!156421)))

(declare-fun res!118170 () Bool)

(assert (=> b!240981 (=> (not res!118170) (not e!156421))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!240981 (= res!118170 (inRange!0 index!297 (mask!10527 thiss!1504)))))

(declare-fun lt!121155 () Unit!7419)

(declare-fun e!156413 () Unit!7419)

(assert (=> b!240981 (= lt!121155 e!156413)))

(declare-fun c!40125 () Bool)

(declare-datatypes ((tuple2!4736 0))(
  ( (tuple2!4737 (_1!2378 (_ BitVec 64)) (_2!2378 V!8109)) )
))
(declare-datatypes ((List!3641 0))(
  ( (Nil!3638) (Cons!3637 (h!4293 tuple2!4736) (t!8644 List!3641)) )
))
(declare-datatypes ((ListLongMap!3663 0))(
  ( (ListLongMap!3664 (toList!1847 List!3641)) )
))
(declare-fun contains!1729 (ListLongMap!3663 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1370 (array!11974 array!11972 (_ BitVec 32) (_ BitVec 32) V!8109 V!8109 (_ BitVec 32) Int) ListLongMap!3663)

(assert (=> b!240981 (= c!40125 (contains!1729 (getCurrentListMap!1370 (_keys!6567 thiss!1504) (_values!4448 thiss!1504) (mask!10527 thiss!1504) (extraKeys!4202 thiss!1504) (zeroValue!4306 thiss!1504) (minValue!4306 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4465 thiss!1504)) key!932))))

(declare-fun bm!22410 () Bool)

(assert (=> bm!22410 (= call!22414 (arrayContainsKey!0 (_keys!6567 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240982 () Bool)

(declare-fun e!156422 () Bool)

(assert (=> b!240982 (= e!156422 e!156415)))

(declare-fun res!118167 () Bool)

(assert (=> b!240982 (=> (not res!118167) (not e!156415))))

(assert (=> b!240982 (= res!118167 (or (= lt!121156 (MissingZero!1064 index!297)) (= lt!121156 (MissingVacant!1064 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11974 (_ BitVec 32)) SeekEntryResult!1064)

(assert (=> b!240982 (= lt!121156 (seekEntryOrOpen!0 key!932 (_keys!6567 thiss!1504) (mask!10527 thiss!1504)))))

(declare-fun res!118171 () Bool)

(assert (=> start!22994 (=> (not res!118171) (not e!156422))))

(declare-fun valid!1391 (LongMapFixedSize!3560) Bool)

(assert (=> start!22994 (= res!118171 (valid!1391 thiss!1504))))

(assert (=> start!22994 e!156422))

(declare-fun e!156417 () Bool)

(assert (=> start!22994 e!156417))

(assert (=> start!22994 true))

(declare-fun b!240983 () Bool)

(declare-fun Unit!7422 () Unit!7419)

(assert (=> b!240983 (= e!156420 Unit!7422)))

(declare-fun bm!22411 () Bool)

(declare-fun c!40123 () Bool)

(assert (=> bm!22411 (= call!22413 (inRange!0 (ite c!40123 (index!6426 lt!121156) (index!6429 lt!121156)) (mask!10527 thiss!1504)))))

(declare-fun b!240984 () Bool)

(declare-fun Unit!7423 () Unit!7419)

(assert (=> b!240984 (= e!156413 Unit!7423)))

(declare-fun lt!121154 () Unit!7419)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!347 (array!11974 array!11972 (_ BitVec 32) (_ BitVec 32) V!8109 V!8109 (_ BitVec 64) Int) Unit!7419)

(assert (=> b!240984 (= lt!121154 (lemmaInListMapThenSeekEntryOrOpenFindsIt!347 (_keys!6567 thiss!1504) (_values!4448 thiss!1504) (mask!10527 thiss!1504) (extraKeys!4202 thiss!1504) (zeroValue!4306 thiss!1504) (minValue!4306 thiss!1504) key!932 (defaultEntry!4465 thiss!1504)))))

(assert (=> b!240984 false))

(declare-fun b!240985 () Bool)

(declare-fun c!40124 () Bool)

(assert (=> b!240985 (= c!40124 (is-MissingVacant!1064 lt!121156))))

(declare-fun e!156416 () Bool)

(assert (=> b!240985 (= e!156416 e!156418)))

(declare-fun mapIsEmpty!10752 () Bool)

(declare-fun mapRes!10752 () Bool)

(assert (=> mapIsEmpty!10752 mapRes!10752))

(declare-fun b!240986 () Bool)

(assert (=> b!240986 (= e!156418 (is-Undefined!1064 lt!121156))))

(declare-fun b!240987 () Bool)

(declare-fun res!118169 () Bool)

(assert (=> b!240987 (=> (not res!118169) (not e!156422))))

(assert (=> b!240987 (= res!118169 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!240988 () Bool)

(declare-fun lt!121151 () Unit!7419)

(assert (=> b!240988 (= e!156413 lt!121151)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!355 (array!11974 array!11972 (_ BitVec 32) (_ BitVec 32) V!8109 V!8109 (_ BitVec 64) Int) Unit!7419)

(assert (=> b!240988 (= lt!121151 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!355 (_keys!6567 thiss!1504) (_values!4448 thiss!1504) (mask!10527 thiss!1504) (extraKeys!4202 thiss!1504) (zeroValue!4306 thiss!1504) (minValue!4306 thiss!1504) key!932 (defaultEntry!4465 thiss!1504)))))

(assert (=> b!240988 (= c!40123 (is-MissingZero!1064 lt!121156))))

(assert (=> b!240988 e!156416))

(declare-fun b!240989 () Bool)

(declare-fun e!156424 () Bool)

(declare-fun tp_is_empty!6347 () Bool)

(assert (=> b!240989 (= e!156424 tp_is_empty!6347)))

(declare-fun mapNonEmpty!10752 () Bool)

(declare-fun tp!22659 () Bool)

(assert (=> mapNonEmpty!10752 (= mapRes!10752 (and tp!22659 e!156424))))

(declare-fun mapKey!10752 () (_ BitVec 32))

(declare-fun mapValue!10752 () ValueCell!2830)

(declare-fun mapRest!10752 () (Array (_ BitVec 32) ValueCell!2830))

(assert (=> mapNonEmpty!10752 (= (arr!5687 (_values!4448 thiss!1504)) (store mapRest!10752 mapKey!10752 mapValue!10752))))

(declare-fun e!156423 () Bool)

(declare-fun array_inv!3755 (array!11974) Bool)

(declare-fun array_inv!3756 (array!11972) Bool)

(assert (=> b!240990 (= e!156417 (and tp!22658 tp_is_empty!6347 (array_inv!3755 (_keys!6567 thiss!1504)) (array_inv!3756 (_values!4448 thiss!1504)) e!156423))))

(declare-fun b!240991 () Bool)

(declare-fun e!156412 () Bool)

(assert (=> b!240991 (= e!156412 tp_is_empty!6347)))

(declare-fun b!240992 () Bool)

(assert (=> b!240992 (= e!156414 (not call!22414))))

(declare-fun b!240993 () Bool)

(assert (=> b!240993 (= e!156423 (and e!156412 mapRes!10752))))

(declare-fun condMapEmpty!10752 () Bool)

(declare-fun mapDefault!10752 () ValueCell!2830)

