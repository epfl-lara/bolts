; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77324 () Bool)

(assert start!77324)

(declare-fun b!901515 () Bool)

(declare-fun b_free!16081 () Bool)

(declare-fun b_next!16081 () Bool)

(assert (=> b!901515 (= b_free!16081 (not b_next!16081))))

(declare-fun tp!56347 () Bool)

(declare-fun b_and!26437 () Bool)

(assert (=> b!901515 (= tp!56347 b_and!26437)))

(declare-fun mapIsEmpty!29302 () Bool)

(declare-fun mapRes!29302 () Bool)

(assert (=> mapIsEmpty!29302 mapRes!29302))

(declare-fun b!901511 () Bool)

(declare-fun e!504776 () Bool)

(declare-fun e!504771 () Bool)

(assert (=> b!901511 (= e!504776 (not e!504771))))

(declare-fun res!608727 () Bool)

(assert (=> b!901511 (=> res!608727 e!504771)))

(declare-datatypes ((SeekEntryResult!8939 0))(
  ( (MissingZero!8939 (index!38126 (_ BitVec 32))) (Found!8939 (index!38127 (_ BitVec 32))) (Intermediate!8939 (undefined!9751 Bool) (index!38128 (_ BitVec 32)) (x!76807 (_ BitVec 32))) (Undefined!8939) (MissingVacant!8939 (index!38129 (_ BitVec 32))) )
))
(declare-fun lt!407504 () SeekEntryResult!8939)

(assert (=> b!901511 (= res!608727 (not (is-Found!8939 lt!407504)))))

(declare-fun e!504769 () Bool)

(assert (=> b!901511 e!504769))

(declare-fun res!608726 () Bool)

(assert (=> b!901511 (=> res!608726 e!504769)))

(assert (=> b!901511 (= res!608726 (not (is-Found!8939 lt!407504)))))

(declare-datatypes ((Unit!30587 0))(
  ( (Unit!30588) )
))
(declare-fun lt!407507 () Unit!30587)

(declare-datatypes ((array!52862 0))(
  ( (array!52863 (arr!25394 (Array (_ BitVec 32) (_ BitVec 64))) (size!25854 (_ BitVec 32))) )
))
(declare-datatypes ((V!29511 0))(
  ( (V!29512 (val!9255 Int)) )
))
(declare-datatypes ((ValueCell!8723 0))(
  ( (ValueCellFull!8723 (v!11753 V!29511)) (EmptyCell!8723) )
))
(declare-datatypes ((array!52864 0))(
  ( (array!52865 (arr!25395 (Array (_ BitVec 32) ValueCell!8723)) (size!25855 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4462 0))(
  ( (LongMapFixedSize!4463 (defaultEntry!5474 Int) (mask!26282 (_ BitVec 32)) (extraKeys!5204 (_ BitVec 32)) (zeroValue!5308 V!29511) (minValue!5308 V!29511) (_size!2286 (_ BitVec 32)) (_keys!10285 array!52862) (_values!5495 array!52864) (_vacant!2286 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4462)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!116 (array!52862 array!52864 (_ BitVec 32) (_ BitVec 32) V!29511 V!29511 (_ BitVec 64)) Unit!30587)

(assert (=> b!901511 (= lt!407507 (lemmaSeekEntryGivesInRangeIndex!116 (_keys!10285 thiss!1181) (_values!5495 thiss!1181) (mask!26282 thiss!1181) (extraKeys!5204 thiss!1181) (zeroValue!5308 thiss!1181) (minValue!5308 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52862 (_ BitVec 32)) SeekEntryResult!8939)

(assert (=> b!901511 (= lt!407504 (seekEntry!0 key!785 (_keys!10285 thiss!1181) (mask!26282 thiss!1181)))))

(declare-fun b!901512 () Bool)

(declare-fun e!504774 () Bool)

(declare-fun call!40171 () V!29511)

(assert (=> b!901512 (= e!504774 (= call!40171 (zeroValue!5308 thiss!1181)))))

(declare-fun b!901513 () Bool)

(declare-fun res!608730 () Bool)

(declare-fun e!504773 () Bool)

(assert (=> b!901513 (=> (not res!608730) (not e!504773))))

(assert (=> b!901513 (= res!608730 (not (= (bvand (extraKeys!5204 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!504779 () Bool)

(assert (=> b!901513 (= e!504779 e!504773)))

(declare-fun mapNonEmpty!29302 () Bool)

(declare-fun tp!56346 () Bool)

(declare-fun e!504768 () Bool)

(assert (=> mapNonEmpty!29302 (= mapRes!29302 (and tp!56346 e!504768))))

(declare-fun mapKey!29302 () (_ BitVec 32))

(declare-fun mapValue!29302 () ValueCell!8723)

(declare-fun mapRest!29302 () (Array (_ BitVec 32) ValueCell!8723))

(assert (=> mapNonEmpty!29302 (= (arr!25395 (_values!5495 thiss!1181)) (store mapRest!29302 mapKey!29302 mapValue!29302))))

(declare-fun b!901514 () Bool)

(declare-fun call!40170 () V!29511)

(assert (=> b!901514 (= e!504773 (= call!40170 (minValue!5308 thiss!1181)))))

(declare-fun e!504777 () Bool)

(declare-fun e!504775 () Bool)

(declare-fun tp_is_empty!18409 () Bool)

(declare-fun array_inv!19892 (array!52862) Bool)

(declare-fun array_inv!19893 (array!52864) Bool)

(assert (=> b!901515 (= e!504775 (and tp!56347 tp_is_empty!18409 (array_inv!19892 (_keys!10285 thiss!1181)) (array_inv!19893 (_values!5495 thiss!1181)) e!504777))))

(declare-fun b!901516 () Bool)

(declare-fun e!504770 () Bool)

(assert (=> b!901516 (= e!504770 e!504779)))

(declare-fun c!95438 () Bool)

(assert (=> b!901516 (= c!95438 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!901517 () Bool)

(declare-fun e!504780 () Bool)

(declare-fun lt!407506 () V!29511)

(declare-fun dynLambda!1316 (Int (_ BitVec 64)) V!29511)

(assert (=> b!901517 (= e!504780 (= lt!407506 (dynLambda!1316 (defaultEntry!5474 thiss!1181) key!785)))))

(declare-fun b!901518 () Bool)

(assert (=> b!901518 (= e!504770 e!504774)))

(declare-fun res!608731 () Bool)

(assert (=> b!901518 (= res!608731 (not (= (bvand (extraKeys!5204 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!901518 (=> (not res!608731) (not e!504774))))

(declare-fun b!901519 () Bool)

(declare-fun e!504772 () Bool)

(assert (=> b!901519 (= e!504772 tp_is_empty!18409)))

(declare-fun b!901520 () Bool)

(declare-datatypes ((Option!472 0))(
  ( (Some!471 (v!11754 V!29511)) (None!470) )
))
(declare-fun get!13375 (Option!472) V!29511)

(declare-datatypes ((tuple2!12094 0))(
  ( (tuple2!12095 (_1!6057 (_ BitVec 64)) (_2!6057 V!29511)) )
))
(declare-datatypes ((List!17953 0))(
  ( (Nil!17950) (Cons!17949 (h!19095 tuple2!12094) (t!25330 List!17953)) )
))
(declare-fun getValueByKey!466 (List!17953 (_ BitVec 64)) Option!472)

(declare-datatypes ((ListLongMap!10805 0))(
  ( (ListLongMap!10806 (toList!5418 List!17953)) )
))
(declare-fun map!12298 (LongMapFixedSize!4462) ListLongMap!10805)

(assert (=> b!901520 (= e!504780 (= lt!407506 (get!13375 (getValueByKey!466 (toList!5418 (map!12298 thiss!1181)) key!785))))))

(declare-fun b!901522 () Bool)

(declare-fun res!608729 () Bool)

(assert (=> b!901522 (=> (not res!608729) (not e!504776))))

(assert (=> b!901522 (= res!608729 (not (= key!785 (bvneg key!785))))))

(declare-fun b!901523 () Bool)

(declare-fun get!13376 (ValueCell!8723 V!29511) V!29511)

(assert (=> b!901523 (= e!504779 (= call!40170 (get!13376 (select (arr!25395 (_values!5495 thiss!1181)) (index!38127 lt!407504)) (dynLambda!1316 (defaultEntry!5474 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!40167 () Bool)

(declare-fun lt!407508 () ListLongMap!10805)

(declare-fun apply!421 (ListLongMap!10805 (_ BitVec 64)) V!29511)

(assert (=> bm!40167 (= call!40171 (apply!421 lt!407508 key!785))))

(declare-fun b!901524 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!901524 (= e!504769 (inRange!0 (index!38127 lt!407504) (mask!26282 thiss!1181)))))

(declare-fun bm!40168 () Bool)

(assert (=> bm!40168 (= call!40170 call!40171)))

(declare-fun b!901525 () Bool)

(assert (=> b!901525 (= e!504768 tp_is_empty!18409)))

(declare-fun b!901526 () Bool)

(assert (=> b!901526 (= e!504777 (and e!504772 mapRes!29302))))

(declare-fun condMapEmpty!29302 () Bool)

(declare-fun mapDefault!29302 () ValueCell!8723)

