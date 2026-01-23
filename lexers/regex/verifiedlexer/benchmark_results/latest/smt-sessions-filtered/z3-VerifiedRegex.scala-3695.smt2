; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208584 () Bool)

(assert start!208584)

(declare-fun b!2150474 () Bool)

(declare-fun b_free!63517 () Bool)

(declare-fun b_next!64221 () Bool)

(assert (=> b!2150474 (= b_free!63517 (not b_next!64221))))

(declare-fun tp!668100 () Bool)

(declare-fun b_and!173129 () Bool)

(assert (=> b!2150474 (= tp!668100 b_and!173129)))

(declare-fun b!2150469 () Bool)

(declare-fun b_free!63519 () Bool)

(declare-fun b_next!64223 () Bool)

(assert (=> b!2150469 (= b_free!63519 (not b_next!64223))))

(declare-fun tp!668096 () Bool)

(declare-fun b_and!173131 () Bool)

(assert (=> b!2150469 (= tp!668096 b_and!173131)))

(declare-fun b!2150461 () Bool)

(declare-fun e!1375148 () Bool)

(declare-datatypes ((C!11860 0))(
  ( (C!11861 (val!6916 Int)) )
))
(declare-datatypes ((List!24735 0))(
  ( (Nil!24651) (Cons!24651 (h!30052 C!11860) (t!197281 List!24735)) )
))
(declare-datatypes ((Regex!5857 0))(
  ( (ElementMatch!5857 (c!341168 C!11860)) (Concat!10159 (regOne!12226 Regex!5857) (regTwo!12226 Regex!5857)) (EmptyExpr!5857) (Star!5857 (reg!6186 Regex!5857)) (EmptyLang!5857) (Union!5857 (regOne!12227 Regex!5857) (regTwo!12227 Regex!5857)) )
))
(declare-datatypes ((List!24736 0))(
  ( (Nil!24652) (Cons!24652 (h!30053 Regex!5857) (t!197282 List!24736)) )
))
(declare-datatypes ((Context!2854 0))(
  ( (Context!2855 (exprs!1927 List!24736)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3646 0))(
  ( (tuple3!3647 (_1!14534 (InoxSet Context!2854)) (_2!14534 Int) (_3!2293 Int)) )
))
(declare-datatypes ((tuple2!24482 0))(
  ( (tuple2!24483 (_1!14535 tuple3!3646) (_2!14535 Int)) )
))
(declare-datatypes ((List!24737 0))(
  ( (Nil!24653) (Cons!24653 (h!30054 tuple2!24482) (t!197283 List!24737)) )
))
(declare-datatypes ((array!9763 0))(
  ( (array!9764 (arr!4360 (Array (_ BitVec 32) (_ BitVec 64))) (size!19312 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2796 0))(
  ( (HashableExt!2795 (__x!16822 Int)) )
))
(declare-datatypes ((array!9765 0))(
  ( (array!9766 (arr!4361 (Array (_ BitVec 32) List!24737)) (size!19313 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5764 0))(
  ( (LongMapFixedSize!5765 (defaultEntry!3247 Int) (mask!7126 (_ BitVec 32)) (extraKeys!3130 (_ BitVec 32)) (zeroValue!3140 List!24737) (minValue!3140 List!24737) (_size!5815 (_ BitVec 32)) (_keys!3179 array!9763) (_values!3162 array!9765) (_vacant!2943 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11353 0))(
  ( (Cell!11354 (v!29216 LongMapFixedSize!5764)) )
))
(declare-datatypes ((MutLongMap!2882 0))(
  ( (LongMap!2882 (underlying!5959 Cell!11353)) (MutLongMapExt!2881 (__x!16823 Int)) )
))
(declare-datatypes ((Cell!11355 0))(
  ( (Cell!11356 (v!29217 MutLongMap!2882)) )
))
(declare-datatypes ((MutableMap!2796 0))(
  ( (MutableMapExt!2795 (__x!16824 Int)) (HashMap!2796 (underlying!5960 Cell!11355) (hashF!4719 Hashable!2796) (_size!5816 (_ BitVec 32)) (defaultValue!2958 Int)) )
))
(declare-datatypes ((IArray!15991 0))(
  ( (IArray!15992 (innerList!8053 List!24735)) )
))
(declare-datatypes ((Conc!7993 0))(
  ( (Node!7993 (left!18934 Conc!7993) (right!19264 Conc!7993) (csize!16216 Int) (cheight!8204 Int)) (Leaf!11689 (xs!10935 IArray!15991) (csize!16217 Int)) (Empty!7993) )
))
(declare-datatypes ((BalanceConc!15748 0))(
  ( (BalanceConc!15749 (c!341169 Conc!7993)) )
))
(declare-datatypes ((CacheFurthestNullable!950 0))(
  ( (CacheFurthestNullable!951 (cache!3177 MutableMap!2796) (totalInput!3251 BalanceConc!15748)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!950)

(declare-fun valid!2224 (MutableMap!2796) Bool)

(assert (=> b!2150461 (= e!1375148 (valid!2224 (cache!3177 thiss!29110)))))

(declare-fun b!2150462 () Bool)

(declare-fun e!1375158 () Bool)

(declare-fun e!1375146 () Bool)

(declare-fun lt!800732 () MutLongMap!2882)

(get-info :version)

(assert (=> b!2150462 (= e!1375158 (and e!1375146 ((_ is LongMap!2882) lt!800732)))))

(assert (=> b!2150462 (= lt!800732 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))

(declare-fun b!2150463 () Bool)

(declare-fun e!1375157 () Bool)

(declare-fun e!1375149 () Bool)

(assert (=> b!2150463 (= e!1375157 e!1375149)))

(declare-fun mapIsEmpty!13646 () Bool)

(declare-fun mapRes!13646 () Bool)

(assert (=> mapIsEmpty!13646 mapRes!13646))

(declare-fun b!2150464 () Bool)

(declare-fun e!1375147 () Bool)

(declare-fun tp!668101 () Bool)

(assert (=> b!2150464 (= e!1375147 (and tp!668101 mapRes!13646))))

(declare-fun condMapEmpty!13646 () Bool)

(declare-fun mapDefault!13646 () List!24737)

(assert (=> b!2150464 (= condMapEmpty!13646 (= (arr!4361 (_values!3162 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24737)) mapDefault!13646)))))

(declare-fun b!2150465 () Bool)

(assert (=> b!2150465 (= e!1375146 e!1375157)))

(declare-fun b!2150466 () Bool)

(declare-fun e!1375154 () Bool)

(assert (=> b!2150466 (= e!1375154 (not e!1375148))))

(declare-fun res!927417 () Bool)

(assert (=> b!2150466 (=> res!927417 e!1375148)))

(declare-fun z!514 () (InoxSet Context!2854))

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(declare-fun contains!4223 (MutableMap!2796 tuple3!3646) Bool)

(assert (=> b!2150466 (= res!927417 (contains!4223 (cache!3177 thiss!29110) (tuple3!3647 z!514 from!952 lastNullablePos!91)))))

(declare-fun localTotalInput!13 () BalanceConc!15748)

(declare-fun validCacheMapFurthestNullable!150 (MutableMap!2796 BalanceConc!15748) Bool)

(assert (=> b!2150466 (validCacheMapFurthestNullable!150 (cache!3177 thiss!29110) localTotalInput!13)))

(declare-fun b!2150467 () Bool)

(declare-fun e!1375153 () Bool)

(declare-fun tp!668094 () Bool)

(declare-fun inv!32478 (Conc!7993) Bool)

(assert (=> b!2150467 (= e!1375153 (and (inv!32478 (c!341169 (totalInput!3251 thiss!29110))) tp!668094))))

(declare-fun setRes!17155 () Bool)

(declare-fun setElem!17155 () Context!2854)

(declare-fun tp!668093 () Bool)

(declare-fun e!1375156 () Bool)

(declare-fun setNonEmpty!17155 () Bool)

(declare-fun inv!32479 (Context!2854) Bool)

(assert (=> setNonEmpty!17155 (= setRes!17155 (and tp!668093 (inv!32479 setElem!17155) e!1375156))))

(declare-fun setRest!17155 () (InoxSet Context!2854))

(assert (=> setNonEmpty!17155 (= z!514 ((_ map or) (store ((as const (Array Context!2854 Bool)) false) setElem!17155 true) setRest!17155))))

(declare-fun setIsEmpty!17155 () Bool)

(assert (=> setIsEmpty!17155 setRes!17155))

(declare-fun res!927419 () Bool)

(assert (=> start!208584 (=> (not res!927419) (not e!1375154))))

(assert (=> start!208584 (= res!927419 (and (= localTotalInput!13 (totalInput!3251 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208584 e!1375154))

(declare-fun condSetEmpty!17155 () Bool)

(assert (=> start!208584 (= condSetEmpty!17155 (= z!514 ((as const (Array Context!2854 Bool)) false)))))

(assert (=> start!208584 setRes!17155))

(assert (=> start!208584 true))

(declare-fun e!1375155 () Bool)

(declare-fun inv!32480 (CacheFurthestNullable!950) Bool)

(assert (=> start!208584 (and (inv!32480 thiss!29110) e!1375155)))

(declare-fun e!1375159 () Bool)

(declare-fun inv!32481 (BalanceConc!15748) Bool)

(assert (=> start!208584 (and (inv!32481 localTotalInput!13) e!1375159)))

(declare-fun b!2150468 () Bool)

(declare-fun e!1375151 () Bool)

(assert (=> b!2150468 (= e!1375151 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun tp!668099 () Bool)

(declare-fun tp!668097 () Bool)

(declare-fun array_inv!3126 (array!9763) Bool)

(declare-fun array_inv!3127 (array!9765) Bool)

(assert (=> b!2150469 (= e!1375149 (and tp!668096 tp!668097 tp!668099 (array_inv!3126 (_keys!3179 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))) (array_inv!3127 (_values!3162 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))) e!1375147))))

(declare-fun b!2150470 () Bool)

(declare-fun res!927420 () Bool)

(assert (=> b!2150470 (=> (not res!927420) (not e!1375154))))

(assert (=> b!2150470 (= res!927420 (validCacheMapFurthestNullable!150 (cache!3177 thiss!29110) (totalInput!3251 thiss!29110)))))

(declare-fun b!2150471 () Bool)

(declare-fun tp!668095 () Bool)

(assert (=> b!2150471 (= e!1375159 (and (inv!32478 (c!341169 localTotalInput!13)) tp!668095))))

(declare-fun b!2150472 () Bool)

(declare-fun res!927416 () Bool)

(assert (=> b!2150472 (=> res!927416 e!1375148)))

(assert (=> b!2150472 (= res!927416 (not ((_ is HashMap!2796) (cache!3177 thiss!29110))))))

(declare-fun b!2150473 () Bool)

(declare-fun tp!668098 () Bool)

(assert (=> b!2150473 (= e!1375156 tp!668098)))

(declare-fun mapNonEmpty!13646 () Bool)

(declare-fun tp!668102 () Bool)

(declare-fun tp!668092 () Bool)

(assert (=> mapNonEmpty!13646 (= mapRes!13646 (and tp!668102 tp!668092))))

(declare-fun mapValue!13646 () List!24737)

(declare-fun mapKey!13646 () (_ BitVec 32))

(declare-fun mapRest!13646 () (Array (_ BitVec 32) List!24737))

(assert (=> mapNonEmpty!13646 (= (arr!4361 (_values!3162 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))) (store mapRest!13646 mapKey!13646 mapValue!13646))))

(declare-fun e!1375150 () Bool)

(assert (=> b!2150474 (= e!1375150 (and e!1375158 tp!668100))))

(declare-fun b!2150475 () Bool)

(declare-fun res!927418 () Bool)

(assert (=> b!2150475 (=> (not res!927418) (not e!1375154))))

(assert (=> b!2150475 (= res!927418 e!1375151)))

(declare-fun res!927415 () Bool)

(assert (=> b!2150475 (=> res!927415 e!1375151)))

(declare-fun nullableZipper!193 ((InoxSet Context!2854)) Bool)

(assert (=> b!2150475 (= res!927415 (not (nullableZipper!193 z!514)))))

(declare-fun b!2150476 () Bool)

(assert (=> b!2150476 (= e!1375155 (and e!1375150 (inv!32481 (totalInput!3251 thiss!29110)) e!1375153))))

(assert (= (and start!208584 res!927419) b!2150475))

(assert (= (and b!2150475 (not res!927415)) b!2150468))

(assert (= (and b!2150475 res!927418) b!2150470))

(assert (= (and b!2150470 res!927420) b!2150466))

(assert (= (and b!2150466 (not res!927417)) b!2150472))

(assert (= (and b!2150472 (not res!927416)) b!2150461))

(assert (= (and start!208584 condSetEmpty!17155) setIsEmpty!17155))

(assert (= (and start!208584 (not condSetEmpty!17155)) setNonEmpty!17155))

(assert (= setNonEmpty!17155 b!2150473))

(assert (= (and b!2150464 condMapEmpty!13646) mapIsEmpty!13646))

(assert (= (and b!2150464 (not condMapEmpty!13646)) mapNonEmpty!13646))

(assert (= b!2150469 b!2150464))

(assert (= b!2150463 b!2150469))

(assert (= b!2150465 b!2150463))

(assert (= (and b!2150462 ((_ is LongMap!2882) (v!29217 (underlying!5960 (cache!3177 thiss!29110))))) b!2150465))

(assert (= b!2150474 b!2150462))

(assert (= (and b!2150476 ((_ is HashMap!2796) (cache!3177 thiss!29110))) b!2150474))

(assert (= b!2150476 b!2150467))

(assert (= start!208584 b!2150476))

(assert (= start!208584 b!2150471))

(declare-fun m!2593191 () Bool)

(assert (=> b!2150476 m!2593191))

(declare-fun m!2593193 () Bool)

(assert (=> setNonEmpty!17155 m!2593193))

(declare-fun m!2593195 () Bool)

(assert (=> b!2150469 m!2593195))

(declare-fun m!2593197 () Bool)

(assert (=> b!2150469 m!2593197))

(declare-fun m!2593199 () Bool)

(assert (=> b!2150461 m!2593199))

(declare-fun m!2593201 () Bool)

(assert (=> b!2150471 m!2593201))

(declare-fun m!2593203 () Bool)

(assert (=> start!208584 m!2593203))

(declare-fun m!2593205 () Bool)

(assert (=> start!208584 m!2593205))

(declare-fun m!2593207 () Bool)

(assert (=> b!2150467 m!2593207))

(declare-fun m!2593209 () Bool)

(assert (=> b!2150470 m!2593209))

(declare-fun m!2593211 () Bool)

(assert (=> b!2150466 m!2593211))

(declare-fun m!2593213 () Bool)

(assert (=> b!2150466 m!2593213))

(declare-fun m!2593215 () Bool)

(assert (=> b!2150475 m!2593215))

(declare-fun m!2593217 () Bool)

(assert (=> mapNonEmpty!13646 m!2593217))

(check-sat (not b!2150466) (not b!2150461) (not b!2150473) b_and!173129 (not b!2150475) b_and!173131 (not mapNonEmpty!13646) (not b!2150467) (not setNonEmpty!17155) (not start!208584) (not b!2150469) (not b_next!64221) (not b_next!64223) (not b!2150476) (not b!2150464) (not b!2150471) (not b!2150470))
(check-sat b_and!173129 b_and!173131 (not b_next!64223) (not b_next!64221))
(get-model)

(declare-fun d!645644 () Bool)

(declare-fun c!341172 () Bool)

(assert (=> d!645644 (= c!341172 ((_ is Node!7993) (c!341169 localTotalInput!13)))))

(declare-fun e!1375164 () Bool)

(assert (=> d!645644 (= (inv!32478 (c!341169 localTotalInput!13)) e!1375164)))

(declare-fun b!2150483 () Bool)

(declare-fun inv!32482 (Conc!7993) Bool)

(assert (=> b!2150483 (= e!1375164 (inv!32482 (c!341169 localTotalInput!13)))))

(declare-fun b!2150484 () Bool)

(declare-fun e!1375165 () Bool)

(assert (=> b!2150484 (= e!1375164 e!1375165)))

(declare-fun res!927423 () Bool)

(assert (=> b!2150484 (= res!927423 (not ((_ is Leaf!11689) (c!341169 localTotalInput!13))))))

(assert (=> b!2150484 (=> res!927423 e!1375165)))

(declare-fun b!2150485 () Bool)

(declare-fun inv!32483 (Conc!7993) Bool)

(assert (=> b!2150485 (= e!1375165 (inv!32483 (c!341169 localTotalInput!13)))))

(assert (= (and d!645644 c!341172) b!2150483))

(assert (= (and d!645644 (not c!341172)) b!2150484))

(assert (= (and b!2150484 (not res!927423)) b!2150485))

(declare-fun m!2593219 () Bool)

(assert (=> b!2150483 m!2593219))

(declare-fun m!2593221 () Bool)

(assert (=> b!2150485 m!2593221))

(assert (=> b!2150471 d!645644))

(declare-fun d!645646 () Bool)

(declare-fun lambda!80864 () Int)

(declare-fun forall!5029 (List!24736 Int) Bool)

(assert (=> d!645646 (= (inv!32479 setElem!17155) (forall!5029 (exprs!1927 setElem!17155) lambda!80864))))

(declare-fun bs!445586 () Bool)

(assert (= bs!445586 d!645646))

(declare-fun m!2593223 () Bool)

(assert (=> bs!445586 m!2593223))

(assert (=> setNonEmpty!17155 d!645646))

(declare-fun d!645648 () Bool)

(declare-fun isBalanced!2478 (Conc!7993) Bool)

(assert (=> d!645648 (= (inv!32481 (totalInput!3251 thiss!29110)) (isBalanced!2478 (c!341169 (totalInput!3251 thiss!29110))))))

(declare-fun bs!445587 () Bool)

(assert (= bs!445587 d!645648))

(declare-fun m!2593225 () Bool)

(assert (=> bs!445587 m!2593225))

(assert (=> b!2150476 d!645648))

(declare-fun b!2150491 () Bool)

(assert (=> b!2150491 true))

(declare-fun d!645650 () Bool)

(declare-fun res!927428 () Bool)

(declare-fun e!1375168 () Bool)

(assert (=> d!645650 (=> (not res!927428) (not e!1375168))))

(assert (=> d!645650 (= res!927428 (valid!2224 (cache!3177 thiss!29110)))))

(assert (=> d!645650 (= (validCacheMapFurthestNullable!150 (cache!3177 thiss!29110) (totalInput!3251 thiss!29110)) e!1375168)))

(declare-fun b!2150490 () Bool)

(declare-fun res!927429 () Bool)

(assert (=> b!2150490 (=> (not res!927429) (not e!1375168))))

(declare-fun invariantList!323 (List!24737) Bool)

(declare-datatypes ((ListMap!699 0))(
  ( (ListMap!700 (toList!1108 List!24737)) )
))
(declare-fun map!4963 (MutableMap!2796) ListMap!699)

(assert (=> b!2150490 (= res!927429 (invariantList!323 (toList!1108 (map!4963 (cache!3177 thiss!29110)))))))

(declare-fun lambda!80867 () Int)

(declare-fun forall!5030 (List!24737 Int) Bool)

(assert (=> b!2150491 (= e!1375168 (forall!5030 (toList!1108 (map!4963 (cache!3177 thiss!29110))) lambda!80867))))

(assert (= (and d!645650 res!927428) b!2150490))

(assert (= (and b!2150490 res!927429) b!2150491))

(assert (=> d!645650 m!2593199))

(declare-fun m!2593228 () Bool)

(assert (=> b!2150490 m!2593228))

(declare-fun m!2593230 () Bool)

(assert (=> b!2150490 m!2593230))

(assert (=> b!2150491 m!2593228))

(declare-fun m!2593232 () Bool)

(assert (=> b!2150491 m!2593232))

(assert (=> b!2150470 d!645650))

(declare-fun d!645652 () Bool)

(declare-fun c!341173 () Bool)

(assert (=> d!645652 (= c!341173 ((_ is Node!7993) (c!341169 (totalInput!3251 thiss!29110))))))

(declare-fun e!1375169 () Bool)

(assert (=> d!645652 (= (inv!32478 (c!341169 (totalInput!3251 thiss!29110))) e!1375169)))

(declare-fun b!2150494 () Bool)

(assert (=> b!2150494 (= e!1375169 (inv!32482 (c!341169 (totalInput!3251 thiss!29110))))))

(declare-fun b!2150495 () Bool)

(declare-fun e!1375170 () Bool)

(assert (=> b!2150495 (= e!1375169 e!1375170)))

(declare-fun res!927430 () Bool)

(assert (=> b!2150495 (= res!927430 (not ((_ is Leaf!11689) (c!341169 (totalInput!3251 thiss!29110)))))))

(assert (=> b!2150495 (=> res!927430 e!1375170)))

(declare-fun b!2150496 () Bool)

(assert (=> b!2150496 (= e!1375170 (inv!32483 (c!341169 (totalInput!3251 thiss!29110))))))

(assert (= (and d!645652 c!341173) b!2150494))

(assert (= (and d!645652 (not c!341173)) b!2150495))

(assert (= (and b!2150495 (not res!927430)) b!2150496))

(declare-fun m!2593234 () Bool)

(assert (=> b!2150494 m!2593234))

(declare-fun m!2593236 () Bool)

(assert (=> b!2150496 m!2593236))

(assert (=> b!2150467 d!645652))

(declare-fun d!645654 () Bool)

(declare-fun lambda!80870 () Int)

(declare-fun exists!732 ((InoxSet Context!2854) Int) Bool)

(assert (=> d!645654 (= (nullableZipper!193 z!514) (exists!732 z!514 lambda!80870))))

(declare-fun bs!445588 () Bool)

(assert (= bs!445588 d!645654))

(declare-fun m!2593238 () Bool)

(assert (=> bs!445588 m!2593238))

(assert (=> b!2150475 d!645654))

(declare-fun d!645656 () Bool)

(declare-fun res!927435 () Bool)

(declare-fun e!1375173 () Bool)

(assert (=> d!645656 (=> (not res!927435) (not e!1375173))))

(declare-fun valid!2225 (MutLongMap!2882) Bool)

(assert (=> d!645656 (= res!927435 (valid!2225 (v!29217 (underlying!5960 (cache!3177 thiss!29110)))))))

(assert (=> d!645656 (= (valid!2224 (cache!3177 thiss!29110)) e!1375173)))

(declare-fun b!2150501 () Bool)

(declare-fun res!927436 () Bool)

(assert (=> b!2150501 (=> (not res!927436) (not e!1375173))))

(declare-fun lambda!80873 () Int)

(declare-datatypes ((tuple2!24484 0))(
  ( (tuple2!24485 (_1!14536 (_ BitVec 64)) (_2!14536 List!24737)) )
))
(declare-datatypes ((List!24738 0))(
  ( (Nil!24654) (Cons!24654 (h!30055 tuple2!24484) (t!197284 List!24738)) )
))
(declare-fun forall!5031 (List!24738 Int) Bool)

(declare-datatypes ((ListLongMap!255 0))(
  ( (ListLongMap!256 (toList!1109 List!24738)) )
))
(declare-fun map!4964 (MutLongMap!2882) ListLongMap!255)

(assert (=> b!2150501 (= res!927436 (forall!5031 (toList!1109 (map!4964 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))) lambda!80873))))

(declare-fun b!2150502 () Bool)

(declare-fun allKeysSameHashInMap!84 (ListLongMap!255 Hashable!2796) Bool)

(assert (=> b!2150502 (= e!1375173 (allKeysSameHashInMap!84 (map!4964 (v!29217 (underlying!5960 (cache!3177 thiss!29110)))) (hashF!4719 (cache!3177 thiss!29110))))))

(assert (= (and d!645656 res!927435) b!2150501))

(assert (= (and b!2150501 res!927436) b!2150502))

(declare-fun m!2593240 () Bool)

(assert (=> d!645656 m!2593240))

(declare-fun m!2593242 () Bool)

(assert (=> b!2150501 m!2593242))

(declare-fun m!2593244 () Bool)

(assert (=> b!2150501 m!2593244))

(assert (=> b!2150502 m!2593242))

(assert (=> b!2150502 m!2593242))

(declare-fun m!2593246 () Bool)

(assert (=> b!2150502 m!2593246))

(assert (=> b!2150461 d!645656))

(declare-fun d!645658 () Bool)

(assert (=> d!645658 (= (array_inv!3126 (_keys!3179 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))) (bvsge (size!19312 (_keys!3179 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2150469 d!645658))

(declare-fun d!645660 () Bool)

(assert (=> d!645660 (= (array_inv!3127 (_values!3162 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))) (bvsge (size!19313 (_values!3162 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2150469 d!645660))

(declare-fun bs!445589 () Bool)

(declare-fun b!2150526 () Bool)

(assert (= bs!445589 (and b!2150526 b!2150501)))

(declare-fun lambda!80876 () Int)

(assert (=> bs!445589 (= lambda!80876 lambda!80873)))

(declare-fun b!2150525 () Bool)

(declare-datatypes ((Unit!37825 0))(
  ( (Unit!37826) )
))
(declare-fun e!1375188 () Unit!37825)

(declare-fun e!1375194 () Unit!37825)

(assert (=> b!2150525 (= e!1375188 e!1375194)))

(declare-fun res!927443 () Bool)

(declare-fun call!129015 () Bool)

(assert (=> b!2150525 (= res!927443 call!129015)))

(declare-fun e!1375190 () Bool)

(assert (=> b!2150525 (=> (not res!927443) (not e!1375190))))

(declare-fun c!341187 () Bool)

(assert (=> b!2150525 (= c!341187 e!1375190)))

(declare-fun e!1375192 () Unit!37825)

(declare-fun lt!800789 () (_ BitVec 64))

(declare-fun forallContained!762 (List!24738 Int tuple2!24484) Unit!37825)

(declare-fun apply!6025 (MutLongMap!2882 (_ BitVec 64)) List!24737)

(assert (=> b!2150526 (= e!1375192 (forallContained!762 (toList!1109 (map!4964 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))) lambda!80876 (tuple2!24485 lt!800789 (apply!6025 (v!29217 (underlying!5960 (cache!3177 thiss!29110))) lt!800789))))))

(declare-fun c!341184 () Bool)

(declare-fun contains!4224 (List!24738 tuple2!24484) Bool)

(assert (=> b!2150526 (= c!341184 (not (contains!4224 (toList!1109 (map!4964 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))) (tuple2!24485 lt!800789 (apply!6025 (v!29217 (underlying!5960 (cache!3177 thiss!29110))) lt!800789)))))))

(declare-fun lt!800780 () Unit!37825)

(declare-fun e!1375189 () Unit!37825)

(assert (=> b!2150526 (= lt!800780 e!1375189)))

(declare-fun d!645662 () Bool)

(declare-fun lt!800785 () Bool)

(declare-fun contains!4225 (ListMap!699 tuple3!3646) Bool)

(assert (=> d!645662 (= lt!800785 (contains!4225 (map!4963 (cache!3177 thiss!29110)) (tuple3!3647 z!514 from!952 lastNullablePos!91)))))

(declare-fun e!1375191 () Bool)

(assert (=> d!645662 (= lt!800785 e!1375191)))

(declare-fun res!927444 () Bool)

(assert (=> d!645662 (=> (not res!927444) (not e!1375191))))

(declare-fun contains!4226 (MutLongMap!2882 (_ BitVec 64)) Bool)

(assert (=> d!645662 (= res!927444 (contains!4226 (v!29217 (underlying!5960 (cache!3177 thiss!29110))) lt!800789))))

(declare-fun lt!800781 () Unit!37825)

(assert (=> d!645662 (= lt!800781 e!1375188)))

(declare-fun c!341185 () Bool)

(declare-fun extractMap!78 (List!24738) ListMap!699)

(assert (=> d!645662 (= c!341185 (contains!4225 (extractMap!78 (toList!1109 (map!4964 (v!29217 (underlying!5960 (cache!3177 thiss!29110)))))) (tuple3!3647 z!514 from!952 lastNullablePos!91)))))

(declare-fun lt!800791 () Unit!37825)

(assert (=> d!645662 (= lt!800791 e!1375192)))

(declare-fun c!341186 () Bool)

(assert (=> d!645662 (= c!341186 (contains!4226 (v!29217 (underlying!5960 (cache!3177 thiss!29110))) lt!800789))))

(declare-fun hash!550 (Hashable!2796 tuple3!3646) (_ BitVec 64))

(assert (=> d!645662 (= lt!800789 (hash!550 (hashF!4719 (cache!3177 thiss!29110)) (tuple3!3647 z!514 from!952 lastNullablePos!91)))))

(assert (=> d!645662 (valid!2224 (cache!3177 thiss!29110))))

(assert (=> d!645662 (= (contains!4223 (cache!3177 thiss!29110) (tuple3!3647 z!514 from!952 lastNullablePos!91)) lt!800785)))

(declare-fun b!2150527 () Bool)

(assert (=> b!2150527 false))

(declare-fun lt!800775 () Unit!37825)

(declare-fun lt!800788 () Unit!37825)

(assert (=> b!2150527 (= lt!800775 lt!800788)))

(declare-fun lt!800783 () ListLongMap!255)

(assert (=> b!2150527 (contains!4225 (extractMap!78 (toList!1109 lt!800783)) (tuple3!3647 z!514 from!952 lastNullablePos!91))))

(declare-fun lemmaInLongMapThenInGenericMap!15 (ListLongMap!255 tuple3!3646 Hashable!2796) Unit!37825)

(assert (=> b!2150527 (= lt!800788 (lemmaInLongMapThenInGenericMap!15 lt!800783 (tuple3!3647 z!514 from!952 lastNullablePos!91) (hashF!4719 (cache!3177 thiss!29110))))))

(declare-fun call!129018 () ListLongMap!255)

(assert (=> b!2150527 (= lt!800783 call!129018)))

(declare-fun Unit!37827 () Unit!37825)

(assert (=> b!2150527 (= e!1375194 Unit!37827)))

(declare-fun b!2150528 () Bool)

(declare-fun Unit!37828 () Unit!37825)

(assert (=> b!2150528 (= e!1375192 Unit!37828)))

(declare-fun bm!129010 () Bool)

(assert (=> bm!129010 (= call!129018 (map!4964 (v!29217 (underlying!5960 (cache!3177 thiss!29110)))))))

(declare-fun b!2150529 () Bool)

(declare-fun Unit!37829 () Unit!37825)

(assert (=> b!2150529 (= e!1375194 Unit!37829)))

(declare-fun bm!129011 () Bool)

(declare-fun call!129017 () Bool)

(declare-datatypes ((Option!4988 0))(
  ( (None!4987) (Some!4987 (v!29218 tuple2!24482)) )
))
(declare-fun call!129020 () Option!4988)

(declare-fun isDefined!4096 (Option!4988) Bool)

(assert (=> bm!129011 (= call!129017 (isDefined!4096 call!129020))))

(declare-fun b!2150530 () Bool)

(declare-fun e!1375193 () Bool)

(assert (=> b!2150530 (= e!1375193 call!129017)))

(declare-fun lt!800779 () ListLongMap!255)

(declare-fun call!129016 () List!24737)

(declare-fun call!129019 () (_ BitVec 64))

(declare-fun bm!129012 () Bool)

(declare-fun apply!6026 (ListLongMap!255 (_ BitVec 64)) List!24737)

(assert (=> bm!129012 (= call!129016 (apply!6026 (ite c!341185 lt!800779 call!129018) call!129019))))

(declare-fun b!2150531 () Bool)

(declare-fun getPair!15 (List!24737 tuple3!3646) Option!4988)

(assert (=> b!2150531 (= e!1375191 (isDefined!4096 (getPair!15 (apply!6025 (v!29217 (underlying!5960 (cache!3177 thiss!29110))) lt!800789) (tuple3!3647 z!514 from!952 lastNullablePos!91))))))

(declare-fun bm!129013 () Bool)

(declare-fun contains!4227 (ListLongMap!255 (_ BitVec 64)) Bool)

(assert (=> bm!129013 (= call!129015 (contains!4227 (ite c!341185 lt!800779 call!129018) call!129019))))

(declare-fun bm!129014 () Bool)

(assert (=> bm!129014 (= call!129019 (hash!550 (hashF!4719 (cache!3177 thiss!29110)) (tuple3!3647 z!514 from!952 lastNullablePos!91)))))

(declare-fun b!2150532 () Bool)

(declare-fun Unit!37830 () Unit!37825)

(assert (=> b!2150532 (= e!1375189 Unit!37830)))

(declare-fun bm!129015 () Bool)

(assert (=> bm!129015 (= call!129020 (getPair!15 call!129016 (tuple3!3647 z!514 from!952 lastNullablePos!91)))))

(declare-fun b!2150533 () Bool)

(assert (=> b!2150533 false))

(declare-fun lt!800777 () Unit!37825)

(declare-fun lt!800784 () Unit!37825)

(assert (=> b!2150533 (= lt!800777 lt!800784)))

(declare-fun lt!800790 () List!24738)

(declare-fun lt!800787 () List!24737)

(assert (=> b!2150533 (contains!4224 lt!800790 (tuple2!24485 lt!800789 lt!800787))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!16 (List!24738 (_ BitVec 64) List!24737) Unit!37825)

(assert (=> b!2150533 (= lt!800784 (lemmaGetValueByKeyImpliesContainsTuple!16 lt!800790 lt!800789 lt!800787))))

(assert (=> b!2150533 (= lt!800787 (apply!6025 (v!29217 (underlying!5960 (cache!3177 thiss!29110))) lt!800789))))

(assert (=> b!2150533 (= lt!800790 (toList!1109 (map!4964 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))))

(declare-fun lt!800792 () Unit!37825)

(declare-fun lt!800786 () Unit!37825)

(assert (=> b!2150533 (= lt!800792 lt!800786)))

(declare-fun lt!800776 () List!24738)

(declare-datatypes ((Option!4989 0))(
  ( (None!4988) (Some!4988 (v!29219 List!24737)) )
))
(declare-fun isDefined!4097 (Option!4989) Bool)

(declare-fun getValueByKey!50 (List!24738 (_ BitVec 64)) Option!4989)

(assert (=> b!2150533 (isDefined!4097 (getValueByKey!50 lt!800776 lt!800789))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!32 (List!24738 (_ BitVec 64)) Unit!37825)

(assert (=> b!2150533 (= lt!800786 (lemmaContainsKeyImpliesGetValueByKeyDefined!32 lt!800776 lt!800789))))

(assert (=> b!2150533 (= lt!800776 (toList!1109 (map!4964 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))))

(declare-fun lt!800774 () Unit!37825)

(declare-fun lt!800778 () Unit!37825)

(assert (=> b!2150533 (= lt!800774 lt!800778)))

(declare-fun lt!800773 () List!24738)

(declare-fun containsKey!51 (List!24738 (_ BitVec 64)) Bool)

(assert (=> b!2150533 (containsKey!51 lt!800773 lt!800789)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!16 (List!24738 (_ BitVec 64)) Unit!37825)

(assert (=> b!2150533 (= lt!800778 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!16 lt!800773 lt!800789))))

(assert (=> b!2150533 (= lt!800773 (toList!1109 (map!4964 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))))

(declare-fun Unit!37831 () Unit!37825)

(assert (=> b!2150533 (= e!1375189 Unit!37831)))

(declare-fun b!2150534 () Bool)

(assert (=> b!2150534 (= e!1375190 call!129017)))

(declare-fun b!2150535 () Bool)

(declare-fun lt!800782 () Unit!37825)

(assert (=> b!2150535 (= e!1375188 lt!800782)))

(assert (=> b!2150535 (= lt!800779 call!129018)))

(declare-fun lemmaInGenericMapThenInLongMap!15 (ListLongMap!255 tuple3!3646 Hashable!2796) Unit!37825)

(assert (=> b!2150535 (= lt!800782 (lemmaInGenericMapThenInLongMap!15 lt!800779 (tuple3!3647 z!514 from!952 lastNullablePos!91) (hashF!4719 (cache!3177 thiss!29110))))))

(declare-fun res!927445 () Bool)

(assert (=> b!2150535 (= res!927445 call!129015)))

(assert (=> b!2150535 (=> (not res!927445) (not e!1375193))))

(assert (=> b!2150535 e!1375193))

(assert (= (and d!645662 c!341186) b!2150526))

(assert (= (and d!645662 (not c!341186)) b!2150528))

(assert (= (and b!2150526 c!341184) b!2150533))

(assert (= (and b!2150526 (not c!341184)) b!2150532))

(assert (= (and d!645662 c!341185) b!2150535))

(assert (= (and d!645662 (not c!341185)) b!2150525))

(assert (= (and b!2150535 res!927445) b!2150530))

(assert (= (and b!2150525 res!927443) b!2150534))

(assert (= (and b!2150525 c!341187) b!2150527))

(assert (= (and b!2150525 (not c!341187)) b!2150529))

(assert (= (or b!2150535 b!2150525 b!2150534 b!2150527) bm!129010))

(assert (= (or b!2150535 b!2150530 b!2150525 b!2150534) bm!129014))

(assert (= (or b!2150530 b!2150534) bm!129012))

(assert (= (or b!2150535 b!2150525) bm!129013))

(assert (= (or b!2150530 b!2150534) bm!129015))

(assert (= (or b!2150530 b!2150534) bm!129011))

(assert (= (and d!645662 res!927444) b!2150531))

(assert (=> b!2150533 m!2593242))

(declare-fun m!2593248 () Bool)

(assert (=> b!2150533 m!2593248))

(declare-fun m!2593250 () Bool)

(assert (=> b!2150533 m!2593250))

(declare-fun m!2593252 () Bool)

(assert (=> b!2150533 m!2593252))

(declare-fun m!2593254 () Bool)

(assert (=> b!2150533 m!2593254))

(declare-fun m!2593256 () Bool)

(assert (=> b!2150533 m!2593256))

(declare-fun m!2593258 () Bool)

(assert (=> b!2150533 m!2593258))

(assert (=> b!2150533 m!2593256))

(declare-fun m!2593260 () Bool)

(assert (=> b!2150533 m!2593260))

(declare-fun m!2593262 () Bool)

(assert (=> b!2150533 m!2593262))

(assert (=> b!2150526 m!2593242))

(assert (=> b!2150526 m!2593258))

(declare-fun m!2593264 () Bool)

(assert (=> b!2150526 m!2593264))

(declare-fun m!2593266 () Bool)

(assert (=> b!2150526 m!2593266))

(declare-fun m!2593268 () Bool)

(assert (=> b!2150535 m!2593268))

(declare-fun m!2593270 () Bool)

(assert (=> b!2150527 m!2593270))

(assert (=> b!2150527 m!2593270))

(declare-fun m!2593272 () Bool)

(assert (=> b!2150527 m!2593272))

(declare-fun m!2593274 () Bool)

(assert (=> b!2150527 m!2593274))

(declare-fun m!2593276 () Bool)

(assert (=> bm!129011 m!2593276))

(assert (=> b!2150531 m!2593258))

(assert (=> b!2150531 m!2593258))

(declare-fun m!2593278 () Bool)

(assert (=> b!2150531 m!2593278))

(assert (=> b!2150531 m!2593278))

(declare-fun m!2593280 () Bool)

(assert (=> b!2150531 m!2593280))

(declare-fun m!2593282 () Bool)

(assert (=> bm!129015 m!2593282))

(assert (=> bm!129010 m!2593242))

(assert (=> d!645662 m!2593242))

(declare-fun m!2593284 () Bool)

(assert (=> d!645662 m!2593284))

(declare-fun m!2593286 () Bool)

(assert (=> d!645662 m!2593286))

(declare-fun m!2593288 () Bool)

(assert (=> d!645662 m!2593288))

(assert (=> d!645662 m!2593286))

(declare-fun m!2593290 () Bool)

(assert (=> d!645662 m!2593290))

(assert (=> d!645662 m!2593199))

(assert (=> d!645662 m!2593228))

(declare-fun m!2593292 () Bool)

(assert (=> d!645662 m!2593292))

(assert (=> d!645662 m!2593228))

(declare-fun m!2593294 () Bool)

(assert (=> bm!129012 m!2593294))

(assert (=> bm!129014 m!2593284))

(declare-fun m!2593296 () Bool)

(assert (=> bm!129013 m!2593296))

(assert (=> b!2150466 d!645662))

(declare-fun bs!445590 () Bool)

(declare-fun b!2150537 () Bool)

(assert (= bs!445590 (and b!2150537 b!2150491)))

(declare-fun lambda!80877 () Int)

(assert (=> bs!445590 (= (= localTotalInput!13 (totalInput!3251 thiss!29110)) (= lambda!80877 lambda!80867))))

(assert (=> b!2150537 true))

(declare-fun d!645664 () Bool)

(declare-fun res!927446 () Bool)

(declare-fun e!1375195 () Bool)

(assert (=> d!645664 (=> (not res!927446) (not e!1375195))))

(assert (=> d!645664 (= res!927446 (valid!2224 (cache!3177 thiss!29110)))))

(assert (=> d!645664 (= (validCacheMapFurthestNullable!150 (cache!3177 thiss!29110) localTotalInput!13) e!1375195)))

(declare-fun b!2150536 () Bool)

(declare-fun res!927447 () Bool)

(assert (=> b!2150536 (=> (not res!927447) (not e!1375195))))

(assert (=> b!2150536 (= res!927447 (invariantList!323 (toList!1108 (map!4963 (cache!3177 thiss!29110)))))))

(assert (=> b!2150537 (= e!1375195 (forall!5030 (toList!1108 (map!4963 (cache!3177 thiss!29110))) lambda!80877))))

(assert (= (and d!645664 res!927446) b!2150536))

(assert (= (and b!2150536 res!927447) b!2150537))

(assert (=> d!645664 m!2593199))

(assert (=> b!2150536 m!2593228))

(assert (=> b!2150536 m!2593230))

(assert (=> b!2150537 m!2593228))

(declare-fun m!2593298 () Bool)

(assert (=> b!2150537 m!2593298))

(assert (=> b!2150466 d!645664))

(declare-fun d!645666 () Bool)

(declare-fun res!927450 () Bool)

(declare-fun e!1375198 () Bool)

(assert (=> d!645666 (=> (not res!927450) (not e!1375198))))

(assert (=> d!645666 (= res!927450 ((_ is HashMap!2796) (cache!3177 thiss!29110)))))

(assert (=> d!645666 (= (inv!32480 thiss!29110) e!1375198)))

(declare-fun b!2150540 () Bool)

(assert (=> b!2150540 (= e!1375198 (validCacheMapFurthestNullable!150 (cache!3177 thiss!29110) (totalInput!3251 thiss!29110)))))

(assert (= (and d!645666 res!927450) b!2150540))

(assert (=> b!2150540 m!2593209))

(assert (=> start!208584 d!645666))

(declare-fun d!645668 () Bool)

(assert (=> d!645668 (= (inv!32481 localTotalInput!13) (isBalanced!2478 (c!341169 localTotalInput!13)))))

(declare-fun bs!445591 () Bool)

(assert (= bs!445591 d!645668))

(declare-fun m!2593300 () Bool)

(assert (=> bs!445591 m!2593300))

(assert (=> start!208584 d!645668))

(declare-fun tp!668109 () Bool)

(declare-fun b!2150549 () Bool)

(declare-fun e!1375204 () Bool)

(declare-fun tp!668110 () Bool)

(assert (=> b!2150549 (= e!1375204 (and (inv!32478 (left!18934 (c!341169 localTotalInput!13))) tp!668110 (inv!32478 (right!19264 (c!341169 localTotalInput!13))) tp!668109))))

(declare-fun b!2150551 () Bool)

(declare-fun e!1375203 () Bool)

(declare-fun tp!668111 () Bool)

(assert (=> b!2150551 (= e!1375203 tp!668111)))

(declare-fun b!2150550 () Bool)

(declare-fun inv!32484 (IArray!15991) Bool)

(assert (=> b!2150550 (= e!1375204 (and (inv!32484 (xs!10935 (c!341169 localTotalInput!13))) e!1375203))))

(assert (=> b!2150471 (= tp!668095 (and (inv!32478 (c!341169 localTotalInput!13)) e!1375204))))

(assert (= (and b!2150471 ((_ is Node!7993) (c!341169 localTotalInput!13))) b!2150549))

(assert (= b!2150550 b!2150551))

(assert (= (and b!2150471 ((_ is Leaf!11689) (c!341169 localTotalInput!13))) b!2150550))

(declare-fun m!2593302 () Bool)

(assert (=> b!2150549 m!2593302))

(declare-fun m!2593304 () Bool)

(assert (=> b!2150549 m!2593304))

(declare-fun m!2593306 () Bool)

(assert (=> b!2150550 m!2593306))

(assert (=> b!2150471 m!2593201))

(declare-fun condSetEmpty!17158 () Bool)

(assert (=> setNonEmpty!17155 (= condSetEmpty!17158 (= setRest!17155 ((as const (Array Context!2854 Bool)) false)))))

(declare-fun setRes!17158 () Bool)

(assert (=> setNonEmpty!17155 (= tp!668093 setRes!17158)))

(declare-fun setIsEmpty!17158 () Bool)

(assert (=> setIsEmpty!17158 setRes!17158))

(declare-fun setNonEmpty!17158 () Bool)

(declare-fun tp!668117 () Bool)

(declare-fun e!1375207 () Bool)

(declare-fun setElem!17158 () Context!2854)

(assert (=> setNonEmpty!17158 (= setRes!17158 (and tp!668117 (inv!32479 setElem!17158) e!1375207))))

(declare-fun setRest!17158 () (InoxSet Context!2854))

(assert (=> setNonEmpty!17158 (= setRest!17155 ((_ map or) (store ((as const (Array Context!2854 Bool)) false) setElem!17158 true) setRest!17158))))

(declare-fun b!2150556 () Bool)

(declare-fun tp!668116 () Bool)

(assert (=> b!2150556 (= e!1375207 tp!668116)))

(assert (= (and setNonEmpty!17155 condSetEmpty!17158) setIsEmpty!17158))

(assert (= (and setNonEmpty!17155 (not condSetEmpty!17158)) setNonEmpty!17158))

(assert (= setNonEmpty!17158 b!2150556))

(declare-fun m!2593308 () Bool)

(assert (=> setNonEmpty!17158 m!2593308))

(declare-fun e!1375209 () Bool)

(declare-fun tp!668119 () Bool)

(declare-fun tp!668118 () Bool)

(declare-fun b!2150557 () Bool)

(assert (=> b!2150557 (= e!1375209 (and (inv!32478 (left!18934 (c!341169 (totalInput!3251 thiss!29110)))) tp!668119 (inv!32478 (right!19264 (c!341169 (totalInput!3251 thiss!29110)))) tp!668118))))

(declare-fun b!2150559 () Bool)

(declare-fun e!1375208 () Bool)

(declare-fun tp!668120 () Bool)

(assert (=> b!2150559 (= e!1375208 tp!668120)))

(declare-fun b!2150558 () Bool)

(assert (=> b!2150558 (= e!1375209 (and (inv!32484 (xs!10935 (c!341169 (totalInput!3251 thiss!29110)))) e!1375208))))

(assert (=> b!2150467 (= tp!668094 (and (inv!32478 (c!341169 (totalInput!3251 thiss!29110))) e!1375209))))

(assert (= (and b!2150467 ((_ is Node!7993) (c!341169 (totalInput!3251 thiss!29110)))) b!2150557))

(assert (= b!2150558 b!2150559))

(assert (= (and b!2150467 ((_ is Leaf!11689) (c!341169 (totalInput!3251 thiss!29110)))) b!2150558))

(declare-fun m!2593310 () Bool)

(assert (=> b!2150557 m!2593310))

(declare-fun m!2593312 () Bool)

(assert (=> b!2150557 m!2593312))

(declare-fun m!2593314 () Bool)

(assert (=> b!2150558 m!2593314))

(assert (=> b!2150467 m!2593207))

(declare-fun setNonEmpty!17163 () Bool)

(declare-fun setRes!17163 () Bool)

(declare-fun e!1375219 () Bool)

(declare-fun tp!668141 () Bool)

(declare-fun setElem!17164 () Context!2854)

(assert (=> setNonEmpty!17163 (= setRes!17163 (and tp!668141 (inv!32479 setElem!17164) e!1375219))))

(declare-fun mapValue!13649 () List!24737)

(declare-fun setRest!17163 () (InoxSet Context!2854))

(assert (=> setNonEmpty!17163 (= (_1!14534 (_1!14535 (h!30054 mapValue!13649))) ((_ map or) (store ((as const (Array Context!2854 Bool)) false) setElem!17164 true) setRest!17163))))

(declare-fun setIsEmpty!17163 () Bool)

(assert (=> setIsEmpty!17163 setRes!17163))

(declare-fun mapNonEmpty!13649 () Bool)

(declare-fun mapRes!13649 () Bool)

(declare-fun tp!668139 () Bool)

(declare-fun e!1375220 () Bool)

(assert (=> mapNonEmpty!13649 (= mapRes!13649 (and tp!668139 e!1375220))))

(declare-fun mapKey!13649 () (_ BitVec 32))

(declare-fun mapRest!13649 () (Array (_ BitVec 32) List!24737))

(assert (=> mapNonEmpty!13649 (= mapRest!13646 (store mapRest!13649 mapKey!13649 mapValue!13649))))

(declare-fun b!2150570 () Bool)

(declare-fun e!1375221 () Bool)

(declare-fun setRes!17164 () Bool)

(declare-fun tp!668135 () Bool)

(assert (=> b!2150570 (= e!1375221 (and setRes!17164 tp!668135))))

(declare-fun condSetEmpty!17163 () Bool)

(declare-fun mapDefault!13649 () List!24737)

(assert (=> b!2150570 (= condSetEmpty!17163 (= (_1!14534 (_1!14535 (h!30054 mapDefault!13649))) ((as const (Array Context!2854 Bool)) false)))))

(declare-fun b!2150571 () Bool)

(declare-fun tp!668137 () Bool)

(assert (=> b!2150571 (= e!1375219 tp!668137)))

(declare-fun b!2150572 () Bool)

(declare-fun e!1375218 () Bool)

(declare-fun tp!668138 () Bool)

(assert (=> b!2150572 (= e!1375218 tp!668138)))

(declare-fun setIsEmpty!17164 () Bool)

(assert (=> setIsEmpty!17164 setRes!17164))

(declare-fun tp!668136 () Bool)

(declare-fun setNonEmpty!17164 () Bool)

(declare-fun setElem!17163 () Context!2854)

(assert (=> setNonEmpty!17164 (= setRes!17164 (and tp!668136 (inv!32479 setElem!17163) e!1375218))))

(declare-fun setRest!17164 () (InoxSet Context!2854))

(assert (=> setNonEmpty!17164 (= (_1!14534 (_1!14535 (h!30054 mapDefault!13649))) ((_ map or) (store ((as const (Array Context!2854 Bool)) false) setElem!17163 true) setRest!17164))))

(declare-fun b!2150573 () Bool)

(declare-fun tp!668140 () Bool)

(assert (=> b!2150573 (= e!1375220 (and setRes!17163 tp!668140))))

(declare-fun condSetEmpty!17164 () Bool)

(assert (=> b!2150573 (= condSetEmpty!17164 (= (_1!14534 (_1!14535 (h!30054 mapValue!13649))) ((as const (Array Context!2854 Bool)) false)))))

(declare-fun mapIsEmpty!13649 () Bool)

(assert (=> mapIsEmpty!13649 mapRes!13649))

(declare-fun condMapEmpty!13649 () Bool)

(assert (=> mapNonEmpty!13646 (= condMapEmpty!13649 (= mapRest!13646 ((as const (Array (_ BitVec 32) List!24737)) mapDefault!13649)))))

(assert (=> mapNonEmpty!13646 (= tp!668102 (and e!1375221 mapRes!13649))))

(assert (= (and mapNonEmpty!13646 condMapEmpty!13649) mapIsEmpty!13649))

(assert (= (and mapNonEmpty!13646 (not condMapEmpty!13649)) mapNonEmpty!13649))

(assert (= (and b!2150573 condSetEmpty!17164) setIsEmpty!17163))

(assert (= (and b!2150573 (not condSetEmpty!17164)) setNonEmpty!17163))

(assert (= setNonEmpty!17163 b!2150571))

(assert (= (and mapNonEmpty!13649 ((_ is Cons!24653) mapValue!13649)) b!2150573))

(assert (= (and b!2150570 condSetEmpty!17163) setIsEmpty!17164))

(assert (= (and b!2150570 (not condSetEmpty!17163)) setNonEmpty!17164))

(assert (= setNonEmpty!17164 b!2150572))

(assert (= (and mapNonEmpty!13646 ((_ is Cons!24653) mapDefault!13649)) b!2150570))

(declare-fun m!2593316 () Bool)

(assert (=> setNonEmpty!17163 m!2593316))

(declare-fun m!2593318 () Bool)

(assert (=> mapNonEmpty!13649 m!2593318))

(declare-fun m!2593320 () Bool)

(assert (=> setNonEmpty!17164 m!2593320))

(declare-fun setIsEmpty!17167 () Bool)

(declare-fun setRes!17167 () Bool)

(assert (=> setIsEmpty!17167 setRes!17167))

(declare-fun e!1375226 () Bool)

(declare-fun tp!668149 () Bool)

(declare-fun setNonEmpty!17167 () Bool)

(declare-fun setElem!17167 () Context!2854)

(assert (=> setNonEmpty!17167 (= setRes!17167 (and tp!668149 (inv!32479 setElem!17167) e!1375226))))

(declare-fun setRest!17167 () (InoxSet Context!2854))

(assert (=> setNonEmpty!17167 (= (_1!14534 (_1!14535 (h!30054 mapValue!13646))) ((_ map or) (store ((as const (Array Context!2854 Bool)) false) setElem!17167 true) setRest!17167))))

(declare-fun b!2150581 () Bool)

(declare-fun tp!668150 () Bool)

(assert (=> b!2150581 (= e!1375226 tp!668150)))

(declare-fun b!2150580 () Bool)

(declare-fun e!1375227 () Bool)

(declare-fun tp!668148 () Bool)

(assert (=> b!2150580 (= e!1375227 (and setRes!17167 tp!668148))))

(declare-fun condSetEmpty!17167 () Bool)

(assert (=> b!2150580 (= condSetEmpty!17167 (= (_1!14534 (_1!14535 (h!30054 mapValue!13646))) ((as const (Array Context!2854 Bool)) false)))))

(assert (=> mapNonEmpty!13646 (= tp!668092 e!1375227)))

(assert (= (and b!2150580 condSetEmpty!17167) setIsEmpty!17167))

(assert (= (and b!2150580 (not condSetEmpty!17167)) setNonEmpty!17167))

(assert (= setNonEmpty!17167 b!2150581))

(assert (= (and mapNonEmpty!13646 ((_ is Cons!24653) mapValue!13646)) b!2150580))

(declare-fun m!2593322 () Bool)

(assert (=> setNonEmpty!17167 m!2593322))

(declare-fun setIsEmpty!17168 () Bool)

(declare-fun setRes!17168 () Bool)

(assert (=> setIsEmpty!17168 setRes!17168))

(declare-fun setElem!17168 () Context!2854)

(declare-fun e!1375228 () Bool)

(declare-fun tp!668152 () Bool)

(declare-fun setNonEmpty!17168 () Bool)

(assert (=> setNonEmpty!17168 (= setRes!17168 (and tp!668152 (inv!32479 setElem!17168) e!1375228))))

(declare-fun setRest!17168 () (InoxSet Context!2854))

(assert (=> setNonEmpty!17168 (= (_1!14534 (_1!14535 (h!30054 (zeroValue!3140 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2854 Bool)) false) setElem!17168 true) setRest!17168))))

(declare-fun b!2150583 () Bool)

(declare-fun tp!668153 () Bool)

(assert (=> b!2150583 (= e!1375228 tp!668153)))

(declare-fun b!2150582 () Bool)

(declare-fun e!1375229 () Bool)

(declare-fun tp!668151 () Bool)

(assert (=> b!2150582 (= e!1375229 (and setRes!17168 tp!668151))))

(declare-fun condSetEmpty!17168 () Bool)

(assert (=> b!2150582 (= condSetEmpty!17168 (= (_1!14534 (_1!14535 (h!30054 (zeroValue!3140 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))))) ((as const (Array Context!2854 Bool)) false)))))

(assert (=> b!2150469 (= tp!668097 e!1375229)))

(assert (= (and b!2150582 condSetEmpty!17168) setIsEmpty!17168))

(assert (= (and b!2150582 (not condSetEmpty!17168)) setNonEmpty!17168))

(assert (= setNonEmpty!17168 b!2150583))

(assert (= (and b!2150469 ((_ is Cons!24653) (zeroValue!3140 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110)))))))) b!2150582))

(declare-fun m!2593324 () Bool)

(assert (=> setNonEmpty!17168 m!2593324))

(declare-fun setIsEmpty!17169 () Bool)

(declare-fun setRes!17169 () Bool)

(assert (=> setIsEmpty!17169 setRes!17169))

(declare-fun tp!668155 () Bool)

(declare-fun setNonEmpty!17169 () Bool)

(declare-fun setElem!17169 () Context!2854)

(declare-fun e!1375230 () Bool)

(assert (=> setNonEmpty!17169 (= setRes!17169 (and tp!668155 (inv!32479 setElem!17169) e!1375230))))

(declare-fun setRest!17169 () (InoxSet Context!2854))

(assert (=> setNonEmpty!17169 (= (_1!14534 (_1!14535 (h!30054 (minValue!3140 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2854 Bool)) false) setElem!17169 true) setRest!17169))))

(declare-fun b!2150585 () Bool)

(declare-fun tp!668156 () Bool)

(assert (=> b!2150585 (= e!1375230 tp!668156)))

(declare-fun b!2150584 () Bool)

(declare-fun e!1375231 () Bool)

(declare-fun tp!668154 () Bool)

(assert (=> b!2150584 (= e!1375231 (and setRes!17169 tp!668154))))

(declare-fun condSetEmpty!17169 () Bool)

(assert (=> b!2150584 (= condSetEmpty!17169 (= (_1!14534 (_1!14535 (h!30054 (minValue!3140 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110))))))))) ((as const (Array Context!2854 Bool)) false)))))

(assert (=> b!2150469 (= tp!668099 e!1375231)))

(assert (= (and b!2150584 condSetEmpty!17169) setIsEmpty!17169))

(assert (= (and b!2150584 (not condSetEmpty!17169)) setNonEmpty!17169))

(assert (= setNonEmpty!17169 b!2150585))

(assert (= (and b!2150469 ((_ is Cons!24653) (minValue!3140 (v!29216 (underlying!5959 (v!29217 (underlying!5960 (cache!3177 thiss!29110)))))))) b!2150584))

(declare-fun m!2593326 () Bool)

(assert (=> setNonEmpty!17169 m!2593326))

(declare-fun setIsEmpty!17170 () Bool)

(declare-fun setRes!17170 () Bool)

(assert (=> setIsEmpty!17170 setRes!17170))

(declare-fun setElem!17170 () Context!2854)

(declare-fun e!1375232 () Bool)

(declare-fun setNonEmpty!17170 () Bool)

(declare-fun tp!668158 () Bool)

(assert (=> setNonEmpty!17170 (= setRes!17170 (and tp!668158 (inv!32479 setElem!17170) e!1375232))))

(declare-fun setRest!17170 () (InoxSet Context!2854))

(assert (=> setNonEmpty!17170 (= (_1!14534 (_1!14535 (h!30054 mapDefault!13646))) ((_ map or) (store ((as const (Array Context!2854 Bool)) false) setElem!17170 true) setRest!17170))))

(declare-fun b!2150587 () Bool)

(declare-fun tp!668159 () Bool)

(assert (=> b!2150587 (= e!1375232 tp!668159)))

(declare-fun b!2150586 () Bool)

(declare-fun e!1375233 () Bool)

(declare-fun tp!668157 () Bool)

(assert (=> b!2150586 (= e!1375233 (and setRes!17170 tp!668157))))

(declare-fun condSetEmpty!17170 () Bool)

(assert (=> b!2150586 (= condSetEmpty!17170 (= (_1!14534 (_1!14535 (h!30054 mapDefault!13646))) ((as const (Array Context!2854 Bool)) false)))))

(assert (=> b!2150464 (= tp!668101 e!1375233)))

(assert (= (and b!2150586 condSetEmpty!17170) setIsEmpty!17170))

(assert (= (and b!2150586 (not condSetEmpty!17170)) setNonEmpty!17170))

(assert (= setNonEmpty!17170 b!2150587))

(assert (= (and b!2150464 ((_ is Cons!24653) mapDefault!13646)) b!2150586))

(declare-fun m!2593328 () Bool)

(assert (=> setNonEmpty!17170 m!2593328))

(declare-fun b!2150592 () Bool)

(declare-fun e!1375236 () Bool)

(declare-fun tp!668164 () Bool)

(declare-fun tp!668165 () Bool)

(assert (=> b!2150592 (= e!1375236 (and tp!668164 tp!668165))))

(assert (=> b!2150473 (= tp!668098 e!1375236)))

(assert (= (and b!2150473 ((_ is Cons!24652) (exprs!1927 setElem!17155))) b!2150592))

(check-sat (not bm!129014) (not setNonEmpty!17168) (not b!2150571) (not mapNonEmpty!13649) b_and!173129 (not b!2150490) (not b!2150557) (not d!645656) (not b!2150467) (not bm!129010) (not b!2150533) (not b!2150573) (not bm!129015) (not b!2150584) (not b!2150502) (not b!2150549) (not setNonEmpty!17163) (not b_next!64221) (not b!2150559) (not b!2150531) (not b!2150535) (not b!2150585) (not b!2150485) (not d!645654) (not b!2150551) (not b!2150558) (not b!2150526) (not b_next!64223) (not bm!129012) (not d!645662) (not b!2150483) (not b!2150496) (not b!2150592) (not b!2150501) (not b!2150581) (not b!2150527) (not b!2150582) (not b!2150556) (not setNonEmpty!17164) (not b!2150586) (not setNonEmpty!17167) (not b!2150537) (not b!2150580) (not d!645646) (not d!645650) (not b!2150491) (not b!2150572) (not b!2150536) (not b!2150583) (not b!2150540) (not b!2150471) (not setNonEmpty!17169) (not b!2150587) (not bm!129013) (not b!2150550) (not d!645664) (not d!645668) (not b!2150570) b_and!173131 (not d!645648) (not setNonEmpty!17170) (not bm!129011) (not setNonEmpty!17158) (not b!2150494))
(check-sat b_and!173129 b_and!173131 (not b_next!64223) (not b_next!64221))
