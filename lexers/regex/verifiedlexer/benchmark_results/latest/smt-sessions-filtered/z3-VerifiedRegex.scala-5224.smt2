; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268894 () Bool)

(assert start!268894)

(declare-fun b!2782357 () Bool)

(declare-fun b_free!78533 () Bool)

(declare-fun b_next!79237 () Bool)

(assert (=> b!2782357 (= b_free!78533 (not b_next!79237))))

(declare-fun tp!880845 () Bool)

(declare-fun b_and!203271 () Bool)

(assert (=> b!2782357 (= tp!880845 b_and!203271)))

(declare-fun b!2782364 () Bool)

(declare-fun b_free!78535 () Bool)

(declare-fun b_next!79239 () Bool)

(assert (=> b!2782364 (= b_free!78535 (not b_next!79239))))

(declare-fun tp!880838 () Bool)

(declare-fun b_and!203273 () Bool)

(assert (=> b!2782364 (= tp!880838 b_and!203273)))

(declare-fun b!2782373 () Bool)

(declare-fun b_free!78537 () Bool)

(declare-fun b_next!79241 () Bool)

(assert (=> b!2782373 (= b_free!78537 (not b_next!79241))))

(declare-fun tp!880844 () Bool)

(declare-fun b_and!203275 () Bool)

(assert (=> b!2782373 (= tp!880844 b_and!203275)))

(declare-fun b!2782376 () Bool)

(declare-fun b_free!78539 () Bool)

(declare-fun b_next!79243 () Bool)

(assert (=> b!2782376 (= b_free!78539 (not b_next!79243))))

(declare-fun tp!880836 () Bool)

(declare-fun b_and!203277 () Bool)

(assert (=> b!2782376 (= tp!880836 b_and!203277)))

(declare-fun e!1755012 () Bool)

(declare-fun e!1755019 () Bool)

(assert (=> b!2782357 (= e!1755012 (and e!1755019 tp!880845))))

(declare-fun res!1161545 () Bool)

(declare-fun e!1755013 () Bool)

(assert (=> start!268894 (=> (not res!1161545) (not e!1755013))))

(declare-datatypes ((C!16384 0))(
  ( (C!16385 (val!10126 Int)) )
))
(declare-datatypes ((List!32217 0))(
  ( (Nil!32117) (Cons!32117 (h!37537 C!16384) (t!228357 List!32217)) )
))
(declare-fun lt!993839 () List!32217)

(declare-fun lt!993836 () List!32217)

(assert (=> start!268894 (= res!1161545 (= lt!993839 lt!993836))))

(declare-datatypes ((IArray!19985 0))(
  ( (IArray!19986 (innerList!10050 List!32217)) )
))
(declare-datatypes ((Conc!9990 0))(
  ( (Node!9990 (left!24438 Conc!9990) (right!24768 Conc!9990) (csize!20210 Int) (cheight!10201 Int)) (Leaf!15215 (xs!13101 IArray!19985) (csize!20211 Int)) (Empty!9990) )
))
(declare-datatypes ((BalanceConc!19594 0))(
  ( (BalanceConc!19595 (c!452255 Conc!9990)) )
))
(declare-fun totalInput!758 () BalanceConc!19594)

(declare-fun list!12110 (BalanceConc!19594) List!32217)

(assert (=> start!268894 (= lt!993836 (list!12110 totalInput!758))))

(declare-fun testedP!183 () List!32217)

(declare-fun testedSuffix!143 () List!32217)

(declare-fun ++!7942 (List!32217 List!32217) List!32217)

(assert (=> start!268894 (= lt!993839 (++!7942 testedP!183 testedSuffix!143))))

(assert (=> start!268894 e!1755013))

(declare-fun e!1755016 () Bool)

(declare-fun inv!43624 (BalanceConc!19594) Bool)

(assert (=> start!268894 (and (inv!43624 totalInput!758) e!1755016)))

(assert (=> start!268894 true))

(declare-fun e!1755025 () Bool)

(assert (=> start!268894 e!1755025))

(declare-fun e!1755006 () Bool)

(assert (=> start!268894 e!1755006))

(declare-datatypes ((array!13640 0))(
  ( (array!13641 (arr!6079 (Array (_ BitVec 32) (_ BitVec 64))) (size!24914 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8113 0))(
  ( (ElementMatch!8113 (c!452256 C!16384)) (Concat!13201 (regOne!16738 Regex!8113) (regTwo!16738 Regex!8113)) (EmptyExpr!8113) (Star!8113 (reg!8442 Regex!8113)) (EmptyLang!8113) (Union!8113 (regOne!16739 Regex!8113) (regTwo!16739 Regex!8113)) )
))
(declare-datatypes ((List!32218 0))(
  ( (Nil!32118) (Cons!32118 (h!37538 Regex!8113) (t!228358 List!32218)) )
))
(declare-datatypes ((Context!4662 0))(
  ( (Context!4663 (exprs!2831 List!32218)) )
))
(declare-datatypes ((tuple3!4950 0))(
  ( (tuple3!4951 (_1!19133 Regex!8113) (_2!19133 Context!4662) (_3!2945 C!16384)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32376 0))(
  ( (tuple2!32377 (_1!19134 tuple3!4950) (_2!19134 (InoxSet Context!4662))) )
))
(declare-datatypes ((List!32219 0))(
  ( (Nil!32119) (Cons!32119 (h!37539 tuple2!32376) (t!228359 List!32219)) )
))
(declare-datatypes ((array!13642 0))(
  ( (array!13643 (arr!6080 (Array (_ BitVec 32) List!32219)) (size!24915 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7666 0))(
  ( (LongMapFixedSize!7667 (defaultEntry!4218 Int) (mask!9626 (_ BitVec 32)) (extraKeys!4082 (_ BitVec 32)) (zeroValue!4092 List!32219) (minValue!4092 List!32219) (_size!7709 (_ BitVec 32)) (_keys!4133 array!13640) (_values!4114 array!13642) (_vacant!3894 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15141 0))(
  ( (Cell!15142 (v!33727 LongMapFixedSize!7666)) )
))
(declare-datatypes ((MutLongMap!3833 0))(
  ( (LongMap!3833 (underlying!7869 Cell!15141)) (MutLongMapExt!3832 (__x!21149 Int)) )
))
(declare-datatypes ((Cell!15143 0))(
  ( (Cell!15144 (v!33728 MutLongMap!3833)) )
))
(declare-datatypes ((Hashable!3749 0))(
  ( (HashableExt!3748 (__x!21150 Int)) )
))
(declare-datatypes ((MutableMap!3739 0))(
  ( (MutableMapExt!3738 (__x!21151 Int)) (HashMap!3739 (underlying!7870 Cell!15143) (hashF!5781 Hashable!3749) (_size!7710 (_ BitVec 32)) (defaultValue!3910 Int)) )
))
(declare-datatypes ((CacheDown!2566 0))(
  ( (CacheDown!2567 (cache!3882 MutableMap!3739)) )
))
(declare-fun cacheDown!1009 () CacheDown!2566)

(declare-fun e!1755008 () Bool)

(declare-fun inv!43625 (CacheDown!2566) Bool)

(assert (=> start!268894 (and (inv!43625 cacheDown!1009) e!1755008)))

(declare-datatypes ((Hashable!3750 0))(
  ( (HashableExt!3749 (__x!21152 Int)) )
))
(declare-datatypes ((tuple2!32378 0))(
  ( (tuple2!32379 (_1!19135 Context!4662) (_2!19135 C!16384)) )
))
(declare-datatypes ((tuple2!32380 0))(
  ( (tuple2!32381 (_1!19136 tuple2!32378) (_2!19136 (InoxSet Context!4662))) )
))
(declare-datatypes ((List!32220 0))(
  ( (Nil!32120) (Cons!32120 (h!37540 tuple2!32380) (t!228360 List!32220)) )
))
(declare-datatypes ((array!13644 0))(
  ( (array!13645 (arr!6081 (Array (_ BitVec 32) List!32220)) (size!24916 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7668 0))(
  ( (LongMapFixedSize!7669 (defaultEntry!4219 Int) (mask!9627 (_ BitVec 32)) (extraKeys!4083 (_ BitVec 32)) (zeroValue!4093 List!32220) (minValue!4093 List!32220) (_size!7711 (_ BitVec 32)) (_keys!4134 array!13640) (_values!4115 array!13644) (_vacant!3895 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15145 0))(
  ( (Cell!15146 (v!33729 LongMapFixedSize!7668)) )
))
(declare-datatypes ((MutLongMap!3834 0))(
  ( (LongMap!3834 (underlying!7871 Cell!15145)) (MutLongMapExt!3833 (__x!21153 Int)) )
))
(declare-datatypes ((Cell!15147 0))(
  ( (Cell!15148 (v!33730 MutLongMap!3834)) )
))
(declare-datatypes ((MutableMap!3740 0))(
  ( (MutableMapExt!3739 (__x!21154 Int)) (HashMap!3740 (underlying!7872 Cell!15147) (hashF!5782 Hashable!3750) (_size!7712 (_ BitVec 32)) (defaultValue!3911 Int)) )
))
(declare-datatypes ((CacheUp!2444 0))(
  ( (CacheUp!2445 (cache!3883 MutableMap!3740)) )
))
(declare-fun cacheUp!890 () CacheUp!2444)

(declare-fun e!1755023 () Bool)

(declare-fun inv!43626 (CacheUp!2444) Bool)

(assert (=> start!268894 (and (inv!43626 cacheUp!890) e!1755023)))

(declare-fun b!2782358 () Bool)

(declare-fun e!1755024 () Bool)

(declare-fun e!1755014 () Bool)

(assert (=> b!2782358 (= e!1755024 e!1755014)))

(declare-fun b!2782359 () Bool)

(declare-fun e!1755018 () Bool)

(declare-fun tp!880839 () Bool)

(declare-fun mapRes!17508 () Bool)

(assert (=> b!2782359 (= e!1755018 (and tp!880839 mapRes!17508))))

(declare-fun condMapEmpty!17507 () Bool)

(declare-fun mapDefault!17508 () List!32219)

(assert (=> b!2782359 (= condMapEmpty!17507 (= (arr!6080 (_values!4114 (v!33727 (underlying!7869 (v!33728 (underlying!7870 (cache!3882 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32219)) mapDefault!17508)))))

(declare-fun b!2782360 () Bool)

(declare-fun tp_is_empty!14039 () Bool)

(declare-fun tp!880830 () Bool)

(assert (=> b!2782360 (= e!1755006 (and tp_is_empty!14039 tp!880830))))

(declare-fun b!2782361 () Bool)

(declare-fun e!1755005 () Bool)

(assert (=> b!2782361 (= e!1755005 e!1755024)))

(declare-fun b!2782362 () Bool)

(declare-fun e!1755021 () Bool)

(assert (=> b!2782362 (= e!1755021 true)))

(declare-fun lt!993835 () List!32217)

(declare-fun getSuffix!1243 (List!32217 List!32217) List!32217)

(assert (=> b!2782362 (= lt!993835 (++!7942 testedP!183 (getSuffix!1243 lt!993836 testedP!183)))))

(declare-fun b!2782363 () Bool)

(declare-fun res!1161546 () Bool)

(assert (=> b!2782363 (=> (not res!1161546) (not e!1755013))))

(declare-fun testedPSize!143 () Int)

(declare-fun size!24917 (List!32217) Int)

(assert (=> b!2782363 (= res!1161546 (= testedPSize!143 (size!24917 testedP!183)))))

(declare-fun tp!880835 () Bool)

(declare-fun e!1755022 () Bool)

(declare-fun tp!880834 () Bool)

(declare-fun array_inv!4347 (array!13640) Bool)

(declare-fun array_inv!4348 (array!13642) Bool)

(assert (=> b!2782364 (= e!1755022 (and tp!880838 tp!880834 tp!880835 (array_inv!4347 (_keys!4133 (v!33727 (underlying!7869 (v!33728 (underlying!7870 (cache!3882 cacheDown!1009))))))) (array_inv!4348 (_values!4114 (v!33727 (underlying!7869 (v!33728 (underlying!7870 (cache!3882 cacheDown!1009))))))) e!1755018))))

(declare-fun mapIsEmpty!17507 () Bool)

(assert (=> mapIsEmpty!17507 mapRes!17508))

(declare-fun b!2782365 () Bool)

(declare-fun res!1161548 () Bool)

(assert (=> b!2782365 (=> (not res!1161548) (not e!1755013))))

(declare-fun valid!2998 (CacheUp!2444) Bool)

(assert (=> b!2782365 (= res!1161548 (valid!2998 cacheUp!890))))

(declare-fun b!2782366 () Bool)

(declare-fun res!1161549 () Bool)

(assert (=> b!2782366 (=> (not res!1161549) (not e!1755013))))

(declare-fun totalInputSize!205 () Int)

(declare-fun size!24918 (BalanceConc!19594) Int)

(assert (=> b!2782366 (= res!1161549 (= totalInputSize!205 (size!24918 totalInput!758)))))

(declare-fun b!2782367 () Bool)

(assert (=> b!2782367 (= e!1755013 (not e!1755021))))

(declare-fun res!1161547 () Bool)

(assert (=> b!2782367 (=> res!1161547 e!1755021)))

(declare-fun isPrefix!2563 (List!32217 List!32217) Bool)

(assert (=> b!2782367 (= res!1161547 (not (isPrefix!2563 testedP!183 lt!993836)))))

(assert (=> b!2782367 (isPrefix!2563 testedP!183 lt!993839)))

(declare-datatypes ((Unit!46396 0))(
  ( (Unit!46397) )
))
(declare-fun lt!993837 () Unit!46396)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1673 (List!32217 List!32217) Unit!46396)

(assert (=> b!2782367 (= lt!993837 (lemmaConcatTwoListThenFirstIsPrefix!1673 testedP!183 testedSuffix!143))))

(declare-fun mapNonEmpty!17507 () Bool)

(declare-fun tp!880846 () Bool)

(declare-fun tp!880831 () Bool)

(assert (=> mapNonEmpty!17507 (= mapRes!17508 (and tp!880846 tp!880831))))

(declare-fun mapValue!17507 () List!32219)

(declare-fun mapRest!17508 () (Array (_ BitVec 32) List!32219))

(declare-fun mapKey!17508 () (_ BitVec 32))

(assert (=> mapNonEmpty!17507 (= (arr!6080 (_values!4114 (v!33727 (underlying!7869 (v!33728 (underlying!7870 (cache!3882 cacheDown!1009))))))) (store mapRest!17508 mapKey!17508 mapValue!17507))))

(declare-fun b!2782368 () Bool)

(assert (=> b!2782368 (= e!1755023 e!1755012)))

(declare-fun mapIsEmpty!17508 () Bool)

(declare-fun mapRes!17507 () Bool)

(assert (=> mapIsEmpty!17508 mapRes!17507))

(declare-fun b!2782369 () Bool)

(declare-fun lt!993838 () MutLongMap!3834)

(get-info :version)

(assert (=> b!2782369 (= e!1755019 (and e!1755005 ((_ is LongMap!3834) lt!993838)))))

(assert (=> b!2782369 (= lt!993838 (v!33730 (underlying!7872 (cache!3883 cacheUp!890))))))

(declare-fun b!2782370 () Bool)

(declare-fun e!1755011 () Bool)

(declare-fun e!1755020 () Bool)

(declare-fun lt!993840 () MutLongMap!3833)

(assert (=> b!2782370 (= e!1755011 (and e!1755020 ((_ is LongMap!3833) lt!993840)))))

(assert (=> b!2782370 (= lt!993840 (v!33728 (underlying!7870 (cache!3882 cacheDown!1009))))))

(declare-fun b!2782371 () Bool)

(declare-fun e!1755009 () Bool)

(declare-fun tp!880841 () Bool)

(assert (=> b!2782371 (= e!1755009 (and tp!880841 mapRes!17507))))

(declare-fun condMapEmpty!17508 () Bool)

(declare-fun mapDefault!17507 () List!32220)

(assert (=> b!2782371 (= condMapEmpty!17508 (= (arr!6081 (_values!4115 (v!33729 (underlying!7871 (v!33730 (underlying!7872 (cache!3883 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32220)) mapDefault!17507)))))

(declare-fun b!2782372 () Bool)

(declare-fun tp!880837 () Bool)

(assert (=> b!2782372 (= e!1755025 (and tp_is_empty!14039 tp!880837))))

(declare-fun mapNonEmpty!17508 () Bool)

(declare-fun tp!880842 () Bool)

(declare-fun tp!880840 () Bool)

(assert (=> mapNonEmpty!17508 (= mapRes!17507 (and tp!880842 tp!880840))))

(declare-fun mapKey!17507 () (_ BitVec 32))

(declare-fun mapValue!17508 () List!32220)

(declare-fun mapRest!17507 () (Array (_ BitVec 32) List!32220))

(assert (=> mapNonEmpty!17508 (= (arr!6081 (_values!4115 (v!33729 (underlying!7871 (v!33730 (underlying!7872 (cache!3883 cacheUp!890))))))) (store mapRest!17507 mapKey!17507 mapValue!17508))))

(declare-fun tp!880843 () Bool)

(declare-fun tp!880833 () Bool)

(declare-fun array_inv!4349 (array!13644) Bool)

(assert (=> b!2782373 (= e!1755014 (and tp!880844 tp!880833 tp!880843 (array_inv!4347 (_keys!4134 (v!33729 (underlying!7871 (v!33730 (underlying!7872 (cache!3883 cacheUp!890))))))) (array_inv!4349 (_values!4115 (v!33729 (underlying!7871 (v!33730 (underlying!7872 (cache!3883 cacheUp!890))))))) e!1755009))))

(declare-fun b!2782374 () Bool)

(declare-fun e!1755017 () Bool)

(assert (=> b!2782374 (= e!1755017 e!1755022)))

(declare-fun b!2782375 () Bool)

(declare-fun tp!880832 () Bool)

(declare-fun inv!43627 (Conc!9990) Bool)

(assert (=> b!2782375 (= e!1755016 (and (inv!43627 (c!452255 totalInput!758)) tp!880832))))

(declare-fun e!1755010 () Bool)

(assert (=> b!2782376 (= e!1755010 (and e!1755011 tp!880836))))

(declare-fun b!2782377 () Bool)

(declare-fun res!1161550 () Bool)

(assert (=> b!2782377 (=> (not res!1161550) (not e!1755013))))

(declare-fun valid!2999 (CacheDown!2566) Bool)

(assert (=> b!2782377 (= res!1161550 (valid!2999 cacheDown!1009))))

(declare-fun b!2782378 () Bool)

(assert (=> b!2782378 (= e!1755020 e!1755017)))

(declare-fun b!2782379 () Bool)

(assert (=> b!2782379 (= e!1755008 e!1755010)))

(assert (= (and start!268894 res!1161545) b!2782363))

(assert (= (and b!2782363 res!1161546) b!2782366))

(assert (= (and b!2782366 res!1161549) b!2782365))

(assert (= (and b!2782365 res!1161548) b!2782377))

(assert (= (and b!2782377 res!1161550) b!2782367))

(assert (= (and b!2782367 (not res!1161547)) b!2782362))

(assert (= start!268894 b!2782375))

(assert (= (and start!268894 ((_ is Cons!32117) testedP!183)) b!2782372))

(assert (= (and start!268894 ((_ is Cons!32117) testedSuffix!143)) b!2782360))

(assert (= (and b!2782359 condMapEmpty!17507) mapIsEmpty!17507))

(assert (= (and b!2782359 (not condMapEmpty!17507)) mapNonEmpty!17507))

(assert (= b!2782364 b!2782359))

(assert (= b!2782374 b!2782364))

(assert (= b!2782378 b!2782374))

(assert (= (and b!2782370 ((_ is LongMap!3833) (v!33728 (underlying!7870 (cache!3882 cacheDown!1009))))) b!2782378))

(assert (= b!2782376 b!2782370))

(assert (= (and b!2782379 ((_ is HashMap!3739) (cache!3882 cacheDown!1009))) b!2782376))

(assert (= start!268894 b!2782379))

(assert (= (and b!2782371 condMapEmpty!17508) mapIsEmpty!17508))

(assert (= (and b!2782371 (not condMapEmpty!17508)) mapNonEmpty!17508))

(assert (= b!2782373 b!2782371))

(assert (= b!2782358 b!2782373))

(assert (= b!2782361 b!2782358))

(assert (= (and b!2782369 ((_ is LongMap!3834) (v!33730 (underlying!7872 (cache!3883 cacheUp!890))))) b!2782361))

(assert (= b!2782357 b!2782369))

(assert (= (and b!2782368 ((_ is HashMap!3740) (cache!3883 cacheUp!890))) b!2782357))

(assert (= start!268894 b!2782368))

(declare-fun m!3213587 () Bool)

(assert (=> b!2782377 m!3213587))

(declare-fun m!3213589 () Bool)

(assert (=> b!2782373 m!3213589))

(declare-fun m!3213591 () Bool)

(assert (=> b!2782373 m!3213591))

(declare-fun m!3213593 () Bool)

(assert (=> b!2782375 m!3213593))

(declare-fun m!3213595 () Bool)

(assert (=> b!2782366 m!3213595))

(declare-fun m!3213597 () Bool)

(assert (=> b!2782367 m!3213597))

(declare-fun m!3213599 () Bool)

(assert (=> b!2782367 m!3213599))

(declare-fun m!3213601 () Bool)

(assert (=> b!2782367 m!3213601))

(declare-fun m!3213603 () Bool)

(assert (=> b!2782364 m!3213603))

(declare-fun m!3213605 () Bool)

(assert (=> b!2782364 m!3213605))

(declare-fun m!3213607 () Bool)

(assert (=> start!268894 m!3213607))

(declare-fun m!3213609 () Bool)

(assert (=> start!268894 m!3213609))

(declare-fun m!3213611 () Bool)

(assert (=> start!268894 m!3213611))

(declare-fun m!3213613 () Bool)

(assert (=> start!268894 m!3213613))

(declare-fun m!3213615 () Bool)

(assert (=> start!268894 m!3213615))

(declare-fun m!3213617 () Bool)

(assert (=> b!2782363 m!3213617))

(declare-fun m!3213619 () Bool)

(assert (=> mapNonEmpty!17508 m!3213619))

(declare-fun m!3213621 () Bool)

(assert (=> b!2782362 m!3213621))

(assert (=> b!2782362 m!3213621))

(declare-fun m!3213623 () Bool)

(assert (=> b!2782362 m!3213623))

(declare-fun m!3213625 () Bool)

(assert (=> mapNonEmpty!17507 m!3213625))

(declare-fun m!3213627 () Bool)

(assert (=> b!2782365 m!3213627))

(check-sat b_and!203275 (not b_next!79243) (not b!2782359) (not b!2782372) (not b!2782364) (not b_next!79237) (not b!2782371) (not b!2782366) (not b!2782367) b_and!203271 (not mapNonEmpty!17508) (not b!2782377) (not b!2782373) (not b!2782375) b_and!203273 (not b!2782360) (not b_next!79239) (not start!268894) tp_is_empty!14039 (not mapNonEmpty!17507) b_and!203277 (not b!2782362) (not b_next!79241) (not b!2782363) (not b!2782365))
(check-sat b_and!203271 b_and!203275 b_and!203273 (not b_next!79239) (not b_next!79243) b_and!203277 (not b_next!79241) (not b_next!79237))
