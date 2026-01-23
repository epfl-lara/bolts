; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241510 () Bool)

(assert start!241510)

(declare-fun b!2476284 () Bool)

(declare-fun b_free!71905 () Bool)

(declare-fun b_next!72609 () Bool)

(assert (=> b!2476284 (= b_free!71905 (not b_next!72609))))

(declare-fun tp!792066 () Bool)

(declare-fun b_and!188129 () Bool)

(assert (=> b!2476284 (= tp!792066 b_and!188129)))

(declare-fun b!2476282 () Bool)

(declare-fun b_free!71907 () Bool)

(declare-fun b_next!72611 () Bool)

(assert (=> b!2476282 (= b_free!71907 (not b_next!72611))))

(declare-fun tp!792063 () Bool)

(declare-fun b_and!188131 () Bool)

(assert (=> b!2476282 (= tp!792063 b_and!188131)))

(declare-fun b!2476280 () Bool)

(declare-fun e!1571142 () Bool)

(declare-fun e!1571148 () Bool)

(assert (=> b!2476280 (= e!1571142 e!1571148)))

(declare-fun res!1048396 () Bool)

(assert (=> b!2476280 (=> res!1048396 e!1571148)))

(declare-datatypes ((array!11475 0))(
  ( (array!11476 (arr!5114 (Array (_ BitVec 32) (_ BitVec 64))) (size!22533 (_ BitVec 32))) )
))
(declare-datatypes ((K!5240 0))(
  ( (K!5241 (val!8667 Int)) )
))
(declare-datatypes ((V!5442 0))(
  ( (V!5443 (val!8668 Int)) )
))
(declare-datatypes ((tuple2!28314 0))(
  ( (tuple2!28315 (_1!16698 K!5240) (_2!16698 V!5442)) )
))
(declare-datatypes ((List!29029 0))(
  ( (Nil!28929) (Cons!28929 (h!34330 tuple2!28314) (t!210664 List!29029)) )
))
(declare-datatypes ((array!11477 0))(
  ( (array!11478 (arr!5115 (Array (_ BitVec 32) List!29029)) (size!22534 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6524 0))(
  ( (LongMapFixedSize!6525 (defaultEntry!3636 Int) (mask!8382 (_ BitVec 32)) (extraKeys!3510 (_ BitVec 32)) (zeroValue!3520 List!29029) (minValue!3520 List!29029) (_size!6571 (_ BitVec 32)) (_keys!3559 array!11475) (_values!3542 array!11477) (_vacant!3323 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12865 0))(
  ( (Cell!12866 (v!31188 LongMapFixedSize!6524)) )
))
(declare-datatypes ((MutLongMap!3262 0))(
  ( (LongMap!3262 (underlying!6731 Cell!12865)) (MutLongMapExt!3261 (__x!18692 Int)) )
))
(declare-datatypes ((Cell!12867 0))(
  ( (Cell!12868 (v!31189 MutLongMap!3262)) )
))
(declare-datatypes ((Hashable!3172 0))(
  ( (HashableExt!3171 (__x!18693 Int)) )
))
(declare-datatypes ((MutableMap!3172 0))(
  ( (MutableMapExt!3171 (__x!18694 Int)) (HashMap!3172 (underlying!6732 Cell!12867) (hashF!5103 Hashable!3172) (_size!6572 (_ BitVec 32)) (defaultValue!3334 Int)) )
))
(declare-datatypes ((tuple2!28316 0))(
  ( (tuple2!28317 (_1!16699 Bool) (_2!16699 MutableMap!3172)) )
))
(declare-fun lt!884260 () tuple2!28316)

(declare-fun valid!2461 (MutableMap!3172) Bool)

(assert (=> b!2476280 (= res!1048396 (not (valid!2461 (_2!16699 lt!884260))))))

(declare-fun thiss!47892 () MutableMap!3172)

(declare-fun key!7256 () K!5240)

(declare-fun remove!74 (MutableMap!3172 K!5240) tuple2!28316)

(assert (=> b!2476280 (= lt!884260 (remove!74 thiss!47892 key!7256))))

(declare-fun b!2476281 () Bool)

(declare-fun e!1571147 () Bool)

(declare-fun call!151568 () Bool)

(assert (=> b!2476281 (= e!1571147 (not call!151568))))

(declare-fun e!1571140 () Bool)

(declare-fun e!1571145 () Bool)

(assert (=> b!2476282 (= e!1571140 (and e!1571145 tp!792063))))

(declare-fun b!2476283 () Bool)

(declare-datatypes ((ListMap!933 0))(
  ( (ListMap!934 (toList!1442 List!29029)) )
))
(declare-fun e!1571139 () ListMap!933)

(declare-fun call!151569 () ListMap!933)

(declare-fun -!109 (ListMap!933 K!5240) ListMap!933)

(assert (=> b!2476283 (= e!1571139 (-!109 call!151569 key!7256))))

(declare-fun e!1571144 () Bool)

(declare-fun e!1571138 () Bool)

(declare-fun tp!792067 () Bool)

(declare-fun tp!792062 () Bool)

(declare-fun array_inv!3669 (array!11475) Bool)

(declare-fun array_inv!3670 (array!11477) Bool)

(assert (=> b!2476284 (= e!1571144 (and tp!792066 tp!792062 tp!792067 (array_inv!3669 (_keys!3559 (v!31188 (underlying!6731 (v!31189 (underlying!6732 thiss!47892)))))) (array_inv!3670 (_values!3542 (v!31188 (underlying!6731 (v!31189 (underlying!6732 thiss!47892)))))) e!1571138))))

(declare-fun bm!151562 () Bool)

(declare-fun abstractMap!115 (MutableMap!3172) ListMap!933)

(assert (=> bm!151562 (= call!151569 (abstractMap!115 thiss!47892))))

(declare-fun b!2476285 () Bool)

(declare-fun tp!792068 () Bool)

(declare-fun mapRes!15198 () Bool)

(assert (=> b!2476285 (= e!1571138 (and tp!792068 mapRes!15198))))

(declare-fun condMapEmpty!15198 () Bool)

(declare-fun mapDefault!15198 () List!29029)

(assert (=> b!2476285 (= condMapEmpty!15198 (= (arr!5115 (_values!3542 (v!31188 (underlying!6731 (v!31189 (underlying!6732 thiss!47892)))))) ((as const (Array (_ BitVec 32) List!29029)) mapDefault!15198)))))

(declare-fun b!2476286 () Bool)

(assert (=> b!2476286 (= e!1571147 (not call!151568))))

(declare-fun mapIsEmpty!15198 () Bool)

(assert (=> mapIsEmpty!15198 mapRes!15198))

(declare-fun b!2476287 () Bool)

(declare-fun e!1571146 () Bool)

(assert (=> b!2476287 (= e!1571146 e!1571144)))

(declare-fun b!2476288 () Bool)

(declare-fun res!1048397 () Bool)

(assert (=> b!2476288 (=> (not res!1048397) (not e!1571142))))

(get-info :version)

(assert (=> b!2476288 (= res!1048397 ((_ is MutableMapExt!3171) thiss!47892))))

(declare-fun bm!151563 () Bool)

(declare-fun call!151567 () ListMap!933)

(declare-fun eq!57 (ListMap!933 ListMap!933) Bool)

(assert (=> bm!151563 (= call!151568 (eq!57 call!151567 e!1571139))))

(declare-fun c!394069 () Bool)

(declare-fun c!394070 () Bool)

(assert (=> bm!151563 (= c!394069 c!394070)))

(declare-fun res!1048395 () Bool)

(assert (=> start!241510 (=> (not res!1048395) (not e!1571142))))

(assert (=> start!241510 (= res!1048395 (valid!2461 thiss!47892))))

(assert (=> start!241510 e!1571142))

(assert (=> start!241510 e!1571140))

(declare-fun tp_is_empty!12017 () Bool)

(assert (=> start!241510 tp_is_empty!12017))

(declare-fun b!2476289 () Bool)

(assert (=> b!2476289 (= e!1571139 call!151569)))

(declare-fun bm!151564 () Bool)

(assert (=> bm!151564 (= call!151567 (abstractMap!115 (_2!16699 lt!884260)))))

(declare-fun b!2476290 () Bool)

(declare-fun e!1571143 () Bool)

(assert (=> b!2476290 (= e!1571143 e!1571146)))

(declare-fun mapNonEmpty!15198 () Bool)

(declare-fun tp!792065 () Bool)

(declare-fun tp!792064 () Bool)

(assert (=> mapNonEmpty!15198 (= mapRes!15198 (and tp!792065 tp!792064))))

(declare-fun mapKey!15198 () (_ BitVec 32))

(declare-fun mapRest!15198 () (Array (_ BitVec 32) List!29029))

(declare-fun mapValue!15198 () List!29029)

(assert (=> mapNonEmpty!15198 (= (arr!5115 (_values!3542 (v!31188 (underlying!6731 (v!31189 (underlying!6732 thiss!47892)))))) (store mapRest!15198 mapKey!15198 mapValue!15198))))

(declare-fun b!2476291 () Bool)

(assert (=> b!2476291 (= e!1571148 e!1571147)))

(assert (=> b!2476291 (= c!394070 (_1!16699 lt!884260))))

(declare-fun b!2476292 () Bool)

(declare-fun lt!884261 () MutLongMap!3262)

(assert (=> b!2476292 (= e!1571145 (and e!1571143 ((_ is LongMap!3262) lt!884261)))))

(assert (=> b!2476292 (= lt!884261 (v!31189 (underlying!6732 thiss!47892)))))

(assert (= (and start!241510 res!1048395) b!2476288))

(assert (= (and b!2476288 res!1048397) b!2476280))

(assert (= (and b!2476280 (not res!1048396)) b!2476291))

(assert (= (and b!2476291 c!394070) b!2476286))

(assert (= (and b!2476291 (not c!394070)) b!2476281))

(assert (= (or b!2476286 b!2476281) bm!151564))

(assert (= (or b!2476286 b!2476281) bm!151562))

(assert (= (or b!2476286 b!2476281) bm!151563))

(assert (= (and bm!151563 c!394069) b!2476283))

(assert (= (and bm!151563 (not c!394069)) b!2476289))

(assert (= (and b!2476285 condMapEmpty!15198) mapIsEmpty!15198))

(assert (= (and b!2476285 (not condMapEmpty!15198)) mapNonEmpty!15198))

(assert (= b!2476284 b!2476285))

(assert (= b!2476287 b!2476284))

(assert (= b!2476290 b!2476287))

(assert (= (and b!2476292 ((_ is LongMap!3262) (v!31189 (underlying!6732 thiss!47892)))) b!2476290))

(assert (= b!2476282 b!2476292))

(assert (= (and start!241510 ((_ is HashMap!3172) thiss!47892)) b!2476282))

(declare-fun m!2844229 () Bool)

(assert (=> bm!151563 m!2844229))

(declare-fun m!2844231 () Bool)

(assert (=> bm!151562 m!2844231))

(declare-fun m!2844233 () Bool)

(assert (=> start!241510 m!2844233))

(declare-fun m!2844235 () Bool)

(assert (=> b!2476280 m!2844235))

(declare-fun m!2844237 () Bool)

(assert (=> b!2476280 m!2844237))

(declare-fun m!2844239 () Bool)

(assert (=> b!2476283 m!2844239))

(declare-fun m!2844241 () Bool)

(assert (=> b!2476284 m!2844241))

(declare-fun m!2844243 () Bool)

(assert (=> b!2476284 m!2844243))

(declare-fun m!2844245 () Bool)

(assert (=> bm!151564 m!2844245))

(declare-fun m!2844247 () Bool)

(assert (=> mapNonEmpty!15198 m!2844247))

(check-sat (not b!2476285) (not b!2476284) (not b_next!72611) (not b!2476280) (not bm!151564) b_and!188129 (not mapNonEmpty!15198) (not b!2476283) (not bm!151563) (not start!241510) (not bm!151562) (not b_next!72609) b_and!188131 tp_is_empty!12017)
(check-sat b_and!188131 b_and!188129 (not b_next!72611) (not b_next!72609))
(get-model)

(declare-fun d!712238 () Bool)

(declare-fun c!394073 () Bool)

(assert (=> d!712238 (= c!394073 ((_ is MutableMapExt!3171) (_2!16699 lt!884260)))))

(declare-fun e!1571151 () Bool)

(assert (=> d!712238 (= (valid!2461 (_2!16699 lt!884260)) e!1571151)))

(declare-fun b!2476297 () Bool)

(declare-fun valid!2462 (MutableMap!3172) Bool)

(assert (=> b!2476297 (= e!1571151 (valid!2462 (_2!16699 lt!884260)))))

(declare-fun b!2476298 () Bool)

(declare-fun valid!2463 (MutableMap!3172) Bool)

(assert (=> b!2476298 (= e!1571151 (valid!2463 (_2!16699 lt!884260)))))

(assert (= (and d!712238 c!394073) b!2476297))

(assert (= (and d!712238 (not c!394073)) b!2476298))

(declare-fun m!2844249 () Bool)

(assert (=> b!2476297 m!2844249))

(declare-fun m!2844251 () Bool)

(assert (=> b!2476298 m!2844251))

(assert (=> b!2476280 d!712238))

(declare-fun bm!151571 () Bool)

(declare-fun call!151576 () ListMap!933)

(declare-fun lt!884264 () tuple2!28316)

(assert (=> bm!151571 (= call!151576 (abstractMap!115 (_2!16699 lt!884264)))))

(declare-fun b!2476311 () Bool)

(declare-fun e!1571160 () Bool)

(declare-fun call!151578 () Bool)

(assert (=> b!2476311 (= e!1571160 call!151578)))

(declare-fun d!712240 () Bool)

(declare-fun e!1571158 () Bool)

(assert (=> d!712240 e!1571158))

(declare-fun res!1048402 () Bool)

(assert (=> d!712240 (=> (not res!1048402) (not e!1571158))))

(assert (=> d!712240 (= res!1048402 ((_ is MutableMapExt!3171) (_2!16699 lt!884264)))))

(declare-fun choose!14605 (MutableMap!3172 K!5240) tuple2!28316)

(assert (=> d!712240 (= lt!884264 (choose!14605 thiss!47892 key!7256))))

(assert (=> d!712240 (valid!2461 thiss!47892)))

(assert (=> d!712240 (= (remove!74 thiss!47892 key!7256) lt!884264)))

(declare-fun b!2476312 () Bool)

(declare-fun res!1048403 () Bool)

(assert (=> b!2476312 (=> (not res!1048403) (not e!1571158))))

(assert (=> b!2476312 (= res!1048403 (valid!2461 (_2!16699 lt!884264)))))

(declare-fun bm!151572 () Bool)

(declare-fun e!1571159 () ListMap!933)

(assert (=> bm!151572 (= call!151578 (eq!57 call!151576 e!1571159))))

(declare-fun c!394078 () Bool)

(declare-fun c!394079 () Bool)

(assert (=> bm!151572 (= c!394078 c!394079)))

(declare-fun b!2476313 () Bool)

(declare-fun call!151577 () ListMap!933)

(assert (=> b!2476313 (= e!1571159 (-!109 call!151577 key!7256))))

(declare-fun b!2476314 () Bool)

(assert (=> b!2476314 (= e!1571160 call!151578)))

(declare-fun b!2476315 () Bool)

(assert (=> b!2476315 (= e!1571159 call!151577)))

(declare-fun bm!151573 () Bool)

(assert (=> bm!151573 (= call!151577 (abstractMap!115 thiss!47892))))

(declare-fun b!2476316 () Bool)

(assert (=> b!2476316 (= e!1571158 e!1571160)))

(assert (=> b!2476316 (= c!394079 (_1!16699 lt!884264))))

(assert (= (and d!712240 res!1048402) b!2476312))

(assert (= (and b!2476312 res!1048403) b!2476316))

(assert (= (and b!2476316 c!394079) b!2476314))

(assert (= (and b!2476316 (not c!394079)) b!2476311))

(assert (= (or b!2476314 b!2476311) bm!151571))

(assert (= (or b!2476314 b!2476311) bm!151573))

(assert (= (or b!2476314 b!2476311) bm!151572))

(assert (= (and bm!151572 c!394078) b!2476313))

(assert (= (and bm!151572 (not c!394078)) b!2476315))

(declare-fun m!2844253 () Bool)

(assert (=> b!2476313 m!2844253))

(declare-fun m!2844255 () Bool)

(assert (=> bm!151572 m!2844255))

(declare-fun m!2844257 () Bool)

(assert (=> d!712240 m!2844257))

(assert (=> d!712240 m!2844233))

(declare-fun m!2844259 () Bool)

(assert (=> b!2476312 m!2844259))

(assert (=> bm!151573 m!2844231))

(declare-fun m!2844261 () Bool)

(assert (=> bm!151571 m!2844261))

(assert (=> b!2476280 d!712240))

(declare-fun d!712242 () Bool)

(declare-fun c!394082 () Bool)

(assert (=> d!712242 (= c!394082 ((_ is MutableMapExt!3171) thiss!47892))))

(declare-fun e!1571163 () ListMap!933)

(assert (=> d!712242 (= (abstractMap!115 thiss!47892) e!1571163)))

(declare-fun b!2476321 () Bool)

(declare-fun abstractMap!116 (MutableMap!3172) ListMap!933)

(assert (=> b!2476321 (= e!1571163 (abstractMap!116 thiss!47892))))

(declare-fun b!2476322 () Bool)

(declare-fun abstractMap!117 (MutableMap!3172) ListMap!933)

(assert (=> b!2476322 (= e!1571163 (abstractMap!117 thiss!47892))))

(assert (= (and d!712242 c!394082) b!2476321))

(assert (= (and d!712242 (not c!394082)) b!2476322))

(declare-fun m!2844263 () Bool)

(assert (=> b!2476321 m!2844263))

(declare-fun m!2844265 () Bool)

(assert (=> b!2476322 m!2844265))

(assert (=> bm!151562 d!712242))

(declare-fun d!712244 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3969 (List!29029) (InoxSet tuple2!28314))

(assert (=> d!712244 (= (eq!57 call!151567 e!1571139) (= (content!3969 (toList!1442 call!151567)) (content!3969 (toList!1442 e!1571139))))))

(declare-fun bs!467030 () Bool)

(assert (= bs!467030 d!712244))

(declare-fun m!2844267 () Bool)

(assert (=> bs!467030 m!2844267))

(declare-fun m!2844269 () Bool)

(assert (=> bs!467030 m!2844269))

(assert (=> bm!151563 d!712244))

(declare-fun d!712246 () Bool)

(declare-fun c!394083 () Bool)

(assert (=> d!712246 (= c!394083 ((_ is MutableMapExt!3171) thiss!47892))))

(declare-fun e!1571164 () Bool)

(assert (=> d!712246 (= (valid!2461 thiss!47892) e!1571164)))

(declare-fun b!2476323 () Bool)

(assert (=> b!2476323 (= e!1571164 (valid!2462 thiss!47892))))

(declare-fun b!2476324 () Bool)

(assert (=> b!2476324 (= e!1571164 (valid!2463 thiss!47892))))

(assert (= (and d!712246 c!394083) b!2476323))

(assert (= (and d!712246 (not c!394083)) b!2476324))

(declare-fun m!2844271 () Bool)

(assert (=> b!2476323 m!2844271))

(declare-fun m!2844273 () Bool)

(assert (=> b!2476324 m!2844273))

(assert (=> start!241510 d!712246))

(declare-fun d!712248 () Bool)

(declare-fun c!394084 () Bool)

(assert (=> d!712248 (= c!394084 ((_ is MutableMapExt!3171) (_2!16699 lt!884260)))))

(declare-fun e!1571165 () ListMap!933)

(assert (=> d!712248 (= (abstractMap!115 (_2!16699 lt!884260)) e!1571165)))

(declare-fun b!2476325 () Bool)

(assert (=> b!2476325 (= e!1571165 (abstractMap!116 (_2!16699 lt!884260)))))

(declare-fun b!2476326 () Bool)

(assert (=> b!2476326 (= e!1571165 (abstractMap!117 (_2!16699 lt!884260)))))

(assert (= (and d!712248 c!394084) b!2476325))

(assert (= (and d!712248 (not c!394084)) b!2476326))

(declare-fun m!2844275 () Bool)

(assert (=> b!2476325 m!2844275))

(declare-fun m!2844277 () Bool)

(assert (=> b!2476326 m!2844277))

(assert (=> bm!151564 d!712248))

(declare-fun d!712250 () Bool)

(assert (=> d!712250 (= (array_inv!3669 (_keys!3559 (v!31188 (underlying!6731 (v!31189 (underlying!6732 thiss!47892)))))) (bvsge (size!22533 (_keys!3559 (v!31188 (underlying!6731 (v!31189 (underlying!6732 thiss!47892)))))) #b00000000000000000000000000000000))))

(assert (=> b!2476284 d!712250))

(declare-fun d!712252 () Bool)

(assert (=> d!712252 (= (array_inv!3670 (_values!3542 (v!31188 (underlying!6731 (v!31189 (underlying!6732 thiss!47892)))))) (bvsge (size!22534 (_values!3542 (v!31188 (underlying!6731 (v!31189 (underlying!6732 thiss!47892)))))) #b00000000000000000000000000000000))))

(assert (=> b!2476284 d!712252))

(declare-fun d!712254 () Bool)

(declare-fun e!1571168 () Bool)

(assert (=> d!712254 e!1571168))

(declare-fun res!1048406 () Bool)

(assert (=> d!712254 (=> (not res!1048406) (not e!1571168))))

(declare-fun lt!884267 () ListMap!933)

(declare-fun contains!4934 (ListMap!933 K!5240) Bool)

(assert (=> d!712254 (= res!1048406 (not (contains!4934 lt!884267 key!7256)))))

(declare-fun removePresrvNoDuplicatedKeys!20 (List!29029 K!5240) List!29029)

(assert (=> d!712254 (= lt!884267 (ListMap!934 (removePresrvNoDuplicatedKeys!20 (toList!1442 call!151569) key!7256)))))

(assert (=> d!712254 (= (-!109 call!151569 key!7256) lt!884267)))

(declare-fun b!2476329 () Bool)

(declare-datatypes ((List!29030 0))(
  ( (Nil!28930) (Cons!28930 (h!34331 K!5240) (t!210665 List!29030)) )
))
(declare-fun content!3970 (List!29030) (InoxSet K!5240))

(declare-fun keys!9210 (ListMap!933) List!29030)

(assert (=> b!2476329 (= e!1571168 (= ((_ map and) (content!3970 (keys!9210 call!151569)) ((_ map not) (store ((as const (Array K!5240 Bool)) false) key!7256 true))) (content!3970 (keys!9210 lt!884267))))))

(assert (= (and d!712254 res!1048406) b!2476329))

(declare-fun m!2844279 () Bool)

(assert (=> d!712254 m!2844279))

(declare-fun m!2844281 () Bool)

(assert (=> d!712254 m!2844281))

(declare-fun m!2844283 () Bool)

(assert (=> b!2476329 m!2844283))

(declare-fun m!2844285 () Bool)

(assert (=> b!2476329 m!2844285))

(declare-fun m!2844287 () Bool)

(assert (=> b!2476329 m!2844287))

(declare-fun m!2844289 () Bool)

(assert (=> b!2476329 m!2844289))

(declare-fun m!2844291 () Bool)

(assert (=> b!2476329 m!2844291))

(assert (=> b!2476329 m!2844283))

(assert (=> b!2476329 m!2844289))

(assert (=> b!2476283 d!712254))

(declare-fun tp_is_empty!12019 () Bool)

(declare-fun e!1571174 () Bool)

(declare-fun b!2476336 () Bool)

(declare-fun tp!792076 () Bool)

(assert (=> b!2476336 (= e!1571174 (and tp_is_empty!12017 tp_is_empty!12019 tp!792076))))

(declare-fun condMapEmpty!15201 () Bool)

(declare-fun mapDefault!15201 () List!29029)

(assert (=> mapNonEmpty!15198 (= condMapEmpty!15201 (= mapRest!15198 ((as const (Array (_ BitVec 32) List!29029)) mapDefault!15201)))))

(declare-fun e!1571173 () Bool)

(declare-fun mapRes!15201 () Bool)

(assert (=> mapNonEmpty!15198 (= tp!792065 (and e!1571173 mapRes!15201))))

(declare-fun mapNonEmpty!15201 () Bool)

(declare-fun tp!792075 () Bool)

(assert (=> mapNonEmpty!15201 (= mapRes!15201 (and tp!792075 e!1571174))))

(declare-fun mapValue!15201 () List!29029)

(declare-fun mapRest!15201 () (Array (_ BitVec 32) List!29029))

(declare-fun mapKey!15201 () (_ BitVec 32))

(assert (=> mapNonEmpty!15201 (= mapRest!15198 (store mapRest!15201 mapKey!15201 mapValue!15201))))

(declare-fun b!2476337 () Bool)

(declare-fun tp!792077 () Bool)

(assert (=> b!2476337 (= e!1571173 (and tp_is_empty!12017 tp_is_empty!12019 tp!792077))))

(declare-fun mapIsEmpty!15201 () Bool)

(assert (=> mapIsEmpty!15201 mapRes!15201))

(assert (= (and mapNonEmpty!15198 condMapEmpty!15201) mapIsEmpty!15201))

(assert (= (and mapNonEmpty!15198 (not condMapEmpty!15201)) mapNonEmpty!15201))

(assert (= (and mapNonEmpty!15201 ((_ is Cons!28929) mapValue!15201)) b!2476336))

(assert (= (and mapNonEmpty!15198 ((_ is Cons!28929) mapDefault!15201)) b!2476337))

(declare-fun m!2844293 () Bool)

(assert (=> mapNonEmpty!15201 m!2844293))

(declare-fun tp!792080 () Bool)

(declare-fun b!2476342 () Bool)

(declare-fun e!1571177 () Bool)

(assert (=> b!2476342 (= e!1571177 (and tp_is_empty!12017 tp_is_empty!12019 tp!792080))))

(assert (=> mapNonEmpty!15198 (= tp!792064 e!1571177)))

(assert (= (and mapNonEmpty!15198 ((_ is Cons!28929) mapValue!15198)) b!2476342))

(declare-fun e!1571178 () Bool)

(declare-fun b!2476343 () Bool)

(declare-fun tp!792081 () Bool)

(assert (=> b!2476343 (= e!1571178 (and tp_is_empty!12017 tp_is_empty!12019 tp!792081))))

(assert (=> b!2476285 (= tp!792068 e!1571178)))

(assert (= (and b!2476285 ((_ is Cons!28929) mapDefault!15198)) b!2476343))

(declare-fun b!2476344 () Bool)

(declare-fun tp!792082 () Bool)

(declare-fun e!1571179 () Bool)

(assert (=> b!2476344 (= e!1571179 (and tp_is_empty!12017 tp_is_empty!12019 tp!792082))))

(assert (=> b!2476284 (= tp!792062 e!1571179)))

(assert (= (and b!2476284 ((_ is Cons!28929) (zeroValue!3520 (v!31188 (underlying!6731 (v!31189 (underlying!6732 thiss!47892))))))) b!2476344))

(declare-fun b!2476345 () Bool)

(declare-fun tp!792083 () Bool)

(declare-fun e!1571180 () Bool)

(assert (=> b!2476345 (= e!1571180 (and tp_is_empty!12017 tp_is_empty!12019 tp!792083))))

(assert (=> b!2476284 (= tp!792067 e!1571180)))

(assert (= (and b!2476284 ((_ is Cons!28929) (minValue!3520 (v!31188 (underlying!6731 (v!31189 (underlying!6732 thiss!47892))))))) b!2476345))

(check-sat tp_is_empty!12019 (not b!2476344) (not b_next!72611) (not b!2476313) (not mapNonEmpty!15201) (not d!712254) (not bm!151571) (not d!712244) (not b!2476345) (not b!2476336) (not b!2476326) (not b!2476298) (not b!2476325) (not b!2476297) (not b!2476323) (not bm!151573) (not b_next!72609) (not b!2476329) (not b!2476322) (not b!2476343) b_and!188129 (not b!2476337) (not b!2476342) (not bm!151572) (not b!2476324) (not d!712240) (not b!2476321) (not b!2476312) b_and!188131 tp_is_empty!12017)
(check-sat b_and!188131 b_and!188129 (not b_next!72611) (not b_next!72609))
