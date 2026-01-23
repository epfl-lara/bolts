; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207580 () Bool)

(assert start!207580)

(declare-fun b!2134389 () Bool)

(declare-fun b_free!62501 () Bool)

(declare-fun b_next!63205 () Bool)

(assert (=> b!2134389 (= b_free!62501 (not b_next!63205))))

(declare-fun tp!657589 () Bool)

(declare-fun b_and!172081 () Bool)

(assert (=> b!2134389 (= tp!657589 b_and!172081)))

(declare-fun b!2134420 () Bool)

(declare-fun b_free!62503 () Bool)

(declare-fun b_next!63207 () Bool)

(assert (=> b!2134420 (= b_free!62503 (not b_next!63207))))

(declare-fun tp!657595 () Bool)

(declare-fun b_and!172083 () Bool)

(assert (=> b!2134420 (= tp!657595 b_and!172083)))

(declare-fun b!2134413 () Bool)

(declare-fun b_free!62505 () Bool)

(declare-fun b_next!63209 () Bool)

(assert (=> b!2134413 (= b_free!62505 (not b_next!63209))))

(declare-fun tp!657586 () Bool)

(declare-fun b_and!172085 () Bool)

(assert (=> b!2134413 (= tp!657586 b_and!172085)))

(declare-fun b!2134387 () Bool)

(declare-fun b_free!62507 () Bool)

(declare-fun b_next!63211 () Bool)

(assert (=> b!2134387 (= b_free!62507 (not b_next!63211))))

(declare-fun tp!657591 () Bool)

(declare-fun b_and!172087 () Bool)

(assert (=> b!2134387 (= tp!657591 b_and!172087)))

(declare-fun b!2134414 () Bool)

(declare-fun b_free!62509 () Bool)

(declare-fun b_next!63213 () Bool)

(assert (=> b!2134414 (= b_free!62509 (not b_next!63213))))

(declare-fun tp!657594 () Bool)

(declare-fun b_and!172089 () Bool)

(assert (=> b!2134414 (= tp!657594 b_and!172089)))

(declare-fun b!2134406 () Bool)

(declare-fun b_free!62511 () Bool)

(declare-fun b_next!63215 () Bool)

(assert (=> b!2134406 (= b_free!62511 (not b_next!63215))))

(declare-fun tp!657570 () Bool)

(declare-fun b_and!172091 () Bool)

(assert (=> b!2134406 (= tp!657570 b_and!172091)))

(declare-fun b!2134405 () Bool)

(assert (=> b!2134405 true))

(declare-fun bs!444300 () Bool)

(declare-fun b!2134401 () Bool)

(assert (= bs!444300 (and b!2134401 b!2134405)))

(declare-fun lambda!79387 () Int)

(declare-fun lambda!79386 () Int)

(assert (=> bs!444300 (not (= lambda!79387 lambda!79386))))

(assert (=> b!2134401 true))

(declare-fun b!2134383 () Bool)

(declare-fun e!1362112 () Bool)

(declare-fun e!1362110 () Bool)

(assert (=> b!2134383 (= e!1362112 e!1362110)))

(declare-fun b!2134384 () Bool)

(declare-fun e!1362097 () Bool)

(declare-fun e!1362091 () Bool)

(assert (=> b!2134384 (= e!1362097 e!1362091)))

(declare-fun res!922290 () Bool)

(assert (=> b!2134384 (=> res!922290 e!1362091)))

(declare-fun lt!796992 () Int)

(declare-fun lt!796988 () Int)

(declare-fun lt!796990 () Int)

(declare-fun from!1043 () Int)

(declare-datatypes ((C!11620 0))(
  ( (C!11621 (val!6796 Int)) )
))
(declare-datatypes ((Regex!5737 0))(
  ( (ElementMatch!5737 (c!340295 C!11620)) (Concat!10039 (regOne!11986 Regex!5737) (regTwo!11986 Regex!5737)) (EmptyExpr!5737) (Star!5737 (reg!6066 Regex!5737)) (EmptyLang!5737) (Union!5737 (regOne!11987 Regex!5737) (regTwo!11987 Regex!5737)) )
))
(declare-datatypes ((List!24194 0))(
  ( (Nil!24110) (Cons!24110 (h!29511 Regex!5737) (t!196722 List!24194)) )
))
(declare-datatypes ((Context!2614 0))(
  ( (Context!2615 (exprs!1807 List!24194)) )
))
(declare-datatypes ((tuple3!3232 0))(
  ( (tuple3!3233 (_1!14028 Regex!5737) (_2!14028 Context!2614) (_3!2086 C!11620)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23884 0))(
  ( (tuple2!23885 (_1!14029 tuple3!3232) (_2!14029 (InoxSet Context!2614))) )
))
(declare-datatypes ((List!24195 0))(
  ( (Nil!24111) (Cons!24111 (h!29512 tuple2!23884) (t!196723 List!24195)) )
))
(declare-datatypes ((tuple2!23886 0))(
  ( (tuple2!23887 (_1!14030 Context!2614) (_2!14030 C!11620)) )
))
(declare-datatypes ((tuple2!23888 0))(
  ( (tuple2!23889 (_1!14031 tuple2!23886) (_2!14031 (InoxSet Context!2614))) )
))
(declare-datatypes ((List!24196 0))(
  ( (Nil!24112) (Cons!24112 (h!29513 tuple2!23888) (t!196724 List!24196)) )
))
(declare-datatypes ((Hashable!2565 0))(
  ( (HashableExt!2564 (__x!16129 Int)) )
))
(declare-datatypes ((Hashable!2566 0))(
  ( (HashableExt!2565 (__x!16130 Int)) )
))
(declare-datatypes ((array!8995 0))(
  ( (array!8996 (arr!4009 (Array (_ BitVec 32) (_ BitVec 64))) (size!18857 (_ BitVec 32))) )
))
(declare-datatypes ((array!8997 0))(
  ( (array!8998 (arr!4010 (Array (_ BitVec 32) List!24196)) (size!18858 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5302 0))(
  ( (LongMapFixedSize!5303 (defaultEntry!3016 Int) (mask!6835 (_ BitVec 32)) (extraKeys!2899 (_ BitVec 32)) (zeroValue!2909 List!24196) (minValue!2909 List!24196) (_size!5353 (_ BitVec 32)) (_keys!2948 array!8995) (_values!2931 array!8997) (_vacant!2712 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10429 0))(
  ( (Cell!10430 (v!28672 LongMapFixedSize!5302)) )
))
(declare-datatypes ((MutLongMap!2651 0))(
  ( (LongMap!2651 (underlying!5497 Cell!10429)) (MutLongMapExt!2650 (__x!16131 Int)) )
))
(declare-datatypes ((Cell!10431 0))(
  ( (Cell!10432 (v!28673 MutLongMap!2651)) )
))
(declare-datatypes ((MutableMap!2565 0))(
  ( (MutableMapExt!2564 (__x!16132 Int)) (HashMap!2565 (underlying!5498 Cell!10431) (hashF!4488 Hashable!2565) (_size!5354 (_ BitVec 32)) (defaultValue!2727 Int)) )
))
(declare-datatypes ((CacheUp!1776 0))(
  ( (CacheUp!1777 (cache!2946 MutableMap!2565)) )
))
(declare-datatypes ((array!8999 0))(
  ( (array!9000 (arr!4011 (Array (_ BitVec 32) List!24195)) (size!18859 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5304 0))(
  ( (LongMapFixedSize!5305 (defaultEntry!3017 Int) (mask!6836 (_ BitVec 32)) (extraKeys!2900 (_ BitVec 32)) (zeroValue!2910 List!24195) (minValue!2910 List!24195) (_size!5355 (_ BitVec 32)) (_keys!2949 array!8995) (_values!2932 array!8999) (_vacant!2713 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10433 0))(
  ( (Cell!10434 (v!28674 LongMapFixedSize!5304)) )
))
(declare-datatypes ((MutLongMap!2652 0))(
  ( (LongMap!2652 (underlying!5499 Cell!10433)) (MutLongMapExt!2651 (__x!16133 Int)) )
))
(declare-datatypes ((Cell!10435 0))(
  ( (Cell!10436 (v!28675 MutLongMap!2652)) )
))
(declare-datatypes ((MutableMap!2566 0))(
  ( (MutableMapExt!2565 (__x!16134 Int)) (HashMap!2566 (underlying!5500 Cell!10435) (hashF!4489 Hashable!2566) (_size!5356 (_ BitVec 32)) (defaultValue!2728 Int)) )
))
(declare-datatypes ((CacheDown!1758 0))(
  ( (CacheDown!1759 (cache!2947 MutableMap!2566)) )
))
(declare-datatypes ((tuple3!3234 0))(
  ( (tuple3!3235 (_1!14032 (InoxSet Context!2614)) (_2!14032 CacheUp!1776) (_3!2087 CacheDown!1758)) )
))
(declare-fun lt!796989 () tuple3!3234)

(declare-datatypes ((List!24197 0))(
  ( (Nil!24113) (Cons!24113 (h!29514 C!11620) (t!196725 List!24197)) )
))
(declare-datatypes ((IArray!15755 0))(
  ( (IArray!15756 (innerList!7935 List!24197)) )
))
(declare-datatypes ((Conc!7875 0))(
  ( (Node!7875 (left!18576 Conc!7875) (right!18906 Conc!7875) (csize!15980 Int) (cheight!8086 Int)) (Leaf!11511 (xs!10817 IArray!15755) (csize!15981 Int)) (Empty!7875) )
))
(declare-datatypes ((BalanceConc!15512 0))(
  ( (BalanceConc!15513 (c!340296 Conc!7875)) )
))
(declare-fun totalInput!851 () BalanceConc!15512)

(declare-fun furthestNullablePosition!49 ((InoxSet Context!2614) Int BalanceConc!15512 Int Int) Int)

(assert (=> b!2134384 (= res!922290 (not (= lt!796990 (furthestNullablePosition!49 (_1!14032 lt!796989) (+ 1 from!1043) totalInput!851 lt!796992 lt!796988))))))

(declare-fun e!1362103 () Int)

(assert (=> b!2134384 (= lt!796988 e!1362103)))

(declare-fun c!340294 () Bool)

(declare-fun nullableZipper!115 ((InoxSet Context!2614)) Bool)

(assert (=> b!2134384 (= c!340294 (nullableZipper!115 (_1!14032 lt!796989)))))

(declare-fun cacheDown!1098 () CacheDown!1758)

(declare-fun cacheUp!979 () CacheUp!1776)

(declare-fun z!3839 () (InoxSet Context!2614))

(declare-fun derivationStepZipperMem!37 ((InoxSet Context!2614) C!11620 CacheUp!1776 CacheDown!1758) tuple3!3234)

(declare-fun apply!5936 (BalanceConc!15512 Int) C!11620)

(assert (=> b!2134384 (= lt!796989 (derivationStepZipperMem!37 z!3839 (apply!5936 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun setIsEmpty!15888 () Bool)

(declare-fun setRes!15889 () Bool)

(assert (=> setIsEmpty!15888 setRes!15889))

(declare-fun b!2134385 () Bool)

(assert (=> b!2134385 (= e!1362091 (or (< (+ 1 from!1043) 0) (> (+ 1 from!1043) lt!796992) (and (>= lt!796988 (- 1)) (< lt!796988 (+ 1 from!1043)))))))

(declare-fun b!2134386 () Bool)

(declare-fun res!922288 () Bool)

(declare-fun e!1362082 () Bool)

(assert (=> b!2134386 (=> (not res!922288) (not e!1362082))))

(declare-fun valid!2074 (CacheDown!1758) Bool)

(assert (=> b!2134386 (= res!922288 (valid!2074 cacheDown!1098))))

(declare-fun e!1362083 () Bool)

(declare-fun e!1362113 () Bool)

(assert (=> b!2134387 (= e!1362083 (and e!1362113 tp!657591))))

(declare-fun b!2134388 () Bool)

(declare-fun e!1362105 () Bool)

(declare-datatypes ((StackFrame!166 0))(
  ( (StackFrame!167 (z!5811 (InoxSet Context!2614)) (from!2697 Int) (lastNullablePos!384 Int) (res!922296 Int) (totalInput!3050 BalanceConc!15512)) )
))
(declare-datatypes ((List!24198 0))(
  ( (Nil!24114) (Cons!24114 (h!29515 StackFrame!166) (t!196726 List!24198)) )
))
(declare-fun stack!8 () List!24198)

(declare-fun e!1362089 () Bool)

(declare-fun tp!657585 () Bool)

(declare-fun inv!31765 (StackFrame!166) Bool)

(assert (=> b!2134388 (= e!1362105 (and (inv!31765 (h!29515 stack!8)) e!1362089 tp!657585))))

(declare-fun e!1362100 () Bool)

(declare-fun e!1362096 () Bool)

(assert (=> b!2134389 (= e!1362100 (and e!1362096 tp!657589))))

(declare-fun b!2134390 () Bool)

(declare-fun e!1362102 () Bool)

(declare-fun tp!657587 () Bool)

(assert (=> b!2134390 (= e!1362102 tp!657587)))

(declare-fun b!2134391 () Bool)

(declare-fun e!1362085 () Bool)

(declare-fun e!1362088 () Bool)

(assert (=> b!2134391 (= e!1362085 e!1362088)))

(declare-fun b!2134392 () Bool)

(assert (=> b!2134392 (= e!1362103 from!1043)))

(declare-fun b!2134393 () Bool)

(declare-fun res!922294 () Bool)

(assert (=> b!2134393 (=> res!922294 e!1362097)))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2134393 (= res!922294 (= from!1043 totalInputSize!296))))

(declare-fun b!2134394 () Bool)

(declare-fun e!1362078 () Bool)

(declare-fun tp!657597 () Bool)

(declare-fun inv!31766 (Conc!7875) Bool)

(assert (=> b!2134394 (= e!1362078 (and (inv!31766 (c!340296 totalInput!851)) tp!657597))))

(declare-fun setRes!15888 () Bool)

(declare-fun e!1362111 () Bool)

(declare-fun b!2134395 () Bool)

(declare-fun inv!31767 (BalanceConc!15512) Bool)

(assert (=> b!2134395 (= e!1362089 (and setRes!15888 (inv!31767 (totalInput!3050 (h!29515 stack!8))) e!1362111))))

(declare-fun condSetEmpty!15888 () Bool)

(assert (=> b!2134395 (= condSetEmpty!15888 (= (z!5811 (h!29515 stack!8)) ((as const (Array Context!2614 Bool)) false)))))

(declare-fun b!2134396 () Bool)

(declare-fun e!1362086 () Bool)

(assert (=> b!2134396 (= e!1362086 (not e!1362097))))

(declare-fun res!922284 () Bool)

(assert (=> b!2134396 (=> res!922284 e!1362097)))

(declare-datatypes ((tuple3!3236 0))(
  ( (tuple3!3237 (_1!14033 (InoxSet Context!2614)) (_2!14033 Int) (_3!2088 Int)) )
))
(declare-datatypes ((tuple2!23890 0))(
  ( (tuple2!23891 (_1!14034 tuple3!3236) (_2!14034 Int)) )
))
(declare-datatypes ((List!24199 0))(
  ( (Nil!24115) (Cons!24115 (h!29516 tuple2!23890) (t!196727 List!24199)) )
))
(declare-datatypes ((array!9001 0))(
  ( (array!9002 (arr!4012 (Array (_ BitVec 32) List!24199)) (size!18860 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5306 0))(
  ( (LongMapFixedSize!5307 (defaultEntry!3018 Int) (mask!6837 (_ BitVec 32)) (extraKeys!2901 (_ BitVec 32)) (zeroValue!2911 List!24199) (minValue!2911 List!24199) (_size!5357 (_ BitVec 32)) (_keys!2950 array!8995) (_values!2933 array!9001) (_vacant!2714 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10437 0))(
  ( (Cell!10438 (v!28676 LongMapFixedSize!5306)) )
))
(declare-datatypes ((MutLongMap!2653 0))(
  ( (LongMap!2653 (underlying!5501 Cell!10437)) (MutLongMapExt!2652 (__x!16135 Int)) )
))
(declare-datatypes ((Cell!10439 0))(
  ( (Cell!10440 (v!28677 MutLongMap!2653)) )
))
(declare-datatypes ((Hashable!2567 0))(
  ( (HashableExt!2566 (__x!16136 Int)) )
))
(declare-datatypes ((MutableMap!2567 0))(
  ( (MutableMapExt!2566 (__x!16137 Int)) (HashMap!2567 (underlying!5502 Cell!10439) (hashF!4490 Hashable!2567) (_size!5358 (_ BitVec 32)) (defaultValue!2729 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!720 0))(
  ( (CacheFurthestNullable!721 (cache!2948 MutableMap!2567) (totalInput!3051 BalanceConc!15512)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!720)

(declare-fun lastNullablePos!123 () Int)

(get-info :version)

(declare-datatypes ((Option!4906 0))(
  ( (None!4905) (Some!4905 (v!28678 Int)) )
))
(declare-fun get!7384 (CacheFurthestNullable!720 (InoxSet Context!2614) Int Int) Option!4906)

(assert (=> b!2134396 (= res!922284 ((_ is Some!4905) (get!7384 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(declare-fun forall!4926 (List!24198 Int) Bool)

(assert (=> b!2134396 (forall!4926 stack!8 lambda!79386)))

(declare-fun b!2134397 () Bool)

(declare-fun e!1362106 () Bool)

(assert (=> b!2134397 (= e!1362106 e!1362112)))

(declare-fun b!2134398 () Bool)

(declare-fun e!1362099 () Bool)

(declare-fun e!1362114 () Bool)

(assert (=> b!2134398 (= e!1362099 e!1362114)))

(declare-fun b!2134399 () Bool)

(declare-fun e!1362084 () Bool)

(declare-fun tp!657596 () Bool)

(assert (=> b!2134399 (= e!1362084 (and (inv!31766 (c!340296 (totalInput!3051 cacheFurthestNullable!114))) tp!657596))))

(declare-fun b!2134400 () Bool)

(declare-fun res!922286 () Bool)

(assert (=> b!2134400 (=> (not res!922286) (not e!1362082))))

(assert (=> b!2134400 (= res!922286 (= (totalInput!3051 cacheFurthestNullable!114) totalInput!851))))

(declare-fun mapIsEmpty!12736 () Bool)

(declare-fun mapRes!12737 () Bool)

(assert (=> mapIsEmpty!12736 mapRes!12737))

(declare-fun res!922282 () Bool)

(assert (=> b!2134401 (=> (not res!922282) (not e!1362086))))

(assert (=> b!2134401 (= res!922282 (forall!4926 stack!8 lambda!79387))))

(declare-fun b!2134402 () Bool)

(declare-fun res!922291 () Bool)

(assert (=> b!2134402 (=> (not res!922291) (not e!1362082))))

(declare-fun valid!2075 (CacheFurthestNullable!720) Bool)

(assert (=> b!2134402 (= res!922291 (valid!2075 cacheFurthestNullable!114))))

(declare-fun b!2134403 () Bool)

(declare-fun e!1362081 () Bool)

(declare-fun tp!657593 () Bool)

(declare-fun mapRes!12738 () Bool)

(assert (=> b!2134403 (= e!1362081 (and tp!657593 mapRes!12738))))

(declare-fun condMapEmpty!12738 () Bool)

(declare-fun mapDefault!12736 () List!24196)

(assert (=> b!2134403 (= condMapEmpty!12738 (= (arr!4010 (_values!2931 (v!28672 (underlying!5497 (v!28673 (underlying!5498 (cache!2946 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24196)) mapDefault!12736)))))

(declare-fun b!2134404 () Bool)

(declare-fun res!922287 () Bool)

(assert (=> b!2134404 (=> (not res!922287) (not e!1362082))))

(declare-fun valid!2076 (CacheUp!1776) Bool)

(assert (=> b!2134404 (= res!922287 (valid!2076 cacheUp!979))))

(assert (=> b!2134405 (= e!1362082 e!1362086)))

(declare-fun res!922293 () Bool)

(assert (=> b!2134405 (=> (not res!922293) (not e!1362086))))

(assert (=> b!2134405 (= res!922293 (forall!4926 stack!8 lambda!79386))))

(assert (=> b!2134405 (= lt!796990 (furthestNullablePosition!49 z!3839 from!1043 totalInput!851 lt!796992 lastNullablePos!123))))

(declare-fun e!1362104 () Bool)

(declare-fun tp!657588 () Bool)

(declare-fun e!1362107 () Bool)

(declare-fun tp!657574 () Bool)

(declare-fun array_inv!2868 (array!8995) Bool)

(declare-fun array_inv!2869 (array!9001) Bool)

(assert (=> b!2134406 (= e!1362104 (and tp!657570 tp!657574 tp!657588 (array_inv!2868 (_keys!2950 (v!28676 (underlying!5501 (v!28677 (underlying!5502 (cache!2948 cacheFurthestNullable!114))))))) (array_inv!2869 (_values!2933 (v!28676 (underlying!5501 (v!28677 (underlying!5502 (cache!2948 cacheFurthestNullable!114))))))) e!1362107))))

(declare-fun mapNonEmpty!12736 () Bool)

(declare-fun tp!657576 () Bool)

(declare-fun tp!657577 () Bool)

(assert (=> mapNonEmpty!12736 (= mapRes!12737 (and tp!657576 tp!657577))))

(declare-fun mapRest!12737 () (Array (_ BitVec 32) List!24199))

(declare-fun mapValue!12737 () List!24199)

(declare-fun mapKey!12737 () (_ BitVec 32))

(assert (=> mapNonEmpty!12736 (= (arr!4012 (_values!2933 (v!28676 (underlying!5501 (v!28677 (underlying!5502 (cache!2948 cacheFurthestNullable!114))))))) (store mapRest!12737 mapKey!12737 mapValue!12737))))

(declare-fun tp!657583 () Bool)

(declare-fun e!1362115 () Bool)

(declare-fun setElem!15888 () Context!2614)

(declare-fun setNonEmpty!15888 () Bool)

(declare-fun inv!31768 (Context!2614) Bool)

(assert (=> setNonEmpty!15888 (= setRes!15888 (and tp!657583 (inv!31768 setElem!15888) e!1362115))))

(declare-fun setRest!15889 () (InoxSet Context!2614))

(assert (=> setNonEmpty!15888 (= (z!5811 (h!29515 stack!8)) ((_ map or) (store ((as const (Array Context!2614 Bool)) false) setElem!15888 true) setRest!15889))))

(declare-fun b!2134407 () Bool)

(declare-fun e!1362108 () Bool)

(assert (=> b!2134407 (= e!1362108 e!1362100)))

(declare-fun b!2134408 () Bool)

(declare-fun res!922292 () Bool)

(assert (=> b!2134408 (=> res!922292 e!1362097)))

(declare-fun lostCauseZipper!89 ((InoxSet Context!2614)) Bool)

(assert (=> b!2134408 (= res!922292 (lostCauseZipper!89 z!3839))))

(declare-fun b!2134409 () Bool)

(assert (=> b!2134409 (= e!1362114 e!1362104)))

(declare-fun b!2134410 () Bool)

(declare-fun e!1362109 () Bool)

(assert (=> b!2134410 (= e!1362109 e!1362085)))

(declare-fun b!2134411 () Bool)

(declare-fun tp!657578 () Bool)

(assert (=> b!2134411 (= e!1362107 (and tp!657578 mapRes!12737))))

(declare-fun condMapEmpty!12736 () Bool)

(declare-fun mapDefault!12738 () List!24199)

(assert (=> b!2134411 (= condMapEmpty!12736 (= (arr!4012 (_values!2933 (v!28676 (underlying!5501 (v!28677 (underlying!5502 (cache!2948 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24199)) mapDefault!12738)))))

(declare-fun b!2134412 () Bool)

(declare-fun e!1362087 () Bool)

(assert (=> b!2134412 (= e!1362087 e!1362082)))

(declare-fun res!922289 () Bool)

(assert (=> b!2134412 (=> (not res!922289) (not e!1362082))))

(assert (=> b!2134412 (= res!922289 (and (= totalInputSize!296 lt!796992) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18861 (BalanceConc!15512) Int)

(assert (=> b!2134412 (= lt!796992 (size!18861 totalInput!851))))

(declare-fun e!1362079 () Bool)

(declare-fun e!1362093 () Bool)

(assert (=> b!2134413 (= e!1362079 (and e!1362093 tp!657586))))

(declare-fun mapNonEmpty!12737 () Bool)

(declare-fun tp!657584 () Bool)

(declare-fun tp!657592 () Bool)

(assert (=> mapNonEmpty!12737 (= mapRes!12738 (and tp!657584 tp!657592))))

(declare-fun mapValue!12738 () List!24196)

(declare-fun mapKey!12736 () (_ BitVec 32))

(declare-fun mapRest!12738 () (Array (_ BitVec 32) List!24196))

(assert (=> mapNonEmpty!12737 (= (arr!4010 (_values!2931 (v!28672 (underlying!5497 (v!28673 (underlying!5498 (cache!2946 cacheUp!979))))))) (store mapRest!12738 mapKey!12736 mapValue!12738))))

(declare-fun res!922283 () Bool)

(assert (=> start!207580 (=> (not res!922283) (not e!1362087))))

(assert (=> start!207580 (= res!922283 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207580 e!1362087))

(declare-fun e!1362095 () Bool)

(declare-fun inv!31769 (CacheFurthestNullable!720) Bool)

(assert (=> start!207580 (and (inv!31769 cacheFurthestNullable!114) e!1362095)))

(assert (=> start!207580 true))

(declare-fun inv!31770 (CacheDown!1758) Bool)

(assert (=> start!207580 (and (inv!31770 cacheDown!1098) e!1362108)))

(declare-fun e!1362101 () Bool)

(declare-fun inv!31771 (CacheUp!1776) Bool)

(assert (=> start!207580 (and (inv!31771 cacheUp!979) e!1362101)))

(declare-fun condSetEmpty!15889 () Bool)

(assert (=> start!207580 (= condSetEmpty!15889 (= z!3839 ((as const (Array Context!2614 Bool)) false)))))

(assert (=> start!207580 setRes!15889))

(assert (=> start!207580 (and (inv!31767 totalInput!851) e!1362078)))

(assert (=> start!207580 e!1362105))

(declare-fun mapIsEmpty!12737 () Bool)

(assert (=> mapIsEmpty!12737 mapRes!12738))

(declare-fun e!1362094 () Bool)

(declare-fun tp!657581 () Bool)

(declare-fun tp!657579 () Bool)

(declare-fun array_inv!2870 (array!8999) Bool)

(assert (=> b!2134414 (= e!1362088 (and tp!657594 tp!657581 tp!657579 (array_inv!2868 (_keys!2949 (v!28674 (underlying!5499 (v!28675 (underlying!5500 (cache!2947 cacheDown!1098))))))) (array_inv!2870 (_values!2932 (v!28674 (underlying!5499 (v!28675 (underlying!5500 (cache!2947 cacheDown!1098))))))) e!1362094))))

(declare-fun b!2134415 () Bool)

(declare-fun lt!796987 () MutLongMap!2651)

(assert (=> b!2134415 (= e!1362113 (and e!1362106 ((_ is LongMap!2651) lt!796987)))))

(assert (=> b!2134415 (= lt!796987 (v!28673 (underlying!5498 (cache!2946 cacheUp!979))))))

(declare-fun b!2134416 () Bool)

(declare-fun tp!657598 () Bool)

(assert (=> b!2134416 (= e!1362115 tp!657598)))

(declare-fun mapNonEmpty!12738 () Bool)

(declare-fun mapRes!12736 () Bool)

(declare-fun tp!657582 () Bool)

(declare-fun tp!657571 () Bool)

(assert (=> mapNonEmpty!12738 (= mapRes!12736 (and tp!657582 tp!657571))))

(declare-fun mapRest!12736 () (Array (_ BitVec 32) List!24195))

(declare-fun mapKey!12738 () (_ BitVec 32))

(declare-fun mapValue!12736 () List!24195)

(assert (=> mapNonEmpty!12738 (= (arr!4011 (_values!2932 (v!28674 (underlying!5499 (v!28675 (underlying!5500 (cache!2947 cacheDown!1098))))))) (store mapRest!12736 mapKey!12738 mapValue!12736))))

(declare-fun b!2134417 () Bool)

(declare-fun tp!657573 () Bool)

(assert (=> b!2134417 (= e!1362094 (and tp!657573 mapRes!12736))))

(declare-fun condMapEmpty!12737 () Bool)

(declare-fun mapDefault!12737 () List!24195)

(assert (=> b!2134417 (= condMapEmpty!12737 (= (arr!4011 (_values!2932 (v!28674 (underlying!5499 (v!28675 (underlying!5500 (cache!2947 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24195)) mapDefault!12737)))))

(declare-fun b!2134418 () Bool)

(assert (=> b!2134418 (= e!1362095 (and e!1362079 (inv!31767 (totalInput!3051 cacheFurthestNullable!114)) e!1362084))))

(declare-fun b!2134419 () Bool)

(declare-fun e!1362090 () Bool)

(assert (=> b!2134419 (= e!1362090 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun tp!657580 () Bool)

(declare-fun tp!657575 () Bool)

(declare-fun array_inv!2871 (array!8997) Bool)

(assert (=> b!2134420 (= e!1362110 (and tp!657595 tp!657580 tp!657575 (array_inv!2868 (_keys!2948 (v!28672 (underlying!5497 (v!28673 (underlying!5498 (cache!2946 cacheUp!979))))))) (array_inv!2871 (_values!2931 (v!28672 (underlying!5497 (v!28673 (underlying!5498 (cache!2946 cacheUp!979))))))) e!1362081))))

(declare-fun b!2134421 () Bool)

(assert (=> b!2134421 (= e!1362103 lastNullablePos!123)))

(declare-fun b!2134422 () Bool)

(declare-fun lt!796986 () MutLongMap!2653)

(assert (=> b!2134422 (= e!1362093 (and e!1362099 ((_ is LongMap!2653) lt!796986)))))

(assert (=> b!2134422 (= lt!796986 (v!28677 (underlying!5502 (cache!2948 cacheFurthestNullable!114))))))

(declare-fun b!2134423 () Bool)

(assert (=> b!2134423 (= e!1362101 e!1362083)))

(declare-fun b!2134424 () Bool)

(declare-fun tp!657590 () Bool)

(assert (=> b!2134424 (= e!1362111 (and (inv!31766 (c!340296 (totalInput!3050 (h!29515 stack!8)))) tp!657590))))

(declare-fun b!2134425 () Bool)

(declare-fun lt!796991 () MutLongMap!2652)

(assert (=> b!2134425 (= e!1362096 (and e!1362109 ((_ is LongMap!2652) lt!796991)))))

(assert (=> b!2134425 (= lt!796991 (v!28675 (underlying!5500 (cache!2947 cacheDown!1098))))))

(declare-fun b!2134426 () Bool)

(declare-fun res!922295 () Bool)

(assert (=> b!2134426 (=> (not res!922295) (not e!1362082))))

(assert (=> b!2134426 (= res!922295 e!1362090)))

(declare-fun res!922285 () Bool)

(assert (=> b!2134426 (=> res!922285 e!1362090)))

(assert (=> b!2134426 (= res!922285 (not (nullableZipper!115 z!3839)))))

(declare-fun mapIsEmpty!12738 () Bool)

(assert (=> mapIsEmpty!12738 mapRes!12736))

(declare-fun setIsEmpty!15889 () Bool)

(assert (=> setIsEmpty!15889 setRes!15888))

(declare-fun tp!657572 () Bool)

(declare-fun setElem!15889 () Context!2614)

(declare-fun setNonEmpty!15889 () Bool)

(assert (=> setNonEmpty!15889 (= setRes!15889 (and tp!657572 (inv!31768 setElem!15889) e!1362102))))

(declare-fun setRest!15888 () (InoxSet Context!2614))

(assert (=> setNonEmpty!15889 (= z!3839 ((_ map or) (store ((as const (Array Context!2614 Bool)) false) setElem!15889 true) setRest!15888))))

(assert (= (and start!207580 res!922283) b!2134412))

(assert (= (and b!2134412 res!922289) b!2134426))

(assert (= (and b!2134426 (not res!922285)) b!2134419))

(assert (= (and b!2134426 res!922295) b!2134404))

(assert (= (and b!2134404 res!922287) b!2134386))

(assert (= (and b!2134386 res!922288) b!2134402))

(assert (= (and b!2134402 res!922291) b!2134400))

(assert (= (and b!2134400 res!922286) b!2134405))

(assert (= (and b!2134405 res!922293) b!2134401))

(assert (= (and b!2134401 res!922282) b!2134396))

(assert (= (and b!2134396 (not res!922284)) b!2134393))

(assert (= (and b!2134393 (not res!922294)) b!2134408))

(assert (= (and b!2134408 (not res!922292)) b!2134384))

(assert (= (and b!2134384 c!340294) b!2134392))

(assert (= (and b!2134384 (not c!340294)) b!2134421))

(assert (= (and b!2134384 (not res!922290)) b!2134385))

(assert (= (and b!2134411 condMapEmpty!12736) mapIsEmpty!12736))

(assert (= (and b!2134411 (not condMapEmpty!12736)) mapNonEmpty!12736))

(assert (= b!2134406 b!2134411))

(assert (= b!2134409 b!2134406))

(assert (= b!2134398 b!2134409))

(assert (= (and b!2134422 ((_ is LongMap!2653) (v!28677 (underlying!5502 (cache!2948 cacheFurthestNullable!114))))) b!2134398))

(assert (= b!2134413 b!2134422))

(assert (= (and b!2134418 ((_ is HashMap!2567) (cache!2948 cacheFurthestNullable!114))) b!2134413))

(assert (= b!2134418 b!2134399))

(assert (= start!207580 b!2134418))

(assert (= (and b!2134417 condMapEmpty!12737) mapIsEmpty!12738))

(assert (= (and b!2134417 (not condMapEmpty!12737)) mapNonEmpty!12738))

(assert (= b!2134414 b!2134417))

(assert (= b!2134391 b!2134414))

(assert (= b!2134410 b!2134391))

(assert (= (and b!2134425 ((_ is LongMap!2652) (v!28675 (underlying!5500 (cache!2947 cacheDown!1098))))) b!2134410))

(assert (= b!2134389 b!2134425))

(assert (= (and b!2134407 ((_ is HashMap!2566) (cache!2947 cacheDown!1098))) b!2134389))

(assert (= start!207580 b!2134407))

(assert (= (and b!2134403 condMapEmpty!12738) mapIsEmpty!12737))

(assert (= (and b!2134403 (not condMapEmpty!12738)) mapNonEmpty!12737))

(assert (= b!2134420 b!2134403))

(assert (= b!2134383 b!2134420))

(assert (= b!2134397 b!2134383))

(assert (= (and b!2134415 ((_ is LongMap!2651) (v!28673 (underlying!5498 (cache!2946 cacheUp!979))))) b!2134397))

(assert (= b!2134387 b!2134415))

(assert (= (and b!2134423 ((_ is HashMap!2565) (cache!2946 cacheUp!979))) b!2134387))

(assert (= start!207580 b!2134423))

(assert (= (and start!207580 condSetEmpty!15889) setIsEmpty!15888))

(assert (= (and start!207580 (not condSetEmpty!15889)) setNonEmpty!15889))

(assert (= setNonEmpty!15889 b!2134390))

(assert (= start!207580 b!2134394))

(assert (= (and b!2134395 condSetEmpty!15888) setIsEmpty!15889))

(assert (= (and b!2134395 (not condSetEmpty!15888)) setNonEmpty!15888))

(assert (= setNonEmpty!15888 b!2134416))

(assert (= b!2134395 b!2134424))

(assert (= b!2134388 b!2134395))

(assert (= (and start!207580 ((_ is Cons!24114) stack!8)) b!2134388))

(declare-fun m!2582642 () Bool)

(assert (=> b!2134414 m!2582642))

(declare-fun m!2582644 () Bool)

(assert (=> b!2134414 m!2582644))

(declare-fun m!2582646 () Bool)

(assert (=> mapNonEmpty!12737 m!2582646))

(declare-fun m!2582648 () Bool)

(assert (=> b!2134404 m!2582648))

(declare-fun m!2582650 () Bool)

(assert (=> b!2134399 m!2582650))

(declare-fun m!2582652 () Bool)

(assert (=> b!2134386 m!2582652))

(declare-fun m!2582654 () Bool)

(assert (=> b!2134406 m!2582654))

(declare-fun m!2582656 () Bool)

(assert (=> b!2134406 m!2582656))

(declare-fun m!2582658 () Bool)

(assert (=> b!2134396 m!2582658))

(declare-fun m!2582660 () Bool)

(assert (=> b!2134396 m!2582660))

(declare-fun m!2582662 () Bool)

(assert (=> b!2134424 m!2582662))

(declare-fun m!2582664 () Bool)

(assert (=> setNonEmpty!15889 m!2582664))

(declare-fun m!2582666 () Bool)

(assert (=> setNonEmpty!15888 m!2582666))

(declare-fun m!2582668 () Bool)

(assert (=> b!2134394 m!2582668))

(declare-fun m!2582670 () Bool)

(assert (=> mapNonEmpty!12736 m!2582670))

(assert (=> b!2134405 m!2582660))

(declare-fun m!2582672 () Bool)

(assert (=> b!2134405 m!2582672))

(declare-fun m!2582674 () Bool)

(assert (=> b!2134401 m!2582674))

(declare-fun m!2582676 () Bool)

(assert (=> mapNonEmpty!12738 m!2582676))

(declare-fun m!2582678 () Bool)

(assert (=> b!2134418 m!2582678))

(declare-fun m!2582680 () Bool)

(assert (=> b!2134426 m!2582680))

(declare-fun m!2582682 () Bool)

(assert (=> b!2134395 m!2582682))

(declare-fun m!2582684 () Bool)

(assert (=> b!2134384 m!2582684))

(declare-fun m!2582686 () Bool)

(assert (=> b!2134384 m!2582686))

(declare-fun m!2582688 () Bool)

(assert (=> b!2134384 m!2582688))

(assert (=> b!2134384 m!2582688))

(declare-fun m!2582690 () Bool)

(assert (=> b!2134384 m!2582690))

(declare-fun m!2582692 () Bool)

(assert (=> b!2134412 m!2582692))

(declare-fun m!2582694 () Bool)

(assert (=> b!2134402 m!2582694))

(declare-fun m!2582696 () Bool)

(assert (=> b!2134408 m!2582696))

(declare-fun m!2582698 () Bool)

(assert (=> b!2134420 m!2582698))

(declare-fun m!2582700 () Bool)

(assert (=> b!2134420 m!2582700))

(declare-fun m!2582702 () Bool)

(assert (=> b!2134388 m!2582702))

(declare-fun m!2582704 () Bool)

(assert (=> start!207580 m!2582704))

(declare-fun m!2582706 () Bool)

(assert (=> start!207580 m!2582706))

(declare-fun m!2582708 () Bool)

(assert (=> start!207580 m!2582708))

(declare-fun m!2582710 () Bool)

(assert (=> start!207580 m!2582710))

(check-sat b_and!172085 (not b_next!63213) (not b!2134403) (not mapNonEmpty!12738) (not b!2134386) (not b!2134395) (not b!2134401) (not start!207580) (not b!2134417) (not b!2134424) (not b!2134402) (not b!2134412) (not b!2134426) (not b!2134420) (not b!2134396) (not b!2134408) (not b!2134416) b_and!172089 (not b!2134411) (not b!2134414) b_and!172091 (not setNonEmpty!15888) b_and!172081 (not b_next!63205) (not b!2134388) (not mapNonEmpty!12736) (not setNonEmpty!15889) (not b_next!63211) (not b!2134406) (not b!2134399) (not b!2134404) (not b!2134384) (not b!2134418) (not b!2134390) (not b_next!63209) (not b_next!63207) (not b_next!63215) (not b!2134405) (not b!2134394) (not mapNonEmpty!12737) b_and!172087 b_and!172083)
(check-sat b_and!172085 (not b_next!63213) b_and!172089 b_and!172091 (not b_next!63211) (not b_next!63209) b_and!172081 (not b_next!63205) (not b_next!63207) (not b_next!63215) b_and!172087 b_and!172083)
