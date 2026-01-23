; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249480 () Bool)

(assert start!249480)

(declare-fun b!2578927 () Bool)

(assert (=> b!2578927 true))

(declare-fun e!1627433 () Bool)

(declare-datatypes ((C!15462 0))(
  ( (C!15463 (val!9407 Int)) )
))
(declare-datatypes ((Regex!7652 0))(
  ( (ElementMatch!7652 (c!415393 C!15462)) (Concat!12376 (regOne!15816 Regex!7652) (regTwo!15816 Regex!7652)) (EmptyExpr!7652) (Star!7652 (reg!7981 Regex!7652)) (EmptyLang!7652) (Union!7652 (regOne!15817 Regex!7652) (regTwo!15817 Regex!7652)) )
))
(declare-datatypes ((List!29789 0))(
  ( (Nil!29689) (Cons!29689 (h!35109 Regex!7652) (t!211674 List!29789)) )
))
(declare-datatypes ((Context!4256 0))(
  ( (Context!4257 (exprs!2628 List!29789)) )
))
(declare-datatypes ((tuple2!29650 0))(
  ( (tuple2!29651 (_1!17367 (Set Context!4256)) (_2!17367 Int)) )
))
(declare-datatypes ((tuple2!29652 0))(
  ( (tuple2!29653 (_1!17368 tuple2!29650) (_2!17368 Int)) )
))
(declare-datatypes ((List!29790 0))(
  ( (Nil!29690) (Cons!29690 (h!35110 tuple2!29652) (t!211675 List!29790)) )
))
(declare-datatypes ((ListMap!1203 0))(
  ( (ListMap!1204 (toList!1724 List!29790)) )
))
(declare-fun lt!907349 () ListMap!1203)

(declare-fun lambda!95508 () Int)

(declare-fun forall!6045 (List!29790 Int) Bool)

(assert (=> b!2578927 (= e!1627433 (not (forall!6045 (toList!1724 lt!907349) lambda!95508)))))

(declare-fun res!1084828 () Bool)

(declare-fun e!1627436 () Bool)

(assert (=> start!249480 (=> (not res!1084828) (not e!1627436))))

(declare-fun initialSize!16 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!249480 (= res!1084828 (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001)))))

(assert (=> start!249480 e!1627436))

(assert (=> start!249480 true))

(declare-datatypes ((List!29791 0))(
  ( (Nil!29691) (Cons!29691 (h!35111 C!15462) (t!211676 List!29791)) )
))
(declare-datatypes ((IArray!18537 0))(
  ( (IArray!18538 (innerList!9326 List!29791)) )
))
(declare-datatypes ((Conc!9266 0))(
  ( (Node!9266 (left!22617 Conc!9266) (right!22947 Conc!9266) (csize!18762 Int) (cheight!9477 Int)) (Leaf!14132 (xs!12250 IArray!18537) (csize!18763 Int)) (Empty!9266) )
))
(declare-datatypes ((BalanceConc!18146 0))(
  ( (BalanceConc!18147 (c!415394 Conc!9266)) )
))
(declare-fun totalInput!583 () BalanceConc!18146)

(declare-fun e!1627434 () Bool)

(declare-fun inv!40059 (BalanceConc!18146) Bool)

(assert (=> start!249480 (and (inv!40059 totalInput!583) e!1627434)))

(declare-fun b!2578928 () Bool)

(declare-fun e!1627435 () Bool)

(declare-datatypes ((array!12267 0))(
  ( (array!12268 (arr!5472 (Array (_ BitVec 32) List!29790)) (size!23001 (_ BitVec 32))) )
))
(declare-datatypes ((array!12269 0))(
  ( (array!12270 (arr!5473 (Array (_ BitVec 32) (_ BitVec 64))) (size!23002 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6882 0))(
  ( (LongMapFixedSize!6883 (defaultEntry!3819 Int) (mask!8864 (_ BitVec 32)) (extraKeys!3689 (_ BitVec 32)) (zeroValue!3699 List!29790) (minValue!3699 List!29790) (_size!6929 (_ BitVec 32)) (_keys!3738 array!12269) (_values!3721 array!12267) (_vacant!3502 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13581 0))(
  ( (Cell!13582 (v!32003 LongMapFixedSize!6882)) )
))
(declare-datatypes ((MutLongMap!3441 0))(
  ( (LongMap!3441 (underlying!7089 Cell!13581)) (MutLongMapExt!3440 (__x!19267 Int)) )
))
(declare-datatypes ((Cell!13583 0))(
  ( (Cell!13584 (v!32004 MutLongMap!3441)) )
))
(declare-datatypes ((Hashable!3361 0))(
  ( (HashableExt!3360 (__x!19268 Int)) )
))
(declare-datatypes ((MutableMap!3351 0))(
  ( (MutableMapExt!3350 (__x!19269 Int)) (HashMap!3351 (underlying!7090 Cell!13583) (hashF!5389 Hashable!3361) (_size!6930 (_ BitVec 32)) (defaultValue!3520 Int)) )
))
(declare-fun lt!907351 () MutableMap!3351)

(declare-datatypes ((CacheFindLongestMatch!368 0))(
  ( (CacheFindLongestMatch!369 (cache!3502 MutableMap!3351) (totalInput!3709 BalanceConc!18146)) )
))
(declare-fun valid!2659 (CacheFindLongestMatch!368) Bool)

(assert (=> b!2578928 (= e!1627435 (valid!2659 (CacheFindLongestMatch!369 lt!907351 totalInput!583)))))

(declare-fun b!2578929 () Bool)

(assert (=> b!2578929 (= e!1627436 (not e!1627435))))

(declare-fun res!1084827 () Bool)

(assert (=> b!2578929 (=> res!1084827 e!1627435)))

(declare-fun lt!907352 () Bool)

(assert (=> b!2578929 (= res!1084827 (not lt!907352))))

(declare-fun lt!907350 () Bool)

(assert (=> b!2578929 (= lt!907352 (not lt!907350))))

(declare-fun validCacheMapFindLongestMatch!64 (MutableMap!3351 BalanceConc!18146) Bool)

(assert (=> b!2578929 (= lt!907352 (validCacheMapFindLongestMatch!64 lt!907351 totalInput!583))))

(declare-fun e!1627432 () Bool)

(assert (=> b!2578929 (= lt!907350 e!1627432)))

(declare-fun res!1084830 () Bool)

(assert (=> b!2578929 (=> res!1084830 e!1627432)))

(declare-fun valid!2660 (MutableMap!3351) Bool)

(assert (=> b!2578929 (= res!1084830 (not (valid!2660 lt!907351)))))

(declare-fun hashF!508 () Hashable!3361)

(declare-fun lambda!95507 () Int)

(declare-fun getEmptyHashMap!28 (Int Hashable!3361 (_ BitVec 32)) MutableMap!3351)

(assert (=> b!2578929 (= lt!907351 (getEmptyHashMap!28 lambda!95507 hashF!508 initialSize!16))))

(declare-fun b!2578930 () Bool)

(assert (=> b!2578930 (= e!1627432 e!1627433)))

(declare-fun res!1084829 () Bool)

(assert (=> b!2578930 (=> res!1084829 e!1627433)))

(declare-fun invariantList!435 (List!29790) Bool)

(assert (=> b!2578930 (= res!1084829 (not (invariantList!435 (toList!1724 lt!907349))))))

(declare-fun map!6581 (MutableMap!3351) ListMap!1203)

(assert (=> b!2578930 (= lt!907349 (map!6581 lt!907351))))

(declare-fun b!2578931 () Bool)

(declare-fun tp!819331 () Bool)

(declare-fun inv!40060 (Conc!9266) Bool)

(assert (=> b!2578931 (= e!1627434 (and (inv!40060 (c!415394 totalInput!583)) tp!819331))))

(assert (= (and start!249480 res!1084828) b!2578929))

(assert (= (and b!2578929 (not res!1084830)) b!2578930))

(assert (= (and b!2578930 (not res!1084829)) b!2578927))

(assert (= (and b!2578929 (not res!1084827)) b!2578928))

(assert (= start!249480 b!2578931))

(declare-fun m!2913849 () Bool)

(assert (=> b!2578930 m!2913849))

(declare-fun m!2913851 () Bool)

(assert (=> b!2578930 m!2913851))

(declare-fun m!2913853 () Bool)

(assert (=> start!249480 m!2913853))

(declare-fun m!2913855 () Bool)

(assert (=> start!249480 m!2913855))

(declare-fun m!2913857 () Bool)

(assert (=> b!2578927 m!2913857))

(declare-fun m!2913859 () Bool)

(assert (=> b!2578928 m!2913859))

(declare-fun m!2913861 () Bool)

(assert (=> b!2578931 m!2913861))

(declare-fun m!2913863 () Bool)

(assert (=> b!2578929 m!2913863))

(declare-fun m!2913865 () Bool)

(assert (=> b!2578929 m!2913865))

(declare-fun m!2913867 () Bool)

(assert (=> b!2578929 m!2913867))

(push 1)

(assert (not b!2578928))

(assert (not b!2578931))

(assert (not start!249480))

(assert (not b!2578929))

(assert (not b!2578927))

(assert (not b!2578930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!729622 () Bool)

(declare-fun c!415399 () Bool)

(assert (=> d!729622 (= c!415399 (is-Node!9266 (c!415394 totalInput!583)))))

(declare-fun e!1627460 () Bool)

(assert (=> d!729622 (= (inv!40060 (c!415394 totalInput!583)) e!1627460)))

(declare-fun b!2578957 () Bool)

(declare-fun inv!40063 (Conc!9266) Bool)

(assert (=> b!2578957 (= e!1627460 (inv!40063 (c!415394 totalInput!583)))))

(declare-fun b!2578958 () Bool)

(declare-fun e!1627461 () Bool)

(assert (=> b!2578958 (= e!1627460 e!1627461)))

(declare-fun res!1084845 () Bool)

(assert (=> b!2578958 (= res!1084845 (not (is-Leaf!14132 (c!415394 totalInput!583))))))

(assert (=> b!2578958 (=> res!1084845 e!1627461)))

(declare-fun b!2578959 () Bool)

(declare-fun inv!40064 (Conc!9266) Bool)

(assert (=> b!2578959 (= e!1627461 (inv!40064 (c!415394 totalInput!583)))))

(assert (= (and d!729622 c!415399) b!2578957))

(assert (= (and d!729622 (not c!415399)) b!2578958))

(assert (= (and b!2578958 (not res!1084845)) b!2578959))

(declare-fun m!2913889 () Bool)

(assert (=> b!2578957 m!2913889))

(declare-fun m!2913891 () Bool)

(assert (=> b!2578959 m!2913891))

(assert (=> b!2578931 d!729622))

(declare-fun d!729624 () Bool)

(assert (=> d!729624 (= (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!16 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!249480 d!729624))

(declare-fun d!729628 () Bool)

(declare-fun isBalanced!2824 (Conc!9266) Bool)

(assert (=> d!729628 (= (inv!40059 totalInput!583) (isBalanced!2824 (c!415394 totalInput!583)))))

(declare-fun bs!471066 () Bool)

(assert (= bs!471066 d!729628))

(declare-fun m!2913893 () Bool)

(assert (=> bs!471066 m!2913893))

(assert (=> start!249480 d!729628))

(declare-fun d!729630 () Bool)

(declare-fun res!1084850 () Bool)

(declare-fun e!1627466 () Bool)

(assert (=> d!729630 (=> res!1084850 e!1627466)))

(assert (=> d!729630 (= res!1084850 (is-Nil!29690 (toList!1724 lt!907349)))))

(assert (=> d!729630 (= (forall!6045 (toList!1724 lt!907349) lambda!95508) e!1627466)))

(declare-fun b!2578964 () Bool)

(declare-fun e!1627467 () Bool)

(assert (=> b!2578964 (= e!1627466 e!1627467)))

(declare-fun res!1084851 () Bool)

(assert (=> b!2578964 (=> (not res!1084851) (not e!1627467))))

(declare-fun dynLambda!12537 (Int tuple2!29652) Bool)

(assert (=> b!2578964 (= res!1084851 (dynLambda!12537 lambda!95508 (h!35110 (toList!1724 lt!907349))))))

(declare-fun b!2578965 () Bool)

(assert (=> b!2578965 (= e!1627467 (forall!6045 (t!211675 (toList!1724 lt!907349)) lambda!95508))))

(assert (= (and d!729630 (not res!1084850)) b!2578964))

(assert (= (and b!2578964 res!1084851) b!2578965))

(declare-fun b_lambda!76531 () Bool)

(assert (=> (not b_lambda!76531) (not b!2578964)))

(declare-fun m!2913895 () Bool)

(assert (=> b!2578964 m!2913895))

(declare-fun m!2913897 () Bool)

(assert (=> b!2578965 m!2913897))

(assert (=> b!2578927 d!729630))

(declare-fun bs!471068 () Bool)

(declare-fun b!2578971 () Bool)

(assert (= bs!471068 (and b!2578971 b!2578927)))

(declare-fun lambda!95517 () Int)

(assert (=> bs!471068 (= lambda!95517 lambda!95508)))

(assert (=> b!2578971 true))

(declare-fun d!729632 () Bool)

(declare-fun res!1084856 () Bool)

(declare-fun e!1627470 () Bool)

(assert (=> d!729632 (=> (not res!1084856) (not e!1627470))))

(assert (=> d!729632 (= res!1084856 (valid!2660 lt!907351))))

(assert (=> d!729632 (= (validCacheMapFindLongestMatch!64 lt!907351 totalInput!583) e!1627470)))

(declare-fun b!2578970 () Bool)

(declare-fun res!1084857 () Bool)

(assert (=> b!2578970 (=> (not res!1084857) (not e!1627470))))

(assert (=> b!2578970 (= res!1084857 (invariantList!435 (toList!1724 (map!6581 lt!907351))))))

(assert (=> b!2578971 (= e!1627470 (forall!6045 (toList!1724 (map!6581 lt!907351)) lambda!95517))))

(assert (= (and d!729632 res!1084856) b!2578970))

(assert (= (and b!2578970 res!1084857) b!2578971))

(assert (=> d!729632 m!2913865))

(assert (=> b!2578970 m!2913851))

(declare-fun m!2913902 () Bool)

(assert (=> b!2578970 m!2913902))

(assert (=> b!2578971 m!2913851))

(declare-fun m!2913904 () Bool)

(assert (=> b!2578971 m!2913904))

(assert (=> b!2578929 d!729632))

(declare-fun d!729638 () Bool)

(declare-fun res!1084862 () Bool)

(declare-fun e!1627473 () Bool)

(assert (=> d!729638 (=> (not res!1084862) (not e!1627473))))

(declare-fun valid!2663 (MutLongMap!3441) Bool)

(assert (=> d!729638 (= res!1084862 (valid!2663 (v!32004 (underlying!7090 lt!907351))))))

(assert (=> d!729638 (= (valid!2660 lt!907351) e!1627473)))

(declare-fun b!2578976 () Bool)

(declare-fun res!1084863 () Bool)

(assert (=> b!2578976 (=> (not res!1084863) (not e!1627473))))

(declare-fun lambda!95520 () Int)

(declare-datatypes ((tuple2!29658 0))(
  ( (tuple2!29659 (_1!17371 (_ BitVec 64)) (_2!17371 List!29790)) )
))
(declare-datatypes ((List!29795 0))(
  ( (Nil!29695) (Cons!29695 (h!35115 tuple2!29658) (t!211680 List!29795)) )
))
(declare-fun forall!6047 (List!29795 Int) Bool)

(declare-datatypes ((ListLongMap!675 0))(
  ( (ListLongMap!676 (toList!1726 List!29795)) )
))
(declare-fun map!6583 (MutLongMap!3441) ListLongMap!675)

(assert (=> b!2578976 (= res!1084863 (forall!6047 (toList!1726 (map!6583 (v!32004 (underlying!7090 lt!907351)))) lambda!95520))))

(declare-fun b!2578977 () Bool)

(declare-fun allKeysSameHashInMap!220 (ListLongMap!675 Hashable!3361) Bool)

(assert (=> b!2578977 (= e!1627473 (allKeysSameHashInMap!220 (map!6583 (v!32004 (underlying!7090 lt!907351))) (hashF!5389 lt!907351)))))

(assert (= (and d!729638 res!1084862) b!2578976))

(assert (= (and b!2578976 res!1084863) b!2578977))

(declare-fun m!2913906 () Bool)

(assert (=> d!729638 m!2913906))

(declare-fun m!2913908 () Bool)

(assert (=> b!2578976 m!2913908))

(declare-fun m!2913910 () Bool)

(assert (=> b!2578976 m!2913910))

(assert (=> b!2578977 m!2913908))

(assert (=> b!2578977 m!2913908))

(declare-fun m!2913912 () Bool)

(assert (=> b!2578977 m!2913912))

(assert (=> b!2578929 d!729638))

(declare-fun b!2578991 () Bool)

(declare-fun e!1627483 () Bool)

(declare-fun lt!907373 () MutLongMap!3441)

(assert (=> b!2578991 (= e!1627483 (is-LongMap!3441 lt!907373))))

(assert (=> b!2578991 (= lt!907373 (v!32004 (underlying!7090 (getEmptyHashMap!28 lambda!95507 hashF!508 initialSize!16))))))

(declare-fun b!2578990 () Bool)

(declare-fun e!1627482 () Bool)

(assert (=> b!2578990 (= e!1627482 e!1627483)))

(declare-fun d!729640 () Bool)

(assert (=> d!729640 (= true e!1627482)))

(assert (= b!2578990 b!2578991))

(assert (= (and d!729640 (is-HashMap!3351 (getEmptyHashMap!28 lambda!95507 hashF!508 initialSize!16))) b!2578990))

(declare-fun e!1627477 () Bool)

(assert (=> d!729640 e!1627477))

(declare-fun res!1084869 () Bool)

(assert (=> d!729640 (=> (not res!1084869) (not e!1627477))))

(assert (=> d!729640 (= res!1084869 true)))

(declare-fun lambda!95525 () Int)

(declare-fun lt!907369 () MutableMap!3351)

(declare-fun getEmptyLongMap!21 (Int (_ BitVec 32)) MutLongMap!3441)

(assert (=> d!729640 (= lt!907369 (HashMap!3351 (Cell!13584 (getEmptyLongMap!21 lambda!95525 initialSize!16)) hashF!508 #b00000000000000000000000000000000 lambda!95507))))

(declare-fun lt!907370 () MutableMap!3351)

(assert (=> d!729640 (= lt!907370 (HashMap!3351 (Cell!13584 (getEmptyLongMap!21 lambda!95525 initialSize!16)) hashF!508 #b00000000000000000000000000000000 lambda!95507))))

(assert (=> d!729640 (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001))))

(assert (=> d!729640 (= (getEmptyHashMap!28 lambda!95507 hashF!508 initialSize!16) lt!907370)))

(declare-fun b!2578982 () Bool)

(declare-fun res!1084868 () Bool)

(assert (=> b!2578982 (=> (not res!1084868) (not e!1627477))))

(assert (=> b!2578982 (= res!1084868 (valid!2660 lt!907370))))

(declare-fun b!2578983 () Bool)

(declare-fun size!23005 (MutableMap!3351) (_ BitVec 32))

(assert (=> b!2578983 (= e!1627477 (= (size!23005 lt!907370) #b00000000000000000000000000000000))))

(assert (= (and d!729640 res!1084869) b!2578982))

(assert (= (and b!2578982 res!1084868) b!2578983))

(declare-fun m!2913916 () Bool)

(assert (=> d!729640 m!2913916))

(assert (=> d!729640 m!2913916))

(assert (=> d!729640 m!2913853))

(declare-fun m!2913918 () Bool)

(assert (=> b!2578982 m!2913918))

(declare-fun m!2913920 () Bool)

(assert (=> b!2578983 m!2913920))

(assert (=> b!2578929 d!729640))

(declare-fun d!729644 () Bool)

(assert (=> d!729644 (= (valid!2659 (CacheFindLongestMatch!369 lt!907351 totalInput!583)) (validCacheMapFindLongestMatch!64 (cache!3502 (CacheFindLongestMatch!369 lt!907351 totalInput!583)) (totalInput!3709 (CacheFindLongestMatch!369 lt!907351 totalInput!583))))))

(declare-fun bs!471070 () Bool)

(assert (= bs!471070 d!729644))

(declare-fun m!2913926 () Bool)

(assert (=> bs!471070 m!2913926))

(assert (=> b!2578928 d!729644))

(declare-fun d!729648 () Bool)

(declare-fun noDuplicatedKeys!75 (List!29790) Bool)

(assert (=> d!729648 (= (invariantList!435 (toList!1724 lt!907349)) (noDuplicatedKeys!75 (toList!1724 lt!907349)))))

(declare-fun bs!471071 () Bool)

(assert (= bs!471071 d!729648))

(declare-fun m!2913928 () Bool)

(assert (=> bs!471071 m!2913928))

(assert (=> b!2578930 d!729648))

(declare-fun d!729650 () Bool)

(declare-fun lt!907376 () ListMap!1203)

(assert (=> d!729650 (invariantList!435 (toList!1724 lt!907376))))

(declare-fun extractMap!213 (List!29795) ListMap!1203)

(assert (=> d!729650 (= lt!907376 (extractMap!213 (toList!1726 (map!6583 (v!32004 (underlying!7090 lt!907351))))))))

(assert (=> d!729650 (valid!2660 lt!907351)))

(assert (=> d!729650 (= (map!6581 lt!907351) lt!907376)))

(declare-fun bs!471072 () Bool)

(assert (= bs!471072 d!729650))

(declare-fun m!2913930 () Bool)

(assert (=> bs!471072 m!2913930))

(assert (=> bs!471072 m!2913908))

(declare-fun m!2913932 () Bool)

(assert (=> bs!471072 m!2913932))

(assert (=> bs!471072 m!2913865))

(assert (=> b!2578930 d!729650))

(declare-fun b!2579009 () Bool)

(declare-fun e!1627494 () Bool)

(declare-fun tp!819341 () Bool)

(declare-fun tp!819343 () Bool)

(assert (=> b!2579009 (= e!1627494 (and (inv!40060 (left!22617 (c!415394 totalInput!583))) tp!819341 (inv!40060 (right!22947 (c!415394 totalInput!583))) tp!819343))))

(declare-fun b!2579011 () Bool)

(declare-fun e!1627495 () Bool)

(declare-fun tp!819342 () Bool)

(assert (=> b!2579011 (= e!1627495 tp!819342)))

(declare-fun b!2579010 () Bool)

(declare-fun inv!40065 (IArray!18537) Bool)

(assert (=> b!2579010 (= e!1627494 (and (inv!40065 (xs!12250 (c!415394 totalInput!583))) e!1627495))))

(assert (=> b!2578931 (= tp!819331 (and (inv!40060 (c!415394 totalInput!583)) e!1627494))))

(assert (= (and b!2578931 (is-Node!9266 (c!415394 totalInput!583))) b!2579009))

(assert (= b!2579010 b!2579011))

(assert (= (and b!2578931 (is-Leaf!14132 (c!415394 totalInput!583))) b!2579010))

(declare-fun m!2913934 () Bool)

(assert (=> b!2579009 m!2913934))

(declare-fun m!2913937 () Bool)

(assert (=> b!2579009 m!2913937))

(declare-fun m!2913939 () Bool)

(assert (=> b!2579010 m!2913939))

(assert (=> b!2578931 m!2913861))

(declare-fun b_lambda!76533 () Bool)

(assert (= b_lambda!76531 (or b!2578927 b_lambda!76533)))

(declare-fun bs!471073 () Bool)

(declare-fun d!729652 () Bool)

(assert (= bs!471073 (and d!729652 b!2578927)))

(declare-fun validCacheMapFindLongestMatchBody!6 (tuple2!29652 BalanceConc!18146) Bool)

(assert (=> bs!471073 (= (dynLambda!12537 lambda!95508 (h!35110 (toList!1724 lt!907349))) (validCacheMapFindLongestMatchBody!6 (h!35110 (toList!1724 lt!907349)) totalInput!583))))

(declare-fun m!2913941 () Bool)

(assert (=> bs!471073 m!2913941))

(assert (=> b!2578964 d!729652))

(push 1)

(assert (not b!2578982))

(assert (not d!729628))

(assert (not b!2578970))

(assert (not b_lambda!76533))

(assert (not d!729638))

(assert (not b!2579010))

(assert (not b!2578983))

(assert (not b!2578977))

(assert (not b!2578931))

(assert (not b!2578957))

(assert (not b!2578965))

(assert (not b!2579011))

(assert (not d!729648))

(assert (not d!729632))

(assert (not d!729640))

(assert (not b!2578959))

(assert (not bs!471073))

(assert (not d!729644))

(assert (not b!2578971))

(assert (not d!729650))

(assert (not b!2579009))

(assert (not b!2578976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

