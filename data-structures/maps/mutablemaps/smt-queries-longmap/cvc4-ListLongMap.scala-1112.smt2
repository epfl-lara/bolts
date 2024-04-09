; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22934 () Bool)

(assert start!22934)

(declare-fun b!239082 () Bool)

(declare-fun b_free!6425 () Bool)

(declare-fun b_next!6425 () Bool)

(assert (=> b!239082 (= b_free!6425 (not b_next!6425))))

(declare-fun tp!22479 () Bool)

(declare-fun b_and!13409 () Bool)

(assert (=> b!239082 (= tp!22479 b_and!13409)))

(declare-fun res!117189 () Bool)

(declare-fun e!155235 () Bool)

(assert (=> start!22934 (=> (not res!117189) (not e!155235))))

(declare-datatypes ((V!8029 0))(
  ( (V!8030 (val!3188 Int)) )
))
(declare-datatypes ((ValueCell!2800 0))(
  ( (ValueCellFull!2800 (v!5222 V!8029)) (EmptyCell!2800) )
))
(declare-datatypes ((array!11852 0))(
  ( (array!11853 (arr!5627 (Array (_ BitVec 32) ValueCell!2800)) (size!5968 (_ BitVec 32))) )
))
(declare-datatypes ((array!11854 0))(
  ( (array!11855 (arr!5628 (Array (_ BitVec 32) (_ BitVec 64))) (size!5969 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3500 0))(
  ( (LongMapFixedSize!3501 (defaultEntry!4435 Int) (mask!10477 (_ BitVec 32)) (extraKeys!4172 (_ BitVec 32)) (zeroValue!4276 V!8029) (minValue!4276 V!8029) (_size!1799 (_ BitVec 32)) (_keys!6537 array!11854) (_values!4418 array!11852) (_vacant!1799 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3500)

(declare-fun valid!1372 (LongMapFixedSize!3500) Bool)

(assert (=> start!22934 (= res!117189 (valid!1372 thiss!1504))))

(assert (=> start!22934 e!155235))

(declare-fun e!155239 () Bool)

(assert (=> start!22934 e!155239))

(assert (=> start!22934 true))

(declare-fun b!239076 () Bool)

(declare-fun res!117188 () Bool)

(declare-fun e!155244 () Bool)

(assert (=> b!239076 (=> (not res!117188) (not e!155244))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!239076 (= res!117188 (arrayContainsKey!0 (_keys!6537 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239077 () Bool)

(declare-fun e!155236 () Bool)

(assert (=> b!239077 (= e!155235 e!155236)))

(declare-fun res!117185 () Bool)

(assert (=> b!239077 (=> (not res!117185) (not e!155236))))

(declare-datatypes ((SeekEntryResult!1038 0))(
  ( (MissingZero!1038 (index!6322 (_ BitVec 32))) (Found!1038 (index!6323 (_ BitVec 32))) (Intermediate!1038 (undefined!1850 Bool) (index!6324 (_ BitVec 32)) (x!24094 (_ BitVec 32))) (Undefined!1038) (MissingVacant!1038 (index!6325 (_ BitVec 32))) )
))
(declare-fun lt!120749 () SeekEntryResult!1038)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!239077 (= res!117185 (or (= lt!120749 (MissingZero!1038 index!297)) (= lt!120749 (MissingVacant!1038 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11854 (_ BitVec 32)) SeekEntryResult!1038)

(assert (=> b!239077 (= lt!120749 (seekEntryOrOpen!0 key!932 (_keys!6537 thiss!1504) (mask!10477 thiss!1504)))))

(declare-fun b!239078 () Bool)

(assert (=> b!239078 (= e!155236 e!155244)))

(declare-fun res!117182 () Bool)

(assert (=> b!239078 (=> (not res!117182) (not e!155244))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!239078 (= res!117182 (inRange!0 index!297 (mask!10477 thiss!1504)))))

(declare-datatypes ((Unit!7336 0))(
  ( (Unit!7337) )
))
(declare-fun lt!120750 () Unit!7336)

(declare-fun e!155241 () Unit!7336)

(assert (=> b!239078 (= lt!120750 e!155241)))

(declare-fun c!39846 () Bool)

(declare-datatypes ((tuple2!4694 0))(
  ( (tuple2!4695 (_1!2357 (_ BitVec 64)) (_2!2357 V!8029)) )
))
(declare-datatypes ((List!3611 0))(
  ( (Nil!3608) (Cons!3607 (h!4263 tuple2!4694) (t!8614 List!3611)) )
))
(declare-datatypes ((ListLongMap!3621 0))(
  ( (ListLongMap!3622 (toList!1826 List!3611)) )
))
(declare-fun contains!1708 (ListLongMap!3621 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1349 (array!11854 array!11852 (_ BitVec 32) (_ BitVec 32) V!8029 V!8029 (_ BitVec 32) Int) ListLongMap!3621)

(assert (=> b!239078 (= c!39846 (contains!1708 (getCurrentListMap!1349 (_keys!6537 thiss!1504) (_values!4418 thiss!1504) (mask!10477 thiss!1504) (extraKeys!4172 thiss!1504) (zeroValue!4276 thiss!1504) (minValue!4276 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4435 thiss!1504)) key!932))))

(declare-fun bm!22230 () Bool)

(declare-fun call!22233 () Bool)

(assert (=> bm!22230 (= call!22233 (arrayContainsKey!0 (_keys!6537 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239079 () Bool)

(declare-fun res!117190 () Bool)

(assert (=> b!239079 (=> (not res!117190) (not e!155244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!239079 (= res!117190 (validMask!0 (mask!10477 thiss!1504)))))

(declare-fun b!239080 () Bool)

(declare-fun e!155240 () Bool)

(declare-fun tp_is_empty!6287 () Bool)

(assert (=> b!239080 (= e!155240 tp_is_empty!6287)))

(declare-fun b!239081 () Bool)

(assert (=> b!239081 (= e!155244 (and (= (size!5968 (_values!4418 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10477 thiss!1504))) (not (= (size!5969 (_keys!6537 thiss!1504)) (size!5968 (_values!4418 thiss!1504))))))))

(declare-fun e!155242 () Bool)

(declare-fun array_inv!3713 (array!11854) Bool)

(declare-fun array_inv!3714 (array!11852) Bool)

(assert (=> b!239082 (= e!155239 (and tp!22479 tp_is_empty!6287 (array_inv!3713 (_keys!6537 thiss!1504)) (array_inv!3714 (_values!4418 thiss!1504)) e!155242))))

(declare-fun b!239083 () Bool)

(declare-fun res!117183 () Bool)

(assert (=> b!239083 (=> (not res!117183) (not e!155235))))

(assert (=> b!239083 (= res!117183 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!239084 () Bool)

(declare-fun lt!120751 () Unit!7336)

(assert (=> b!239084 (= e!155241 lt!120751)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!337 (array!11854 array!11852 (_ BitVec 32) (_ BitVec 32) V!8029 V!8029 (_ BitVec 64) Int) Unit!7336)

(assert (=> b!239084 (= lt!120751 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!337 (_keys!6537 thiss!1504) (_values!4418 thiss!1504) (mask!10477 thiss!1504) (extraKeys!4172 thiss!1504) (zeroValue!4276 thiss!1504) (minValue!4276 thiss!1504) key!932 (defaultEntry!4435 thiss!1504)))))

(declare-fun c!39847 () Bool)

(assert (=> b!239084 (= c!39847 (is-MissingZero!1038 lt!120749))))

(declare-fun e!155245 () Bool)

(assert (=> b!239084 e!155245))

(declare-fun mapIsEmpty!10662 () Bool)

(declare-fun mapRes!10662 () Bool)

(assert (=> mapIsEmpty!10662 mapRes!10662))

(declare-fun b!239085 () Bool)

(declare-fun e!155234 () Bool)

(assert (=> b!239085 (= e!155234 (not call!22233))))

(declare-fun b!239086 () Bool)

(declare-fun res!117191 () Bool)

(declare-fun e!155246 () Bool)

(assert (=> b!239086 (=> (not res!117191) (not e!155246))))

(declare-fun call!22234 () Bool)

(assert (=> b!239086 (= res!117191 call!22234)))

(assert (=> b!239086 (= e!155245 e!155246)))

(declare-fun b!239087 () Bool)

(assert (=> b!239087 (= e!155246 (not call!22233))))

(declare-fun b!239088 () Bool)

(declare-fun Unit!7338 () Unit!7336)

(assert (=> b!239088 (= e!155241 Unit!7338)))

(declare-fun lt!120748 () Unit!7336)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!324 (array!11854 array!11852 (_ BitVec 32) (_ BitVec 32) V!8029 V!8029 (_ BitVec 64) Int) Unit!7336)

(assert (=> b!239088 (= lt!120748 (lemmaInListMapThenSeekEntryOrOpenFindsIt!324 (_keys!6537 thiss!1504) (_values!4418 thiss!1504) (mask!10477 thiss!1504) (extraKeys!4172 thiss!1504) (zeroValue!4276 thiss!1504) (minValue!4276 thiss!1504) key!932 (defaultEntry!4435 thiss!1504)))))

(assert (=> b!239088 false))

(declare-fun b!239089 () Bool)

(declare-fun e!155238 () Bool)

(assert (=> b!239089 (= e!155238 (is-Undefined!1038 lt!120749))))

(declare-fun b!239090 () Bool)

(declare-fun e!155237 () Bool)

(assert (=> b!239090 (= e!155237 tp_is_empty!6287)))

(declare-fun mapNonEmpty!10662 () Bool)

(declare-fun tp!22478 () Bool)

(assert (=> mapNonEmpty!10662 (= mapRes!10662 (and tp!22478 e!155240))))

(declare-fun mapValue!10662 () ValueCell!2800)

(declare-fun mapKey!10662 () (_ BitVec 32))

(declare-fun mapRest!10662 () (Array (_ BitVec 32) ValueCell!2800))

(assert (=> mapNonEmpty!10662 (= (arr!5627 (_values!4418 thiss!1504)) (store mapRest!10662 mapKey!10662 mapValue!10662))))

(declare-fun b!239091 () Bool)

(declare-fun res!117187 () Bool)

(assert (=> b!239091 (= res!117187 (= (select (arr!5628 (_keys!6537 thiss!1504)) (index!6325 lt!120749)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!239091 (=> (not res!117187) (not e!155234))))

(declare-fun b!239092 () Bool)

(assert (=> b!239092 (= e!155238 e!155234)))

(declare-fun res!117186 () Bool)

(assert (=> b!239092 (= res!117186 call!22234)))

(assert (=> b!239092 (=> (not res!117186) (not e!155234))))

(declare-fun b!239093 () Bool)

(assert (=> b!239093 (= e!155242 (and e!155237 mapRes!10662))))

(declare-fun condMapEmpty!10662 () Bool)

(declare-fun mapDefault!10662 () ValueCell!2800)

