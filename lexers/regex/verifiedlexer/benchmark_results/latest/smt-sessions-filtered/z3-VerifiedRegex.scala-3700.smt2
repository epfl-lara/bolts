; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208662 () Bool)

(assert start!208662)

(declare-fun b!2151266 () Bool)

(declare-fun b_free!63557 () Bool)

(declare-fun b_next!64261 () Bool)

(assert (=> b!2151266 (= b_free!63557 (not b_next!64261))))

(declare-fun tp!668612 () Bool)

(declare-fun b_and!173169 () Bool)

(assert (=> b!2151266 (= tp!668612 b_and!173169)))

(declare-fun b!2151267 () Bool)

(declare-fun b_free!63559 () Bool)

(declare-fun b_next!64263 () Bool)

(assert (=> b!2151267 (= b_free!63559 (not b_next!64263))))

(declare-fun tp!668620 () Bool)

(declare-fun b_and!173171 () Bool)

(assert (=> b!2151267 (= tp!668620 b_and!173171)))

(declare-fun b!2151276 () Bool)

(assert (=> b!2151276 true))

(declare-fun b!2151260 () Bool)

(declare-fun e!1375790 () Bool)

(declare-fun e!1375789 () Bool)

(assert (=> b!2151260 (= e!1375790 e!1375789)))

(declare-fun b!2151261 () Bool)

(declare-fun e!1375782 () Bool)

(assert (=> b!2151261 (= e!1375789 e!1375782)))

(declare-fun b!2151262 () Bool)

(declare-fun e!1375784 () Bool)

(declare-fun tp!668615 () Bool)

(declare-fun mapRes!13685 () Bool)

(assert (=> b!2151262 (= e!1375784 (and tp!668615 mapRes!13685))))

(declare-fun condMapEmpty!13685 () Bool)

(declare-datatypes ((C!11880 0))(
  ( (C!11881 (val!6926 Int)) )
))
(declare-datatypes ((List!24768 0))(
  ( (Nil!24684) (Cons!24684 (h!30085 C!11880) (t!197314 List!24768)) )
))
(declare-datatypes ((Regex!5867 0))(
  ( (ElementMatch!5867 (c!341242 C!11880)) (Concat!10169 (regOne!12246 Regex!5867) (regTwo!12246 Regex!5867)) (EmptyExpr!5867) (Star!5867 (reg!6196 Regex!5867)) (EmptyLang!5867) (Union!5867 (regOne!12247 Regex!5867) (regTwo!12247 Regex!5867)) )
))
(declare-datatypes ((List!24769 0))(
  ( (Nil!24685) (Cons!24685 (h!30086 Regex!5867) (t!197315 List!24769)) )
))
(declare-datatypes ((Context!2874 0))(
  ( (Context!2875 (exprs!1937 List!24769)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3666 0))(
  ( (tuple3!3667 (_1!14557 (InoxSet Context!2874)) (_2!14557 Int) (_3!2303 Int)) )
))
(declare-datatypes ((tuple2!24508 0))(
  ( (tuple2!24509 (_1!14558 tuple3!3666) (_2!14558 Int)) )
))
(declare-datatypes ((List!24770 0))(
  ( (Nil!24686) (Cons!24686 (h!30087 tuple2!24508) (t!197316 List!24770)) )
))
(declare-datatypes ((array!9809 0))(
  ( (array!9810 (arr!4380 (Array (_ BitVec 32) (_ BitVec 64))) (size!19332 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2806 0))(
  ( (HashableExt!2805 (__x!16852 Int)) )
))
(declare-datatypes ((array!9811 0))(
  ( (array!9812 (arr!4381 (Array (_ BitVec 32) List!24770)) (size!19333 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5784 0))(
  ( (LongMapFixedSize!5785 (defaultEntry!3257 Int) (mask!7141 (_ BitVec 32)) (extraKeys!3140 (_ BitVec 32)) (zeroValue!3150 List!24770) (minValue!3150 List!24770) (_size!5835 (_ BitVec 32)) (_keys!3189 array!9809) (_values!3172 array!9811) (_vacant!2953 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11393 0))(
  ( (Cell!11394 (v!29242 LongMapFixedSize!5784)) )
))
(declare-datatypes ((MutLongMap!2892 0))(
  ( (LongMap!2892 (underlying!5979 Cell!11393)) (MutLongMapExt!2891 (__x!16853 Int)) )
))
(declare-datatypes ((Cell!11395 0))(
  ( (Cell!11396 (v!29243 MutLongMap!2892)) )
))
(declare-datatypes ((MutableMap!2806 0))(
  ( (MutableMapExt!2805 (__x!16854 Int)) (HashMap!2806 (underlying!5980 Cell!11395) (hashF!4729 Hashable!2806) (_size!5836 (_ BitVec 32)) (defaultValue!2968 Int)) )
))
(declare-datatypes ((IArray!16011 0))(
  ( (IArray!16012 (innerList!8063 List!24768)) )
))
(declare-datatypes ((Conc!8003 0))(
  ( (Node!8003 (left!18959 Conc!8003) (right!19289 Conc!8003) (csize!16236 Int) (cheight!8214 Int)) (Leaf!11704 (xs!10945 IArray!16011) (csize!16237 Int)) (Empty!8003) )
))
(declare-datatypes ((BalanceConc!15768 0))(
  ( (BalanceConc!15769 (c!341243 Conc!8003)) )
))
(declare-datatypes ((CacheFurthestNullable!970 0))(
  ( (CacheFurthestNullable!971 (cache!3187 MutableMap!2806) (totalInput!3264 BalanceConc!15768)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!970)

(declare-fun mapDefault!13685 () List!24770)

(assert (=> b!2151262 (= condMapEmpty!13685 (= (arr!4381 (_values!3172 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24770)) mapDefault!13685)))))

(declare-fun b!2151263 () Bool)

(declare-fun res!927657 () Bool)

(declare-fun e!1375791 () Bool)

(assert (=> b!2151263 (=> (not res!927657) (not e!1375791))))

(declare-fun validCacheMapFurthestNullable!157 (MutableMap!2806 BalanceConc!15768) Bool)

(assert (=> b!2151263 (= res!927657 (validCacheMapFurthestNullable!157 (cache!3187 thiss!29110) (totalInput!3264 thiss!29110)))))

(declare-fun setElem!17230 () Context!2874)

(declare-fun setRes!17230 () Bool)

(declare-fun tp!668619 () Bool)

(declare-fun setNonEmpty!17230 () Bool)

(declare-fun e!1375787 () Bool)

(declare-fun inv!32532 (Context!2874) Bool)

(assert (=> setNonEmpty!17230 (= setRes!17230 (and tp!668619 (inv!32532 setElem!17230) e!1375787))))

(declare-fun z!514 () (InoxSet Context!2874))

(declare-fun setRest!17230 () (InoxSet Context!2874))

(assert (=> setNonEmpty!17230 (= z!514 ((_ map or) (store ((as const (Array Context!2874 Bool)) false) setElem!17230 true) setRest!17230))))

(declare-fun b!2151264 () Bool)

(declare-fun res!927654 () Bool)

(declare-fun e!1375785 () Bool)

(assert (=> b!2151264 (=> res!927654 e!1375785)))

(get-info :version)

(assert (=> b!2151264 (= res!927654 (not ((_ is HashMap!2806) (cache!3187 thiss!29110))))))

(declare-fun b!2151265 () Bool)

(declare-fun res!927660 () Bool)

(assert (=> b!2151265 (=> res!927660 e!1375785)))

(declare-fun valid!2230 (MutableMap!2806) Bool)

(assert (=> b!2151265 (= res!927660 (not (valid!2230 (cache!3187 thiss!29110))))))

(declare-fun tp!668616 () Bool)

(declare-fun tp!668617 () Bool)

(declare-fun array_inv!3140 (array!9809) Bool)

(declare-fun array_inv!3141 (array!9811) Bool)

(assert (=> b!2151266 (= e!1375782 (and tp!668612 tp!668616 tp!668617 (array_inv!3140 (_keys!3189 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))) (array_inv!3141 (_values!3172 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))) e!1375784))))

(declare-fun e!1375788 () Bool)

(declare-fun e!1375795 () Bool)

(assert (=> b!2151267 (= e!1375788 (and e!1375795 tp!668620))))

(declare-fun b!2151268 () Bool)

(declare-fun e!1375783 () Bool)

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(assert (=> b!2151268 (= e!1375783 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun b!2151269 () Bool)

(declare-fun lt!800948 () MutLongMap!2892)

(assert (=> b!2151269 (= e!1375795 (and e!1375790 ((_ is LongMap!2892) lt!800948)))))

(assert (=> b!2151269 (= lt!800948 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))

(declare-fun b!2151270 () Bool)

(assert (=> b!2151270 (= e!1375791 (not e!1375785))))

(declare-fun res!927659 () Bool)

(assert (=> b!2151270 (=> res!927659 e!1375785)))

(declare-fun contains!4240 (MutableMap!2806 tuple3!3666) Bool)

(assert (=> b!2151270 (= res!927659 (not (contains!4240 (cache!3187 thiss!29110) (tuple3!3667 z!514 from!952 lastNullablePos!91))))))

(declare-fun localTotalInput!13 () BalanceConc!15768)

(assert (=> b!2151270 (validCacheMapFurthestNullable!157 (cache!3187 thiss!29110) localTotalInput!13)))

(declare-fun b!2151271 () Bool)

(declare-fun tp!668611 () Bool)

(assert (=> b!2151271 (= e!1375787 tp!668611)))

(declare-fun b!2151272 () Bool)

(declare-fun e!1375786 () Bool)

(declare-fun tp!668621 () Bool)

(declare-fun inv!32533 (Conc!8003) Bool)

(assert (=> b!2151272 (= e!1375786 (and (inv!32533 (c!341243 (totalInput!3264 thiss!29110))) tp!668621))))

(declare-fun setIsEmpty!17230 () Bool)

(assert (=> setIsEmpty!17230 setRes!17230))

(declare-fun e!1375793 () Bool)

(declare-fun b!2151273 () Bool)

(declare-fun inv!32534 (BalanceConc!15768) Bool)

(assert (=> b!2151273 (= e!1375793 (and e!1375788 (inv!32534 (totalInput!3264 thiss!29110)) e!1375786))))

(declare-fun b!2151274 () Bool)

(declare-fun res!927656 () Bool)

(assert (=> b!2151274 (=> (not res!927656) (not e!1375791))))

(assert (=> b!2151274 (= res!927656 e!1375783)))

(declare-fun res!927655 () Bool)

(assert (=> b!2151274 (=> res!927655 e!1375783)))

(declare-fun nullableZipper!200 ((InoxSet Context!2874)) Bool)

(assert (=> b!2151274 (= res!927655 (not (nullableZipper!200 z!514)))))

(declare-fun mapNonEmpty!13685 () Bool)

(declare-fun tp!668618 () Bool)

(declare-fun tp!668614 () Bool)

(assert (=> mapNonEmpty!13685 (= mapRes!13685 (and tp!668618 tp!668614))))

(declare-fun mapKey!13685 () (_ BitVec 32))

(declare-fun mapRest!13685 () (Array (_ BitVec 32) List!24770))

(declare-fun mapValue!13685 () List!24770)

(assert (=> mapNonEmpty!13685 (= (arr!4381 (_values!3172 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))) (store mapRest!13685 mapKey!13685 mapValue!13685))))

(declare-fun res!927658 () Bool)

(assert (=> start!208662 (=> (not res!927658) (not e!1375791))))

(assert (=> start!208662 (= res!927658 (and (= localTotalInput!13 (totalInput!3264 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208662 e!1375791))

(declare-fun condSetEmpty!17230 () Bool)

(assert (=> start!208662 (= condSetEmpty!17230 (= z!514 ((as const (Array Context!2874 Bool)) false)))))

(assert (=> start!208662 setRes!17230))

(assert (=> start!208662 true))

(declare-fun inv!32535 (CacheFurthestNullable!970) Bool)

(assert (=> start!208662 (and (inv!32535 thiss!29110) e!1375793)))

(declare-fun e!1375792 () Bool)

(assert (=> start!208662 (and (inv!32534 localTotalInput!13) e!1375792)))

(declare-fun mapIsEmpty!13685 () Bool)

(assert (=> mapIsEmpty!13685 mapRes!13685))

(declare-fun b!2151275 () Bool)

(declare-fun tp!668613 () Bool)

(assert (=> b!2151275 (= e!1375792 (and (inv!32533 (c!341243 localTotalInput!13)) tp!668613))))

(declare-fun lambda!80912 () Int)

(declare-fun forall!5037 (List!24770 Int) Bool)

(declare-datatypes ((ListMap!705 0))(
  ( (ListMap!706 (toList!1114 List!24770)) )
))
(declare-fun map!4974 (MutableMap!2806) ListMap!705)

(assert (=> b!2151276 (= e!1375785 (forall!5037 (toList!1114 (map!4974 (cache!3187 thiss!29110))) lambda!80912))))

(assert (= (and start!208662 res!927658) b!2151274))

(assert (= (and b!2151274 (not res!927655)) b!2151268))

(assert (= (and b!2151274 res!927656) b!2151263))

(assert (= (and b!2151263 res!927657) b!2151270))

(assert (= (and b!2151270 (not res!927659)) b!2151264))

(assert (= (and b!2151264 (not res!927654)) b!2151265))

(assert (= (and b!2151265 (not res!927660)) b!2151276))

(assert (= (and start!208662 condSetEmpty!17230) setIsEmpty!17230))

(assert (= (and start!208662 (not condSetEmpty!17230)) setNonEmpty!17230))

(assert (= setNonEmpty!17230 b!2151271))

(assert (= (and b!2151262 condMapEmpty!13685) mapIsEmpty!13685))

(assert (= (and b!2151262 (not condMapEmpty!13685)) mapNonEmpty!13685))

(assert (= b!2151266 b!2151262))

(assert (= b!2151261 b!2151266))

(assert (= b!2151260 b!2151261))

(assert (= (and b!2151269 ((_ is LongMap!2892) (v!29243 (underlying!5980 (cache!3187 thiss!29110))))) b!2151260))

(assert (= b!2151267 b!2151269))

(assert (= (and b!2151273 ((_ is HashMap!2806) (cache!3187 thiss!29110))) b!2151267))

(assert (= b!2151273 b!2151272))

(assert (= start!208662 b!2151273))

(assert (= start!208662 b!2151275))

(declare-fun m!2593788 () Bool)

(assert (=> b!2151270 m!2593788))

(declare-fun m!2593790 () Bool)

(assert (=> b!2151270 m!2593790))

(declare-fun m!2593792 () Bool)

(assert (=> b!2151276 m!2593792))

(declare-fun m!2593794 () Bool)

(assert (=> b!2151276 m!2593794))

(declare-fun m!2593796 () Bool)

(assert (=> b!2151272 m!2593796))

(declare-fun m!2593798 () Bool)

(assert (=> b!2151274 m!2593798))

(declare-fun m!2593800 () Bool)

(assert (=> mapNonEmpty!13685 m!2593800))

(declare-fun m!2593802 () Bool)

(assert (=> b!2151266 m!2593802))

(declare-fun m!2593804 () Bool)

(assert (=> b!2151266 m!2593804))

(declare-fun m!2593806 () Bool)

(assert (=> b!2151275 m!2593806))

(declare-fun m!2593808 () Bool)

(assert (=> setNonEmpty!17230 m!2593808))

(declare-fun m!2593810 () Bool)

(assert (=> b!2151273 m!2593810))

(declare-fun m!2593812 () Bool)

(assert (=> b!2151263 m!2593812))

(declare-fun m!2593814 () Bool)

(assert (=> start!208662 m!2593814))

(declare-fun m!2593816 () Bool)

(assert (=> start!208662 m!2593816))

(declare-fun m!2593818 () Bool)

(assert (=> b!2151265 m!2593818))

(check-sat b_and!173169 (not b_next!64261) (not b!2151265) (not b!2151273) (not b!2151266) (not b!2151271) (not b!2151275) b_and!173171 (not mapNonEmpty!13685) (not b!2151274) (not b_next!64263) (not b!2151272) (not b!2151263) (not b!2151276) (not b!2151270) (not setNonEmpty!17230) (not start!208662) (not b!2151262))
(check-sat b_and!173171 b_and!173169 (not b_next!64261) (not b_next!64263))
(get-model)

(declare-fun bs!445613 () Bool)

(declare-fun b!2151284 () Bool)

(assert (= bs!445613 (and b!2151284 b!2151276)))

(declare-fun lambda!80915 () Int)

(assert (=> bs!445613 (= (= (totalInput!3264 thiss!29110) localTotalInput!13) (= lambda!80915 lambda!80912))))

(assert (=> b!2151284 true))

(declare-fun d!645725 () Bool)

(declare-fun res!927665 () Bool)

(declare-fun e!1375798 () Bool)

(assert (=> d!645725 (=> (not res!927665) (not e!1375798))))

(assert (=> d!645725 (= res!927665 (valid!2230 (cache!3187 thiss!29110)))))

(assert (=> d!645725 (= (validCacheMapFurthestNullable!157 (cache!3187 thiss!29110) (totalInput!3264 thiss!29110)) e!1375798)))

(declare-fun b!2151283 () Bool)

(declare-fun res!927666 () Bool)

(assert (=> b!2151283 (=> (not res!927666) (not e!1375798))))

(declare-fun invariantList!326 (List!24770) Bool)

(assert (=> b!2151283 (= res!927666 (invariantList!326 (toList!1114 (map!4974 (cache!3187 thiss!29110)))))))

(assert (=> b!2151284 (= e!1375798 (forall!5037 (toList!1114 (map!4974 (cache!3187 thiss!29110))) lambda!80915))))

(assert (= (and d!645725 res!927665) b!2151283))

(assert (= (and b!2151283 res!927666) b!2151284))

(assert (=> d!645725 m!2593818))

(assert (=> b!2151283 m!2593792))

(declare-fun m!2593821 () Bool)

(assert (=> b!2151283 m!2593821))

(assert (=> b!2151284 m!2593792))

(declare-fun m!2593823 () Bool)

(assert (=> b!2151284 m!2593823))

(assert (=> b!2151263 d!645725))

(declare-fun d!645727 () Bool)

(declare-fun c!341246 () Bool)

(assert (=> d!645727 (= c!341246 ((_ is Node!8003) (c!341243 localTotalInput!13)))))

(declare-fun e!1375803 () Bool)

(assert (=> d!645727 (= (inv!32533 (c!341243 localTotalInput!13)) e!1375803)))

(declare-fun b!2151291 () Bool)

(declare-fun inv!32536 (Conc!8003) Bool)

(assert (=> b!2151291 (= e!1375803 (inv!32536 (c!341243 localTotalInput!13)))))

(declare-fun b!2151292 () Bool)

(declare-fun e!1375804 () Bool)

(assert (=> b!2151292 (= e!1375803 e!1375804)))

(declare-fun res!927669 () Bool)

(assert (=> b!2151292 (= res!927669 (not ((_ is Leaf!11704) (c!341243 localTotalInput!13))))))

(assert (=> b!2151292 (=> res!927669 e!1375804)))

(declare-fun b!2151293 () Bool)

(declare-fun inv!32537 (Conc!8003) Bool)

(assert (=> b!2151293 (= e!1375804 (inv!32537 (c!341243 localTotalInput!13)))))

(assert (= (and d!645727 c!341246) b!2151291))

(assert (= (and d!645727 (not c!341246)) b!2151292))

(assert (= (and b!2151292 (not res!927669)) b!2151293))

(declare-fun m!2593825 () Bool)

(assert (=> b!2151291 m!2593825))

(declare-fun m!2593827 () Bool)

(assert (=> b!2151293 m!2593827))

(assert (=> b!2151275 d!645727))

(declare-fun d!645729 () Bool)

(declare-fun c!341247 () Bool)

(assert (=> d!645729 (= c!341247 ((_ is Node!8003) (c!341243 (totalInput!3264 thiss!29110))))))

(declare-fun e!1375805 () Bool)

(assert (=> d!645729 (= (inv!32533 (c!341243 (totalInput!3264 thiss!29110))) e!1375805)))

(declare-fun b!2151294 () Bool)

(assert (=> b!2151294 (= e!1375805 (inv!32536 (c!341243 (totalInput!3264 thiss!29110))))))

(declare-fun b!2151295 () Bool)

(declare-fun e!1375806 () Bool)

(assert (=> b!2151295 (= e!1375805 e!1375806)))

(declare-fun res!927670 () Bool)

(assert (=> b!2151295 (= res!927670 (not ((_ is Leaf!11704) (c!341243 (totalInput!3264 thiss!29110)))))))

(assert (=> b!2151295 (=> res!927670 e!1375806)))

(declare-fun b!2151296 () Bool)

(assert (=> b!2151296 (= e!1375806 (inv!32537 (c!341243 (totalInput!3264 thiss!29110))))))

(assert (= (and d!645729 c!341247) b!2151294))

(assert (= (and d!645729 (not c!341247)) b!2151295))

(assert (= (and b!2151295 (not res!927670)) b!2151296))

(declare-fun m!2593829 () Bool)

(assert (=> b!2151294 m!2593829))

(declare-fun m!2593831 () Bool)

(assert (=> b!2151296 m!2593831))

(assert (=> b!2151272 d!645729))

(declare-fun d!645731 () Bool)

(assert (=> d!645731 (= (array_inv!3140 (_keys!3189 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))) (bvsge (size!19332 (_keys!3189 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2151266 d!645731))

(declare-fun d!645733 () Bool)

(assert (=> d!645733 (= (array_inv!3141 (_values!3172 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))) (bvsge (size!19333 (_values!3172 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2151266 d!645733))

(declare-fun d!645735 () Bool)

(declare-fun res!927675 () Bool)

(declare-fun e!1375809 () Bool)

(assert (=> d!645735 (=> (not res!927675) (not e!1375809))))

(declare-fun valid!2231 (MutLongMap!2892) Bool)

(assert (=> d!645735 (= res!927675 (valid!2231 (v!29243 (underlying!5980 (cache!3187 thiss!29110)))))))

(assert (=> d!645735 (= (valid!2230 (cache!3187 thiss!29110)) e!1375809)))

(declare-fun b!2151301 () Bool)

(declare-fun res!927676 () Bool)

(assert (=> b!2151301 (=> (not res!927676) (not e!1375809))))

(declare-fun lambda!80918 () Int)

(declare-datatypes ((tuple2!24510 0))(
  ( (tuple2!24511 (_1!14559 (_ BitVec 64)) (_2!14559 List!24770)) )
))
(declare-datatypes ((List!24771 0))(
  ( (Nil!24687) (Cons!24687 (h!30088 tuple2!24510) (t!197317 List!24771)) )
))
(declare-fun forall!5038 (List!24771 Int) Bool)

(declare-datatypes ((ListLongMap!261 0))(
  ( (ListLongMap!262 (toList!1115 List!24771)) )
))
(declare-fun map!4975 (MutLongMap!2892) ListLongMap!261)

(assert (=> b!2151301 (= res!927676 (forall!5038 (toList!1115 (map!4975 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))) lambda!80918))))

(declare-fun b!2151302 () Bool)

(declare-fun allKeysSameHashInMap!86 (ListLongMap!261 Hashable!2806) Bool)

(assert (=> b!2151302 (= e!1375809 (allKeysSameHashInMap!86 (map!4975 (v!29243 (underlying!5980 (cache!3187 thiss!29110)))) (hashF!4729 (cache!3187 thiss!29110))))))

(assert (= (and d!645735 res!927675) b!2151301))

(assert (= (and b!2151301 res!927676) b!2151302))

(declare-fun m!2593833 () Bool)

(assert (=> d!645735 m!2593833))

(declare-fun m!2593835 () Bool)

(assert (=> b!2151301 m!2593835))

(declare-fun m!2593837 () Bool)

(assert (=> b!2151301 m!2593837))

(assert (=> b!2151302 m!2593835))

(assert (=> b!2151302 m!2593835))

(declare-fun m!2593839 () Bool)

(assert (=> b!2151302 m!2593839))

(assert (=> b!2151265 d!645735))

(declare-fun d!645737 () Bool)

(declare-fun lambda!80921 () Int)

(declare-fun exists!735 ((InoxSet Context!2874) Int) Bool)

(assert (=> d!645737 (= (nullableZipper!200 z!514) (exists!735 z!514 lambda!80921))))

(declare-fun bs!445614 () Bool)

(assert (= bs!445614 d!645737))

(declare-fun m!2593841 () Bool)

(assert (=> bs!445614 m!2593841))

(assert (=> b!2151274 d!645737))

(declare-fun d!645739 () Bool)

(declare-fun res!927679 () Bool)

(declare-fun e!1375812 () Bool)

(assert (=> d!645739 (=> (not res!927679) (not e!1375812))))

(assert (=> d!645739 (= res!927679 ((_ is HashMap!2806) (cache!3187 thiss!29110)))))

(assert (=> d!645739 (= (inv!32535 thiss!29110) e!1375812)))

(declare-fun b!2151305 () Bool)

(assert (=> b!2151305 (= e!1375812 (validCacheMapFurthestNullable!157 (cache!3187 thiss!29110) (totalInput!3264 thiss!29110)))))

(assert (= (and d!645739 res!927679) b!2151305))

(assert (=> b!2151305 m!2593812))

(assert (=> start!208662 d!645739))

(declare-fun d!645741 () Bool)

(declare-fun isBalanced!2481 (Conc!8003) Bool)

(assert (=> d!645741 (= (inv!32534 localTotalInput!13) (isBalanced!2481 (c!341243 localTotalInput!13)))))

(declare-fun bs!445615 () Bool)

(assert (= bs!445615 d!645741))

(declare-fun m!2593843 () Bool)

(assert (=> bs!445615 m!2593843))

(assert (=> start!208662 d!645741))

(declare-fun bs!445616 () Bool)

(declare-fun b!2151331 () Bool)

(assert (= bs!445616 (and b!2151331 b!2151301)))

(declare-fun lambda!80924 () Int)

(assert (=> bs!445616 (= lambda!80924 lambda!80918)))

(declare-fun call!129073 () (_ BitVec 64))

(declare-fun bm!129064 () Bool)

(declare-fun call!129069 () ListLongMap!261)

(declare-fun call!129070 () Bool)

(declare-fun c!341260 () Bool)

(declare-fun lt!800989 () ListLongMap!261)

(declare-fun contains!4241 (ListLongMap!261 (_ BitVec 64)) Bool)

(assert (=> bm!129064 (= call!129070 (contains!4241 (ite c!341260 lt!800989 call!129069) call!129073))))

(declare-fun b!2151328 () Bool)

(declare-datatypes ((Unit!37846 0))(
  ( (Unit!37847) )
))
(declare-fun e!1375827 () Unit!37846)

(declare-fun Unit!37848 () Unit!37846)

(assert (=> b!2151328 (= e!1375827 Unit!37848)))

(declare-fun call!129071 () List!24770)

(declare-fun bm!129065 () Bool)

(declare-fun apply!6031 (ListLongMap!261 (_ BitVec 64)) List!24770)

(assert (=> bm!129065 (= call!129071 (apply!6031 (ite c!341260 lt!800989 call!129069) call!129073))))

(declare-fun bm!129066 () Bool)

(declare-fun hash!553 (Hashable!2806 tuple3!3666) (_ BitVec 64))

(assert (=> bm!129066 (= call!129073 (hash!553 (hashF!4729 (cache!3187 thiss!29110)) (tuple3!3667 z!514 from!952 lastNullablePos!91)))))

(declare-fun b!2151329 () Bool)

(declare-fun e!1375832 () Unit!37846)

(declare-fun lt!801008 () Unit!37846)

(assert (=> b!2151329 (= e!1375832 lt!801008)))

(assert (=> b!2151329 (= lt!800989 call!129069)))

(declare-fun lemmaInGenericMapThenInLongMap!18 (ListLongMap!261 tuple3!3666 Hashable!2806) Unit!37846)

(assert (=> b!2151329 (= lt!801008 (lemmaInGenericMapThenInLongMap!18 lt!800989 (tuple3!3667 z!514 from!952 lastNullablePos!91) (hashF!4729 (cache!3187 thiss!29110))))))

(declare-fun res!927688 () Bool)

(assert (=> b!2151329 (= res!927688 call!129070)))

(declare-fun e!1375829 () Bool)

(assert (=> b!2151329 (=> (not res!927688) (not e!1375829))))

(assert (=> b!2151329 e!1375829))

(declare-fun bm!129067 () Bool)

(declare-datatypes ((Option!4994 0))(
  ( (None!4993) (Some!4993 (v!29244 tuple2!24508)) )
))
(declare-fun call!129074 () Option!4994)

(declare-fun getPair!18 (List!24770 tuple3!3666) Option!4994)

(assert (=> bm!129067 (= call!129074 (getPair!18 call!129071 (tuple3!3667 z!514 from!952 lastNullablePos!91)))))

(declare-fun b!2151330 () Bool)

(declare-fun e!1375833 () Unit!37846)

(declare-fun Unit!37849 () Unit!37846)

(assert (=> b!2151330 (= e!1375833 Unit!37849)))

(declare-fun bm!129068 () Bool)

(assert (=> bm!129068 (= call!129069 (map!4975 (v!29243 (underlying!5980 (cache!3187 thiss!29110)))))))

(declare-fun lt!801001 () (_ BitVec 64))

(declare-fun forallContained!765 (List!24771 Int tuple2!24510) Unit!37846)

(declare-fun apply!6032 (MutLongMap!2892 (_ BitVec 64)) List!24770)

(assert (=> b!2151331 (= e!1375833 (forallContained!765 (toList!1115 (map!4975 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))) lambda!80924 (tuple2!24511 lt!801001 (apply!6032 (v!29243 (underlying!5980 (cache!3187 thiss!29110))) lt!801001))))))

(declare-fun c!341261 () Bool)

(declare-fun contains!4242 (List!24771 tuple2!24510) Bool)

(assert (=> b!2151331 (= c!341261 (not (contains!4242 (toList!1115 (map!4975 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))) (tuple2!24511 lt!801001 (apply!6032 (v!29243 (underlying!5980 (cache!3187 thiss!29110))) lt!801001)))))))

(declare-fun lt!800997 () Unit!37846)

(declare-fun e!1375830 () Unit!37846)

(assert (=> b!2151331 (= lt!800997 e!1375830)))

(declare-fun b!2151332 () Bool)

(declare-fun call!129072 () Bool)

(assert (=> b!2151332 (= e!1375829 call!129072)))

(declare-fun bm!129069 () Bool)

(declare-fun isDefined!4102 (Option!4994) Bool)

(assert (=> bm!129069 (= call!129072 (isDefined!4102 call!129074))))

(declare-fun lt!800994 () Bool)

(declare-fun d!645743 () Bool)

(declare-fun contains!4243 (ListMap!705 tuple3!3666) Bool)

(assert (=> d!645743 (= lt!800994 (contains!4243 (map!4974 (cache!3187 thiss!29110)) (tuple3!3667 z!514 from!952 lastNullablePos!91)))))

(declare-fun e!1375828 () Bool)

(assert (=> d!645743 (= lt!800994 e!1375828)))

(declare-fun res!927687 () Bool)

(assert (=> d!645743 (=> (not res!927687) (not e!1375828))))

(declare-fun contains!4244 (MutLongMap!2892 (_ BitVec 64)) Bool)

(assert (=> d!645743 (= res!927687 (contains!4244 (v!29243 (underlying!5980 (cache!3187 thiss!29110))) lt!801001))))

(declare-fun lt!800996 () Unit!37846)

(assert (=> d!645743 (= lt!800996 e!1375832)))

(declare-fun extractMap!81 (List!24771) ListMap!705)

(assert (=> d!645743 (= c!341260 (contains!4243 (extractMap!81 (toList!1115 (map!4975 (v!29243 (underlying!5980 (cache!3187 thiss!29110)))))) (tuple3!3667 z!514 from!952 lastNullablePos!91)))))

(declare-fun lt!800991 () Unit!37846)

(assert (=> d!645743 (= lt!800991 e!1375833)))

(declare-fun c!341258 () Bool)

(assert (=> d!645743 (= c!341258 (contains!4244 (v!29243 (underlying!5980 (cache!3187 thiss!29110))) lt!801001))))

(assert (=> d!645743 (= lt!801001 (hash!553 (hashF!4729 (cache!3187 thiss!29110)) (tuple3!3667 z!514 from!952 lastNullablePos!91)))))

(assert (=> d!645743 (valid!2230 (cache!3187 thiss!29110))))

(assert (=> d!645743 (= (contains!4240 (cache!3187 thiss!29110) (tuple3!3667 z!514 from!952 lastNullablePos!91)) lt!800994)))

(declare-fun b!2151333 () Bool)

(assert (=> b!2151333 (= e!1375828 (isDefined!4102 (getPair!18 (apply!6032 (v!29243 (underlying!5980 (cache!3187 thiss!29110))) lt!801001) (tuple3!3667 z!514 from!952 lastNullablePos!91))))))

(declare-fun b!2151334 () Bool)

(assert (=> b!2151334 false))

(declare-fun lt!801007 () Unit!37846)

(declare-fun lt!801003 () Unit!37846)

(assert (=> b!2151334 (= lt!801007 lt!801003)))

(declare-fun lt!800990 () List!24771)

(declare-fun lt!800998 () List!24770)

(assert (=> b!2151334 (contains!4242 lt!800990 (tuple2!24511 lt!801001 lt!800998))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!19 (List!24771 (_ BitVec 64) List!24770) Unit!37846)

(assert (=> b!2151334 (= lt!801003 (lemmaGetValueByKeyImpliesContainsTuple!19 lt!800990 lt!801001 lt!800998))))

(assert (=> b!2151334 (= lt!800998 (apply!6032 (v!29243 (underlying!5980 (cache!3187 thiss!29110))) lt!801001))))

(assert (=> b!2151334 (= lt!800990 (toList!1115 (map!4975 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))))

(declare-fun lt!800993 () Unit!37846)

(declare-fun lt!800995 () Unit!37846)

(assert (=> b!2151334 (= lt!800993 lt!800995)))

(declare-fun lt!800992 () List!24771)

(declare-datatypes ((Option!4995 0))(
  ( (None!4994) (Some!4994 (v!29245 List!24770)) )
))
(declare-fun isDefined!4103 (Option!4995) Bool)

(declare-fun getValueByKey!53 (List!24771 (_ BitVec 64)) Option!4995)

(assert (=> b!2151334 (isDefined!4103 (getValueByKey!53 lt!800992 lt!801001))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!35 (List!24771 (_ BitVec 64)) Unit!37846)

(assert (=> b!2151334 (= lt!800995 (lemmaContainsKeyImpliesGetValueByKeyDefined!35 lt!800992 lt!801001))))

(assert (=> b!2151334 (= lt!800992 (toList!1115 (map!4975 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))))

(declare-fun lt!800999 () Unit!37846)

(declare-fun lt!801002 () Unit!37846)

(assert (=> b!2151334 (= lt!800999 lt!801002)))

(declare-fun lt!801006 () List!24771)

(declare-fun containsKey!54 (List!24771 (_ BitVec 64)) Bool)

(assert (=> b!2151334 (containsKey!54 lt!801006 lt!801001)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!19 (List!24771 (_ BitVec 64)) Unit!37846)

(assert (=> b!2151334 (= lt!801002 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!19 lt!801006 lt!801001))))

(assert (=> b!2151334 (= lt!801006 (toList!1115 (map!4975 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))))

(declare-fun Unit!37850 () Unit!37846)

(assert (=> b!2151334 (= e!1375830 Unit!37850)))

(declare-fun b!2151335 () Bool)

(declare-fun Unit!37851 () Unit!37846)

(assert (=> b!2151335 (= e!1375830 Unit!37851)))

(declare-fun b!2151336 () Bool)

(assert (=> b!2151336 (= e!1375832 e!1375827)))

(declare-fun res!927686 () Bool)

(assert (=> b!2151336 (= res!927686 call!129070)))

(declare-fun e!1375831 () Bool)

(assert (=> b!2151336 (=> (not res!927686) (not e!1375831))))

(declare-fun c!341259 () Bool)

(assert (=> b!2151336 (= c!341259 e!1375831)))

(declare-fun b!2151337 () Bool)

(assert (=> b!2151337 (= e!1375831 call!129072)))

(declare-fun b!2151338 () Bool)

(assert (=> b!2151338 false))

(declare-fun lt!801005 () Unit!37846)

(declare-fun lt!801000 () Unit!37846)

(assert (=> b!2151338 (= lt!801005 lt!801000)))

(declare-fun lt!801004 () ListLongMap!261)

(assert (=> b!2151338 (contains!4243 (extractMap!81 (toList!1115 lt!801004)) (tuple3!3667 z!514 from!952 lastNullablePos!91))))

(declare-fun lemmaInLongMapThenInGenericMap!18 (ListLongMap!261 tuple3!3666 Hashable!2806) Unit!37846)

(assert (=> b!2151338 (= lt!801000 (lemmaInLongMapThenInGenericMap!18 lt!801004 (tuple3!3667 z!514 from!952 lastNullablePos!91) (hashF!4729 (cache!3187 thiss!29110))))))

(assert (=> b!2151338 (= lt!801004 call!129069)))

(declare-fun Unit!37852 () Unit!37846)

(assert (=> b!2151338 (= e!1375827 Unit!37852)))

(assert (= (and d!645743 c!341258) b!2151331))

(assert (= (and d!645743 (not c!341258)) b!2151330))

(assert (= (and b!2151331 c!341261) b!2151334))

(assert (= (and b!2151331 (not c!341261)) b!2151335))

(assert (= (and d!645743 c!341260) b!2151329))

(assert (= (and d!645743 (not c!341260)) b!2151336))

(assert (= (and b!2151329 res!927688) b!2151332))

(assert (= (and b!2151336 res!927686) b!2151337))

(assert (= (and b!2151336 c!341259) b!2151338))

(assert (= (and b!2151336 (not c!341259)) b!2151328))

(assert (= (or b!2151329 b!2151336 b!2151337 b!2151338) bm!129068))

(assert (= (or b!2151329 b!2151332 b!2151336 b!2151337) bm!129066))

(assert (= (or b!2151332 b!2151337) bm!129065))

(assert (= (or b!2151329 b!2151336) bm!129064))

(assert (= (or b!2151332 b!2151337) bm!129067))

(assert (= (or b!2151332 b!2151337) bm!129069))

(assert (= (and d!645743 res!927687) b!2151333))

(declare-fun m!2593845 () Bool)

(assert (=> b!2151338 m!2593845))

(assert (=> b!2151338 m!2593845))

(declare-fun m!2593847 () Bool)

(assert (=> b!2151338 m!2593847))

(declare-fun m!2593849 () Bool)

(assert (=> b!2151338 m!2593849))

(declare-fun m!2593851 () Bool)

(assert (=> bm!129065 m!2593851))

(declare-fun m!2593853 () Bool)

(assert (=> b!2151334 m!2593853))

(declare-fun m!2593855 () Bool)

(assert (=> b!2151334 m!2593855))

(declare-fun m!2593857 () Bool)

(assert (=> b!2151334 m!2593857))

(declare-fun m!2593859 () Bool)

(assert (=> b!2151334 m!2593859))

(declare-fun m!2593861 () Bool)

(assert (=> b!2151334 m!2593861))

(declare-fun m!2593863 () Bool)

(assert (=> b!2151334 m!2593863))

(assert (=> b!2151334 m!2593855))

(declare-fun m!2593865 () Bool)

(assert (=> b!2151334 m!2593865))

(assert (=> b!2151334 m!2593835))

(declare-fun m!2593867 () Bool)

(assert (=> b!2151334 m!2593867))

(declare-fun m!2593869 () Bool)

(assert (=> bm!129067 m!2593869))

(declare-fun m!2593871 () Bool)

(assert (=> d!645743 m!2593871))

(assert (=> d!645743 m!2593818))

(assert (=> d!645743 m!2593792))

(declare-fun m!2593873 () Bool)

(assert (=> d!645743 m!2593873))

(assert (=> d!645743 m!2593871))

(declare-fun m!2593875 () Bool)

(assert (=> d!645743 m!2593875))

(assert (=> d!645743 m!2593792))

(declare-fun m!2593877 () Bool)

(assert (=> d!645743 m!2593877))

(assert (=> d!645743 m!2593835))

(declare-fun m!2593879 () Bool)

(assert (=> d!645743 m!2593879))

(assert (=> b!2151331 m!2593835))

(assert (=> b!2151331 m!2593861))

(declare-fun m!2593881 () Bool)

(assert (=> b!2151331 m!2593881))

(declare-fun m!2593883 () Bool)

(assert (=> b!2151331 m!2593883))

(declare-fun m!2593885 () Bool)

(assert (=> b!2151329 m!2593885))

(assert (=> bm!129066 m!2593879))

(declare-fun m!2593887 () Bool)

(assert (=> bm!129064 m!2593887))

(assert (=> bm!129068 m!2593835))

(declare-fun m!2593889 () Bool)

(assert (=> bm!129069 m!2593889))

(assert (=> b!2151333 m!2593861))

(assert (=> b!2151333 m!2593861))

(declare-fun m!2593891 () Bool)

(assert (=> b!2151333 m!2593891))

(assert (=> b!2151333 m!2593891))

(declare-fun m!2593893 () Bool)

(assert (=> b!2151333 m!2593893))

(assert (=> b!2151270 d!645743))

(declare-fun bs!445617 () Bool)

(declare-fun b!2151340 () Bool)

(assert (= bs!445617 (and b!2151340 b!2151276)))

(declare-fun lambda!80925 () Int)

(assert (=> bs!445617 (= lambda!80925 lambda!80912)))

(declare-fun bs!445618 () Bool)

(assert (= bs!445618 (and b!2151340 b!2151284)))

(assert (=> bs!445618 (= (= localTotalInput!13 (totalInput!3264 thiss!29110)) (= lambda!80925 lambda!80915))))

(assert (=> b!2151340 true))

(declare-fun d!645745 () Bool)

(declare-fun res!927689 () Bool)

(declare-fun e!1375834 () Bool)

(assert (=> d!645745 (=> (not res!927689) (not e!1375834))))

(assert (=> d!645745 (= res!927689 (valid!2230 (cache!3187 thiss!29110)))))

(assert (=> d!645745 (= (validCacheMapFurthestNullable!157 (cache!3187 thiss!29110) localTotalInput!13) e!1375834)))

(declare-fun b!2151339 () Bool)

(declare-fun res!927690 () Bool)

(assert (=> b!2151339 (=> (not res!927690) (not e!1375834))))

(assert (=> b!2151339 (= res!927690 (invariantList!326 (toList!1114 (map!4974 (cache!3187 thiss!29110)))))))

(assert (=> b!2151340 (= e!1375834 (forall!5037 (toList!1114 (map!4974 (cache!3187 thiss!29110))) lambda!80925))))

(assert (= (and d!645745 res!927689) b!2151339))

(assert (= (and b!2151339 res!927690) b!2151340))

(assert (=> d!645745 m!2593818))

(assert (=> b!2151339 m!2593792))

(assert (=> b!2151339 m!2593821))

(assert (=> b!2151340 m!2593792))

(declare-fun m!2593895 () Bool)

(assert (=> b!2151340 m!2593895))

(assert (=> b!2151270 d!645745))

(declare-fun d!645747 () Bool)

(declare-fun lambda!80928 () Int)

(declare-fun forall!5039 (List!24769 Int) Bool)

(assert (=> d!645747 (= (inv!32532 setElem!17230) (forall!5039 (exprs!1937 setElem!17230) lambda!80928))))

(declare-fun bs!445619 () Bool)

(assert (= bs!445619 d!645747))

(declare-fun m!2593897 () Bool)

(assert (=> bs!445619 m!2593897))

(assert (=> setNonEmpty!17230 d!645747))

(declare-fun d!645749 () Bool)

(declare-fun res!927695 () Bool)

(declare-fun e!1375839 () Bool)

(assert (=> d!645749 (=> res!927695 e!1375839)))

(assert (=> d!645749 (= res!927695 ((_ is Nil!24686) (toList!1114 (map!4974 (cache!3187 thiss!29110)))))))

(assert (=> d!645749 (= (forall!5037 (toList!1114 (map!4974 (cache!3187 thiss!29110))) lambda!80912) e!1375839)))

(declare-fun b!2151345 () Bool)

(declare-fun e!1375840 () Bool)

(assert (=> b!2151345 (= e!1375839 e!1375840)))

(declare-fun res!927696 () Bool)

(assert (=> b!2151345 (=> (not res!927696) (not e!1375840))))

(declare-fun dynLambda!11394 (Int tuple2!24508) Bool)

(assert (=> b!2151345 (= res!927696 (dynLambda!11394 lambda!80912 (h!30087 (toList!1114 (map!4974 (cache!3187 thiss!29110))))))))

(declare-fun b!2151346 () Bool)

(assert (=> b!2151346 (= e!1375840 (forall!5037 (t!197316 (toList!1114 (map!4974 (cache!3187 thiss!29110)))) lambda!80912))))

(assert (= (and d!645749 (not res!927695)) b!2151345))

(assert (= (and b!2151345 res!927696) b!2151346))

(declare-fun b_lambda!70817 () Bool)

(assert (=> (not b_lambda!70817) (not b!2151345)))

(declare-fun m!2593899 () Bool)

(assert (=> b!2151345 m!2593899))

(declare-fun m!2593901 () Bool)

(assert (=> b!2151346 m!2593901))

(assert (=> b!2151276 d!645749))

(declare-fun d!645751 () Bool)

(declare-fun lt!801011 () ListMap!705)

(assert (=> d!645751 (invariantList!326 (toList!1114 lt!801011))))

(assert (=> d!645751 (= lt!801011 (extractMap!81 (toList!1115 (map!4975 (v!29243 (underlying!5980 (cache!3187 thiss!29110)))))))))

(assert (=> d!645751 (valid!2230 (cache!3187 thiss!29110))))

(assert (=> d!645751 (= (map!4974 (cache!3187 thiss!29110)) lt!801011)))

(declare-fun bs!445620 () Bool)

(assert (= bs!445620 d!645751))

(declare-fun m!2593903 () Bool)

(assert (=> bs!445620 m!2593903))

(assert (=> bs!445620 m!2593835))

(assert (=> bs!445620 m!2593871))

(assert (=> bs!445620 m!2593818))

(assert (=> b!2151276 d!645751))

(declare-fun d!645753 () Bool)

(assert (=> d!645753 (= (inv!32534 (totalInput!3264 thiss!29110)) (isBalanced!2481 (c!341243 (totalInput!3264 thiss!29110))))))

(declare-fun bs!445621 () Bool)

(assert (= bs!445621 d!645753))

(declare-fun m!2593905 () Bool)

(assert (=> bs!445621 m!2593905))

(assert (=> b!2151273 d!645753))

(declare-fun e!1375845 () Bool)

(declare-fun b!2151355 () Bool)

(declare-fun tp!668629 () Bool)

(declare-fun tp!668630 () Bool)

(assert (=> b!2151355 (= e!1375845 (and (inv!32533 (left!18959 (c!341243 localTotalInput!13))) tp!668630 (inv!32533 (right!19289 (c!341243 localTotalInput!13))) tp!668629))))

(declare-fun b!2151357 () Bool)

(declare-fun e!1375846 () Bool)

(declare-fun tp!668628 () Bool)

(assert (=> b!2151357 (= e!1375846 tp!668628)))

(declare-fun b!2151356 () Bool)

(declare-fun inv!32538 (IArray!16011) Bool)

(assert (=> b!2151356 (= e!1375845 (and (inv!32538 (xs!10945 (c!341243 localTotalInput!13))) e!1375846))))

(assert (=> b!2151275 (= tp!668613 (and (inv!32533 (c!341243 localTotalInput!13)) e!1375845))))

(assert (= (and b!2151275 ((_ is Node!8003) (c!341243 localTotalInput!13))) b!2151355))

(assert (= b!2151356 b!2151357))

(assert (= (and b!2151275 ((_ is Leaf!11704) (c!341243 localTotalInput!13))) b!2151356))

(declare-fun m!2593907 () Bool)

(assert (=> b!2151355 m!2593907))

(declare-fun m!2593909 () Bool)

(assert (=> b!2151355 m!2593909))

(declare-fun m!2593911 () Bool)

(assert (=> b!2151356 m!2593911))

(assert (=> b!2151275 m!2593806))

(declare-fun b!2151364 () Bool)

(declare-fun e!1375852 () Bool)

(declare-fun setRes!17233 () Bool)

(declare-fun tp!668637 () Bool)

(assert (=> b!2151364 (= e!1375852 (and setRes!17233 tp!668637))))

(declare-fun condSetEmpty!17233 () Bool)

(assert (=> b!2151364 (= condSetEmpty!17233 (= (_1!14557 (_1!14558 (h!30087 mapDefault!13685))) ((as const (Array Context!2874 Bool)) false)))))

(assert (=> b!2151262 (= tp!668615 e!1375852)))

(declare-fun setIsEmpty!17233 () Bool)

(assert (=> setIsEmpty!17233 setRes!17233))

(declare-fun setElem!17233 () Context!2874)

(declare-fun e!1375851 () Bool)

(declare-fun setNonEmpty!17233 () Bool)

(declare-fun tp!668639 () Bool)

(assert (=> setNonEmpty!17233 (= setRes!17233 (and tp!668639 (inv!32532 setElem!17233) e!1375851))))

(declare-fun setRest!17233 () (InoxSet Context!2874))

(assert (=> setNonEmpty!17233 (= (_1!14557 (_1!14558 (h!30087 mapDefault!13685))) ((_ map or) (store ((as const (Array Context!2874 Bool)) false) setElem!17233 true) setRest!17233))))

(declare-fun b!2151365 () Bool)

(declare-fun tp!668638 () Bool)

(assert (=> b!2151365 (= e!1375851 tp!668638)))

(assert (= (and b!2151364 condSetEmpty!17233) setIsEmpty!17233))

(assert (= (and b!2151364 (not condSetEmpty!17233)) setNonEmpty!17233))

(assert (= setNonEmpty!17233 b!2151365))

(assert (= (and b!2151262 ((_ is Cons!24686) mapDefault!13685)) b!2151364))

(declare-fun m!2593913 () Bool)

(assert (=> setNonEmpty!17233 m!2593913))

(declare-fun b!2151366 () Bool)

(declare-fun e!1375853 () Bool)

(declare-fun tp!668641 () Bool)

(declare-fun tp!668642 () Bool)

(assert (=> b!2151366 (= e!1375853 (and (inv!32533 (left!18959 (c!341243 (totalInput!3264 thiss!29110)))) tp!668642 (inv!32533 (right!19289 (c!341243 (totalInput!3264 thiss!29110)))) tp!668641))))

(declare-fun b!2151368 () Bool)

(declare-fun e!1375854 () Bool)

(declare-fun tp!668640 () Bool)

(assert (=> b!2151368 (= e!1375854 tp!668640)))

(declare-fun b!2151367 () Bool)

(assert (=> b!2151367 (= e!1375853 (and (inv!32538 (xs!10945 (c!341243 (totalInput!3264 thiss!29110)))) e!1375854))))

(assert (=> b!2151272 (= tp!668621 (and (inv!32533 (c!341243 (totalInput!3264 thiss!29110))) e!1375853))))

(assert (= (and b!2151272 ((_ is Node!8003) (c!341243 (totalInput!3264 thiss!29110)))) b!2151366))

(assert (= b!2151367 b!2151368))

(assert (= (and b!2151272 ((_ is Leaf!11704) (c!341243 (totalInput!3264 thiss!29110)))) b!2151367))

(declare-fun m!2593915 () Bool)

(assert (=> b!2151366 m!2593915))

(declare-fun m!2593917 () Bool)

(assert (=> b!2151366 m!2593917))

(declare-fun m!2593919 () Bool)

(assert (=> b!2151367 m!2593919))

(assert (=> b!2151272 m!2593796))

(declare-fun b!2151373 () Bool)

(declare-fun e!1375857 () Bool)

(declare-fun tp!668647 () Bool)

(declare-fun tp!668648 () Bool)

(assert (=> b!2151373 (= e!1375857 (and tp!668647 tp!668648))))

(assert (=> b!2151271 (= tp!668611 e!1375857)))

(assert (= (and b!2151271 ((_ is Cons!24685) (exprs!1937 setElem!17230))) b!2151373))

(declare-fun b!2151374 () Bool)

(declare-fun e!1375859 () Bool)

(declare-fun setRes!17234 () Bool)

(declare-fun tp!668649 () Bool)

(assert (=> b!2151374 (= e!1375859 (and setRes!17234 tp!668649))))

(declare-fun condSetEmpty!17234 () Bool)

(assert (=> b!2151374 (= condSetEmpty!17234 (= (_1!14557 (_1!14558 (h!30087 (zeroValue!3150 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))))) ((as const (Array Context!2874 Bool)) false)))))

(assert (=> b!2151266 (= tp!668616 e!1375859)))

(declare-fun setIsEmpty!17234 () Bool)

(assert (=> setIsEmpty!17234 setRes!17234))

(declare-fun setElem!17234 () Context!2874)

(declare-fun setNonEmpty!17234 () Bool)

(declare-fun e!1375858 () Bool)

(declare-fun tp!668651 () Bool)

(assert (=> setNonEmpty!17234 (= setRes!17234 (and tp!668651 (inv!32532 setElem!17234) e!1375858))))

(declare-fun setRest!17234 () (InoxSet Context!2874))

(assert (=> setNonEmpty!17234 (= (_1!14557 (_1!14558 (h!30087 (zeroValue!3150 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2874 Bool)) false) setElem!17234 true) setRest!17234))))

(declare-fun b!2151375 () Bool)

(declare-fun tp!668650 () Bool)

(assert (=> b!2151375 (= e!1375858 tp!668650)))

(assert (= (and b!2151374 condSetEmpty!17234) setIsEmpty!17234))

(assert (= (and b!2151374 (not condSetEmpty!17234)) setNonEmpty!17234))

(assert (= setNonEmpty!17234 b!2151375))

(assert (= (and b!2151266 ((_ is Cons!24686) (zeroValue!3150 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110)))))))) b!2151374))

(declare-fun m!2593921 () Bool)

(assert (=> setNonEmpty!17234 m!2593921))

(declare-fun b!2151376 () Bool)

(declare-fun e!1375861 () Bool)

(declare-fun setRes!17235 () Bool)

(declare-fun tp!668652 () Bool)

(assert (=> b!2151376 (= e!1375861 (and setRes!17235 tp!668652))))

(declare-fun condSetEmpty!17235 () Bool)

(assert (=> b!2151376 (= condSetEmpty!17235 (= (_1!14557 (_1!14558 (h!30087 (minValue!3150 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))))) ((as const (Array Context!2874 Bool)) false)))))

(assert (=> b!2151266 (= tp!668617 e!1375861)))

(declare-fun setIsEmpty!17235 () Bool)

(assert (=> setIsEmpty!17235 setRes!17235))

(declare-fun e!1375860 () Bool)

(declare-fun tp!668654 () Bool)

(declare-fun setNonEmpty!17235 () Bool)

(declare-fun setElem!17235 () Context!2874)

(assert (=> setNonEmpty!17235 (= setRes!17235 (and tp!668654 (inv!32532 setElem!17235) e!1375860))))

(declare-fun setRest!17235 () (InoxSet Context!2874))

(assert (=> setNonEmpty!17235 (= (_1!14557 (_1!14558 (h!30087 (minValue!3150 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2874 Bool)) false) setElem!17235 true) setRest!17235))))

(declare-fun b!2151377 () Bool)

(declare-fun tp!668653 () Bool)

(assert (=> b!2151377 (= e!1375860 tp!668653)))

(assert (= (and b!2151376 condSetEmpty!17235) setIsEmpty!17235))

(assert (= (and b!2151376 (not condSetEmpty!17235)) setNonEmpty!17235))

(assert (= setNonEmpty!17235 b!2151377))

(assert (= (and b!2151266 ((_ is Cons!24686) (minValue!3150 (v!29242 (underlying!5979 (v!29243 (underlying!5980 (cache!3187 thiss!29110)))))))) b!2151376))

(declare-fun m!2593923 () Bool)

(assert (=> setNonEmpty!17235 m!2593923))

(declare-fun setIsEmpty!17240 () Bool)

(declare-fun setRes!17240 () Bool)

(assert (=> setIsEmpty!17240 setRes!17240))

(declare-fun b!2151388 () Bool)

(declare-fun e!1375871 () Bool)

(declare-fun tp!668669 () Bool)

(assert (=> b!2151388 (= e!1375871 tp!668669)))

(declare-fun b!2151389 () Bool)

(declare-fun e!1375872 () Bool)

(declare-fun tp!668674 () Bool)

(assert (=> b!2151389 (= e!1375872 (and setRes!17240 tp!668674))))

(declare-fun condSetEmpty!17240 () Bool)

(declare-fun mapValue!13688 () List!24770)

(assert (=> b!2151389 (= condSetEmpty!17240 (= (_1!14557 (_1!14558 (h!30087 mapValue!13688))) ((as const (Array Context!2874 Bool)) false)))))

(declare-fun setRes!17241 () Bool)

(declare-fun tp!668675 () Bool)

(declare-fun setElem!17240 () Context!2874)

(declare-fun setNonEmpty!17240 () Bool)

(assert (=> setNonEmpty!17240 (= setRes!17241 (and tp!668675 (inv!32532 setElem!17240) e!1375871))))

(declare-fun mapDefault!13688 () List!24770)

(declare-fun setRest!17241 () (InoxSet Context!2874))

(assert (=> setNonEmpty!17240 (= (_1!14557 (_1!14558 (h!30087 mapDefault!13688))) ((_ map or) (store ((as const (Array Context!2874 Bool)) false) setElem!17240 true) setRest!17241))))

(declare-fun mapNonEmpty!13688 () Bool)

(declare-fun mapRes!13688 () Bool)

(declare-fun tp!668671 () Bool)

(assert (=> mapNonEmpty!13688 (= mapRes!13688 (and tp!668671 e!1375872))))

(declare-fun mapRest!13688 () (Array (_ BitVec 32) List!24770))

(declare-fun mapKey!13688 () (_ BitVec 32))

(assert (=> mapNonEmpty!13688 (= mapRest!13685 (store mapRest!13688 mapKey!13688 mapValue!13688))))

(declare-fun e!1375870 () Bool)

(declare-fun tp!668673 () Bool)

(declare-fun setNonEmpty!17241 () Bool)

(declare-fun setElem!17241 () Context!2874)

(assert (=> setNonEmpty!17241 (= setRes!17240 (and tp!668673 (inv!32532 setElem!17241) e!1375870))))

(declare-fun setRest!17240 () (InoxSet Context!2874))

(assert (=> setNonEmpty!17241 (= (_1!14557 (_1!14558 (h!30087 mapValue!13688))) ((_ map or) (store ((as const (Array Context!2874 Bool)) false) setElem!17241 true) setRest!17240))))

(declare-fun setIsEmpty!17241 () Bool)

(assert (=> setIsEmpty!17241 setRes!17241))

(declare-fun b!2151391 () Bool)

(declare-fun tp!668672 () Bool)

(assert (=> b!2151391 (= e!1375870 tp!668672)))

(declare-fun mapIsEmpty!13688 () Bool)

(assert (=> mapIsEmpty!13688 mapRes!13688))

(declare-fun condMapEmpty!13688 () Bool)

(assert (=> mapNonEmpty!13685 (= condMapEmpty!13688 (= mapRest!13685 ((as const (Array (_ BitVec 32) List!24770)) mapDefault!13688)))))

(declare-fun e!1375873 () Bool)

(assert (=> mapNonEmpty!13685 (= tp!668618 (and e!1375873 mapRes!13688))))

(declare-fun b!2151390 () Bool)

(declare-fun tp!668670 () Bool)

(assert (=> b!2151390 (= e!1375873 (and setRes!17241 tp!668670))))

(declare-fun condSetEmpty!17241 () Bool)

(assert (=> b!2151390 (= condSetEmpty!17241 (= (_1!14557 (_1!14558 (h!30087 mapDefault!13688))) ((as const (Array Context!2874 Bool)) false)))))

(assert (= (and mapNonEmpty!13685 condMapEmpty!13688) mapIsEmpty!13688))

(assert (= (and mapNonEmpty!13685 (not condMapEmpty!13688)) mapNonEmpty!13688))

(assert (= (and b!2151389 condSetEmpty!17240) setIsEmpty!17240))

(assert (= (and b!2151389 (not condSetEmpty!17240)) setNonEmpty!17241))

(assert (= setNonEmpty!17241 b!2151391))

(assert (= (and mapNonEmpty!13688 ((_ is Cons!24686) mapValue!13688)) b!2151389))

(assert (= (and b!2151390 condSetEmpty!17241) setIsEmpty!17241))

(assert (= (and b!2151390 (not condSetEmpty!17241)) setNonEmpty!17240))

(assert (= setNonEmpty!17240 b!2151388))

(assert (= (and mapNonEmpty!13685 ((_ is Cons!24686) mapDefault!13688)) b!2151390))

(declare-fun m!2593925 () Bool)

(assert (=> setNonEmpty!17240 m!2593925))

(declare-fun m!2593927 () Bool)

(assert (=> mapNonEmpty!13688 m!2593927))

(declare-fun m!2593929 () Bool)

(assert (=> setNonEmpty!17241 m!2593929))

(declare-fun b!2151392 () Bool)

(declare-fun e!1375875 () Bool)

(declare-fun setRes!17242 () Bool)

(declare-fun tp!668676 () Bool)

(assert (=> b!2151392 (= e!1375875 (and setRes!17242 tp!668676))))

(declare-fun condSetEmpty!17242 () Bool)

(assert (=> b!2151392 (= condSetEmpty!17242 (= (_1!14557 (_1!14558 (h!30087 mapValue!13685))) ((as const (Array Context!2874 Bool)) false)))))

(assert (=> mapNonEmpty!13685 (= tp!668614 e!1375875)))

(declare-fun setIsEmpty!17242 () Bool)

(assert (=> setIsEmpty!17242 setRes!17242))

(declare-fun setElem!17242 () Context!2874)

(declare-fun e!1375874 () Bool)

(declare-fun setNonEmpty!17242 () Bool)

(declare-fun tp!668678 () Bool)

(assert (=> setNonEmpty!17242 (= setRes!17242 (and tp!668678 (inv!32532 setElem!17242) e!1375874))))

(declare-fun setRest!17242 () (InoxSet Context!2874))

(assert (=> setNonEmpty!17242 (= (_1!14557 (_1!14558 (h!30087 mapValue!13685))) ((_ map or) (store ((as const (Array Context!2874 Bool)) false) setElem!17242 true) setRest!17242))))

(declare-fun b!2151393 () Bool)

(declare-fun tp!668677 () Bool)

(assert (=> b!2151393 (= e!1375874 tp!668677)))

(assert (= (and b!2151392 condSetEmpty!17242) setIsEmpty!17242))

(assert (= (and b!2151392 (not condSetEmpty!17242)) setNonEmpty!17242))

(assert (= setNonEmpty!17242 b!2151393))

(assert (= (and mapNonEmpty!13685 ((_ is Cons!24686) mapValue!13685)) b!2151392))

(declare-fun m!2593931 () Bool)

(assert (=> setNonEmpty!17242 m!2593931))

(declare-fun condSetEmpty!17245 () Bool)

(assert (=> setNonEmpty!17230 (= condSetEmpty!17245 (= setRest!17230 ((as const (Array Context!2874 Bool)) false)))))

(declare-fun setRes!17245 () Bool)

(assert (=> setNonEmpty!17230 (= tp!668619 setRes!17245)))

(declare-fun setIsEmpty!17245 () Bool)

(assert (=> setIsEmpty!17245 setRes!17245))

(declare-fun setNonEmpty!17245 () Bool)

(declare-fun setElem!17245 () Context!2874)

(declare-fun e!1375878 () Bool)

(declare-fun tp!668684 () Bool)

(assert (=> setNonEmpty!17245 (= setRes!17245 (and tp!668684 (inv!32532 setElem!17245) e!1375878))))

(declare-fun setRest!17245 () (InoxSet Context!2874))

(assert (=> setNonEmpty!17245 (= setRest!17230 ((_ map or) (store ((as const (Array Context!2874 Bool)) false) setElem!17245 true) setRest!17245))))

(declare-fun b!2151398 () Bool)

(declare-fun tp!668683 () Bool)

(assert (=> b!2151398 (= e!1375878 tp!668683)))

(assert (= (and setNonEmpty!17230 condSetEmpty!17245) setIsEmpty!17245))

(assert (= (and setNonEmpty!17230 (not condSetEmpty!17245)) setNonEmpty!17245))

(assert (= setNonEmpty!17245 b!2151398))

(declare-fun m!2593933 () Bool)

(assert (=> setNonEmpty!17245 m!2593933))

(declare-fun b_lambda!70819 () Bool)

(assert (= b_lambda!70817 (or b!2151276 b_lambda!70819)))

(declare-fun bs!445622 () Bool)

(declare-fun d!645755 () Bool)

(assert (= bs!445622 (and d!645755 b!2151276)))

(declare-fun validCacheMapFurthestNullableBody!27 (tuple2!24508 BalanceConc!15768) Bool)

(assert (=> bs!445622 (= (dynLambda!11394 lambda!80912 (h!30087 (toList!1114 (map!4974 (cache!3187 thiss!29110))))) (validCacheMapFurthestNullableBody!27 (h!30087 (toList!1114 (map!4974 (cache!3187 thiss!29110)))) localTotalInput!13))))

(declare-fun m!2593935 () Bool)

(assert (=> bs!445622 m!2593935))

(assert (=> b!2151345 d!645755))

(check-sat b_and!173169 (not d!645741) (not b!2151346) (not d!645747) (not bm!129069) (not setNonEmpty!17235) (not b!2151293) (not d!645745) (not d!645737) (not b_next!64261) (not b!2151366) (not b!2151284) (not b_lambda!70819) (not b!2151368) (not d!645743) (not b!2151283) (not d!645753) (not b!2151377) (not bm!129067) (not b!2151301) (not b!2151374) (not b!2151331) (not bm!129068) (not b!2151375) (not b!2151296) (not b!2151391) (not b!2151275) (not setNonEmpty!17240) (not d!645735) (not b!2151365) (not b!2151294) (not bm!129064) (not b!2151340) b_and!173171 (not b!2151398) (not b!2151338) (not b!2151390) (not b!2151333) (not b!2151388) (not b!2151393) (not b!2151392) (not bm!129066) (not b!2151367) (not b!2151305) (not b!2151376) (not d!645751) (not b_next!64263) (not setNonEmpty!17245) (not d!645725) (not b!2151357) (not setNonEmpty!17233) (not b!2151302) (not b!2151272) (not b!2151355) (not b!2151334) (not b!2151373) (not b!2151356) (not setNonEmpty!17234) (not b!2151389) (not b!2151329) (not setNonEmpty!17241) (not bm!129065) (not setNonEmpty!17242) (not b!2151364) (not b!2151291) (not bs!445622) (not b!2151339) (not mapNonEmpty!13688))
(check-sat b_and!173171 b_and!173169 (not b_next!64261) (not b_next!64263))
