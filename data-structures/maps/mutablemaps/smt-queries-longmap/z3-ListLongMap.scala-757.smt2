; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17742 () Bool)

(assert start!17742)

(declare-fun b!177217 () Bool)

(declare-fun b_free!4383 () Bool)

(declare-fun b_next!4383 () Bool)

(assert (=> b!177217 (= b_free!4383 (not b_next!4383))))

(declare-fun tp!15849 () Bool)

(declare-fun b_and!10901 () Bool)

(assert (=> b!177217 (= tp!15849 b_and!10901)))

(declare-fun b!177212 () Bool)

(declare-fun e!116878 () Bool)

(declare-fun tp_is_empty!4155 () Bool)

(assert (=> b!177212 (= e!116878 tp_is_empty!4155)))

(declare-fun b!177213 () Bool)

(declare-fun e!116879 () Bool)

(declare-datatypes ((V!5187 0))(
  ( (V!5188 (val!2122 Int)) )
))
(declare-datatypes ((ValueCell!1734 0))(
  ( (ValueCellFull!1734 (v!3998 V!5187)) (EmptyCell!1734) )
))
(declare-datatypes ((array!7460 0))(
  ( (array!7461 (arr!3538 (Array (_ BitVec 32) (_ BitVec 64))) (size!3842 (_ BitVec 32))) )
))
(declare-datatypes ((array!7462 0))(
  ( (array!7463 (arr!3539 (Array (_ BitVec 32) ValueCell!1734)) (size!3843 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2376 0))(
  ( (LongMapFixedSize!2377 (defaultEntry!3651 Int) (mask!8587 (_ BitVec 32)) (extraKeys!3388 (_ BitVec 32)) (zeroValue!3492 V!5187) (minValue!3492 V!5187) (_size!1237 (_ BitVec 32)) (_keys!5518 array!7460) (_values!3634 array!7462) (_vacant!1237 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2376)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!177213 (= e!116879 (not (validMask!0 (mask!8587 thiss!1248))))))

(declare-fun b!177214 () Bool)

(declare-fun res!84020 () Bool)

(assert (=> b!177214 (=> (not res!84020) (not e!116879))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3300 0))(
  ( (tuple2!3301 (_1!1660 (_ BitVec 64)) (_2!1660 V!5187)) )
))
(declare-datatypes ((List!2273 0))(
  ( (Nil!2270) (Cons!2269 (h!2890 tuple2!3300) (t!7111 List!2273)) )
))
(declare-datatypes ((ListLongMap!2241 0))(
  ( (ListLongMap!2242 (toList!1136 List!2273)) )
))
(declare-fun contains!1196 (ListLongMap!2241 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!783 (array!7460 array!7462 (_ BitVec 32) (_ BitVec 32) V!5187 V!5187 (_ BitVec 32) Int) ListLongMap!2241)

(assert (=> b!177214 (= res!84020 (not (contains!1196 (getCurrentListMap!783 (_keys!5518 thiss!1248) (_values!3634 thiss!1248) (mask!8587 thiss!1248) (extraKeys!3388 thiss!1248) (zeroValue!3492 thiss!1248) (minValue!3492 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3651 thiss!1248)) key!828)))))

(declare-fun b!177215 () Bool)

(declare-fun res!84022 () Bool)

(assert (=> b!177215 (=> (not res!84022) (not e!116879))))

(assert (=> b!177215 (= res!84022 (not (= key!828 (bvneg key!828))))))

(declare-fun b!177216 () Bool)

(declare-fun e!116877 () Bool)

(assert (=> b!177216 (= e!116877 tp_is_empty!4155)))

(declare-fun e!116881 () Bool)

(declare-fun e!116880 () Bool)

(declare-fun array_inv!2259 (array!7460) Bool)

(declare-fun array_inv!2260 (array!7462) Bool)

(assert (=> b!177217 (= e!116881 (and tp!15849 tp_is_empty!4155 (array_inv!2259 (_keys!5518 thiss!1248)) (array_inv!2260 (_values!3634 thiss!1248)) e!116880))))

(declare-fun b!177218 () Bool)

(declare-fun res!84023 () Bool)

(assert (=> b!177218 (=> (not res!84023) (not e!116879))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!576 0))(
  ( (MissingZero!576 (index!4472 (_ BitVec 32))) (Found!576 (index!4473 (_ BitVec 32))) (Intermediate!576 (undefined!1388 Bool) (index!4474 (_ BitVec 32)) (x!19456 (_ BitVec 32))) (Undefined!576) (MissingVacant!576 (index!4475 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7460 (_ BitVec 32)) SeekEntryResult!576)

(assert (=> b!177218 (= res!84023 ((_ is Undefined!576) (seekEntryOrOpen!0 key!828 (_keys!5518 thiss!1248) (mask!8587 thiss!1248))))))

(declare-fun mapNonEmpty!7095 () Bool)

(declare-fun mapRes!7095 () Bool)

(declare-fun tp!15848 () Bool)

(assert (=> mapNonEmpty!7095 (= mapRes!7095 (and tp!15848 e!116877))))

(declare-fun mapValue!7095 () ValueCell!1734)

(declare-fun mapKey!7095 () (_ BitVec 32))

(declare-fun mapRest!7095 () (Array (_ BitVec 32) ValueCell!1734))

(assert (=> mapNonEmpty!7095 (= (arr!3539 (_values!3634 thiss!1248)) (store mapRest!7095 mapKey!7095 mapValue!7095))))

(declare-fun b!177219 () Bool)

(assert (=> b!177219 (= e!116880 (and e!116878 mapRes!7095))))

(declare-fun condMapEmpty!7095 () Bool)

(declare-fun mapDefault!7095 () ValueCell!1734)

(assert (=> b!177219 (= condMapEmpty!7095 (= (arr!3539 (_values!3634 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1734)) mapDefault!7095)))))

(declare-fun mapIsEmpty!7095 () Bool)

(assert (=> mapIsEmpty!7095 mapRes!7095))

(declare-fun res!84021 () Bool)

(assert (=> start!17742 (=> (not res!84021) (not e!116879))))

(declare-fun valid!988 (LongMapFixedSize!2376) Bool)

(assert (=> start!17742 (= res!84021 (valid!988 thiss!1248))))

(assert (=> start!17742 e!116879))

(assert (=> start!17742 e!116881))

(assert (=> start!17742 true))

(assert (= (and start!17742 res!84021) b!177215))

(assert (= (and b!177215 res!84022) b!177218))

(assert (= (and b!177218 res!84023) b!177214))

(assert (= (and b!177214 res!84020) b!177213))

(assert (= (and b!177219 condMapEmpty!7095) mapIsEmpty!7095))

(assert (= (and b!177219 (not condMapEmpty!7095)) mapNonEmpty!7095))

(assert (= (and mapNonEmpty!7095 ((_ is ValueCellFull!1734) mapValue!7095)) b!177216))

(assert (= (and b!177219 ((_ is ValueCellFull!1734) mapDefault!7095)) b!177212))

(assert (= b!177217 b!177219))

(assert (= start!17742 b!177217))

(declare-fun m!205787 () Bool)

(assert (=> mapNonEmpty!7095 m!205787))

(declare-fun m!205789 () Bool)

(assert (=> b!177214 m!205789))

(assert (=> b!177214 m!205789))

(declare-fun m!205791 () Bool)

(assert (=> b!177214 m!205791))

(declare-fun m!205793 () Bool)

(assert (=> b!177213 m!205793))

(declare-fun m!205795 () Bool)

(assert (=> b!177217 m!205795))

(declare-fun m!205797 () Bool)

(assert (=> b!177217 m!205797))

(declare-fun m!205799 () Bool)

(assert (=> start!17742 m!205799))

(declare-fun m!205801 () Bool)

(assert (=> b!177218 m!205801))

(check-sat (not mapNonEmpty!7095) (not b!177218) (not b!177213) b_and!10901 (not start!17742) (not b!177214) (not b_next!4383) (not b!177217) tp_is_empty!4155)
(check-sat b_and!10901 (not b_next!4383))
(get-model)

(declare-fun d!53649 () Bool)

(assert (=> d!53649 (= (array_inv!2259 (_keys!5518 thiss!1248)) (bvsge (size!3842 (_keys!5518 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!177217 d!53649))

(declare-fun d!53651 () Bool)

(assert (=> d!53651 (= (array_inv!2260 (_values!3634 thiss!1248)) (bvsge (size!3843 (_values!3634 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!177217 d!53651))

(declare-fun d!53653 () Bool)

(declare-fun e!116905 () Bool)

(assert (=> d!53653 e!116905))

(declare-fun res!84038 () Bool)

(assert (=> d!53653 (=> res!84038 e!116905)))

(declare-fun lt!87618 () Bool)

(assert (=> d!53653 (= res!84038 (not lt!87618))))

(declare-fun lt!87619 () Bool)

(assert (=> d!53653 (= lt!87618 lt!87619)))

(declare-datatypes ((Unit!5417 0))(
  ( (Unit!5418) )
))
(declare-fun lt!87617 () Unit!5417)

(declare-fun e!116904 () Unit!5417)

(assert (=> d!53653 (= lt!87617 e!116904)))

(declare-fun c!31716 () Bool)

(assert (=> d!53653 (= c!31716 lt!87619)))

(declare-fun containsKey!198 (List!2273 (_ BitVec 64)) Bool)

(assert (=> d!53653 (= lt!87619 (containsKey!198 (toList!1136 (getCurrentListMap!783 (_keys!5518 thiss!1248) (_values!3634 thiss!1248) (mask!8587 thiss!1248) (extraKeys!3388 thiss!1248) (zeroValue!3492 thiss!1248) (minValue!3492 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3651 thiss!1248))) key!828))))

(assert (=> d!53653 (= (contains!1196 (getCurrentListMap!783 (_keys!5518 thiss!1248) (_values!3634 thiss!1248) (mask!8587 thiss!1248) (extraKeys!3388 thiss!1248) (zeroValue!3492 thiss!1248) (minValue!3492 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3651 thiss!1248)) key!828) lt!87618)))

(declare-fun b!177250 () Bool)

(declare-fun lt!87616 () Unit!5417)

(assert (=> b!177250 (= e!116904 lt!87616)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!147 (List!2273 (_ BitVec 64)) Unit!5417)

(assert (=> b!177250 (= lt!87616 (lemmaContainsKeyImpliesGetValueByKeyDefined!147 (toList!1136 (getCurrentListMap!783 (_keys!5518 thiss!1248) (_values!3634 thiss!1248) (mask!8587 thiss!1248) (extraKeys!3388 thiss!1248) (zeroValue!3492 thiss!1248) (minValue!3492 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3651 thiss!1248))) key!828))))

(declare-datatypes ((Option!200 0))(
  ( (Some!199 (v!4000 V!5187)) (None!198) )
))
(declare-fun isDefined!148 (Option!200) Bool)

(declare-fun getValueByKey!194 (List!2273 (_ BitVec 64)) Option!200)

(assert (=> b!177250 (isDefined!148 (getValueByKey!194 (toList!1136 (getCurrentListMap!783 (_keys!5518 thiss!1248) (_values!3634 thiss!1248) (mask!8587 thiss!1248) (extraKeys!3388 thiss!1248) (zeroValue!3492 thiss!1248) (minValue!3492 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3651 thiss!1248))) key!828))))

(declare-fun b!177251 () Bool)

(declare-fun Unit!5419 () Unit!5417)

(assert (=> b!177251 (= e!116904 Unit!5419)))

(declare-fun b!177252 () Bool)

(assert (=> b!177252 (= e!116905 (isDefined!148 (getValueByKey!194 (toList!1136 (getCurrentListMap!783 (_keys!5518 thiss!1248) (_values!3634 thiss!1248) (mask!8587 thiss!1248) (extraKeys!3388 thiss!1248) (zeroValue!3492 thiss!1248) (minValue!3492 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3651 thiss!1248))) key!828)))))

(assert (= (and d!53653 c!31716) b!177250))

(assert (= (and d!53653 (not c!31716)) b!177251))

(assert (= (and d!53653 (not res!84038)) b!177252))

(declare-fun m!205819 () Bool)

(assert (=> d!53653 m!205819))

(declare-fun m!205821 () Bool)

(assert (=> b!177250 m!205821))

(declare-fun m!205823 () Bool)

(assert (=> b!177250 m!205823))

(assert (=> b!177250 m!205823))

(declare-fun m!205825 () Bool)

(assert (=> b!177250 m!205825))

(assert (=> b!177252 m!205823))

(assert (=> b!177252 m!205823))

(assert (=> b!177252 m!205825))

(assert (=> b!177214 d!53653))

(declare-fun b!177295 () Bool)

(declare-fun e!116941 () Bool)

(declare-fun e!116943 () Bool)

(assert (=> b!177295 (= e!116941 e!116943)))

(declare-fun res!84061 () Bool)

(declare-fun call!17937 () Bool)

(assert (=> b!177295 (= res!84061 call!17937)))

(assert (=> b!177295 (=> (not res!84061) (not e!116943))))

(declare-fun b!177296 () Bool)

(declare-fun e!116935 () Unit!5417)

(declare-fun lt!87684 () Unit!5417)

(assert (=> b!177296 (= e!116935 lt!87684)))

(declare-fun lt!87666 () ListLongMap!2241)

(declare-fun getCurrentListMapNoExtraKeys!170 (array!7460 array!7462 (_ BitVec 32) (_ BitVec 32) V!5187 V!5187 (_ BitVec 32) Int) ListLongMap!2241)

(assert (=> b!177296 (= lt!87666 (getCurrentListMapNoExtraKeys!170 (_keys!5518 thiss!1248) (_values!3634 thiss!1248) (mask!8587 thiss!1248) (extraKeys!3388 thiss!1248) (zeroValue!3492 thiss!1248) (minValue!3492 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3651 thiss!1248)))))

(declare-fun lt!87668 () (_ BitVec 64))

(assert (=> b!177296 (= lt!87668 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87675 () (_ BitVec 64))

(assert (=> b!177296 (= lt!87675 (select (arr!3538 (_keys!5518 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87664 () Unit!5417)

(declare-fun addStillContains!116 (ListLongMap!2241 (_ BitVec 64) V!5187 (_ BitVec 64)) Unit!5417)

(assert (=> b!177296 (= lt!87664 (addStillContains!116 lt!87666 lt!87668 (zeroValue!3492 thiss!1248) lt!87675))))

(declare-fun +!252 (ListLongMap!2241 tuple2!3300) ListLongMap!2241)

(assert (=> b!177296 (contains!1196 (+!252 lt!87666 (tuple2!3301 lt!87668 (zeroValue!3492 thiss!1248))) lt!87675)))

(declare-fun lt!87673 () Unit!5417)

(assert (=> b!177296 (= lt!87673 lt!87664)))

(declare-fun lt!87680 () ListLongMap!2241)

(assert (=> b!177296 (= lt!87680 (getCurrentListMapNoExtraKeys!170 (_keys!5518 thiss!1248) (_values!3634 thiss!1248) (mask!8587 thiss!1248) (extraKeys!3388 thiss!1248) (zeroValue!3492 thiss!1248) (minValue!3492 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3651 thiss!1248)))))

(declare-fun lt!87682 () (_ BitVec 64))

(assert (=> b!177296 (= lt!87682 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87669 () (_ BitVec 64))

(assert (=> b!177296 (= lt!87669 (select (arr!3538 (_keys!5518 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87679 () Unit!5417)

(declare-fun addApplyDifferent!116 (ListLongMap!2241 (_ BitVec 64) V!5187 (_ BitVec 64)) Unit!5417)

(assert (=> b!177296 (= lt!87679 (addApplyDifferent!116 lt!87680 lt!87682 (minValue!3492 thiss!1248) lt!87669))))

(declare-fun apply!140 (ListLongMap!2241 (_ BitVec 64)) V!5187)

(assert (=> b!177296 (= (apply!140 (+!252 lt!87680 (tuple2!3301 lt!87682 (minValue!3492 thiss!1248))) lt!87669) (apply!140 lt!87680 lt!87669))))

(declare-fun lt!87672 () Unit!5417)

(assert (=> b!177296 (= lt!87672 lt!87679)))

(declare-fun lt!87670 () ListLongMap!2241)

(assert (=> b!177296 (= lt!87670 (getCurrentListMapNoExtraKeys!170 (_keys!5518 thiss!1248) (_values!3634 thiss!1248) (mask!8587 thiss!1248) (extraKeys!3388 thiss!1248) (zeroValue!3492 thiss!1248) (minValue!3492 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3651 thiss!1248)))))

(declare-fun lt!87674 () (_ BitVec 64))

(assert (=> b!177296 (= lt!87674 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87677 () (_ BitVec 64))

(assert (=> b!177296 (= lt!87677 (select (arr!3538 (_keys!5518 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87676 () Unit!5417)

(assert (=> b!177296 (= lt!87676 (addApplyDifferent!116 lt!87670 lt!87674 (zeroValue!3492 thiss!1248) lt!87677))))

(assert (=> b!177296 (= (apply!140 (+!252 lt!87670 (tuple2!3301 lt!87674 (zeroValue!3492 thiss!1248))) lt!87677) (apply!140 lt!87670 lt!87677))))

(declare-fun lt!87681 () Unit!5417)

(assert (=> b!177296 (= lt!87681 lt!87676)))

(declare-fun lt!87683 () ListLongMap!2241)

(assert (=> b!177296 (= lt!87683 (getCurrentListMapNoExtraKeys!170 (_keys!5518 thiss!1248) (_values!3634 thiss!1248) (mask!8587 thiss!1248) (extraKeys!3388 thiss!1248) (zeroValue!3492 thiss!1248) (minValue!3492 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3651 thiss!1248)))))

(declare-fun lt!87685 () (_ BitVec 64))

(assert (=> b!177296 (= lt!87685 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87665 () (_ BitVec 64))

(assert (=> b!177296 (= lt!87665 (select (arr!3538 (_keys!5518 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!177296 (= lt!87684 (addApplyDifferent!116 lt!87683 lt!87685 (minValue!3492 thiss!1248) lt!87665))))

(assert (=> b!177296 (= (apply!140 (+!252 lt!87683 (tuple2!3301 lt!87685 (minValue!3492 thiss!1248))) lt!87665) (apply!140 lt!87683 lt!87665))))

(declare-fun bm!17933 () Bool)

(declare-fun call!17940 () ListLongMap!2241)

(declare-fun call!17938 () ListLongMap!2241)

(assert (=> bm!17933 (= call!17940 call!17938)))

(declare-fun b!177297 () Bool)

(declare-fun e!116940 () ListLongMap!2241)

(assert (=> b!177297 (= e!116940 call!17940)))

(declare-fun b!177298 () Bool)

(declare-fun e!116936 () Bool)

(declare-fun lt!87678 () ListLongMap!2241)

(declare-fun get!2018 (ValueCell!1734 V!5187) V!5187)

(declare-fun dynLambda!478 (Int (_ BitVec 64)) V!5187)

(assert (=> b!177298 (= e!116936 (= (apply!140 lt!87678 (select (arr!3538 (_keys!5518 thiss!1248)) #b00000000000000000000000000000000)) (get!2018 (select (arr!3539 (_values!3634 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!478 (defaultEntry!3651 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!177298 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3843 (_values!3634 thiss!1248))))))

(assert (=> b!177298 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3842 (_keys!5518 thiss!1248))))))

(declare-fun b!177299 () Bool)

(declare-fun res!84063 () Bool)

(declare-fun e!116932 () Bool)

(assert (=> b!177299 (=> (not res!84063) (not e!116932))))

(declare-fun e!116938 () Bool)

(assert (=> b!177299 (= res!84063 e!116938)))

(declare-fun res!84057 () Bool)

(assert (=> b!177299 (=> res!84057 e!116938)))

(declare-fun e!116937 () Bool)

(assert (=> b!177299 (= res!84057 (not e!116937))))

(declare-fun res!84058 () Bool)

(assert (=> b!177299 (=> (not res!84058) (not e!116937))))

(assert (=> b!177299 (= res!84058 (bvslt #b00000000000000000000000000000000 (size!3842 (_keys!5518 thiss!1248))))))

(declare-fun bm!17934 () Bool)

(declare-fun call!17936 () ListLongMap!2241)

(declare-fun call!17942 () ListLongMap!2241)

(assert (=> bm!17934 (= call!17936 call!17942)))

(declare-fun b!177300 () Bool)

(declare-fun e!116942 () ListLongMap!2241)

(assert (=> b!177300 (= e!116942 call!17940)))

(declare-fun b!177301 () Bool)

(declare-fun e!116944 () ListLongMap!2241)

(assert (=> b!177301 (= e!116944 e!116940)))

(declare-fun c!31730 () Bool)

(assert (=> b!177301 (= c!31730 (and (not (= (bvand (extraKeys!3388 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3388 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!177302 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!177302 (= e!116937 (validKeyInArray!0 (select (arr!3538 (_keys!5518 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!177303 () Bool)

(declare-fun res!84064 () Bool)

(assert (=> b!177303 (=> (not res!84064) (not e!116932))))

(declare-fun e!116934 () Bool)

(assert (=> b!177303 (= res!84064 e!116934)))

(declare-fun c!31732 () Bool)

(assert (=> b!177303 (= c!31732 (not (= (bvand (extraKeys!3388 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!177304 () Bool)

(assert (=> b!177304 (= e!116941 (not call!17937))))

(declare-fun b!177305 () Bool)

(declare-fun c!31733 () Bool)

(assert (=> b!177305 (= c!31733 (and (not (= (bvand (extraKeys!3388 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3388 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!177305 (= e!116940 e!116942)))

(declare-fun b!177306 () Bool)

(declare-fun e!116933 () Bool)

(assert (=> b!177306 (= e!116933 (validKeyInArray!0 (select (arr!3538 (_keys!5518 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!177307 () Bool)

(declare-fun call!17939 () Bool)

(assert (=> b!177307 (= e!116934 (not call!17939))))

(declare-fun b!177308 () Bool)

(declare-fun e!116939 () Bool)

(assert (=> b!177308 (= e!116934 e!116939)))

(declare-fun res!84065 () Bool)

(assert (=> b!177308 (= res!84065 call!17939)))

(assert (=> b!177308 (=> (not res!84065) (not e!116939))))

(declare-fun b!177309 () Bool)

(assert (=> b!177309 (= e!116932 e!116941)))

(declare-fun c!31731 () Bool)

(assert (=> b!177309 (= c!31731 (not (= (bvand (extraKeys!3388 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!177310 () Bool)

(assert (=> b!177310 (= e!116944 (+!252 call!17938 (tuple2!3301 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3492 thiss!1248))))))

(declare-fun bm!17936 () Bool)

(assert (=> bm!17936 (= call!17937 (contains!1196 lt!87678 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!17937 () Bool)

(declare-fun call!17941 () ListLongMap!2241)

(assert (=> bm!17937 (= call!17941 call!17936)))

(declare-fun b!177311 () Bool)

(assert (=> b!177311 (= e!116938 e!116936)))

(declare-fun res!84059 () Bool)

(assert (=> b!177311 (=> (not res!84059) (not e!116936))))

(assert (=> b!177311 (= res!84059 (contains!1196 lt!87678 (select (arr!3538 (_keys!5518 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!177311 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3842 (_keys!5518 thiss!1248))))))

(declare-fun b!177312 () Bool)

(assert (=> b!177312 (= e!116943 (= (apply!140 lt!87678 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3492 thiss!1248)))))

(declare-fun b!177313 () Bool)

(assert (=> b!177313 (= e!116939 (= (apply!140 lt!87678 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3492 thiss!1248)))))

(declare-fun b!177314 () Bool)

(declare-fun Unit!5420 () Unit!5417)

(assert (=> b!177314 (= e!116935 Unit!5420)))

(declare-fun c!31729 () Bool)

(declare-fun bm!17938 () Bool)

(assert (=> bm!17938 (= call!17938 (+!252 (ite c!31729 call!17942 (ite c!31730 call!17936 call!17941)) (ite (or c!31729 c!31730) (tuple2!3301 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3492 thiss!1248)) (tuple2!3301 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3492 thiss!1248)))))))

(declare-fun bm!17935 () Bool)

(assert (=> bm!17935 (= call!17939 (contains!1196 lt!87678 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!53655 () Bool)

(assert (=> d!53655 e!116932))

(declare-fun res!84062 () Bool)

(assert (=> d!53655 (=> (not res!84062) (not e!116932))))

(assert (=> d!53655 (= res!84062 (or (bvsge #b00000000000000000000000000000000 (size!3842 (_keys!5518 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3842 (_keys!5518 thiss!1248))))))))

(declare-fun lt!87671 () ListLongMap!2241)

(assert (=> d!53655 (= lt!87678 lt!87671)))

(declare-fun lt!87667 () Unit!5417)

(assert (=> d!53655 (= lt!87667 e!116935)))

(declare-fun c!31734 () Bool)

(assert (=> d!53655 (= c!31734 e!116933)))

(declare-fun res!84060 () Bool)

(assert (=> d!53655 (=> (not res!84060) (not e!116933))))

(assert (=> d!53655 (= res!84060 (bvslt #b00000000000000000000000000000000 (size!3842 (_keys!5518 thiss!1248))))))

(assert (=> d!53655 (= lt!87671 e!116944)))

(assert (=> d!53655 (= c!31729 (and (not (= (bvand (extraKeys!3388 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3388 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53655 (validMask!0 (mask!8587 thiss!1248))))

(assert (=> d!53655 (= (getCurrentListMap!783 (_keys!5518 thiss!1248) (_values!3634 thiss!1248) (mask!8587 thiss!1248) (extraKeys!3388 thiss!1248) (zeroValue!3492 thiss!1248) (minValue!3492 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3651 thiss!1248)) lt!87678)))

(declare-fun bm!17939 () Bool)

(assert (=> bm!17939 (= call!17942 (getCurrentListMapNoExtraKeys!170 (_keys!5518 thiss!1248) (_values!3634 thiss!1248) (mask!8587 thiss!1248) (extraKeys!3388 thiss!1248) (zeroValue!3492 thiss!1248) (minValue!3492 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3651 thiss!1248)))))

(declare-fun b!177315 () Bool)

(assert (=> b!177315 (= e!116942 call!17941)))

(assert (= (and d!53655 c!31729) b!177310))

(assert (= (and d!53655 (not c!31729)) b!177301))

(assert (= (and b!177301 c!31730) b!177297))

(assert (= (and b!177301 (not c!31730)) b!177305))

(assert (= (and b!177305 c!31733) b!177300))

(assert (= (and b!177305 (not c!31733)) b!177315))

(assert (= (or b!177300 b!177315) bm!17937))

(assert (= (or b!177297 bm!17937) bm!17934))

(assert (= (or b!177297 b!177300) bm!17933))

(assert (= (or b!177310 bm!17934) bm!17939))

(assert (= (or b!177310 bm!17933) bm!17938))

(assert (= (and d!53655 res!84060) b!177306))

(assert (= (and d!53655 c!31734) b!177296))

(assert (= (and d!53655 (not c!31734)) b!177314))

(assert (= (and d!53655 res!84062) b!177299))

(assert (= (and b!177299 res!84058) b!177302))

(assert (= (and b!177299 (not res!84057)) b!177311))

(assert (= (and b!177311 res!84059) b!177298))

(assert (= (and b!177299 res!84063) b!177303))

(assert (= (and b!177303 c!31732) b!177308))

(assert (= (and b!177303 (not c!31732)) b!177307))

(assert (= (and b!177308 res!84065) b!177313))

(assert (= (or b!177308 b!177307) bm!17935))

(assert (= (and b!177303 res!84064) b!177309))

(assert (= (and b!177309 c!31731) b!177295))

(assert (= (and b!177309 (not c!31731)) b!177304))

(assert (= (and b!177295 res!84061) b!177312))

(assert (= (or b!177295 b!177304) bm!17936))

(declare-fun b_lambda!7081 () Bool)

(assert (=> (not b_lambda!7081) (not b!177298)))

(declare-fun t!7113 () Bool)

(declare-fun tb!2799 () Bool)

(assert (=> (and b!177217 (= (defaultEntry!3651 thiss!1248) (defaultEntry!3651 thiss!1248)) t!7113) tb!2799))

(declare-fun result!4655 () Bool)

(assert (=> tb!2799 (= result!4655 tp_is_empty!4155)))

(assert (=> b!177298 t!7113))

(declare-fun b_and!10905 () Bool)

(assert (= b_and!10901 (and (=> t!7113 result!4655) b_and!10905)))

(declare-fun m!205827 () Bool)

(assert (=> bm!17935 m!205827))

(declare-fun m!205829 () Bool)

(assert (=> b!177298 m!205829))

(declare-fun m!205831 () Bool)

(assert (=> b!177298 m!205831))

(assert (=> b!177298 m!205829))

(declare-fun m!205833 () Bool)

(assert (=> b!177298 m!205833))

(declare-fun m!205835 () Bool)

(assert (=> b!177298 m!205835))

(declare-fun m!205837 () Bool)

(assert (=> b!177298 m!205837))

(assert (=> b!177298 m!205831))

(assert (=> b!177298 m!205835))

(declare-fun m!205839 () Bool)

(assert (=> bm!17938 m!205839))

(declare-fun m!205841 () Bool)

(assert (=> bm!17939 m!205841))

(assert (=> d!53655 m!205793))

(assert (=> b!177306 m!205835))

(assert (=> b!177306 m!205835))

(declare-fun m!205843 () Bool)

(assert (=> b!177306 m!205843))

(declare-fun m!205845 () Bool)

(assert (=> b!177313 m!205845))

(assert (=> b!177311 m!205835))

(assert (=> b!177311 m!205835))

(declare-fun m!205847 () Bool)

(assert (=> b!177311 m!205847))

(declare-fun m!205849 () Bool)

(assert (=> bm!17936 m!205849))

(declare-fun m!205851 () Bool)

(assert (=> b!177296 m!205851))

(declare-fun m!205853 () Bool)

(assert (=> b!177296 m!205853))

(declare-fun m!205855 () Bool)

(assert (=> b!177296 m!205855))

(declare-fun m!205857 () Bool)

(assert (=> b!177296 m!205857))

(declare-fun m!205859 () Bool)

(assert (=> b!177296 m!205859))

(declare-fun m!205861 () Bool)

(assert (=> b!177296 m!205861))

(declare-fun m!205863 () Bool)

(assert (=> b!177296 m!205863))

(assert (=> b!177296 m!205857))

(declare-fun m!205865 () Bool)

(assert (=> b!177296 m!205865))

(assert (=> b!177296 m!205841))

(assert (=> b!177296 m!205855))

(declare-fun m!205867 () Bool)

(assert (=> b!177296 m!205867))

(declare-fun m!205869 () Bool)

(assert (=> b!177296 m!205869))

(assert (=> b!177296 m!205851))

(declare-fun m!205871 () Bool)

(assert (=> b!177296 m!205871))

(declare-fun m!205873 () Bool)

(assert (=> b!177296 m!205873))

(declare-fun m!205875 () Bool)

(assert (=> b!177296 m!205875))

(declare-fun m!205877 () Bool)

(assert (=> b!177296 m!205877))

(assert (=> b!177296 m!205873))

(declare-fun m!205879 () Bool)

(assert (=> b!177296 m!205879))

(assert (=> b!177296 m!205835))

(assert (=> b!177302 m!205835))

(assert (=> b!177302 m!205835))

(assert (=> b!177302 m!205843))

(declare-fun m!205881 () Bool)

(assert (=> b!177310 m!205881))

(declare-fun m!205883 () Bool)

(assert (=> b!177312 m!205883))

(assert (=> b!177214 d!53655))

(declare-fun b!177330 () Bool)

(declare-fun c!31741 () Bool)

(declare-fun lt!87693 () (_ BitVec 64))

(assert (=> b!177330 (= c!31741 (= lt!87693 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!116951 () SeekEntryResult!576)

(declare-fun e!116952 () SeekEntryResult!576)

(assert (=> b!177330 (= e!116951 e!116952)))

(declare-fun b!177331 () Bool)

(declare-fun e!116953 () SeekEntryResult!576)

(assert (=> b!177331 (= e!116953 e!116951)))

(declare-fun lt!87692 () SeekEntryResult!576)

(assert (=> b!177331 (= lt!87693 (select (arr!3538 (_keys!5518 thiss!1248)) (index!4474 lt!87692)))))

(declare-fun c!31742 () Bool)

(assert (=> b!177331 (= c!31742 (= lt!87693 key!828))))

(declare-fun b!177332 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7460 (_ BitVec 32)) SeekEntryResult!576)

(assert (=> b!177332 (= e!116952 (seekKeyOrZeroReturnVacant!0 (x!19456 lt!87692) (index!4474 lt!87692) (index!4474 lt!87692) key!828 (_keys!5518 thiss!1248) (mask!8587 thiss!1248)))))

(declare-fun d!53657 () Bool)

(declare-fun lt!87694 () SeekEntryResult!576)

(assert (=> d!53657 (and (or ((_ is Undefined!576) lt!87694) (not ((_ is Found!576) lt!87694)) (and (bvsge (index!4473 lt!87694) #b00000000000000000000000000000000) (bvslt (index!4473 lt!87694) (size!3842 (_keys!5518 thiss!1248))))) (or ((_ is Undefined!576) lt!87694) ((_ is Found!576) lt!87694) (not ((_ is MissingZero!576) lt!87694)) (and (bvsge (index!4472 lt!87694) #b00000000000000000000000000000000) (bvslt (index!4472 lt!87694) (size!3842 (_keys!5518 thiss!1248))))) (or ((_ is Undefined!576) lt!87694) ((_ is Found!576) lt!87694) ((_ is MissingZero!576) lt!87694) (not ((_ is MissingVacant!576) lt!87694)) (and (bvsge (index!4475 lt!87694) #b00000000000000000000000000000000) (bvslt (index!4475 lt!87694) (size!3842 (_keys!5518 thiss!1248))))) (or ((_ is Undefined!576) lt!87694) (ite ((_ is Found!576) lt!87694) (= (select (arr!3538 (_keys!5518 thiss!1248)) (index!4473 lt!87694)) key!828) (ite ((_ is MissingZero!576) lt!87694) (= (select (arr!3538 (_keys!5518 thiss!1248)) (index!4472 lt!87694)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!576) lt!87694) (= (select (arr!3538 (_keys!5518 thiss!1248)) (index!4475 lt!87694)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53657 (= lt!87694 e!116953)))

(declare-fun c!31743 () Bool)

(assert (=> d!53657 (= c!31743 (and ((_ is Intermediate!576) lt!87692) (undefined!1388 lt!87692)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7460 (_ BitVec 32)) SeekEntryResult!576)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53657 (= lt!87692 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8587 thiss!1248)) key!828 (_keys!5518 thiss!1248) (mask!8587 thiss!1248)))))

(assert (=> d!53657 (validMask!0 (mask!8587 thiss!1248))))

(assert (=> d!53657 (= (seekEntryOrOpen!0 key!828 (_keys!5518 thiss!1248) (mask!8587 thiss!1248)) lt!87694)))

(declare-fun b!177333 () Bool)

(assert (=> b!177333 (= e!116953 Undefined!576)))

(declare-fun b!177334 () Bool)

(assert (=> b!177334 (= e!116951 (Found!576 (index!4474 lt!87692)))))

(declare-fun b!177335 () Bool)

(assert (=> b!177335 (= e!116952 (MissingZero!576 (index!4474 lt!87692)))))

(assert (= (and d!53657 c!31743) b!177333))

(assert (= (and d!53657 (not c!31743)) b!177331))

(assert (= (and b!177331 c!31742) b!177334))

(assert (= (and b!177331 (not c!31742)) b!177330))

(assert (= (and b!177330 c!31741) b!177335))

(assert (= (and b!177330 (not c!31741)) b!177332))

(declare-fun m!205885 () Bool)

(assert (=> b!177331 m!205885))

(declare-fun m!205887 () Bool)

(assert (=> b!177332 m!205887))

(declare-fun m!205889 () Bool)

(assert (=> d!53657 m!205889))

(declare-fun m!205891 () Bool)

(assert (=> d!53657 m!205891))

(declare-fun m!205893 () Bool)

(assert (=> d!53657 m!205893))

(declare-fun m!205895 () Bool)

(assert (=> d!53657 m!205895))

(assert (=> d!53657 m!205893))

(declare-fun m!205897 () Bool)

(assert (=> d!53657 m!205897))

(assert (=> d!53657 m!205793))

(assert (=> b!177218 d!53657))

(declare-fun d!53659 () Bool)

(assert (=> d!53659 (= (validMask!0 (mask!8587 thiss!1248)) (and (or (= (mask!8587 thiss!1248) #b00000000000000000000000000000111) (= (mask!8587 thiss!1248) #b00000000000000000000000000001111) (= (mask!8587 thiss!1248) #b00000000000000000000000000011111) (= (mask!8587 thiss!1248) #b00000000000000000000000000111111) (= (mask!8587 thiss!1248) #b00000000000000000000000001111111) (= (mask!8587 thiss!1248) #b00000000000000000000000011111111) (= (mask!8587 thiss!1248) #b00000000000000000000000111111111) (= (mask!8587 thiss!1248) #b00000000000000000000001111111111) (= (mask!8587 thiss!1248) #b00000000000000000000011111111111) (= (mask!8587 thiss!1248) #b00000000000000000000111111111111) (= (mask!8587 thiss!1248) #b00000000000000000001111111111111) (= (mask!8587 thiss!1248) #b00000000000000000011111111111111) (= (mask!8587 thiss!1248) #b00000000000000000111111111111111) (= (mask!8587 thiss!1248) #b00000000000000001111111111111111) (= (mask!8587 thiss!1248) #b00000000000000011111111111111111) (= (mask!8587 thiss!1248) #b00000000000000111111111111111111) (= (mask!8587 thiss!1248) #b00000000000001111111111111111111) (= (mask!8587 thiss!1248) #b00000000000011111111111111111111) (= (mask!8587 thiss!1248) #b00000000000111111111111111111111) (= (mask!8587 thiss!1248) #b00000000001111111111111111111111) (= (mask!8587 thiss!1248) #b00000000011111111111111111111111) (= (mask!8587 thiss!1248) #b00000000111111111111111111111111) (= (mask!8587 thiss!1248) #b00000001111111111111111111111111) (= (mask!8587 thiss!1248) #b00000011111111111111111111111111) (= (mask!8587 thiss!1248) #b00000111111111111111111111111111) (= (mask!8587 thiss!1248) #b00001111111111111111111111111111) (= (mask!8587 thiss!1248) #b00011111111111111111111111111111) (= (mask!8587 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8587 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!177213 d!53659))

(declare-fun d!53661 () Bool)

(declare-fun res!84072 () Bool)

(declare-fun e!116956 () Bool)

(assert (=> d!53661 (=> (not res!84072) (not e!116956))))

(declare-fun simpleValid!153 (LongMapFixedSize!2376) Bool)

(assert (=> d!53661 (= res!84072 (simpleValid!153 thiss!1248))))

(assert (=> d!53661 (= (valid!988 thiss!1248) e!116956)))

(declare-fun b!177342 () Bool)

(declare-fun res!84073 () Bool)

(assert (=> b!177342 (=> (not res!84073) (not e!116956))))

(declare-fun arrayCountValidKeys!0 (array!7460 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!177342 (= res!84073 (= (arrayCountValidKeys!0 (_keys!5518 thiss!1248) #b00000000000000000000000000000000 (size!3842 (_keys!5518 thiss!1248))) (_size!1237 thiss!1248)))))

(declare-fun b!177343 () Bool)

(declare-fun res!84074 () Bool)

(assert (=> b!177343 (=> (not res!84074) (not e!116956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7460 (_ BitVec 32)) Bool)

(assert (=> b!177343 (= res!84074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5518 thiss!1248) (mask!8587 thiss!1248)))))

(declare-fun b!177344 () Bool)

(declare-datatypes ((List!2274 0))(
  ( (Nil!2271) (Cons!2270 (h!2891 (_ BitVec 64)) (t!7114 List!2274)) )
))
(declare-fun arrayNoDuplicates!0 (array!7460 (_ BitVec 32) List!2274) Bool)

(assert (=> b!177344 (= e!116956 (arrayNoDuplicates!0 (_keys!5518 thiss!1248) #b00000000000000000000000000000000 Nil!2271))))

(assert (= (and d!53661 res!84072) b!177342))

(assert (= (and b!177342 res!84073) b!177343))

(assert (= (and b!177343 res!84074) b!177344))

(declare-fun m!205899 () Bool)

(assert (=> d!53661 m!205899))

(declare-fun m!205901 () Bool)

(assert (=> b!177342 m!205901))

(declare-fun m!205903 () Bool)

(assert (=> b!177343 m!205903))

(declare-fun m!205905 () Bool)

(assert (=> b!177344 m!205905))

(assert (=> start!17742 d!53661))

(declare-fun b!177352 () Bool)

(declare-fun e!116962 () Bool)

(assert (=> b!177352 (= e!116962 tp_is_empty!4155)))

(declare-fun mapNonEmpty!7101 () Bool)

(declare-fun mapRes!7101 () Bool)

(declare-fun tp!15858 () Bool)

(declare-fun e!116961 () Bool)

(assert (=> mapNonEmpty!7101 (= mapRes!7101 (and tp!15858 e!116961))))

(declare-fun mapKey!7101 () (_ BitVec 32))

(declare-fun mapValue!7101 () ValueCell!1734)

(declare-fun mapRest!7101 () (Array (_ BitVec 32) ValueCell!1734))

(assert (=> mapNonEmpty!7101 (= mapRest!7095 (store mapRest!7101 mapKey!7101 mapValue!7101))))

(declare-fun b!177351 () Bool)

(assert (=> b!177351 (= e!116961 tp_is_empty!4155)))

(declare-fun mapIsEmpty!7101 () Bool)

(assert (=> mapIsEmpty!7101 mapRes!7101))

(declare-fun condMapEmpty!7101 () Bool)

(declare-fun mapDefault!7101 () ValueCell!1734)

(assert (=> mapNonEmpty!7095 (= condMapEmpty!7101 (= mapRest!7095 ((as const (Array (_ BitVec 32) ValueCell!1734)) mapDefault!7101)))))

(assert (=> mapNonEmpty!7095 (= tp!15848 (and e!116962 mapRes!7101))))

(assert (= (and mapNonEmpty!7095 condMapEmpty!7101) mapIsEmpty!7101))

(assert (= (and mapNonEmpty!7095 (not condMapEmpty!7101)) mapNonEmpty!7101))

(assert (= (and mapNonEmpty!7101 ((_ is ValueCellFull!1734) mapValue!7101)) b!177351))

(assert (= (and mapNonEmpty!7095 ((_ is ValueCellFull!1734) mapDefault!7101)) b!177352))

(declare-fun m!205907 () Bool)

(assert (=> mapNonEmpty!7101 m!205907))

(declare-fun b_lambda!7083 () Bool)

(assert (= b_lambda!7081 (or (and b!177217 b_free!4383) b_lambda!7083)))

(check-sat (not b!177296) tp_is_empty!4155 (not b!177250) (not bm!17939) (not b!177310) (not b!177298) (not d!53653) (not b!177332) (not d!53655) (not b!177311) (not b!177312) (not b!177313) (not bm!17938) (not b_next!4383) (not mapNonEmpty!7101) (not b!177252) (not bm!17936) (not bm!17935) (not d!53657) (not b!177302) (not b!177344) (not b_lambda!7083) (not b!177306) (not d!53661) (not b!177342) b_and!10905 (not b!177343))
(check-sat b_and!10905 (not b_next!4383))
