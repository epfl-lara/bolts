; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21958 () Bool)

(assert start!21958)

(declare-fun b!224042 () Bool)

(declare-fun b_free!6013 () Bool)

(declare-fun b_next!6013 () Bool)

(assert (=> b!224042 (= b_free!6013 (not b_next!6013))))

(declare-fun tp!21180 () Bool)

(declare-fun b_and!12929 () Bool)

(assert (=> b!224042 (= tp!21180 b_and!12929)))

(declare-datatypes ((SeekEntryResult!865 0))(
  ( (MissingZero!865 (index!5630 (_ BitVec 32))) (Found!865 (index!5631 (_ BitVec 32))) (Intermediate!865 (undefined!1677 Bool) (index!5632 (_ BitVec 32)) (x!23133 (_ BitVec 32))) (Undefined!865) (MissingVacant!865 (index!5633 (_ BitVec 32))) )
))
(declare-fun lt!113088 () SeekEntryResult!865)

(declare-fun call!20871 () Bool)

(declare-datatypes ((V!7481 0))(
  ( (V!7482 (val!2982 Int)) )
))
(declare-datatypes ((ValueCell!2594 0))(
  ( (ValueCellFull!2594 (v!4998 V!7481)) (EmptyCell!2594) )
))
(declare-datatypes ((array!10992 0))(
  ( (array!10993 (arr!5215 (Array (_ BitVec 32) ValueCell!2594)) (size!5548 (_ BitVec 32))) )
))
(declare-datatypes ((array!10994 0))(
  ( (array!10995 (arr!5216 (Array (_ BitVec 32) (_ BitVec 64))) (size!5549 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3088 0))(
  ( (LongMapFixedSize!3089 (defaultEntry!4203 Int) (mask!10035 (_ BitVec 32)) (extraKeys!3940 (_ BitVec 32)) (zeroValue!4044 V!7481) (minValue!4044 V!7481) (_size!1593 (_ BitVec 32)) (_keys!6257 array!10994) (_values!4186 array!10992) (_vacant!1593 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3088)

(declare-fun bm!20868 () Bool)

(declare-fun c!37157 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20868 (= call!20871 (inRange!0 (ite c!37157 (index!5630 lt!113088) (index!5633 lt!113088)) (mask!10035 thiss!1504)))))

(declare-fun b!224041 () Bool)

(declare-fun e!145502 () Bool)

(assert (=> b!224041 (= e!145502 false)))

(declare-fun lt!113090 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((List!3351 0))(
  ( (Nil!3348) (Cons!3347 (h!3995 (_ BitVec 64)) (t!8318 List!3351)) )
))
(declare-fun contains!1550 (List!3351 (_ BitVec 64)) Bool)

(assert (=> b!224041 (= lt!113090 (contains!1550 Nil!3348 key!932))))

(declare-fun e!145501 () Bool)

(declare-fun e!145488 () Bool)

(declare-fun tp_is_empty!5875 () Bool)

(declare-fun array_inv!3441 (array!10994) Bool)

(declare-fun array_inv!3442 (array!10992) Bool)

(assert (=> b!224042 (= e!145488 (and tp!21180 tp_is_empty!5875 (array_inv!3441 (_keys!6257 thiss!1504)) (array_inv!3442 (_values!4186 thiss!1504)) e!145501))))

(declare-fun mapNonEmpty!9982 () Bool)

(declare-fun mapRes!9982 () Bool)

(declare-fun tp!21181 () Bool)

(declare-fun e!145493 () Bool)

(assert (=> mapNonEmpty!9982 (= mapRes!9982 (and tp!21181 e!145493))))

(declare-fun mapValue!9982 () ValueCell!2594)

(declare-fun mapKey!9982 () (_ BitVec 32))

(declare-fun mapRest!9982 () (Array (_ BitVec 32) ValueCell!2594))

(assert (=> mapNonEmpty!9982 (= (arr!5215 (_values!4186 thiss!1504)) (store mapRest!9982 mapKey!9982 mapValue!9982))))

(declare-fun b!224043 () Bool)

(declare-fun e!145497 () Bool)

(assert (=> b!224043 (= e!145497 e!145502)))

(declare-fun res!110215 () Bool)

(assert (=> b!224043 (=> (not res!110215) (not e!145502))))

(assert (=> b!224043 (= res!110215 (and (bvslt (size!5549 (_keys!6257 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5549 (_keys!6257 thiss!1504)))))))

(declare-datatypes ((Unit!6734 0))(
  ( (Unit!6735) )
))
(declare-fun lt!113087 () Unit!6734)

(declare-fun e!145499 () Unit!6734)

(assert (=> b!224043 (= lt!113087 e!145499)))

(declare-fun c!37154 () Bool)

(declare-fun lt!113091 () Bool)

(assert (=> b!224043 (= c!37154 lt!113091)))

(declare-fun arrayContainsKey!0 (array!10994 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!224043 (= lt!113091 (arrayContainsKey!0 (_keys!6257 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!224044 () Bool)

(declare-fun e!145496 () Bool)

(declare-fun call!20872 () Bool)

(assert (=> b!224044 (= e!145496 (not call!20872))))

(declare-fun b!224045 () Bool)

(declare-fun e!145504 () Bool)

(assert (=> b!224045 (= e!145504 (is-Undefined!865 lt!113088))))

(declare-fun b!224046 () Bool)

(declare-fun e!145500 () Bool)

(assert (=> b!224046 (= e!145504 e!145500)))

(declare-fun res!110214 () Bool)

(assert (=> b!224046 (= res!110214 call!20871)))

(assert (=> b!224046 (=> (not res!110214) (not e!145500))))

(declare-fun b!224047 () Bool)

(declare-fun e!145495 () Unit!6734)

(declare-fun lt!113089 () Unit!6734)

(assert (=> b!224047 (= e!145495 lt!113089)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!245 (array!10994 array!10992 (_ BitVec 32) (_ BitVec 32) V!7481 V!7481 (_ BitVec 64) Int) Unit!6734)

(assert (=> b!224047 (= lt!113089 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!245 (_keys!6257 thiss!1504) (_values!4186 thiss!1504) (mask!10035 thiss!1504) (extraKeys!3940 thiss!1504) (zeroValue!4044 thiss!1504) (minValue!4044 thiss!1504) key!932 (defaultEntry!4203 thiss!1504)))))

(assert (=> b!224047 (= c!37157 (is-MissingZero!865 lt!113088))))

(declare-fun e!145489 () Bool)

(assert (=> b!224047 e!145489))

(declare-fun b!224048 () Bool)

(declare-fun e!145487 () Bool)

(declare-fun e!145494 () Bool)

(assert (=> b!224048 (= e!145487 e!145494)))

(declare-fun res!110210 () Bool)

(assert (=> b!224048 (=> (not res!110210) (not e!145494))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!224048 (= res!110210 (or (= lt!113088 (MissingZero!865 index!297)) (= lt!113088 (MissingVacant!865 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10994 (_ BitVec 32)) SeekEntryResult!865)

(assert (=> b!224048 (= lt!113088 (seekEntryOrOpen!0 key!932 (_keys!6257 thiss!1504) (mask!10035 thiss!1504)))))

(declare-fun b!224049 () Bool)

(assert (=> b!224049 (= e!145500 (not call!20872))))

(declare-fun b!224051 () Bool)

(declare-fun res!110221 () Bool)

(assert (=> b!224051 (=> (not res!110221) (not e!145502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!224051 (= res!110221 (validKeyInArray!0 key!932))))

(declare-fun b!224052 () Bool)

(declare-fun e!145498 () Bool)

(declare-fun e!145492 () Bool)

(assert (=> b!224052 (= e!145498 e!145492)))

(declare-fun res!110224 () Bool)

(assert (=> b!224052 (=> (not res!110224) (not e!145492))))

(assert (=> b!224052 (= res!110224 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!224053 () Bool)

(declare-fun e!145503 () Bool)

(assert (=> b!224053 (= e!145503 tp_is_empty!5875)))

(declare-fun b!224054 () Bool)

(declare-fun res!110219 () Bool)

(assert (=> b!224054 (=> (not res!110219) (not e!145496))))

(assert (=> b!224054 (= res!110219 call!20871)))

(assert (=> b!224054 (= e!145489 e!145496)))

(declare-fun b!224055 () Bool)

(declare-fun res!110216 () Bool)

(assert (=> b!224055 (=> (not res!110216) (not e!145496))))

(assert (=> b!224055 (= res!110216 (= (select (arr!5216 (_keys!6257 thiss!1504)) (index!5630 lt!113088)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!224056 () Bool)

(declare-fun Unit!6736 () Unit!6734)

(assert (=> b!224056 (= e!145499 Unit!6736)))

(declare-fun lt!113086 () Unit!6734)

(declare-fun lemmaArrayContainsKeyThenInListMap!76 (array!10994 array!10992 (_ BitVec 32) (_ BitVec 32) V!7481 V!7481 (_ BitVec 64) (_ BitVec 32) Int) Unit!6734)

(assert (=> b!224056 (= lt!113086 (lemmaArrayContainsKeyThenInListMap!76 (_keys!6257 thiss!1504) (_values!4186 thiss!1504) (mask!10035 thiss!1504) (extraKeys!3940 thiss!1504) (zeroValue!4044 thiss!1504) (minValue!4044 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4203 thiss!1504)))))

(assert (=> b!224056 false))

(declare-fun b!224057 () Bool)

(declare-fun res!110212 () Bool)

(assert (=> b!224057 (=> (not res!110212) (not e!145502))))

(assert (=> b!224057 (= res!110212 (not lt!113091))))

(declare-fun b!224058 () Bool)

(declare-fun res!110218 () Bool)

(assert (=> b!224058 (=> (not res!110218) (not e!145502))))

(assert (=> b!224058 (= res!110218 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!5549 (_keys!6257 thiss!1504)))))))

(declare-fun b!224059 () Bool)

(declare-fun Unit!6737 () Unit!6734)

(assert (=> b!224059 (= e!145499 Unit!6737)))

(declare-fun b!224060 () Bool)

(assert (=> b!224060 (= e!145492 (not (contains!1550 Nil!3348 key!932)))))

(declare-fun b!224061 () Bool)

(assert (=> b!224061 (= e!145494 e!145497)))

(declare-fun res!110217 () Bool)

(assert (=> b!224061 (=> (not res!110217) (not e!145497))))

(assert (=> b!224061 (= res!110217 (inRange!0 index!297 (mask!10035 thiss!1504)))))

(declare-fun lt!113085 () Unit!6734)

(assert (=> b!224061 (= lt!113085 e!145495)))

(declare-fun c!37156 () Bool)

(declare-datatypes ((tuple2!4416 0))(
  ( (tuple2!4417 (_1!2218 (_ BitVec 64)) (_2!2218 V!7481)) )
))
(declare-datatypes ((List!3352 0))(
  ( (Nil!3349) (Cons!3348 (h!3996 tuple2!4416) (t!8319 List!3352)) )
))
(declare-datatypes ((ListLongMap!3343 0))(
  ( (ListLongMap!3344 (toList!1687 List!3352)) )
))
(declare-fun contains!1551 (ListLongMap!3343 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1210 (array!10994 array!10992 (_ BitVec 32) (_ BitVec 32) V!7481 V!7481 (_ BitVec 32) Int) ListLongMap!3343)

(assert (=> b!224061 (= c!37156 (contains!1551 (getCurrentListMap!1210 (_keys!6257 thiss!1504) (_values!4186 thiss!1504) (mask!10035 thiss!1504) (extraKeys!3940 thiss!1504) (zeroValue!4044 thiss!1504) (minValue!4044 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4203 thiss!1504)) key!932))))

(declare-fun b!224062 () Bool)

(declare-fun Unit!6738 () Unit!6734)

(assert (=> b!224062 (= e!145495 Unit!6738)))

(declare-fun lt!113084 () Unit!6734)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!237 (array!10994 array!10992 (_ BitVec 32) (_ BitVec 32) V!7481 V!7481 (_ BitVec 64) Int) Unit!6734)

(assert (=> b!224062 (= lt!113084 (lemmaInListMapThenSeekEntryOrOpenFindsIt!237 (_keys!6257 thiss!1504) (_values!4186 thiss!1504) (mask!10035 thiss!1504) (extraKeys!3940 thiss!1504) (zeroValue!4044 thiss!1504) (minValue!4044 thiss!1504) key!932 (defaultEntry!4203 thiss!1504)))))

(assert (=> b!224062 false))

(declare-fun b!224063 () Bool)

(declare-fun res!110213 () Bool)

(assert (=> b!224063 (= res!110213 (= (select (arr!5216 (_keys!6257 thiss!1504)) (index!5633 lt!113088)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!224063 (=> (not res!110213) (not e!145500))))

(declare-fun b!224064 () Bool)

(declare-fun res!110223 () Bool)

(assert (=> b!224064 (=> (not res!110223) (not e!145487))))

(assert (=> b!224064 (= res!110223 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!224065 () Bool)

(declare-fun res!110222 () Bool)

(assert (=> b!224065 (=> (not res!110222) (not e!145502))))

(assert (=> b!224065 (= res!110222 (not (contains!1550 Nil!3348 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!224066 () Bool)

(declare-fun res!110207 () Bool)

(assert (=> b!224066 (=> (not res!110207) (not e!145502))))

(assert (=> b!224066 (= res!110207 e!145498)))

(declare-fun res!110220 () Bool)

(assert (=> b!224066 (=> res!110220 e!145498)))

(declare-fun e!145490 () Bool)

(assert (=> b!224066 (= res!110220 e!145490)))

(declare-fun res!110205 () Bool)

(assert (=> b!224066 (=> (not res!110205) (not e!145490))))

(assert (=> b!224066 (= res!110205 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!224067 () Bool)

(declare-fun res!110209 () Bool)

(assert (=> b!224067 (=> (not res!110209) (not e!145502))))

(assert (=> b!224067 (= res!110209 (not (contains!1550 Nil!3348 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!224068 () Bool)

(assert (=> b!224068 (= e!145490 (contains!1550 Nil!3348 key!932))))

(declare-fun b!224069 () Bool)

(declare-fun res!110208 () Bool)

(assert (=> b!224069 (=> (not res!110208) (not e!145502))))

(declare-fun noDuplicate!82 (List!3351) Bool)

(assert (=> b!224069 (= res!110208 (noDuplicate!82 Nil!3348))))

(declare-fun bm!20869 () Bool)

(assert (=> bm!20869 (= call!20872 (arrayContainsKey!0 (_keys!6257 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!224070 () Bool)

(declare-fun c!37155 () Bool)

(assert (=> b!224070 (= c!37155 (is-MissingVacant!865 lt!113088))))

(assert (=> b!224070 (= e!145489 e!145504)))

(declare-fun b!224071 () Bool)

(declare-fun res!110206 () Bool)

(assert (=> b!224071 (=> (not res!110206) (not e!145502))))

(declare-fun arrayNoDuplicates!0 (array!10994 (_ BitVec 32) List!3351) Bool)

(assert (=> b!224071 (= res!110206 (arrayNoDuplicates!0 (_keys!6257 thiss!1504) #b00000000000000000000000000000000 Nil!3348))))

(declare-fun mapIsEmpty!9982 () Bool)

(assert (=> mapIsEmpty!9982 mapRes!9982))

(declare-fun b!224072 () Bool)

(assert (=> b!224072 (= e!145493 tp_is_empty!5875)))

(declare-fun res!110211 () Bool)

(assert (=> start!21958 (=> (not res!110211) (not e!145487))))

(declare-fun valid!1236 (LongMapFixedSize!3088) Bool)

(assert (=> start!21958 (= res!110211 (valid!1236 thiss!1504))))

(assert (=> start!21958 e!145487))

(assert (=> start!21958 e!145488))

(assert (=> start!21958 true))

(declare-fun b!224050 () Bool)

(assert (=> b!224050 (= e!145501 (and e!145503 mapRes!9982))))

(declare-fun condMapEmpty!9982 () Bool)

(declare-fun mapDefault!9982 () ValueCell!2594)

