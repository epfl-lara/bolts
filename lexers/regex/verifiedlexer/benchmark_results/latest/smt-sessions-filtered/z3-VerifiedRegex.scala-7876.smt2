; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412026 () Bool)

(assert start!412026)

(declare-fun b!4290406 () Bool)

(declare-fun b_free!127383 () Bool)

(declare-fun b_next!128087 () Bool)

(assert (=> b!4290406 (= b_free!127383 (not b_next!128087))))

(declare-fun tp!1315613 () Bool)

(declare-fun b_and!338599 () Bool)

(assert (=> b!4290406 (= tp!1315613 b_and!338599)))

(declare-fun b!4290394 () Bool)

(declare-fun b_free!127385 () Bool)

(declare-fun b_next!128089 () Bool)

(assert (=> b!4290394 (= b_free!127385 (not b_next!128089))))

(declare-fun tp!1315618 () Bool)

(declare-fun b_and!338601 () Bool)

(assert (=> b!4290394 (= tp!1315618 b_and!338601)))

(declare-fun b!4290396 () Bool)

(declare-fun b_free!127387 () Bool)

(declare-fun b_next!128091 () Bool)

(assert (=> b!4290396 (= b_free!127387 (not b_next!128091))))

(declare-fun tp!1315626 () Bool)

(declare-fun b_and!338603 () Bool)

(assert (=> b!4290396 (= tp!1315626 b_and!338603)))

(declare-fun b!4290392 () Bool)

(declare-fun b_free!127389 () Bool)

(declare-fun b_next!128093 () Bool)

(assert (=> b!4290392 (= b_free!127389 (not b_next!128093))))

(declare-fun tp!1315616 () Bool)

(declare-fun b_and!338605 () Bool)

(assert (=> b!4290392 (= tp!1315616 b_and!338605)))

(declare-fun b!4290391 () Bool)

(declare-fun b_free!127391 () Bool)

(declare-fun b_next!128095 () Bool)

(assert (=> b!4290391 (= b_free!127391 (not b_next!128095))))

(declare-fun tp!1315619 () Bool)

(declare-fun b_and!338607 () Bool)

(assert (=> b!4290391 (= tp!1315619 b_and!338607)))

(declare-fun b!4290379 () Bool)

(declare-fun b_free!127393 () Bool)

(declare-fun b_next!128097 () Bool)

(assert (=> b!4290379 (= b_free!127393 (not b_next!128097))))

(declare-fun tp!1315609 () Bool)

(declare-fun b_and!338609 () Bool)

(assert (=> b!4290379 (= tp!1315609 b_and!338609)))

(declare-fun mapNonEmpty!19774 () Bool)

(declare-fun mapRes!19775 () Bool)

(declare-fun tp!1315602 () Bool)

(declare-fun tp!1315611 () Bool)

(assert (=> mapNonEmpty!19774 (= mapRes!19775 (and tp!1315602 tp!1315611))))

(declare-datatypes ((C!26100 0))(
  ( (C!26101 (val!15376 Int)) )
))
(declare-datatypes ((Regex!12951 0))(
  ( (ElementMatch!12951 (c!730285 C!26100)) (Concat!21270 (regOne!26414 Regex!12951) (regTwo!26414 Regex!12951)) (EmptyExpr!12951) (Star!12951 (reg!13280 Regex!12951)) (EmptyLang!12951) (Union!12951 (regOne!26415 Regex!12951) (regTwo!26415 Regex!12951)) )
))
(declare-datatypes ((List!47795 0))(
  ( (Nil!47671) (Cons!47671 (h!53091 Regex!12951) (t!354399 List!47795)) )
))
(declare-datatypes ((Context!5682 0))(
  ( (Context!5683 (exprs!3341 List!47795)) )
))
(declare-datatypes ((array!15690 0))(
  ( (array!15691 (arr!7008 (Array (_ BitVec 32) (_ BitVec 64))) (size!34981 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!5414 0))(
  ( (tuple3!5415 (_1!25864 Regex!12951) (_2!25864 Context!5682) (_3!3213 C!26100)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45302 0))(
  ( (tuple2!45303 (_1!25865 tuple3!5414) (_2!25865 (InoxSet Context!5682))) )
))
(declare-datatypes ((List!47796 0))(
  ( (Nil!47672) (Cons!47672 (h!53092 tuple2!45302) (t!354400 List!47796)) )
))
(declare-datatypes ((array!15692 0))(
  ( (array!15693 (arr!7009 (Array (_ BitVec 32) List!47796)) (size!34982 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8780 0))(
  ( (LongMapFixedSize!8781 (defaultEntry!4775 Int) (mask!12835 (_ BitVec 32)) (extraKeys!4639 (_ BitVec 32)) (zeroValue!4649 List!47796) (minValue!4649 List!47796) (_size!8823 (_ BitVec 32)) (_keys!4690 array!15690) (_values!4671 array!15692) (_vacant!4451 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17369 0))(
  ( (Cell!17370 (v!41590 LongMapFixedSize!8780)) )
))
(declare-datatypes ((MutLongMap!4390 0))(
  ( (LongMap!4390 (underlying!9009 Cell!17369)) (MutLongMapExt!4389 (__x!29195 Int)) )
))
(declare-datatypes ((Cell!17371 0))(
  ( (Cell!17372 (v!41591 MutLongMap!4390)) )
))
(declare-datatypes ((Hashable!4306 0))(
  ( (HashableExt!4305 (__x!29196 Int)) )
))
(declare-datatypes ((MutableMap!4296 0))(
  ( (MutableMapExt!4295 (__x!29197 Int)) (HashMap!4296 (underlying!9010 Cell!17371) (hashF!6338 Hashable!4306) (_size!8824 (_ BitVec 32)) (defaultValue!4467 Int)) )
))
(declare-datatypes ((CacheDown!2922 0))(
  ( (CacheDown!2923 (cache!4436 MutableMap!4296)) )
))
(declare-fun cacheDown!1044 () CacheDown!2922)

(declare-fun mapKey!19775 () (_ BitVec 32))

(declare-fun mapValue!19776 () List!47796)

(declare-fun mapRest!19776 () (Array (_ BitVec 32) List!47796))

(assert (=> mapNonEmpty!19774 (= (arr!7009 (_values!4671 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044))))))) (store mapRest!19776 mapKey!19775 mapValue!19776))))

(declare-fun e!2665077 () Bool)

(declare-fun e!2665073 () Bool)

(assert (=> b!4290379 (= e!2665077 (and e!2665073 tp!1315609))))

(declare-fun b!4290380 () Bool)

(declare-fun e!2665083 () Bool)

(declare-fun e!2665097 () Bool)

(assert (=> b!4290380 (= e!2665083 e!2665097)))

(declare-fun b!4290381 () Bool)

(declare-fun e!2665098 () Bool)

(declare-fun e!2665101 () Bool)

(assert (=> b!4290381 (= e!2665098 e!2665101)))

(declare-fun b!4290382 () Bool)

(declare-fun e!2665074 () Bool)

(declare-fun tp!1315612 () Bool)

(assert (=> b!4290382 (= e!2665074 tp!1315612)))

(declare-fun e!2665090 () Bool)

(declare-fun e!2665079 () Bool)

(declare-datatypes ((tuple2!45304 0))(
  ( (tuple2!45305 (_1!25866 (InoxSet Context!5682)) (_2!25866 Int)) )
))
(declare-datatypes ((tuple2!45306 0))(
  ( (tuple2!45307 (_1!25867 tuple2!45304) (_2!25867 Int)) )
))
(declare-datatypes ((List!47797 0))(
  ( (Nil!47673) (Cons!47673 (h!53093 tuple2!45306) (t!354401 List!47797)) )
))
(declare-datatypes ((array!15694 0))(
  ( (array!15695 (arr!7010 (Array (_ BitVec 32) List!47797)) (size!34983 (_ BitVec 32))) )
))
(declare-datatypes ((List!47798 0))(
  ( (Nil!47674) (Cons!47674 (h!53094 C!26100) (t!354402 List!47798)) )
))
(declare-datatypes ((IArray!28847 0))(
  ( (IArray!28848 (innerList!14481 List!47798)) )
))
(declare-datatypes ((Conc!14393 0))(
  ( (Node!14393 (left!35403 Conc!14393) (right!35733 Conc!14393) (csize!29016 Int) (cheight!14604 Int)) (Leaf!22270 (xs!17699 IArray!28847) (csize!29017 Int)) (Empty!14393) )
))
(declare-datatypes ((BalanceConc!28276 0))(
  ( (BalanceConc!28277 (c!730286 Conc!14393)) )
))
(declare-datatypes ((Hashable!4307 0))(
  ( (HashableExt!4306 (__x!29198 Int)) )
))
(declare-datatypes ((LongMapFixedSize!8782 0))(
  ( (LongMapFixedSize!8783 (defaultEntry!4776 Int) (mask!12836 (_ BitVec 32)) (extraKeys!4640 (_ BitVec 32)) (zeroValue!4650 List!47797) (minValue!4650 List!47797) (_size!8825 (_ BitVec 32)) (_keys!4691 array!15690) (_values!4672 array!15694) (_vacant!4452 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17373 0))(
  ( (Cell!17374 (v!41592 LongMapFixedSize!8782)) )
))
(declare-datatypes ((MutLongMap!4391 0))(
  ( (LongMap!4391 (underlying!9011 Cell!17373)) (MutLongMapExt!4390 (__x!29199 Int)) )
))
(declare-datatypes ((Cell!17375 0))(
  ( (Cell!17376 (v!41593 MutLongMap!4391)) )
))
(declare-datatypes ((MutableMap!4297 0))(
  ( (MutableMapExt!4296 (__x!29200 Int)) (HashMap!4297 (underlying!9012 Cell!17375) (hashF!6339 Hashable!4307) (_size!8826 (_ BitVec 32)) (defaultValue!4468 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!474 0))(
  ( (CacheFindLongestMatch!475 (cache!4437 MutableMap!4297) (totalInput!4352 BalanceConc!28276)) )
))
(declare-fun cacheFindLongestMatch!171 () CacheFindLongestMatch!474)

(declare-fun e!2665076 () Bool)

(declare-fun b!4290383 () Bool)

(declare-fun inv!63166 (BalanceConc!28276) Bool)

(assert (=> b!4290383 (= e!2665079 (and e!2665076 (inv!63166 (totalInput!4352 cacheFindLongestMatch!171)) e!2665090))))

(declare-fun b!4290384 () Bool)

(declare-fun res!1759622 () Bool)

(declare-fun e!2665095 () Bool)

(assert (=> b!4290384 (=> (not res!1759622) (not e!2665095))))

(declare-datatypes ((tuple2!45308 0))(
  ( (tuple2!45309 (_1!25868 Context!5682) (_2!25868 C!26100)) )
))
(declare-datatypes ((tuple2!45310 0))(
  ( (tuple2!45311 (_1!25869 tuple2!45308) (_2!25869 (InoxSet Context!5682))) )
))
(declare-datatypes ((List!47799 0))(
  ( (Nil!47675) (Cons!47675 (h!53095 tuple2!45310) (t!354403 List!47799)) )
))
(declare-datatypes ((array!15696 0))(
  ( (array!15697 (arr!7011 (Array (_ BitVec 32) List!47799)) (size!34984 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8784 0))(
  ( (LongMapFixedSize!8785 (defaultEntry!4777 Int) (mask!12837 (_ BitVec 32)) (extraKeys!4641 (_ BitVec 32)) (zeroValue!4651 List!47799) (minValue!4651 List!47799) (_size!8827 (_ BitVec 32)) (_keys!4692 array!15690) (_values!4673 array!15696) (_vacant!4453 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17377 0))(
  ( (Cell!17378 (v!41594 LongMapFixedSize!8784)) )
))
(declare-datatypes ((MutLongMap!4392 0))(
  ( (LongMap!4392 (underlying!9013 Cell!17377)) (MutLongMapExt!4391 (__x!29201 Int)) )
))
(declare-datatypes ((Hashable!4308 0))(
  ( (HashableExt!4307 (__x!29202 Int)) )
))
(declare-datatypes ((Cell!17379 0))(
  ( (Cell!17380 (v!41595 MutLongMap!4392)) )
))
(declare-datatypes ((MutableMap!4298 0))(
  ( (MutableMapExt!4297 (__x!29203 Int)) (HashMap!4298 (underlying!9014 Cell!17379) (hashF!6340 Hashable!4308) (_size!8828 (_ BitVec 32)) (defaultValue!4469 Int)) )
))
(declare-datatypes ((CacheUp!2804 0))(
  ( (CacheUp!2805 (cache!4438 MutableMap!4298)) )
))
(declare-datatypes ((tuple4!1012 0))(
  ( (tuple4!1013 (_1!25870 Int) (_2!25870 CacheUp!2804) (_3!3214 CacheDown!2922) (_4!506 CacheFindLongestMatch!474)) )
))
(declare-fun lt!1516806 () tuple4!1012)

(declare-fun valid!3410 (CacheFindLongestMatch!474) Bool)

(assert (=> b!4290384 (= res!1759622 (valid!3410 (_4!506 lt!1516806)))))

(declare-fun b!4290385 () Bool)

(declare-fun totalInput!793 () BalanceConc!28276)

(assert (=> b!4290385 (= e!2665095 (= (totalInput!4352 (_4!506 lt!1516806)) totalInput!793))))

(declare-fun b!4290386 () Bool)

(declare-fun e!2665092 () Bool)

(declare-fun e!2665088 () Bool)

(declare-fun lt!1516808 () MutLongMap!4391)

(get-info :version)

(assert (=> b!4290386 (= e!2665092 (and e!2665088 ((_ is LongMap!4391) lt!1516808)))))

(assert (=> b!4290386 (= lt!1516808 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))))

(declare-fun mapNonEmpty!19775 () Bool)

(declare-fun mapRes!19776 () Bool)

(declare-fun tp!1315621 () Bool)

(declare-fun tp!1315603 () Bool)

(assert (=> mapNonEmpty!19775 (= mapRes!19776 (and tp!1315621 tp!1315603))))

(declare-fun mapKey!19776 () (_ BitVec 32))

(declare-fun mapRest!19774 () (Array (_ BitVec 32) List!47799))

(declare-fun mapValue!19775 () List!47799)

(declare-fun cacheUp!925 () CacheUp!2804)

(assert (=> mapNonEmpty!19775 (= (arr!7011 (_values!4673 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925))))))) (store mapRest!19774 mapKey!19776 mapValue!19775))))

(declare-fun b!4290387 () Bool)

(declare-fun res!1759621 () Bool)

(declare-fun e!2665086 () Bool)

(assert (=> b!4290387 (=> (not res!1759621) (not e!2665086))))

(declare-fun valid!3411 (CacheDown!2922) Bool)

(assert (=> b!4290387 (= res!1759621 (valid!3411 (_3!3214 lt!1516806)))))

(declare-fun b!4290388 () Bool)

(declare-fun e!2665103 () Bool)

(assert (=> b!4290388 (= e!2665088 e!2665103)))

(declare-fun b!4290389 () Bool)

(declare-fun res!1759625 () Bool)

(assert (=> b!4290389 (=> (not res!1759625) (not e!2665095))))

(assert (=> b!4290389 (= res!1759625 (valid!3411 (_3!3214 lt!1516806)))))

(declare-fun b!4290390 () Bool)

(declare-fun e!2665099 () Bool)

(assert (=> b!4290390 (= e!2665099 (not e!2665095))))

(declare-fun res!1759623 () Bool)

(assert (=> b!4290390 (=> (not res!1759623) (not e!2665095))))

(declare-fun input!5500 () BalanceConc!28276)

(declare-fun z!3746 () (InoxSet Context!5682))

(declare-datatypes ((tuple2!45312 0))(
  ( (tuple2!45313 (_1!25871 BalanceConc!28276) (_2!25871 BalanceConc!28276)) )
))
(declare-fun splitAt!222 (BalanceConc!28276 Int) tuple2!45312)

(declare-fun findLongestMatchZipperFastV2!25 ((InoxSet Context!5682) BalanceConc!28276 BalanceConc!28276) tuple2!45312)

(assert (=> b!4290390 (= res!1759623 (= (splitAt!222 input!5500 (_1!25870 lt!1516806)) (findLongestMatchZipperFastV2!25 z!3746 input!5500 totalInput!793)))))

(assert (=> b!4290390 e!2665086))

(declare-fun res!1759629 () Bool)

(assert (=> b!4290390 (=> (not res!1759629) (not e!2665086))))

(declare-fun lt!1516805 () Int)

(declare-fun lt!1516809 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!29 ((InoxSet Context!5682) Int BalanceConc!28276 Int) Int)

(assert (=> b!4290390 (= res!1759629 (= (_1!25870 lt!1516806) (findLongestMatchInnerZipperFastV2!29 z!3746 lt!1516809 totalInput!793 lt!1516805)))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!11 ((InoxSet Context!5682) Int BalanceConc!28276 Int CacheUp!2804 CacheDown!2922 CacheFindLongestMatch!474) tuple4!1012)

(assert (=> b!4290390 (= lt!1516806 (findLongestMatchInnerZipperFastV2Mem!11 z!3746 lt!1516809 totalInput!793 lt!1516805 cacheUp!925 cacheDown!1044 cacheFindLongestMatch!171))))

(declare-fun size!34985 (BalanceConc!28276) Int)

(assert (=> b!4290390 (= lt!1516809 (- lt!1516805 (size!34985 input!5500)))))

(assert (=> b!4290390 (= lt!1516805 (size!34985 totalInput!793))))

(declare-fun e!2665078 () Bool)

(declare-fun e!2665096 () Bool)

(assert (=> b!4290391 (= e!2665078 (and e!2665096 tp!1315619))))

(assert (=> b!4290392 (= e!2665076 (and e!2665092 tp!1315616))))

(declare-fun b!4290393 () Bool)

(declare-fun e!2665082 () Bool)

(assert (=> b!4290393 (= e!2665082 e!2665077)))

(declare-fun e!2665084 () Bool)

(declare-fun tp!1315622 () Bool)

(declare-fun tp!1315623 () Bool)

(declare-fun array_inv!5027 (array!15690) Bool)

(declare-fun array_inv!5028 (array!15696) Bool)

(assert (=> b!4290394 (= e!2665101 (and tp!1315618 tp!1315623 tp!1315622 (array_inv!5027 (_keys!4692 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925))))))) (array_inv!5028 (_values!4673 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925))))))) e!2665084))))

(declare-fun b!4290395 () Bool)

(declare-fun e!2665089 () Bool)

(declare-fun tp!1315605 () Bool)

(assert (=> b!4290395 (= e!2665089 (and tp!1315605 mapRes!19775))))

(declare-fun condMapEmpty!19776 () Bool)

(declare-fun mapDefault!19774 () List!47796)

(assert (=> b!4290395 (= condMapEmpty!19776 (= (arr!7009 (_values!4671 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044))))))) ((as const (Array (_ BitVec 32) List!47796)) mapDefault!19774)))))

(declare-fun tp!1315615 () Bool)

(declare-fun tp!1315620 () Bool)

(declare-fun array_inv!5029 (array!15692) Bool)

(assert (=> b!4290396 (= e!2665097 (and tp!1315626 tp!1315620 tp!1315615 (array_inv!5027 (_keys!4690 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044))))))) (array_inv!5029 (_values!4671 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044))))))) e!2665089))))

(declare-fun b!4290397 () Bool)

(declare-fun tp!1315624 () Bool)

(assert (=> b!4290397 (= e!2665084 (and tp!1315624 mapRes!19776))))

(declare-fun condMapEmpty!19775 () Bool)

(declare-fun mapDefault!19775 () List!47799)

(assert (=> b!4290397 (= condMapEmpty!19775 (= (arr!7011 (_values!4673 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925))))))) ((as const (Array (_ BitVec 32) List!47799)) mapDefault!19775)))))

(declare-fun mapIsEmpty!19774 () Bool)

(declare-fun mapRes!19774 () Bool)

(assert (=> mapIsEmpty!19774 mapRes!19774))

(declare-fun b!4290398 () Bool)

(declare-fun e!2665093 () Bool)

(assert (=> b!4290398 (= e!2665093 e!2665078)))

(declare-fun b!4290399 () Bool)

(declare-fun res!1759626 () Bool)

(assert (=> b!4290399 (=> (not res!1759626) (not e!2665086))))

(assert (=> b!4290399 (= res!1759626 (valid!3410 (_4!506 lt!1516806)))))

(declare-fun b!4290400 () Bool)

(declare-fun e!2665091 () Bool)

(declare-fun tp!1315604 () Bool)

(declare-fun inv!63167 (Conc!14393) Bool)

(assert (=> b!4290400 (= e!2665091 (and (inv!63167 (c!730286 totalInput!793)) tp!1315604))))

(declare-fun mapIsEmpty!19775 () Bool)

(assert (=> mapIsEmpty!19775 mapRes!19775))

(declare-fun b!4290401 () Bool)

(declare-fun e!2665102 () Bool)

(assert (=> b!4290401 (= e!2665102 e!2665098)))

(declare-fun b!4290402 () Bool)

(declare-fun res!1759624 () Bool)

(assert (=> b!4290402 (=> (not res!1759624) (not e!2665095))))

(declare-fun valid!3412 (CacheUp!2804) Bool)

(assert (=> b!4290402 (= res!1759624 (valid!3412 (_2!25870 lt!1516806)))))

(declare-fun b!4290403 () Bool)

(declare-fun e!2665075 () Bool)

(declare-fun tp!1315607 () Bool)

(assert (=> b!4290403 (= e!2665075 (and (inv!63167 (c!730286 input!5500)) tp!1315607))))

(declare-fun setIsEmpty!26391 () Bool)

(declare-fun setRes!26391 () Bool)

(assert (=> setIsEmpty!26391 setRes!26391))

(declare-fun b!4290404 () Bool)

(declare-fun e!2665094 () Bool)

(declare-fun tp!1315606 () Bool)

(assert (=> b!4290404 (= e!2665094 (and tp!1315606 mapRes!19774))))

(declare-fun condMapEmpty!19774 () Bool)

(declare-fun mapDefault!19776 () List!47797)

(assert (=> b!4290404 (= condMapEmpty!19774 (= (arr!7010 (_values!4672 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))))) ((as const (Array (_ BitVec 32) List!47797)) mapDefault!19776)))))

(declare-fun b!4290405 () Bool)

(declare-fun e!2665081 () Bool)

(declare-fun lt!1516807 () MutLongMap!4390)

(assert (=> b!4290405 (= e!2665096 (and e!2665081 ((_ is LongMap!4390) lt!1516807)))))

(assert (=> b!4290405 (= lt!1516807 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044))))))

(declare-fun tp!1315617 () Bool)

(declare-fun e!2665100 () Bool)

(declare-fun tp!1315601 () Bool)

(declare-fun array_inv!5030 (array!15694) Bool)

(assert (=> b!4290406 (= e!2665100 (and tp!1315613 tp!1315617 tp!1315601 (array_inv!5027 (_keys!4691 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))))) (array_inv!5030 (_values!4672 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))))) e!2665094))))

(declare-fun mapIsEmpty!19776 () Bool)

(assert (=> mapIsEmpty!19776 mapRes!19776))

(declare-fun b!4290407 () Bool)

(declare-fun res!1759628 () Bool)

(assert (=> b!4290407 (=> (not res!1759628) (not e!2665099))))

(assert (=> b!4290407 (= res!1759628 (= (totalInput!4352 cacheFindLongestMatch!171) totalInput!793))))

(declare-fun b!4290408 () Bool)

(declare-fun tp!1315610 () Bool)

(assert (=> b!4290408 (= e!2665090 (and (inv!63167 (c!730286 (totalInput!4352 cacheFindLongestMatch!171))) tp!1315610))))

(declare-fun b!4290409 () Bool)

(assert (=> b!4290409 (= e!2665086 (= (totalInput!4352 (_4!506 lt!1516806)) totalInput!793))))

(declare-fun b!4290410 () Bool)

(assert (=> b!4290410 (= e!2665081 e!2665083)))

(declare-fun mapNonEmpty!19776 () Bool)

(declare-fun tp!1315625 () Bool)

(declare-fun tp!1315614 () Bool)

(assert (=> mapNonEmpty!19776 (= mapRes!19774 (and tp!1315625 tp!1315614))))

(declare-fun mapValue!19774 () List!47797)

(declare-fun mapKey!19774 () (_ BitVec 32))

(declare-fun mapRest!19775 () (Array (_ BitVec 32) List!47797))

(assert (=> mapNonEmpty!19776 (= (arr!7010 (_values!4672 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))))) (store mapRest!19775 mapKey!19774 mapValue!19774))))

(declare-fun res!1759627 () Bool)

(assert (=> start!412026 (=> (not res!1759627) (not e!2665099))))

(declare-fun isSuffix!1037 (List!47798 List!47798) Bool)

(declare-fun list!17358 (BalanceConc!28276) List!47798)

(assert (=> start!412026 (= res!1759627 (isSuffix!1037 (list!17358 input!5500) (list!17358 totalInput!793)))))

(assert (=> start!412026 e!2665099))

(assert (=> start!412026 (and (inv!63166 totalInput!793) e!2665091)))

(assert (=> start!412026 (and (inv!63166 input!5500) e!2665075)))

(declare-fun inv!63168 (CacheFindLongestMatch!474) Bool)

(assert (=> start!412026 (and (inv!63168 cacheFindLongestMatch!171) e!2665079)))

(declare-fun inv!63169 (CacheUp!2804) Bool)

(assert (=> start!412026 (and (inv!63169 cacheUp!925) e!2665082)))

(declare-fun inv!63170 (CacheDown!2922) Bool)

(assert (=> start!412026 (and (inv!63170 cacheDown!1044) e!2665093)))

(declare-fun condSetEmpty!26391 () Bool)

(assert (=> start!412026 (= condSetEmpty!26391 (= z!3746 ((as const (Array Context!5682 Bool)) false)))))

(assert (=> start!412026 setRes!26391))

(declare-fun b!4290411 () Bool)

(declare-fun lt!1516810 () MutLongMap!4392)

(assert (=> b!4290411 (= e!2665073 (and e!2665102 ((_ is LongMap!4392) lt!1516810)))))

(assert (=> b!4290411 (= lt!1516810 (v!41595 (underlying!9014 (cache!4438 cacheUp!925))))))

(declare-fun b!4290412 () Bool)

(assert (=> b!4290412 (= e!2665103 e!2665100)))

(declare-fun b!4290413 () Bool)

(declare-fun res!1759630 () Bool)

(assert (=> b!4290413 (=> (not res!1759630) (not e!2665086))))

(assert (=> b!4290413 (= res!1759630 (valid!3412 (_2!25870 lt!1516806)))))

(declare-fun setElem!26391 () Context!5682)

(declare-fun setNonEmpty!26391 () Bool)

(declare-fun tp!1315608 () Bool)

(declare-fun inv!63171 (Context!5682) Bool)

(assert (=> setNonEmpty!26391 (= setRes!26391 (and tp!1315608 (inv!63171 setElem!26391) e!2665074))))

(declare-fun setRest!26391 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26391 (= z!3746 ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26391 true) setRest!26391))))

(assert (= (and start!412026 res!1759627) b!4290407))

(assert (= (and b!4290407 res!1759628) b!4290390))

(assert (= (and b!4290390 res!1759629) b!4290413))

(assert (= (and b!4290413 res!1759630) b!4290387))

(assert (= (and b!4290387 res!1759621) b!4290399))

(assert (= (and b!4290399 res!1759626) b!4290409))

(assert (= (and b!4290390 res!1759623) b!4290402))

(assert (= (and b!4290402 res!1759624) b!4290389))

(assert (= (and b!4290389 res!1759625) b!4290384))

(assert (= (and b!4290384 res!1759622) b!4290385))

(assert (= start!412026 b!4290400))

(assert (= start!412026 b!4290403))

(assert (= (and b!4290404 condMapEmpty!19774) mapIsEmpty!19774))

(assert (= (and b!4290404 (not condMapEmpty!19774)) mapNonEmpty!19776))

(assert (= b!4290406 b!4290404))

(assert (= b!4290412 b!4290406))

(assert (= b!4290388 b!4290412))

(assert (= (and b!4290386 ((_ is LongMap!4391) (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))) b!4290388))

(assert (= b!4290392 b!4290386))

(assert (= (and b!4290383 ((_ is HashMap!4297) (cache!4437 cacheFindLongestMatch!171))) b!4290392))

(assert (= b!4290383 b!4290408))

(assert (= start!412026 b!4290383))

(assert (= (and b!4290397 condMapEmpty!19775) mapIsEmpty!19776))

(assert (= (and b!4290397 (not condMapEmpty!19775)) mapNonEmpty!19775))

(assert (= b!4290394 b!4290397))

(assert (= b!4290381 b!4290394))

(assert (= b!4290401 b!4290381))

(assert (= (and b!4290411 ((_ is LongMap!4392) (v!41595 (underlying!9014 (cache!4438 cacheUp!925))))) b!4290401))

(assert (= b!4290379 b!4290411))

(assert (= (and b!4290393 ((_ is HashMap!4298) (cache!4438 cacheUp!925))) b!4290379))

(assert (= start!412026 b!4290393))

(assert (= (and b!4290395 condMapEmpty!19776) mapIsEmpty!19775))

(assert (= (and b!4290395 (not condMapEmpty!19776)) mapNonEmpty!19774))

(assert (= b!4290396 b!4290395))

(assert (= b!4290380 b!4290396))

(assert (= b!4290410 b!4290380))

(assert (= (and b!4290405 ((_ is LongMap!4390) (v!41591 (underlying!9010 (cache!4436 cacheDown!1044))))) b!4290410))

(assert (= b!4290391 b!4290405))

(assert (= (and b!4290398 ((_ is HashMap!4296) (cache!4436 cacheDown!1044))) b!4290391))

(assert (= start!412026 b!4290398))

(assert (= (and start!412026 condSetEmpty!26391) setIsEmpty!26391))

(assert (= (and start!412026 (not condSetEmpty!26391)) setNonEmpty!26391))

(assert (= setNonEmpty!26391 b!4290382))

(declare-fun m!4884770 () Bool)

(assert (=> mapNonEmpty!19776 m!4884770))

(declare-fun m!4884772 () Bool)

(assert (=> b!4290400 m!4884772))

(declare-fun m!4884774 () Bool)

(assert (=> b!4290396 m!4884774))

(declare-fun m!4884776 () Bool)

(assert (=> b!4290396 m!4884776))

(declare-fun m!4884778 () Bool)

(assert (=> b!4290402 m!4884778))

(declare-fun m!4884780 () Bool)

(assert (=> b!4290406 m!4884780))

(declare-fun m!4884782 () Bool)

(assert (=> b!4290406 m!4884782))

(declare-fun m!4884784 () Bool)

(assert (=> b!4290403 m!4884784))

(declare-fun m!4884786 () Bool)

(assert (=> b!4290389 m!4884786))

(assert (=> b!4290387 m!4884786))

(assert (=> b!4290413 m!4884778))

(declare-fun m!4884788 () Bool)

(assert (=> mapNonEmpty!19774 m!4884788))

(declare-fun m!4884790 () Bool)

(assert (=> b!4290390 m!4884790))

(declare-fun m!4884792 () Bool)

(assert (=> b!4290390 m!4884792))

(declare-fun m!4884794 () Bool)

(assert (=> b!4290390 m!4884794))

(declare-fun m!4884796 () Bool)

(assert (=> b!4290390 m!4884796))

(declare-fun m!4884798 () Bool)

(assert (=> b!4290390 m!4884798))

(declare-fun m!4884800 () Bool)

(assert (=> b!4290390 m!4884800))

(declare-fun m!4884802 () Bool)

(assert (=> start!412026 m!4884802))

(declare-fun m!4884804 () Bool)

(assert (=> start!412026 m!4884804))

(declare-fun m!4884806 () Bool)

(assert (=> start!412026 m!4884806))

(assert (=> start!412026 m!4884802))

(declare-fun m!4884808 () Bool)

(assert (=> start!412026 m!4884808))

(declare-fun m!4884810 () Bool)

(assert (=> start!412026 m!4884810))

(declare-fun m!4884812 () Bool)

(assert (=> start!412026 m!4884812))

(declare-fun m!4884814 () Bool)

(assert (=> start!412026 m!4884814))

(assert (=> start!412026 m!4884804))

(declare-fun m!4884816 () Bool)

(assert (=> start!412026 m!4884816))

(declare-fun m!4884818 () Bool)

(assert (=> b!4290399 m!4884818))

(declare-fun m!4884820 () Bool)

(assert (=> b!4290408 m!4884820))

(declare-fun m!4884822 () Bool)

(assert (=> b!4290383 m!4884822))

(assert (=> b!4290384 m!4884818))

(declare-fun m!4884824 () Bool)

(assert (=> setNonEmpty!26391 m!4884824))

(declare-fun m!4884826 () Bool)

(assert (=> b!4290394 m!4884826))

(declare-fun m!4884828 () Bool)

(assert (=> b!4290394 m!4884828))

(declare-fun m!4884830 () Bool)

(assert (=> mapNonEmpty!19775 m!4884830))

(check-sat (not b!4290413) b_and!338603 b_and!338605 (not start!412026) b_and!338607 (not b!4290402) (not b!4290406) (not b_next!128095) (not b!4290399) b_and!338609 (not b_next!128097) b_and!338601 (not b!4290389) (not b_next!128091) (not b!4290387) (not b!4290408) (not b_next!128093) (not b!4290404) (not mapNonEmpty!19774) (not b!4290400) b_and!338599 (not b!4290390) (not b!4290383) (not mapNonEmpty!19776) (not b!4290395) (not b!4290384) (not setNonEmpty!26391) (not b_next!128089) (not b!4290396) (not b!4290394) (not b!4290403) (not mapNonEmpty!19775) (not b!4290382) (not b!4290397) (not b_next!128087))
(check-sat (not b_next!128091) (not b_next!128093) b_and!338603 b_and!338599 b_and!338605 b_and!338607 (not b_next!128095) b_and!338609 (not b_next!128089) (not b_next!128097) b_and!338601 (not b_next!128087))
(get-model)

(declare-fun d!1265587 () Bool)

(declare-fun isBalanced!3883 (Conc!14393) Bool)

(assert (=> d!1265587 (= (inv!63166 (totalInput!4352 cacheFindLongestMatch!171)) (isBalanced!3883 (c!730286 (totalInput!4352 cacheFindLongestMatch!171))))))

(declare-fun bs!602946 () Bool)

(assert (= bs!602946 d!1265587))

(declare-fun m!4884832 () Bool)

(assert (=> bs!602946 m!4884832))

(assert (=> b!4290383 d!1265587))

(declare-fun d!1265589 () Bool)

(declare-fun validCacheMapUp!418 (MutableMap!4298) Bool)

(assert (=> d!1265589 (= (valid!3412 (_2!25870 lt!1516806)) (validCacheMapUp!418 (cache!4438 (_2!25870 lt!1516806))))))

(declare-fun bs!602947 () Bool)

(assert (= bs!602947 d!1265589))

(declare-fun m!4884834 () Bool)

(assert (=> bs!602947 m!4884834))

(assert (=> b!4290402 d!1265589))

(declare-fun d!1265591 () Bool)

(assert (=> d!1265591 (= (array_inv!5027 (_keys!4692 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925))))))) (bvsge (size!34981 (_keys!4692 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925))))))) #b00000000000000000000000000000000))))

(assert (=> b!4290394 d!1265591))

(declare-fun d!1265593 () Bool)

(assert (=> d!1265593 (= (array_inv!5028 (_values!4673 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925))))))) (bvsge (size!34984 (_values!4673 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925))))))) #b00000000000000000000000000000000))))

(assert (=> b!4290394 d!1265593))

(declare-fun d!1265595 () Bool)

(declare-fun validCacheMapFindLongestMatch!76 (MutableMap!4297 BalanceConc!28276) Bool)

(assert (=> d!1265595 (= (valid!3410 (_4!506 lt!1516806)) (validCacheMapFindLongestMatch!76 (cache!4437 (_4!506 lt!1516806)) (totalInput!4352 (_4!506 lt!1516806))))))

(declare-fun bs!602948 () Bool)

(assert (= bs!602948 d!1265595))

(declare-fun m!4884836 () Bool)

(assert (=> bs!602948 m!4884836))

(assert (=> b!4290384 d!1265595))

(declare-fun d!1265597 () Bool)

(declare-fun c!730289 () Bool)

(assert (=> d!1265597 (= c!730289 ((_ is Node!14393) (c!730286 input!5500)))))

(declare-fun e!2665108 () Bool)

(assert (=> d!1265597 (= (inv!63167 (c!730286 input!5500)) e!2665108)))

(declare-fun b!4290420 () Bool)

(declare-fun inv!63172 (Conc!14393) Bool)

(assert (=> b!4290420 (= e!2665108 (inv!63172 (c!730286 input!5500)))))

(declare-fun b!4290421 () Bool)

(declare-fun e!2665109 () Bool)

(assert (=> b!4290421 (= e!2665108 e!2665109)))

(declare-fun res!1759633 () Bool)

(assert (=> b!4290421 (= res!1759633 (not ((_ is Leaf!22270) (c!730286 input!5500))))))

(assert (=> b!4290421 (=> res!1759633 e!2665109)))

(declare-fun b!4290422 () Bool)

(declare-fun inv!63173 (Conc!14393) Bool)

(assert (=> b!4290422 (= e!2665109 (inv!63173 (c!730286 input!5500)))))

(assert (= (and d!1265597 c!730289) b!4290420))

(assert (= (and d!1265597 (not c!730289)) b!4290421))

(assert (= (and b!4290421 (not res!1759633)) b!4290422))

(declare-fun m!4884838 () Bool)

(assert (=> b!4290420 m!4884838))

(declare-fun m!4884840 () Bool)

(assert (=> b!4290422 m!4884840))

(assert (=> b!4290403 d!1265597))

(declare-fun d!1265599 () Bool)

(assert (=> d!1265599 (= (array_inv!5027 (_keys!4690 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044))))))) (bvsge (size!34981 (_keys!4690 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044))))))) #b00000000000000000000000000000000))))

(assert (=> b!4290396 d!1265599))

(declare-fun d!1265601 () Bool)

(assert (=> d!1265601 (= (array_inv!5029 (_values!4671 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044))))))) (bvsge (size!34982 (_values!4671 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044))))))) #b00000000000000000000000000000000))))

(assert (=> b!4290396 d!1265601))

(assert (=> b!4290413 d!1265589))

(declare-fun d!1265603 () Bool)

(declare-fun lambda!131505 () Int)

(declare-fun forall!8551 (List!47795 Int) Bool)

(assert (=> d!1265603 (= (inv!63171 setElem!26391) (forall!8551 (exprs!3341 setElem!26391) lambda!131505))))

(declare-fun bs!602949 () Bool)

(assert (= bs!602949 d!1265603))

(declare-fun m!4884842 () Bool)

(assert (=> bs!602949 m!4884842))

(assert (=> setNonEmpty!26391 d!1265603))

(declare-fun d!1265605 () Bool)

(declare-fun validCacheMapDown!449 (MutableMap!4296) Bool)

(assert (=> d!1265605 (= (valid!3411 (_3!3214 lt!1516806)) (validCacheMapDown!449 (cache!4436 (_3!3214 lt!1516806))))))

(declare-fun bs!602950 () Bool)

(assert (= bs!602950 d!1265605))

(declare-fun m!4884844 () Bool)

(assert (=> bs!602950 m!4884844))

(assert (=> b!4290387 d!1265605))

(declare-fun d!1265607 () Bool)

(assert (=> d!1265607 (= (array_inv!5027 (_keys!4691 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))))) (bvsge (size!34981 (_keys!4691 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))))) #b00000000000000000000000000000000))))

(assert (=> b!4290406 d!1265607))

(declare-fun d!1265609 () Bool)

(assert (=> d!1265609 (= (array_inv!5030 (_values!4672 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))))) (bvsge (size!34983 (_values!4672 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))))) #b00000000000000000000000000000000))))

(assert (=> b!4290406 d!1265609))

(assert (=> b!4290399 d!1265595))

(declare-fun d!1265611 () Bool)

(declare-fun res!1759636 () Bool)

(declare-fun e!2665112 () Bool)

(assert (=> d!1265611 (=> (not res!1759636) (not e!2665112))))

(assert (=> d!1265611 (= res!1759636 ((_ is HashMap!4297) (cache!4437 cacheFindLongestMatch!171)))))

(assert (=> d!1265611 (= (inv!63168 cacheFindLongestMatch!171) e!2665112)))

(declare-fun b!4290425 () Bool)

(assert (=> b!4290425 (= e!2665112 (validCacheMapFindLongestMatch!76 (cache!4437 cacheFindLongestMatch!171) (totalInput!4352 cacheFindLongestMatch!171)))))

(assert (= (and d!1265611 res!1759636) b!4290425))

(declare-fun m!4884846 () Bool)

(assert (=> b!4290425 m!4884846))

(assert (=> start!412026 d!1265611))

(declare-fun d!1265613 () Bool)

(declare-fun list!17359 (Conc!14393) List!47798)

(assert (=> d!1265613 (= (list!17358 input!5500) (list!17359 (c!730286 input!5500)))))

(declare-fun bs!602951 () Bool)

(assert (= bs!602951 d!1265613))

(declare-fun m!4884848 () Bool)

(assert (=> bs!602951 m!4884848))

(assert (=> start!412026 d!1265613))

(declare-fun d!1265615 () Bool)

(assert (=> d!1265615 (= (inv!63166 totalInput!793) (isBalanced!3883 (c!730286 totalInput!793)))))

(declare-fun bs!602952 () Bool)

(assert (= bs!602952 d!1265615))

(declare-fun m!4884850 () Bool)

(assert (=> bs!602952 m!4884850))

(assert (=> start!412026 d!1265615))

(declare-fun d!1265617 () Bool)

(declare-fun res!1759639 () Bool)

(declare-fun e!2665115 () Bool)

(assert (=> d!1265617 (=> (not res!1759639) (not e!2665115))))

(assert (=> d!1265617 (= res!1759639 ((_ is HashMap!4296) (cache!4436 cacheDown!1044)))))

(assert (=> d!1265617 (= (inv!63170 cacheDown!1044) e!2665115)))

(declare-fun b!4290428 () Bool)

(assert (=> b!4290428 (= e!2665115 (validCacheMapDown!449 (cache!4436 cacheDown!1044)))))

(assert (= (and d!1265617 res!1759639) b!4290428))

(declare-fun m!4884852 () Bool)

(assert (=> b!4290428 m!4884852))

(assert (=> start!412026 d!1265617))

(declare-fun d!1265619 () Bool)

(assert (=> d!1265619 (= (list!17358 totalInput!793) (list!17359 (c!730286 totalInput!793)))))

(declare-fun bs!602953 () Bool)

(assert (= bs!602953 d!1265619))

(declare-fun m!4884854 () Bool)

(assert (=> bs!602953 m!4884854))

(assert (=> start!412026 d!1265619))

(declare-fun d!1265621 () Bool)

(declare-fun e!2665118 () Bool)

(assert (=> d!1265621 e!2665118))

(declare-fun res!1759642 () Bool)

(assert (=> d!1265621 (=> res!1759642 e!2665118)))

(declare-fun lt!1516813 () Bool)

(assert (=> d!1265621 (= res!1759642 (not lt!1516813))))

(declare-fun drop!2192 (List!47798 Int) List!47798)

(declare-fun size!34986 (List!47798) Int)

(assert (=> d!1265621 (= lt!1516813 (= (list!17358 input!5500) (drop!2192 (list!17358 totalInput!793) (- (size!34986 (list!17358 totalInput!793)) (size!34986 (list!17358 input!5500))))))))

(assert (=> d!1265621 (= (isSuffix!1037 (list!17358 input!5500) (list!17358 totalInput!793)) lt!1516813)))

(declare-fun b!4290431 () Bool)

(assert (=> b!4290431 (= e!2665118 (>= (size!34986 (list!17358 totalInput!793)) (size!34986 (list!17358 input!5500))))))

(assert (= (and d!1265621 (not res!1759642)) b!4290431))

(assert (=> d!1265621 m!4884804))

(declare-fun m!4884856 () Bool)

(assert (=> d!1265621 m!4884856))

(assert (=> d!1265621 m!4884802))

(declare-fun m!4884858 () Bool)

(assert (=> d!1265621 m!4884858))

(assert (=> d!1265621 m!4884804))

(declare-fun m!4884860 () Bool)

(assert (=> d!1265621 m!4884860))

(assert (=> b!4290431 m!4884804))

(assert (=> b!4290431 m!4884856))

(assert (=> b!4290431 m!4884802))

(assert (=> b!4290431 m!4884858))

(assert (=> start!412026 d!1265621))

(declare-fun d!1265623 () Bool)

(assert (=> d!1265623 (= (inv!63166 input!5500) (isBalanced!3883 (c!730286 input!5500)))))

(declare-fun bs!602954 () Bool)

(assert (= bs!602954 d!1265623))

(declare-fun m!4884862 () Bool)

(assert (=> bs!602954 m!4884862))

(assert (=> start!412026 d!1265623))

(declare-fun d!1265625 () Bool)

(declare-fun res!1759645 () Bool)

(declare-fun e!2665121 () Bool)

(assert (=> d!1265625 (=> (not res!1759645) (not e!2665121))))

(assert (=> d!1265625 (= res!1759645 ((_ is HashMap!4298) (cache!4438 cacheUp!925)))))

(assert (=> d!1265625 (= (inv!63169 cacheUp!925) e!2665121)))

(declare-fun b!4290434 () Bool)

(assert (=> b!4290434 (= e!2665121 (validCacheMapUp!418 (cache!4438 cacheUp!925)))))

(assert (= (and d!1265625 res!1759645) b!4290434))

(declare-fun m!4884864 () Bool)

(assert (=> b!4290434 m!4884864))

(assert (=> start!412026 d!1265625))

(assert (=> b!4290389 d!1265605))

(declare-fun b!4290451 () Bool)

(declare-fun e!2665136 () Int)

(assert (=> b!4290451 (= e!2665136 1)))

(declare-fun b!4290452 () Bool)

(declare-fun e!2665134 () Int)

(declare-fun lt!1516821 () Int)

(assert (=> b!4290452 (= e!2665134 (+ 1 lt!1516821))))

(declare-fun b!4290453 () Bool)

(declare-fun e!2665133 () Bool)

(declare-fun lostCauseZipper!638 ((InoxSet Context!5682)) Bool)

(assert (=> b!4290453 (= e!2665133 (lostCauseZipper!638 z!3746))))

(declare-fun d!1265627 () Bool)

(declare-fun lt!1516820 () Int)

(assert (=> d!1265627 (and (>= lt!1516820 0) (<= lt!1516820 (- lt!1516805 lt!1516809)))))

(declare-fun e!2665132 () Int)

(assert (=> d!1265627 (= lt!1516820 e!2665132)))

(declare-fun c!730296 () Bool)

(assert (=> d!1265627 (= c!730296 e!2665133)))

(declare-fun res!1759651 () Bool)

(assert (=> d!1265627 (=> res!1759651 e!2665133)))

(assert (=> d!1265627 (= res!1759651 (= lt!1516809 lt!1516805))))

(declare-fun e!2665135 () Bool)

(assert (=> d!1265627 e!2665135))

(declare-fun res!1759650 () Bool)

(assert (=> d!1265627 (=> (not res!1759650) (not e!2665135))))

(assert (=> d!1265627 (= res!1759650 (>= lt!1516809 0))))

(assert (=> d!1265627 (= (findLongestMatchInnerZipperFastV2!29 z!3746 lt!1516809 totalInput!793 lt!1516805) lt!1516820)))

(declare-fun b!4290454 () Bool)

(assert (=> b!4290454 (= e!2665132 0)))

(declare-fun b!4290455 () Bool)

(assert (=> b!4290455 (= e!2665136 0)))

(declare-fun b!4290456 () Bool)

(declare-fun c!730298 () Bool)

(declare-fun lt!1516822 () (InoxSet Context!5682))

(declare-fun nullableZipper!761 ((InoxSet Context!5682)) Bool)

(assert (=> b!4290456 (= c!730298 (nullableZipper!761 lt!1516822))))

(assert (=> b!4290456 (= e!2665134 e!2665136)))

(declare-fun b!4290457 () Bool)

(assert (=> b!4290457 (= e!2665135 (<= lt!1516809 (size!34985 totalInput!793)))))

(declare-fun b!4290458 () Bool)

(assert (=> b!4290458 (= e!2665132 e!2665134)))

(declare-fun derivationStepZipper!542 ((InoxSet Context!5682) C!26100) (InoxSet Context!5682))

(declare-fun apply!10829 (BalanceConc!28276 Int) C!26100)

(assert (=> b!4290458 (= lt!1516822 (derivationStepZipper!542 z!3746 (apply!10829 totalInput!793 lt!1516809)))))

(assert (=> b!4290458 (= lt!1516821 (findLongestMatchInnerZipperFastV2!29 lt!1516822 (+ lt!1516809 1) totalInput!793 lt!1516805))))

(declare-fun c!730297 () Bool)

(assert (=> b!4290458 (= c!730297 (> lt!1516821 0))))

(assert (= (and d!1265627 res!1759650) b!4290457))

(assert (= (and d!1265627 (not res!1759651)) b!4290453))

(assert (= (and d!1265627 c!730296) b!4290454))

(assert (= (and d!1265627 (not c!730296)) b!4290458))

(assert (= (and b!4290458 c!730297) b!4290452))

(assert (= (and b!4290458 (not c!730297)) b!4290456))

(assert (= (and b!4290456 c!730298) b!4290451))

(assert (= (and b!4290456 (not c!730298)) b!4290455))

(declare-fun m!4884866 () Bool)

(assert (=> b!4290453 m!4884866))

(declare-fun m!4884868 () Bool)

(assert (=> b!4290456 m!4884868))

(assert (=> b!4290457 m!4884792))

(declare-fun m!4884870 () Bool)

(assert (=> b!4290458 m!4884870))

(assert (=> b!4290458 m!4884870))

(declare-fun m!4884872 () Bool)

(assert (=> b!4290458 m!4884872))

(declare-fun m!4884874 () Bool)

(assert (=> b!4290458 m!4884874))

(assert (=> b!4290390 d!1265627))

(declare-fun b!4290469 () Bool)

(declare-fun res!1759665 () Bool)

(declare-fun e!2665141 () Bool)

(assert (=> b!4290469 (=> (not res!1759665) (not e!2665141))))

(declare-fun lt!1516825 () tuple4!1012)

(assert (=> b!4290469 (= res!1759665 (valid!3412 (_2!25870 lt!1516825)))))

(declare-fun b!4290470 () Bool)

(declare-fun res!1759664 () Bool)

(assert (=> b!4290470 (=> (not res!1759664) (not e!2665141))))

(assert (=> b!4290470 (= res!1759664 (valid!3411 (_3!3214 lt!1516825)))))

(declare-fun b!4290471 () Bool)

(declare-fun e!2665142 () Bool)

(assert (=> b!4290471 (= e!2665142 (<= lt!1516809 (size!34985 totalInput!793)))))

(declare-fun b!4290472 () Bool)

(assert (=> b!4290472 (= e!2665141 (= (totalInput!4352 (_4!506 lt!1516825)) totalInput!793))))

(declare-fun d!1265629 () Bool)

(assert (=> d!1265629 e!2665141))

(declare-fun res!1759662 () Bool)

(assert (=> d!1265629 (=> (not res!1759662) (not e!2665141))))

(assert (=> d!1265629 (= res!1759662 (= (_1!25870 lt!1516825) (findLongestMatchInnerZipperFastV2!29 z!3746 lt!1516809 totalInput!793 lt!1516805)))))

(declare-fun choose!26141 ((InoxSet Context!5682) Int BalanceConc!28276 Int CacheUp!2804 CacheDown!2922 CacheFindLongestMatch!474) tuple4!1012)

(assert (=> d!1265629 (= lt!1516825 (choose!26141 z!3746 lt!1516809 totalInput!793 lt!1516805 cacheUp!925 cacheDown!1044 cacheFindLongestMatch!171))))

(assert (=> d!1265629 e!2665142))

(declare-fun res!1759666 () Bool)

(assert (=> d!1265629 (=> (not res!1759666) (not e!2665142))))

(assert (=> d!1265629 (= res!1759666 (>= lt!1516809 0))))

(assert (=> d!1265629 (= (findLongestMatchInnerZipperFastV2Mem!11 z!3746 lt!1516809 totalInput!793 lt!1516805 cacheUp!925 cacheDown!1044 cacheFindLongestMatch!171) lt!1516825)))

(declare-fun b!4290473 () Bool)

(declare-fun res!1759663 () Bool)

(assert (=> b!4290473 (=> (not res!1759663) (not e!2665141))))

(assert (=> b!4290473 (= res!1759663 (valid!3410 (_4!506 lt!1516825)))))

(assert (= (and d!1265629 res!1759666) b!4290471))

(assert (= (and d!1265629 res!1759662) b!4290469))

(assert (= (and b!4290469 res!1759665) b!4290470))

(assert (= (and b!4290470 res!1759664) b!4290473))

(assert (= (and b!4290473 res!1759663) b!4290472))

(assert (=> d!1265629 m!4884794))

(declare-fun m!4884876 () Bool)

(assert (=> d!1265629 m!4884876))

(declare-fun m!4884878 () Bool)

(assert (=> b!4290469 m!4884878))

(declare-fun m!4884880 () Bool)

(assert (=> b!4290470 m!4884880))

(assert (=> b!4290471 m!4884792))

(declare-fun m!4884882 () Bool)

(assert (=> b!4290473 m!4884882))

(assert (=> b!4290390 d!1265629))

(declare-fun d!1265631 () Bool)

(declare-fun lt!1516830 () tuple2!45312)

(declare-fun ++!12109 (List!47798 List!47798) List!47798)

(assert (=> d!1265631 (= (++!12109 (list!17358 (_1!25871 lt!1516830)) (list!17358 (_2!25871 lt!1516830))) (list!17358 input!5500))))

(declare-fun lt!1516831 () Int)

(assert (=> d!1265631 (= lt!1516830 (splitAt!222 input!5500 (findLongestMatchInnerZipperFastV2!29 z!3746 (- lt!1516831 (size!34985 input!5500)) totalInput!793 lt!1516831)))))

(assert (=> d!1265631 (= lt!1516831 (size!34985 totalInput!793))))

(assert (=> d!1265631 (isSuffix!1037 (list!17358 input!5500) (list!17358 totalInput!793))))

(assert (=> d!1265631 (= (findLongestMatchZipperFastV2!25 z!3746 input!5500 totalInput!793) lt!1516830)))

(declare-fun bs!602955 () Bool)

(assert (= bs!602955 d!1265631))

(declare-fun m!4884884 () Bool)

(assert (=> bs!602955 m!4884884))

(assert (=> bs!602955 m!4884802))

(assert (=> bs!602955 m!4884804))

(assert (=> bs!602955 m!4884806))

(declare-fun m!4884886 () Bool)

(assert (=> bs!602955 m!4884886))

(assert (=> bs!602955 m!4884884))

(declare-fun m!4884888 () Bool)

(assert (=> bs!602955 m!4884888))

(assert (=> bs!602955 m!4884886))

(assert (=> bs!602955 m!4884802))

(assert (=> bs!602955 m!4884800))

(assert (=> bs!602955 m!4884792))

(assert (=> bs!602955 m!4884804))

(declare-fun m!4884890 () Bool)

(assert (=> bs!602955 m!4884890))

(declare-fun m!4884892 () Bool)

(assert (=> bs!602955 m!4884892))

(assert (=> bs!602955 m!4884890))

(assert (=> b!4290390 d!1265631))

(declare-fun d!1265633 () Bool)

(declare-fun lt!1516834 () Int)

(assert (=> d!1265633 (= lt!1516834 (size!34986 (list!17358 totalInput!793)))))

(declare-fun size!34987 (Conc!14393) Int)

(assert (=> d!1265633 (= lt!1516834 (size!34987 (c!730286 totalInput!793)))))

(assert (=> d!1265633 (= (size!34985 totalInput!793) lt!1516834)))

(declare-fun bs!602956 () Bool)

(assert (= bs!602956 d!1265633))

(assert (=> bs!602956 m!4884804))

(assert (=> bs!602956 m!4884804))

(assert (=> bs!602956 m!4884856))

(declare-fun m!4884894 () Bool)

(assert (=> bs!602956 m!4884894))

(assert (=> b!4290390 d!1265633))

(declare-fun d!1265635 () Bool)

(declare-fun lt!1516835 () Int)

(assert (=> d!1265635 (= lt!1516835 (size!34986 (list!17358 input!5500)))))

(assert (=> d!1265635 (= lt!1516835 (size!34987 (c!730286 input!5500)))))

(assert (=> d!1265635 (= (size!34985 input!5500) lt!1516835)))

(declare-fun bs!602957 () Bool)

(assert (= bs!602957 d!1265635))

(assert (=> bs!602957 m!4884802))

(assert (=> bs!602957 m!4884802))

(assert (=> bs!602957 m!4884858))

(declare-fun m!4884896 () Bool)

(assert (=> bs!602957 m!4884896))

(assert (=> b!4290390 d!1265635))

(declare-fun d!1265637 () Bool)

(declare-fun e!2665145 () Bool)

(assert (=> d!1265637 e!2665145))

(declare-fun res!1759671 () Bool)

(assert (=> d!1265637 (=> (not res!1759671) (not e!2665145))))

(declare-fun lt!1516841 () tuple2!45312)

(assert (=> d!1265637 (= res!1759671 (isBalanced!3883 (c!730286 (_1!25871 lt!1516841))))))

(declare-datatypes ((tuple2!45314 0))(
  ( (tuple2!45315 (_1!25872 Conc!14393) (_2!25872 Conc!14393)) )
))
(declare-fun lt!1516840 () tuple2!45314)

(assert (=> d!1265637 (= lt!1516841 (tuple2!45313 (BalanceConc!28277 (_1!25872 lt!1516840)) (BalanceConc!28277 (_2!25872 lt!1516840))))))

(declare-fun splitAt!223 (Conc!14393 Int) tuple2!45314)

(assert (=> d!1265637 (= lt!1516840 (splitAt!223 (c!730286 input!5500) (_1!25870 lt!1516806)))))

(assert (=> d!1265637 (isBalanced!3883 (c!730286 input!5500))))

(assert (=> d!1265637 (= (splitAt!222 input!5500 (_1!25870 lt!1516806)) lt!1516841)))

(declare-fun b!4290478 () Bool)

(declare-fun res!1759672 () Bool)

(assert (=> b!4290478 (=> (not res!1759672) (not e!2665145))))

(assert (=> b!4290478 (= res!1759672 (isBalanced!3883 (c!730286 (_2!25871 lt!1516841))))))

(declare-fun b!4290479 () Bool)

(declare-datatypes ((tuple2!45316 0))(
  ( (tuple2!45317 (_1!25873 List!47798) (_2!25873 List!47798)) )
))
(declare-fun splitAtIndex!80 (List!47798 Int) tuple2!45316)

(assert (=> b!4290479 (= e!2665145 (= (tuple2!45317 (list!17358 (_1!25871 lt!1516841)) (list!17358 (_2!25871 lt!1516841))) (splitAtIndex!80 (list!17358 input!5500) (_1!25870 lt!1516806))))))

(assert (= (and d!1265637 res!1759671) b!4290478))

(assert (= (and b!4290478 res!1759672) b!4290479))

(declare-fun m!4884898 () Bool)

(assert (=> d!1265637 m!4884898))

(declare-fun m!4884900 () Bool)

(assert (=> d!1265637 m!4884900))

(assert (=> d!1265637 m!4884862))

(declare-fun m!4884902 () Bool)

(assert (=> b!4290478 m!4884902))

(declare-fun m!4884904 () Bool)

(assert (=> b!4290479 m!4884904))

(declare-fun m!4884906 () Bool)

(assert (=> b!4290479 m!4884906))

(assert (=> b!4290479 m!4884802))

(assert (=> b!4290479 m!4884802))

(declare-fun m!4884908 () Bool)

(assert (=> b!4290479 m!4884908))

(assert (=> b!4290390 d!1265637))

(declare-fun d!1265639 () Bool)

(declare-fun c!730299 () Bool)

(assert (=> d!1265639 (= c!730299 ((_ is Node!14393) (c!730286 (totalInput!4352 cacheFindLongestMatch!171))))))

(declare-fun e!2665146 () Bool)

(assert (=> d!1265639 (= (inv!63167 (c!730286 (totalInput!4352 cacheFindLongestMatch!171))) e!2665146)))

(declare-fun b!4290480 () Bool)

(assert (=> b!4290480 (= e!2665146 (inv!63172 (c!730286 (totalInput!4352 cacheFindLongestMatch!171))))))

(declare-fun b!4290481 () Bool)

(declare-fun e!2665147 () Bool)

(assert (=> b!4290481 (= e!2665146 e!2665147)))

(declare-fun res!1759673 () Bool)

(assert (=> b!4290481 (= res!1759673 (not ((_ is Leaf!22270) (c!730286 (totalInput!4352 cacheFindLongestMatch!171)))))))

(assert (=> b!4290481 (=> res!1759673 e!2665147)))

(declare-fun b!4290482 () Bool)

(assert (=> b!4290482 (= e!2665147 (inv!63173 (c!730286 (totalInput!4352 cacheFindLongestMatch!171))))))

(assert (= (and d!1265639 c!730299) b!4290480))

(assert (= (and d!1265639 (not c!730299)) b!4290481))

(assert (= (and b!4290481 (not res!1759673)) b!4290482))

(declare-fun m!4884910 () Bool)

(assert (=> b!4290480 m!4884910))

(declare-fun m!4884912 () Bool)

(assert (=> b!4290482 m!4884912))

(assert (=> b!4290408 d!1265639))

(declare-fun d!1265641 () Bool)

(declare-fun c!730300 () Bool)

(assert (=> d!1265641 (= c!730300 ((_ is Node!14393) (c!730286 totalInput!793)))))

(declare-fun e!2665148 () Bool)

(assert (=> d!1265641 (= (inv!63167 (c!730286 totalInput!793)) e!2665148)))

(declare-fun b!4290483 () Bool)

(assert (=> b!4290483 (= e!2665148 (inv!63172 (c!730286 totalInput!793)))))

(declare-fun b!4290484 () Bool)

(declare-fun e!2665149 () Bool)

(assert (=> b!4290484 (= e!2665148 e!2665149)))

(declare-fun res!1759674 () Bool)

(assert (=> b!4290484 (= res!1759674 (not ((_ is Leaf!22270) (c!730286 totalInput!793))))))

(assert (=> b!4290484 (=> res!1759674 e!2665149)))

(declare-fun b!4290485 () Bool)

(assert (=> b!4290485 (= e!2665149 (inv!63173 (c!730286 totalInput!793)))))

(assert (= (and d!1265641 c!730300) b!4290483))

(assert (= (and d!1265641 (not c!730300)) b!4290484))

(assert (= (and b!4290484 (not res!1759674)) b!4290485))

(declare-fun m!4884914 () Bool)

(assert (=> b!4290483 m!4884914))

(declare-fun m!4884916 () Bool)

(assert (=> b!4290485 m!4884916))

(assert (=> b!4290400 d!1265641))

(declare-fun b!4290490 () Bool)

(declare-fun e!2665152 () Bool)

(declare-fun tp!1315631 () Bool)

(declare-fun tp!1315632 () Bool)

(assert (=> b!4290490 (= e!2665152 (and tp!1315631 tp!1315632))))

(assert (=> b!4290382 (= tp!1315612 e!2665152)))

(assert (= (and b!4290382 ((_ is Cons!47671) (exprs!3341 setElem!26391))) b!4290490))

(declare-fun b!4290499 () Bool)

(declare-fun e!2665160 () Bool)

(declare-fun tp!1315644 () Bool)

(assert (=> b!4290499 (= e!2665160 tp!1315644)))

(declare-fun b!4290500 () Bool)

(declare-fun e!2665161 () Bool)

(declare-fun tp!1315642 () Bool)

(assert (=> b!4290500 (= e!2665161 tp!1315642)))

(declare-fun e!2665159 () Bool)

(assert (=> b!4290394 (= tp!1315623 e!2665159)))

(declare-fun tp!1315641 () Bool)

(declare-fun setElem!26394 () Context!5682)

(declare-fun setNonEmpty!26394 () Bool)

(declare-fun setRes!26394 () Bool)

(assert (=> setNonEmpty!26394 (= setRes!26394 (and tp!1315641 (inv!63171 setElem!26394) e!2665161))))

(declare-fun setRest!26394 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26394 (= (_2!25869 (h!53095 (zeroValue!4651 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925)))))))) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26394 true) setRest!26394))))

(declare-fun setIsEmpty!26394 () Bool)

(assert (=> setIsEmpty!26394 setRes!26394))

(declare-fun tp_is_empty!23117 () Bool)

(declare-fun tp!1315643 () Bool)

(declare-fun b!4290501 () Bool)

(assert (=> b!4290501 (= e!2665159 (and (inv!63171 (_1!25868 (_1!25869 (h!53095 (zeroValue!4651 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925)))))))))) e!2665160 tp_is_empty!23117 setRes!26394 tp!1315643))))

(declare-fun condSetEmpty!26394 () Bool)

(assert (=> b!4290501 (= condSetEmpty!26394 (= (_2!25869 (h!53095 (zeroValue!4651 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925)))))))) ((as const (Array Context!5682 Bool)) false)))))

(assert (= b!4290501 b!4290499))

(assert (= (and b!4290501 condSetEmpty!26394) setIsEmpty!26394))

(assert (= (and b!4290501 (not condSetEmpty!26394)) setNonEmpty!26394))

(assert (= setNonEmpty!26394 b!4290500))

(assert (= (and b!4290394 ((_ is Cons!47675) (zeroValue!4651 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925)))))))) b!4290501))

(declare-fun m!4884918 () Bool)

(assert (=> setNonEmpty!26394 m!4884918))

(declare-fun m!4884920 () Bool)

(assert (=> b!4290501 m!4884920))

(declare-fun b!4290502 () Bool)

(declare-fun e!2665163 () Bool)

(declare-fun tp!1315648 () Bool)

(assert (=> b!4290502 (= e!2665163 tp!1315648)))

(declare-fun b!4290503 () Bool)

(declare-fun e!2665164 () Bool)

(declare-fun tp!1315646 () Bool)

(assert (=> b!4290503 (= e!2665164 tp!1315646)))

(declare-fun e!2665162 () Bool)

(assert (=> b!4290394 (= tp!1315622 e!2665162)))

(declare-fun tp!1315645 () Bool)

(declare-fun setElem!26395 () Context!5682)

(declare-fun setRes!26395 () Bool)

(declare-fun setNonEmpty!26395 () Bool)

(assert (=> setNonEmpty!26395 (= setRes!26395 (and tp!1315645 (inv!63171 setElem!26395) e!2665164))))

(declare-fun setRest!26395 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26395 (= (_2!25869 (h!53095 (minValue!4651 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925)))))))) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26395 true) setRest!26395))))

(declare-fun setIsEmpty!26395 () Bool)

(assert (=> setIsEmpty!26395 setRes!26395))

(declare-fun b!4290504 () Bool)

(declare-fun tp!1315647 () Bool)

(assert (=> b!4290504 (= e!2665162 (and (inv!63171 (_1!25868 (_1!25869 (h!53095 (minValue!4651 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925)))))))))) e!2665163 tp_is_empty!23117 setRes!26395 tp!1315647))))

(declare-fun condSetEmpty!26395 () Bool)

(assert (=> b!4290504 (= condSetEmpty!26395 (= (_2!25869 (h!53095 (minValue!4651 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925)))))))) ((as const (Array Context!5682 Bool)) false)))))

(assert (= b!4290504 b!4290502))

(assert (= (and b!4290504 condSetEmpty!26395) setIsEmpty!26395))

(assert (= (and b!4290504 (not condSetEmpty!26395)) setNonEmpty!26395))

(assert (= setNonEmpty!26395 b!4290503))

(assert (= (and b!4290394 ((_ is Cons!47675) (minValue!4651 (v!41594 (underlying!9013 (v!41595 (underlying!9014 (cache!4438 cacheUp!925)))))))) b!4290504))

(declare-fun m!4884922 () Bool)

(assert (=> setNonEmpty!26395 m!4884922))

(declare-fun m!4884924 () Bool)

(assert (=> b!4290504 m!4884924))

(declare-fun setNonEmpty!26400 () Bool)

(declare-fun tp!1315665 () Bool)

(declare-fun setRes!26400 () Bool)

(declare-fun e!2665174 () Bool)

(declare-fun setElem!26401 () Context!5682)

(assert (=> setNonEmpty!26400 (= setRes!26400 (and tp!1315665 (inv!63171 setElem!26401) e!2665174))))

(declare-fun mapValue!19779 () List!47797)

(declare-fun setRest!26400 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26400 (= (_1!25866 (_1!25867 (h!53093 mapValue!19779))) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26401 true) setRest!26400))))

(declare-fun b!4290515 () Bool)

(declare-fun e!2665176 () Bool)

(declare-fun setRes!26401 () Bool)

(declare-fun tp!1315666 () Bool)

(assert (=> b!4290515 (= e!2665176 (and setRes!26401 tp!1315666))))

(declare-fun condSetEmpty!26400 () Bool)

(declare-fun mapDefault!19779 () List!47797)

(assert (=> b!4290515 (= condSetEmpty!26400 (= (_1!25866 (_1!25867 (h!53093 mapDefault!19779))) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun b!4290516 () Bool)

(declare-fun e!2665173 () Bool)

(declare-fun tp!1315669 () Bool)

(assert (=> b!4290516 (= e!2665173 (and setRes!26400 tp!1315669))))

(declare-fun condSetEmpty!26401 () Bool)

(assert (=> b!4290516 (= condSetEmpty!26401 (= (_1!25866 (_1!25867 (h!53093 mapValue!19779))) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun mapNonEmpty!19779 () Bool)

(declare-fun mapRes!19779 () Bool)

(declare-fun tp!1315667 () Bool)

(assert (=> mapNonEmpty!19779 (= mapRes!19779 (and tp!1315667 e!2665173))))

(declare-fun mapRest!19779 () (Array (_ BitVec 32) List!47797))

(declare-fun mapKey!19779 () (_ BitVec 32))

(assert (=> mapNonEmpty!19779 (= mapRest!19775 (store mapRest!19779 mapKey!19779 mapValue!19779))))

(declare-fun b!4290517 () Bool)

(declare-fun e!2665175 () Bool)

(declare-fun tp!1315663 () Bool)

(assert (=> b!4290517 (= e!2665175 tp!1315663)))

(declare-fun condMapEmpty!19779 () Bool)

(assert (=> mapNonEmpty!19776 (= condMapEmpty!19779 (= mapRest!19775 ((as const (Array (_ BitVec 32) List!47797)) mapDefault!19779)))))

(assert (=> mapNonEmpty!19776 (= tp!1315625 (and e!2665176 mapRes!19779))))

(declare-fun mapIsEmpty!19779 () Bool)

(assert (=> mapIsEmpty!19779 mapRes!19779))

(declare-fun setIsEmpty!26400 () Bool)

(assert (=> setIsEmpty!26400 setRes!26401))

(declare-fun setIsEmpty!26401 () Bool)

(assert (=> setIsEmpty!26401 setRes!26400))

(declare-fun b!4290518 () Bool)

(declare-fun tp!1315668 () Bool)

(assert (=> b!4290518 (= e!2665174 tp!1315668)))

(declare-fun setElem!26400 () Context!5682)

(declare-fun setNonEmpty!26401 () Bool)

(declare-fun tp!1315664 () Bool)

(assert (=> setNonEmpty!26401 (= setRes!26401 (and tp!1315664 (inv!63171 setElem!26400) e!2665175))))

(declare-fun setRest!26401 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26401 (= (_1!25866 (_1!25867 (h!53093 mapDefault!19779))) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26400 true) setRest!26401))))

(assert (= (and mapNonEmpty!19776 condMapEmpty!19779) mapIsEmpty!19779))

(assert (= (and mapNonEmpty!19776 (not condMapEmpty!19779)) mapNonEmpty!19779))

(assert (= (and b!4290516 condSetEmpty!26401) setIsEmpty!26401))

(assert (= (and b!4290516 (not condSetEmpty!26401)) setNonEmpty!26400))

(assert (= setNonEmpty!26400 b!4290518))

(assert (= (and mapNonEmpty!19779 ((_ is Cons!47673) mapValue!19779)) b!4290516))

(assert (= (and b!4290515 condSetEmpty!26400) setIsEmpty!26400))

(assert (= (and b!4290515 (not condSetEmpty!26400)) setNonEmpty!26401))

(assert (= setNonEmpty!26401 b!4290517))

(assert (= (and mapNonEmpty!19776 ((_ is Cons!47673) mapDefault!19779)) b!4290515))

(declare-fun m!4884926 () Bool)

(assert (=> setNonEmpty!26400 m!4884926))

(declare-fun m!4884928 () Bool)

(assert (=> mapNonEmpty!19779 m!4884928))

(declare-fun m!4884930 () Bool)

(assert (=> setNonEmpty!26401 m!4884930))

(declare-fun b!4290525 () Bool)

(declare-fun e!2665182 () Bool)

(declare-fun setRes!26404 () Bool)

(declare-fun tp!1315676 () Bool)

(assert (=> b!4290525 (= e!2665182 (and setRes!26404 tp!1315676))))

(declare-fun condSetEmpty!26404 () Bool)

(assert (=> b!4290525 (= condSetEmpty!26404 (= (_1!25866 (_1!25867 (h!53093 mapValue!19774))) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun setIsEmpty!26404 () Bool)

(assert (=> setIsEmpty!26404 setRes!26404))

(assert (=> mapNonEmpty!19776 (= tp!1315614 e!2665182)))

(declare-fun b!4290526 () Bool)

(declare-fun e!2665181 () Bool)

(declare-fun tp!1315677 () Bool)

(assert (=> b!4290526 (= e!2665181 tp!1315677)))

(declare-fun setNonEmpty!26404 () Bool)

(declare-fun tp!1315678 () Bool)

(declare-fun setElem!26404 () Context!5682)

(assert (=> setNonEmpty!26404 (= setRes!26404 (and tp!1315678 (inv!63171 setElem!26404) e!2665181))))

(declare-fun setRest!26404 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26404 (= (_1!25866 (_1!25867 (h!53093 mapValue!19774))) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26404 true) setRest!26404))))

(assert (= (and b!4290525 condSetEmpty!26404) setIsEmpty!26404))

(assert (= (and b!4290525 (not condSetEmpty!26404)) setNonEmpty!26404))

(assert (= setNonEmpty!26404 b!4290526))

(assert (= (and mapNonEmpty!19776 ((_ is Cons!47673) mapValue!19774)) b!4290525))

(declare-fun m!4884932 () Bool)

(assert (=> setNonEmpty!26404 m!4884932))

(declare-fun tp!1315687 () Bool)

(declare-fun b!4290535 () Bool)

(declare-fun e!2665188 () Bool)

(declare-fun tp!1315686 () Bool)

(assert (=> b!4290535 (= e!2665188 (and (inv!63167 (left!35403 (c!730286 input!5500))) tp!1315686 (inv!63167 (right!35733 (c!730286 input!5500))) tp!1315687))))

(declare-fun b!4290537 () Bool)

(declare-fun e!2665187 () Bool)

(declare-fun tp!1315685 () Bool)

(assert (=> b!4290537 (= e!2665187 tp!1315685)))

(declare-fun b!4290536 () Bool)

(declare-fun inv!63174 (IArray!28847) Bool)

(assert (=> b!4290536 (= e!2665188 (and (inv!63174 (xs!17699 (c!730286 input!5500))) e!2665187))))

(assert (=> b!4290403 (= tp!1315607 (and (inv!63167 (c!730286 input!5500)) e!2665188))))

(assert (= (and b!4290403 ((_ is Node!14393) (c!730286 input!5500))) b!4290535))

(assert (= b!4290536 b!4290537))

(assert (= (and b!4290403 ((_ is Leaf!22270) (c!730286 input!5500))) b!4290536))

(declare-fun m!4884934 () Bool)

(assert (=> b!4290535 m!4884934))

(declare-fun m!4884936 () Bool)

(assert (=> b!4290535 m!4884936))

(declare-fun m!4884938 () Bool)

(assert (=> b!4290536 m!4884938))

(assert (=> b!4290403 m!4884784))

(declare-fun tp!1315701 () Bool)

(declare-fun b!4290546 () Bool)

(declare-fun e!2665197 () Bool)

(declare-fun e!2665195 () Bool)

(declare-fun tp!1315699 () Bool)

(declare-fun setRes!26407 () Bool)

(assert (=> b!4290546 (= e!2665197 (and tp!1315701 (inv!63171 (_2!25864 (_1!25865 (h!53092 mapDefault!19774)))) e!2665195 tp_is_empty!23117 setRes!26407 tp!1315699))))

(declare-fun condSetEmpty!26407 () Bool)

(assert (=> b!4290546 (= condSetEmpty!26407 (= (_2!25865 (h!53092 mapDefault!19774)) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun b!4290547 () Bool)

(declare-fun e!2665196 () Bool)

(declare-fun tp!1315698 () Bool)

(assert (=> b!4290547 (= e!2665196 tp!1315698)))

(declare-fun b!4290548 () Bool)

(declare-fun tp!1315700 () Bool)

(assert (=> b!4290548 (= e!2665195 tp!1315700)))

(declare-fun setIsEmpty!26407 () Bool)

(assert (=> setIsEmpty!26407 setRes!26407))

(assert (=> b!4290395 (= tp!1315605 e!2665197)))

(declare-fun tp!1315702 () Bool)

(declare-fun setNonEmpty!26407 () Bool)

(declare-fun setElem!26407 () Context!5682)

(assert (=> setNonEmpty!26407 (= setRes!26407 (and tp!1315702 (inv!63171 setElem!26407) e!2665196))))

(declare-fun setRest!26407 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26407 (= (_2!25865 (h!53092 mapDefault!19774)) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26407 true) setRest!26407))))

(assert (= b!4290546 b!4290548))

(assert (= (and b!4290546 condSetEmpty!26407) setIsEmpty!26407))

(assert (= (and b!4290546 (not condSetEmpty!26407)) setNonEmpty!26407))

(assert (= setNonEmpty!26407 b!4290547))

(assert (= (and b!4290395 ((_ is Cons!47672) mapDefault!19774)) b!4290546))

(declare-fun m!4884940 () Bool)

(assert (=> b!4290546 m!4884940))

(declare-fun m!4884942 () Bool)

(assert (=> setNonEmpty!26407 m!4884942))

(declare-fun setRes!26408 () Bool)

(declare-fun e!2665198 () Bool)

(declare-fun tp!1315704 () Bool)

(declare-fun b!4290549 () Bool)

(declare-fun e!2665200 () Bool)

(declare-fun tp!1315706 () Bool)

(assert (=> b!4290549 (= e!2665200 (and tp!1315706 (inv!63171 (_2!25864 (_1!25865 (h!53092 (zeroValue!4649 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044)))))))))) e!2665198 tp_is_empty!23117 setRes!26408 tp!1315704))))

(declare-fun condSetEmpty!26408 () Bool)

(assert (=> b!4290549 (= condSetEmpty!26408 (= (_2!25865 (h!53092 (zeroValue!4649 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044)))))))) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun b!4290550 () Bool)

(declare-fun e!2665199 () Bool)

(declare-fun tp!1315703 () Bool)

(assert (=> b!4290550 (= e!2665199 tp!1315703)))

(declare-fun b!4290551 () Bool)

(declare-fun tp!1315705 () Bool)

(assert (=> b!4290551 (= e!2665198 tp!1315705)))

(declare-fun setIsEmpty!26408 () Bool)

(assert (=> setIsEmpty!26408 setRes!26408))

(assert (=> b!4290396 (= tp!1315620 e!2665200)))

(declare-fun tp!1315707 () Bool)

(declare-fun setElem!26408 () Context!5682)

(declare-fun setNonEmpty!26408 () Bool)

(assert (=> setNonEmpty!26408 (= setRes!26408 (and tp!1315707 (inv!63171 setElem!26408) e!2665199))))

(declare-fun setRest!26408 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26408 (= (_2!25865 (h!53092 (zeroValue!4649 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044)))))))) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26408 true) setRest!26408))))

(assert (= b!4290549 b!4290551))

(assert (= (and b!4290549 condSetEmpty!26408) setIsEmpty!26408))

(assert (= (and b!4290549 (not condSetEmpty!26408)) setNonEmpty!26408))

(assert (= setNonEmpty!26408 b!4290550))

(assert (= (and b!4290396 ((_ is Cons!47672) (zeroValue!4649 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044)))))))) b!4290549))

(declare-fun m!4884944 () Bool)

(assert (=> b!4290549 m!4884944))

(declare-fun m!4884946 () Bool)

(assert (=> setNonEmpty!26408 m!4884946))

(declare-fun e!2665201 () Bool)

(declare-fun tp!1315711 () Bool)

(declare-fun tp!1315709 () Bool)

(declare-fun e!2665203 () Bool)

(declare-fun setRes!26409 () Bool)

(declare-fun b!4290552 () Bool)

(assert (=> b!4290552 (= e!2665203 (and tp!1315711 (inv!63171 (_2!25864 (_1!25865 (h!53092 (minValue!4649 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044)))))))))) e!2665201 tp_is_empty!23117 setRes!26409 tp!1315709))))

(declare-fun condSetEmpty!26409 () Bool)

(assert (=> b!4290552 (= condSetEmpty!26409 (= (_2!25865 (h!53092 (minValue!4649 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044)))))))) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun b!4290553 () Bool)

(declare-fun e!2665202 () Bool)

(declare-fun tp!1315708 () Bool)

(assert (=> b!4290553 (= e!2665202 tp!1315708)))

(declare-fun b!4290554 () Bool)

(declare-fun tp!1315710 () Bool)

(assert (=> b!4290554 (= e!2665201 tp!1315710)))

(declare-fun setIsEmpty!26409 () Bool)

(assert (=> setIsEmpty!26409 setRes!26409))

(assert (=> b!4290396 (= tp!1315615 e!2665203)))

(declare-fun tp!1315712 () Bool)

(declare-fun setNonEmpty!26409 () Bool)

(declare-fun setElem!26409 () Context!5682)

(assert (=> setNonEmpty!26409 (= setRes!26409 (and tp!1315712 (inv!63171 setElem!26409) e!2665202))))

(declare-fun setRest!26409 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26409 (= (_2!25865 (h!53092 (minValue!4649 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044)))))))) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26409 true) setRest!26409))))

(assert (= b!4290552 b!4290554))

(assert (= (and b!4290552 condSetEmpty!26409) setIsEmpty!26409))

(assert (= (and b!4290552 (not condSetEmpty!26409)) setNonEmpty!26409))

(assert (= setNonEmpty!26409 b!4290553))

(assert (= (and b!4290396 ((_ is Cons!47672) (minValue!4649 (v!41590 (underlying!9009 (v!41591 (underlying!9010 (cache!4436 cacheDown!1044)))))))) b!4290552))

(declare-fun m!4884948 () Bool)

(assert (=> b!4290552 m!4884948))

(declare-fun m!4884950 () Bool)

(assert (=> setNonEmpty!26409 m!4884950))

(declare-fun b!4290569 () Bool)

(declare-fun e!2665217 () Bool)

(declare-fun tp!1315737 () Bool)

(assert (=> b!4290569 (= e!2665217 tp!1315737)))

(declare-fun tp!1315731 () Bool)

(declare-fun e!2665216 () Bool)

(declare-fun mapDefault!19782 () List!47799)

(declare-fun e!2665219 () Bool)

(declare-fun setRes!26414 () Bool)

(declare-fun b!4290570 () Bool)

(assert (=> b!4290570 (= e!2665216 (and (inv!63171 (_1!25868 (_1!25869 (h!53095 mapDefault!19782)))) e!2665219 tp_is_empty!23117 setRes!26414 tp!1315731))))

(declare-fun condSetEmpty!26415 () Bool)

(assert (=> b!4290570 (= condSetEmpty!26415 (= (_2!25869 (h!53095 mapDefault!19782)) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun e!2665220 () Bool)

(declare-fun tp!1315739 () Bool)

(declare-fun setElem!26414 () Context!5682)

(declare-fun setNonEmpty!26414 () Bool)

(assert (=> setNonEmpty!26414 (= setRes!26414 (and tp!1315739 (inv!63171 setElem!26414) e!2665220))))

(declare-fun setRest!26414 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26414 (= (_2!25869 (h!53095 mapDefault!19782)) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26414 true) setRest!26414))))

(declare-fun setIsEmpty!26414 () Bool)

(assert (=> setIsEmpty!26414 setRes!26414))

(declare-fun b!4290571 () Bool)

(declare-fun e!2665218 () Bool)

(declare-fun tp!1315735 () Bool)

(assert (=> b!4290571 (= e!2665218 tp!1315735)))

(declare-fun condMapEmpty!19782 () Bool)

(assert (=> mapNonEmpty!19775 (= condMapEmpty!19782 (= mapRest!19774 ((as const (Array (_ BitVec 32) List!47799)) mapDefault!19782)))))

(declare-fun mapRes!19782 () Bool)

(assert (=> mapNonEmpty!19775 (= tp!1315621 (and e!2665216 mapRes!19782))))

(declare-fun b!4290572 () Bool)

(declare-fun tp!1315736 () Bool)

(assert (=> b!4290572 (= e!2665220 tp!1315736)))

(declare-fun mapIsEmpty!19782 () Bool)

(assert (=> mapIsEmpty!19782 mapRes!19782))

(declare-fun setIsEmpty!26415 () Bool)

(declare-fun setRes!26415 () Bool)

(assert (=> setIsEmpty!26415 setRes!26415))

(declare-fun mapNonEmpty!19782 () Bool)

(declare-fun tp!1315732 () Bool)

(declare-fun e!2665221 () Bool)

(assert (=> mapNonEmpty!19782 (= mapRes!19782 (and tp!1315732 e!2665221))))

(declare-fun mapRest!19782 () (Array (_ BitVec 32) List!47799))

(declare-fun mapKey!19782 () (_ BitVec 32))

(declare-fun mapValue!19782 () List!47799)

(assert (=> mapNonEmpty!19782 (= mapRest!19774 (store mapRest!19782 mapKey!19782 mapValue!19782))))

(declare-fun setElem!26415 () Context!5682)

(declare-fun setNonEmpty!26415 () Bool)

(declare-fun tp!1315738 () Bool)

(assert (=> setNonEmpty!26415 (= setRes!26415 (and tp!1315738 (inv!63171 setElem!26415) e!2665218))))

(declare-fun setRest!26415 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26415 (= (_2!25869 (h!53095 mapValue!19782)) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26415 true) setRest!26415))))

(declare-fun tp!1315733 () Bool)

(declare-fun b!4290573 () Bool)

(assert (=> b!4290573 (= e!2665221 (and (inv!63171 (_1!25868 (_1!25869 (h!53095 mapValue!19782)))) e!2665217 tp_is_empty!23117 setRes!26415 tp!1315733))))

(declare-fun condSetEmpty!26414 () Bool)

(assert (=> b!4290573 (= condSetEmpty!26414 (= (_2!25869 (h!53095 mapValue!19782)) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun b!4290574 () Bool)

(declare-fun tp!1315734 () Bool)

(assert (=> b!4290574 (= e!2665219 tp!1315734)))

(assert (= (and mapNonEmpty!19775 condMapEmpty!19782) mapIsEmpty!19782))

(assert (= (and mapNonEmpty!19775 (not condMapEmpty!19782)) mapNonEmpty!19782))

(assert (= b!4290573 b!4290569))

(assert (= (and b!4290573 condSetEmpty!26414) setIsEmpty!26415))

(assert (= (and b!4290573 (not condSetEmpty!26414)) setNonEmpty!26415))

(assert (= setNonEmpty!26415 b!4290571))

(assert (= (and mapNonEmpty!19782 ((_ is Cons!47675) mapValue!19782)) b!4290573))

(assert (= b!4290570 b!4290574))

(assert (= (and b!4290570 condSetEmpty!26415) setIsEmpty!26414))

(assert (= (and b!4290570 (not condSetEmpty!26415)) setNonEmpty!26414))

(assert (= setNonEmpty!26414 b!4290572))

(assert (= (and mapNonEmpty!19775 ((_ is Cons!47675) mapDefault!19782)) b!4290570))

(declare-fun m!4884952 () Bool)

(assert (=> setNonEmpty!26415 m!4884952))

(declare-fun m!4884954 () Bool)

(assert (=> b!4290570 m!4884954))

(declare-fun m!4884956 () Bool)

(assert (=> setNonEmpty!26414 m!4884956))

(declare-fun m!4884958 () Bool)

(assert (=> mapNonEmpty!19782 m!4884958))

(declare-fun m!4884960 () Bool)

(assert (=> b!4290573 m!4884960))

(declare-fun b!4290575 () Bool)

(declare-fun e!2665223 () Bool)

(declare-fun tp!1315743 () Bool)

(assert (=> b!4290575 (= e!2665223 tp!1315743)))

(declare-fun b!4290576 () Bool)

(declare-fun e!2665224 () Bool)

(declare-fun tp!1315741 () Bool)

(assert (=> b!4290576 (= e!2665224 tp!1315741)))

(declare-fun e!2665222 () Bool)

(assert (=> mapNonEmpty!19775 (= tp!1315603 e!2665222)))

(declare-fun tp!1315740 () Bool)

(declare-fun setNonEmpty!26416 () Bool)

(declare-fun setRes!26416 () Bool)

(declare-fun setElem!26416 () Context!5682)

(assert (=> setNonEmpty!26416 (= setRes!26416 (and tp!1315740 (inv!63171 setElem!26416) e!2665224))))

(declare-fun setRest!26416 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26416 (= (_2!25869 (h!53095 mapValue!19775)) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26416 true) setRest!26416))))

(declare-fun setIsEmpty!26416 () Bool)

(assert (=> setIsEmpty!26416 setRes!26416))

(declare-fun tp!1315742 () Bool)

(declare-fun b!4290577 () Bool)

(assert (=> b!4290577 (= e!2665222 (and (inv!63171 (_1!25868 (_1!25869 (h!53095 mapValue!19775)))) e!2665223 tp_is_empty!23117 setRes!26416 tp!1315742))))

(declare-fun condSetEmpty!26416 () Bool)

(assert (=> b!4290577 (= condSetEmpty!26416 (= (_2!25869 (h!53095 mapValue!19775)) ((as const (Array Context!5682 Bool)) false)))))

(assert (= b!4290577 b!4290575))

(assert (= (and b!4290577 condSetEmpty!26416) setIsEmpty!26416))

(assert (= (and b!4290577 (not condSetEmpty!26416)) setNonEmpty!26416))

(assert (= setNonEmpty!26416 b!4290576))

(assert (= (and mapNonEmpty!19775 ((_ is Cons!47675) mapValue!19775)) b!4290577))

(declare-fun m!4884962 () Bool)

(assert (=> setNonEmpty!26416 m!4884962))

(declare-fun m!4884964 () Bool)

(assert (=> b!4290577 m!4884964))

(declare-fun b!4290578 () Bool)

(declare-fun e!2665226 () Bool)

(declare-fun setRes!26417 () Bool)

(declare-fun tp!1315744 () Bool)

(assert (=> b!4290578 (= e!2665226 (and setRes!26417 tp!1315744))))

(declare-fun condSetEmpty!26417 () Bool)

(assert (=> b!4290578 (= condSetEmpty!26417 (= (_1!25866 (_1!25867 (h!53093 mapDefault!19776))) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun setIsEmpty!26417 () Bool)

(assert (=> setIsEmpty!26417 setRes!26417))

(assert (=> b!4290404 (= tp!1315606 e!2665226)))

(declare-fun b!4290579 () Bool)

(declare-fun e!2665225 () Bool)

(declare-fun tp!1315745 () Bool)

(assert (=> b!4290579 (= e!2665225 tp!1315745)))

(declare-fun setElem!26417 () Context!5682)

(declare-fun tp!1315746 () Bool)

(declare-fun setNonEmpty!26417 () Bool)

(assert (=> setNonEmpty!26417 (= setRes!26417 (and tp!1315746 (inv!63171 setElem!26417) e!2665225))))

(declare-fun setRest!26417 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26417 (= (_1!25866 (_1!25867 (h!53093 mapDefault!19776))) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26417 true) setRest!26417))))

(assert (= (and b!4290578 condSetEmpty!26417) setIsEmpty!26417))

(assert (= (and b!4290578 (not condSetEmpty!26417)) setNonEmpty!26417))

(assert (= setNonEmpty!26417 b!4290579))

(assert (= (and b!4290404 ((_ is Cons!47673) mapDefault!19776)) b!4290578))

(declare-fun m!4884966 () Bool)

(assert (=> setNonEmpty!26417 m!4884966))

(declare-fun b!4290580 () Bool)

(declare-fun e!2665228 () Bool)

(declare-fun tp!1315750 () Bool)

(assert (=> b!4290580 (= e!2665228 tp!1315750)))

(declare-fun b!4290581 () Bool)

(declare-fun e!2665229 () Bool)

(declare-fun tp!1315748 () Bool)

(assert (=> b!4290581 (= e!2665229 tp!1315748)))

(declare-fun e!2665227 () Bool)

(assert (=> b!4290397 (= tp!1315624 e!2665227)))

(declare-fun setNonEmpty!26418 () Bool)

(declare-fun tp!1315747 () Bool)

(declare-fun setElem!26418 () Context!5682)

(declare-fun setRes!26418 () Bool)

(assert (=> setNonEmpty!26418 (= setRes!26418 (and tp!1315747 (inv!63171 setElem!26418) e!2665229))))

(declare-fun setRest!26418 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26418 (= (_2!25869 (h!53095 mapDefault!19775)) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26418 true) setRest!26418))))

(declare-fun setIsEmpty!26418 () Bool)

(assert (=> setIsEmpty!26418 setRes!26418))

(declare-fun b!4290582 () Bool)

(declare-fun tp!1315749 () Bool)

(assert (=> b!4290582 (= e!2665227 (and (inv!63171 (_1!25868 (_1!25869 (h!53095 mapDefault!19775)))) e!2665228 tp_is_empty!23117 setRes!26418 tp!1315749))))

(declare-fun condSetEmpty!26418 () Bool)

(assert (=> b!4290582 (= condSetEmpty!26418 (= (_2!25869 (h!53095 mapDefault!19775)) ((as const (Array Context!5682 Bool)) false)))))

(assert (= b!4290582 b!4290580))

(assert (= (and b!4290582 condSetEmpty!26418) setIsEmpty!26418))

(assert (= (and b!4290582 (not condSetEmpty!26418)) setNonEmpty!26418))

(assert (= setNonEmpty!26418 b!4290581))

(assert (= (and b!4290397 ((_ is Cons!47675) mapDefault!19775)) b!4290582))

(declare-fun m!4884968 () Bool)

(assert (=> setNonEmpty!26418 m!4884968))

(declare-fun m!4884970 () Bool)

(assert (=> b!4290582 m!4884970))

(declare-fun condSetEmpty!26421 () Bool)

(assert (=> setNonEmpty!26391 (= condSetEmpty!26421 (= setRest!26391 ((as const (Array Context!5682 Bool)) false)))))

(declare-fun setRes!26421 () Bool)

(assert (=> setNonEmpty!26391 (= tp!1315608 setRes!26421)))

(declare-fun setIsEmpty!26421 () Bool)

(assert (=> setIsEmpty!26421 setRes!26421))

(declare-fun e!2665232 () Bool)

(declare-fun setNonEmpty!26421 () Bool)

(declare-fun setElem!26421 () Context!5682)

(declare-fun tp!1315755 () Bool)

(assert (=> setNonEmpty!26421 (= setRes!26421 (and tp!1315755 (inv!63171 setElem!26421) e!2665232))))

(declare-fun setRest!26421 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26421 (= setRest!26391 ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26421 true) setRest!26421))))

(declare-fun b!4290587 () Bool)

(declare-fun tp!1315756 () Bool)

(assert (=> b!4290587 (= e!2665232 tp!1315756)))

(assert (= (and setNonEmpty!26391 condSetEmpty!26421) setIsEmpty!26421))

(assert (= (and setNonEmpty!26391 (not condSetEmpty!26421)) setNonEmpty!26421))

(assert (= setNonEmpty!26421 b!4290587))

(declare-fun m!4884972 () Bool)

(assert (=> setNonEmpty!26421 m!4884972))

(declare-fun b!4290588 () Bool)

(declare-fun e!2665234 () Bool)

(declare-fun setRes!26422 () Bool)

(declare-fun tp!1315757 () Bool)

(assert (=> b!4290588 (= e!2665234 (and setRes!26422 tp!1315757))))

(declare-fun condSetEmpty!26422 () Bool)

(assert (=> b!4290588 (= condSetEmpty!26422 (= (_1!25866 (_1!25867 (h!53093 (zeroValue!4650 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))))))) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun setIsEmpty!26422 () Bool)

(assert (=> setIsEmpty!26422 setRes!26422))

(assert (=> b!4290406 (= tp!1315617 e!2665234)))

(declare-fun b!4290589 () Bool)

(declare-fun e!2665233 () Bool)

(declare-fun tp!1315758 () Bool)

(assert (=> b!4290589 (= e!2665233 tp!1315758)))

(declare-fun tp!1315759 () Bool)

(declare-fun setNonEmpty!26422 () Bool)

(declare-fun setElem!26422 () Context!5682)

(assert (=> setNonEmpty!26422 (= setRes!26422 (and tp!1315759 (inv!63171 setElem!26422) e!2665233))))

(declare-fun setRest!26422 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26422 (= (_1!25866 (_1!25867 (h!53093 (zeroValue!4650 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))))))) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26422 true) setRest!26422))))

(assert (= (and b!4290588 condSetEmpty!26422) setIsEmpty!26422))

(assert (= (and b!4290588 (not condSetEmpty!26422)) setNonEmpty!26422))

(assert (= setNonEmpty!26422 b!4290589))

(assert (= (and b!4290406 ((_ is Cons!47673) (zeroValue!4650 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171)))))))) b!4290588))

(declare-fun m!4884974 () Bool)

(assert (=> setNonEmpty!26422 m!4884974))

(declare-fun b!4290590 () Bool)

(declare-fun e!2665236 () Bool)

(declare-fun setRes!26423 () Bool)

(declare-fun tp!1315760 () Bool)

(assert (=> b!4290590 (= e!2665236 (and setRes!26423 tp!1315760))))

(declare-fun condSetEmpty!26423 () Bool)

(assert (=> b!4290590 (= condSetEmpty!26423 (= (_1!25866 (_1!25867 (h!53093 (minValue!4650 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))))))) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun setIsEmpty!26423 () Bool)

(assert (=> setIsEmpty!26423 setRes!26423))

(assert (=> b!4290406 (= tp!1315601 e!2665236)))

(declare-fun b!4290591 () Bool)

(declare-fun e!2665235 () Bool)

(declare-fun tp!1315761 () Bool)

(assert (=> b!4290591 (= e!2665235 tp!1315761)))

(declare-fun setElem!26423 () Context!5682)

(declare-fun setNonEmpty!26423 () Bool)

(declare-fun tp!1315762 () Bool)

(assert (=> setNonEmpty!26423 (= setRes!26423 (and tp!1315762 (inv!63171 setElem!26423) e!2665235))))

(declare-fun setRest!26423 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26423 (= (_1!25866 (_1!25867 (h!53093 (minValue!4650 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171))))))))) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26423 true) setRest!26423))))

(assert (= (and b!4290590 condSetEmpty!26423) setIsEmpty!26423))

(assert (= (and b!4290590 (not condSetEmpty!26423)) setNonEmpty!26423))

(assert (= setNonEmpty!26423 b!4290591))

(assert (= (and b!4290406 ((_ is Cons!47673) (minValue!4650 (v!41592 (underlying!9011 (v!41593 (underlying!9012 (cache!4437 cacheFindLongestMatch!171)))))))) b!4290590))

(declare-fun m!4884976 () Bool)

(assert (=> setNonEmpty!26423 m!4884976))

(declare-fun setIsEmpty!26428 () Bool)

(declare-fun setRes!26429 () Bool)

(assert (=> setIsEmpty!26428 setRes!26429))

(declare-fun setElem!26428 () Context!5682)

(declare-fun e!2665250 () Bool)

(declare-fun tp!1315795 () Bool)

(declare-fun setRes!26428 () Bool)

(declare-fun setNonEmpty!26428 () Bool)

(assert (=> setNonEmpty!26428 (= setRes!26428 (and tp!1315795 (inv!63171 setElem!26428) e!2665250))))

(declare-fun mapValue!19785 () List!47796)

(declare-fun setRest!26429 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26428 (= (_2!25865 (h!53092 mapValue!19785)) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26428 true) setRest!26429))))

(declare-fun b!4290606 () Bool)

(declare-fun e!2665251 () Bool)

(declare-fun tp!1315786 () Bool)

(assert (=> b!4290606 (= e!2665251 tp!1315786)))

(declare-fun setIsEmpty!26429 () Bool)

(assert (=> setIsEmpty!26429 setRes!26428))

(declare-fun mapDefault!19785 () List!47796)

(declare-fun b!4290607 () Bool)

(declare-fun tp!1315791 () Bool)

(declare-fun tp!1315792 () Bool)

(declare-fun e!2665254 () Bool)

(declare-fun e!2665249 () Bool)

(assert (=> b!4290607 (= e!2665254 (and tp!1315792 (inv!63171 (_2!25864 (_1!25865 (h!53092 mapDefault!19785)))) e!2665249 tp_is_empty!23117 setRes!26429 tp!1315791))))

(declare-fun condSetEmpty!26429 () Bool)

(assert (=> b!4290607 (= condSetEmpty!26429 (= (_2!25865 (h!53092 mapDefault!19785)) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun b!4290608 () Bool)

(declare-fun e!2665253 () Bool)

(declare-fun tp!1315785 () Bool)

(assert (=> b!4290608 (= e!2665253 tp!1315785)))

(declare-fun b!4290609 () Bool)

(declare-fun tp!1315794 () Bool)

(assert (=> b!4290609 (= e!2665249 tp!1315794)))

(declare-fun mapIsEmpty!19785 () Bool)

(declare-fun mapRes!19785 () Bool)

(assert (=> mapIsEmpty!19785 mapRes!19785))

(declare-fun setNonEmpty!26429 () Bool)

(declare-fun tp!1315787 () Bool)

(declare-fun setElem!26429 () Context!5682)

(assert (=> setNonEmpty!26429 (= setRes!26429 (and tp!1315787 (inv!63171 setElem!26429) e!2665251))))

(declare-fun setRest!26428 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26429 (= (_2!25865 (h!53092 mapDefault!19785)) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26429 true) setRest!26428))))

(declare-fun b!4290610 () Bool)

(declare-fun tp!1315789 () Bool)

(assert (=> b!4290610 (= e!2665250 tp!1315789)))

(declare-fun tp!1315790 () Bool)

(declare-fun e!2665252 () Bool)

(declare-fun b!4290611 () Bool)

(declare-fun tp!1315793 () Bool)

(assert (=> b!4290611 (= e!2665252 (and tp!1315790 (inv!63171 (_2!25864 (_1!25865 (h!53092 mapValue!19785)))) e!2665253 tp_is_empty!23117 setRes!26428 tp!1315793))))

(declare-fun condSetEmpty!26428 () Bool)

(assert (=> b!4290611 (= condSetEmpty!26428 (= (_2!25865 (h!53092 mapValue!19785)) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun mapNonEmpty!19785 () Bool)

(declare-fun tp!1315788 () Bool)

(assert (=> mapNonEmpty!19785 (= mapRes!19785 (and tp!1315788 e!2665252))))

(declare-fun mapRest!19785 () (Array (_ BitVec 32) List!47796))

(declare-fun mapKey!19785 () (_ BitVec 32))

(assert (=> mapNonEmpty!19785 (= mapRest!19776 (store mapRest!19785 mapKey!19785 mapValue!19785))))

(declare-fun condMapEmpty!19785 () Bool)

(assert (=> mapNonEmpty!19774 (= condMapEmpty!19785 (= mapRest!19776 ((as const (Array (_ BitVec 32) List!47796)) mapDefault!19785)))))

(assert (=> mapNonEmpty!19774 (= tp!1315602 (and e!2665254 mapRes!19785))))

(assert (= (and mapNonEmpty!19774 condMapEmpty!19785) mapIsEmpty!19785))

(assert (= (and mapNonEmpty!19774 (not condMapEmpty!19785)) mapNonEmpty!19785))

(assert (= b!4290611 b!4290608))

(assert (= (and b!4290611 condSetEmpty!26428) setIsEmpty!26429))

(assert (= (and b!4290611 (not condSetEmpty!26428)) setNonEmpty!26428))

(assert (= setNonEmpty!26428 b!4290610))

(assert (= (and mapNonEmpty!19785 ((_ is Cons!47672) mapValue!19785)) b!4290611))

(assert (= b!4290607 b!4290609))

(assert (= (and b!4290607 condSetEmpty!26429) setIsEmpty!26428))

(assert (= (and b!4290607 (not condSetEmpty!26429)) setNonEmpty!26429))

(assert (= setNonEmpty!26429 b!4290606))

(assert (= (and mapNonEmpty!19774 ((_ is Cons!47672) mapDefault!19785)) b!4290607))

(declare-fun m!4884978 () Bool)

(assert (=> b!4290607 m!4884978))

(declare-fun m!4884980 () Bool)

(assert (=> mapNonEmpty!19785 m!4884980))

(declare-fun m!4884982 () Bool)

(assert (=> setNonEmpty!26429 m!4884982))

(declare-fun m!4884984 () Bool)

(assert (=> setNonEmpty!26428 m!4884984))

(declare-fun m!4884986 () Bool)

(assert (=> b!4290611 m!4884986))

(declare-fun tp!1315799 () Bool)

(declare-fun b!4290612 () Bool)

(declare-fun e!2665257 () Bool)

(declare-fun tp!1315797 () Bool)

(declare-fun setRes!26430 () Bool)

(declare-fun e!2665255 () Bool)

(assert (=> b!4290612 (= e!2665257 (and tp!1315799 (inv!63171 (_2!25864 (_1!25865 (h!53092 mapValue!19776)))) e!2665255 tp_is_empty!23117 setRes!26430 tp!1315797))))

(declare-fun condSetEmpty!26430 () Bool)

(assert (=> b!4290612 (= condSetEmpty!26430 (= (_2!25865 (h!53092 mapValue!19776)) ((as const (Array Context!5682 Bool)) false)))))

(declare-fun b!4290613 () Bool)

(declare-fun e!2665256 () Bool)

(declare-fun tp!1315796 () Bool)

(assert (=> b!4290613 (= e!2665256 tp!1315796)))

(declare-fun b!4290614 () Bool)

(declare-fun tp!1315798 () Bool)

(assert (=> b!4290614 (= e!2665255 tp!1315798)))

(declare-fun setIsEmpty!26430 () Bool)

(assert (=> setIsEmpty!26430 setRes!26430))

(assert (=> mapNonEmpty!19774 (= tp!1315611 e!2665257)))

(declare-fun tp!1315800 () Bool)

(declare-fun setNonEmpty!26430 () Bool)

(declare-fun setElem!26430 () Context!5682)

(assert (=> setNonEmpty!26430 (= setRes!26430 (and tp!1315800 (inv!63171 setElem!26430) e!2665256))))

(declare-fun setRest!26430 () (InoxSet Context!5682))

(assert (=> setNonEmpty!26430 (= (_2!25865 (h!53092 mapValue!19776)) ((_ map or) (store ((as const (Array Context!5682 Bool)) false) setElem!26430 true) setRest!26430))))

(assert (= b!4290612 b!4290614))

(assert (= (and b!4290612 condSetEmpty!26430) setIsEmpty!26430))

(assert (= (and b!4290612 (not condSetEmpty!26430)) setNonEmpty!26430))

(assert (= setNonEmpty!26430 b!4290613))

(assert (= (and mapNonEmpty!19774 ((_ is Cons!47672) mapValue!19776)) b!4290612))

(declare-fun m!4884988 () Bool)

(assert (=> b!4290612 m!4884988))

(declare-fun m!4884990 () Bool)

(assert (=> setNonEmpty!26430 m!4884990))

(declare-fun tp!1315803 () Bool)

(declare-fun tp!1315802 () Bool)

(declare-fun b!4290615 () Bool)

(declare-fun e!2665259 () Bool)

(assert (=> b!4290615 (= e!2665259 (and (inv!63167 (left!35403 (c!730286 (totalInput!4352 cacheFindLongestMatch!171)))) tp!1315802 (inv!63167 (right!35733 (c!730286 (totalInput!4352 cacheFindLongestMatch!171)))) tp!1315803))))

(declare-fun b!4290617 () Bool)

(declare-fun e!2665258 () Bool)

(declare-fun tp!1315801 () Bool)

(assert (=> b!4290617 (= e!2665258 tp!1315801)))

(declare-fun b!4290616 () Bool)

(assert (=> b!4290616 (= e!2665259 (and (inv!63174 (xs!17699 (c!730286 (totalInput!4352 cacheFindLongestMatch!171)))) e!2665258))))

(assert (=> b!4290408 (= tp!1315610 (and (inv!63167 (c!730286 (totalInput!4352 cacheFindLongestMatch!171))) e!2665259))))

(assert (= (and b!4290408 ((_ is Node!14393) (c!730286 (totalInput!4352 cacheFindLongestMatch!171)))) b!4290615))

(assert (= b!4290616 b!4290617))

(assert (= (and b!4290408 ((_ is Leaf!22270) (c!730286 (totalInput!4352 cacheFindLongestMatch!171)))) b!4290616))

(declare-fun m!4884992 () Bool)

(assert (=> b!4290615 m!4884992))

(declare-fun m!4884994 () Bool)

(assert (=> b!4290615 m!4884994))

(declare-fun m!4884996 () Bool)

(assert (=> b!4290616 m!4884996))

(assert (=> b!4290408 m!4884820))

(declare-fun b!4290618 () Bool)

(declare-fun tp!1315805 () Bool)

(declare-fun e!2665261 () Bool)

(declare-fun tp!1315806 () Bool)

(assert (=> b!4290618 (= e!2665261 (and (inv!63167 (left!35403 (c!730286 totalInput!793))) tp!1315805 (inv!63167 (right!35733 (c!730286 totalInput!793))) tp!1315806))))

(declare-fun b!4290620 () Bool)

(declare-fun e!2665260 () Bool)

(declare-fun tp!1315804 () Bool)

(assert (=> b!4290620 (= e!2665260 tp!1315804)))

(declare-fun b!4290619 () Bool)

(assert (=> b!4290619 (= e!2665261 (and (inv!63174 (xs!17699 (c!730286 totalInput!793))) e!2665260))))

(assert (=> b!4290400 (= tp!1315604 (and (inv!63167 (c!730286 totalInput!793)) e!2665261))))

(assert (= (and b!4290400 ((_ is Node!14393) (c!730286 totalInput!793))) b!4290618))

(assert (= b!4290619 b!4290620))

(assert (= (and b!4290400 ((_ is Leaf!22270) (c!730286 totalInput!793))) b!4290619))

(declare-fun m!4884998 () Bool)

(assert (=> b!4290618 m!4884998))

(declare-fun m!4885000 () Bool)

(assert (=> b!4290618 m!4885000))

(declare-fun m!4885002 () Bool)

(assert (=> b!4290619 m!4885002))

(assert (=> b!4290400 m!4884772))

(check-sat (not b!4290580) (not setNonEmpty!26414) (not b!4290490) (not setNonEmpty!26400) (not b!4290478) (not b!4290453) (not setNonEmpty!26395) tp_is_empty!23117 (not b!4290587) (not setNonEmpty!26394) (not b_next!128091) (not setNonEmpty!26416) (not d!1265587) (not b!4290609) (not b!4290581) (not mapNonEmpty!19782) (not b!4290499) (not d!1265595) (not b!4290408) (not b!4290569) (not setNonEmpty!26415) (not b_next!128093) (not b!4290554) (not b!4290482) (not b!4290473) (not b!4290469) (not b!4290613) (not b!4290431) (not b!4290516) (not b!4290500) (not b!4290578) (not setNonEmpty!26409) (not d!1265621) (not b!4290503) b_and!338603 (not setNonEmpty!26407) (not b!4290525) (not b!4290619) (not b!4290400) b_and!338599 (not b!4290470) (not b!4290517) (not mapNonEmpty!19785) b_and!338605 (not b!4290577) (not b!4290574) (not d!1265613) (not d!1265637) (not b!4290420) (not b!4290537) (not b!4290548) (not b!4290576) (not b!4290620) (not b!4290572) (not setNonEmpty!26421) (not b!4290428) (not b!4290614) (not b!4290547) (not b!4290591) b_and!338607 (not b!4290615) (not d!1265633) (not b!4290550) (not d!1265615) (not b!4290425) (not b!4290536) (not b!4290612) (not setNonEmpty!26408) (not d!1265629) (not b!4290458) (not setNonEmpty!26429) (not b!4290504) (not b!4290546) (not d!1265605) (not b!4290457) (not d!1265631) (not b!4290479) (not b_next!128095) (not b!4290607) (not b!4290616) (not setNonEmpty!26428) (not mapNonEmpty!19779) (not d!1265589) b_and!338609 (not b!4290502) (not d!1265623) (not b!4290526) (not b_next!128089) (not b!4290552) (not setNonEmpty!26423) (not b_next!128097) (not b!4290553) (not b!4290590) b_and!338601 (not b!4290617) (not b!4290618) (not b!4290551) (not d!1265635) (not b!4290549) (not b!4290582) (not b!4290606) (not b!4290610) (not setNonEmpty!26417) (not d!1265619) (not b!4290501) (not b!4290611) (not b!4290579) (not b!4290456) (not b!4290483) (not b!4290485) (not b!4290589) (not setNonEmpty!26401) (not b!4290588) (not b!4290515) (not b!4290403) (not b!4290422) (not b!4290535) (not setNonEmpty!26404) (not b!4290608) (not setNonEmpty!26422) (not setNonEmpty!26430) (not b!4290575) (not b!4290518) (not b!4290471) (not b!4290573) (not b_next!128087) (not d!1265603) (not b!4290480) (not b!4290571) (not b!4290570) (not setNonEmpty!26418) (not b!4290434))
(check-sat (not b_next!128091) (not b_next!128093) b_and!338603 b_and!338599 b_and!338605 b_and!338607 (not b_next!128095) b_and!338609 (not b_next!128089) (not b_next!128097) b_and!338601 (not b_next!128087))
