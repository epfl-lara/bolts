; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21914 () Bool)

(assert start!21914)

(declare-fun b!222053 () Bool)

(declare-fun b_free!5969 () Bool)

(declare-fun b_next!5969 () Bool)

(assert (=> b!222053 (= b_free!5969 (not b_next!5969))))

(declare-fun tp!21049 () Bool)

(declare-fun b_and!12885 () Bool)

(assert (=> b!222053 (= tp!21049 b_and!12885)))

(declare-fun b!222032 () Bool)

(declare-fun e!144311 () Bool)

(declare-fun call!20739 () Bool)

(assert (=> b!222032 (= e!144311 (not call!20739))))

(declare-fun b!222033 () Bool)

(declare-fun e!144313 () Bool)

(declare-fun e!144304 () Bool)

(assert (=> b!222033 (= e!144313 e!144304)))

(declare-fun res!108990 () Bool)

(assert (=> b!222033 (=> (not res!108990) (not e!144304))))

(declare-datatypes ((SeekEntryResult!843 0))(
  ( (MissingZero!843 (index!5542 (_ BitVec 32))) (Found!843 (index!5543 (_ BitVec 32))) (Intermediate!843 (undefined!1655 Bool) (index!5544 (_ BitVec 32)) (x!23047 (_ BitVec 32))) (Undefined!843) (MissingVacant!843 (index!5545 (_ BitVec 32))) )
))
(declare-fun lt!112584 () SeekEntryResult!843)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!222033 (= res!108990 (or (= lt!112584 (MissingZero!843 index!297)) (= lt!112584 (MissingVacant!843 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7421 0))(
  ( (V!7422 (val!2960 Int)) )
))
(declare-datatypes ((ValueCell!2572 0))(
  ( (ValueCellFull!2572 (v!4976 V!7421)) (EmptyCell!2572) )
))
(declare-datatypes ((array!10904 0))(
  ( (array!10905 (arr!5171 (Array (_ BitVec 32) ValueCell!2572)) (size!5504 (_ BitVec 32))) )
))
(declare-datatypes ((array!10906 0))(
  ( (array!10907 (arr!5172 (Array (_ BitVec 32) (_ BitVec 64))) (size!5505 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3044 0))(
  ( (LongMapFixedSize!3045 (defaultEntry!4181 Int) (mask!9997 (_ BitVec 32)) (extraKeys!3918 (_ BitVec 32)) (zeroValue!4022 V!7421) (minValue!4022 V!7421) (_size!1571 (_ BitVec 32)) (_keys!6235 array!10906) (_values!4164 array!10904) (_vacant!1571 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3044)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10906 (_ BitVec 32)) SeekEntryResult!843)

(assert (=> b!222033 (= lt!112584 (seekEntryOrOpen!0 key!932 (_keys!6235 thiss!1504) (mask!9997 thiss!1504)))))

(declare-fun b!222034 () Bool)

(declare-fun e!144300 () Bool)

(declare-fun e!144315 () Bool)

(assert (=> b!222034 (= e!144300 e!144315)))

(declare-fun res!108999 () Bool)

(declare-fun call!20740 () Bool)

(assert (=> b!222034 (= res!108999 call!20740)))

(assert (=> b!222034 (=> (not res!108999) (not e!144315))))

(declare-fun b!222035 () Bool)

(declare-datatypes ((Unit!6645 0))(
  ( (Unit!6646) )
))
(declare-fun e!144314 () Unit!6645)

(declare-fun Unit!6647 () Unit!6645)

(assert (=> b!222035 (= e!144314 Unit!6647)))

(declare-fun lt!112588 () Unit!6645)

(declare-fun lemmaArrayContainsKeyThenInListMap!57 (array!10906 array!10904 (_ BitVec 32) (_ BitVec 32) V!7421 V!7421 (_ BitVec 64) (_ BitVec 32) Int) Unit!6645)

(assert (=> b!222035 (= lt!112588 (lemmaArrayContainsKeyThenInListMap!57 (_keys!6235 thiss!1504) (_values!4164 thiss!1504) (mask!9997 thiss!1504) (extraKeys!3918 thiss!1504) (zeroValue!4022 thiss!1504) (minValue!4022 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4181 thiss!1504)))))

(assert (=> b!222035 false))

(declare-fun b!222036 () Bool)

(declare-fun res!108995 () Bool)

(declare-fun e!144308 () Bool)

(assert (=> b!222036 (=> (not res!108995) (not e!144308))))

(declare-fun e!144305 () Bool)

(assert (=> b!222036 (= res!108995 e!144305)))

(declare-fun res!109003 () Bool)

(assert (=> b!222036 (=> res!109003 e!144305)))

(declare-fun e!144316 () Bool)

(assert (=> b!222036 (= res!109003 e!144316)))

(declare-fun res!108994 () Bool)

(assert (=> b!222036 (=> (not res!108994) (not e!144316))))

(assert (=> b!222036 (= res!108994 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!222037 () Bool)

(declare-fun e!144299 () Bool)

(assert (=> b!222037 (= e!144305 e!144299)))

(declare-fun res!108993 () Bool)

(assert (=> b!222037 (=> (not res!108993) (not e!144299))))

(assert (=> b!222037 (= res!108993 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!222038 () Bool)

(declare-fun res!109000 () Bool)

(assert (=> b!222038 (=> (not res!109000) (not e!144308))))

(declare-datatypes ((List!3318 0))(
  ( (Nil!3315) (Cons!3314 (h!3962 (_ BitVec 64)) (t!8285 List!3318)) )
))
(declare-fun contains!1517 (List!3318 (_ BitVec 64)) Bool)

(assert (=> b!222038 (= res!109000 (not (contains!1517 Nil!3315 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!222039 () Bool)

(declare-fun e!144312 () Unit!6645)

(declare-fun Unit!6648 () Unit!6645)

(assert (=> b!222039 (= e!144312 Unit!6648)))

(declare-fun lt!112585 () Unit!6645)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!223 (array!10906 array!10904 (_ BitVec 32) (_ BitVec 32) V!7421 V!7421 (_ BitVec 64) Int) Unit!6645)

(assert (=> b!222039 (= lt!112585 (lemmaInListMapThenSeekEntryOrOpenFindsIt!223 (_keys!6235 thiss!1504) (_values!4164 thiss!1504) (mask!9997 thiss!1504) (extraKeys!3918 thiss!1504) (zeroValue!4022 thiss!1504) (minValue!4022 thiss!1504) key!932 (defaultEntry!4181 thiss!1504)))))

(assert (=> b!222039 false))

(declare-fun b!222040 () Bool)

(assert (=> b!222040 (= e!144316 (contains!1517 Nil!3315 key!932))))

(declare-fun b!222041 () Bool)

(declare-fun res!108991 () Bool)

(assert (=> b!222041 (=> (not res!108991) (not e!144311))))

(assert (=> b!222041 (= res!108991 call!20740)))

(declare-fun e!144302 () Bool)

(assert (=> b!222041 (= e!144302 e!144311)))

(declare-fun b!222042 () Bool)

(declare-fun e!144307 () Bool)

(assert (=> b!222042 (= e!144307 e!144308)))

(declare-fun res!108997 () Bool)

(assert (=> b!222042 (=> (not res!108997) (not e!144308))))

(assert (=> b!222042 (= res!108997 (and (bvslt (size!5505 (_keys!6235 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5505 (_keys!6235 thiss!1504)))))))

(declare-fun lt!112590 () Unit!6645)

(assert (=> b!222042 (= lt!112590 e!144314)))

(declare-fun c!36892 () Bool)

(declare-fun arrayContainsKey!0 (array!10906 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!222042 (= c!36892 (arrayContainsKey!0 (_keys!6235 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!222043 () Bool)

(assert (=> b!222043 (= e!144315 (not call!20739))))

(declare-fun b!222044 () Bool)

(declare-fun e!144306 () Bool)

(declare-fun tp_is_empty!5831 () Bool)

(assert (=> b!222044 (= e!144306 tp_is_empty!5831)))

(declare-fun b!222045 () Bool)

(declare-fun Unit!6649 () Unit!6645)

(assert (=> b!222045 (= e!144314 Unit!6649)))

(declare-fun b!222046 () Bool)

(assert (=> b!222046 (= e!144300 (is-Undefined!843 lt!112584))))

(declare-fun mapNonEmpty!9916 () Bool)

(declare-fun mapRes!9916 () Bool)

(declare-fun tp!21048 () Bool)

(assert (=> mapNonEmpty!9916 (= mapRes!9916 (and tp!21048 e!144306))))

(declare-fun mapKey!9916 () (_ BitVec 32))

(declare-fun mapRest!9916 () (Array (_ BitVec 32) ValueCell!2572))

(declare-fun mapValue!9916 () ValueCell!2572)

(assert (=> mapNonEmpty!9916 (= (arr!5171 (_values!4164 thiss!1504)) (store mapRest!9916 mapKey!9916 mapValue!9916))))

(declare-fun res!109001 () Bool)

(assert (=> start!21914 (=> (not res!109001) (not e!144313))))

(declare-fun valid!1221 (LongMapFixedSize!3044) Bool)

(assert (=> start!21914 (= res!109001 (valid!1221 thiss!1504))))

(assert (=> start!21914 e!144313))

(declare-fun e!144303 () Bool)

(assert (=> start!21914 e!144303))

(assert (=> start!21914 true))

(declare-fun b!222047 () Bool)

(declare-fun lt!112587 () Unit!6645)

(assert (=> b!222047 (= e!144312 lt!112587)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!231 (array!10906 array!10904 (_ BitVec 32) (_ BitVec 32) V!7421 V!7421 (_ BitVec 64) Int) Unit!6645)

(assert (=> b!222047 (= lt!112587 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!231 (_keys!6235 thiss!1504) (_values!4164 thiss!1504) (mask!9997 thiss!1504) (extraKeys!3918 thiss!1504) (zeroValue!4022 thiss!1504) (minValue!4022 thiss!1504) key!932 (defaultEntry!4181 thiss!1504)))))

(declare-fun c!36890 () Bool)

(assert (=> b!222047 (= c!36890 (is-MissingZero!843 lt!112584))))

(assert (=> b!222047 e!144302))

(declare-fun b!222048 () Bool)

(declare-fun res!108989 () Bool)

(assert (=> b!222048 (=> (not res!108989) (not e!144311))))

(assert (=> b!222048 (= res!108989 (= (select (arr!5172 (_keys!6235 thiss!1504)) (index!5542 lt!112584)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!222049 () Bool)

(declare-fun res!109002 () Bool)

(assert (=> b!222049 (=> (not res!109002) (not e!144308))))

(declare-fun noDuplicate!68 (List!3318) Bool)

(assert (=> b!222049 (= res!109002 (noDuplicate!68 Nil!3315))))

(declare-fun b!222050 () Bool)

(declare-fun res!108996 () Bool)

(assert (=> b!222050 (=> (not res!108996) (not e!144308))))

(assert (=> b!222050 (= res!108996 (not (contains!1517 Nil!3315 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!222051 () Bool)

(declare-fun res!108992 () Bool)

(assert (=> b!222051 (= res!108992 (= (select (arr!5172 (_keys!6235 thiss!1504)) (index!5545 lt!112584)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!222051 (=> (not res!108992) (not e!144315))))

(declare-fun b!222052 () Bool)

(assert (=> b!222052 (= e!144308 false)))

(declare-fun lt!112586 () Bool)

(declare-fun arrayNoDuplicates!0 (array!10906 (_ BitVec 32) List!3318) Bool)

(assert (=> b!222052 (= lt!112586 (arrayNoDuplicates!0 (_keys!6235 thiss!1504) #b00000000000000000000000000000000 Nil!3315))))

(declare-fun e!144301 () Bool)

(declare-fun array_inv!3415 (array!10906) Bool)

(declare-fun array_inv!3416 (array!10904) Bool)

(assert (=> b!222053 (= e!144303 (and tp!21049 tp_is_empty!5831 (array_inv!3415 (_keys!6235 thiss!1504)) (array_inv!3416 (_values!4164 thiss!1504)) e!144301))))

(declare-fun bm!20736 () Bool)

(assert (=> bm!20736 (= call!20739 (arrayContainsKey!0 (_keys!6235 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!222054 () Bool)

(declare-fun res!108998 () Bool)

(assert (=> b!222054 (=> (not res!108998) (not e!144313))))

(assert (=> b!222054 (= res!108998 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!20737 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20737 (= call!20740 (inRange!0 (ite c!36890 (index!5542 lt!112584) (index!5545 lt!112584)) (mask!9997 thiss!1504)))))

(declare-fun b!222055 () Bool)

(declare-fun c!36893 () Bool)

(assert (=> b!222055 (= c!36893 (is-MissingVacant!843 lt!112584))))

(assert (=> b!222055 (= e!144302 e!144300)))

(declare-fun mapIsEmpty!9916 () Bool)

(assert (=> mapIsEmpty!9916 mapRes!9916))

(declare-fun b!222056 () Bool)

(assert (=> b!222056 (= e!144304 e!144307)))

(declare-fun res!108988 () Bool)

(assert (=> b!222056 (=> (not res!108988) (not e!144307))))

(assert (=> b!222056 (= res!108988 (inRange!0 index!297 (mask!9997 thiss!1504)))))

(declare-fun lt!112589 () Unit!6645)

(assert (=> b!222056 (= lt!112589 e!144312)))

(declare-fun c!36891 () Bool)

(declare-datatypes ((tuple2!4392 0))(
  ( (tuple2!4393 (_1!2206 (_ BitVec 64)) (_2!2206 V!7421)) )
))
(declare-datatypes ((List!3319 0))(
  ( (Nil!3316) (Cons!3315 (h!3963 tuple2!4392) (t!8286 List!3319)) )
))
(declare-datatypes ((ListLongMap!3319 0))(
  ( (ListLongMap!3320 (toList!1675 List!3319)) )
))
(declare-fun contains!1518 (ListLongMap!3319 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1198 (array!10906 array!10904 (_ BitVec 32) (_ BitVec 32) V!7421 V!7421 (_ BitVec 32) Int) ListLongMap!3319)

(assert (=> b!222056 (= c!36891 (contains!1518 (getCurrentListMap!1198 (_keys!6235 thiss!1504) (_values!4164 thiss!1504) (mask!9997 thiss!1504) (extraKeys!3918 thiss!1504) (zeroValue!4022 thiss!1504) (minValue!4022 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4181 thiss!1504)) key!932))))

(declare-fun b!222057 () Bool)

(declare-fun e!144309 () Bool)

(assert (=> b!222057 (= e!144301 (and e!144309 mapRes!9916))))

(declare-fun condMapEmpty!9916 () Bool)

(declare-fun mapDefault!9916 () ValueCell!2572)

