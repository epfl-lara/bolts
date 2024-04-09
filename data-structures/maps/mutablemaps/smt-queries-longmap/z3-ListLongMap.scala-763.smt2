; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18006 () Bool)

(assert start!18006)

(declare-fun b!179145 () Bool)

(declare-fun b_free!4419 () Bool)

(declare-fun b_next!4419 () Bool)

(assert (=> b!179145 (= b_free!4419 (not b_next!4419))))

(declare-fun tp!15978 () Bool)

(declare-fun b_and!10965 () Bool)

(assert (=> b!179145 (= tp!15978 b_and!10965)))

(declare-fun res!84857 () Bool)

(declare-fun e!118046 () Bool)

(assert (=> start!18006 (=> (not res!84857) (not e!118046))))

(declare-datatypes ((V!5235 0))(
  ( (V!5236 (val!2140 Int)) )
))
(declare-datatypes ((ValueCell!1752 0))(
  ( (ValueCellFull!1752 (v!4022 V!5235)) (EmptyCell!1752) )
))
(declare-datatypes ((array!7544 0))(
  ( (array!7545 (arr!3574 (Array (_ BitVec 32) (_ BitVec 64))) (size!3882 (_ BitVec 32))) )
))
(declare-datatypes ((array!7546 0))(
  ( (array!7547 (arr!3575 (Array (_ BitVec 32) ValueCell!1752)) (size!3883 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2412 0))(
  ( (LongMapFixedSize!2413 (defaultEntry!3679 Int) (mask!8655 (_ BitVec 32)) (extraKeys!3416 (_ BitVec 32)) (zeroValue!3520 V!5235) (minValue!3520 V!5235) (_size!1255 (_ BitVec 32)) (_keys!5564 array!7544) (_values!3662 array!7546) (_vacant!1255 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2412)

(declare-fun valid!1001 (LongMapFixedSize!2412) Bool)

(assert (=> start!18006 (= res!84857 (valid!1001 thiss!1248))))

(assert (=> start!18006 e!118046))

(declare-fun e!118042 () Bool)

(assert (=> start!18006 e!118042))

(assert (=> start!18006 true))

(declare-fun b!179137 () Bool)

(declare-fun e!118045 () Bool)

(declare-fun e!118043 () Bool)

(declare-fun mapRes!7171 () Bool)

(assert (=> b!179137 (= e!118045 (and e!118043 mapRes!7171))))

(declare-fun condMapEmpty!7171 () Bool)

(declare-fun mapDefault!7171 () ValueCell!1752)

(assert (=> b!179137 (= condMapEmpty!7171 (= (arr!3575 (_values!3662 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1752)) mapDefault!7171)))))

(declare-fun b!179138 () Bool)

(declare-fun res!84861 () Bool)

(assert (=> b!179138 (=> (not res!84861) (not e!118046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!179138 (= res!84861 (validMask!0 (mask!8655 thiss!1248)))))

(declare-fun b!179139 () Bool)

(declare-fun tp_is_empty!4191 () Bool)

(assert (=> b!179139 (= e!118043 tp_is_empty!4191)))

(declare-fun b!179140 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7544 (_ BitVec 32)) Bool)

(assert (=> b!179140 (= e!118046 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5564 thiss!1248) (mask!8655 thiss!1248))))))

(declare-fun mapIsEmpty!7171 () Bool)

(assert (=> mapIsEmpty!7171 mapRes!7171))

(declare-fun b!179141 () Bool)

(declare-fun res!84858 () Bool)

(assert (=> b!179141 (=> (not res!84858) (not e!118046))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!179141 (= res!84858 (not (= key!828 (bvneg key!828))))))

(declare-fun b!179142 () Bool)

(declare-fun res!84862 () Bool)

(assert (=> b!179142 (=> (not res!84862) (not e!118046))))

(declare-datatypes ((tuple2!3322 0))(
  ( (tuple2!3323 (_1!1671 (_ BitVec 64)) (_2!1671 V!5235)) )
))
(declare-datatypes ((List!2290 0))(
  ( (Nil!2287) (Cons!2286 (h!2911 tuple2!3322) (t!7140 List!2290)) )
))
(declare-datatypes ((ListLongMap!2263 0))(
  ( (ListLongMap!2264 (toList!1147 List!2290)) )
))
(declare-fun contains!1215 (ListLongMap!2263 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!794 (array!7544 array!7546 (_ BitVec 32) (_ BitVec 32) V!5235 V!5235 (_ BitVec 32) Int) ListLongMap!2263)

(assert (=> b!179142 (= res!84862 (not (contains!1215 (getCurrentListMap!794 (_keys!5564 thiss!1248) (_values!3662 thiss!1248) (mask!8655 thiss!1248) (extraKeys!3416 thiss!1248) (zeroValue!3520 thiss!1248) (minValue!3520 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3679 thiss!1248)) key!828)))))

(declare-fun b!179143 () Bool)

(declare-fun res!84859 () Bool)

(assert (=> b!179143 (=> (not res!84859) (not e!118046))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!590 0))(
  ( (MissingZero!590 (index!4528 (_ BitVec 32))) (Found!590 (index!4529 (_ BitVec 32))) (Intermediate!590 (undefined!1402 Bool) (index!4530 (_ BitVec 32)) (x!19610 (_ BitVec 32))) (Undefined!590) (MissingVacant!590 (index!4531 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7544 (_ BitVec 32)) SeekEntryResult!590)

(assert (=> b!179143 (= res!84859 ((_ is Undefined!590) (seekEntryOrOpen!0 key!828 (_keys!5564 thiss!1248) (mask!8655 thiss!1248))))))

(declare-fun mapNonEmpty!7171 () Bool)

(declare-fun tp!15979 () Bool)

(declare-fun e!118044 () Bool)

(assert (=> mapNonEmpty!7171 (= mapRes!7171 (and tp!15979 e!118044))))

(declare-fun mapValue!7171 () ValueCell!1752)

(declare-fun mapKey!7171 () (_ BitVec 32))

(declare-fun mapRest!7171 () (Array (_ BitVec 32) ValueCell!1752))

(assert (=> mapNonEmpty!7171 (= (arr!3575 (_values!3662 thiss!1248)) (store mapRest!7171 mapKey!7171 mapValue!7171))))

(declare-fun b!179144 () Bool)

(assert (=> b!179144 (= e!118044 tp_is_empty!4191)))

(declare-fun array_inv!2291 (array!7544) Bool)

(declare-fun array_inv!2292 (array!7546) Bool)

(assert (=> b!179145 (= e!118042 (and tp!15978 tp_is_empty!4191 (array_inv!2291 (_keys!5564 thiss!1248)) (array_inv!2292 (_values!3662 thiss!1248)) e!118045))))

(declare-fun b!179146 () Bool)

(declare-fun res!84860 () Bool)

(assert (=> b!179146 (=> (not res!84860) (not e!118046))))

(assert (=> b!179146 (= res!84860 (and (= (size!3883 (_values!3662 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8655 thiss!1248))) (= (size!3882 (_keys!5564 thiss!1248)) (size!3883 (_values!3662 thiss!1248))) (bvsge (mask!8655 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3416 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3416 thiss!1248) #b00000000000000000000000000000011)))))

(assert (= (and start!18006 res!84857) b!179141))

(assert (= (and b!179141 res!84858) b!179143))

(assert (= (and b!179143 res!84859) b!179142))

(assert (= (and b!179142 res!84862) b!179138))

(assert (= (and b!179138 res!84861) b!179146))

(assert (= (and b!179146 res!84860) b!179140))

(assert (= (and b!179137 condMapEmpty!7171) mapIsEmpty!7171))

(assert (= (and b!179137 (not condMapEmpty!7171)) mapNonEmpty!7171))

(assert (= (and mapNonEmpty!7171 ((_ is ValueCellFull!1752) mapValue!7171)) b!179144))

(assert (= (and b!179137 ((_ is ValueCellFull!1752) mapDefault!7171)) b!179139))

(assert (= b!179145 b!179137))

(assert (= start!18006 b!179145))

(declare-fun m!207489 () Bool)

(assert (=> b!179140 m!207489))

(declare-fun m!207491 () Bool)

(assert (=> b!179138 m!207491))

(declare-fun m!207493 () Bool)

(assert (=> b!179145 m!207493))

(declare-fun m!207495 () Bool)

(assert (=> b!179145 m!207495))

(declare-fun m!207497 () Bool)

(assert (=> start!18006 m!207497))

(declare-fun m!207499 () Bool)

(assert (=> b!179142 m!207499))

(assert (=> b!179142 m!207499))

(declare-fun m!207501 () Bool)

(assert (=> b!179142 m!207501))

(declare-fun m!207503 () Bool)

(assert (=> mapNonEmpty!7171 m!207503))

(declare-fun m!207505 () Bool)

(assert (=> b!179143 m!207505))

(check-sat (not mapNonEmpty!7171) (not b!179143) (not b!179140) (not b_next!4419) (not b!179138) (not b!179142) b_and!10965 (not b!179145) (not start!18006) tp_is_empty!4191)
(check-sat b_and!10965 (not b_next!4419))
(get-model)

(declare-fun b!179185 () Bool)

(declare-fun e!118072 () Bool)

(declare-fun e!118074 () Bool)

(assert (=> b!179185 (= e!118072 e!118074)))

(declare-fun lt!88578 () (_ BitVec 64))

(assert (=> b!179185 (= lt!88578 (select (arr!3574 (_keys!5564 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5457 0))(
  ( (Unit!5458) )
))
(declare-fun lt!88577 () Unit!5457)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7544 (_ BitVec 64) (_ BitVec 32)) Unit!5457)

(assert (=> b!179185 (= lt!88577 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5564 thiss!1248) lt!88578 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!179185 (arrayContainsKey!0 (_keys!5564 thiss!1248) lt!88578 #b00000000000000000000000000000000)))

(declare-fun lt!88576 () Unit!5457)

(assert (=> b!179185 (= lt!88576 lt!88577)))

(declare-fun res!84885 () Bool)

(assert (=> b!179185 (= res!84885 (= (seekEntryOrOpen!0 (select (arr!3574 (_keys!5564 thiss!1248)) #b00000000000000000000000000000000) (_keys!5564 thiss!1248) (mask!8655 thiss!1248)) (Found!590 #b00000000000000000000000000000000)))))

(assert (=> b!179185 (=> (not res!84885) (not e!118074))))

(declare-fun b!179186 () Bool)

(declare-fun call!18098 () Bool)

(assert (=> b!179186 (= e!118074 call!18098)))

(declare-fun d!54041 () Bool)

(declare-fun res!84886 () Bool)

(declare-fun e!118073 () Bool)

(assert (=> d!54041 (=> res!84886 e!118073)))

(assert (=> d!54041 (= res!84886 (bvsge #b00000000000000000000000000000000 (size!3882 (_keys!5564 thiss!1248))))))

(assert (=> d!54041 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5564 thiss!1248) (mask!8655 thiss!1248)) e!118073)))

(declare-fun bm!18095 () Bool)

(assert (=> bm!18095 (= call!18098 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5564 thiss!1248) (mask!8655 thiss!1248)))))

(declare-fun b!179187 () Bool)

(assert (=> b!179187 (= e!118073 e!118072)))

(declare-fun c!32116 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!179187 (= c!32116 (validKeyInArray!0 (select (arr!3574 (_keys!5564 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!179188 () Bool)

(assert (=> b!179188 (= e!118072 call!18098)))

(assert (= (and d!54041 (not res!84886)) b!179187))

(assert (= (and b!179187 c!32116) b!179185))

(assert (= (and b!179187 (not c!32116)) b!179188))

(assert (= (and b!179185 res!84885) b!179186))

(assert (= (or b!179186 b!179188) bm!18095))

(declare-fun m!207525 () Bool)

(assert (=> b!179185 m!207525))

(declare-fun m!207527 () Bool)

(assert (=> b!179185 m!207527))

(declare-fun m!207529 () Bool)

(assert (=> b!179185 m!207529))

(assert (=> b!179185 m!207525))

(declare-fun m!207531 () Bool)

(assert (=> b!179185 m!207531))

(declare-fun m!207533 () Bool)

(assert (=> bm!18095 m!207533))

(assert (=> b!179187 m!207525))

(assert (=> b!179187 m!207525))

(declare-fun m!207535 () Bool)

(assert (=> b!179187 m!207535))

(assert (=> b!179140 d!54041))

(declare-fun d!54043 () Bool)

(declare-fun res!84893 () Bool)

(declare-fun e!118077 () Bool)

(assert (=> d!54043 (=> (not res!84893) (not e!118077))))

(declare-fun simpleValid!159 (LongMapFixedSize!2412) Bool)

(assert (=> d!54043 (= res!84893 (simpleValid!159 thiss!1248))))

(assert (=> d!54043 (= (valid!1001 thiss!1248) e!118077)))

(declare-fun b!179195 () Bool)

(declare-fun res!84894 () Bool)

(assert (=> b!179195 (=> (not res!84894) (not e!118077))))

(declare-fun arrayCountValidKeys!0 (array!7544 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!179195 (= res!84894 (= (arrayCountValidKeys!0 (_keys!5564 thiss!1248) #b00000000000000000000000000000000 (size!3882 (_keys!5564 thiss!1248))) (_size!1255 thiss!1248)))))

(declare-fun b!179196 () Bool)

(declare-fun res!84895 () Bool)

(assert (=> b!179196 (=> (not res!84895) (not e!118077))))

(assert (=> b!179196 (= res!84895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5564 thiss!1248) (mask!8655 thiss!1248)))))

(declare-fun b!179197 () Bool)

(declare-datatypes ((List!2292 0))(
  ( (Nil!2289) (Cons!2288 (h!2913 (_ BitVec 64)) (t!7144 List!2292)) )
))
(declare-fun arrayNoDuplicates!0 (array!7544 (_ BitVec 32) List!2292) Bool)

(assert (=> b!179197 (= e!118077 (arrayNoDuplicates!0 (_keys!5564 thiss!1248) #b00000000000000000000000000000000 Nil!2289))))

(assert (= (and d!54043 res!84893) b!179195))

(assert (= (and b!179195 res!84894) b!179196))

(assert (= (and b!179196 res!84895) b!179197))

(declare-fun m!207537 () Bool)

(assert (=> d!54043 m!207537))

(declare-fun m!207539 () Bool)

(assert (=> b!179195 m!207539))

(assert (=> b!179196 m!207489))

(declare-fun m!207541 () Bool)

(assert (=> b!179197 m!207541))

(assert (=> start!18006 d!54043))

(declare-fun d!54045 () Bool)

(assert (=> d!54045 (= (array_inv!2291 (_keys!5564 thiss!1248)) (bvsge (size!3882 (_keys!5564 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!179145 d!54045))

(declare-fun d!54047 () Bool)

(assert (=> d!54047 (= (array_inv!2292 (_values!3662 thiss!1248)) (bvsge (size!3883 (_values!3662 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!179145 d!54047))

(declare-fun d!54049 () Bool)

(declare-fun e!118083 () Bool)

(assert (=> d!54049 e!118083))

(declare-fun res!84898 () Bool)

(assert (=> d!54049 (=> res!84898 e!118083)))

(declare-fun lt!88587 () Bool)

(assert (=> d!54049 (= res!84898 (not lt!88587))))

(declare-fun lt!88589 () Bool)

(assert (=> d!54049 (= lt!88587 lt!88589)))

(declare-fun lt!88590 () Unit!5457)

(declare-fun e!118082 () Unit!5457)

(assert (=> d!54049 (= lt!88590 e!118082)))

(declare-fun c!32119 () Bool)

(assert (=> d!54049 (= c!32119 lt!88589)))

(declare-fun containsKey!204 (List!2290 (_ BitVec 64)) Bool)

(assert (=> d!54049 (= lt!88589 (containsKey!204 (toList!1147 (getCurrentListMap!794 (_keys!5564 thiss!1248) (_values!3662 thiss!1248) (mask!8655 thiss!1248) (extraKeys!3416 thiss!1248) (zeroValue!3520 thiss!1248) (minValue!3520 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3679 thiss!1248))) key!828))))

(assert (=> d!54049 (= (contains!1215 (getCurrentListMap!794 (_keys!5564 thiss!1248) (_values!3662 thiss!1248) (mask!8655 thiss!1248) (extraKeys!3416 thiss!1248) (zeroValue!3520 thiss!1248) (minValue!3520 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3679 thiss!1248)) key!828) lt!88587)))

(declare-fun b!179204 () Bool)

(declare-fun lt!88588 () Unit!5457)

(assert (=> b!179204 (= e!118082 lt!88588)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!153 (List!2290 (_ BitVec 64)) Unit!5457)

(assert (=> b!179204 (= lt!88588 (lemmaContainsKeyImpliesGetValueByKeyDefined!153 (toList!1147 (getCurrentListMap!794 (_keys!5564 thiss!1248) (_values!3662 thiss!1248) (mask!8655 thiss!1248) (extraKeys!3416 thiss!1248) (zeroValue!3520 thiss!1248) (minValue!3520 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3679 thiss!1248))) key!828))))

(declare-datatypes ((Option!206 0))(
  ( (Some!205 (v!4024 V!5235)) (None!204) )
))
(declare-fun isDefined!154 (Option!206) Bool)

(declare-fun getValueByKey!200 (List!2290 (_ BitVec 64)) Option!206)

(assert (=> b!179204 (isDefined!154 (getValueByKey!200 (toList!1147 (getCurrentListMap!794 (_keys!5564 thiss!1248) (_values!3662 thiss!1248) (mask!8655 thiss!1248) (extraKeys!3416 thiss!1248) (zeroValue!3520 thiss!1248) (minValue!3520 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3679 thiss!1248))) key!828))))

(declare-fun b!179205 () Bool)

(declare-fun Unit!5459 () Unit!5457)

(assert (=> b!179205 (= e!118082 Unit!5459)))

(declare-fun b!179206 () Bool)

(assert (=> b!179206 (= e!118083 (isDefined!154 (getValueByKey!200 (toList!1147 (getCurrentListMap!794 (_keys!5564 thiss!1248) (_values!3662 thiss!1248) (mask!8655 thiss!1248) (extraKeys!3416 thiss!1248) (zeroValue!3520 thiss!1248) (minValue!3520 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3679 thiss!1248))) key!828)))))

(assert (= (and d!54049 c!32119) b!179204))

(assert (= (and d!54049 (not c!32119)) b!179205))

(assert (= (and d!54049 (not res!84898)) b!179206))

(declare-fun m!207543 () Bool)

(assert (=> d!54049 m!207543))

(declare-fun m!207545 () Bool)

(assert (=> b!179204 m!207545))

(declare-fun m!207547 () Bool)

(assert (=> b!179204 m!207547))

(assert (=> b!179204 m!207547))

(declare-fun m!207549 () Bool)

(assert (=> b!179204 m!207549))

(assert (=> b!179206 m!207547))

(assert (=> b!179206 m!207547))

(assert (=> b!179206 m!207549))

(assert (=> b!179142 d!54049))

(declare-fun b!179249 () Bool)

(declare-fun e!118118 () Bool)

(assert (=> b!179249 (= e!118118 (validKeyInArray!0 (select (arr!3574 (_keys!5564 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!179250 () Bool)

(declare-fun e!118122 () ListLongMap!2263)

(declare-fun call!18113 () ListLongMap!2263)

(assert (=> b!179250 (= e!118122 call!18113)))

(declare-fun bm!18110 () Bool)

(declare-fun call!18118 () ListLongMap!2263)

(declare-fun call!18115 () ListLongMap!2263)

(assert (=> bm!18110 (= call!18118 call!18115)))

(declare-fun c!32132 () Bool)

(declare-fun c!32134 () Bool)

(declare-fun call!18114 () ListLongMap!2263)

(declare-fun bm!18111 () Bool)

(declare-fun call!18116 () ListLongMap!2263)

(declare-fun +!258 (ListLongMap!2263 tuple2!3322) ListLongMap!2263)

(assert (=> bm!18111 (= call!18114 (+!258 (ite c!32134 call!18116 (ite c!32132 call!18115 call!18118)) (ite (or c!32134 c!32132) (tuple2!3323 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3520 thiss!1248)) (tuple2!3323 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3520 thiss!1248)))))))

(declare-fun bm!18112 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!176 (array!7544 array!7546 (_ BitVec 32) (_ BitVec 32) V!5235 V!5235 (_ BitVec 32) Int) ListLongMap!2263)

(assert (=> bm!18112 (= call!18116 (getCurrentListMapNoExtraKeys!176 (_keys!5564 thiss!1248) (_values!3662 thiss!1248) (mask!8655 thiss!1248) (extraKeys!3416 thiss!1248) (zeroValue!3520 thiss!1248) (minValue!3520 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3679 thiss!1248)))))

(declare-fun bm!18113 () Bool)

(declare-fun call!18119 () Bool)

(declare-fun lt!88645 () ListLongMap!2263)

(assert (=> bm!18113 (= call!18119 (contains!1215 lt!88645 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!18114 () Bool)

(declare-fun call!18117 () Bool)

(assert (=> bm!18114 (= call!18117 (contains!1215 lt!88645 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!179251 () Bool)

(declare-fun c!32136 () Bool)

(assert (=> b!179251 (= c!32136 (and (not (= (bvand (extraKeys!3416 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3416 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!118117 () ListLongMap!2263)

(assert (=> b!179251 (= e!118117 e!118122)))

(declare-fun b!179252 () Bool)

(declare-fun e!118114 () ListLongMap!2263)

(assert (=> b!179252 (= e!118114 (+!258 call!18114 (tuple2!3323 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3520 thiss!1248))))))

(declare-fun b!179253 () Bool)

(declare-fun e!118119 () Bool)

(declare-fun e!118116 () Bool)

(assert (=> b!179253 (= e!118119 e!118116)))

(declare-fun c!32137 () Bool)

(assert (=> b!179253 (= c!32137 (not (= (bvand (extraKeys!3416 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!179254 () Bool)

(declare-fun res!84923 () Bool)

(assert (=> b!179254 (=> (not res!84923) (not e!118119))))

(declare-fun e!118112 () Bool)

(assert (=> b!179254 (= res!84923 e!118112)))

(declare-fun c!32135 () Bool)

(assert (=> b!179254 (= c!32135 (not (= (bvand (extraKeys!3416 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!179255 () Bool)

(assert (=> b!179255 (= e!118117 call!18113)))

(declare-fun b!179256 () Bool)

(declare-fun e!118113 () Unit!5457)

(declare-fun Unit!5460 () Unit!5457)

(assert (=> b!179256 (= e!118113 Unit!5460)))

(declare-fun b!179257 () Bool)

(declare-fun e!118121 () Bool)

(assert (=> b!179257 (= e!118116 e!118121)))

(declare-fun res!84922 () Bool)

(assert (=> b!179257 (= res!84922 call!18117)))

(assert (=> b!179257 (=> (not res!84922) (not e!118121))))

(declare-fun b!179258 () Bool)

(declare-fun apply!146 (ListLongMap!2263 (_ BitVec 64)) V!5235)

(assert (=> b!179258 (= e!118121 (= (apply!146 lt!88645 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3520 thiss!1248)))))

(declare-fun b!179259 () Bool)

(declare-fun e!118110 () Bool)

(declare-fun get!2048 (ValueCell!1752 V!5235) V!5235)

(declare-fun dynLambda!484 (Int (_ BitVec 64)) V!5235)

(assert (=> b!179259 (= e!118110 (= (apply!146 lt!88645 (select (arr!3574 (_keys!5564 thiss!1248)) #b00000000000000000000000000000000)) (get!2048 (select (arr!3575 (_values!3662 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!484 (defaultEntry!3679 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!179259 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3883 (_values!3662 thiss!1248))))))

(assert (=> b!179259 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3882 (_keys!5564 thiss!1248))))))

(declare-fun b!179260 () Bool)

(declare-fun lt!88654 () Unit!5457)

(assert (=> b!179260 (= e!118113 lt!88654)))

(declare-fun lt!88643 () ListLongMap!2263)

(assert (=> b!179260 (= lt!88643 (getCurrentListMapNoExtraKeys!176 (_keys!5564 thiss!1248) (_values!3662 thiss!1248) (mask!8655 thiss!1248) (extraKeys!3416 thiss!1248) (zeroValue!3520 thiss!1248) (minValue!3520 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3679 thiss!1248)))))

(declare-fun lt!88644 () (_ BitVec 64))

(assert (=> b!179260 (= lt!88644 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88649 () (_ BitVec 64))

(assert (=> b!179260 (= lt!88649 (select (arr!3574 (_keys!5564 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88655 () Unit!5457)

(declare-fun addStillContains!122 (ListLongMap!2263 (_ BitVec 64) V!5235 (_ BitVec 64)) Unit!5457)

(assert (=> b!179260 (= lt!88655 (addStillContains!122 lt!88643 lt!88644 (zeroValue!3520 thiss!1248) lt!88649))))

(assert (=> b!179260 (contains!1215 (+!258 lt!88643 (tuple2!3323 lt!88644 (zeroValue!3520 thiss!1248))) lt!88649)))

(declare-fun lt!88652 () Unit!5457)

(assert (=> b!179260 (= lt!88652 lt!88655)))

(declare-fun lt!88638 () ListLongMap!2263)

(assert (=> b!179260 (= lt!88638 (getCurrentListMapNoExtraKeys!176 (_keys!5564 thiss!1248) (_values!3662 thiss!1248) (mask!8655 thiss!1248) (extraKeys!3416 thiss!1248) (zeroValue!3520 thiss!1248) (minValue!3520 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3679 thiss!1248)))))

(declare-fun lt!88637 () (_ BitVec 64))

(assert (=> b!179260 (= lt!88637 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88648 () (_ BitVec 64))

(assert (=> b!179260 (= lt!88648 (select (arr!3574 (_keys!5564 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88653 () Unit!5457)

(declare-fun addApplyDifferent!122 (ListLongMap!2263 (_ BitVec 64) V!5235 (_ BitVec 64)) Unit!5457)

(assert (=> b!179260 (= lt!88653 (addApplyDifferent!122 lt!88638 lt!88637 (minValue!3520 thiss!1248) lt!88648))))

(assert (=> b!179260 (= (apply!146 (+!258 lt!88638 (tuple2!3323 lt!88637 (minValue!3520 thiss!1248))) lt!88648) (apply!146 lt!88638 lt!88648))))

(declare-fun lt!88656 () Unit!5457)

(assert (=> b!179260 (= lt!88656 lt!88653)))

(declare-fun lt!88650 () ListLongMap!2263)

(assert (=> b!179260 (= lt!88650 (getCurrentListMapNoExtraKeys!176 (_keys!5564 thiss!1248) (_values!3662 thiss!1248) (mask!8655 thiss!1248) (extraKeys!3416 thiss!1248) (zeroValue!3520 thiss!1248) (minValue!3520 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3679 thiss!1248)))))

(declare-fun lt!88651 () (_ BitVec 64))

(assert (=> b!179260 (= lt!88651 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88639 () (_ BitVec 64))

(assert (=> b!179260 (= lt!88639 (select (arr!3574 (_keys!5564 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88642 () Unit!5457)

(assert (=> b!179260 (= lt!88642 (addApplyDifferent!122 lt!88650 lt!88651 (zeroValue!3520 thiss!1248) lt!88639))))

(assert (=> b!179260 (= (apply!146 (+!258 lt!88650 (tuple2!3323 lt!88651 (zeroValue!3520 thiss!1248))) lt!88639) (apply!146 lt!88650 lt!88639))))

(declare-fun lt!88646 () Unit!5457)

(assert (=> b!179260 (= lt!88646 lt!88642)))

(declare-fun lt!88641 () ListLongMap!2263)

(assert (=> b!179260 (= lt!88641 (getCurrentListMapNoExtraKeys!176 (_keys!5564 thiss!1248) (_values!3662 thiss!1248) (mask!8655 thiss!1248) (extraKeys!3416 thiss!1248) (zeroValue!3520 thiss!1248) (minValue!3520 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3679 thiss!1248)))))

(declare-fun lt!88635 () (_ BitVec 64))

(assert (=> b!179260 (= lt!88635 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88640 () (_ BitVec 64))

(assert (=> b!179260 (= lt!88640 (select (arr!3574 (_keys!5564 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!179260 (= lt!88654 (addApplyDifferent!122 lt!88641 lt!88635 (minValue!3520 thiss!1248) lt!88640))))

(assert (=> b!179260 (= (apply!146 (+!258 lt!88641 (tuple2!3323 lt!88635 (minValue!3520 thiss!1248))) lt!88640) (apply!146 lt!88641 lt!88640))))

(declare-fun b!179261 () Bool)

(assert (=> b!179261 (= e!118122 call!18118)))

(declare-fun b!179262 () Bool)

(assert (=> b!179262 (= e!118114 e!118117)))

(assert (=> b!179262 (= c!32132 (and (not (= (bvand (extraKeys!3416 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3416 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!54051 () Bool)

(assert (=> d!54051 e!118119))

(declare-fun res!84925 () Bool)

(assert (=> d!54051 (=> (not res!84925) (not e!118119))))

(assert (=> d!54051 (= res!84925 (or (bvsge #b00000000000000000000000000000000 (size!3882 (_keys!5564 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3882 (_keys!5564 thiss!1248))))))))

(declare-fun lt!88647 () ListLongMap!2263)

(assert (=> d!54051 (= lt!88645 lt!88647)))

(declare-fun lt!88636 () Unit!5457)

(assert (=> d!54051 (= lt!88636 e!118113)))

(declare-fun c!32133 () Bool)

(declare-fun e!118120 () Bool)

(assert (=> d!54051 (= c!32133 e!118120)))

(declare-fun res!84924 () Bool)

(assert (=> d!54051 (=> (not res!84924) (not e!118120))))

(assert (=> d!54051 (= res!84924 (bvslt #b00000000000000000000000000000000 (size!3882 (_keys!5564 thiss!1248))))))

(assert (=> d!54051 (= lt!88647 e!118114)))

(assert (=> d!54051 (= c!32134 (and (not (= (bvand (extraKeys!3416 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3416 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54051 (validMask!0 (mask!8655 thiss!1248))))

(assert (=> d!54051 (= (getCurrentListMap!794 (_keys!5564 thiss!1248) (_values!3662 thiss!1248) (mask!8655 thiss!1248) (extraKeys!3416 thiss!1248) (zeroValue!3520 thiss!1248) (minValue!3520 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3679 thiss!1248)) lt!88645)))

(declare-fun b!179263 () Bool)

(assert (=> b!179263 (= e!118120 (validKeyInArray!0 (select (arr!3574 (_keys!5564 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!179264 () Bool)

(assert (=> b!179264 (= e!118112 (not call!18119))))

(declare-fun bm!18115 () Bool)

(assert (=> bm!18115 (= call!18115 call!18116)))

(declare-fun b!179265 () Bool)

(declare-fun e!118115 () Bool)

(assert (=> b!179265 (= e!118115 (= (apply!146 lt!88645 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3520 thiss!1248)))))

(declare-fun b!179266 () Bool)

(declare-fun e!118111 () Bool)

(assert (=> b!179266 (= e!118111 e!118110)))

(declare-fun res!84921 () Bool)

(assert (=> b!179266 (=> (not res!84921) (not e!118110))))

(assert (=> b!179266 (= res!84921 (contains!1215 lt!88645 (select (arr!3574 (_keys!5564 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!179266 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3882 (_keys!5564 thiss!1248))))))

(declare-fun b!179267 () Bool)

(assert (=> b!179267 (= e!118116 (not call!18117))))

(declare-fun bm!18116 () Bool)

(assert (=> bm!18116 (= call!18113 call!18114)))

(declare-fun b!179268 () Bool)

(declare-fun res!84918 () Bool)

(assert (=> b!179268 (=> (not res!84918) (not e!118119))))

(assert (=> b!179268 (= res!84918 e!118111)))

(declare-fun res!84919 () Bool)

(assert (=> b!179268 (=> res!84919 e!118111)))

(assert (=> b!179268 (= res!84919 (not e!118118))))

(declare-fun res!84917 () Bool)

(assert (=> b!179268 (=> (not res!84917) (not e!118118))))

(assert (=> b!179268 (= res!84917 (bvslt #b00000000000000000000000000000000 (size!3882 (_keys!5564 thiss!1248))))))

(declare-fun b!179269 () Bool)

(assert (=> b!179269 (= e!118112 e!118115)))

(declare-fun res!84920 () Bool)

(assert (=> b!179269 (= res!84920 call!18119)))

(assert (=> b!179269 (=> (not res!84920) (not e!118115))))

(assert (= (and d!54051 c!32134) b!179252))

(assert (= (and d!54051 (not c!32134)) b!179262))

(assert (= (and b!179262 c!32132) b!179255))

(assert (= (and b!179262 (not c!32132)) b!179251))

(assert (= (and b!179251 c!32136) b!179250))

(assert (= (and b!179251 (not c!32136)) b!179261))

(assert (= (or b!179250 b!179261) bm!18110))

(assert (= (or b!179255 bm!18110) bm!18115))

(assert (= (or b!179255 b!179250) bm!18116))

(assert (= (or b!179252 bm!18115) bm!18112))

(assert (= (or b!179252 bm!18116) bm!18111))

(assert (= (and d!54051 res!84924) b!179263))

(assert (= (and d!54051 c!32133) b!179260))

(assert (= (and d!54051 (not c!32133)) b!179256))

(assert (= (and d!54051 res!84925) b!179268))

(assert (= (and b!179268 res!84917) b!179249))

(assert (= (and b!179268 (not res!84919)) b!179266))

(assert (= (and b!179266 res!84921) b!179259))

(assert (= (and b!179268 res!84918) b!179254))

(assert (= (and b!179254 c!32135) b!179269))

(assert (= (and b!179254 (not c!32135)) b!179264))

(assert (= (and b!179269 res!84920) b!179265))

(assert (= (or b!179269 b!179264) bm!18113))

(assert (= (and b!179254 res!84923) b!179253))

(assert (= (and b!179253 c!32137) b!179257))

(assert (= (and b!179253 (not c!32137)) b!179267))

(assert (= (and b!179257 res!84922) b!179258))

(assert (= (or b!179257 b!179267) bm!18114))

(declare-fun b_lambda!7137 () Bool)

(assert (=> (not b_lambda!7137) (not b!179259)))

(declare-fun t!7143 () Bool)

(declare-fun tb!2811 () Bool)

(assert (=> (and b!179145 (= (defaultEntry!3679 thiss!1248) (defaultEntry!3679 thiss!1248)) t!7143) tb!2811))

(declare-fun result!4691 () Bool)

(assert (=> tb!2811 (= result!4691 tp_is_empty!4191)))

(assert (=> b!179259 t!7143))

(declare-fun b_and!10969 () Bool)

(assert (= b_and!10965 (and (=> t!7143 result!4691) b_and!10969)))

(declare-fun m!207551 () Bool)

(assert (=> b!179252 m!207551))

(declare-fun m!207553 () Bool)

(assert (=> b!179260 m!207553))

(declare-fun m!207555 () Bool)

(assert (=> b!179260 m!207555))

(declare-fun m!207557 () Bool)

(assert (=> b!179260 m!207557))

(declare-fun m!207559 () Bool)

(assert (=> b!179260 m!207559))

(declare-fun m!207561 () Bool)

(assert (=> b!179260 m!207561))

(assert (=> b!179260 m!207557))

(declare-fun m!207563 () Bool)

(assert (=> b!179260 m!207563))

(declare-fun m!207565 () Bool)

(assert (=> b!179260 m!207565))

(declare-fun m!207567 () Bool)

(assert (=> b!179260 m!207567))

(declare-fun m!207569 () Bool)

(assert (=> b!179260 m!207569))

(assert (=> b!179260 m!207567))

(declare-fun m!207571 () Bool)

(assert (=> b!179260 m!207571))

(declare-fun m!207573 () Bool)

(assert (=> b!179260 m!207573))

(assert (=> b!179260 m!207555))

(declare-fun m!207575 () Bool)

(assert (=> b!179260 m!207575))

(declare-fun m!207577 () Bool)

(assert (=> b!179260 m!207577))

(declare-fun m!207579 () Bool)

(assert (=> b!179260 m!207579))

(assert (=> b!179260 m!207525))

(assert (=> b!179260 m!207561))

(declare-fun m!207581 () Bool)

(assert (=> b!179260 m!207581))

(declare-fun m!207583 () Bool)

(assert (=> b!179260 m!207583))

(assert (=> b!179249 m!207525))

(assert (=> b!179249 m!207525))

(assert (=> b!179249 m!207535))

(assert (=> b!179263 m!207525))

(assert (=> b!179263 m!207525))

(assert (=> b!179263 m!207535))

(assert (=> bm!18112 m!207573))

(declare-fun m!207585 () Bool)

(assert (=> b!179258 m!207585))

(assert (=> d!54051 m!207491))

(declare-fun m!207587 () Bool)

(assert (=> bm!18114 m!207587))

(assert (=> b!179259 m!207525))

(assert (=> b!179259 m!207525))

(declare-fun m!207589 () Bool)

(assert (=> b!179259 m!207589))

(declare-fun m!207591 () Bool)

(assert (=> b!179259 m!207591))

(declare-fun m!207593 () Bool)

(assert (=> b!179259 m!207593))

(assert (=> b!179259 m!207593))

(assert (=> b!179259 m!207591))

(declare-fun m!207595 () Bool)

(assert (=> b!179259 m!207595))

(declare-fun m!207597 () Bool)

(assert (=> bm!18113 m!207597))

(declare-fun m!207599 () Bool)

(assert (=> b!179265 m!207599))

(declare-fun m!207601 () Bool)

(assert (=> bm!18111 m!207601))

(assert (=> b!179266 m!207525))

(assert (=> b!179266 m!207525))

(declare-fun m!207603 () Bool)

(assert (=> b!179266 m!207603))

(assert (=> b!179142 d!54051))

(declare-fun d!54053 () Bool)

(assert (=> d!54053 (= (validMask!0 (mask!8655 thiss!1248)) (and (or (= (mask!8655 thiss!1248) #b00000000000000000000000000000111) (= (mask!8655 thiss!1248) #b00000000000000000000000000001111) (= (mask!8655 thiss!1248) #b00000000000000000000000000011111) (= (mask!8655 thiss!1248) #b00000000000000000000000000111111) (= (mask!8655 thiss!1248) #b00000000000000000000000001111111) (= (mask!8655 thiss!1248) #b00000000000000000000000011111111) (= (mask!8655 thiss!1248) #b00000000000000000000000111111111) (= (mask!8655 thiss!1248) #b00000000000000000000001111111111) (= (mask!8655 thiss!1248) #b00000000000000000000011111111111) (= (mask!8655 thiss!1248) #b00000000000000000000111111111111) (= (mask!8655 thiss!1248) #b00000000000000000001111111111111) (= (mask!8655 thiss!1248) #b00000000000000000011111111111111) (= (mask!8655 thiss!1248) #b00000000000000000111111111111111) (= (mask!8655 thiss!1248) #b00000000000000001111111111111111) (= (mask!8655 thiss!1248) #b00000000000000011111111111111111) (= (mask!8655 thiss!1248) #b00000000000000111111111111111111) (= (mask!8655 thiss!1248) #b00000000000001111111111111111111) (= (mask!8655 thiss!1248) #b00000000000011111111111111111111) (= (mask!8655 thiss!1248) #b00000000000111111111111111111111) (= (mask!8655 thiss!1248) #b00000000001111111111111111111111) (= (mask!8655 thiss!1248) #b00000000011111111111111111111111) (= (mask!8655 thiss!1248) #b00000000111111111111111111111111) (= (mask!8655 thiss!1248) #b00000001111111111111111111111111) (= (mask!8655 thiss!1248) #b00000011111111111111111111111111) (= (mask!8655 thiss!1248) #b00000111111111111111111111111111) (= (mask!8655 thiss!1248) #b00001111111111111111111111111111) (= (mask!8655 thiss!1248) #b00011111111111111111111111111111) (= (mask!8655 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8655 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!179138 d!54053))

(declare-fun d!54055 () Bool)

(declare-fun lt!88665 () SeekEntryResult!590)

(assert (=> d!54055 (and (or ((_ is Undefined!590) lt!88665) (not ((_ is Found!590) lt!88665)) (and (bvsge (index!4529 lt!88665) #b00000000000000000000000000000000) (bvslt (index!4529 lt!88665) (size!3882 (_keys!5564 thiss!1248))))) (or ((_ is Undefined!590) lt!88665) ((_ is Found!590) lt!88665) (not ((_ is MissingZero!590) lt!88665)) (and (bvsge (index!4528 lt!88665) #b00000000000000000000000000000000) (bvslt (index!4528 lt!88665) (size!3882 (_keys!5564 thiss!1248))))) (or ((_ is Undefined!590) lt!88665) ((_ is Found!590) lt!88665) ((_ is MissingZero!590) lt!88665) (not ((_ is MissingVacant!590) lt!88665)) (and (bvsge (index!4531 lt!88665) #b00000000000000000000000000000000) (bvslt (index!4531 lt!88665) (size!3882 (_keys!5564 thiss!1248))))) (or ((_ is Undefined!590) lt!88665) (ite ((_ is Found!590) lt!88665) (= (select (arr!3574 (_keys!5564 thiss!1248)) (index!4529 lt!88665)) key!828) (ite ((_ is MissingZero!590) lt!88665) (= (select (arr!3574 (_keys!5564 thiss!1248)) (index!4528 lt!88665)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!590) lt!88665) (= (select (arr!3574 (_keys!5564 thiss!1248)) (index!4531 lt!88665)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!118130 () SeekEntryResult!590)

(assert (=> d!54055 (= lt!88665 e!118130)))

(declare-fun c!32145 () Bool)

(declare-fun lt!88663 () SeekEntryResult!590)

(assert (=> d!54055 (= c!32145 (and ((_ is Intermediate!590) lt!88663) (undefined!1402 lt!88663)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7544 (_ BitVec 32)) SeekEntryResult!590)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54055 (= lt!88663 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8655 thiss!1248)) key!828 (_keys!5564 thiss!1248) (mask!8655 thiss!1248)))))

(assert (=> d!54055 (validMask!0 (mask!8655 thiss!1248))))

(assert (=> d!54055 (= (seekEntryOrOpen!0 key!828 (_keys!5564 thiss!1248) (mask!8655 thiss!1248)) lt!88665)))

(declare-fun b!179284 () Bool)

(declare-fun c!32144 () Bool)

(declare-fun lt!88664 () (_ BitVec 64))

(assert (=> b!179284 (= c!32144 (= lt!88664 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!118129 () SeekEntryResult!590)

(declare-fun e!118131 () SeekEntryResult!590)

(assert (=> b!179284 (= e!118129 e!118131)))

(declare-fun b!179285 () Bool)

(assert (=> b!179285 (= e!118130 Undefined!590)))

(declare-fun b!179286 () Bool)

(assert (=> b!179286 (= e!118129 (Found!590 (index!4530 lt!88663)))))

(declare-fun b!179287 () Bool)

(assert (=> b!179287 (= e!118130 e!118129)))

(assert (=> b!179287 (= lt!88664 (select (arr!3574 (_keys!5564 thiss!1248)) (index!4530 lt!88663)))))

(declare-fun c!32146 () Bool)

(assert (=> b!179287 (= c!32146 (= lt!88664 key!828))))

(declare-fun b!179288 () Bool)

(assert (=> b!179288 (= e!118131 (MissingZero!590 (index!4530 lt!88663)))))

(declare-fun b!179289 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7544 (_ BitVec 32)) SeekEntryResult!590)

(assert (=> b!179289 (= e!118131 (seekKeyOrZeroReturnVacant!0 (x!19610 lt!88663) (index!4530 lt!88663) (index!4530 lt!88663) key!828 (_keys!5564 thiss!1248) (mask!8655 thiss!1248)))))

(assert (= (and d!54055 c!32145) b!179285))

(assert (= (and d!54055 (not c!32145)) b!179287))

(assert (= (and b!179287 c!32146) b!179286))

(assert (= (and b!179287 (not c!32146)) b!179284))

(assert (= (and b!179284 c!32144) b!179288))

(assert (= (and b!179284 (not c!32144)) b!179289))

(declare-fun m!207605 () Bool)

(assert (=> d!54055 m!207605))

(declare-fun m!207607 () Bool)

(assert (=> d!54055 m!207607))

(declare-fun m!207609 () Bool)

(assert (=> d!54055 m!207609))

(declare-fun m!207611 () Bool)

(assert (=> d!54055 m!207611))

(assert (=> d!54055 m!207605))

(declare-fun m!207613 () Bool)

(assert (=> d!54055 m!207613))

(assert (=> d!54055 m!207491))

(declare-fun m!207615 () Bool)

(assert (=> b!179287 m!207615))

(declare-fun m!207617 () Bool)

(assert (=> b!179289 m!207617))

(assert (=> b!179143 d!54055))

(declare-fun mapNonEmpty!7177 () Bool)

(declare-fun mapRes!7177 () Bool)

(declare-fun tp!15988 () Bool)

(declare-fun e!118136 () Bool)

(assert (=> mapNonEmpty!7177 (= mapRes!7177 (and tp!15988 e!118136))))

(declare-fun mapValue!7177 () ValueCell!1752)

(declare-fun mapRest!7177 () (Array (_ BitVec 32) ValueCell!1752))

(declare-fun mapKey!7177 () (_ BitVec 32))

(assert (=> mapNonEmpty!7177 (= mapRest!7171 (store mapRest!7177 mapKey!7177 mapValue!7177))))

(declare-fun condMapEmpty!7177 () Bool)

(declare-fun mapDefault!7177 () ValueCell!1752)

(assert (=> mapNonEmpty!7171 (= condMapEmpty!7177 (= mapRest!7171 ((as const (Array (_ BitVec 32) ValueCell!1752)) mapDefault!7177)))))

(declare-fun e!118137 () Bool)

(assert (=> mapNonEmpty!7171 (= tp!15979 (and e!118137 mapRes!7177))))

(declare-fun b!179296 () Bool)

(assert (=> b!179296 (= e!118136 tp_is_empty!4191)))

(declare-fun b!179297 () Bool)

(assert (=> b!179297 (= e!118137 tp_is_empty!4191)))

(declare-fun mapIsEmpty!7177 () Bool)

(assert (=> mapIsEmpty!7177 mapRes!7177))

(assert (= (and mapNonEmpty!7171 condMapEmpty!7177) mapIsEmpty!7177))

(assert (= (and mapNonEmpty!7171 (not condMapEmpty!7177)) mapNonEmpty!7177))

(assert (= (and mapNonEmpty!7177 ((_ is ValueCellFull!1752) mapValue!7177)) b!179296))

(assert (= (and mapNonEmpty!7171 ((_ is ValueCellFull!1752) mapDefault!7177)) b!179297))

(declare-fun m!207619 () Bool)

(assert (=> mapNonEmpty!7177 m!207619))

(declare-fun b_lambda!7139 () Bool)

(assert (= b_lambda!7137 (or (and b!179145 b_free!4419) b_lambda!7139)))

(check-sat (not b!179265) (not mapNonEmpty!7177) (not b!179260) (not b!179204) (not b_next!4419) (not bm!18112) (not b!179196) (not b_lambda!7139) (not d!54051) (not b!179185) (not d!54049) (not d!54055) (not b!179266) (not b!179289) (not b!179187) (not b!179197) (not bm!18113) (not bm!18114) (not b!179252) (not b!179195) tp_is_empty!4191 (not d!54043) (not b!179249) b_and!10969 (not b!179258) (not bm!18095) (not b!179206) (not b!179259) (not b!179263) (not bm!18111))
(check-sat b_and!10969 (not b_next!4419))
