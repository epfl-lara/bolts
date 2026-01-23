; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3234 () Bool)

(assert start!3234)

(declare-fun b!47226 () Bool)

(declare-fun b_free!1277 () Bool)

(declare-fun b_next!1277 () Bool)

(assert (=> b!47226 (= b_free!1277 (not b_next!1277))))

(declare-fun tp!32046 () Bool)

(declare-fun b_and!1311 () Bool)

(assert (=> b!47226 (= tp!32046 b_and!1311)))

(declare-fun b!47229 () Bool)

(declare-fun b_free!1279 () Bool)

(declare-fun b_next!1279 () Bool)

(assert (=> b!47229 (= b_free!1279 (not b_next!1279))))

(declare-fun tp!32051 () Bool)

(declare-fun b_and!1313 () Bool)

(assert (=> b!47229 (= tp!32051 b_and!1313)))

(declare-fun b!47222 () Bool)

(declare-fun res!31778 () Bool)

(declare-fun e!27222 () Bool)

(assert (=> b!47222 (=> (not res!31778) (not e!27222))))

(declare-datatypes ((K!543 0))(
  ( (K!544 (val!232 Int)) )
))
(declare-datatypes ((V!597 0))(
  ( (V!598 (val!233 Int)) )
))
(declare-datatypes ((tuple2!980 0))(
  ( (tuple2!981 (_1!694 K!543) (_2!694 V!597)) )
))
(declare-datatypes ((List!800 0))(
  ( (Nil!798) (Cons!798 (h!6194 tuple2!980) (t!16999 List!800)) )
))
(declare-datatypes ((array!924 0))(
  ( (array!925 (arr!436 (Array (_ BitVec 32) List!800)) (size!777 (_ BitVec 32))) )
))
(declare-datatypes ((array!926 0))(
  ( (array!927 (arr!437 (Array (_ BitVec 32) (_ BitVec 64))) (size!778 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!550 0))(
  ( (LongMapFixedSize!551 (defaultEntry!613 Int) (mask!1001 (_ BitVec 32)) (extraKeys!521 (_ BitVec 32)) (zeroValue!531 List!800) (minValue!531 List!800) (_size!682 (_ BitVec 32)) (_keys!566 array!926) (_values!553 array!924) (_vacant!335 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1089 0))(
  ( (Cell!1090 (v!12531 LongMapFixedSize!550)) )
))
(declare-datatypes ((MutLongMap!275 0))(
  ( (LongMap!275 (underlying!745 Cell!1089)) (MutLongMapExt!274 (__x!1338 Int)) )
))
(declare-datatypes ((Cell!1091 0))(
  ( (Cell!1092 (v!12532 MutLongMap!275)) )
))
(declare-datatypes ((Hashable!271 0))(
  ( (HashableExt!270 (__x!1339 Int)) )
))
(declare-datatypes ((MutableMap!271 0))(
  ( (MutableMapExt!270 (__x!1340 Int)) (HashMap!271 (underlying!746 Cell!1091) (hashF!2139 Hashable!271) (_size!683 (_ BitVec 32)) (defaultValue!420 Int)) )
))
(declare-fun thiss!42687 () MutableMap!271)

(get-info :version)

(assert (=> b!47222 (= res!31778 ((_ is LongMap!275) (v!12532 (underlying!746 thiss!42687))))))

(declare-fun b!47223 () Bool)

(declare-fun res!31779 () Bool)

(assert (=> b!47223 (=> (not res!31779) (not e!27222))))

(declare-fun valid!246 (MutableMap!271) Bool)

(assert (=> b!47223 (= res!31779 (valid!246 thiss!42687))))

(declare-fun b!47224 () Bool)

(declare-fun e!27223 () Bool)

(declare-fun tp!32049 () Bool)

(declare-fun mapRes!1086 () Bool)

(assert (=> b!47224 (= e!27223 (and tp!32049 mapRes!1086))))

(declare-fun condMapEmpty!1086 () Bool)

(declare-fun mapDefault!1086 () List!800)

(assert (=> b!47224 (= condMapEmpty!1086 (= (arr!436 (_values!553 (v!12531 (underlying!745 (v!12532 (underlying!746 thiss!42687)))))) ((as const (Array (_ BitVec 32) List!800)) mapDefault!1086)))))

(declare-fun tp!32050 () Bool)

(declare-fun tp!32052 () Bool)

(declare-fun e!27224 () Bool)

(declare-fun array_inv!295 (array!926) Bool)

(declare-fun array_inv!296 (array!924) Bool)

(assert (=> b!47226 (= e!27224 (and tp!32046 tp!32052 tp!32050 (array_inv!295 (_keys!566 (v!12531 (underlying!745 (v!12532 (underlying!746 thiss!42687)))))) (array_inv!296 (_values!553 (v!12531 (underlying!745 (v!12532 (underlying!746 thiss!42687)))))) e!27223))))

(declare-fun b!47227 () Bool)

(declare-fun valid!247 (MutLongMap!275) Bool)

(assert (=> b!47227 (= e!27222 (not (valid!247 (v!12532 (underlying!746 thiss!42687)))))))

(declare-fun b!47228 () Bool)

(declare-fun e!27221 () Bool)

(declare-fun e!27225 () Bool)

(assert (=> b!47228 (= e!27221 e!27225)))

(declare-fun mapIsEmpty!1086 () Bool)

(assert (=> mapIsEmpty!1086 mapRes!1086))

(declare-fun e!27226 () Bool)

(declare-fun e!27219 () Bool)

(assert (=> b!47229 (= e!27226 (and e!27219 tp!32051))))

(declare-fun res!31780 () Bool)

(assert (=> start!3234 (=> (not res!31780) (not e!27222))))

(assert (=> start!3234 (= res!31780 ((_ is HashMap!271) thiss!42687))))

(assert (=> start!3234 e!27222))

(assert (=> start!3234 e!27226))

(declare-fun b!47225 () Bool)

(assert (=> b!47225 (= e!27225 e!27224)))

(declare-fun b!47230 () Bool)

(declare-fun lt!6388 () MutLongMap!275)

(assert (=> b!47230 (= e!27219 (and e!27221 ((_ is LongMap!275) lt!6388)))))

(assert (=> b!47230 (= lt!6388 (v!12532 (underlying!746 thiss!42687)))))

(declare-fun mapNonEmpty!1086 () Bool)

(declare-fun tp!32047 () Bool)

(declare-fun tp!32048 () Bool)

(assert (=> mapNonEmpty!1086 (= mapRes!1086 (and tp!32047 tp!32048))))

(declare-fun mapRest!1086 () (Array (_ BitVec 32) List!800))

(declare-fun mapKey!1086 () (_ BitVec 32))

(declare-fun mapValue!1086 () List!800)

(assert (=> mapNonEmpty!1086 (= (arr!436 (_values!553 (v!12531 (underlying!745 (v!12532 (underlying!746 thiss!42687)))))) (store mapRest!1086 mapKey!1086 mapValue!1086))))

(assert (= (and start!3234 res!31780) b!47223))

(assert (= (and b!47223 res!31779) b!47222))

(assert (= (and b!47222 res!31778) b!47227))

(assert (= (and b!47224 condMapEmpty!1086) mapIsEmpty!1086))

(assert (= (and b!47224 (not condMapEmpty!1086)) mapNonEmpty!1086))

(assert (= b!47226 b!47224))

(assert (= b!47225 b!47226))

(assert (= b!47228 b!47225))

(assert (= (and b!47230 ((_ is LongMap!275) (v!12532 (underlying!746 thiss!42687)))) b!47228))

(assert (= b!47229 b!47230))

(assert (= (and start!3234 ((_ is HashMap!271) thiss!42687)) b!47229))

(declare-fun m!21422 () Bool)

(assert (=> b!47223 m!21422))

(declare-fun m!21424 () Bool)

(assert (=> b!47226 m!21424))

(declare-fun m!21426 () Bool)

(assert (=> b!47226 m!21426))

(declare-fun m!21428 () Bool)

(assert (=> b!47227 m!21428))

(declare-fun m!21430 () Bool)

(assert (=> mapNonEmpty!1086 m!21430))

(check-sat (not b!47223) b_and!1313 (not b!47227) b_and!1311 (not b!47224) (not b_next!1277) (not b!47226) (not mapNonEmpty!1086) (not b_next!1279))
(check-sat b_and!1313 b_and!1311 (not b_next!1277) (not b_next!1279))
(get-model)

(declare-fun d!5661 () Bool)

(assert (=> d!5661 (= (array_inv!295 (_keys!566 (v!12531 (underlying!745 (v!12532 (underlying!746 thiss!42687)))))) (bvsge (size!778 (_keys!566 (v!12531 (underlying!745 (v!12532 (underlying!746 thiss!42687)))))) #b00000000000000000000000000000000))))

(assert (=> b!47226 d!5661))

(declare-fun d!5663 () Bool)

(assert (=> d!5663 (= (array_inv!296 (_values!553 (v!12531 (underlying!745 (v!12532 (underlying!746 thiss!42687)))))) (bvsge (size!777 (_values!553 (v!12531 (underlying!745 (v!12532 (underlying!746 thiss!42687)))))) #b00000000000000000000000000000000))))

(assert (=> b!47226 d!5663))

(declare-fun d!5665 () Bool)

(declare-fun valid!248 (LongMapFixedSize!550) Bool)

(assert (=> d!5665 (= (valid!247 (v!12532 (underlying!746 thiss!42687))) (valid!248 (v!12531 (underlying!745 (v!12532 (underlying!746 thiss!42687))))))))

(declare-fun bs!6379 () Bool)

(assert (= bs!6379 d!5665))

(declare-fun m!21432 () Bool)

(assert (=> bs!6379 m!21432))

(assert (=> b!47227 d!5665))

(declare-fun d!5667 () Bool)

(declare-fun res!31785 () Bool)

(declare-fun e!27229 () Bool)

(assert (=> d!5667 (=> (not res!31785) (not e!27229))))

(assert (=> d!5667 (= res!31785 (valid!247 (v!12532 (underlying!746 thiss!42687))))))

(assert (=> d!5667 (= (valid!246 thiss!42687) e!27229)))

(declare-fun b!47235 () Bool)

(declare-fun res!31786 () Bool)

(assert (=> b!47235 (=> (not res!31786) (not e!27229))))

(declare-fun lambda!889 () Int)

(declare-datatypes ((tuple2!982 0))(
  ( (tuple2!983 (_1!695 (_ BitVec 64)) (_2!695 List!800)) )
))
(declare-datatypes ((List!801 0))(
  ( (Nil!799) (Cons!799 (h!6195 tuple2!982) (t!17000 List!801)) )
))
(declare-fun forall!101 (List!801 Int) Bool)

(declare-datatypes ((ListLongMap!17 0))(
  ( (ListLongMap!18 (toList!178 List!801)) )
))
(declare-fun map!260 (MutLongMap!275) ListLongMap!17)

(assert (=> b!47235 (= res!31786 (forall!101 (toList!178 (map!260 (v!12532 (underlying!746 thiss!42687)))) lambda!889))))

(declare-fun b!47236 () Bool)

(declare-fun allKeysSameHashInMap!7 (ListLongMap!17 Hashable!271) Bool)

(assert (=> b!47236 (= e!27229 (allKeysSameHashInMap!7 (map!260 (v!12532 (underlying!746 thiss!42687))) (hashF!2139 thiss!42687)))))

(assert (= (and d!5667 res!31785) b!47235))

(assert (= (and b!47235 res!31786) b!47236))

(assert (=> d!5667 m!21428))

(declare-fun m!21434 () Bool)

(assert (=> b!47235 m!21434))

(declare-fun m!21436 () Bool)

(assert (=> b!47235 m!21436))

(assert (=> b!47236 m!21434))

(assert (=> b!47236 m!21434))

(declare-fun m!21438 () Bool)

(assert (=> b!47236 m!21438))

(assert (=> b!47223 d!5667))

(declare-fun tp!32055 () Bool)

(declare-fun b!47241 () Bool)

(declare-fun e!27232 () Bool)

(declare-fun tp_is_empty!403 () Bool)

(declare-fun tp_is_empty!405 () Bool)

(assert (=> b!47241 (= e!27232 (and tp_is_empty!403 tp_is_empty!405 tp!32055))))

(assert (=> b!47226 (= tp!32052 e!27232)))

(assert (= (and b!47226 ((_ is Cons!798) (zeroValue!531 (v!12531 (underlying!745 (v!12532 (underlying!746 thiss!42687))))))) b!47241))

(declare-fun e!27233 () Bool)

(declare-fun b!47242 () Bool)

(declare-fun tp!32056 () Bool)

(assert (=> b!47242 (= e!27233 (and tp_is_empty!403 tp_is_empty!405 tp!32056))))

(assert (=> b!47226 (= tp!32050 e!27233)))

(assert (= (and b!47226 ((_ is Cons!798) (minValue!531 (v!12531 (underlying!745 (v!12532 (underlying!746 thiss!42687))))))) b!47242))

(declare-fun b!47250 () Bool)

(declare-fun e!27238 () Bool)

(declare-fun tp!32064 () Bool)

(assert (=> b!47250 (= e!27238 (and tp_is_empty!403 tp_is_empty!405 tp!32064))))

(declare-fun e!27239 () Bool)

(declare-fun tp!32063 () Bool)

(declare-fun b!47249 () Bool)

(assert (=> b!47249 (= e!27239 (and tp_is_empty!403 tp_is_empty!405 tp!32063))))

(declare-fun condMapEmpty!1089 () Bool)

(declare-fun mapDefault!1089 () List!800)

(assert (=> mapNonEmpty!1086 (= condMapEmpty!1089 (= mapRest!1086 ((as const (Array (_ BitVec 32) List!800)) mapDefault!1089)))))

(declare-fun mapRes!1089 () Bool)

(assert (=> mapNonEmpty!1086 (= tp!32047 (and e!27238 mapRes!1089))))

(declare-fun mapIsEmpty!1089 () Bool)

(assert (=> mapIsEmpty!1089 mapRes!1089))

(declare-fun mapNonEmpty!1089 () Bool)

(declare-fun tp!32065 () Bool)

(assert (=> mapNonEmpty!1089 (= mapRes!1089 (and tp!32065 e!27239))))

(declare-fun mapValue!1089 () List!800)

(declare-fun mapKey!1089 () (_ BitVec 32))

(declare-fun mapRest!1089 () (Array (_ BitVec 32) List!800))

(assert (=> mapNonEmpty!1089 (= mapRest!1086 (store mapRest!1089 mapKey!1089 mapValue!1089))))

(assert (= (and mapNonEmpty!1086 condMapEmpty!1089) mapIsEmpty!1089))

(assert (= (and mapNonEmpty!1086 (not condMapEmpty!1089)) mapNonEmpty!1089))

(assert (= (and mapNonEmpty!1089 ((_ is Cons!798) mapValue!1089)) b!47249))

(assert (= (and mapNonEmpty!1086 ((_ is Cons!798) mapDefault!1089)) b!47250))

(declare-fun m!21440 () Bool)

(assert (=> mapNonEmpty!1089 m!21440))

(declare-fun b!47251 () Bool)

(declare-fun tp!32066 () Bool)

(declare-fun e!27240 () Bool)

(assert (=> b!47251 (= e!27240 (and tp_is_empty!403 tp_is_empty!405 tp!32066))))

(assert (=> mapNonEmpty!1086 (= tp!32048 e!27240)))

(assert (= (and mapNonEmpty!1086 ((_ is Cons!798) mapValue!1086)) b!47251))

(declare-fun tp!32067 () Bool)

(declare-fun b!47252 () Bool)

(declare-fun e!27241 () Bool)

(assert (=> b!47252 (= e!27241 (and tp_is_empty!403 tp_is_empty!405 tp!32067))))

(assert (=> b!47224 (= tp!32049 e!27241)))

(assert (= (and b!47224 ((_ is Cons!798) mapDefault!1086)) b!47252))

(check-sat (not mapNonEmpty!1089) (not b!47251) (not d!5665) (not b!47235) (not d!5667) (not b!47249) (not b_next!1277) (not b!47242) (not b!47236) b_and!1313 (not b!47241) (not b!47250) b_and!1311 tp_is_empty!403 tp_is_empty!405 (not b_next!1279) (not b!47252))
(check-sat b_and!1313 b_and!1311 (not b_next!1277) (not b_next!1279))
