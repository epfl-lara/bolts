; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268212 () Bool)

(assert start!268212)

(declare-fun b!2772453 () Bool)

(declare-fun b_free!78213 () Bool)

(declare-fun b_next!78917 () Bool)

(assert (=> b!2772453 (= b_free!78213 (not b_next!78917))))

(declare-fun tp!876467 () Bool)

(declare-fun b_and!202951 () Bool)

(assert (=> b!2772453 (= tp!876467 b_and!202951)))

(declare-fun b!2772445 () Bool)

(declare-fun b_free!78215 () Bool)

(declare-fun b_next!78919 () Bool)

(assert (=> b!2772445 (= b_free!78215 (not b_next!78919))))

(declare-fun tp!876477 () Bool)

(declare-fun b_and!202953 () Bool)

(assert (=> b!2772445 (= tp!876477 b_and!202953)))

(declare-fun b!2772440 () Bool)

(declare-fun b_free!78217 () Bool)

(declare-fun b_next!78921 () Bool)

(assert (=> b!2772440 (= b_free!78217 (not b_next!78921))))

(declare-fun tp!876473 () Bool)

(declare-fun b_and!202955 () Bool)

(assert (=> b!2772440 (= tp!876473 b_and!202955)))

(declare-fun b!2772443 () Bool)

(declare-fun b_free!78219 () Bool)

(declare-fun b_next!78923 () Bool)

(assert (=> b!2772443 (= b_free!78219 (not b_next!78923))))

(declare-fun tp!876463 () Bool)

(declare-fun b_and!202957 () Bool)

(assert (=> b!2772443 (= tp!876463 b_and!202957)))

(declare-fun b!2772437 () Bool)

(declare-fun e!1748126 () Bool)

(declare-fun e!1748129 () Bool)

(assert (=> b!2772437 (= e!1748126 e!1748129)))

(declare-fun b!2772439 () Bool)

(declare-fun res!1159057 () Bool)

(declare-fun e!1748117 () Bool)

(assert (=> b!2772439 (=> (not res!1159057) (not e!1748117))))

(declare-datatypes ((C!16320 0))(
  ( (C!16321 (val!10094 Int)) )
))
(declare-datatypes ((Regex!8081 0))(
  ( (ElementMatch!8081 (c!450263 C!16320)) (Concat!13169 (regOne!16674 Regex!8081) (regTwo!16674 Regex!8081)) (EmptyExpr!8081) (Star!8081 (reg!8410 Regex!8081)) (EmptyLang!8081) (Union!8081 (regOne!16675 Regex!8081) (regTwo!16675 Regex!8081)) )
))
(declare-datatypes ((List!32088 0))(
  ( (Nil!31988) (Cons!31988 (h!37408 Regex!8081) (t!228216 List!32088)) )
))
(declare-datatypes ((Context!4598 0))(
  ( (Context!4599 (exprs!2799 List!32088)) )
))
(declare-datatypes ((array!13423 0))(
  ( (array!13424 (arr!5984 (Array (_ BitVec 32) (_ BitVec 64))) (size!24766 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!4816 0))(
  ( (tuple3!4817 (_1!18948 Regex!8081) (_2!18948 Context!4598) (_3!2878 C!16320)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32140 0))(
  ( (tuple2!32141 (_1!18949 tuple3!4816) (_2!18949 (InoxSet Context!4598))) )
))
(declare-datatypes ((List!32089 0))(
  ( (Nil!31989) (Cons!31989 (h!37409 tuple2!32140) (t!228217 List!32089)) )
))
(declare-datatypes ((array!13425 0))(
  ( (array!13426 (arr!5985 (Array (_ BitVec 32) List!32089)) (size!24767 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7540 0))(
  ( (LongMapFixedSize!7541 (defaultEntry!4155 Int) (mask!9547 (_ BitVec 32)) (extraKeys!4019 (_ BitVec 32)) (zeroValue!4029 List!32089) (minValue!4029 List!32089) (_size!7583 (_ BitVec 32)) (_keys!4070 array!13423) (_values!4051 array!13425) (_vacant!3831 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14889 0))(
  ( (Cell!14890 (v!33596 LongMapFixedSize!7540)) )
))
(declare-datatypes ((MutLongMap!3770 0))(
  ( (LongMap!3770 (underlying!7743 Cell!14889)) (MutLongMapExt!3769 (__x!20960 Int)) )
))
(declare-datatypes ((Cell!14891 0))(
  ( (Cell!14892 (v!33597 MutLongMap!3770)) )
))
(declare-datatypes ((Hashable!3686 0))(
  ( (HashableExt!3685 (__x!20961 Int)) )
))
(declare-datatypes ((MutableMap!3676 0))(
  ( (MutableMapExt!3675 (__x!20962 Int)) (HashMap!3676 (underlying!7744 Cell!14891) (hashF!5718 Hashable!3686) (_size!7584 (_ BitVec 32)) (defaultValue!3847 Int)) )
))
(declare-datatypes ((CacheDown!2502 0))(
  ( (CacheDown!2503 (cache!3819 MutableMap!3676)) )
))
(declare-fun cacheDown!939 () CacheDown!2502)

(declare-fun valid!2942 (CacheDown!2502) Bool)

(assert (=> b!2772439 (= res!1159057 (valid!2942 cacheDown!939))))

(declare-fun e!1748123 () Bool)

(declare-fun e!1748119 () Bool)

(assert (=> b!2772440 (= e!1748123 (and e!1748119 tp!876473))))

(declare-fun b!2772441 () Bool)

(declare-fun e!1748115 () Bool)

(assert (=> b!2772441 (= e!1748115 e!1748123)))

(declare-fun b!2772442 () Bool)

(declare-fun e!1748127 () Bool)

(declare-fun tp!876472 () Bool)

(declare-fun mapRes!17216 () Bool)

(assert (=> b!2772442 (= e!1748127 (and tp!876472 mapRes!17216))))

(declare-fun condMapEmpty!17216 () Bool)

(declare-datatypes ((tuple2!32142 0))(
  ( (tuple2!32143 (_1!18950 Context!4598) (_2!18950 C!16320)) )
))
(declare-datatypes ((tuple2!32144 0))(
  ( (tuple2!32145 (_1!18951 tuple2!32142) (_2!18951 (InoxSet Context!4598))) )
))
(declare-datatypes ((List!32090 0))(
  ( (Nil!31990) (Cons!31990 (h!37410 tuple2!32144) (t!228218 List!32090)) )
))
(declare-datatypes ((Hashable!3687 0))(
  ( (HashableExt!3686 (__x!20963 Int)) )
))
(declare-datatypes ((array!13427 0))(
  ( (array!13428 (arr!5986 (Array (_ BitVec 32) List!32090)) (size!24768 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7542 0))(
  ( (LongMapFixedSize!7543 (defaultEntry!4156 Int) (mask!9548 (_ BitVec 32)) (extraKeys!4020 (_ BitVec 32)) (zeroValue!4030 List!32090) (minValue!4030 List!32090) (_size!7585 (_ BitVec 32)) (_keys!4071 array!13423) (_values!4052 array!13427) (_vacant!3832 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14893 0))(
  ( (Cell!14894 (v!33598 LongMapFixedSize!7542)) )
))
(declare-datatypes ((MutLongMap!3771 0))(
  ( (LongMap!3771 (underlying!7745 Cell!14893)) (MutLongMapExt!3770 (__x!20964 Int)) )
))
(declare-datatypes ((Cell!14895 0))(
  ( (Cell!14896 (v!33599 MutLongMap!3771)) )
))
(declare-datatypes ((MutableMap!3677 0))(
  ( (MutableMapExt!3676 (__x!20965 Int)) (HashMap!3677 (underlying!7746 Cell!14895) (hashF!5719 Hashable!3687) (_size!7586 (_ BitVec 32)) (defaultValue!3848 Int)) )
))
(declare-datatypes ((CacheUp!2382 0))(
  ( (CacheUp!2383 (cache!3820 MutableMap!3677)) )
))
(declare-fun cacheUp!820 () CacheUp!2382)

(declare-fun mapDefault!17215 () List!32090)

(assert (=> b!2772442 (= condMapEmpty!17216 (= (arr!5986 (_values!4052 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32090)) mapDefault!17215)))))

(declare-fun mapNonEmpty!17215 () Bool)

(declare-fun mapRes!17215 () Bool)

(declare-fun tp!876469 () Bool)

(declare-fun tp!876468 () Bool)

(assert (=> mapNonEmpty!17215 (= mapRes!17215 (and tp!876469 tp!876468))))

(declare-fun mapKey!17215 () (_ BitVec 32))

(declare-fun mapValue!17215 () List!32089)

(declare-fun mapRest!17216 () (Array (_ BitVec 32) List!32089))

(assert (=> mapNonEmpty!17215 (= (arr!5985 (_values!4051 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939))))))) (store mapRest!17216 mapKey!17215 mapValue!17215))))

(declare-fun tp!876475 () Bool)

(declare-fun tp!876470 () Bool)

(declare-fun array_inv!4282 (array!13423) Bool)

(declare-fun array_inv!4283 (array!13427) Bool)

(assert (=> b!2772443 (= e!1748129 (and tp!876463 tp!876475 tp!876470 (array_inv!4282 (_keys!4071 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820))))))) (array_inv!4283 (_values!4052 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820))))))) e!1748127))))

(declare-fun b!2772444 () Bool)

(declare-fun e!1748130 () Bool)

(declare-datatypes ((List!32091 0))(
  ( (Nil!31991) (Cons!31991 (h!37411 C!16320) (t!228219 List!32091)) )
))
(declare-datatypes ((IArray!19929 0))(
  ( (IArray!19930 (innerList!10022 List!32091)) )
))
(declare-datatypes ((Conc!9962 0))(
  ( (Node!9962 (left!24388 Conc!9962) (right!24718 Conc!9962) (csize!20154 Int) (cheight!10173 Int)) (Leaf!15171 (xs!13072 IArray!19929) (csize!20155 Int)) (Empty!9962) )
))
(declare-datatypes ((BalanceConc!19538 0))(
  ( (BalanceConc!19539 (c!450264 Conc!9962)) )
))
(declare-fun input!5495 () BalanceConc!19538)

(declare-fun tp!876474 () Bool)

(declare-fun inv!43438 (Conc!9962) Bool)

(assert (=> b!2772444 (= e!1748130 (and (inv!43438 (c!450264 input!5495)) tp!876474))))

(declare-fun mapIsEmpty!17215 () Bool)

(assert (=> mapIsEmpty!17215 mapRes!17215))

(declare-fun mapIsEmpty!17216 () Bool)

(assert (=> mapIsEmpty!17216 mapRes!17216))

(declare-fun e!1748116 () Bool)

(declare-fun tp!876466 () Bool)

(declare-fun e!1748132 () Bool)

(declare-fun tp!876471 () Bool)

(declare-fun array_inv!4284 (array!13425) Bool)

(assert (=> b!2772445 (= e!1748132 (and tp!876477 tp!876466 tp!876471 (array_inv!4282 (_keys!4070 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939))))))) (array_inv!4284 (_values!4051 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939))))))) e!1748116))))

(declare-fun b!2772446 () Bool)

(declare-fun e!1748120 () Bool)

(declare-fun lt!988204 () MutLongMap!3771)

(get-info :version)

(assert (=> b!2772446 (= e!1748119 (and e!1748120 ((_ is LongMap!3771) lt!988204)))))

(assert (=> b!2772446 (= lt!988204 (v!33599 (underlying!7746 (cache!3820 cacheUp!820))))))

(declare-fun b!2772447 () Bool)

(declare-fun e!1748124 () Bool)

(declare-fun e!1748128 () Bool)

(assert (=> b!2772447 (= e!1748124 e!1748128)))

(declare-fun b!2772438 () Bool)

(assert (=> b!2772438 (= e!1748120 e!1748126)))

(declare-fun res!1159056 () Bool)

(assert (=> start!268212 (=> (not res!1159056) (not e!1748117))))

(declare-fun valid!2943 (CacheUp!2382) Bool)

(assert (=> start!268212 (= res!1159056 (valid!2943 cacheUp!820))))

(assert (=> start!268212 e!1748117))

(declare-fun inv!43439 (CacheUp!2382) Bool)

(assert (=> start!268212 (and (inv!43439 cacheUp!820) e!1748115)))

(declare-fun inv!43440 (CacheDown!2502) Bool)

(assert (=> start!268212 (and (inv!43440 cacheDown!939) e!1748124)))

(declare-fun inv!43441 (BalanceConc!19538) Bool)

(assert (=> start!268212 (and (inv!43441 input!5495) e!1748130)))

(declare-fun b!2772448 () Bool)

(declare-fun e!1748121 () Bool)

(declare-fun e!1748131 () Bool)

(assert (=> b!2772448 (= e!1748121 e!1748131)))

(declare-fun b!2772449 () Bool)

(declare-fun e!1748114 () Bool)

(declare-fun lt!988203 () MutLongMap!3770)

(assert (=> b!2772449 (= e!1748114 (and e!1748121 ((_ is LongMap!3770) lt!988203)))))

(assert (=> b!2772449 (= lt!988203 (v!33597 (underlying!7744 (cache!3819 cacheDown!939))))))

(declare-fun b!2772450 () Bool)

(declare-fun e!1748118 () Bool)

(declare-fun size!24769 (List!32091) Int)

(assert (=> b!2772450 (= e!1748118 (not (= 0 (size!24769 Nil!31991))))))

(declare-fun b!2772451 () Bool)

(assert (=> b!2772451 (= e!1748117 e!1748118)))

(declare-fun res!1159058 () Bool)

(assert (=> b!2772451 (=> (not res!1159058) (not e!1748118))))

(declare-fun lt!988205 () List!32091)

(declare-fun ++!7916 (List!32091 List!32091) List!32091)

(assert (=> b!2772451 (= res!1159058 (= (++!7916 Nil!31991 lt!988205) lt!988205))))

(declare-fun lt!988206 () Int)

(declare-fun size!24770 (BalanceConc!19538) Int)

(assert (=> b!2772451 (= lt!988206 (size!24770 input!5495))))

(declare-fun list!12075 (BalanceConc!19538) List!32091)

(assert (=> b!2772451 (= lt!988205 (list!12075 input!5495))))

(declare-fun b!2772452 () Bool)

(assert (=> b!2772452 (= e!1748131 e!1748132)))

(declare-fun mapNonEmpty!17216 () Bool)

(declare-fun tp!876476 () Bool)

(declare-fun tp!876464 () Bool)

(assert (=> mapNonEmpty!17216 (= mapRes!17216 (and tp!876476 tp!876464))))

(declare-fun mapKey!17216 () (_ BitVec 32))

(declare-fun mapValue!17216 () List!32090)

(declare-fun mapRest!17215 () (Array (_ BitVec 32) List!32090))

(assert (=> mapNonEmpty!17216 (= (arr!5986 (_values!4052 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820))))))) (store mapRest!17215 mapKey!17216 mapValue!17216))))

(assert (=> b!2772453 (= e!1748128 (and e!1748114 tp!876467))))

(declare-fun b!2772454 () Bool)

(declare-fun tp!876465 () Bool)

(assert (=> b!2772454 (= e!1748116 (and tp!876465 mapRes!17215))))

(declare-fun condMapEmpty!17215 () Bool)

(declare-fun mapDefault!17216 () List!32089)

(assert (=> b!2772454 (= condMapEmpty!17215 (= (arr!5985 (_values!4051 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32089)) mapDefault!17216)))))

(assert (= (and start!268212 res!1159056) b!2772439))

(assert (= (and b!2772439 res!1159057) b!2772451))

(assert (= (and b!2772451 res!1159058) b!2772450))

(assert (= (and b!2772442 condMapEmpty!17216) mapIsEmpty!17216))

(assert (= (and b!2772442 (not condMapEmpty!17216)) mapNonEmpty!17216))

(assert (= b!2772443 b!2772442))

(assert (= b!2772437 b!2772443))

(assert (= b!2772438 b!2772437))

(assert (= (and b!2772446 ((_ is LongMap!3771) (v!33599 (underlying!7746 (cache!3820 cacheUp!820))))) b!2772438))

(assert (= b!2772440 b!2772446))

(assert (= (and b!2772441 ((_ is HashMap!3677) (cache!3820 cacheUp!820))) b!2772440))

(assert (= start!268212 b!2772441))

(assert (= (and b!2772454 condMapEmpty!17215) mapIsEmpty!17215))

(assert (= (and b!2772454 (not condMapEmpty!17215)) mapNonEmpty!17215))

(assert (= b!2772445 b!2772454))

(assert (= b!2772452 b!2772445))

(assert (= b!2772448 b!2772452))

(assert (= (and b!2772449 ((_ is LongMap!3770) (v!33597 (underlying!7744 (cache!3819 cacheDown!939))))) b!2772448))

(assert (= b!2772453 b!2772449))

(assert (= (and b!2772447 ((_ is HashMap!3676) (cache!3819 cacheDown!939))) b!2772453))

(assert (= start!268212 b!2772447))

(assert (= start!268212 b!2772444))

(declare-fun m!3199441 () Bool)

(assert (=> b!2772444 m!3199441))

(declare-fun m!3199443 () Bool)

(assert (=> start!268212 m!3199443))

(declare-fun m!3199445 () Bool)

(assert (=> start!268212 m!3199445))

(declare-fun m!3199447 () Bool)

(assert (=> start!268212 m!3199447))

(declare-fun m!3199449 () Bool)

(assert (=> start!268212 m!3199449))

(declare-fun m!3199451 () Bool)

(assert (=> mapNonEmpty!17216 m!3199451))

(declare-fun m!3199453 () Bool)

(assert (=> b!2772439 m!3199453))

(declare-fun m!3199455 () Bool)

(assert (=> b!2772445 m!3199455))

(declare-fun m!3199457 () Bool)

(assert (=> b!2772445 m!3199457))

(declare-fun m!3199459 () Bool)

(assert (=> b!2772443 m!3199459))

(declare-fun m!3199461 () Bool)

(assert (=> b!2772443 m!3199461))

(declare-fun m!3199463 () Bool)

(assert (=> b!2772451 m!3199463))

(declare-fun m!3199465 () Bool)

(assert (=> b!2772451 m!3199465))

(declare-fun m!3199467 () Bool)

(assert (=> b!2772451 m!3199467))

(declare-fun m!3199469 () Bool)

(assert (=> mapNonEmpty!17215 m!3199469))

(declare-fun m!3199471 () Bool)

(assert (=> b!2772450 m!3199471))

(check-sat (not b_next!78923) (not b_next!78917) (not b!2772443) (not b_next!78921) (not b!2772454) (not b_next!78919) b_and!202951 (not mapNonEmpty!17216) (not b!2772444) (not mapNonEmpty!17215) (not b!2772445) b_and!202953 b_and!202955 b_and!202957 (not b!2772451) (not b!2772450) (not b!2772439) (not b!2772442) (not start!268212))
(check-sat (not b_next!78923) (not b_next!78917) (not b_next!78921) (not b_next!78919) b_and!202951 b_and!202953 b_and!202955 b_and!202957)
(get-model)

(declare-fun d!806259 () Bool)

(declare-fun validCacheMapUp!364 (MutableMap!3677) Bool)

(assert (=> d!806259 (= (valid!2943 cacheUp!820) (validCacheMapUp!364 (cache!3820 cacheUp!820)))))

(declare-fun bs!505205 () Bool)

(assert (= bs!505205 d!806259))

(declare-fun m!3199473 () Bool)

(assert (=> bs!505205 m!3199473))

(assert (=> start!268212 d!806259))

(declare-fun d!806261 () Bool)

(declare-fun res!1159061 () Bool)

(declare-fun e!1748135 () Bool)

(assert (=> d!806261 (=> (not res!1159061) (not e!1748135))))

(assert (=> d!806261 (= res!1159061 ((_ is HashMap!3677) (cache!3820 cacheUp!820)))))

(assert (=> d!806261 (= (inv!43439 cacheUp!820) e!1748135)))

(declare-fun b!2772457 () Bool)

(assert (=> b!2772457 (= e!1748135 (validCacheMapUp!364 (cache!3820 cacheUp!820)))))

(assert (= (and d!806261 res!1159061) b!2772457))

(assert (=> b!2772457 m!3199473))

(assert (=> start!268212 d!806261))

(declare-fun d!806263 () Bool)

(declare-fun res!1159064 () Bool)

(declare-fun e!1748138 () Bool)

(assert (=> d!806263 (=> (not res!1159064) (not e!1748138))))

(assert (=> d!806263 (= res!1159064 ((_ is HashMap!3676) (cache!3819 cacheDown!939)))))

(assert (=> d!806263 (= (inv!43440 cacheDown!939) e!1748138)))

(declare-fun b!2772460 () Bool)

(declare-fun validCacheMapDown!395 (MutableMap!3676) Bool)

(assert (=> b!2772460 (= e!1748138 (validCacheMapDown!395 (cache!3819 cacheDown!939)))))

(assert (= (and d!806263 res!1159064) b!2772460))

(declare-fun m!3199475 () Bool)

(assert (=> b!2772460 m!3199475))

(assert (=> start!268212 d!806263))

(declare-fun d!806265 () Bool)

(declare-fun isBalanced!3039 (Conc!9962) Bool)

(assert (=> d!806265 (= (inv!43441 input!5495) (isBalanced!3039 (c!450264 input!5495)))))

(declare-fun bs!505206 () Bool)

(assert (= bs!505206 d!806265))

(declare-fun m!3199477 () Bool)

(assert (=> bs!505206 m!3199477))

(assert (=> start!268212 d!806265))

(declare-fun d!806267 () Bool)

(declare-fun c!450267 () Bool)

(assert (=> d!806267 (= c!450267 ((_ is Node!9962) (c!450264 input!5495)))))

(declare-fun e!1748143 () Bool)

(assert (=> d!806267 (= (inv!43438 (c!450264 input!5495)) e!1748143)))

(declare-fun b!2772467 () Bool)

(declare-fun inv!43442 (Conc!9962) Bool)

(assert (=> b!2772467 (= e!1748143 (inv!43442 (c!450264 input!5495)))))

(declare-fun b!2772468 () Bool)

(declare-fun e!1748144 () Bool)

(assert (=> b!2772468 (= e!1748143 e!1748144)))

(declare-fun res!1159067 () Bool)

(assert (=> b!2772468 (= res!1159067 (not ((_ is Leaf!15171) (c!450264 input!5495))))))

(assert (=> b!2772468 (=> res!1159067 e!1748144)))

(declare-fun b!2772469 () Bool)

(declare-fun inv!43443 (Conc!9962) Bool)

(assert (=> b!2772469 (= e!1748144 (inv!43443 (c!450264 input!5495)))))

(assert (= (and d!806267 c!450267) b!2772467))

(assert (= (and d!806267 (not c!450267)) b!2772468))

(assert (= (and b!2772468 (not res!1159067)) b!2772469))

(declare-fun m!3199479 () Bool)

(assert (=> b!2772467 m!3199479))

(declare-fun m!3199481 () Bool)

(assert (=> b!2772469 m!3199481))

(assert (=> b!2772444 d!806267))

(declare-fun d!806269 () Bool)

(assert (=> d!806269 (= (valid!2942 cacheDown!939) (validCacheMapDown!395 (cache!3819 cacheDown!939)))))

(declare-fun bs!505207 () Bool)

(assert (= bs!505207 d!806269))

(assert (=> bs!505207 m!3199475))

(assert (=> b!2772439 d!806269))

(declare-fun d!806271 () Bool)

(assert (=> d!806271 (= (array_inv!4282 (_keys!4071 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820))))))) (bvsge (size!24766 (_keys!4071 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772443 d!806271))

(declare-fun d!806273 () Bool)

(assert (=> d!806273 (= (array_inv!4283 (_values!4052 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820))))))) (bvsge (size!24768 (_values!4052 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772443 d!806273))

(declare-fun b!2772481 () Bool)

(declare-fun e!1748150 () Bool)

(declare-fun lt!988209 () List!32091)

(assert (=> b!2772481 (= e!1748150 (or (not (= lt!988205 Nil!31991)) (= lt!988209 Nil!31991)))))

(declare-fun b!2772480 () Bool)

(declare-fun res!1159072 () Bool)

(assert (=> b!2772480 (=> (not res!1159072) (not e!1748150))))

(assert (=> b!2772480 (= res!1159072 (= (size!24769 lt!988209) (+ (size!24769 Nil!31991) (size!24769 lt!988205))))))

(declare-fun b!2772479 () Bool)

(declare-fun e!1748149 () List!32091)

(assert (=> b!2772479 (= e!1748149 (Cons!31991 (h!37411 Nil!31991) (++!7916 (t!228219 Nil!31991) lt!988205)))))

(declare-fun b!2772478 () Bool)

(assert (=> b!2772478 (= e!1748149 lt!988205)))

(declare-fun d!806275 () Bool)

(assert (=> d!806275 e!1748150))

(declare-fun res!1159073 () Bool)

(assert (=> d!806275 (=> (not res!1159073) (not e!1748150))))

(declare-fun content!4503 (List!32091) (InoxSet C!16320))

(assert (=> d!806275 (= res!1159073 (= (content!4503 lt!988209) ((_ map or) (content!4503 Nil!31991) (content!4503 lt!988205))))))

(assert (=> d!806275 (= lt!988209 e!1748149)))

(declare-fun c!450270 () Bool)

(assert (=> d!806275 (= c!450270 ((_ is Nil!31991) Nil!31991))))

(assert (=> d!806275 (= (++!7916 Nil!31991 lt!988205) lt!988209)))

(assert (= (and d!806275 c!450270) b!2772478))

(assert (= (and d!806275 (not c!450270)) b!2772479))

(assert (= (and d!806275 res!1159073) b!2772480))

(assert (= (and b!2772480 res!1159072) b!2772481))

(declare-fun m!3199483 () Bool)

(assert (=> b!2772480 m!3199483))

(assert (=> b!2772480 m!3199471))

(declare-fun m!3199485 () Bool)

(assert (=> b!2772480 m!3199485))

(declare-fun m!3199487 () Bool)

(assert (=> b!2772479 m!3199487))

(declare-fun m!3199489 () Bool)

(assert (=> d!806275 m!3199489))

(declare-fun m!3199491 () Bool)

(assert (=> d!806275 m!3199491))

(declare-fun m!3199493 () Bool)

(assert (=> d!806275 m!3199493))

(assert (=> b!2772451 d!806275))

(declare-fun d!806277 () Bool)

(declare-fun lt!988212 () Int)

(assert (=> d!806277 (= lt!988212 (size!24769 (list!12075 input!5495)))))

(declare-fun size!24771 (Conc!9962) Int)

(assert (=> d!806277 (= lt!988212 (size!24771 (c!450264 input!5495)))))

(assert (=> d!806277 (= (size!24770 input!5495) lt!988212)))

(declare-fun bs!505208 () Bool)

(assert (= bs!505208 d!806277))

(assert (=> bs!505208 m!3199467))

(assert (=> bs!505208 m!3199467))

(declare-fun m!3199495 () Bool)

(assert (=> bs!505208 m!3199495))

(declare-fun m!3199497 () Bool)

(assert (=> bs!505208 m!3199497))

(assert (=> b!2772451 d!806277))

(declare-fun d!806279 () Bool)

(declare-fun list!12076 (Conc!9962) List!32091)

(assert (=> d!806279 (= (list!12075 input!5495) (list!12076 (c!450264 input!5495)))))

(declare-fun bs!505209 () Bool)

(assert (= bs!505209 d!806279))

(declare-fun m!3199499 () Bool)

(assert (=> bs!505209 m!3199499))

(assert (=> b!2772451 d!806279))

(declare-fun d!806281 () Bool)

(assert (=> d!806281 (= (array_inv!4282 (_keys!4070 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939))))))) (bvsge (size!24766 (_keys!4070 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772445 d!806281))

(declare-fun d!806283 () Bool)

(assert (=> d!806283 (= (array_inv!4284 (_values!4051 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939))))))) (bvsge (size!24767 (_values!4051 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772445 d!806283))

(declare-fun d!806285 () Bool)

(declare-fun lt!988215 () Int)

(assert (=> d!806285 (>= lt!988215 0)))

(declare-fun e!1748153 () Int)

(assert (=> d!806285 (= lt!988215 e!1748153)))

(declare-fun c!450273 () Bool)

(assert (=> d!806285 (= c!450273 ((_ is Nil!31991) Nil!31991))))

(assert (=> d!806285 (= (size!24769 Nil!31991) lt!988215)))

(declare-fun b!2772486 () Bool)

(assert (=> b!2772486 (= e!1748153 0)))

(declare-fun b!2772487 () Bool)

(assert (=> b!2772487 (= e!1748153 (+ 1 (size!24769 (t!228219 Nil!31991))))))

(assert (= (and d!806285 c!450273) b!2772486))

(assert (= (and d!806285 (not c!450273)) b!2772487))

(declare-fun m!3199501 () Bool)

(assert (=> b!2772487 m!3199501))

(assert (=> b!2772450 d!806285))

(declare-fun tp_is_empty!14013 () Bool)

(declare-fun setRes!22836 () Bool)

(declare-fun e!1748166 () Bool)

(declare-fun tp!876498 () Bool)

(declare-fun e!1748167 () Bool)

(declare-fun mapValue!17219 () List!32090)

(declare-fun b!2772502 () Bool)

(declare-fun inv!43444 (Context!4598) Bool)

(assert (=> b!2772502 (= e!1748167 (and (inv!43444 (_1!18950 (_1!18951 (h!37410 mapValue!17219)))) e!1748166 tp_is_empty!14013 setRes!22836 tp!876498))))

(declare-fun condSetEmpty!22836 () Bool)

(assert (=> b!2772502 (= condSetEmpty!22836 (= (_2!18951 (h!37410 mapValue!17219)) ((as const (Array Context!4598 Bool)) false)))))

(declare-fun mapNonEmpty!17219 () Bool)

(declare-fun mapRes!17219 () Bool)

(declare-fun tp!876500 () Bool)

(assert (=> mapNonEmpty!17219 (= mapRes!17219 (and tp!876500 e!1748167))))

(declare-fun mapRest!17219 () (Array (_ BitVec 32) List!32090))

(declare-fun mapKey!17219 () (_ BitVec 32))

(assert (=> mapNonEmpty!17219 (= mapRest!17215 (store mapRest!17219 mapKey!17219 mapValue!17219))))

(declare-fun setRes!22835 () Bool)

(declare-fun tp!876502 () Bool)

(declare-fun setNonEmpty!22835 () Bool)

(declare-fun e!1748170 () Bool)

(declare-fun setElem!22835 () Context!4598)

(assert (=> setNonEmpty!22835 (= setRes!22835 (and tp!876502 (inv!43444 setElem!22835) e!1748170))))

(declare-fun mapDefault!17219 () List!32090)

(declare-fun setRest!22835 () (InoxSet Context!4598))

(assert (=> setNonEmpty!22835 (= (_2!18951 (h!37410 mapDefault!17219)) ((_ map or) (store ((as const (Array Context!4598 Bool)) false) setElem!22835 true) setRest!22835))))

(declare-fun condMapEmpty!17219 () Bool)

(assert (=> mapNonEmpty!17216 (= condMapEmpty!17219 (= mapRest!17215 ((as const (Array (_ BitVec 32) List!32090)) mapDefault!17219)))))

(declare-fun e!1748171 () Bool)

(assert (=> mapNonEmpty!17216 (= tp!876476 (and e!1748171 mapRes!17219))))

(declare-fun mapIsEmpty!17219 () Bool)

(assert (=> mapIsEmpty!17219 mapRes!17219))

(declare-fun b!2772503 () Bool)

(declare-fun e!1748169 () Bool)

(declare-fun tp!876503 () Bool)

(assert (=> b!2772503 (= e!1748169 tp!876503)))

(declare-fun e!1748168 () Bool)

(declare-fun tp!876499 () Bool)

(declare-fun b!2772504 () Bool)

(assert (=> b!2772504 (= e!1748171 (and (inv!43444 (_1!18950 (_1!18951 (h!37410 mapDefault!17219)))) e!1748168 tp_is_empty!14013 setRes!22835 tp!876499))))

(declare-fun condSetEmpty!22835 () Bool)

(assert (=> b!2772504 (= condSetEmpty!22835 (= (_2!18951 (h!37410 mapDefault!17219)) ((as const (Array Context!4598 Bool)) false)))))

(declare-fun b!2772505 () Bool)

(declare-fun tp!876497 () Bool)

(assert (=> b!2772505 (= e!1748166 tp!876497)))

(declare-fun setIsEmpty!22835 () Bool)

(assert (=> setIsEmpty!22835 setRes!22835))

(declare-fun setElem!22836 () Context!4598)

(declare-fun setNonEmpty!22836 () Bool)

(declare-fun tp!876501 () Bool)

(assert (=> setNonEmpty!22836 (= setRes!22836 (and tp!876501 (inv!43444 setElem!22836) e!1748169))))

(declare-fun setRest!22836 () (InoxSet Context!4598))

(assert (=> setNonEmpty!22836 (= (_2!18951 (h!37410 mapValue!17219)) ((_ map or) (store ((as const (Array Context!4598 Bool)) false) setElem!22836 true) setRest!22836))))

(declare-fun b!2772506 () Bool)

(declare-fun tp!876496 () Bool)

(assert (=> b!2772506 (= e!1748170 tp!876496)))

(declare-fun setIsEmpty!22836 () Bool)

(assert (=> setIsEmpty!22836 setRes!22836))

(declare-fun b!2772507 () Bool)

(declare-fun tp!876504 () Bool)

(assert (=> b!2772507 (= e!1748168 tp!876504)))

(assert (= (and mapNonEmpty!17216 condMapEmpty!17219) mapIsEmpty!17219))

(assert (= (and mapNonEmpty!17216 (not condMapEmpty!17219)) mapNonEmpty!17219))

(assert (= b!2772502 b!2772505))

(assert (= (and b!2772502 condSetEmpty!22836) setIsEmpty!22836))

(assert (= (and b!2772502 (not condSetEmpty!22836)) setNonEmpty!22836))

(assert (= setNonEmpty!22836 b!2772503))

(assert (= (and mapNonEmpty!17219 ((_ is Cons!31990) mapValue!17219)) b!2772502))

(assert (= b!2772504 b!2772507))

(assert (= (and b!2772504 condSetEmpty!22835) setIsEmpty!22835))

(assert (= (and b!2772504 (not condSetEmpty!22835)) setNonEmpty!22835))

(assert (= setNonEmpty!22835 b!2772506))

(assert (= (and mapNonEmpty!17216 ((_ is Cons!31990) mapDefault!17219)) b!2772504))

(declare-fun m!3199503 () Bool)

(assert (=> setNonEmpty!22836 m!3199503))

(declare-fun m!3199505 () Bool)

(assert (=> mapNonEmpty!17219 m!3199505))

(declare-fun m!3199507 () Bool)

(assert (=> setNonEmpty!22835 m!3199507))

(declare-fun m!3199509 () Bool)

(assert (=> b!2772502 m!3199509))

(declare-fun m!3199511 () Bool)

(assert (=> b!2772504 m!3199511))

(declare-fun e!1748178 () Bool)

(declare-fun b!2772516 () Bool)

(declare-fun setRes!22839 () Bool)

(declare-fun tp!876513 () Bool)

(declare-fun e!1748180 () Bool)

(assert (=> b!2772516 (= e!1748180 (and (inv!43444 (_1!18950 (_1!18951 (h!37410 mapValue!17216)))) e!1748178 tp_is_empty!14013 setRes!22839 tp!876513))))

(declare-fun condSetEmpty!22839 () Bool)

(assert (=> b!2772516 (= condSetEmpty!22839 (= (_2!18951 (h!37410 mapValue!17216)) ((as const (Array Context!4598 Bool)) false)))))

(declare-fun e!1748179 () Bool)

(declare-fun tp!876515 () Bool)

(declare-fun setNonEmpty!22839 () Bool)

(declare-fun setElem!22839 () Context!4598)

(assert (=> setNonEmpty!22839 (= setRes!22839 (and tp!876515 (inv!43444 setElem!22839) e!1748179))))

(declare-fun setRest!22839 () (InoxSet Context!4598))

(assert (=> setNonEmpty!22839 (= (_2!18951 (h!37410 mapValue!17216)) ((_ map or) (store ((as const (Array Context!4598 Bool)) false) setElem!22839 true) setRest!22839))))

(declare-fun b!2772517 () Bool)

(declare-fun tp!876516 () Bool)

(assert (=> b!2772517 (= e!1748178 tp!876516)))

(assert (=> mapNonEmpty!17216 (= tp!876464 e!1748180)))

(declare-fun setIsEmpty!22839 () Bool)

(assert (=> setIsEmpty!22839 setRes!22839))

(declare-fun b!2772518 () Bool)

(declare-fun tp!876514 () Bool)

(assert (=> b!2772518 (= e!1748179 tp!876514)))

(assert (= b!2772516 b!2772517))

(assert (= (and b!2772516 condSetEmpty!22839) setIsEmpty!22839))

(assert (= (and b!2772516 (not condSetEmpty!22839)) setNonEmpty!22839))

(assert (= setNonEmpty!22839 b!2772518))

(assert (= (and mapNonEmpty!17216 ((_ is Cons!31990) mapValue!17216)) b!2772516))

(declare-fun m!3199513 () Bool)

(assert (=> b!2772516 m!3199513))

(declare-fun m!3199515 () Bool)

(assert (=> setNonEmpty!22839 m!3199515))

(declare-fun e!1748185 () Bool)

(declare-fun tp!876525 () Bool)

(declare-fun tp!876524 () Bool)

(declare-fun b!2772527 () Bool)

(assert (=> b!2772527 (= e!1748185 (and (inv!43438 (left!24388 (c!450264 input!5495))) tp!876525 (inv!43438 (right!24718 (c!450264 input!5495))) tp!876524))))

(declare-fun b!2772529 () Bool)

(declare-fun e!1748186 () Bool)

(declare-fun tp!876523 () Bool)

(assert (=> b!2772529 (= e!1748186 tp!876523)))

(declare-fun b!2772528 () Bool)

(declare-fun inv!43445 (IArray!19929) Bool)

(assert (=> b!2772528 (= e!1748185 (and (inv!43445 (xs!13072 (c!450264 input!5495))) e!1748186))))

(assert (=> b!2772444 (= tp!876474 (and (inv!43438 (c!450264 input!5495)) e!1748185))))

(assert (= (and b!2772444 ((_ is Node!9962) (c!450264 input!5495))) b!2772527))

(assert (= b!2772528 b!2772529))

(assert (= (and b!2772444 ((_ is Leaf!15171) (c!450264 input!5495))) b!2772528))

(declare-fun m!3199517 () Bool)

(assert (=> b!2772527 m!3199517))

(declare-fun m!3199519 () Bool)

(assert (=> b!2772527 m!3199519))

(declare-fun m!3199521 () Bool)

(assert (=> b!2772528 m!3199521))

(assert (=> b!2772444 m!3199441))

(declare-fun e!1748187 () Bool)

(declare-fun e!1748189 () Bool)

(declare-fun tp!876526 () Bool)

(declare-fun setRes!22840 () Bool)

(declare-fun b!2772530 () Bool)

(assert (=> b!2772530 (= e!1748189 (and (inv!43444 (_1!18950 (_1!18951 (h!37410 (zeroValue!4030 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820)))))))))) e!1748187 tp_is_empty!14013 setRes!22840 tp!876526))))

(declare-fun condSetEmpty!22840 () Bool)

(assert (=> b!2772530 (= condSetEmpty!22840 (= (_2!18951 (h!37410 (zeroValue!4030 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820)))))))) ((as const (Array Context!4598 Bool)) false)))))

(declare-fun e!1748188 () Bool)

(declare-fun setElem!22840 () Context!4598)

(declare-fun setNonEmpty!22840 () Bool)

(declare-fun tp!876528 () Bool)

(assert (=> setNonEmpty!22840 (= setRes!22840 (and tp!876528 (inv!43444 setElem!22840) e!1748188))))

(declare-fun setRest!22840 () (InoxSet Context!4598))

(assert (=> setNonEmpty!22840 (= (_2!18951 (h!37410 (zeroValue!4030 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4598 Bool)) false) setElem!22840 true) setRest!22840))))

(declare-fun b!2772531 () Bool)

(declare-fun tp!876529 () Bool)

(assert (=> b!2772531 (= e!1748187 tp!876529)))

(assert (=> b!2772443 (= tp!876475 e!1748189)))

(declare-fun setIsEmpty!22840 () Bool)

(assert (=> setIsEmpty!22840 setRes!22840))

(declare-fun b!2772532 () Bool)

(declare-fun tp!876527 () Bool)

(assert (=> b!2772532 (= e!1748188 tp!876527)))

(assert (= b!2772530 b!2772531))

(assert (= (and b!2772530 condSetEmpty!22840) setIsEmpty!22840))

(assert (= (and b!2772530 (not condSetEmpty!22840)) setNonEmpty!22840))

(assert (= setNonEmpty!22840 b!2772532))

(assert (= (and b!2772443 ((_ is Cons!31990) (zeroValue!4030 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820)))))))) b!2772530))

(declare-fun m!3199523 () Bool)

(assert (=> b!2772530 m!3199523))

(declare-fun m!3199525 () Bool)

(assert (=> setNonEmpty!22840 m!3199525))

(declare-fun e!1748192 () Bool)

(declare-fun setRes!22841 () Bool)

(declare-fun e!1748190 () Bool)

(declare-fun tp!876530 () Bool)

(declare-fun b!2772533 () Bool)

(assert (=> b!2772533 (= e!1748192 (and (inv!43444 (_1!18950 (_1!18951 (h!37410 (minValue!4030 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820)))))))))) e!1748190 tp_is_empty!14013 setRes!22841 tp!876530))))

(declare-fun condSetEmpty!22841 () Bool)

(assert (=> b!2772533 (= condSetEmpty!22841 (= (_2!18951 (h!37410 (minValue!4030 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820)))))))) ((as const (Array Context!4598 Bool)) false)))))

(declare-fun tp!876532 () Bool)

(declare-fun setElem!22841 () Context!4598)

(declare-fun e!1748191 () Bool)

(declare-fun setNonEmpty!22841 () Bool)

(assert (=> setNonEmpty!22841 (= setRes!22841 (and tp!876532 (inv!43444 setElem!22841) e!1748191))))

(declare-fun setRest!22841 () (InoxSet Context!4598))

(assert (=> setNonEmpty!22841 (= (_2!18951 (h!37410 (minValue!4030 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4598 Bool)) false) setElem!22841 true) setRest!22841))))

(declare-fun b!2772534 () Bool)

(declare-fun tp!876533 () Bool)

(assert (=> b!2772534 (= e!1748190 tp!876533)))

(assert (=> b!2772443 (= tp!876470 e!1748192)))

(declare-fun setIsEmpty!22841 () Bool)

(assert (=> setIsEmpty!22841 setRes!22841))

(declare-fun b!2772535 () Bool)

(declare-fun tp!876531 () Bool)

(assert (=> b!2772535 (= e!1748191 tp!876531)))

(assert (= b!2772533 b!2772534))

(assert (= (and b!2772533 condSetEmpty!22841) setIsEmpty!22841))

(assert (= (and b!2772533 (not condSetEmpty!22841)) setNonEmpty!22841))

(assert (= setNonEmpty!22841 b!2772535))

(assert (= (and b!2772443 ((_ is Cons!31990) (minValue!4030 (v!33598 (underlying!7745 (v!33599 (underlying!7746 (cache!3820 cacheUp!820)))))))) b!2772533))

(declare-fun m!3199527 () Bool)

(assert (=> b!2772533 m!3199527))

(declare-fun m!3199529 () Bool)

(assert (=> setNonEmpty!22841 m!3199529))

(declare-fun b!2772550 () Bool)

(declare-fun e!1748207 () Bool)

(declare-fun tp!876564 () Bool)

(assert (=> b!2772550 (= e!1748207 tp!876564)))

(declare-fun setIsEmpty!22846 () Bool)

(declare-fun setRes!22847 () Bool)

(assert (=> setIsEmpty!22846 setRes!22847))

(declare-fun setIsEmpty!22847 () Bool)

(declare-fun setRes!22846 () Bool)

(assert (=> setIsEmpty!22847 setRes!22846))

(declare-fun mapNonEmpty!17222 () Bool)

(declare-fun mapRes!17222 () Bool)

(declare-fun tp!876565 () Bool)

(declare-fun e!1748206 () Bool)

(assert (=> mapNonEmpty!17222 (= mapRes!17222 (and tp!876565 e!1748206))))

(declare-fun mapValue!17222 () List!32089)

(declare-fun mapRest!17222 () (Array (_ BitVec 32) List!32089))

(declare-fun mapKey!17222 () (_ BitVec 32))

(assert (=> mapNonEmpty!17222 (= mapRest!17216 (store mapRest!17222 mapKey!17222 mapValue!17222))))

(declare-fun b!2772551 () Bool)

(declare-fun e!1748209 () Bool)

(declare-fun tp!876561 () Bool)

(assert (=> b!2772551 (= e!1748209 tp!876561)))

(declare-fun tp!876557 () Bool)

(declare-fun e!1748208 () Bool)

(declare-fun tp!876563 () Bool)

(declare-fun b!2772552 () Bool)

(declare-fun mapDefault!17222 () List!32089)

(assert (=> b!2772552 (= e!1748208 (and tp!876557 (inv!43444 (_2!18948 (_1!18949 (h!37409 mapDefault!17222)))) e!1748209 tp_is_empty!14013 setRes!22846 tp!876563))))

(declare-fun condSetEmpty!22847 () Bool)

(assert (=> b!2772552 (= condSetEmpty!22847 (= (_2!18949 (h!37409 mapDefault!17222)) ((as const (Array Context!4598 Bool)) false)))))

(declare-fun condMapEmpty!17222 () Bool)

(assert (=> mapNonEmpty!17215 (= condMapEmpty!17222 (= mapRest!17216 ((as const (Array (_ BitVec 32) List!32089)) mapDefault!17222)))))

(assert (=> mapNonEmpty!17215 (= tp!876469 (and e!1748208 mapRes!17222))))

(declare-fun tp!876560 () Bool)

(declare-fun setElem!22846 () Context!4598)

(declare-fun setNonEmpty!22846 () Bool)

(declare-fun e!1748205 () Bool)

(assert (=> setNonEmpty!22846 (= setRes!22846 (and tp!876560 (inv!43444 setElem!22846) e!1748205))))

(declare-fun setRest!22847 () (InoxSet Context!4598))

(assert (=> setNonEmpty!22846 (= (_2!18949 (h!37409 mapDefault!17222)) ((_ map or) (store ((as const (Array Context!4598 Bool)) false) setElem!22846 true) setRest!22847))))

(declare-fun b!2772553 () Bool)

(declare-fun tp!876562 () Bool)

(assert (=> b!2772553 (= e!1748205 tp!876562)))

(declare-fun mapIsEmpty!17222 () Bool)

(assert (=> mapIsEmpty!17222 mapRes!17222))

(declare-fun b!2772554 () Bool)

(declare-fun tp!876558 () Bool)

(declare-fun tp!876556 () Bool)

(assert (=> b!2772554 (= e!1748206 (and tp!876558 (inv!43444 (_2!18948 (_1!18949 (h!37409 mapValue!17222)))) e!1748207 tp_is_empty!14013 setRes!22847 tp!876556))))

(declare-fun condSetEmpty!22846 () Bool)

(assert (=> b!2772554 (= condSetEmpty!22846 (= (_2!18949 (h!37409 mapValue!17222)) ((as const (Array Context!4598 Bool)) false)))))

(declare-fun setElem!22847 () Context!4598)

(declare-fun setNonEmpty!22847 () Bool)

(declare-fun e!1748210 () Bool)

(declare-fun tp!876566 () Bool)

(assert (=> setNonEmpty!22847 (= setRes!22847 (and tp!876566 (inv!43444 setElem!22847) e!1748210))))

(declare-fun setRest!22846 () (InoxSet Context!4598))

(assert (=> setNonEmpty!22847 (= (_2!18949 (h!37409 mapValue!17222)) ((_ map or) (store ((as const (Array Context!4598 Bool)) false) setElem!22847 true) setRest!22846))))

(declare-fun b!2772555 () Bool)

(declare-fun tp!876559 () Bool)

(assert (=> b!2772555 (= e!1748210 tp!876559)))

(assert (= (and mapNonEmpty!17215 condMapEmpty!17222) mapIsEmpty!17222))

(assert (= (and mapNonEmpty!17215 (not condMapEmpty!17222)) mapNonEmpty!17222))

(assert (= b!2772554 b!2772550))

(assert (= (and b!2772554 condSetEmpty!22846) setIsEmpty!22846))

(assert (= (and b!2772554 (not condSetEmpty!22846)) setNonEmpty!22847))

(assert (= setNonEmpty!22847 b!2772555))

(assert (= (and mapNonEmpty!17222 ((_ is Cons!31989) mapValue!17222)) b!2772554))

(assert (= b!2772552 b!2772551))

(assert (= (and b!2772552 condSetEmpty!22847) setIsEmpty!22847))

(assert (= (and b!2772552 (not condSetEmpty!22847)) setNonEmpty!22846))

(assert (= setNonEmpty!22846 b!2772553))

(assert (= (and mapNonEmpty!17215 ((_ is Cons!31989) mapDefault!17222)) b!2772552))

(declare-fun m!3199531 () Bool)

(assert (=> b!2772552 m!3199531))

(declare-fun m!3199533 () Bool)

(assert (=> setNonEmpty!22847 m!3199533))

(declare-fun m!3199535 () Bool)

(assert (=> setNonEmpty!22846 m!3199535))

(declare-fun m!3199537 () Bool)

(assert (=> mapNonEmpty!17222 m!3199537))

(declare-fun m!3199539 () Bool)

(assert (=> b!2772554 m!3199539))

(declare-fun b!2772564 () Bool)

(declare-fun e!1748218 () Bool)

(declare-fun tp!876577 () Bool)

(assert (=> b!2772564 (= e!1748218 tp!876577)))

(declare-fun setIsEmpty!22850 () Bool)

(declare-fun setRes!22850 () Bool)

(assert (=> setIsEmpty!22850 setRes!22850))

(declare-fun setElem!22850 () Context!4598)

(declare-fun tp!876579 () Bool)

(declare-fun setNonEmpty!22850 () Bool)

(assert (=> setNonEmpty!22850 (= setRes!22850 (and tp!876579 (inv!43444 setElem!22850) e!1748218))))

(declare-fun setRest!22850 () (InoxSet Context!4598))

(assert (=> setNonEmpty!22850 (= (_2!18949 (h!37409 mapValue!17215)) ((_ map or) (store ((as const (Array Context!4598 Bool)) false) setElem!22850 true) setRest!22850))))

(declare-fun e!1748219 () Bool)

(declare-fun b!2772565 () Bool)

(declare-fun tp!876580 () Bool)

(declare-fun tp!876578 () Bool)

(declare-fun e!1748217 () Bool)

(assert (=> b!2772565 (= e!1748217 (and tp!876580 (inv!43444 (_2!18948 (_1!18949 (h!37409 mapValue!17215)))) e!1748219 tp_is_empty!14013 setRes!22850 tp!876578))))

(declare-fun condSetEmpty!22850 () Bool)

(assert (=> b!2772565 (= condSetEmpty!22850 (= (_2!18949 (h!37409 mapValue!17215)) ((as const (Array Context!4598 Bool)) false)))))

(declare-fun b!2772566 () Bool)

(declare-fun tp!876581 () Bool)

(assert (=> b!2772566 (= e!1748219 tp!876581)))

(assert (=> mapNonEmpty!17215 (= tp!876468 e!1748217)))

(assert (= b!2772565 b!2772566))

(assert (= (and b!2772565 condSetEmpty!22850) setIsEmpty!22850))

(assert (= (and b!2772565 (not condSetEmpty!22850)) setNonEmpty!22850))

(assert (= setNonEmpty!22850 b!2772564))

(assert (= (and mapNonEmpty!17215 ((_ is Cons!31989) mapValue!17215)) b!2772565))

(declare-fun m!3199541 () Bool)

(assert (=> setNonEmpty!22850 m!3199541))

(declare-fun m!3199543 () Bool)

(assert (=> b!2772565 m!3199543))

(declare-fun b!2772567 () Bool)

(declare-fun e!1748221 () Bool)

(declare-fun tp!876582 () Bool)

(assert (=> b!2772567 (= e!1748221 tp!876582)))

(declare-fun setIsEmpty!22851 () Bool)

(declare-fun setRes!22851 () Bool)

(assert (=> setIsEmpty!22851 setRes!22851))

(declare-fun setNonEmpty!22851 () Bool)

(declare-fun tp!876584 () Bool)

(declare-fun setElem!22851 () Context!4598)

(assert (=> setNonEmpty!22851 (= setRes!22851 (and tp!876584 (inv!43444 setElem!22851) e!1748221))))

(declare-fun setRest!22851 () (InoxSet Context!4598))

(assert (=> setNonEmpty!22851 (= (_2!18949 (h!37409 (zeroValue!4029 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4598 Bool)) false) setElem!22851 true) setRest!22851))))

(declare-fun tp!876585 () Bool)

(declare-fun tp!876583 () Bool)

(declare-fun e!1748220 () Bool)

(declare-fun b!2772568 () Bool)

(declare-fun e!1748222 () Bool)

(assert (=> b!2772568 (= e!1748220 (and tp!876585 (inv!43444 (_2!18948 (_1!18949 (h!37409 (zeroValue!4029 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939)))))))))) e!1748222 tp_is_empty!14013 setRes!22851 tp!876583))))

(declare-fun condSetEmpty!22851 () Bool)

(assert (=> b!2772568 (= condSetEmpty!22851 (= (_2!18949 (h!37409 (zeroValue!4029 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939)))))))) ((as const (Array Context!4598 Bool)) false)))))

(declare-fun b!2772569 () Bool)

(declare-fun tp!876586 () Bool)

(assert (=> b!2772569 (= e!1748222 tp!876586)))

(assert (=> b!2772445 (= tp!876466 e!1748220)))

(assert (= b!2772568 b!2772569))

(assert (= (and b!2772568 condSetEmpty!22851) setIsEmpty!22851))

(assert (= (and b!2772568 (not condSetEmpty!22851)) setNonEmpty!22851))

(assert (= setNonEmpty!22851 b!2772567))

(assert (= (and b!2772445 ((_ is Cons!31989) (zeroValue!4029 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939)))))))) b!2772568))

(declare-fun m!3199545 () Bool)

(assert (=> setNonEmpty!22851 m!3199545))

(declare-fun m!3199547 () Bool)

(assert (=> b!2772568 m!3199547))

(declare-fun b!2772570 () Bool)

(declare-fun e!1748224 () Bool)

(declare-fun tp!876587 () Bool)

(assert (=> b!2772570 (= e!1748224 tp!876587)))

(declare-fun setIsEmpty!22852 () Bool)

(declare-fun setRes!22852 () Bool)

(assert (=> setIsEmpty!22852 setRes!22852))

(declare-fun setNonEmpty!22852 () Bool)

(declare-fun tp!876589 () Bool)

(declare-fun setElem!22852 () Context!4598)

(assert (=> setNonEmpty!22852 (= setRes!22852 (and tp!876589 (inv!43444 setElem!22852) e!1748224))))

(declare-fun setRest!22852 () (InoxSet Context!4598))

(assert (=> setNonEmpty!22852 (= (_2!18949 (h!37409 (minValue!4029 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4598 Bool)) false) setElem!22852 true) setRest!22852))))

(declare-fun tp!876590 () Bool)

(declare-fun e!1748225 () Bool)

(declare-fun tp!876588 () Bool)

(declare-fun b!2772571 () Bool)

(declare-fun e!1748223 () Bool)

(assert (=> b!2772571 (= e!1748223 (and tp!876590 (inv!43444 (_2!18948 (_1!18949 (h!37409 (minValue!4029 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939)))))))))) e!1748225 tp_is_empty!14013 setRes!22852 tp!876588))))

(declare-fun condSetEmpty!22852 () Bool)

(assert (=> b!2772571 (= condSetEmpty!22852 (= (_2!18949 (h!37409 (minValue!4029 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939)))))))) ((as const (Array Context!4598 Bool)) false)))))

(declare-fun b!2772572 () Bool)

(declare-fun tp!876591 () Bool)

(assert (=> b!2772572 (= e!1748225 tp!876591)))

(assert (=> b!2772445 (= tp!876471 e!1748223)))

(assert (= b!2772571 b!2772572))

(assert (= (and b!2772571 condSetEmpty!22852) setIsEmpty!22852))

(assert (= (and b!2772571 (not condSetEmpty!22852)) setNonEmpty!22852))

(assert (= setNonEmpty!22852 b!2772570))

(assert (= (and b!2772445 ((_ is Cons!31989) (minValue!4029 (v!33596 (underlying!7743 (v!33597 (underlying!7744 (cache!3819 cacheDown!939)))))))) b!2772571))

(declare-fun m!3199549 () Bool)

(assert (=> setNonEmpty!22852 m!3199549))

(declare-fun m!3199551 () Bool)

(assert (=> b!2772571 m!3199551))

(declare-fun tp!876592 () Bool)

(declare-fun setRes!22853 () Bool)

(declare-fun e!1748228 () Bool)

(declare-fun e!1748226 () Bool)

(declare-fun b!2772573 () Bool)

(assert (=> b!2772573 (= e!1748228 (and (inv!43444 (_1!18950 (_1!18951 (h!37410 mapDefault!17215)))) e!1748226 tp_is_empty!14013 setRes!22853 tp!876592))))

(declare-fun condSetEmpty!22853 () Bool)

(assert (=> b!2772573 (= condSetEmpty!22853 (= (_2!18951 (h!37410 mapDefault!17215)) ((as const (Array Context!4598 Bool)) false)))))

(declare-fun e!1748227 () Bool)

(declare-fun setElem!22853 () Context!4598)

(declare-fun tp!876594 () Bool)

(declare-fun setNonEmpty!22853 () Bool)

(assert (=> setNonEmpty!22853 (= setRes!22853 (and tp!876594 (inv!43444 setElem!22853) e!1748227))))

(declare-fun setRest!22853 () (InoxSet Context!4598))

(assert (=> setNonEmpty!22853 (= (_2!18951 (h!37410 mapDefault!17215)) ((_ map or) (store ((as const (Array Context!4598 Bool)) false) setElem!22853 true) setRest!22853))))

(declare-fun b!2772574 () Bool)

(declare-fun tp!876595 () Bool)

(assert (=> b!2772574 (= e!1748226 tp!876595)))

(assert (=> b!2772442 (= tp!876472 e!1748228)))

(declare-fun setIsEmpty!22853 () Bool)

(assert (=> setIsEmpty!22853 setRes!22853))

(declare-fun b!2772575 () Bool)

(declare-fun tp!876593 () Bool)

(assert (=> b!2772575 (= e!1748227 tp!876593)))

(assert (= b!2772573 b!2772574))

(assert (= (and b!2772573 condSetEmpty!22853) setIsEmpty!22853))

(assert (= (and b!2772573 (not condSetEmpty!22853)) setNonEmpty!22853))

(assert (= setNonEmpty!22853 b!2772575))

(assert (= (and b!2772442 ((_ is Cons!31990) mapDefault!17215)) b!2772573))

(declare-fun m!3199553 () Bool)

(assert (=> b!2772573 m!3199553))

(declare-fun m!3199555 () Bool)

(assert (=> setNonEmpty!22853 m!3199555))

(declare-fun b!2772576 () Bool)

(declare-fun e!1748230 () Bool)

(declare-fun tp!876596 () Bool)

(assert (=> b!2772576 (= e!1748230 tp!876596)))

(declare-fun setIsEmpty!22854 () Bool)

(declare-fun setRes!22854 () Bool)

(assert (=> setIsEmpty!22854 setRes!22854))

(declare-fun setNonEmpty!22854 () Bool)

(declare-fun setElem!22854 () Context!4598)

(declare-fun tp!876598 () Bool)

(assert (=> setNonEmpty!22854 (= setRes!22854 (and tp!876598 (inv!43444 setElem!22854) e!1748230))))

(declare-fun setRest!22854 () (InoxSet Context!4598))

(assert (=> setNonEmpty!22854 (= (_2!18949 (h!37409 mapDefault!17216)) ((_ map or) (store ((as const (Array Context!4598 Bool)) false) setElem!22854 true) setRest!22854))))

(declare-fun e!1748229 () Bool)

(declare-fun tp!876599 () Bool)

(declare-fun b!2772577 () Bool)

(declare-fun tp!876597 () Bool)

(declare-fun e!1748231 () Bool)

(assert (=> b!2772577 (= e!1748229 (and tp!876599 (inv!43444 (_2!18948 (_1!18949 (h!37409 mapDefault!17216)))) e!1748231 tp_is_empty!14013 setRes!22854 tp!876597))))

(declare-fun condSetEmpty!22854 () Bool)

(assert (=> b!2772577 (= condSetEmpty!22854 (= (_2!18949 (h!37409 mapDefault!17216)) ((as const (Array Context!4598 Bool)) false)))))

(declare-fun b!2772578 () Bool)

(declare-fun tp!876600 () Bool)

(assert (=> b!2772578 (= e!1748231 tp!876600)))

(assert (=> b!2772454 (= tp!876465 e!1748229)))

(assert (= b!2772577 b!2772578))

(assert (= (and b!2772577 condSetEmpty!22854) setIsEmpty!22854))

(assert (= (and b!2772577 (not condSetEmpty!22854)) setNonEmpty!22854))

(assert (= setNonEmpty!22854 b!2772576))

(assert (= (and b!2772454 ((_ is Cons!31989) mapDefault!17216)) b!2772577))

(declare-fun m!3199557 () Bool)

(assert (=> setNonEmpty!22854 m!3199557))

(declare-fun m!3199559 () Bool)

(assert (=> b!2772577 m!3199559))

(check-sat (not b!2772565) (not b!2772550) (not b!2772569) (not b!2772571) tp_is_empty!14013 (not b!2772552) (not b_next!78923) (not b!2772527) (not b!2772554) (not b!2772528) (not b!2772564) (not b!2772553) b_and!202955 b_and!202957 (not b!2772572) (not b!2772567) (not b!2772531) (not b!2772479) (not setNonEmpty!22852) (not setNonEmpty!22840) (not b!2772502) (not b!2772457) (not setNonEmpty!22835) (not b!2772534) (not b_next!78917) (not setNonEmpty!22851) (not b!2772568) (not b!2772487) (not mapNonEmpty!17219) (not setNonEmpty!22853) (not b!2772518) (not b!2772533) (not d!806259) (not b_next!78921) (not b!2772573) (not d!806269) (not mapNonEmpty!17222) (not b!2772566) (not b!2772467) (not b!2772507) (not d!806279) (not b!2772503) (not b!2772532) (not b!2772535) (not b!2772555) (not b_next!78919) (not setNonEmpty!22850) (not setNonEmpty!22841) (not b!2772460) b_and!202951 (not b!2772516) (not b!2772551) (not b!2772578) (not b!2772575) (not b!2772506) (not setNonEmpty!22854) (not d!806275) (not setNonEmpty!22846) (not b!2772529) (not b!2772576) (not b!2772577) (not setNonEmpty!22839) (not b!2772517) (not d!806277) (not b!2772530) (not b!2772505) (not b!2772570) (not b!2772574) (not setNonEmpty!22847) (not b!2772444) (not b!2772480) (not b!2772504) (not setNonEmpty!22836) (not b!2772469) (not d!806265) b_and!202953)
(check-sat (not b_next!78923) (not b_next!78917) (not b_next!78921) (not b_next!78919) b_and!202951 b_and!202953 b_and!202955 b_and!202957)
