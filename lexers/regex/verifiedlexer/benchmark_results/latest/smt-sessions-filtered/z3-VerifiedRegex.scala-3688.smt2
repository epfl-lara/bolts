; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208458 () Bool)

(assert start!208458)

(declare-fun b!2149190 () Bool)

(declare-fun b_free!63461 () Bool)

(declare-fun b_next!64165 () Bool)

(assert (=> b!2149190 (= b_free!63461 (not b_next!64165))))

(declare-fun tp!667380 () Bool)

(declare-fun b_and!173061 () Bool)

(assert (=> b!2149190 (= tp!667380 b_and!173061)))

(declare-fun b!2149193 () Bool)

(declare-fun b_free!63463 () Bool)

(declare-fun b_next!64167 () Bool)

(assert (=> b!2149193 (= b_free!63463 (not b_next!64167))))

(declare-fun tp!667383 () Bool)

(declare-fun b_and!173063 () Bool)

(assert (=> b!2149193 (= tp!667383 b_and!173063)))

(declare-fun b!2149198 () Bool)

(assert (=> b!2149198 true))

(declare-fun mapNonEmpty!13592 () Bool)

(declare-fun mapRes!13592 () Bool)

(declare-fun tp!667384 () Bool)

(declare-fun tp!667387 () Bool)

(assert (=> mapNonEmpty!13592 (= mapRes!13592 (and tp!667384 tp!667387))))

(declare-fun mapKey!13592 () (_ BitVec 32))

(declare-datatypes ((C!11832 0))(
  ( (C!11833 (val!6902 Int)) )
))
(declare-datatypes ((Regex!5843 0))(
  ( (ElementMatch!5843 (c!341041 C!11832)) (Concat!10145 (regOne!12198 Regex!5843) (regTwo!12198 Regex!5843)) (EmptyExpr!5843) (Star!5843 (reg!6172 Regex!5843)) (EmptyLang!5843) (Union!5843 (regOne!12199 Regex!5843) (regTwo!12199 Regex!5843)) )
))
(declare-datatypes ((List!24689 0))(
  ( (Nil!24605) (Cons!24605 (h!30006 Regex!5843) (t!197229 List!24689)) )
))
(declare-datatypes ((Context!2826 0))(
  ( (Context!2827 (exprs!1913 List!24689)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3618 0))(
  ( (tuple3!3619 (_1!14502 (InoxSet Context!2826)) (_2!14502 Int) (_3!2279 Int)) )
))
(declare-datatypes ((tuple2!24446 0))(
  ( (tuple2!24447 (_1!14503 tuple3!3618) (_2!14503 Int)) )
))
(declare-datatypes ((List!24690 0))(
  ( (Nil!24606) (Cons!24606 (h!30007 tuple2!24446) (t!197230 List!24690)) )
))
(declare-fun mapValue!13592 () List!24690)

(declare-datatypes ((List!24691 0))(
  ( (Nil!24607) (Cons!24607 (h!30008 C!11832) (t!197231 List!24691)) )
))
(declare-datatypes ((array!9699 0))(
  ( (array!9700 (arr!4332 (Array (_ BitVec 32) (_ BitVec 64))) (size!19269 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2782 0))(
  ( (HashableExt!2781 (__x!16780 Int)) )
))
(declare-datatypes ((array!9701 0))(
  ( (array!9702 (arr!4333 (Array (_ BitVec 32) List!24690)) (size!19270 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5736 0))(
  ( (LongMapFixedSize!5737 (defaultEntry!3233 Int) (mask!7105 (_ BitVec 32)) (extraKeys!3116 (_ BitVec 32)) (zeroValue!3126 List!24690) (minValue!3126 List!24690) (_size!5787 (_ BitVec 32)) (_keys!3165 array!9699) (_values!3148 array!9701) (_vacant!2929 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11297 0))(
  ( (Cell!11298 (v!29177 LongMapFixedSize!5736)) )
))
(declare-datatypes ((MutLongMap!2868 0))(
  ( (LongMap!2868 (underlying!5931 Cell!11297)) (MutLongMapExt!2867 (__x!16781 Int)) )
))
(declare-datatypes ((Cell!11299 0))(
  ( (Cell!11300 (v!29178 MutLongMap!2868)) )
))
(declare-datatypes ((MutableMap!2782 0))(
  ( (MutableMapExt!2781 (__x!16782 Int)) (HashMap!2782 (underlying!5932 Cell!11299) (hashF!4705 Hashable!2782) (_size!5788 (_ BitVec 32)) (defaultValue!2944 Int)) )
))
(declare-datatypes ((IArray!15963 0))(
  ( (IArray!15964 (innerList!8039 List!24691)) )
))
(declare-datatypes ((Conc!7979 0))(
  ( (Node!7979 (left!18891 Conc!7979) (right!19221 Conc!7979) (csize!16188 Int) (cheight!8190 Int)) (Leaf!11668 (xs!10921 IArray!15963) (csize!16189 Int)) (Empty!7979) )
))
(declare-datatypes ((BalanceConc!15720 0))(
  ( (BalanceConc!15721 (c!341042 Conc!7979)) )
))
(declare-datatypes ((CacheFurthestNullable!922 0))(
  ( (CacheFurthestNullable!923 (cache!3163 MutableMap!2782) (totalInput!3230 BalanceConc!15720)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!922)

(declare-fun mapRest!13592 () (Array (_ BitVec 32) List!24690))

(assert (=> mapNonEmpty!13592 (= (arr!4333 (_values!3148 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))) (store mapRest!13592 mapKey!13592 mapValue!13592))))

(declare-fun setRes!17053 () Bool)

(declare-fun setElem!17053 () Context!2826)

(declare-fun setNonEmpty!17053 () Bool)

(declare-fun tp!667381 () Bool)

(declare-fun e!1374183 () Bool)

(declare-fun inv!32402 (Context!2826) Bool)

(assert (=> setNonEmpty!17053 (= setRes!17053 (and tp!667381 (inv!32402 setElem!17053) e!1374183))))

(declare-fun z!514 () (InoxSet Context!2826))

(declare-fun setRest!17053 () (InoxSet Context!2826))

(assert (=> setNonEmpty!17053 (= z!514 ((_ map or) (store ((as const (Array Context!2826 Bool)) false) setElem!17053 true) setRest!17053))))

(declare-fun b!2149186 () Bool)

(declare-fun tp!667388 () Bool)

(assert (=> b!2149186 (= e!1374183 tp!667388)))

(declare-fun b!2149187 () Bool)

(declare-fun e!1374182 () Bool)

(declare-fun e!1374184 () Bool)

(assert (=> b!2149187 (= e!1374182 e!1374184)))

(declare-fun b!2149188 () Bool)

(declare-fun e!1374187 () Bool)

(assert (=> b!2149188 (= e!1374184 e!1374187)))

(declare-fun e!1374176 () Bool)

(declare-fun e!1374174 () Bool)

(declare-fun b!2149189 () Bool)

(declare-fun e!1374178 () Bool)

(declare-fun inv!32403 (BalanceConc!15720) Bool)

(assert (=> b!2149189 (= e!1374178 (and e!1374174 (inv!32403 (totalInput!3230 thiss!29110)) e!1374176))))

(declare-fun tp!667379 () Bool)

(declare-fun e!1374179 () Bool)

(declare-fun tp!667378 () Bool)

(declare-fun array_inv!3106 (array!9699) Bool)

(declare-fun array_inv!3107 (array!9701) Bool)

(assert (=> b!2149190 (= e!1374187 (and tp!667380 tp!667379 tp!667378 (array_inv!3106 (_keys!3165 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))) (array_inv!3107 (_values!3148 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))) e!1374179))))

(declare-fun setIsEmpty!17053 () Bool)

(assert (=> setIsEmpty!17053 setRes!17053))

(declare-fun b!2149191 () Bool)

(declare-fun e!1374185 () Bool)

(declare-fun lt!800092 () MutLongMap!2868)

(get-info :version)

(assert (=> b!2149191 (= e!1374185 (and e!1374182 ((_ is LongMap!2868) lt!800092)))))

(assert (=> b!2149191 (= lt!800092 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))

(declare-fun res!926975 () Bool)

(declare-fun e!1374175 () Bool)

(assert (=> start!208458 (=> (not res!926975) (not e!1374175))))

(declare-fun lastNullablePos!91 () Int)

(declare-fun localTotalInput!13 () BalanceConc!15720)

(declare-fun from!952 () Int)

(assert (=> start!208458 (= res!926975 (and (= localTotalInput!13 (totalInput!3230 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208458 e!1374175))

(declare-fun condSetEmpty!17053 () Bool)

(assert (=> start!208458 (= condSetEmpty!17053 (= z!514 ((as const (Array Context!2826 Bool)) false)))))

(assert (=> start!208458 setRes!17053))

(assert (=> start!208458 true))

(declare-fun inv!32404 (CacheFurthestNullable!922) Bool)

(assert (=> start!208458 (and (inv!32404 thiss!29110) e!1374178)))

(declare-fun e!1374188 () Bool)

(assert (=> start!208458 (and (inv!32403 localTotalInput!13) e!1374188)))

(declare-fun b!2149192 () Bool)

(declare-fun tp!667386 () Bool)

(declare-fun inv!32405 (Conc!7979) Bool)

(assert (=> b!2149192 (= e!1374176 (and (inv!32405 (c!341042 (totalInput!3230 thiss!29110))) tp!667386))))

(assert (=> b!2149193 (= e!1374174 (and e!1374185 tp!667383))))

(declare-fun b!2149194 () Bool)

(declare-fun tp!667382 () Bool)

(assert (=> b!2149194 (= e!1374188 (and (inv!32405 (c!341042 localTotalInput!13)) tp!667382))))

(declare-fun b!2149195 () Bool)

(declare-fun res!926974 () Bool)

(assert (=> b!2149195 (=> (not res!926974) (not e!1374175))))

(declare-fun validCacheMapFurthestNullable!139 (MutableMap!2782 BalanceConc!15720) Bool)

(assert (=> b!2149195 (= res!926974 (validCacheMapFurthestNullable!139 (cache!3163 thiss!29110) (totalInput!3230 thiss!29110)))))

(declare-fun b!2149196 () Bool)

(declare-fun tp!667385 () Bool)

(assert (=> b!2149196 (= e!1374179 (and tp!667385 mapRes!13592))))

(declare-fun condMapEmpty!13592 () Bool)

(declare-fun mapDefault!13592 () List!24690)

(assert (=> b!2149196 (= condMapEmpty!13592 (= (arr!4333 (_values!3148 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24690)) mapDefault!13592)))))

(declare-fun b!2149197 () Bool)

(declare-fun e!1374186 () Bool)

(assert (=> b!2149197 (= e!1374175 (not e!1374186))))

(declare-fun res!926976 () Bool)

(assert (=> b!2149197 (=> res!926976 e!1374186)))

(declare-fun lt!800091 () tuple3!3618)

(declare-fun contains!4197 (MutableMap!2782 tuple3!3618) Bool)

(assert (=> b!2149197 (= res!926976 (not (contains!4197 (cache!3163 thiss!29110) lt!800091)))))

(assert (=> b!2149197 (= lt!800091 (tuple3!3619 z!514 from!952 lastNullablePos!91))))

(assert (=> b!2149197 (validCacheMapFurthestNullable!139 (cache!3163 thiss!29110) localTotalInput!13)))

(declare-fun e!1374177 () Bool)

(assert (=> b!2149198 (= e!1374186 e!1374177)))

(declare-fun res!926978 () Bool)

(assert (=> b!2149198 (=> res!926978 e!1374177)))

(assert (=> b!2149198 (= res!926978 (not ((_ is HashMap!2782) (cache!3163 thiss!29110))))))

(declare-fun validCacheMapFurthestNullableBody!18 (tuple2!24446 BalanceConc!15720) Bool)

(declare-fun apply!6008 (MutableMap!2782 tuple3!3618) Int)

(assert (=> b!2149198 (validCacheMapFurthestNullableBody!18 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)) localTotalInput!13)))

(declare-datatypes ((Unit!37779 0))(
  ( (Unit!37780) )
))
(declare-fun lt!800093 () Unit!37779)

(declare-fun lambda!80752 () Int)

(declare-fun lemmaForallPairsThenForLookup!2 (MutableMap!2782 tuple3!3618 Int) Unit!37779)

(assert (=> b!2149198 (= lt!800093 (lemmaForallPairsThenForLookup!2 (cache!3163 thiss!29110) lt!800091 lambda!80752))))

(declare-fun b!2149199 () Bool)

(declare-fun e!1374180 () Bool)

(assert (=> b!2149199 (= e!1374180 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun mapIsEmpty!13592 () Bool)

(assert (=> mapIsEmpty!13592 mapRes!13592))

(declare-fun b!2149200 () Bool)

(declare-fun valid!2217 (MutableMap!2782) Bool)

(assert (=> b!2149200 (= e!1374177 (valid!2217 (cache!3163 thiss!29110)))))

(declare-fun b!2149201 () Bool)

(declare-fun res!926979 () Bool)

(assert (=> b!2149201 (=> (not res!926979) (not e!1374175))))

(assert (=> b!2149201 (= res!926979 e!1374180)))

(declare-fun res!926977 () Bool)

(assert (=> b!2149201 (=> res!926977 e!1374180)))

(declare-fun nullableZipper!182 ((InoxSet Context!2826)) Bool)

(assert (=> b!2149201 (= res!926977 (not (nullableZipper!182 z!514)))))

(assert (= (and start!208458 res!926975) b!2149201))

(assert (= (and b!2149201 (not res!926977)) b!2149199))

(assert (= (and b!2149201 res!926979) b!2149195))

(assert (= (and b!2149195 res!926974) b!2149197))

(assert (= (and b!2149197 (not res!926976)) b!2149198))

(assert (= (and b!2149198 (not res!926978)) b!2149200))

(assert (= (and start!208458 condSetEmpty!17053) setIsEmpty!17053))

(assert (= (and start!208458 (not condSetEmpty!17053)) setNonEmpty!17053))

(assert (= setNonEmpty!17053 b!2149186))

(assert (= (and b!2149196 condMapEmpty!13592) mapIsEmpty!13592))

(assert (= (and b!2149196 (not condMapEmpty!13592)) mapNonEmpty!13592))

(assert (= b!2149190 b!2149196))

(assert (= b!2149188 b!2149190))

(assert (= b!2149187 b!2149188))

(assert (= (and b!2149191 ((_ is LongMap!2868) (v!29178 (underlying!5932 (cache!3163 thiss!29110))))) b!2149187))

(assert (= b!2149193 b!2149191))

(assert (= (and b!2149189 ((_ is HashMap!2782) (cache!3163 thiss!29110))) b!2149193))

(assert (= b!2149189 b!2149192))

(assert (= start!208458 b!2149189))

(assert (= start!208458 b!2149194))

(declare-fun m!2592073 () Bool)

(assert (=> b!2149194 m!2592073))

(declare-fun m!2592075 () Bool)

(assert (=> b!2149198 m!2592075))

(declare-fun m!2592077 () Bool)

(assert (=> b!2149198 m!2592077))

(declare-fun m!2592079 () Bool)

(assert (=> b!2149198 m!2592079))

(declare-fun m!2592081 () Bool)

(assert (=> mapNonEmpty!13592 m!2592081))

(declare-fun m!2592083 () Bool)

(assert (=> setNonEmpty!17053 m!2592083))

(declare-fun m!2592085 () Bool)

(assert (=> b!2149192 m!2592085))

(declare-fun m!2592087 () Bool)

(assert (=> b!2149189 m!2592087))

(declare-fun m!2592089 () Bool)

(assert (=> b!2149200 m!2592089))

(declare-fun m!2592091 () Bool)

(assert (=> b!2149190 m!2592091))

(declare-fun m!2592093 () Bool)

(assert (=> b!2149190 m!2592093))

(declare-fun m!2592095 () Bool)

(assert (=> start!208458 m!2592095))

(declare-fun m!2592097 () Bool)

(assert (=> start!208458 m!2592097))

(declare-fun m!2592099 () Bool)

(assert (=> b!2149195 m!2592099))

(declare-fun m!2592101 () Bool)

(assert (=> b!2149201 m!2592101))

(declare-fun m!2592103 () Bool)

(assert (=> b!2149197 m!2592103))

(declare-fun m!2592105 () Bool)

(assert (=> b!2149197 m!2592105))

(check-sat (not b!2149196) (not start!208458) (not b!2149190) b_and!173063 (not setNonEmpty!17053) (not b!2149200) (not b!2149186) (not b!2149192) (not b_next!64165) b_and!173061 (not b!2149194) (not b_next!64167) (not b!2149189) (not b!2149201) (not mapNonEmpty!13592) (not b!2149198) (not b!2149195) (not b!2149197))
(check-sat b_and!173063 b_and!173061 (not b_next!64165) (not b_next!64167))
(get-model)

(declare-fun d!645509 () Bool)

(declare-fun res!926982 () Bool)

(declare-fun e!1374191 () Bool)

(assert (=> d!645509 (=> (not res!926982) (not e!1374191))))

(assert (=> d!645509 (= res!926982 ((_ is HashMap!2782) (cache!3163 thiss!29110)))))

(assert (=> d!645509 (= (inv!32404 thiss!29110) e!1374191)))

(declare-fun b!2149206 () Bool)

(assert (=> b!2149206 (= e!1374191 (validCacheMapFurthestNullable!139 (cache!3163 thiss!29110) (totalInput!3230 thiss!29110)))))

(assert (= (and d!645509 res!926982) b!2149206))

(assert (=> b!2149206 m!2592099))

(assert (=> start!208458 d!645509))

(declare-fun d!645511 () Bool)

(declare-fun isBalanced!2474 (Conc!7979) Bool)

(assert (=> d!645511 (= (inv!32403 localTotalInput!13) (isBalanced!2474 (c!341042 localTotalInput!13)))))

(declare-fun bs!445531 () Bool)

(assert (= bs!445531 d!645511))

(declare-fun m!2592107 () Bool)

(assert (=> bs!445531 m!2592107))

(assert (=> start!208458 d!645511))

(declare-fun d!645513 () Bool)

(assert (=> d!645513 (= (array_inv!3106 (_keys!3165 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))) (bvsge (size!19269 (_keys!3165 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2149190 d!645513))

(declare-fun d!645515 () Bool)

(assert (=> d!645515 (= (array_inv!3107 (_values!3148 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))) (bvsge (size!19270 (_values!3148 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2149190 d!645515))

(declare-fun d!645517 () Bool)

(assert (=> d!645517 (= (inv!32403 (totalInput!3230 thiss!29110)) (isBalanced!2474 (c!341042 (totalInput!3230 thiss!29110))))))

(declare-fun bs!445532 () Bool)

(assert (= bs!445532 d!645517))

(declare-fun m!2592109 () Bool)

(assert (=> bs!445532 m!2592109))

(assert (=> b!2149189 d!645517))

(declare-fun bm!128938 () Bool)

(declare-fun call!128945 () Bool)

(declare-datatypes ((Option!4977 0))(
  ( (None!4976) (Some!4976 (v!29179 tuple2!24446)) )
))
(declare-fun call!128947 () Option!4977)

(declare-fun isDefined!4088 (Option!4977) Bool)

(assert (=> bm!128938 (= call!128945 (isDefined!4088 call!128947))))

(declare-datatypes ((tuple2!24448 0))(
  ( (tuple2!24449 (_1!14504 (_ BitVec 64)) (_2!14504 List!24690)) )
))
(declare-datatypes ((List!24692 0))(
  ( (Nil!24608) (Cons!24608 (h!30009 tuple2!24448) (t!197234 List!24692)) )
))
(declare-datatypes ((ListLongMap!247 0))(
  ( (ListLongMap!248 (toList!1100 List!24692)) )
))
(declare-fun call!128946 () ListLongMap!247)

(declare-fun c!341054 () Bool)

(declare-fun lt!800137 () ListLongMap!247)

(declare-fun call!128944 () (_ BitVec 64))

(declare-fun bm!128939 () Bool)

(declare-fun call!128948 () List!24690)

(declare-fun apply!6009 (ListLongMap!247 (_ BitVec 64)) List!24690)

(assert (=> bm!128939 (= call!128948 (apply!6009 (ite c!341054 lt!800137 call!128946) call!128944))))

(declare-fun b!2149229 () Bool)

(declare-fun e!1374211 () Unit!37779)

(declare-fun Unit!37781 () Unit!37779)

(assert (=> b!2149229 (= e!1374211 Unit!37781)))

(declare-fun d!645519 () Bool)

(declare-fun lt!800136 () Bool)

(declare-datatypes ((ListMap!691 0))(
  ( (ListMap!692 (toList!1101 List!24690)) )
))
(declare-fun contains!4198 (ListMap!691 tuple3!3618) Bool)

(declare-fun map!4948 (MutableMap!2782) ListMap!691)

(assert (=> d!645519 (= lt!800136 (contains!4198 (map!4948 (cache!3163 thiss!29110)) lt!800091))))

(declare-fun e!1374208 () Bool)

(assert (=> d!645519 (= lt!800136 e!1374208)))

(declare-fun res!926991 () Bool)

(assert (=> d!645519 (=> (not res!926991) (not e!1374208))))

(declare-fun lt!800149 () (_ BitVec 64))

(declare-fun contains!4199 (MutLongMap!2868 (_ BitVec 64)) Bool)

(assert (=> d!645519 (= res!926991 (contains!4199 (v!29178 (underlying!5932 (cache!3163 thiss!29110))) lt!800149))))

(declare-fun lt!800138 () Unit!37779)

(declare-fun e!1374210 () Unit!37779)

(assert (=> d!645519 (= lt!800138 e!1374210)))

(declare-fun extractMap!74 (List!24692) ListMap!691)

(declare-fun map!4949 (MutLongMap!2868) ListLongMap!247)

(assert (=> d!645519 (= c!341054 (contains!4198 (extractMap!74 (toList!1100 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110)))))) lt!800091))))

(declare-fun lt!800135 () Unit!37779)

(declare-fun e!1374206 () Unit!37779)

(assert (=> d!645519 (= lt!800135 e!1374206)))

(declare-fun c!341053 () Bool)

(assert (=> d!645519 (= c!341053 (contains!4199 (v!29178 (underlying!5932 (cache!3163 thiss!29110))) lt!800149))))

(declare-fun hash!546 (Hashable!2782 tuple3!3618) (_ BitVec 64))

(assert (=> d!645519 (= lt!800149 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091))))

(assert (=> d!645519 (valid!2217 (cache!3163 thiss!29110))))

(assert (=> d!645519 (= (contains!4197 (cache!3163 thiss!29110) lt!800091) lt!800136)))

(declare-fun b!2149230 () Bool)

(declare-fun e!1374212 () Bool)

(assert (=> b!2149230 (= e!1374212 call!128945)))

(declare-fun b!2149231 () Bool)

(assert (=> b!2149231 false))

(declare-fun lt!800146 () Unit!37779)

(declare-fun lt!800152 () Unit!37779)

(assert (=> b!2149231 (= lt!800146 lt!800152)))

(declare-fun lt!800139 () ListLongMap!247)

(assert (=> b!2149231 (contains!4198 (extractMap!74 (toList!1100 lt!800139)) lt!800091)))

(declare-fun lemmaInLongMapThenInGenericMap!11 (ListLongMap!247 tuple3!3618 Hashable!2782) Unit!37779)

(assert (=> b!2149231 (= lt!800152 (lemmaInLongMapThenInGenericMap!11 lt!800139 lt!800091 (hashF!4705 (cache!3163 thiss!29110))))))

(assert (=> b!2149231 (= lt!800139 call!128946)))

(declare-fun e!1374209 () Unit!37779)

(declare-fun Unit!37782 () Unit!37779)

(assert (=> b!2149231 (= e!1374209 Unit!37782)))

(declare-fun b!2149232 () Bool)

(declare-fun e!1374207 () Bool)

(assert (=> b!2149232 (= e!1374207 call!128945)))

(declare-fun bm!128940 () Bool)

(assert (=> bm!128940 (= call!128944 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091))))

(declare-fun bm!128941 () Bool)

(declare-fun getPair!11 (List!24690 tuple3!3618) Option!4977)

(assert (=> bm!128941 (= call!128947 (getPair!11 call!128948 lt!800091))))

(declare-fun b!2149233 () Bool)

(declare-fun Unit!37783 () Unit!37779)

(assert (=> b!2149233 (= e!1374209 Unit!37783)))

(declare-fun lambda!80755 () Int)

(declare-fun b!2149234 () Bool)

(declare-fun forallContained!758 (List!24692 Int tuple2!24448) Unit!37779)

(declare-fun apply!6010 (MutLongMap!2868 (_ BitVec 64)) List!24690)

(assert (=> b!2149234 (= e!1374206 (forallContained!758 (toList!1100 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))) lambda!80755 (tuple2!24449 lt!800149 (apply!6010 (v!29178 (underlying!5932 (cache!3163 thiss!29110))) lt!800149))))))

(declare-fun c!341051 () Bool)

(declare-fun contains!4200 (List!24692 tuple2!24448) Bool)

(assert (=> b!2149234 (= c!341051 (not (contains!4200 (toList!1100 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))) (tuple2!24449 lt!800149 (apply!6010 (v!29178 (underlying!5932 (cache!3163 thiss!29110))) lt!800149)))))))

(declare-fun lt!800143 () Unit!37779)

(assert (=> b!2149234 (= lt!800143 e!1374211)))

(declare-fun b!2149235 () Bool)

(declare-fun Unit!37784 () Unit!37779)

(assert (=> b!2149235 (= e!1374206 Unit!37784)))

(declare-fun bm!128942 () Bool)

(assert (=> bm!128942 (= call!128946 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110)))))))

(declare-fun b!2149236 () Bool)

(declare-fun lt!800140 () Unit!37779)

(assert (=> b!2149236 (= e!1374210 lt!800140)))

(assert (=> b!2149236 (= lt!800137 call!128946)))

(declare-fun lemmaInGenericMapThenInLongMap!11 (ListLongMap!247 tuple3!3618 Hashable!2782) Unit!37779)

(assert (=> b!2149236 (= lt!800140 (lemmaInGenericMapThenInLongMap!11 lt!800137 lt!800091 (hashF!4705 (cache!3163 thiss!29110))))))

(declare-fun res!926989 () Bool)

(declare-fun call!128943 () Bool)

(assert (=> b!2149236 (= res!926989 call!128943)))

(assert (=> b!2149236 (=> (not res!926989) (not e!1374212))))

(assert (=> b!2149236 e!1374212))

(declare-fun bm!128943 () Bool)

(declare-fun contains!4201 (ListLongMap!247 (_ BitVec 64)) Bool)

(assert (=> bm!128943 (= call!128943 (contains!4201 (ite c!341054 lt!800137 call!128946) call!128944))))

(declare-fun b!2149237 () Bool)

(assert (=> b!2149237 (= e!1374208 (isDefined!4088 (getPair!11 (apply!6010 (v!29178 (underlying!5932 (cache!3163 thiss!29110))) lt!800149) lt!800091)))))

(declare-fun b!2149238 () Bool)

(assert (=> b!2149238 (= e!1374210 e!1374209)))

(declare-fun res!926990 () Bool)

(assert (=> b!2149238 (= res!926990 call!128943)))

(assert (=> b!2149238 (=> (not res!926990) (not e!1374207))))

(declare-fun c!341052 () Bool)

(assert (=> b!2149238 (= c!341052 e!1374207)))

(declare-fun b!2149239 () Bool)

(assert (=> b!2149239 false))

(declare-fun lt!800142 () Unit!37779)

(declare-fun lt!800153 () Unit!37779)

(assert (=> b!2149239 (= lt!800142 lt!800153)))

(declare-fun lt!800148 () List!24692)

(declare-fun lt!800145 () List!24690)

(assert (=> b!2149239 (contains!4200 lt!800148 (tuple2!24449 lt!800149 lt!800145))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!12 (List!24692 (_ BitVec 64) List!24690) Unit!37779)

(assert (=> b!2149239 (= lt!800153 (lemmaGetValueByKeyImpliesContainsTuple!12 lt!800148 lt!800149 lt!800145))))

(assert (=> b!2149239 (= lt!800145 (apply!6010 (v!29178 (underlying!5932 (cache!3163 thiss!29110))) lt!800149))))

(assert (=> b!2149239 (= lt!800148 (toList!1100 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))))

(declare-fun lt!800147 () Unit!37779)

(declare-fun lt!800134 () Unit!37779)

(assert (=> b!2149239 (= lt!800147 lt!800134)))

(declare-fun lt!800150 () List!24692)

(declare-datatypes ((Option!4978 0))(
  ( (None!4977) (Some!4977 (v!29180 List!24690)) )
))
(declare-fun isDefined!4089 (Option!4978) Bool)

(declare-fun getValueByKey!43 (List!24692 (_ BitVec 64)) Option!4978)

(assert (=> b!2149239 (isDefined!4089 (getValueByKey!43 lt!800150 lt!800149))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!28 (List!24692 (_ BitVec 64)) Unit!37779)

(assert (=> b!2149239 (= lt!800134 (lemmaContainsKeyImpliesGetValueByKeyDefined!28 lt!800150 lt!800149))))

(assert (=> b!2149239 (= lt!800150 (toList!1100 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))))

(declare-fun lt!800144 () Unit!37779)

(declare-fun lt!800141 () Unit!37779)

(assert (=> b!2149239 (= lt!800144 lt!800141)))

(declare-fun lt!800151 () List!24692)

(declare-fun containsKey!47 (List!24692 (_ BitVec 64)) Bool)

(assert (=> b!2149239 (containsKey!47 lt!800151 lt!800149)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!12 (List!24692 (_ BitVec 64)) Unit!37779)

(assert (=> b!2149239 (= lt!800141 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!12 lt!800151 lt!800149))))

(assert (=> b!2149239 (= lt!800151 (toList!1100 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))))

(declare-fun Unit!37785 () Unit!37779)

(assert (=> b!2149239 (= e!1374211 Unit!37785)))

(assert (= (and d!645519 c!341053) b!2149234))

(assert (= (and d!645519 (not c!341053)) b!2149235))

(assert (= (and b!2149234 c!341051) b!2149239))

(assert (= (and b!2149234 (not c!341051)) b!2149229))

(assert (= (and d!645519 c!341054) b!2149236))

(assert (= (and d!645519 (not c!341054)) b!2149238))

(assert (= (and b!2149236 res!926989) b!2149230))

(assert (= (and b!2149238 res!926990) b!2149232))

(assert (= (and b!2149238 c!341052) b!2149231))

(assert (= (and b!2149238 (not c!341052)) b!2149233))

(assert (= (or b!2149236 b!2149238 b!2149232 b!2149231) bm!128942))

(assert (= (or b!2149236 b!2149230 b!2149238 b!2149232) bm!128940))

(assert (= (or b!2149230 b!2149232) bm!128939))

(assert (= (or b!2149236 b!2149238) bm!128943))

(assert (= (or b!2149230 b!2149232) bm!128941))

(assert (= (or b!2149230 b!2149232) bm!128938))

(assert (= (and d!645519 res!926991) b!2149237))

(declare-fun m!2592111 () Bool)

(assert (=> bm!128941 m!2592111))

(declare-fun m!2592113 () Bool)

(assert (=> bm!128938 m!2592113))

(declare-fun m!2592115 () Bool)

(assert (=> bm!128942 m!2592115))

(assert (=> b!2149234 m!2592115))

(declare-fun m!2592117 () Bool)

(assert (=> b!2149234 m!2592117))

(declare-fun m!2592119 () Bool)

(assert (=> b!2149234 m!2592119))

(declare-fun m!2592121 () Bool)

(assert (=> b!2149234 m!2592121))

(assert (=> b!2149237 m!2592117))

(assert (=> b!2149237 m!2592117))

(declare-fun m!2592123 () Bool)

(assert (=> b!2149237 m!2592123))

(assert (=> b!2149237 m!2592123))

(declare-fun m!2592125 () Bool)

(assert (=> b!2149237 m!2592125))

(declare-fun m!2592127 () Bool)

(assert (=> bm!128943 m!2592127))

(declare-fun m!2592129 () Bool)

(assert (=> d!645519 m!2592129))

(assert (=> d!645519 m!2592089))

(declare-fun m!2592131 () Bool)

(assert (=> d!645519 m!2592131))

(assert (=> d!645519 m!2592115))

(declare-fun m!2592133 () Bool)

(assert (=> d!645519 m!2592133))

(declare-fun m!2592135 () Bool)

(assert (=> d!645519 m!2592135))

(assert (=> d!645519 m!2592129))

(declare-fun m!2592137 () Bool)

(assert (=> d!645519 m!2592137))

(declare-fun m!2592139 () Bool)

(assert (=> d!645519 m!2592139))

(assert (=> d!645519 m!2592133))

(declare-fun m!2592141 () Bool)

(assert (=> bm!128939 m!2592141))

(declare-fun m!2592143 () Bool)

(assert (=> b!2149239 m!2592143))

(declare-fun m!2592145 () Bool)

(assert (=> b!2149239 m!2592145))

(declare-fun m!2592147 () Bool)

(assert (=> b!2149239 m!2592147))

(declare-fun m!2592149 () Bool)

(assert (=> b!2149239 m!2592149))

(assert (=> b!2149239 m!2592115))

(assert (=> b!2149239 m!2592117))

(declare-fun m!2592151 () Bool)

(assert (=> b!2149239 m!2592151))

(declare-fun m!2592153 () Bool)

(assert (=> b!2149239 m!2592153))

(assert (=> b!2149239 m!2592151))

(declare-fun m!2592155 () Bool)

(assert (=> b!2149239 m!2592155))

(declare-fun m!2592157 () Bool)

(assert (=> b!2149231 m!2592157))

(assert (=> b!2149231 m!2592157))

(declare-fun m!2592159 () Bool)

(assert (=> b!2149231 m!2592159))

(declare-fun m!2592161 () Bool)

(assert (=> b!2149231 m!2592161))

(declare-fun m!2592163 () Bool)

(assert (=> b!2149236 m!2592163))

(assert (=> bm!128940 m!2592131))

(assert (=> b!2149197 d!645519))

(declare-fun bs!445533 () Bool)

(declare-fun b!2149245 () Bool)

(assert (= bs!445533 (and b!2149245 b!2149198)))

(declare-fun lambda!80758 () Int)

(assert (=> bs!445533 (= lambda!80758 lambda!80752)))

(assert (=> b!2149245 true))

(declare-fun d!645521 () Bool)

(declare-fun res!926996 () Bool)

(declare-fun e!1374215 () Bool)

(assert (=> d!645521 (=> (not res!926996) (not e!1374215))))

(assert (=> d!645521 (= res!926996 (valid!2217 (cache!3163 thiss!29110)))))

(assert (=> d!645521 (= (validCacheMapFurthestNullable!139 (cache!3163 thiss!29110) localTotalInput!13) e!1374215)))

(declare-fun b!2149244 () Bool)

(declare-fun res!926997 () Bool)

(assert (=> b!2149244 (=> (not res!926997) (not e!1374215))))

(declare-fun invariantList!319 (List!24690) Bool)

(assert (=> b!2149244 (= res!926997 (invariantList!319 (toList!1101 (map!4948 (cache!3163 thiss!29110)))))))

(declare-fun forall!5019 (List!24690 Int) Bool)

(assert (=> b!2149245 (= e!1374215 (forall!5019 (toList!1101 (map!4948 (cache!3163 thiss!29110))) lambda!80758))))

(assert (= (and d!645521 res!926996) b!2149244))

(assert (= (and b!2149244 res!926997) b!2149245))

(assert (=> d!645521 m!2592089))

(assert (=> b!2149244 m!2592129))

(declare-fun m!2592166 () Bool)

(assert (=> b!2149244 m!2592166))

(assert (=> b!2149245 m!2592129))

(declare-fun m!2592168 () Bool)

(assert (=> b!2149245 m!2592168))

(assert (=> b!2149197 d!645521))

(declare-fun d!645523 () Bool)

(declare-fun res!927012 () Bool)

(declare-fun e!1374221 () Bool)

(assert (=> d!645523 (=> (not res!927012) (not e!1374221))))

(assert (=> d!645523 (= res!927012 (>= (_2!14502 (_1!14503 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)))) 0))))

(assert (=> d!645523 (= (validCacheMapFurthestNullableBody!18 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)) localTotalInput!13) e!1374221)))

(declare-fun b!2149256 () Bool)

(declare-fun furthestNullablePosition!107 ((InoxSet Context!2826) Int BalanceConc!15720 Int Int) Int)

(declare-fun size!19271 (BalanceConc!15720) Int)

(assert (=> b!2149256 (= e!1374221 (= (_2!14503 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091))) (furthestNullablePosition!107 (_1!14502 (_1!14503 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)))) (_2!14502 (_1!14503 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)))) localTotalInput!13 (size!19271 localTotalInput!13) (_3!2279 (_1!14503 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)))))))))

(declare-fun b!2149257 () Bool)

(declare-fun res!927009 () Bool)

(assert (=> b!2149257 (=> (not res!927009) (not e!1374221))))

(assert (=> b!2149257 (= res!927009 (and (>= (_3!2279 (_1!14503 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)))) (- 1)) (< (_3!2279 (_1!14503 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)))) (_2!14502 (_1!14503 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)))))))))

(declare-fun b!2149258 () Bool)

(declare-fun res!927008 () Bool)

(assert (=> b!2149258 (=> (not res!927008) (not e!1374221))))

(assert (=> b!2149258 (= res!927008 (<= (_2!14502 (_1!14503 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)))) (size!19271 localTotalInput!13)))))

(declare-fun b!2149259 () Bool)

(declare-fun e!1374220 () Bool)

(assert (=> b!2149259 (= e!1374220 (= (_3!2279 (_1!14503 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)))) (- (_2!14502 (_1!14503 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)))) 1)))))

(declare-fun b!2149260 () Bool)

(declare-fun res!927010 () Bool)

(assert (=> b!2149260 (=> (not res!927010) (not e!1374221))))

(assert (=> b!2149260 (= res!927010 e!1374220)))

(declare-fun res!927011 () Bool)

(assert (=> b!2149260 (=> res!927011 e!1374220)))

(assert (=> b!2149260 (= res!927011 (not (nullableZipper!182 (_1!14502 (_1!14503 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)))))))))

(assert (= (and d!645523 res!927012) b!2149258))

(assert (= (and b!2149258 res!927008) b!2149257))

(assert (= (and b!2149257 res!927009) b!2149260))

(assert (= (and b!2149260 (not res!927011)) b!2149259))

(assert (= (and b!2149260 res!927010) b!2149256))

(declare-fun m!2592170 () Bool)

(assert (=> b!2149256 m!2592170))

(assert (=> b!2149256 m!2592170))

(declare-fun m!2592172 () Bool)

(assert (=> b!2149256 m!2592172))

(assert (=> b!2149258 m!2592170))

(declare-fun m!2592174 () Bool)

(assert (=> b!2149260 m!2592174))

(assert (=> b!2149198 d!645523))

(declare-fun bs!445534 () Bool)

(declare-fun b!2149276 () Bool)

(assert (= bs!445534 (and b!2149276 b!2149234)))

(declare-fun lambda!80765 () Int)

(assert (=> bs!445534 (= lambda!80765 lambda!80755)))

(declare-fun b!2149273 () Bool)

(assert (=> b!2149273 false))

(declare-fun lt!800223 () Unit!37779)

(declare-fun lt!800236 () Unit!37779)

(assert (=> b!2149273 (= lt!800223 lt!800236)))

(declare-fun lt!800221 () List!24692)

(declare-fun lt!800242 () (_ BitVec 64))

(declare-fun lt!800237 () List!24690)

(assert (=> b!2149273 (contains!4200 lt!800221 (tuple2!24449 lt!800242 lt!800237))))

(assert (=> b!2149273 (= lt!800236 (lemmaGetValueByKeyImpliesContainsTuple!12 lt!800221 lt!800242 lt!800237))))

(assert (=> b!2149273 (= lt!800237 (apply!6010 (v!29178 (underlying!5932 (cache!3163 thiss!29110))) lt!800242))))

(assert (=> b!2149273 (= lt!800221 (toList!1100 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))))

(declare-fun lt!800241 () Unit!37779)

(declare-fun lt!800224 () Unit!37779)

(assert (=> b!2149273 (= lt!800241 lt!800224)))

(declare-fun lt!800217 () List!24692)

(assert (=> b!2149273 (isDefined!4089 (getValueByKey!43 lt!800217 lt!800242))))

(assert (=> b!2149273 (= lt!800224 (lemmaContainsKeyImpliesGetValueByKeyDefined!28 lt!800217 lt!800242))))

(assert (=> b!2149273 (= lt!800217 (toList!1100 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))))

(declare-fun e!1374229 () Unit!37779)

(declare-fun Unit!37786 () Unit!37779)

(assert (=> b!2149273 (= e!1374229 Unit!37786)))

(declare-fun b!2149274 () Bool)

(declare-fun Unit!37787 () Unit!37779)

(assert (=> b!2149274 (= e!1374229 Unit!37787)))

(declare-fun b!2149275 () Bool)

(declare-fun lt!800234 () Int)

(declare-fun e!1374228 () Bool)

(declare-datatypes ((Option!4979 0))(
  ( (None!4978) (Some!4978 (v!29181 Int)) )
))
(declare-fun get!7499 (Option!4979) Int)

(declare-fun getValueByKey!44 (List!24690 tuple3!3618) Option!4979)

(assert (=> b!2149275 (= e!1374228 (= lt!800234 (get!7499 (getValueByKey!44 (toList!1101 (map!4948 (cache!3163 thiss!29110))) lt!800091))))))

(declare-fun e!1374230 () Int)

(declare-fun get!7500 (Option!4977) tuple2!24446)

(assert (=> b!2149276 (= e!1374230 (_2!14503 (get!7500 (getPair!11 (apply!6010 (v!29178 (underlying!5932 (cache!3163 thiss!29110))) lt!800242) lt!800091))))))

(assert (=> b!2149276 (= lt!800242 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091))))

(declare-fun c!341062 () Bool)

(assert (=> b!2149276 (= c!341062 (not (contains!4200 (toList!1100 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))) (tuple2!24449 lt!800242 (apply!6010 (v!29178 (underlying!5932 (cache!3163 thiss!29110))) lt!800242)))))))

(declare-fun lt!800240 () Unit!37779)

(assert (=> b!2149276 (= lt!800240 e!1374229)))

(declare-fun lt!800225 () Unit!37779)

(assert (=> b!2149276 (= lt!800225 (forallContained!758 (toList!1100 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))) lambda!80765 (tuple2!24449 lt!800242 (apply!6010 (v!29178 (underlying!5932 (cache!3163 thiss!29110))) lt!800242))))))

(declare-fun lt!800231 () ListLongMap!247)

(assert (=> b!2149276 (= lt!800231 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110)))))))

(declare-fun lt!800218 () Unit!37779)

(declare-fun lemmaGetPairGetSameValueAsMap!6 (ListLongMap!247 tuple3!3618 Int Hashable!2782) Unit!37779)

(assert (=> b!2149276 (= lt!800218 (lemmaGetPairGetSameValueAsMap!6 lt!800231 lt!800091 (_2!14503 (get!7500 (getPair!11 (apply!6010 (v!29178 (underlying!5932 (cache!3163 thiss!29110))) lt!800242) lt!800091))) (hashF!4705 (cache!3163 thiss!29110))))))

(declare-fun lt!800230 () Unit!37779)

(declare-fun lemmaInGenMapThenLongMapContainsHash!6 (ListLongMap!247 tuple3!3618 Hashable!2782) Unit!37779)

(assert (=> b!2149276 (= lt!800230 (lemmaInGenMapThenLongMapContainsHash!6 lt!800231 lt!800091 (hashF!4705 (cache!3163 thiss!29110))))))

(assert (=> b!2149276 (contains!4201 lt!800231 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091))))

(declare-fun lt!800220 () Unit!37779)

(assert (=> b!2149276 (= lt!800220 lt!800230)))

(declare-fun lt!800214 () (_ BitVec 64))

(assert (=> b!2149276 (= lt!800214 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091))))

(declare-fun lt!800219 () List!24690)

(assert (=> b!2149276 (= lt!800219 (apply!6009 lt!800231 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091)))))

(declare-fun lt!800228 () Unit!37779)

(declare-fun lemmaGetValueImpliesTupleContained!7 (ListLongMap!247 (_ BitVec 64) List!24690) Unit!37779)

(assert (=> b!2149276 (= lt!800228 (lemmaGetValueImpliesTupleContained!7 lt!800231 lt!800214 lt!800219))))

(assert (=> b!2149276 (contains!4200 (toList!1100 lt!800231) (tuple2!24449 lt!800214 lt!800219))))

(declare-fun lt!800227 () Unit!37779)

(assert (=> b!2149276 (= lt!800227 lt!800228)))

(declare-fun lt!800226 () Unit!37779)

(assert (=> b!2149276 (= lt!800226 (forallContained!758 (toList!1100 lt!800231) lambda!80765 (tuple2!24449 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091) (apply!6009 lt!800231 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091)))))))

(declare-fun lt!800229 () Unit!37779)

(declare-fun lemmaInGenMapThenGetPairDefined!6 (ListLongMap!247 tuple3!3618 Hashable!2782) Unit!37779)

(assert (=> b!2149276 (= lt!800229 (lemmaInGenMapThenGetPairDefined!6 lt!800231 lt!800091 (hashF!4705 (cache!3163 thiss!29110))))))

(declare-fun lt!800233 () Unit!37779)

(assert (=> b!2149276 (= lt!800233 (lemmaInGenMapThenLongMapContainsHash!6 lt!800231 lt!800091 (hashF!4705 (cache!3163 thiss!29110))))))

(declare-fun lt!800232 () Unit!37779)

(assert (=> b!2149276 (= lt!800232 lt!800233)))

(declare-fun lt!800215 () (_ BitVec 64))

(assert (=> b!2149276 (= lt!800215 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091))))

(declare-fun lt!800239 () List!24690)

(assert (=> b!2149276 (= lt!800239 (apply!6009 lt!800231 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091)))))

(declare-fun lt!800235 () Unit!37779)

(assert (=> b!2149276 (= lt!800235 (lemmaGetValueImpliesTupleContained!7 lt!800231 lt!800215 lt!800239))))

(assert (=> b!2149276 (contains!4200 (toList!1100 lt!800231) (tuple2!24449 lt!800215 lt!800239))))

(declare-fun lt!800216 () Unit!37779)

(assert (=> b!2149276 (= lt!800216 lt!800235)))

(declare-fun lt!800238 () Unit!37779)

(assert (=> b!2149276 (= lt!800238 (forallContained!758 (toList!1100 lt!800231) lambda!80765 (tuple2!24449 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091) (apply!6009 lt!800231 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091)))))))

(assert (=> b!2149276 (isDefined!4088 (getPair!11 (apply!6009 lt!800231 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091)) lt!800091))))

(declare-fun lt!800243 () Unit!37779)

(assert (=> b!2149276 (= lt!800243 lt!800229)))

(assert (=> b!2149276 (= (_2!14503 (get!7500 (getPair!11 (apply!6009 lt!800231 (hash!546 (hashF!4705 (cache!3163 thiss!29110)) lt!800091)) lt!800091))) (get!7499 (getValueByKey!44 (toList!1101 (extractMap!74 (toList!1100 lt!800231))) lt!800091)))))

(declare-fun lt!800222 () Unit!37779)

(assert (=> b!2149276 (= lt!800222 lt!800218)))

(declare-fun d!645525 () Bool)

(assert (=> d!645525 e!1374228))

(declare-fun c!341063 () Bool)

(assert (=> d!645525 (= c!341063 (contains!4197 (cache!3163 thiss!29110) lt!800091))))

(assert (=> d!645525 (= lt!800234 e!1374230)))

(declare-fun c!341061 () Bool)

(assert (=> d!645525 (= c!341061 (not (contains!4197 (cache!3163 thiss!29110) lt!800091)))))

(assert (=> d!645525 (valid!2217 (cache!3163 thiss!29110))))

(assert (=> d!645525 (= (apply!6008 (cache!3163 thiss!29110) lt!800091) lt!800234)))

(declare-fun b!2149277 () Bool)

(declare-fun dynLambda!11388 (Int tuple3!3618) Int)

(assert (=> b!2149277 (= e!1374228 (= lt!800234 (dynLambda!11388 (defaultValue!2944 (cache!3163 thiss!29110)) lt!800091)))))

(declare-fun b!2149278 () Bool)

(assert (=> b!2149278 (= e!1374230 (dynLambda!11388 (defaultValue!2944 (cache!3163 thiss!29110)) lt!800091))))

(assert (= (and d!645525 c!341061) b!2149278))

(assert (= (and d!645525 (not c!341061)) b!2149276))

(assert (= (and b!2149276 c!341062) b!2149273))

(assert (= (and b!2149276 (not c!341062)) b!2149274))

(assert (= (and d!645525 c!341063) b!2149275))

(assert (= (and d!645525 (not c!341063)) b!2149277))

(declare-fun b_lambda!70781 () Bool)

(assert (=> (not b_lambda!70781) (not b!2149277)))

(declare-fun t!197233 () Bool)

(declare-fun tb!132293 () Bool)

(assert (=> (and b!2149193 (= (defaultValue!2944 (cache!3163 thiss!29110)) (defaultValue!2944 (cache!3163 thiss!29110))) t!197233) tb!132293))

(declare-fun result!159266 () Bool)

(assert (=> tb!132293 (= result!159266 true)))

(assert (=> b!2149277 t!197233))

(declare-fun b_and!173065 () Bool)

(assert (= b_and!173063 (and (=> t!197233 result!159266) b_and!173065)))

(declare-fun b_lambda!70783 () Bool)

(assert (=> (not b_lambda!70783) (not b!2149278)))

(assert (=> b!2149278 t!197233))

(declare-fun b_and!173067 () Bool)

(assert (= b_and!173065 (and (=> t!197233 result!159266) b_and!173067)))

(declare-fun m!2592176 () Bool)

(assert (=> b!2149276 m!2592176))

(declare-fun m!2592178 () Bool)

(assert (=> b!2149276 m!2592178))

(declare-fun m!2592180 () Bool)

(assert (=> b!2149276 m!2592180))

(declare-fun m!2592182 () Bool)

(assert (=> b!2149276 m!2592182))

(assert (=> b!2149276 m!2592131))

(declare-fun m!2592184 () Bool)

(assert (=> b!2149276 m!2592184))

(assert (=> b!2149276 m!2592178))

(declare-fun m!2592186 () Bool)

(assert (=> b!2149276 m!2592186))

(declare-fun m!2592188 () Bool)

(assert (=> b!2149276 m!2592188))

(assert (=> b!2149276 m!2592115))

(assert (=> b!2149276 m!2592188))

(declare-fun m!2592190 () Bool)

(assert (=> b!2149276 m!2592190))

(declare-fun m!2592192 () Bool)

(assert (=> b!2149276 m!2592192))

(assert (=> b!2149276 m!2592188))

(declare-fun m!2592194 () Bool)

(assert (=> b!2149276 m!2592194))

(declare-fun m!2592196 () Bool)

(assert (=> b!2149276 m!2592196))

(declare-fun m!2592198 () Bool)

(assert (=> b!2149276 m!2592198))

(assert (=> b!2149276 m!2592131))

(assert (=> b!2149276 m!2592186))

(declare-fun m!2592200 () Bool)

(assert (=> b!2149276 m!2592200))

(declare-fun m!2592202 () Bool)

(assert (=> b!2149276 m!2592202))

(declare-fun m!2592204 () Bool)

(assert (=> b!2149276 m!2592204))

(declare-fun m!2592206 () Bool)

(assert (=> b!2149276 m!2592206))

(assert (=> b!2149276 m!2592198))

(declare-fun m!2592208 () Bool)

(assert (=> b!2149276 m!2592208))

(assert (=> b!2149276 m!2592192))

(assert (=> b!2149276 m!2592204))

(declare-fun m!2592210 () Bool)

(assert (=> b!2149276 m!2592210))

(assert (=> b!2149276 m!2592131))

(declare-fun m!2592212 () Bool)

(assert (=> b!2149276 m!2592212))

(declare-fun m!2592214 () Bool)

(assert (=> b!2149276 m!2592214))

(declare-fun m!2592216 () Bool)

(assert (=> b!2149276 m!2592216))

(declare-fun m!2592218 () Bool)

(assert (=> b!2149278 m!2592218))

(declare-fun m!2592220 () Bool)

(assert (=> b!2149273 m!2592220))

(declare-fun m!2592222 () Bool)

(assert (=> b!2149273 m!2592222))

(declare-fun m!2592224 () Bool)

(assert (=> b!2149273 m!2592224))

(declare-fun m!2592226 () Bool)

(assert (=> b!2149273 m!2592226))

(assert (=> b!2149273 m!2592222))

(declare-fun m!2592228 () Bool)

(assert (=> b!2149273 m!2592228))

(assert (=> b!2149273 m!2592115))

(assert (=> b!2149273 m!2592192))

(assert (=> b!2149275 m!2592129))

(declare-fun m!2592230 () Bool)

(assert (=> b!2149275 m!2592230))

(assert (=> b!2149275 m!2592230))

(declare-fun m!2592232 () Bool)

(assert (=> b!2149275 m!2592232))

(assert (=> d!645525 m!2592103))

(assert (=> d!645525 m!2592089))

(assert (=> b!2149277 m!2592218))

(assert (=> b!2149198 d!645525))

(declare-fun d!645527 () Bool)

(declare-fun dynLambda!11389 (Int tuple2!24446) Bool)

(assert (=> d!645527 (dynLambda!11389 lambda!80752 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)))))

(declare-fun lt!800246 () Unit!37779)

(declare-fun choose!12702 (MutableMap!2782 tuple3!3618 Int) Unit!37779)

(assert (=> d!645527 (= lt!800246 (choose!12702 (cache!3163 thiss!29110) lt!800091 lambda!80752))))

(assert (=> d!645527 (valid!2217 (cache!3163 thiss!29110))))

(assert (=> d!645527 (= (lemmaForallPairsThenForLookup!2 (cache!3163 thiss!29110) lt!800091 lambda!80752) lt!800246)))

(declare-fun b_lambda!70785 () Bool)

(assert (=> (not b_lambda!70785) (not d!645527)))

(declare-fun bs!445535 () Bool)

(assert (= bs!445535 d!645527))

(assert (=> bs!445535 m!2592075))

(declare-fun m!2592234 () Bool)

(assert (=> bs!445535 m!2592234))

(declare-fun m!2592236 () Bool)

(assert (=> bs!445535 m!2592236))

(assert (=> bs!445535 m!2592089))

(assert (=> b!2149198 d!645527))

(declare-fun d!645529 () Bool)

(declare-fun lambda!80768 () Int)

(declare-fun forall!5020 (List!24689 Int) Bool)

(assert (=> d!645529 (= (inv!32402 setElem!17053) (forall!5020 (exprs!1913 setElem!17053) lambda!80768))))

(declare-fun bs!445536 () Bool)

(assert (= bs!445536 d!645529))

(declare-fun m!2592238 () Bool)

(assert (=> bs!445536 m!2592238))

(assert (=> setNonEmpty!17053 d!645529))

(declare-fun bs!445537 () Bool)

(declare-fun b!2149280 () Bool)

(assert (= bs!445537 (and b!2149280 b!2149198)))

(declare-fun lambda!80769 () Int)

(assert (=> bs!445537 (= (= (totalInput!3230 thiss!29110) localTotalInput!13) (= lambda!80769 lambda!80752))))

(declare-fun bs!445538 () Bool)

(assert (= bs!445538 (and b!2149280 b!2149245)))

(assert (=> bs!445538 (= (= (totalInput!3230 thiss!29110) localTotalInput!13) (= lambda!80769 lambda!80758))))

(assert (=> b!2149280 true))

(declare-fun d!645531 () Bool)

(declare-fun res!927013 () Bool)

(declare-fun e!1374231 () Bool)

(assert (=> d!645531 (=> (not res!927013) (not e!1374231))))

(assert (=> d!645531 (= res!927013 (valid!2217 (cache!3163 thiss!29110)))))

(assert (=> d!645531 (= (validCacheMapFurthestNullable!139 (cache!3163 thiss!29110) (totalInput!3230 thiss!29110)) e!1374231)))

(declare-fun b!2149279 () Bool)

(declare-fun res!927014 () Bool)

(assert (=> b!2149279 (=> (not res!927014) (not e!1374231))))

(assert (=> b!2149279 (= res!927014 (invariantList!319 (toList!1101 (map!4948 (cache!3163 thiss!29110)))))))

(assert (=> b!2149280 (= e!1374231 (forall!5019 (toList!1101 (map!4948 (cache!3163 thiss!29110))) lambda!80769))))

(assert (= (and d!645531 res!927013) b!2149279))

(assert (= (and b!2149279 res!927014) b!2149280))

(assert (=> d!645531 m!2592089))

(assert (=> b!2149279 m!2592129))

(assert (=> b!2149279 m!2592166))

(assert (=> b!2149280 m!2592129))

(declare-fun m!2592240 () Bool)

(assert (=> b!2149280 m!2592240))

(assert (=> b!2149195 d!645531))

(declare-fun d!645533 () Bool)

(declare-fun c!341066 () Bool)

(assert (=> d!645533 (= c!341066 ((_ is Node!7979) (c!341042 localTotalInput!13)))))

(declare-fun e!1374236 () Bool)

(assert (=> d!645533 (= (inv!32405 (c!341042 localTotalInput!13)) e!1374236)))

(declare-fun b!2149287 () Bool)

(declare-fun inv!32406 (Conc!7979) Bool)

(assert (=> b!2149287 (= e!1374236 (inv!32406 (c!341042 localTotalInput!13)))))

(declare-fun b!2149288 () Bool)

(declare-fun e!1374237 () Bool)

(assert (=> b!2149288 (= e!1374236 e!1374237)))

(declare-fun res!927017 () Bool)

(assert (=> b!2149288 (= res!927017 (not ((_ is Leaf!11668) (c!341042 localTotalInput!13))))))

(assert (=> b!2149288 (=> res!927017 e!1374237)))

(declare-fun b!2149289 () Bool)

(declare-fun inv!32407 (Conc!7979) Bool)

(assert (=> b!2149289 (= e!1374237 (inv!32407 (c!341042 localTotalInput!13)))))

(assert (= (and d!645533 c!341066) b!2149287))

(assert (= (and d!645533 (not c!341066)) b!2149288))

(assert (= (and b!2149288 (not res!927017)) b!2149289))

(declare-fun m!2592242 () Bool)

(assert (=> b!2149287 m!2592242))

(declare-fun m!2592244 () Bool)

(assert (=> b!2149289 m!2592244))

(assert (=> b!2149194 d!645533))

(declare-fun d!645535 () Bool)

(declare-fun c!341067 () Bool)

(assert (=> d!645535 (= c!341067 ((_ is Node!7979) (c!341042 (totalInput!3230 thiss!29110))))))

(declare-fun e!1374238 () Bool)

(assert (=> d!645535 (= (inv!32405 (c!341042 (totalInput!3230 thiss!29110))) e!1374238)))

(declare-fun b!2149290 () Bool)

(assert (=> b!2149290 (= e!1374238 (inv!32406 (c!341042 (totalInput!3230 thiss!29110))))))

(declare-fun b!2149291 () Bool)

(declare-fun e!1374239 () Bool)

(assert (=> b!2149291 (= e!1374238 e!1374239)))

(declare-fun res!927018 () Bool)

(assert (=> b!2149291 (= res!927018 (not ((_ is Leaf!11668) (c!341042 (totalInput!3230 thiss!29110)))))))

(assert (=> b!2149291 (=> res!927018 e!1374239)))

(declare-fun b!2149292 () Bool)

(assert (=> b!2149292 (= e!1374239 (inv!32407 (c!341042 (totalInput!3230 thiss!29110))))))

(assert (= (and d!645535 c!341067) b!2149290))

(assert (= (and d!645535 (not c!341067)) b!2149291))

(assert (= (and b!2149291 (not res!927018)) b!2149292))

(declare-fun m!2592246 () Bool)

(assert (=> b!2149290 m!2592246))

(declare-fun m!2592248 () Bool)

(assert (=> b!2149292 m!2592248))

(assert (=> b!2149192 d!645535))

(declare-fun bs!445539 () Bool)

(declare-fun b!2149297 () Bool)

(assert (= bs!445539 (and b!2149297 b!2149234)))

(declare-fun lambda!80772 () Int)

(assert (=> bs!445539 (= lambda!80772 lambda!80755)))

(declare-fun bs!445540 () Bool)

(assert (= bs!445540 (and b!2149297 b!2149276)))

(assert (=> bs!445540 (= lambda!80772 lambda!80765)))

(declare-fun d!645537 () Bool)

(declare-fun res!927023 () Bool)

(declare-fun e!1374242 () Bool)

(assert (=> d!645537 (=> (not res!927023) (not e!1374242))))

(declare-fun valid!2218 (MutLongMap!2868) Bool)

(assert (=> d!645537 (= res!927023 (valid!2218 (v!29178 (underlying!5932 (cache!3163 thiss!29110)))))))

(assert (=> d!645537 (= (valid!2217 (cache!3163 thiss!29110)) e!1374242)))

(declare-fun res!927024 () Bool)

(assert (=> b!2149297 (=> (not res!927024) (not e!1374242))))

(declare-fun forall!5021 (List!24692 Int) Bool)

(assert (=> b!2149297 (= res!927024 (forall!5021 (toList!1100 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))) lambda!80772))))

(declare-fun b!2149298 () Bool)

(declare-fun allKeysSameHashInMap!82 (ListLongMap!247 Hashable!2782) Bool)

(assert (=> b!2149298 (= e!1374242 (allKeysSameHashInMap!82 (map!4949 (v!29178 (underlying!5932 (cache!3163 thiss!29110)))) (hashF!4705 (cache!3163 thiss!29110))))))

(assert (= (and d!645537 res!927023) b!2149297))

(assert (= (and b!2149297 res!927024) b!2149298))

(declare-fun m!2592250 () Bool)

(assert (=> d!645537 m!2592250))

(assert (=> b!2149297 m!2592115))

(declare-fun m!2592252 () Bool)

(assert (=> b!2149297 m!2592252))

(assert (=> b!2149298 m!2592115))

(assert (=> b!2149298 m!2592115))

(declare-fun m!2592254 () Bool)

(assert (=> b!2149298 m!2592254))

(assert (=> b!2149200 d!645537))

(declare-fun d!645539 () Bool)

(declare-fun lambda!80775 () Int)

(declare-fun exists!728 ((InoxSet Context!2826) Int) Bool)

(assert (=> d!645539 (= (nullableZipper!182 z!514) (exists!728 z!514 lambda!80775))))

(declare-fun bs!445541 () Bool)

(assert (= bs!445541 d!645539))

(declare-fun m!2592256 () Bool)

(assert (=> bs!445541 m!2592256))

(assert (=> b!2149201 d!645539))

(declare-fun condSetEmpty!17056 () Bool)

(assert (=> setNonEmpty!17053 (= condSetEmpty!17056 (= setRest!17053 ((as const (Array Context!2826 Bool)) false)))))

(declare-fun setRes!17056 () Bool)

(assert (=> setNonEmpty!17053 (= tp!667381 setRes!17056)))

(declare-fun setIsEmpty!17056 () Bool)

(assert (=> setIsEmpty!17056 setRes!17056))

(declare-fun tp!667393 () Bool)

(declare-fun e!1374245 () Bool)

(declare-fun setElem!17056 () Context!2826)

(declare-fun setNonEmpty!17056 () Bool)

(assert (=> setNonEmpty!17056 (= setRes!17056 (and tp!667393 (inv!32402 setElem!17056) e!1374245))))

(declare-fun setRest!17056 () (InoxSet Context!2826))

(assert (=> setNonEmpty!17056 (= setRest!17053 ((_ map or) (store ((as const (Array Context!2826 Bool)) false) setElem!17056 true) setRest!17056))))

(declare-fun b!2149303 () Bool)

(declare-fun tp!667394 () Bool)

(assert (=> b!2149303 (= e!1374245 tp!667394)))

(assert (= (and setNonEmpty!17053 condSetEmpty!17056) setIsEmpty!17056))

(assert (= (and setNonEmpty!17053 (not condSetEmpty!17056)) setNonEmpty!17056))

(assert (= setNonEmpty!17056 b!2149303))

(declare-fun m!2592258 () Bool)

(assert (=> setNonEmpty!17056 m!2592258))

(declare-fun setElem!17059 () Context!2826)

(declare-fun setNonEmpty!17059 () Bool)

(declare-fun e!1374251 () Bool)

(declare-fun tp!667401 () Bool)

(declare-fun setRes!17059 () Bool)

(assert (=> setNonEmpty!17059 (= setRes!17059 (and tp!667401 (inv!32402 setElem!17059) e!1374251))))

(declare-fun setRest!17059 () (InoxSet Context!2826))

(assert (=> setNonEmpty!17059 (= (_1!14502 (_1!14503 (h!30007 (zeroValue!3126 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2826 Bool)) false) setElem!17059 true) setRest!17059))))

(declare-fun b!2149310 () Bool)

(declare-fun e!1374250 () Bool)

(declare-fun tp!667403 () Bool)

(assert (=> b!2149310 (= e!1374250 (and setRes!17059 tp!667403))))

(declare-fun condSetEmpty!17059 () Bool)

(assert (=> b!2149310 (= condSetEmpty!17059 (= (_1!14502 (_1!14503 (h!30007 (zeroValue!3126 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))))) ((as const (Array Context!2826 Bool)) false)))))

(declare-fun b!2149311 () Bool)

(declare-fun tp!667402 () Bool)

(assert (=> b!2149311 (= e!1374251 tp!667402)))

(declare-fun setIsEmpty!17059 () Bool)

(assert (=> setIsEmpty!17059 setRes!17059))

(assert (=> b!2149190 (= tp!667379 e!1374250)))

(assert (= (and b!2149310 condSetEmpty!17059) setIsEmpty!17059))

(assert (= (and b!2149310 (not condSetEmpty!17059)) setNonEmpty!17059))

(assert (= setNonEmpty!17059 b!2149311))

(assert (= (and b!2149190 ((_ is Cons!24606) (zeroValue!3126 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110)))))))) b!2149310))

(declare-fun m!2592260 () Bool)

(assert (=> setNonEmpty!17059 m!2592260))

(declare-fun setRes!17060 () Bool)

(declare-fun tp!667404 () Bool)

(declare-fun setNonEmpty!17060 () Bool)

(declare-fun e!1374253 () Bool)

(declare-fun setElem!17060 () Context!2826)

(assert (=> setNonEmpty!17060 (= setRes!17060 (and tp!667404 (inv!32402 setElem!17060) e!1374253))))

(declare-fun setRest!17060 () (InoxSet Context!2826))

(assert (=> setNonEmpty!17060 (= (_1!14502 (_1!14503 (h!30007 (minValue!3126 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2826 Bool)) false) setElem!17060 true) setRest!17060))))

(declare-fun b!2149312 () Bool)

(declare-fun e!1374252 () Bool)

(declare-fun tp!667406 () Bool)

(assert (=> b!2149312 (= e!1374252 (and setRes!17060 tp!667406))))

(declare-fun condSetEmpty!17060 () Bool)

(assert (=> b!2149312 (= condSetEmpty!17060 (= (_1!14502 (_1!14503 (h!30007 (minValue!3126 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110))))))))) ((as const (Array Context!2826 Bool)) false)))))

(declare-fun b!2149313 () Bool)

(declare-fun tp!667405 () Bool)

(assert (=> b!2149313 (= e!1374253 tp!667405)))

(declare-fun setIsEmpty!17060 () Bool)

(assert (=> setIsEmpty!17060 setRes!17060))

(assert (=> b!2149190 (= tp!667378 e!1374252)))

(assert (= (and b!2149312 condSetEmpty!17060) setIsEmpty!17060))

(assert (= (and b!2149312 (not condSetEmpty!17060)) setNonEmpty!17060))

(assert (= setNonEmpty!17060 b!2149313))

(assert (= (and b!2149190 ((_ is Cons!24606) (minValue!3126 (v!29177 (underlying!5931 (v!29178 (underlying!5932 (cache!3163 thiss!29110)))))))) b!2149312))

(declare-fun m!2592262 () Bool)

(assert (=> setNonEmpty!17060 m!2592262))

(declare-fun b!2149322 () Bool)

(declare-fun e!1374259 () Bool)

(declare-fun tp!667415 () Bool)

(declare-fun tp!667414 () Bool)

(assert (=> b!2149322 (= e!1374259 (and (inv!32405 (left!18891 (c!341042 localTotalInput!13))) tp!667415 (inv!32405 (right!19221 (c!341042 localTotalInput!13))) tp!667414))))

(declare-fun b!2149324 () Bool)

(declare-fun e!1374258 () Bool)

(declare-fun tp!667413 () Bool)

(assert (=> b!2149324 (= e!1374258 tp!667413)))

(declare-fun b!2149323 () Bool)

(declare-fun inv!32408 (IArray!15963) Bool)

(assert (=> b!2149323 (= e!1374259 (and (inv!32408 (xs!10921 (c!341042 localTotalInput!13))) e!1374258))))

(assert (=> b!2149194 (= tp!667382 (and (inv!32405 (c!341042 localTotalInput!13)) e!1374259))))

(assert (= (and b!2149194 ((_ is Node!7979) (c!341042 localTotalInput!13))) b!2149322))

(assert (= b!2149323 b!2149324))

(assert (= (and b!2149194 ((_ is Leaf!11668) (c!341042 localTotalInput!13))) b!2149323))

(declare-fun m!2592264 () Bool)

(assert (=> b!2149322 m!2592264))

(declare-fun m!2592266 () Bool)

(assert (=> b!2149322 m!2592266))

(declare-fun m!2592268 () Bool)

(assert (=> b!2149323 m!2592268))

(assert (=> b!2149194 m!2592073))

(declare-fun b!2149335 () Bool)

(declare-fun e!1374269 () Bool)

(declare-fun tp!667432 () Bool)

(assert (=> b!2149335 (= e!1374269 tp!667432)))

(declare-fun mapIsEmpty!13595 () Bool)

(declare-fun mapRes!13595 () Bool)

(assert (=> mapIsEmpty!13595 mapRes!13595))

(declare-fun mapNonEmpty!13595 () Bool)

(declare-fun tp!667431 () Bool)

(declare-fun e!1374270 () Bool)

(assert (=> mapNonEmpty!13595 (= mapRes!13595 (and tp!667431 e!1374270))))

(declare-fun mapValue!13595 () List!24690)

(declare-fun mapKey!13595 () (_ BitVec 32))

(declare-fun mapRest!13595 () (Array (_ BitVec 32) List!24690))

(assert (=> mapNonEmpty!13595 (= mapRest!13592 (store mapRest!13595 mapKey!13595 mapValue!13595))))

(declare-fun b!2149336 () Bool)

(declare-fun setRes!17065 () Bool)

(declare-fun tp!667434 () Bool)

(assert (=> b!2149336 (= e!1374270 (and setRes!17065 tp!667434))))

(declare-fun condSetEmpty!17065 () Bool)

(assert (=> b!2149336 (= condSetEmpty!17065 (= (_1!14502 (_1!14503 (h!30007 mapValue!13595))) ((as const (Array Context!2826 Bool)) false)))))

(declare-fun b!2149337 () Bool)

(declare-fun e!1374271 () Bool)

(declare-fun setRes!17066 () Bool)

(declare-fun tp!667433 () Bool)

(assert (=> b!2149337 (= e!1374271 (and setRes!17066 tp!667433))))

(declare-fun condSetEmpty!17066 () Bool)

(declare-fun mapDefault!13595 () List!24690)

(assert (=> b!2149337 (= condSetEmpty!17066 (= (_1!14502 (_1!14503 (h!30007 mapDefault!13595))) ((as const (Array Context!2826 Bool)) false)))))

(declare-fun setIsEmpty!17065 () Bool)

(assert (=> setIsEmpty!17065 setRes!17066))

(declare-fun setIsEmpty!17066 () Bool)

(assert (=> setIsEmpty!17066 setRes!17065))

(declare-fun condMapEmpty!13595 () Bool)

(assert (=> mapNonEmpty!13592 (= condMapEmpty!13595 (= mapRest!13592 ((as const (Array (_ BitVec 32) List!24690)) mapDefault!13595)))))

(assert (=> mapNonEmpty!13592 (= tp!667384 (and e!1374271 mapRes!13595))))

(declare-fun setNonEmpty!17065 () Bool)

(declare-fun e!1374268 () Bool)

(declare-fun setElem!17066 () Context!2826)

(declare-fun tp!667435 () Bool)

(assert (=> setNonEmpty!17065 (= setRes!17066 (and tp!667435 (inv!32402 setElem!17066) e!1374268))))

(declare-fun setRest!17065 () (InoxSet Context!2826))

(assert (=> setNonEmpty!17065 (= (_1!14502 (_1!14503 (h!30007 mapDefault!13595))) ((_ map or) (store ((as const (Array Context!2826 Bool)) false) setElem!17066 true) setRest!17065))))

(declare-fun b!2149338 () Bool)

(declare-fun tp!667436 () Bool)

(assert (=> b!2149338 (= e!1374268 tp!667436)))

(declare-fun setElem!17065 () Context!2826)

(declare-fun setNonEmpty!17066 () Bool)

(declare-fun tp!667430 () Bool)

(assert (=> setNonEmpty!17066 (= setRes!17065 (and tp!667430 (inv!32402 setElem!17065) e!1374269))))

(declare-fun setRest!17066 () (InoxSet Context!2826))

(assert (=> setNonEmpty!17066 (= (_1!14502 (_1!14503 (h!30007 mapValue!13595))) ((_ map or) (store ((as const (Array Context!2826 Bool)) false) setElem!17065 true) setRest!17066))))

(assert (= (and mapNonEmpty!13592 condMapEmpty!13595) mapIsEmpty!13595))

(assert (= (and mapNonEmpty!13592 (not condMapEmpty!13595)) mapNonEmpty!13595))

(assert (= (and b!2149336 condSetEmpty!17065) setIsEmpty!17066))

(assert (= (and b!2149336 (not condSetEmpty!17065)) setNonEmpty!17066))

(assert (= setNonEmpty!17066 b!2149335))

(assert (= (and mapNonEmpty!13595 ((_ is Cons!24606) mapValue!13595)) b!2149336))

(assert (= (and b!2149337 condSetEmpty!17066) setIsEmpty!17065))

(assert (= (and b!2149337 (not condSetEmpty!17066)) setNonEmpty!17065))

(assert (= setNonEmpty!17065 b!2149338))

(assert (= (and mapNonEmpty!13592 ((_ is Cons!24606) mapDefault!13595)) b!2149337))

(declare-fun m!2592270 () Bool)

(assert (=> mapNonEmpty!13595 m!2592270))

(declare-fun m!2592272 () Bool)

(assert (=> setNonEmpty!17065 m!2592272))

(declare-fun m!2592274 () Bool)

(assert (=> setNonEmpty!17066 m!2592274))

(declare-fun tp!667437 () Bool)

(declare-fun setRes!17067 () Bool)

(declare-fun e!1374273 () Bool)

(declare-fun setElem!17067 () Context!2826)

(declare-fun setNonEmpty!17067 () Bool)

(assert (=> setNonEmpty!17067 (= setRes!17067 (and tp!667437 (inv!32402 setElem!17067) e!1374273))))

(declare-fun setRest!17067 () (InoxSet Context!2826))

(assert (=> setNonEmpty!17067 (= (_1!14502 (_1!14503 (h!30007 mapValue!13592))) ((_ map or) (store ((as const (Array Context!2826 Bool)) false) setElem!17067 true) setRest!17067))))

(declare-fun b!2149339 () Bool)

(declare-fun e!1374272 () Bool)

(declare-fun tp!667439 () Bool)

(assert (=> b!2149339 (= e!1374272 (and setRes!17067 tp!667439))))

(declare-fun condSetEmpty!17067 () Bool)

(assert (=> b!2149339 (= condSetEmpty!17067 (= (_1!14502 (_1!14503 (h!30007 mapValue!13592))) ((as const (Array Context!2826 Bool)) false)))))

(declare-fun b!2149340 () Bool)

(declare-fun tp!667438 () Bool)

(assert (=> b!2149340 (= e!1374273 tp!667438)))

(declare-fun setIsEmpty!17067 () Bool)

(assert (=> setIsEmpty!17067 setRes!17067))

(assert (=> mapNonEmpty!13592 (= tp!667387 e!1374272)))

(assert (= (and b!2149339 condSetEmpty!17067) setIsEmpty!17067))

(assert (= (and b!2149339 (not condSetEmpty!17067)) setNonEmpty!17067))

(assert (= setNonEmpty!17067 b!2149340))

(assert (= (and mapNonEmpty!13592 ((_ is Cons!24606) mapValue!13592)) b!2149339))

(declare-fun m!2592276 () Bool)

(assert (=> setNonEmpty!17067 m!2592276))

(declare-fun e!1374275 () Bool)

(declare-fun tp!667441 () Bool)

(declare-fun b!2149341 () Bool)

(declare-fun tp!667442 () Bool)

(assert (=> b!2149341 (= e!1374275 (and (inv!32405 (left!18891 (c!341042 (totalInput!3230 thiss!29110)))) tp!667442 (inv!32405 (right!19221 (c!341042 (totalInput!3230 thiss!29110)))) tp!667441))))

(declare-fun b!2149343 () Bool)

(declare-fun e!1374274 () Bool)

(declare-fun tp!667440 () Bool)

(assert (=> b!2149343 (= e!1374274 tp!667440)))

(declare-fun b!2149342 () Bool)

(assert (=> b!2149342 (= e!1374275 (and (inv!32408 (xs!10921 (c!341042 (totalInput!3230 thiss!29110)))) e!1374274))))

(assert (=> b!2149192 (= tp!667386 (and (inv!32405 (c!341042 (totalInput!3230 thiss!29110))) e!1374275))))

(assert (= (and b!2149192 ((_ is Node!7979) (c!341042 (totalInput!3230 thiss!29110)))) b!2149341))

(assert (= b!2149342 b!2149343))

(assert (= (and b!2149192 ((_ is Leaf!11668) (c!341042 (totalInput!3230 thiss!29110)))) b!2149342))

(declare-fun m!2592278 () Bool)

(assert (=> b!2149341 m!2592278))

(declare-fun m!2592280 () Bool)

(assert (=> b!2149341 m!2592280))

(declare-fun m!2592282 () Bool)

(assert (=> b!2149342 m!2592282))

(assert (=> b!2149192 m!2592085))

(declare-fun e!1374277 () Bool)

(declare-fun setElem!17068 () Context!2826)

(declare-fun setNonEmpty!17068 () Bool)

(declare-fun setRes!17068 () Bool)

(declare-fun tp!667443 () Bool)

(assert (=> setNonEmpty!17068 (= setRes!17068 (and tp!667443 (inv!32402 setElem!17068) e!1374277))))

(declare-fun setRest!17068 () (InoxSet Context!2826))

(assert (=> setNonEmpty!17068 (= (_1!14502 (_1!14503 (h!30007 mapDefault!13592))) ((_ map or) (store ((as const (Array Context!2826 Bool)) false) setElem!17068 true) setRest!17068))))

(declare-fun b!2149344 () Bool)

(declare-fun e!1374276 () Bool)

(declare-fun tp!667445 () Bool)

(assert (=> b!2149344 (= e!1374276 (and setRes!17068 tp!667445))))

(declare-fun condSetEmpty!17068 () Bool)

(assert (=> b!2149344 (= condSetEmpty!17068 (= (_1!14502 (_1!14503 (h!30007 mapDefault!13592))) ((as const (Array Context!2826 Bool)) false)))))

(declare-fun b!2149345 () Bool)

(declare-fun tp!667444 () Bool)

(assert (=> b!2149345 (= e!1374277 tp!667444)))

(declare-fun setIsEmpty!17068 () Bool)

(assert (=> setIsEmpty!17068 setRes!17068))

(assert (=> b!2149196 (= tp!667385 e!1374276)))

(assert (= (and b!2149344 condSetEmpty!17068) setIsEmpty!17068))

(assert (= (and b!2149344 (not condSetEmpty!17068)) setNonEmpty!17068))

(assert (= setNonEmpty!17068 b!2149345))

(assert (= (and b!2149196 ((_ is Cons!24606) mapDefault!13592)) b!2149344))

(declare-fun m!2592284 () Bool)

(assert (=> setNonEmpty!17068 m!2592284))

(declare-fun b!2149350 () Bool)

(declare-fun e!1374280 () Bool)

(declare-fun tp!667450 () Bool)

(declare-fun tp!667451 () Bool)

(assert (=> b!2149350 (= e!1374280 (and tp!667450 tp!667451))))

(assert (=> b!2149186 (= tp!667388 e!1374280)))

(assert (= (and b!2149186 ((_ is Cons!24605) (exprs!1913 setElem!17053))) b!2149350))

(declare-fun b_lambda!70787 () Bool)

(assert (= b_lambda!70783 (or (and b!2149193 b_free!63463) b_lambda!70787)))

(declare-fun b_lambda!70789 () Bool)

(assert (= b_lambda!70785 (or b!2149198 b_lambda!70789)))

(declare-fun bs!445542 () Bool)

(declare-fun d!645541 () Bool)

(assert (= bs!445542 (and d!645541 b!2149198)))

(assert (=> bs!445542 (= (dynLambda!11389 lambda!80752 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091))) (validCacheMapFurthestNullableBody!18 (tuple2!24447 lt!800091 (apply!6008 (cache!3163 thiss!29110) lt!800091)) localTotalInput!13))))

(assert (=> bs!445542 m!2592077))

(assert (=> d!645527 d!645541))

(declare-fun b_lambda!70791 () Bool)

(assert (= b_lambda!70781 (or (and b!2149193 b_free!63463) b_lambda!70791)))

(check-sat (not b!2149344) (not b!2149206) (not b!2149339) (not b!2149292) (not b!2149192) (not b!2149276) (not b!2149312) (not b!2149341) (not setNonEmpty!17056) (not b!2149297) (not b!2149258) (not b!2149313) (not b!2149340) (not d!645539) (not setNonEmpty!17066) (not b!2149311) (not b!2149239) (not bm!128939) (not b!2149324) (not d!645519) (not d!645517) (not d!645537) (not b_next!64167) (not b_lambda!70791) (not bm!128943) (not d!645525) (not setNonEmpty!17065) (not b!2149256) (not b!2149342) (not b!2149303) (not bm!128938) (not b!2149335) (not b!2149289) (not b!2149350) (not setNonEmpty!17060) (not b!2149234) (not b!2149275) (not mapNonEmpty!13595) (not b!2149343) (not b_next!64165) (not d!645521) (not b!2149279) (not b!2149290) (not b!2149337) (not b!2149336) (not bs!445542) (not b!2149260) (not b!2149345) (not b!2149237) (not b!2149310) (not b!2149273) (not bm!128941) (not b!2149338) (not d!645527) (not setNonEmpty!17067) (not b!2149287) (not b!2149322) (not b!2149298) (not setNonEmpty!17059) b_and!173067 (not b!2149245) (not b!2149280) (not b!2149244) b_and!173061 (not b!2149231) (not bm!128942) (not b!2149236) (not b_lambda!70787) (not d!645511) (not b_lambda!70789) (not d!645531) (not bm!128940) (not b!2149194) (not setNonEmpty!17068) (not b!2149323) (not d!645529))
(check-sat b_and!173067 b_and!173061 (not b_next!64165) (not b_next!64167))
