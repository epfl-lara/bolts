; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207064 () Bool)

(assert start!207064)

(declare-fun b!2122297 () Bool)

(declare-fun b_free!61661 () Bool)

(declare-fun b_next!62365 () Bool)

(assert (=> b!2122297 (= b_free!61661 (not b_next!62365))))

(declare-fun tp!649835 () Bool)

(declare-fun b_and!171241 () Bool)

(assert (=> b!2122297 (= tp!649835 b_and!171241)))

(declare-fun b!2122298 () Bool)

(declare-fun b_free!61663 () Bool)

(declare-fun b_next!62367 () Bool)

(assert (=> b!2122298 (= b_free!61663 (not b_next!62367))))

(declare-fun tp!649853 () Bool)

(declare-fun b_and!171243 () Bool)

(assert (=> b!2122298 (= tp!649853 b_and!171243)))

(declare-fun b!2122282 () Bool)

(declare-fun b_free!61665 () Bool)

(declare-fun b_next!62369 () Bool)

(assert (=> b!2122282 (= b_free!61665 (not b_next!62369))))

(declare-fun tp!649836 () Bool)

(declare-fun b_and!171245 () Bool)

(assert (=> b!2122282 (= tp!649836 b_and!171245)))

(declare-fun b!2122271 () Bool)

(declare-fun b_free!61667 () Bool)

(declare-fun b_next!62371 () Bool)

(assert (=> b!2122271 (= b_free!61667 (not b_next!62371))))

(declare-fun tp!649844 () Bool)

(declare-fun b_and!171247 () Bool)

(assert (=> b!2122271 (= tp!649844 b_and!171247)))

(declare-fun b!2122278 () Bool)

(declare-fun b_free!61669 () Bool)

(declare-fun b_next!62373 () Bool)

(assert (=> b!2122278 (= b_free!61669 (not b_next!62373))))

(declare-fun tp!649839 () Bool)

(declare-fun b_and!171249 () Bool)

(assert (=> b!2122278 (= tp!649839 b_and!171249)))

(declare-fun b!2122287 () Bool)

(declare-fun b_free!61671 () Bool)

(declare-fun b_next!62375 () Bool)

(assert (=> b!2122287 (= b_free!61671 (not b_next!62375))))

(declare-fun tp!649854 () Bool)

(declare-fun b_and!171251 () Bool)

(assert (=> b!2122287 (= tp!649854 b_and!171251)))

(declare-fun b!2122337 () Bool)

(declare-fun e!1351988 () Bool)

(declare-fun e!1351979 () Bool)

(assert (=> b!2122337 (= e!1351988 e!1351979)))

(declare-fun b!2122272 () Bool)

(declare-fun e!1351985 () Bool)

(declare-fun e!1351990 () Bool)

(declare-fun e!1351983 () Bool)

(assert (=> b!2122272 (and e!1351985 e!1351990 e!1351983)))

(declare-fun b!2122338 () Bool)

(declare-fun e!1351982 () Bool)

(assert (=> b!2122338 (= e!1351979 e!1351982)))

(declare-fun b!2122339 () Bool)

(declare-fun e!1351993 () Bool)

(declare-fun setRes!14846 () Bool)

(assert (=> b!2122339 (= e!1351993 setRes!14846)))

(declare-fun condSetEmpty!14846 () Bool)

(declare-datatypes ((C!11480 0))(
  ( (C!11481 (val!6726 Int)) )
))
(declare-datatypes ((Regex!5667 0))(
  ( (ElementMatch!5667 (c!339758 C!11480)) (Concat!9969 (regOne!11846 Regex!5667) (regTwo!11846 Regex!5667)) (EmptyExpr!5667) (Star!5667 (reg!5996 Regex!5667)) (EmptyLang!5667) (Union!5667 (regOne!11847 Regex!5667) (regTwo!11847 Regex!5667)) )
))
(declare-datatypes ((List!23796 0))(
  ( (Nil!23712) (Cons!23712 (h!29113 Regex!5667) (t!196313 List!23796)) )
))
(declare-datatypes ((Context!2474 0))(
  ( (Context!2475 (exprs!1737 List!23796)) )
))
(declare-datatypes ((tuple3!2910 0))(
  ( (tuple3!2911 (_1!13586 Regex!5667) (_2!13586 Context!2474) (_3!1925 C!11480)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23322 0))(
  ( (tuple2!23323 (_1!13587 tuple3!2910) (_2!13587 (InoxSet Context!2474))) )
))
(declare-datatypes ((tuple2!23324 0))(
  ( (tuple2!23325 (_1!13588 Context!2474) (_2!13588 C!11480)) )
))
(declare-datatypes ((tuple2!23326 0))(
  ( (tuple2!23327 (_1!13589 tuple2!23324) (_2!13589 (InoxSet Context!2474))) )
))
(declare-datatypes ((List!23797 0))(
  ( (Nil!23713) (Cons!23713 (h!29114 tuple2!23326) (t!196314 List!23797)) )
))
(declare-datatypes ((List!23798 0))(
  ( (Nil!23714) (Cons!23714 (h!29115 tuple2!23322) (t!196315 List!23798)) )
))
(declare-datatypes ((array!8435 0))(
  ( (array!8436 (arr!3743 (Array (_ BitVec 32) (_ BitVec 64))) (size!18532 (_ BitVec 32))) )
))
(declare-datatypes ((array!8437 0))(
  ( (array!8438 (arr!3744 (Array (_ BitVec 32) List!23798)) (size!18533 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4910 0))(
  ( (LongMapFixedSize!4911 (defaultEntry!2820 Int) (mask!6604 (_ BitVec 32)) (extraKeys!2703 (_ BitVec 32)) (zeroValue!2713 List!23798) (minValue!2713 List!23798) (_size!4961 (_ BitVec 32)) (_keys!2752 array!8435) (_values!2735 array!8437) (_vacant!2516 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9645 0))(
  ( (Cell!9646 (v!28242 LongMapFixedSize!4910)) )
))
(declare-datatypes ((MutLongMap!2455 0))(
  ( (LongMap!2455 (underlying!5105 Cell!9645)) (MutLongMapExt!2454 (__x!15541 Int)) )
))
(declare-datatypes ((Cell!9647 0))(
  ( (Cell!9648 (v!28243 MutLongMap!2455)) )
))
(declare-datatypes ((List!23799 0))(
  ( (Nil!23715) (Cons!23715 (h!29116 C!11480) (t!196316 List!23799)) )
))
(declare-datatypes ((IArray!15615 0))(
  ( (IArray!15616 (innerList!7865 List!23799)) )
))
(declare-datatypes ((Hashable!2369 0))(
  ( (HashableExt!2368 (__x!15542 Int)) )
))
(declare-datatypes ((Hashable!2370 0))(
  ( (HashableExt!2369 (__x!15543 Int)) )
))
(declare-datatypes ((array!8439 0))(
  ( (array!8440 (arr!3745 (Array (_ BitVec 32) List!23797)) (size!18534 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4912 0))(
  ( (LongMapFixedSize!4913 (defaultEntry!2821 Int) (mask!6605 (_ BitVec 32)) (extraKeys!2704 (_ BitVec 32)) (zeroValue!2714 List!23797) (minValue!2714 List!23797) (_size!4962 (_ BitVec 32)) (_keys!2753 array!8435) (_values!2736 array!8439) (_vacant!2517 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9649 0))(
  ( (Cell!9650 (v!28244 LongMapFixedSize!4912)) )
))
(declare-datatypes ((MutLongMap!2456 0))(
  ( (LongMap!2456 (underlying!5106 Cell!9649)) (MutLongMapExt!2455 (__x!15544 Int)) )
))
(declare-datatypes ((Cell!9651 0))(
  ( (Cell!9652 (v!28245 MutLongMap!2456)) )
))
(declare-datatypes ((MutableMap!2369 0))(
  ( (MutableMapExt!2368 (__x!15545 Int)) (HashMap!2369 (underlying!5107 Cell!9651) (hashF!4292 Hashable!2370) (_size!4963 (_ BitVec 32)) (defaultValue!2531 Int)) )
))
(declare-datatypes ((CacheUp!1642 0))(
  ( (CacheUp!1643 (cache!2750 MutableMap!2369)) )
))
(declare-datatypes ((Conc!7805 0))(
  ( (Node!7805 (left!18343 Conc!7805) (right!18673 Conc!7805) (csize!15840 Int) (cheight!8016 Int)) (Leaf!11406 (xs!10747 IArray!15615) (csize!15841 Int)) (Empty!7805) )
))
(declare-datatypes ((BalanceConc!15372 0))(
  ( (BalanceConc!15373 (c!339759 Conc!7805)) )
))
(declare-datatypes ((StackFrame!46 0))(
  ( (StackFrame!47 (z!5727 (InoxSet Context!2474)) (from!2624 Int) (lastNullablePos!311 Int) (res!919181 Int) (totalInput!2910 BalanceConc!15372)) )
))
(declare-datatypes ((List!23800 0))(
  ( (Nil!23716) (Cons!23716 (h!29117 StackFrame!46) (t!196317 List!23800)) )
))
(declare-datatypes ((tuple2!23328 0))(
  ( (tuple2!23329 (_1!13590 Int) (_2!13590 List!23800)) )
))
(declare-datatypes ((MutableMap!2370 0))(
  ( (MutableMapExt!2369 (__x!15546 Int)) (HashMap!2370 (underlying!5108 Cell!9647) (hashF!4293 Hashable!2369) (_size!4964 (_ BitVec 32)) (defaultValue!2532 Int)) )
))
(declare-datatypes ((CacheDown!1628 0))(
  ( (CacheDown!1629 (cache!2751 MutableMap!2370)) )
))
(declare-datatypes ((tuple3!2912 0))(
  ( (tuple3!2913 (_1!13591 tuple2!23328) (_2!13591 CacheUp!1642) (_3!1926 CacheDown!1628)) )
))
(declare-fun lt!795000 () tuple3!2912)

(assert (=> b!2122339 (= condSetEmpty!14846 (= (z!5727 (h!29117 (_2!13590 (_1!13591 lt!795000)))) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun b!2122340 () Bool)

(declare-fun e!1351991 () Bool)

(declare-fun e!1351986 () Bool)

(assert (=> b!2122340 (= e!1351991 e!1351986)))

(declare-fun b!2122341 () Bool)

(declare-fun lt!795007 () MutLongMap!2456)

(get-info :version)

(assert (=> b!2122341 (= e!1351986 (and e!1351988 ((_ is LongMap!2456) lt!795007)))))

(assert (=> b!2122341 (= lt!795007 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795000)))))))

(declare-fun mapNonEmpty!11918 () Bool)

(declare-fun mapRes!11918 () Bool)

(assert (=> mapNonEmpty!11918 (= mapRes!11918 true)))

(declare-fun mapKey!11919 () (_ BitVec 32))

(declare-fun mapRest!11919 () (Array (_ BitVec 32) List!23798))

(declare-fun mapValue!11918 () List!23798)

(assert (=> mapNonEmpty!11918 (= (arr!3744 (_values!2735 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795000)))))))) (store mapRest!11919 mapKey!11919 mapValue!11918))))

(declare-fun b!2122342 () Bool)

(declare-fun e!1351984 () Bool)

(assert (=> b!2122342 (= e!1351982 e!1351984)))

(declare-fun b!2122343 () Bool)

(declare-fun e!1351992 () Bool)

(declare-fun e!1351980 () Bool)

(assert (=> b!2122343 (= e!1351992 e!1351980)))

(declare-fun b!2122344 () Bool)

(assert (=> b!2122344 (= e!1351980 mapRes!11918)))

(declare-fun condMapEmpty!11919 () Bool)

(declare-fun mapDefault!11918 () List!23798)

(assert (=> b!2122344 (= condMapEmpty!11919 (= (arr!3744 (_values!2735 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795000)))))))) ((as const (Array (_ BitVec 32) List!23798)) mapDefault!11918)))))

(declare-fun b!2122345 () Bool)

(declare-fun e!1351978 () Bool)

(declare-fun e!1351981 () Bool)

(assert (=> b!2122345 (= e!1351978 e!1351981)))

(declare-fun mapNonEmpty!11919 () Bool)

(declare-fun mapRes!11919 () Bool)

(assert (=> mapNonEmpty!11919 (= mapRes!11919 true)))

(declare-fun mapValue!11919 () List!23797)

(declare-fun mapRest!11918 () (Array (_ BitVec 32) List!23797))

(declare-fun mapKey!11918 () (_ BitVec 32))

(assert (=> mapNonEmpty!11919 (= (arr!3745 (_values!2736 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795000)))))))) (store mapRest!11918 mapKey!11918 mapValue!11919))))

(declare-fun b!2122346 () Bool)

(declare-fun e!1351989 () Bool)

(assert (=> b!2122346 (= e!1351989 e!1351992)))

(declare-fun b!2122347 () Bool)

(assert (=> b!2122347 (= e!1351985 e!1351993)))

(declare-fun mapIsEmpty!11918 () Bool)

(assert (=> mapIsEmpty!11918 mapRes!11919))

(declare-fun b!2122348 () Bool)

(assert (=> b!2122348 (= e!1351990 e!1351991)))

(declare-fun b!2122349 () Bool)

(assert (=> b!2122349 (= e!1351984 mapRes!11919)))

(declare-fun condMapEmpty!11918 () Bool)

(declare-fun mapDefault!11919 () List!23797)

(assert (=> b!2122349 (= condMapEmpty!11918 (= (arr!3745 (_values!2736 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795000)))))))) ((as const (Array (_ BitVec 32) List!23797)) mapDefault!11919)))))

(declare-fun setNonEmpty!14846 () Bool)

(assert (=> setNonEmpty!14846 (= setRes!14846 true)))

(declare-fun setElem!14846 () Context!2474)

(declare-fun setRest!14846 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14846 (= (z!5727 (h!29117 (_2!13590 (_1!13591 lt!795000)))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14846 true) setRest!14846))))

(declare-fun mapIsEmpty!11919 () Bool)

(assert (=> mapIsEmpty!11919 mapRes!11918))

(declare-fun b!2122350 () Bool)

(assert (=> b!2122350 (= e!1351983 e!1351978)))

(declare-fun setIsEmpty!14846 () Bool)

(assert (=> setIsEmpty!14846 setRes!14846))

(declare-fun b!2122351 () Bool)

(declare-fun e!1351987 () Bool)

(declare-fun lt!795008 () MutLongMap!2455)

(assert (=> b!2122351 (= e!1351981 (and e!1351987 ((_ is LongMap!2455) lt!795008)))))

(assert (=> b!2122351 (= lt!795008 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795000)))))))

(declare-fun b!2122352 () Bool)

(assert (=> b!2122352 (= e!1351987 e!1351989)))

(assert (= (and b!2122339 condSetEmpty!14846) setIsEmpty!14846))

(assert (= (and b!2122339 (not condSetEmpty!14846)) setNonEmpty!14846))

(assert (= b!2122347 b!2122339))

(assert (= (and b!2122272 ((_ is Cons!23716) (_2!13590 (_1!13591 lt!795000)))) b!2122347))

(assert (= (and b!2122349 condMapEmpty!11918) mapIsEmpty!11918))

(assert (= (and b!2122349 (not condMapEmpty!11918)) mapNonEmpty!11919))

(assert (= b!2122342 b!2122349))

(assert (= b!2122338 b!2122342))

(assert (= b!2122337 b!2122338))

(assert (= (and b!2122341 ((_ is LongMap!2456) (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795000)))))) b!2122337))

(assert (= b!2122340 b!2122341))

(assert (= (and b!2122348 ((_ is HashMap!2369) (cache!2750 (_2!13591 lt!795000)))) b!2122340))

(assert (= b!2122272 b!2122348))

(assert (= (and b!2122344 condMapEmpty!11919) mapIsEmpty!11919))

(assert (= (and b!2122344 (not condMapEmpty!11919)) mapNonEmpty!11918))

(assert (= b!2122343 b!2122344))

(assert (= b!2122346 b!2122343))

(assert (= b!2122352 b!2122346))

(assert (= (and b!2122351 ((_ is LongMap!2455) (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795000)))))) b!2122352))

(assert (= b!2122345 b!2122351))

(assert (= (and b!2122350 ((_ is HashMap!2370) (cache!2751 (_3!1926 lt!795000)))) b!2122345))

(assert (= b!2122272 b!2122350))

(declare-fun lambda!78580 () Int)

(declare-fun order!14671 () Int)

(declare-fun order!14669 () Int)

(declare-fun dynLambda!11327 (Int Int) Int)

(declare-fun dynLambda!11328 (Int Int) Int)

(assert (=> b!2122342 (< (dynLambda!11327 order!14669 (defaultEntry!2821 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795000)))))))) (dynLambda!11328 order!14671 lambda!78580))))

(declare-fun order!14673 () Int)

(declare-fun dynLambda!11329 (Int Int) Int)

(assert (=> b!2122343 (< (dynLambda!11329 order!14673 (defaultEntry!2820 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795000)))))))) (dynLambda!11328 order!14671 lambda!78580))))

(declare-fun order!14675 () Int)

(declare-fun dynLambda!11330 (Int Int) Int)

(assert (=> b!2122345 (< (dynLambda!11330 order!14675 (defaultValue!2532 (cache!2751 (_3!1926 lt!795000)))) (dynLambda!11328 order!14671 lambda!78580))))

(declare-fun order!14677 () Int)

(declare-fun dynLambda!11331 (Int Int) Int)

(assert (=> b!2122340 (< (dynLambda!11331 order!14677 (defaultValue!2531 (cache!2750 (_2!13591 lt!795000)))) (dynLambda!11328 order!14671 lambda!78580))))

(declare-fun m!2575633 () Bool)

(assert (=> mapNonEmpty!11918 m!2575633))

(declare-fun m!2575635 () Bool)

(assert (=> mapNonEmpty!11919 m!2575635))

(declare-fun bs!442730 () Bool)

(declare-fun b!2122280 () Bool)

(assert (= bs!442730 (and b!2122280 b!2122272)))

(declare-fun lambda!78581 () Int)

(assert (=> bs!442730 (not (= lambda!78581 lambda!78580))))

(assert (=> b!2122280 true))

(declare-fun mapNonEmpty!11911 () Bool)

(declare-fun mapRes!11911 () Bool)

(declare-fun tp!649849 () Bool)

(declare-fun tp!649842 () Bool)

(assert (=> mapNonEmpty!11911 (= mapRes!11911 (and tp!649849 tp!649842))))

(declare-fun mapKey!11911 () (_ BitVec 32))

(declare-datatypes ((Hashable!2371 0))(
  ( (HashableExt!2370 (__x!15547 Int)) )
))
(declare-datatypes ((tuple3!2914 0))(
  ( (tuple3!2915 (_1!13592 (InoxSet Context!2474)) (_2!13592 Int) (_3!1927 Int)) )
))
(declare-datatypes ((tuple2!23330 0))(
  ( (tuple2!23331 (_1!13593 tuple3!2914) (_2!13593 Int)) )
))
(declare-datatypes ((List!23801 0))(
  ( (Nil!23717) (Cons!23717 (h!29118 tuple2!23330) (t!196318 List!23801)) )
))
(declare-datatypes ((array!8441 0))(
  ( (array!8442 (arr!3746 (Array (_ BitVec 32) List!23801)) (size!18535 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4914 0))(
  ( (LongMapFixedSize!4915 (defaultEntry!2822 Int) (mask!6606 (_ BitVec 32)) (extraKeys!2705 (_ BitVec 32)) (zeroValue!2715 List!23801) (minValue!2715 List!23801) (_size!4965 (_ BitVec 32)) (_keys!2754 array!8435) (_values!2737 array!8441) (_vacant!2518 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9653 0))(
  ( (Cell!9654 (v!28246 LongMapFixedSize!4914)) )
))
(declare-datatypes ((MutLongMap!2457 0))(
  ( (LongMap!2457 (underlying!5109 Cell!9653)) (MutLongMapExt!2456 (__x!15548 Int)) )
))
(declare-datatypes ((Cell!9655 0))(
  ( (Cell!9656 (v!28247 MutLongMap!2457)) )
))
(declare-datatypes ((MutableMap!2371 0))(
  ( (MutableMapExt!2370 (__x!15549 Int)) (HashMap!2371 (underlying!5110 Cell!9655) (hashF!4294 Hashable!2371) (_size!4966 (_ BitVec 32)) (defaultValue!2533 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!592 0))(
  ( (CacheFurthestNullable!593 (cache!2752 MutableMap!2371) (totalInput!2911 BalanceConc!15372)) )
))
(declare-fun cacheFurthestNullable!130 () CacheFurthestNullable!592)

(declare-fun mapValue!11911 () List!23801)

(declare-fun mapRest!11912 () (Array (_ BitVec 32) List!23801))

(assert (=> mapNonEmpty!11911 (= (arr!3746 (_values!2737 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))))) (store mapRest!11912 mapKey!11911 mapValue!11911))))

(declare-fun b!2122268 () Bool)

(declare-fun e!1351930 () Bool)

(declare-fun input!5507 () BalanceConc!15372)

(declare-fun tp!649851 () Bool)

(declare-fun inv!31305 (Conc!7805) Bool)

(assert (=> b!2122268 (= e!1351930 (and (inv!31305 (c!339759 input!5507)) tp!649851))))

(declare-fun b!2122269 () Bool)

(declare-fun res!919177 () Bool)

(declare-fun e!1351922 () Bool)

(assert (=> b!2122269 (=> (not res!919177) (not e!1351922))))

(declare-fun totalInput!886 () BalanceConc!15372)

(assert (=> b!2122269 (= res!919177 (= (totalInput!2911 cacheFurthestNullable!130) totalInput!886))))

(declare-fun b!2122270 () Bool)

(declare-fun e!1351938 () Int)

(declare-fun lt!794996 () Int)

(assert (=> b!2122270 (= e!1351938 (- lt!794996 1))))

(declare-fun e!1351936 () Bool)

(declare-fun e!1351941 () Bool)

(assert (=> b!2122271 (= e!1351936 (and e!1351941 tp!649844))))

(declare-fun e!1351916 () Bool)

(assert (=> b!2122272 (= e!1351922 (not e!1351916))))

(declare-fun res!919173 () Bool)

(assert (=> b!2122272 (=> res!919173 e!1351916)))

(assert (=> b!2122272 (= res!919173 (>= (+ 1 (- (_1!13590 (_1!13591 lt!795000)) lt!794996)) 0))))

(declare-datatypes ((Unit!37595 0))(
  ( (Unit!37596) )
))
(declare-datatypes ((tuple2!23332 0))(
  ( (tuple2!23333 (_1!13594 Unit!37595) (_2!13594 CacheFurthestNullable!592)) )
))
(declare-fun lt!795002 () tuple2!23332)

(declare-fun lt!794995 () Int)

(declare-fun fillUpCache!7 (List!23800 BalanceConc!15372 Int Int Int CacheFurthestNullable!592) tuple2!23332)

(assert (=> b!2122272 (= lt!795002 (fillUpCache!7 (_2!13590 (_1!13591 lt!795000)) totalInput!886 lt!794995 (_1!13590 (_1!13591 lt!795000)) 0 cacheFurthestNullable!130))))

(declare-fun e!1351943 () Bool)

(assert (=> b!2122272 e!1351943))

(declare-fun res!919179 () Bool)

(assert (=> b!2122272 (=> (not res!919179) (not e!1351943))))

(declare-fun forall!4864 (List!23800 Int) Bool)

(assert (=> b!2122272 (= res!919179 (forall!4864 (_2!13590 (_1!13591 lt!795000)) lambda!78580))))

(declare-fun z!3883 () (InoxSet Context!2474))

(declare-fun cacheDown!1110 () CacheDown!1628)

(declare-fun cacheUp!991 () CacheUp!1642)

(declare-fun furthestNullablePositionStackMem!10 ((InoxSet Context!2474) Int BalanceConc!15372 Int Int List!23800 CacheUp!1642 CacheDown!1628 CacheFurthestNullable!592) tuple3!2912)

(assert (=> b!2122272 (= lt!795000 (furthestNullablePositionStackMem!10 z!3883 lt!794996 totalInput!886 lt!794995 e!1351938 Nil!23716 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130))))

(declare-fun c!339757 () Bool)

(declare-fun nullableZipper!65 ((InoxSet Context!2474)) Bool)

(assert (=> b!2122272 (= c!339757 (nullableZipper!65 z!3883))))

(declare-fun lt!794998 () Int)

(assert (=> b!2122272 (= lt!794996 (- lt!794995 lt!794998))))

(declare-fun size!18536 (BalanceConc!15372) Int)

(assert (=> b!2122272 (= lt!794998 (size!18536 input!5507))))

(assert (=> b!2122272 (= lt!794995 (size!18536 totalInput!886))))

(declare-fun b!2122273 () Bool)

(declare-fun e!1351917 () Bool)

(declare-fun tp!649852 () Bool)

(assert (=> b!2122273 (= e!1351917 (and (inv!31305 (c!339759 (totalInput!2911 cacheFurthestNullable!130))) tp!649852))))

(declare-fun b!2122274 () Bool)

(declare-fun e!1351929 () Bool)

(declare-fun e!1351915 () Bool)

(assert (=> b!2122274 (= e!1351929 e!1351915)))

(declare-fun mapNonEmpty!11912 () Bool)

(declare-fun mapRes!11913 () Bool)

(declare-fun tp!649848 () Bool)

(declare-fun tp!649845 () Bool)

(assert (=> mapNonEmpty!11912 (= mapRes!11913 (and tp!649848 tp!649845))))

(declare-fun mapKey!11912 () (_ BitVec 32))

(declare-fun mapValue!11912 () List!23797)

(declare-fun mapRest!11913 () (Array (_ BitVec 32) List!23797))

(assert (=> mapNonEmpty!11912 (= (arr!3745 (_values!2736 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991))))))) (store mapRest!11913 mapKey!11912 mapValue!11912))))

(declare-fun b!2122275 () Bool)

(declare-fun e!1351945 () Bool)

(declare-fun tp!649840 () Bool)

(assert (=> b!2122275 (= e!1351945 (and tp!649840 mapRes!11913))))

(declare-fun condMapEmpty!11911 () Bool)

(declare-fun mapDefault!11913 () List!23797)

(assert (=> b!2122275 (= condMapEmpty!11911 (= (arr!3745 (_values!2736 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991))))))) ((as const (Array (_ BitVec 32) List!23797)) mapDefault!11913)))))

(declare-fun b!2122276 () Bool)

(declare-fun res!919178 () Bool)

(assert (=> b!2122276 (=> (not res!919178) (not e!1351922))))

(declare-fun valid!1931 (CacheUp!1642) Bool)

(assert (=> b!2122276 (= res!919178 (valid!1931 cacheUp!991))))

(declare-fun tp!649846 () Bool)

(declare-fun e!1351926 () Bool)

(declare-fun tp!649841 () Bool)

(declare-fun e!1351939 () Bool)

(declare-fun array_inv!2680 (array!8435) Bool)

(declare-fun array_inv!2681 (array!8437) Bool)

(assert (=> b!2122278 (= e!1351926 (and tp!649839 tp!649841 tp!649846 (array_inv!2680 (_keys!2752 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110))))))) (array_inv!2681 (_values!2735 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110))))))) e!1351939))))

(declare-fun b!2122279 () Bool)

(declare-fun e!1351919 () Bool)

(declare-fun e!1351933 () Bool)

(assert (=> b!2122279 (= e!1351919 e!1351933)))

(assert (=> b!2122280 (= e!1351943 (forall!4864 (_2!13590 (_1!13591 lt!795000)) lambda!78581))))

(declare-fun b!2122281 () Bool)

(assert (=> b!2122281 (= e!1351938 (- 1))))

(declare-fun tp!649850 () Bool)

(declare-fun tp!649847 () Bool)

(declare-fun e!1351914 () Bool)

(declare-fun array_inv!2682 (array!8439) Bool)

(assert (=> b!2122282 (= e!1351914 (and tp!649836 tp!649847 tp!649850 (array_inv!2680 (_keys!2753 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991))))))) (array_inv!2682 (_values!2736 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991))))))) e!1351945))))

(declare-fun b!2122283 () Bool)

(declare-fun e!1351931 () Bool)

(declare-fun e!1351940 () Bool)

(declare-fun lt!794999 () MutLongMap!2456)

(assert (=> b!2122283 (= e!1351931 (and e!1351940 ((_ is LongMap!2456) lt!794999)))))

(assert (=> b!2122283 (= lt!794999 (v!28245 (underlying!5107 (cache!2750 cacheUp!991))))))

(declare-fun b!2122284 () Bool)

(declare-fun res!919180 () Bool)

(assert (=> b!2122284 (=> res!919180 e!1351916)))

(declare-fun isBalanced!2448 (Conc!7805) Bool)

(assert (=> b!2122284 (= res!919180 (not (isBalanced!2448 (c!339759 input!5507))))))

(declare-fun mapIsEmpty!11911 () Bool)

(declare-fun mapRes!11912 () Bool)

(assert (=> mapIsEmpty!11911 mapRes!11912))

(declare-fun b!2122285 () Bool)

(assert (=> b!2122285 (= e!1351916 (<= 0 lt!794998))))

(declare-fun b!2122286 () Bool)

(declare-fun e!1351927 () Bool)

(declare-fun e!1351934 () Bool)

(assert (=> b!2122286 (= e!1351927 e!1351934)))

(declare-fun e!1351935 () Bool)

(declare-fun e!1351921 () Bool)

(assert (=> b!2122287 (= e!1351935 (and e!1351921 tp!649854))))

(declare-fun b!2122288 () Bool)

(declare-fun e!1351944 () Bool)

(declare-fun tp!649856 () Bool)

(assert (=> b!2122288 (= e!1351944 (and (inv!31305 (c!339759 totalInput!886)) tp!649856))))

(declare-fun b!2122289 () Bool)

(declare-fun res!919176 () Bool)

(assert (=> b!2122289 (=> (not res!919176) (not e!1351922))))

(declare-fun valid!1932 (CacheFurthestNullable!592) Bool)

(assert (=> b!2122289 (= res!919176 (valid!1932 cacheFurthestNullable!130))))

(declare-fun e!1351928 () Bool)

(declare-fun setNonEmpty!14843 () Bool)

(declare-fun setRes!14843 () Bool)

(declare-fun setElem!14843 () Context!2474)

(declare-fun tp!649834 () Bool)

(declare-fun inv!31306 (Context!2474) Bool)

(assert (=> setNonEmpty!14843 (= setRes!14843 (and tp!649834 (inv!31306 setElem!14843) e!1351928))))

(declare-fun setRest!14843 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14843 (= z!3883 ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14843 true) setRest!14843))))

(declare-fun e!1351925 () Bool)

(declare-fun b!2122290 () Bool)

(declare-fun inv!31307 (BalanceConc!15372) Bool)

(assert (=> b!2122290 (= e!1351925 (and e!1351935 (inv!31307 (totalInput!2911 cacheFurthestNullable!130)) e!1351917))))

(declare-fun b!2122291 () Bool)

(declare-fun e!1351924 () Bool)

(assert (=> b!2122291 (= e!1351924 e!1351914)))

(declare-fun b!2122292 () Bool)

(declare-fun e!1351918 () Bool)

(assert (=> b!2122292 (= e!1351933 e!1351918)))

(declare-fun mapIsEmpty!11912 () Bool)

(assert (=> mapIsEmpty!11912 mapRes!11911))

(declare-fun mapNonEmpty!11913 () Bool)

(declare-fun tp!649838 () Bool)

(declare-fun tp!649837 () Bool)

(assert (=> mapNonEmpty!11913 (= mapRes!11912 (and tp!649838 tp!649837))))

(declare-fun mapValue!11913 () List!23798)

(declare-fun mapRest!11911 () (Array (_ BitVec 32) List!23798))

(declare-fun mapKey!11913 () (_ BitVec 32))

(assert (=> mapNonEmpty!11913 (= (arr!3744 (_values!2735 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110))))))) (store mapRest!11911 mapKey!11913 mapValue!11913))))

(declare-fun b!2122293 () Bool)

(assert (=> b!2122293 (= e!1351934 e!1351926)))

(declare-fun b!2122294 () Bool)

(declare-fun tp!649855 () Bool)

(assert (=> b!2122294 (= e!1351928 tp!649855)))

(declare-fun setIsEmpty!14843 () Bool)

(assert (=> setIsEmpty!14843 setRes!14843))

(declare-fun b!2122295 () Bool)

(declare-fun e!1351923 () Bool)

(declare-fun tp!649833 () Bool)

(assert (=> b!2122295 (= e!1351923 (and tp!649833 mapRes!11911))))

(declare-fun condMapEmpty!11913 () Bool)

(declare-fun mapDefault!11912 () List!23801)

(assert (=> b!2122295 (= condMapEmpty!11913 (= (arr!3746 (_values!2737 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))))) ((as const (Array (_ BitVec 32) List!23801)) mapDefault!11912)))))

(declare-fun b!2122296 () Bool)

(declare-fun e!1351920 () Bool)

(assert (=> b!2122296 (= e!1351920 e!1351936)))

(declare-fun tp!649843 () Bool)

(declare-fun tp!649832 () Bool)

(declare-fun array_inv!2683 (array!8441) Bool)

(assert (=> b!2122297 (= e!1351918 (and tp!649835 tp!649843 tp!649832 (array_inv!2680 (_keys!2754 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))))) (array_inv!2683 (_values!2737 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))))) e!1351923))))

(declare-fun res!919174 () Bool)

(assert (=> start!207064 (=> (not res!919174) (not e!1351922))))

(declare-fun isSuffix!619 (List!23799 List!23799) Bool)

(declare-fun list!9528 (BalanceConc!15372) List!23799)

(assert (=> start!207064 (= res!919174 (isSuffix!619 (list!9528 input!5507) (list!9528 totalInput!886)))))

(assert (=> start!207064 e!1351922))

(declare-fun inv!31308 (CacheFurthestNullable!592) Bool)

(assert (=> start!207064 (and (inv!31308 cacheFurthestNullable!130) e!1351925)))

(declare-fun condSetEmpty!14843 () Bool)

(assert (=> start!207064 (= condSetEmpty!14843 (= z!3883 ((as const (Array Context!2474 Bool)) false)))))

(assert (=> start!207064 setRes!14843))

(assert (=> start!207064 (and (inv!31307 input!5507) e!1351930)))

(declare-fun inv!31309 (CacheDown!1628) Bool)

(assert (=> start!207064 (and (inv!31309 cacheDown!1110) e!1351920)))

(declare-fun inv!31310 (CacheUp!1642) Bool)

(assert (=> start!207064 (and (inv!31310 cacheUp!991) e!1351929)))

(assert (=> start!207064 (and (inv!31307 totalInput!886) e!1351944)))

(declare-fun b!2122277 () Bool)

(declare-fun lt!795001 () MutLongMap!2457)

(assert (=> b!2122277 (= e!1351921 (and e!1351919 ((_ is LongMap!2457) lt!795001)))))

(assert (=> b!2122277 (= lt!795001 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))))

(assert (=> b!2122298 (= e!1351915 (and e!1351931 tp!649853))))

(declare-fun b!2122299 () Bool)

(declare-fun res!919175 () Bool)

(assert (=> b!2122299 (=> (not res!919175) (not e!1351922))))

(declare-fun valid!1933 (CacheDown!1628) Bool)

(assert (=> b!2122299 (= res!919175 (valid!1933 cacheDown!1110))))

(declare-fun b!2122300 () Bool)

(declare-fun tp!649831 () Bool)

(assert (=> b!2122300 (= e!1351939 (and tp!649831 mapRes!11912))))

(declare-fun condMapEmpty!11912 () Bool)

(declare-fun mapDefault!11911 () List!23798)

(assert (=> b!2122300 (= condMapEmpty!11912 (= (arr!3744 (_values!2735 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110))))))) ((as const (Array (_ BitVec 32) List!23798)) mapDefault!11911)))))

(declare-fun b!2122301 () Bool)

(declare-fun lt!794997 () MutLongMap!2455)

(assert (=> b!2122301 (= e!1351941 (and e!1351927 ((_ is LongMap!2455) lt!794997)))))

(assert (=> b!2122301 (= lt!794997 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110))))))

(declare-fun mapIsEmpty!11913 () Bool)

(assert (=> mapIsEmpty!11913 mapRes!11913))

(declare-fun b!2122302 () Bool)

(assert (=> b!2122302 (= e!1351940 e!1351924)))

(assert (= (and start!207064 res!919174) b!2122276))

(assert (= (and b!2122276 res!919178) b!2122299))

(assert (= (and b!2122299 res!919175) b!2122289))

(assert (= (and b!2122289 res!919176) b!2122269))

(assert (= (and b!2122269 res!919177) b!2122272))

(assert (= (and b!2122272 c!339757) b!2122270))

(assert (= (and b!2122272 (not c!339757)) b!2122281))

(assert (= (and b!2122272 res!919179) b!2122280))

(assert (= (and b!2122272 (not res!919173)) b!2122284))

(assert (= (and b!2122284 (not res!919180)) b!2122285))

(assert (= (and b!2122295 condMapEmpty!11913) mapIsEmpty!11912))

(assert (= (and b!2122295 (not condMapEmpty!11913)) mapNonEmpty!11911))

(assert (= b!2122297 b!2122295))

(assert (= b!2122292 b!2122297))

(assert (= b!2122279 b!2122292))

(assert (= (and b!2122277 ((_ is LongMap!2457) (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))) b!2122279))

(assert (= b!2122287 b!2122277))

(assert (= (and b!2122290 ((_ is HashMap!2371) (cache!2752 cacheFurthestNullable!130))) b!2122287))

(assert (= b!2122290 b!2122273))

(assert (= start!207064 b!2122290))

(assert (= (and start!207064 condSetEmpty!14843) setIsEmpty!14843))

(assert (= (and start!207064 (not condSetEmpty!14843)) setNonEmpty!14843))

(assert (= setNonEmpty!14843 b!2122294))

(assert (= start!207064 b!2122268))

(assert (= (and b!2122300 condMapEmpty!11912) mapIsEmpty!11911))

(assert (= (and b!2122300 (not condMapEmpty!11912)) mapNonEmpty!11913))

(assert (= b!2122278 b!2122300))

(assert (= b!2122293 b!2122278))

(assert (= b!2122286 b!2122293))

(assert (= (and b!2122301 ((_ is LongMap!2455) (v!28243 (underlying!5108 (cache!2751 cacheDown!1110))))) b!2122286))

(assert (= b!2122271 b!2122301))

(assert (= (and b!2122296 ((_ is HashMap!2370) (cache!2751 cacheDown!1110))) b!2122271))

(assert (= start!207064 b!2122296))

(assert (= (and b!2122275 condMapEmpty!11911) mapIsEmpty!11913))

(assert (= (and b!2122275 (not condMapEmpty!11911)) mapNonEmpty!11912))

(assert (= b!2122282 b!2122275))

(assert (= b!2122291 b!2122282))

(assert (= b!2122302 b!2122291))

(assert (= (and b!2122283 ((_ is LongMap!2456) (v!28245 (underlying!5107 (cache!2750 cacheUp!991))))) b!2122302))

(assert (= b!2122298 b!2122283))

(assert (= (and b!2122274 ((_ is HashMap!2369) (cache!2750 cacheUp!991))) b!2122298))

(assert (= start!207064 b!2122274))

(assert (= start!207064 b!2122288))

(declare-fun m!2575637 () Bool)

(assert (=> b!2122284 m!2575637))

(declare-fun m!2575639 () Bool)

(assert (=> b!2122289 m!2575639))

(declare-fun m!2575641 () Bool)

(assert (=> b!2122276 m!2575641))

(declare-fun m!2575643 () Bool)

(assert (=> b!2122282 m!2575643))

(declare-fun m!2575645 () Bool)

(assert (=> b!2122282 m!2575645))

(declare-fun m!2575647 () Bool)

(assert (=> b!2122299 m!2575647))

(declare-fun m!2575649 () Bool)

(assert (=> b!2122280 m!2575649))

(declare-fun m!2575651 () Bool)

(assert (=> b!2122278 m!2575651))

(declare-fun m!2575653 () Bool)

(assert (=> b!2122278 m!2575653))

(declare-fun m!2575655 () Bool)

(assert (=> b!2122273 m!2575655))

(declare-fun m!2575657 () Bool)

(assert (=> b!2122288 m!2575657))

(declare-fun m!2575659 () Bool)

(assert (=> mapNonEmpty!11911 m!2575659))

(declare-fun m!2575661 () Bool)

(assert (=> b!2122268 m!2575661))

(declare-fun m!2575663 () Bool)

(assert (=> b!2122297 m!2575663))

(declare-fun m!2575665 () Bool)

(assert (=> b!2122297 m!2575665))

(declare-fun m!2575667 () Bool)

(assert (=> start!207064 m!2575667))

(declare-fun m!2575669 () Bool)

(assert (=> start!207064 m!2575669))

(declare-fun m!2575671 () Bool)

(assert (=> start!207064 m!2575671))

(declare-fun m!2575673 () Bool)

(assert (=> start!207064 m!2575673))

(declare-fun m!2575675 () Bool)

(assert (=> start!207064 m!2575675))

(declare-fun m!2575677 () Bool)

(assert (=> start!207064 m!2575677))

(assert (=> start!207064 m!2575673))

(assert (=> start!207064 m!2575667))

(declare-fun m!2575679 () Bool)

(assert (=> start!207064 m!2575679))

(declare-fun m!2575681 () Bool)

(assert (=> start!207064 m!2575681))

(declare-fun m!2575683 () Bool)

(assert (=> b!2122272 m!2575683))

(declare-fun m!2575685 () Bool)

(assert (=> b!2122272 m!2575685))

(declare-fun m!2575687 () Bool)

(assert (=> b!2122272 m!2575687))

(declare-fun m!2575689 () Bool)

(assert (=> b!2122272 m!2575689))

(declare-fun m!2575691 () Bool)

(assert (=> b!2122272 m!2575691))

(declare-fun m!2575693 () Bool)

(assert (=> b!2122272 m!2575693))

(declare-fun m!2575695 () Bool)

(assert (=> setNonEmpty!14843 m!2575695))

(declare-fun m!2575697 () Bool)

(assert (=> b!2122290 m!2575697))

(declare-fun m!2575699 () Bool)

(assert (=> mapNonEmpty!11912 m!2575699))

(declare-fun m!2575701 () Bool)

(assert (=> mapNonEmpty!11913 m!2575701))

(check-sat (not b!2122282) (not b!2122290) (not b_next!62365) b_and!171245 (not b!2122278) (not b!2122289) b_and!171249 (not b!2122280) (not b!2122275) b_and!171247 (not b!2122288) (not mapNonEmpty!11913) (not b!2122349) (not b_next!62371) (not b!2122268) (not setNonEmpty!14846) (not b!2122272) b_and!171241 (not b_next!62367) (not b!2122294) (not mapNonEmpty!11918) (not b!2122299) (not mapNonEmpty!11912) (not b!2122297) (not b!2122342) (not b_next!62369) (not b!2122344) (not b_next!62375) (not b!2122300) b_and!171251 (not mapNonEmpty!11919) (not b_next!62373) (not b!2122343) (not mapNonEmpty!11911) (not setNonEmpty!14843) (not b!2122276) (not b!2122347) (not start!207064) (not b!2122273) b_and!171243 (not b!2122284) (not b!2122295))
(check-sat b_and!171247 (not b_next!62371) (not b_next!62365) b_and!171245 (not b_next!62369) (not b_next!62373) b_and!171249 b_and!171243 b_and!171241 (not b_next!62367) (not b_next!62375) b_and!171251)
(get-model)

(declare-fun d!643455 () Bool)

(assert (=> d!643455 (= (array_inv!2680 (_keys!2754 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))))) (bvsge (size!18532 (_keys!2754 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2122297 d!643455))

(declare-fun d!643457 () Bool)

(assert (=> d!643457 (= (array_inv!2683 (_values!2737 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))))) (bvsge (size!18535 (_values!2737 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))))) #b00000000000000000000000000000000))))

(assert (=> b!2122297 d!643457))

(declare-fun d!643459 () Bool)

(declare-fun res!919186 () Bool)

(declare-fun e!1351998 () Bool)

(assert (=> d!643459 (=> res!919186 e!1351998)))

(assert (=> d!643459 (= res!919186 ((_ is Nil!23716) (_2!13590 (_1!13591 lt!795000))))))

(assert (=> d!643459 (= (forall!4864 (_2!13590 (_1!13591 lt!795000)) lambda!78581) e!1351998)))

(declare-fun b!2122359 () Bool)

(declare-fun e!1351999 () Bool)

(assert (=> b!2122359 (= e!1351998 e!1351999)))

(declare-fun res!919187 () Bool)

(assert (=> b!2122359 (=> (not res!919187) (not e!1351999))))

(declare-fun dynLambda!11332 (Int StackFrame!46) Bool)

(assert (=> b!2122359 (= res!919187 (dynLambda!11332 lambda!78581 (h!29117 (_2!13590 (_1!13591 lt!795000)))))))

(declare-fun b!2122360 () Bool)

(assert (=> b!2122360 (= e!1351999 (forall!4864 (t!196317 (_2!13590 (_1!13591 lt!795000))) lambda!78581))))

(assert (= (and d!643459 (not res!919186)) b!2122359))

(assert (= (and b!2122359 res!919187) b!2122360))

(declare-fun b_lambda!70465 () Bool)

(assert (=> (not b_lambda!70465) (not b!2122359)))

(declare-fun m!2575703 () Bool)

(assert (=> b!2122359 m!2575703))

(declare-fun m!2575705 () Bool)

(assert (=> b!2122360 m!2575705))

(assert (=> b!2122280 d!643459))

(declare-fun d!643461 () Bool)

(declare-fun lambda!78584 () Int)

(declare-fun forall!4865 (List!23796 Int) Bool)

(assert (=> d!643461 (= (inv!31306 setElem!14843) (forall!4865 (exprs!1737 setElem!14843) lambda!78584))))

(declare-fun bs!442731 () Bool)

(assert (= bs!442731 d!643461))

(declare-fun m!2575707 () Bool)

(assert (=> bs!442731 m!2575707))

(assert (=> setNonEmpty!14843 d!643461))

(declare-fun d!643463 () Bool)

(declare-fun validCacheMapFurthestNullable!94 (MutableMap!2371 BalanceConc!15372) Bool)

(assert (=> d!643463 (= (valid!1932 cacheFurthestNullable!130) (validCacheMapFurthestNullable!94 (cache!2752 cacheFurthestNullable!130) (totalInput!2911 cacheFurthestNullable!130)))))

(declare-fun bs!442732 () Bool)

(assert (= bs!442732 d!643463))

(declare-fun m!2575709 () Bool)

(assert (=> bs!442732 m!2575709))

(assert (=> b!2122289 d!643463))

(declare-fun d!643465 () Bool)

(assert (=> d!643465 (= (array_inv!2680 (_keys!2752 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110))))))) (bvsge (size!18532 (_keys!2752 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2122278 d!643465))

(declare-fun d!643467 () Bool)

(assert (=> d!643467 (= (array_inv!2681 (_values!2735 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110))))))) (bvsge (size!18533 (_values!2735 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2122278 d!643467))

(declare-fun d!643469 () Bool)

(declare-fun list!9529 (Conc!7805) List!23799)

(assert (=> d!643469 (= (list!9528 input!5507) (list!9529 (c!339759 input!5507)))))

(declare-fun bs!442733 () Bool)

(assert (= bs!442733 d!643469))

(declare-fun m!2575711 () Bool)

(assert (=> bs!442733 m!2575711))

(assert (=> start!207064 d!643469))

(declare-fun d!643471 () Bool)

(assert (=> d!643471 (= (inv!31307 totalInput!886) (isBalanced!2448 (c!339759 totalInput!886)))))

(declare-fun bs!442734 () Bool)

(assert (= bs!442734 d!643471))

(declare-fun m!2575713 () Bool)

(assert (=> bs!442734 m!2575713))

(assert (=> start!207064 d!643471))

(declare-fun d!643473 () Bool)

(assert (=> d!643473 (= (inv!31307 input!5507) (isBalanced!2448 (c!339759 input!5507)))))

(declare-fun bs!442735 () Bool)

(assert (= bs!442735 d!643473))

(assert (=> bs!442735 m!2575637))

(assert (=> start!207064 d!643473))

(declare-fun d!643475 () Bool)

(assert (=> d!643475 (= (list!9528 totalInput!886) (list!9529 (c!339759 totalInput!886)))))

(declare-fun bs!442736 () Bool)

(assert (= bs!442736 d!643475))

(declare-fun m!2575715 () Bool)

(assert (=> bs!442736 m!2575715))

(assert (=> start!207064 d!643475))

(declare-fun d!643477 () Bool)

(declare-fun res!919190 () Bool)

(declare-fun e!1352002 () Bool)

(assert (=> d!643477 (=> (not res!919190) (not e!1352002))))

(assert (=> d!643477 (= res!919190 ((_ is HashMap!2369) (cache!2750 cacheUp!991)))))

(assert (=> d!643477 (= (inv!31310 cacheUp!991) e!1352002)))

(declare-fun b!2122363 () Bool)

(declare-fun validCacheMapUp!244 (MutableMap!2369) Bool)

(assert (=> b!2122363 (= e!1352002 (validCacheMapUp!244 (cache!2750 cacheUp!991)))))

(assert (= (and d!643477 res!919190) b!2122363))

(declare-fun m!2575717 () Bool)

(assert (=> b!2122363 m!2575717))

(assert (=> start!207064 d!643477))

(declare-fun d!643479 () Bool)

(declare-fun res!919193 () Bool)

(declare-fun e!1352005 () Bool)

(assert (=> d!643479 (=> (not res!919193) (not e!1352005))))

(assert (=> d!643479 (= res!919193 ((_ is HashMap!2370) (cache!2751 cacheDown!1110)))))

(assert (=> d!643479 (= (inv!31309 cacheDown!1110) e!1352005)))

(declare-fun b!2122366 () Bool)

(declare-fun validCacheMapDown!242 (MutableMap!2370) Bool)

(assert (=> b!2122366 (= e!1352005 (validCacheMapDown!242 (cache!2751 cacheDown!1110)))))

(assert (= (and d!643479 res!919193) b!2122366))

(declare-fun m!2575719 () Bool)

(assert (=> b!2122366 m!2575719))

(assert (=> start!207064 d!643479))

(declare-fun d!643481 () Bool)

(declare-fun res!919196 () Bool)

(declare-fun e!1352008 () Bool)

(assert (=> d!643481 (=> (not res!919196) (not e!1352008))))

(assert (=> d!643481 (= res!919196 ((_ is HashMap!2371) (cache!2752 cacheFurthestNullable!130)))))

(assert (=> d!643481 (= (inv!31308 cacheFurthestNullable!130) e!1352008)))

(declare-fun b!2122369 () Bool)

(assert (=> b!2122369 (= e!1352008 (validCacheMapFurthestNullable!94 (cache!2752 cacheFurthestNullable!130) (totalInput!2911 cacheFurthestNullable!130)))))

(assert (= (and d!643481 res!919196) b!2122369))

(assert (=> b!2122369 m!2575709))

(assert (=> start!207064 d!643481))

(declare-fun d!643483 () Bool)

(declare-fun e!1352011 () Bool)

(assert (=> d!643483 e!1352011))

(declare-fun res!919199 () Bool)

(assert (=> d!643483 (=> res!919199 e!1352011)))

(declare-fun lt!795011 () Bool)

(assert (=> d!643483 (= res!919199 (not lt!795011))))

(declare-fun drop!1183 (List!23799 Int) List!23799)

(declare-fun size!18537 (List!23799) Int)

(assert (=> d!643483 (= lt!795011 (= (list!9528 input!5507) (drop!1183 (list!9528 totalInput!886) (- (size!18537 (list!9528 totalInput!886)) (size!18537 (list!9528 input!5507))))))))

(assert (=> d!643483 (= (isSuffix!619 (list!9528 input!5507) (list!9528 totalInput!886)) lt!795011)))

(declare-fun b!2122372 () Bool)

(assert (=> b!2122372 (= e!1352011 (>= (size!18537 (list!9528 totalInput!886)) (size!18537 (list!9528 input!5507))))))

(assert (= (and d!643483 (not res!919199)) b!2122372))

(assert (=> d!643483 m!2575667))

(declare-fun m!2575721 () Bool)

(assert (=> d!643483 m!2575721))

(assert (=> d!643483 m!2575673))

(declare-fun m!2575723 () Bool)

(assert (=> d!643483 m!2575723))

(assert (=> d!643483 m!2575667))

(declare-fun m!2575725 () Bool)

(assert (=> d!643483 m!2575725))

(assert (=> b!2122372 m!2575667))

(assert (=> b!2122372 m!2575721))

(assert (=> b!2122372 m!2575673))

(assert (=> b!2122372 m!2575723))

(assert (=> start!207064 d!643483))

(declare-fun d!643485 () Bool)

(declare-fun c!339762 () Bool)

(assert (=> d!643485 (= c!339762 ((_ is Node!7805) (c!339759 totalInput!886)))))

(declare-fun e!1352016 () Bool)

(assert (=> d!643485 (= (inv!31305 (c!339759 totalInput!886)) e!1352016)))

(declare-fun b!2122379 () Bool)

(declare-fun inv!31311 (Conc!7805) Bool)

(assert (=> b!2122379 (= e!1352016 (inv!31311 (c!339759 totalInput!886)))))

(declare-fun b!2122380 () Bool)

(declare-fun e!1352017 () Bool)

(assert (=> b!2122380 (= e!1352016 e!1352017)))

(declare-fun res!919202 () Bool)

(assert (=> b!2122380 (= res!919202 (not ((_ is Leaf!11406) (c!339759 totalInput!886))))))

(assert (=> b!2122380 (=> res!919202 e!1352017)))

(declare-fun b!2122381 () Bool)

(declare-fun inv!31312 (Conc!7805) Bool)

(assert (=> b!2122381 (= e!1352017 (inv!31312 (c!339759 totalInput!886)))))

(assert (= (and d!643485 c!339762) b!2122379))

(assert (= (and d!643485 (not c!339762)) b!2122380))

(assert (= (and b!2122380 (not res!919202)) b!2122381))

(declare-fun m!2575727 () Bool)

(assert (=> b!2122379 m!2575727))

(declare-fun m!2575729 () Bool)

(assert (=> b!2122381 m!2575729))

(assert (=> b!2122288 d!643485))

(declare-fun d!643487 () Bool)

(declare-fun c!339763 () Bool)

(assert (=> d!643487 (= c!339763 ((_ is Node!7805) (c!339759 input!5507)))))

(declare-fun e!1352018 () Bool)

(assert (=> d!643487 (= (inv!31305 (c!339759 input!5507)) e!1352018)))

(declare-fun b!2122382 () Bool)

(assert (=> b!2122382 (= e!1352018 (inv!31311 (c!339759 input!5507)))))

(declare-fun b!2122383 () Bool)

(declare-fun e!1352019 () Bool)

(assert (=> b!2122383 (= e!1352018 e!1352019)))

(declare-fun res!919203 () Bool)

(assert (=> b!2122383 (= res!919203 (not ((_ is Leaf!11406) (c!339759 input!5507))))))

(assert (=> b!2122383 (=> res!919203 e!1352019)))

(declare-fun b!2122384 () Bool)

(assert (=> b!2122384 (= e!1352019 (inv!31312 (c!339759 input!5507)))))

(assert (= (and d!643487 c!339763) b!2122382))

(assert (= (and d!643487 (not c!339763)) b!2122383))

(assert (= (and b!2122383 (not res!919203)) b!2122384))

(declare-fun m!2575731 () Bool)

(assert (=> b!2122382 m!2575731))

(declare-fun m!2575733 () Bool)

(assert (=> b!2122384 m!2575733))

(assert (=> b!2122268 d!643487))

(declare-fun d!643489 () Bool)

(assert (=> d!643489 (= (valid!1931 cacheUp!991) (validCacheMapUp!244 (cache!2750 cacheUp!991)))))

(declare-fun bs!442737 () Bool)

(assert (= bs!442737 d!643489))

(assert (=> bs!442737 m!2575717))

(assert (=> b!2122276 d!643489))

(declare-fun d!643491 () Bool)

(declare-fun res!919216 () Bool)

(declare-fun e!1352025 () Bool)

(assert (=> d!643491 (=> res!919216 e!1352025)))

(assert (=> d!643491 (= res!919216 (not ((_ is Node!7805) (c!339759 input!5507))))))

(assert (=> d!643491 (= (isBalanced!2448 (c!339759 input!5507)) e!1352025)))

(declare-fun b!2122397 () Bool)

(declare-fun res!919221 () Bool)

(declare-fun e!1352024 () Bool)

(assert (=> b!2122397 (=> (not res!919221) (not e!1352024))))

(declare-fun height!1233 (Conc!7805) Int)

(assert (=> b!2122397 (= res!919221 (<= (- (height!1233 (left!18343 (c!339759 input!5507))) (height!1233 (right!18673 (c!339759 input!5507)))) 1))))

(declare-fun b!2122398 () Bool)

(declare-fun res!919218 () Bool)

(assert (=> b!2122398 (=> (not res!919218) (not e!1352024))))

(declare-fun isEmpty!14311 (Conc!7805) Bool)

(assert (=> b!2122398 (= res!919218 (not (isEmpty!14311 (left!18343 (c!339759 input!5507)))))))

(declare-fun b!2122399 () Bool)

(declare-fun res!919219 () Bool)

(assert (=> b!2122399 (=> (not res!919219) (not e!1352024))))

(assert (=> b!2122399 (= res!919219 (isBalanced!2448 (right!18673 (c!339759 input!5507))))))

(declare-fun b!2122400 () Bool)

(declare-fun res!919217 () Bool)

(assert (=> b!2122400 (=> (not res!919217) (not e!1352024))))

(assert (=> b!2122400 (= res!919217 (isBalanced!2448 (left!18343 (c!339759 input!5507))))))

(declare-fun b!2122401 () Bool)

(assert (=> b!2122401 (= e!1352024 (not (isEmpty!14311 (right!18673 (c!339759 input!5507)))))))

(declare-fun b!2122402 () Bool)

(assert (=> b!2122402 (= e!1352025 e!1352024)))

(declare-fun res!919220 () Bool)

(assert (=> b!2122402 (=> (not res!919220) (not e!1352024))))

(assert (=> b!2122402 (= res!919220 (<= (- 1) (- (height!1233 (left!18343 (c!339759 input!5507))) (height!1233 (right!18673 (c!339759 input!5507))))))))

(assert (= (and d!643491 (not res!919216)) b!2122402))

(assert (= (and b!2122402 res!919220) b!2122397))

(assert (= (and b!2122397 res!919221) b!2122400))

(assert (= (and b!2122400 res!919217) b!2122399))

(assert (= (and b!2122399 res!919219) b!2122398))

(assert (= (and b!2122398 res!919218) b!2122401))

(declare-fun m!2575735 () Bool)

(assert (=> b!2122398 m!2575735))

(declare-fun m!2575737 () Bool)

(assert (=> b!2122402 m!2575737))

(declare-fun m!2575739 () Bool)

(assert (=> b!2122402 m!2575739))

(declare-fun m!2575741 () Bool)

(assert (=> b!2122399 m!2575741))

(declare-fun m!2575743 () Bool)

(assert (=> b!2122400 m!2575743))

(assert (=> b!2122397 m!2575737))

(assert (=> b!2122397 m!2575739))

(declare-fun m!2575745 () Bool)

(assert (=> b!2122401 m!2575745))

(assert (=> b!2122284 d!643491))

(declare-fun d!643493 () Bool)

(declare-fun c!339764 () Bool)

(assert (=> d!643493 (= c!339764 ((_ is Node!7805) (c!339759 (totalInput!2911 cacheFurthestNullable!130))))))

(declare-fun e!1352026 () Bool)

(assert (=> d!643493 (= (inv!31305 (c!339759 (totalInput!2911 cacheFurthestNullable!130))) e!1352026)))

(declare-fun b!2122403 () Bool)

(assert (=> b!2122403 (= e!1352026 (inv!31311 (c!339759 (totalInput!2911 cacheFurthestNullable!130))))))

(declare-fun b!2122404 () Bool)

(declare-fun e!1352027 () Bool)

(assert (=> b!2122404 (= e!1352026 e!1352027)))

(declare-fun res!919222 () Bool)

(assert (=> b!2122404 (= res!919222 (not ((_ is Leaf!11406) (c!339759 (totalInput!2911 cacheFurthestNullable!130)))))))

(assert (=> b!2122404 (=> res!919222 e!1352027)))

(declare-fun b!2122405 () Bool)

(assert (=> b!2122405 (= e!1352027 (inv!31312 (c!339759 (totalInput!2911 cacheFurthestNullable!130))))))

(assert (= (and d!643493 c!339764) b!2122403))

(assert (= (and d!643493 (not c!339764)) b!2122404))

(assert (= (and b!2122404 (not res!919222)) b!2122405))

(declare-fun m!2575747 () Bool)

(assert (=> b!2122403 m!2575747))

(declare-fun m!2575749 () Bool)

(assert (=> b!2122405 m!2575749))

(assert (=> b!2122273 d!643493))

(declare-fun d!643495 () Bool)

(assert (=> d!643495 (= (valid!1933 cacheDown!1110) (validCacheMapDown!242 (cache!2751 cacheDown!1110)))))

(declare-fun bs!442738 () Bool)

(assert (= bs!442738 d!643495))

(assert (=> bs!442738 m!2575719))

(assert (=> b!2122299 d!643495))

(declare-fun d!643497 () Bool)

(assert (=> d!643497 (= (array_inv!2680 (_keys!2753 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991))))))) (bvsge (size!18532 (_keys!2753 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2122282 d!643497))

(declare-fun d!643499 () Bool)

(assert (=> d!643499 (= (array_inv!2682 (_values!2736 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991))))))) (bvsge (size!18534 (_values!2736 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991))))))) #b00000000000000000000000000000000))))

(assert (=> b!2122282 d!643499))

(declare-fun d!643501 () Bool)

(assert (=> d!643501 (= (inv!31307 (totalInput!2911 cacheFurthestNullable!130)) (isBalanced!2448 (c!339759 (totalInput!2911 cacheFurthestNullable!130))))))

(declare-fun bs!442739 () Bool)

(assert (= bs!442739 d!643501))

(declare-fun m!2575751 () Bool)

(assert (=> bs!442739 m!2575751))

(assert (=> b!2122290 d!643501))

(declare-fun d!643503 () Bool)

(declare-fun res!919223 () Bool)

(declare-fun e!1352028 () Bool)

(assert (=> d!643503 (=> res!919223 e!1352028)))

(assert (=> d!643503 (= res!919223 ((_ is Nil!23716) (_2!13590 (_1!13591 lt!795000))))))

(assert (=> d!643503 (= (forall!4864 (_2!13590 (_1!13591 lt!795000)) lambda!78580) e!1352028)))

(declare-fun b!2122406 () Bool)

(declare-fun e!1352029 () Bool)

(assert (=> b!2122406 (= e!1352028 e!1352029)))

(declare-fun res!919224 () Bool)

(assert (=> b!2122406 (=> (not res!919224) (not e!1352029))))

(assert (=> b!2122406 (= res!919224 (dynLambda!11332 lambda!78580 (h!29117 (_2!13590 (_1!13591 lt!795000)))))))

(declare-fun b!2122407 () Bool)

(assert (=> b!2122407 (= e!1352029 (forall!4864 (t!196317 (_2!13590 (_1!13591 lt!795000))) lambda!78580))))

(assert (= (and d!643503 (not res!919223)) b!2122406))

(assert (= (and b!2122406 res!919224) b!2122407))

(declare-fun b_lambda!70467 () Bool)

(assert (=> (not b_lambda!70467) (not b!2122406)))

(declare-fun m!2575753 () Bool)

(assert (=> b!2122406 m!2575753))

(declare-fun m!2575755 () Bool)

(assert (=> b!2122407 m!2575755))

(assert (=> b!2122272 d!643503))

(declare-fun d!643505 () Bool)

(declare-fun lambda!78587 () Int)

(declare-fun exists!692 ((InoxSet Context!2474) Int) Bool)

(assert (=> d!643505 (= (nullableZipper!65 z!3883) (exists!692 z!3883 lambda!78587))))

(declare-fun bs!442740 () Bool)

(assert (= bs!442740 d!643505))

(declare-fun m!2575757 () Bool)

(assert (=> bs!442740 m!2575757))

(assert (=> b!2122272 d!643505))

(declare-fun b!2122418 () Bool)

(declare-fun e!1352037 () Bool)

(declare-fun lt!795023 () tuple2!23332)

(assert (=> b!2122418 (= e!1352037 (= (totalInput!2911 (_2!13594 lt!795023)) totalInput!886))))

(declare-fun b!2122419 () Bool)

(declare-fun e!1352038 () tuple2!23332)

(declare-fun Unit!37597 () Unit!37595)

(assert (=> b!2122419 (= e!1352038 (tuple2!23333 Unit!37597 cacheFurthestNullable!130))))

(declare-fun b!2122420 () Bool)

(declare-fun lt!795021 () tuple2!23332)

(assert (=> b!2122420 (= e!1352038 (tuple2!23333 (_1!13594 lt!795021) (_2!13594 lt!795021)))))

(declare-fun c!339771 () Bool)

(assert (=> b!2122420 (= c!339771 (and (> lt!794995 1048576) (not (= (- 0 (* 10 (ite (>= 0 0) (div 0 10) (- (div (- 0) 10))))) 0))))))

(declare-fun e!1352036 () tuple2!23332)

(assert (=> b!2122420 (= lt!795021 (fillUpCache!7 (t!196317 (_2!13590 (_1!13591 lt!795000))) totalInput!886 lt!794995 (_1!13590 (_1!13591 lt!795000)) (+ 0 1) (_2!13594 e!1352036)))))

(declare-fun d!643507 () Bool)

(assert (=> d!643507 e!1352037))

(declare-fun res!919228 () Bool)

(assert (=> d!643507 (=> (not res!919228) (not e!1352037))))

(assert (=> d!643507 (= res!919228 (valid!1932 (_2!13594 lt!795023)))))

(assert (=> d!643507 (= lt!795023 e!1352038)))

(declare-fun c!339772 () Bool)

(assert (=> d!643507 (= c!339772 ((_ is Nil!23716) (_2!13590 (_1!13591 lt!795000))))))

(assert (=> d!643507 (valid!1932 cacheFurthestNullable!130)))

(assert (=> d!643507 (= (fillUpCache!7 (_2!13590 (_1!13591 lt!795000)) totalInput!886 lt!794995 (_1!13590 (_1!13591 lt!795000)) 0 cacheFurthestNullable!130) lt!795023)))

(declare-fun b!2122421 () Bool)

(declare-fun Unit!37598 () Unit!37595)

(assert (=> b!2122421 (= e!1352036 (tuple2!23333 Unit!37598 cacheFurthestNullable!130))))

(declare-fun b!2122422 () Bool)

(declare-fun lt!795022 () tuple2!23332)

(declare-fun update!86 (CacheFurthestNullable!592 (InoxSet Context!2474) Int Int Int BalanceConc!15372) tuple2!23332)

(assert (=> b!2122422 (= lt!795022 (update!86 cacheFurthestNullable!130 (z!5727 (h!29117 (_2!13590 (_1!13591 lt!795000)))) (from!2624 (h!29117 (_2!13590 (_1!13591 lt!795000)))) (lastNullablePos!311 (h!29117 (_2!13590 (_1!13591 lt!795000)))) (_1!13590 (_1!13591 lt!795000)) totalInput!886))))

(declare-fun lt!795020 () Unit!37595)

(declare-fun lemmaInvariant!380 (CacheFurthestNullable!592) Unit!37595)

(assert (=> b!2122422 (= lt!795020 (lemmaInvariant!380 cacheFurthestNullable!130))))

(assert (=> b!2122422 (= e!1352036 (tuple2!23333 (_1!13594 lt!795022) (_2!13594 lt!795022)))))

(assert (= (and d!643507 c!339772) b!2122419))

(assert (= (and d!643507 (not c!339772)) b!2122420))

(assert (= (and b!2122420 c!339771) b!2122421))

(assert (= (and b!2122420 (not c!339771)) b!2122422))

(assert (= (and d!643507 res!919228) b!2122418))

(declare-fun m!2575759 () Bool)

(assert (=> b!2122420 m!2575759))

(declare-fun m!2575761 () Bool)

(assert (=> d!643507 m!2575761))

(assert (=> d!643507 m!2575639))

(declare-fun m!2575763 () Bool)

(assert (=> b!2122422 m!2575763))

(declare-fun m!2575765 () Bool)

(assert (=> b!2122422 m!2575765))

(assert (=> b!2122272 d!643507))

(declare-fun d!643509 () Bool)

(declare-fun lt!795026 () Int)

(assert (=> d!643509 (= lt!795026 (size!18537 (list!9528 totalInput!886)))))

(declare-fun size!18538 (Conc!7805) Int)

(assert (=> d!643509 (= lt!795026 (size!18538 (c!339759 totalInput!886)))))

(assert (=> d!643509 (= (size!18536 totalInput!886) lt!795026)))

(declare-fun bs!442741 () Bool)

(assert (= bs!442741 d!643509))

(assert (=> bs!442741 m!2575667))

(assert (=> bs!442741 m!2575667))

(assert (=> bs!442741 m!2575721))

(declare-fun m!2575767 () Bool)

(assert (=> bs!442741 m!2575767))

(assert (=> b!2122272 d!643509))

(declare-fun bs!442742 () Bool)

(declare-fun d!643511 () Bool)

(assert (= bs!442742 (and d!643511 b!2122272)))

(declare-fun lambda!78602 () Int)

(declare-fun lt!795064 () Int)

(assert (=> bs!442742 (= (= lt!795064 (_1!13590 (_1!13591 lt!795000))) (= lambda!78602 lambda!78580))))

(declare-fun bs!442743 () Bool)

(assert (= bs!442743 (and d!643511 b!2122280)))

(assert (=> bs!442743 (not (= lambda!78602 lambda!78581))))

(assert (=> d!643511 true))

(declare-fun bs!442744 () Bool)

(declare-fun b!2122461 () Bool)

(assert (= bs!442744 (and b!2122461 b!2122272)))

(declare-fun lambda!78603 () Int)

(assert (=> bs!442744 (= (= e!1351938 (_1!13590 (_1!13591 lt!795000))) (= lambda!78603 lambda!78580))))

(declare-fun bs!442745 () Bool)

(assert (= bs!442745 (and b!2122461 b!2122280)))

(assert (=> bs!442745 (not (= lambda!78603 lambda!78581))))

(declare-fun bs!442746 () Bool)

(assert (= bs!442746 (and b!2122461 d!643511)))

(assert (=> bs!442746 (= (= e!1351938 lt!795064) (= lambda!78603 lambda!78602))))

(assert (=> b!2122461 true))

(declare-fun bs!442747 () Bool)

(declare-fun b!2122455 () Bool)

(assert (= bs!442747 (and b!2122455 b!2122272)))

(declare-fun lambda!78604 () Int)

(declare-fun lt!795055 () Int)

(assert (=> bs!442747 (= (= lt!795055 (_1!13590 (_1!13591 lt!795000))) (= lambda!78604 lambda!78580))))

(declare-fun bs!442748 () Bool)

(assert (= bs!442748 (and b!2122455 b!2122280)))

(assert (=> bs!442748 (not (= lambda!78604 lambda!78581))))

(declare-fun bs!442749 () Bool)

(assert (= bs!442749 (and b!2122455 d!643511)))

(assert (=> bs!442749 (= (= lt!795055 lt!795064) (= lambda!78604 lambda!78602))))

(declare-fun bs!442750 () Bool)

(assert (= bs!442750 (and b!2122455 b!2122461)))

(assert (=> bs!442750 (= (= lt!795055 e!1351938) (= lambda!78604 lambda!78603))))

(assert (=> b!2122455 true))

(declare-fun bs!442751 () Bool)

(declare-fun b!2122460 () Bool)

(assert (= bs!442751 (and b!2122460 b!2122280)))

(declare-fun lambda!78605 () Int)

(assert (=> bs!442751 (not (= lambda!78605 lambda!78581))))

(declare-fun bs!442752 () Bool)

(assert (= bs!442752 (and b!2122460 b!2122455)))

(declare-fun lt!795065 () tuple3!2912)

(assert (=> bs!442752 (= (= (_1!13590 (_1!13591 lt!795065)) lt!795055) (= lambda!78605 lambda!78604))))

(declare-fun bs!442753 () Bool)

(assert (= bs!442753 (and b!2122460 b!2122272)))

(assert (=> bs!442753 (= (= (_1!13590 (_1!13591 lt!795065)) (_1!13590 (_1!13591 lt!795000))) (= lambda!78605 lambda!78580))))

(declare-fun bs!442754 () Bool)

(assert (= bs!442754 (and b!2122460 b!2122461)))

(assert (=> bs!442754 (= (= (_1!13590 (_1!13591 lt!795065)) e!1351938) (= lambda!78605 lambda!78603))))

(declare-fun bs!442755 () Bool)

(assert (= bs!442755 (and b!2122460 d!643511)))

(assert (=> bs!442755 (= (= (_1!13590 (_1!13591 lt!795065)) lt!795064) (= lambda!78605 lambda!78602))))

(declare-fun b!2122464 () Bool)

(declare-fun e!1352064 () Bool)

(declare-fun e!1352055 () Bool)

(assert (=> b!2122464 (= e!1352064 e!1352055)))

(declare-fun e!1352061 () Bool)

(declare-fun e!1352066 () Bool)

(declare-fun e!1352059 () Bool)

(assert (=> b!2122460 (and e!1352061 e!1352066 e!1352059)))

(declare-fun b!2122465 () Bool)

(declare-fun e!1352058 () Bool)

(assert (=> b!2122465 (= e!1352055 e!1352058)))

(declare-fun b!2122466 () Bool)

(declare-fun e!1352069 () Bool)

(declare-fun setRes!14847 () Bool)

(assert (=> b!2122466 (= e!1352069 setRes!14847)))

(declare-fun condSetEmpty!14847 () Bool)

(assert (=> b!2122466 (= condSetEmpty!14847 (= (z!5727 (h!29117 (_2!13590 (_1!13591 lt!795065)))) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun b!2122467 () Bool)

(declare-fun e!1352067 () Bool)

(declare-fun e!1352062 () Bool)

(assert (=> b!2122467 (= e!1352067 e!1352062)))

(declare-fun b!2122468 () Bool)

(declare-fun lt!795069 () MutLongMap!2456)

(assert (=> b!2122468 (= e!1352062 (and e!1352064 ((_ is LongMap!2456) lt!795069)))))

(assert (=> b!2122468 (= lt!795069 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795065)))))))

(declare-fun mapNonEmpty!11920 () Bool)

(declare-fun mapRes!11920 () Bool)

(assert (=> mapNonEmpty!11920 (= mapRes!11920 true)))

(declare-fun mapKey!11921 () (_ BitVec 32))

(declare-fun mapRest!11921 () (Array (_ BitVec 32) List!23798))

(declare-fun mapValue!11920 () List!23798)

(assert (=> mapNonEmpty!11920 (= (arr!3744 (_values!2735 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795065)))))))) (store mapRest!11921 mapKey!11921 mapValue!11920))))

(declare-fun b!2122469 () Bool)

(declare-fun e!1352060 () Bool)

(assert (=> b!2122469 (= e!1352058 e!1352060)))

(declare-fun b!2122470 () Bool)

(declare-fun e!1352068 () Bool)

(declare-fun e!1352056 () Bool)

(assert (=> b!2122470 (= e!1352068 e!1352056)))

(declare-fun b!2122471 () Bool)

(assert (=> b!2122471 (= e!1352056 mapRes!11920)))

(declare-fun condMapEmpty!11921 () Bool)

(declare-fun mapDefault!11920 () List!23798)

(assert (=> b!2122471 (= condMapEmpty!11921 (= (arr!3744 (_values!2735 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795065)))))))) ((as const (Array (_ BitVec 32) List!23798)) mapDefault!11920)))))

(declare-fun b!2122472 () Bool)

(declare-fun e!1352054 () Bool)

(declare-fun e!1352057 () Bool)

(assert (=> b!2122472 (= e!1352054 e!1352057)))

(declare-fun mapNonEmpty!11921 () Bool)

(declare-fun mapRes!11921 () Bool)

(assert (=> mapNonEmpty!11921 (= mapRes!11921 true)))

(declare-fun mapKey!11920 () (_ BitVec 32))

(declare-fun mapValue!11921 () List!23797)

(declare-fun mapRest!11920 () (Array (_ BitVec 32) List!23797))

(assert (=> mapNonEmpty!11921 (= (arr!3745 (_values!2736 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795065)))))))) (store mapRest!11920 mapKey!11920 mapValue!11921))))

(declare-fun b!2122473 () Bool)

(declare-fun e!1352065 () Bool)

(assert (=> b!2122473 (= e!1352065 e!1352068)))

(declare-fun b!2122474 () Bool)

(assert (=> b!2122474 (= e!1352061 e!1352069)))

(declare-fun mapIsEmpty!11920 () Bool)

(assert (=> mapIsEmpty!11920 mapRes!11921))

(declare-fun b!2122475 () Bool)

(assert (=> b!2122475 (= e!1352066 e!1352067)))

(declare-fun b!2122476 () Bool)

(assert (=> b!2122476 (= e!1352060 mapRes!11921)))

(declare-fun condMapEmpty!11920 () Bool)

(declare-fun mapDefault!11921 () List!23797)

(assert (=> b!2122476 (= condMapEmpty!11920 (= (arr!3745 (_values!2736 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795065)))))))) ((as const (Array (_ BitVec 32) List!23797)) mapDefault!11921)))))

(declare-fun setNonEmpty!14847 () Bool)

(assert (=> setNonEmpty!14847 (= setRes!14847 true)))

(declare-fun setElem!14847 () Context!2474)

(declare-fun setRest!14847 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14847 (= (z!5727 (h!29117 (_2!13590 (_1!13591 lt!795065)))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14847 true) setRest!14847))))

(declare-fun mapIsEmpty!11921 () Bool)

(assert (=> mapIsEmpty!11921 mapRes!11920))

(declare-fun b!2122477 () Bool)

(assert (=> b!2122477 (= e!1352059 e!1352054)))

(declare-fun setIsEmpty!14847 () Bool)

(assert (=> setIsEmpty!14847 setRes!14847))

(declare-fun b!2122478 () Bool)

(declare-fun e!1352063 () Bool)

(declare-fun lt!795070 () MutLongMap!2455)

(assert (=> b!2122478 (= e!1352057 (and e!1352063 ((_ is LongMap!2455) lt!795070)))))

(assert (=> b!2122478 (= lt!795070 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795065)))))))

(declare-fun b!2122479 () Bool)

(assert (=> b!2122479 (= e!1352063 e!1352065)))

(assert (= (and b!2122466 condSetEmpty!14847) setIsEmpty!14847))

(assert (= (and b!2122466 (not condSetEmpty!14847)) setNonEmpty!14847))

(assert (= b!2122474 b!2122466))

(assert (= (and b!2122460 ((_ is Cons!23716) (_2!13590 (_1!13591 lt!795065)))) b!2122474))

(assert (= (and b!2122476 condMapEmpty!11920) mapIsEmpty!11920))

(assert (= (and b!2122476 (not condMapEmpty!11920)) mapNonEmpty!11921))

(assert (= b!2122469 b!2122476))

(assert (= b!2122465 b!2122469))

(assert (= b!2122464 b!2122465))

(assert (= (and b!2122468 ((_ is LongMap!2456) (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795065)))))) b!2122464))

(assert (= b!2122467 b!2122468))

(assert (= (and b!2122475 ((_ is HashMap!2369) (cache!2750 (_2!13591 lt!795065)))) b!2122467))

(assert (= b!2122460 b!2122475))

(assert (= (and b!2122471 condMapEmpty!11921) mapIsEmpty!11921))

(assert (= (and b!2122471 (not condMapEmpty!11921)) mapNonEmpty!11920))

(assert (= b!2122470 b!2122471))

(assert (= b!2122473 b!2122470))

(assert (= b!2122479 b!2122473))

(assert (= (and b!2122478 ((_ is LongMap!2455) (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795065)))))) b!2122479))

(assert (= b!2122472 b!2122478))

(assert (= (and b!2122477 ((_ is HashMap!2370) (cache!2751 (_3!1926 lt!795065)))) b!2122472))

(assert (= b!2122460 b!2122477))

(assert (=> b!2122469 (< (dynLambda!11327 order!14669 (defaultEntry!2821 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795065)))))))) (dynLambda!11328 order!14671 lambda!78605))))

(assert (=> b!2122470 (< (dynLambda!11329 order!14673 (defaultEntry!2820 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795065)))))))) (dynLambda!11328 order!14671 lambda!78605))))

(assert (=> b!2122472 (< (dynLambda!11330 order!14675 (defaultValue!2532 (cache!2751 (_3!1926 lt!795065)))) (dynLambda!11328 order!14671 lambda!78605))))

(assert (=> b!2122467 (< (dynLambda!11331 order!14677 (defaultValue!2531 (cache!2750 (_2!13591 lt!795065)))) (dynLambda!11328 order!14671 lambda!78605))))

(declare-fun m!2575769 () Bool)

(assert (=> mapNonEmpty!11920 m!2575769))

(declare-fun m!2575771 () Bool)

(assert (=> mapNonEmpty!11921 m!2575771))

(declare-fun bs!442756 () Bool)

(declare-fun b!2122450 () Bool)

(assert (= bs!442756 (and b!2122450 b!2122460)))

(declare-fun lambda!78606 () Int)

(assert (=> bs!442756 (not (= lambda!78606 lambda!78605))))

(declare-fun bs!442757 () Bool)

(assert (= bs!442757 (and b!2122450 b!2122280)))

(assert (=> bs!442757 (= lambda!78606 lambda!78581)))

(declare-fun bs!442758 () Bool)

(assert (= bs!442758 (and b!2122450 b!2122455)))

(assert (=> bs!442758 (not (= lambda!78606 lambda!78604))))

(declare-fun bs!442759 () Bool)

(assert (= bs!442759 (and b!2122450 b!2122272)))

(assert (=> bs!442759 (not (= lambda!78606 lambda!78580))))

(declare-fun bs!442760 () Bool)

(assert (= bs!442760 (and b!2122450 b!2122461)))

(assert (=> bs!442760 (not (= lambda!78606 lambda!78603))))

(declare-fun bs!442761 () Bool)

(assert (= bs!442761 (and b!2122450 d!643511)))

(assert (=> bs!442761 (not (= lambda!78606 lambda!78602))))

(assert (=> b!2122450 true))

(declare-fun b!2122449 () Bool)

(declare-fun e!1352052 () Int)

(assert (=> b!2122449 (= e!1352052 e!1351938)))

(declare-fun e!1352050 () Bool)

(assert (=> b!2122450 (= e!1352050 (forall!4864 (_2!13590 (_1!13591 lt!795065)) lambda!78606))))

(declare-fun b!2122451 () Bool)

(declare-fun res!919247 () Bool)

(assert (=> b!2122451 (=> (not res!919247) (not e!1352050))))

(assert (=> b!2122451 (= res!919247 (valid!1932 cacheFurthestNullable!130))))

(declare-datatypes ((Option!4868 0))(
  ( (None!4867) (Some!4867 (v!28248 Int)) )
))
(declare-fun lt!795062 () Option!4868)

(declare-fun e!1352053 () tuple3!2912)

(declare-fun b!2122452 () Bool)

(assert (=> b!2122452 (= e!1352053 (tuple3!2913 (tuple2!23329 (v!28248 lt!795062) Nil!23716) cacheUp!991 cacheDown!1110))))

(declare-fun b!2122453 () Bool)

(declare-fun res!919249 () Bool)

(assert (=> b!2122453 (=> (not res!919249) (not e!1352050))))

(assert (=> b!2122453 (= res!919249 (valid!1933 (_3!1926 lt!795065)))))

(declare-fun b!2122454 () Bool)

(assert (=> b!2122454 (= e!1352052 lt!794996)))

(declare-fun bm!128683 () Bool)

(declare-fun call!128689 () Bool)

(declare-fun c!339780 () Bool)

(assert (=> bm!128683 (= call!128689 (forall!4864 Nil!23716 (ite c!339780 lambda!78602 lambda!78602)))))

(declare-datatypes ((tuple3!2916 0))(
  ( (tuple3!2917 (_1!13595 (InoxSet Context!2474)) (_2!13595 CacheUp!1642) (_3!1928 CacheDown!1628)) )
))
(declare-fun lt!795058 () tuple3!2916)

(declare-fun lt!795066 () tuple3!2912)

(declare-fun lt!795059 () Int)

(assert (=> b!2122455 (= lt!795066 (furthestNullablePositionStackMem!10 (_1!13595 lt!795058) (+ lt!794996 1) totalInput!886 lt!794995 lt!795059 (Cons!23716 (StackFrame!47 z!3883 lt!794996 e!1351938 lt!795064 totalInput!886) Nil!23716) (_2!13595 lt!795058) (_3!1928 lt!795058) cacheFurthestNullable!130))))

(declare-fun lt!795060 () Unit!37595)

(declare-fun lt!795056 () Unit!37595)

(assert (=> b!2122455 (= lt!795060 lt!795056)))

(declare-fun call!128690 () Bool)

(assert (=> b!2122455 call!128690))

(declare-fun call!128688 () Unit!37595)

(assert (=> b!2122455 (= lt!795056 call!128688)))

(declare-fun lt!795063 () Unit!37595)

(declare-fun Unit!37599 () Unit!37595)

(assert (=> b!2122455 (= lt!795063 Unit!37599)))

(assert (=> b!2122455 call!128689))

(declare-fun furthestNullablePosition!9 ((InoxSet Context!2474) Int BalanceConc!15372 Int Int) Int)

(assert (=> b!2122455 (= lt!795055 (furthestNullablePosition!9 (_1!13595 lt!795058) (+ lt!794996 1) totalInput!886 (size!18536 totalInput!886) lt!795059))))

(assert (=> b!2122455 (= lt!795059 e!1352052)))

(declare-fun c!339779 () Bool)

(assert (=> b!2122455 (= c!339779 (nullableZipper!65 (_1!13595 lt!795058)))))

(declare-fun derivationStepZipperMem!16 ((InoxSet Context!2474) C!11480 CacheUp!1642 CacheDown!1628) tuple3!2916)

(declare-fun apply!5910 (BalanceConc!15372 Int) C!11480)

(assert (=> b!2122455 (= lt!795058 (derivationStepZipperMem!16 z!3883 (apply!5910 totalInput!886 lt!794996) cacheUp!991 cacheDown!1110))))

(declare-fun e!1352051 () tuple3!2912)

(assert (=> b!2122455 (= e!1352051 (tuple3!2913 (_1!13591 lt!795066) (_2!13591 lt!795066) (_3!1926 lt!795066)))))

(declare-fun b!2122457 () Bool)

(declare-fun res!919243 () Bool)

(assert (=> b!2122457 (=> (not res!919243) (not e!1352050))))

(assert (=> b!2122457 (= res!919243 (= (totalInput!2911 cacheFurthestNullable!130) totalInput!886))))

(declare-fun b!2122458 () Bool)

(assert (=> b!2122458 (= e!1352053 e!1352051)))

(declare-fun res!919246 () Bool)

(assert (=> b!2122458 (= res!919246 (= lt!794996 lt!794995))))

(declare-fun e!1352049 () Bool)

(assert (=> b!2122458 (=> res!919246 e!1352049)))

(assert (=> b!2122458 (= c!339780 e!1352049)))

(declare-fun b!2122459 () Bool)

(declare-fun lostCauseZipper!56 ((InoxSet Context!2474)) Bool)

(assert (=> b!2122459 (= e!1352049 (lostCauseZipper!56 z!3883))))

(declare-fun bm!128684 () Bool)

(declare-fun lemmaStackPreservesForEqualRes!5 (List!23800 Int Int) Unit!37595)

(assert (=> bm!128684 (= call!128688 (lemmaStackPreservesForEqualRes!5 Nil!23716 lt!795064 (ite c!339780 e!1351938 lt!795055)))))

(declare-fun bm!128685 () Bool)

(assert (=> bm!128685 (= call!128690 (forall!4864 Nil!23716 (ite c!339780 lambda!78603 lambda!78604)))))

(declare-fun b!2122456 () Bool)

(declare-fun res!919248 () Bool)

(assert (=> b!2122456 (=> (not res!919248) (not e!1352050))))

(assert (=> b!2122456 (= res!919248 (valid!1931 (_2!13591 lt!795065)))))

(assert (=> d!643511 e!1352050))

(declare-fun res!919244 () Bool)

(assert (=> d!643511 (=> (not res!919244) (not e!1352050))))

(assert (=> d!643511 (= res!919244 (= (_1!13590 (_1!13591 lt!795065)) (furthestNullablePosition!9 z!3883 lt!794996 totalInput!886 lt!794995 e!1351938)))))

(assert (=> d!643511 (= lt!795065 e!1352053)))

(declare-fun c!339781 () Bool)

(assert (=> d!643511 (= c!339781 ((_ is Some!4867) lt!795062))))

(declare-fun get!7311 (CacheFurthestNullable!592 (InoxSet Context!2474) Int Int) Option!4868)

(assert (=> d!643511 (= lt!795062 (get!7311 cacheFurthestNullable!130 z!3883 lt!794996 e!1351938))))

(declare-fun lt!795067 () Unit!37595)

(declare-fun Unit!37600 () Unit!37595)

(assert (=> d!643511 (= lt!795067 Unit!37600)))

(assert (=> d!643511 (forall!4864 Nil!23716 lambda!78602)))

(assert (=> d!643511 (= lt!795064 (furthestNullablePosition!9 z!3883 lt!794996 totalInput!886 (size!18536 totalInput!886) e!1351938))))

(assert (=> d!643511 (and (>= lt!794996 0) (<= lt!794996 lt!794995))))

(assert (=> d!643511 (= (furthestNullablePositionStackMem!10 z!3883 lt!794996 totalInput!886 lt!794995 e!1351938 Nil!23716 cacheUp!991 cacheDown!1110 cacheFurthestNullable!130) lt!795065)))

(declare-fun res!919245 () Bool)

(assert (=> b!2122460 (=> (not res!919245) (not e!1352050))))

(assert (=> b!2122460 (= res!919245 (forall!4864 (_2!13590 (_1!13591 lt!795065)) lambda!78605))))

(declare-fun lt!795068 () Unit!37595)

(declare-fun lt!795061 () Unit!37595)

(assert (=> b!2122461 (= lt!795068 lt!795061)))

(assert (=> b!2122461 call!128690))

(assert (=> b!2122461 (= lt!795061 call!128688)))

(declare-fun lt!795057 () Unit!37595)

(declare-fun Unit!37601 () Unit!37595)

(assert (=> b!2122461 (= lt!795057 Unit!37601)))

(assert (=> b!2122461 call!128689))

(assert (=> b!2122461 (= e!1352051 (tuple3!2913 (tuple2!23329 e!1351938 Nil!23716) cacheUp!991 cacheDown!1110))))

(assert (= (and d!643511 c!339781) b!2122452))

(assert (= (and d!643511 (not c!339781)) b!2122458))

(assert (= (and b!2122458 (not res!919246)) b!2122459))

(assert (= (and b!2122458 c!339780) b!2122461))

(assert (= (and b!2122458 (not c!339780)) b!2122455))

(assert (= (and b!2122455 c!339779) b!2122454))

(assert (= (and b!2122455 (not c!339779)) b!2122449))

(assert (= (or b!2122461 b!2122455) bm!128685))

(assert (= (or b!2122461 b!2122455) bm!128683))

(assert (= (or b!2122461 b!2122455) bm!128684))

(assert (= (and d!643511 res!919244) b!2122460))

(assert (= (and b!2122460 res!919245) b!2122456))

(assert (= (and b!2122456 res!919248) b!2122453))

(assert (= (and b!2122453 res!919249) b!2122451))

(assert (= (and b!2122451 res!919247) b!2122457))

(assert (= (and b!2122457 res!919243) b!2122450))

(assert (=> b!2122451 m!2575639))

(declare-fun m!2575773 () Bool)

(assert (=> bm!128685 m!2575773))

(declare-fun m!2575775 () Bool)

(assert (=> d!643511 m!2575775))

(declare-fun m!2575777 () Bool)

(assert (=> d!643511 m!2575777))

(declare-fun m!2575779 () Bool)

(assert (=> d!643511 m!2575779))

(assert (=> d!643511 m!2575691))

(assert (=> d!643511 m!2575691))

(declare-fun m!2575781 () Bool)

(assert (=> d!643511 m!2575781))

(declare-fun m!2575783 () Bool)

(assert (=> bm!128683 m!2575783))

(declare-fun m!2575785 () Bool)

(assert (=> b!2122455 m!2575785))

(assert (=> b!2122455 m!2575691))

(declare-fun m!2575787 () Bool)

(assert (=> b!2122455 m!2575787))

(assert (=> b!2122455 m!2575691))

(declare-fun m!2575789 () Bool)

(assert (=> b!2122455 m!2575789))

(assert (=> b!2122455 m!2575785))

(declare-fun m!2575791 () Bool)

(assert (=> b!2122455 m!2575791))

(declare-fun m!2575793 () Bool)

(assert (=> b!2122455 m!2575793))

(declare-fun m!2575795 () Bool)

(assert (=> bm!128684 m!2575795))

(declare-fun m!2575797 () Bool)

(assert (=> b!2122459 m!2575797))

(declare-fun m!2575799 () Bool)

(assert (=> b!2122460 m!2575799))

(declare-fun m!2575801 () Bool)

(assert (=> b!2122456 m!2575801))

(declare-fun m!2575803 () Bool)

(assert (=> b!2122450 m!2575803))

(declare-fun m!2575805 () Bool)

(assert (=> b!2122453 m!2575805))

(assert (=> b!2122272 d!643511))

(declare-fun d!643513 () Bool)

(declare-fun lt!795071 () Int)

(assert (=> d!643513 (= lt!795071 (size!18537 (list!9528 input!5507)))))

(assert (=> d!643513 (= lt!795071 (size!18538 (c!339759 input!5507)))))

(assert (=> d!643513 (= (size!18536 input!5507) lt!795071)))

(declare-fun bs!442762 () Bool)

(assert (= bs!442762 d!643513))

(assert (=> bs!442762 m!2575673))

(assert (=> bs!442762 m!2575673))

(assert (=> bs!442762 m!2575723))

(declare-fun m!2575807 () Bool)

(assert (=> bs!442762 m!2575807))

(assert (=> b!2122272 d!643513))

(declare-fun b!2122487 () Bool)

(declare-fun e!1352074 () Bool)

(declare-fun tp!649863 () Bool)

(assert (=> b!2122487 (= e!1352074 tp!649863)))

(declare-fun setIsEmpty!14850 () Bool)

(declare-fun setRes!14850 () Bool)

(assert (=> setIsEmpty!14850 setRes!14850))

(declare-fun b!2122486 () Bool)

(declare-fun e!1352075 () Bool)

(declare-fun tp!649865 () Bool)

(assert (=> b!2122486 (= e!1352075 (and setRes!14850 tp!649865))))

(declare-fun condSetEmpty!14850 () Bool)

(assert (=> b!2122486 (= condSetEmpty!14850 (= (_1!13592 (_1!13593 (h!29118 (zeroValue!2715 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))))))) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun tp!649864 () Bool)

(declare-fun setNonEmpty!14850 () Bool)

(declare-fun setElem!14850 () Context!2474)

(assert (=> setNonEmpty!14850 (= setRes!14850 (and tp!649864 (inv!31306 setElem!14850) e!1352074))))

(declare-fun setRest!14850 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14850 (= (_1!13592 (_1!13593 (h!29118 (zeroValue!2715 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14850 true) setRest!14850))))

(assert (=> b!2122297 (= tp!649843 e!1352075)))

(assert (= (and b!2122486 condSetEmpty!14850) setIsEmpty!14850))

(assert (= (and b!2122486 (not condSetEmpty!14850)) setNonEmpty!14850))

(assert (= setNonEmpty!14850 b!2122487))

(assert (= (and b!2122297 ((_ is Cons!23717) (zeroValue!2715 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130)))))))) b!2122486))

(declare-fun m!2575809 () Bool)

(assert (=> setNonEmpty!14850 m!2575809))

(declare-fun b!2122489 () Bool)

(declare-fun e!1352076 () Bool)

(declare-fun tp!649866 () Bool)

(assert (=> b!2122489 (= e!1352076 tp!649866)))

(declare-fun setIsEmpty!14851 () Bool)

(declare-fun setRes!14851 () Bool)

(assert (=> setIsEmpty!14851 setRes!14851))

(declare-fun b!2122488 () Bool)

(declare-fun e!1352077 () Bool)

(declare-fun tp!649868 () Bool)

(assert (=> b!2122488 (= e!1352077 (and setRes!14851 tp!649868))))

(declare-fun condSetEmpty!14851 () Bool)

(assert (=> b!2122488 (= condSetEmpty!14851 (= (_1!13592 (_1!13593 (h!29118 (minValue!2715 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))))))) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setElem!14851 () Context!2474)

(declare-fun tp!649867 () Bool)

(declare-fun setNonEmpty!14851 () Bool)

(assert (=> setNonEmpty!14851 (= setRes!14851 (and tp!649867 (inv!31306 setElem!14851) e!1352076))))

(declare-fun setRest!14851 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14851 (= (_1!13592 (_1!13593 (h!29118 (minValue!2715 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130))))))))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14851 true) setRest!14851))))

(assert (=> b!2122297 (= tp!649832 e!1352077)))

(assert (= (and b!2122488 condSetEmpty!14851) setIsEmpty!14851))

(assert (= (and b!2122488 (not condSetEmpty!14851)) setNonEmpty!14851))

(assert (= setNonEmpty!14851 b!2122489))

(assert (= (and b!2122297 ((_ is Cons!23717) (minValue!2715 (v!28246 (underlying!5109 (v!28247 (underlying!5110 (cache!2752 cacheFurthestNullable!130)))))))) b!2122488))

(declare-fun m!2575811 () Bool)

(assert (=> setNonEmpty!14851 m!2575811))

(declare-fun b!2122494 () Bool)

(declare-fun e!1352080 () Bool)

(declare-fun setRes!14854 () Bool)

(assert (=> b!2122494 (= e!1352080 setRes!14854)))

(declare-fun condSetEmpty!14854 () Bool)

(assert (=> b!2122494 (= condSetEmpty!14854 (= (_2!13589 (h!29114 mapDefault!11919)) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setIsEmpty!14854 () Bool)

(assert (=> setIsEmpty!14854 setRes!14854))

(declare-fun setNonEmpty!14854 () Bool)

(assert (=> setNonEmpty!14854 (= setRes!14854 true)))

(declare-fun setElem!14854 () Context!2474)

(declare-fun setRest!14854 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14854 (= (_2!13589 (h!29114 mapDefault!11919)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14854 true) setRest!14854))))

(assert (=> b!2122349 e!1352080))

(assert (= (and b!2122494 condSetEmpty!14854) setIsEmpty!14854))

(assert (= (and b!2122494 (not condSetEmpty!14854)) setNonEmpty!14854))

(assert (= (and b!2122349 ((_ is Cons!23713) mapDefault!11919)) b!2122494))

(declare-fun b!2122496 () Bool)

(declare-fun e!1352081 () Bool)

(declare-fun tp!649869 () Bool)

(assert (=> b!2122496 (= e!1352081 tp!649869)))

(declare-fun setIsEmpty!14855 () Bool)

(declare-fun setRes!14855 () Bool)

(assert (=> setIsEmpty!14855 setRes!14855))

(declare-fun b!2122495 () Bool)

(declare-fun e!1352082 () Bool)

(declare-fun tp!649871 () Bool)

(assert (=> b!2122495 (= e!1352082 (and setRes!14855 tp!649871))))

(declare-fun condSetEmpty!14855 () Bool)

(assert (=> b!2122495 (= condSetEmpty!14855 (= (_1!13592 (_1!13593 (h!29118 mapDefault!11912))) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun tp!649870 () Bool)

(declare-fun setNonEmpty!14855 () Bool)

(declare-fun setElem!14855 () Context!2474)

(assert (=> setNonEmpty!14855 (= setRes!14855 (and tp!649870 (inv!31306 setElem!14855) e!1352081))))

(declare-fun setRest!14855 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14855 (= (_1!13592 (_1!13593 (h!29118 mapDefault!11912))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14855 true) setRest!14855))))

(assert (=> b!2122295 (= tp!649833 e!1352082)))

(assert (= (and b!2122495 condSetEmpty!14855) setIsEmpty!14855))

(assert (= (and b!2122495 (not condSetEmpty!14855)) setNonEmpty!14855))

(assert (= setNonEmpty!14855 b!2122496))

(assert (= (and b!2122295 ((_ is Cons!23717) mapDefault!11912)) b!2122495))

(declare-fun m!2575813 () Bool)

(assert (=> setNonEmpty!14855 m!2575813))

(declare-fun tp!649884 () Bool)

(declare-fun e!1352089 () Bool)

(declare-fun e!1352090 () Bool)

(declare-fun tp!649883 () Bool)

(declare-fun b!2122505 () Bool)

(declare-fun setRes!14858 () Bool)

(declare-fun tp_is_empty!9489 () Bool)

(assert (=> b!2122505 (= e!1352089 (and tp!649883 (inv!31306 (_2!13586 (_1!13587 (h!29115 (zeroValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110)))))))))) e!1352090 tp_is_empty!9489 setRes!14858 tp!649884))))

(declare-fun condSetEmpty!14858 () Bool)

(assert (=> b!2122505 (= condSetEmpty!14858 (= (_2!13587 (h!29115 (zeroValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110)))))))) ((as const (Array Context!2474 Bool)) false)))))

(assert (=> b!2122278 (= tp!649841 e!1352089)))

(declare-fun b!2122506 () Bool)

(declare-fun e!1352091 () Bool)

(declare-fun tp!649886 () Bool)

(assert (=> b!2122506 (= e!1352091 tp!649886)))

(declare-fun setElem!14858 () Context!2474)

(declare-fun tp!649885 () Bool)

(declare-fun setNonEmpty!14858 () Bool)

(assert (=> setNonEmpty!14858 (= setRes!14858 (and tp!649885 (inv!31306 setElem!14858) e!1352091))))

(declare-fun setRest!14858 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14858 (= (_2!13587 (h!29115 (zeroValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14858 true) setRest!14858))))

(declare-fun setIsEmpty!14858 () Bool)

(assert (=> setIsEmpty!14858 setRes!14858))

(declare-fun b!2122507 () Bool)

(declare-fun tp!649882 () Bool)

(assert (=> b!2122507 (= e!1352090 tp!649882)))

(assert (= b!2122505 b!2122507))

(assert (= (and b!2122505 condSetEmpty!14858) setIsEmpty!14858))

(assert (= (and b!2122505 (not condSetEmpty!14858)) setNonEmpty!14858))

(assert (= setNonEmpty!14858 b!2122506))

(assert (= (and b!2122278 ((_ is Cons!23714) (zeroValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110)))))))) b!2122505))

(declare-fun m!2575815 () Bool)

(assert (=> b!2122505 m!2575815))

(declare-fun m!2575817 () Bool)

(assert (=> setNonEmpty!14858 m!2575817))

(declare-fun e!1352092 () Bool)

(declare-fun b!2122508 () Bool)

(declare-fun e!1352093 () Bool)

(declare-fun tp!649889 () Bool)

(declare-fun setRes!14859 () Bool)

(declare-fun tp!649888 () Bool)

(assert (=> b!2122508 (= e!1352092 (and tp!649888 (inv!31306 (_2!13586 (_1!13587 (h!29115 (minValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110)))))))))) e!1352093 tp_is_empty!9489 setRes!14859 tp!649889))))

(declare-fun condSetEmpty!14859 () Bool)

(assert (=> b!2122508 (= condSetEmpty!14859 (= (_2!13587 (h!29115 (minValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110)))))))) ((as const (Array Context!2474 Bool)) false)))))

(assert (=> b!2122278 (= tp!649846 e!1352092)))

(declare-fun b!2122509 () Bool)

(declare-fun e!1352094 () Bool)

(declare-fun tp!649891 () Bool)

(assert (=> b!2122509 (= e!1352094 tp!649891)))

(declare-fun tp!649890 () Bool)

(declare-fun setNonEmpty!14859 () Bool)

(declare-fun setElem!14859 () Context!2474)

(assert (=> setNonEmpty!14859 (= setRes!14859 (and tp!649890 (inv!31306 setElem!14859) e!1352094))))

(declare-fun setRest!14859 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14859 (= (_2!13587 (h!29115 (minValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110)))))))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14859 true) setRest!14859))))

(declare-fun setIsEmpty!14859 () Bool)

(assert (=> setIsEmpty!14859 setRes!14859))

(declare-fun b!2122510 () Bool)

(declare-fun tp!649887 () Bool)

(assert (=> b!2122510 (= e!1352093 tp!649887)))

(assert (= b!2122508 b!2122510))

(assert (= (and b!2122508 condSetEmpty!14859) setIsEmpty!14859))

(assert (= (and b!2122508 (not condSetEmpty!14859)) setNonEmpty!14859))

(assert (= setNonEmpty!14859 b!2122509))

(assert (= (and b!2122278 ((_ is Cons!23714) (minValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 cacheDown!1110)))))))) b!2122508))

(declare-fun m!2575819 () Bool)

(assert (=> b!2122508 m!2575819))

(declare-fun m!2575821 () Bool)

(assert (=> setNonEmpty!14859 m!2575821))

(declare-fun b!2122517 () Bool)

(declare-fun e!1352100 () Bool)

(declare-fun e!1352099 () Bool)

(assert (=> b!2122517 (= e!1352100 e!1352099)))

(declare-fun setNonEmpty!14862 () Bool)

(declare-fun setRes!14862 () Bool)

(assert (=> setNonEmpty!14862 (= setRes!14862 true)))

(declare-fun setElem!14862 () Context!2474)

(declare-fun setRest!14862 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14862 (= (z!5727 (h!29117 (t!196317 (_2!13590 (_1!13591 lt!795000))))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14862 true) setRest!14862))))

(declare-fun setIsEmpty!14862 () Bool)

(assert (=> setIsEmpty!14862 setRes!14862))

(assert (=> b!2122347 e!1352100))

(declare-fun b!2122518 () Bool)

(assert (=> b!2122518 (= e!1352099 setRes!14862)))

(declare-fun condSetEmpty!14862 () Bool)

(assert (=> b!2122518 (= condSetEmpty!14862 (= (z!5727 (h!29117 (t!196317 (_2!13590 (_1!13591 lt!795000))))) ((as const (Array Context!2474 Bool)) false)))))

(assert (= (and b!2122518 condSetEmpty!14862) setIsEmpty!14862))

(assert (= (and b!2122518 (not condSetEmpty!14862)) setNonEmpty!14862))

(assert (= b!2122517 b!2122518))

(assert (= (and b!2122347 ((_ is Cons!23716) (t!196317 (_2!13590 (_1!13591 lt!795000))))) b!2122517))

(declare-fun b!2122523 () Bool)

(declare-fun e!1352103 () Bool)

(declare-fun tp!649896 () Bool)

(declare-fun tp!649897 () Bool)

(assert (=> b!2122523 (= e!1352103 (and tp!649896 tp!649897))))

(assert (=> b!2122294 (= tp!649855 e!1352103)))

(assert (= (and b!2122294 ((_ is Cons!23712) (exprs!1737 setElem!14843))) b!2122523))

(declare-fun setIsEmpty!14867 () Bool)

(declare-fun setRes!14868 () Bool)

(assert (=> setIsEmpty!14867 setRes!14868))

(declare-fun mapNonEmpty!11924 () Bool)

(declare-fun mapRes!11924 () Bool)

(declare-fun e!1352108 () Bool)

(assert (=> mapNonEmpty!11924 (= mapRes!11924 e!1352108)))

(declare-fun mapKey!11924 () (_ BitVec 32))

(declare-fun mapValue!11924 () List!23797)

(declare-fun mapRest!11924 () (Array (_ BitVec 32) List!23797))

(assert (=> mapNonEmpty!11924 (= mapRest!11918 (store mapRest!11924 mapKey!11924 mapValue!11924))))

(declare-fun setIsEmpty!14868 () Bool)

(declare-fun setRes!14867 () Bool)

(assert (=> setIsEmpty!14868 setRes!14867))

(declare-fun mapIsEmpty!11924 () Bool)

(assert (=> mapIsEmpty!11924 mapRes!11924))

(declare-fun condMapEmpty!11924 () Bool)

(declare-fun mapDefault!11924 () List!23797)

(assert (=> mapNonEmpty!11919 (= condMapEmpty!11924 (= mapRest!11918 ((as const (Array (_ BitVec 32) List!23797)) mapDefault!11924)))))

(declare-fun e!1352109 () Bool)

(assert (=> mapNonEmpty!11919 (and e!1352109 mapRes!11924)))

(declare-fun b!2122530 () Bool)

(assert (=> b!2122530 (= e!1352109 setRes!14867)))

(declare-fun condSetEmpty!14867 () Bool)

(assert (=> b!2122530 (= condSetEmpty!14867 (= (_2!13589 (h!29114 mapDefault!11924)) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun b!2122531 () Bool)

(assert (=> b!2122531 (= e!1352108 setRes!14868)))

(declare-fun condSetEmpty!14868 () Bool)

(assert (=> b!2122531 (= condSetEmpty!14868 (= (_2!13589 (h!29114 mapValue!11924)) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setNonEmpty!14867 () Bool)

(assert (=> setNonEmpty!14867 (= setRes!14867 true)))

(declare-fun setElem!14868 () Context!2474)

(declare-fun setRest!14867 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14867 (= (_2!13589 (h!29114 mapDefault!11924)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14868 true) setRest!14867))))

(declare-fun setNonEmpty!14868 () Bool)

(assert (=> setNonEmpty!14868 (= setRes!14868 true)))

(declare-fun setElem!14867 () Context!2474)

(declare-fun setRest!14868 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14868 (= (_2!13589 (h!29114 mapValue!11924)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14867 true) setRest!14868))))

(assert (= (and mapNonEmpty!11919 condMapEmpty!11924) mapIsEmpty!11924))

(assert (= (and mapNonEmpty!11919 (not condMapEmpty!11924)) mapNonEmpty!11924))

(assert (= (and b!2122531 condSetEmpty!14868) setIsEmpty!14867))

(assert (= (and b!2122531 (not condSetEmpty!14868)) setNonEmpty!14868))

(assert (= (and mapNonEmpty!11924 ((_ is Cons!23713) mapValue!11924)) b!2122531))

(assert (= (and b!2122530 condSetEmpty!14867) setIsEmpty!14868))

(assert (= (and b!2122530 (not condSetEmpty!14867)) setNonEmpty!14867))

(assert (= (and mapNonEmpty!11919 ((_ is Cons!23713) mapDefault!11924)) b!2122530))

(declare-fun m!2575823 () Bool)

(assert (=> mapNonEmpty!11924 m!2575823))

(declare-fun b!2122532 () Bool)

(declare-fun e!1352110 () Bool)

(declare-fun setRes!14869 () Bool)

(assert (=> b!2122532 (= e!1352110 setRes!14869)))

(declare-fun condSetEmpty!14869 () Bool)

(assert (=> b!2122532 (= condSetEmpty!14869 (= (_2!13589 (h!29114 mapValue!11919)) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setIsEmpty!14869 () Bool)

(assert (=> setIsEmpty!14869 setRes!14869))

(declare-fun setNonEmpty!14869 () Bool)

(assert (=> setNonEmpty!14869 (= setRes!14869 true)))

(declare-fun setElem!14869 () Context!2474)

(declare-fun setRest!14869 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14869 (= (_2!13589 (h!29114 mapValue!11919)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14869 true) setRest!14869))))

(assert (=> mapNonEmpty!11919 e!1352110))

(assert (= (and b!2122532 condSetEmpty!14869) setIsEmpty!14869))

(assert (= (and b!2122532 (not condSetEmpty!14869)) setNonEmpty!14869))

(assert (= (and mapNonEmpty!11919 ((_ is Cons!23713) mapValue!11919)) b!2122532))

(declare-fun tp!649899 () Bool)

(declare-fun tp!649900 () Bool)

(declare-fun b!2122533 () Bool)

(declare-fun setRes!14870 () Bool)

(declare-fun e!1352112 () Bool)

(declare-fun e!1352111 () Bool)

(assert (=> b!2122533 (= e!1352111 (and tp!649899 (inv!31306 (_2!13586 (_1!13587 (h!29115 mapDefault!11911)))) e!1352112 tp_is_empty!9489 setRes!14870 tp!649900))))

(declare-fun condSetEmpty!14870 () Bool)

(assert (=> b!2122533 (= condSetEmpty!14870 (= (_2!13587 (h!29115 mapDefault!11911)) ((as const (Array Context!2474 Bool)) false)))))

(assert (=> b!2122300 (= tp!649831 e!1352111)))

(declare-fun b!2122534 () Bool)

(declare-fun e!1352113 () Bool)

(declare-fun tp!649902 () Bool)

(assert (=> b!2122534 (= e!1352113 tp!649902)))

(declare-fun setNonEmpty!14870 () Bool)

(declare-fun setElem!14870 () Context!2474)

(declare-fun tp!649901 () Bool)

(assert (=> setNonEmpty!14870 (= setRes!14870 (and tp!649901 (inv!31306 setElem!14870) e!1352113))))

(declare-fun setRest!14870 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14870 (= (_2!13587 (h!29115 mapDefault!11911)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14870 true) setRest!14870))))

(declare-fun setIsEmpty!14870 () Bool)

(assert (=> setIsEmpty!14870 setRes!14870))

(declare-fun b!2122535 () Bool)

(declare-fun tp!649898 () Bool)

(assert (=> b!2122535 (= e!1352112 tp!649898)))

(assert (= b!2122533 b!2122535))

(assert (= (and b!2122533 condSetEmpty!14870) setIsEmpty!14870))

(assert (= (and b!2122533 (not condSetEmpty!14870)) setNonEmpty!14870))

(assert (= setNonEmpty!14870 b!2122534))

(assert (= (and b!2122300 ((_ is Cons!23714) mapDefault!11911)) b!2122533))

(declare-fun m!2575825 () Bool)

(assert (=> b!2122533 m!2575825))

(declare-fun m!2575827 () Bool)

(assert (=> setNonEmpty!14870 m!2575827))

(declare-fun setIsEmpty!14873 () Bool)

(declare-fun setRes!14873 () Bool)

(assert (=> setIsEmpty!14873 setRes!14873))

(declare-fun e!1352121 () Bool)

(assert (=> b!2122282 (= tp!649847 e!1352121)))

(declare-fun b!2122544 () Bool)

(declare-fun e!1352122 () Bool)

(declare-fun tp!649911 () Bool)

(assert (=> b!2122544 (= e!1352122 tp!649911)))

(declare-fun b!2122545 () Bool)

(declare-fun e!1352120 () Bool)

(declare-fun tp!649914 () Bool)

(assert (=> b!2122545 (= e!1352120 tp!649914)))

(declare-fun tp!649913 () Bool)

(declare-fun setElem!14873 () Context!2474)

(declare-fun setNonEmpty!14873 () Bool)

(assert (=> setNonEmpty!14873 (= setRes!14873 (and tp!649913 (inv!31306 setElem!14873) e!1352122))))

(declare-fun setRest!14873 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14873 (= (_2!13589 (h!29114 (zeroValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14873 true) setRest!14873))))

(declare-fun tp!649912 () Bool)

(declare-fun b!2122546 () Bool)

(assert (=> b!2122546 (= e!1352121 (and (inv!31306 (_1!13588 (_1!13589 (h!29114 (zeroValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991)))))))))) e!1352120 tp_is_empty!9489 setRes!14873 tp!649912))))

(declare-fun condSetEmpty!14873 () Bool)

(assert (=> b!2122546 (= condSetEmpty!14873 (= (_2!13589 (h!29114 (zeroValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991)))))))) ((as const (Array Context!2474 Bool)) false)))))

(assert (= b!2122546 b!2122545))

(assert (= (and b!2122546 condSetEmpty!14873) setIsEmpty!14873))

(assert (= (and b!2122546 (not condSetEmpty!14873)) setNonEmpty!14873))

(assert (= setNonEmpty!14873 b!2122544))

(assert (= (and b!2122282 ((_ is Cons!23713) (zeroValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991)))))))) b!2122546))

(declare-fun m!2575829 () Bool)

(assert (=> setNonEmpty!14873 m!2575829))

(declare-fun m!2575831 () Bool)

(assert (=> b!2122546 m!2575831))

(declare-fun setIsEmpty!14874 () Bool)

(declare-fun setRes!14874 () Bool)

(assert (=> setIsEmpty!14874 setRes!14874))

(declare-fun e!1352124 () Bool)

(assert (=> b!2122282 (= tp!649850 e!1352124)))

(declare-fun b!2122547 () Bool)

(declare-fun e!1352125 () Bool)

(declare-fun tp!649915 () Bool)

(assert (=> b!2122547 (= e!1352125 tp!649915)))

(declare-fun b!2122548 () Bool)

(declare-fun e!1352123 () Bool)

(declare-fun tp!649918 () Bool)

(assert (=> b!2122548 (= e!1352123 tp!649918)))

(declare-fun setNonEmpty!14874 () Bool)

(declare-fun tp!649917 () Bool)

(declare-fun setElem!14874 () Context!2474)

(assert (=> setNonEmpty!14874 (= setRes!14874 (and tp!649917 (inv!31306 setElem!14874) e!1352125))))

(declare-fun setRest!14874 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14874 (= (_2!13589 (h!29114 (minValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991)))))))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14874 true) setRest!14874))))

(declare-fun b!2122549 () Bool)

(declare-fun tp!649916 () Bool)

(assert (=> b!2122549 (= e!1352124 (and (inv!31306 (_1!13588 (_1!13589 (h!29114 (minValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991)))))))))) e!1352123 tp_is_empty!9489 setRes!14874 tp!649916))))

(declare-fun condSetEmpty!14874 () Bool)

(assert (=> b!2122549 (= condSetEmpty!14874 (= (_2!13589 (h!29114 (minValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991)))))))) ((as const (Array Context!2474 Bool)) false)))))

(assert (= b!2122549 b!2122548))

(assert (= (and b!2122549 condSetEmpty!14874) setIsEmpty!14874))

(assert (= (and b!2122549 (not condSetEmpty!14874)) setNonEmpty!14874))

(assert (= setNonEmpty!14874 b!2122547))

(assert (= (and b!2122282 ((_ is Cons!23713) (minValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 cacheUp!991)))))))) b!2122549))

(declare-fun m!2575833 () Bool)

(assert (=> setNonEmpty!14874 m!2575833))

(declare-fun m!2575835 () Bool)

(assert (=> b!2122549 m!2575835))

(declare-fun condSetEmpty!14877 () Bool)

(assert (=> setNonEmpty!14846 (= condSetEmpty!14877 (= setRest!14846 ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setRes!14877 () Bool)

(assert (=> setNonEmpty!14846 setRes!14877))

(declare-fun setIsEmpty!14877 () Bool)

(assert (=> setIsEmpty!14877 setRes!14877))

(declare-fun setNonEmpty!14877 () Bool)

(assert (=> setNonEmpty!14877 (= setRes!14877 true)))

(declare-fun setElem!14877 () Context!2474)

(declare-fun setRest!14877 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14877 (= setRest!14846 ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14877 true) setRest!14877))))

(assert (= (and setNonEmpty!14846 condSetEmpty!14877) setIsEmpty!14877))

(assert (= (and setNonEmpty!14846 (not condSetEmpty!14877)) setNonEmpty!14877))

(declare-fun condSetEmpty!14880 () Bool)

(assert (=> setNonEmpty!14843 (= condSetEmpty!14880 (= setRest!14843 ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setRes!14880 () Bool)

(assert (=> setNonEmpty!14843 (= tp!649834 setRes!14880)))

(declare-fun setIsEmpty!14880 () Bool)

(assert (=> setIsEmpty!14880 setRes!14880))

(declare-fun tp!649923 () Bool)

(declare-fun setNonEmpty!14880 () Bool)

(declare-fun e!1352128 () Bool)

(declare-fun setElem!14880 () Context!2474)

(assert (=> setNonEmpty!14880 (= setRes!14880 (and tp!649923 (inv!31306 setElem!14880) e!1352128))))

(declare-fun setRest!14880 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14880 (= setRest!14843 ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14880 true) setRest!14880))))

(declare-fun b!2122556 () Bool)

(declare-fun tp!649924 () Bool)

(assert (=> b!2122556 (= e!1352128 tp!649924)))

(assert (= (and setNonEmpty!14843 condSetEmpty!14880) setIsEmpty!14880))

(assert (= (and setNonEmpty!14843 (not condSetEmpty!14880)) setNonEmpty!14880))

(assert (= setNonEmpty!14880 b!2122556))

(declare-fun m!2575837 () Bool)

(assert (=> setNonEmpty!14880 m!2575837))

(declare-fun e!1352134 () Bool)

(declare-fun tp!649933 () Bool)

(declare-fun b!2122565 () Bool)

(declare-fun tp!649932 () Bool)

(assert (=> b!2122565 (= e!1352134 (and (inv!31305 (left!18343 (c!339759 totalInput!886))) tp!649933 (inv!31305 (right!18673 (c!339759 totalInput!886))) tp!649932))))

(declare-fun b!2122567 () Bool)

(declare-fun e!1352133 () Bool)

(declare-fun tp!649931 () Bool)

(assert (=> b!2122567 (= e!1352133 tp!649931)))

(declare-fun b!2122566 () Bool)

(declare-fun inv!31313 (IArray!15615) Bool)

(assert (=> b!2122566 (= e!1352134 (and (inv!31313 (xs!10747 (c!339759 totalInput!886))) e!1352133))))

(assert (=> b!2122288 (= tp!649856 (and (inv!31305 (c!339759 totalInput!886)) e!1352134))))

(assert (= (and b!2122288 ((_ is Node!7805) (c!339759 totalInput!886))) b!2122565))

(assert (= b!2122566 b!2122567))

(assert (= (and b!2122288 ((_ is Leaf!11406) (c!339759 totalInput!886))) b!2122566))

(declare-fun m!2575839 () Bool)

(assert (=> b!2122565 m!2575839))

(declare-fun m!2575841 () Bool)

(assert (=> b!2122565 m!2575841))

(declare-fun m!2575843 () Bool)

(assert (=> b!2122566 m!2575843))

(assert (=> b!2122288 m!2575657))

(declare-fun tp!649935 () Bool)

(declare-fun tp!649936 () Bool)

(declare-fun b!2122568 () Bool)

(declare-fun e!1352136 () Bool)

(assert (=> b!2122568 (= e!1352136 (and (inv!31305 (left!18343 (c!339759 input!5507))) tp!649936 (inv!31305 (right!18673 (c!339759 input!5507))) tp!649935))))

(declare-fun b!2122570 () Bool)

(declare-fun e!1352135 () Bool)

(declare-fun tp!649934 () Bool)

(assert (=> b!2122570 (= e!1352135 tp!649934)))

(declare-fun b!2122569 () Bool)

(assert (=> b!2122569 (= e!1352136 (and (inv!31313 (xs!10747 (c!339759 input!5507))) e!1352135))))

(assert (=> b!2122268 (= tp!649851 (and (inv!31305 (c!339759 input!5507)) e!1352136))))

(assert (= (and b!2122268 ((_ is Node!7805) (c!339759 input!5507))) b!2122568))

(assert (= b!2122569 b!2122570))

(assert (= (and b!2122268 ((_ is Leaf!11406) (c!339759 input!5507))) b!2122569))

(declare-fun m!2575845 () Bool)

(assert (=> b!2122568 m!2575845))

(declare-fun m!2575847 () Bool)

(assert (=> b!2122568 m!2575847))

(declare-fun m!2575849 () Bool)

(assert (=> b!2122569 m!2575849))

(assert (=> b!2122268 m!2575661))

(declare-fun mapNonEmpty!11927 () Bool)

(declare-fun mapRes!11927 () Bool)

(declare-fun tp!649957 () Bool)

(declare-fun e!1352146 () Bool)

(assert (=> mapNonEmpty!11927 (= mapRes!11927 (and tp!649957 e!1352146))))

(declare-fun mapRest!11927 () (Array (_ BitVec 32) List!23801))

(declare-fun mapKey!11927 () (_ BitVec 32))

(declare-fun mapValue!11927 () List!23801)

(assert (=> mapNonEmpty!11927 (= mapRest!11912 (store mapRest!11927 mapKey!11927 mapValue!11927))))

(declare-fun b!2122581 () Bool)

(declare-fun e!1352147 () Bool)

(declare-fun tp!649954 () Bool)

(assert (=> b!2122581 (= e!1352147 tp!649954)))

(declare-fun b!2122582 () Bool)

(declare-fun e!1352148 () Bool)

(declare-fun setRes!14886 () Bool)

(declare-fun tp!649955 () Bool)

(assert (=> b!2122582 (= e!1352148 (and setRes!14886 tp!649955))))

(declare-fun condSetEmpty!14885 () Bool)

(declare-fun mapDefault!11927 () List!23801)

(assert (=> b!2122582 (= condSetEmpty!14885 (= (_1!13592 (_1!13593 (h!29118 mapDefault!11927))) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun condMapEmpty!11927 () Bool)

(assert (=> mapNonEmpty!11911 (= condMapEmpty!11927 (= mapRest!11912 ((as const (Array (_ BitVec 32) List!23801)) mapDefault!11927)))))

(assert (=> mapNonEmpty!11911 (= tp!649849 (and e!1352148 mapRes!11927))))

(declare-fun b!2122583 () Bool)

(declare-fun setRes!14885 () Bool)

(declare-fun tp!649952 () Bool)

(assert (=> b!2122583 (= e!1352146 (and setRes!14885 tp!649952))))

(declare-fun condSetEmpty!14886 () Bool)

(assert (=> b!2122583 (= condSetEmpty!14886 (= (_1!13592 (_1!13593 (h!29118 mapValue!11927))) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setIsEmpty!14885 () Bool)

(assert (=> setIsEmpty!14885 setRes!14886))

(declare-fun b!2122584 () Bool)

(declare-fun e!1352145 () Bool)

(declare-fun tp!649953 () Bool)

(assert (=> b!2122584 (= e!1352145 tp!649953)))

(declare-fun mapIsEmpty!11927 () Bool)

(assert (=> mapIsEmpty!11927 mapRes!11927))

(declare-fun setElem!14886 () Context!2474)

(declare-fun tp!649951 () Bool)

(declare-fun setNonEmpty!14885 () Bool)

(assert (=> setNonEmpty!14885 (= setRes!14886 (and tp!649951 (inv!31306 setElem!14886) e!1352147))))

(declare-fun setRest!14886 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14885 (= (_1!13592 (_1!13593 (h!29118 mapDefault!11927))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14886 true) setRest!14886))))

(declare-fun setIsEmpty!14886 () Bool)

(assert (=> setIsEmpty!14886 setRes!14885))

(declare-fun setNonEmpty!14886 () Bool)

(declare-fun setElem!14885 () Context!2474)

(declare-fun tp!649956 () Bool)

(assert (=> setNonEmpty!14886 (= setRes!14885 (and tp!649956 (inv!31306 setElem!14885) e!1352145))))

(declare-fun setRest!14885 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14886 (= (_1!13592 (_1!13593 (h!29118 mapValue!11927))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14885 true) setRest!14885))))

(assert (= (and mapNonEmpty!11911 condMapEmpty!11927) mapIsEmpty!11927))

(assert (= (and mapNonEmpty!11911 (not condMapEmpty!11927)) mapNonEmpty!11927))

(assert (= (and b!2122583 condSetEmpty!14886) setIsEmpty!14886))

(assert (= (and b!2122583 (not condSetEmpty!14886)) setNonEmpty!14886))

(assert (= setNonEmpty!14886 b!2122584))

(assert (= (and mapNonEmpty!11927 ((_ is Cons!23717) mapValue!11927)) b!2122583))

(assert (= (and b!2122582 condSetEmpty!14885) setIsEmpty!14885))

(assert (= (and b!2122582 (not condSetEmpty!14885)) setNonEmpty!14885))

(assert (= setNonEmpty!14885 b!2122581))

(assert (= (and mapNonEmpty!11911 ((_ is Cons!23717) mapDefault!11927)) b!2122582))

(declare-fun m!2575851 () Bool)

(assert (=> mapNonEmpty!11927 m!2575851))

(declare-fun m!2575853 () Bool)

(assert (=> setNonEmpty!14885 m!2575853))

(declare-fun m!2575855 () Bool)

(assert (=> setNonEmpty!14886 m!2575855))

(declare-fun b!2122586 () Bool)

(declare-fun e!1352149 () Bool)

(declare-fun tp!649958 () Bool)

(assert (=> b!2122586 (= e!1352149 tp!649958)))

(declare-fun setIsEmpty!14887 () Bool)

(declare-fun setRes!14887 () Bool)

(assert (=> setIsEmpty!14887 setRes!14887))

(declare-fun b!2122585 () Bool)

(declare-fun e!1352150 () Bool)

(declare-fun tp!649960 () Bool)

(assert (=> b!2122585 (= e!1352150 (and setRes!14887 tp!649960))))

(declare-fun condSetEmpty!14887 () Bool)

(assert (=> b!2122585 (= condSetEmpty!14887 (= (_1!13592 (_1!13593 (h!29118 mapValue!11911))) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun tp!649959 () Bool)

(declare-fun setNonEmpty!14887 () Bool)

(declare-fun setElem!14887 () Context!2474)

(assert (=> setNonEmpty!14887 (= setRes!14887 (and tp!649959 (inv!31306 setElem!14887) e!1352149))))

(declare-fun setRest!14887 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14887 (= (_1!13592 (_1!13593 (h!29118 mapValue!11911))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14887 true) setRest!14887))))

(assert (=> mapNonEmpty!11911 (= tp!649842 e!1352150)))

(assert (= (and b!2122585 condSetEmpty!14887) setIsEmpty!14887))

(assert (= (and b!2122585 (not condSetEmpty!14887)) setNonEmpty!14887))

(assert (= setNonEmpty!14887 b!2122586))

(assert (= (and mapNonEmpty!11911 ((_ is Cons!23717) mapValue!11911)) b!2122585))

(declare-fun m!2575857 () Bool)

(assert (=> setNonEmpty!14887 m!2575857))

(declare-fun e!1352168 () Bool)

(declare-fun tp!649991 () Bool)

(declare-fun mapValue!11930 () List!23798)

(declare-fun e!1352166 () Bool)

(declare-fun b!2122601 () Bool)

(declare-fun tp!649989 () Bool)

(declare-fun setRes!14893 () Bool)

(assert (=> b!2122601 (= e!1352166 (and tp!649989 (inv!31306 (_2!13586 (_1!13587 (h!29115 mapValue!11930)))) e!1352168 tp_is_empty!9489 setRes!14893 tp!649991))))

(declare-fun condSetEmpty!14892 () Bool)

(assert (=> b!2122601 (= condSetEmpty!14892 (= (_2!13587 (h!29115 mapValue!11930)) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setNonEmpty!14892 () Bool)

(declare-fun setRes!14892 () Bool)

(declare-fun setElem!14892 () Context!2474)

(declare-fun tp!649987 () Bool)

(declare-fun e!1352164 () Bool)

(assert (=> setNonEmpty!14892 (= setRes!14892 (and tp!649987 (inv!31306 setElem!14892) e!1352164))))

(declare-fun mapDefault!11930 () List!23798)

(declare-fun setRest!14892 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14892 (= (_2!13587 (h!29115 mapDefault!11930)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14892 true) setRest!14892))))

(declare-fun b!2122602 () Bool)

(declare-fun e!1352165 () Bool)

(declare-fun tp!649992 () Bool)

(assert (=> b!2122602 (= e!1352165 tp!649992)))

(declare-fun e!1352167 () Bool)

(declare-fun e!1352163 () Bool)

(declare-fun tp!649984 () Bool)

(declare-fun tp!649983 () Bool)

(declare-fun b!2122603 () Bool)

(assert (=> b!2122603 (= e!1352167 (and tp!649984 (inv!31306 (_2!13586 (_1!13587 (h!29115 mapDefault!11930)))) e!1352163 tp_is_empty!9489 setRes!14892 tp!649983))))

(declare-fun condSetEmpty!14893 () Bool)

(assert (=> b!2122603 (= condSetEmpty!14893 (= (_2!13587 (h!29115 mapDefault!11930)) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun b!2122604 () Bool)

(declare-fun tp!649993 () Bool)

(assert (=> b!2122604 (= e!1352164 tp!649993)))

(declare-fun b!2122605 () Bool)

(declare-fun tp!649985 () Bool)

(assert (=> b!2122605 (= e!1352163 tp!649985)))

(declare-fun tp!649990 () Bool)

(declare-fun setElem!14893 () Context!2474)

(declare-fun setNonEmpty!14893 () Bool)

(assert (=> setNonEmpty!14893 (= setRes!14893 (and tp!649990 (inv!31306 setElem!14893) e!1352165))))

(declare-fun setRest!14893 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14893 (= (_2!13587 (h!29115 mapValue!11930)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14893 true) setRest!14893))))

(declare-fun setIsEmpty!14892 () Bool)

(assert (=> setIsEmpty!14892 setRes!14892))

(declare-fun setIsEmpty!14893 () Bool)

(assert (=> setIsEmpty!14893 setRes!14893))

(declare-fun mapIsEmpty!11930 () Bool)

(declare-fun mapRes!11930 () Bool)

(assert (=> mapIsEmpty!11930 mapRes!11930))

(declare-fun b!2122606 () Bool)

(declare-fun tp!649986 () Bool)

(assert (=> b!2122606 (= e!1352168 tp!649986)))

(declare-fun mapNonEmpty!11930 () Bool)

(declare-fun tp!649988 () Bool)

(assert (=> mapNonEmpty!11930 (= mapRes!11930 (and tp!649988 e!1352166))))

(declare-fun mapKey!11930 () (_ BitVec 32))

(declare-fun mapRest!11930 () (Array (_ BitVec 32) List!23798))

(assert (=> mapNonEmpty!11930 (= mapRest!11911 (store mapRest!11930 mapKey!11930 mapValue!11930))))

(declare-fun condMapEmpty!11930 () Bool)

(assert (=> mapNonEmpty!11913 (= condMapEmpty!11930 (= mapRest!11911 ((as const (Array (_ BitVec 32) List!23798)) mapDefault!11930)))))

(assert (=> mapNonEmpty!11913 (= tp!649838 (and e!1352167 mapRes!11930))))

(assert (= (and mapNonEmpty!11913 condMapEmpty!11930) mapIsEmpty!11930))

(assert (= (and mapNonEmpty!11913 (not condMapEmpty!11930)) mapNonEmpty!11930))

(assert (= b!2122601 b!2122606))

(assert (= (and b!2122601 condSetEmpty!14892) setIsEmpty!14893))

(assert (= (and b!2122601 (not condSetEmpty!14892)) setNonEmpty!14893))

(assert (= setNonEmpty!14893 b!2122602))

(assert (= (and mapNonEmpty!11930 ((_ is Cons!23714) mapValue!11930)) b!2122601))

(assert (= b!2122603 b!2122605))

(assert (= (and b!2122603 condSetEmpty!14893) setIsEmpty!14892))

(assert (= (and b!2122603 (not condSetEmpty!14893)) setNonEmpty!14892))

(assert (= setNonEmpty!14892 b!2122604))

(assert (= (and mapNonEmpty!11913 ((_ is Cons!23714) mapDefault!11930)) b!2122603))

(declare-fun m!2575859 () Bool)

(assert (=> b!2122603 m!2575859))

(declare-fun m!2575861 () Bool)

(assert (=> setNonEmpty!14892 m!2575861))

(declare-fun m!2575863 () Bool)

(assert (=> b!2122601 m!2575863))

(declare-fun m!2575865 () Bool)

(assert (=> setNonEmpty!14893 m!2575865))

(declare-fun m!2575867 () Bool)

(assert (=> mapNonEmpty!11930 m!2575867))

(declare-fun e!1352170 () Bool)

(declare-fun tp!649996 () Bool)

(declare-fun e!1352169 () Bool)

(declare-fun b!2122607 () Bool)

(declare-fun tp!649995 () Bool)

(declare-fun setRes!14894 () Bool)

(assert (=> b!2122607 (= e!1352169 (and tp!649995 (inv!31306 (_2!13586 (_1!13587 (h!29115 mapValue!11913)))) e!1352170 tp_is_empty!9489 setRes!14894 tp!649996))))

(declare-fun condSetEmpty!14894 () Bool)

(assert (=> b!2122607 (= condSetEmpty!14894 (= (_2!13587 (h!29115 mapValue!11913)) ((as const (Array Context!2474 Bool)) false)))))

(assert (=> mapNonEmpty!11913 (= tp!649837 e!1352169)))

(declare-fun b!2122608 () Bool)

(declare-fun e!1352171 () Bool)

(declare-fun tp!649998 () Bool)

(assert (=> b!2122608 (= e!1352171 tp!649998)))

(declare-fun setElem!14894 () Context!2474)

(declare-fun setNonEmpty!14894 () Bool)

(declare-fun tp!649997 () Bool)

(assert (=> setNonEmpty!14894 (= setRes!14894 (and tp!649997 (inv!31306 setElem!14894) e!1352171))))

(declare-fun setRest!14894 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14894 (= (_2!13587 (h!29115 mapValue!11913)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14894 true) setRest!14894))))

(declare-fun setIsEmpty!14894 () Bool)

(assert (=> setIsEmpty!14894 setRes!14894))

(declare-fun b!2122609 () Bool)

(declare-fun tp!649994 () Bool)

(assert (=> b!2122609 (= e!1352170 tp!649994)))

(assert (= b!2122607 b!2122609))

(assert (= (and b!2122607 condSetEmpty!14894) setIsEmpty!14894))

(assert (= (and b!2122607 (not condSetEmpty!14894)) setNonEmpty!14894))

(assert (= setNonEmpty!14894 b!2122608))

(assert (= (and mapNonEmpty!11913 ((_ is Cons!23714) mapValue!11913)) b!2122607))

(declare-fun m!2575869 () Bool)

(assert (=> b!2122607 m!2575869))

(declare-fun m!2575871 () Bool)

(assert (=> setNonEmpty!14894 m!2575871))

(declare-fun setIsEmpty!14895 () Bool)

(declare-fun setRes!14895 () Bool)

(assert (=> setIsEmpty!14895 setRes!14895))

(declare-fun e!1352173 () Bool)

(assert (=> b!2122275 (= tp!649840 e!1352173)))

(declare-fun b!2122610 () Bool)

(declare-fun e!1352174 () Bool)

(declare-fun tp!649999 () Bool)

(assert (=> b!2122610 (= e!1352174 tp!649999)))

(declare-fun b!2122611 () Bool)

(declare-fun e!1352172 () Bool)

(declare-fun tp!650002 () Bool)

(assert (=> b!2122611 (= e!1352172 tp!650002)))

(declare-fun setElem!14895 () Context!2474)

(declare-fun setNonEmpty!14895 () Bool)

(declare-fun tp!650001 () Bool)

(assert (=> setNonEmpty!14895 (= setRes!14895 (and tp!650001 (inv!31306 setElem!14895) e!1352174))))

(declare-fun setRest!14895 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14895 (= (_2!13589 (h!29114 mapDefault!11913)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14895 true) setRest!14895))))

(declare-fun b!2122612 () Bool)

(declare-fun tp!650000 () Bool)

(assert (=> b!2122612 (= e!1352173 (and (inv!31306 (_1!13588 (_1!13589 (h!29114 mapDefault!11913)))) e!1352172 tp_is_empty!9489 setRes!14895 tp!650000))))

(declare-fun condSetEmpty!14895 () Bool)

(assert (=> b!2122612 (= condSetEmpty!14895 (= (_2!13589 (h!29114 mapDefault!11913)) ((as const (Array Context!2474 Bool)) false)))))

(assert (= b!2122612 b!2122611))

(assert (= (and b!2122612 condSetEmpty!14895) setIsEmpty!14895))

(assert (= (and b!2122612 (not condSetEmpty!14895)) setNonEmpty!14895))

(assert (= setNonEmpty!14895 b!2122610))

(assert (= (and b!2122275 ((_ is Cons!23713) mapDefault!11913)) b!2122612))

(declare-fun m!2575873 () Bool)

(assert (=> setNonEmpty!14895 m!2575873))

(declare-fun m!2575875 () Bool)

(assert (=> b!2122612 m!2575875))

(declare-fun e!1352190 () Bool)

(declare-fun e!1352192 () Bool)

(declare-fun tp!650026 () Bool)

(declare-fun b!2122627 () Bool)

(declare-fun mapValue!11933 () List!23797)

(declare-fun setRes!14900 () Bool)

(assert (=> b!2122627 (= e!1352190 (and (inv!31306 (_1!13588 (_1!13589 (h!29114 mapValue!11933)))) e!1352192 tp_is_empty!9489 setRes!14900 tp!650026))))

(declare-fun condSetEmpty!14900 () Bool)

(assert (=> b!2122627 (= condSetEmpty!14900 (= (_2!13589 (h!29114 mapValue!11933)) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setNonEmpty!14900 () Bool)

(declare-fun setElem!14900 () Context!2474)

(declare-fun tp!650025 () Bool)

(declare-fun e!1352191 () Bool)

(declare-fun setRes!14901 () Bool)

(assert (=> setNonEmpty!14900 (= setRes!14901 (and tp!650025 (inv!31306 setElem!14900) e!1352191))))

(declare-fun mapDefault!11933 () List!23797)

(declare-fun setRest!14900 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14900 (= (_2!13589 (h!29114 mapDefault!11933)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14900 true) setRest!14900))))

(declare-fun e!1352187 () Bool)

(declare-fun tp!650021 () Bool)

(declare-fun b!2122628 () Bool)

(declare-fun e!1352189 () Bool)

(assert (=> b!2122628 (= e!1352187 (and (inv!31306 (_1!13588 (_1!13589 (h!29114 mapDefault!11933)))) e!1352189 tp_is_empty!9489 setRes!14901 tp!650021))))

(declare-fun condSetEmpty!14901 () Bool)

(assert (=> b!2122628 (= condSetEmpty!14901 (= (_2!13589 (h!29114 mapDefault!11933)) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setIsEmpty!14901 () Bool)

(assert (=> setIsEmpty!14901 setRes!14900))

(declare-fun mapIsEmpty!11933 () Bool)

(declare-fun mapRes!11933 () Bool)

(assert (=> mapIsEmpty!11933 mapRes!11933))

(declare-fun b!2122629 () Bool)

(declare-fun e!1352188 () Bool)

(declare-fun tp!650023 () Bool)

(assert (=> b!2122629 (= e!1352188 tp!650023)))

(declare-fun mapNonEmpty!11933 () Bool)

(declare-fun tp!650028 () Bool)

(assert (=> mapNonEmpty!11933 (= mapRes!11933 (and tp!650028 e!1352190))))

(declare-fun mapRest!11933 () (Array (_ BitVec 32) List!23797))

(declare-fun mapKey!11933 () (_ BitVec 32))

(assert (=> mapNonEmpty!11933 (= mapRest!11913 (store mapRest!11933 mapKey!11933 mapValue!11933))))

(declare-fun b!2122630 () Bool)

(declare-fun tp!650022 () Bool)

(assert (=> b!2122630 (= e!1352189 tp!650022)))

(declare-fun b!2122631 () Bool)

(declare-fun tp!650027 () Bool)

(assert (=> b!2122631 (= e!1352192 tp!650027)))

(declare-fun setElem!14901 () Context!2474)

(declare-fun setNonEmpty!14901 () Bool)

(declare-fun tp!650024 () Bool)

(assert (=> setNonEmpty!14901 (= setRes!14900 (and tp!650024 (inv!31306 setElem!14901) e!1352188))))

(declare-fun setRest!14901 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14901 (= (_2!13589 (h!29114 mapValue!11933)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14901 true) setRest!14901))))

(declare-fun b!2122632 () Bool)

(declare-fun tp!650029 () Bool)

(assert (=> b!2122632 (= e!1352191 tp!650029)))

(declare-fun setIsEmpty!14900 () Bool)

(assert (=> setIsEmpty!14900 setRes!14901))

(declare-fun condMapEmpty!11933 () Bool)

(assert (=> mapNonEmpty!11912 (= condMapEmpty!11933 (= mapRest!11913 ((as const (Array (_ BitVec 32) List!23797)) mapDefault!11933)))))

(assert (=> mapNonEmpty!11912 (= tp!649848 (and e!1352187 mapRes!11933))))

(assert (= (and mapNonEmpty!11912 condMapEmpty!11933) mapIsEmpty!11933))

(assert (= (and mapNonEmpty!11912 (not condMapEmpty!11933)) mapNonEmpty!11933))

(assert (= b!2122627 b!2122631))

(assert (= (and b!2122627 condSetEmpty!14900) setIsEmpty!14901))

(assert (= (and b!2122627 (not condSetEmpty!14900)) setNonEmpty!14901))

(assert (= setNonEmpty!14901 b!2122629))

(assert (= (and mapNonEmpty!11933 ((_ is Cons!23713) mapValue!11933)) b!2122627))

(assert (= b!2122628 b!2122630))

(assert (= (and b!2122628 condSetEmpty!14901) setIsEmpty!14900))

(assert (= (and b!2122628 (not condSetEmpty!14901)) setNonEmpty!14900))

(assert (= setNonEmpty!14900 b!2122632))

(assert (= (and mapNonEmpty!11912 ((_ is Cons!23713) mapDefault!11933)) b!2122628))

(declare-fun m!2575877 () Bool)

(assert (=> mapNonEmpty!11933 m!2575877))

(declare-fun m!2575879 () Bool)

(assert (=> setNonEmpty!14901 m!2575879))

(declare-fun m!2575881 () Bool)

(assert (=> b!2122627 m!2575881))

(declare-fun m!2575883 () Bool)

(assert (=> setNonEmpty!14900 m!2575883))

(declare-fun m!2575885 () Bool)

(assert (=> b!2122628 m!2575885))

(declare-fun setIsEmpty!14902 () Bool)

(declare-fun setRes!14902 () Bool)

(assert (=> setIsEmpty!14902 setRes!14902))

(declare-fun e!1352194 () Bool)

(assert (=> mapNonEmpty!11912 (= tp!649845 e!1352194)))

(declare-fun b!2122633 () Bool)

(declare-fun e!1352195 () Bool)

(declare-fun tp!650030 () Bool)

(assert (=> b!2122633 (= e!1352195 tp!650030)))

(declare-fun b!2122634 () Bool)

(declare-fun e!1352193 () Bool)

(declare-fun tp!650033 () Bool)

(assert (=> b!2122634 (= e!1352193 tp!650033)))

(declare-fun setElem!14902 () Context!2474)

(declare-fun setNonEmpty!14902 () Bool)

(declare-fun tp!650032 () Bool)

(assert (=> setNonEmpty!14902 (= setRes!14902 (and tp!650032 (inv!31306 setElem!14902) e!1352195))))

(declare-fun setRest!14902 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14902 (= (_2!13589 (h!29114 mapValue!11912)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14902 true) setRest!14902))))

(declare-fun b!2122635 () Bool)

(declare-fun tp!650031 () Bool)

(assert (=> b!2122635 (= e!1352194 (and (inv!31306 (_1!13588 (_1!13589 (h!29114 mapValue!11912)))) e!1352193 tp_is_empty!9489 setRes!14902 tp!650031))))

(declare-fun condSetEmpty!14902 () Bool)

(assert (=> b!2122635 (= condSetEmpty!14902 (= (_2!13589 (h!29114 mapValue!11912)) ((as const (Array Context!2474 Bool)) false)))))

(assert (= b!2122635 b!2122634))

(assert (= (and b!2122635 condSetEmpty!14902) setIsEmpty!14902))

(assert (= (and b!2122635 (not condSetEmpty!14902)) setNonEmpty!14902))

(assert (= setNonEmpty!14902 b!2122633))

(assert (= (and mapNonEmpty!11912 ((_ is Cons!23713) mapValue!11912)) b!2122635))

(declare-fun m!2575887 () Bool)

(assert (=> setNonEmpty!14902 m!2575887))

(declare-fun m!2575889 () Bool)

(assert (=> b!2122635 m!2575889))

(declare-fun b!2122640 () Bool)

(declare-fun e!1352198 () Bool)

(declare-fun setRes!14905 () Bool)

(assert (=> b!2122640 (= e!1352198 setRes!14905)))

(declare-fun condSetEmpty!14905 () Bool)

(assert (=> b!2122640 (= condSetEmpty!14905 (= (_2!13587 (h!29115 mapDefault!11918)) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setIsEmpty!14905 () Bool)

(assert (=> setIsEmpty!14905 setRes!14905))

(declare-fun setNonEmpty!14905 () Bool)

(assert (=> setNonEmpty!14905 (= setRes!14905 true)))

(declare-fun setElem!14905 () Context!2474)

(declare-fun setRest!14905 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14905 (= (_2!13587 (h!29115 mapDefault!11918)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14905 true) setRest!14905))))

(assert (=> b!2122344 e!1352198))

(assert (= (and b!2122640 condSetEmpty!14905) setIsEmpty!14905))

(assert (= (and b!2122640 (not condSetEmpty!14905)) setNonEmpty!14905))

(assert (= (and b!2122344 ((_ is Cons!23714) mapDefault!11918)) b!2122640))

(declare-fun b!2122641 () Bool)

(declare-fun e!1352199 () Bool)

(declare-fun setRes!14906 () Bool)

(assert (=> b!2122641 (= e!1352199 setRes!14906)))

(declare-fun condSetEmpty!14906 () Bool)

(assert (=> b!2122641 (= condSetEmpty!14906 (= (_2!13587 (h!29115 (zeroValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795000))))))))) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setIsEmpty!14906 () Bool)

(assert (=> setIsEmpty!14906 setRes!14906))

(declare-fun setNonEmpty!14906 () Bool)

(assert (=> setNonEmpty!14906 (= setRes!14906 true)))

(declare-fun setElem!14906 () Context!2474)

(declare-fun setRest!14906 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14906 (= (_2!13587 (h!29115 (zeroValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795000))))))))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14906 true) setRest!14906))))

(assert (=> b!2122343 e!1352199))

(assert (= (and b!2122641 condSetEmpty!14906) setIsEmpty!14906))

(assert (= (and b!2122641 (not condSetEmpty!14906)) setNonEmpty!14906))

(assert (= (and b!2122343 ((_ is Cons!23714) (zeroValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795000))))))))) b!2122641))

(declare-fun b!2122642 () Bool)

(declare-fun e!1352200 () Bool)

(declare-fun setRes!14907 () Bool)

(assert (=> b!2122642 (= e!1352200 setRes!14907)))

(declare-fun condSetEmpty!14907 () Bool)

(assert (=> b!2122642 (= condSetEmpty!14907 (= (_2!13587 (h!29115 (minValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795000))))))))) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setIsEmpty!14907 () Bool)

(assert (=> setIsEmpty!14907 setRes!14907))

(declare-fun setNonEmpty!14907 () Bool)

(assert (=> setNonEmpty!14907 (= setRes!14907 true)))

(declare-fun setElem!14907 () Context!2474)

(declare-fun setRest!14907 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14907 (= (_2!13587 (h!29115 (minValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795000))))))))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14907 true) setRest!14907))))

(assert (=> b!2122343 e!1352200))

(assert (= (and b!2122642 condSetEmpty!14907) setIsEmpty!14907))

(assert (= (and b!2122642 (not condSetEmpty!14907)) setNonEmpty!14907))

(assert (= (and b!2122343 ((_ is Cons!23714) (minValue!2713 (v!28242 (underlying!5105 (v!28243 (underlying!5108 (cache!2751 (_3!1926 lt!795000))))))))) b!2122642))

(declare-fun tp!650035 () Bool)

(declare-fun tp!650036 () Bool)

(declare-fun e!1352202 () Bool)

(declare-fun b!2122643 () Bool)

(assert (=> b!2122643 (= e!1352202 (and (inv!31305 (left!18343 (c!339759 (totalInput!2911 cacheFurthestNullable!130)))) tp!650036 (inv!31305 (right!18673 (c!339759 (totalInput!2911 cacheFurthestNullable!130)))) tp!650035))))

(declare-fun b!2122645 () Bool)

(declare-fun e!1352201 () Bool)

(declare-fun tp!650034 () Bool)

(assert (=> b!2122645 (= e!1352201 tp!650034)))

(declare-fun b!2122644 () Bool)

(assert (=> b!2122644 (= e!1352202 (and (inv!31313 (xs!10747 (c!339759 (totalInput!2911 cacheFurthestNullable!130)))) e!1352201))))

(assert (=> b!2122273 (= tp!649852 (and (inv!31305 (c!339759 (totalInput!2911 cacheFurthestNullable!130))) e!1352202))))

(assert (= (and b!2122273 ((_ is Node!7805) (c!339759 (totalInput!2911 cacheFurthestNullable!130)))) b!2122643))

(assert (= b!2122644 b!2122645))

(assert (= (and b!2122273 ((_ is Leaf!11406) (c!339759 (totalInput!2911 cacheFurthestNullable!130)))) b!2122644))

(declare-fun m!2575891 () Bool)

(assert (=> b!2122643 m!2575891))

(declare-fun m!2575893 () Bool)

(assert (=> b!2122643 m!2575893))

(declare-fun m!2575895 () Bool)

(assert (=> b!2122644 m!2575895))

(assert (=> b!2122273 m!2575655))

(declare-fun b!2122646 () Bool)

(declare-fun e!1352203 () Bool)

(declare-fun setRes!14908 () Bool)

(assert (=> b!2122646 (= e!1352203 setRes!14908)))

(declare-fun condSetEmpty!14908 () Bool)

(assert (=> b!2122646 (= condSetEmpty!14908 (= (_2!13589 (h!29114 (zeroValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795000))))))))) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setIsEmpty!14908 () Bool)

(assert (=> setIsEmpty!14908 setRes!14908))

(declare-fun setNonEmpty!14908 () Bool)

(assert (=> setNonEmpty!14908 (= setRes!14908 true)))

(declare-fun setElem!14908 () Context!2474)

(declare-fun setRest!14908 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14908 (= (_2!13589 (h!29114 (zeroValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795000))))))))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14908 true) setRest!14908))))

(assert (=> b!2122342 e!1352203))

(assert (= (and b!2122646 condSetEmpty!14908) setIsEmpty!14908))

(assert (= (and b!2122646 (not condSetEmpty!14908)) setNonEmpty!14908))

(assert (= (and b!2122342 ((_ is Cons!23713) (zeroValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795000))))))))) b!2122646))

(declare-fun b!2122647 () Bool)

(declare-fun e!1352204 () Bool)

(declare-fun setRes!14909 () Bool)

(assert (=> b!2122647 (= e!1352204 setRes!14909)))

(declare-fun condSetEmpty!14909 () Bool)

(assert (=> b!2122647 (= condSetEmpty!14909 (= (_2!13589 (h!29114 (minValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795000))))))))) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setIsEmpty!14909 () Bool)

(assert (=> setIsEmpty!14909 setRes!14909))

(declare-fun setNonEmpty!14909 () Bool)

(assert (=> setNonEmpty!14909 (= setRes!14909 true)))

(declare-fun setElem!14909 () Context!2474)

(declare-fun setRest!14909 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14909 (= (_2!13589 (h!29114 (minValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795000))))))))) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14909 true) setRest!14909))))

(assert (=> b!2122342 e!1352204))

(assert (= (and b!2122647 condSetEmpty!14909) setIsEmpty!14909))

(assert (= (and b!2122647 (not condSetEmpty!14909)) setNonEmpty!14909))

(assert (= (and b!2122342 ((_ is Cons!23713) (minValue!2714 (v!28244 (underlying!5106 (v!28245 (underlying!5107 (cache!2750 (_2!13591 lt!795000))))))))) b!2122647))

(declare-fun mapIsEmpty!11936 () Bool)

(declare-fun mapRes!11936 () Bool)

(assert (=> mapIsEmpty!11936 mapRes!11936))

(declare-fun setIsEmpty!14914 () Bool)

(declare-fun setRes!14914 () Bool)

(assert (=> setIsEmpty!14914 setRes!14914))

(declare-fun condMapEmpty!11936 () Bool)

(declare-fun mapDefault!11936 () List!23798)

(assert (=> mapNonEmpty!11918 (= condMapEmpty!11936 (= mapRest!11919 ((as const (Array (_ BitVec 32) List!23798)) mapDefault!11936)))))

(declare-fun e!1352209 () Bool)

(assert (=> mapNonEmpty!11918 (and e!1352209 mapRes!11936)))

(declare-fun b!2122654 () Bool)

(declare-fun e!1352210 () Bool)

(assert (=> b!2122654 (= e!1352210 setRes!14914)))

(declare-fun condSetEmpty!14914 () Bool)

(declare-fun mapValue!11936 () List!23798)

(assert (=> b!2122654 (= condSetEmpty!14914 (= (_2!13587 (h!29115 mapValue!11936)) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun b!2122655 () Bool)

(declare-fun setRes!14915 () Bool)

(assert (=> b!2122655 (= e!1352209 setRes!14915)))

(declare-fun condSetEmpty!14915 () Bool)

(assert (=> b!2122655 (= condSetEmpty!14915 (= (_2!13587 (h!29115 mapDefault!11936)) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun mapNonEmpty!11936 () Bool)

(assert (=> mapNonEmpty!11936 (= mapRes!11936 e!1352210)))

(declare-fun mapRest!11936 () (Array (_ BitVec 32) List!23798))

(declare-fun mapKey!11936 () (_ BitVec 32))

(assert (=> mapNonEmpty!11936 (= mapRest!11919 (store mapRest!11936 mapKey!11936 mapValue!11936))))

(declare-fun setNonEmpty!14914 () Bool)

(assert (=> setNonEmpty!14914 (= setRes!14914 true)))

(declare-fun setElem!14914 () Context!2474)

(declare-fun setRest!14914 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14914 (= (_2!13587 (h!29115 mapValue!11936)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14914 true) setRest!14914))))

(declare-fun setIsEmpty!14915 () Bool)

(assert (=> setIsEmpty!14915 setRes!14915))

(declare-fun setNonEmpty!14915 () Bool)

(assert (=> setNonEmpty!14915 (= setRes!14915 true)))

(declare-fun setElem!14915 () Context!2474)

(declare-fun setRest!14915 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14915 (= (_2!13587 (h!29115 mapDefault!11936)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14915 true) setRest!14915))))

(assert (= (and mapNonEmpty!11918 condMapEmpty!11936) mapIsEmpty!11936))

(assert (= (and mapNonEmpty!11918 (not condMapEmpty!11936)) mapNonEmpty!11936))

(assert (= (and b!2122654 condSetEmpty!14914) setIsEmpty!14914))

(assert (= (and b!2122654 (not condSetEmpty!14914)) setNonEmpty!14914))

(assert (= (and mapNonEmpty!11936 ((_ is Cons!23714) mapValue!11936)) b!2122654))

(assert (= (and b!2122655 condSetEmpty!14915) setIsEmpty!14915))

(assert (= (and b!2122655 (not condSetEmpty!14915)) setNonEmpty!14915))

(assert (= (and mapNonEmpty!11918 ((_ is Cons!23714) mapDefault!11936)) b!2122655))

(declare-fun m!2575897 () Bool)

(assert (=> mapNonEmpty!11936 m!2575897))

(declare-fun b!2122656 () Bool)

(declare-fun e!1352211 () Bool)

(declare-fun setRes!14916 () Bool)

(assert (=> b!2122656 (= e!1352211 setRes!14916)))

(declare-fun condSetEmpty!14916 () Bool)

(assert (=> b!2122656 (= condSetEmpty!14916 (= (_2!13587 (h!29115 mapValue!11918)) ((as const (Array Context!2474 Bool)) false)))))

(declare-fun setIsEmpty!14916 () Bool)

(assert (=> setIsEmpty!14916 setRes!14916))

(declare-fun setNonEmpty!14916 () Bool)

(assert (=> setNonEmpty!14916 (= setRes!14916 true)))

(declare-fun setElem!14916 () Context!2474)

(declare-fun setRest!14916 () (InoxSet Context!2474))

(assert (=> setNonEmpty!14916 (= (_2!13587 (h!29115 mapValue!11918)) ((_ map or) (store ((as const (Array Context!2474 Bool)) false) setElem!14916 true) setRest!14916))))

(assert (=> mapNonEmpty!11918 e!1352211))

(assert (= (and b!2122656 condSetEmpty!14916) setIsEmpty!14916))

(assert (= (and b!2122656 (not condSetEmpty!14916)) setNonEmpty!14916))

(assert (= (and mapNonEmpty!11918 ((_ is Cons!23714) mapValue!11918)) b!2122656))

(declare-fun b_lambda!70469 () Bool)

(assert (= b_lambda!70467 (or b!2122272 b_lambda!70469)))

(declare-fun bs!442763 () Bool)

(declare-fun d!643515 () Bool)

(assert (= bs!442763 (and d!643515 b!2122272)))

(assert (=> bs!442763 (= (dynLambda!11332 lambda!78580 (h!29117 (_2!13590 (_1!13591 lt!795000)))) (= (res!919181 (h!29117 (_2!13590 (_1!13591 lt!795000)))) (_1!13590 (_1!13591 lt!795000))))))

(assert (=> b!2122406 d!643515))

(declare-fun b_lambda!70471 () Bool)

(assert (= b_lambda!70465 (or b!2122280 b_lambda!70471)))

(declare-fun bs!442764 () Bool)

(declare-fun d!643517 () Bool)

(assert (= bs!442764 (and d!643517 b!2122280)))

(assert (=> bs!442764 (= (dynLambda!11332 lambda!78581 (h!29117 (_2!13590 (_1!13591 lt!795000)))) (= (totalInput!2910 (h!29117 (_2!13590 (_1!13591 lt!795000)))) totalInput!886))))

(assert (=> b!2122359 d!643517))

(check-sat (not d!643461) (not b!2122399) (not b_lambda!70469) (not setNonEmpty!14892) (not b!2122486) (not b!2122369) (not b!2122647) (not b!2122506) (not b!2122644) (not b!2122403) (not b!2122288) (not setNonEmpty!14867) (not b!2122535) (not b!2122382) b_and!171247 (not b!2122546) (not b!2122548) (not b!2122451) (not b!2122583) (not setNonEmpty!14877) (not b!2122494) (not b_next!62371) (not d!643507) (not b!2122544) (not setNonEmpty!14859) (not b!2122611) (not b!2122397) (not b!2122489) (not setNonEmpty!14874) (not b!2122268) (not mapNonEmpty!11933) (not setNonEmpty!14893) (not mapNonEmpty!11921) (not b!2122470) (not b!2122532) (not mapNonEmpty!11920) (not setNonEmpty!14908) (not b!2122547) b_and!171241 (not d!643505) (not b!2122508) (not b_next!62367) (not b!2122585) (not setNonEmpty!14869) (not b_next!62365) (not setNonEmpty!14907) (not b!2122565) (not b!2122366) (not d!643469) (not b!2122459) (not b!2122586) (not b!2122402) (not b!2122643) (not mapNonEmpty!11930) (not b!2122641) (not setNonEmpty!14854) (not b!2122631) (not b!2122568) b_and!171245 (not b!2122476) (not d!643495) (not b!2122645) (not setNonEmpty!14900) (not b!2122630) (not b!2122471) (not b!2122612) (not setNonEmpty!14914) (not b!2122549) (not b!2122531) (not b!2122609) (not b!2122654) (not setNonEmpty!14901) (not setNonEmpty!14880) (not b!2122635) (not d!643463) (not b!2122604) (not setNonEmpty!14887) (not b_next!62369) (not bm!128683) (not d!643473) (not setNonEmpty!14915) (not d!643483) (not b!2122384) (not b!2122656) (not b!2122556) (not b!2122608) (not d!643509) (not setNonEmpty!14905) (not b!2122372) (not b!2122607) (not b!2122569) tp_is_empty!9489 (not b!2122496) (not d!643513) (not b!2122642) (not b!2122456) (not b!2122487) (not b_next!62375) (not b!2122640) (not mapNonEmpty!11927) (not b!2122533) (not mapNonEmpty!11936) (not b!2122505) (not setNonEmpty!14868) b_and!171251 (not setNonEmpty!14895) (not b!2122488) (not b_next!62373) (not b!2122381) (not b!2122422) (not setNonEmpty!14885) (not b!2122379) (not bm!128685) (not setNonEmpty!14902) (not setNonEmpty!14862) (not setNonEmpty!14873) (not b!2122420) (not b!2122469) (not b!2122517) (not setNonEmpty!14906) (not b!2122363) (not b!2122450) (not setNonEmpty!14847) (not setNonEmpty!14894) (not b!2122601) (not b!2122545) (not b!2122495) (not b!2122655) (not mapNonEmpty!11924) (not b!2122581) (not b!2122633) (not b!2122602) (not b!2122646) (not b_lambda!70471) (not b!2122570) (not b!2122634) (not b!2122398) (not b!2122606) b_and!171249 (not setNonEmpty!14870) (not setNonEmpty!14886) (not b!2122453) (not b!2122510) (not b!2122582) (not b!2122566) (not d!643501) (not b!2122407) (not b!2122629) (not bm!128684) (not b!2122605) (not b!2122400) (not d!643475) (not b!2122474) (not b!2122534) (not b!2122360) (not b!2122405) (not b!2122507) (not d!643511) (not setNonEmpty!14850) (not b!2122401) (not b!2122460) (not d!643489) (not setNonEmpty!14858) (not b!2122455) (not b!2122610) (not b!2122523) (not b!2122584) (not b!2122628) (not setNonEmpty!14855) (not b!2122567) (not setNonEmpty!14851) (not setNonEmpty!14909) (not setNonEmpty!14916) (not b!2122273) (not d!643471) b_and!171243 (not b!2122603) (not b!2122509) (not b!2122627) (not b!2122632) (not b!2122530))
(check-sat b_and!171247 (not b_next!62371) (not b_next!62365) b_and!171245 (not b_next!62369) (not b_next!62373) b_and!171249 b_and!171243 b_and!171241 (not b_next!62367) (not b_next!62375) b_and!171251)
