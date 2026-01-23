; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297172 () Bool)

(assert start!297172)

(declare-fun b!3173091 () Bool)

(declare-fun b_free!83353 () Bool)

(declare-fun b_next!84057 () Bool)

(assert (=> b!3173091 (= b_free!83353 (not b_next!84057))))

(declare-fun tp!1002486 () Bool)

(declare-fun b_and!209639 () Bool)

(assert (=> b!3173091 (= tp!1002486 b_and!209639)))

(declare-fun b!3173093 () Bool)

(declare-fun b_free!83355 () Bool)

(declare-fun b_next!84059 () Bool)

(assert (=> b!3173093 (= b_free!83355 (not b_next!84059))))

(declare-fun tp!1002479 () Bool)

(declare-fun b_and!209641 () Bool)

(assert (=> b!3173093 (= tp!1002479 b_and!209641)))

(declare-fun b!3173090 () Bool)

(declare-fun e!1976326 () Bool)

(declare-fun tp!1002481 () Bool)

(declare-fun tp!1002490 () Bool)

(assert (=> b!3173090 (= e!1976326 (and tp!1002481 tp!1002490))))

(declare-fun tp!1002480 () Bool)

(declare-fun e!1976329 () Bool)

(declare-fun e!1976331 () Bool)

(declare-datatypes ((C!19780 0))(
  ( (C!19781 (val!11926 Int)) )
))
(declare-datatypes ((Regex!9797 0))(
  ( (ElementMatch!9797 (c!533400 C!19780)) (Concat!15118 (regOne!20106 Regex!9797) (regTwo!20106 Regex!9797)) (EmptyExpr!9797) (Star!9797 (reg!10126 Regex!9797)) (EmptyLang!9797) (Union!9797 (regOne!20107 Regex!9797) (regTwo!20107 Regex!9797)) )
))
(declare-datatypes ((tuple2!34850 0))(
  ( (tuple2!34851 (_1!20557 Regex!9797) (_2!20557 C!19780)) )
))
(declare-datatypes ((tuple2!34852 0))(
  ( (tuple2!34853 (_1!20558 tuple2!34850) (_2!20558 Regex!9797)) )
))
(declare-datatypes ((List!35645 0))(
  ( (Nil!35521) (Cons!35521 (h!40941 tuple2!34852) (t!234732 List!35645)) )
))
(declare-datatypes ((array!15118 0))(
  ( (array!15119 (arr!6726 (Array (_ BitVec 32) (_ BitVec 64))) (size!26812 (_ BitVec 32))) )
))
(declare-datatypes ((array!15120 0))(
  ( (array!15121 (arr!6727 (Array (_ BitVec 32) List!35645)) (size!26813 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8436 0))(
  ( (LongMapFixedSize!8437 (defaultEntry!4603 Int) (mask!10910 (_ BitVec 32)) (extraKeys!4467 (_ BitVec 32)) (zeroValue!4477 List!35645) (minValue!4477 List!35645) (_size!8479 (_ BitVec 32)) (_keys!4518 array!15118) (_values!4499 array!15120) (_vacant!4279 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16681 0))(
  ( (Cell!16682 (v!35288 LongMapFixedSize!8436)) )
))
(declare-datatypes ((MutLongMap!4218 0))(
  ( (LongMap!4218 (underlying!8665 Cell!16681)) (MutLongMapExt!4217 (__x!22760 Int)) )
))
(declare-datatypes ((Cell!16683 0))(
  ( (Cell!16684 (v!35289 MutLongMap!4218)) )
))
(declare-datatypes ((Hashable!4134 0))(
  ( (HashableExt!4133 (__x!22761 Int)) )
))
(declare-datatypes ((MutableMap!4124 0))(
  ( (MutableMapExt!4123 (__x!22762 Int)) (HashMap!4124 (underlying!8666 Cell!16683) (hashF!6166 Hashable!4134) (_size!8480 (_ BitVec 32)) (defaultValue!4295 Int)) )
))
(declare-datatypes ((Cache!518 0))(
  ( (Cache!519 (cache!4270 MutableMap!4124)) )
))
(declare-fun thiss!28445 () Cache!518)

(declare-fun tp!1002483 () Bool)

(declare-fun array_inv!4826 (array!15118) Bool)

(declare-fun array_inv!4827 (array!15120) Bool)

(assert (=> b!3173091 (= e!1976331 (and tp!1002486 tp!1002480 tp!1002483 (array_inv!4826 (_keys!4518 (v!35288 (underlying!8665 (v!35289 (underlying!8666 (cache!4270 thiss!28445))))))) (array_inv!4827 (_values!4499 (v!35288 (underlying!8665 (v!35289 (underlying!8666 (cache!4270 thiss!28445))))))) e!1976329))))

(declare-fun b!3173092 () Bool)

(declare-fun tp_is_empty!17157 () Bool)

(assert (=> b!3173092 (= e!1976326 tp_is_empty!17157)))

(declare-fun e!1976324 () Bool)

(declare-fun e!1976330 () Bool)

(assert (=> b!3173093 (= e!1976324 (and e!1976330 tp!1002479))))

(declare-fun b!3173094 () Bool)

(declare-fun e!1976322 () Bool)

(assert (=> b!3173094 (= e!1976322 e!1976324)))

(declare-fun b!3173096 () Bool)

(declare-fun res!1289505 () Bool)

(declare-fun e!1976328 () Bool)

(assert (=> b!3173096 (=> (not res!1289505) (not e!1976328))))

(declare-fun r!4705 () Regex!9797)

(declare-fun validRegex!4502 (Regex!9797) Bool)

(assert (=> b!3173096 (= res!1289505 (validRegex!4502 r!4705))))

(declare-fun b!3173097 () Bool)

(declare-fun tp!1002487 () Bool)

(declare-fun tp!1002485 () Bool)

(assert (=> b!3173097 (= e!1976326 (and tp!1002487 tp!1002485))))

(declare-fun b!3173098 () Bool)

(declare-fun e!1976323 () Bool)

(declare-fun lt!1066973 () MutLongMap!4218)

(get-info :version)

(assert (=> b!3173098 (= e!1976330 (and e!1976323 ((_ is LongMap!4218) lt!1066973)))))

(assert (=> b!3173098 (= lt!1066973 (v!35289 (underlying!8666 (cache!4270 thiss!28445))))))

(declare-fun mapNonEmpty!19106 () Bool)

(declare-fun mapRes!19106 () Bool)

(declare-fun tp!1002489 () Bool)

(declare-fun tp!1002488 () Bool)

(assert (=> mapNonEmpty!19106 (= mapRes!19106 (and tp!1002489 tp!1002488))))

(declare-fun mapValue!19106 () List!35645)

(declare-fun mapKey!19106 () (_ BitVec 32))

(declare-fun mapRest!19106 () (Array (_ BitVec 32) List!35645))

(assert (=> mapNonEmpty!19106 (= (arr!6727 (_values!4499 (v!35288 (underlying!8665 (v!35289 (underlying!8666 (cache!4270 thiss!28445))))))) (store mapRest!19106 mapKey!19106 mapValue!19106))))

(declare-fun b!3173099 () Bool)

(declare-fun e!1976325 () Bool)

(assert (=> b!3173099 (= e!1976323 e!1976325)))

(declare-fun b!3173100 () Bool)

(declare-fun tp!1002482 () Bool)

(assert (=> b!3173100 (= e!1976329 (and tp!1002482 mapRes!19106))))

(declare-fun condMapEmpty!19106 () Bool)

(declare-fun mapDefault!19106 () List!35645)

(assert (=> b!3173100 (= condMapEmpty!19106 (= (arr!6727 (_values!4499 (v!35288 (underlying!8665 (v!35289 (underlying!8666 (cache!4270 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35645)) mapDefault!19106)))))

(declare-fun b!3173101 () Bool)

(assert (=> b!3173101 (= e!1976325 e!1976331)))

(declare-fun res!1289504 () Bool)

(assert (=> start!297172 (=> (not res!1289504) (not e!1976328))))

(declare-fun validCacheMap!100 (MutableMap!4124) Bool)

(assert (=> start!297172 (= res!1289504 (validCacheMap!100 (cache!4270 thiss!28445)))))

(assert (=> start!297172 e!1976328))

(declare-fun inv!48247 (Cache!518) Bool)

(assert (=> start!297172 (and (inv!48247 thiss!28445) e!1976322)))

(assert (=> start!297172 e!1976326))

(declare-fun b!3173095 () Bool)

(assert (=> b!3173095 (= e!1976328 (not ((_ is HashMap!4124) (cache!4270 thiss!28445))))))

(declare-fun mapIsEmpty!19106 () Bool)

(assert (=> mapIsEmpty!19106 mapRes!19106))

(declare-fun b!3173102 () Bool)

(declare-fun tp!1002484 () Bool)

(assert (=> b!3173102 (= e!1976326 tp!1002484)))

(assert (= (and start!297172 res!1289504) b!3173096))

(assert (= (and b!3173096 res!1289505) b!3173095))

(assert (= (and b!3173100 condMapEmpty!19106) mapIsEmpty!19106))

(assert (= (and b!3173100 (not condMapEmpty!19106)) mapNonEmpty!19106))

(assert (= b!3173091 b!3173100))

(assert (= b!3173101 b!3173091))

(assert (= b!3173099 b!3173101))

(assert (= (and b!3173098 ((_ is LongMap!4218) (v!35289 (underlying!8666 (cache!4270 thiss!28445))))) b!3173099))

(assert (= b!3173093 b!3173098))

(assert (= (and b!3173094 ((_ is HashMap!4124) (cache!4270 thiss!28445))) b!3173093))

(assert (= start!297172 b!3173094))

(assert (= (and start!297172 ((_ is ElementMatch!9797) r!4705)) b!3173092))

(assert (= (and start!297172 ((_ is Concat!15118) r!4705)) b!3173090))

(assert (= (and start!297172 ((_ is Star!9797) r!4705)) b!3173102))

(assert (= (and start!297172 ((_ is Union!9797) r!4705)) b!3173097))

(declare-fun m!3431072 () Bool)

(assert (=> b!3173091 m!3431072))

(declare-fun m!3431074 () Bool)

(assert (=> b!3173091 m!3431074))

(declare-fun m!3431076 () Bool)

(assert (=> b!3173096 m!3431076))

(declare-fun m!3431078 () Bool)

(assert (=> mapNonEmpty!19106 m!3431078))

(declare-fun m!3431080 () Bool)

(assert (=> start!297172 m!3431080))

(declare-fun m!3431082 () Bool)

(assert (=> start!297172 m!3431082))

(check-sat (not b!3173091) (not b!3173090) (not start!297172) (not b!3173100) (not b_next!84057) tp_is_empty!17157 b_and!209639 b_and!209641 (not b!3173096) (not mapNonEmpty!19106) (not b!3173097) (not b_next!84059) (not b!3173102))
(check-sat b_and!209639 b_and!209641 (not b_next!84057) (not b_next!84059))
(get-model)

(declare-fun d!869354 () Bool)

(declare-fun res!1289512 () Bool)

(declare-fun e!1976336 () Bool)

(assert (=> d!869354 (=> (not res!1289512) (not e!1976336))))

(declare-fun valid!3283 (MutableMap!4124) Bool)

(assert (=> d!869354 (= res!1289512 (valid!3283 (cache!4270 thiss!28445)))))

(assert (=> d!869354 (= (validCacheMap!100 (cache!4270 thiss!28445)) e!1976336)))

(declare-fun b!3173109 () Bool)

(declare-fun res!1289513 () Bool)

(assert (=> b!3173109 (=> (not res!1289513) (not e!1976336))))

(declare-fun invariantList!498 (List!35645) Bool)

(declare-datatypes ((ListMap!1351 0))(
  ( (ListMap!1352 (toList!2095 List!35645)) )
))
(declare-fun map!7969 (MutableMap!4124) ListMap!1351)

(assert (=> b!3173109 (= res!1289513 (invariantList!498 (toList!2095 (map!7969 (cache!4270 thiss!28445)))))))

(declare-fun b!3173110 () Bool)

(declare-fun lambda!116097 () Int)

(declare-fun forall!7179 (List!35645 Int) Bool)

(assert (=> b!3173110 (= e!1976336 (forall!7179 (toList!2095 (map!7969 (cache!4270 thiss!28445))) lambda!116097))))

(assert (= (and d!869354 res!1289512) b!3173109))

(assert (= (and b!3173109 res!1289513) b!3173110))

(declare-fun m!3431085 () Bool)

(assert (=> d!869354 m!3431085))

(declare-fun m!3431087 () Bool)

(assert (=> b!3173109 m!3431087))

(declare-fun m!3431089 () Bool)

(assert (=> b!3173109 m!3431089))

(assert (=> b!3173110 m!3431087))

(declare-fun m!3431091 () Bool)

(assert (=> b!3173110 m!3431091))

(assert (=> start!297172 d!869354))

(declare-fun d!869356 () Bool)

(declare-fun res!1289516 () Bool)

(declare-fun e!1976339 () Bool)

(assert (=> d!869356 (=> (not res!1289516) (not e!1976339))))

(assert (=> d!869356 (= res!1289516 ((_ is HashMap!4124) (cache!4270 thiss!28445)))))

(assert (=> d!869356 (= (inv!48247 thiss!28445) e!1976339)))

(declare-fun b!3173113 () Bool)

(assert (=> b!3173113 (= e!1976339 (validCacheMap!100 (cache!4270 thiss!28445)))))

(assert (= (and d!869356 res!1289516) b!3173113))

(assert (=> b!3173113 m!3431080))

(assert (=> start!297172 d!869356))

(declare-fun b!3173132 () Bool)

(declare-fun e!1976358 () Bool)

(declare-fun e!1976357 () Bool)

(assert (=> b!3173132 (= e!1976358 e!1976357)))

(declare-fun c!533405 () Bool)

(assert (=> b!3173132 (= c!533405 ((_ is Star!9797) r!4705))))

(declare-fun b!3173133 () Bool)

(declare-fun e!1976356 () Bool)

(assert (=> b!3173133 (= e!1976357 e!1976356)))

(declare-fun c!533406 () Bool)

(assert (=> b!3173133 (= c!533406 ((_ is Union!9797) r!4705))))

(declare-fun b!3173134 () Bool)

(declare-fun e!1976359 () Bool)

(declare-fun call!230625 () Bool)

(assert (=> b!3173134 (= e!1976359 call!230625)))

(declare-fun b!3173135 () Bool)

(declare-fun e!1976360 () Bool)

(assert (=> b!3173135 (= e!1976360 call!230625)))

(declare-fun b!3173136 () Bool)

(declare-fun e!1976355 () Bool)

(declare-fun call!230626 () Bool)

(assert (=> b!3173136 (= e!1976355 call!230626)))

(declare-fun bm!230619 () Bool)

(assert (=> bm!230619 (= call!230626 (validRegex!4502 (ite c!533405 (reg!10126 r!4705) (ite c!533406 (regTwo!20107 r!4705) (regTwo!20106 r!4705)))))))

(declare-fun b!3173137 () Bool)

(assert (=> b!3173137 (= e!1976357 e!1976355)))

(declare-fun res!1289528 () Bool)

(declare-fun nullable!3366 (Regex!9797) Bool)

(assert (=> b!3173137 (= res!1289528 (not (nullable!3366 (reg!10126 r!4705))))))

(assert (=> b!3173137 (=> (not res!1289528) (not e!1976355))))

(declare-fun bm!230620 () Bool)

(assert (=> bm!230620 (= call!230625 call!230626)))

(declare-fun d!869358 () Bool)

(declare-fun res!1289527 () Bool)

(assert (=> d!869358 (=> res!1289527 e!1976358)))

(assert (=> d!869358 (= res!1289527 ((_ is ElementMatch!9797) r!4705))))

(assert (=> d!869358 (= (validRegex!4502 r!4705) e!1976358)))

(declare-fun b!3173138 () Bool)

(declare-fun e!1976354 () Bool)

(assert (=> b!3173138 (= e!1976354 e!1976359)))

(declare-fun res!1289531 () Bool)

(assert (=> b!3173138 (=> (not res!1289531) (not e!1976359))))

(declare-fun call!230624 () Bool)

(assert (=> b!3173138 (= res!1289531 call!230624)))

(declare-fun b!3173139 () Bool)

(declare-fun res!1289530 () Bool)

(assert (=> b!3173139 (=> res!1289530 e!1976354)))

(assert (=> b!3173139 (= res!1289530 (not ((_ is Concat!15118) r!4705)))))

(assert (=> b!3173139 (= e!1976356 e!1976354)))

(declare-fun bm!230621 () Bool)

(assert (=> bm!230621 (= call!230624 (validRegex!4502 (ite c!533406 (regOne!20107 r!4705) (regOne!20106 r!4705))))))

(declare-fun b!3173140 () Bool)

(declare-fun res!1289529 () Bool)

(assert (=> b!3173140 (=> (not res!1289529) (not e!1976360))))

(assert (=> b!3173140 (= res!1289529 call!230624)))

(assert (=> b!3173140 (= e!1976356 e!1976360)))

(assert (= (and d!869358 (not res!1289527)) b!3173132))

(assert (= (and b!3173132 c!533405) b!3173137))

(assert (= (and b!3173132 (not c!533405)) b!3173133))

(assert (= (and b!3173137 res!1289528) b!3173136))

(assert (= (and b!3173133 c!533406) b!3173140))

(assert (= (and b!3173133 (not c!533406)) b!3173139))

(assert (= (and b!3173140 res!1289529) b!3173135))

(assert (= (and b!3173139 (not res!1289530)) b!3173138))

(assert (= (and b!3173138 res!1289531) b!3173134))

(assert (= (or b!3173135 b!3173134) bm!230620))

(assert (= (or b!3173140 b!3173138) bm!230621))

(assert (= (or b!3173136 bm!230620) bm!230619))

(declare-fun m!3431093 () Bool)

(assert (=> bm!230619 m!3431093))

(declare-fun m!3431095 () Bool)

(assert (=> b!3173137 m!3431095))

(declare-fun m!3431097 () Bool)

(assert (=> bm!230621 m!3431097))

(assert (=> b!3173096 d!869358))

(declare-fun d!869360 () Bool)

(assert (=> d!869360 (= (array_inv!4826 (_keys!4518 (v!35288 (underlying!8665 (v!35289 (underlying!8666 (cache!4270 thiss!28445))))))) (bvsge (size!26812 (_keys!4518 (v!35288 (underlying!8665 (v!35289 (underlying!8666 (cache!4270 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3173091 d!869360))

(declare-fun d!869362 () Bool)

(assert (=> d!869362 (= (array_inv!4827 (_values!4499 (v!35288 (underlying!8665 (v!35289 (underlying!8666 (cache!4270 thiss!28445))))))) (bvsge (size!26813 (_values!4499 (v!35288 (underlying!8665 (v!35289 (underlying!8666 (cache!4270 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3173091 d!869362))

(declare-fun b!3173153 () Bool)

(declare-fun e!1976363 () Bool)

(declare-fun tp!1002501 () Bool)

(assert (=> b!3173153 (= e!1976363 tp!1002501)))

(declare-fun b!3173151 () Bool)

(assert (=> b!3173151 (= e!1976363 tp_is_empty!17157)))

(declare-fun b!3173154 () Bool)

(declare-fun tp!1002503 () Bool)

(declare-fun tp!1002504 () Bool)

(assert (=> b!3173154 (= e!1976363 (and tp!1002503 tp!1002504))))

(declare-fun b!3173152 () Bool)

(declare-fun tp!1002505 () Bool)

(declare-fun tp!1002502 () Bool)

(assert (=> b!3173152 (= e!1976363 (and tp!1002505 tp!1002502))))

(assert (=> b!3173102 (= tp!1002484 e!1976363)))

(assert (= (and b!3173102 ((_ is ElementMatch!9797) (reg!10126 r!4705))) b!3173151))

(assert (= (and b!3173102 ((_ is Concat!15118) (reg!10126 r!4705))) b!3173152))

(assert (= (and b!3173102 ((_ is Star!9797) (reg!10126 r!4705))) b!3173153))

(assert (= (and b!3173102 ((_ is Union!9797) (reg!10126 r!4705))) b!3173154))

(declare-fun mapNonEmpty!19109 () Bool)

(declare-fun mapRes!19109 () Bool)

(declare-fun tp!1002522 () Bool)

(declare-fun e!1976368 () Bool)

(assert (=> mapNonEmpty!19109 (= mapRes!19109 (and tp!1002522 e!1976368))))

(declare-fun mapValue!19109 () List!35645)

(declare-fun mapRest!19109 () (Array (_ BitVec 32) List!35645))

(declare-fun mapKey!19109 () (_ BitVec 32))

(assert (=> mapNonEmpty!19109 (= mapRest!19106 (store mapRest!19109 mapKey!19109 mapValue!19109))))

(declare-fun mapIsEmpty!19109 () Bool)

(assert (=> mapIsEmpty!19109 mapRes!19109))

(declare-fun b!3173161 () Bool)

(declare-fun tp!1002526 () Bool)

(declare-fun tp!1002520 () Bool)

(declare-fun tp!1002521 () Bool)

(assert (=> b!3173161 (= e!1976368 (and tp!1002520 tp_is_empty!17157 tp!1002521 tp!1002526))))

(declare-fun b!3173162 () Bool)

(declare-fun tp!1002525 () Bool)

(declare-fun tp!1002523 () Bool)

(declare-fun tp!1002524 () Bool)

(declare-fun e!1976369 () Bool)

(assert (=> b!3173162 (= e!1976369 (and tp!1002524 tp_is_empty!17157 tp!1002525 tp!1002523))))

(declare-fun condMapEmpty!19109 () Bool)

(declare-fun mapDefault!19109 () List!35645)

(assert (=> mapNonEmpty!19106 (= condMapEmpty!19109 (= mapRest!19106 ((as const (Array (_ BitVec 32) List!35645)) mapDefault!19109)))))

(assert (=> mapNonEmpty!19106 (= tp!1002489 (and e!1976369 mapRes!19109))))

(assert (= (and mapNonEmpty!19106 condMapEmpty!19109) mapIsEmpty!19109))

(assert (= (and mapNonEmpty!19106 (not condMapEmpty!19109)) mapNonEmpty!19109))

(assert (= (and mapNonEmpty!19109 ((_ is Cons!35521) mapValue!19109)) b!3173161))

(assert (= (and mapNonEmpty!19106 ((_ is Cons!35521) mapDefault!19109)) b!3173162))

(declare-fun m!3431099 () Bool)

(assert (=> mapNonEmpty!19109 m!3431099))

(declare-fun tp!1002533 () Bool)

(declare-fun b!3173167 () Bool)

(declare-fun tp!1002534 () Bool)

(declare-fun e!1976372 () Bool)

(declare-fun tp!1002535 () Bool)

(assert (=> b!3173167 (= e!1976372 (and tp!1002533 tp_is_empty!17157 tp!1002534 tp!1002535))))

(assert (=> mapNonEmpty!19106 (= tp!1002488 e!1976372)))

(assert (= (and mapNonEmpty!19106 ((_ is Cons!35521) mapValue!19106)) b!3173167))

(declare-fun b!3173170 () Bool)

(declare-fun e!1976373 () Bool)

(declare-fun tp!1002536 () Bool)

(assert (=> b!3173170 (= e!1976373 tp!1002536)))

(declare-fun b!3173168 () Bool)

(assert (=> b!3173168 (= e!1976373 tp_is_empty!17157)))

(declare-fun b!3173171 () Bool)

(declare-fun tp!1002538 () Bool)

(declare-fun tp!1002539 () Bool)

(assert (=> b!3173171 (= e!1976373 (and tp!1002538 tp!1002539))))

(declare-fun b!3173169 () Bool)

(declare-fun tp!1002540 () Bool)

(declare-fun tp!1002537 () Bool)

(assert (=> b!3173169 (= e!1976373 (and tp!1002540 tp!1002537))))

(assert (=> b!3173097 (= tp!1002487 e!1976373)))

(assert (= (and b!3173097 ((_ is ElementMatch!9797) (regOne!20107 r!4705))) b!3173168))

(assert (= (and b!3173097 ((_ is Concat!15118) (regOne!20107 r!4705))) b!3173169))

(assert (= (and b!3173097 ((_ is Star!9797) (regOne!20107 r!4705))) b!3173170))

(assert (= (and b!3173097 ((_ is Union!9797) (regOne!20107 r!4705))) b!3173171))

(declare-fun b!3173174 () Bool)

(declare-fun e!1976374 () Bool)

(declare-fun tp!1002541 () Bool)

(assert (=> b!3173174 (= e!1976374 tp!1002541)))

(declare-fun b!3173172 () Bool)

(assert (=> b!3173172 (= e!1976374 tp_is_empty!17157)))

(declare-fun b!3173175 () Bool)

(declare-fun tp!1002543 () Bool)

(declare-fun tp!1002544 () Bool)

(assert (=> b!3173175 (= e!1976374 (and tp!1002543 tp!1002544))))

(declare-fun b!3173173 () Bool)

(declare-fun tp!1002545 () Bool)

(declare-fun tp!1002542 () Bool)

(assert (=> b!3173173 (= e!1976374 (and tp!1002545 tp!1002542))))

(assert (=> b!3173097 (= tp!1002485 e!1976374)))

(assert (= (and b!3173097 ((_ is ElementMatch!9797) (regTwo!20107 r!4705))) b!3173172))

(assert (= (and b!3173097 ((_ is Concat!15118) (regTwo!20107 r!4705))) b!3173173))

(assert (= (and b!3173097 ((_ is Star!9797) (regTwo!20107 r!4705))) b!3173174))

(assert (= (and b!3173097 ((_ is Union!9797) (regTwo!20107 r!4705))) b!3173175))

(declare-fun tp!1002547 () Bool)

(declare-fun tp!1002546 () Bool)

(declare-fun tp!1002548 () Bool)

(declare-fun e!1976375 () Bool)

(declare-fun b!3173176 () Bool)

(assert (=> b!3173176 (= e!1976375 (and tp!1002546 tp_is_empty!17157 tp!1002547 tp!1002548))))

(assert (=> b!3173091 (= tp!1002480 e!1976375)))

(assert (= (and b!3173091 ((_ is Cons!35521) (zeroValue!4477 (v!35288 (underlying!8665 (v!35289 (underlying!8666 (cache!4270 thiss!28445)))))))) b!3173176))

(declare-fun e!1976376 () Bool)

(declare-fun tp!1002550 () Bool)

(declare-fun tp!1002549 () Bool)

(declare-fun b!3173177 () Bool)

(declare-fun tp!1002551 () Bool)

(assert (=> b!3173177 (= e!1976376 (and tp!1002549 tp_is_empty!17157 tp!1002550 tp!1002551))))

(assert (=> b!3173091 (= tp!1002483 e!1976376)))

(assert (= (and b!3173091 ((_ is Cons!35521) (minValue!4477 (v!35288 (underlying!8665 (v!35289 (underlying!8666 (cache!4270 thiss!28445)))))))) b!3173177))

(declare-fun b!3173180 () Bool)

(declare-fun e!1976377 () Bool)

(declare-fun tp!1002552 () Bool)

(assert (=> b!3173180 (= e!1976377 tp!1002552)))

(declare-fun b!3173178 () Bool)

(assert (=> b!3173178 (= e!1976377 tp_is_empty!17157)))

(declare-fun b!3173181 () Bool)

(declare-fun tp!1002554 () Bool)

(declare-fun tp!1002555 () Bool)

(assert (=> b!3173181 (= e!1976377 (and tp!1002554 tp!1002555))))

(declare-fun b!3173179 () Bool)

(declare-fun tp!1002556 () Bool)

(declare-fun tp!1002553 () Bool)

(assert (=> b!3173179 (= e!1976377 (and tp!1002556 tp!1002553))))

(assert (=> b!3173090 (= tp!1002481 e!1976377)))

(assert (= (and b!3173090 ((_ is ElementMatch!9797) (regOne!20106 r!4705))) b!3173178))

(assert (= (and b!3173090 ((_ is Concat!15118) (regOne!20106 r!4705))) b!3173179))

(assert (= (and b!3173090 ((_ is Star!9797) (regOne!20106 r!4705))) b!3173180))

(assert (= (and b!3173090 ((_ is Union!9797) (regOne!20106 r!4705))) b!3173181))

(declare-fun b!3173184 () Bool)

(declare-fun e!1976378 () Bool)

(declare-fun tp!1002557 () Bool)

(assert (=> b!3173184 (= e!1976378 tp!1002557)))

(declare-fun b!3173182 () Bool)

(assert (=> b!3173182 (= e!1976378 tp_is_empty!17157)))

(declare-fun b!3173185 () Bool)

(declare-fun tp!1002559 () Bool)

(declare-fun tp!1002560 () Bool)

(assert (=> b!3173185 (= e!1976378 (and tp!1002559 tp!1002560))))

(declare-fun b!3173183 () Bool)

(declare-fun tp!1002561 () Bool)

(declare-fun tp!1002558 () Bool)

(assert (=> b!3173183 (= e!1976378 (and tp!1002561 tp!1002558))))

(assert (=> b!3173090 (= tp!1002490 e!1976378)))

(assert (= (and b!3173090 ((_ is ElementMatch!9797) (regTwo!20106 r!4705))) b!3173182))

(assert (= (and b!3173090 ((_ is Concat!15118) (regTwo!20106 r!4705))) b!3173183))

(assert (= (and b!3173090 ((_ is Star!9797) (regTwo!20106 r!4705))) b!3173184))

(assert (= (and b!3173090 ((_ is Union!9797) (regTwo!20106 r!4705))) b!3173185))

(declare-fun tp!1002562 () Bool)

(declare-fun tp!1002564 () Bool)

(declare-fun e!1976379 () Bool)

(declare-fun tp!1002563 () Bool)

(declare-fun b!3173186 () Bool)

(assert (=> b!3173186 (= e!1976379 (and tp!1002562 tp_is_empty!17157 tp!1002563 tp!1002564))))

(assert (=> b!3173100 (= tp!1002482 e!1976379)))

(assert (= (and b!3173100 ((_ is Cons!35521) mapDefault!19106)) b!3173186))

(check-sat (not b!3173179) (not b!3173109) (not b!3173186) (not b!3173180) (not b!3173169) (not bm!230619) (not b!3173167) (not b!3173173) (not b_next!84059) (not b!3173171) (not b!3173170) b_and!209641 (not bm!230621) (not b!3173184) (not b!3173152) (not d!869354) (not b!3173174) (not b!3173153) (not b!3173175) (not b!3173177) (not b!3173185) (not b_next!84057) (not b!3173183) (not b!3173154) (not b!3173162) (not b!3173110) (not b!3173176) (not b!3173181) (not mapNonEmpty!19109) tp_is_empty!17157 (not b!3173161) (not b!3173113) (not b!3173137) b_and!209639)
(check-sat b_and!209639 b_and!209641 (not b_next!84057) (not b_next!84059))
