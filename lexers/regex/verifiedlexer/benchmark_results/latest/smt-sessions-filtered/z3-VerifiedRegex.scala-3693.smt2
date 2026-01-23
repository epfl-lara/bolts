; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208530 () Bool)

(assert start!208530)

(declare-fun b!2150016 () Bool)

(declare-fun b_free!63501 () Bool)

(declare-fun b_next!64205 () Bool)

(assert (=> b!2150016 (= b_free!63501 (not b_next!64205))))

(declare-fun tp!667836 () Bool)

(declare-fun b_and!173109 () Bool)

(assert (=> b!2150016 (= tp!667836 b_and!173109)))

(declare-fun b!2150015 () Bool)

(declare-fun b_free!63503 () Bool)

(declare-fun b_next!64207 () Bool)

(assert (=> b!2150015 (= b_free!63503 (not b_next!64207))))

(declare-fun tp!667839 () Bool)

(declare-fun b_and!173111 () Bool)

(assert (=> b!2150015 (= tp!667839 b_and!173111)))

(declare-fun b!2150026 () Bool)

(assert (=> b!2150026 true))

(declare-fun b!2150014 () Bool)

(declare-fun e!1374821 () Bool)

(declare-fun tp!667844 () Bool)

(assert (=> b!2150014 (= e!1374821 tp!667844)))

(declare-fun e!1374823 () Bool)

(declare-fun e!1374814 () Bool)

(assert (=> b!2150015 (= e!1374823 (and e!1374814 tp!667839))))

(declare-fun tp!667837 () Bool)

(declare-fun e!1374813 () Bool)

(declare-fun tp!667834 () Bool)

(declare-fun e!1374815 () Bool)

(declare-datatypes ((C!11852 0))(
  ( (C!11853 (val!6912 Int)) )
))
(declare-datatypes ((List!24721 0))(
  ( (Nil!24637) (Cons!24637 (h!30038 C!11852) (t!197265 List!24721)) )
))
(declare-datatypes ((Regex!5853 0))(
  ( (ElementMatch!5853 (c!341115 C!11852)) (Concat!10155 (regOne!12218 Regex!5853) (regTwo!12218 Regex!5853)) (EmptyExpr!5853) (Star!5853 (reg!6182 Regex!5853)) (EmptyLang!5853) (Union!5853 (regOne!12219 Regex!5853) (regTwo!12219 Regex!5853)) )
))
(declare-datatypes ((List!24722 0))(
  ( (Nil!24638) (Cons!24638 (h!30039 Regex!5853) (t!197266 List!24722)) )
))
(declare-datatypes ((Context!2846 0))(
  ( (Context!2847 (exprs!1923 List!24722)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3638 0))(
  ( (tuple3!3639 (_1!14524 (InoxSet Context!2846)) (_2!14524 Int) (_3!2289 Int)) )
))
(declare-datatypes ((tuple2!24470 0))(
  ( (tuple2!24471 (_1!14525 tuple3!3638) (_2!14525 Int)) )
))
(declare-datatypes ((List!24723 0))(
  ( (Nil!24639) (Cons!24639 (h!30040 tuple2!24470) (t!197267 List!24723)) )
))
(declare-datatypes ((array!9743 0))(
  ( (array!9744 (arr!4352 (Array (_ BitVec 32) (_ BitVec 64))) (size!19301 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2792 0))(
  ( (HashableExt!2791 (__x!16810 Int)) )
))
(declare-datatypes ((array!9745 0))(
  ( (array!9746 (arr!4353 (Array (_ BitVec 32) List!24723)) (size!19302 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5756 0))(
  ( (LongMapFixedSize!5757 (defaultEntry!3243 Int) (mask!7120 (_ BitVec 32)) (extraKeys!3126 (_ BitVec 32)) (zeroValue!3136 List!24723) (minValue!3136 List!24723) (_size!5807 (_ BitVec 32)) (_keys!3175 array!9743) (_values!3158 array!9745) (_vacant!2939 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11337 0))(
  ( (Cell!11338 (v!29203 LongMapFixedSize!5756)) )
))
(declare-datatypes ((MutLongMap!2878 0))(
  ( (LongMap!2878 (underlying!5951 Cell!11337)) (MutLongMapExt!2877 (__x!16811 Int)) )
))
(declare-datatypes ((Cell!11339 0))(
  ( (Cell!11340 (v!29204 MutLongMap!2878)) )
))
(declare-datatypes ((MutableMap!2792 0))(
  ( (MutableMapExt!2791 (__x!16812 Int)) (HashMap!2792 (underlying!5952 Cell!11339) (hashF!4715 Hashable!2792) (_size!5808 (_ BitVec 32)) (defaultValue!2954 Int)) )
))
(declare-datatypes ((IArray!15983 0))(
  ( (IArray!15984 (innerList!8049 List!24721)) )
))
(declare-datatypes ((Conc!7989 0))(
  ( (Node!7989 (left!18926 Conc!7989) (right!19256 Conc!7989) (csize!16208 Int) (cheight!8200 Int)) (Leaf!11683 (xs!10931 IArray!15983) (csize!16209 Int)) (Empty!7989) )
))
(declare-datatypes ((BalanceConc!15740 0))(
  ( (BalanceConc!15741 (c!341116 Conc!7989)) )
))
(declare-datatypes ((CacheFurthestNullable!942 0))(
  ( (CacheFurthestNullable!943 (cache!3173 MutableMap!2792) (totalInput!3244 BalanceConc!15740)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!942)

(declare-fun array_inv!3122 (array!9743) Bool)

(declare-fun array_inv!3123 (array!9745) Bool)

(assert (=> b!2150016 (= e!1374815 (and tp!667836 tp!667837 tp!667834 (array_inv!3122 (_keys!3175 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))) (array_inv!3123 (_values!3158 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))) e!1374813))))

(declare-fun b!2150017 () Bool)

(declare-fun e!1374818 () Bool)

(declare-fun e!1374820 () Bool)

(assert (=> b!2150017 (= e!1374818 e!1374820)))

(declare-fun res!927279 () Bool)

(declare-fun e!1374817 () Bool)

(assert (=> start!208530 (=> (not res!927279) (not e!1374817))))

(declare-fun lastNullablePos!91 () Int)

(declare-fun localTotalInput!13 () BalanceConc!15740)

(declare-fun from!952 () Int)

(assert (=> start!208530 (= res!927279 (and (= localTotalInput!13 (totalInput!3244 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208530 e!1374817))

(declare-fun condSetEmpty!17113 () Bool)

(declare-fun z!514 () (InoxSet Context!2846))

(assert (=> start!208530 (= condSetEmpty!17113 (= z!514 ((as const (Array Context!2846 Bool)) false)))))

(declare-fun setRes!17113 () Bool)

(assert (=> start!208530 setRes!17113))

(assert (=> start!208530 true))

(declare-fun e!1374825 () Bool)

(declare-fun inv!32458 (CacheFurthestNullable!942) Bool)

(assert (=> start!208530 (and (inv!32458 thiss!29110) e!1374825)))

(declare-fun e!1374816 () Bool)

(declare-fun inv!32459 (BalanceConc!15740) Bool)

(assert (=> start!208530 (and (inv!32459 localTotalInput!13) e!1374816)))

(declare-fun setIsEmpty!17113 () Bool)

(assert (=> setIsEmpty!17113 setRes!17113))

(declare-fun b!2150018 () Bool)

(declare-fun tp!667835 () Bool)

(declare-fun mapRes!13628 () Bool)

(assert (=> b!2150018 (= e!1374813 (and tp!667835 mapRes!13628))))

(declare-fun condMapEmpty!13628 () Bool)

(declare-fun mapDefault!13628 () List!24723)

(assert (=> b!2150018 (= condMapEmpty!13628 (= (arr!4353 (_values!3158 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24723)) mapDefault!13628)))))

(declare-fun b!2150019 () Bool)

(declare-fun res!927285 () Bool)

(declare-fun e!1374822 () Bool)

(assert (=> b!2150019 (=> res!927285 e!1374822)))

(declare-fun size!19303 (BalanceConc!15740) Int)

(assert (=> b!2150019 (= res!927285 (> from!952 (size!19303 localTotalInput!13)))))

(declare-fun b!2150020 () Bool)

(declare-fun e!1374812 () Bool)

(declare-fun tp!667840 () Bool)

(declare-fun inv!32460 (Conc!7989) Bool)

(assert (=> b!2150020 (= e!1374812 (and (inv!32460 (c!341116 (totalInput!3244 thiss!29110))) tp!667840))))

(declare-fun b!2150021 () Bool)

(declare-fun e!1374819 () Bool)

(assert (=> b!2150021 (= e!1374817 (not e!1374819))))

(declare-fun res!927281 () Bool)

(assert (=> b!2150021 (=> res!927281 e!1374819)))

(declare-fun lt!800502 () tuple3!3638)

(declare-fun contains!4213 (MutableMap!2792 tuple3!3638) Bool)

(assert (=> b!2150021 (= res!927281 (not (contains!4213 (cache!3173 thiss!29110) lt!800502)))))

(assert (=> b!2150021 (= lt!800502 (tuple3!3639 z!514 from!952 lastNullablePos!91))))

(declare-fun validCacheMapFurthestNullable!148 (MutableMap!2792 BalanceConc!15740) Bool)

(assert (=> b!2150021 (validCacheMapFurthestNullable!148 (cache!3173 thiss!29110) localTotalInput!13)))

(declare-fun b!2150022 () Bool)

(declare-fun res!927282 () Bool)

(assert (=> b!2150022 (=> res!927282 e!1374822)))

(get-info :version)

(assert (=> b!2150022 (= res!927282 (not ((_ is HashMap!2792) (cache!3173 thiss!29110))))))

(declare-fun b!2150023 () Bool)

(declare-fun e!1374824 () Bool)

(assert (=> b!2150023 (= e!1374824 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun setElem!17113 () Context!2846)

(declare-fun setNonEmpty!17113 () Bool)

(declare-fun tp!667838 () Bool)

(declare-fun inv!32461 (Context!2846) Bool)

(assert (=> setNonEmpty!17113 (= setRes!17113 (and tp!667838 (inv!32461 setElem!17113) e!1374821))))

(declare-fun setRest!17113 () (InoxSet Context!2846))

(assert (=> setNonEmpty!17113 (= z!514 ((_ map or) (store ((as const (Array Context!2846 Bool)) false) setElem!17113 true) setRest!17113))))

(declare-fun mapNonEmpty!13628 () Bool)

(declare-fun tp!667841 () Bool)

(declare-fun tp!667842 () Bool)

(assert (=> mapNonEmpty!13628 (= mapRes!13628 (and tp!667841 tp!667842))))

(declare-fun mapKey!13628 () (_ BitVec 32))

(declare-fun mapValue!13628 () List!24723)

(declare-fun mapRest!13628 () (Array (_ BitVec 32) List!24723))

(assert (=> mapNonEmpty!13628 (= (arr!4353 (_values!3158 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))) (store mapRest!13628 mapKey!13628 mapValue!13628))))

(declare-fun b!2150024 () Bool)

(declare-fun valid!2221 (MutableMap!2792) Bool)

(assert (=> b!2150024 (= e!1374822 (valid!2221 (cache!3173 thiss!29110)))))

(declare-fun mapIsEmpty!13628 () Bool)

(assert (=> mapIsEmpty!13628 mapRes!13628))

(declare-fun b!2150025 () Bool)

(declare-fun res!927278 () Bool)

(assert (=> b!2150025 (=> (not res!927278) (not e!1374817))))

(assert (=> b!2150025 (= res!927278 (validCacheMapFurthestNullable!148 (cache!3173 thiss!29110) (totalInput!3244 thiss!29110)))))

(assert (=> b!2150026 (= e!1374819 e!1374822)))

(declare-fun res!927283 () Bool)

(assert (=> b!2150026 (=> res!927283 e!1374822)))

(assert (=> b!2150026 (= res!927283 (< from!952 0))))

(declare-fun validCacheMapFurthestNullableBody!26 (tuple2!24470 BalanceConc!15740) Bool)

(declare-fun apply!6020 (MutableMap!2792 tuple3!3638) Int)

(assert (=> b!2150026 (validCacheMapFurthestNullableBody!26 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)) localTotalInput!13)))

(declare-fun lambda!80825 () Int)

(declare-datatypes ((Unit!37809 0))(
  ( (Unit!37810) )
))
(declare-fun lt!800504 () Unit!37809)

(declare-fun lemmaForallPairsThenForLookup!10 (MutableMap!2792 tuple3!3638 Int) Unit!37809)

(assert (=> b!2150026 (= lt!800504 (lemmaForallPairsThenForLookup!10 (cache!3173 thiss!29110) lt!800502 lambda!80825))))

(declare-fun b!2150027 () Bool)

(declare-fun tp!667843 () Bool)

(assert (=> b!2150027 (= e!1374816 (and (inv!32460 (c!341116 localTotalInput!13)) tp!667843))))

(declare-fun b!2150028 () Bool)

(assert (=> b!2150028 (= e!1374825 (and e!1374823 (inv!32459 (totalInput!3244 thiss!29110)) e!1374812))))

(declare-fun b!2150029 () Bool)

(declare-fun res!927284 () Bool)

(assert (=> b!2150029 (=> (not res!927284) (not e!1374817))))

(assert (=> b!2150029 (= res!927284 e!1374824)))

(declare-fun res!927280 () Bool)

(assert (=> b!2150029 (=> res!927280 e!1374824)))

(declare-fun nullableZipper!191 ((InoxSet Context!2846)) Bool)

(assert (=> b!2150029 (= res!927280 (not (nullableZipper!191 z!514)))))

(declare-fun b!2150030 () Bool)

(assert (=> b!2150030 (= e!1374820 e!1374815)))

(declare-fun b!2150031 () Bool)

(declare-fun lt!800503 () MutLongMap!2878)

(assert (=> b!2150031 (= e!1374814 (and e!1374818 ((_ is LongMap!2878) lt!800503)))))

(assert (=> b!2150031 (= lt!800503 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))

(assert (= (and start!208530 res!927279) b!2150029))

(assert (= (and b!2150029 (not res!927280)) b!2150023))

(assert (= (and b!2150029 res!927284) b!2150025))

(assert (= (and b!2150025 res!927278) b!2150021))

(assert (= (and b!2150021 (not res!927281)) b!2150026))

(assert (= (and b!2150026 (not res!927283)) b!2150019))

(assert (= (and b!2150019 (not res!927285)) b!2150022))

(assert (= (and b!2150022 (not res!927282)) b!2150024))

(assert (= (and start!208530 condSetEmpty!17113) setIsEmpty!17113))

(assert (= (and start!208530 (not condSetEmpty!17113)) setNonEmpty!17113))

(assert (= setNonEmpty!17113 b!2150014))

(assert (= (and b!2150018 condMapEmpty!13628) mapIsEmpty!13628))

(assert (= (and b!2150018 (not condMapEmpty!13628)) mapNonEmpty!13628))

(assert (= b!2150016 b!2150018))

(assert (= b!2150030 b!2150016))

(assert (= b!2150017 b!2150030))

(assert (= (and b!2150031 ((_ is LongMap!2878) (v!29204 (underlying!5952 (cache!3173 thiss!29110))))) b!2150017))

(assert (= b!2150015 b!2150031))

(assert (= (and b!2150028 ((_ is HashMap!2792) (cache!3173 thiss!29110))) b!2150015))

(assert (= b!2150028 b!2150020))

(assert (= start!208530 b!2150028))

(assert (= start!208530 b!2150027))

(declare-fun m!2592785 () Bool)

(assert (=> b!2150028 m!2592785))

(declare-fun m!2592787 () Bool)

(assert (=> b!2150016 m!2592787))

(declare-fun m!2592789 () Bool)

(assert (=> b!2150016 m!2592789))

(declare-fun m!2592791 () Bool)

(assert (=> b!2150019 m!2592791))

(declare-fun m!2592793 () Bool)

(assert (=> b!2150026 m!2592793))

(declare-fun m!2592795 () Bool)

(assert (=> b!2150026 m!2592795))

(declare-fun m!2592797 () Bool)

(assert (=> b!2150026 m!2592797))

(declare-fun m!2592799 () Bool)

(assert (=> b!2150029 m!2592799))

(declare-fun m!2592801 () Bool)

(assert (=> start!208530 m!2592801))

(declare-fun m!2592803 () Bool)

(assert (=> start!208530 m!2592803))

(declare-fun m!2592805 () Bool)

(assert (=> b!2150021 m!2592805))

(declare-fun m!2592807 () Bool)

(assert (=> b!2150021 m!2592807))

(declare-fun m!2592809 () Bool)

(assert (=> b!2150027 m!2592809))

(declare-fun m!2592811 () Bool)

(assert (=> b!2150020 m!2592811))

(declare-fun m!2592813 () Bool)

(assert (=> mapNonEmpty!13628 m!2592813))

(declare-fun m!2592815 () Bool)

(assert (=> setNonEmpty!17113 m!2592815))

(declare-fun m!2592817 () Bool)

(assert (=> b!2150024 m!2592817))

(declare-fun m!2592819 () Bool)

(assert (=> b!2150025 m!2592819))

(check-sat (not b!2150025) (not mapNonEmpty!13628) b_and!173109 (not b!2150016) (not start!208530) (not b!2150024) (not b!2150029) (not b!2150026) (not b!2150021) (not setNonEmpty!17113) b_and!173111 (not b_next!64205) (not b_next!64207) (not b!2150020) (not b!2150014) (not b!2150018) (not b!2150028) (not b!2150027) (not b!2150019))
(check-sat b_and!173111 b_and!173109 (not b_next!64205) (not b_next!64207))
(get-model)

(declare-fun d!645582 () Bool)

(declare-fun lt!800507 () Int)

(declare-fun size!19304 (List!24721) Int)

(declare-fun list!9560 (BalanceConc!15740) List!24721)

(assert (=> d!645582 (= lt!800507 (size!19304 (list!9560 localTotalInput!13)))))

(declare-fun size!19305 (Conc!7989) Int)

(assert (=> d!645582 (= lt!800507 (size!19305 (c!341116 localTotalInput!13)))))

(assert (=> d!645582 (= (size!19303 localTotalInput!13) lt!800507)))

(declare-fun bs!445564 () Bool)

(assert (= bs!445564 d!645582))

(declare-fun m!2592821 () Bool)

(assert (=> bs!445564 m!2592821))

(assert (=> bs!445564 m!2592821))

(declare-fun m!2592823 () Bool)

(assert (=> bs!445564 m!2592823))

(declare-fun m!2592825 () Bool)

(assert (=> bs!445564 m!2592825))

(assert (=> b!2150019 d!645582))

(declare-fun b!2150044 () Bool)

(declare-fun e!1374830 () Bool)

(assert (=> b!2150044 (= e!1374830 (= (_3!2289 (_1!14525 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)))) (- (_2!14524 (_1!14525 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)))) 1)))))

(declare-fun d!645584 () Bool)

(declare-fun res!927296 () Bool)

(declare-fun e!1374831 () Bool)

(assert (=> d!645584 (=> (not res!927296) (not e!1374831))))

(assert (=> d!645584 (= res!927296 (>= (_2!14524 (_1!14525 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)))) 0))))

(assert (=> d!645584 (= (validCacheMapFurthestNullableBody!26 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)) localTotalInput!13) e!1374831)))

(declare-fun b!2150045 () Bool)

(declare-fun furthestNullablePosition!109 ((InoxSet Context!2846) Int BalanceConc!15740 Int Int) Int)

(assert (=> b!2150045 (= e!1374831 (= (_2!14525 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502))) (furthestNullablePosition!109 (_1!14524 (_1!14525 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)))) (_2!14524 (_1!14525 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)))) localTotalInput!13 (size!19303 localTotalInput!13) (_3!2289 (_1!14525 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)))))))))

(declare-fun b!2150046 () Bool)

(declare-fun res!927299 () Bool)

(assert (=> b!2150046 (=> (not res!927299) (not e!1374831))))

(assert (=> b!2150046 (= res!927299 (and (>= (_3!2289 (_1!14525 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)))) (- 1)) (< (_3!2289 (_1!14525 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)))) (_2!14524 (_1!14525 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)))))))))

(declare-fun b!2150047 () Bool)

(declare-fun res!927298 () Bool)

(assert (=> b!2150047 (=> (not res!927298) (not e!1374831))))

(assert (=> b!2150047 (= res!927298 (<= (_2!14524 (_1!14525 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)))) (size!19303 localTotalInput!13)))))

(declare-fun b!2150048 () Bool)

(declare-fun res!927300 () Bool)

(assert (=> b!2150048 (=> (not res!927300) (not e!1374831))))

(assert (=> b!2150048 (= res!927300 e!1374830)))

(declare-fun res!927297 () Bool)

(assert (=> b!2150048 (=> res!927297 e!1374830)))

(assert (=> b!2150048 (= res!927297 (not (nullableZipper!191 (_1!14524 (_1!14525 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)))))))))

(assert (= (and d!645584 res!927296) b!2150047))

(assert (= (and b!2150047 res!927298) b!2150046))

(assert (= (and b!2150046 res!927299) b!2150048))

(assert (= (and b!2150048 (not res!927297)) b!2150044))

(assert (= (and b!2150048 res!927300) b!2150045))

(assert (=> b!2150045 m!2592791))

(assert (=> b!2150045 m!2592791))

(declare-fun m!2592827 () Bool)

(assert (=> b!2150045 m!2592827))

(assert (=> b!2150047 m!2592791))

(declare-fun m!2592829 () Bool)

(assert (=> b!2150048 m!2592829))

(assert (=> b!2150026 d!645584))

(declare-fun b!2150061 () Bool)

(declare-fun lt!800575 () (_ BitVec 64))

(declare-fun e!1374839 () Int)

(declare-datatypes ((Option!4983 0))(
  ( (None!4982) (Some!4982 (v!29205 tuple2!24470)) )
))
(declare-fun get!7508 (Option!4983) tuple2!24470)

(declare-fun getPair!13 (List!24723 tuple3!3638) Option!4983)

(declare-fun apply!6021 (MutLongMap!2878 (_ BitVec 64)) List!24723)

(assert (=> b!2150061 (= e!1374839 (_2!14525 (get!7508 (getPair!13 (apply!6021 (v!29204 (underlying!5952 (cache!3173 thiss!29110))) lt!800575) lt!800502))))))

(declare-fun hash!548 (Hashable!2792 tuple3!3638) (_ BitVec 64))

(assert (=> b!2150061 (= lt!800575 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502))))

(declare-fun c!341125 () Bool)

(declare-datatypes ((tuple2!24472 0))(
  ( (tuple2!24473 (_1!14526 (_ BitVec 64)) (_2!14526 List!24723)) )
))
(declare-datatypes ((List!24724 0))(
  ( (Nil!24640) (Cons!24640 (h!30041 tuple2!24472) (t!197270 List!24724)) )
))
(declare-fun contains!4214 (List!24724 tuple2!24472) Bool)

(declare-datatypes ((ListLongMap!251 0))(
  ( (ListLongMap!252 (toList!1104 List!24724)) )
))
(declare-fun map!4957 (MutLongMap!2878) ListLongMap!251)

(assert (=> b!2150061 (= c!341125 (not (contains!4214 (toList!1104 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))) (tuple2!24473 lt!800575 (apply!6021 (v!29204 (underlying!5952 (cache!3173 thiss!29110))) lt!800575)))))))

(declare-fun lt!800583 () Unit!37809)

(declare-fun e!1374840 () Unit!37809)

(assert (=> b!2150061 (= lt!800583 e!1374840)))

(declare-fun lambda!80832 () Int)

(declare-fun lt!800570 () Unit!37809)

(declare-fun forallContained!760 (List!24724 Int tuple2!24472) Unit!37809)

(assert (=> b!2150061 (= lt!800570 (forallContained!760 (toList!1104 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))) lambda!80832 (tuple2!24473 lt!800575 (apply!6021 (v!29204 (underlying!5952 (cache!3173 thiss!29110))) lt!800575))))))

(declare-fun lt!800568 () ListLongMap!251)

(assert (=> b!2150061 (= lt!800568 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110)))))))

(declare-fun lt!800588 () Unit!37809)

(declare-fun lemmaGetPairGetSameValueAsMap!8 (ListLongMap!251 tuple3!3638 Int Hashable!2792) Unit!37809)

(assert (=> b!2150061 (= lt!800588 (lemmaGetPairGetSameValueAsMap!8 lt!800568 lt!800502 (_2!14525 (get!7508 (getPair!13 (apply!6021 (v!29204 (underlying!5952 (cache!3173 thiss!29110))) lt!800575) lt!800502))) (hashF!4715 (cache!3173 thiss!29110))))))

(declare-fun lt!800586 () Unit!37809)

(declare-fun lemmaInGenMapThenLongMapContainsHash!8 (ListLongMap!251 tuple3!3638 Hashable!2792) Unit!37809)

(assert (=> b!2150061 (= lt!800586 (lemmaInGenMapThenLongMapContainsHash!8 lt!800568 lt!800502 (hashF!4715 (cache!3173 thiss!29110))))))

(declare-fun contains!4215 (ListLongMap!251 (_ BitVec 64)) Bool)

(assert (=> b!2150061 (contains!4215 lt!800568 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502))))

(declare-fun lt!800587 () Unit!37809)

(assert (=> b!2150061 (= lt!800587 lt!800586)))

(declare-fun lt!800592 () (_ BitVec 64))

(assert (=> b!2150061 (= lt!800592 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502))))

(declare-fun lt!800584 () List!24723)

(declare-fun apply!6022 (ListLongMap!251 (_ BitVec 64)) List!24723)

(assert (=> b!2150061 (= lt!800584 (apply!6022 lt!800568 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502)))))

(declare-fun lt!800591 () Unit!37809)

(declare-fun lemmaGetValueImpliesTupleContained!9 (ListLongMap!251 (_ BitVec 64) List!24723) Unit!37809)

(assert (=> b!2150061 (= lt!800591 (lemmaGetValueImpliesTupleContained!9 lt!800568 lt!800592 lt!800584))))

(assert (=> b!2150061 (contains!4214 (toList!1104 lt!800568) (tuple2!24473 lt!800592 lt!800584))))

(declare-fun lt!800589 () Unit!37809)

(assert (=> b!2150061 (= lt!800589 lt!800591)))

(declare-fun lt!800571 () Unit!37809)

(assert (=> b!2150061 (= lt!800571 (forallContained!760 (toList!1104 lt!800568) lambda!80832 (tuple2!24473 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502) (apply!6022 lt!800568 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502)))))))

(declare-fun lt!800582 () Unit!37809)

(declare-fun lemmaInGenMapThenGetPairDefined!8 (ListLongMap!251 tuple3!3638 Hashable!2792) Unit!37809)

(assert (=> b!2150061 (= lt!800582 (lemmaInGenMapThenGetPairDefined!8 lt!800568 lt!800502 (hashF!4715 (cache!3173 thiss!29110))))))

(declare-fun lt!800577 () Unit!37809)

(assert (=> b!2150061 (= lt!800577 (lemmaInGenMapThenLongMapContainsHash!8 lt!800568 lt!800502 (hashF!4715 (cache!3173 thiss!29110))))))

(declare-fun lt!800595 () Unit!37809)

(assert (=> b!2150061 (= lt!800595 lt!800577)))

(declare-fun lt!800579 () (_ BitVec 64))

(assert (=> b!2150061 (= lt!800579 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502))))

(declare-fun lt!800569 () List!24723)

(assert (=> b!2150061 (= lt!800569 (apply!6022 lt!800568 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502)))))

(declare-fun lt!800585 () Unit!37809)

(assert (=> b!2150061 (= lt!800585 (lemmaGetValueImpliesTupleContained!9 lt!800568 lt!800579 lt!800569))))

(assert (=> b!2150061 (contains!4214 (toList!1104 lt!800568) (tuple2!24473 lt!800579 lt!800569))))

(declare-fun lt!800581 () Unit!37809)

(assert (=> b!2150061 (= lt!800581 lt!800585)))

(declare-fun lt!800576 () Unit!37809)

(assert (=> b!2150061 (= lt!800576 (forallContained!760 (toList!1104 lt!800568) lambda!80832 (tuple2!24473 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502) (apply!6022 lt!800568 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502)))))))

(declare-fun isDefined!4092 (Option!4983) Bool)

(assert (=> b!2150061 (isDefined!4092 (getPair!13 (apply!6022 lt!800568 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502)) lt!800502))))

(declare-fun lt!800578 () Unit!37809)

(assert (=> b!2150061 (= lt!800578 lt!800582)))

(declare-datatypes ((Option!4984 0))(
  ( (None!4983) (Some!4983 (v!29206 Int)) )
))
(declare-fun get!7509 (Option!4984) Int)

(declare-fun getValueByKey!47 (List!24723 tuple3!3638) Option!4984)

(declare-datatypes ((ListMap!695 0))(
  ( (ListMap!696 (toList!1105 List!24723)) )
))
(declare-fun extractMap!76 (List!24724) ListMap!695)

(assert (=> b!2150061 (= (_2!14525 (get!7508 (getPair!13 (apply!6022 lt!800568 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502)) lt!800502))) (get!7509 (getValueByKey!47 (toList!1105 (extractMap!76 (toList!1104 lt!800568))) lt!800502)))))

(declare-fun lt!800593 () Unit!37809)

(assert (=> b!2150061 (= lt!800593 lt!800588)))

(declare-fun lt!800580 () Int)

(declare-fun e!1374838 () Bool)

(declare-fun b!2150063 () Bool)

(declare-fun map!4958 (MutableMap!2792) ListMap!695)

(assert (=> b!2150063 (= e!1374838 (= lt!800580 (get!7509 (getValueByKey!47 (toList!1105 (map!4958 (cache!3173 thiss!29110))) lt!800502))))))

(declare-fun b!2150064 () Bool)

(assert (=> b!2150064 false))

(declare-fun lt!800572 () Unit!37809)

(declare-fun lt!800590 () Unit!37809)

(assert (=> b!2150064 (= lt!800572 lt!800590)))

(declare-fun lt!800597 () List!24724)

(declare-fun lt!800596 () List!24723)

(assert (=> b!2150064 (contains!4214 lt!800597 (tuple2!24473 lt!800575 lt!800596))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!14 (List!24724 (_ BitVec 64) List!24723) Unit!37809)

(assert (=> b!2150064 (= lt!800590 (lemmaGetValueByKeyImpliesContainsTuple!14 lt!800597 lt!800575 lt!800596))))

(assert (=> b!2150064 (= lt!800596 (apply!6021 (v!29204 (underlying!5952 (cache!3173 thiss!29110))) lt!800575))))

(assert (=> b!2150064 (= lt!800597 (toList!1104 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))))

(declare-fun lt!800573 () Unit!37809)

(declare-fun lt!800594 () Unit!37809)

(assert (=> b!2150064 (= lt!800573 lt!800594)))

(declare-fun lt!800574 () List!24724)

(declare-datatypes ((Option!4985 0))(
  ( (None!4984) (Some!4984 (v!29207 List!24723)) )
))
(declare-fun isDefined!4093 (Option!4985) Bool)

(declare-fun getValueByKey!48 (List!24724 (_ BitVec 64)) Option!4985)

(assert (=> b!2150064 (isDefined!4093 (getValueByKey!48 lt!800574 lt!800575))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!30 (List!24724 (_ BitVec 64)) Unit!37809)

(assert (=> b!2150064 (= lt!800594 (lemmaContainsKeyImpliesGetValueByKeyDefined!30 lt!800574 lt!800575))))

(assert (=> b!2150064 (= lt!800574 (toList!1104 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))))

(declare-fun Unit!37811 () Unit!37809)

(assert (=> b!2150064 (= e!1374840 Unit!37811)))

(declare-fun b!2150065 () Bool)

(declare-fun Unit!37812 () Unit!37809)

(assert (=> b!2150065 (= e!1374840 Unit!37812)))

(declare-fun b!2150066 () Bool)

(declare-fun dynLambda!11392 (Int tuple3!3638) Int)

(assert (=> b!2150066 (= e!1374838 (= lt!800580 (dynLambda!11392 (defaultValue!2954 (cache!3173 thiss!29110)) lt!800502)))))

(declare-fun d!645586 () Bool)

(assert (=> d!645586 e!1374838))

(declare-fun c!341123 () Bool)

(assert (=> d!645586 (= c!341123 (contains!4213 (cache!3173 thiss!29110) lt!800502))))

(assert (=> d!645586 (= lt!800580 e!1374839)))

(declare-fun c!341124 () Bool)

(assert (=> d!645586 (= c!341124 (not (contains!4213 (cache!3173 thiss!29110) lt!800502)))))

(assert (=> d!645586 (valid!2221 (cache!3173 thiss!29110))))

(assert (=> d!645586 (= (apply!6020 (cache!3173 thiss!29110) lt!800502) lt!800580)))

(declare-fun b!2150062 () Bool)

(assert (=> b!2150062 (= e!1374839 (dynLambda!11392 (defaultValue!2954 (cache!3173 thiss!29110)) lt!800502))))

(assert (= (and d!645586 c!341124) b!2150062))

(assert (= (and d!645586 (not c!341124)) b!2150061))

(assert (= (and b!2150061 c!341125) b!2150064))

(assert (= (and b!2150061 (not c!341125)) b!2150065))

(assert (= (and d!645586 c!341123) b!2150063))

(assert (= (and d!645586 (not c!341123)) b!2150066))

(declare-fun b_lambda!70805 () Bool)

(assert (=> (not b_lambda!70805) (not b!2150066)))

(declare-fun t!197269 () Bool)

(declare-fun tb!132297 () Bool)

(assert (=> (and b!2150015 (= (defaultValue!2954 (cache!3173 thiss!29110)) (defaultValue!2954 (cache!3173 thiss!29110))) t!197269) tb!132297))

(declare-fun result!159290 () Bool)

(assert (=> tb!132297 (= result!159290 true)))

(assert (=> b!2150066 t!197269))

(declare-fun b_and!173113 () Bool)

(assert (= b_and!173111 (and (=> t!197269 result!159290) b_and!173113)))

(declare-fun b_lambda!70807 () Bool)

(assert (=> (not b_lambda!70807) (not b!2150062)))

(assert (=> b!2150062 t!197269))

(declare-fun b_and!173115 () Bool)

(assert (= b_and!173113 (and (=> t!197269 result!159290) b_and!173115)))

(declare-fun m!2592831 () Bool)

(assert (=> b!2150064 m!2592831))

(declare-fun m!2592833 () Bool)

(assert (=> b!2150064 m!2592833))

(declare-fun m!2592835 () Bool)

(assert (=> b!2150064 m!2592835))

(declare-fun m!2592837 () Bool)

(assert (=> b!2150064 m!2592837))

(assert (=> b!2150064 m!2592831))

(declare-fun m!2592839 () Bool)

(assert (=> b!2150064 m!2592839))

(declare-fun m!2592841 () Bool)

(assert (=> b!2150064 m!2592841))

(declare-fun m!2592843 () Bool)

(assert (=> b!2150064 m!2592843))

(declare-fun m!2592845 () Bool)

(assert (=> b!2150063 m!2592845))

(declare-fun m!2592847 () Bool)

(assert (=> b!2150063 m!2592847))

(assert (=> b!2150063 m!2592847))

(declare-fun m!2592849 () Bool)

(assert (=> b!2150063 m!2592849))

(declare-fun m!2592851 () Bool)

(assert (=> b!2150061 m!2592851))

(declare-fun m!2592853 () Bool)

(assert (=> b!2150061 m!2592853))

(assert (=> b!2150061 m!2592843))

(declare-fun m!2592855 () Bool)

(assert (=> b!2150061 m!2592855))

(declare-fun m!2592857 () Bool)

(assert (=> b!2150061 m!2592857))

(declare-fun m!2592859 () Bool)

(assert (=> b!2150061 m!2592859))

(declare-fun m!2592861 () Bool)

(assert (=> b!2150061 m!2592861))

(assert (=> b!2150061 m!2592855))

(declare-fun m!2592863 () Bool)

(assert (=> b!2150061 m!2592863))

(declare-fun m!2592865 () Bool)

(assert (=> b!2150061 m!2592865))

(declare-fun m!2592867 () Bool)

(assert (=> b!2150061 m!2592867))

(declare-fun m!2592869 () Bool)

(assert (=> b!2150061 m!2592869))

(declare-fun m!2592871 () Bool)

(assert (=> b!2150061 m!2592871))

(assert (=> b!2150061 m!2592835))

(declare-fun m!2592873 () Bool)

(assert (=> b!2150061 m!2592873))

(declare-fun m!2592875 () Bool)

(assert (=> b!2150061 m!2592875))

(declare-fun m!2592877 () Bool)

(assert (=> b!2150061 m!2592877))

(assert (=> b!2150061 m!2592859))

(assert (=> b!2150061 m!2592873))

(declare-fun m!2592879 () Bool)

(assert (=> b!2150061 m!2592879))

(assert (=> b!2150061 m!2592869))

(declare-fun m!2592881 () Bool)

(assert (=> b!2150061 m!2592881))

(assert (=> b!2150061 m!2592869))

(declare-fun m!2592883 () Bool)

(assert (=> b!2150061 m!2592883))

(declare-fun m!2592885 () Bool)

(assert (=> b!2150061 m!2592885))

(assert (=> b!2150061 m!2592883))

(assert (=> b!2150061 m!2592875))

(assert (=> b!2150061 m!2592875))

(declare-fun m!2592887 () Bool)

(assert (=> b!2150061 m!2592887))

(declare-fun m!2592889 () Bool)

(assert (=> b!2150061 m!2592889))

(assert (=> b!2150061 m!2592843))

(declare-fun m!2592891 () Bool)

(assert (=> b!2150061 m!2592891))

(assert (=> d!645586 m!2592805))

(assert (=> d!645586 m!2592817))

(declare-fun m!2592893 () Bool)

(assert (=> b!2150066 m!2592893))

(assert (=> b!2150062 m!2592893))

(assert (=> b!2150026 d!645586))

(declare-fun d!645588 () Bool)

(declare-fun dynLambda!11393 (Int tuple2!24470) Bool)

(assert (=> d!645588 (dynLambda!11393 lambda!80825 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)))))

(declare-fun lt!800600 () Unit!37809)

(declare-fun choose!12704 (MutableMap!2792 tuple3!3638 Int) Unit!37809)

(assert (=> d!645588 (= lt!800600 (choose!12704 (cache!3173 thiss!29110) lt!800502 lambda!80825))))

(assert (=> d!645588 (valid!2221 (cache!3173 thiss!29110))))

(assert (=> d!645588 (= (lemmaForallPairsThenForLookup!10 (cache!3173 thiss!29110) lt!800502 lambda!80825) lt!800600)))

(declare-fun b_lambda!70809 () Bool)

(assert (=> (not b_lambda!70809) (not d!645588)))

(declare-fun bs!445565 () Bool)

(assert (= bs!445565 d!645588))

(assert (=> bs!445565 m!2592793))

(declare-fun m!2592895 () Bool)

(assert (=> bs!445565 m!2592895))

(declare-fun m!2592897 () Bool)

(assert (=> bs!445565 m!2592897))

(assert (=> bs!445565 m!2592817))

(assert (=> b!2150026 d!645588))

(declare-fun bs!445566 () Bool)

(declare-fun b!2150072 () Bool)

(assert (= bs!445566 (and b!2150072 b!2150026)))

(declare-fun lambda!80835 () Int)

(assert (=> bs!445566 (= (= (totalInput!3244 thiss!29110) localTotalInput!13) (= lambda!80835 lambda!80825))))

(assert (=> b!2150072 true))

(declare-fun d!645590 () Bool)

(declare-fun res!927305 () Bool)

(declare-fun e!1374843 () Bool)

(assert (=> d!645590 (=> (not res!927305) (not e!1374843))))

(assert (=> d!645590 (= res!927305 (valid!2221 (cache!3173 thiss!29110)))))

(assert (=> d!645590 (= (validCacheMapFurthestNullable!148 (cache!3173 thiss!29110) (totalInput!3244 thiss!29110)) e!1374843)))

(declare-fun b!2150071 () Bool)

(declare-fun res!927306 () Bool)

(assert (=> b!2150071 (=> (not res!927306) (not e!1374843))))

(declare-fun invariantList!321 (List!24723) Bool)

(assert (=> b!2150071 (= res!927306 (invariantList!321 (toList!1105 (map!4958 (cache!3173 thiss!29110)))))))

(declare-fun forall!5024 (List!24723 Int) Bool)

(assert (=> b!2150072 (= e!1374843 (forall!5024 (toList!1105 (map!4958 (cache!3173 thiss!29110))) lambda!80835))))

(assert (= (and d!645590 res!927305) b!2150071))

(assert (= (and b!2150071 res!927306) b!2150072))

(assert (=> d!645590 m!2592817))

(assert (=> b!2150071 m!2592845))

(declare-fun m!2592900 () Bool)

(assert (=> b!2150071 m!2592900))

(assert (=> b!2150072 m!2592845))

(declare-fun m!2592902 () Bool)

(assert (=> b!2150072 m!2592902))

(assert (=> b!2150025 d!645590))

(declare-fun d!645592 () Bool)

(declare-fun lambda!80838 () Int)

(declare-fun exists!730 ((InoxSet Context!2846) Int) Bool)

(assert (=> d!645592 (= (nullableZipper!191 z!514) (exists!730 z!514 lambda!80838))))

(declare-fun bs!445567 () Bool)

(assert (= bs!445567 d!645592))

(declare-fun m!2592904 () Bool)

(assert (=> bs!445567 m!2592904))

(assert (=> b!2150029 d!645592))

(declare-fun bs!445568 () Bool)

(declare-fun b!2150099 () Bool)

(assert (= bs!445568 (and b!2150099 b!2150061)))

(declare-fun lambda!80841 () Int)

(assert (=> bs!445568 (= lambda!80841 lambda!80832)))

(declare-fun b!2150095 () Bool)

(declare-fun e!1374864 () Unit!37809)

(declare-fun Unit!37813 () Unit!37809)

(assert (=> b!2150095 (= e!1374864 Unit!37813)))

(declare-fun b!2150096 () Bool)

(declare-fun e!1374858 () Unit!37809)

(declare-fun Unit!37814 () Unit!37809)

(assert (=> b!2150096 (= e!1374858 Unit!37814)))

(declare-fun b!2150097 () Bool)

(assert (=> b!2150097 false))

(declare-fun lt!800658 () Unit!37809)

(declare-fun lt!800651 () Unit!37809)

(assert (=> b!2150097 (= lt!800658 lt!800651)))

(declare-fun lt!800652 () List!24724)

(declare-fun lt!800653 () (_ BitVec 64))

(declare-fun lt!800648 () List!24723)

(assert (=> b!2150097 (contains!4214 lt!800652 (tuple2!24473 lt!800653 lt!800648))))

(assert (=> b!2150097 (= lt!800651 (lemmaGetValueByKeyImpliesContainsTuple!14 lt!800652 lt!800653 lt!800648))))

(assert (=> b!2150097 (= lt!800648 (apply!6021 (v!29204 (underlying!5952 (cache!3173 thiss!29110))) lt!800653))))

(assert (=> b!2150097 (= lt!800652 (toList!1104 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))))

(declare-fun lt!800649 () Unit!37809)

(declare-fun lt!800657 () Unit!37809)

(assert (=> b!2150097 (= lt!800649 lt!800657)))

(declare-fun lt!800643 () List!24724)

(assert (=> b!2150097 (isDefined!4093 (getValueByKey!48 lt!800643 lt!800653))))

(assert (=> b!2150097 (= lt!800657 (lemmaContainsKeyImpliesGetValueByKeyDefined!30 lt!800643 lt!800653))))

(assert (=> b!2150097 (= lt!800643 (toList!1104 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))))

(declare-fun lt!800659 () Unit!37809)

(declare-fun lt!800646 () Unit!37809)

(assert (=> b!2150097 (= lt!800659 lt!800646)))

(declare-fun lt!800645 () List!24724)

(declare-fun containsKey!49 (List!24724 (_ BitVec 64)) Bool)

(assert (=> b!2150097 (containsKey!49 lt!800645 lt!800653)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!14 (List!24724 (_ BitVec 64)) Unit!37809)

(assert (=> b!2150097 (= lt!800646 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!14 lt!800645 lt!800653))))

(assert (=> b!2150097 (= lt!800645 (toList!1104 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))))

(declare-fun e!1374861 () Unit!37809)

(declare-fun Unit!37815 () Unit!37809)

(assert (=> b!2150097 (= e!1374861 Unit!37815)))

(declare-fun b!2150098 () Bool)

(declare-fun e!1374862 () Bool)

(declare-fun call!128982 () Bool)

(assert (=> b!2150098 (= e!1374862 call!128982)))

(assert (=> b!2150099 (= e!1374864 (forallContained!760 (toList!1104 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))) lambda!80841 (tuple2!24473 lt!800653 (apply!6021 (v!29204 (underlying!5952 (cache!3173 thiss!29110))) lt!800653))))))

(declare-fun c!341139 () Bool)

(assert (=> b!2150099 (= c!341139 (not (contains!4214 (toList!1104 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))) (tuple2!24473 lt!800653 (apply!6021 (v!29204 (underlying!5952 (cache!3173 thiss!29110))) lt!800653)))))))

(declare-fun lt!800650 () Unit!37809)

(assert (=> b!2150099 (= lt!800650 e!1374861)))

(declare-fun bm!128974 () Bool)

(declare-fun call!128981 () ListLongMap!251)

(assert (=> bm!128974 (= call!128981 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110)))))))

(declare-fun bm!128975 () Bool)

(declare-fun call!128983 () (_ BitVec 64))

(assert (=> bm!128975 (= call!128983 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502))))

(declare-fun bm!128976 () Bool)

(declare-fun call!128984 () Option!4983)

(declare-fun call!128979 () List!24723)

(assert (=> bm!128976 (= call!128984 (getPair!13 call!128979 lt!800502))))

(declare-fun b!2150101 () Bool)

(declare-fun e!1374860 () Unit!37809)

(declare-fun lt!800660 () Unit!37809)

(assert (=> b!2150101 (= e!1374860 lt!800660)))

(declare-fun lt!800641 () ListLongMap!251)

(assert (=> b!2150101 (= lt!800641 call!128981)))

(declare-fun lemmaInGenericMapThenInLongMap!13 (ListLongMap!251 tuple3!3638 Hashable!2792) Unit!37809)

(assert (=> b!2150101 (= lt!800660 (lemmaInGenericMapThenInLongMap!13 lt!800641 lt!800502 (hashF!4715 (cache!3173 thiss!29110))))))

(declare-fun res!927314 () Bool)

(declare-fun call!128980 () Bool)

(assert (=> b!2150101 (= res!927314 call!128980)))

(assert (=> b!2150101 (=> (not res!927314) (not e!1374862))))

(assert (=> b!2150101 e!1374862))

(declare-fun c!341138 () Bool)

(declare-fun bm!128977 () Bool)

(assert (=> bm!128977 (= call!128979 (apply!6022 (ite c!341138 lt!800641 call!128981) call!128983))))

(declare-fun b!2150102 () Bool)

(assert (=> b!2150102 (= e!1374860 e!1374858)))

(declare-fun res!927315 () Bool)

(assert (=> b!2150102 (= res!927315 call!128980)))

(declare-fun e!1374859 () Bool)

(assert (=> b!2150102 (=> (not res!927315) (not e!1374859))))

(declare-fun c!341137 () Bool)

(assert (=> b!2150102 (= c!341137 e!1374859)))

(declare-fun b!2150100 () Bool)

(assert (=> b!2150100 (= e!1374859 call!128982)))

(declare-fun d!645594 () Bool)

(declare-fun lt!800644 () Bool)

(declare-fun contains!4216 (ListMap!695 tuple3!3638) Bool)

(assert (=> d!645594 (= lt!800644 (contains!4216 (map!4958 (cache!3173 thiss!29110)) lt!800502))))

(declare-fun e!1374863 () Bool)

(assert (=> d!645594 (= lt!800644 e!1374863)))

(declare-fun res!927313 () Bool)

(assert (=> d!645594 (=> (not res!927313) (not e!1374863))))

(declare-fun contains!4217 (MutLongMap!2878 (_ BitVec 64)) Bool)

(assert (=> d!645594 (= res!927313 (contains!4217 (v!29204 (underlying!5952 (cache!3173 thiss!29110))) lt!800653))))

(declare-fun lt!800656 () Unit!37809)

(assert (=> d!645594 (= lt!800656 e!1374860)))

(assert (=> d!645594 (= c!341138 (contains!4216 (extractMap!76 (toList!1104 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110)))))) lt!800502))))

(declare-fun lt!800655 () Unit!37809)

(assert (=> d!645594 (= lt!800655 e!1374864)))

(declare-fun c!341136 () Bool)

(assert (=> d!645594 (= c!341136 (contains!4217 (v!29204 (underlying!5952 (cache!3173 thiss!29110))) lt!800653))))

(assert (=> d!645594 (= lt!800653 (hash!548 (hashF!4715 (cache!3173 thiss!29110)) lt!800502))))

(assert (=> d!645594 (valid!2221 (cache!3173 thiss!29110))))

(assert (=> d!645594 (= (contains!4213 (cache!3173 thiss!29110) lt!800502) lt!800644)))

(declare-fun b!2150103 () Bool)

(assert (=> b!2150103 (= e!1374863 (isDefined!4092 (getPair!13 (apply!6021 (v!29204 (underlying!5952 (cache!3173 thiss!29110))) lt!800653) lt!800502)))))

(declare-fun b!2150104 () Bool)

(assert (=> b!2150104 false))

(declare-fun lt!800647 () Unit!37809)

(declare-fun lt!800642 () Unit!37809)

(assert (=> b!2150104 (= lt!800647 lt!800642)))

(declare-fun lt!800654 () ListLongMap!251)

(assert (=> b!2150104 (contains!4216 (extractMap!76 (toList!1104 lt!800654)) lt!800502)))

(declare-fun lemmaInLongMapThenInGenericMap!13 (ListLongMap!251 tuple3!3638 Hashable!2792) Unit!37809)

(assert (=> b!2150104 (= lt!800642 (lemmaInLongMapThenInGenericMap!13 lt!800654 lt!800502 (hashF!4715 (cache!3173 thiss!29110))))))

(assert (=> b!2150104 (= lt!800654 call!128981)))

(declare-fun Unit!37816 () Unit!37809)

(assert (=> b!2150104 (= e!1374858 Unit!37816)))

(declare-fun b!2150105 () Bool)

(declare-fun Unit!37817 () Unit!37809)

(assert (=> b!2150105 (= e!1374861 Unit!37817)))

(declare-fun bm!128978 () Bool)

(assert (=> bm!128978 (= call!128982 (isDefined!4092 call!128984))))

(declare-fun bm!128979 () Bool)

(assert (=> bm!128979 (= call!128980 (contains!4215 (ite c!341138 lt!800641 call!128981) call!128983))))

(assert (= (and d!645594 c!341136) b!2150099))

(assert (= (and d!645594 (not c!341136)) b!2150095))

(assert (= (and b!2150099 c!341139) b!2150097))

(assert (= (and b!2150099 (not c!341139)) b!2150105))

(assert (= (and d!645594 c!341138) b!2150101))

(assert (= (and d!645594 (not c!341138)) b!2150102))

(assert (= (and b!2150101 res!927314) b!2150098))

(assert (= (and b!2150102 res!927315) b!2150100))

(assert (= (and b!2150102 c!341137) b!2150104))

(assert (= (and b!2150102 (not c!341137)) b!2150096))

(assert (= (or b!2150101 b!2150102 b!2150100 b!2150104) bm!128974))

(assert (= (or b!2150101 b!2150098 b!2150102 b!2150100) bm!128975))

(assert (= (or b!2150101 b!2150102) bm!128979))

(assert (= (or b!2150098 b!2150100) bm!128977))

(assert (= (or b!2150098 b!2150100) bm!128976))

(assert (= (or b!2150098 b!2150100) bm!128978))

(assert (= (and d!645594 res!927313) b!2150103))

(declare-fun m!2592906 () Bool)

(assert (=> b!2150101 m!2592906))

(declare-fun m!2592908 () Bool)

(assert (=> bm!128978 m!2592908))

(declare-fun m!2592910 () Bool)

(assert (=> b!2150103 m!2592910))

(assert (=> b!2150103 m!2592910))

(declare-fun m!2592912 () Bool)

(assert (=> b!2150103 m!2592912))

(assert (=> b!2150103 m!2592912))

(declare-fun m!2592914 () Bool)

(assert (=> b!2150103 m!2592914))

(assert (=> d!645594 m!2592845))

(declare-fun m!2592916 () Bool)

(assert (=> d!645594 m!2592916))

(declare-fun m!2592918 () Bool)

(assert (=> d!645594 m!2592918))

(assert (=> d!645594 m!2592835))

(assert (=> d!645594 m!2592869))

(assert (=> d!645594 m!2592916))

(assert (=> d!645594 m!2592817))

(assert (=> d!645594 m!2592845))

(declare-fun m!2592920 () Bool)

(assert (=> d!645594 m!2592920))

(declare-fun m!2592922 () Bool)

(assert (=> d!645594 m!2592922))

(assert (=> bm!128975 m!2592869))

(assert (=> bm!128974 m!2592835))

(declare-fun m!2592924 () Bool)

(assert (=> bm!128976 m!2592924))

(declare-fun m!2592926 () Bool)

(assert (=> b!2150097 m!2592926))

(declare-fun m!2592928 () Bool)

(assert (=> b!2150097 m!2592928))

(declare-fun m!2592930 () Bool)

(assert (=> b!2150097 m!2592930))

(declare-fun m!2592932 () Bool)

(assert (=> b!2150097 m!2592932))

(declare-fun m!2592934 () Bool)

(assert (=> b!2150097 m!2592934))

(assert (=> b!2150097 m!2592928))

(declare-fun m!2592936 () Bool)

(assert (=> b!2150097 m!2592936))

(assert (=> b!2150097 m!2592910))

(assert (=> b!2150097 m!2592835))

(declare-fun m!2592938 () Bool)

(assert (=> b!2150097 m!2592938))

(assert (=> b!2150099 m!2592835))

(assert (=> b!2150099 m!2592910))

(declare-fun m!2592940 () Bool)

(assert (=> b!2150099 m!2592940))

(declare-fun m!2592942 () Bool)

(assert (=> b!2150099 m!2592942))

(declare-fun m!2592944 () Bool)

(assert (=> b!2150104 m!2592944))

(assert (=> b!2150104 m!2592944))

(declare-fun m!2592946 () Bool)

(assert (=> b!2150104 m!2592946))

(declare-fun m!2592948 () Bool)

(assert (=> b!2150104 m!2592948))

(declare-fun m!2592950 () Bool)

(assert (=> bm!128977 m!2592950))

(declare-fun m!2592952 () Bool)

(assert (=> bm!128979 m!2592952))

(assert (=> b!2150021 d!645594))

(declare-fun bs!445569 () Bool)

(declare-fun b!2150107 () Bool)

(assert (= bs!445569 (and b!2150107 b!2150026)))

(declare-fun lambda!80842 () Int)

(assert (=> bs!445569 (= lambda!80842 lambda!80825)))

(declare-fun bs!445570 () Bool)

(assert (= bs!445570 (and b!2150107 b!2150072)))

(assert (=> bs!445570 (= (= localTotalInput!13 (totalInput!3244 thiss!29110)) (= lambda!80842 lambda!80835))))

(assert (=> b!2150107 true))

(declare-fun d!645596 () Bool)

(declare-fun res!927316 () Bool)

(declare-fun e!1374865 () Bool)

(assert (=> d!645596 (=> (not res!927316) (not e!1374865))))

(assert (=> d!645596 (= res!927316 (valid!2221 (cache!3173 thiss!29110)))))

(assert (=> d!645596 (= (validCacheMapFurthestNullable!148 (cache!3173 thiss!29110) localTotalInput!13) e!1374865)))

(declare-fun b!2150106 () Bool)

(declare-fun res!927317 () Bool)

(assert (=> b!2150106 (=> (not res!927317) (not e!1374865))))

(assert (=> b!2150106 (= res!927317 (invariantList!321 (toList!1105 (map!4958 (cache!3173 thiss!29110)))))))

(assert (=> b!2150107 (= e!1374865 (forall!5024 (toList!1105 (map!4958 (cache!3173 thiss!29110))) lambda!80842))))

(assert (= (and d!645596 res!927316) b!2150106))

(assert (= (and b!2150106 res!927317) b!2150107))

(assert (=> d!645596 m!2592817))

(assert (=> b!2150106 m!2592845))

(assert (=> b!2150106 m!2592900))

(assert (=> b!2150107 m!2592845))

(declare-fun m!2592954 () Bool)

(assert (=> b!2150107 m!2592954))

(assert (=> b!2150021 d!645596))

(declare-fun d!645598 () Bool)

(declare-fun isBalanced!2476 (Conc!7989) Bool)

(assert (=> d!645598 (= (inv!32459 (totalInput!3244 thiss!29110)) (isBalanced!2476 (c!341116 (totalInput!3244 thiss!29110))))))

(declare-fun bs!445571 () Bool)

(assert (= bs!445571 d!645598))

(declare-fun m!2592956 () Bool)

(assert (=> bs!445571 m!2592956))

(assert (=> b!2150028 d!645598))

(declare-fun d!645600 () Bool)

(declare-fun c!341142 () Bool)

(assert (=> d!645600 (= c!341142 ((_ is Node!7989) (c!341116 (totalInput!3244 thiss!29110))))))

(declare-fun e!1374870 () Bool)

(assert (=> d!645600 (= (inv!32460 (c!341116 (totalInput!3244 thiss!29110))) e!1374870)))

(declare-fun b!2150114 () Bool)

(declare-fun inv!32462 (Conc!7989) Bool)

(assert (=> b!2150114 (= e!1374870 (inv!32462 (c!341116 (totalInput!3244 thiss!29110))))))

(declare-fun b!2150115 () Bool)

(declare-fun e!1374871 () Bool)

(assert (=> b!2150115 (= e!1374870 e!1374871)))

(declare-fun res!927320 () Bool)

(assert (=> b!2150115 (= res!927320 (not ((_ is Leaf!11683) (c!341116 (totalInput!3244 thiss!29110)))))))

(assert (=> b!2150115 (=> res!927320 e!1374871)))

(declare-fun b!2150116 () Bool)

(declare-fun inv!32463 (Conc!7989) Bool)

(assert (=> b!2150116 (= e!1374871 (inv!32463 (c!341116 (totalInput!3244 thiss!29110))))))

(assert (= (and d!645600 c!341142) b!2150114))

(assert (= (and d!645600 (not c!341142)) b!2150115))

(assert (= (and b!2150115 (not res!927320)) b!2150116))

(declare-fun m!2592958 () Bool)

(assert (=> b!2150114 m!2592958))

(declare-fun m!2592960 () Bool)

(assert (=> b!2150116 m!2592960))

(assert (=> b!2150020 d!645600))

(declare-fun d!645602 () Bool)

(declare-fun res!927323 () Bool)

(declare-fun e!1374874 () Bool)

(assert (=> d!645602 (=> (not res!927323) (not e!1374874))))

(assert (=> d!645602 (= res!927323 ((_ is HashMap!2792) (cache!3173 thiss!29110)))))

(assert (=> d!645602 (= (inv!32458 thiss!29110) e!1374874)))

(declare-fun b!2150119 () Bool)

(assert (=> b!2150119 (= e!1374874 (validCacheMapFurthestNullable!148 (cache!3173 thiss!29110) (totalInput!3244 thiss!29110)))))

(assert (= (and d!645602 res!927323) b!2150119))

(assert (=> b!2150119 m!2592819))

(assert (=> start!208530 d!645602))

(declare-fun d!645604 () Bool)

(assert (=> d!645604 (= (inv!32459 localTotalInput!13) (isBalanced!2476 (c!341116 localTotalInput!13)))))

(declare-fun bs!445572 () Bool)

(assert (= bs!445572 d!645604))

(declare-fun m!2592962 () Bool)

(assert (=> bs!445572 m!2592962))

(assert (=> start!208530 d!645604))

(declare-fun d!645606 () Bool)

(declare-fun c!341143 () Bool)

(assert (=> d!645606 (= c!341143 ((_ is Node!7989) (c!341116 localTotalInput!13)))))

(declare-fun e!1374875 () Bool)

(assert (=> d!645606 (= (inv!32460 (c!341116 localTotalInput!13)) e!1374875)))

(declare-fun b!2150120 () Bool)

(assert (=> b!2150120 (= e!1374875 (inv!32462 (c!341116 localTotalInput!13)))))

(declare-fun b!2150121 () Bool)

(declare-fun e!1374876 () Bool)

(assert (=> b!2150121 (= e!1374875 e!1374876)))

(declare-fun res!927324 () Bool)

(assert (=> b!2150121 (= res!927324 (not ((_ is Leaf!11683) (c!341116 localTotalInput!13))))))

(assert (=> b!2150121 (=> res!927324 e!1374876)))

(declare-fun b!2150122 () Bool)

(assert (=> b!2150122 (= e!1374876 (inv!32463 (c!341116 localTotalInput!13)))))

(assert (= (and d!645606 c!341143) b!2150120))

(assert (= (and d!645606 (not c!341143)) b!2150121))

(assert (= (and b!2150121 (not res!927324)) b!2150122))

(declare-fun m!2592964 () Bool)

(assert (=> b!2150120 m!2592964))

(declare-fun m!2592966 () Bool)

(assert (=> b!2150122 m!2592966))

(assert (=> b!2150027 d!645606))

(declare-fun d!645608 () Bool)

(declare-fun lambda!80845 () Int)

(declare-fun forall!5025 (List!24722 Int) Bool)

(assert (=> d!645608 (= (inv!32461 setElem!17113) (forall!5025 (exprs!1923 setElem!17113) lambda!80845))))

(declare-fun bs!445573 () Bool)

(assert (= bs!445573 d!645608))

(declare-fun m!2592968 () Bool)

(assert (=> bs!445573 m!2592968))

(assert (=> setNonEmpty!17113 d!645608))

(declare-fun bs!445574 () Bool)

(declare-fun b!2150127 () Bool)

(assert (= bs!445574 (and b!2150127 b!2150061)))

(declare-fun lambda!80848 () Int)

(assert (=> bs!445574 (= lambda!80848 lambda!80832)))

(declare-fun bs!445575 () Bool)

(assert (= bs!445575 (and b!2150127 b!2150099)))

(assert (=> bs!445575 (= lambda!80848 lambda!80841)))

(declare-fun d!645610 () Bool)

(declare-fun res!927329 () Bool)

(declare-fun e!1374879 () Bool)

(assert (=> d!645610 (=> (not res!927329) (not e!1374879))))

(declare-fun valid!2222 (MutLongMap!2878) Bool)

(assert (=> d!645610 (= res!927329 (valid!2222 (v!29204 (underlying!5952 (cache!3173 thiss!29110)))))))

(assert (=> d!645610 (= (valid!2221 (cache!3173 thiss!29110)) e!1374879)))

(declare-fun res!927330 () Bool)

(assert (=> b!2150127 (=> (not res!927330) (not e!1374879))))

(declare-fun forall!5026 (List!24724 Int) Bool)

(assert (=> b!2150127 (= res!927330 (forall!5026 (toList!1104 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))) lambda!80848))))

(declare-fun b!2150128 () Bool)

(declare-fun allKeysSameHashInMap!83 (ListLongMap!251 Hashable!2792) Bool)

(assert (=> b!2150128 (= e!1374879 (allKeysSameHashInMap!83 (map!4957 (v!29204 (underlying!5952 (cache!3173 thiss!29110)))) (hashF!4715 (cache!3173 thiss!29110))))))

(assert (= (and d!645610 res!927329) b!2150127))

(assert (= (and b!2150127 res!927330) b!2150128))

(declare-fun m!2592970 () Bool)

(assert (=> d!645610 m!2592970))

(assert (=> b!2150127 m!2592835))

(declare-fun m!2592972 () Bool)

(assert (=> b!2150127 m!2592972))

(assert (=> b!2150128 m!2592835))

(assert (=> b!2150128 m!2592835))

(declare-fun m!2592974 () Bool)

(assert (=> b!2150128 m!2592974))

(assert (=> b!2150024 d!645610))

(declare-fun d!645612 () Bool)

(assert (=> d!645612 (= (array_inv!3122 (_keys!3175 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))) (bvsge (size!19301 (_keys!3175 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2150016 d!645612))

(declare-fun d!645614 () Bool)

(assert (=> d!645614 (= (array_inv!3123 (_values!3158 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))) (bvsge (size!19302 (_values!3158 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2150016 d!645614))

(declare-fun condSetEmpty!17116 () Bool)

(assert (=> setNonEmpty!17113 (= condSetEmpty!17116 (= setRest!17113 ((as const (Array Context!2846 Bool)) false)))))

(declare-fun setRes!17116 () Bool)

(assert (=> setNonEmpty!17113 (= tp!667838 setRes!17116)))

(declare-fun setIsEmpty!17116 () Bool)

(assert (=> setIsEmpty!17116 setRes!17116))

(declare-fun tp!667850 () Bool)

(declare-fun setNonEmpty!17116 () Bool)

(declare-fun setElem!17116 () Context!2846)

(declare-fun e!1374882 () Bool)

(assert (=> setNonEmpty!17116 (= setRes!17116 (and tp!667850 (inv!32461 setElem!17116) e!1374882))))

(declare-fun setRest!17116 () (InoxSet Context!2846))

(assert (=> setNonEmpty!17116 (= setRest!17113 ((_ map or) (store ((as const (Array Context!2846 Bool)) false) setElem!17116 true) setRest!17116))))

(declare-fun b!2150133 () Bool)

(declare-fun tp!667849 () Bool)

(assert (=> b!2150133 (= e!1374882 tp!667849)))

(assert (= (and setNonEmpty!17113 condSetEmpty!17116) setIsEmpty!17116))

(assert (= (and setNonEmpty!17113 (not condSetEmpty!17116)) setNonEmpty!17116))

(assert (= setNonEmpty!17116 b!2150133))

(declare-fun m!2592976 () Bool)

(assert (=> setNonEmpty!17116 m!2592976))

(declare-fun b!2150138 () Bool)

(declare-fun e!1374885 () Bool)

(declare-fun tp!667855 () Bool)

(declare-fun tp!667856 () Bool)

(assert (=> b!2150138 (= e!1374885 (and tp!667855 tp!667856))))

(assert (=> b!2150014 (= tp!667844 e!1374885)))

(assert (= (and b!2150014 ((_ is Cons!24638) (exprs!1923 setElem!17113))) b!2150138))

(declare-fun setElem!17119 () Context!2846)

(declare-fun setNonEmpty!17119 () Bool)

(declare-fun tp!667865 () Bool)

(declare-fun e!1374891 () Bool)

(declare-fun setRes!17119 () Bool)

(assert (=> setNonEmpty!17119 (= setRes!17119 (and tp!667865 (inv!32461 setElem!17119) e!1374891))))

(declare-fun setRest!17119 () (InoxSet Context!2846))

(assert (=> setNonEmpty!17119 (= (_1!14524 (_1!14525 (h!30040 mapDefault!13628))) ((_ map or) (store ((as const (Array Context!2846 Bool)) false) setElem!17119 true) setRest!17119))))

(declare-fun b!2150145 () Bool)

(declare-fun e!1374890 () Bool)

(declare-fun tp!667864 () Bool)

(assert (=> b!2150145 (= e!1374890 (and setRes!17119 tp!667864))))

(declare-fun condSetEmpty!17119 () Bool)

(assert (=> b!2150145 (= condSetEmpty!17119 (= (_1!14524 (_1!14525 (h!30040 mapDefault!13628))) ((as const (Array Context!2846 Bool)) false)))))

(assert (=> b!2150018 (= tp!667835 e!1374890)))

(declare-fun setIsEmpty!17119 () Bool)

(assert (=> setIsEmpty!17119 setRes!17119))

(declare-fun b!2150146 () Bool)

(declare-fun tp!667863 () Bool)

(assert (=> b!2150146 (= e!1374891 tp!667863)))

(assert (= (and b!2150145 condSetEmpty!17119) setIsEmpty!17119))

(assert (= (and b!2150145 (not condSetEmpty!17119)) setNonEmpty!17119))

(assert (= setNonEmpty!17119 b!2150146))

(assert (= (and b!2150018 ((_ is Cons!24639) mapDefault!13628)) b!2150145))

(declare-fun m!2592978 () Bool)

(assert (=> setNonEmpty!17119 m!2592978))

(declare-fun e!1374893 () Bool)

(declare-fun setRes!17120 () Bool)

(declare-fun setElem!17120 () Context!2846)

(declare-fun tp!667868 () Bool)

(declare-fun setNonEmpty!17120 () Bool)

(assert (=> setNonEmpty!17120 (= setRes!17120 (and tp!667868 (inv!32461 setElem!17120) e!1374893))))

(declare-fun setRest!17120 () (InoxSet Context!2846))

(assert (=> setNonEmpty!17120 (= (_1!14524 (_1!14525 (h!30040 (zeroValue!3136 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2846 Bool)) false) setElem!17120 true) setRest!17120))))

(declare-fun b!2150147 () Bool)

(declare-fun e!1374892 () Bool)

(declare-fun tp!667867 () Bool)

(assert (=> b!2150147 (= e!1374892 (and setRes!17120 tp!667867))))

(declare-fun condSetEmpty!17120 () Bool)

(assert (=> b!2150147 (= condSetEmpty!17120 (= (_1!14524 (_1!14525 (h!30040 (zeroValue!3136 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))))) ((as const (Array Context!2846 Bool)) false)))))

(assert (=> b!2150016 (= tp!667837 e!1374892)))

(declare-fun setIsEmpty!17120 () Bool)

(assert (=> setIsEmpty!17120 setRes!17120))

(declare-fun b!2150148 () Bool)

(declare-fun tp!667866 () Bool)

(assert (=> b!2150148 (= e!1374893 tp!667866)))

(assert (= (and b!2150147 condSetEmpty!17120) setIsEmpty!17120))

(assert (= (and b!2150147 (not condSetEmpty!17120)) setNonEmpty!17120))

(assert (= setNonEmpty!17120 b!2150148))

(assert (= (and b!2150016 ((_ is Cons!24639) (zeroValue!3136 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110)))))))) b!2150147))

(declare-fun m!2592980 () Bool)

(assert (=> setNonEmpty!17120 m!2592980))

(declare-fun setRes!17121 () Bool)

(declare-fun tp!667871 () Bool)

(declare-fun e!1374895 () Bool)

(declare-fun setElem!17121 () Context!2846)

(declare-fun setNonEmpty!17121 () Bool)

(assert (=> setNonEmpty!17121 (= setRes!17121 (and tp!667871 (inv!32461 setElem!17121) e!1374895))))

(declare-fun setRest!17121 () (InoxSet Context!2846))

(assert (=> setNonEmpty!17121 (= (_1!14524 (_1!14525 (h!30040 (minValue!3136 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2846 Bool)) false) setElem!17121 true) setRest!17121))))

(declare-fun b!2150149 () Bool)

(declare-fun e!1374894 () Bool)

(declare-fun tp!667870 () Bool)

(assert (=> b!2150149 (= e!1374894 (and setRes!17121 tp!667870))))

(declare-fun condSetEmpty!17121 () Bool)

(assert (=> b!2150149 (= condSetEmpty!17121 (= (_1!14524 (_1!14525 (h!30040 (minValue!3136 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110))))))))) ((as const (Array Context!2846 Bool)) false)))))

(assert (=> b!2150016 (= tp!667834 e!1374894)))

(declare-fun setIsEmpty!17121 () Bool)

(assert (=> setIsEmpty!17121 setRes!17121))

(declare-fun b!2150150 () Bool)

(declare-fun tp!667869 () Bool)

(assert (=> b!2150150 (= e!1374895 tp!667869)))

(assert (= (and b!2150149 condSetEmpty!17121) setIsEmpty!17121))

(assert (= (and b!2150149 (not condSetEmpty!17121)) setNonEmpty!17121))

(assert (= setNonEmpty!17121 b!2150150))

(assert (= (and b!2150016 ((_ is Cons!24639) (minValue!3136 (v!29203 (underlying!5951 (v!29204 (underlying!5952 (cache!3173 thiss!29110)))))))) b!2150149))

(declare-fun m!2592982 () Bool)

(assert (=> setNonEmpty!17121 m!2592982))

(declare-fun b!2150159 () Bool)

(declare-fun tp!667880 () Bool)

(declare-fun tp!667878 () Bool)

(declare-fun e!1374900 () Bool)

(assert (=> b!2150159 (= e!1374900 (and (inv!32460 (left!18926 (c!341116 (totalInput!3244 thiss!29110)))) tp!667880 (inv!32460 (right!19256 (c!341116 (totalInput!3244 thiss!29110)))) tp!667878))))

(declare-fun b!2150161 () Bool)

(declare-fun e!1374901 () Bool)

(declare-fun tp!667879 () Bool)

(assert (=> b!2150161 (= e!1374901 tp!667879)))

(declare-fun b!2150160 () Bool)

(declare-fun inv!32464 (IArray!15983) Bool)

(assert (=> b!2150160 (= e!1374900 (and (inv!32464 (xs!10931 (c!341116 (totalInput!3244 thiss!29110)))) e!1374901))))

(assert (=> b!2150020 (= tp!667840 (and (inv!32460 (c!341116 (totalInput!3244 thiss!29110))) e!1374900))))

(assert (= (and b!2150020 ((_ is Node!7989) (c!341116 (totalInput!3244 thiss!29110)))) b!2150159))

(assert (= b!2150160 b!2150161))

(assert (= (and b!2150020 ((_ is Leaf!11683) (c!341116 (totalInput!3244 thiss!29110)))) b!2150160))

(declare-fun m!2592984 () Bool)

(assert (=> b!2150159 m!2592984))

(declare-fun m!2592986 () Bool)

(assert (=> b!2150159 m!2592986))

(declare-fun m!2592988 () Bool)

(assert (=> b!2150160 m!2592988))

(assert (=> b!2150020 m!2592811))

(declare-fun mapIsEmpty!13631 () Bool)

(declare-fun mapRes!13631 () Bool)

(assert (=> mapIsEmpty!13631 mapRes!13631))

(declare-fun b!2150172 () Bool)

(declare-fun e!1374911 () Bool)

(declare-fun tp!667898 () Bool)

(assert (=> b!2150172 (= e!1374911 tp!667898)))

(declare-fun b!2150173 () Bool)

(declare-fun e!1374910 () Bool)

(declare-fun setRes!17126 () Bool)

(declare-fun tp!667899 () Bool)

(assert (=> b!2150173 (= e!1374910 (and setRes!17126 tp!667899))))

(declare-fun condSetEmpty!17126 () Bool)

(declare-fun mapValue!13631 () List!24723)

(assert (=> b!2150173 (= condSetEmpty!17126 (= (_1!14524 (_1!14525 (h!30040 mapValue!13631))) ((as const (Array Context!2846 Bool)) false)))))

(declare-fun mapNonEmpty!13631 () Bool)

(declare-fun tp!667901 () Bool)

(assert (=> mapNonEmpty!13631 (= mapRes!13631 (and tp!667901 e!1374910))))

(declare-fun mapRest!13631 () (Array (_ BitVec 32) List!24723))

(declare-fun mapKey!13631 () (_ BitVec 32))

(assert (=> mapNonEmpty!13631 (= mapRest!13628 (store mapRest!13631 mapKey!13631 mapValue!13631))))

(declare-fun setIsEmpty!17126 () Bool)

(assert (=> setIsEmpty!17126 setRes!17126))

(declare-fun tp!667897 () Bool)

(declare-fun setNonEmpty!17126 () Bool)

(declare-fun setElem!17127 () Context!2846)

(assert (=> setNonEmpty!17126 (= setRes!17126 (and tp!667897 (inv!32461 setElem!17127) e!1374911))))

(declare-fun setRest!17127 () (InoxSet Context!2846))

(assert (=> setNonEmpty!17126 (= (_1!14524 (_1!14525 (h!30040 mapValue!13631))) ((_ map or) (store ((as const (Array Context!2846 Bool)) false) setElem!17127 true) setRest!17127))))

(declare-fun b!2150174 () Bool)

(declare-fun e!1374912 () Bool)

(declare-fun tp!667900 () Bool)

(assert (=> b!2150174 (= e!1374912 tp!667900)))

(declare-fun setElem!17126 () Context!2846)

(declare-fun setRes!17127 () Bool)

(declare-fun setNonEmpty!17127 () Bool)

(declare-fun tp!667895 () Bool)

(assert (=> setNonEmpty!17127 (= setRes!17127 (and tp!667895 (inv!32461 setElem!17126) e!1374912))))

(declare-fun mapDefault!13631 () List!24723)

(declare-fun setRest!17126 () (InoxSet Context!2846))

(assert (=> setNonEmpty!17127 (= (_1!14524 (_1!14525 (h!30040 mapDefault!13631))) ((_ map or) (store ((as const (Array Context!2846 Bool)) false) setElem!17126 true) setRest!17126))))

(declare-fun b!2150175 () Bool)

(declare-fun e!1374913 () Bool)

(declare-fun tp!667896 () Bool)

(assert (=> b!2150175 (= e!1374913 (and setRes!17127 tp!667896))))

(declare-fun condSetEmpty!17127 () Bool)

(assert (=> b!2150175 (= condSetEmpty!17127 (= (_1!14524 (_1!14525 (h!30040 mapDefault!13631))) ((as const (Array Context!2846 Bool)) false)))))

(declare-fun condMapEmpty!13631 () Bool)

(assert (=> mapNonEmpty!13628 (= condMapEmpty!13631 (= mapRest!13628 ((as const (Array (_ BitVec 32) List!24723)) mapDefault!13631)))))

(assert (=> mapNonEmpty!13628 (= tp!667841 (and e!1374913 mapRes!13631))))

(declare-fun setIsEmpty!17127 () Bool)

(assert (=> setIsEmpty!17127 setRes!17127))

(assert (= (and mapNonEmpty!13628 condMapEmpty!13631) mapIsEmpty!13631))

(assert (= (and mapNonEmpty!13628 (not condMapEmpty!13631)) mapNonEmpty!13631))

(assert (= (and b!2150173 condSetEmpty!17126) setIsEmpty!17126))

(assert (= (and b!2150173 (not condSetEmpty!17126)) setNonEmpty!17126))

(assert (= setNonEmpty!17126 b!2150172))

(assert (= (and mapNonEmpty!13631 ((_ is Cons!24639) mapValue!13631)) b!2150173))

(assert (= (and b!2150175 condSetEmpty!17127) setIsEmpty!17127))

(assert (= (and b!2150175 (not condSetEmpty!17127)) setNonEmpty!17127))

(assert (= setNonEmpty!17127 b!2150174))

(assert (= (and mapNonEmpty!13628 ((_ is Cons!24639) mapDefault!13631)) b!2150175))

(declare-fun m!2592990 () Bool)

(assert (=> mapNonEmpty!13631 m!2592990))

(declare-fun m!2592992 () Bool)

(assert (=> setNonEmpty!17126 m!2592992))

(declare-fun m!2592994 () Bool)

(assert (=> setNonEmpty!17127 m!2592994))

(declare-fun tp!667904 () Bool)

(declare-fun setElem!17128 () Context!2846)

(declare-fun setNonEmpty!17128 () Bool)

(declare-fun setRes!17128 () Bool)

(declare-fun e!1374915 () Bool)

(assert (=> setNonEmpty!17128 (= setRes!17128 (and tp!667904 (inv!32461 setElem!17128) e!1374915))))

(declare-fun setRest!17128 () (InoxSet Context!2846))

(assert (=> setNonEmpty!17128 (= (_1!14524 (_1!14525 (h!30040 mapValue!13628))) ((_ map or) (store ((as const (Array Context!2846 Bool)) false) setElem!17128 true) setRest!17128))))

(declare-fun b!2150176 () Bool)

(declare-fun e!1374914 () Bool)

(declare-fun tp!667903 () Bool)

(assert (=> b!2150176 (= e!1374914 (and setRes!17128 tp!667903))))

(declare-fun condSetEmpty!17128 () Bool)

(assert (=> b!2150176 (= condSetEmpty!17128 (= (_1!14524 (_1!14525 (h!30040 mapValue!13628))) ((as const (Array Context!2846 Bool)) false)))))

(assert (=> mapNonEmpty!13628 (= tp!667842 e!1374914)))

(declare-fun setIsEmpty!17128 () Bool)

(assert (=> setIsEmpty!17128 setRes!17128))

(declare-fun b!2150177 () Bool)

(declare-fun tp!667902 () Bool)

(assert (=> b!2150177 (= e!1374915 tp!667902)))

(assert (= (and b!2150176 condSetEmpty!17128) setIsEmpty!17128))

(assert (= (and b!2150176 (not condSetEmpty!17128)) setNonEmpty!17128))

(assert (= setNonEmpty!17128 b!2150177))

(assert (= (and mapNonEmpty!13628 ((_ is Cons!24639) mapValue!13628)) b!2150176))

(declare-fun m!2592996 () Bool)

(assert (=> setNonEmpty!17128 m!2592996))

(declare-fun tp!667907 () Bool)

(declare-fun tp!667905 () Bool)

(declare-fun b!2150178 () Bool)

(declare-fun e!1374916 () Bool)

(assert (=> b!2150178 (= e!1374916 (and (inv!32460 (left!18926 (c!341116 localTotalInput!13))) tp!667907 (inv!32460 (right!19256 (c!341116 localTotalInput!13))) tp!667905))))

(declare-fun b!2150180 () Bool)

(declare-fun e!1374917 () Bool)

(declare-fun tp!667906 () Bool)

(assert (=> b!2150180 (= e!1374917 tp!667906)))

(declare-fun b!2150179 () Bool)

(assert (=> b!2150179 (= e!1374916 (and (inv!32464 (xs!10931 (c!341116 localTotalInput!13))) e!1374917))))

(assert (=> b!2150027 (= tp!667843 (and (inv!32460 (c!341116 localTotalInput!13)) e!1374916))))

(assert (= (and b!2150027 ((_ is Node!7989) (c!341116 localTotalInput!13))) b!2150178))

(assert (= b!2150179 b!2150180))

(assert (= (and b!2150027 ((_ is Leaf!11683) (c!341116 localTotalInput!13))) b!2150179))

(declare-fun m!2592998 () Bool)

(assert (=> b!2150178 m!2592998))

(declare-fun m!2593000 () Bool)

(assert (=> b!2150178 m!2593000))

(declare-fun m!2593002 () Bool)

(assert (=> b!2150179 m!2593002))

(assert (=> b!2150027 m!2592809))

(declare-fun b_lambda!70811 () Bool)

(assert (= b_lambda!70807 (or (and b!2150015 b_free!63503) b_lambda!70811)))

(declare-fun b_lambda!70813 () Bool)

(assert (= b_lambda!70809 (or b!2150026 b_lambda!70813)))

(declare-fun bs!445576 () Bool)

(declare-fun d!645616 () Bool)

(assert (= bs!445576 (and d!645616 b!2150026)))

(assert (=> bs!445576 (= (dynLambda!11393 lambda!80825 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502))) (validCacheMapFurthestNullableBody!26 (tuple2!24471 lt!800502 (apply!6020 (cache!3173 thiss!29110) lt!800502)) localTotalInput!13))))

(assert (=> bs!445576 m!2592795))

(assert (=> d!645588 d!645616))

(declare-fun b_lambda!70815 () Bool)

(assert (= b_lambda!70805 (or (and b!2150015 b_free!63503) b_lambda!70815)))

(check-sat (not bm!128978) (not b!2150047) (not b!2150159) (not b_lambda!70811) (not b!2150161) (not b!2150071) (not b!2150103) (not b!2150180) (not b!2150116) (not bm!128979) (not b!2150122) (not b_next!64205) (not b!2150172) (not b_next!64207) (not b!2150020) (not setNonEmpty!17126) (not b!2150146) (not setNonEmpty!17128) (not b!2150133) (not d!645608) (not b!2150150) (not b!2150101) (not d!645598) (not d!645588) (not b!2150176) (not d!645594) (not b!2150178) (not b!2150045) (not d!645582) (not b!2150177) b_and!173109 (not b!2150148) (not d!645610) (not b!2150127) (not b_lambda!70815) (not b!2150128) (not d!645590) (not b!2150072) (not b!2150147) (not bs!445576) (not b!2150061) (not b!2150099) (not b!2150138) (not setNonEmpty!17127) (not b!2150160) (not b!2150063) b_and!173115 (not b_lambda!70813) (not bm!128974) (not bm!128977) (not b!2150145) (not b!2150179) (not b!2150107) (not b!2150027) (not b!2150048) (not b!2150104) (not setNonEmpty!17121) (not b!2150114) (not bm!128976) (not d!645604) (not bm!128975) (not setNonEmpty!17116) (not b!2150149) (not b!2150174) (not b!2150173) (not mapNonEmpty!13631) (not setNonEmpty!17120) (not b!2150120) (not b!2150119) (not b!2150175) (not b!2150097) (not b!2150106) (not setNonEmpty!17119) (not d!645592) (not d!645586) (not d!645596) (not b!2150064))
(check-sat b_and!173115 b_and!173109 (not b_next!64205) (not b_next!64207))
