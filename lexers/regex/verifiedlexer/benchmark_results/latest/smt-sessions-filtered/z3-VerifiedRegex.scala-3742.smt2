; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209472 () Bool)

(assert start!209472)

(declare-fun b!2158964 () Bool)

(declare-fun b_free!63797 () Bool)

(declare-fun b_next!64501 () Bool)

(assert (=> b!2158964 (= b_free!63797 (not b_next!64501))))

(declare-fun tp!673041 () Bool)

(declare-fun b_and!173413 () Bool)

(assert (=> b!2158964 (= tp!673041 b_and!173413)))

(declare-fun b!2158966 () Bool)

(declare-fun b_free!63799 () Bool)

(declare-fun b_next!64503 () Bool)

(assert (=> b!2158966 (= b_free!63799 (not b_next!64503))))

(declare-fun tp!673039 () Bool)

(declare-fun b_and!173415 () Bool)

(assert (=> b!2158966 (= tp!673039 b_and!173415)))

(declare-fun b!2158971 () Bool)

(assert (=> b!2158971 true))

(declare-fun mapIsEmpty!13934 () Bool)

(declare-fun mapRes!13934 () Bool)

(assert (=> mapIsEmpty!13934 mapRes!13934))

(declare-fun b!2158961 () Bool)

(declare-fun res!930333 () Bool)

(declare-fun e!1381310 () Bool)

(assert (=> b!2158961 (=> (not res!930333) (not e!1381310))))

(declare-fun from!970 () Int)

(declare-fun res!14508 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12048 0))(
  ( (C!12049 (val!7010 Int)) )
))
(declare-datatypes ((Regex!5951 0))(
  ( (ElementMatch!5951 (c!341778 C!12048)) (Concat!10253 (regOne!12414 Regex!5951) (regTwo!12414 Regex!5951)) (EmptyExpr!5951) (Star!5951 (reg!6280 Regex!5951)) (EmptyLang!5951) (Union!5951 (regOne!12415 Regex!5951) (regTwo!12415 Regex!5951)) )
))
(declare-datatypes ((List!25063 0))(
  ( (Nil!24979) (Cons!24979 (h!30380 Regex!5951) (t!197611 List!25063)) )
))
(declare-datatypes ((Context!3042 0))(
  ( (Context!3043 (exprs!2021 List!25063)) )
))
(declare-fun z!540 () (InoxSet Context!3042))

(declare-fun lastNullablePos!109 () Int)

(declare-datatypes ((List!25064 0))(
  ( (Nil!24980) (Cons!24980 (h!30381 C!12048) (t!197612 List!25064)) )
))
(declare-datatypes ((tuple3!3786 0))(
  ( (tuple3!3787 (_1!14704 (InoxSet Context!3042)) (_2!14704 Int) (_3!2363 Int)) )
))
(declare-datatypes ((array!10095 0))(
  ( (array!10096 (arr!4500 (Array (_ BitVec 32) (_ BitVec 64))) (size!19530 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!24682 0))(
  ( (tuple2!24683 (_1!14705 tuple3!3786) (_2!14705 Int)) )
))
(declare-datatypes ((List!25065 0))(
  ( (Nil!24981) (Cons!24981 (h!30382 tuple2!24682) (t!197613 List!25065)) )
))
(declare-datatypes ((array!10097 0))(
  ( (array!10098 (arr!4501 (Array (_ BitVec 32) List!25065)) (size!19531 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5904 0))(
  ( (LongMapFixedSize!5905 (defaultEntry!3317 Int) (mask!7243 (_ BitVec 32)) (extraKeys!3200 (_ BitVec 32)) (zeroValue!3210 List!25065) (minValue!3210 List!25065) (_size!5955 (_ BitVec 32)) (_keys!3249 array!10095) (_values!3232 array!10097) (_vacant!3013 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11633 0))(
  ( (Cell!11634 (v!29373 LongMapFixedSize!5904)) )
))
(declare-datatypes ((MutLongMap!2952 0))(
  ( (LongMap!2952 (underlying!6099 Cell!11633)) (MutLongMapExt!2951 (__x!17032 Int)) )
))
(declare-datatypes ((Cell!11635 0))(
  ( (Cell!11636 (v!29374 MutLongMap!2952)) )
))
(declare-datatypes ((Hashable!2866 0))(
  ( (HashableExt!2865 (__x!17033 Int)) )
))
(declare-datatypes ((MutableMap!2866 0))(
  ( (MutableMapExt!2865 (__x!17034 Int)) (HashMap!2866 (underlying!6100 Cell!11635) (hashF!4789 Hashable!2866) (_size!5956 (_ BitVec 32)) (defaultValue!3028 Int)) )
))
(declare-datatypes ((IArray!16179 0))(
  ( (IArray!16180 (innerList!8147 List!25064)) )
))
(declare-datatypes ((Conc!8087 0))(
  ( (Node!8087 (left!19233 Conc!8087) (right!19563 Conc!8087) (csize!16404 Int) (cheight!8298 Int)) (Leaf!11830 (xs!11029 IArray!16179) (csize!16405 Int)) (Empty!8087) )
))
(declare-datatypes ((BalanceConc!15936 0))(
  ( (BalanceConc!15937 (c!341779 Conc!8087)) )
))
(declare-datatypes ((CacheFurthestNullable!1090 0))(
  ( (CacheFurthestNullable!1091 (cache!3247 MutableMap!2866) (totalInput!3407 BalanceConc!15936)) )
))
(declare-fun thiss!29220 () CacheFurthestNullable!1090)

(declare-fun lt!802444 () Int)

(declare-fun furthestNullablePosition!149 ((InoxSet Context!3042) Int BalanceConc!15936 Int Int) Int)

(assert (=> b!2158961 (= res!930333 (= res!14508 (furthestNullablePosition!149 z!540 from!970 (totalInput!3407 thiss!29220) lt!802444 lastNullablePos!109)))))

(declare-fun b!2158962 () Bool)

(declare-fun e!1381302 () Bool)

(declare-fun e!1381299 () Bool)

(assert (=> b!2158962 (= e!1381302 e!1381299)))

(declare-fun mapNonEmpty!13934 () Bool)

(declare-fun tp!673035 () Bool)

(declare-fun tp!673042 () Bool)

(assert (=> mapNonEmpty!13934 (= mapRes!13934 (and tp!673035 tp!673042))))

(declare-fun mapValue!13934 () List!25065)

(declare-fun mapRest!13934 () (Array (_ BitVec 32) List!25065))

(declare-fun mapKey!13934 () (_ BitVec 32))

(assert (=> mapNonEmpty!13934 (= (arr!4501 (_values!3232 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))))) (store mapRest!13934 mapKey!13934 mapValue!13934))))

(declare-fun b!2158963 () Bool)

(declare-fun res!930335 () Bool)

(declare-fun e!1381300 () Bool)

(assert (=> b!2158963 (=> (not res!930335) (not e!1381300))))

(declare-fun validCacheMapFurthestNullable!189 (MutableMap!2866 BalanceConc!15936) Bool)

(assert (=> b!2158963 (= res!930335 (validCacheMapFurthestNullable!189 (cache!3247 thiss!29220) (totalInput!3407 thiss!29220)))))

(declare-fun e!1381305 () Bool)

(declare-fun e!1381306 () Bool)

(declare-fun tp!673036 () Bool)

(declare-fun tp!673038 () Bool)

(declare-fun array_inv!3228 (array!10095) Bool)

(declare-fun array_inv!3229 (array!10097) Bool)

(assert (=> b!2158964 (= e!1381305 (and tp!673041 tp!673038 tp!673036 (array_inv!3228 (_keys!3249 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))))) (array_inv!3229 (_values!3232 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))))) e!1381306))))

(declare-fun e!1381303 () Bool)

(declare-fun e!1381301 () Bool)

(assert (=> b!2158966 (= e!1381303 (and e!1381301 tp!673039))))

(declare-fun b!2158967 () Bool)

(declare-fun e!1381309 () Bool)

(assert (=> b!2158967 (= e!1381309 (= lastNullablePos!109 (- from!970 1)))))

(declare-fun b!2158968 () Bool)

(declare-fun e!1381298 () Bool)

(declare-fun localTotalInput!17 () BalanceConc!15936)

(declare-fun tp!673040 () Bool)

(declare-fun inv!33066 (Conc!8087) Bool)

(assert (=> b!2158968 (= e!1381298 (and (inv!33066 (c!341779 localTotalInput!17)) tp!673040))))

(declare-fun setRes!17911 () Bool)

(declare-fun e!1381308 () Bool)

(declare-fun setElem!17911 () Context!3042)

(declare-fun setNonEmpty!17911 () Bool)

(declare-fun tp!673037 () Bool)

(declare-fun inv!33067 (Context!3042) Bool)

(assert (=> setNonEmpty!17911 (= setRes!17911 (and tp!673037 (inv!33067 setElem!17911) e!1381308))))

(declare-fun setRest!17911 () (InoxSet Context!3042))

(assert (=> setNonEmpty!17911 (= z!540 ((_ map or) (store ((as const (Array Context!3042 Bool)) false) setElem!17911 true) setRest!17911))))

(declare-fun b!2158969 () Bool)

(declare-fun res!930336 () Bool)

(assert (=> b!2158969 (=> (not res!930336) (not e!1381310))))

(get-info :version)

(assert (=> b!2158969 (= res!930336 ((_ is HashMap!2866) (cache!3247 thiss!29220)))))

(declare-fun setIsEmpty!17911 () Bool)

(assert (=> setIsEmpty!17911 setRes!17911))

(declare-fun b!2158970 () Bool)

(declare-fun lt!802445 () MutLongMap!2952)

(assert (=> b!2158970 (= e!1381301 (and e!1381302 ((_ is LongMap!2952) lt!802445)))))

(assert (=> b!2158970 (= lt!802445 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))))

(declare-fun lambda!81533 () Int)

(declare-fun forall!5141 (List!25065 Int) Bool)

(declare-datatypes ((ListMap!733 0))(
  ( (ListMap!734 (toList!1134 List!25065)) )
))
(declare-fun map!5036 (MutableMap!2866) ListMap!733)

(assert (=> b!2158971 (= e!1381310 (not (forall!5141 (toList!1134 (map!5036 (cache!3247 thiss!29220))) lambda!81533)))))

(declare-fun b!2158972 () Bool)

(declare-fun res!930330 () Bool)

(assert (=> b!2158972 (=> (not res!930330) (not e!1381310))))

(declare-fun valid!2277 (MutableMap!2866) Bool)

(assert (=> b!2158972 (= res!930330 (valid!2277 (cache!3247 thiss!29220)))))

(declare-fun b!2158965 () Bool)

(declare-fun tp!673034 () Bool)

(assert (=> b!2158965 (= e!1381308 tp!673034)))

(declare-fun res!930331 () Bool)

(assert (=> start!209472 (=> (not res!930331) (not e!1381300))))

(assert (=> start!209472 (= res!930331 (= localTotalInput!17 (totalInput!3407 thiss!29220)))))

(assert (=> start!209472 e!1381300))

(declare-fun inv!33068 (BalanceConc!15936) Bool)

(assert (=> start!209472 (and (inv!33068 localTotalInput!17) e!1381298)))

(assert (=> start!209472 true))

(declare-fun condSetEmpty!17911 () Bool)

(assert (=> start!209472 (= condSetEmpty!17911 (= z!540 ((as const (Array Context!3042 Bool)) false)))))

(assert (=> start!209472 setRes!17911))

(declare-fun e!1381304 () Bool)

(declare-fun inv!33069 (CacheFurthestNullable!1090) Bool)

(assert (=> start!209472 (and (inv!33069 thiss!29220) e!1381304)))

(declare-fun b!2158973 () Bool)

(declare-fun tp!673043 () Bool)

(assert (=> b!2158973 (= e!1381306 (and tp!673043 mapRes!13934))))

(declare-fun condMapEmpty!13934 () Bool)

(declare-fun mapDefault!13934 () List!25065)

(assert (=> b!2158973 (= condMapEmpty!13934 (= (arr!4501 (_values!3232 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))))) ((as const (Array (_ BitVec 32) List!25065)) mapDefault!13934)))))

(declare-fun b!2158974 () Bool)

(assert (=> b!2158974 (= e!1381300 e!1381310)))

(declare-fun res!930338 () Bool)

(assert (=> b!2158974 (=> (not res!930338) (not e!1381310))))

(assert (=> b!2158974 (= res!930338 (and (<= from!970 lt!802444) (>= lastNullablePos!109 (- 1)) (< lastNullablePos!109 from!970)))))

(declare-fun size!19532 (BalanceConc!15936) Int)

(assert (=> b!2158974 (= lt!802444 (size!19532 (totalInput!3407 thiss!29220)))))

(declare-fun b!2158975 () Bool)

(assert (=> b!2158975 (= e!1381299 e!1381305)))

(declare-fun e!1381297 () Bool)

(declare-fun b!2158976 () Bool)

(assert (=> b!2158976 (= e!1381304 (and e!1381303 (inv!33068 (totalInput!3407 thiss!29220)) e!1381297))))

(declare-fun b!2158977 () Bool)

(declare-fun res!930332 () Bool)

(assert (=> b!2158977 (=> (not res!930332) (not e!1381300))))

(assert (=> b!2158977 (= res!930332 (>= from!970 0))))

(declare-fun b!2158978 () Bool)

(declare-fun tp!673033 () Bool)

(assert (=> b!2158978 (= e!1381297 (and (inv!33066 (c!341779 (totalInput!3407 thiss!29220))) tp!673033))))

(declare-fun b!2158979 () Bool)

(declare-fun res!930334 () Bool)

(assert (=> b!2158979 (=> (not res!930334) (not e!1381310))))

(assert (=> b!2158979 (= res!930334 e!1381309)))

(declare-fun res!930337 () Bool)

(assert (=> b!2158979 (=> res!930337 e!1381309)))

(declare-fun nullableZipper!240 ((InoxSet Context!3042)) Bool)

(assert (=> b!2158979 (= res!930337 (not (nullableZipper!240 z!540)))))

(assert (= (and start!209472 res!930331) b!2158963))

(assert (= (and b!2158963 res!930335) b!2158977))

(assert (= (and b!2158977 res!930332) b!2158974))

(assert (= (and b!2158974 res!930338) b!2158979))

(assert (= (and b!2158979 (not res!930337)) b!2158967))

(assert (= (and b!2158979 res!930334) b!2158961))

(assert (= (and b!2158961 res!930333) b!2158969))

(assert (= (and b!2158969 res!930336) b!2158972))

(assert (= (and b!2158972 res!930330) b!2158971))

(assert (= start!209472 b!2158968))

(assert (= (and start!209472 condSetEmpty!17911) setIsEmpty!17911))

(assert (= (and start!209472 (not condSetEmpty!17911)) setNonEmpty!17911))

(assert (= setNonEmpty!17911 b!2158965))

(assert (= (and b!2158973 condMapEmpty!13934) mapIsEmpty!13934))

(assert (= (and b!2158973 (not condMapEmpty!13934)) mapNonEmpty!13934))

(assert (= b!2158964 b!2158973))

(assert (= b!2158975 b!2158964))

(assert (= b!2158962 b!2158975))

(assert (= (and b!2158970 ((_ is LongMap!2952) (v!29374 (underlying!6100 (cache!3247 thiss!29220))))) b!2158962))

(assert (= b!2158966 b!2158970))

(assert (= (and b!2158976 ((_ is HashMap!2866) (cache!3247 thiss!29220))) b!2158966))

(assert (= b!2158976 b!2158978))

(assert (= start!209472 b!2158976))

(declare-fun m!2598866 () Bool)

(assert (=> b!2158964 m!2598866))

(declare-fun m!2598868 () Bool)

(assert (=> b!2158964 m!2598868))

(declare-fun m!2598870 () Bool)

(assert (=> b!2158976 m!2598870))

(declare-fun m!2598872 () Bool)

(assert (=> setNonEmpty!17911 m!2598872))

(declare-fun m!2598874 () Bool)

(assert (=> b!2158979 m!2598874))

(declare-fun m!2598876 () Bool)

(assert (=> b!2158963 m!2598876))

(declare-fun m!2598878 () Bool)

(assert (=> b!2158978 m!2598878))

(declare-fun m!2598880 () Bool)

(assert (=> b!2158961 m!2598880))

(declare-fun m!2598882 () Bool)

(assert (=> mapNonEmpty!13934 m!2598882))

(declare-fun m!2598884 () Bool)

(assert (=> b!2158968 m!2598884))

(declare-fun m!2598886 () Bool)

(assert (=> b!2158972 m!2598886))

(declare-fun m!2598888 () Bool)

(assert (=> b!2158974 m!2598888))

(declare-fun m!2598890 () Bool)

(assert (=> b!2158971 m!2598890))

(declare-fun m!2598892 () Bool)

(assert (=> b!2158971 m!2598892))

(declare-fun m!2598894 () Bool)

(assert (=> start!209472 m!2598894))

(declare-fun m!2598896 () Bool)

(assert (=> start!209472 m!2598896))

(check-sat b_and!173413 (not b!2158973) (not b_next!64503) (not b!2158979) b_and!173415 (not b!2158974) (not b_next!64501) (not b!2158965) (not b!2158963) (not b!2158971) (not b!2158968) (not setNonEmpty!17911) (not mapNonEmpty!13934) (not b!2158961) (not b!2158972) (not b!2158964) (not b!2158978) (not start!209472) (not b!2158976))
(check-sat b_and!173413 b_and!173415 (not b_next!64501) (not b_next!64503))
(get-model)

(declare-fun d!646739 () Bool)

(declare-fun isBalanced!2512 (Conc!8087) Bool)

(assert (=> d!646739 (= (inv!33068 (totalInput!3407 thiss!29220)) (isBalanced!2512 (c!341779 (totalInput!3407 thiss!29220))))))

(declare-fun bs!445982 () Bool)

(assert (= bs!445982 d!646739))

(declare-fun m!2598898 () Bool)

(assert (=> bs!445982 m!2598898))

(assert (=> b!2158976 d!646739))

(declare-fun d!646741 () Bool)

(assert (=> d!646741 (= (inv!33068 localTotalInput!17) (isBalanced!2512 (c!341779 localTotalInput!17)))))

(declare-fun bs!445983 () Bool)

(assert (= bs!445983 d!646741))

(declare-fun m!2598900 () Bool)

(assert (=> bs!445983 m!2598900))

(assert (=> start!209472 d!646741))

(declare-fun d!646743 () Bool)

(declare-fun res!930341 () Bool)

(declare-fun e!1381313 () Bool)

(assert (=> d!646743 (=> (not res!930341) (not e!1381313))))

(assert (=> d!646743 (= res!930341 ((_ is HashMap!2866) (cache!3247 thiss!29220)))))

(assert (=> d!646743 (= (inv!33069 thiss!29220) e!1381313)))

(declare-fun b!2158984 () Bool)

(assert (=> b!2158984 (= e!1381313 (validCacheMapFurthestNullable!189 (cache!3247 thiss!29220) (totalInput!3407 thiss!29220)))))

(assert (= (and d!646743 res!930341) b!2158984))

(assert (=> b!2158984 m!2598876))

(assert (=> start!209472 d!646743))

(declare-fun d!646745 () Bool)

(declare-fun c!341782 () Bool)

(assert (=> d!646745 (= c!341782 ((_ is Node!8087) (c!341779 localTotalInput!17)))))

(declare-fun e!1381318 () Bool)

(assert (=> d!646745 (= (inv!33066 (c!341779 localTotalInput!17)) e!1381318)))

(declare-fun b!2158991 () Bool)

(declare-fun inv!33070 (Conc!8087) Bool)

(assert (=> b!2158991 (= e!1381318 (inv!33070 (c!341779 localTotalInput!17)))))

(declare-fun b!2158992 () Bool)

(declare-fun e!1381319 () Bool)

(assert (=> b!2158992 (= e!1381318 e!1381319)))

(declare-fun res!930344 () Bool)

(assert (=> b!2158992 (= res!930344 (not ((_ is Leaf!11830) (c!341779 localTotalInput!17))))))

(assert (=> b!2158992 (=> res!930344 e!1381319)))

(declare-fun b!2158993 () Bool)

(declare-fun inv!33071 (Conc!8087) Bool)

(assert (=> b!2158993 (= e!1381319 (inv!33071 (c!341779 localTotalInput!17)))))

(assert (= (and d!646745 c!341782) b!2158991))

(assert (= (and d!646745 (not c!341782)) b!2158992))

(assert (= (and b!2158992 (not res!930344)) b!2158993))

(declare-fun m!2598902 () Bool)

(assert (=> b!2158991 m!2598902))

(declare-fun m!2598904 () Bool)

(assert (=> b!2158993 m!2598904))

(assert (=> b!2158968 d!646745))

(declare-fun d!646747 () Bool)

(declare-fun lt!802448 () Int)

(declare-fun size!19533 (List!25064) Int)

(declare-fun list!9574 (BalanceConc!15936) List!25064)

(assert (=> d!646747 (= lt!802448 (size!19533 (list!9574 (totalInput!3407 thiss!29220))))))

(declare-fun size!19534 (Conc!8087) Int)

(assert (=> d!646747 (= lt!802448 (size!19534 (c!341779 (totalInput!3407 thiss!29220))))))

(assert (=> d!646747 (= (size!19532 (totalInput!3407 thiss!29220)) lt!802448)))

(declare-fun bs!445984 () Bool)

(assert (= bs!445984 d!646747))

(declare-fun m!2598906 () Bool)

(assert (=> bs!445984 m!2598906))

(assert (=> bs!445984 m!2598906))

(declare-fun m!2598908 () Bool)

(assert (=> bs!445984 m!2598908))

(declare-fun m!2598910 () Bool)

(assert (=> bs!445984 m!2598910))

(assert (=> b!2158974 d!646747))

(declare-fun bs!445985 () Bool)

(declare-fun b!2158999 () Bool)

(assert (= bs!445985 (and b!2158999 b!2158971)))

(declare-fun lambda!81536 () Int)

(assert (=> bs!445985 (= (= (totalInput!3407 thiss!29220) localTotalInput!17) (= lambda!81536 lambda!81533))))

(assert (=> b!2158999 true))

(declare-fun d!646749 () Bool)

(declare-fun res!930349 () Bool)

(declare-fun e!1381322 () Bool)

(assert (=> d!646749 (=> (not res!930349) (not e!1381322))))

(assert (=> d!646749 (= res!930349 (valid!2277 (cache!3247 thiss!29220)))))

(assert (=> d!646749 (= (validCacheMapFurthestNullable!189 (cache!3247 thiss!29220) (totalInput!3407 thiss!29220)) e!1381322)))

(declare-fun b!2158998 () Bool)

(declare-fun res!930350 () Bool)

(assert (=> b!2158998 (=> (not res!930350) (not e!1381322))))

(declare-fun invariantList!336 (List!25065) Bool)

(assert (=> b!2158998 (= res!930350 (invariantList!336 (toList!1134 (map!5036 (cache!3247 thiss!29220)))))))

(assert (=> b!2158999 (= e!1381322 (forall!5141 (toList!1134 (map!5036 (cache!3247 thiss!29220))) lambda!81536))))

(assert (= (and d!646749 res!930349) b!2158998))

(assert (= (and b!2158998 res!930350) b!2158999))

(assert (=> d!646749 m!2598886))

(assert (=> b!2158998 m!2598890))

(declare-fun m!2598913 () Bool)

(assert (=> b!2158998 m!2598913))

(assert (=> b!2158999 m!2598890))

(declare-fun m!2598915 () Bool)

(assert (=> b!2158999 m!2598915))

(assert (=> b!2158963 d!646749))

(declare-fun d!646751 () Bool)

(declare-fun res!930355 () Bool)

(declare-fun e!1381325 () Bool)

(assert (=> d!646751 (=> (not res!930355) (not e!1381325))))

(declare-fun valid!2278 (MutLongMap!2952) Bool)

(assert (=> d!646751 (= res!930355 (valid!2278 (v!29374 (underlying!6100 (cache!3247 thiss!29220)))))))

(assert (=> d!646751 (= (valid!2277 (cache!3247 thiss!29220)) e!1381325)))

(declare-fun b!2159004 () Bool)

(declare-fun res!930356 () Bool)

(assert (=> b!2159004 (=> (not res!930356) (not e!1381325))))

(declare-fun lambda!81539 () Int)

(declare-datatypes ((tuple2!24684 0))(
  ( (tuple2!24685 (_1!14706 (_ BitVec 64)) (_2!14706 List!25065)) )
))
(declare-datatypes ((List!25066 0))(
  ( (Nil!24982) (Cons!24982 (h!30383 tuple2!24684) (t!197614 List!25066)) )
))
(declare-fun forall!5142 (List!25066 Int) Bool)

(declare-datatypes ((ListLongMap!273 0))(
  ( (ListLongMap!274 (toList!1135 List!25066)) )
))
(declare-fun map!5037 (MutLongMap!2952) ListLongMap!273)

(assert (=> b!2159004 (= res!930356 (forall!5142 (toList!1135 (map!5037 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))) lambda!81539))))

(declare-fun b!2159005 () Bool)

(declare-fun allKeysSameHashInMap!91 (ListLongMap!273 Hashable!2866) Bool)

(assert (=> b!2159005 (= e!1381325 (allKeysSameHashInMap!91 (map!5037 (v!29374 (underlying!6100 (cache!3247 thiss!29220)))) (hashF!4789 (cache!3247 thiss!29220))))))

(assert (= (and d!646751 res!930355) b!2159004))

(assert (= (and b!2159004 res!930356) b!2159005))

(declare-fun m!2598917 () Bool)

(assert (=> d!646751 m!2598917))

(declare-fun m!2598919 () Bool)

(assert (=> b!2159004 m!2598919))

(declare-fun m!2598921 () Bool)

(assert (=> b!2159004 m!2598921))

(assert (=> b!2159005 m!2598919))

(assert (=> b!2159005 m!2598919))

(declare-fun m!2598923 () Bool)

(assert (=> b!2159005 m!2598923))

(assert (=> b!2158972 d!646751))

(declare-fun d!646753 () Bool)

(assert (=> d!646753 (= (array_inv!3228 (_keys!3249 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))))) (bvsge (size!19530 (_keys!3249 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2158964 d!646753))

(declare-fun d!646755 () Bool)

(assert (=> d!646755 (= (array_inv!3229 (_values!3232 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))))) (bvsge (size!19531 (_values!3232 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2158964 d!646755))

(declare-fun d!646757 () Bool)

(declare-fun res!930361 () Bool)

(declare-fun e!1381330 () Bool)

(assert (=> d!646757 (=> res!930361 e!1381330)))

(assert (=> d!646757 (= res!930361 ((_ is Nil!24981) (toList!1134 (map!5036 (cache!3247 thiss!29220)))))))

(assert (=> d!646757 (= (forall!5141 (toList!1134 (map!5036 (cache!3247 thiss!29220))) lambda!81533) e!1381330)))

(declare-fun b!2159010 () Bool)

(declare-fun e!1381331 () Bool)

(assert (=> b!2159010 (= e!1381330 e!1381331)))

(declare-fun res!930362 () Bool)

(assert (=> b!2159010 (=> (not res!930362) (not e!1381331))))

(declare-fun dynLambda!11423 (Int tuple2!24682) Bool)

(assert (=> b!2159010 (= res!930362 (dynLambda!11423 lambda!81533 (h!30382 (toList!1134 (map!5036 (cache!3247 thiss!29220))))))))

(declare-fun b!2159011 () Bool)

(assert (=> b!2159011 (= e!1381331 (forall!5141 (t!197613 (toList!1134 (map!5036 (cache!3247 thiss!29220)))) lambda!81533))))

(assert (= (and d!646757 (not res!930361)) b!2159010))

(assert (= (and b!2159010 res!930362) b!2159011))

(declare-fun b_lambda!71033 () Bool)

(assert (=> (not b_lambda!71033) (not b!2159010)))

(declare-fun m!2598925 () Bool)

(assert (=> b!2159010 m!2598925))

(declare-fun m!2598927 () Bool)

(assert (=> b!2159011 m!2598927))

(assert (=> b!2158971 d!646757))

(declare-fun d!646759 () Bool)

(declare-fun lt!802451 () ListMap!733)

(assert (=> d!646759 (invariantList!336 (toList!1134 lt!802451))))

(declare-fun extractMap!86 (List!25066) ListMap!733)

(assert (=> d!646759 (= lt!802451 (extractMap!86 (toList!1135 (map!5037 (v!29374 (underlying!6100 (cache!3247 thiss!29220)))))))))

(assert (=> d!646759 (valid!2277 (cache!3247 thiss!29220))))

(assert (=> d!646759 (= (map!5036 (cache!3247 thiss!29220)) lt!802451)))

(declare-fun bs!445986 () Bool)

(assert (= bs!445986 d!646759))

(declare-fun m!2598929 () Bool)

(assert (=> bs!445986 m!2598929))

(assert (=> bs!445986 m!2598919))

(declare-fun m!2598931 () Bool)

(assert (=> bs!445986 m!2598931))

(assert (=> bs!445986 m!2598886))

(assert (=> b!2158971 d!646759))

(declare-fun d!646761 () Bool)

(declare-fun lambda!81542 () Int)

(declare-fun exists!744 ((InoxSet Context!3042) Int) Bool)

(assert (=> d!646761 (= (nullableZipper!240 z!540) (exists!744 z!540 lambda!81542))))

(declare-fun bs!445987 () Bool)

(assert (= bs!445987 d!646761))

(declare-fun m!2598933 () Bool)

(assert (=> bs!445987 m!2598933))

(assert (=> b!2158979 d!646761))

(declare-fun b!2159022 () Bool)

(declare-fun e!1381338 () Int)

(assert (=> b!2159022 (= e!1381338 lastNullablePos!109)))

(declare-fun b!2159023 () Bool)

(declare-fun e!1381339 () Int)

(declare-fun lt!802457 () (InoxSet Context!3042))

(assert (=> b!2159023 (= e!1381338 (furthestNullablePosition!149 lt!802457 (+ from!970 1) (totalInput!3407 thiss!29220) lt!802444 e!1381339))))

(declare-fun derivationStepZipper!114 ((InoxSet Context!3042) C!12048) (InoxSet Context!3042))

(declare-fun apply!6049 (BalanceConc!15936 Int) C!12048)

(assert (=> b!2159023 (= lt!802457 (derivationStepZipper!114 z!540 (apply!6049 (totalInput!3407 thiss!29220) from!970)))))

(declare-fun c!341789 () Bool)

(assert (=> b!2159023 (= c!341789 (nullableZipper!240 lt!802457))))

(declare-fun b!2159024 () Bool)

(assert (=> b!2159024 (= e!1381339 from!970)))

(declare-fun b!2159025 () Bool)

(assert (=> b!2159025 (= e!1381339 lastNullablePos!109)))

(declare-fun b!2159026 () Bool)

(declare-fun e!1381340 () Bool)

(declare-fun lostCauseZipper!147 ((InoxSet Context!3042)) Bool)

(assert (=> b!2159026 (= e!1381340 (lostCauseZipper!147 z!540))))

(declare-fun lt!802456 () Int)

(declare-fun d!646763 () Bool)

(assert (=> d!646763 (and (>= lt!802456 (- 1)) (< lt!802456 lt!802444) (>= lt!802456 lastNullablePos!109) (or (= lt!802456 lastNullablePos!109) (>= lt!802456 from!970)))))

(assert (=> d!646763 (= lt!802456 e!1381338)))

(declare-fun c!341790 () Bool)

(assert (=> d!646763 (= c!341790 e!1381340)))

(declare-fun res!930365 () Bool)

(assert (=> d!646763 (=> res!930365 e!1381340)))

(assert (=> d!646763 (= res!930365 (= from!970 lt!802444))))

(assert (=> d!646763 (and (>= from!970 0) (<= from!970 lt!802444))))

(assert (=> d!646763 (= (furthestNullablePosition!149 z!540 from!970 (totalInput!3407 thiss!29220) lt!802444 lastNullablePos!109) lt!802456)))

(assert (= (and d!646763 (not res!930365)) b!2159026))

(assert (= (and d!646763 c!341790) b!2159022))

(assert (= (and d!646763 (not c!341790)) b!2159023))

(assert (= (and b!2159023 c!341789) b!2159024))

(assert (= (and b!2159023 (not c!341789)) b!2159025))

(declare-fun m!2598935 () Bool)

(assert (=> b!2159023 m!2598935))

(declare-fun m!2598937 () Bool)

(assert (=> b!2159023 m!2598937))

(assert (=> b!2159023 m!2598937))

(declare-fun m!2598939 () Bool)

(assert (=> b!2159023 m!2598939))

(declare-fun m!2598941 () Bool)

(assert (=> b!2159023 m!2598941))

(declare-fun m!2598943 () Bool)

(assert (=> b!2159026 m!2598943))

(assert (=> b!2158961 d!646763))

(declare-fun d!646765 () Bool)

(declare-fun lambda!81545 () Int)

(declare-fun forall!5143 (List!25063 Int) Bool)

(assert (=> d!646765 (= (inv!33067 setElem!17911) (forall!5143 (exprs!2021 setElem!17911) lambda!81545))))

(declare-fun bs!445988 () Bool)

(assert (= bs!445988 d!646765))

(declare-fun m!2598945 () Bool)

(assert (=> bs!445988 m!2598945))

(assert (=> setNonEmpty!17911 d!646765))

(declare-fun d!646767 () Bool)

(declare-fun c!341791 () Bool)

(assert (=> d!646767 (= c!341791 ((_ is Node!8087) (c!341779 (totalInput!3407 thiss!29220))))))

(declare-fun e!1381341 () Bool)

(assert (=> d!646767 (= (inv!33066 (c!341779 (totalInput!3407 thiss!29220))) e!1381341)))

(declare-fun b!2159027 () Bool)

(assert (=> b!2159027 (= e!1381341 (inv!33070 (c!341779 (totalInput!3407 thiss!29220))))))

(declare-fun b!2159028 () Bool)

(declare-fun e!1381342 () Bool)

(assert (=> b!2159028 (= e!1381341 e!1381342)))

(declare-fun res!930366 () Bool)

(assert (=> b!2159028 (= res!930366 (not ((_ is Leaf!11830) (c!341779 (totalInput!3407 thiss!29220)))))))

(assert (=> b!2159028 (=> res!930366 e!1381342)))

(declare-fun b!2159029 () Bool)

(assert (=> b!2159029 (= e!1381342 (inv!33071 (c!341779 (totalInput!3407 thiss!29220))))))

(assert (= (and d!646767 c!341791) b!2159027))

(assert (= (and d!646767 (not c!341791)) b!2159028))

(assert (= (and b!2159028 (not res!930366)) b!2159029))

(declare-fun m!2598947 () Bool)

(assert (=> b!2159027 m!2598947))

(declare-fun m!2598949 () Bool)

(assert (=> b!2159029 m!2598949))

(assert (=> b!2158978 d!646767))

(declare-fun setRes!17917 () Bool)

(declare-fun tp!673058 () Bool)

(declare-fun setElem!17917 () Context!3042)

(declare-fun e!1381354 () Bool)

(declare-fun setNonEmpty!17916 () Bool)

(assert (=> setNonEmpty!17916 (= setRes!17917 (and tp!673058 (inv!33067 setElem!17917) e!1381354))))

(declare-fun mapValue!13937 () List!25065)

(declare-fun setRest!17917 () (InoxSet Context!3042))

(assert (=> setNonEmpty!17916 (= (_1!14704 (_1!14705 (h!30382 mapValue!13937))) ((_ map or) (store ((as const (Array Context!3042 Bool)) false) setElem!17917 true) setRest!17917))))

(declare-fun setIsEmpty!17916 () Bool)

(declare-fun setRes!17916 () Bool)

(assert (=> setIsEmpty!17916 setRes!17916))

(declare-fun b!2159040 () Bool)

(declare-fun e!1381353 () Bool)

(declare-fun tp!673059 () Bool)

(assert (=> b!2159040 (= e!1381353 (and setRes!17917 tp!673059))))

(declare-fun condSetEmpty!17916 () Bool)

(assert (=> b!2159040 (= condSetEmpty!17916 (= (_1!14704 (_1!14705 (h!30382 mapValue!13937))) ((as const (Array Context!3042 Bool)) false)))))

(declare-fun b!2159041 () Bool)

(declare-fun tp!673062 () Bool)

(assert (=> b!2159041 (= e!1381354 tp!673062)))

(declare-fun setIsEmpty!17917 () Bool)

(assert (=> setIsEmpty!17917 setRes!17917))

(declare-fun b!2159042 () Bool)

(declare-fun e!1381351 () Bool)

(declare-fun tp!673060 () Bool)

(assert (=> b!2159042 (= e!1381351 tp!673060)))

(declare-fun mapIsEmpty!13937 () Bool)

(declare-fun mapRes!13937 () Bool)

(assert (=> mapIsEmpty!13937 mapRes!13937))

(declare-fun mapNonEmpty!13937 () Bool)

(declare-fun tp!673063 () Bool)

(assert (=> mapNonEmpty!13937 (= mapRes!13937 (and tp!673063 e!1381353))))

(declare-fun mapKey!13937 () (_ BitVec 32))

(declare-fun mapRest!13937 () (Array (_ BitVec 32) List!25065))

(assert (=> mapNonEmpty!13937 (= mapRest!13934 (store mapRest!13937 mapKey!13937 mapValue!13937))))

(declare-fun b!2159043 () Bool)

(declare-fun e!1381352 () Bool)

(declare-fun tp!673061 () Bool)

(assert (=> b!2159043 (= e!1381352 (and setRes!17916 tp!673061))))

(declare-fun condSetEmpty!17917 () Bool)

(declare-fun mapDefault!13937 () List!25065)

(assert (=> b!2159043 (= condSetEmpty!17917 (= (_1!14704 (_1!14705 (h!30382 mapDefault!13937))) ((as const (Array Context!3042 Bool)) false)))))

(declare-fun condMapEmpty!13937 () Bool)

(assert (=> mapNonEmpty!13934 (= condMapEmpty!13937 (= mapRest!13934 ((as const (Array (_ BitVec 32) List!25065)) mapDefault!13937)))))

(assert (=> mapNonEmpty!13934 (= tp!673035 (and e!1381352 mapRes!13937))))

(declare-fun tp!673064 () Bool)

(declare-fun setElem!17916 () Context!3042)

(declare-fun setNonEmpty!17917 () Bool)

(assert (=> setNonEmpty!17917 (= setRes!17916 (and tp!673064 (inv!33067 setElem!17916) e!1381351))))

(declare-fun setRest!17916 () (InoxSet Context!3042))

(assert (=> setNonEmpty!17917 (= (_1!14704 (_1!14705 (h!30382 mapDefault!13937))) ((_ map or) (store ((as const (Array Context!3042 Bool)) false) setElem!17916 true) setRest!17916))))

(assert (= (and mapNonEmpty!13934 condMapEmpty!13937) mapIsEmpty!13937))

(assert (= (and mapNonEmpty!13934 (not condMapEmpty!13937)) mapNonEmpty!13937))

(assert (= (and b!2159040 condSetEmpty!17916) setIsEmpty!17917))

(assert (= (and b!2159040 (not condSetEmpty!17916)) setNonEmpty!17916))

(assert (= setNonEmpty!17916 b!2159041))

(assert (= (and mapNonEmpty!13937 ((_ is Cons!24981) mapValue!13937)) b!2159040))

(assert (= (and b!2159043 condSetEmpty!17917) setIsEmpty!17916))

(assert (= (and b!2159043 (not condSetEmpty!17917)) setNonEmpty!17917))

(assert (= setNonEmpty!17917 b!2159042))

(assert (= (and mapNonEmpty!13934 ((_ is Cons!24981) mapDefault!13937)) b!2159043))

(declare-fun m!2598951 () Bool)

(assert (=> setNonEmpty!17916 m!2598951))

(declare-fun m!2598953 () Bool)

(assert (=> mapNonEmpty!13937 m!2598953))

(declare-fun m!2598955 () Bool)

(assert (=> setNonEmpty!17917 m!2598955))

(declare-fun b!2159050 () Bool)

(declare-fun e!1381360 () Bool)

(declare-fun setRes!17920 () Bool)

(declare-fun tp!673071 () Bool)

(assert (=> b!2159050 (= e!1381360 (and setRes!17920 tp!673071))))

(declare-fun condSetEmpty!17920 () Bool)

(assert (=> b!2159050 (= condSetEmpty!17920 (= (_1!14704 (_1!14705 (h!30382 mapValue!13934))) ((as const (Array Context!3042 Bool)) false)))))

(assert (=> mapNonEmpty!13934 (= tp!673042 e!1381360)))

(declare-fun setIsEmpty!17920 () Bool)

(assert (=> setIsEmpty!17920 setRes!17920))

(declare-fun setElem!17920 () Context!3042)

(declare-fun setNonEmpty!17920 () Bool)

(declare-fun tp!673073 () Bool)

(declare-fun e!1381359 () Bool)

(assert (=> setNonEmpty!17920 (= setRes!17920 (and tp!673073 (inv!33067 setElem!17920) e!1381359))))

(declare-fun setRest!17920 () (InoxSet Context!3042))

(assert (=> setNonEmpty!17920 (= (_1!14704 (_1!14705 (h!30382 mapValue!13934))) ((_ map or) (store ((as const (Array Context!3042 Bool)) false) setElem!17920 true) setRest!17920))))

(declare-fun b!2159051 () Bool)

(declare-fun tp!673072 () Bool)

(assert (=> b!2159051 (= e!1381359 tp!673072)))

(assert (= (and b!2159050 condSetEmpty!17920) setIsEmpty!17920))

(assert (= (and b!2159050 (not condSetEmpty!17920)) setNonEmpty!17920))

(assert (= setNonEmpty!17920 b!2159051))

(assert (= (and mapNonEmpty!13934 ((_ is Cons!24981) mapValue!13934)) b!2159050))

(declare-fun m!2598957 () Bool)

(assert (=> setNonEmpty!17920 m!2598957))

(declare-fun tp!673081 () Bool)

(declare-fun b!2159060 () Bool)

(declare-fun e!1381365 () Bool)

(declare-fun tp!673080 () Bool)

(assert (=> b!2159060 (= e!1381365 (and (inv!33066 (left!19233 (c!341779 localTotalInput!17))) tp!673080 (inv!33066 (right!19563 (c!341779 localTotalInput!17))) tp!673081))))

(declare-fun b!2159062 () Bool)

(declare-fun e!1381366 () Bool)

(declare-fun tp!673082 () Bool)

(assert (=> b!2159062 (= e!1381366 tp!673082)))

(declare-fun b!2159061 () Bool)

(declare-fun inv!33072 (IArray!16179) Bool)

(assert (=> b!2159061 (= e!1381365 (and (inv!33072 (xs!11029 (c!341779 localTotalInput!17))) e!1381366))))

(assert (=> b!2158968 (= tp!673040 (and (inv!33066 (c!341779 localTotalInput!17)) e!1381365))))

(assert (= (and b!2158968 ((_ is Node!8087) (c!341779 localTotalInput!17))) b!2159060))

(assert (= b!2159061 b!2159062))

(assert (= (and b!2158968 ((_ is Leaf!11830) (c!341779 localTotalInput!17))) b!2159061))

(declare-fun m!2598959 () Bool)

(assert (=> b!2159060 m!2598959))

(declare-fun m!2598961 () Bool)

(assert (=> b!2159060 m!2598961))

(declare-fun m!2598963 () Bool)

(assert (=> b!2159061 m!2598963))

(assert (=> b!2158968 m!2598884))

(declare-fun b!2159063 () Bool)

(declare-fun e!1381368 () Bool)

(declare-fun setRes!17921 () Bool)

(declare-fun tp!673083 () Bool)

(assert (=> b!2159063 (= e!1381368 (and setRes!17921 tp!673083))))

(declare-fun condSetEmpty!17921 () Bool)

(assert (=> b!2159063 (= condSetEmpty!17921 (= (_1!14704 (_1!14705 (h!30382 mapDefault!13934))) ((as const (Array Context!3042 Bool)) false)))))

(assert (=> b!2158973 (= tp!673043 e!1381368)))

(declare-fun setIsEmpty!17921 () Bool)

(assert (=> setIsEmpty!17921 setRes!17921))

(declare-fun setElem!17921 () Context!3042)

(declare-fun tp!673085 () Bool)

(declare-fun e!1381367 () Bool)

(declare-fun setNonEmpty!17921 () Bool)

(assert (=> setNonEmpty!17921 (= setRes!17921 (and tp!673085 (inv!33067 setElem!17921) e!1381367))))

(declare-fun setRest!17921 () (InoxSet Context!3042))

(assert (=> setNonEmpty!17921 (= (_1!14704 (_1!14705 (h!30382 mapDefault!13934))) ((_ map or) (store ((as const (Array Context!3042 Bool)) false) setElem!17921 true) setRest!17921))))

(declare-fun b!2159064 () Bool)

(declare-fun tp!673084 () Bool)

(assert (=> b!2159064 (= e!1381367 tp!673084)))

(assert (= (and b!2159063 condSetEmpty!17921) setIsEmpty!17921))

(assert (= (and b!2159063 (not condSetEmpty!17921)) setNonEmpty!17921))

(assert (= setNonEmpty!17921 b!2159064))

(assert (= (and b!2158973 ((_ is Cons!24981) mapDefault!13934)) b!2159063))

(declare-fun m!2598965 () Bool)

(assert (=> setNonEmpty!17921 m!2598965))

(declare-fun b!2159069 () Bool)

(declare-fun e!1381371 () Bool)

(declare-fun tp!673090 () Bool)

(declare-fun tp!673091 () Bool)

(assert (=> b!2159069 (= e!1381371 (and tp!673090 tp!673091))))

(assert (=> b!2158965 (= tp!673034 e!1381371)))

(assert (= (and b!2158965 ((_ is Cons!24979) (exprs!2021 setElem!17911))) b!2159069))

(declare-fun condSetEmpty!17924 () Bool)

(assert (=> setNonEmpty!17911 (= condSetEmpty!17924 (= setRest!17911 ((as const (Array Context!3042 Bool)) false)))))

(declare-fun setRes!17924 () Bool)

(assert (=> setNonEmpty!17911 (= tp!673037 setRes!17924)))

(declare-fun setIsEmpty!17924 () Bool)

(assert (=> setIsEmpty!17924 setRes!17924))

(declare-fun setElem!17924 () Context!3042)

(declare-fun setNonEmpty!17924 () Bool)

(declare-fun tp!673096 () Bool)

(declare-fun e!1381374 () Bool)

(assert (=> setNonEmpty!17924 (= setRes!17924 (and tp!673096 (inv!33067 setElem!17924) e!1381374))))

(declare-fun setRest!17924 () (InoxSet Context!3042))

(assert (=> setNonEmpty!17924 (= setRest!17911 ((_ map or) (store ((as const (Array Context!3042 Bool)) false) setElem!17924 true) setRest!17924))))

(declare-fun b!2159074 () Bool)

(declare-fun tp!673097 () Bool)

(assert (=> b!2159074 (= e!1381374 tp!673097)))

(assert (= (and setNonEmpty!17911 condSetEmpty!17924) setIsEmpty!17924))

(assert (= (and setNonEmpty!17911 (not condSetEmpty!17924)) setNonEmpty!17924))

(assert (= setNonEmpty!17924 b!2159074))

(declare-fun m!2598967 () Bool)

(assert (=> setNonEmpty!17924 m!2598967))

(declare-fun e!1381375 () Bool)

(declare-fun tp!673099 () Bool)

(declare-fun tp!673098 () Bool)

(declare-fun b!2159075 () Bool)

(assert (=> b!2159075 (= e!1381375 (and (inv!33066 (left!19233 (c!341779 (totalInput!3407 thiss!29220)))) tp!673098 (inv!33066 (right!19563 (c!341779 (totalInput!3407 thiss!29220)))) tp!673099))))

(declare-fun b!2159077 () Bool)

(declare-fun e!1381376 () Bool)

(declare-fun tp!673100 () Bool)

(assert (=> b!2159077 (= e!1381376 tp!673100)))

(declare-fun b!2159076 () Bool)

(assert (=> b!2159076 (= e!1381375 (and (inv!33072 (xs!11029 (c!341779 (totalInput!3407 thiss!29220)))) e!1381376))))

(assert (=> b!2158978 (= tp!673033 (and (inv!33066 (c!341779 (totalInput!3407 thiss!29220))) e!1381375))))

(assert (= (and b!2158978 ((_ is Node!8087) (c!341779 (totalInput!3407 thiss!29220)))) b!2159075))

(assert (= b!2159076 b!2159077))

(assert (= (and b!2158978 ((_ is Leaf!11830) (c!341779 (totalInput!3407 thiss!29220)))) b!2159076))

(declare-fun m!2598969 () Bool)

(assert (=> b!2159075 m!2598969))

(declare-fun m!2598971 () Bool)

(assert (=> b!2159075 m!2598971))

(declare-fun m!2598973 () Bool)

(assert (=> b!2159076 m!2598973))

(assert (=> b!2158978 m!2598878))

(declare-fun b!2159078 () Bool)

(declare-fun e!1381378 () Bool)

(declare-fun setRes!17925 () Bool)

(declare-fun tp!673101 () Bool)

(assert (=> b!2159078 (= e!1381378 (and setRes!17925 tp!673101))))

(declare-fun condSetEmpty!17925 () Bool)

(assert (=> b!2159078 (= condSetEmpty!17925 (= (_1!14704 (_1!14705 (h!30382 (zeroValue!3210 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))))))) ((as const (Array Context!3042 Bool)) false)))))

(assert (=> b!2158964 (= tp!673038 e!1381378)))

(declare-fun setIsEmpty!17925 () Bool)

(assert (=> setIsEmpty!17925 setRes!17925))

(declare-fun e!1381377 () Bool)

(declare-fun tp!673103 () Bool)

(declare-fun setElem!17925 () Context!3042)

(declare-fun setNonEmpty!17925 () Bool)

(assert (=> setNonEmpty!17925 (= setRes!17925 (and tp!673103 (inv!33067 setElem!17925) e!1381377))))

(declare-fun setRest!17925 () (InoxSet Context!3042))

(assert (=> setNonEmpty!17925 (= (_1!14704 (_1!14705 (h!30382 (zeroValue!3210 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3042 Bool)) false) setElem!17925 true) setRest!17925))))

(declare-fun b!2159079 () Bool)

(declare-fun tp!673102 () Bool)

(assert (=> b!2159079 (= e!1381377 tp!673102)))

(assert (= (and b!2159078 condSetEmpty!17925) setIsEmpty!17925))

(assert (= (and b!2159078 (not condSetEmpty!17925)) setNonEmpty!17925))

(assert (= setNonEmpty!17925 b!2159079))

(assert (= (and b!2158964 ((_ is Cons!24981) (zeroValue!3210 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220)))))))) b!2159078))

(declare-fun m!2598975 () Bool)

(assert (=> setNonEmpty!17925 m!2598975))

(declare-fun b!2159080 () Bool)

(declare-fun e!1381380 () Bool)

(declare-fun setRes!17926 () Bool)

(declare-fun tp!673104 () Bool)

(assert (=> b!2159080 (= e!1381380 (and setRes!17926 tp!673104))))

(declare-fun condSetEmpty!17926 () Bool)

(assert (=> b!2159080 (= condSetEmpty!17926 (= (_1!14704 (_1!14705 (h!30382 (minValue!3210 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))))))) ((as const (Array Context!3042 Bool)) false)))))

(assert (=> b!2158964 (= tp!673036 e!1381380)))

(declare-fun setIsEmpty!17926 () Bool)

(assert (=> setIsEmpty!17926 setRes!17926))

(declare-fun e!1381379 () Bool)

(declare-fun tp!673106 () Bool)

(declare-fun setNonEmpty!17926 () Bool)

(declare-fun setElem!17926 () Context!3042)

(assert (=> setNonEmpty!17926 (= setRes!17926 (and tp!673106 (inv!33067 setElem!17926) e!1381379))))

(declare-fun setRest!17926 () (InoxSet Context!3042))

(assert (=> setNonEmpty!17926 (= (_1!14704 (_1!14705 (h!30382 (minValue!3210 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3042 Bool)) false) setElem!17926 true) setRest!17926))))

(declare-fun b!2159081 () Bool)

(declare-fun tp!673105 () Bool)

(assert (=> b!2159081 (= e!1381379 tp!673105)))

(assert (= (and b!2159080 condSetEmpty!17926) setIsEmpty!17926))

(assert (= (and b!2159080 (not condSetEmpty!17926)) setNonEmpty!17926))

(assert (= setNonEmpty!17926 b!2159081))

(assert (= (and b!2158964 ((_ is Cons!24981) (minValue!3210 (v!29373 (underlying!6099 (v!29374 (underlying!6100 (cache!3247 thiss!29220)))))))) b!2159080))

(declare-fun m!2598977 () Bool)

(assert (=> setNonEmpty!17926 m!2598977))

(declare-fun b_lambda!71035 () Bool)

(assert (= b_lambda!71033 (or b!2158971 b_lambda!71035)))

(declare-fun bs!445989 () Bool)

(declare-fun d!646769 () Bool)

(assert (= bs!445989 (and d!646769 b!2158971)))

(declare-fun validCacheMapFurthestNullableBody!34 (tuple2!24682 BalanceConc!15936) Bool)

(assert (=> bs!445989 (= (dynLambda!11423 lambda!81533 (h!30382 (toList!1134 (map!5036 (cache!3247 thiss!29220))))) (validCacheMapFurthestNullableBody!34 (h!30382 (toList!1134 (map!5036 (cache!3247 thiss!29220)))) localTotalInput!17))))

(declare-fun m!2598979 () Bool)

(assert (=> bs!445989 m!2598979))

(assert (=> b!2159010 d!646769))

(check-sat (not mapNonEmpty!13937) (not b_next!64501) (not b!2159050) (not b!2159042) (not b!2159027) (not b!2159005) (not b!2159079) (not b!2158984) (not setNonEmpty!17926) (not setNonEmpty!17917) (not b!2159011) (not setNonEmpty!17921) (not d!646759) (not d!646751) (not bs!445989) (not b!2159063) b_and!173413 (not b!2159040) (not b!2159069) (not b!2158998) (not b!2159051) (not b!2159078) (not b_next!64503) (not b!2159041) (not b!2158991) (not b!2159062) (not b!2159023) b_and!173415 (not b!2159075) (not d!646761) (not b!2159080) (not b_lambda!71035) (not b!2159061) (not b!2158999) (not b!2159081) (not b!2159043) (not d!646749) (not setNonEmpty!17925) (not d!646739) (not d!646741) (not b!2158978) (not b!2159026) (not b!2158993) (not b!2159029) (not b!2159076) (not b!2159060) (not d!646747) (not setNonEmpty!17924) (not b!2159064) (not setNonEmpty!17916) (not setNonEmpty!17920) (not b!2158968) (not b!2159077) (not b!2159004) (not d!646765) (not b!2159074))
(check-sat b_and!173413 b_and!173415 (not b_next!64501) (not b_next!64503))
