; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206526 () Bool)

(assert start!206526)

(declare-fun b!2114111 () Bool)

(declare-fun b_free!61253 () Bool)

(declare-fun b_next!61957 () Bool)

(assert (=> b!2114111 (= b_free!61253 (not b_next!61957))))

(declare-fun tp!644885 () Bool)

(declare-fun b_and!170833 () Bool)

(assert (=> b!2114111 (= tp!644885 b_and!170833)))

(declare-fun b!2114110 () Bool)

(declare-fun b_free!61255 () Bool)

(declare-fun b_next!61959 () Bool)

(assert (=> b!2114110 (= b_free!61255 (not b_next!61959))))

(declare-fun tp!644895 () Bool)

(declare-fun b_and!170835 () Bool)

(assert (=> b!2114110 (= tp!644895 b_and!170835)))

(declare-fun b!2114129 () Bool)

(declare-fun b_free!61257 () Bool)

(declare-fun b_next!61961 () Bool)

(assert (=> b!2114129 (= b_free!61257 (not b_next!61961))))

(declare-fun tp!644906 () Bool)

(declare-fun b_and!170837 () Bool)

(assert (=> b!2114129 (= tp!644906 b_and!170837)))

(declare-fun b!2114118 () Bool)

(declare-fun b_free!61259 () Bool)

(declare-fun b_next!61963 () Bool)

(assert (=> b!2114118 (= b_free!61259 (not b_next!61963))))

(declare-fun tp!644900 () Bool)

(declare-fun b_and!170839 () Bool)

(assert (=> b!2114118 (= tp!644900 b_and!170839)))

(declare-fun b!2114128 () Bool)

(declare-fun b_free!61261 () Bool)

(declare-fun b_next!61965 () Bool)

(assert (=> b!2114128 (= b_free!61261 (not b_next!61965))))

(declare-fun tp!644898 () Bool)

(declare-fun b_and!170841 () Bool)

(assert (=> b!2114128 (= tp!644898 b_and!170841)))

(declare-fun b!2114147 () Bool)

(declare-fun b_free!61263 () Bool)

(declare-fun b_next!61967 () Bool)

(assert (=> b!2114147 (= b_free!61263 (not b_next!61967))))

(declare-fun tp!644908 () Bool)

(declare-fun b_and!170843 () Bool)

(assert (=> b!2114147 (= tp!644908 b_and!170843)))

(declare-fun b!2114187 () Bool)

(declare-fun e!1345376 () Bool)

(declare-fun e!1345362 () Bool)

(assert (=> b!2114187 (= e!1345376 e!1345362)))

(declare-fun mapIsEmpty!11372 () Bool)

(declare-fun mapRes!11372 () Bool)

(assert (=> mapIsEmpty!11372 mapRes!11372))

(declare-fun setNonEmpty!14135 () Bool)

(declare-fun setRes!14135 () Bool)

(assert (=> setNonEmpty!14135 (= setRes!14135 true)))

(declare-datatypes ((C!11412 0))(
  ( (C!11413 (val!6692 Int)) )
))
(declare-datatypes ((Regex!5633 0))(
  ( (ElementMatch!5633 (c!339213 C!11412)) (Concat!9935 (regOne!11778 Regex!5633) (regTwo!11778 Regex!5633)) (EmptyExpr!5633) (Star!5633 (reg!5962 Regex!5633)) (EmptyLang!5633) (Union!5633 (regOne!11779 Regex!5633) (regTwo!11779 Regex!5633)) )
))
(declare-datatypes ((List!23619 0))(
  ( (Nil!23535) (Cons!23535 (h!28936 Regex!5633) (t!196128 List!23619)) )
))
(declare-datatypes ((Context!2406 0))(
  ( (Context!2407 (exprs!1703 List!23619)) )
))
(declare-datatypes ((tuple3!2760 0))(
  ( (tuple3!2761 (_1!13348 Regex!5633) (_2!13348 Context!2406) (_3!1845 C!11412)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23006 0))(
  ( (tuple2!23007 (_1!13349 tuple3!2760) (_2!13349 (InoxSet Context!2406))) )
))
(declare-datatypes ((List!23620 0))(
  ( (Nil!23536) (Cons!23536 (h!28937 tuple2!23006) (t!196129 List!23620)) )
))
(declare-datatypes ((array!8161 0))(
  ( (array!8162 (arr!3622 (Array (_ BitVec 32) (_ BitVec 64))) (size!18377 (_ BitVec 32))) )
))
(declare-datatypes ((array!8163 0))(
  ( (array!8164 (arr!3623 (Array (_ BitVec 32) List!23620)) (size!18378 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4736 0))(
  ( (LongMapFixedSize!4737 (defaultEntry!2733 Int) (mask!6500 (_ BitVec 32)) (extraKeys!2616 (_ BitVec 32)) (zeroValue!2626 List!23620) (minValue!2626 List!23620) (_size!4787 (_ BitVec 32)) (_keys!2665 array!8161) (_values!2648 array!8163) (_vacant!2429 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9297 0))(
  ( (Cell!9298 (v!28063 LongMapFixedSize!4736)) )
))
(declare-datatypes ((MutLongMap!2368 0))(
  ( (LongMap!2368 (underlying!4931 Cell!9297)) (MutLongMapExt!2367 (__x!15280 Int)) )
))
(declare-datatypes ((List!23621 0))(
  ( (Nil!23537) (Cons!23537 (h!28938 C!11412) (t!196130 List!23621)) )
))
(declare-datatypes ((IArray!15553 0))(
  ( (IArray!15554 (innerList!7834 List!23621)) )
))
(declare-datatypes ((Conc!7774 0))(
  ( (Node!7774 (left!18249 Conc!7774) (right!18579 Conc!7774) (csize!15778 Int) (cheight!7985 Int)) (Leaf!11358 (xs!10716 IArray!15553) (csize!15779 Int)) (Empty!7774) )
))
(declare-datatypes ((BalanceConc!15310 0))(
  ( (BalanceConc!15311 (c!339214 Conc!7774)) )
))
(declare-datatypes ((Hashable!2282 0))(
  ( (HashableExt!2281 (__x!15281 Int)) )
))
(declare-datatypes ((tuple2!23008 0))(
  ( (tuple2!23009 (_1!13350 Context!2406) (_2!13350 C!11412)) )
))
(declare-datatypes ((tuple2!23010 0))(
  ( (tuple2!23011 (_1!13351 tuple2!23008) (_2!13351 (InoxSet Context!2406))) )
))
(declare-datatypes ((List!23622 0))(
  ( (Nil!23538) (Cons!23538 (h!28939 tuple2!23010) (t!196131 List!23622)) )
))
(declare-datatypes ((array!8165 0))(
  ( (array!8166 (arr!3624 (Array (_ BitVec 32) List!23622)) (size!18379 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4738 0))(
  ( (LongMapFixedSize!4739 (defaultEntry!2734 Int) (mask!6501 (_ BitVec 32)) (extraKeys!2617 (_ BitVec 32)) (zeroValue!2627 List!23622) (minValue!2627 List!23622) (_size!4788 (_ BitVec 32)) (_keys!2666 array!8161) (_values!2649 array!8165) (_vacant!2430 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9299 0))(
  ( (Cell!9300 (v!28064 LongMapFixedSize!4738)) )
))
(declare-datatypes ((MutLongMap!2369 0))(
  ( (LongMap!2369 (underlying!4932 Cell!9299)) (MutLongMapExt!2368 (__x!15282 Int)) )
))
(declare-datatypes ((Cell!9301 0))(
  ( (Cell!9302 (v!28065 MutLongMap!2369)) )
))
(declare-datatypes ((StackFrame!6 0))(
  ( (StackFrame!7 (z!5671 (InoxSet Context!2406)) (from!2594 Int) (lastNullablePos!282 Int) (res!917619 Int) (totalInput!2832 BalanceConc!15310)) )
))
(declare-datatypes ((List!23623 0))(
  ( (Nil!23539) (Cons!23539 (h!28940 StackFrame!6) (t!196132 List!23623)) )
))
(declare-datatypes ((Hashable!2283 0))(
  ( (HashableExt!2282 (__x!15283 Int)) )
))
(declare-datatypes ((tuple2!23012 0))(
  ( (tuple2!23013 (_1!13352 Int) (_2!13352 List!23623)) )
))
(declare-datatypes ((MutableMap!2282 0))(
  ( (MutableMapExt!2281 (__x!15284 Int)) (HashMap!2282 (underlying!4933 Cell!9301) (hashF!4205 Hashable!2282) (_size!4789 (_ BitVec 32)) (defaultValue!2444 Int)) )
))
(declare-datatypes ((CacheUp!1574 0))(
  ( (CacheUp!1575 (cache!2663 MutableMap!2282)) )
))
(declare-datatypes ((Cell!9303 0))(
  ( (Cell!9304 (v!28066 MutLongMap!2368)) )
))
(declare-datatypes ((MutableMap!2283 0))(
  ( (MutableMapExt!2282 (__x!15285 Int)) (HashMap!2283 (underlying!4934 Cell!9303) (hashF!4206 Hashable!2283) (_size!4790 (_ BitVec 32)) (defaultValue!2445 Int)) )
))
(declare-datatypes ((CacheDown!1566 0))(
  ( (CacheDown!1567 (cache!2664 MutableMap!2283)) )
))
(declare-datatypes ((tuple3!2762 0))(
  ( (tuple3!2763 (_1!13353 tuple2!23012) (_2!13353 CacheUp!1574) (_3!1846 CacheDown!1566)) )
))
(declare-fun lt!793106 () tuple3!2762)

(declare-fun setElem!14135 () Context!2406)

(declare-fun setRest!14135 () (InoxSet Context!2406))

(assert (=> setNonEmpty!14135 (= (z!5671 (h!28940 (_2!13352 (_1!13353 lt!793106)))) ((_ map or) (store ((as const (Array Context!2406 Bool)) false) setElem!14135 true) setRest!14135))))

(declare-fun b!2114188 () Bool)

(declare-fun e!1345361 () Bool)

(assert (=> b!2114188 (= e!1345361 mapRes!11372)))

(declare-fun condMapEmpty!11373 () Bool)

(declare-fun mapDefault!11372 () List!23622)

(assert (=> b!2114188 (= condMapEmpty!11373 (= (arr!3624 (_values!2649 (v!28064 (underlying!4932 (v!28065 (underlying!4933 (cache!2663 (_2!13353 lt!793106)))))))) ((as const (Array (_ BitVec 32) List!23622)) mapDefault!11372)))))

(declare-fun mapNonEmpty!11372 () Bool)

(assert (=> mapNonEmpty!11372 (= mapRes!11372 true)))

(declare-fun mapKey!11372 () (_ BitVec 32))

(declare-fun mapValue!11373 () List!23622)

(declare-fun mapRest!11373 () (Array (_ BitVec 32) List!23622))

(assert (=> mapNonEmpty!11372 (= (arr!3624 (_values!2649 (v!28064 (underlying!4932 (v!28065 (underlying!4933 (cache!2663 (_2!13353 lt!793106)))))))) (store mapRest!11373 mapKey!11372 mapValue!11373))))

(declare-fun b!2114189 () Bool)

(declare-fun mapRes!11373 () Bool)

(assert (=> b!2114189 (= e!1345362 mapRes!11373)))

(declare-fun condMapEmpty!11372 () Bool)

(declare-fun mapDefault!11373 () List!23620)

(assert (=> b!2114189 (= condMapEmpty!11372 (= (arr!3623 (_values!2648 (v!28063 (underlying!4931 (v!28066 (underlying!4934 (cache!2664 (_3!1846 lt!793106)))))))) ((as const (Array (_ BitVec 32) List!23620)) mapDefault!11373)))))

(declare-fun mapIsEmpty!11373 () Bool)

(assert (=> mapIsEmpty!11373 mapRes!11373))

(declare-fun setIsEmpty!14135 () Bool)

(assert (=> setIsEmpty!14135 setRes!14135))

(declare-fun b!2114190 () Bool)

(declare-fun e!1345369 () Bool)

(declare-fun e!1345367 () Bool)

(assert (=> b!2114190 (= e!1345369 e!1345367)))

(declare-fun b!2114191 () Bool)

(declare-fun e!1345374 () Bool)

(declare-fun e!1345363 () Bool)

(assert (=> b!2114191 (= e!1345374 e!1345363)))

(declare-fun b!2114192 () Bool)

(declare-fun e!1345365 () Bool)

(assert (=> b!2114192 (= e!1345367 e!1345365)))

(declare-fun b!2114127 () Bool)

(declare-fun e!1345370 () Bool)

(declare-fun e!1345375 () Bool)

(declare-fun e!1345368 () Bool)

(assert (=> b!2114127 (and e!1345370 e!1345375 e!1345368)))

(declare-fun b!2114193 () Bool)

(declare-fun e!1345364 () Bool)

(declare-fun e!1345366 () Bool)

(assert (=> b!2114193 (= e!1345364 e!1345366)))

(declare-fun mapNonEmpty!11373 () Bool)

(assert (=> mapNonEmpty!11373 (= mapRes!11373 true)))

(declare-fun mapValue!11372 () List!23620)

(declare-fun mapRest!11372 () (Array (_ BitVec 32) List!23620))

(declare-fun mapKey!11373 () (_ BitVec 32))

(assert (=> mapNonEmpty!11373 (= (arr!3623 (_values!2648 (v!28063 (underlying!4931 (v!28066 (underlying!4934 (cache!2664 (_3!1846 lt!793106)))))))) (store mapRest!11372 mapKey!11373 mapValue!11372))))

(declare-fun b!2114194 () Bool)

(declare-fun e!1345372 () Bool)

(assert (=> b!2114194 (= e!1345370 e!1345372)))

(declare-fun b!2114195 () Bool)

(assert (=> b!2114195 (= e!1345365 e!1345361)))

(declare-fun b!2114196 () Bool)

(declare-fun e!1345371 () Bool)

(declare-fun e!1345373 () Bool)

(assert (=> b!2114196 (= e!1345371 e!1345373)))

(declare-fun b!2114197 () Bool)

(assert (=> b!2114197 (= e!1345372 setRes!14135)))

(declare-fun condSetEmpty!14135 () Bool)

(assert (=> b!2114197 (= condSetEmpty!14135 (= (z!5671 (h!28940 (_2!13352 (_1!13353 lt!793106)))) ((as const (Array Context!2406 Bool)) false)))))

(declare-fun b!2114198 () Bool)

(assert (=> b!2114198 (= e!1345373 e!1345376)))

(declare-fun b!2114199 () Bool)

(declare-fun lt!793121 () MutLongMap!2369)

(get-info :version)

(assert (=> b!2114199 (= e!1345363 (and e!1345369 ((_ is LongMap!2369) lt!793121)))))

(assert (=> b!2114199 (= lt!793121 (v!28065 (underlying!4933 (cache!2663 (_2!13353 lt!793106)))))))

(declare-fun b!2114200 () Bool)

(declare-fun lt!793120 () MutLongMap!2368)

(assert (=> b!2114200 (= e!1345366 (and e!1345371 ((_ is LongMap!2368) lt!793120)))))

(assert (=> b!2114200 (= lt!793120 (v!28066 (underlying!4934 (cache!2664 (_3!1846 lt!793106)))))))

(declare-fun b!2114201 () Bool)

(assert (=> b!2114201 (= e!1345368 e!1345364)))

(declare-fun b!2114202 () Bool)

(assert (=> b!2114202 (= e!1345375 e!1345374)))

(assert (= (and b!2114197 condSetEmpty!14135) setIsEmpty!14135))

(assert (= (and b!2114197 (not condSetEmpty!14135)) setNonEmpty!14135))

(assert (= b!2114194 b!2114197))

(assert (= (and b!2114127 ((_ is Cons!23539) (_2!13352 (_1!13353 lt!793106)))) b!2114194))

(assert (= (and b!2114188 condMapEmpty!11373) mapIsEmpty!11372))

(assert (= (and b!2114188 (not condMapEmpty!11373)) mapNonEmpty!11372))

(assert (= b!2114195 b!2114188))

(assert (= b!2114192 b!2114195))

(assert (= b!2114190 b!2114192))

(assert (= (and b!2114199 ((_ is LongMap!2369) (v!28065 (underlying!4933 (cache!2663 (_2!13353 lt!793106)))))) b!2114190))

(assert (= b!2114191 b!2114199))

(assert (= (and b!2114202 ((_ is HashMap!2282) (cache!2663 (_2!13353 lt!793106)))) b!2114191))

(assert (= b!2114127 b!2114202))

(assert (= (and b!2114189 condMapEmpty!11372) mapIsEmpty!11373))

(assert (= (and b!2114189 (not condMapEmpty!11372)) mapNonEmpty!11373))

(assert (= b!2114187 b!2114189))

(assert (= b!2114198 b!2114187))

(assert (= b!2114196 b!2114198))

(assert (= (and b!2114200 ((_ is LongMap!2368) (v!28066 (underlying!4934 (cache!2664 (_3!1846 lt!793106)))))) b!2114196))

(assert (= b!2114193 b!2114200))

(assert (= (and b!2114201 ((_ is HashMap!2283) (cache!2664 (_3!1846 lt!793106)))) b!2114193))

(assert (= b!2114127 b!2114201))

(declare-fun lambda!78188 () Int)

(declare-fun order!14491 () Int)

(declare-fun order!14489 () Int)

(declare-fun dynLambda!11275 (Int Int) Int)

(declare-fun dynLambda!11276 (Int Int) Int)

(assert (=> b!2114193 (< (dynLambda!11275 order!14489 (defaultValue!2445 (cache!2664 (_3!1846 lt!793106)))) (dynLambda!11276 order!14491 lambda!78188))))

(declare-fun order!14493 () Int)

(declare-fun dynLambda!11277 (Int Int) Int)

(assert (=> b!2114191 (< (dynLambda!11277 order!14493 (defaultValue!2444 (cache!2663 (_2!13353 lt!793106)))) (dynLambda!11276 order!14491 lambda!78188))))

(declare-fun order!14495 () Int)

(declare-fun dynLambda!11278 (Int Int) Int)

(assert (=> b!2114187 (< (dynLambda!11278 order!14495 (defaultEntry!2733 (v!28063 (underlying!4931 (v!28066 (underlying!4934 (cache!2664 (_3!1846 lt!793106)))))))) (dynLambda!11276 order!14491 lambda!78188))))

(declare-fun order!14497 () Int)

(declare-fun dynLambda!11279 (Int Int) Int)

(assert (=> b!2114195 (< (dynLambda!11279 order!14497 (defaultEntry!2734 (v!28064 (underlying!4932 (v!28065 (underlying!4933 (cache!2663 (_2!13353 lt!793106)))))))) (dynLambda!11276 order!14491 lambda!78188))))

(declare-fun m!2570023 () Bool)

(assert (=> mapNonEmpty!11372 m!2570023))

(declare-fun m!2570025 () Bool)

(assert (=> mapNonEmpty!11373 m!2570025))

(declare-fun bs!441112 () Bool)

(declare-fun b!2114120 () Bool)

(assert (= bs!441112 (and b!2114120 b!2114127)))

(declare-fun lambda!78189 () Int)

(assert (=> bs!441112 (not (= lambda!78189 lambda!78188))))

(assert (=> b!2114120 true))

(declare-fun e!1345305 () Bool)

(declare-fun e!1345304 () Bool)

(assert (=> b!2114110 (= e!1345305 (and e!1345304 tp!644895))))

(declare-fun mapIsEmpty!11365 () Bool)

(declare-fun mapRes!11366 () Bool)

(assert (=> mapIsEmpty!11365 mapRes!11366))

(declare-fun e!1345311 () Bool)

(declare-fun e!1345328 () Bool)

(assert (=> b!2114111 (= e!1345311 (and e!1345328 tp!644885))))

(declare-fun b!2114112 () Bool)

(declare-fun e!1345298 () Bool)

(declare-fun tp!644882 () Bool)

(declare-fun mapRes!11365 () Bool)

(assert (=> b!2114112 (= e!1345298 (and tp!644882 mapRes!11365))))

(declare-fun condMapEmpty!11367 () Bool)

(declare-datatypes ((Hashable!2284 0))(
  ( (HashableExt!2283 (__x!15286 Int)) )
))
(declare-datatypes ((tuple3!2764 0))(
  ( (tuple3!2765 (_1!13354 (InoxSet Context!2406)) (_2!13354 Int) (_3!1847 Int)) )
))
(declare-datatypes ((tuple2!23014 0))(
  ( (tuple2!23015 (_1!13355 tuple3!2764) (_2!13355 Int)) )
))
(declare-datatypes ((List!23624 0))(
  ( (Nil!23540) (Cons!23540 (h!28941 tuple2!23014) (t!196133 List!23624)) )
))
(declare-datatypes ((array!8167 0))(
  ( (array!8168 (arr!3625 (Array (_ BitVec 32) List!23624)) (size!18380 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4740 0))(
  ( (LongMapFixedSize!4741 (defaultEntry!2735 Int) (mask!6502 (_ BitVec 32)) (extraKeys!2618 (_ BitVec 32)) (zeroValue!2628 List!23624) (minValue!2628 List!23624) (_size!4791 (_ BitVec 32)) (_keys!2667 array!8161) (_values!2650 array!8167) (_vacant!2431 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9305 0))(
  ( (Cell!9306 (v!28067 LongMapFixedSize!4740)) )
))
(declare-datatypes ((MutLongMap!2370 0))(
  ( (LongMap!2370 (underlying!4935 Cell!9305)) (MutLongMapExt!2369 (__x!15287 Int)) )
))
(declare-datatypes ((Cell!9307 0))(
  ( (Cell!9308 (v!28068 MutLongMap!2370)) )
))
(declare-datatypes ((MutableMap!2284 0))(
  ( (MutableMapExt!2283 (__x!15288 Int)) (HashMap!2284 (underlying!4936 Cell!9307) (hashF!4207 Hashable!2284) (_size!4792 (_ BitVec 32)) (defaultValue!2446 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!548 0))(
  ( (CacheFurthestNullable!549 (cache!2665 MutableMap!2284) (totalInput!2833 BalanceConc!15310)) )
))
(declare-fun cacheFurthestNullable!141 () CacheFurthestNullable!548)

(declare-fun mapDefault!11367 () List!23624)

(assert (=> b!2114112 (= condMapEmpty!11367 (= (arr!3625 (_values!2650 (v!28067 (underlying!4935 (v!28068 (underlying!4936 (cache!2665 cacheFurthestNullable!141))))))) ((as const (Array (_ BitVec 32) List!23624)) mapDefault!11367)))))

(declare-fun b!2114113 () Bool)

(declare-fun e!1345316 () Int)

(assert (=> b!2114113 (= e!1345316 (- 1))))

(declare-fun b!2114114 () Bool)

(declare-fun e!1345324 () Bool)

(declare-fun tp!644887 () Bool)

(declare-fun inv!31115 (Conc!7774) Bool)

(assert (=> b!2114114 (= e!1345324 (and (inv!31115 (c!339214 (totalInput!2833 cacheFurthestNullable!141))) tp!644887))))

(declare-fun b!2114115 () Bool)

(declare-fun res!917613 () Bool)

(declare-fun e!1345301 () Bool)

(assert (=> b!2114115 (=> (not res!917613) (not e!1345301))))

(declare-fun totalInput!1306 () BalanceConc!15310)

(assert (=> b!2114115 (= res!917613 (= (totalInput!2833 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun b!2114116 () Bool)

(declare-fun e!1345319 () Bool)

(declare-fun tp!644907 () Bool)

(declare-fun mapRes!11367 () Bool)

(assert (=> b!2114116 (= e!1345319 (and tp!644907 mapRes!11367))))

(declare-fun condMapEmpty!11366 () Bool)

(declare-fun cacheUp!1110 () CacheUp!1574)

(declare-fun mapDefault!11365 () List!23622)

(assert (=> b!2114116 (= condMapEmpty!11366 (= (arr!3624 (_values!2649 (v!28064 (underlying!4932 (v!28065 (underlying!4933 (cache!2663 cacheUp!1110))))))) ((as const (Array (_ BitVec 32) List!23622)) mapDefault!11365)))))

(declare-fun b!2114117 () Bool)

(declare-fun e!1345314 () Bool)

(declare-fun tp!644888 () Bool)

(declare-fun tp!644904 () Bool)

(assert (=> b!2114117 (= e!1345314 (and tp!644888 tp!644904))))

(declare-fun cacheDown!1229 () CacheDown!1566)

(declare-fun tp!644897 () Bool)

(declare-fun tp!644884 () Bool)

(declare-fun e!1345294 () Bool)

(declare-fun e!1345302 () Bool)

(declare-fun array_inv!2603 (array!8161) Bool)

(declare-fun array_inv!2604 (array!8163) Bool)

(assert (=> b!2114118 (= e!1345302 (and tp!644900 tp!644897 tp!644884 (array_inv!2603 (_keys!2665 (v!28063 (underlying!4931 (v!28066 (underlying!4934 (cache!2664 cacheDown!1229))))))) (array_inv!2604 (_values!2648 (v!28063 (underlying!4931 (v!28066 (underlying!4934 (cache!2664 cacheDown!1229))))))) e!1345294))))

(declare-fun mapNonEmpty!11365 () Bool)

(declare-fun tp!644903 () Bool)

(declare-fun tp!644889 () Bool)

(assert (=> mapNonEmpty!11365 (= mapRes!11367 (and tp!644903 tp!644889))))

(declare-fun mapValue!11367 () List!23622)

(declare-fun mapRest!11367 () (Array (_ BitVec 32) List!23622))

(declare-fun mapKey!11365 () (_ BitVec 32))

(assert (=> mapNonEmpty!11365 (= (arr!3624 (_values!2649 (v!28064 (underlying!4932 (v!28065 (underlying!4933 (cache!2663 cacheUp!1110))))))) (store mapRest!11367 mapKey!11365 mapValue!11367))))

(declare-fun b!2114119 () Bool)

(declare-datatypes ((tuple2!23016 0))(
  ( (tuple2!23017 (_1!13356 BalanceConc!15310) (_2!13356 BalanceConc!15310)) )
))
(declare-fun e!1345300 () tuple2!23016)

(declare-fun call!128497 () tuple2!23016)

(assert (=> b!2114119 (= e!1345300 call!128497)))

(declare-fun res!917617 () Bool)

(declare-fun e!1345325 () Bool)

(assert (=> b!2114120 (=> (not res!917617) (not e!1345325))))

(declare-fun forall!4841 (List!23623 Int) Bool)

(assert (=> b!2114120 (= res!917617 (forall!4841 (_2!13352 (_1!13353 lt!793106)) lambda!78189))))

(declare-fun b!2114121 () Bool)

(declare-fun res!917608 () Bool)

(declare-fun e!1345295 () Bool)

(assert (=> b!2114121 (=> (not res!917608) (not e!1345295))))

(declare-fun lt!793108 () tuple2!23016)

(declare-datatypes ((tuple2!23018 0))(
  ( (tuple2!23019 (_1!13357 List!23621) (_2!13357 List!23621)) )
))
(declare-fun lt!793101 () tuple2!23018)

(declare-fun list!9498 (BalanceConc!15310) List!23621)

(assert (=> b!2114121 (= res!917608 (= (list!9498 (_2!13356 lt!793108)) (_2!13357 lt!793101)))))

(declare-fun mapNonEmpty!11366 () Bool)

(declare-fun tp!644883 () Bool)

(declare-fun tp!644905 () Bool)

(assert (=> mapNonEmpty!11366 (= mapRes!11366 (and tp!644883 tp!644905))))

(declare-fun mapKey!11366 () (_ BitVec 32))

(declare-fun mapValue!11365 () List!23620)

(declare-fun mapRest!11366 () (Array (_ BitVec 32) List!23620))

(assert (=> mapNonEmpty!11366 (= (arr!3623 (_values!2648 (v!28063 (underlying!4931 (v!28066 (underlying!4934 (cache!2664 cacheDown!1229))))))) (store mapRest!11366 mapKey!11366 mapValue!11365))))

(declare-fun b!2114122 () Bool)

(assert (=> b!2114122 (= e!1345300 call!128497)))

(declare-fun b!2114123 () Bool)

(declare-fun res!917618 () Bool)

(assert (=> b!2114123 (=> (not res!917618) (not e!1345301))))

(declare-fun valid!1867 (CacheDown!1566) Bool)

(assert (=> b!2114123 (= res!917618 (valid!1867 cacheDown!1229))))

(declare-fun b!2114124 () Bool)

(declare-fun e!1345320 () Bool)

(declare-fun lt!793105 () MutLongMap!2370)

(assert (=> b!2114124 (= e!1345304 (and e!1345320 ((_ is LongMap!2370) lt!793105)))))

(assert (=> b!2114124 (= lt!793105 (v!28068 (underlying!4936 (cache!2665 cacheFurthestNullable!141))))))

(declare-fun r!15373 () Regex!5633)

(declare-fun b!2114125 () Bool)

(declare-fun input!6660 () BalanceConc!15310)

(declare-fun findLongestMatchWithZipperSequenceV2!78 (Regex!5633 BalanceConc!15310 BalanceConc!15310) tuple2!23016)

(assert (=> b!2114125 (= e!1345295 (= (findLongestMatchWithZipperSequenceV2!78 r!15373 input!6660 totalInput!1306) lt!793108))))

(declare-fun b!2114126 () Bool)

(declare-fun e!1345303 () Bool)

(declare-fun tp!644896 () Bool)

(assert (=> b!2114126 (= e!1345303 (and (inv!31115 (c!339214 input!6660)) tp!644896))))

(declare-fun e!1345313 () Bool)

(assert (=> b!2114127 (= e!1345313 (not true))))

(assert (=> b!2114127 e!1345325))

(declare-fun res!917616 () Bool)

(assert (=> b!2114127 (=> (not res!917616) (not e!1345325))))

(assert (=> b!2114127 (= res!917616 (forall!4841 (_2!13352 (_1!13353 lt!793106)) lambda!78188))))

(declare-fun lt!793110 () Int)

(declare-fun lt!793115 () Int)

(assert (=> b!2114127 (= lt!793110 (+ 1 (- (_1!13352 (_1!13353 lt!793106)) lt!793115)))))

(declare-fun lt!793104 () Int)

(declare-fun lt!793102 () (InoxSet Context!2406))

(declare-fun furthestNullablePositionStackMem!1 ((InoxSet Context!2406) Int BalanceConc!15310 Int Int List!23623 CacheUp!1574 CacheDown!1566 CacheFurthestNullable!548) tuple3!2762)

(assert (=> b!2114127 (= lt!793106 (furthestNullablePositionStackMem!1 lt!793102 lt!793115 totalInput!1306 lt!793104 e!1345316 Nil!23539 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(declare-fun c!339211 () Bool)

(declare-fun nullableZipper!48 ((InoxSet Context!2406)) Bool)

(assert (=> b!2114127 (= c!339211 (nullableZipper!48 lt!793102))))

(declare-fun size!18381 (BalanceConc!15310) Int)

(assert (=> b!2114127 (= lt!793115 (- lt!793104 (size!18381 input!6660)))))

(assert (=> b!2114127 (= lt!793104 (size!18381 totalInput!1306))))

(declare-datatypes ((tuple4!930 0))(
  ( (tuple4!931 (_1!13358 tuple2!23016) (_2!13358 CacheUp!1574) (_3!1848 CacheDown!1566) (_4!465 CacheFurthestNullable!548)) )
))
(declare-fun lt!793100 () tuple4!930)

(declare-fun findLongestMatchZipperSequenceV3Mem!2 ((InoxSet Context!2406) BalanceConc!15310 BalanceConc!15310 CacheUp!1574 CacheDown!1566 CacheFurthestNullable!548) tuple4!930)

(assert (=> b!2114127 (= lt!793100 (findLongestMatchZipperSequenceV3Mem!2 lt!793102 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(assert (=> b!2114127 e!1345295))

(declare-fun res!917614 () Bool)

(assert (=> b!2114127 (=> (not res!917614) (not e!1345295))))

(assert (=> b!2114127 (= res!917614 (= (list!9498 (_1!13356 lt!793108)) (_1!13357 lt!793101)))))

(declare-fun findLongestMatchZipperFastV2!9 ((InoxSet Context!2406) BalanceConc!15310 BalanceConc!15310) tuple2!23016)

(assert (=> b!2114127 (= lt!793108 (findLongestMatchZipperFastV2!9 lt!793102 input!6660 totalInput!1306))))

(declare-datatypes ((Unit!37534 0))(
  ( (Unit!37535) )
))
(declare-fun lt!793112 () Unit!37534)

(declare-fun longestMatchV2SameAsRegex!9 (Regex!5633 (InoxSet Context!2406) BalanceConc!15310 BalanceConc!15310) Unit!37534)

(assert (=> b!2114127 (= lt!793112 (longestMatchV2SameAsRegex!9 r!15373 lt!793102 input!6660 totalInput!1306))))

(declare-fun lt!793111 () List!23621)

(declare-fun sizeTr!94 (List!23621 Int) Int)

(declare-fun size!18382 (List!23621) Int)

(assert (=> b!2114127 (= (sizeTr!94 lt!793111 0) (size!18382 lt!793111))))

(declare-fun lt!793114 () Unit!37534)

(declare-fun lemmaSizeTrEqualsSize!94 (List!23621 Int) Unit!37534)

(assert (=> b!2114127 (= lt!793114 (lemmaSizeTrEqualsSize!94 lt!793111 0))))

(declare-fun e!1345312 () Bool)

(assert (=> b!2114127 e!1345312))

(declare-fun res!917610 () Bool)

(assert (=> b!2114127 (=> (not res!917610) (not e!1345312))))

(declare-fun lt!793109 () tuple2!23016)

(assert (=> b!2114127 (= res!917610 (= (list!9498 (_1!13356 lt!793109)) (_1!13357 lt!793101)))))

(declare-fun findLongestMatch!511 (Regex!5633 List!23621) tuple2!23018)

(assert (=> b!2114127 (= lt!793101 (findLongestMatch!511 r!15373 lt!793111))))

(declare-fun findLongestMatchZipperSequenceV3!4 ((InoxSet Context!2406) BalanceConc!15310 BalanceConc!15310) tuple2!23016)

(assert (=> b!2114127 (= lt!793109 (findLongestMatchZipperSequenceV3!4 lt!793102 input!6660 totalInput!1306))))

(declare-fun lt!793113 () Unit!37534)

(declare-fun longestMatchV3SameAsRegex!4 (Regex!5633 (InoxSet Context!2406) BalanceConc!15310 BalanceConc!15310) Unit!37534)

(assert (=> b!2114127 (= lt!793113 (longestMatchV3SameAsRegex!4 r!15373 lt!793102 input!6660 totalInput!1306))))

(declare-fun focus!271 (Regex!5633) (InoxSet Context!2406))

(assert (=> b!2114127 (= lt!793102 (focus!271 r!15373))))

(declare-fun mapNonEmpty!11367 () Bool)

(declare-fun tp!644901 () Bool)

(declare-fun tp!644890 () Bool)

(assert (=> mapNonEmpty!11367 (= mapRes!11365 (and tp!644901 tp!644890))))

(declare-fun mapRest!11365 () (Array (_ BitVec 32) List!23624))

(declare-fun mapKey!11367 () (_ BitVec 32))

(declare-fun mapValue!11366 () List!23624)

(assert (=> mapNonEmpty!11367 (= (arr!3625 (_values!2650 (v!28067 (underlying!4935 (v!28068 (underlying!4936 (cache!2665 cacheFurthestNullable!141))))))) (store mapRest!11365 mapKey!11367 mapValue!11366))))

(declare-fun tp!644891 () Bool)

(declare-fun tp!644880 () Bool)

(declare-fun e!1345308 () Bool)

(declare-fun array_inv!2605 (array!8167) Bool)

(assert (=> b!2114128 (= e!1345308 (and tp!644898 tp!644880 tp!644891 (array_inv!2603 (_keys!2667 (v!28067 (underlying!4935 (v!28068 (underlying!4936 (cache!2665 cacheFurthestNullable!141))))))) (array_inv!2605 (_values!2650 (v!28067 (underlying!4935 (v!28068 (underlying!4936 (cache!2665 cacheFurthestNullable!141))))))) e!1345298))))

(declare-fun e!1345323 () Bool)

(declare-fun tp!644886 () Bool)

(declare-fun tp!644894 () Bool)

(declare-fun array_inv!2606 (array!8165) Bool)

(assert (=> b!2114129 (= e!1345323 (and tp!644906 tp!644894 tp!644886 (array_inv!2603 (_keys!2666 (v!28064 (underlying!4932 (v!28065 (underlying!4933 (cache!2663 cacheUp!1110))))))) (array_inv!2606 (_values!2649 (v!28064 (underlying!4932 (v!28065 (underlying!4933 (cache!2663 cacheUp!1110))))))) e!1345319))))

(declare-fun b!2114130 () Bool)

(declare-fun e!1345306 () Bool)

(assert (=> b!2114130 (= e!1345320 e!1345306)))

(declare-fun b!2114131 () Bool)

(declare-fun e!1345309 () Bool)

(declare-fun lt!793103 () MutLongMap!2368)

(assert (=> b!2114131 (= e!1345328 (and e!1345309 ((_ is LongMap!2368) lt!793103)))))

(assert (=> b!2114131 (= lt!793103 (v!28066 (underlying!4934 (cache!2664 cacheDown!1229))))))

(declare-fun b!2114132 () Bool)

(declare-fun res!917615 () Bool)

(assert (=> b!2114132 (=> (not res!917615) (not e!1345301))))

(declare-fun valid!1868 (CacheFurthestNullable!548) Bool)

(assert (=> b!2114132 (= res!917615 (valid!1868 cacheFurthestNullable!141))))

(declare-fun res!917612 () Bool)

(assert (=> start!206526 (=> (not res!917612) (not e!1345301))))

(declare-fun validRegex!2223 (Regex!5633) Bool)

(assert (=> start!206526 (= res!917612 (validRegex!2223 r!15373))))

(assert (=> start!206526 e!1345301))

(declare-fun e!1345326 () Bool)

(declare-fun inv!31116 (CacheDown!1566) Bool)

(assert (=> start!206526 (and (inv!31116 cacheDown!1229) e!1345326)))

(assert (=> start!206526 e!1345314))

(declare-fun e!1345327 () Bool)

(declare-fun inv!31117 (CacheUp!1574) Bool)

(assert (=> start!206526 (and (inv!31117 cacheUp!1110) e!1345327)))

(declare-fun inv!31118 (BalanceConc!15310) Bool)

(assert (=> start!206526 (and (inv!31118 input!6660) e!1345303)))

(declare-fun e!1345321 () Bool)

(assert (=> start!206526 (and (inv!31118 totalInput!1306) e!1345321)))

(declare-fun e!1345318 () Bool)

(declare-fun inv!31119 (CacheFurthestNullable!548) Bool)

(assert (=> start!206526 (and (inv!31119 cacheFurthestNullable!141) e!1345318)))

(declare-fun mapIsEmpty!11366 () Bool)

(assert (=> mapIsEmpty!11366 mapRes!11365))

(declare-fun b!2114133 () Bool)

(declare-fun e!1345299 () Bool)

(declare-fun e!1345322 () Bool)

(declare-fun lt!793107 () MutLongMap!2369)

(assert (=> b!2114133 (= e!1345299 (and e!1345322 ((_ is LongMap!2369) lt!793107)))))

(assert (=> b!2114133 (= lt!793107 (v!28065 (underlying!4933 (cache!2663 cacheUp!1110))))))

(declare-fun b!2114134 () Bool)

(declare-fun tp!644892 () Bool)

(assert (=> b!2114134 (= e!1345314 tp!644892)))

(declare-fun b!2114135 () Bool)

(declare-fun e!1345315 () Bool)

(assert (=> b!2114135 (= e!1345327 e!1345315)))

(declare-fun b!2114136 () Bool)

(declare-fun res!917611 () Bool)

(assert (=> b!2114136 (=> (not res!917611) (not e!1345301))))

(declare-fun valid!1869 (CacheUp!1574) Bool)

(assert (=> b!2114136 (= res!917611 (valid!1869 cacheUp!1110))))

(declare-fun b!2114137 () Bool)

(declare-fun e!1345296 () Bool)

(assert (=> b!2114137 (= e!1345322 e!1345296)))

(declare-fun b!2114138 () Bool)

(assert (=> b!2114138 (= e!1345316 (- lt!793115 1))))

(declare-fun b!2114139 () Bool)

(declare-fun e!1345307 () Bool)

(assert (=> b!2114139 (= e!1345309 e!1345307)))

(declare-fun b!2114140 () Bool)

(assert (=> b!2114140 (= e!1345326 e!1345311)))

(declare-fun b!2114141 () Bool)

(assert (=> b!2114141 (= e!1345318 (and e!1345305 (inv!31118 (totalInput!2833 cacheFurthestNullable!141)) e!1345324))))

(declare-fun b!2114142 () Bool)

(declare-fun tp!644899 () Bool)

(assert (=> b!2114142 (= e!1345294 (and tp!644899 mapRes!11366))))

(declare-fun condMapEmpty!11365 () Bool)

(declare-fun mapDefault!11366 () List!23620)

(assert (=> b!2114142 (= condMapEmpty!11365 (= (arr!3623 (_values!2648 (v!28063 (underlying!4931 (v!28066 (underlying!4934 (cache!2664 cacheDown!1229))))))) ((as const (Array (_ BitVec 32) List!23620)) mapDefault!11366)))))

(declare-fun b!2114143 () Bool)

(assert (=> b!2114143 (= e!1345312 (= (list!9498 (_2!13356 lt!793109)) (_2!13357 lt!793101)))))

(declare-fun b!2114144 () Bool)

(assert (=> b!2114144 (= e!1345306 e!1345308)))

(declare-fun b!2114145 () Bool)

(assert (=> b!2114145 (= e!1345301 e!1345313)))

(declare-fun res!917609 () Bool)

(assert (=> b!2114145 (=> (not res!917609) (not e!1345313))))

(declare-fun isSuffix!599 (List!23621 List!23621) Bool)

(assert (=> b!2114145 (= res!917609 (isSuffix!599 lt!793111 (list!9498 totalInput!1306)))))

(assert (=> b!2114145 (= lt!793111 (list!9498 input!6660))))

(declare-fun b!2114146 () Bool)

(assert (=> b!2114146 (= e!1345296 e!1345323)))

(assert (=> b!2114147 (= e!1345315 (and e!1345299 tp!644908))))

(declare-fun c!339212 () Bool)

(declare-fun bm!128492 () Bool)

(declare-fun splitAt!9 (BalanceConc!15310 Int) tuple2!23016)

(assert (=> bm!128492 (= call!128497 (splitAt!9 input!6660 (ite c!339212 0 lt!793110)))))

(declare-fun b!2114148 () Bool)

(assert (=> b!2114148 (= e!1345307 e!1345302)))

(declare-fun b!2114149 () Bool)

(declare-fun tp_is_empty!9455 () Bool)

(assert (=> b!2114149 (= e!1345314 tp_is_empty!9455)))

(declare-fun mapIsEmpty!11367 () Bool)

(assert (=> mapIsEmpty!11367 mapRes!11367))

(declare-fun b!2114150 () Bool)

(declare-fun tp!644893 () Bool)

(assert (=> b!2114150 (= e!1345321 (and (inv!31115 (c!339214 totalInput!1306)) tp!644893))))

(declare-fun b!2114151 () Bool)

(declare-datatypes ((tuple2!23020 0))(
  ( (tuple2!23021 (_1!13359 Unit!37534) (_2!13359 CacheFurthestNullable!548)) )
))
(declare-fun fillUpCache!1 (List!23623 BalanceConc!15310 Int Int Int CacheFurthestNullable!548) tuple2!23020)

(assert (=> b!2114151 (= e!1345325 (= lt!793100 (tuple4!931 e!1345300 (_2!13353 lt!793106) (_3!1846 lt!793106) (_2!13359 (fillUpCache!1 (_2!13352 (_1!13353 lt!793106)) totalInput!1306 lt!793104 (_1!13352 (_1!13353 lt!793106)) 0 cacheFurthestNullable!141)))))))

(assert (=> b!2114151 (= c!339212 (< lt!793110 0))))

(declare-fun b!2114152 () Bool)

(declare-fun tp!644902 () Bool)

(declare-fun tp!644881 () Bool)

(assert (=> b!2114152 (= e!1345314 (and tp!644902 tp!644881))))

(assert (= (and start!206526 res!917612) b!2114136))

(assert (= (and b!2114136 res!917611) b!2114123))

(assert (= (and b!2114123 res!917618) b!2114132))

(assert (= (and b!2114132 res!917615) b!2114115))

(assert (= (and b!2114115 res!917613) b!2114145))

(assert (= (and b!2114145 res!917609) b!2114127))

(assert (= (and b!2114127 res!917610) b!2114143))

(assert (= (and b!2114127 res!917614) b!2114121))

(assert (= (and b!2114121 res!917608) b!2114125))

(assert (= (and b!2114127 c!339211) b!2114138))

(assert (= (and b!2114127 (not c!339211)) b!2114113))

(assert (= (and b!2114127 res!917616) b!2114120))

(assert (= (and b!2114120 res!917617) b!2114151))

(assert (= (and b!2114151 c!339212) b!2114119))

(assert (= (and b!2114151 (not c!339212)) b!2114122))

(assert (= (or b!2114119 b!2114122) bm!128492))

(assert (= (and b!2114142 condMapEmpty!11365) mapIsEmpty!11365))

(assert (= (and b!2114142 (not condMapEmpty!11365)) mapNonEmpty!11366))

(assert (= b!2114118 b!2114142))

(assert (= b!2114148 b!2114118))

(assert (= b!2114139 b!2114148))

(assert (= (and b!2114131 ((_ is LongMap!2368) (v!28066 (underlying!4934 (cache!2664 cacheDown!1229))))) b!2114139))

(assert (= b!2114111 b!2114131))

(assert (= (and b!2114140 ((_ is HashMap!2283) (cache!2664 cacheDown!1229))) b!2114111))

(assert (= start!206526 b!2114140))

(assert (= (and start!206526 ((_ is ElementMatch!5633) r!15373)) b!2114149))

(assert (= (and start!206526 ((_ is Concat!9935) r!15373)) b!2114152))

(assert (= (and start!206526 ((_ is Star!5633) r!15373)) b!2114134))

(assert (= (and start!206526 ((_ is Union!5633) r!15373)) b!2114117))

(assert (= (and b!2114116 condMapEmpty!11366) mapIsEmpty!11367))

(assert (= (and b!2114116 (not condMapEmpty!11366)) mapNonEmpty!11365))

(assert (= b!2114129 b!2114116))

(assert (= b!2114146 b!2114129))

(assert (= b!2114137 b!2114146))

(assert (= (and b!2114133 ((_ is LongMap!2369) (v!28065 (underlying!4933 (cache!2663 cacheUp!1110))))) b!2114137))

(assert (= b!2114147 b!2114133))

(assert (= (and b!2114135 ((_ is HashMap!2282) (cache!2663 cacheUp!1110))) b!2114147))

(assert (= start!206526 b!2114135))

(assert (= start!206526 b!2114126))

(assert (= start!206526 b!2114150))

(assert (= (and b!2114112 condMapEmpty!11367) mapIsEmpty!11366))

(assert (= (and b!2114112 (not condMapEmpty!11367)) mapNonEmpty!11367))

(assert (= b!2114128 b!2114112))

(assert (= b!2114144 b!2114128))

(assert (= b!2114130 b!2114144))

(assert (= (and b!2114124 ((_ is LongMap!2370) (v!28068 (underlying!4936 (cache!2665 cacheFurthestNullable!141))))) b!2114130))

(assert (= b!2114110 b!2114124))

(assert (= (and b!2114141 ((_ is HashMap!2284) (cache!2665 cacheFurthestNullable!141))) b!2114110))

(assert (= b!2114141 b!2114114))

(assert (= start!206526 b!2114141))

(declare-fun m!2570027 () Bool)

(assert (=> bm!128492 m!2570027))

(declare-fun m!2570029 () Bool)

(assert (=> mapNonEmpty!11365 m!2570029))

(declare-fun m!2570031 () Bool)

(assert (=> b!2114121 m!2570031))

(declare-fun m!2570033 () Bool)

(assert (=> b!2114136 m!2570033))

(declare-fun m!2570035 () Bool)

(assert (=> b!2114127 m!2570035))

(declare-fun m!2570037 () Bool)

(assert (=> b!2114127 m!2570037))

(declare-fun m!2570039 () Bool)

(assert (=> b!2114127 m!2570039))

(declare-fun m!2570041 () Bool)

(assert (=> b!2114127 m!2570041))

(declare-fun m!2570043 () Bool)

(assert (=> b!2114127 m!2570043))

(declare-fun m!2570045 () Bool)

(assert (=> b!2114127 m!2570045))

(declare-fun m!2570047 () Bool)

(assert (=> b!2114127 m!2570047))

(declare-fun m!2570049 () Bool)

(assert (=> b!2114127 m!2570049))

(declare-fun m!2570051 () Bool)

(assert (=> b!2114127 m!2570051))

(declare-fun m!2570053 () Bool)

(assert (=> b!2114127 m!2570053))

(declare-fun m!2570055 () Bool)

(assert (=> b!2114127 m!2570055))

(declare-fun m!2570057 () Bool)

(assert (=> b!2114127 m!2570057))

(declare-fun m!2570059 () Bool)

(assert (=> b!2114127 m!2570059))

(declare-fun m!2570061 () Bool)

(assert (=> b!2114127 m!2570061))

(declare-fun m!2570063 () Bool)

(assert (=> b!2114127 m!2570063))

(declare-fun m!2570065 () Bool)

(assert (=> b!2114127 m!2570065))

(declare-fun m!2570067 () Bool)

(assert (=> b!2114127 m!2570067))

(declare-fun m!2570069 () Bool)

(assert (=> b!2114143 m!2570069))

(declare-fun m!2570071 () Bool)

(assert (=> b!2114126 m!2570071))

(declare-fun m!2570073 () Bool)

(assert (=> b!2114128 m!2570073))

(declare-fun m!2570075 () Bool)

(assert (=> b!2114128 m!2570075))

(declare-fun m!2570077 () Bool)

(assert (=> b!2114129 m!2570077))

(declare-fun m!2570079 () Bool)

(assert (=> b!2114129 m!2570079))

(declare-fun m!2570081 () Bool)

(assert (=> b!2114150 m!2570081))

(declare-fun m!2570083 () Bool)

(assert (=> b!2114141 m!2570083))

(declare-fun m!2570085 () Bool)

(assert (=> b!2114132 m!2570085))

(declare-fun m!2570087 () Bool)

(assert (=> b!2114118 m!2570087))

(declare-fun m!2570089 () Bool)

(assert (=> b!2114118 m!2570089))

(declare-fun m!2570091 () Bool)

(assert (=> b!2114151 m!2570091))

(declare-fun m!2570093 () Bool)

(assert (=> b!2114120 m!2570093))

(declare-fun m!2570095 () Bool)

(assert (=> mapNonEmpty!11366 m!2570095))

(declare-fun m!2570097 () Bool)

(assert (=> b!2114114 m!2570097))

(declare-fun m!2570099 () Bool)

(assert (=> start!206526 m!2570099))

(declare-fun m!2570101 () Bool)

(assert (=> start!206526 m!2570101))

(declare-fun m!2570103 () Bool)

(assert (=> start!206526 m!2570103))

(declare-fun m!2570105 () Bool)

(assert (=> start!206526 m!2570105))

(declare-fun m!2570107 () Bool)

(assert (=> start!206526 m!2570107))

(declare-fun m!2570109 () Bool)

(assert (=> start!206526 m!2570109))

(declare-fun m!2570111 () Bool)

(assert (=> b!2114125 m!2570111))

(declare-fun m!2570113 () Bool)

(assert (=> mapNonEmpty!11367 m!2570113))

(declare-fun m!2570115 () Bool)

(assert (=> b!2114123 m!2570115))

(declare-fun m!2570117 () Bool)

(assert (=> b!2114145 m!2570117))

(assert (=> b!2114145 m!2570117))

(declare-fun m!2570119 () Bool)

(assert (=> b!2114145 m!2570119))

(declare-fun m!2570121 () Bool)

(assert (=> b!2114145 m!2570121))

(check-sat b_and!170837 (not b!2114150) (not b!2114151) (not b!2114121) tp_is_empty!9455 (not setNonEmpty!14135) (not b!2114123) (not b!2114117) (not b!2114126) (not b!2114116) b_and!170835 (not b!2114188) (not b!2114189) (not b!2114127) (not b!2114129) (not b!2114141) (not b!2114134) (not b!2114120) (not b!2114195) (not b!2114145) (not b_next!61965) (not mapNonEmpty!11373) (not b!2114142) (not mapNonEmpty!11366) (not b!2114136) (not start!206526) (not b!2114152) (not b_next!61967) (not b!2114132) (not b_next!61961) (not b!2114143) (not b_next!61963) (not b!2114187) (not mapNonEmpty!11365) b_and!170841 (not b!2114128) (not b!2114125) (not b_next!61959) (not b!2114114) b_and!170833 (not mapNonEmpty!11372) b_and!170839 (not b_next!61957) (not mapNonEmpty!11367) (not bm!128492) (not b!2114194) b_and!170843 (not b!2114118) (not b!2114112))
(check-sat b_and!170837 (not b_next!61965) (not b_next!61967) b_and!170841 b_and!170839 (not b_next!61957) b_and!170835 b_and!170843 (not b_next!61961) (not b_next!61963) (not b_next!61959) b_and!170833)
