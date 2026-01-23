; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297026 () Bool)

(assert start!297026)

(declare-fun b!3171320 () Bool)

(declare-fun b_free!83265 () Bool)

(declare-fun b_next!83969 () Bool)

(assert (=> b!3171320 (= b_free!83265 (not b_next!83969))))

(declare-fun tp!1001176 () Bool)

(declare-fun b_and!209543 () Bool)

(assert (=> b!3171320 (= tp!1001176 b_and!209543)))

(declare-fun b!3171317 () Bool)

(declare-fun b_free!83267 () Bool)

(declare-fun b_next!83971 () Bool)

(assert (=> b!3171317 (= b_free!83267 (not b_next!83971))))

(declare-fun tp!1001172 () Bool)

(declare-fun b_and!209545 () Bool)

(assert (=> b!3171317 (= tp!1001172 b_and!209545)))

(declare-fun mapNonEmpty!19019 () Bool)

(declare-fun mapRes!19019 () Bool)

(declare-fun tp!1001178 () Bool)

(declare-fun tp!1001179 () Bool)

(assert (=> mapNonEmpty!19019 (= mapRes!19019 (and tp!1001178 tp!1001179))))

(declare-datatypes ((C!19736 0))(
  ( (C!19737 (val!11904 Int)) )
))
(declare-datatypes ((Regex!9775 0))(
  ( (ElementMatch!9775 (c!533239 C!19736)) (Concat!15096 (regOne!20062 Regex!9775) (regTwo!20062 Regex!9775)) (EmptyExpr!9775) (Star!9775 (reg!10104 Regex!9775)) (EmptyLang!9775) (Union!9775 (regOne!20063 Regex!9775) (regTwo!20063 Regex!9775)) )
))
(declare-datatypes ((tuple2!34752 0))(
  ( (tuple2!34753 (_1!20508 Regex!9775) (_2!20508 C!19736)) )
))
(declare-datatypes ((tuple2!34754 0))(
  ( (tuple2!34755 (_1!20509 tuple2!34752) (_2!20509 Regex!9775)) )
))
(declare-datatypes ((List!35618 0))(
  ( (Nil!35494) (Cons!35494 (h!40914 tuple2!34754) (t!234701 List!35618)) )
))
(declare-fun mapValue!19019 () List!35618)

(declare-fun mapKey!19019 () (_ BitVec 32))

(declare-datatypes ((array!15016 0))(
  ( (array!15017 (arr!6682 (Array (_ BitVec 32) (_ BitVec 64))) (size!26768 (_ BitVec 32))) )
))
(declare-datatypes ((array!15018 0))(
  ( (array!15019 (arr!6683 (Array (_ BitVec 32) List!35618)) (size!26769 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8392 0))(
  ( (LongMapFixedSize!8393 (defaultEntry!4581 Int) (mask!10877 (_ BitVec 32)) (extraKeys!4445 (_ BitVec 32)) (zeroValue!4455 List!35618) (minValue!4455 List!35618) (_size!8435 (_ BitVec 32)) (_keys!4496 array!15016) (_values!4477 array!15018) (_vacant!4257 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16593 0))(
  ( (Cell!16594 (v!35231 LongMapFixedSize!8392)) )
))
(declare-datatypes ((MutLongMap!4196 0))(
  ( (LongMap!4196 (underlying!8621 Cell!16593)) (MutLongMapExt!4195 (__x!22694 Int)) )
))
(declare-datatypes ((Cell!16595 0))(
  ( (Cell!16596 (v!35232 MutLongMap!4196)) )
))
(declare-datatypes ((Hashable!4112 0))(
  ( (HashableExt!4111 (__x!22695 Int)) )
))
(declare-datatypes ((MutableMap!4102 0))(
  ( (MutableMapExt!4101 (__x!22696 Int)) (HashMap!4102 (underlying!8622 Cell!16595) (hashF!6144 Hashable!4112) (_size!8436 (_ BitVec 32)) (defaultValue!4273 Int)) )
))
(declare-datatypes ((Cache!474 0))(
  ( (Cache!475 (cache!4248 MutableMap!4102)) )
))
(declare-fun thiss!28499 () Cache!474)

(declare-fun mapRest!19019 () (Array (_ BitVec 32) List!35618))

(assert (=> mapNonEmpty!19019 (= (arr!6683 (_values!4477 (v!35231 (underlying!8621 (v!35232 (underlying!8622 (cache!4248 thiss!28499))))))) (store mapRest!19019 mapKey!19019 mapValue!19019))))

(declare-fun b!3171315 () Bool)

(declare-fun e!1975118 () Bool)

(get-info :version)

(assert (=> b!3171315 (= e!1975118 (not ((_ is HashMap!4102) (cache!4248 thiss!28499))))))

(declare-fun b!3171316 () Bool)

(declare-fun e!1975119 () Bool)

(declare-fun tp_is_empty!17113 () Bool)

(assert (=> b!3171316 (= e!1975119 tp_is_empty!17113)))

(declare-fun e!1975112 () Bool)

(declare-fun tp!1001180 () Bool)

(declare-fun tp!1001175 () Bool)

(declare-fun e!1975116 () Bool)

(declare-fun array_inv!4792 (array!15016) Bool)

(declare-fun array_inv!4793 (array!15018) Bool)

(assert (=> b!3171317 (= e!1975116 (and tp!1001172 tp!1001175 tp!1001180 (array_inv!4792 (_keys!4496 (v!35231 (underlying!8621 (v!35232 (underlying!8622 (cache!4248 thiss!28499))))))) (array_inv!4793 (_values!4477 (v!35231 (underlying!8621 (v!35232 (underlying!8622 (cache!4248 thiss!28499))))))) e!1975112))))

(declare-fun b!3171318 () Bool)

(declare-fun tp!1001174 () Bool)

(assert (=> b!3171318 (= e!1975119 tp!1001174)))

(declare-fun e!1975114 () Bool)

(declare-fun e!1975113 () Bool)

(assert (=> b!3171320 (= e!1975114 (and e!1975113 tp!1001176))))

(declare-fun b!3171321 () Bool)

(declare-fun tp!1001177 () Bool)

(declare-fun tp!1001169 () Bool)

(assert (=> b!3171321 (= e!1975119 (and tp!1001177 tp!1001169))))

(declare-fun b!3171322 () Bool)

(declare-fun e!1975117 () Bool)

(declare-fun e!1975120 () Bool)

(assert (=> b!3171322 (= e!1975117 e!1975120)))

(declare-fun b!3171323 () Bool)

(declare-fun tp!1001171 () Bool)

(declare-fun tp!1001170 () Bool)

(assert (=> b!3171323 (= e!1975119 (and tp!1001171 tp!1001170))))

(declare-fun b!3171324 () Bool)

(declare-fun e!1975115 () Bool)

(assert (=> b!3171324 (= e!1975115 e!1975114)))

(declare-fun mapIsEmpty!19019 () Bool)

(assert (=> mapIsEmpty!19019 mapRes!19019))

(declare-fun res!1289047 () Bool)

(assert (=> start!297026 (=> (not res!1289047) (not e!1975118))))

(declare-fun r!4721 () Regex!9775)

(declare-fun validRegex!4486 (Regex!9775) Bool)

(assert (=> start!297026 (= res!1289047 (validRegex!4486 r!4721))))

(assert (=> start!297026 e!1975118))

(assert (=> start!297026 e!1975119))

(declare-fun inv!48198 (Cache!474) Bool)

(assert (=> start!297026 (and (inv!48198 thiss!28499) e!1975115)))

(declare-fun b!3171319 () Bool)

(declare-fun tp!1001173 () Bool)

(assert (=> b!3171319 (= e!1975112 (and tp!1001173 mapRes!19019))))

(declare-fun condMapEmpty!19019 () Bool)

(declare-fun mapDefault!19019 () List!35618)

(assert (=> b!3171319 (= condMapEmpty!19019 (= (arr!6683 (_values!4477 (v!35231 (underlying!8621 (v!35232 (underlying!8622 (cache!4248 thiss!28499))))))) ((as const (Array (_ BitVec 32) List!35618)) mapDefault!19019)))))

(declare-fun b!3171325 () Bool)

(declare-fun lt!1066316 () MutLongMap!4196)

(assert (=> b!3171325 (= e!1975113 (and e!1975117 ((_ is LongMap!4196) lt!1066316)))))

(assert (=> b!3171325 (= lt!1066316 (v!35232 (underlying!8622 (cache!4248 thiss!28499))))))

(declare-fun b!3171326 () Bool)

(assert (=> b!3171326 (= e!1975120 e!1975116)))

(assert (= (and start!297026 res!1289047) b!3171315))

(assert (= (and start!297026 ((_ is ElementMatch!9775) r!4721)) b!3171316))

(assert (= (and start!297026 ((_ is Concat!15096) r!4721)) b!3171321))

(assert (= (and start!297026 ((_ is Star!9775) r!4721)) b!3171318))

(assert (= (and start!297026 ((_ is Union!9775) r!4721)) b!3171323))

(assert (= (and b!3171319 condMapEmpty!19019) mapIsEmpty!19019))

(assert (= (and b!3171319 (not condMapEmpty!19019)) mapNonEmpty!19019))

(assert (= b!3171317 b!3171319))

(assert (= b!3171326 b!3171317))

(assert (= b!3171322 b!3171326))

(assert (= (and b!3171325 ((_ is LongMap!4196) (v!35232 (underlying!8622 (cache!4248 thiss!28499))))) b!3171322))

(assert (= b!3171320 b!3171325))

(assert (= (and b!3171324 ((_ is HashMap!4102) (cache!4248 thiss!28499))) b!3171320))

(assert (= start!297026 b!3171324))

(declare-fun m!3430206 () Bool)

(assert (=> mapNonEmpty!19019 m!3430206))

(declare-fun m!3430208 () Bool)

(assert (=> b!3171317 m!3430208))

(declare-fun m!3430210 () Bool)

(assert (=> b!3171317 m!3430210))

(declare-fun m!3430212 () Bool)

(assert (=> start!297026 m!3430212))

(declare-fun m!3430214 () Bool)

(assert (=> start!297026 m!3430214))

(check-sat (not mapNonEmpty!19019) (not start!297026) (not b!3171317) (not b!3171323) (not b!3171318) (not b_next!83969) (not b!3171321) b_and!209543 (not b!3171319) b_and!209545 (not b_next!83971) tp_is_empty!17113)
(check-sat b_and!209543 b_and!209545 (not b_next!83971) (not b_next!83969))
(get-model)

(declare-fun b!3171345 () Bool)

(declare-fun e!1975139 () Bool)

(declare-fun call!230479 () Bool)

(assert (=> b!3171345 (= e!1975139 call!230479)))

(declare-fun b!3171346 () Bool)

(declare-fun res!1289059 () Bool)

(assert (=> b!3171346 (=> (not res!1289059) (not e!1975139))))

(declare-fun call!230477 () Bool)

(assert (=> b!3171346 (= res!1289059 call!230477)))

(declare-fun e!1975138 () Bool)

(assert (=> b!3171346 (= e!1975138 e!1975139)))

(declare-fun b!3171347 () Bool)

(declare-fun e!1975140 () Bool)

(declare-fun call!230478 () Bool)

(assert (=> b!3171347 (= e!1975140 call!230478)))

(declare-fun bm!230472 () Bool)

(declare-fun c!533245 () Bool)

(assert (=> bm!230472 (= call!230477 (validRegex!4486 (ite c!533245 (regOne!20063 r!4721) (regOne!20062 r!4721))))))

(declare-fun b!3171348 () Bool)

(declare-fun e!1975137 () Bool)

(assert (=> b!3171348 (= e!1975137 e!1975140)))

(declare-fun res!1289058 () Bool)

(declare-fun nullable!3359 (Regex!9775) Bool)

(assert (=> b!3171348 (= res!1289058 (not (nullable!3359 (reg!10104 r!4721))))))

(assert (=> b!3171348 (=> (not res!1289058) (not e!1975140))))

(declare-fun b!3171349 () Bool)

(declare-fun e!1975136 () Bool)

(assert (=> b!3171349 (= e!1975136 e!1975137)))

(declare-fun c!533244 () Bool)

(assert (=> b!3171349 (= c!533244 ((_ is Star!9775) r!4721))))

(declare-fun d!869241 () Bool)

(declare-fun res!1289062 () Bool)

(assert (=> d!869241 (=> res!1289062 e!1975136)))

(assert (=> d!869241 (= res!1289062 ((_ is ElementMatch!9775) r!4721))))

(assert (=> d!869241 (= (validRegex!4486 r!4721) e!1975136)))

(declare-fun b!3171350 () Bool)

(declare-fun e!1975141 () Bool)

(declare-fun e!1975142 () Bool)

(assert (=> b!3171350 (= e!1975141 e!1975142)))

(declare-fun res!1289061 () Bool)

(assert (=> b!3171350 (=> (not res!1289061) (not e!1975142))))

(assert (=> b!3171350 (= res!1289061 call!230477)))

(declare-fun b!3171351 () Bool)

(assert (=> b!3171351 (= e!1975142 call!230479)))

(declare-fun bm!230473 () Bool)

(assert (=> bm!230473 (= call!230478 (validRegex!4486 (ite c!533244 (reg!10104 r!4721) (ite c!533245 (regTwo!20063 r!4721) (regTwo!20062 r!4721)))))))

(declare-fun b!3171352 () Bool)

(declare-fun res!1289060 () Bool)

(assert (=> b!3171352 (=> res!1289060 e!1975141)))

(assert (=> b!3171352 (= res!1289060 (not ((_ is Concat!15096) r!4721)))))

(assert (=> b!3171352 (= e!1975138 e!1975141)))

(declare-fun b!3171353 () Bool)

(assert (=> b!3171353 (= e!1975137 e!1975138)))

(assert (=> b!3171353 (= c!533245 ((_ is Union!9775) r!4721))))

(declare-fun bm!230474 () Bool)

(assert (=> bm!230474 (= call!230479 call!230478)))

(assert (= (and d!869241 (not res!1289062)) b!3171349))

(assert (= (and b!3171349 c!533244) b!3171348))

(assert (= (and b!3171349 (not c!533244)) b!3171353))

(assert (= (and b!3171348 res!1289058) b!3171347))

(assert (= (and b!3171353 c!533245) b!3171346))

(assert (= (and b!3171353 (not c!533245)) b!3171352))

(assert (= (and b!3171346 res!1289059) b!3171345))

(assert (= (and b!3171352 (not res!1289060)) b!3171350))

(assert (= (and b!3171350 res!1289061) b!3171351))

(assert (= (or b!3171346 b!3171350) bm!230472))

(assert (= (or b!3171345 b!3171351) bm!230474))

(assert (= (or b!3171347 bm!230474) bm!230473))

(declare-fun m!3430216 () Bool)

(assert (=> bm!230472 m!3430216))

(declare-fun m!3430218 () Bool)

(assert (=> b!3171348 m!3430218))

(declare-fun m!3430220 () Bool)

(assert (=> bm!230473 m!3430220))

(assert (=> start!297026 d!869241))

(declare-fun d!869243 () Bool)

(declare-fun res!1289065 () Bool)

(declare-fun e!1975145 () Bool)

(assert (=> d!869243 (=> (not res!1289065) (not e!1975145))))

(assert (=> d!869243 (= res!1289065 ((_ is HashMap!4102) (cache!4248 thiss!28499)))))

(assert (=> d!869243 (= (inv!48198 thiss!28499) e!1975145)))

(declare-fun b!3171356 () Bool)

(declare-fun validCacheMap!81 (MutableMap!4102) Bool)

(assert (=> b!3171356 (= e!1975145 (validCacheMap!81 (cache!4248 thiss!28499)))))

(assert (= (and d!869243 res!1289065) b!3171356))

(declare-fun m!3430222 () Bool)

(assert (=> b!3171356 m!3430222))

(assert (=> start!297026 d!869243))

(declare-fun d!869245 () Bool)

(assert (=> d!869245 (= (array_inv!4792 (_keys!4496 (v!35231 (underlying!8621 (v!35232 (underlying!8622 (cache!4248 thiss!28499))))))) (bvsge (size!26768 (_keys!4496 (v!35231 (underlying!8621 (v!35232 (underlying!8622 (cache!4248 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3171317 d!869245))

(declare-fun d!869247 () Bool)

(assert (=> d!869247 (= (array_inv!4793 (_values!4477 (v!35231 (underlying!8621 (v!35232 (underlying!8622 (cache!4248 thiss!28499))))))) (bvsge (size!26769 (_values!4477 (v!35231 (underlying!8621 (v!35232 (underlying!8622 (cache!4248 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3171317 d!869247))

(declare-fun condMapEmpty!19022 () Bool)

(declare-fun mapDefault!19022 () List!35618)

(assert (=> mapNonEmpty!19019 (= condMapEmpty!19022 (= mapRest!19019 ((as const (Array (_ BitVec 32) List!35618)) mapDefault!19022)))))

(declare-fun e!1975151 () Bool)

(declare-fun mapRes!19022 () Bool)

(assert (=> mapNonEmpty!19019 (= tp!1001178 (and e!1975151 mapRes!19022))))

(declare-fun tp!1001200 () Bool)

(declare-fun tp!1001201 () Bool)

(declare-fun b!3171363 () Bool)

(declare-fun e!1975150 () Bool)

(declare-fun tp!1001198 () Bool)

(assert (=> b!3171363 (= e!1975150 (and tp!1001201 tp_is_empty!17113 tp!1001200 tp!1001198))))

(declare-fun mapIsEmpty!19022 () Bool)

(assert (=> mapIsEmpty!19022 mapRes!19022))

(declare-fun tp!1001199 () Bool)

(declare-fun tp!1001195 () Bool)

(declare-fun tp!1001196 () Bool)

(declare-fun b!3171364 () Bool)

(assert (=> b!3171364 (= e!1975151 (and tp!1001199 tp_is_empty!17113 tp!1001196 tp!1001195))))

(declare-fun mapNonEmpty!19022 () Bool)

(declare-fun tp!1001197 () Bool)

(assert (=> mapNonEmpty!19022 (= mapRes!19022 (and tp!1001197 e!1975150))))

(declare-fun mapKey!19022 () (_ BitVec 32))

(declare-fun mapValue!19022 () List!35618)

(declare-fun mapRest!19022 () (Array (_ BitVec 32) List!35618))

(assert (=> mapNonEmpty!19022 (= mapRest!19019 (store mapRest!19022 mapKey!19022 mapValue!19022))))

(assert (= (and mapNonEmpty!19019 condMapEmpty!19022) mapIsEmpty!19022))

(assert (= (and mapNonEmpty!19019 (not condMapEmpty!19022)) mapNonEmpty!19022))

(assert (= (and mapNonEmpty!19022 ((_ is Cons!35494) mapValue!19022)) b!3171363))

(assert (= (and mapNonEmpty!19019 ((_ is Cons!35494) mapDefault!19022)) b!3171364))

(declare-fun m!3430224 () Bool)

(assert (=> mapNonEmpty!19022 m!3430224))

(declare-fun tp!1001209 () Bool)

(declare-fun tp!1001208 () Bool)

(declare-fun b!3171369 () Bool)

(declare-fun tp!1001210 () Bool)

(declare-fun e!1975154 () Bool)

(assert (=> b!3171369 (= e!1975154 (and tp!1001208 tp_is_empty!17113 tp!1001209 tp!1001210))))

(assert (=> mapNonEmpty!19019 (= tp!1001179 e!1975154)))

(assert (= (and mapNonEmpty!19019 ((_ is Cons!35494) mapValue!19019)) b!3171369))

(declare-fun b!3171382 () Bool)

(declare-fun e!1975157 () Bool)

(declare-fun tp!1001224 () Bool)

(assert (=> b!3171382 (= e!1975157 tp!1001224)))

(assert (=> b!3171321 (= tp!1001177 e!1975157)))

(declare-fun b!3171380 () Bool)

(assert (=> b!3171380 (= e!1975157 tp_is_empty!17113)))

(declare-fun b!3171383 () Bool)

(declare-fun tp!1001225 () Bool)

(declare-fun tp!1001221 () Bool)

(assert (=> b!3171383 (= e!1975157 (and tp!1001225 tp!1001221))))

(declare-fun b!3171381 () Bool)

(declare-fun tp!1001222 () Bool)

(declare-fun tp!1001223 () Bool)

(assert (=> b!3171381 (= e!1975157 (and tp!1001222 tp!1001223))))

(assert (= (and b!3171321 ((_ is ElementMatch!9775) (regOne!20062 r!4721))) b!3171380))

(assert (= (and b!3171321 ((_ is Concat!15096) (regOne!20062 r!4721))) b!3171381))

(assert (= (and b!3171321 ((_ is Star!9775) (regOne!20062 r!4721))) b!3171382))

(assert (= (and b!3171321 ((_ is Union!9775) (regOne!20062 r!4721))) b!3171383))

(declare-fun b!3171386 () Bool)

(declare-fun e!1975158 () Bool)

(declare-fun tp!1001229 () Bool)

(assert (=> b!3171386 (= e!1975158 tp!1001229)))

(assert (=> b!3171321 (= tp!1001169 e!1975158)))

(declare-fun b!3171384 () Bool)

(assert (=> b!3171384 (= e!1975158 tp_is_empty!17113)))

(declare-fun b!3171387 () Bool)

(declare-fun tp!1001230 () Bool)

(declare-fun tp!1001226 () Bool)

(assert (=> b!3171387 (= e!1975158 (and tp!1001230 tp!1001226))))

(declare-fun b!3171385 () Bool)

(declare-fun tp!1001227 () Bool)

(declare-fun tp!1001228 () Bool)

(assert (=> b!3171385 (= e!1975158 (and tp!1001227 tp!1001228))))

(assert (= (and b!3171321 ((_ is ElementMatch!9775) (regTwo!20062 r!4721))) b!3171384))

(assert (= (and b!3171321 ((_ is Concat!15096) (regTwo!20062 r!4721))) b!3171385))

(assert (= (and b!3171321 ((_ is Star!9775) (regTwo!20062 r!4721))) b!3171386))

(assert (= (and b!3171321 ((_ is Union!9775) (regTwo!20062 r!4721))) b!3171387))

(declare-fun b!3171388 () Bool)

(declare-fun tp!1001232 () Bool)

(declare-fun tp!1001231 () Bool)

(declare-fun e!1975159 () Bool)

(declare-fun tp!1001233 () Bool)

(assert (=> b!3171388 (= e!1975159 (and tp!1001231 tp_is_empty!17113 tp!1001232 tp!1001233))))

(assert (=> b!3171317 (= tp!1001175 e!1975159)))

(assert (= (and b!3171317 ((_ is Cons!35494) (zeroValue!4455 (v!35231 (underlying!8621 (v!35232 (underlying!8622 (cache!4248 thiss!28499)))))))) b!3171388))

(declare-fun tp!1001235 () Bool)

(declare-fun e!1975160 () Bool)

(declare-fun b!3171389 () Bool)

(declare-fun tp!1001236 () Bool)

(declare-fun tp!1001234 () Bool)

(assert (=> b!3171389 (= e!1975160 (and tp!1001234 tp_is_empty!17113 tp!1001235 tp!1001236))))

(assert (=> b!3171317 (= tp!1001180 e!1975160)))

(assert (= (and b!3171317 ((_ is Cons!35494) (minValue!4455 (v!35231 (underlying!8621 (v!35232 (underlying!8622 (cache!4248 thiss!28499)))))))) b!3171389))

(declare-fun b!3171392 () Bool)

(declare-fun e!1975161 () Bool)

(declare-fun tp!1001240 () Bool)

(assert (=> b!3171392 (= e!1975161 tp!1001240)))

(assert (=> b!3171323 (= tp!1001171 e!1975161)))

(declare-fun b!3171390 () Bool)

(assert (=> b!3171390 (= e!1975161 tp_is_empty!17113)))

(declare-fun b!3171393 () Bool)

(declare-fun tp!1001241 () Bool)

(declare-fun tp!1001237 () Bool)

(assert (=> b!3171393 (= e!1975161 (and tp!1001241 tp!1001237))))

(declare-fun b!3171391 () Bool)

(declare-fun tp!1001238 () Bool)

(declare-fun tp!1001239 () Bool)

(assert (=> b!3171391 (= e!1975161 (and tp!1001238 tp!1001239))))

(assert (= (and b!3171323 ((_ is ElementMatch!9775) (regOne!20063 r!4721))) b!3171390))

(assert (= (and b!3171323 ((_ is Concat!15096) (regOne!20063 r!4721))) b!3171391))

(assert (= (and b!3171323 ((_ is Star!9775) (regOne!20063 r!4721))) b!3171392))

(assert (= (and b!3171323 ((_ is Union!9775) (regOne!20063 r!4721))) b!3171393))

(declare-fun b!3171396 () Bool)

(declare-fun e!1975162 () Bool)

(declare-fun tp!1001245 () Bool)

(assert (=> b!3171396 (= e!1975162 tp!1001245)))

(assert (=> b!3171323 (= tp!1001170 e!1975162)))

(declare-fun b!3171394 () Bool)

(assert (=> b!3171394 (= e!1975162 tp_is_empty!17113)))

(declare-fun b!3171397 () Bool)

(declare-fun tp!1001246 () Bool)

(declare-fun tp!1001242 () Bool)

(assert (=> b!3171397 (= e!1975162 (and tp!1001246 tp!1001242))))

(declare-fun b!3171395 () Bool)

(declare-fun tp!1001243 () Bool)

(declare-fun tp!1001244 () Bool)

(assert (=> b!3171395 (= e!1975162 (and tp!1001243 tp!1001244))))

(assert (= (and b!3171323 ((_ is ElementMatch!9775) (regTwo!20063 r!4721))) b!3171394))

(assert (= (and b!3171323 ((_ is Concat!15096) (regTwo!20063 r!4721))) b!3171395))

(assert (= (and b!3171323 ((_ is Star!9775) (regTwo!20063 r!4721))) b!3171396))

(assert (= (and b!3171323 ((_ is Union!9775) (regTwo!20063 r!4721))) b!3171397))

(declare-fun b!3171400 () Bool)

(declare-fun e!1975163 () Bool)

(declare-fun tp!1001250 () Bool)

(assert (=> b!3171400 (= e!1975163 tp!1001250)))

(assert (=> b!3171318 (= tp!1001174 e!1975163)))

(declare-fun b!3171398 () Bool)

(assert (=> b!3171398 (= e!1975163 tp_is_empty!17113)))

(declare-fun b!3171401 () Bool)

(declare-fun tp!1001251 () Bool)

(declare-fun tp!1001247 () Bool)

(assert (=> b!3171401 (= e!1975163 (and tp!1001251 tp!1001247))))

(declare-fun b!3171399 () Bool)

(declare-fun tp!1001248 () Bool)

(declare-fun tp!1001249 () Bool)

(assert (=> b!3171399 (= e!1975163 (and tp!1001248 tp!1001249))))

(assert (= (and b!3171318 ((_ is ElementMatch!9775) (reg!10104 r!4721))) b!3171398))

(assert (= (and b!3171318 ((_ is Concat!15096) (reg!10104 r!4721))) b!3171399))

(assert (= (and b!3171318 ((_ is Star!9775) (reg!10104 r!4721))) b!3171400))

(assert (= (and b!3171318 ((_ is Union!9775) (reg!10104 r!4721))) b!3171401))

(declare-fun tp!1001253 () Bool)

(declare-fun tp!1001254 () Bool)

(declare-fun tp!1001252 () Bool)

(declare-fun e!1975164 () Bool)

(declare-fun b!3171402 () Bool)

(assert (=> b!3171402 (= e!1975164 (and tp!1001252 tp_is_empty!17113 tp!1001253 tp!1001254))))

(assert (=> b!3171319 (= tp!1001173 e!1975164)))

(assert (= (and b!3171319 ((_ is Cons!35494) mapDefault!19019)) b!3171402))

(check-sat (not b!3171392) (not b!3171381) (not b!3171395) (not b_next!83969) (not b!3171356) (not b!3171385) (not b!3171396) (not bm!230472) (not b!3171397) (not b!3171399) (not b!3171400) (not b!3171402) (not b!3171401) b_and!209543 (not b!3171364) (not b!3171386) (not b!3171348) (not b!3171382) b_and!209545 (not b!3171369) (not mapNonEmpty!19022) (not b!3171388) (not b_next!83971) tp_is_empty!17113 (not b!3171389) (not b!3171391) (not b!3171387) (not b!3171363) (not b!3171383) (not bm!230473) (not b!3171393))
(check-sat b_and!209543 b_and!209545 (not b_next!83971) (not b_next!83969))
