; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411940 () Bool)

(assert start!411940)

(declare-fun b!4289448 () Bool)

(declare-fun b_free!127327 () Bool)

(declare-fun b_next!128031 () Bool)

(assert (=> b!4289448 (= b_free!127327 (not b_next!128031))))

(declare-fun tp!1314931 () Bool)

(declare-fun b_and!338543 () Bool)

(assert (=> b!4289448 (= tp!1314931 b_and!338543)))

(declare-fun b!4289437 () Bool)

(declare-fun b_free!127329 () Bool)

(declare-fun b_next!128033 () Bool)

(assert (=> b!4289437 (= b_free!127329 (not b_next!128033))))

(declare-fun tp!1314924 () Bool)

(declare-fun b_and!338545 () Bool)

(assert (=> b!4289437 (= tp!1314924 b_and!338545)))

(declare-fun b!4289441 () Bool)

(declare-fun b_free!127331 () Bool)

(declare-fun b_next!128035 () Bool)

(assert (=> b!4289441 (= b_free!127331 (not b_next!128035))))

(declare-fun tp!1314939 () Bool)

(declare-fun b_and!338547 () Bool)

(assert (=> b!4289441 (= tp!1314939 b_and!338547)))

(declare-fun b!4289446 () Bool)

(declare-fun b_free!127333 () Bool)

(declare-fun b_next!128037 () Bool)

(assert (=> b!4289446 (= b_free!127333 (not b_next!128037))))

(declare-fun tp!1314940 () Bool)

(declare-fun b_and!338549 () Bool)

(assert (=> b!4289446 (= tp!1314940 b_and!338549)))

(declare-fun b!4289454 () Bool)

(declare-fun b_free!127335 () Bool)

(declare-fun b_next!128039 () Bool)

(assert (=> b!4289454 (= b_free!127335 (not b_next!128039))))

(declare-fun tp!1314918 () Bool)

(declare-fun b_and!338551 () Bool)

(assert (=> b!4289454 (= tp!1314918 b_and!338551)))

(declare-fun b!4289452 () Bool)

(declare-fun b_free!127337 () Bool)

(declare-fun b_next!128041 () Bool)

(assert (=> b!4289452 (= b_free!127337 (not b_next!128041))))

(declare-fun tp!1314921 () Bool)

(declare-fun b_and!338553 () Bool)

(assert (=> b!4289452 (= tp!1314921 b_and!338553)))

(declare-fun res!1759381 () Bool)

(declare-fun e!2664343 () Bool)

(assert (=> start!411940 (=> (not res!1759381) (not e!2664343))))

(declare-datatypes ((C!26088 0))(
  ( (C!26089 (val!15370 Int)) )
))
(declare-datatypes ((List!47769 0))(
  ( (Nil!47645) (Cons!47645 (h!53065 C!26088) (t!354369 List!47769)) )
))
(declare-datatypes ((IArray!28835 0))(
  ( (IArray!28836 (innerList!14475 List!47769)) )
))
(declare-datatypes ((Conc!14387 0))(
  ( (Node!14387 (left!35392 Conc!14387) (right!35722 Conc!14387) (csize!29004 Int) (cheight!14598 Int)) (Leaf!22261 (xs!17693 IArray!28835) (csize!29005 Int)) (Empty!14387) )
))
(declare-datatypes ((BalanceConc!28264 0))(
  ( (BalanceConc!28265 (c!730224 Conc!14387)) )
))
(declare-fun input!5500 () BalanceConc!28264)

(declare-fun totalInput!793 () BalanceConc!28264)

(declare-fun isSuffix!1032 (List!47769 List!47769) Bool)

(declare-fun list!17350 (BalanceConc!28264) List!47769)

(assert (=> start!411940 (= res!1759381 (isSuffix!1032 (list!17350 input!5500) (list!17350 totalInput!793)))))

(assert (=> start!411940 e!2664343))

(declare-fun e!2664341 () Bool)

(declare-fun inv!63124 (BalanceConc!28264) Bool)

(assert (=> start!411940 (and (inv!63124 totalInput!793) e!2664341)))

(declare-fun e!2664314 () Bool)

(assert (=> start!411940 (and (inv!63124 input!5500) e!2664314)))

(declare-datatypes ((Regex!12945 0))(
  ( (ElementMatch!12945 (c!730225 C!26088)) (Concat!21264 (regOne!26402 Regex!12945) (regTwo!26402 Regex!12945)) (EmptyExpr!12945) (Star!12945 (reg!13274 Regex!12945)) (EmptyLang!12945) (Union!12945 (regOne!26403 Regex!12945) (regTwo!26403 Regex!12945)) )
))
(declare-datatypes ((List!47770 0))(
  ( (Nil!47646) (Cons!47646 (h!53066 Regex!12945) (t!354370 List!47770)) )
))
(declare-datatypes ((Context!5670 0))(
  ( (Context!5671 (exprs!3335 List!47770)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45250 0))(
  ( (tuple2!45251 (_1!25830 (InoxSet Context!5670)) (_2!25830 Int)) )
))
(declare-datatypes ((tuple2!45252 0))(
  ( (tuple2!45253 (_1!25831 tuple2!45250) (_2!25831 Int)) )
))
(declare-datatypes ((List!47771 0))(
  ( (Nil!47647) (Cons!47647 (h!53067 tuple2!45252) (t!354371 List!47771)) )
))
(declare-datatypes ((array!15644 0))(
  ( (array!15645 (arr!6988 (Array (_ BitVec 32) List!47771)) (size!34952 (_ BitVec 32))) )
))
(declare-datatypes ((array!15646 0))(
  ( (array!15647 (arr!6989 (Array (_ BitVec 32) (_ BitVec 64))) (size!34953 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4292 0))(
  ( (HashableExt!4291 (__x!29153 Int)) )
))
(declare-datatypes ((LongMapFixedSize!8752 0))(
  ( (LongMapFixedSize!8753 (defaultEntry!4761 Int) (mask!12818 (_ BitVec 32)) (extraKeys!4625 (_ BitVec 32)) (zeroValue!4635 List!47771) (minValue!4635 List!47771) (_size!8795 (_ BitVec 32)) (_keys!4676 array!15646) (_values!4657 array!15644) (_vacant!4437 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17313 0))(
  ( (Cell!17314 (v!41562 LongMapFixedSize!8752)) )
))
(declare-datatypes ((MutLongMap!4376 0))(
  ( (LongMap!4376 (underlying!8981 Cell!17313)) (MutLongMapExt!4375 (__x!29154 Int)) )
))
(declare-datatypes ((Cell!17315 0))(
  ( (Cell!17316 (v!41563 MutLongMap!4376)) )
))
(declare-datatypes ((MutableMap!4282 0))(
  ( (MutableMapExt!4281 (__x!29155 Int)) (HashMap!4282 (underlying!8982 Cell!17315) (hashF!6324 Hashable!4292) (_size!8796 (_ BitVec 32)) (defaultValue!4453 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!462 0))(
  ( (CacheFindLongestMatch!463 (cache!4422 MutableMap!4282) (totalInput!4343 BalanceConc!28264)) )
))
(declare-fun cacheFindLongestMatch!171 () CacheFindLongestMatch!462)

(declare-fun e!2664329 () Bool)

(declare-fun inv!63125 (CacheFindLongestMatch!462) Bool)

(assert (=> start!411940 (and (inv!63125 cacheFindLongestMatch!171) e!2664329)))

(declare-datatypes ((tuple2!45254 0))(
  ( (tuple2!45255 (_1!25832 Context!5670) (_2!25832 C!26088)) )
))
(declare-datatypes ((tuple2!45256 0))(
  ( (tuple2!45257 (_1!25833 tuple2!45254) (_2!25833 (InoxSet Context!5670))) )
))
(declare-datatypes ((List!47772 0))(
  ( (Nil!47648) (Cons!47648 (h!53068 tuple2!45256) (t!354372 List!47772)) )
))
(declare-datatypes ((array!15648 0))(
  ( (array!15649 (arr!6990 (Array (_ BitVec 32) List!47772)) (size!34954 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8754 0))(
  ( (LongMapFixedSize!8755 (defaultEntry!4762 Int) (mask!12819 (_ BitVec 32)) (extraKeys!4626 (_ BitVec 32)) (zeroValue!4636 List!47772) (minValue!4636 List!47772) (_size!8797 (_ BitVec 32)) (_keys!4677 array!15646) (_values!4658 array!15648) (_vacant!4438 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17317 0))(
  ( (Cell!17318 (v!41564 LongMapFixedSize!8754)) )
))
(declare-datatypes ((MutLongMap!4377 0))(
  ( (LongMap!4377 (underlying!8983 Cell!17317)) (MutLongMapExt!4376 (__x!29156 Int)) )
))
(declare-datatypes ((Hashable!4293 0))(
  ( (HashableExt!4292 (__x!29157 Int)) )
))
(declare-datatypes ((Cell!17319 0))(
  ( (Cell!17320 (v!41565 MutLongMap!4377)) )
))
(declare-datatypes ((MutableMap!4283 0))(
  ( (MutableMapExt!4282 (__x!29158 Int)) (HashMap!4283 (underlying!8984 Cell!17319) (hashF!6325 Hashable!4293) (_size!8798 (_ BitVec 32)) (defaultValue!4454 Int)) )
))
(declare-datatypes ((CacheUp!2796 0))(
  ( (CacheUp!2797 (cache!4423 MutableMap!4283)) )
))
(declare-fun cacheUp!925 () CacheUp!2796)

(declare-fun e!2664327 () Bool)

(declare-fun inv!63126 (CacheUp!2796) Bool)

(assert (=> start!411940 (and (inv!63126 cacheUp!925) e!2664327)))

(declare-datatypes ((tuple3!5406 0))(
  ( (tuple3!5407 (_1!25834 Regex!12945) (_2!25834 Context!5670) (_3!3205 C!26088)) )
))
(declare-datatypes ((tuple2!45258 0))(
  ( (tuple2!45259 (_1!25835 tuple3!5406) (_2!25835 (InoxSet Context!5670))) )
))
(declare-datatypes ((List!47773 0))(
  ( (Nil!47649) (Cons!47649 (h!53069 tuple2!45258) (t!354373 List!47773)) )
))
(declare-datatypes ((array!15650 0))(
  ( (array!15651 (arr!6991 (Array (_ BitVec 32) List!47773)) (size!34955 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8756 0))(
  ( (LongMapFixedSize!8757 (defaultEntry!4763 Int) (mask!12820 (_ BitVec 32)) (extraKeys!4627 (_ BitVec 32)) (zeroValue!4637 List!47773) (minValue!4637 List!47773) (_size!8799 (_ BitVec 32)) (_keys!4678 array!15646) (_values!4659 array!15650) (_vacant!4439 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17321 0))(
  ( (Cell!17322 (v!41566 LongMapFixedSize!8756)) )
))
(declare-datatypes ((MutLongMap!4378 0))(
  ( (LongMap!4378 (underlying!8985 Cell!17321)) (MutLongMapExt!4377 (__x!29159 Int)) )
))
(declare-datatypes ((Cell!17323 0))(
  ( (Cell!17324 (v!41567 MutLongMap!4378)) )
))
(declare-datatypes ((Hashable!4294 0))(
  ( (HashableExt!4293 (__x!29160 Int)) )
))
(declare-datatypes ((MutableMap!4284 0))(
  ( (MutableMapExt!4283 (__x!29161 Int)) (HashMap!4284 (underlying!8986 Cell!17323) (hashF!6326 Hashable!4294) (_size!8800 (_ BitVec 32)) (defaultValue!4455 Int)) )
))
(declare-datatypes ((CacheDown!2914 0))(
  ( (CacheDown!2915 (cache!4424 MutableMap!4284)) )
))
(declare-fun cacheDown!1044 () CacheDown!2914)

(declare-fun e!2664320 () Bool)

(declare-fun inv!63127 (CacheDown!2914) Bool)

(assert (=> start!411940 (and (inv!63127 cacheDown!1044) e!2664320)))

(declare-fun condSetEmpty!26312 () Bool)

(declare-fun z!3746 () (InoxSet Context!5670))

(assert (=> start!411940 (= condSetEmpty!26312 (= z!3746 ((as const (Array Context!5670 Bool)) false)))))

(declare-fun setRes!26312 () Bool)

(assert (=> start!411940 setRes!26312))

(declare-fun b!4289436 () Bool)

(declare-fun e!2664337 () Bool)

(declare-fun e!2664322 () Bool)

(assert (=> b!4289436 (= e!2664337 e!2664322)))

(declare-fun e!2664324 () Bool)

(declare-fun e!2664318 () Bool)

(assert (=> b!4289437 (= e!2664324 (and e!2664318 tp!1314924))))

(declare-fun b!4289438 () Bool)

(assert (=> b!4289438 (= e!2664327 e!2664324)))

(declare-fun b!4289439 () Bool)

(declare-fun e!2664339 () Bool)

(declare-fun lt!1516677 () MutLongMap!4377)

(get-info :version)

(assert (=> b!4289439 (= e!2664318 (and e!2664339 ((_ is LongMap!4377) lt!1516677)))))

(assert (=> b!4289439 (= lt!1516677 (v!41565 (underlying!8984 (cache!4423 cacheUp!925))))))

(declare-fun setIsEmpty!26312 () Bool)

(assert (=> setIsEmpty!26312 setRes!26312))

(declare-fun b!4289440 () Bool)

(declare-fun tp!1314927 () Bool)

(declare-fun inv!63128 (Conc!14387) Bool)

(assert (=> b!4289440 (= e!2664341 (and (inv!63128 (c!730224 totalInput!793)) tp!1314927))))

(declare-fun mapNonEmpty!19719 () Bool)

(declare-fun mapRes!19719 () Bool)

(declare-fun tp!1314935 () Bool)

(declare-fun tp!1314934 () Bool)

(assert (=> mapNonEmpty!19719 (= mapRes!19719 (and tp!1314935 tp!1314934))))

(declare-fun mapRest!19720 () (Array (_ BitVec 32) List!47773))

(declare-fun mapKey!19720 () (_ BitVec 32))

(declare-fun mapValue!19721 () List!47773)

(assert (=> mapNonEmpty!19719 (= (arr!6991 (_values!4659 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044))))))) (store mapRest!19720 mapKey!19720 mapValue!19721))))

(declare-fun tp!1314928 () Bool)

(declare-fun tp!1314923 () Bool)

(declare-fun e!2664333 () Bool)

(declare-fun array_inv!5011 (array!15646) Bool)

(declare-fun array_inv!5012 (array!15644) Bool)

(assert (=> b!4289441 (= e!2664322 (and tp!1314939 tp!1314928 tp!1314923 (array_inv!5011 (_keys!4676 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))))) (array_inv!5012 (_values!4657 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))))) e!2664333))))

(declare-fun b!4289442 () Bool)

(declare-fun e!2664321 () Bool)

(declare-fun e!2664340 () Bool)

(declare-fun lt!1516671 () MutLongMap!4376)

(assert (=> b!4289442 (= e!2664321 (and e!2664340 ((_ is LongMap!4376) lt!1516671)))))

(assert (=> b!4289442 (= lt!1516671 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))))

(declare-fun b!4289443 () Bool)

(declare-fun e!2664328 () Bool)

(assert (=> b!4289443 (= e!2664339 e!2664328)))

(declare-fun b!4289444 () Bool)

(declare-fun e!2664336 () Bool)

(declare-fun tp!1314937 () Bool)

(declare-fun mapRes!19721 () Bool)

(assert (=> b!4289444 (= e!2664336 (and tp!1314937 mapRes!19721))))

(declare-fun condMapEmpty!19720 () Bool)

(declare-fun mapDefault!19721 () List!47772)

(assert (=> b!4289444 (= condMapEmpty!19720 (= (arr!6990 (_values!4658 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925))))))) ((as const (Array (_ BitVec 32) List!47772)) mapDefault!19721)))))

(declare-fun b!4289445 () Bool)

(declare-fun e!2664331 () Bool)

(assert (=> b!4289445 (= e!2664320 e!2664331)))

(declare-fun tp!1314932 () Bool)

(declare-fun tp!1314922 () Bool)

(declare-fun e!2664325 () Bool)

(declare-fun array_inv!5013 (array!15648) Bool)

(assert (=> b!4289446 (= e!2664325 (and tp!1314940 tp!1314922 tp!1314932 (array_inv!5011 (_keys!4677 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925))))))) (array_inv!5013 (_values!4658 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925))))))) e!2664336))))

(declare-fun b!4289447 () Bool)

(declare-fun e!2664323 () Bool)

(declare-fun e!2664334 () Bool)

(assert (=> b!4289447 (= e!2664323 e!2664334)))

(declare-fun e!2664316 () Bool)

(assert (=> b!4289448 (= e!2664331 (and e!2664316 tp!1314931))))

(declare-fun b!4289449 () Bool)

(declare-fun e!2664317 () Bool)

(declare-fun tp!1314938 () Bool)

(assert (=> b!4289449 (= e!2664317 (and (inv!63128 (c!730224 (totalInput!4343 cacheFindLongestMatch!171))) tp!1314938))))

(declare-fun b!4289450 () Bool)

(declare-fun res!1759384 () Bool)

(declare-fun e!2664326 () Bool)

(assert (=> b!4289450 (=> (not res!1759384) (not e!2664326))))

(declare-datatypes ((tuple4!1004 0))(
  ( (tuple4!1005 (_1!25836 Int) (_2!25836 CacheUp!2796) (_3!3206 CacheDown!2914) (_4!502 CacheFindLongestMatch!462)) )
))
(declare-fun lt!1516676 () tuple4!1004)

(declare-fun valid!3400 (CacheFindLongestMatch!462) Bool)

(assert (=> b!4289450 (= res!1759384 (valid!3400 (_4!502 lt!1516676)))))

(declare-fun mapIsEmpty!19719 () Bool)

(declare-fun mapRes!19720 () Bool)

(assert (=> mapIsEmpty!19719 mapRes!19720))

(declare-fun mapIsEmpty!19720 () Bool)

(assert (=> mapIsEmpty!19720 mapRes!19721))

(declare-fun b!4289451 () Bool)

(assert (=> b!4289451 (= e!2664326 (= (totalInput!4343 (_4!502 lt!1516676)) totalInput!793))))

(declare-fun mapNonEmpty!19720 () Bool)

(declare-fun tp!1314926 () Bool)

(declare-fun tp!1314917 () Bool)

(assert (=> mapNonEmpty!19720 (= mapRes!19721 (and tp!1314926 tp!1314917))))

(declare-fun mapValue!19720 () List!47772)

(declare-fun mapRest!19721 () (Array (_ BitVec 32) List!47772))

(declare-fun mapKey!19721 () (_ BitVec 32))

(assert (=> mapNonEmpty!19720 (= (arr!6990 (_values!4658 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925))))))) (store mapRest!19721 mapKey!19721 mapValue!19720))))

(declare-fun e!2664342 () Bool)

(declare-fun setNonEmpty!26312 () Bool)

(declare-fun setElem!26312 () Context!5670)

(declare-fun tp!1314936 () Bool)

(declare-fun inv!63129 (Context!5670) Bool)

(assert (=> setNonEmpty!26312 (= setRes!26312 (and tp!1314936 (inv!63129 setElem!26312) e!2664342))))

(declare-fun setRest!26312 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26312 (= z!3746 ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26312 true) setRest!26312))))

(declare-fun e!2664338 () Bool)

(declare-fun e!2664315 () Bool)

(declare-fun tp!1314925 () Bool)

(declare-fun tp!1314916 () Bool)

(declare-fun array_inv!5014 (array!15650) Bool)

(assert (=> b!4289452 (= e!2664338 (and tp!1314921 tp!1314925 tp!1314916 (array_inv!5011 (_keys!4678 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044))))))) (array_inv!5014 (_values!4659 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044))))))) e!2664315))))

(declare-fun b!4289453 () Bool)

(assert (=> b!4289453 (= e!2664340 e!2664337)))

(declare-fun e!2664332 () Bool)

(assert (=> b!4289454 (= e!2664332 (and e!2664321 tp!1314918))))

(declare-fun b!4289455 () Bool)

(assert (=> b!4289455 (= e!2664334 e!2664338)))

(declare-fun b!4289456 () Bool)

(declare-fun res!1759379 () Bool)

(assert (=> b!4289456 (=> (not res!1759379) (not e!2664326))))

(declare-fun valid!3401 (CacheDown!2914) Bool)

(assert (=> b!4289456 (= res!1759379 (valid!3401 (_3!3206 lt!1516676)))))

(declare-fun b!4289457 () Bool)

(declare-fun tp!1314933 () Bool)

(assert (=> b!4289457 (= e!2664333 (and tp!1314933 mapRes!19720))))

(declare-fun condMapEmpty!19719 () Bool)

(declare-fun mapDefault!19720 () List!47771)

(assert (=> b!4289457 (= condMapEmpty!19719 (= (arr!6988 (_values!4657 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))))) ((as const (Array (_ BitVec 32) List!47771)) mapDefault!19720)))))

(declare-fun b!4289458 () Bool)

(declare-fun e!2664335 () Bool)

(declare-fun lt!1516675 () Int)

(assert (=> b!4289458 (= e!2664335 (and (<= 0 (_1!25836 lt!1516676)) (<= (_1!25836 lt!1516676) lt!1516675)))))

(declare-fun b!4289459 () Bool)

(declare-fun lt!1516673 () MutLongMap!4378)

(assert (=> b!4289459 (= e!2664316 (and e!2664323 ((_ is LongMap!4378) lt!1516673)))))

(assert (=> b!4289459 (= lt!1516673 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044))))))

(declare-fun b!4289460 () Bool)

(assert (=> b!4289460 (= e!2664329 (and e!2664332 (inv!63124 (totalInput!4343 cacheFindLongestMatch!171)) e!2664317))))

(declare-fun b!4289461 () Bool)

(declare-fun res!1759380 () Bool)

(assert (=> b!4289461 (=> (not res!1759380) (not e!2664343))))

(assert (=> b!4289461 (= res!1759380 (= (totalInput!4343 cacheFindLongestMatch!171) totalInput!793))))

(declare-fun b!4289462 () Bool)

(declare-fun tp!1314929 () Bool)

(assert (=> b!4289462 (= e!2664314 (and (inv!63128 (c!730224 input!5500)) tp!1314929))))

(declare-fun b!4289463 () Bool)

(assert (=> b!4289463 (= e!2664328 e!2664325)))

(declare-fun b!4289464 () Bool)

(declare-fun tp!1314919 () Bool)

(assert (=> b!4289464 (= e!2664315 (and tp!1314919 mapRes!19719))))

(declare-fun condMapEmpty!19721 () Bool)

(declare-fun mapDefault!19719 () List!47773)

(assert (=> b!4289464 (= condMapEmpty!19721 (= (arr!6991 (_values!4659 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044))))))) ((as const (Array (_ BitVec 32) List!47773)) mapDefault!19719)))))

(declare-fun b!4289465 () Bool)

(declare-fun res!1759385 () Bool)

(assert (=> b!4289465 (=> (not res!1759385) (not e!2664326))))

(declare-fun valid!3402 (CacheUp!2796) Bool)

(assert (=> b!4289465 (= res!1759385 (valid!3402 (_2!25836 lt!1516676)))))

(declare-fun mapNonEmpty!19721 () Bool)

(declare-fun tp!1314930 () Bool)

(declare-fun tp!1314920 () Bool)

(assert (=> mapNonEmpty!19721 (= mapRes!19720 (and tp!1314930 tp!1314920))))

(declare-fun mapValue!19719 () List!47771)

(declare-fun mapKey!19719 () (_ BitVec 32))

(declare-fun mapRest!19719 () (Array (_ BitVec 32) List!47771))

(assert (=> mapNonEmpty!19721 (= (arr!6988 (_values!4657 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))))) (store mapRest!19719 mapKey!19719 mapValue!19719))))

(declare-fun b!4289466 () Bool)

(declare-fun tp!1314915 () Bool)

(assert (=> b!4289466 (= e!2664342 tp!1314915)))

(declare-fun b!4289467 () Bool)

(assert (=> b!4289467 (= e!2664343 (not e!2664335))))

(declare-fun res!1759382 () Bool)

(assert (=> b!4289467 (=> res!1759382 e!2664335)))

(declare-fun isBalanced!3881 (Conc!14387) Bool)

(assert (=> b!4289467 (= res!1759382 (not (isBalanced!3881 (c!730224 input!5500))))))

(assert (=> b!4289467 e!2664326))

(declare-fun res!1759383 () Bool)

(assert (=> b!4289467 (=> (not res!1759383) (not e!2664326))))

(declare-fun lt!1516674 () Int)

(declare-fun lt!1516672 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!26 ((InoxSet Context!5670) Int BalanceConc!28264 Int) Int)

(assert (=> b!4289467 (= res!1759383 (= (_1!25836 lt!1516676) (findLongestMatchInnerZipperFastV2!26 z!3746 lt!1516672 totalInput!793 lt!1516674)))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!8 ((InoxSet Context!5670) Int BalanceConc!28264 Int CacheUp!2796 CacheDown!2914 CacheFindLongestMatch!462) tuple4!1004)

(assert (=> b!4289467 (= lt!1516676 (findLongestMatchInnerZipperFastV2Mem!8 z!3746 lt!1516672 totalInput!793 lt!1516674 cacheUp!925 cacheDown!1044 cacheFindLongestMatch!171))))

(assert (=> b!4289467 (= lt!1516672 (- lt!1516674 lt!1516675))))

(declare-fun size!34956 (BalanceConc!28264) Int)

(assert (=> b!4289467 (= lt!1516675 (size!34956 input!5500))))

(assert (=> b!4289467 (= lt!1516674 (size!34956 totalInput!793))))

(declare-fun mapIsEmpty!19721 () Bool)

(assert (=> mapIsEmpty!19721 mapRes!19719))

(assert (= (and start!411940 res!1759381) b!4289461))

(assert (= (and b!4289461 res!1759380) b!4289467))

(assert (= (and b!4289467 res!1759383) b!4289465))

(assert (= (and b!4289465 res!1759385) b!4289456))

(assert (= (and b!4289456 res!1759379) b!4289450))

(assert (= (and b!4289450 res!1759384) b!4289451))

(assert (= (and b!4289467 (not res!1759382)) b!4289458))

(assert (= start!411940 b!4289440))

(assert (= start!411940 b!4289462))

(assert (= (and b!4289457 condMapEmpty!19719) mapIsEmpty!19719))

(assert (= (and b!4289457 (not condMapEmpty!19719)) mapNonEmpty!19721))

(assert (= b!4289441 b!4289457))

(assert (= b!4289436 b!4289441))

(assert (= b!4289453 b!4289436))

(assert (= (and b!4289442 ((_ is LongMap!4376) (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))) b!4289453))

(assert (= b!4289454 b!4289442))

(assert (= (and b!4289460 ((_ is HashMap!4282) (cache!4422 cacheFindLongestMatch!171))) b!4289454))

(assert (= b!4289460 b!4289449))

(assert (= start!411940 b!4289460))

(assert (= (and b!4289444 condMapEmpty!19720) mapIsEmpty!19720))

(assert (= (and b!4289444 (not condMapEmpty!19720)) mapNonEmpty!19720))

(assert (= b!4289446 b!4289444))

(assert (= b!4289463 b!4289446))

(assert (= b!4289443 b!4289463))

(assert (= (and b!4289439 ((_ is LongMap!4377) (v!41565 (underlying!8984 (cache!4423 cacheUp!925))))) b!4289443))

(assert (= b!4289437 b!4289439))

(assert (= (and b!4289438 ((_ is HashMap!4283) (cache!4423 cacheUp!925))) b!4289437))

(assert (= start!411940 b!4289438))

(assert (= (and b!4289464 condMapEmpty!19721) mapIsEmpty!19721))

(assert (= (and b!4289464 (not condMapEmpty!19721)) mapNonEmpty!19719))

(assert (= b!4289452 b!4289464))

(assert (= b!4289455 b!4289452))

(assert (= b!4289447 b!4289455))

(assert (= (and b!4289459 ((_ is LongMap!4378) (v!41567 (underlying!8986 (cache!4424 cacheDown!1044))))) b!4289447))

(assert (= b!4289448 b!4289459))

(assert (= (and b!4289445 ((_ is HashMap!4284) (cache!4424 cacheDown!1044))) b!4289448))

(assert (= start!411940 b!4289445))

(assert (= (and start!411940 condSetEmpty!26312) setIsEmpty!26312))

(assert (= (and start!411940 (not condSetEmpty!26312)) setNonEmpty!26312))

(assert (= setNonEmpty!26312 b!4289466))

(declare-fun m!4884031 () Bool)

(assert (=> b!4289449 m!4884031))

(declare-fun m!4884033 () Bool)

(assert (=> b!4289460 m!4884033))

(declare-fun m!4884035 () Bool)

(assert (=> b!4289456 m!4884035))

(declare-fun m!4884037 () Bool)

(assert (=> mapNonEmpty!19719 m!4884037))

(declare-fun m!4884039 () Bool)

(assert (=> b!4289450 m!4884039))

(declare-fun m!4884041 () Bool)

(assert (=> mapNonEmpty!19720 m!4884041))

(declare-fun m!4884043 () Bool)

(assert (=> b!4289440 m!4884043))

(declare-fun m!4884045 () Bool)

(assert (=> b!4289452 m!4884045))

(declare-fun m!4884047 () Bool)

(assert (=> b!4289452 m!4884047))

(declare-fun m!4884049 () Bool)

(assert (=> b!4289446 m!4884049))

(declare-fun m!4884051 () Bool)

(assert (=> b!4289446 m!4884051))

(declare-fun m!4884053 () Bool)

(assert (=> setNonEmpty!26312 m!4884053))

(declare-fun m!4884055 () Bool)

(assert (=> start!411940 m!4884055))

(declare-fun m!4884057 () Bool)

(assert (=> start!411940 m!4884057))

(declare-fun m!4884059 () Bool)

(assert (=> start!411940 m!4884059))

(assert (=> start!411940 m!4884055))

(declare-fun m!4884061 () Bool)

(assert (=> start!411940 m!4884061))

(declare-fun m!4884063 () Bool)

(assert (=> start!411940 m!4884063))

(declare-fun m!4884065 () Bool)

(assert (=> start!411940 m!4884065))

(declare-fun m!4884067 () Bool)

(assert (=> start!411940 m!4884067))

(assert (=> start!411940 m!4884057))

(declare-fun m!4884069 () Bool)

(assert (=> start!411940 m!4884069))

(declare-fun m!4884071 () Bool)

(assert (=> b!4289465 m!4884071))

(declare-fun m!4884073 () Bool)

(assert (=> b!4289462 m!4884073))

(declare-fun m!4884075 () Bool)

(assert (=> b!4289441 m!4884075))

(declare-fun m!4884077 () Bool)

(assert (=> b!4289441 m!4884077))

(declare-fun m!4884079 () Bool)

(assert (=> mapNonEmpty!19721 m!4884079))

(declare-fun m!4884081 () Bool)

(assert (=> b!4289467 m!4884081))

(declare-fun m!4884083 () Bool)

(assert (=> b!4289467 m!4884083))

(declare-fun m!4884085 () Bool)

(assert (=> b!4289467 m!4884085))

(declare-fun m!4884087 () Bool)

(assert (=> b!4289467 m!4884087))

(declare-fun m!4884089 () Bool)

(assert (=> b!4289467 m!4884089))

(check-sat (not setNonEmpty!26312) b_and!338545 b_and!338553 (not b!4289446) (not b!4289466) (not b!4289440) (not mapNonEmpty!19720) b_and!338551 (not b!4289465) (not b!4289449) (not start!411940) (not b!4289467) (not b_next!128035) (not b_next!128031) b_and!338547 (not mapNonEmpty!19721) (not b_next!128039) (not b!4289457) (not b!4289444) (not b!4289462) (not b_next!128041) (not mapNonEmpty!19719) (not b!4289441) (not b!4289450) (not b!4289464) b_and!338543 b_and!338549 (not b!4289452) (not b_next!128037) (not b!4289456) (not b!4289460) (not b_next!128033))
(check-sat b_and!338545 b_and!338553 b_and!338551 (not b_next!128041) b_and!338543 b_and!338549 (not b_next!128037) (not b_next!128033) (not b_next!128035) (not b_next!128031) b_and!338547 (not b_next!128039))
(get-model)

(declare-fun d!1265438 () Bool)

(assert (=> d!1265438 (= (inv!63124 (totalInput!4343 cacheFindLongestMatch!171)) (isBalanced!3881 (c!730224 (totalInput!4343 cacheFindLongestMatch!171))))))

(declare-fun bs!602896 () Bool)

(assert (= bs!602896 d!1265438))

(declare-fun m!4884091 () Bool)

(assert (=> bs!602896 m!4884091))

(assert (=> b!4289460 d!1265438))

(declare-fun d!1265440 () Bool)

(assert (=> d!1265440 (= (array_inv!5011 (_keys!4677 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925))))))) (bvsge (size!34953 (_keys!4677 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289446 d!1265440))

(declare-fun d!1265442 () Bool)

(assert (=> d!1265442 (= (array_inv!5013 (_values!4658 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925))))))) (bvsge (size!34954 (_values!4658 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289446 d!1265442))

(declare-fun d!1265444 () Bool)

(assert (=> d!1265444 (= (array_inv!5011 (_keys!4678 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044))))))) (bvsge (size!34953 (_keys!4678 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289452 d!1265444))

(declare-fun d!1265446 () Bool)

(assert (=> d!1265446 (= (array_inv!5014 (_values!4659 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044))))))) (bvsge (size!34955 (_values!4659 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289452 d!1265446))

(declare-fun d!1265448 () Bool)

(declare-fun c!730228 () Bool)

(assert (=> d!1265448 (= c!730228 ((_ is Node!14387) (c!730224 input!5500)))))

(declare-fun e!2664348 () Bool)

(assert (=> d!1265448 (= (inv!63128 (c!730224 input!5500)) e!2664348)))

(declare-fun b!4289474 () Bool)

(declare-fun inv!63130 (Conc!14387) Bool)

(assert (=> b!4289474 (= e!2664348 (inv!63130 (c!730224 input!5500)))))

(declare-fun b!4289475 () Bool)

(declare-fun e!2664349 () Bool)

(assert (=> b!4289475 (= e!2664348 e!2664349)))

(declare-fun res!1759388 () Bool)

(assert (=> b!4289475 (= res!1759388 (not ((_ is Leaf!22261) (c!730224 input!5500))))))

(assert (=> b!4289475 (=> res!1759388 e!2664349)))

(declare-fun b!4289476 () Bool)

(declare-fun inv!63131 (Conc!14387) Bool)

(assert (=> b!4289476 (= e!2664349 (inv!63131 (c!730224 input!5500)))))

(assert (= (and d!1265448 c!730228) b!4289474))

(assert (= (and d!1265448 (not c!730228)) b!4289475))

(assert (= (and b!4289475 (not res!1759388)) b!4289476))

(declare-fun m!4884093 () Bool)

(assert (=> b!4289474 m!4884093))

(declare-fun m!4884095 () Bool)

(assert (=> b!4289476 m!4884095))

(assert (=> b!4289462 d!1265448))

(declare-fun d!1265450 () Bool)

(declare-fun lambda!131491 () Int)

(declare-fun forall!8548 (List!47770 Int) Bool)

(assert (=> d!1265450 (= (inv!63129 setElem!26312) (forall!8548 (exprs!3335 setElem!26312) lambda!131491))))

(declare-fun bs!602897 () Bool)

(assert (= bs!602897 d!1265450))

(declare-fun m!4884097 () Bool)

(assert (=> bs!602897 m!4884097))

(assert (=> setNonEmpty!26312 d!1265450))

(declare-fun d!1265452 () Bool)

(declare-fun c!730229 () Bool)

(assert (=> d!1265452 (= c!730229 ((_ is Node!14387) (c!730224 (totalInput!4343 cacheFindLongestMatch!171))))))

(declare-fun e!2664350 () Bool)

(assert (=> d!1265452 (= (inv!63128 (c!730224 (totalInput!4343 cacheFindLongestMatch!171))) e!2664350)))

(declare-fun b!4289477 () Bool)

(assert (=> b!4289477 (= e!2664350 (inv!63130 (c!730224 (totalInput!4343 cacheFindLongestMatch!171))))))

(declare-fun b!4289478 () Bool)

(declare-fun e!2664351 () Bool)

(assert (=> b!4289478 (= e!2664350 e!2664351)))

(declare-fun res!1759389 () Bool)

(assert (=> b!4289478 (= res!1759389 (not ((_ is Leaf!22261) (c!730224 (totalInput!4343 cacheFindLongestMatch!171)))))))

(assert (=> b!4289478 (=> res!1759389 e!2664351)))

(declare-fun b!4289479 () Bool)

(assert (=> b!4289479 (= e!2664351 (inv!63131 (c!730224 (totalInput!4343 cacheFindLongestMatch!171))))))

(assert (= (and d!1265452 c!730229) b!4289477))

(assert (= (and d!1265452 (not c!730229)) b!4289478))

(assert (= (and b!4289478 (not res!1759389)) b!4289479))

(declare-fun m!4884099 () Bool)

(assert (=> b!4289477 m!4884099))

(declare-fun m!4884101 () Bool)

(assert (=> b!4289479 m!4884101))

(assert (=> b!4289449 d!1265452))

(declare-fun d!1265454 () Bool)

(declare-fun validCacheMapUp!417 (MutableMap!4283) Bool)

(assert (=> d!1265454 (= (valid!3402 (_2!25836 lt!1516676)) (validCacheMapUp!417 (cache!4423 (_2!25836 lt!1516676))))))

(declare-fun bs!602898 () Bool)

(assert (= bs!602898 d!1265454))

(declare-fun m!4884103 () Bool)

(assert (=> bs!602898 m!4884103))

(assert (=> b!4289465 d!1265454))

(declare-fun d!1265456 () Bool)

(declare-fun res!1759392 () Bool)

(declare-fun e!2664354 () Bool)

(assert (=> d!1265456 (=> (not res!1759392) (not e!2664354))))

(assert (=> d!1265456 (= res!1759392 ((_ is HashMap!4282) (cache!4422 cacheFindLongestMatch!171)))))

(assert (=> d!1265456 (= (inv!63125 cacheFindLongestMatch!171) e!2664354)))

(declare-fun b!4289482 () Bool)

(declare-fun validCacheMapFindLongestMatch!74 (MutableMap!4282 BalanceConc!28264) Bool)

(assert (=> b!4289482 (= e!2664354 (validCacheMapFindLongestMatch!74 (cache!4422 cacheFindLongestMatch!171) (totalInput!4343 cacheFindLongestMatch!171)))))

(assert (= (and d!1265456 res!1759392) b!4289482))

(declare-fun m!4884105 () Bool)

(assert (=> b!4289482 m!4884105))

(assert (=> start!411940 d!1265456))

(declare-fun d!1265458 () Bool)

(declare-fun list!17351 (Conc!14387) List!47769)

(assert (=> d!1265458 (= (list!17350 input!5500) (list!17351 (c!730224 input!5500)))))

(declare-fun bs!602899 () Bool)

(assert (= bs!602899 d!1265458))

(declare-fun m!4884107 () Bool)

(assert (=> bs!602899 m!4884107))

(assert (=> start!411940 d!1265458))

(declare-fun d!1265460 () Bool)

(assert (=> d!1265460 (= (inv!63124 totalInput!793) (isBalanced!3881 (c!730224 totalInput!793)))))

(declare-fun bs!602900 () Bool)

(assert (= bs!602900 d!1265460))

(declare-fun m!4884109 () Bool)

(assert (=> bs!602900 m!4884109))

(assert (=> start!411940 d!1265460))

(declare-fun d!1265462 () Bool)

(declare-fun res!1759395 () Bool)

(declare-fun e!2664357 () Bool)

(assert (=> d!1265462 (=> (not res!1759395) (not e!2664357))))

(assert (=> d!1265462 (= res!1759395 ((_ is HashMap!4284) (cache!4424 cacheDown!1044)))))

(assert (=> d!1265462 (= (inv!63127 cacheDown!1044) e!2664357)))

(declare-fun b!4289485 () Bool)

(declare-fun validCacheMapDown!448 (MutableMap!4284) Bool)

(assert (=> b!4289485 (= e!2664357 (validCacheMapDown!448 (cache!4424 cacheDown!1044)))))

(assert (= (and d!1265462 res!1759395) b!4289485))

(declare-fun m!4884111 () Bool)

(assert (=> b!4289485 m!4884111))

(assert (=> start!411940 d!1265462))

(declare-fun d!1265464 () Bool)

(assert (=> d!1265464 (= (list!17350 totalInput!793) (list!17351 (c!730224 totalInput!793)))))

(declare-fun bs!602901 () Bool)

(assert (= bs!602901 d!1265464))

(declare-fun m!4884113 () Bool)

(assert (=> bs!602901 m!4884113))

(assert (=> start!411940 d!1265464))

(declare-fun d!1265466 () Bool)

(declare-fun e!2664360 () Bool)

(assert (=> d!1265466 e!2664360))

(declare-fun res!1759398 () Bool)

(assert (=> d!1265466 (=> res!1759398 e!2664360)))

(declare-fun lt!1516680 () Bool)

(assert (=> d!1265466 (= res!1759398 (not lt!1516680))))

(declare-fun drop!2190 (List!47769 Int) List!47769)

(declare-fun size!34957 (List!47769) Int)

(assert (=> d!1265466 (= lt!1516680 (= (list!17350 input!5500) (drop!2190 (list!17350 totalInput!793) (- (size!34957 (list!17350 totalInput!793)) (size!34957 (list!17350 input!5500))))))))

(assert (=> d!1265466 (= (isSuffix!1032 (list!17350 input!5500) (list!17350 totalInput!793)) lt!1516680)))

(declare-fun b!4289488 () Bool)

(assert (=> b!4289488 (= e!2664360 (>= (size!34957 (list!17350 totalInput!793)) (size!34957 (list!17350 input!5500))))))

(assert (= (and d!1265466 (not res!1759398)) b!4289488))

(assert (=> d!1265466 m!4884057))

(declare-fun m!4884115 () Bool)

(assert (=> d!1265466 m!4884115))

(assert (=> d!1265466 m!4884055))

(declare-fun m!4884117 () Bool)

(assert (=> d!1265466 m!4884117))

(assert (=> d!1265466 m!4884057))

(declare-fun m!4884119 () Bool)

(assert (=> d!1265466 m!4884119))

(assert (=> b!4289488 m!4884057))

(assert (=> b!4289488 m!4884115))

(assert (=> b!4289488 m!4884055))

(assert (=> b!4289488 m!4884117))

(assert (=> start!411940 d!1265466))

(declare-fun d!1265468 () Bool)

(assert (=> d!1265468 (= (inv!63124 input!5500) (isBalanced!3881 (c!730224 input!5500)))))

(declare-fun bs!602902 () Bool)

(assert (= bs!602902 d!1265468))

(assert (=> bs!602902 m!4884083))

(assert (=> start!411940 d!1265468))

(declare-fun d!1265470 () Bool)

(declare-fun res!1759401 () Bool)

(declare-fun e!2664363 () Bool)

(assert (=> d!1265470 (=> (not res!1759401) (not e!2664363))))

(assert (=> d!1265470 (= res!1759401 ((_ is HashMap!4283) (cache!4423 cacheUp!925)))))

(assert (=> d!1265470 (= (inv!63126 cacheUp!925) e!2664363)))

(declare-fun b!4289491 () Bool)

(assert (=> b!4289491 (= e!2664363 (validCacheMapUp!417 (cache!4423 cacheUp!925)))))

(assert (= (and d!1265470 res!1759401) b!4289491))

(declare-fun m!4884121 () Bool)

(assert (=> b!4289491 m!4884121))

(assert (=> start!411940 d!1265470))

(declare-fun d!1265472 () Bool)

(assert (=> d!1265472 (= (array_inv!5011 (_keys!4676 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))))) (bvsge (size!34953 (_keys!4676 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289441 d!1265472))

(declare-fun d!1265474 () Bool)

(assert (=> d!1265474 (= (array_inv!5012 (_values!4657 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))))) (bvsge (size!34952 (_values!4657 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))))) #b00000000000000000000000000000000))))

(assert (=> b!4289441 d!1265474))

(declare-fun b!4289502 () Bool)

(declare-fun res!1759416 () Bool)

(declare-fun e!2664368 () Bool)

(assert (=> b!4289502 (=> (not res!1759416) (not e!2664368))))

(declare-fun lt!1516683 () tuple4!1004)

(assert (=> b!4289502 (= res!1759416 (valid!3400 (_4!502 lt!1516683)))))

(declare-fun d!1265476 () Bool)

(assert (=> d!1265476 e!2664368))

(declare-fun res!1759414 () Bool)

(assert (=> d!1265476 (=> (not res!1759414) (not e!2664368))))

(assert (=> d!1265476 (= res!1759414 (= (_1!25836 lt!1516683) (findLongestMatchInnerZipperFastV2!26 z!3746 lt!1516672 totalInput!793 lt!1516674)))))

(declare-fun choose!26140 ((InoxSet Context!5670) Int BalanceConc!28264 Int CacheUp!2796 CacheDown!2914 CacheFindLongestMatch!462) tuple4!1004)

(assert (=> d!1265476 (= lt!1516683 (choose!26140 z!3746 lt!1516672 totalInput!793 lt!1516674 cacheUp!925 cacheDown!1044 cacheFindLongestMatch!171))))

(declare-fun e!2664369 () Bool)

(assert (=> d!1265476 e!2664369))

(declare-fun res!1759415 () Bool)

(assert (=> d!1265476 (=> (not res!1759415) (not e!2664369))))

(assert (=> d!1265476 (= res!1759415 (>= lt!1516672 0))))

(assert (=> d!1265476 (= (findLongestMatchInnerZipperFastV2Mem!8 z!3746 lt!1516672 totalInput!793 lt!1516674 cacheUp!925 cacheDown!1044 cacheFindLongestMatch!171) lt!1516683)))

(declare-fun b!4289503 () Bool)

(assert (=> b!4289503 (= e!2664369 (<= lt!1516672 (size!34956 totalInput!793)))))

(declare-fun b!4289504 () Bool)

(declare-fun res!1759412 () Bool)

(assert (=> b!4289504 (=> (not res!1759412) (not e!2664368))))

(assert (=> b!4289504 (= res!1759412 (valid!3402 (_2!25836 lt!1516683)))))

(declare-fun b!4289505 () Bool)

(declare-fun res!1759413 () Bool)

(assert (=> b!4289505 (=> (not res!1759413) (not e!2664368))))

(assert (=> b!4289505 (= res!1759413 (valid!3401 (_3!3206 lt!1516683)))))

(declare-fun b!4289506 () Bool)

(assert (=> b!4289506 (= e!2664368 (= (totalInput!4343 (_4!502 lt!1516683)) totalInput!793))))

(assert (= (and d!1265476 res!1759415) b!4289503))

(assert (= (and d!1265476 res!1759414) b!4289504))

(assert (= (and b!4289504 res!1759412) b!4289505))

(assert (= (and b!4289505 res!1759413) b!4289502))

(assert (= (and b!4289502 res!1759416) b!4289506))

(declare-fun m!4884123 () Bool)

(assert (=> b!4289505 m!4884123))

(declare-fun m!4884125 () Bool)

(assert (=> b!4289502 m!4884125))

(assert (=> b!4289503 m!4884081))

(assert (=> d!1265476 m!4884089))

(declare-fun m!4884127 () Bool)

(assert (=> d!1265476 m!4884127))

(declare-fun m!4884129 () Bool)

(assert (=> b!4289504 m!4884129))

(assert (=> b!4289467 d!1265476))

(declare-fun b!4289519 () Bool)

(declare-fun e!2664375 () Bool)

(declare-fun e!2664374 () Bool)

(assert (=> b!4289519 (= e!2664375 e!2664374)))

(declare-fun res!1759429 () Bool)

(assert (=> b!4289519 (=> (not res!1759429) (not e!2664374))))

(declare-fun height!1891 (Conc!14387) Int)

(assert (=> b!4289519 (= res!1759429 (<= (- 1) (- (height!1891 (left!35392 (c!730224 input!5500))) (height!1891 (right!35722 (c!730224 input!5500))))))))

(declare-fun b!4289520 () Bool)

(declare-fun isEmpty!28022 (Conc!14387) Bool)

(assert (=> b!4289520 (= e!2664374 (not (isEmpty!28022 (right!35722 (c!730224 input!5500)))))))

(declare-fun b!4289521 () Bool)

(declare-fun res!1759430 () Bool)

(assert (=> b!4289521 (=> (not res!1759430) (not e!2664374))))

(assert (=> b!4289521 (= res!1759430 (isBalanced!3881 (right!35722 (c!730224 input!5500))))))

(declare-fun d!1265478 () Bool)

(declare-fun res!1759431 () Bool)

(assert (=> d!1265478 (=> res!1759431 e!2664375)))

(assert (=> d!1265478 (= res!1759431 (not ((_ is Node!14387) (c!730224 input!5500))))))

(assert (=> d!1265478 (= (isBalanced!3881 (c!730224 input!5500)) e!2664375)))

(declare-fun b!4289522 () Bool)

(declare-fun res!1759432 () Bool)

(assert (=> b!4289522 (=> (not res!1759432) (not e!2664374))))

(assert (=> b!4289522 (= res!1759432 (<= (- (height!1891 (left!35392 (c!730224 input!5500))) (height!1891 (right!35722 (c!730224 input!5500)))) 1))))

(declare-fun b!4289523 () Bool)

(declare-fun res!1759433 () Bool)

(assert (=> b!4289523 (=> (not res!1759433) (not e!2664374))))

(assert (=> b!4289523 (= res!1759433 (isBalanced!3881 (left!35392 (c!730224 input!5500))))))

(declare-fun b!4289524 () Bool)

(declare-fun res!1759434 () Bool)

(assert (=> b!4289524 (=> (not res!1759434) (not e!2664374))))

(assert (=> b!4289524 (= res!1759434 (not (isEmpty!28022 (left!35392 (c!730224 input!5500)))))))

(assert (= (and d!1265478 (not res!1759431)) b!4289519))

(assert (= (and b!4289519 res!1759429) b!4289522))

(assert (= (and b!4289522 res!1759432) b!4289523))

(assert (= (and b!4289523 res!1759433) b!4289521))

(assert (= (and b!4289521 res!1759430) b!4289524))

(assert (= (and b!4289524 res!1759434) b!4289520))

(declare-fun m!4884131 () Bool)

(assert (=> b!4289520 m!4884131))

(declare-fun m!4884133 () Bool)

(assert (=> b!4289523 m!4884133))

(declare-fun m!4884135 () Bool)

(assert (=> b!4289519 m!4884135))

(declare-fun m!4884137 () Bool)

(assert (=> b!4289519 m!4884137))

(declare-fun m!4884139 () Bool)

(assert (=> b!4289521 m!4884139))

(declare-fun m!4884141 () Bool)

(assert (=> b!4289524 m!4884141))

(assert (=> b!4289522 m!4884135))

(assert (=> b!4289522 m!4884137))

(assert (=> b!4289467 d!1265478))

(declare-fun d!1265480 () Bool)

(declare-fun lt!1516686 () Int)

(assert (=> d!1265480 (= lt!1516686 (size!34957 (list!17350 totalInput!793)))))

(declare-fun size!34958 (Conc!14387) Int)

(assert (=> d!1265480 (= lt!1516686 (size!34958 (c!730224 totalInput!793)))))

(assert (=> d!1265480 (= (size!34956 totalInput!793) lt!1516686)))

(declare-fun bs!602903 () Bool)

(assert (= bs!602903 d!1265480))

(assert (=> bs!602903 m!4884057))

(assert (=> bs!602903 m!4884057))

(assert (=> bs!602903 m!4884115))

(declare-fun m!4884143 () Bool)

(assert (=> bs!602903 m!4884143))

(assert (=> b!4289467 d!1265480))

(declare-fun b!4289541 () Bool)

(declare-fun e!2664387 () Bool)

(assert (=> b!4289541 (= e!2664387 (<= lt!1516672 (size!34956 totalInput!793)))))

(declare-fun b!4289542 () Bool)

(declare-fun e!2664386 () Bool)

(declare-fun lostCauseZipper!637 ((InoxSet Context!5670)) Bool)

(assert (=> b!4289542 (= e!2664386 (lostCauseZipper!637 z!3746))))

(declare-fun b!4289543 () Bool)

(declare-fun e!2664389 () Int)

(assert (=> b!4289543 (= e!2664389 0)))

(declare-fun b!4289544 () Bool)

(declare-fun e!2664388 () Int)

(assert (=> b!4289544 (= e!2664389 e!2664388)))

(declare-fun lt!1516693 () (InoxSet Context!5670))

(declare-fun derivationStepZipper!541 ((InoxSet Context!5670) C!26088) (InoxSet Context!5670))

(declare-fun apply!10828 (BalanceConc!28264 Int) C!26088)

(assert (=> b!4289544 (= lt!1516693 (derivationStepZipper!541 z!3746 (apply!10828 totalInput!793 lt!1516672)))))

(declare-fun lt!1516694 () Int)

(assert (=> b!4289544 (= lt!1516694 (findLongestMatchInnerZipperFastV2!26 lt!1516693 (+ lt!1516672 1) totalInput!793 lt!1516674))))

(declare-fun c!730236 () Bool)

(assert (=> b!4289544 (= c!730236 (> lt!1516694 0))))

(declare-fun b!4289545 () Bool)

(declare-fun e!2664390 () Int)

(assert (=> b!4289545 (= e!2664390 0)))

(declare-fun b!4289546 () Bool)

(assert (=> b!4289546 (= e!2664388 (+ 1 lt!1516694))))

(declare-fun b!4289547 () Bool)

(declare-fun c!730237 () Bool)

(declare-fun nullableZipper!760 ((InoxSet Context!5670)) Bool)

(assert (=> b!4289547 (= c!730237 (nullableZipper!760 lt!1516693))))

(assert (=> b!4289547 (= e!2664388 e!2664390)))

(declare-fun b!4289548 () Bool)

(assert (=> b!4289548 (= e!2664390 1)))

(declare-fun d!1265482 () Bool)

(declare-fun lt!1516695 () Int)

(assert (=> d!1265482 (and (>= lt!1516695 0) (<= lt!1516695 (- lt!1516674 lt!1516672)))))

(assert (=> d!1265482 (= lt!1516695 e!2664389)))

(declare-fun c!730238 () Bool)

(assert (=> d!1265482 (= c!730238 e!2664386)))

(declare-fun res!1759439 () Bool)

(assert (=> d!1265482 (=> res!1759439 e!2664386)))

(assert (=> d!1265482 (= res!1759439 (= lt!1516672 lt!1516674))))

(assert (=> d!1265482 e!2664387))

(declare-fun res!1759440 () Bool)

(assert (=> d!1265482 (=> (not res!1759440) (not e!2664387))))

(assert (=> d!1265482 (= res!1759440 (>= lt!1516672 0))))

(assert (=> d!1265482 (= (findLongestMatchInnerZipperFastV2!26 z!3746 lt!1516672 totalInput!793 lt!1516674) lt!1516695)))

(assert (= (and d!1265482 res!1759440) b!4289541))

(assert (= (and d!1265482 (not res!1759439)) b!4289542))

(assert (= (and d!1265482 c!730238) b!4289543))

(assert (= (and d!1265482 (not c!730238)) b!4289544))

(assert (= (and b!4289544 c!730236) b!4289546))

(assert (= (and b!4289544 (not c!730236)) b!4289547))

(assert (= (and b!4289547 c!730237) b!4289548))

(assert (= (and b!4289547 (not c!730237)) b!4289545))

(assert (=> b!4289541 m!4884081))

(declare-fun m!4884145 () Bool)

(assert (=> b!4289542 m!4884145))

(declare-fun m!4884147 () Bool)

(assert (=> b!4289544 m!4884147))

(assert (=> b!4289544 m!4884147))

(declare-fun m!4884149 () Bool)

(assert (=> b!4289544 m!4884149))

(declare-fun m!4884151 () Bool)

(assert (=> b!4289544 m!4884151))

(declare-fun m!4884153 () Bool)

(assert (=> b!4289547 m!4884153))

(assert (=> b!4289467 d!1265482))

(declare-fun d!1265484 () Bool)

(declare-fun lt!1516696 () Int)

(assert (=> d!1265484 (= lt!1516696 (size!34957 (list!17350 input!5500)))))

(assert (=> d!1265484 (= lt!1516696 (size!34958 (c!730224 input!5500)))))

(assert (=> d!1265484 (= (size!34956 input!5500) lt!1516696)))

(declare-fun bs!602904 () Bool)

(assert (= bs!602904 d!1265484))

(assert (=> bs!602904 m!4884055))

(assert (=> bs!602904 m!4884055))

(assert (=> bs!602904 m!4884117))

(declare-fun m!4884155 () Bool)

(assert (=> bs!602904 m!4884155))

(assert (=> b!4289467 d!1265484))

(declare-fun d!1265486 () Bool)

(assert (=> d!1265486 (= (valid!3400 (_4!502 lt!1516676)) (validCacheMapFindLongestMatch!74 (cache!4422 (_4!502 lt!1516676)) (totalInput!4343 (_4!502 lt!1516676))))))

(declare-fun bs!602905 () Bool)

(assert (= bs!602905 d!1265486))

(declare-fun m!4884157 () Bool)

(assert (=> bs!602905 m!4884157))

(assert (=> b!4289450 d!1265486))

(declare-fun d!1265488 () Bool)

(declare-fun c!730239 () Bool)

(assert (=> d!1265488 (= c!730239 ((_ is Node!14387) (c!730224 totalInput!793)))))

(declare-fun e!2664391 () Bool)

(assert (=> d!1265488 (= (inv!63128 (c!730224 totalInput!793)) e!2664391)))

(declare-fun b!4289549 () Bool)

(assert (=> b!4289549 (= e!2664391 (inv!63130 (c!730224 totalInput!793)))))

(declare-fun b!4289550 () Bool)

(declare-fun e!2664392 () Bool)

(assert (=> b!4289550 (= e!2664391 e!2664392)))

(declare-fun res!1759441 () Bool)

(assert (=> b!4289550 (= res!1759441 (not ((_ is Leaf!22261) (c!730224 totalInput!793))))))

(assert (=> b!4289550 (=> res!1759441 e!2664392)))

(declare-fun b!4289551 () Bool)

(assert (=> b!4289551 (= e!2664392 (inv!63131 (c!730224 totalInput!793)))))

(assert (= (and d!1265488 c!730239) b!4289549))

(assert (= (and d!1265488 (not c!730239)) b!4289550))

(assert (= (and b!4289550 (not res!1759441)) b!4289551))

(declare-fun m!4884159 () Bool)

(assert (=> b!4289549 m!4884159))

(declare-fun m!4884161 () Bool)

(assert (=> b!4289551 m!4884161))

(assert (=> b!4289440 d!1265488))

(declare-fun d!1265490 () Bool)

(assert (=> d!1265490 (= (valid!3401 (_3!3206 lt!1516676)) (validCacheMapDown!448 (cache!4424 (_3!3206 lt!1516676))))))

(declare-fun bs!602906 () Bool)

(assert (= bs!602906 d!1265490))

(declare-fun m!4884163 () Bool)

(assert (=> bs!602906 m!4884163))

(assert (=> b!4289456 d!1265490))

(declare-fun setRes!26318 () Bool)

(declare-fun e!2664406 () Bool)

(declare-fun e!2664407 () Bool)

(declare-fun tp_is_empty!23113 () Bool)

(declare-fun mapValue!19724 () List!47772)

(declare-fun tp!1314963 () Bool)

(declare-fun b!4289566 () Bool)

(assert (=> b!4289566 (= e!2664406 (and (inv!63129 (_1!25832 (_1!25833 (h!53068 mapValue!19724)))) e!2664407 tp_is_empty!23113 setRes!26318 tp!1314963))))

(declare-fun condSetEmpty!26317 () Bool)

(assert (=> b!4289566 (= condSetEmpty!26317 (= (_2!25833 (h!53068 mapValue!19724)) ((as const (Array Context!5670 Bool)) false)))))

(declare-fun b!4289567 () Bool)

(declare-fun e!2664408 () Bool)

(declare-fun tp!1314965 () Bool)

(assert (=> b!4289567 (= e!2664408 tp!1314965)))

(declare-fun setIsEmpty!26317 () Bool)

(declare-fun setRes!26317 () Bool)

(assert (=> setIsEmpty!26317 setRes!26317))

(declare-fun setNonEmpty!26317 () Bool)

(declare-fun setElem!26317 () Context!5670)

(declare-fun tp!1314962 () Bool)

(declare-fun e!2664410 () Bool)

(assert (=> setNonEmpty!26317 (= setRes!26317 (and tp!1314962 (inv!63129 setElem!26317) e!2664410))))

(declare-fun mapDefault!19724 () List!47772)

(declare-fun setRest!26317 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26317 (= (_2!25833 (h!53068 mapDefault!19724)) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26317 true) setRest!26317))))

(declare-fun tp!1314959 () Bool)

(declare-fun setNonEmpty!26318 () Bool)

(declare-fun setElem!26318 () Context!5670)

(declare-fun e!2664405 () Bool)

(assert (=> setNonEmpty!26318 (= setRes!26318 (and tp!1314959 (inv!63129 setElem!26318) e!2664405))))

(declare-fun setRest!26318 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26318 (= (_2!25833 (h!53068 mapValue!19724)) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26318 true) setRest!26318))))

(declare-fun setIsEmpty!26318 () Bool)

(assert (=> setIsEmpty!26318 setRes!26318))

(declare-fun b!4289568 () Bool)

(declare-fun tp!1314960 () Bool)

(assert (=> b!4289568 (= e!2664405 tp!1314960)))

(declare-fun condMapEmpty!19724 () Bool)

(assert (=> mapNonEmpty!19720 (= condMapEmpty!19724 (= mapRest!19721 ((as const (Array (_ BitVec 32) List!47772)) mapDefault!19724)))))

(declare-fun e!2664409 () Bool)

(declare-fun mapRes!19724 () Bool)

(assert (=> mapNonEmpty!19720 (= tp!1314926 (and e!2664409 mapRes!19724))))

(declare-fun tp!1314964 () Bool)

(declare-fun b!4289569 () Bool)

(assert (=> b!4289569 (= e!2664409 (and (inv!63129 (_1!25832 (_1!25833 (h!53068 mapDefault!19724)))) e!2664408 tp_is_empty!23113 setRes!26317 tp!1314964))))

(declare-fun condSetEmpty!26318 () Bool)

(assert (=> b!4289569 (= condSetEmpty!26318 (= (_2!25833 (h!53068 mapDefault!19724)) ((as const (Array Context!5670 Bool)) false)))))

(declare-fun b!4289570 () Bool)

(declare-fun tp!1314966 () Bool)

(assert (=> b!4289570 (= e!2664410 tp!1314966)))

(declare-fun mapNonEmpty!19724 () Bool)

(declare-fun tp!1314967 () Bool)

(assert (=> mapNonEmpty!19724 (= mapRes!19724 (and tp!1314967 e!2664406))))

(declare-fun mapRest!19724 () (Array (_ BitVec 32) List!47772))

(declare-fun mapKey!19724 () (_ BitVec 32))

(assert (=> mapNonEmpty!19724 (= mapRest!19721 (store mapRest!19724 mapKey!19724 mapValue!19724))))

(declare-fun b!4289571 () Bool)

(declare-fun tp!1314961 () Bool)

(assert (=> b!4289571 (= e!2664407 tp!1314961)))

(declare-fun mapIsEmpty!19724 () Bool)

(assert (=> mapIsEmpty!19724 mapRes!19724))

(assert (= (and mapNonEmpty!19720 condMapEmpty!19724) mapIsEmpty!19724))

(assert (= (and mapNonEmpty!19720 (not condMapEmpty!19724)) mapNonEmpty!19724))

(assert (= b!4289566 b!4289571))

(assert (= (and b!4289566 condSetEmpty!26317) setIsEmpty!26318))

(assert (= (and b!4289566 (not condSetEmpty!26317)) setNonEmpty!26318))

(assert (= setNonEmpty!26318 b!4289568))

(assert (= (and mapNonEmpty!19724 ((_ is Cons!47648) mapValue!19724)) b!4289566))

(assert (= b!4289569 b!4289567))

(assert (= (and b!4289569 condSetEmpty!26318) setIsEmpty!26317))

(assert (= (and b!4289569 (not condSetEmpty!26318)) setNonEmpty!26317))

(assert (= setNonEmpty!26317 b!4289570))

(assert (= (and mapNonEmpty!19720 ((_ is Cons!47648) mapDefault!19724)) b!4289569))

(declare-fun m!4884165 () Bool)

(assert (=> b!4289569 m!4884165))

(declare-fun m!4884167 () Bool)

(assert (=> setNonEmpty!26318 m!4884167))

(declare-fun m!4884169 () Bool)

(assert (=> b!4289566 m!4884169))

(declare-fun m!4884171 () Bool)

(assert (=> setNonEmpty!26317 m!4884171))

(declare-fun m!4884173 () Bool)

(assert (=> mapNonEmpty!19724 m!4884173))

(declare-fun b!4289580 () Bool)

(declare-fun e!2664417 () Bool)

(declare-fun tp!1314976 () Bool)

(assert (=> b!4289580 (= e!2664417 tp!1314976)))

(declare-fun e!2664419 () Bool)

(declare-fun b!4289581 () Bool)

(declare-fun e!2664418 () Bool)

(declare-fun tp!1314978 () Bool)

(declare-fun setRes!26321 () Bool)

(assert (=> b!4289581 (= e!2664418 (and (inv!63129 (_1!25832 (_1!25833 (h!53068 mapValue!19720)))) e!2664419 tp_is_empty!23113 setRes!26321 tp!1314978))))

(declare-fun condSetEmpty!26321 () Bool)

(assert (=> b!4289581 (= condSetEmpty!26321 (= (_2!25833 (h!53068 mapValue!19720)) ((as const (Array Context!5670 Bool)) false)))))

(assert (=> mapNonEmpty!19720 (= tp!1314917 e!2664418)))

(declare-fun setIsEmpty!26321 () Bool)

(assert (=> setIsEmpty!26321 setRes!26321))

(declare-fun tp!1314977 () Bool)

(declare-fun setNonEmpty!26321 () Bool)

(declare-fun setElem!26321 () Context!5670)

(assert (=> setNonEmpty!26321 (= setRes!26321 (and tp!1314977 (inv!63129 setElem!26321) e!2664417))))

(declare-fun setRest!26321 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26321 (= (_2!25833 (h!53068 mapValue!19720)) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26321 true) setRest!26321))))

(declare-fun b!4289582 () Bool)

(declare-fun tp!1314979 () Bool)

(assert (=> b!4289582 (= e!2664419 tp!1314979)))

(assert (= b!4289581 b!4289582))

(assert (= (and b!4289581 condSetEmpty!26321) setIsEmpty!26321))

(assert (= (and b!4289581 (not condSetEmpty!26321)) setNonEmpty!26321))

(assert (= setNonEmpty!26321 b!4289580))

(assert (= (and mapNonEmpty!19720 ((_ is Cons!47648) mapValue!19720)) b!4289581))

(declare-fun m!4884175 () Bool)

(assert (=> b!4289581 m!4884175))

(declare-fun m!4884177 () Bool)

(assert (=> setNonEmpty!26321 m!4884177))

(declare-fun b!4289583 () Bool)

(declare-fun e!2664420 () Bool)

(declare-fun tp!1314980 () Bool)

(assert (=> b!4289583 (= e!2664420 tp!1314980)))

(declare-fun e!2664422 () Bool)

(declare-fun tp!1314982 () Bool)

(declare-fun e!2664421 () Bool)

(declare-fun b!4289584 () Bool)

(declare-fun setRes!26322 () Bool)

(assert (=> b!4289584 (= e!2664421 (and (inv!63129 (_1!25832 (_1!25833 (h!53068 (zeroValue!4636 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925)))))))))) e!2664422 tp_is_empty!23113 setRes!26322 tp!1314982))))

(declare-fun condSetEmpty!26322 () Bool)

(assert (=> b!4289584 (= condSetEmpty!26322 (= (_2!25833 (h!53068 (zeroValue!4636 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925)))))))) ((as const (Array Context!5670 Bool)) false)))))

(assert (=> b!4289446 (= tp!1314922 e!2664421)))

(declare-fun setIsEmpty!26322 () Bool)

(assert (=> setIsEmpty!26322 setRes!26322))

(declare-fun tp!1314981 () Bool)

(declare-fun setElem!26322 () Context!5670)

(declare-fun setNonEmpty!26322 () Bool)

(assert (=> setNonEmpty!26322 (= setRes!26322 (and tp!1314981 (inv!63129 setElem!26322) e!2664420))))

(declare-fun setRest!26322 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26322 (= (_2!25833 (h!53068 (zeroValue!4636 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925)))))))) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26322 true) setRest!26322))))

(declare-fun b!4289585 () Bool)

(declare-fun tp!1314983 () Bool)

(assert (=> b!4289585 (= e!2664422 tp!1314983)))

(assert (= b!4289584 b!4289585))

(assert (= (and b!4289584 condSetEmpty!26322) setIsEmpty!26322))

(assert (= (and b!4289584 (not condSetEmpty!26322)) setNonEmpty!26322))

(assert (= setNonEmpty!26322 b!4289583))

(assert (= (and b!4289446 ((_ is Cons!47648) (zeroValue!4636 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925)))))))) b!4289584))

(declare-fun m!4884179 () Bool)

(assert (=> b!4289584 m!4884179))

(declare-fun m!4884181 () Bool)

(assert (=> setNonEmpty!26322 m!4884181))

(declare-fun b!4289586 () Bool)

(declare-fun e!2664423 () Bool)

(declare-fun tp!1314984 () Bool)

(assert (=> b!4289586 (= e!2664423 tp!1314984)))

(declare-fun e!2664425 () Bool)

(declare-fun b!4289587 () Bool)

(declare-fun tp!1314986 () Bool)

(declare-fun e!2664424 () Bool)

(declare-fun setRes!26323 () Bool)

(assert (=> b!4289587 (= e!2664424 (and (inv!63129 (_1!25832 (_1!25833 (h!53068 (minValue!4636 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925)))))))))) e!2664425 tp_is_empty!23113 setRes!26323 tp!1314986))))

(declare-fun condSetEmpty!26323 () Bool)

(assert (=> b!4289587 (= condSetEmpty!26323 (= (_2!25833 (h!53068 (minValue!4636 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925)))))))) ((as const (Array Context!5670 Bool)) false)))))

(assert (=> b!4289446 (= tp!1314932 e!2664424)))

(declare-fun setIsEmpty!26323 () Bool)

(assert (=> setIsEmpty!26323 setRes!26323))

(declare-fun setNonEmpty!26323 () Bool)

(declare-fun tp!1314985 () Bool)

(declare-fun setElem!26323 () Context!5670)

(assert (=> setNonEmpty!26323 (= setRes!26323 (and tp!1314985 (inv!63129 setElem!26323) e!2664423))))

(declare-fun setRest!26323 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26323 (= (_2!25833 (h!53068 (minValue!4636 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925)))))))) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26323 true) setRest!26323))))

(declare-fun b!4289588 () Bool)

(declare-fun tp!1314987 () Bool)

(assert (=> b!4289588 (= e!2664425 tp!1314987)))

(assert (= b!4289587 b!4289588))

(assert (= (and b!4289587 condSetEmpty!26323) setIsEmpty!26323))

(assert (= (and b!4289587 (not condSetEmpty!26323)) setNonEmpty!26323))

(assert (= setNonEmpty!26323 b!4289586))

(assert (= (and b!4289446 ((_ is Cons!47648) (minValue!4636 (v!41564 (underlying!8983 (v!41565 (underlying!8984 (cache!4423 cacheUp!925)))))))) b!4289587))

(declare-fun m!4884183 () Bool)

(assert (=> b!4289587 m!4884183))

(declare-fun m!4884185 () Bool)

(assert (=> setNonEmpty!26323 m!4884185))

(declare-fun b!4289597 () Bool)

(declare-fun e!2664433 () Bool)

(declare-fun tp!1314999 () Bool)

(assert (=> b!4289597 (= e!2664433 tp!1314999)))

(declare-fun setRes!26326 () Bool)

(declare-fun tp!1315001 () Bool)

(declare-fun setNonEmpty!26326 () Bool)

(declare-fun setElem!26326 () Context!5670)

(assert (=> setNonEmpty!26326 (= setRes!26326 (and tp!1315001 (inv!63129 setElem!26326) e!2664433))))

(declare-fun setRest!26326 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26326 (= (_2!25835 (h!53069 (zeroValue!4637 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044)))))))) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26326 true) setRest!26326))))

(declare-fun e!2664434 () Bool)

(assert (=> b!4289452 (= tp!1314925 e!2664434)))

(declare-fun b!4289598 () Bool)

(declare-fun e!2664432 () Bool)

(declare-fun tp!1315002 () Bool)

(assert (=> b!4289598 (= e!2664432 tp!1315002)))

(declare-fun setIsEmpty!26326 () Bool)

(assert (=> setIsEmpty!26326 setRes!26326))

(declare-fun tp!1315000 () Bool)

(declare-fun b!4289599 () Bool)

(declare-fun tp!1314998 () Bool)

(assert (=> b!4289599 (= e!2664434 (and tp!1315000 (inv!63129 (_2!25834 (_1!25835 (h!53069 (zeroValue!4637 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044)))))))))) e!2664432 tp_is_empty!23113 setRes!26326 tp!1314998))))

(declare-fun condSetEmpty!26326 () Bool)

(assert (=> b!4289599 (= condSetEmpty!26326 (= (_2!25835 (h!53069 (zeroValue!4637 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044)))))))) ((as const (Array Context!5670 Bool)) false)))))

(assert (= b!4289599 b!4289598))

(assert (= (and b!4289599 condSetEmpty!26326) setIsEmpty!26326))

(assert (= (and b!4289599 (not condSetEmpty!26326)) setNonEmpty!26326))

(assert (= setNonEmpty!26326 b!4289597))

(assert (= (and b!4289452 ((_ is Cons!47649) (zeroValue!4637 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044)))))))) b!4289599))

(declare-fun m!4884187 () Bool)

(assert (=> setNonEmpty!26326 m!4884187))

(declare-fun m!4884189 () Bool)

(assert (=> b!4289599 m!4884189))

(declare-fun b!4289600 () Bool)

(declare-fun e!2664436 () Bool)

(declare-fun tp!1315004 () Bool)

(assert (=> b!4289600 (= e!2664436 tp!1315004)))

(declare-fun tp!1315006 () Bool)

(declare-fun setElem!26327 () Context!5670)

(declare-fun setRes!26327 () Bool)

(declare-fun setNonEmpty!26327 () Bool)

(assert (=> setNonEmpty!26327 (= setRes!26327 (and tp!1315006 (inv!63129 setElem!26327) e!2664436))))

(declare-fun setRest!26327 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26327 (= (_2!25835 (h!53069 (minValue!4637 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044)))))))) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26327 true) setRest!26327))))

(declare-fun e!2664437 () Bool)

(assert (=> b!4289452 (= tp!1314916 e!2664437)))

(declare-fun b!4289601 () Bool)

(declare-fun e!2664435 () Bool)

(declare-fun tp!1315007 () Bool)

(assert (=> b!4289601 (= e!2664435 tp!1315007)))

(declare-fun setIsEmpty!26327 () Bool)

(assert (=> setIsEmpty!26327 setRes!26327))

(declare-fun tp!1315003 () Bool)

(declare-fun b!4289602 () Bool)

(declare-fun tp!1315005 () Bool)

(assert (=> b!4289602 (= e!2664437 (and tp!1315005 (inv!63129 (_2!25834 (_1!25835 (h!53069 (minValue!4637 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044)))))))))) e!2664435 tp_is_empty!23113 setRes!26327 tp!1315003))))

(declare-fun condSetEmpty!26327 () Bool)

(assert (=> b!4289602 (= condSetEmpty!26327 (= (_2!25835 (h!53069 (minValue!4637 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044)))))))) ((as const (Array Context!5670 Bool)) false)))))

(assert (= b!4289602 b!4289601))

(assert (= (and b!4289602 condSetEmpty!26327) setIsEmpty!26327))

(assert (= (and b!4289602 (not condSetEmpty!26327)) setNonEmpty!26327))

(assert (= setNonEmpty!26327 b!4289600))

(assert (= (and b!4289452 ((_ is Cons!47649) (minValue!4637 (v!41566 (underlying!8985 (v!41567 (underlying!8986 (cache!4424 cacheDown!1044)))))))) b!4289602))

(declare-fun m!4884191 () Bool)

(assert (=> setNonEmpty!26327 m!4884191))

(declare-fun m!4884193 () Bool)

(assert (=> b!4289602 m!4884193))

(declare-fun e!2664443 () Bool)

(declare-fun tp!1315015 () Bool)

(declare-fun b!4289611 () Bool)

(declare-fun tp!1315016 () Bool)

(assert (=> b!4289611 (= e!2664443 (and (inv!63128 (left!35392 (c!730224 input!5500))) tp!1315016 (inv!63128 (right!35722 (c!730224 input!5500))) tp!1315015))))

(declare-fun b!4289613 () Bool)

(declare-fun e!2664442 () Bool)

(declare-fun tp!1315014 () Bool)

(assert (=> b!4289613 (= e!2664442 tp!1315014)))

(declare-fun b!4289612 () Bool)

(declare-fun inv!63132 (IArray!28835) Bool)

(assert (=> b!4289612 (= e!2664443 (and (inv!63132 (xs!17693 (c!730224 input!5500))) e!2664442))))

(assert (=> b!4289462 (= tp!1314929 (and (inv!63128 (c!730224 input!5500)) e!2664443))))

(assert (= (and b!4289462 ((_ is Node!14387) (c!730224 input!5500))) b!4289611))

(assert (= b!4289612 b!4289613))

(assert (= (and b!4289462 ((_ is Leaf!22261) (c!730224 input!5500))) b!4289612))

(declare-fun m!4884195 () Bool)

(assert (=> b!4289611 m!4884195))

(declare-fun m!4884197 () Bool)

(assert (=> b!4289611 m!4884197))

(declare-fun m!4884199 () Bool)

(assert (=> b!4289612 m!4884199))

(assert (=> b!4289462 m!4884073))

(declare-fun condSetEmpty!26330 () Bool)

(assert (=> setNonEmpty!26312 (= condSetEmpty!26330 (= setRest!26312 ((as const (Array Context!5670 Bool)) false)))))

(declare-fun setRes!26330 () Bool)

(assert (=> setNonEmpty!26312 (= tp!1314936 setRes!26330)))

(declare-fun setIsEmpty!26330 () Bool)

(assert (=> setIsEmpty!26330 setRes!26330))

(declare-fun setNonEmpty!26330 () Bool)

(declare-fun tp!1315022 () Bool)

(declare-fun setElem!26330 () Context!5670)

(declare-fun e!2664446 () Bool)

(assert (=> setNonEmpty!26330 (= setRes!26330 (and tp!1315022 (inv!63129 setElem!26330) e!2664446))))

(declare-fun setRest!26330 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26330 (= setRest!26312 ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26330 true) setRest!26330))))

(declare-fun b!4289618 () Bool)

(declare-fun tp!1315021 () Bool)

(assert (=> b!4289618 (= e!2664446 tp!1315021)))

(assert (= (and setNonEmpty!26312 condSetEmpty!26330) setIsEmpty!26330))

(assert (= (and setNonEmpty!26312 (not condSetEmpty!26330)) setNonEmpty!26330))

(assert (= setNonEmpty!26330 b!4289618))

(declare-fun m!4884201 () Bool)

(assert (=> setNonEmpty!26330 m!4884201))

(declare-fun b!4289619 () Bool)

(declare-fun e!2664447 () Bool)

(declare-fun tp!1315023 () Bool)

(assert (=> b!4289619 (= e!2664447 tp!1315023)))

(declare-fun tp!1315025 () Bool)

(declare-fun e!2664449 () Bool)

(declare-fun e!2664448 () Bool)

(declare-fun b!4289620 () Bool)

(declare-fun setRes!26331 () Bool)

(assert (=> b!4289620 (= e!2664448 (and (inv!63129 (_1!25832 (_1!25833 (h!53068 mapDefault!19721)))) e!2664449 tp_is_empty!23113 setRes!26331 tp!1315025))))

(declare-fun condSetEmpty!26331 () Bool)

(assert (=> b!4289620 (= condSetEmpty!26331 (= (_2!25833 (h!53068 mapDefault!19721)) ((as const (Array Context!5670 Bool)) false)))))

(assert (=> b!4289444 (= tp!1314937 e!2664448)))

(declare-fun setIsEmpty!26331 () Bool)

(assert (=> setIsEmpty!26331 setRes!26331))

(declare-fun tp!1315024 () Bool)

(declare-fun setElem!26331 () Context!5670)

(declare-fun setNonEmpty!26331 () Bool)

(assert (=> setNonEmpty!26331 (= setRes!26331 (and tp!1315024 (inv!63129 setElem!26331) e!2664447))))

(declare-fun setRest!26331 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26331 (= (_2!25833 (h!53068 mapDefault!19721)) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26331 true) setRest!26331))))

(declare-fun b!4289621 () Bool)

(declare-fun tp!1315026 () Bool)

(assert (=> b!4289621 (= e!2664449 tp!1315026)))

(assert (= b!4289620 b!4289621))

(assert (= (and b!4289620 condSetEmpty!26331) setIsEmpty!26331))

(assert (= (and b!4289620 (not condSetEmpty!26331)) setNonEmpty!26331))

(assert (= setNonEmpty!26331 b!4289619))

(assert (= (and b!4289444 ((_ is Cons!47648) mapDefault!19721)) b!4289620))

(declare-fun m!4884203 () Bool)

(assert (=> b!4289620 m!4884203))

(declare-fun m!4884205 () Bool)

(assert (=> setNonEmpty!26331 m!4884205))

(declare-fun e!2664451 () Bool)

(declare-fun tp!1315029 () Bool)

(declare-fun tp!1315028 () Bool)

(declare-fun b!4289622 () Bool)

(assert (=> b!4289622 (= e!2664451 (and (inv!63128 (left!35392 (c!730224 (totalInput!4343 cacheFindLongestMatch!171)))) tp!1315029 (inv!63128 (right!35722 (c!730224 (totalInput!4343 cacheFindLongestMatch!171)))) tp!1315028))))

(declare-fun b!4289624 () Bool)

(declare-fun e!2664450 () Bool)

(declare-fun tp!1315027 () Bool)

(assert (=> b!4289624 (= e!2664450 tp!1315027)))

(declare-fun b!4289623 () Bool)

(assert (=> b!4289623 (= e!2664451 (and (inv!63132 (xs!17693 (c!730224 (totalInput!4343 cacheFindLongestMatch!171)))) e!2664450))))

(assert (=> b!4289449 (= tp!1314938 (and (inv!63128 (c!730224 (totalInput!4343 cacheFindLongestMatch!171))) e!2664451))))

(assert (= (and b!4289449 ((_ is Node!14387) (c!730224 (totalInput!4343 cacheFindLongestMatch!171)))) b!4289622))

(assert (= b!4289623 b!4289624))

(assert (= (and b!4289449 ((_ is Leaf!22261) (c!730224 (totalInput!4343 cacheFindLongestMatch!171)))) b!4289623))

(declare-fun m!4884207 () Bool)

(assert (=> b!4289622 m!4884207))

(declare-fun m!4884209 () Bool)

(assert (=> b!4289622 m!4884209))

(declare-fun m!4884211 () Bool)

(assert (=> b!4289623 m!4884211))

(assert (=> b!4289449 m!4884031))

(declare-fun setIsEmpty!26336 () Bool)

(declare-fun setRes!26336 () Bool)

(assert (=> setIsEmpty!26336 setRes!26336))

(declare-fun b!4289635 () Bool)

(declare-fun e!2664463 () Bool)

(declare-fun tp!1315047 () Bool)

(assert (=> b!4289635 (= e!2664463 tp!1315047)))

(declare-fun b!4289636 () Bool)

(declare-fun e!2664462 () Bool)

(declare-fun tp!1315050 () Bool)

(assert (=> b!4289636 (= e!2664462 tp!1315050)))

(declare-fun b!4289637 () Bool)

(declare-fun e!2664460 () Bool)

(declare-fun tp!1315044 () Bool)

(assert (=> b!4289637 (= e!2664460 (and setRes!26336 tp!1315044))))

(declare-fun condSetEmpty!26337 () Bool)

(declare-fun mapValue!19727 () List!47771)

(assert (=> b!4289637 (= condSetEmpty!26337 (= (_1!25830 (_1!25831 (h!53067 mapValue!19727))) ((as const (Array Context!5670 Bool)) false)))))

(declare-fun mapIsEmpty!19727 () Bool)

(declare-fun mapRes!19727 () Bool)

(assert (=> mapIsEmpty!19727 mapRes!19727))

(declare-fun mapNonEmpty!19727 () Bool)

(declare-fun tp!1315049 () Bool)

(assert (=> mapNonEmpty!19727 (= mapRes!19727 (and tp!1315049 e!2664460))))

(declare-fun mapKey!19727 () (_ BitVec 32))

(declare-fun mapRest!19727 () (Array (_ BitVec 32) List!47771))

(assert (=> mapNonEmpty!19727 (= mapRest!19719 (store mapRest!19727 mapKey!19727 mapValue!19727))))

(declare-fun setElem!26337 () Context!5670)

(declare-fun setNonEmpty!26337 () Bool)

(declare-fun tp!1315045 () Bool)

(assert (=> setNonEmpty!26337 (= setRes!26336 (and tp!1315045 (inv!63129 setElem!26337) e!2664462))))

(declare-fun setRest!26336 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26337 (= (_1!25830 (_1!25831 (h!53067 mapValue!19727))) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26337 true) setRest!26336))))

(declare-fun setIsEmpty!26337 () Bool)

(declare-fun setRes!26337 () Bool)

(assert (=> setIsEmpty!26337 setRes!26337))

(declare-fun b!4289638 () Bool)

(declare-fun e!2664461 () Bool)

(declare-fun tp!1315046 () Bool)

(assert (=> b!4289638 (= e!2664461 (and setRes!26337 tp!1315046))))

(declare-fun condSetEmpty!26336 () Bool)

(declare-fun mapDefault!19727 () List!47771)

(assert (=> b!4289638 (= condSetEmpty!26336 (= (_1!25830 (_1!25831 (h!53067 mapDefault!19727))) ((as const (Array Context!5670 Bool)) false)))))

(declare-fun setElem!26336 () Context!5670)

(declare-fun setNonEmpty!26336 () Bool)

(declare-fun tp!1315048 () Bool)

(assert (=> setNonEmpty!26336 (= setRes!26337 (and tp!1315048 (inv!63129 setElem!26336) e!2664463))))

(declare-fun setRest!26337 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26336 (= (_1!25830 (_1!25831 (h!53067 mapDefault!19727))) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26336 true) setRest!26337))))

(declare-fun condMapEmpty!19727 () Bool)

(assert (=> mapNonEmpty!19721 (= condMapEmpty!19727 (= mapRest!19719 ((as const (Array (_ BitVec 32) List!47771)) mapDefault!19727)))))

(assert (=> mapNonEmpty!19721 (= tp!1314930 (and e!2664461 mapRes!19727))))

(assert (= (and mapNonEmpty!19721 condMapEmpty!19727) mapIsEmpty!19727))

(assert (= (and mapNonEmpty!19721 (not condMapEmpty!19727)) mapNonEmpty!19727))

(assert (= (and b!4289637 condSetEmpty!26337) setIsEmpty!26336))

(assert (= (and b!4289637 (not condSetEmpty!26337)) setNonEmpty!26337))

(assert (= setNonEmpty!26337 b!4289636))

(assert (= (and mapNonEmpty!19727 ((_ is Cons!47647) mapValue!19727)) b!4289637))

(assert (= (and b!4289638 condSetEmpty!26336) setIsEmpty!26337))

(assert (= (and b!4289638 (not condSetEmpty!26336)) setNonEmpty!26336))

(assert (= setNonEmpty!26336 b!4289635))

(assert (= (and mapNonEmpty!19721 ((_ is Cons!47647) mapDefault!19727)) b!4289638))

(declare-fun m!4884213 () Bool)

(assert (=> mapNonEmpty!19727 m!4884213))

(declare-fun m!4884215 () Bool)

(assert (=> setNonEmpty!26337 m!4884215))

(declare-fun m!4884217 () Bool)

(assert (=> setNonEmpty!26336 m!4884217))

(declare-fun b!4289646 () Bool)

(declare-fun e!2664468 () Bool)

(declare-fun tp!1315058 () Bool)

(assert (=> b!4289646 (= e!2664468 tp!1315058)))

(declare-fun setIsEmpty!26340 () Bool)

(declare-fun setRes!26340 () Bool)

(assert (=> setIsEmpty!26340 setRes!26340))

(declare-fun b!4289645 () Bool)

(declare-fun e!2664469 () Bool)

(declare-fun tp!1315057 () Bool)

(assert (=> b!4289645 (= e!2664469 (and setRes!26340 tp!1315057))))

(declare-fun condSetEmpty!26340 () Bool)

(assert (=> b!4289645 (= condSetEmpty!26340 (= (_1!25830 (_1!25831 (h!53067 mapValue!19719))) ((as const (Array Context!5670 Bool)) false)))))

(declare-fun setElem!26340 () Context!5670)

(declare-fun setNonEmpty!26340 () Bool)

(declare-fun tp!1315059 () Bool)

(assert (=> setNonEmpty!26340 (= setRes!26340 (and tp!1315059 (inv!63129 setElem!26340) e!2664468))))

(declare-fun setRest!26340 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26340 (= (_1!25830 (_1!25831 (h!53067 mapValue!19719))) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26340 true) setRest!26340))))

(assert (=> mapNonEmpty!19721 (= tp!1314920 e!2664469)))

(assert (= (and b!4289645 condSetEmpty!26340) setIsEmpty!26340))

(assert (= (and b!4289645 (not condSetEmpty!26340)) setNonEmpty!26340))

(assert (= setNonEmpty!26340 b!4289646))

(assert (= (and mapNonEmpty!19721 ((_ is Cons!47647) mapValue!19719)) b!4289645))

(declare-fun m!4884219 () Bool)

(assert (=> setNonEmpty!26340 m!4884219))

(declare-fun b!4289647 () Bool)

(declare-fun e!2664471 () Bool)

(declare-fun tp!1315061 () Bool)

(assert (=> b!4289647 (= e!2664471 tp!1315061)))

(declare-fun setElem!26341 () Context!5670)

(declare-fun tp!1315063 () Bool)

(declare-fun setNonEmpty!26341 () Bool)

(declare-fun setRes!26341 () Bool)

(assert (=> setNonEmpty!26341 (= setRes!26341 (and tp!1315063 (inv!63129 setElem!26341) e!2664471))))

(declare-fun setRest!26341 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26341 (= (_2!25835 (h!53069 mapDefault!19719)) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26341 true) setRest!26341))))

(declare-fun e!2664472 () Bool)

(assert (=> b!4289464 (= tp!1314919 e!2664472)))

(declare-fun b!4289648 () Bool)

(declare-fun e!2664470 () Bool)

(declare-fun tp!1315064 () Bool)

(assert (=> b!4289648 (= e!2664470 tp!1315064)))

(declare-fun setIsEmpty!26341 () Bool)

(assert (=> setIsEmpty!26341 setRes!26341))

(declare-fun tp!1315060 () Bool)

(declare-fun b!4289649 () Bool)

(declare-fun tp!1315062 () Bool)

(assert (=> b!4289649 (= e!2664472 (and tp!1315062 (inv!63129 (_2!25834 (_1!25835 (h!53069 mapDefault!19719)))) e!2664470 tp_is_empty!23113 setRes!26341 tp!1315060))))

(declare-fun condSetEmpty!26341 () Bool)

(assert (=> b!4289649 (= condSetEmpty!26341 (= (_2!25835 (h!53069 mapDefault!19719)) ((as const (Array Context!5670 Bool)) false)))))

(assert (= b!4289649 b!4289648))

(assert (= (and b!4289649 condSetEmpty!26341) setIsEmpty!26341))

(assert (= (and b!4289649 (not condSetEmpty!26341)) setNonEmpty!26341))

(assert (= setNonEmpty!26341 b!4289647))

(assert (= (and b!4289464 ((_ is Cons!47649) mapDefault!19719)) b!4289649))

(declare-fun m!4884221 () Bool)

(assert (=> setNonEmpty!26341 m!4884221))

(declare-fun m!4884223 () Bool)

(assert (=> b!4289649 m!4884223))

(declare-fun b!4289651 () Bool)

(declare-fun e!2664473 () Bool)

(declare-fun tp!1315066 () Bool)

(assert (=> b!4289651 (= e!2664473 tp!1315066)))

(declare-fun setIsEmpty!26342 () Bool)

(declare-fun setRes!26342 () Bool)

(assert (=> setIsEmpty!26342 setRes!26342))

(declare-fun b!4289650 () Bool)

(declare-fun e!2664474 () Bool)

(declare-fun tp!1315065 () Bool)

(assert (=> b!4289650 (= e!2664474 (and setRes!26342 tp!1315065))))

(declare-fun condSetEmpty!26342 () Bool)

(assert (=> b!4289650 (= condSetEmpty!26342 (= (_1!25830 (_1!25831 (h!53067 (zeroValue!4635 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))))))) ((as const (Array Context!5670 Bool)) false)))))

(declare-fun tp!1315067 () Bool)

(declare-fun setNonEmpty!26342 () Bool)

(declare-fun setElem!26342 () Context!5670)

(assert (=> setNonEmpty!26342 (= setRes!26342 (and tp!1315067 (inv!63129 setElem!26342) e!2664473))))

(declare-fun setRest!26342 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26342 (= (_1!25830 (_1!25831 (h!53067 (zeroValue!4635 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))))))) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26342 true) setRest!26342))))

(assert (=> b!4289441 (= tp!1314928 e!2664474)))

(assert (= (and b!4289650 condSetEmpty!26342) setIsEmpty!26342))

(assert (= (and b!4289650 (not condSetEmpty!26342)) setNonEmpty!26342))

(assert (= setNonEmpty!26342 b!4289651))

(assert (= (and b!4289441 ((_ is Cons!47647) (zeroValue!4635 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171)))))))) b!4289650))

(declare-fun m!4884225 () Bool)

(assert (=> setNonEmpty!26342 m!4884225))

(declare-fun b!4289653 () Bool)

(declare-fun e!2664475 () Bool)

(declare-fun tp!1315069 () Bool)

(assert (=> b!4289653 (= e!2664475 tp!1315069)))

(declare-fun setIsEmpty!26343 () Bool)

(declare-fun setRes!26343 () Bool)

(assert (=> setIsEmpty!26343 setRes!26343))

(declare-fun b!4289652 () Bool)

(declare-fun e!2664476 () Bool)

(declare-fun tp!1315068 () Bool)

(assert (=> b!4289652 (= e!2664476 (and setRes!26343 tp!1315068))))

(declare-fun condSetEmpty!26343 () Bool)

(assert (=> b!4289652 (= condSetEmpty!26343 (= (_1!25830 (_1!25831 (h!53067 (minValue!4635 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))))))) ((as const (Array Context!5670 Bool)) false)))))

(declare-fun tp!1315070 () Bool)

(declare-fun setNonEmpty!26343 () Bool)

(declare-fun setElem!26343 () Context!5670)

(assert (=> setNonEmpty!26343 (= setRes!26343 (and tp!1315070 (inv!63129 setElem!26343) e!2664475))))

(declare-fun setRest!26343 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26343 (= (_1!25830 (_1!25831 (h!53067 (minValue!4635 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171))))))))) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26343 true) setRest!26343))))

(assert (=> b!4289441 (= tp!1314923 e!2664476)))

(assert (= (and b!4289652 condSetEmpty!26343) setIsEmpty!26343))

(assert (= (and b!4289652 (not condSetEmpty!26343)) setNonEmpty!26343))

(assert (= setNonEmpty!26343 b!4289653))

(assert (= (and b!4289441 ((_ is Cons!47647) (minValue!4635 (v!41562 (underlying!8981 (v!41563 (underlying!8982 (cache!4422 cacheFindLongestMatch!171)))))))) b!4289652))

(declare-fun m!4884227 () Bool)

(assert (=> setNonEmpty!26343 m!4884227))

(declare-fun b!4289668 () Bool)

(declare-fun e!2664490 () Bool)

(declare-fun tp!1315101 () Bool)

(assert (=> b!4289668 (= e!2664490 tp!1315101)))

(declare-fun b!4289669 () Bool)

(declare-fun e!2664493 () Bool)

(declare-fun e!2664494 () Bool)

(declare-fun mapValue!19730 () List!47773)

(declare-fun setRes!26349 () Bool)

(declare-fun tp!1315100 () Bool)

(declare-fun tp!1315102 () Bool)

(assert (=> b!4289669 (= e!2664494 (and tp!1315100 (inv!63129 (_2!25834 (_1!25835 (h!53069 mapValue!19730)))) e!2664493 tp_is_empty!23113 setRes!26349 tp!1315102))))

(declare-fun condSetEmpty!26349 () Bool)

(assert (=> b!4289669 (= condSetEmpty!26349 (= (_2!25835 (h!53069 mapValue!19730)) ((as const (Array Context!5670 Bool)) false)))))

(declare-fun b!4289670 () Bool)

(declare-fun e!2664492 () Bool)

(declare-fun tp!1315096 () Bool)

(assert (=> b!4289670 (= e!2664492 tp!1315096)))

(declare-fun mapIsEmpty!19730 () Bool)

(declare-fun mapRes!19730 () Bool)

(assert (=> mapIsEmpty!19730 mapRes!19730))

(declare-fun tp!1315103 () Bool)

(declare-fun setNonEmpty!26348 () Bool)

(declare-fun setElem!26348 () Context!5670)

(assert (=> setNonEmpty!26348 (= setRes!26349 (and tp!1315103 (inv!63129 setElem!26348) e!2664490))))

(declare-fun setRest!26348 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26348 (= (_2!25835 (h!53069 mapValue!19730)) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26348 true) setRest!26348))))

(declare-fun b!4289671 () Bool)

(declare-fun e!2664489 () Bool)

(declare-fun tp!1315097 () Bool)

(assert (=> b!4289671 (= e!2664489 tp!1315097)))

(declare-fun setElem!26349 () Context!5670)

(declare-fun tp!1315095 () Bool)

(declare-fun setNonEmpty!26349 () Bool)

(declare-fun setRes!26348 () Bool)

(assert (=> setNonEmpty!26349 (= setRes!26348 (and tp!1315095 (inv!63129 setElem!26349) e!2664492))))

(declare-fun mapDefault!19730 () List!47773)

(declare-fun setRest!26349 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26349 (= (_2!25835 (h!53069 mapDefault!19730)) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26349 true) setRest!26349))))

(declare-fun b!4289672 () Bool)

(declare-fun tp!1315099 () Bool)

(assert (=> b!4289672 (= e!2664493 tp!1315099)))

(declare-fun mapNonEmpty!19730 () Bool)

(declare-fun tp!1315098 () Bool)

(assert (=> mapNonEmpty!19730 (= mapRes!19730 (and tp!1315098 e!2664494))))

(declare-fun mapRest!19730 () (Array (_ BitVec 32) List!47773))

(declare-fun mapKey!19730 () (_ BitVec 32))

(assert (=> mapNonEmpty!19730 (= mapRest!19720 (store mapRest!19730 mapKey!19730 mapValue!19730))))

(declare-fun setIsEmpty!26348 () Bool)

(assert (=> setIsEmpty!26348 setRes!26348))

(declare-fun setIsEmpty!26349 () Bool)

(assert (=> setIsEmpty!26349 setRes!26349))

(declare-fun condMapEmpty!19730 () Bool)

(assert (=> mapNonEmpty!19719 (= condMapEmpty!19730 (= mapRest!19720 ((as const (Array (_ BitVec 32) List!47773)) mapDefault!19730)))))

(declare-fun e!2664491 () Bool)

(assert (=> mapNonEmpty!19719 (= tp!1314935 (and e!2664491 mapRes!19730))))

(declare-fun tp!1315094 () Bool)

(declare-fun tp!1315093 () Bool)

(declare-fun b!4289673 () Bool)

(assert (=> b!4289673 (= e!2664491 (and tp!1315093 (inv!63129 (_2!25834 (_1!25835 (h!53069 mapDefault!19730)))) e!2664489 tp_is_empty!23113 setRes!26348 tp!1315094))))

(declare-fun condSetEmpty!26348 () Bool)

(assert (=> b!4289673 (= condSetEmpty!26348 (= (_2!25835 (h!53069 mapDefault!19730)) ((as const (Array Context!5670 Bool)) false)))))

(assert (= (and mapNonEmpty!19719 condMapEmpty!19730) mapIsEmpty!19730))

(assert (= (and mapNonEmpty!19719 (not condMapEmpty!19730)) mapNonEmpty!19730))

(assert (= b!4289669 b!4289672))

(assert (= (and b!4289669 condSetEmpty!26349) setIsEmpty!26349))

(assert (= (and b!4289669 (not condSetEmpty!26349)) setNonEmpty!26348))

(assert (= setNonEmpty!26348 b!4289668))

(assert (= (and mapNonEmpty!19730 ((_ is Cons!47649) mapValue!19730)) b!4289669))

(assert (= b!4289673 b!4289671))

(assert (= (and b!4289673 condSetEmpty!26348) setIsEmpty!26348))

(assert (= (and b!4289673 (not condSetEmpty!26348)) setNonEmpty!26349))

(assert (= setNonEmpty!26349 b!4289670))

(assert (= (and mapNonEmpty!19719 ((_ is Cons!47649) mapDefault!19730)) b!4289673))

(declare-fun m!4884229 () Bool)

(assert (=> setNonEmpty!26349 m!4884229))

(declare-fun m!4884231 () Bool)

(assert (=> setNonEmpty!26348 m!4884231))

(declare-fun m!4884233 () Bool)

(assert (=> b!4289673 m!4884233))

(declare-fun m!4884235 () Bool)

(assert (=> mapNonEmpty!19730 m!4884235))

(declare-fun m!4884237 () Bool)

(assert (=> b!4289669 m!4884237))

(declare-fun b!4289674 () Bool)

(declare-fun e!2664496 () Bool)

(declare-fun tp!1315105 () Bool)

(assert (=> b!4289674 (= e!2664496 tp!1315105)))

(declare-fun tp!1315107 () Bool)

(declare-fun setElem!26350 () Context!5670)

(declare-fun setNonEmpty!26350 () Bool)

(declare-fun setRes!26350 () Bool)

(assert (=> setNonEmpty!26350 (= setRes!26350 (and tp!1315107 (inv!63129 setElem!26350) e!2664496))))

(declare-fun setRest!26350 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26350 (= (_2!25835 (h!53069 mapValue!19721)) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26350 true) setRest!26350))))

(declare-fun e!2664497 () Bool)

(assert (=> mapNonEmpty!19719 (= tp!1314934 e!2664497)))

(declare-fun b!4289675 () Bool)

(declare-fun e!2664495 () Bool)

(declare-fun tp!1315108 () Bool)

(assert (=> b!4289675 (= e!2664495 tp!1315108)))

(declare-fun setIsEmpty!26350 () Bool)

(assert (=> setIsEmpty!26350 setRes!26350))

(declare-fun b!4289676 () Bool)

(declare-fun tp!1315104 () Bool)

(declare-fun tp!1315106 () Bool)

(assert (=> b!4289676 (= e!2664497 (and tp!1315106 (inv!63129 (_2!25834 (_1!25835 (h!53069 mapValue!19721)))) e!2664495 tp_is_empty!23113 setRes!26350 tp!1315104))))

(declare-fun condSetEmpty!26350 () Bool)

(assert (=> b!4289676 (= condSetEmpty!26350 (= (_2!25835 (h!53069 mapValue!19721)) ((as const (Array Context!5670 Bool)) false)))))

(assert (= b!4289676 b!4289675))

(assert (= (and b!4289676 condSetEmpty!26350) setIsEmpty!26350))

(assert (= (and b!4289676 (not condSetEmpty!26350)) setNonEmpty!26350))

(assert (= setNonEmpty!26350 b!4289674))

(assert (= (and mapNonEmpty!19719 ((_ is Cons!47649) mapValue!19721)) b!4289676))

(declare-fun m!4884239 () Bool)

(assert (=> setNonEmpty!26350 m!4884239))

(declare-fun m!4884241 () Bool)

(assert (=> b!4289676 m!4884241))

(declare-fun b!4289678 () Bool)

(declare-fun e!2664498 () Bool)

(declare-fun tp!1315110 () Bool)

(assert (=> b!4289678 (= e!2664498 tp!1315110)))

(declare-fun setIsEmpty!26351 () Bool)

(declare-fun setRes!26351 () Bool)

(assert (=> setIsEmpty!26351 setRes!26351))

(declare-fun b!4289677 () Bool)

(declare-fun e!2664499 () Bool)

(declare-fun tp!1315109 () Bool)

(assert (=> b!4289677 (= e!2664499 (and setRes!26351 tp!1315109))))

(declare-fun condSetEmpty!26351 () Bool)

(assert (=> b!4289677 (= condSetEmpty!26351 (= (_1!25830 (_1!25831 (h!53067 mapDefault!19720))) ((as const (Array Context!5670 Bool)) false)))))

(declare-fun setNonEmpty!26351 () Bool)

(declare-fun tp!1315111 () Bool)

(declare-fun setElem!26351 () Context!5670)

(assert (=> setNonEmpty!26351 (= setRes!26351 (and tp!1315111 (inv!63129 setElem!26351) e!2664498))))

(declare-fun setRest!26351 () (InoxSet Context!5670))

(assert (=> setNonEmpty!26351 (= (_1!25830 (_1!25831 (h!53067 mapDefault!19720))) ((_ map or) (store ((as const (Array Context!5670 Bool)) false) setElem!26351 true) setRest!26351))))

(assert (=> b!4289457 (= tp!1314933 e!2664499)))

(assert (= (and b!4289677 condSetEmpty!26351) setIsEmpty!26351))

(assert (= (and b!4289677 (not condSetEmpty!26351)) setNonEmpty!26351))

(assert (= setNonEmpty!26351 b!4289678))

(assert (= (and b!4289457 ((_ is Cons!47647) mapDefault!19720)) b!4289677))

(declare-fun m!4884243 () Bool)

(assert (=> setNonEmpty!26351 m!4884243))

(declare-fun b!4289683 () Bool)

(declare-fun e!2664502 () Bool)

(declare-fun tp!1315116 () Bool)

(declare-fun tp!1315117 () Bool)

(assert (=> b!4289683 (= e!2664502 (and tp!1315116 tp!1315117))))

(assert (=> b!4289466 (= tp!1314915 e!2664502)))

(assert (= (and b!4289466 ((_ is Cons!47646) (exprs!3335 setElem!26312))) b!4289683))

(declare-fun tp!1315119 () Bool)

(declare-fun e!2664504 () Bool)

(declare-fun b!4289684 () Bool)

(declare-fun tp!1315120 () Bool)

(assert (=> b!4289684 (= e!2664504 (and (inv!63128 (left!35392 (c!730224 totalInput!793))) tp!1315120 (inv!63128 (right!35722 (c!730224 totalInput!793))) tp!1315119))))

(declare-fun b!4289686 () Bool)

(declare-fun e!2664503 () Bool)

(declare-fun tp!1315118 () Bool)

(assert (=> b!4289686 (= e!2664503 tp!1315118)))

(declare-fun b!4289685 () Bool)

(assert (=> b!4289685 (= e!2664504 (and (inv!63132 (xs!17693 (c!730224 totalInput!793))) e!2664503))))

(assert (=> b!4289440 (= tp!1314927 (and (inv!63128 (c!730224 totalInput!793)) e!2664504))))

(assert (= (and b!4289440 ((_ is Node!14387) (c!730224 totalInput!793))) b!4289684))

(assert (= b!4289685 b!4289686))

(assert (= (and b!4289440 ((_ is Leaf!22261) (c!730224 totalInput!793))) b!4289685))

(declare-fun m!4884245 () Bool)

(assert (=> b!4289684 m!4884245))

(declare-fun m!4884247 () Bool)

(assert (=> b!4289684 m!4884247))

(declare-fun m!4884249 () Bool)

(assert (=> b!4289685 m!4884249))

(assert (=> b!4289440 m!4884043))

(check-sat (not setNonEmpty!26330) (not b!4289485) (not setNonEmpty!26326) (not b!4289623) (not b!4289542) b_and!338545 (not b!4289650) (not b!4289566) (not b!4289549) (not b!4289637) (not b!4289646) b_and!338553 (not b!4289571) (not b!4289477) (not b!4289479) (not d!1265486) (not d!1265490) (not b!4289621) (not b!4289541) (not d!1265484) (not b!4289636) (not b!4289569) (not b!4289686) (not b!4289524) (not setNonEmpty!26318) (not b!4289597) (not b!4289462) (not b!4289599) (not b!4289624) (not b!4289652) (not b!4289440) (not b!4289653) (not b!4289669) (not b!4289491) (not b!4289611) (not b!4289568) (not b!4289678) (not b!4289584) b_and!338551 (not d!1265460) (not setNonEmpty!26350) (not b_next!128041) (not mapNonEmpty!19730) (not b!4289588) (not d!1265454) (not b!4289519) (not b!4289668) (not d!1265464) (not b!4289649) (not b!4289520) (not b!4289651) (not b!4289675) (not b!4289672) (not b!4289586) (not b!4289635) (not b!4289544) b_and!338543 (not b!4289570) (not setNonEmpty!26323) (not b!4289598) (not b!4289673) (not b!4289587) (not setNonEmpty!26348) (not b!4289449) (not b!4289676) (not b!4289683) (not b!4289619) (not b!4289674) (not b!4289523) (not b!4289581) (not setNonEmpty!26317) (not setNonEmpty!26351) (not b!4289522) (not b!4289505) b_and!338549 (not setNonEmpty!26349) (not b!4289503) (not b!4289671) (not d!1265458) (not setNonEmpty!26337) (not b!4289647) (not setNonEmpty!26341) (not setNonEmpty!26340) (not b_next!128037) (not b!4289645) (not b!4289583) (not b!4289474) (not b!4289685) (not setNonEmpty!26331) (not b!4289600) (not d!1265450) (not b_next!128033) (not d!1265480) (not b!4289684) (not d!1265438) (not b!4289670) (not d!1265468) (not b_next!128035) (not setNonEmpty!26342) (not b!4289580) (not setNonEmpty!26336) (not b!4289521) (not mapNonEmpty!19724) (not b_next!128031) b_and!338547 (not b!4289488) (not b!4289567) (not b!4289602) (not b!4289482) (not b!4289547) (not b!4289620) (not b!4289585) tp_is_empty!23113 (not setNonEmpty!26321) (not b!4289551) (not b!4289502) (not d!1265466) (not b!4289582) (not b!4289612) (not d!1265476) (not setNonEmpty!26322) (not b!4289622) (not b!4289638) (not b!4289618) (not b_next!128039) (not b!4289601) (not b!4289504) (not b!4289677) (not mapNonEmpty!19727) (not b!4289648) (not b!4289476) (not setNonEmpty!26327) (not setNonEmpty!26343) (not b!4289613))
(check-sat b_and!338545 b_and!338553 b_and!338551 (not b_next!128041) b_and!338543 b_and!338549 (not b_next!128037) (not b_next!128033) (not b_next!128035) (not b_next!128031) b_and!338547 (not b_next!128039))
